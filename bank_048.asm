; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $048", ROMX[$4000], BANK[$48]

    dec e
    ld l, l

jr_048_4002:
    ld a, l
    ld [hl+], a
    sbc e
    ld b, h
    add hl, de
    and d

jr_048_4008:
    ld [hl], h
    jr nz, jr_048_4002

    ld d, d
    ld [de], a
    add c
    ld l, a
    dec e
    nop
    ld b, b
    ld a, [de]
    ld h, l
    ld h, b
    ld hl, $74cb
    ld d, $81
    ld l, b
    ld e, $25
    ld c, c
    inc de
    scf
    ld a, c
    rra
    ld a, d
    ld e, h
    dec de
    ld [c], a
    ld e, d
    inc hl
    or a
    ld b, h
    rla
    jp nc, $1f45

    ld d, $62
    inc de

jr_048_4031:
    sbc h
    ld b, b
    rra
    ld [hl-], a

jr_048_4035:
    ld d, c
    ld hl, $5cc6
    ld [hl+], a
    jp nc, $214f

    sbc c
    ld d, [hl]
    ld [hl+], a
    adc b
    ld a, h
    inc d
    ld c, d
    ld h, d
    dec de
    add hl, sp
    ld l, a
    jr nz, jr_048_4035

    ld l, a
    ld [hl+], a
    jp $2072


    call z, $2266
    ld b, c
    ld h, c
    inc de
    db $76
    ld e, c
    dec e
    ld c, b
    ld [hl], a
    ld a, [de]
    call z, $1e7c
    adc b
    ld b, c
    jr jr_048_4031

    ld h, h
    ld [hl+], a
    ld a, e
    ld c, h
    inc d
    dec e
    ld e, e
    jr nz, jr_048_4008

    ld e, l
    ld a, [de]
    add hl, de
    ld e, b
    jr nz, jr_048_40d5

    db $76
    ld d, $dd
    ld d, d
    rra
    ld b, a
    ld h, [hl]
    ld a, [de]
    ld b, e
    ld e, h
    ld hl, $6413
    inc de
    ld d, c
    ld [hl], l
    ld [hl+], a
    or c
    ld [hl], a
    ld a, [de]
    nop
    ld b, b
    rra
    ld de, $1369
    ld [hl], b
    ld l, l
    ld [hl+], a
    ld l, [hl]
    ld d, [hl]
    ld a, [de]
    ld a, l
    ld b, h
    rra
    and c
    ld l, [hl]
    inc d
    ld h, l
    ld [hl], a
    ld e, $46
    ld [hl], h
    ld a, [de]
    jp nc, $1d78

    ld d, b
    ld h, [hl]
    dec d
    inc a
    ld [hl], d
    dec e
    ld d, [hl]
    ld c, e

jr_048_40a8:
    ld a, [de]
    jp nc, $207a

    or [hl]
    ld l, d
    rla
    and d
    ld e, h
    ld e, $f3
    ld l, h
    inc de
    inc h
    ld c, l
    ld e, $a9
    ld c, d
    ld a, [de]
    sbc a
    ld l, b
    dec e
    push bc
    ld d, c
    dec d
    ei
    ld l, [hl]
    ld e, $1b
    ld a, d
    ld [de], a
    db $76
    ld e, c
    dec de
    ld d, b
    ld d, e
    inc e
    rst $00
    ld b, c
    rra

jr_048_40d0:
    and [hl]
    ld a, c
    jr jr_048_40a8

    ld d, a

jr_048_40d5:
    inc e
    ld a, d
    ld l, e
    rla
    ld [hl], $78
    rra
    xor h
    ld h, a
    ld [de], a
    ld [de], a
    ld d, b
    inc e
    cp a
    ld h, h
    dec de
    add e
    ld c, a
    ld [hl+], a
    ld a, l
    ld a, l
    jr @+$01

    ld c, a
    ld [hl+], a
    pop bc
    ld l, a
    dec de
    ld [$1d71], sp
    add b
    ld l, h
    ld d, $00
    ld b, b
    inc hl
    ld b, [hl]
    ld e, h
    dec e
    inc l
    ld e, b
    ld [hl+], a
    ld [hl], d

Jump_048_4101:
    ld a, [hl]
    add hl, de
    dec bc
    ld [hl], b
    dec e
    xor d
    ld [hl], d
    rla
    rst $38
    ld h, h
    rra
    add b
    ld c, e
    dec de
    ld l, d
    ld d, c
    ld [hl+], a
    nop
    ld b, b
    ld d, $8f
    ld [hl], a
    ld a, [de]
    add $7e
    dec de
    adc c
    ld h, b
    rra
    dec b
    ld a, e
    ld d, $fa
    ld d, l
    inc e
    xor [hl]
    ld d, c
    jr nz, jr_048_419e

    ld b, l
    inc hl
    xor d
    ld e, b
    jr jr_048_40d0

    ld [hl], c
    jr nz, jr_048_414b

    ld l, b
    ld a, [de]
    call $2174
    sub d
    ld b, a
    ld d, $a1
    ld c, h
    ld e, $34
    ld e, b
    dec de
    cp $58
    rra
    dec a

jr_048_4143:
    ld l, l
    inc d
    rst $10
    ld d, e
    jr nz, jr_048_4143

    ld d, [hl]
    dec de

jr_048_414b:
    xor $43
    dec e
    ld a, e
    ld e, [hl]
    inc d
    ldh [$7a], a
    rra
    ld c, c
    ld e, a
    inc e
    ld d, e
    ld b, l
    ld e, $e1
    ld l, a
    inc de
    add h

jr_048_415e:
    ld e, l
    dec e
    jp nc, $1e78

    ld a, [de]
    ld h, h
    inc hl

jr_048_4166:
    rst $00
    ld b, e
    rla
    db $76
    ld c, [hl]

jr_048_416b:
    jr nz, jr_048_41ae

    ld h, b
    dec d
    jp z, $1e57

    cp l
    ld [hl], l
    dec de
    ccf
    ld a, b
    jr nz, @+$31

    ld h, h
    ld d, $8b
    ld l, e
    rra
    ld [c], a
    ld e, l
    inc d
    xor l
    ld b, h
    dec de
    and l
    ld [hl], h
    ld a, [de]
    jp hl


    ld d, e
    jr nz, jr_048_416b

    ld h, d
    dec d
    rrca
    ld d, c
    ld e, $cf
    ld [hl], d
    ld [de], a
    dec b
    ld c, e
    dec de
    push bc
    ld e, h
    inc e
    dec hl
    ld e, h
    ld [hl+], a
    jr nz, @+$4b

jr_048_419e:
    ld a, [de]
    ld a, [hl+]
    ld c, e
    jr nz, jr_048_420b

    ld l, c
    inc d
    jp hl


    ld [hl], e
    ld hl, $4650
    inc e
    and b
    ld e, a
    ld [hl+], a

jr_048_41ae:
    ld d, b
    ld b, d
    rla
    ld b, c
    ld l, l
    ld e, $6a
    ld l, [hl]
    rra
    ld [hl], b
    ld d, l
    rra
    and e
    ld c, b
    jr jr_048_415e

    ld e, a
    jr nz, jr_048_41c5

    ld l, h
    rla
    sub a
    ld c, e

jr_048_41c5:
    inc hl
    inc h
    ld d, a
    jr @+$70

    ld e, d
    ld e, $24
    ld h, c
    inc de
    ret c

    ld b, h
    dec e
    ret nz

    ld e, c
    inc e
    jr jr_048_421e

    inc hl
    ld l, c
    ld c, b
    inc d
    or l
    ld e, [hl]
    jr nz, @+$50

    ld d, h
    jr nz, jr_048_4166

    ld a, e
    jr nz, jr_048_4239

    ld a, a
    jr jr_048_4215

    ld [hl], h
    inc e
    jr z, jr_048_425e

    rla
    scf
    ld h, d
    dec e
    ld a, [hl+]
    ld d, b
    inc e
    ld h, $6d
    dec e
    ld d, h
    ld e, e
    dec d
    nop
    ld b, b
    inc e
    nop
    ld b, b
    add hl, de
    nop
    ld b, b
    ld hl, $57d6
    inc d
    ld l, l
    ld [hl], b
    inc hl
    sub d
    ld b, [hl]
    ld a, [de]

jr_048_420b:
    cp [hl]
    ld l, [hl]
    ld [hl+], a
    ccf
    ld c, d
    dec d
    inc e
    ld h, l
    jr nz, jr_048_4244

jr_048_4215:
    ld c, b
    inc e
    and $5d
    dec e
    push af
    ld l, d
    inc d
    ld h, h

jr_048_421e:
    ld l, c
    dec de

jr_048_4220:
    call nc, $167b
    sub h

jr_048_4224:
    ld [hl], c
    ld [hl+], a
    or a
    db $76
    add hl, de
    ld d, e
    ld d, c
    ld hl, $4f1b
    jr jr_048_4224

    ld l, c
    jr nz, @+$1c

    ld [hl], l
    dec d
    ld b, a
    ld c, d
    ld e, $95

jr_048_4239:
    ld h, l
    jr jr_048_429e

    ld b, l
    ld [hl+], a
    cp h
    ld [hl], l
    dec d
    or [hl]
    ld l, e
    dec e

jr_048_4244:
    and b
    ld h, c
    dec de
    xor [hl]
    ld c, e
    inc e
    rrca
    ld a, h
    ld d, $2e
    ld b, e
    jr nz, jr_048_4220

    ld [hl], e
    ld [hl+], a
    xor $50
    inc hl
    xor b
    ld c, a
    ld e, $72
    ld a, [hl]
    ld [hl+], a
    sbc h
    ld a, d

jr_048_425e:
    ld d, $5a
    ld b, [hl]
    rra
    ld a, h
    ld h, e
    ld d, $90
    ld l, [hl]
    dec de
    ld l, d
    ld h, d
    ld a, [de]
    ld [hl], l
    ld h, d
    dec e
    sub [hl]
    ld l, a
    rla
    ld a, d
    ld [hl], l
    rra
    inc sp
    ld b, a
    inc de
    ld b, d
    ld d, c
    ld [hl+], a
    or e
    ld e, c
    add hl, de
    ld [hl], h
    ld a, e
    rra
    xor $4c
    ld d, $60
    ld h, d
    ld hl, $4b58
    dec de
    and a
    ld e, [hl]
    ld e, $0f
    ld h, a
    inc d
    rst $10
    ld h, l
    jr nz, jr_048_42e2

    ld e, b
    inc d
    ld a, a
    ld d, a
    ld hl, $75f8
    inc d
    ld e, $50
    dec e

jr_048_429e:
    ld a, a
    ld b, [hl]
    add hl, de
    ld [bc], a
    ld b, l
    ld hl, $6ee4
    add hl, de
    ld a, h
    ld b, a
    inc hl
    jp $144e


    ld d, h
    ld c, h
    jr jr_048_42f6

    ld a, [hl]
    jr nz, jr_048_42fe

    ld e, h
    ld [hl+], a
    or b
    ld l, e
    ld a, [de]
    or a
    ld b, [hl]
    dec e
    ld a, [c]
    ld c, h
    add hl, de
    db $fc
    ld e, d
    dec e
    db $e4

jr_048_42c3:
    ld a, e
    dec d
    call z, $1f61
    ld [hl], l
    ld l, d
    ld a, [de]
    call nz, $2270
    sbc b
    ld c, l
    jr jr_048_430a

    ld h, d
    dec e
    push af
    ld a, [hl]
    ld d, $8a
    ld a, d
    ld [hl+], a
    or l
    ld c, [hl]
    dec d
    dec h
    ld e, e
    rra
    ld [de], a
    ld c, d

jr_048_42e2:
    add hl, de
    ret nz

    ld h, [hl]
    inc hl
    sub e
    ld e, e
    ld d, $32
    ld e, h
    ld e, $ae
    ld c, l
    rla
    add d
    ld l, d
    dec e
    ld c, $60
    dec d
    rst $18

jr_048_42f6:
    ld a, e
    inc e
    ld hl, $1268
    dec l
    ld l, e
    inc hl

jr_048_42fe:
    db $10
    ld c, h
    ld a, [de]
    ld d, h
    ld e, [hl]
    jr nz, jr_048_4344

    ld c, h
    inc d
    add [hl]
    ld c, b
    inc e

jr_048_430a:
    inc c
    ld h, e
    rla
    or a
    ld c, b
    ld hl, $667e
    rra
    ld h, $74
    ld [hl+], a
    jp $1b71


    ld l, b

jr_048_431a:
    ld l, l
    ld e, $2d
    ld e, [hl]
    jr jr_048_4320

jr_048_4320:
    ld b, b
    ld [hl+], a
    jr z, @+$43

    dec d
    ld [hl], l

Jump_048_4326:
    ld [hl], l
    ld hl, $5b8b
    rla
    ld l, l
    ld e, a
    dec e
    ld e, e
    ld a, d
    ld a, [de]
    xor e
    ld l, d
    ld hl, $7e26
    inc e
    pop af
    ld d, [hl]
    ld e, $00
    ld b, b
    jr jr_048_42c3

    ld l, h

Call_048_433f:
    inc d
    ld d, c
    ld a, [hl]
    rra
    inc bc

jr_048_4344:
    ld [hl], b
    ld hl, $450d
    rla
    db $fc
    ld d, [hl]
    dec e
    cp [hl]
    ld [hl], l
    dec d
    ld a, e
    ld e, [hl]
    jr nz, @+$80

    ld h, l
    jr jr_048_43b0

    ld c, l
    inc e
    ld d, l
    ld a, a
    ld [de], a
    sub $66
    ld [hl+], a
    jp $1370


    ld a, h
    ld l, c
    ld hl, $6a19
    inc de
    add b
    ld h, l
    dec e
    and d
    ld b, c
    inc e
    ld a, l
    ld [hl], b
    ld [hl+], a
    and e
    ld a, c
    jr @-$49

    db $76
    ld hl, $68e6
    dec d
    ld l, [hl]
    ld d, h

Call_048_437b:
    ld [hl+], a
    sbc h
    ld e, b
    inc de
    ld h, c

Call_048_4380:
    ld [hl], c
    jr nz, jr_048_4383

jr_048_4383:
    ld b, b
    add hl, de
    inc de
    ld h, d

jr_048_4387:
    jr nz, jr_048_431a

    ld h, c
    add hl, de
    sbc b
    ld e, b
    ld hl, $6b4c
    rla
    jp $1d67


    sub l
    ld d, [hl]
    inc de
    inc b
    ld c, c
    ld hl, $48d4
    add hl, de
    ld sp, $1d79
    ei
    ld d, h
    inc de
    inc e
    ld a, l
    dec e
    ld sp, $1263
    ld c, l
    ld a, h
    ld e, $a1
    ld b, a
    ld a, [de]
    ld h, c

jr_048_43b0:
    ld c, l
    jr nz, jr_048_43eb

    ld [hl], c
    dec d
    ld l, d
    ld l, b
    dec e
    pop bc
    ld h, h
    ld [de], a
    db $dd
    ld d, h
    inc e
    jp nc, $1f6e

    ld [c], a
    ld b, d
    ld [hl+], a
    or l
    ld l, h
    add hl, de
    db $ec
    db $76
    rra
    or b
    ld h, b
    dec de
    sbc [hl]
    ld a, l
    ld hl, $4000
    rla
    db $eb
    ld b, d
    ld hl, $4144
    jr jr_048_443c

    ld h, a
    dec e
    ld h, b

jr_048_43dd:
    ld d, e
    add hl, de
    cp d
    ld l, l
    ld e, $30
    ld c, a
    ld hl, $7142
    inc hl
    nop
    ld b, b
    rla

jr_048_43eb:
    nop
    ld b, b
    jr nz, jr_048_4387

    ld c, l
    add hl, de
    add h
    ld b, d
    ld [hl+], a

jr_048_43f4:
    ld [hl], b
    ld h, h
    ld a, [de]
    ld [bc], a
    ld d, [hl]
    ld hl, $6db2

Call_048_43fc:
    dec de
    ld b, d
    ld h, h
    ld [hl+], a
    ld e, l
    ld c, e
    ld e, $2c
    ld c, h
    ld [hl+], a
    sbc $46
    inc e
    ld e, c
    ld h, c
    ld [hl+], a
    ret nz

    ld [hl], h
    rra
    ld [c], a
    ld h, h
    ld [hl+], a
    sub e
    ld h, a
    ld hl, $4c99
    ld [hl+], a
    ld h, d
    ld h, e
    jr jr_048_43dd

    ld a, e
    rra
    ld d, e

jr_048_441f:
    ld b, h
    ld [hl+], a
    ret


    ld e, d
    inc hl
    adc [hl]
    ld d, l
    add hl, de
    cp h
    ld e, a
    ld hl, $505b
    dec de
    call nz, $1f69
    ld h, h
    ld [hl], c
    add hl, de
    ld d, a
    ld [hl], d

jr_048_4435:
    rra
    ld [hl], c
    ld b, c
    rla
    pop de
    ld e, c
    ld [hl+], a

jr_048_443c:
    adc c
    ld h, [hl]
    jr jr_048_43f4

    ld c, d
    rra
    ld h, h

jr_048_4443:
    ld a, h
    inc e
    ld h, [hl]
    ld c, h
    ld [hl+], a
    xor d
    ld a, b
    ld d, $92
    ld [hl], h
    ld [hl+], a
    sbc h
    ld l, b
    ld a, [de]
    ccf
    ld b, d
    rra
    nop
    ld b, b
    ld d, $16
    ld e, c
    ld [hl+], a
    add l
    ld d, a
    dec e
    add sp, $5c
    ld hl, $5dff
    dec de
    ldh a, [$67]
    ld hl, $7014
    rla

jr_048_4469:
    cp l
    ld [hl], d
    rra
    ld e, e
    ld c, [hl]
    dec de
    ld [hl], d
    db $76

jr_048_4471:
    jr nz, jr_048_44c4

    ld l, l
    ld e, $a8
    ld a, b
    ld hl, $6549
    add hl, de
    jp $1d53


    ld b, d
    ld b, e
    jr jr_048_441f

    ld d, d
    inc e
    ld [hl], b
    ld h, [hl]
    rra
    ld b, [hl]
    ld a, b
    inc hl
    daa
    ld c, e
    add hl, de
    or a
    ld a, l
    ld hl, $5913
    add hl, de
    ld e, [hl]
    ld e, l
    jr nz, jr_048_4435

    ld l, [hl]
    add hl, de
    ld l, $56
    jr nz, jr_048_44e6

    ld d, b
    jr jr_048_44a7

    ld e, l
    jr nz, jr_048_4443

    ld d, c
    dec d
    ld [hl], c
    ld b, e

jr_048_44a7:
    inc e
    jr nz, jr_048_4521

    dec de
    nop
    ld b, b
    rra
    sbc l
    ld d, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    dec d
    ld l, c
    ld [hl+], a
    ld d, h
    ld h, d
    jr jr_048_4471

    ld b, d
    rra
    ld b, d
    ld e, b
    dec de
    ret nz

jr_048_44c4:
    ld c, c
    ld hl, $555a
    jr @+$3d

    ld a, c
    inc hl
    add [hl]
    ld e, a
    rla

jr_048_44cf:
    and c
    ld a, l
    inc hl
    ld d, h
    ld c, c
    rla
    db $ed
    ld a, d
    ld e, $1c
    ld b, [hl]
    inc d
    ret


    ld b, b
    ld e, $b4
    ld d, [hl]
    add hl, de
    push af
    ld c, c
    jr nz, jr_048_4469

    ld [hl], d

jr_048_44e6:
    add hl, de
    ld l, [hl]
    ld c, h
    ld hl, $606f
    inc e
    pop de
    ld [hl], e
    ld e, $96
    ld b, h
    inc de
    ld e, h
    ld d, l
    rra
    reti


    ld d, [hl]
    ld e, $a9

jr_048_44fa:
    ld e, a
    inc hl
    and [hl]
    ld b, l
    ld d, $7b
    ld a, l
    ld e, $32
    ld d, d
    jr jr_048_4514

    ld c, b
    jr nz, jr_048_44fa

    ld c, [hl]
    dec e
    dec bc
    ld l, [hl]
    ld [hl+], a
    rlca
    ld e, [hl]
    rla
    ld c, [hl]
    ld d, c
    ld [hl+], a

jr_048_4514:
    sbc $5b
    inc e
    adc l
    ld b, e
    ld hl, $43ca
    ld d, $82
    ld c, c
    dec e
    inc [hl]

jr_048_4521:
    ld [hl], h
    ld hl, $7bd2
    rra
    jr nz, jr_048_45a7

    jr jr_048_453f

    ld l, a
    inc hl
    dec e
    ld d, e
    ld a, [de]
    sub d
    ld c, a
    ld hl, $6c7f
    ld e, $9f
    ld h, d
    rra
    push bc
    ld [hl], d
    add hl, de
    ld l, d
    ld h, h
    ld [hl+], a
    and h

jr_048_453f:
    ld l, c
    add hl, de
    ld l, b
    ld l, e
    jr nz, jr_048_44cf

    ld c, c
    ld d, $4b
    ld e, a
    inc hl
    ld [hl], d
    ld d, c
    inc d
    ldh a, [$6c]
    ld [hl+], a
    sub d
    ld a, e
    dec de
    rst $30
    ld b, c
    inc hl
    rst $10
    ld b, d
    rla
    dec h

jr_048_455a:
    ld d, h
    ld [hl+], a
    rst $38
    ld b, a
    ld d, $73
    ld h, l
    rra
    add [hl]
    ld [hl], l
    dec e
    pop hl
    ld b, h
    ld [hl+], a
    dec de
    ld e, a
    dec d
    xor h
    ld a, b
    inc hl
    ld a, $4a
    ld a, [de]
    pop de
    db $76
    ld hl, $52db
    ld d, $bf
    ld c, a
    rra
    xor d
    ld e, c
    jr jr_048_45b7

    ld d, l
    rra
    ld [de], a
    ld e, e
    dec de
    ld a, [de]
    ld h, [hl]
    rra
    rlca
    ld d, h
    dec d
    rst $18
    ld b, [hl]
    dec de
    ld a, [bc]
    ld a, d
    inc e
    db $dd
    ld c, b
    ld [hl+], a
    cp l
    ld b, l
    rla
    rst $38
    ld l, a
    inc e
    add $78
    ld a, [de]
    pop af
    ld c, b
    ld hl, $67b2
    add hl, de
    ld [c], a
    ld c, [hl]
    ld e, $34
    ld d, l
    dec d

jr_048_45a7:
    xor h
    ld c, l
    ld [hl+], a
    ld a, l
    ld h, l
    ld [de], a
    nop
    ld e, [hl]
    inc hl
    di
    ld b, b
    ld [de], a
    bit 6, e
    jr nz, jr_048_455a

jr_048_45b7:
    ld e, c
    ld [de], a
    db $10
    ld a, b
    inc e
    ld a, c
    ld [hl], l
    dec e
    inc e
    ld c, b
    ld hl, $7cfc
    inc e
    ld l, l
    ld e, d
    ld e, $b1
    ld d, b
    inc de

jr_048_45cb:
    add e
    ld h, c
    dec e
    cp c
    ld c, c
    ld [de], a
    ld l, [hl]
    ld h, d
    ld [hl+], a
    ld [$1252], sp
    xor $45
    jr nz, jr_048_45cb

    ld e, [hl]
    dec de
    pop hl
    ld b, l
    inc e
    ld l, e
    ld a, d
    rst $38

Call_048_45e3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $af
    ld e, h
    rst $38
    rst $38
    rst $38
    ld h, e
    dec b
    ld bc, $0201
    inc bc
    ld c, $0f
    ld b, e
    ld [de], a
    rra
    ldh [$35], a
    ld de, $311f
    dec a
    ld c, c
    ld a, e
    ld b, b
    ld a, h
    ld b, h
    ld a, h
    inc h
    dec [hl]
    inc hl
    ld a, [hl+]
    ld de, $7112
    ld a, d
    sbc b
    ld sp, hl
    add b
    db $f4
    add b
    jp hl


    ld b, c
    ld d, d
    ld [hl], c
    ld a, d
    sbc b
    reti


    add [hl]
    xor $80
    pop de
    ld h, c
    ld l, d
    ld a, $3f
    ld c, b
    ld a, b
    ld d, b
    ld a, h
    jr nz, jr_048_4649

    ld b, b
    ld b, d
    ld b, b
    ld c, d
    jr nz, jr_048_4656

    jr nz, jr_048_4668

    db $10
    add hl, de
    ld b, e
    ld [$010c], sp
    inc b
    ld b, $22
    ld [bc], a
    ld [hl+], a
    inc bc
    ld b, $1c
    inc e
    jr nz, @+$32

    ld b, b
    ld b, b
    nop
    inc h
    add b
    dec bc
    ld b, c
    ld b, b
    ld b, a

jr_048_4649:
    ld b, c
    ld e, $22
    inc a
    inc h
    inc e
    inc d
    ld [$6708], sp
    inc bc
    inc c
    inc c

jr_048_4656:
    jp nc, $44de

    ld [hl+], a
    cp $1e
    or $22
    xor d
    ld [bc], a
    ld l, [hl]
    dec c
    sub e
    dec c
    ld sp, $512d
    ld l, l

jr_048_4668:
    sub c
    ld [hl], l
    adc c
    inc [hl]
    ld c, b
    ld a, $c0
    sbc $20
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    ld b, e
    rst $38
    nop
    ldh [rSCX], a
    ccf
    ret nz

    rst $38
    nop
    rst $38
    ldh [$5f], a
    ld d, b
    rrca
    adc b
    ld c, $89
    rrca
    ld c, c
    rra
    ld d, c
    ld e, $53
    rra
    ld d, e
    rrca
    inc l
    rrca
    jr z, jr_048_46a8

    sub h
    rrca
    sub b
    inc a
    ld b, e
    ccf
    ld b, e
    dec de
    daa
    inc e
    and l
    db $f4
    adc $39
    ld a, [hl-]

jr_048_46a8:
    dec sp
    ld e, a
    ld a, a
    ld b, a
    ld a, [hl]
    dec de
    rst $38
    ld [hl-], a
    rst $38
    ld [c], a
    ld a, a
    ld h, c
    ccf
    ld h, c
    scf

jr_048_46b7:
    inc sp
    ccf
    ld [hl-], a
    rra
    ld [hl], $1f
    ld e, $1d

jr_048_46bf:
    dec e
    ld [de], a
    ld [de], a
    inc c
    inc c
    ld l, e
    ldh [$39], a
    ld hl, $7121
    ld d, c
    pop af
    sub c
    pop af
    ld de, $0afa
    jp c, $aa8a

    adc d
    db $dd
    adc l
    xor l
    adc l
    ld c, c
    ld c, c
    ld b, l
    ld b, l
    ld b, h
    ld b, h
    inc h
    inc h
    and d
    ld [hl+], a
    or e
    inc de
    rst $18
    ld c, $fa
    jr jr_048_46bf

    jr nz, jr_048_46b7

    ld b, b
    sub l
    add b
    xor e
    add b
    rst $18
    nop

jr_048_46f3:
    sbc a
    ld h, b
    rrca
    or b
    rlca
    jr c, jr_048_4701

    ld a, [hl]
    sbc a
    ld hl, sp-$41
    ldh [$bf], a
    ld h, b

jr_048_4701:
    ld b, e
    rst $38
    ld b, b
    rra
    ld a, a
    or b
    rst $38
    cp h
    rst $30
    or a
    db $fd
    and c
    xor $a2
    db $db
    ld e, e
    rst $08
    ld c, a
    adc c
    adc c
    res 1, c
    push af
    sub c
    rst $38
    ld d, c
    cp $72
    sbc $52
    adc [hl]
    adc d
    add h
    add h
    add b
    add b
    ld l, e
    ld c, $60
    ld h, b
    pop af
    sub c
    di
    sub d
    di
    ld [de], a
    rst $30
    inc d
    or l
    inc d
    ld e, d
    jr jr_048_46f3

    ld [hl+], a
    jr jr_048_475c

    db $10
    inc bc
    ld de, $2111
    ld hl, $2223
    ld h, e
    inc d
    ret nz

Call_048_4744:
    ret nz

    ld sp, hl
    add hl, sp
    cp $06
    ld hl, sp+$38
    push de
    ld b, b
    cpl

Jump_048_474e:
    add b
    sbc a
    inc b
    rst $38
    inc b
    db $fd
    ld [bc], a
    cp $03
    cp $48
    ld bc, $09ff

jr_048_475c:
    cp $03
    db $fc
    rlca
    rst $38
    dec bc
    rst $38
    jr c, @+$01

    ld hl, sp+$43
    dec de
    ld a, [de]
    ld bc, $1717
    inc hl
    jr jr_048_477d

    inc d
    inc d
    sub h
    inc d
    jp z, $aa8a

    adc d
    reti


    adc c
    ld sp, hl
    adc c
    ld a, b
    ld c, b

jr_048_477d:
    ld a, b
    xor h
    nop
    db $dd
    inc bc
    add b
    add b
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    dec c
    db $e3
    inc hl
    ld b, a
    ld b, h
    rst $08
    ld c, b
    adc d
    adc b
    sub l
    sub b
    ld a, [c]
    ldh a, [$91]
    sub c
    add e
    db $ed
    ldh [$37], a
    ld b, e
    ld b, e
    ld b, d
    ld b, d
    inc c
    inc c
    ld de, $6310
    ld h, b
    adc a
    add b
    ld d, a
    nop
    xor a
    nop
    ld a, h
    inc bc
    rst $38
    nop
    di
    inc c
    cp h
    ld b, e
    sbc b
    ld h, h
    nop
    sbc c
    nop
    ld [bc], a
    ld [bc], a
    xor e
    ld hl, $3075
    cp a
    jr @+$01

    adc l
    rst $38
    sbc [hl]
    cp $f3
    ld [hl], e
    ret c

    ld a, b
    db $ec
    inc l
    db $f4
    or h
    jp nc, $61d2

    ld h, c
    sbc b
    sbc b
    and e
    cp e
    dec c
    ld b, [hl]
    ld b, [hl]
    add hl, sp
    add hl, sp
    jr nz, jr_048_47fd

    or b
    db $10
    ld d, b
    db $10
    cp b

jr_048_47e2:
    adc b
    ld hl, sp-$78
    add a
    pop af
    ld b, $06
    ld b, $0f
    add hl, bc
    rrca
    ld [$230b], sp
    ld [$0e04], sp
    ld c, $09
    adc [hl]
    sub c
    ld b, e
    rst $10
    ld d, c
    ld b, e
    xor l
    and d

jr_048_47fd:
    rlca
    ld c, e
    ld b, h
    ld d, a
    ld c, b
    sbc [hl]
    add c
    add hl, sp
    ld b, $a3
    nop
    adc [hl]
    ldh [$3f], a

jr_048_480b:
    ld hl, sp+$07
    cp $01
    sbc [hl]
    ld h, c
    ldh [rNR34], a
    ldh a, [$08]
    ld hl, sp+$04
    jr nc, jr_048_47e2

    nop
    or d
    ld [bc], a
    rlca
    ld bc, $002b
    ld d, a
    ld [$04af], sp
    ld a, a
    inc bc
    rst $38
    add d
    cp $cc
    db $fc
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    inc bc
    inc bc
    push bc
    ret nz

    ld [hl-], a
    jr nc, jr_048_4863

    inc l
    inc de
    inc de
    jr nz, jr_048_485b

    ret nz

    ret nz

jr_048_483d:
    ld h, b
    ld h, b
    jr nc, @+$12

    ld e, b
    ld [$04bc], sp
    ld hl, sp-$68
    ld a, b
    ld c, b
    jr nc, jr_048_487b

    ld l, a
    dec h
    add b
    ldh [$3b], a
    ldh [$e0], a
    ldh a, [$90]
    jr nc, @+$12

    db $10
    sub b
    sub b
    ld d, b
    ret nz

jr_048_485b:
    jr nz, jr_048_483d

    jr nz, jr_048_480b

    ld l, h
    ld [hl-], a
    cp $42

jr_048_4863:
    xor [hl]
    jp nz, $c426

    inc h
    ld [$08c8], sp
    inc e
    ld [hl-], a
    ld a, $02
    ld e, [hl]
    ld [bc], a
    ld a, $0c
    ld e, h
    ldh a, [$f0]
    jr nz, jr_048_48d8

    ld [$04b8], sp

jr_048_487b:
    db $fc
    ret z

    ld hl, sp-$50
    or b
    ld b, b
    ret nz

    cp h
    cp h
    xor $c2
    ld e, $02
    inc l
    inc c
    ldh a, [$f0]
    add e
    ld bc, $4376

jr_048_4890:
    ldh [rNR41], a
    add e
    ld bc, $01c8
    ret nz

    ret nz

    ld a, c
    add e
    nop
    jr nc, jr_048_48b4

    ld b, b
    ld l, c
    ld b, b
    ld [hl], l
    daa
    ld a, $38
    add hl, sp
    ld b, b
    ld [hl], l
    ld b, c
    ld a, e
    ld l, $3e
    ld [de], a
    ld e, $0a
    ld c, $06
    rlca
    dec b
    rlca
    inc bc

jr_048_48b4:
    inc bc
    add h
    nop
    ld [bc], a
    and h
    ld bc, $01c9
    inc bc
    inc bc
    and e
    ld bc, $c3c6
    nop
    rlca
    add e
    nop
    sub b
    ldh [$29], a
    rst $38
    nop
    ei
    rlca
    ret c

    jr c, jr_048_4890

    ld b, h
    add b
    add d
    nop
    ld a, [c]
    nop
    ld a, [bc]
    nop

jr_048_48d8:
    add hl, bc
    nop
    dec h
    nop
    push hl
    ldh [$f2], a
    sub b
    ld a, [$f9f8]
    ld l, b
    dec a
    or h
    inc e
    ld a, a
    ld a, $eb
    ld c, e
    db $dd
    sub c
    cp $2f
    pop af
    ld sp, $40c0
    dec h
    add b
    dec bc
    add c
    add b
    add e
    add c
    ld d, a
    ld b, e
    ld l, a
    ld b, e
    ld a, $22
    inc e
    inc e
    add l
    ld bc, $1210
    rst $08
    nop
    ld e, a
    add b
    di
    add b
    rst $20
    add b
    ld h, c
    adc $40
    ld [hl], a
    ld b, b
    ld h, a
    ld h, $69
    cpl
    ld [hl], b
    cpl
    ld b, e
    or b
    rra
    ld e, $40
    ccf
    ld b, b
    ld a, a
    add d
    ld a, a
    add h
    db $fd
    ld c, $f7
    ld a, $d7
    sbc $ef
    db $fc
    ld [hl], a
    cp c
    rst $38
    or e
    ld a, h
    inc e
    db $fc
    inc h
    ld hl, sp-$38
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    ld h, e
    adc h
    ld bc, $0280
    ld b, c
    rst $38
    ld b, c
    ld b, l
    rst $38
    add c
    add hl, bc
    cp $83
    db $fc
    ld b, a
    rst $38
    ld c, e
    rst $38
    ld a, b
    rst $38
    jr c, jr_048_4996

    ei
    ld a, [hl-]
    rlca
    rst $10
    ld d, a
    ret c

    ld e, b
    sbc b
    sbc b
    sub h
    sub h
    add e
    ld bc, $85ac
    inc bc
    ld b, b
    add [hl]
    ld bc, $128c
    add d
    ld a, a
    add d
    cp a
    jp nz, Jump_048_625f

    sbc a
    sub c
    daa
    jp hl


    ld b, l
    or $99
    db $fc
    db $e3
    rst $38
    ld l, h
    ccf
    add a
    inc bc
    ld h, b
    dec c
    ei
    ld hl, $12ff
    xor $2c
    rst $08
    ret z

    rrca
    ld [$0507], sp
    ld [bc], a
    ld [bc], a
    ld l, c
    add a
    inc bc
    add b
    inc bc
    reti


    nop
    ldh a, [rP1]

jr_048_4996:
    and e
    rst $30
    ldh [rNR44], a
    rst $38
    db $10
    rst $38
    ld [$06ff], sp
    rst $38
    ld bc, $80ff
    rst $38
    ld b, b
    rst $38
    ldh a, [$df]
    call c, $87f7
    cp b
    adc b
    ld l, h
    ld l, h
    dec a
    dec a
    and [hl]
    ld h, $62
    ld [hl+], a
    and [hl]
    ld [hl+], a
    ld l, d
    ld h, d
    cp a
    and e
    dec a
    dec h
    adc e
    nop
    ld h, h
    inc bc
    push de
    ld b, b
    cpl
    add a
    call nz, Call_048_6002
    inc bc
    ld hl, $7dc0
    add b
    ld b, e
    add e
    add d
    ld d, $86
    add h
    cp $f8
    ld a, [hl]
    adc b
    cp $e4
    ld a, a
    db $fc
    rla
    rst $38
    dec bc
    rst $38
    inc a
    ld sp, hl
    cp $60
    ld h, c
    add b
    add b
    inc b
    ld b, $61
    dec c
    inc bc
    nop
    rlca
    inc bc
    rrca
    inc b
    ld e, a
    ld [$0fbf], sp
    ld sp, hl
    ret


    ld hl, sp-$08
    add a
    ld [bc], a
    sub d
    add h
    ld bc, $e0f0
    inc l
    adc h
    ld a, h
    ld b, e
    ld e, b
    ld h, h
    ld b, b
    ld e, c
    ld b, b
    ld b, d
    ld h, d
    db $eb
    ld a, a
    rst $18
    ld a, h
    push bc
    ld a, [hl]
    jp $c13f


    ld a, a
    ld b, c
    rst $38
    adc b
    ei
    inc e
    rst $38
    inc a
    rst $28
    ld l, h
    set 3, l
    ld a, a
    ld a, c
    ld a, [hl]
    ld [hl-], a
    db $fc
    inc h
    db $ec
    ld e, h
    ld a, [c]
    sub d
    pop hl
    ld hl, $e0e0
    adc l
    ld [bc], a
    ld [hl+], a
    adc c
    ld [bc], a
    ld [hl], b
    dec b
    add e
    add e
    push bc
    ret nz

    or d
    or b
    xor c
    ld [bc], a
    sbc l
    ld bc, $6100
    ld b, e
    pop hl
    sub d
    add hl, de
    ld a, [c]
    ld a, [bc]
    pop af
    ld a, [bc]
    xor d
    ld b, $53
    ld b, $aa
    add [hl]
    ret nc

    add l
    and h
    add l
    ld b, c
    ld b, l
    rst $28
    ld [hl], c
    adc $51
    adc h
    sub e
    add b
    adc l
    add b
    add c
    ld l, h

jr_048_4a60:
    nop
    rst $00
    ld b, e
    rst $00
    jr z, jr_048_4a6e

    rst $28
    db $10
    ld c, d
    db $10
    or l
    db $10
    ld c, d
    db $10

jr_048_4a6e:
    sub l
    add h
    ld bc, $4368
    ld bc, $0721
    ld [hl+], a
    ld [hl+], a
    ei
    ld a, [hl-]
    dec sp
    ld a, [de]
    rla
    rla
    jp $6d01


    ld de, $0818
    adc b
    ld [$085c], sp
    xor c
    inc c
    sub $0c
    pop hl
    ld [de], a
    ldh [rNR11], a
    ret nz

    ld hl, $c000
    adc [hl]
    ld [bc], a
    sbc c
    rrca
    ld b, b
    add b
    ld b, [hl]
    add [hl]
    ld c, c
    rlca
    ld c, b
    dec b
    sub b
    adc d
    sub b
    dec d
    ldh a, [$0a]
    jr nz, jr_048_4aa8

jr_048_4aa8:
    ld [hl+], a
    ld hl, $4001
    ld b, d
    add e
    ld [bc], a
    db $10
    add hl, de
    ld hl, $1021
    db $10
    sub b
    sbc b
    adc b
    adc h
    ld b, b
    ld c, d
    jr nz, jr_048_4aee

    ld h, b
    jr nz, jr_048_4a60

    db $10
    ld b, b
    db $10
    or b
    ld [$08f0], sp
    ld h, b
    sub b
    nop
    ld h, b
    ld h, c
    inc de
    dec d
    jr jr_048_4ad3

    inc d
    nop
    inc hl

jr_048_4ad3:
    add b
    ret nz

    ld b, b
    ld b, b
    add b
    jr nz, jr_048_4b3a

    db $10
    or b
    ld [$8870], sp
    nop
    ld [hl], b
    ld l, e
    add hl, bc
    ldh a, [$fc]
    ld e, h
    ld [bc], a
    inc l
    ld [bc], a
    ld d, b
    inc c
    add b
    ldh a, [$86]

jr_048_4aee:
    db $e3
    ld bc, $0040
    adc h
    ld bc, $8d49
    nop
    or b
    rlca
    rra
    and a
    rst $30
    adc $3f
    ld a, $3f
    ld e, c
    adc c
    nop
    add $ff
    ld l, l
    add hl, de
    ld bc, $0001
    ld [bc], a
    inc b

jr_048_4b0c:
    inc c
    db $10
    db $10
    ld hl, $4320
    ld b, b
    ld c, [hl]
    ld b, c
    db $dd
    and d
    db $e3
    sbc h
    ld d, l
    ld l, d
    ld a, [hl+]
    dec [hl]
    db $10
    rra
    ld c, $0f
    rst $00
    sbc b
    inc hl
    ld bc, $071b
    rrca
    nop
    rla
    jr nz, @+$2a

    jr nc, jr_048_4b5e

    add hl, sp
    ld hl, $427f
    ld a, l
    ld b, [hl]
    ld a, a
    ld b, h
    ld a, a
    ld b, b
    ld a, $21

jr_048_4b3a:
    cpl
    jr nc, @+$1b

    ld e, $06
    rlca
    ld bc, $7401
    inc bc
    ld bc, $0602
    inc b
    ld b, h
    ld [$010f], sp
    rlca
    rlca
    add e
    pop bc
    ldh [$93], a
    ld [bc], a
    ld b, $09
    jr @+$22

    jr nz, jr_048_4b5e

    ld b, b
    pop hl
    add d
    rst $20
    ld [de], a

jr_048_4b5e:
    ld e, a
    or c
    ld [hl], l
    sbc e
    ld sp, hl
    ld c, a
    rst $30
    ld c, a
    ld [hl], c
    cp a
    rst $28
    ld e, $cf
    jr c, jr_048_4b0c

    ld [hl], c
    cp $e7
    ld e, $f9
    cpl
    pop hl
    ld b, l
    jp $c285


    adc e
    add h
    sub a
    adc b
    rst $28
    sub d
    sbc [hl]
    ld h, d
    sbc $22
    cp $c2
    dec a
    inc hl
    sbc c
    sub a
    db $ed
    rst $38
    ld [de], a
    ld e, $09
    rrca
    sbc c
    rrca
    push af
    rla
    and d
    ld h, d
    ld a, [c]
    add $fb
    rrca
    jp nc, $053f

    cp $fe
    ld sp, hl
    ld b, l
    ld a, d
    add sp, -$69
    ldh a, [$8f]
    or b
    rst $08
    add b
    rst $38
    ld b, e
    ld a, a
    ld b, c
    ld a, [hl]
    jr nz, jr_048_4bed

    add hl, de
    ld e, $30
    ccf
    rst $28
    ret nz

    ld d, b
    ld [$3011], sp
    rst $38
    ld b, b
    rst $38
    ld b, c
    cp [hl]
    cp [hl]
    jr nc, jr_048_4c30

    adc h
    adc h
    ld [hl+], a
    ld [bc], a
    rlca
    ld de, $8937
    cp l
    ld b, a
    or $4f
    xor l
    ld a, a
    inc sp
    db $fd
    daa
    ld sp, hl
    ld [hl], d
    cp $ac
    db $ec
    call z, $ccc4
    ld b, h
    add sp, $68
    jp hl


    xor c
    ret c

    sbc l
    and a
    add sp, $06
    add hl, sp
    nop
    ld c, $22
    ret nz

    ldh [$35], a
    pop bc
    rst $20
    and [hl]

jr_048_4bed:
    ld a, a

jr_048_4bee:
    ld e, b
    ccf
    jr nc, jr_048_4c31

    inc c
    ld e, a
    inc bc
    cp [hl]
    ld bc, $017f
    cp $81
    rst $38
    add c
    ld a, a
    ld b, b
    dec sp
    dec [hl]
    ld a, [bc]
    rrca
    inc b
    rlca
    cp $ff
    inc bc
    rst $38
    ld [hl], c
    adc a
    ldh [$1f], a
    add d
    ld a, l
    inc c
    di
    ld [hl], b
    adc a
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp-$04
    ld b, b
    ldh [$e0], a
    jr nc, jr_048_4bee

    jr nc, jr_048_4c30

    ld b, h
    ld hl, sp+$08
    rlca
    inc c
    db $fc
    add h
    ld a, h
    add h
    db $fc
    ld hl, sp-$08
    ld h, a
    inc bc
    jr nc, @+$72

jr_048_4c30:
    adc b

jr_048_4c31:
    adc b
    inc h
    ld [$0917], sp
    inc b
    ld b, $0c
    inc c
    db $10
    db $10
    jr nz, jr_048_4c5e

    ld b, b
    ld b, e
    add a
    sbc b
    sbc c
    and h
    ld hl, $6158
    and b
    rst $10
    ld d, [hl]
    rst $38
    ld hl, sp+$1c
    ld h, c
    ldh [rNR41], a
    ld bc, $e3c1
    rst $38
    ld e, $ff
    nop
    rst $38
    ld bc, $1ffe
    pop hl
    cp $fa

jr_048_4c5e:
    add l
    db $fd
    ld [bc], a
    cp a
    nop
    rst $18
    nop
    rst $38
    add b
    ld a, d
    push bc
    dec [hl]
    ld [$bf4f], a
    xor c
    ld d, a
    di
    xor $43
    cp $ff
    add hl, bc
    ld a, a
    rst $38
    ld a, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    pop bc
    add c
    db $ec

jr_048_4c80:
    inc hl
    inc bc
    jr nz, @+$62

    sub b
    sub b
    dec h
    db $10

jr_048_4c88:
    ldh [rVBK], a
    jr nz, jr_048_4cac

    ld h, b

jr_048_4c8d:
    ldh [$f0], a
    jr nc, jr_048_4c88

    rla
    rst $18
    jr z, jr_048_4c80

    inc d
    push de
    ld a, [hl+]
    add hl, hl
    rst $10
    inc sp
    inc l
    inc h
    jr c, @-$14

    jr nc, jr_048_4c8d

    jr nc, @-$30

    ld [hl], b
    sbc a
    ldh [rIF], a
    ldh a, [$2f]
    ldh a, [$97]
    ld a, b

jr_048_4cac:
    ld c, l
    cp [hl]
    and [hl]
    ld e, a
    jp $9e3f


    ld a, a
    and e
    ld h, c
    ld e, b
    ret nz

    and c
    sbc b
    sub e
    ldh a, [$ef]
    ld h, b
    rst $38
    nop
    ld a, $c1
    call nc, $38eb
    rst $30
    nop
    rst $38
    pop bc
    cp $3e
    ld sp, hl
    ret nz

    rst $38
    ld sp, $0f7f
    rra
    ld bc, $0201
    inc bc
    ld bc, $0203
    inc bc
    adc e
    nop
    ld c, [hl]
    ldh [rBCPD], a
    add hl, bc
    dec bc
    ld d, $10
    ld l, $20
    ld d, a
    ld c, h
    xor e
    sbc b
    push de
    or e
    xor d
    and $73
    ld l, [hl]
    or [hl]
    cp l
    sbc [hl]
    adc l
    ld l, d
    ld b, a
    dec sp
    scf
    ld c, $0f
    add c
    add c
    ldh [$60], a
    or c
    ld d, c
    ld e, d
    xor d
    jp z, $35f6

    ld a, $0f
    inc e
    dec h
    ld c, $1a
    rlca
    dec l
    ld [bc], a
    ld e, l
    inc bc
    cp $01
    db $fc
    inc bc
    jp hl


    rla
    sub $2e
    inc e
    ld hl, sp-$58
    ldh a, [rHDMA3]
    ldh [$bc], a
    jp $17e8


    push de
    ld a, [hl+]
    cp b
    ld d, a
    nop
    rst $38
    ld [$09ff], sp
    rst $30
    dec bc
    rst $38
    inc b
    rst $38
    add hl, bc

jr_048_4d30:
    cp $13
    db $fc
    dec h
    ld a, [$fd62]
    push de
    rst $38
    xor d
    rst $38
    push de
    rst $38
    cp a
    rst $38
    ld e, a
    ldh [$b8], a
    ret nz

    or e
    jp Jump_048_6071


    rra
    db $10
    and l
    ld bc, $0d4c
    add b
    add b
    ld h, b
    ld h, b
    ret nc

    db $10
    ret z

    ld [$8c74], sp
    ld a, h
    inc b
    jp z, Jump_048_4326

    ld d, d
    adc $0b
    and c
    sbc a
    push bc
    cp a
    reti


    cp a
    ld c, c
    rst $38
    or l
    rst $38
    add c
    cp a
    ld b, e
    ld [hl], c
    rrca
    add hl, de
    push af
    dec bc
    push hl
    dec de
    db $ed
    inc de

jr_048_4d75:
    jp hl


    rla
    jp c, $1226

    xor $04
    db $fc
    add h
    db $fc
    ret z

    ld hl, sp-$50
    ld [hl], b
    ld d, b
    jr nc, @+$42

    jr c, jr_048_4d30

    ld e, b
    ld b, e
    ld c, b
    cp b
    ld bc, $7888
    ld b, e
    db $10
    ldh a, [rSB]
    jr nz, jr_048_4d75

    and l
    ld [bc], a
    inc h
    jp $0482


    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    jp z, $0784

    jr nc, jr_048_4dd5

    jr @+$0a

    ld hl, sp-$78
    ldh a, [$f0]
    adc d
    nop
    ld e, e
    ld b, $03
    ld c, $1c
    jr nc, jr_048_4e14

    add b
    add b
    add e
    ld [bc], a
    daa
    dec c
    add h
    nop
    rst $00
    nop
    dec h
    jp $e15f


    or a
    ld a, b
    dec l
    cp $56
    rst $38
    ld h, l
    add hl, de
    ldh [$f0], a
    ld [$4d08], sp
    dec b
    ld l, $12
    add hl, sp
    rrca
    push af

jr_048_4dd5:
    rrca
    sbc l
    ld h, a
    ld [$f236], a
    ld e, $6c
    sbc h
    adc b
    ld hl, sp+$58
    ld hl, sp+$69
    jp hl


    adc e
    ld bc, $0b00
    db $e3
    and a
    ld a, a
    ld e, a
    ccf
    daa
    ccf
    inc de
    ld e, a
    ld [$06bf], sp
    add a
    ld bc, $8c18
    ld bc, $0c70
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    add c
    rst $38
    ld b, $fa
    dec e
    db $fd
    ld [c], a
    add l
    ld bc, $c38a
    nop
    ld [hl], c
    dec de
    ld e, $18
    daa
    jr nz, jr_048_4e5f

jr_048_4e14:
    ld b, h
    sub l
    adc h
    adc d
    sbc c
    sub l
    di
    xor d
    and $72
    xor $97
    sbc h
    cp h
    adc a
    rst $30
    adc a
    ld h, d
    ld a, a
    sbc h
    sbc a
    db $e3
    ld h, e
    and h
    nop
    ld [hl], b
    ld [bc], a
    ld b, b
    or b
    ld [hl], b
    add e
    ld [bc], a
    xor b
    inc de
    ld a, [$5e82]
    ld [hl+], a
    ld a, [hl+]
    ld h, [hl]
    ret


    ld b, a
    sbc c
    add a
    sub l
    adc a
    jp hl


    sbc a
    adc l
    rst $38
    ld [hl], e
    rst $38
    xor l
    rst $38
    ld h, c
    ld b, $09
    nop
    ld [$0400], sp
    nop
    dec b
    ld h, c
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0361
    inc bc
    inc b
    ld bc, $8b02

jr_048_4e5f:
    ld [bc], a
    ld h, $e0
    dec h
    cp $e7
    ld [$17ff], sp
    ld sp, hl
    dec hl
    pop af
    ld sp, $51e0
    ldh [rWX], a
    ld h, b
    rst $30
    ld b, b
    cp l
    jp $95eb


    ld [hl], l
    dec bc
    cp e
    dec b
    ld [hl], h
    dec bc
    cp d
    dec b
    ld e, h
    inc hl
    dec bc
    sub l
    inc h
    ld b, d
    jr jr_048_4ea8

    ld [bc], a
    inc c
    ld l, e
    ldh [rHDMA5], a
    pop hl
    nop
    cp [hl]
    ret nz

    ld b, a
    ld hl, sp-$50
    rst $38
    adc h
    rst $38
    ld b, e
    ld a, a
    jr nz, jr_048_4ed9

    dec sp
    dec [hl]
    jp z, $0aff

    rlca
    dec [hl]
    rrca
    ld l, h
    add hl, de
    ld b, b
    ld hl, $0003

jr_048_4ea8:
    inc d
    ld [bc], a
    ld l, b
    inc b
    dec d
    ld [$0811], sp
    ei
    nop
    adc $31
    ld [hl], $c9
    dec c
    ld a, [c]
    or $fc
    dec sp
    dec [hl]
    rrca
    rrca
    ld [$d308], sp
    ldh a, [$2e]
    pop hl
    ld a, b
    cp h
    ldh [rLCDC], a
    cp h
    ret nz

    adc a
    ldh a, [$61]
    cp $c6
    add b
    and b
    ret nz

    call c, $f1e0
    ld a, [hl]
    and b
    ret nz

    sbc b

jr_048_4ed9:
    ldh [$31], a
    cp $2e
    pop af
    db $10
    rst $38
    adc a
    ld a, a
    add a
    ld bc, HeaderROMSize
    db $fc
    di
    add e
    db $ed
    nop
    ret nz

    ld h, c
    ld e, $80
    inc b
    nop
    ld a, [de]
    nop
    dec [hl]
    nop
    rst $28
    nop
    rst $38
    nop
    ccf
    nop

jr_048_4efb:
    ld e, a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $01
    ld d, c
    cpl
    and d
    ld e, [hl]
    ld c, h
    cp h
    jr nc, jr_048_4efb

    ret nz

    ret nz

    ld h, a
    rrca
    rra
    nop
    rst $38
    nop
    db $fd
    inc bc
    ld a, [$e107]
    dec de
    pop hl
    inc hl
    ld b, c
    pop bc
    add c
    add c
    adc c
    ld [bc], a
    ld d, b
    ld de, $0e29
    ld e, $05
    dec l
    ld b, $1e
    dec b
    cp h
    rlca
    db $f4
    inc bc
    db $e4
    rlca
    sbc e
    ld bc, $0061
    xor l
    nop
    ld c, a
    inc c
    ld [$3e00], sp
    ld b, $c1
    ccf
    ld [hl], b
    rst $38
    and c
    cp $43
    db $fc
    push bc

jr_048_4f46:
    adc b
    ld [bc], a
    add a
    ld b, e
    inc b
    db $fc
    ld [bc], a
    ld [$10f8], sp
    adc b
    pop hl
    dec d
    sbc l
    ld h, e
    ld e, l
    and e
    cp e
    ld b, l
    dec a
    inc bc
    adc d
    dec b
    ld h, b
    inc bc
    jr jr_048_4f61

jr_048_4f61:
    add $00
    ld sp, $0400
    ld [$0201], sp
    ld l, c
    inc bc
    ld b, b
    ld [hl], b
    add sp, -$6c
    adc e
    nop
    call nz, $0187
    db $10
    inc de
    rst $38
    add c
    cp $81
    ld a, a
    ld b, c
    rlca
    nop
    ldh [rP1], a
    ccf
    nop
    rlca
    nop
    jr nz, jr_048_4f46

    ld b, $38
    nop
    rlca
    ld l, d
    inc bc
    ret nz

    ld hl, sp-$10
    ld b, a
    add h
    ld bc, $023b
    jr c, jr_048_4f96

jr_048_4f96:
    ld bc, $0484
    sub c
    rlca
    inc bc
    nop
    ld [hl], b
    add b
    inc bc
    ld a, h
    nop
    inc bc
    ld l, e
    inc de
    ldh a, [rP1]
    rrca
    nop
    xor h
    ret nc

    ld [hl], $c8
    ld a, e
    call nz, Call_048_43fc
    ld a, a
    ret nz

    cp [hl]
    ld h, b
    ld a, c

jr_048_4fb6:
    and b
    and [hl]
    ld b, b
    add e
    sub l
    dec d
    ld c, b
    nop
    cp $00
    pop af
    nop
    ld b, $00
    ldh [rNR23], a
    nop
    ldh [$03], a
    ld bc, $0306
    dec d
    rrca
    ld e, d
    ccf
    rlca
    rrca
    dec h
    ld bc, $f802
    db $dd
    or a
    adc h
    ld bc, $8b03
    ld bc, $0760
    sbc a
    and b
    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    ld b, $8b
    ld bc, $a574
    rst $20
    ld [bc], a
    ld a, a
    nop
    add c
    jp $b304


    ld [bc], a
    ld h, b
    nop
    rrca
    add e
    dec b
    ld e, c
    rlca
    ld hl, sp+$00
    rlca
    nop
    cp $01
    ldh a, [$0e]
    jp $07e8


    add hl, sp
    nop
    call nz, $3802
    inc b
    ret nz

    jr nc, jr_048_4fb6

    dec b
    ld a, [hl]
    rst $38
    ld l, c
    dec b
    ld bc, $0301
    inc bc
    rlca
    dec b
    ld b, l
    rlca
    inc b
    ld bc, $0502
    dec h
    ld [bc], a
    ld [bc], a
    nop
    inc b
    nop
    ld [hl+], a
    inc b
    nop
    nop
    ld [hl+], a
    ld [$1307], sp
    db $10
    dec de
    inc e
    rrca
    ld [$0705], sp
    ld [hl], l
    ld bc, $0101
    add e
    xor e
    dec c
    inc b
    inc b
    rlca
    ld [$080f], sp
    inc de
    db $10
    rlca
    ld hl, $2e32
    inc e
    inc e
    add l
    sbc b
    dec c
    inc bc
    ld [bc], a
    rlca
    inc b
    ld bc, $0006
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    ld c, $04
    inc b
    add e
    xor c
    ldh [$2f], a
    ld [hl], $36
    ld c, b
    ld c, b
    sub c
    sub b
    add b
    and c
    jr nz, @+$22

    nop
    jr nz, jr_048_506d

    nop

jr_048_506d:
    add a
    add b
    xor a
    add c
    ld a, a
    add $27
    jr c, @+$21

    nop
    rrca
    nop

jr_048_5079:
    dec bc
    inc b
    rra
    inc e
    dec bc
    inc l
    ld [hl], a
    jr c, jr_048_5101

    jr nz, @+$01

    nop
    rst $38
    ld b, $ff
    jr jr_048_5079

    ld [hl], b
    sbc a
    sub b
    rra
    db $10
    ld b, e
    ccf
    jr nz, jr_048_50b0

    cpl
    jr nz, @+$59

    ld b, b
    ld c, e
    ld b, b
    ld d, l
    ld b, b
    ld l, [hl]
    ld b, b
    dec [hl]
    jr z, jr_048_50dd

    jr nc, jr_048_50fc

    ld d, h
    adc c
    adc h
    jr jr_048_50ab

    ccf
    ld [bc], a
    cp $0e

jr_048_50ab:
    pop af
    ld sp, $c141
    add b

jr_048_50b0:
    add b
    call nz, $3300
    ld d, $0f
    rra
    jr nc, jr_048_5136

    jp nz, $15ea

    call nc, $a02b
    ld e, a
    ld b, e
    cp a
    ld a, [hl]
    db $fd
    dec d
    ld a, [de]
    ld a, [bc]

jr_048_50c7:
    dec [hl]
    daa
    ccf
    jr jr_048_50e4

    and e
    nop
    ld b, [hl]

jr_048_50cf:
    dec b
    cp h
    cp h
    jp nz, $06c2

    ld c, $a3
    and a
    ld de, $60c5
    or d
    and b

jr_048_50dd:
    dec a
    ld h, b
    ld a, a
    and b
    ld e, a
    ldh [$df], a

jr_048_50e4:
    ld h, b
    rst $38
    jr c, jr_048_50cf

    daa
    ret nc

    jr nc, jr_048_5131

    ldh a, [rNR10]
    ld bc, $08f8
    and l
    rst $20
    dec b
    cp $06
    rst $38
    dec b
    ei
    inc b
    ld b, l
    db $fd

jr_048_50fc:
    ld [bc], a
    ldh [$35], a
    push af
    ld a, [bc]

jr_048_5101:
    db $d3
    inc l
    rst $30
    jr z, @-$0f

    jr nc, jr_048_50c7

    ld b, b
    xor a
    ld b, b
    ld c, $41
    rst $00
    ld b, c
    ld b, a
    ld b, c
    and a
    ld hl, $6127
    ld h, a
    ld h, c
    or a
    and c
    ccf
    ld hl, $ff7e
    rst $38
    nop
    xor e
    ld d, h
    ld d, l
    xor d
    add e
    ld a, a
    dec e
    ld a, [$f5ca]
    ld d, l
    xor d
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38

jr_048_5131:
    add c
    rst $38
    inc a
    inc a
    xor e

jr_048_5136:
    nop
    inc a
    ld b, $60
    ld h, b
    ld b, c
    ld de, $0ebe
    ld a, a
    add e
    sbc d
    ldh [rNR43], a
    nop
    rst $08
    inc sp
    db $fc
    ld a, h
    ret nc

    ld de, $e2e3
    rlca
    inc b
    dec c

jr_048_5150:
    ld a, [bc]
    ld a, [bc]
    dec c
    dec d
    dec de
    dec sp
    dec [hl]
    ld [hl], l
    ld e, e
    ld d, c
    ld a, a
    or c
    rst $18
    ret z

    cp a
    adc b
    rst $38
    db $e4
    ld a, a
    db $fc
    rra
    rst $38
    inc bc
    ld c, c
    rst $38
    nop
    ldh [$29], a
    rst $28
    db $10
    rst $38
    jr nz, jr_048_5150

    jr nz, jr_048_51f2

    ret nz

    ld a, a
    pop bc
    ld a, a
    jp $ed3f


    ld a, a
    ld a, [c]
    rst $38
    add d
    rst $38
    inc b
    rst $38
    ld [$35fa], sp
    push de
    ld [$57a8], a
    ld b, b
    cp a
    and b
    ld a, a
    ld l, a
    rst $18
    ld a, [hl-]
    push hl
    db $10
    rst $38
    ld c, $ff
    pop hl
    pop hl
    ld l, h
    ldh [rLCDC], a
    jr nz, @+$12

    ld d, b
    sub b
    sub b
    jr nz, jr_048_51c0

    ldh [rNR41], a
    ret nz

    ld b, b
    add e
    add a
    ld [$2018], sp
    ld h, b
    ldh a, [$c0]
    ld hl, sp+$40
    ld_long a, $ff80
    add c
    xor d
    sub $54
    xor h
    add hl, hl
    ret c

    ld a, [bc]
    ld hl, sp+$1f
    ldh a, [rNR22]
    ld hl, sp-$65
    db $f4

jr_048_51c0:
    and [hl]
    ld sp, hl
    and c
    rst $38
    ld h, e
    cp $65
    cp $e6
    db $fd
    jp hl


    ld a, $f8
    rra
    ld hl, sp+$0f
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    inc e
    rst $38
    ld h, e
    rst $38
    sub b
    ld b, e
    rst $38
    ld [$ff48], sp
    inc b
    inc c
    ld [$48bf], sp
    ld e, a
    xor b
    cp d
    ld d, l
    ld [hl], l
    xor d
    ld [$50d5], a
    xor a
    add l
    ld bc, $0346

jr_048_51f2:
    jp $38ff


    inc a
    or [hl]
    nop
    jr nc, @+$06

    ret nz

    jr nc, @+$32

    ld [$c30c], sp
    nop
    ld c, c
    inc bc
    cp h
    ld a, h
    add e
    add e
    add [hl]
    sub e
    ld b, $00
    ld d, l
    nop
    rst $28
    ld e, $e1
    ld h, c
    add e
    nop
    jp nz, $ca05

    nop
    push af
    nop
    ld a, [$c300]
    nop
    db $d3
    dec b
    ld a, a
    db $fc
    rst $38
    add e
    rst $38
    nop
    ld b, h
    db $fc
    nop
    ld [$fc80], sp
    ld b, b
    cp $20
    cp $10
    rst $38
    db $10
    ld b, l
    rst $38
    ld [$fb11], sp
    inc b
    rst $18
    inc h
    xor a
    ld d, h
    ld e, a
    and h
    cpl
    ret c

    dec e
    ld [$dd32], a
    ld sp, $ceff
    adc $ec
    inc hl
    inc hl
    add b
    ld [$c0c0], sp
    jr nz, @+$22

    ld d, b
    db $10
    or b
    db $10
    ld e, b
    add e
    ld bc, $0a09
    add h
    ld a, h
    ld h, h
    ld e, $12
    cp [hl]
    ld a, [bc]
    ld e, [hl]
    ld b, $bc
    inc b
    ld b, e
    cp $02
    ld b, h
    rst $38
    ld bc, $8104
    ld a, a
    ld b, c
    ccf
    ld hl, $1e43
    ld [de], a
    dec c
    inc c
    inc c
    ld [$0408], sp
    inc b
    xor h
    inc b
    ld d, h
    inc b
    xor h
    inc b
    call nc, $4304
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    inc bc
    ld h, b
    and b
    ret nz

    ld b, b
    rst $00
    add $85
    nop
    ld [hl+], a
    ld e, $10
    db $10
    inc de
    inc e
    rra
    jr jr_048_52a4

    ld c, $04
    rlca
    rlca
    dec b
    dec c
    dec bc
    ld [de], a
    rra

jr_048_52a4:
    ld d, $1b
    ld a, [hl+]
    scf
    ld h, [hl]
    ld a, e
    ld h, d
    ld a, a
    or d
    rst $38
    pop de
    cp a
    sub c
    rst $38
    jp hl


    adc d
    ld bc, $8585
    ld bc, $e0d0
    add hl, hl
    add b
    add b
    rlca
    rrca
    db $10
    ld [hl], b
    ldh a, [$c0]
    ei
    add b
    ccf
    jp $a45e


    inc l
    ret c

    ld e, [hl]
    or b
    dec e
    ldh a, [$3e]
    ldh [$2f], a
    ldh a, [$57]
    add sp, $4b
    push af
    ld b, a
    ld sp, hl
    inc hl
    cp $a5
    cp $65
    cp $ea
    db $fd
    jp hl


    ld a, $fe
    rra
    adc c
    ld [bc], a
    or a
    rlca
    ld h, b
    ld [hl], b
    ld [$f80c], sp
    ld a, [$0686]
    and a
    ld sp, hl
    inc b
    add b
    nop
    ld e, a
    rra
    ldh [$a4], a
    adc l
    add a
    ld [bc], a
    ld h, h
    rlca
    ld a, a
    cp [hl]
    db $fd
    pop bc
    ld a, [$f400]
    nop
    add e
    add e

jr_048_5309:
    inc de
    ld hl, sp+$00
    db $fc
    add b
    cp $40
    rst $38
    jr nz, jr_048_5370

    and [hl]
    ld a, [hl+]
    db $dd
    dec e
    ld [$df33], a
    inc a
    db $fc
    ret nz

    ret nz

    adc c
    ld [bc], a
    cp b
    nop
    nop
    ld [hl+], a
    ld b, b
    rrca
    add b
    jr nz, jr_048_5309

    and b
    ld h, b
    ld h, b
    nop
    db $10
    db $10
    ld [$0818], sp
    cp h
    inc b
    ld e, h
    inc b
    add h
    ld [bc], a
    jp c, $820d

    cp $42
    ld a, [hl]
    ld [hl+], a
    ld a, $12
    ld e, $12
    inc e
    ld a, [bc]
    ld [$8c0c], sp
    add [hl]
    ld [bc], a
    push af
    add e
    add e
    nop
    add sp, -$7c
    ld [bc], a
    db $fd
    ld bc, $50b0
    adc e
    inc bc
    inc b
    ld h, e
    ld c, $40
    cp a
    adc b
    ld a, a
    rra
    rst $30
    ld c, $f9
    inc b
    rst $38
    ld a, [bc]
    ei
    ldh [$e0], a
    nop
    adc h
    inc bc
    ccf
    dec e
    pop af
    pop bc
    rst $38

jr_048_5370:
    add [hl]
    ld a, $c8
    ld e, [hl]
    or b
    inc a
    ret nc

    ld a, [hl]
    and b
    dec a
    ldh [$5e], a
    ldh [rVBK], a
    ldh a, [$57]
    add sp, -$07
    rrca
    rst $38
    ld b, $ff
    rlca
    rst $38
    jr @+$01

    ld h, b
    adc h
    ld [bc], a
    ld a, [bc]
    inc c
    ld [$08ff], sp
    cp a
    ld d, b
    ld e, a
    or b
    cp d
    ld h, l
    dec [hl]
    ld [$d5ea], a
    add a
    ld bc, $0344
    rst $00
    rst $38
    jr c, jr_048_53dc

    adc e
    inc bc
    ld [hl], b
    inc b
    adc b
    adc h
    ld [bc], a
    ld [bc], a
    add c
    xor b
    ei
    inc bc
    adc a
    rrca
    ld [hl], b
    jr nc, @-$77

    inc bc
    cp d
    add e
    inc bc
    sub [hl]
    dec b
    rst $38
    rra
    ld a, a
    ldh [$fd], a
    add b
    add [hl]
    inc bc
    and b
    dec b
    ret nz

    ld hl, sp+$20
    db $fc
    db $10
    cp $87
    rst $18
    ld b, [hl]
    ld [bc], a
    rst $38
    dec c
    db $dd
    ld h, $ae
    ld d, l
    ld e, l
    and [hl]
    xor b
    ld e, a
    ld e, e
    xor a
    inc a

jr_048_53dc:
    call c, $e020
    add [hl]
    cp e
    add h
    inc bc
    pop de
    nop
    cp b
    add h
    inc bc
    rst $10
    rrca
    db $fc
    jp nz, $22fc

    cp $12

jr_048_53f0:
    ld a, [hl]
    ld [de], a
    ld a, $0a
    ld e, $0a
    inc e
    inc c
    inc c
    inc b
    add a
    inc bc
    db $ec
    dec c
    xor b
    ld [$08d8], sp
    add sp, $08
    ldh a, [rNR10]
    ld d, b
    or b
    and b
    ld h, b
    ld b, b
    ret nz

    call $c102
    add e
    inc bc
    db $10
    ld [bc], a
    add hl, bc
    ld [$8812], sp
    inc bc
    rla
    ld bc, $0303
    ld l, l
    ld [bc], a
    dec bc
    inc l
    or a
    add l
    nop
    sub e
    ld b, $02
    rst $38
    inc c
    rst $38
    db $10
    rst $18
    ld [hl], b
    add [hl]
    nop
    ret nz

    ld [bc], a
    inc bc
    rlca
    inc c
    add a
    nop
    jp z, $a10d

    ld e, a
    ld b, e
    cp [hl]
    ld a, [hl]
    db $fd
    dec c
    ld a, [bc]
    jr @+$19

    inc de
    rra
    inc c
    inc c
    add e
    ld bc, $0130
    rrca
    ld a, $a3
    inc bc
    jr c, @+$0b

    xor e
    ld d, a
    ld e, l
    xor [hl]
    cp d
    ld [hl], l
    push de
    ld [$55aa], a
    add l
    inc b
    ld h, h
    inc bc
    rrca
    rst $38
    ldh a, [$f0]
    ld h, c
    inc bc
    ccf
    db $ed
    rst $38
    ld a, [c]
    call nz, $b604
    nop
    jr c, jr_048_53f0

    inc b
    ld h, d
    ldh [rNR44], a
    xor b
    ld d, a
    ld b, c
    pop bc
    add a
    add [hl]
    rra
    jr @+$41

    jr nz, jr_048_54fb

    ld b, b
    ld a, [$7485]
    adc e
    xor c
    ld d, a
    ld d, a
    xor a
    xor e
    jp c, $bacb

    ld d, [hl]
    ld [hl], l
    dec [hl]
    ld [hl], $08
    rrca
    add hl, bc
    rrca
    ld b, $06
    rst $38
    db $fd
    add e
    inc bc
    jr c, jr_048_54a4

    rst $28
    inc de
    ld e, a
    xor h

jr_048_549d:
    cp a
    ld [hl], b
    ld a, l
    jp nz, $85fa

    push de

jr_048_54a4:
    ld a, [hl+]
    add e
    ld bc, $03ae
    adc a
    ld a, a
    jr nc, jr_048_549d

    add l
    inc b
    jp z, $3f02

    xor $ff
    and [hl]
    inc bc
    scf
    ld bc, $15ea
    add e
    rst $08
    ld a, [bc]
    nop
    rst $38
    ld [$ffff], sp
    rst $30
    ld c, $09
    inc b
    rlca
    ld [bc], a
    add e
    dec b
    ld hl, $008c
    ld a, a
    add hl, bc
    dec de
    inc b
    cpl
    inc b
    dec de
    inc c
    ld d, a
    jr c, @+$81

    nop
    adc c
    nop
    sub [hl]
    rst $38
    ld l, [hl]
    ld h, $01
    ldh [rNR44], a
    inc bc
    inc bc
    rlca
    inc b
    ld bc, $0b08
    add hl, bc
    rrca
    ld a, [bc]
    rra
    inc a
    rlca
    ld b, e
    adc a
    add b
    rst $18
    adc h
    rst $38
    adc c
    ld a, a
    ld b, c
    cp a
    and e
    cp l

jr_048_54fb:
    cp h
    ld b, b
    ld b, b
    nop
    jr nz, jr_048_5509

    jr jr_048_5505

    ld b, $01

jr_048_5505:
    ld bc, $0343
    ld [bc], a

jr_048_5509:
    inc b
    rlca
    rlca
    rrca
    ld [$4307], sp
    db $10
    inc de
    inc d
    inc de
    rla
    db $10
    dec c
    ld [$101b], sp
    dec d
    db $10
    dec de
    db $10
    rrca
    ld [$080b], sp
    ld [bc], a
    ld [$0606], sp
    ld bc, $7301
    rrca
    ld bc, $0201
    ld [bc], a
    nop
    dec b
    inc b
    dec b
    nop
    dec bc
    ld [$800b], sp
    sub a
    ld d, b
    ld d, a
    ld b, e
    jr nz, jr_048_55bc

    dec de
    nop
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    adc e
    ld sp, hl
    or [hl]
    jp nz, $15f1

    db $fd
    dec [hl]
    sbc l
    add [hl]
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, a
    ld a, d
    ld e, d
    ld hl, $c021
    ret nz

    ld h, a
    add hl, bc
    ldh [$e0], a
    db $fc
    inc e
    rst $38
    inc bc
    db $fc
    inc b
    db $fc
    add h
    ld b, h
    ld hl, sp-$78
    ld [bc], a
    ld [$08f8], sp
    ld b, l
    db $fc
    inc b
    add hl, bc
    ld hl, sp+$48
    add sp, $68
    jp hl


    ld l, c
    sub d
    sub d
    add e
    add d
    add l
    rst $28
    dec bc
    ld bc, $0f01
    ld c, $17
    ld sp, $4e4f
    jr nc, jr_048_55b8

    rrca
    rrca
    xor c
    nop
    add hl, bc

jr_048_558d:
    ldh [rNR51], a
    ld b, h
    call z, $d252
    inc hl
    rst $28
    inc de
    cp $07
    db $fc
    rlca
    rst $38
    rrca
    ld hl, sp-$01
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    ld a, a
    ld h, b
    rst $38
    add b
    rst $38
    jr nz, jr_048_558d

    ld d, b
    rst $18
    call c, $a2a3
    add c
    add c
    adc c
    nop
    add hl, bc

jr_048_55b8:
    ldh [$35], a
    inc bc
    ld [bc], a

jr_048_55bc:
    rrca
    inc c
    ccf
    jr c, @+$01

    and $1f
    add hl, de
    dec b
    inc b
    ld b, $04
    dec b
    inc b
    ld c, $0c
    dec e
    ld d, $3c
    dec h
    ld e, b
    ld b, b
    ld e, b
    ld c, b
    sbc b
    adc h
    ld hl, sp-$34
    inc a
    ld a, [hl+]
    ld a, [hl]
    dec d
    rst $38
    inc d
    rst $38
    ld [de], a
    rst $38
    ld [c], a
    ld a, a
    ld b, c
    rst $38
    and b
    rst $38
    jr @+$01

    rlca
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$08
    adc c
    nop
    ld h, a
    dec bc
    ld [bc], a
    ld [bc], a
    inc b
    dec c
    ret nc

    rst $10
    ldh [$2f], a
    ret nz

    ld e, a
    ld sp, hl
    ret


    and h
    db $e3
    inc bc
    nop
    ld a, [$f500]
    add h
    add e
    ld bc, $00fb
    ld b, [hl]
    rst $38
    ld bc, $0001
    rst $38
    xor c
    adc c
    ld [de], a
    inc bc
    db $fc
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    db $fd
    inc b
    db $fd
    dec b
    cp a
    ld b, $5f
    ld bc, $01bf
    and h
    xor a
    dec b
    add b
    inc c
    ld h, e
    nop
    inc e
    nop
    ld b, l
    ld [$1000], sp
    add h
    add b
    ld h, h

jr_048_5638:
    ldh [rNR33], a
    ld sp, hl
    ld b, $ff
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, a
    ldh [$f1], a
    xor d
    nop
    ld h, [hl]
    ld e, $81
    ld b, d
    ld b, [hl]
    ld c, b
    reti


    jr nz, jr_048_5638

    nop
    rst $38
    inc a
    rst $38
    jp $0fc3


    nop
    rst $38
    ldh [rIE], a
    inc e
    rst $38
    inc bc
    ld a, a
    nop
    rst $38
    jr c, @+$01

    ld b, a
    rst $38
    adc b
    ccf
    add hl, bc
    ld b, e
    ld e, $12
    ldh [rNR51], a
    cp $e2
    rst $38
    ld bc, $70ff
    rst $38
    rrca
    rst $38
    ld [bc], a
    db $fc
    inc b
    db $fc
    call c, $636b
    rst $10
    ret nz

    db $eb
    nop
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    nop
    cp a
    sbc h
    ccf
    jr z, jr_048_570c

    ld d, c
    rst $30
    or d
    sub $34
    ld a, [bc]
    jp z, $0423

    nop
    ld c, $45
    ld [$050f], sp
    jr jr_048_56bd

    ld l, b
    ld a, a
    add h
    rst $38
    add l
    ld bc, $a387
    nop
    sub l
    nop
    rst $38
    ld h, l
    rlca
    ld [$2418], sp
    ld h, h
    add h
    sbc h
    inc b
    ld a, h
    rst $00
    nop
    cp l
    jp $b700


    rlca
    ret z

    ld a, c

jr_048_56bd:
    adc $7e
    db $e4
    dec a
    ldh [$bf], a
    ld b, e
    ldh a, [$1f]
    dec de
    pop af
    rst $18
    ld sp, hl
    ccf
    rst $38
    rla
    ld a, a
    db $10
    ccf
    daa
    ld sp, hl
    ret z

    pop af
    db $10
    db $fc
    sbc h
    rst $38
    ld h, e
    ld a, a
    jr jr_048_571b

    inc b
    ccf
    ld [bc], a
    sbc a
    add d
    rst $18
    ld c, h
    jp $0eed


    rst $38
    inc bc
    cp $0e
    cp $32
    rst $38
    pop bc
    rst $38
    ld bc, $00bf
    ld e, a
    nop
    cpl
    jp $0c81


    inc e
    db $e3
    ld h, d

jr_048_56fb:
    add e
    add d
    rst $00
    add c
    rst $28
    add c
    rst $38
    ld b, c
    rst $38
    ld b, [hl]
    jp $de01


    add hl, bc
    rst $38
    pop bc
    rst $38

jr_048_570c:
    db $fc
    ccf
    jr nz, jr_048_572c

    jr jr_048_5719

    rlca
    ld [hl], l
    dec b
    ret nz

    ret nz

    jr nz, jr_048_5779

jr_048_5719:
    jr nz, jr_048_56fb

jr_048_571b:
    ld b, e
    ld b, b
    ret nz

    and a
    nop
    ld e, d

jr_048_5721:
    and e
    nop
    ld a, $03
    ld hl, sp-$78
    db $fc
    ld b, h
    ld b, e
    db $fc
    inc h

jr_048_572c:
    inc bc
    ld hl, sp-$38
    ld hl, sp+$08
    ld b, e
    ldh a, [rNR10]
    inc bc
    ldh [rNR41], a
    ret nz

    ld b, b
    add l
    sbc a
    ld bc, $1010
    inc hl
    jr z, jr_048_5721

    dec h
    ret z

    ret c

    adc b
    ret c

    jp z, $cd7a

    ld a, a
    jp hl


    ccf
    ld [$e23e], a
    ld a, $e4
    inc a
    db $f4
    inc a
    cp $2e
    rst $38
    ld hl, $61df
    cp $4e
    ldh a, [$b0]
    ldh a, [$30]
    ret z

    ld [$c4e4], sp
    inc [hl]
    inc h
    ld hl, sp-$08
    adc h
    nop
    jr nc, jr_048_576f

    inc bc
    ld [bc], a
    ld [bc], a

jr_048_576f:
    inc b
    ld b, e
    inc b
    dec b
    ld bc, $0305
    add e
    adc d
    nop

jr_048_5779:
    ld [bc], a
    rlc b
    ld [de], a
    ldh [rNR41], a
    ldh [$e0], a
    db $fc
    call c, $13ff
    rst $38
    ld [hl-], a
    rst $38
    pop bc
    di
    add c
    sub a
    ld bc, $009f
    rra
    inc b
    cp a
    inc b
    ld a, [hl]
    ld [hl+], a
    cp e
    inc de
    db $fd
    adc l
    ld [hl], a
    ld h, a
    dec de
    dec de
    ld [bc], a
    ld [bc], a
    inc bc
    ret z

    nop
    ld [hl], d
    ldh [$27], a
    ld bc, $3f01
    scf
    ld l, e
    ld c, b
    or a
    or b
    adc c
    add b
    db $db
    ret nz

    cp a
    and b
    ld c, a
    ld b, b
    rst $20
    ld h, b
    rst $18
    ret nc

    sbc a
    sbc [hl]
    sbc a
    sub a
    cp h
    and l
    ret c

    ret nz

    ld e, b
    ld c, b
    rst $38
    adc a
    rst $38
    ld [hl], b
    rst $38
    add [hl]
    ld sp, hl
    add hl, de
    rst $20
    jr nz, jr_048_5811

    rst $08
    ld b, b
    ld b, e
    rst $28
    jr nz, jr_048_57dd

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    add hl, de
    rst $38
    ld h, [hl]
    xor a

jr_048_57dd:
    add b
    add e
    ld bc, $169c
    cp a
    add h
    rst $18
    ld b, [hl]
    ei
    add hl, sp
    rst $30
    db $10
    rst $38
    sub b
    rst $38
    ld c, c
    rst $38
    ld b, [hl]
    rst $38
    db $ec
    di
    ld [de], a
    rst $20
    ld hl, $21ef
    rst $38
    add e
    adc a
    nop
    adc b
    add h
    sub c
    ld a, [de]
    ld e, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    db $fd
    add e
    di
    ld c, $c2
    ld [hl-], a
    ld b, $c4
    inc b
    inc b
    pop af
    sbc a

jr_048_5811:
    ld sp, hl
    adc a
    ld a, [$fa4e]
    adc $fc
    xor h
    db $fc
    inc l
    ld b, e
    ld hl, sp+$28
    ld bc, $28fc
    call nz, $d002
    nop
    call nz, $fc43
    add h
    inc bc
    cp $04
    cp $02
    adc b
    nop
    jr nz, jr_048_583c

    adc b
    ld a, [hl]
    ld b, c
    ccf
    inc hl
    dec e
    inc e
    ld [bc], a
    ld [bc], a
    dec b

jr_048_583c:
    dec b
    ld [hl+], a
    ld a, [bc]
    rla
    dec bc
    dec b
    ld bc, $0404
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    inc b
    rlca
    ld [$080b], sp
    inc bc
    ld [de], a
    ld d, $14
    dec c
    ld [$080b], sp
    dec c
    jp $008b


    inc b
    xor c
    nop
    sbc [hl]
    ld h, c
    add [hl]
    nop
    sub b
    ld [de], a
    nop
    ld a, a
    add a
    cp d
    cp d
    ld b, c
    ld b, c
    add hl, bc
    add hl, bc
    ld d, $17
    jr nc, jr_048_58b0

    ret nz

    sbc $53
    db $db
    cp h
    adc h
    ld h, c
    inc c
    add b
    nop
    rst $38
    and $fc
    sbc h
    db $fc
    call nz, $0afe
    rra
    add hl, bc
    ccf
    ld b, e
    dec b
    rst $38
    ld a, [bc]
    inc hl
    rst $38
    ld de, $89ff
    cp $4e
    pop af
    ld sp, $c2c2
    add a
    inc bc
    ld e, b
    add h

jr_048_5899:
    ld bc, $0380
    jr nz, jr_048_5899

    ret c

    db $fd
    inc hl
    db $fc
    ld [de], a
    add sp, -$58
    ldh [rNR10], a
    ldh a, [$39]
    and c
    pop bc
    pop bc
    inc bc
    nop
    rlca
    ld [bc], a

jr_048_58b0:
    rra
    inc c
    ld a, a
    ld [hl], $8f
    add hl, bc
    ld c, b
    rst $38
    nop

jr_048_58b9:
    inc bc
    ld bc, $02fe
    cp $44
    ld [bc], a
    rst $38
    add e
    ld bc, $0196
    cp a
    nop
    add a
    ld bc, $1f98
    rst $38
    ld [bc], a
    db $fc
    inc e
    db $f4
    ld h, h
    res 0, e
    ld h, a
    nop
    ld a, e
    nop
    rst $38
    jr nc, jr_048_58b9

    ld b, b
    cp a
    add h
    ei
    adc b
    rst $30
    sub b
    rst $38
    ld d, c
    rst $38
    ld [hl-], a
    rst $08
    add hl, hl
    ld b, $c6
    inc b
    inc b
    add a
    ld [bc], a
    ld [hl], b
    inc bc
    ld a, a
    ld b, c
    cp a
    add b
    add e
    ld [bc], a
    ld a, h
    ld bc, $0202
    adc b
    ld bc, $080e
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    rlca
    dec b
    rlca
    add hl, bc
    adc e
    inc b
    inc d
    adc c
    inc b
    jr nc, jr_048_5924

    cp [hl]
    cp [hl]
    ld [hl], a
    ld [hl], l
    dec sp
    dec hl
    inc a
    daa
    ld a, b
    ld c, a
    ret nc

jr_048_5918:
    sbc a
    ldh [$bf], a
    ld h, h
    ld a, a
    ld c, d
    ld a, e
    set 7, e
    cp c
    cp c
    xor [hl]

jr_048_5924:
    xor [hl]
    add e
    ld [bc], a
    or d
    ld bc, $3f3f
    adc b
    inc b
    ld e, b
    add e
    inc b
    ld [hl], c
    ldh [rNR41], a
    jr jr_048_5918

    ld [c], a
    ld [hl], c
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld a, b
    ld a, b
    xor b
    ld hl, sp+$58
    ld hl, sp+$28
    ld hl, sp+$18
    ld hl, sp+$30
    ldh a, [$50]
    ret nc

    pop hl
    pop bc
    ld b, e
    ld b, d
    add a
    add h
    rrca
    rrca
    ld [hl], $34
    push bc
    call nz, $0189
    ld h, $45
    ld a, a
    ld b, b
    inc bc
    rst $38
    add b
    rst $38
    add c
    add h
    inc b
    sbc d
    nop
    add d
    adc e
    nop
    add b
    inc bc
    or a
    jp $17f7


    adc d
    nop
    ldh a, [rDIV]
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ld l, h
    inc bc
    ld [bc], a
    ld bc, $0105
    ld [hl+], a
    add hl, bc
    inc c
    ld [$041f], sp
    daa
    ld b, $47
    ld c, c
    ld c, a
    ld b, c
    ld a, a
    ld [hl], b
    ld c, a
    jr c, @+$48

    add a
    sbc b
    ld de, $8788
    inc l
    add e
    ld e, h
    ld b, e
    ld l, h
    ld b, e
    ld a, $41
    ld a, $21
    inc e
    inc hl
    ld [$071f], sp
    rlca
    ld h, d
    jr jr_048_59ab

    rrca
    add hl, bc
    add hl, bc
    rrca
    inc bc
    add hl, bc

jr_048_59ab:
    dec c
    ld [$100b], sp
    rrca
    inc de
    ld e, $14
    dec d
    jr jr_048_59cc

    jr jr_048_59c1

    inc c
    add hl, bc
    ld c, $08
    rrca
    ld b, e
    dec b
    rlca
    inc bc

jr_048_59c1:
    inc bc
    inc bc
    ld bc, $6101
    call nz, Call_048_4380
    ld [bc], a
    inc bc
    inc b

jr_048_59cc:
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    adc b
    add sp, $14
    ld b, $09
    add hl, bc
    inc c
    ld [$0403], sp
    inc bc
    ld [bc], a
    pop bc
    pop bc
    ld h, e
    and e
    ld [hl-], a
    db $db
    ld b, e
    rst $00
    ld c, c
    ret


    ld sp, $46f9
    ld [$06f8], sp
    ld sp, hl
    add hl, de
    jp hl


    ld a, [de]
    ld [$ea12], a
    ld b, e
    ld de, $17f1
    jr @-$06

    rla
    rst $38
    scf
    ld hl, sp+$21
    cp $40
    rst $38
    add b
    rst $38
    ld a, h
    ld h, e
    rra
    add hl, de
    rrca
    ld c, $0f
    ld [$0607], sp
    add c
    add c
    inc hl
    add b
    ldh [rNR44], a
    ret nz

    ld b, b
    ldh a, [$30]
    ret c

    add hl, sp
    ld a, [hl]
    ld h, [hl]
    ei
    sbc h
    or e
    ld [c], a
    ld b, e
    pop hl
    ld b, a
    pop bc
    ld c, a
    add b
    cp $81
    db $fc
    add e
    or b
    rst $08
    add c
    ld a, a
    cp $1f
    ld h, b
    rst $38
    inc a
    rrca
    ccf
    inc bc
    db $fc
    cp $63
    ldh [$3d], a
    jr jr_048_5a55

    inc [hl]
    inc l
    db $f4
    db $ec
    ld a, [$ed06]
    di
    ld a, e
    dec a
    cp [hl]
    dec c
    rst $38
    inc bc
    ld sp, hl
    add [hl]
    ldh a, [$cf]
    ld [hl], b
    rst $08
    cp b
    rst $20
    ld a, b
    rst $20

jr_048_5a55:
    sbc h
    db $d3
    ld c, $91
    sbc a
    add c
    ccf
    nop
    ld e, a
    nop
    cp a
    nop
    ld [hl], a
    inc c
    cp a

jr_048_5a64:
    jr @+$01

    jp $fffc


    ret nz

    ld a, a
    ldh a, [$7f]
    adc $7f
    rst $00
    rst $38
    add h
    rst $38
    adc a
    ei
    ld de, $10f0
    ldh a, [rSCX]
    ldh [rNR41], a
    ld [bc], a

jr_048_5a7d:
    ret nz

    ldh [rP1], a
    ld [hl+], a
    ld b, b
    ldh [rNR42], a
    ld h, c
    ld b, b
    ld e, l
    ld h, e
    ret c

    db $fc
    ld [hl], b
    jr nc, jr_048_5a7d

    db $10
    ret nc

    jr nc, jr_048_5aa5

    di
    db $10
    ld hl, sp-$78
    ld hl, sp-$68
    db $fc
    ld a, h
    db $fc
    ld e, [hl]
    cp $83
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    ld a, [hl-]
    rst $38
    rst $08

jr_048_5aa5:
    rst $38
    ld l, d
    ld bc, $0408
    ld [hl+], a
    inc d
    add hl, bc
    xor h
    and h
    ld l, a
    db $d3
    adc [hl]
    ld [c], a
    sbc b
    inc b
    ld a, [hl]
    add b
    ld b, e
    ccf
    ret nz

    inc d
    scf
    adc $a9
    ld a, [de]
    db $10
    ld sp, $3372
    reti


    ld e, [hl]

Call_048_5ac5:
    ld a, a
    ldh [$cf], a
    ld bc, $0ff7
    cp d
    ld a, e
    rst $18
    rst $18
    jr nz, jr_048_5b17

    rst $38
    nop
    dec bc
    pop bc
    rst $38
    ld a, [hl]
    rst $38
    dec d
    rst $38
    adc $fe
    ld [hl], l
    jr nc, jr_048_5b01

    jr nz, jr_048_5a64

    db $eb
    ld [bc], a
    ret nz

    ld b, b
    nop
    add e
    nop
    or a
    inc b
    ret nz

    rra
    jr nc, jr_048_5af5

    rrca
    ld h, e
    inc b
    ret nz

    ldh [rNR23], a
    inc e

jr_048_5af5:
    ld bc, $0084
    ld l, l
    dec bc
    dec b
    nop
    xor d
    nop
    push de
    ret nz

    ld a, a

jr_048_5b01:
    ldh a, [$bf]
    rst $38
    ret nz

    ldh a, [$65]
    add hl, de
    ld bc, $0703
    inc c
    inc de
    jr nc, jr_048_5b14

    ld b, e
    ld d, a
    ld c, a
    xor $9f

jr_048_5b14:
    ld a, l
    rra
    ld a, d

jr_048_5b17:
    ccf
    or l
    ld a, a
    ld_long $ffff, a
    ld a, a
    ld sp, hl
    add hl, sp
    pop af
    ld [de], a
    ld b, l
    di
    inc d
    ldh [rNR43], a
    xor $18
    cp $88
    ld [hl], a
    ld c, h
    ld h, a
    ld a, h
    cpl
    ld a, $3f
    dec a
    rst $08
    ld sp, hl
    ld a, [de]
    pop af
    ld [de], a
    pop af
    ld sp, $fde3
    db $e3
    cp c
    rst $20
    pop af
    rst $38
    or b
    rra
    ld e, b
    rrca
    xor b
    rrca
    ld d, [hl]
    rlca
    dec bc
    ld b, e
    inc bc
    ld b, $e0
    ld hl, $0e01
    inc bc
    inc a
    rlca
    ei
    rra
    db $e4
    db $e4
    inc b
    ld [$180c], sp
    ld c, $28
    cpl
    jr z, @-$37

    call nz, Call_048_4744
    xor $43
    ld a, a
    ld hl, $30ff
    cp $11
    db $f4
    dec hl
    ldh a, [$ef]
    add hl, de
    add h
    nop
    scf
    dec de
    inc a
    inc a
    cp $c2
    db $fc
    inc b
    ld a, b
    ld hl, sp-$18
    ld hl, sp-$7c
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $82
    cp $e6
    cp $99
    sbc c
    ld bc, $7d4d
    add e
    rst $38
    ld bc, $ff43
    nop
    ldh [$2e], a
    ccf
    nop
    rra
    nop
    cpl
    nop
    rra
    nop
    xor a
    nop
    rst $10
    nop
    db $eb
    nop
    rst $30
    ld bc, $81ff
    cp $81
    ld a, h
    ld b, e
    inc a
    inc hl
    db $fc
    inc de
    call z, $86bb
    rst $38
    ld h, c
    rst $38
    jr c, @+$01

    ld b, $ff
    adc a
    rst $38
    ld a, [hl]
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [$2dff]
    ld b, h
    rra
    inc hl
    ld b, $22
    rra
    ld b, d
    ccf
    add d
    ld a, a
    ld [bc], a
    ld b, h
    rst $38
    inc b
    rrca
    adc b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    inc a
    rst $38
    rst $00
    jp $0007


    adc a
    add c
    ld a, [hl]
    ld a, [hl]
    ld a, e
    ld b, $c0
    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rSCX]
    ld [$43f8], sp
    inc b
    db $fc
    ld [bc], a
    ld h, h
    sub d
    sbc [hl]
    ld b, e
    ld a, [bc]
    ld c, $43
    add l
    add a
    dec bc
    ld d, a
    jp $c36b


jr_048_5c02:
    ld d, a
    jp $82aa


    db $e4
    db $e4
    jr jr_048_5c02

    jp $07a2


    jr nz, @-$1e

    and b
    ldh [rLCDC], a
    ret nz

    ldh [$e0], a
    ld b, e
    sub b
    ldh a, [rDIV]
    ld [$88f8], sp
    ld hl, sp-$7c
    ld b, h
    db $fc
    ld b, h
    ld [bc], a
    ld a, [hl+]
    cp $32
    ld b, h
    cp $22
    rlca
    db $f4
    ld e, h
    ld [hl], h
    call c, $f828
    ldh a, [$f0]
    and h
    nop
    ld l, h
    inc h
    ld bc, $01a3
    sub d
    nop
    dec b
    ld [hl+], a
    inc b
    nop
    add hl, bc
    daa
    ld [$1808], sp
    dec c
    inc d
    dec e
    inc d
    rla
    ld a, [de]
    rla
    add hl, de
    and e
    ld bc, $039a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    push bc
    and e
    inc hl
    ld bc, $0225
    ldh [$2b], a
    inc bc
    ld [bc], a
    ld bc, $2001
    ld h, b
    db $10
    sbc b
    dec e
    rrca
    ld [hl], e
    ld e, $e5
    ld a, e
    jp nz, $8d7d

    ld a, [c]
    ld a, [hl]
    ld bc, $00bf
    ld a, a
    rlca
    cp b
    ld [$1077], sp
    rst $38
    db $10
    rst $18
    add hl, hl
    and [hl]
    ld e, a
    ld b, b
    cp a
    add c
    ld a, a
    ld b, $ff
    cp $fe
    cp e
    db $fc
    adc e
    nop
    call nz, Call_048_5f01
    ld bc, $0183
    ld [bc], a
    ld b, $af
    jr jr_048_5d0b

    db $10
    db $fc
    inc bc
    add a
    ld [hl+], a
    rst $38
    dec c
    cp a
    ccf
    reti


    ld a, [de]
    rst $30
    rra
    ei
    cp h
    ld [hl], h
    rst $38
    sbc e
    ld a, a
    db $10
    pop af
    and l
    nop
    ld d, h
    add e
    ld [bc], a
    add sp, $03
    ret nz

    ret nz

    pop hl
    ret nz

    add e
    ld bc, $1a2c
    ld [hl], d
    ld [hl], e
    reti


    ld e, [hl]
    sbc a
    ld h, b
    sub c
    ld c, $cf
    ccf
    ld [hl], a
    rst $30
    ei
    ei
    jp hl


    ld sp, hl
    ld c, [hl]
    sbc a
    inc a
    ld [hl], e
    ldh a, [$cf]
    add c
    ld a, a
    ld c, $ff
    push af
    add h
    ld bc, $858b
    ld bc, $e0d0
    ld c, e
    ld [hl], l
    rst $38
    cp b
    ld a, a
    ret nc

    ccf
    ld a, [$fd0d]
    ld b, $fa
    dec b
    rst $30
    dec bc
    ld [$5116], a
    xor a
    and c
    ld e, a
    jp $c7ff


    rst $38
    sbc a
    ld a, a
    ld sp, $58f1
    ldh a, [$bf]
    ei
    ld a, h
    db $f4
    ld hl, sp-$10
    ldh a, [$e0]
    ld sp, hl
    ldh [$9e], a
    sbc b
    rst $08
    add h
    ld a, a
    ld b, h
    dec sp
    inc a

jr_048_5d0b:
    dec d

jr_048_5d0c:
    ld a, [de]
    ld a, [bc]
    dec c
    inc c
    rlca
    ccf

jr_048_5d12:
    rlca
    ei
    rra
    add d
    cp $0a
    or $86
    ld a, [$ea14]
    inc l
    call nc, $a45c
    cp b
    ld c, b
    ld [hl], b
    sub b
    ld h, b
    ldh [$a5], a
    nop
    ld e, h
    jr jr_048_5d0c

    ldh [$f8], a
    sbc b
    db $fc
    add h
    or $ea
    xor d
    db $dd
    ld e, l
    add a
    ld l, $23
    ld e, l
    ld d, e
    cp [hl]
    adc c
    cp a
    add h
    ld a, a
    ld b, h
    cp e
    inc a
    ld a, a
    add h
    ld bc, $0e80
    ld a, a
    add b
    cp a
    ld b, b
    ld d, a
    xor b
    dec bc
    db $f4
    add c
    cp $60
    ld a, a
    jr c, jr_048_5d75

    daa
    adc d
    ld [bc], a
    add l
    and l
    nop
    ld e, [hl]
    and l
    inc bc
    db $10
    inc bc
    ld b, b
    ret nz

    ret nz

jr_048_5d64:
    ld b, b
    ld b, e
    and b
    ld h, b
    ld bc, $20e0
    ld b, l
    ret nc

    jr nc, jr_048_5d12

    nop
    ld d, d
    ld [bc], a
    jr nz, jr_048_5d64

    ld c, b

jr_048_5d75:
    adc h
    ld [bc], a
    di
    and e
    xor a
    adc e
    inc bc
    inc d
    adc e
    inc bc
    ld b, b
    ld h, e
    jr jr_048_5dbc

    ld a, a
    inc b
    add a
    add a
    add e
    ld c, [hl]
    ld b, d
    cp [hl]
    ld [hl-], a
    ld e, a
    ld c, $bd
    dec b
    ld a, c
    ld [$08fb], sp
    ld a, a
    db $10
    rst $38
    ld de, $3fce
    and b
    add [hl]
    inc bc
    ld l, c
    ldh [$36], a
    cp a
    ld a, a
    di
    rst $38
    ld [hl], $1b
    jr nc, jr_048_5dc5

    ld l, h
    ld a, $cf
    ld a, a
    adc c
    ld sp, hl
    sub b
    ldh a, [$88]
    ld hl, sp+$0d
    db $fd
    ld a, [de]
    rst $30
    ld h, h
    rst $08
    sbc b
    ccf
    db $e3
    rst $38

jr_048_5dbc:
    adc [hl]
    cp $75
    ld [hl], b
    inc a
    db $fc
    ld e, b
    ld hl, sp-$47

jr_048_5dc5:
    ld hl, sp+$7f
    push af
    cp $fa
    xor $e6
    call Call_048_5ac5
    ld c, b
    db $fd
    ld c, b
    ld a, [hl]
    ld b, h
    ccf
    inc h
    dec e
    adc b
    inc b
    rlca
    rrca
    jp c, $a57d

    sbc a
    ld a, [$fd87]
    db $e3
    ld e, $11
    ccf
    ld [$88ff], sp
    rst $30
    ld a, b
    adc c
    ld bc, $0c60
    ccf
    ret nz

    adc e
    ld b, $36
    rrca
    ld l, l
    ld e, $db
    inc a
    ld [hl], e
    ldh [$ef], a
    adc b
    ld bc, $ff77
    db $ec
    jr nz, jr_048_5e46

    ld bc, $1400
    ld [bc], a
    inc b
    inc b
    inc c
    dec e
    inc de
    inc de
    ld [$0c08], sp
    inc c
    ld a, [bc]
    ld a, [bc]
    ld bc, $0109
    dec b
    ld [bc], a
    ld b, $02
    ld [bc], a
    dec h
    ld bc, $9ed9
    dec bc
    ld bc, $0301
    rlca
    ld [bc], a
    ld a, [bc]
    inc d
    inc d
    jr jr_048_5e43

    rrca
    rrca
    sbc b
    and [hl]
    ldh [rNR43], a
    rlca
    nop
    ld [$1000], sp
    db $10
    inc d
    ld [$d008], sp
    ret nc

    or a
    cp a
    sbc b
    cp c
    xor e
    rst $38
    rst $18
    rst $38

Jump_048_5e43:
jr_048_5e43:
    di
    rst $30
    db $ed

jr_048_5e46:
    ld l, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    ld a, [hl]
    rst $38
    db $fd
    ld a, a
    ld a, a
    jr c, jr_048_5e8b

    ld h, c
    rlca
    db $10
    jr nc, @+$7a

    ld a, b
    and $a6
    ld a, l
    dec a
    ld b, e
    ld h, h
    inc l
    ld bc, $2aee
    ld b, e
    xor $aa
    inc bc
    ld c, a
    ld c, d
    rrca
    add hl, bc
    ld b, e
    rrca
    ld [$1f45], sp
    db $10
    inc de
    cpl
    jr nz, jr_048_5ec4

    ld b, b
    rst $08
    ret nz

    rra
    nop
    rst $38
    ret nz

    ccf
    ld h, b
    sbc a
    sub c
    ld c, $1e
    jr nc, @+$32

    ret nz

    ret nz

    ld [hl], l
    db $10
    inc c
    inc a
    add d

jr_048_5e8b:
    jp nz, Jump_048_4101

    ld bc, $8285
    add d
    add c
    add c
    ld c, a
    rst $08
    pop af
    pop af
    jp $ff22


    inc hl
    cp $0b
    call c, $1ce4
    and h
    sbc e
    xor e
    inc a
    ld a, h
    add c
    pop bc
    ld c, $0e
    add e
    cp l
    inc de
    ld b, b
    ld d, l
    jr nz, jr_048_5edb

    sbc c
    sbc l
    xor $6e
    ret nc

    ld d, b
    ldh a, [$60]
    rst $38
    ld c, a
    and $86
    ret z

    adc b
    ret nc

    db $10
    ld b, a
    ldh [rNR41], a

jr_048_5ec4:
    nop
    ret nz

    and [hl]
    nop
    add hl, sp
    ld b, l
    ret nz

    ld b, b
    or e
    nop
    ld h, [hl]
    jp $3b00


    ldh [rSCX], a
    ld [bc], a
    inc bc
    inc b
    ld b, $04
    dec b
    inc c

jr_048_5edb:
    ld c, $10
    dec d
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    scf
    ld hl, $102b
    rra
    ld a, h
    ld a, a
    sbc b
    cp a
    db $e3
    rst $38
    jr nz, jr_048_5f2d

    db $10
    rra
    ld [$042f], sp
    rla
    ld [bc], a
    dec bc
    add e
    rst $10
    ld b, e
    ld c, d
    add d
    sub a
    inc bc
    ld a, [bc]
    rlca
    inc d
    rlca

Call_048_5f01:
    xor h
    rrca
    ld e, b
    ccf
    or b
    rst $38
    jp nz, $06fb

    dec a
    ld b, $1f
    inc b
    rra
    ld b, $ef
    db $e3
    cpl
    ld hl, $1116
    rla
    db $10
    jp $bc00


    ld [bc], a
    ld c, $09
    rrca
    ld b, h
    db $10
    rra
    ld b, l
    rrca
    ld [$0b17], sp
    ld [$0809], sp
    inc de
    db $10
    rra

jr_048_5f2d:
    inc de
    ld a, $2e
    jr c, jr_048_5f5c

    ld [de], a
    ld [de], a
    ld a, [bc]
    dec bc
    dec b
    dec b
    ccf
    ccf
    ret nz

    ld [$5500], a
    and [hl]
    add c
    inc b
    ld d, a
    nop
    cp a
    nop
    ld a, a
    ld b, e
    ld bc, $e0ff
    inc [hl]
    adc c
    rst $38
    ldh a, [rIE]
    ld b, c
    rst $38
    add d
    rst $38

jr_048_5f53:
    inc e
    rst $38
    nop
    rst $38
    ld bc, $f2ff
    cp $0e

jr_048_5f5c:
    rst $38
    ld [bc], a
    rst $38
    pop bc
    rst $38
    ldh a, [$3f]
    cp h
    rst $18
    rst $38
    ld l, e
    rst $18
    add hl, sp
    xor $19
    ei
    inc c
    rst $38
    inc b
    ei
    inc h
    rst $28
    jr nc, jr_048_5f53

    ld [hl-], a
    rst $38
    rla
    ld sp, hl
    add hl, sp
    ld [hl], b
    ldh a, [$f0]
    ret nc

    or b
    ret nc

    ld [hl], b
    and h
    nop
    cp c
    rlca
    ldh a, [$a8]
    ld hl, sp-$18
    ld e, b
    add sp, -$48
    ld c, b
    ld c, c
    ldh a, [rNR10]
    inc bc
    ld hl, sp+$08
    db $fc
    call nz, $efa6
    ld [bc], a
    ld d, b
    and b
    and b
    jp $d900


    dec b
    jr nz, @+$62

    db $10
    or b
    db $10
    ld [hl], b
    ld b, e
    ld [$0df8], sp
    ld a, b
    ld hl, sp-$7c
    xor h
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    xor [hl]
    ld [bc], a
    cp $82
    cp $64
    db $fc
    and e
    ld bc, $e070
    dec l
    ldh a, [$f8]
    ld [$0458], sp
    cp h
    inc b
    ld a, h
    ld b, $fe
    dec h
    db $fd
    ret z

    ld hl, sp+$1c
    db $f4
    cp $e2
    cp $82
    rst $38
    add c
    rst $38
    add l
    db $76
    adc l
    rst $38
    inc c
    rst $30
    ld c, $ff
    inc bc
    rst $38
    ld bc, $40ff
    rst $18
    pop bc
    ld e, a
    ld b, b
    ld c, a
    ld b, b
    ccf
    jr nc, jr_048_5ff7

    inc c
    and a
    ld bc, $0e32
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    ld b, $05
    rlca
    rlca
    dec b
    dec b

jr_048_5ff7:
    inc b
    ld b, $02
    ld [bc], a
    ld bc, $00dd
    ld hl, $c012
    add b

Call_048_6002:
    and b
    add c
    sub c
    xor e
    xor e
    or l
    or l
    xor d
    xor d
    or d
    cp [hl]
    dec l
    xor a
    ld c, e

Jump_048_6010:
    ld e, e
    ld d, c
    ld d, c
    inc hl
    ld d, b
    rrca
    db $10
    ld [hl], b
    add b
    or b
    and b
    cp b
    ld l, b
    ld hl, sp-$58
    ld hl, sp-$38
    ld hl, sp+$68
    ld a, b
    jr @-$66

    add [hl]
    ld bc, $0634
    ret nz

    ret nz

    ld b, b
    ldh [$a0], a
    ld [hl], b
    ldh a, [$a5]
    ld bc, $00a2
    ld hl, sp+$44
    inc b
    ld a, h
    rrca
    inc a
    inc b
    inc e
    inc b
    cp $02
    sbc $e2
    ld a, $32
    ld c, [hl]
    ld c, d
    ld c, h
    ld e, h
    or b
    ld hl, sp-$75
    nop
    sub $02
    inc bc
    inc bc
    ld bc, $02c3
    adc a
    nop
    rlca
    inc hl
    rrca
    dec b
    rra
    rra
    cpl
    cpl
    daa
    daa
    inc hl
    jr nz, jr_048_6067

    inc b
    inc h
    ld b, $16
    dec bc

jr_048_6067:
    dec de
    dec h
    ld a, [bc]
    ld b, l
    rlca
    dec b
    ld bc, $0202
    adc d

Jump_048_6071:
    nop
    db $76
    inc c
    add hl, bc
    nop
    ld [de], a
    nop
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], d
    ld [hl], d

jr_048_607d:
    adc l
    sbc a
    jr c, jr_048_607d

    dec h
    rst $38
    rrca
    di
    db $f4
    db $d3
    call nc, $bbe7
    db $fc
    db $fc
    add b
    add b
    rlca
    rlca
    ld e, $18
    ld [hl], b
    ld h, b
    ld [hl+], a
    jr nz, jr_048_60a1

    dec [hl]
    sbc b
    sbc d
    rst $18
    ld d, a
    rst $28
    jr z, @+$81

jr_048_609f:
    jr c, @+$71

jr_048_60a1:
    jr z, jr_048_60e6

    rst $28
    xor b
    ld bc, $484f
    add e
    nop
    cp h
    ld h, c
    inc bc
    jr nc, jr_048_609f

    ld [$2308], sp
    inc b
    dec bc
    inc h
    inc h
    jr jr_048_60d0

    ld hl, sp-$08
    scf
    ld [hl], a
    ld a, [c]
    di
    pop hl
    pop hl
    call nz, $e102
    ld b, $81
    ret nz

    ret nz

    jr nz, jr_048_60ea

    ret nz

    ret nz

    call nz, $2200
    db $10
    dec b

jr_048_60d0:
    nop
    ld a, [hl+]
    ld bc, $0755
    xor [hl]
    ldh a, [$f0]
    add b
    nop
    cp $1e
    push hl
    dec b
    ret z

    ld [$0187], sp
    jr z, jr_048_60f9

    adc h
    rst $38

jr_048_60e6:
    nop
    rst $38
    inc bc
    rst $38

jr_048_60ea:
    add b
    rst $38
    ld b, b
    ld a, a
    daa
    ld a, a
    ccf
    or b
    inc a
    ld h, e
    ccf
    and b
    ccf
    ld h, b
    ld a, a

jr_048_60f9:
    ret nz

    call nz, $048c
    ld [bc], a
    ei
    ld b, $7d
    ld b, $89
    ld bc, $05e0
    ld bc, $e0ff
    rst $38
    cp h
    rst $18
    adc b
    nop
    ld a, [de]
    ldh [rNR43], a
    ld [bc], a
    nop
    inc b
    dec h
    dec [hl]
    ld c, h
    ld c, l
    ld [hl+], a
    ld [hl+], a
    ld de, $1811
    jr jr_048_6133

    inc d
    ld [$1008], sp
    ld de, $2727
    dec sp
    add hl, sp
    dec bc
    add hl, bc
    ld [bc], a
    dec bc
    ld b, $0a
    rrca
    dec bc
    ld c, $0a
    inc b

jr_048_6133:
    inc b
    adc a
    ld bc, $0948
    rlca
    rrca
    inc b
    inc d
    add hl, hl
    add hl, hl
    jr nc, jr_048_6172

    ld e, $1e
    or d
    nop
    sub $83
    pop de
    add hl, bc
    dec b
    ld h, $66
    ld e, b
    ld e, b
    ld c, a
    ld c, a
    xor b
    db $fc
    call c, $ff23
    inc bc
    ld a, a
    ld h, a
    rst $28
    db $db
    add e
    nop
    rst $38
    ld b, $ff
    db $fd
    db $fd
    cp $ff
    ld h, b
    ld h, b
    add e
    ld [bc], a
    sbc $11
    jp $a2e3


    db $e3
    sub c
    pop af
    ld l, c
    jp hl


    inc c
    inc h

jr_048_6172:
    sbc $ce
    ld e, a
    ld c, e
    ld a, a
    ld d, b
    ld a, a
    ld h, b
    ld b, e
    ccf
    jr nz, jr_048_617f

    ld e, a

jr_048_617f:
    ld b, b
    ld b, e
    sbc a
    add c
    dec bc
    ccf
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    inc hl
    inc e
    inc a
    ld h, b
    ld h, b
    sub c
    ld bc, $0540
    ret nz

    ret nz

    ld b, $3e
    ld hl, $2521
    ld b, b
    ld b, $a1
    push hl
    ld a, [c]
    di
    rst $08
    rst $38
    pop af
    ld h, $ff
    rla
    inc a
    ld e, [hl]
    ld a, b
    ld [$10f0], sp
    inc a
    db $fc
    ld [bc], a
    ld [bc], a
    ld a, h
    ld a, [hl]
    add b
    add b
    nop
    ld b, c
    nop
    xor d
    add b
    push de
    pop hl
    db $eb
    cp $be
    add l
    inc bc
    cp b
    adc c
    ld bc, $253c
    add b
    adc l
    ld bc, $0660
    ld h, b
    ld a, a
    add c
    rst $38
    add d
    rst $38
    ld [$ff44], sp
    nop
    and e
    ld [bc], a
    ld l, a
    rra
    add c
    rst $38
    ld e, [hl]
    ld [hl], c
    ccf
    jr nz, @+$21

    ld d, b
    rra
    jr nc, @+$11

    ld e, b
    rrca
    jr z, @+$11

    ld e, b
    rrca
    xor d
    dec de
    ld d, [hl]
    dec a
    and [hl]
    ld a, a
    ld b, h
    rst $28
    and $37
    inc de
    rla
    ld de, $1116
    ld b, h
    rrca
    ld [$0905], sp
    ld b, $09
    rlca
    ld [$a40f], sp
    db $dd
    nop
    dec b
    ld [hl+], a
    inc b
    jp $b001


    add l
    inc b
    ld d, $84
    inc b
    ld [hl], $a4
    inc bc
    push bc
    ld [bc], a
    ld c, $ff
    ld [hl], d
    call nz, $e301
    add hl, bc
    ldh [rIE], a
    cp b
    rst $18
    rst $38
    ld l, a
    sbc $39
    rst $28
    jr @-$7a

    ld bc, $0af6
    inc b
    rst $38
    jr nz, @-$0f

    inc sp
    db $dd
    dec [hl]
    ld hl, sp+$18
    ld hl, sp+$38
    adc d
    ld [bc], a
    inc b
    nop
    ld [$0285], sp
    db $10
    ld bc, $28d8
    ld b, e
    ld hl, sp+$08
    ld [de], a
    ld a, h
    inc b
    db $fc
    inc b
    cp $f2
    rrca
    sbc l
    ld b, e
    ld d, e
    ld c, c
    ld c, c
    dec h
    dec h
    cp $fe
    ld [c], a
    db $e3
    pop af
    adc h
    inc b
    ld [hl], e
    adc c
    inc bc
    ld d, b
    dec b

Jump_048_625f:
    rst $00
    ret c

    rst $38
    add e
    db $fc
    db $fc
    adc b
    adc a
    ld [bc], a
    db $fc
    rst $08
    ldh a, [$83]
    adc a
    rst $38
    ld h, c
    rlca
    jr nc, jr_048_62ab

    dec h
    ld b, [hl]
    ld h, e
    add d
    ei
    add d
    ld b, e
    rst $38
    add c
    inc de
    ld e, a
    ld h, b
    rst $30
    cp b
    rst $30
    adc [hl]
    cp $81
    ld a, a
    ld b, b
    dec a
    ld a, $3d
    inc hl
    ccf
    jr nz, jr_048_62ac

    jr jr_048_6296

    rlca
    ld a, l
    inc c
    ld bc, $0201
    ld [bc], a

jr_048_6296:
    inc b
    inc b
    nop
    ld [$0809], sp
    ld bc, $1110
    ld b, l
    ld d, b
    ld d, e
    ld bc, $6170
    inc h
    ldh [rNR44], a
    ret nz

    ld [bc], a
    pop bc

jr_048_62ab:
    ret nz

jr_048_62ac:
    pop bc
    ld b, e
    pop bc
    ld b, c
    ldh [$2e], a
    ld b, c
    jr nz, jr_048_62d6

    jr nz, jr_048_62d7

    ld de, $0f10
    add hl, bc
    ld b, $06
    nop
    ret nz

    jr nz, jr_048_62e1

    db $10
    db $10
    ret z

    ld c, $e4
    dec b
    ldh a, [rP1]
    ld hl, sp+$00
    cp $c0
    rst $28
    jr nc, @+$01

    db $10
    ld a, a
    add b
    cp $01
    rst $38

jr_048_62d6:
    nop

jr_048_62d7:
    rst $38
    ret nz

    rst $38
    nop
    ld l, a
    ldh a, [$7f]
    add b
    rst $38
    rst $38

jr_048_62e1:
    ld a, d
    nop
    ret nz

    ld [hl+], a
    ld b, b
    ldh [$28], a
    ld b, c
    jp nz, $c442

    ld b, h
    ret z

    ld e, b
    ldh [rSVBK], a
    or c
    ld b, b
    db $d3
    ld h, e
    push hl
    rlca
    rrc a
    sub a
    rra
    ccf
    ld a, $3f
    ld a, [hl]
    ld e, a
    ld e, l
    sbc a
    dec e
    sbc [hl]
    sbc c
    ld e, [hl]
    ld d, d
    ld l, [hl]
    ld h, d
    adc h
    jp z, $141c

    ld hl, sp+$78
    ldh a, [$90]
    xor e
    nop
    jr nz, jr_048_6332

    add b
    add b
    ld h, b
    ld h, b
    jr @+$1a

    inc b
    inc b
    nop
    ld [bc], a
    add c
    ld bc, $0183
    rst $00
    nop
    ld b, a
    add b
    add a
    ld b, c
    add $23
    and $23
    db $e3
    ld de, $d1f3
    inc sp

jr_048_6332:
    jr c, jr_048_6377

    rrca
    ld [$0602], sp
    dec b
    ld b, $24
    inc b
    nop
    nop
    ld [hl+], a
    ld [$1004], sp
    stop
    jr nz, jr_048_6346

jr_048_6346:
    and h
    xor e
    ld bc, $8007
    and e
    nop
    ld a, d
    add hl, bc
    ccf
    ld bc, $027f
    db $fd
    dec b
    ld hl, sp+$08
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    dec b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    db $ec
    dec hl
    ld [de], a
    adc b
    sbc b
    sub h
    sbc h
    jp c, $ca5e

    adc $45
    rst $00
    ld l, a
    rst $28
    or d
    di
    or b
    ldh a, [$c0]

jr_048_6377:
    ldh [rP1], a
    sub b
    cp a
    inc de
    dec e
    nop
    ld a, d
    nop
    rst $38

jr_048_6381:
    nop
    db $fd
    ld c, $ed
    jr nc, jr_048_6381

    ld h, b
    cp a
    db $fc
    ld a, e
    sbc e
    ldh [$a0], a
    ldh [$e0], a
    db $ec
    add hl, sp
    dec bc
    jr nz, jr_048_63f5

    ld d, d
    db $76
    ld d, l
    ld [hl], a
    push de
    rst $38
    add hl, hl
    dec hl
    ld [bc], a
    add d
    xor b
    sub e
    ld [$e307], sp
    db $e3
    ret z

    ld hl, sp+$72
    ld a, [hl]
    inc c
    inc c
    add [hl]
    nop
    ld [c], a
    inc e
    jr nc, jr_048_6401

    ld [$00a8], sp
    ld d, b
    inc b
    adc b
    inc h
    cp $24
    rst $38
    db $f4
    dec e
    ld l, $3f
    ld e, b
    ld [hl], e
    ld h, b
    add c
    add b
    cp a
    add b
    rst $38
    add c
    ld a, a
    ld b, a
    jr c, jr_048_6404

    or [hl]
    nop
    sbc c
    nop
    inc bc
    push bc
    nop
    ld b, l
    dec b
    rrca
    rrca
    db $10
    rra
    dec c
    rrca
    call $0a8c
    jr nz, jr_048_6400

    ld d, c
    ld [hl], c
    db $d3
    ld a, [c]
    ld e, [hl]
    ld a, h
    ld bc, $0206
    ld [hl+], a
    inc bc
    rlca
    ld [$df0f], sp
    rst $18
    db $10
    ldh a, [$f8]
    ld hl, sp+$61

jr_048_63f5:
    dec d
    ld bc, $4300
    ld b, b
    ld c, a
    ld b, b
    ld a, [hl-]
    jr nz, jr_048_6414

    db $10

jr_048_6400:
    dec bc

jr_048_6401:
    dec bc
    inc b
    inc b

jr_048_6404:
    jr jr_048_640e

    ld [hl], b
    jr nz, jr_048_640c

    nop
    rrca
    nop

jr_048_640c:
    ld b, h
    rst $38

jr_048_640e:
    nop
    ld a, [bc]
    inc bc
    rst $20
    ld e, $f8

jr_048_6414:
    nop
    ldh [rNR10], a
    ldh [$90], a
    ld [hl], b
    ld d, b
    ld [hl+], a
    jr nc, @+$24

    jr nz, jr_048_6421

    ld h, b

jr_048_6421:
    nop
    and h
    db $dd
    ld b, $80
    ld a, c
    ld b, c
    ccf
    ld sp, $0e0f
    add e
    rst $18
    ld a, [bc]
    ret nz

    ret nz

    ld h, $26
    ld de, $991f
    adc a
    adc [hl]
    adc [hl]
    call z, $c422
    ld b, l
    ld b, [hl]
    ld b, d
    ld bc, $424e
    ld b, l
    adc [hl]
    add d
    jr jr_048_6465

    ld [bc], a
    ld e, h
    inc b
    cp h
    inc b
    db $fc
    db $e4
    ld a, h
    call nz, $c4fc
    ld hl, sp-$78
    ld hl, sp+$08
    ld a, b
    ld [$1070], sp
    or b
    db $10
    ret nc

    db $10
    and b
    add [hl]
    ld bc, $8331
    nop
    xor l

jr_048_6465:
    add e
    nop
    ld [hl], d
    ld de, $1090
    ret nc

    db $10
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ld h, b
    and b
    ld [hl], b
    sub b
    ld b, e
    ld [$2548], sp
    ld b, h
    dec bc
    jp nz, $c242

    jp nz, $c2f2

    cp $42
    cp $32
    db $ec
    inc l
    and h
    ld [bc], a
    ld a, $1a
    ld bc, $0e06
    nop
    db $10
    inc de
    db $10
    rra
    jr c, jr_048_64e2

    ld b, h
    rrca
    add e
    cp a
    add b
    rst $38
    add e
    rst $38
    sbc h
    ld a, a
    ld h, b
    ccf
    ld hl, $121f
    rrca
    inc c
    add e
    ld [bc], a
    sbc [hl]
    inc b
    ld bc, $0909
    dec c
    dec b
    and e
    nop
    ld d, a
    and h
    nop
    ld e, c
    and e
    ld bc, $ab36
    ld bc, $0178
    rlca
    rra
    add e
    ld bc, $e09c
    ld hl, $00f8
    cp $00
    rst $38
    ld b, $7f
    pop hl
    ld a, a
    add b
    rst $28
    jr nc, @+$01

    ret nz

    rst $38
    ld bc, $6bf7
    db $fc
    sub [hl]
    ld hl, sp+$28
    ldh a, [rSVBK]
    add b

jr_048_64e2:
    add b
    ld [$1c18], sp
    dec d
    dec l
    dec h
    ld h, $46
    ld b, e
    ld b, [hl]
    ld b, d
    ld b, h
    add a
    add c
    nop
    add b
    ld b, e
    rrca
    nop
    ld b, e
    rlca
    nop
    ld bc, $0003
    ld b, e
    ld [bc], a
    ld bc, $0301
    ld bc, $8343
    add c
    add hl, bc
    rst $00
    pop bc
    ld h, a
    ld b, b
    ccf
    ld hl, $121e
    inc c
    inc c
    add l
    nop
    add sp, $14
    inc c
    inc b
    ld b, $02
    rlca
    ld bc, $c382
    ld [c], a
    inc hl
    pop hl
    ld d, c
    pop af
    or c
    di
    ld e, b
    rst $38
    ld hl, sp+$0e
    add hl, bc
    dec b
    ld [hl+], a
    ld b, $03
    inc b
    inc b
    inc bc
    add b
    jp $14bb


    rra
    ld bc, $021f
    dec a
    dec b
    jr c, jr_048_6543

    ld a, b
    ld [$90f0], sp
    ldh a, [$b0]
    or b
    ld [hl], b

jr_048_6543:
    ldh a, [rSVBK]
    ld h, b
    ldh a, [$f0]
    inc hl
    ldh [rNR43], a
    and b
    ld [hl+], a
    ld b, b
    sub b
    ld bc, $0935
    ld [$1418], sp
    inc e
    ld a, [de]
    ld e, $8a
    adc [hl]
    ld b, l
    rst $00
    adc h
    ld [bc], a
    nop
    ld a, [bc]
    ld b, h
    cpl
    ld d, l
    rst $18
    and l

jr_048_6565:
    rst $38
    xor c
    rst $38
    xor d
    ld a, a

jr_048_656a:
    ld [hl], d
    ld b, l
    ccf
    inc h
    ld bc, $1c1e
    ld b, l
    ld c, $08
    ld [bc], a
    rrca
    ld [$c607], sp
    ld [bc], a
    ld [hl-], a
    ld bc, $0404
    rst $00

jr_048_657f:
    nop
    ld b, l
    ld b, e
    add b
    nop
    ld b, l
    ret nz

    nop
    ld [bc], a
    add b
    nop
    add h
    inc h
    inc b
    ld b, e
    inc c
    ld [$1c09], sp
    jr jr_048_65b2

    jr jr_048_65c5

    jr z, jr_048_657f

    ld h, $e1
    ld hl, $02ad
    ld a, $0c
    add b
    ret nz

    jr nz, jr_048_65d3

    ld [$0408], sp
    ld b, h
    nop
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    jr nc, jr_048_65f1

    ld hl, $0031
    dec a
    ld b, e

jr_048_65b2:
    ld hl, $0a3f
    add hl, sp
    ld a, $26
    inc a
    inc h
    db $fc
    ld c, h
    ldh a, [rSVBK]
    ret nz

    ret nz

    adc e
    nop
    scf
    ld b, e
    inc bc

jr_048_65c5:
    ld [bc], a
    rla
    rrca
    rrca
    ld sp, $4131
    ld b, b
    adc a
    add b
    sbc a
    add b
    cp $83

jr_048_65d3:
    ei
    call z, $b0bf
    rst $38
    add c
    ld a, l
    ld b, [hl]
    ld a, a
    ld c, b
    ccf
    jr nc, jr_048_6565

    inc bc
    jr z, jr_048_656a

    nop
    jr nz, @-$75

    nop
    add b
    dec bc
    cp a
    ret nz

    rst $38
    nop
    rst $28
    jr nc, jr_048_666f

    ret nz

jr_048_65f1:
    rst $38
    rrca
    ldh [$30], a
    adc c
    call $ff43
    xor e
    inc bc
    rst $30
    or d
    ld h, a
    ld h, d
    ld b, e
    ld c, a
    ld b, c
    ld bc, $223e
    and l
    ld [bc], a
    jr @+$25

    ld bc, $0222
    inc b
    ld c, $1e
    ld e, $0e
    ld c, $a4
    inc bc
    ld [c], a
    nop
    ld [bc], a
    dec h
    ld bc, $2103
    ld hl, $7252
    add a
    inc b
    jr nc, jr_048_6627

    add hl, de
    add hl, sp
    add $46
    db $e3

jr_048_6627:
    add d
    ld b, e
    pop bc
    ld bc, $8243
    ld [bc], a
    ld c, $04
    inc b
    call nz, $fc04
    ret z

    inc a
    jr c, jr_048_6654

    jr jr_048_6656

    db $10
    rra
    db $10
    rrca
    xor d
    rst $18
    ld c, $40
    ret nz

    and b
    and b
    jr nz, jr_048_6667

    ld a, b
    jr c, jr_048_66ae

    ld a, h
    ld c, b
    ld a, b
    ld [hl], b
    jr nc, jr_048_66c0

    ld b, [hl]
    db $10
    jr nc, jr_048_6699

jr_048_6654:
    jr jr_048_665e

jr_048_6656:
    inc bc
    inc e
    inc b
    inc a
    inc b
    call $f303

jr_048_665e:
    ld bc, $c0c0
    add e
    ld [bc], a
    ldh a, [$03]
    db $10
    sub b

jr_048_6667:
    ld c, b
    adc b
    add e
    ld [bc], a
    ld a, [$620b]
    ld b, d

jr_048_666f:
    ld hl, $3721
    ld hl, $313f
    cp $4e
    db $fc
    add h
    and a
    inc b
    db $ec
    add e
    nop
    ret nc

    dec bc
    adc [hl]
    jp z, $1a1e

    db $fc
    ld a, d
    db $fc
    or h
    ld a, h
    ld [hl], h
    jr c, @+$3a

    adc l
    ld [bc], a
    ld a, [hl+]
    add [hl]
    ld bc, $11e6
    inc c
    add h
    sbc [hl]
    ld h, b
    ld a, h
    inc e

jr_048_6699:
    inc e
    add [hl]
    add d
    pop hl
    pop hl
    db $10
    ldh a, [rBCPS]
    ld l, b
    inc c
    ld [$a406], sp
    ld [bc], a
    rst $10
    inc bc
    inc hl
    ld [hl+], a
    ld d, e
    ld [hl], d
    and e

jr_048_66ae:
    inc b
    or $a3
    inc bc
    cp h
    nop
    jr nc, jr_048_66d8

    db $10
    inc bc
    jr jr_048_66c2

    jr c, @+$0a

    adc c
    nop
    ret nz

    ld b, e

jr_048_66c0:
    sbc a
    sbc l

jr_048_66c2:
    ld de, $191e
    ld e, [hl]
    ld d, e
    ld l, [hl]
    ld h, e
    adc a
    ret


    rra
    dec e
    rst $38
    ld a, l
    cp a
    cp l
    ld a, [de]
    ld e, $0c
    inc c
    rst $38
    ld [hl], h
    rrca

jr_048_66d8:
    ld [hl], c
    ld bc, $8189
    adc c
    ld bc, $0185
    ld b, l
    ld b, c
    ld b, l
    inc b
    ld b, l
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld b, e
    ld [hl+], a
    nop
    dec d
    ld [de], a
    dec d
    db $10
    ld a, [de]
    db $10
    dec d
    db $10
    ld a, [bc]
    db $10
    dec c
    ld [$080a], sp
    dec b
    ld [$0406], sp
    ld bc, $0204
    ld [bc], a
    ld bc, HeaderCGBFlag
    nop
    ld [bc], a
    nop
    ld bc, $8301
    add a
    db $ec
    ld a, [hl-]
    inc bc
    ret nz

    nop
    jr nz, jr_048_6712

jr_048_6712:
    inc h
    db $10
    ldh [rKEY1], a
    nop
    rla
    inc b
    inc d
    inc b
    inc h
    jr nz, jr_048_6746

    ld [$1028], sp
    ld sp, $0155
    xor b
    inc bc
    ld d, l
    ld [bc], a
    xor d
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    inc b
    or c
    ld a, [bc]
    ld a, e
    ld a, [bc]
    and a
    ld [de], a
    push af
    sub e
    ld sp, hl
    ld d, a
    ld l, c
    daa
    ld h, e

jr_048_6741:
    ld l, $b2
    xor a
    inc [hl]
    sbc a

jr_048_6746:
    ld d, a
    ld e, a
    ld e, l
    ld a, c
    inc e
    scf
    cpl
    inc hl
    add hl, sp
    daa
    inc sp
    cpl
    jr jr_048_678c

    inc bc
    rlca
    nop
    rrca
    dec bc
    rrca
    ld a, [bc]
    dec bc
    add hl, bc
    dec bc
    dec b
    rlca
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ret


    nop
    ld d, d
    ldh [rBGP], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    add hl, bc
    ld [$100c], sp
    jr @+$12

    inc de
    nop
    inc h
    inc hl
    jr z, @+$31

    inc hl
    dec a

jr_048_677c:
    ld h, $19
    ld l, $18
    rla
    inc c
    inc de
    ld c, $89
    inc bc
    ld b, [hl]
    nop
    add c
    add b
    add b
    nop

jr_048_678c:
    jr nc, jr_048_678e

jr_048_678e:
    ld c, b
    add b
    add h
    ld b, b
    inc b
    xor b
    ld [$1340], sp
    ld hl, sp+$1c
    jp c, $f530

    nop
    db $eb
    ld bc, $02f6
    rst $38
    ld sp, $48df
    xor a
    sbc b
    ld e, a
    jr nc, jr_048_6741

jr_048_67aa:
    ld a, a
    jr nz, jr_048_678e

    ld hl, $f7e0
    ret nz

    ld b, e
    ccf

jr_048_67b3:
    ld b, b
    dec de
    db $76
    sbc c
    ret c

    jr nz, jr_048_67aa

    jr nz, jr_048_677c

    ldh [rP1], a
    ld b, b
    add b
    and b
    ld [hl], b
    ldh a, [$8a]
    db $fc
    and h
    cp a
    sub c
    cp a
    ld a, [$0afe]
    ld c, $12
    ld [de], a
    inc c
    inc c
    ld h, c
    dec d
    inc bc
    rlca
    jr c, jr_048_684f

    add b
    add b
    db $10
    rrca
    add c
    ld h, b
    ld [bc], a
    ld bc, $1f00
    rlca
    ldh [$1f], a
    nop
    rst $38
    rlca
    ld hl, sp+$78
    ld h, $80
    ld a, [bc]
    ld b, b
    ret nz

    ld b, b
    ld h, b
    or b
    sbc h
    ld l, [hl]
    db $e4
    sbc c
    inc a
    ld a, [hl]
    add l
    nop
    ldh [rSC], a
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    ldh [rHDMA1], a
    inc b
    add h
    add c
    adc b
    add d
    sub c
    inc h
    inc hl
    ld [$5947], sp
    ld b, [hl]
    inc de
    adc h
    sub d
    adc h

jr_048_6812:
    inc de
    adc h
    ld [hl], $09
    rla
    ld [$015e], sp
    cp h
    inc bc
    ei
    inc b
    rst $38
    nop
    ld a, [$7500]
    add b
    ld a, [hl-]
    ld b, b
    dec de
    inc h
    dec e
    ld [hl+], a
    add e
    rra
    ld c, b
    inc b
    inc a
    ld c, $e0
    jr nc, jr_048_67b3

    ret nz

    ld bc, $0403
    dec c
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ldh [$f0], a
    ld a, [hl]
    rrca
    ldh a, [rP1]
    ld [$01f0], sp
    cp $00
    ldh a, [rP1]
    ld hl, sp-$1f
    ld b, $f0

jr_048_684f:
    nop
    db $fc
    ld hl, sp+$03
    rlca
    add h
    nop
    ld [c], a
    ldh [$3a], a
    ld b, $09
    ld [$1013], sp
    inc b
    inc hl
    add hl, hl
    ld h, $12
    ld c, l
    pop de
    adc $22
    sbc l
    and l
    sbc d
    ld h, e
    inc e
    ld l, [hl]
    db $10
    ld c, a
    jr nc, jr_048_684f

    jr nz, jr_048_6812

    ld h, d
    dec sp
    pop bc
    ld [hl], h
    add b
    ld l, h
    add h
    ret nc

    ld [bc], a
    and d
    inc bc
    ld d, h
    inc c
    and h
    inc b
    or b
    ld a, b
    pop hl
    pop hl
    add d
    ld [de], a
    jp nc, $0415

    or $3b
    db $fc
    rst $30
    ld c, c
    sbc $32
    ld a, h
    inc a
    ld b, e
    db $f4
    inc e
    dec d
    xor b
    ld a, b
    ret z

    ld hl, sp+$48
    ld a, b
    ld d, b
    ld [hl], b
    ld e, b
    ld a, b
    add h
    cp $91
    rst $38
    inc c
    rst $28
    db $eb
    db $eb
    add hl, hl
    add hl, hl
    db $10
    db $10
    and h
    ld bc, $e079
    ld [hl], $c0
    jr nz, jr_048_68e6

    jr jr_048_68c4

    rra
    db $e3
    daa
    add hl, de
    ld b, d
    ld a, $07
    db $fc
    ld a, a
    ld [$f0bf], sp

jr_048_68c4:
    ld a, a
    ld b, b
    or [hl]
    adc c
    rst $08
    jr nc, jr_048_6909

    ret nz

    ld e, l
    and b
    cp a
    ld b, c
    ld [hl], a
    add d
    and c
    ld c, a
    ld [hl], h
    add b
    ld [$f400], a
    nop
    rst $30
    rrca
    sbc b
    ld a, b
    ld b, h
    ld b, $a0
    ld bc, $c141
    ld [de], a
    inc sp

jr_048_68e6:
    add b
    adc h
    ld b, b
    ld b, b
    push bc
    nop
    adc b
    dec c
    inc e
    ld a, $7f
    pop bc
    nop
    inc a
    ld a, [hl]
    add c
    inc a
    nop
    ld [hl], h
    jr c, @-$3b

    rst $00
    halt
    add b
    dec h
    ld b, b
    ldh [$27], a
    add b
    add b
    nop
    jr jr_048_6918

    inc d

jr_048_6909:
    jr nz, jr_048_692d

    ld b, d
    ld b, d
    add d
    add d
    and b
    ld [bc], a
    ld d, h
    inc b
    xor b
    ld [$1050], sp
    and b

jr_048_6918:
    ld [hl+], a
    call nz, $914d
    or c
    ld h, c
    pop bc
    ld b, c
    ld bc, $06a2
    ld e, h
    ld a, [hl-]
    xor [hl]
    jp nc, $0af6

    sub $e9
    ld b, e
    dec bc

jr_048_692d:
    dec d
    ldh [rNR50], a
    dec de
    dec h
    cp a
    pop hl
    ld [hl], $2a
    ld c, d
    ld b, d
    add h
    sub d
    add h
    and h
    adc b
    and h
    xor b
    adc b
    ld c, b
    ld e, b
    inc [hl]
    ld c, h
    inc a
    inc h
    ld a, $22
    ld a, $2a
    ld a, [$14f6]
    ld a, [bc]
    inc l
    call nz, $0818
    jr nc, jr_048_6984

    add b
    ld hl, sp+$25
    nop
    add l
    inc c
    ld [hl], e
    nop
    adc h
    add b
    adc h
    nop
    add h
    nop
    add h
    ld b, b
    ld b, h
    inc b
    ld b, [hl]
    adc l
    nop
    ld [hl+], a
    add l
    ld [bc], a
    sub d
    nop
    nop
    ld b, e
    ld b, b
    nop
    ld b, e
    jr nz, jr_048_6975

jr_048_6975:
    ldh [rNR50], a
    ld h, $00
    add hl, hl
    nop
    add hl, de
    nop
    ld de, $1100
    db $10
    db $10
    ld d, h
    nop

jr_048_6984:
    xor b
    ld bc, $0255
    rra
    ld a, e
    inc l
    daa
    dec de
    ld b, a
    dec a
    ld c, a

Jump_048_6990:
    ld [hl], l
    ld d, a
    daa
    ld h, l
    rlca
    rlca
    nop
    rrca
    ld c, $09
    inc bc
    ld b, $84
    nop
    ld c, b
    inc c
    ldh [rP1], a
    sub b
    nop
    ld [$0840], sp
    ldh a, [rSB]
    rst $38
    db $fc
    nop
    inc bc
    jp $3f00


    rrca
    dec b
    inc b
    ld a, [bc]
    add hl, bc
    nop
    inc de
    inc d
    inc de
    add hl, bc
    ld h, $3a
    dec h
    ld de, $724e
    ld c, l
    adc e
    ld bc, $09ea
    ld a, [hl-]
    ret nz

    ld [hl], h
    add b
    ld l, [hl]
    add [hl]
    pop de
    inc bc
    and d
    ld [bc], a
    add l
    ld [bc], a
    jr nc, jr_048_69ea

    ld hl, $1a31
    ld c, $1d
    db $e4
    inc hl
    jr jr_048_6a5a

    ld [$b057], sp
    db $eb
    inc h
    sub e
    call z, $1827
    adc a
    ld [hl], c
    rra
    ldh [$2e], a

jr_048_69ea:
    ret nc

    add h
    ld [bc], a
    ld c, [hl]
    ld [bc], a
    add e
    and h
    ld c, [hl]
    adc b
    ld [bc], a
    ld d, [hl]
    ld c, $79
    ld b, b
    ld bc, $02a2
    ld [hl], h
    db $fc
    nop
    jr nc, jr_048_6a00

jr_048_6a00:
    ld [$0800], sp
    add b
    ldh a, [$61]
    ld [$6020], sp
    nop
    sub b
    nop
    adc b
    nop
    ld [$a388], sp
    nop
    dec l
    ldh [rNR43], a
    db $10
    or b
    db $10
    ld l, h
    inc l
    jp nc, $a052

    and c
    pop bc
    pop bc
    ld [hl+], a
    add d
    ld b, h
    ld b, $bc
    ld a, [de]
    db $76
    ld l, d
    xor [hl]
    ld a, [c]
    sub [hl]
    sbc d
    ld e, $11
    dec bc
    ld de, $352b
    db $db
    push hl
    ccf
    ld hl, $2a36
    xor l
    ld [bc], a
    adc d
    ld bc, $0603
    ld h, l
    adc c
    inc bc
    ld h, [hl]
    add l
    sub a
    dec c
    ld b, $0e
    jr jr_048_6a79

    ld h, b
    ld b, a
    ret nz

    or b
    jr nz, @-$3e

    ld [hl-], a
    pop af
    inc bc
    rrca
    add a
    xor h
    inc de
    inc b
    inc c
    inc bc
    db $10

jr_048_6a5a:
    ld c, $20
    jr c, @+$22

    db $10
    ld b, b
    ld h, c
    ld b, b
    rrca
    ld b, c
    rra
    ld h, $0e
    add hl, de
    inc bc
    rrca
    add l
    ld bc, $0d50
    ld [$8007], sp

jr_048_6a71:
    ld [hl], b
    ld bc, $0700
    nop
    jr nz, @+$21

    ccf

jr_048_6a79:
    db $fc
    jp $83c3


    ld bc, $1b7b
    ld a, [hl-]
    ld a, d
    add c
    add h
    ld a, [c]
    add hl, bc
    ret nz

    inc de
    ldh [$f0], a
    adc h
    ld c, $7e
    ld bc, $e103
    ld [bc], a
    ld e, $fd
    inc b
    di
    ld [$f80e], sp
    ld b, b
    ld bc, $03a3
    add a
    inc bc
    call nc, $840e
    db $f4
    ld b, d
    ld b, d
    cp h
    db $e4
    sub b
    sbc b
    db $10
    stop
    db $10
    jr nz, @+$22

    ret nz

    adc d
    ld [bc], a
    rst $28
    ld [bc], a
    ld bc, $0301
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld b, $04
    dec b
    ld b, e
    inc b
    ld b, $00
    dec b
    add e
    adc e
    ld bc, $e101
    add a
    inc b
    ld a, [hl+]
    dec b
    inc bc
    rlca
    rla
    jr c, jr_048_6ad5

    ld b, $c7
    and b
    ld e, $80
    add b

jr_048_6ad5:
    ldh [$60], a
    jr c, jr_048_6a71

    adc a
    ld h, a
    sub b
    adc h
    ld [hl], d
    ld [hl], c
    rrca
    rrca
    ld bc, $e001
    ldh [$9e], a
    ld a, [hl]
    add hl, bc
    rlca
    nop
    ldh [$e4], a
    sbc b
    ld a, c
    ld h, [hl]
    jr jr_048_6b0a

    ld b, $84
    inc bc
    ld h, e
    dec bc
    ldh [$e0], a
    ld a, l
    dec e
    ld b, $e2
    ld bc, $721c

jr_048_6aff:
    add hl, bc
    ldh [$f3], a
    add e
    rst $38
    dec b
    db $76
    db $fd
    dec c
    ld a, $01

jr_048_6b0a:
    add hl, bc
    add e
    inc bc
    jp c, $00a3

    jp c, $800d

    nop
    ld h, b
    ld b, b
    sub b
    ld d, b
    ret z

    xor b
    ld h, h
    ld d, b
    ld d, h
    ld l, h
    jr c, jr_048_6b42

    adc l
    ld bc, $0420
    cp a
    ret nz

    ld a, a
    ret nz

    or $8c
    ld bc, $ff33
    ld h, d
    rlca
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    inc c
    ld c, $1c
    ld e, $3c
    ld b, h
    ccf
    jr c, jr_048_6b41

    dec a
    ccf
    ld a, $3f
    ld e, $3e

jr_048_6b41:
    inc c

jr_048_6b42:
    ld b, h
    inc c
    inc b
    ld b, e
    ld [bc], a
    ld b, $43
    dec b
    rlca
    dec c
    ld [bc], a
    inc bc
    ld bc, $0301
    rlca
    ld b, $0f
    inc c
    inc e
    jr jr_048_6b74

    db $10
    jr c, jr_048_6aff

    sbc e
    inc h
    ld h, b
    inc de
    ld b, b
    ld h, b
    ld [hl], b
    ld a, b
    ld a, [hl+]
    ld a, [hl]
    inc e
    ld a, $2e
    ld a, a
    scf
    ccf
    rra
    ccf
    rrca
    rra
    ld b, $0f
    ld a, [bc]
    ld a, [de]
    db $ec

jr_048_6b74:
    jr z, jr_048_6b9a

    add b
    dec bc
    nop
    add b
    inc bc
    inc bc
    dec b
    rlca
    dec bc
    rrca
    ld c, $0e
    inc b
    inc c
    ld b, e
    inc d
    inc e
    rrca
    inc e
    inc e
    jr jr_048_6baa

    ld h, $3f
    db $db
    rst $38
    jr c, @+$01

    rst $00
    rst $38
    ccf
    ccf
    inc bc
    inc bc
    inc hl
    ld [bc], a

jr_048_6b9a:
    inc hl
    inc b
    ld [$0808], sp
    add hl, bc
    ld [$080a], sp
    dec c
    ld [$440b], sp
    ld [$470f], sp

jr_048_6baa:
    rlca
    inc b
    inc bc
    ld b, $05
    dec b
    ld b, $43
    ld [$090f], sp
    nop
    rra
    db $10
    rra
    ld de, $0a1e
    dec c
    dec c
    ld a, [bc]
    add e
    sub c
    nop
    ld [bc], a
    add h
    or l
    ld bc, $0101
    ld l, c
    ld de, $0707
    jr jr_048_6bed

    jr c, jr_048_6c0f

    ld a, $3f
    ld a, a
    ld a, a
    cp a
    rst $38
    ld a, l
    rst $38
    add $ce
    nop
    nop
    call nz, $2700
    ld [bc], a
    inc b
    rlca
    inc b
    ld b, e
    rrca
    ld [$1f19], sp
    ld de, $931e
    cp h
    rst $20

jr_048_6bed:
    rst $38
    jp $83be


    ld e, l
    ld b, $bd
    ld b, $5f
    ld [bc], a
    cp h
    rlca
    ld a, a
    inc bc
    cp [hl]
    inc bc
    ld [hl], a
    add hl, bc
    rst $30
    ld [$fb45], sp
    inc b
    ld de, $06f9
    ld a, [$f905]
    ld c, $f8
    rrca
    sbc $2f

jr_048_6c0f:
    xor c
    ld e, c
    ld d, c
    or c
    db $10
    pop af
    ld hl, $43e1
    ld b, c
    pop bc
    inc hl
    add c
    ld [$c141], sp
    add c
    ld b, c
    ld h, d
    and e
    ld [hl+], a
    db $e3
    db $e3
    ld [hl+], a
    di
    ld bc, $f3e3
    adc c
    pop af
    ldh [rNR50], a
    add b
    add b
    ld h, b
    ldh [rP1], a
    ret nz

    jr nz, @-$1e

    sub b
    ldh a, [$c0]
    ret nz

    ld c, $0f
    inc d
    rla
    add sp, -$11
    add sp, $2f
    call nz, $c347
    ld b, e
    ret nz

    pop bc
    and b
    ld [c], a
    and c
    push hl
    ld de, $0af5
    ld a, [$fc05]
    nop
    ld b, [hl]
    cp $02
    ld a, [de]
    sub e
    ld l, a
    or l
    ld c, e
    dec h
    db $db
    ld hl, $00df
    rst $38
    ldh [rIE], a
    ldh a, [$5f]
    ret c

    ld c, a
    ret z

    ld c, a

jr_048_6c6a:
    inc e
    add a
    inc l
    add a
    sbc h
    add a
    cp h
    add e
    db $fc
    ld b, e
    add e
    cp $08
    rlca
    cp $07
    pop af
    dec c
    xor c
    ld d, l
    ld d, l
    xor l
    ld b, l
    inc b
    db $fc
    rlca
    add h
    ld a, h
    ld e, b
    xor h
    xor b
    ld e, b
    ld e, b
    cp b
    inc hl
    ld hl, sp+$03
    ldh a, [$f0]
    ldh [$e0], a
    ld l, e
    inc b
    inc b
    inc b
    ld a, [hl-]
    ld a, $c9
    ld c, b
    rst $38
    nop
    ld de, $ff06
    sbc c
    ld sp, hl
    ld [hl], a
    xor $ff
    add b
    rst $38
    jr jr_048_6cf8

    jr z, jr_048_6c6a

    jr nc, jr_048_6ccc

    nop
    ccf
    ld h, b
    ld b, e
    rra
    sub b
    inc d
    ld a, [hl]
    ld h, c
    dec a
    inc bc
    ccf
    ld bc, $005f
    xor a
    nop
    rst $18
    add b
    cp a
    db $fc
    add e
    sbc [hl]
    adc a
    cp $7f
    pop bc
    ld a, $46
    rst $38
    nop

jr_048_6ccc:
    ld d, $09
    or $2b
    call nc, $fd02
    inc hl
    rst $38
    ld l, h
    db $fc
    call nc, $04fc
    db $fc
    add d
    cp $42
    ld a, [hl]
    ld [hl+], a

jr_048_6ce0:
    ld a, $26
    ld a, $1e
    ld b, h
    rra
    dec e
    ld bc, $0f07
    ld [hl], l
    dec d
    ret nz

    ret nz

    jr nc, jr_048_6ce0

    inc e
    db $ec
    ld c, $f2
    dec b
    ei
    db $10
    rst $28

jr_048_6cf8:
    ret nz

    rst $38
    ld sp, hl
    ccf
    or $16
    ldh a, [rNR14]
    ldh [rNR14], a
    ld b, e
    ld hl, sp+$0a
    ldh [$29], a
    db $fd
    dec b
    db $dd
    ld h, l
    sbc [hl]
    and e
    inc e
    daa
    cp h
    rst $00
    db $fc
    add a
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    ld a, a
    jp nz, $827d

    db $fd
    add a
    ld sp, hl
    ld d, l
    xor e
    ld b, l
    cp e
    inc bc
    cp $07
    db $fc
    rla
    db $fc
    rra
    ld hl, sp+$3f
    ldh [rIE], a
    pop bc
    ld a, a
    ld b, c
    ld b, e

jr_048_6d32:
    ccf
    ld hl, $1f05
    db $10
    ld a, [de]
    dec d
    dec d
    ld a, [de]
    add e

jr_048_6d3c:
    nop
    jp z, $0a05

    dec c
    dec b
    ld b, $07
    ld b, $83
    add d
    inc bc
    ld b, $06
    inc bc
    inc bc
    ld [hl], e
    ld bc, $3010
    inc hl
    jr z, @+$07

    and h
    and h
    ld b, h
    call nz, $8484
    inc hl

jr_048_6d5a:
    ld [$1017], sp
    db $10
    jr nc, jr_048_6d90

    ret nc

    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$28
    ret c

    jr c, jr_048_6d32

jr_048_6d6a:
    jr nc, jr_048_6d3c

    adc b
    ld a, b
    inc b
    db $fc
    jr jr_048_6d6a

    db $10
    ldh a, [rSCX]
    and b
    ldh [rSC], a
    jr nz, jr_048_6d5a

    ld b, b
    ld [hl+], a
    ret nz

    nop
    nop
    inc hl
    add b
    call Call_048_7d00
    inc h
    add b
    inc c
    ret nz

    ld b, b
    ld b, b
    ret nz

    and b
    ld h, b
    ld h, b
    and b
    add b

jr_048_6d90:
    ld h, b
    ldh [$e0], a
    ldh [rNR50], a
    ldh a, [$61]
    ldh [rNR52], a
    ld c, $0f
    jr jr_048_6dbc

    rst $28
    rst $28
    ret


    ld c, c
    ret nz

    ld d, d
    push bc
    ld b, h
    db $e4
    and $b6
    ld a, [c]
    adc h
    db $fd
    inc b
    db $fc
    ld [$0ff8], sp
    rst $38
    add hl, de
    ldh a, [rNR14]
    di
    jr @+$01

    rrca
    rst $30
    sbc a
    ld l, b
    or l

jr_048_6dbc:
    ld c, [hl]
    inc hl
    rst $18
    jr nz, @-$76

    ld bc, $e087
    ld l, $0c
    rst $38
    ld [hl], e
    di
    and a
    ret c

    rra
    sub b
    rst $38
    ld h, b
    rst $38
    ret nz

    rra
    ld b, c
    ld a, $42
    ld a, $86
    ld d, [hl]
    ld c, $bf
    nop
    ld a, a
    nop

jr_048_6ddd:
    rst $38
    add b
    ld a, a
    ret nz

    rst $38
    ret nz

    cp $01
    db $fd

jr_048_6de6:
    ld [bc], a
    pop af
    rrca
    ld a, [de]
    rst $38
    rst $28
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    ld b, e
    rst $38

jr_048_6df6:
    nop

jr_048_6df7:
    adc h
    ld [bc], a
    inc bc
    inc de
    jr nz, jr_048_6ddd

    jr jr_048_6df7

    push hl
    ld a, l
    rst $18
    ccf
    ret nz

    jr z, jr_048_6df6

    inc d
    ldh [$94], a
    ld a, b
    adc d
    ld a, e
    adc e
    db $76
    adc a
    ld b, e
    db $fc
    rlca
    rla
    db $f4
    rrca
    add sp, $1f
    ret z

    ccf
    or b
    ld e, a
    ld h, b
    cp a
    ret nc

    ld a, a
    and b
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    and d
    db $fd
    ld b, d
    db $fd
    add a
    ld sp, hl
    add e
    ld [bc], a
    inc a
    inc bc
    jr nz, jr_048_6e51

    db $10
    sub b
    inc hl
    db $10
    inc bc
    jr nz, jr_048_6e58

    ldh [$e0], a
    ld c, c
    db $10
    ldh a, [$85]
    ld [bc], a
    jp z, $0183

    jr nz, jr_048_6e45

    ei

jr_048_6e45:
    dec b
    ld b, e
    ld sp, hl
    rrca
    add hl, bc
    rst $18
    cpl
    xor d
    ld e, e
    ld d, e
    or d
    inc de

jr_048_6e51:
    ld a, [c]
    inc hl
    ld [c], a
    ld b, e
    ld b, c
    pop bc
    inc hl

jr_048_6e58:
    add b
    ld b, $40
    ret nz

    add b
    ld b, b
    ld h, b
    and b
    jr nz, jr_048_6de6

jr_048_6e62:
    inc bc
    rlca
    and a
    ld [bc], a
    ld h, $e0
    add hl, sp
    inc bc
    rlca
    dec de
    ld a, $f4
    db $db
    rst $28
    inc [hl]
    ret c

jr_048_6e72:
    cpl
    or $29
    db $e4
    ld e, e
    ret z

    rst $30
    ret z

    or a
    ret nc

    xor a
    add b
    ld a, a
    xor b
    ld d, a
    jr nz, jr_048_6e62

    ld b, b
    cp a
    sub c
    ld l, a
    jr nz, @+$01

    ld d, c
    rst $18
    sub b
    sbc a
    sub e
    sbc a
    adc l
    sbc l
    add c
    add l
    add b
    push bc
    ld b, d
    ld [$fe3a], a
    adc $fc
    and l
    db $fc
    db $76
    sbc h
    rst $28
    inc e
    rst $30
    inc c
    ld b, h
    ei
    ld b, $0e
    rlca
    db $d3
    cpl
    and e
    ld e, a
    ld d, a
    xor a
    and l
    ld e, a
    adc c
    rst $38
    ld a, c
    ld a, e
    ld e, $1e
    ld h, c
    ld b, $ca
    dec [hl]
    db $10
    rst $28
    ld b, b
    cp a
    nop
    ld c, d
    rst $38
    nop
    ldh [$27], a
    ld a, [de]
    rst $38
    dec h
    rst $38
    ld a, d
    rst $10
    push af
    xor d
    ld a, d
    push bc
    cp [hl]
    ld b, c
    rst $18
    and b
    ld a, a
    ret nz

    rst $20
    sbc b
    rst $00
    inc h
    adc e
    jr jr_048_6edc

    nop

jr_048_6edc:
    ld bc, $0130
    ld c, b
    ld sp, $0330
    nop
    dec d
    jr nc, jr_048_6e72

    ld c, b
    rra
    ld c, b
    rst $38
    jr nc, jr_048_6f30

    rst $38

jr_048_6eee:
    nop
    inc bc
    ld a, a
    add c
    call c, Call_048_45e3
    rst $38
    add b
    jr @-$3f

    pop bc
    ld b, e
    rst $18
    ld a, $7e
    ld [de], a
    ld e, $20
    ldh [$50], a
    or b
    jr jr_048_6eee

    inc b
    db $fc
    ld [bc], a
    cp $03
    db $fd
    ld bc, $01ff
    cp $01
    ld b, h
    rst $38
    nop
    dec de
    add b
    rst $38
    ld b, b
    rst $38
    ld h, b
    cp a
    and b
    ld a, a
    ld h, c
    rst $38
    pop bc
    ld a, a
    pop hl
    ccf
    pop af
    rra
    xor $2e
    add sp, $28
    ldh [$28], a
    db $f4
    dec d
    rst $30
    rla
    db $ec

jr_048_6f30:
    rra
    ld b, e
    db $f4
    rrca
    ld de, $0ff8

jr_048_6f37:
    ld hl, sp+$2f
    add sp, $5f
    or c
    rst $18
    ld [$b5bf], a
    ld a, a
    db $eb
    ld a, a
    ld e, a
    db $fd
    push af
    ld a, [$0287]
    adc b
    adc a
    nop
    ld l, e
    nop
    nop
    add h
    inc bc
    jp hl


    inc b
    ld b, b
    ret nz

    jr nz, jr_048_6f37

    ld b, b
    and e
    nop
    ld hl, $00c4
    scf
    ld bc, $1010
    jp $0d81


    ld d, b
    ld [hl], b
    sub b
    ldh a, [rNR41]
    ldh [rNR10], a
    ldh a, [$50]
    ldh a, [$60]
    ldh [$60], a
    ldh [$c5], a
    ld [bc], a
    db $fd
    ld h, c
    adc c
    ld [bc], a
    ld d, b
    dec b
    db $fd
    dec b
    cp [hl]
    ld h, e
    call c, $ffe7
    db $ec
    dec l
    inc de
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    ld e, $18
    ccf
    ld [hl+], a
    ld a, a
    ld b, b
    ld a, a
    ld h, h
    rra
    inc e
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld b, e
    ld [bc], a
    inc bc
    ldh [$27], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    dec b
    inc b
    dec bc
    ld a, [bc]
    add hl, bc
    dec bc
    ld de, $1113
    ld de, $2a3a
    jr c, jr_048_6fd9

    ld l, $04
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, e
    ld c, a
    ld b, b
    ccf
    jr nz, jr_048_6feb

    jr nz, jr_048_6fdd

    db $10
    ld l, $2a
    inc a
    inc a
    rlca
    rlca
    sub c
    rst $08
    ldh [$39], a
    ld c, $0f
    jr nc, jr_048_7000

    ld b, b
    ld a, c
    ld b, b
    ld a, a
    or b
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    ld b, [hl]
    ld a, a

jr_048_6fd9:
    ld e, b
    ld a, a
    jr nc, jr_048_701b

jr_048_6fdd:
    jr nz, jr_048_701d

    ld b, b
    ld a, a
    jr nz, jr_048_7022

    add hl, de
    rra
    ld a, a
    ld a, a
    rst $38
    pop bc
    di
    ld b, e

jr_048_6feb:
    rst $18
    jr @+$01

    pop bc
    rst $38
    add hl, bc
    rst $38
    ld c, e
    rst $38
    sbc h
    rst $38
    sbc l
    rst $38
    ld a, [$0c7f]
    ccf
    add hl, bc
    rra
    ld [de], a
    rra

jr_048_7000:
    ld d, $1f
    inc e
    ld b, h
    add a
    inc b
    ld b, $03
    add e
    nop
    add a
    nop
    rlca
    nop
    ld b, l
    rrca
    nop
    rrca
    xor a
    jr nz, @+$01

    add d
    rst $38
    ldh [rIE], a
    ld e, a
    rst $38

jr_048_701b:
    inc sp
    rst $28

jr_048_701d:
    inc l
    db $e3
    ld b, e
    add b
    add b

jr_048_7022:
    ld l, a
    ld b, $03
    inc bc
    and $e7
    ld e, $9f
    ld bc, $ff43
    nop
    dec b
    rst $08
    inc bc
    rst $18
    dec a
    rst $38
    ret nz

    ld b, e
    rst $38
    nop
    rlca
    ld a, $00
    inc e
    nop
    ld a, a
    nop
    rst $38
    add c
    ld b, h
    rst $38
    inc bc
    dec d
    add a
    db $fd
    rst $38
    ld a, a
    cp $18
    db $fd
    ld h, c
    rst $30
    add [hl]
    rst $28
    ret z

    rst $38
    db $10
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $11ff
    ld b, h
    rst $38
    ld sp, $7302
    rst $38
    ld e, h
    ld b, h
    rst $38
    add b
    add d
    cp [hl]
    ld bc, $01ff
    ld c, c
    rst $38
    nop
    ld [bc], a
    cp $3f
    add b
    inc hl
    rst $38
    ld [bc], a
    nop
    rst $38
    rst $38
    ld l, a
    ldh [$5d], a
    ld a, a
    ld a, a
    add b
    rst $08
    nop
    db $fc
    nop
    rst $38
    dec l
    db $ed
    ret nz

    ret nz

    sbc [hl]
    sbc [hl]
    ld h, c
    pop hl
    or e
    or e
    ld h, c
    pop hl
    ld e, $ff
    ld [$1eff], sp
    rst $38
    ccf
    rst $38
    rst $38
    ret nz

    rst $20
    pop hl
    sbc a
    ld e, $81
    nop
    pop hl
    ldh [$99], a
    sbc b
    ld a, a
    ld a, a
    rst $38
    add b

jr_048_70a6:
    rst $38
    ld de, $0cff
    rst $38
    ld b, e
    rst $38
    inc sp
    rst $38
    rra
    rst $38
    jr c, jr_048_70a6

    pop hl
    and $c3
    db $fc
    rlca
    rst $38
    inc bc
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    inc b
    ccf
    inc e
    ld h, a
    ld [hl], h
    and a
    or h
    add a
    add b
    rst $38
    jr nc, @+$01

    ld bc, $0eff
    db $e3
    xor $0f
    ld hl, sp+$7f
    ld h, e
    db $fc
    inc c
    ldh a, [$f0]
    or e
    nop
    inc e
    dec d
    ld [hl], b
    ldh a, [rNR24]
    ld sp, hl
    ld e, $ff
    jr nz, @+$01

    ret nz

    db $fc
    ld b, b
    ld a, [hl]
    or b
    rst $38
    ld h, a
    ld a, a
    add b
    rst $38
    nop
    rst $08

jr_048_70f0:
    nop
    rst $18
    and e
    ld bc, $0304
    add b
    rst $38
    ldh [rIE], a
    ld b, e
    ldh a, [$3f]
    rrca
    ld hl, sp-$11
    rst $38
    inc sp
    rst $38
    ld a, h
    cp $f0
    rst $38
    ret nz

    rst $38
    adc b
    rst $38
    pop de
    rst $38
    ei
    ld [hl+], a
    rst $38
    ld [bc], a
    ld sp, hl
    rst $38
    ld h, b
    ld b, h
    rst $38
    ld b, b
    ld [bc], a
    jr nz, @+$01

    jr nz, jr_048_7160

    rst $38
    db $10
    inc b
    add hl, bc
    rst $38
    ld [$05ff], sp
    ld b, h
    rst $38
    add h
    ld b, e
    ld [$00ff], sp
    jr nc, jr_048_7170

    rst $38
    ldh [rTAC], a
    ccf
    jr nz, jr_048_7152

    db $10
    rrca
    inc c
    dec bc
    ld a, [bc]
    or c
    push af
    inc bc
    ldh [$e0], a
    inc e
    db $fc
    and h
    nop
    db $fc
    rlca
    ld [hl], e
    nop
    ld sp, hl
    nop
    rst $38
    ldh [rIE], a
    jr jr_048_70f0

    db $fd
    ldh [rNR42], a
    ld bc, $001f

jr_048_7152:
    rst $38
    ld b, c
    rst $38
    ld h, $fe
    jr c, @-$06

    ld e, h
    call c, $a3ff
    rst $38
    inc b
    ld a, a

jr_048_7160:
    ld h, c
    rst $28
    inc c
    db $fd
    ld bc, $20ff
    rst $38
    ld [hl+], a
    rst $38
    ld [hl-], a
    rst $38
    inc sp
    rst $38
    db $d3
    rst $38

jr_048_7170:
    dec c
    ld b, [hl]
    rst $38
    nop
    add e
    pop af
    inc b
    ld [$88ff], sp
    rst $38
    dec b
    ld b, e
    rst $38
    ld b, $05
    cp $24
    rst $38
    inc de
    cp $22
    ld c, b
    cp $02
    ld b, $06
    cp c
    add hl, bc
    sbc [hl]
    sbc [hl]
    ldh [$e0], a
    or l
    nop
    ld a, [de]
    ld bc, $8080
    ld b, l
    ld b, b
    ret nz

    rst $00
    add [hl]
    adc e
    nop
    jp c, $e01d

    ldh [$f0], a
    sub b
    db $fc
    inc a
    cp $82
    cp $4a
    db $fc
    inc b
    cp $42
    cp $22
    db $fc
    inc [hl]
    ld hl, sp-$18
    ld hl, sp+$08
    db $fc
    add h
    db $e4
    inc b
    and $42
    or $42
    ld b, h
    cp $82
    ld a, [bc]
    ld [bc], a
    db $fc
    inc b
    db $fc
    inc c
    jp c, $9c82

    adc h
    ld [hl], b
    ld [hl], b
    ret nc

    ld bc, $0a59
    ldh [rIE], a
    cp a
    db $fc
    ld c, a
    rst $38
    ld sp, $6cff
    add e
    add e
    and h
    ld bc, $0056
    ccf
    jp $e601


    adc c
    ld bc, $0744
    rlca
    db $fc
    rra
    cp c
    cp $e6
    ld hl, sp+$18
    add a
    ld [bc], a
    sbc [hl]
    ld bc, $0101
    adc a
    nop
    ld b, b
    dec bc
    dec bc
    ld a, [bc]
    add hl, de
    inc de
    add hl, sp
    ld sp, $2a3a
    ld c, h
    ld c, b
    ld b, [hl]
    ld b, h
    add e
    nop
    ld e, h
    ld bc, $212f
    add e
    ld [bc], a
    inc h
    ld bc, $2e2e
    add l
    nop
    ld l, d
    add hl, bc
    rst $38
    db $ec
    rst $38
    add hl, bc
    ld a, a
    ld [de], a
    ccf
    ld [de], a
    rra
    inc d
    add a
    nop
    cp b

jr_048_7223:
    ld [bc], a
    add a
    nop
    rlca
    adc l
    nop
    jp Jump_048_6010


    rst $18
    cp a
    ldh a, [rBGP]
    cp $67
    sbc e
    sub c
    ld c, $0e
    ld bc, $ff00
    ld [bc], a
    rst $38
    ld de, $0186
    ld [hl+], a
    ld [$ff79], sp
    ld c, [hl]
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    adc l
    ld bc, $0132
    db $fc
    ld a, a
    add h
    sub b
    ld c, $fd
    rst $38
    db $fc
    ld a, a
    ld bc, $fefe
    rst $38
    inc a
    db $fd
    ldh a, [$f3]
    pop bc
    and $03
    adc c
    ld bc, $0796
    cp a
    inc c
    ld [hl], a
    inc [hl]
    rst $20
    db $f4
    adc a
    adc b
    add l
    ld bc, $0da8
    rst $28
    xor $07
    db $fc
    rrca
    ld sp, hl
    ld a, $a2
    db $fc
    adc h
    ldh a, [$30]
    ret nz

    ret nz

    ld h, c
    adc b
    ld [bc], a
    nop
    nop
    ld h, b
    add [hl]
    ld [bc], a
    ld [$1800], sp
    sub b
    ld [bc], a
    db $10
    inc b
    ld h, b
    sbc a
    sub b
    rrca
    ld [$0287], sp
    jr z, jr_048_7223

    ld [bc], a
    ld [hl], b
    add d
    add c
    add h
    ld [bc], a
    ld a, [hl]
    nop
    add l
    and e
    jp $fe05


    ld [de], a
    rst $38
    add hl, bc
    rst $38
    ld de, $ff45
    ld bc, $0283
    sub [hl]
    nop
    ld sp, hl
    add h
    ld [bc], a
    sbc e
    inc c
    rlca
    dec b
    ld e, $18
    ld a, a
    ld h, d
    ld a, a
    ld b, b
    ccf
    inc h
    rra
    inc e
    inc bc
    adc $00
    jr nc, jr_048_72cf

    inc a
    inc a
    ld b, e
    ld a, a
    add b
    di
    add b
    ld sp, hl
    ld h, b

jr_048_72cf:
    ld a, a
    ld b, l
    add b
    rst $38
    rlca
    adc a
    rst $38
    ld [hl], b
    ld a, a
    add b
    cp $40
    ld a, [hl]
    add e
    nop
    sub [hl]
    ld [bc], a
    ld hl, $123f
    add h
    nop
    sbc e
    inc bc
    ld a, a
    dec a
    ccf
    ld [hl+], a
    add e
    cp e
    ld bc, $071f
    ld b, h
    add e
    ld bc, $0000
    add e
    ld bc, $8500
    inc bc
    or e
    dec b
    inc bc
    rst $38
    rrca
    rst $38
    sbc a
    ld sp, hl
    add [hl]
    ld bc, $0020
    ld a, c
    ld [hl+], a
    rst $38
    ld [bc], a
    adc $ff
    ret nz

    adc c
    ld bc, $0049
    ld a, $83
    ld bc, $025b
    rst $08
    nop
    db $fc
    adc e
    ld bc, $03e0
    db $fc
    ccf
    rst $38
    rst $20
    ld l, e
    ld [bc], a
    ld c, $0e
    pop af
    ld b, l
    rst $38
    nop
    ld [bc], a
    di
    nop
    ld a, c
    add e
    add a
    ld [bc], a
    ldh a, [rIE]
    rrca
    ld b, e
    rst $38
    nop
    rlca
    rra
    nop
    sbc a
    ld bc, $61ff
    rst $38
    ld e, $84
    ld [bc], a
    ld e, e
    ld bc, $8080
    adc c
    ld [bc], a
    or h
    add e
    ld [bc], a
    cp h
    ld bc, $c040
    call $b702
    add hl, bc
    ld h, b
    ld h, b
    ldh a, [$90]
    cp $3e
    cp $02
    cp $ca
    add h
    ld [bc], a
    call c, $3206
    db $fc
    inc a
    ldh a, [$f0]
    ld hl, sp-$28
    adc c
    ld [bc], a
    and $00
    ld a, [hl]
    adc d
    inc b
    ld a, a
    inc bc
    add c
    rst $38
    ld c, [hl]
    ld a, a
    add a
    inc b
    adc [hl]
    sub c
    inc b
    sbc b
    ld b, h
    add a
    ld bc, $0003
    rrca
    rst $38
    nop
    adc d
    ld [bc], a
    ld b, e
    inc bc
    inc e
    rst $38
    nop
    nop
    adc l
    rst $38
    ld [bc], a
    add b
    add b
    ld b, b
    xor h
    inc b
    ld l, l
    add h
    ld [bc], a
    ldh [$0c], a
    ld hl, sp-$10
    db $10
    ld hl, sp+$08
    add sp, -$78
    db $e4
    add h
    db $f4
    add h
    db $fc
    add h
    ld b, e
    db $fc
    inc b
    adc c
    ld [bc], a
    or $00
    dec bc
    adc [hl]
    nop
    ld d, c
    dec b
    ccf
    inc b
    ld a, a
    inc e
    rst $20
    db $f4
    adc c
    ld bc, $04a6
    dec bc
    add hl, bc
    inc de
    ld de, $8a13
    sbc a
    and [hl]
    inc b
    ld a, [bc]
    ld [bc], a
    ldh a, [rIE]
    nop
    add l
    sbc a
    rst $38
    ld h, a
    rrca
    ld bc, $0e01
    ld c, $10
    ld de, $1112
    dec bc
    ld [$0407], sp
    rrca
    dec c
    dec bc
    dec bc
    ld [hl+], a
    db $10
    ld [$2211], sp
    ld hl, $2325
    daa
    ld [hl+], a
    inc hl
    daa
    ld b, l
    inc e
    rla
    inc bc
    inc c
    rrca
    ld b, $05
    ld b, l
    ld [bc], a
    inc bc
    dec h
    ld bc, $0003
    ld bc, $0100
    ld a, a
    ld bc, $0301
    inc hl
    inc b
    inc bc
    rlca
    inc b
    inc bc
    inc bc
    ld h, a
    rla
    inc b
    inc b
    rrca
    dec bc
    scf
    ld sp, $c3df
    rra
    ldh [$60], a
    add e
    add a
    ccf
    jr jr_048_7490

    dec l
    ld a, l
    ld l, [hl]
    rst $28
    sub c
    sbc [hl]
    jr @+$21

    add e
    push de
    ldh [$35], a
    add e
    add c
    jp $2341


    ld hl, $1315
    rst $30
    ld a, [c]
    ld e, a
    ld [$aefb], a
    rst $38
    and h
    db $eb
    or b
    push hl
    sub b
    ld [c], a
    sub b
    pop af
    sub b
    ldh a, [rNR10]
    ldh a, [$08]
    ld a, b
    ld [$0d79], sp
    ld a, a
    ld a, [bc]

jr_048_7446:
    cp [hl]
    add h
    cp h
    add h
    dec e
    or h
    add hl, sp
    ld l, l
    ld a, [de]
    dec d
    rra
    ld e, $27
    daa
    ld sp, $1f3f
    rra
    dec e
    inc de
    ld b, e
    rra
    db $10
    inc de
    ccf
    jr nz, jr_048_74d0

    ld d, b
    ld c, l
    ld [hl], d
    pop bc
    adc $01
    ld a, [bc]
    ld b, d
    ld h, c
    add a
    add b
    adc a
    add c
    cp $86
    ld a, b
    ld a, b
    ld h, a
    ld d, $c7
    rst $00
    ccf
    ld hl, sp-$39
    add $ff
    inc c
    rst $38

jr_048_747d:
    jr c, jr_048_7446

    db $fc
    add e
    rst $38
    ld [$1487], sp
    dec bc
    xor b
    rla
    ret nc

    cpl
    nop
    ld b, e
    rst $38
    inc bc
    ld b, $fe

jr_048_7490:
    inc bc
    cp $83
    cp $87
    db $fc
    ld b, l
    rst $00
    ld a, h
    ld b, e
    rst $28
    jr c, jr_048_747d

    ld hl, $286b
    cp e
    jr jr_048_74fe

    ld [$0c27], sp
    dec b
    inc b
    dec d
    inc d
    inc a
    inc l
    add hl, de
    and h
    or d
    ld b, l
    ld [hl+], a
    ld [bc], a
    db $10
    ld [bc], a
    cp b
    ld [de], a
    db $ed
    xor d
    pop bc
    ld b, a
    pop af
    or c
    db $fc
    db $fc
    db $e3
    db $e3
    ld [hl+], a
    ldh [rP1], a
    jr nz, jr_048_750c

    ret nz

    ld b, b

jr_048_74c7:
    ld b, l
    ldh [rNR41], a
    ld [bc], a
    ld b, b
    ret nz

    add b
    xor [hl]
    nop

jr_048_74d0:
    dec a
    ld bc, $8080
    add a
    sbc l
    ldh [$32], a
    ldh a, [rNR10]
    db $fc
    adc h
    ld a, [hl]
    ld [c], a
    rra
    pop af
    rrca
    ld sp, hl
    ld a, [hl]
    ld a, [$a2fe]
    xor $14
    push af
    inc e
    or $0c
    db $fd
    ld [$08fe], sp
    rst $38
    inc b
    rst $38
    ld b, $fd
    dec b
    ld hl, sp+$04
    cp $02
    rst $38
    ld [bc], a
    db $fd
    inc bc

jr_048_74fe:
    rst $38
    ld bc, $09f6
    or [hl]
    ld c, l
    ld a, l
    jp z, $d0ff

    rst $38
    jr nz, @+$21

    ld b, h

jr_048_750c:
    ld bc, $130f
    dec e
    inc bc
    db $eb
    dec d
    ld d, a
    xor d
    xor d
    rst $10
    rst $38

jr_048_7518:
    rst $38
    add e
    rst $08
    rst $38
    rst $38
    push af
    db $eb
    ld a, d
    ld b, l
    ld a, l
    ld b, d
    ld b, e
    ld a, a
    ld b, b
    ld de, $516e
    xor $91
    ret nz

    xor [hl]
    ld c, b
    ld l, b
    add b
    adc b
    add b
    sub b
    ldh a, [$90]
    ld a, a
    ld [hl], b
    rrca
    rrca
    ld [hl], c
    dec b
    rlca
    rlca
    sbc b
    sbc b
    ld h, b
    ld h, b
    ld [hl+], a
    ld b, b
    ldh [rNR41], a
    jr nz, jr_048_74c7

    jr nz, jr_048_7589

    jr nz, @-$5e

    nop
    ld d, l
    nop
    xor d
    nop
    ld d, e
    inc bc
    adc h
    inc c
    ld [hl], b
    jr nc, jr_048_7518

    ret nz

    add b
    inc bc
    adc b
    dec b
    db $10
    add hl, bc
    ldh [$92], a
    ldh a, [$62]
    db $fc
    inc e
    rst $38
    inc bc
    ld b, l
    rst $38
    nop
    ld b, e
    rst $30
    ld [$f512], sp
    ld a, [bc]
    rst $38
    ld de, $3ddf
    ccf
    rst $38
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    or c
    pop af
    ret nc

    ldh a, [$a8]
    ld hl, sp-$2c
    ld b, h
    db $fc
    add h
    rlca
    call nz, $c87c
    ld a, b
    ld [hl], b

jr_048_7589:
    ldh a, [rNR41]
    jr nz, @+$24

    db $10
    inc b
    sub b
    ldh a, [$90]
    ldh [$e0], a
    ld [hl], l
    ld bc, $c0c0
    add e
    and c
    dec b
    inc c
    inc c
    dec bc
    dec bc
    nop
    ld [$1d61], sp
    dec de
    dec sp
    ld c, h
    call z, $0838
    ld [hl], b
    db $10
    ldh [rNR41], a
    call nz, $f043
    adc h
    adc c
    jr nc, jr_048_75c7

    nop
    ld h, $01
    ld c, l
    ld [bc], a
    ld a, e
    rlca
    db $fc
    inc e
    rst $38
    ld [c], a
    cp $02
    ld c, b
    rst $38
    ld bc, $0210
    rst $38

jr_048_75c7:
    inc bc
    rst $20
    rra
    rst $38
    rst $38
    rra
    ld a, a
    cp $ff
    ld sp, hl
    cp $23
    inc a
    dec de
    inc e
    ld b, e
    rlca
    inc b
    ld b, $06
    dec b
    ld [$000e], sp
    ld [de], a
    db $10
    ld [hl+], a
    inc d
    ld bc, $0f0f
    ld a, a
    rlca
    inc b
    inc c
    ld [de], a
    ld [de], a
    ld [c], a
    ld [c], a
    add h
    add h
    and e
    ei
    add e
    rst $28
    dec e
    jr nc, jr_048_75c7

    jr nz, jr_048_7619

    ld h, b
    ld h, b
    cp [hl]
    cp [hl]
    add d
    add d
    db $fc
    inc c
    ldh a, [$f0]
    ld d, h
    inc d
    xor d
    ld a, [de]
    ld b, d
    ld [hl+], a
    add h
    inc h
    inc b

jr_048_760c:
    ld b, h
    adc b
    ld [$1050], sp
    ldh [$60], a
    daa
    add b
    add l
    ld bc, $8352

jr_048_7619:
    ld bc, $0a5c
    ret nc

    db $10
    ldh a, [rNR10]
    cp b
    ld c, b
    jr jr_048_760c

    ld c, b
    ld e, b
    sub b
    sub l
    ld [bc], a
    add hl, hl
    ldh [rNR50], a
    ld bc, $0e06
    jr nc, jr_048_76a1

jr_048_7631:
    nop
    add b
    call nc, $29c0
    jr nz, jr_048_7693

    ld b, b
    sub e
    add b
    ld h, a
    ld b, b
    dec l
    jr nz, jr_048_769f

    ld b, h
    cp e
    adc b
    rst $30
    or b
    ld d, a
    ld d, b
    cpl
    ld hl, $223e
    ld a, h
    ld c, h
    ld [hl], c
    ld d, c
    ld hl, $8721
    nop
    ld [bc], a
    add l
    nop
    jr nc, jr_048_766b

    ld h, c
    ld h, c
    reti


    cp c
    add $bf
    ld h, b
    ld e, a
    ld d, b
    ld l, a
    jr nc, jr_048_76d3

    xor b
    or a
    inc h
    dec sp
    ld [hl-], a
    dec e
    ld [hl], c

jr_048_766b:
    ld e, $43
    ldh a, [$1f]
    ldh [$8f], a
    pop af
    rra
    db $e3
    ccf
    rst $20
    ld a, $e6
    ld a, $ee
    ld a, d
    db $fc
    ld d, c
    push af
    add c
    xor e
    add d
    pop de
    add b
    add c
    add b
    db $10
    add b
    jr nz, jr_048_76a9

    ld b, h
    ld h, b
    ret nz

    or h
    ret nz

    sub l
    and b
    bit 4, c
    ld b, c

jr_048_7693:
    inc h
    ld b, b
    inc a
    jr z, @+$34

    inc a
    rra
    ld e, $04
    inc c
    ld [de], a
    inc sp

jr_048_769f:
    ld b, l
    ld b, b

jr_048_76a1:
    ld [de], a
    jr c, jr_048_7631

    adc b
    ld a, e
    ldh a, [$5f]
    ret z

jr_048_76a9:
    ld e, a
    ret nc

    sbc a
    sbc c
    sbc a
    adc [hl]
    adc $84
    ld b, l
    ret nz

    ld h, b
    pop bc
    jp $b1e0


    ld [c], a
    and e
    or h
    ld d, e
    call nc, $f0ff
    sbc a
    sbc b
    rrca
    rra
    inc b
    inc bc
    jr nc, jr_048_76ff

    ld a, h
    ld c, h
    xor $c2
    ld [$fe36], a
    ld e, $fd
    inc b
    cp l
    dec b

jr_048_76d3:
    dec de
    ld [bc], a
    rrca
    inc b
    sub a
    inc b
    dec bc
    adc b
    rrca
    sbc b
    scf
    db $10
    ld e, $31
    dec l
    ld h, e
    cp e
    and [hl]

jr_048_76e5:
    push de
    ld c, [hl]
    rst $38
    db $dd
    ld [c], a
    and d
    jr jr_048_7705

    inc h
    inc h
    sub [hl]
    jp nc, $31ff

    rst $38
    ld bc, $18ef
    rst $28
    inc h
    ld e, a
    call nz, $2c9b
    dec sp
    ld c, h

jr_048_76ff:
    ld a, e
    adc h
    ld b, e
    rst $30
    jr jr_048_76e5

jr_048_7705:
    ld hl, $3ff0
    rst $38
    rrca
    adc $00
    ret nz

    nop
    add e
    nop
    call z, Call_048_7ff3
    ld a, a
    call z, $30cf
    ccf
    ld a, b
    daa
    daa
    ld a, b
    ld b, b
    ld a, a
    ld b, b
    rst $38
    pop bc
    rst $38
    jp nz, $c57f

    ld a, a
    call Call_048_437b
    db $dd
    ld [hl], e
    rrca
    rst $38
    ld [hl+], a
    ld a, e
    add [hl]
    ei
    ld b, $df
    inc h
    or a
    ld c, h
    ld a, a
    ret z

    rst $18
    add sp, -$11
    rst $38
    adc c
    ld [bc], a
    inc a
    ld bc, $a0e0
    ld b, e
    ldh a, [$90]
    dec b
    ldh [rNR41], a
    rst $30
    rla
    ld hl, sp+$18
    ld b, e
    ldh a, [rNR10]
    dec e
    ld a, h
    db $fc
    jp c, $328e

    ld e, $56
    inc a
    xor l
    ld a, b

jr_048_775a:
    jp c, $37f0

    db $e3
    inc l
    db $ec
    jr jr_048_775a

    ld b, $fe
    add c
    ld a, a
    ld a, e
    add a
    inc a
    db $fd
    ldh [$d2], a
    ldh a, [$a2]
    add a
    ld bc, $12f8
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    ld a, [bc]
    ld [$1204], sp
    ld e, $12
    add hl, bc
    inc h
    dec [hl]
    inc l
    ld a, [de]
    add hl, de
    ld a, [bc]

jr_048_7783:
    add hl, bc
    rlca
    jp nz, Jump_048_6990

    ld [bc], a
    db $dd
    cp l
    jp nz, $0384

    ld d, e
    ld b, e
    jr z, jr_048_77c9

    ldh [rNR44], a
    dec d
    dec de
    ld [de], a
    dec e
    ld de, $381e
    cpl

jr_048_779c:
    db $10
    ld e, a
    ld [hl], c
    ld e, a
    ld sp, $e29f
    cp [hl]
    ld h, [hl]
    cp [hl]
    ld l, [hl]
    ld a, [hl-]
    db $fd
    add hl, sp
    db $fd
    ld de, $12ff
    rst $30
    jr nz, jr_048_779c

    jr nz, jr_048_7783

    ld b, b
    ldh [$50], a
    sub b
    and b
    adc e
    inc bc
    or b
    ldh [$2c], a
    ld e, h
    ld e, h
    cp $be
    cp d
    sbc d
    adc $42
    db $f4
    inc a
    cp l
    dec c

jr_048_77c9:
    ld a, [de]
    inc bc
    cpl
    dec b
    dec d
    ld [bc], a
    dec bc
    ld [bc], a
    add hl, bc
    inc b
    dec d
    inc b
    inc l
    inc b
    jr nc, jr_048_783d

    sub b
    sbc b
    add c
    ld [$84cd], sp
    db $dd
    adc a
    daa
    inc hl
    inc hl
    daa
    rra
    rla
    inc e
    ld d, $1d
    add [hl]
    nop
    add hl, hl
    adc [hl]
    nop
    add b
    db $10
    pop bc
    db $e3
    pop hl
    push af
    di
    rst $30
    ld a, [c]
    rst $18
    jp z, $0efb

    rst $28
    sbc h
    ld a, e
    ldh a, [$e5]
    sub b
    adc l
    nop
    ld [hl], b
    dec b
    ld e, $7f
    dec a
    ld a, a
    ld a, [hl]
    rst $38
    adc e
    nop
    add h
    rst $38
    db $ec
    daa
    ld [$0101], sp
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    add hl, bc
    add hl, bc
    ld [bc], a
    ld [hl+], a
    ld [de], a
    nop
    inc b
    ld [hl+], a
    inc h
    add hl, de
    add hl, bc
    ld c, c
    ld c, l
    ld c, l
    ld c, e
    ld c, e
    ld e, l
    sbc c
    or a
    sub l
    sub $95
    or e
    sub d
    db $d3
    sub d
    or c
    sub c
    ld e, c
    ld c, c
    ld l, c
    ld c, c
    inc [hl]
    inc h
    inc e
    inc e

jr_048_783d:
    add e
    xor e
    ld bc, $0101
    ld b, e
    inc bc
    ld [bc], a
    ld b, e
    rlca
    inc b
    dec bc
    rrca
    ld [$101f], sp
    inc hl
    jr nz, jr_048_78ab

    ld h, l
    ld e, a
    ld h, l
    ld a, $3e
    sub e
    push de
    dec e
    rlca
    ld b, $0a
    dec c
    dec d
    ld a, [de]
    ld a, [de]
    dec d
    inc [hl]
    dec hl
    ld hl, $223f
    ld a, $15
    inc e
    dec de
    jr jr_048_7882

    db $10
    rla
    ld sp, $e16f
    cpl
    inc hl
    ld l, a
    ld h, e
    rst $18
    jp Jump_048_5e43


    ld b, a
    ldh [$2f], a
    cp [hl]
    add [hl]
    cp l
    adc h
    cp e
    adc b
    ld a, a

jr_048_7882:
    ld [$1077], sp
    ld l, a
    ld bc, $067f
    dec a
    ld [$003f], sp
    ccf
    ld bc, $037f
    db $fd
    dec b
    ld sp, hl
    inc c
    ei
    ld c, $ff
    sbc [hl]
    pop hl
    pop af
    add b
    add b
    add d
    add e
    add a
    add h
    rst $08
    ld b, a
    ld hl, sp+$38
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b

jr_048_78ab:
    inc hl
    add b
    sub e
    rst $20
    inc e
    rra
    jr @+$37

    ld a, [hl+]
    ld [$57d5], a
    xor $8f
    ld sp, hl
    cp a
    pop af
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld bc, $11ef
    rst $28
    ld sp, $61ff
    rst $38
    pop hl
    rst $18
    pop hl
    sbc [hl]
    ld b, e
    jp $1c3e


    add e
    inc a
    add a
    ld a, h
    rlca
    ld a, b
    rrca
    ld sp, hl
    rrca
    pop af
    rra
    ld a, [c]
    rra
    db $e4
    ccf
    ld hl, sp+$7f
    db $ed
    rst $00
    ccf
    ld c, $ff
    jr nc, @+$01

    ret nz

    rst $38
    inc bc
    db $fc
    inc c
    ld b, e
    ldh a, [rNR10]
    rlca
    ldh [rNR41], a
    ldh [$60], a
    ldh [$a0], a
    ldh [rNR41], a
    ld b, e
    ret nz

    ld b, b
    inc bc
    add b
    ld b, b
    ret nz

    ret nz

    sbc c
    nop
    db $10
    dec d
    add e
    add d
    push bc
    ld b, h
    ld_long a, $ff38
    nop
    cp $e0
    rst $38
    jr @-$06

    rlca
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ld b, l
    jr nz, @+$01

    nop
    ld b, b
    ld b, h
    rst $38
    ld b, c
    inc bc
    ld b, d
    cp $43
    rst $38
    ld b, h
    add a
    db $fc
    nop
    db $fd
    ld b, e
    ld c, $fa
    dec e
    inc e
    db $f4
    jr c, @-$16

    ld [hl], b
    ret nc

    pop af
    sub c
    ld [c], a
    ld [hl+], a
    ld a, [c]
    ld [hl+], a
    db $ec
    ld b, h
    call c, $aec8
    adc b
    rst $18
    sub b
    cp a
    sbc b
    rst $10
    sub h
    xor a
    adc h
    ld d, a
    ld b, d
    dec sp
    ld a, [hl-]
    xor l
    nop
    jp nc, $0083

    ld d, [hl]
    ret


    add b
    inc d
    rra
    rra
    ld a, a
    ld h, b
    rst $38
    add b
    ld hl, sp+$07
    ld [hl], a
    ld [$10af], sp
    ld l, a
    db $10
    adc a
    jr nc, jr_048_7971

    ld hl, sp+$00
    rst $38
    nop
    call nz, $2401

jr_048_7971:
    and e
    ld bc, $e021
    add hl, sp
    nop
    rst $38
    ld h, b
    rst $38
    sub b
    sbc a
    ld [$1f0f], sp
    rla
    ld a, h
    ld l, h
    ldh a, [$90]
    ldh [$60], a
    add e
    add e
    dec c
    inc c
    ld de, $3910
    jr nz, jr_048_79ee

    ld b, b
    sbc a
    add b
    db $fc
    add c
    di
    inc bc
    rst $00
    rlca
    ld c, a
    ld e, a
    ccf
    ccf
    cpl
    ccf
    ld h, e
    daa
    ld h, c
    ld hl, $21e0
    and b
    jr nz, jr_048_79a7

jr_048_79a7:
    db $10
    or c
    ld de, $13f1
    ld a, [c]
    dec bc
    ld sp, hl
    add hl, bc
    ld c, c
    ld hl, sp-$78
    rlca
    jr c, @+$0a

    ldh a, [rNR10]
    or b
    ld d, b
    ldh [$e0], a
    ret


    ld bc, $1443
    ldh [rNR41], a
    ld h, b
    and b
    add b
    ld b, b
    rst $00
    ld b, a
    cp $39
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    ld c, $ff

jr_048_79d4:
    ld sp, $f1c5
    ldh [$29], a
    rst $38
    inc sp
    rst $38
    ld c, h
    call z, $f8f8
    cp $86
    ld a, a
    ld h, c
    inc de
    db $10
    add hl, bc
    ld [$8889], sp
    adc e
    ld c, c
    sbc $12

jr_048_79ee:
    call c, $c834
    jr z, jr_048_79d4

    and c
    ld [c], a
    and d
    rst $20
    and h
    rst $38
    ret c

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$19
    and $e1
    ld [hl+], a
    pop af
    dec h
    ldh a, [$09]
    ld [hl], b
    ldh a, [$e0]
    ldh [rLCDC], a
    ret nz

    nop
    nop
    ld bc, $df01
    nop
    add hl, hl
    dec b
    add b
    add b
    or b
    or b
    ld l, b
    ret c

    ld b, e
    ld [$0ff8], sp
    inc b
    db $fc
    add a
    rst $38
    ld b, c
    rst $38
    ld hl, $22ff
    cp $1c
    db $fc
    ret nc

    ldh a, [$60]
    ld h, b
    ld h, c
    ld de, $0606
    sbc c
    sbc c
    pop af
    ld h, c
    ld [$5cc2], a
    inc c
    or b
    db $10
    ld h, b
    ld h, b
    and b
    and b
    jr nz, jr_048_7a64

    inc hl
    db $10
    ld [$10b0], sp
    ldh a, [rNR10]
    ret nc

    db $10
    ret z

    ld [$43e8], sp
    ld [$00f8], sp
    ld [$f84b], sp
    adc b
    rlca
    sbc b
    adc b
    add sp, $18
    ld a, b
    xor b
    ldh a, [$f0]
    ld l, a
    add a
    nop

jr_048_7a64:
    jr nc, jr_048_7a66

jr_048_7a66:
    ld [$4822], sp
    ld b, $49
    ld c, c
    ld d, l
    sub l
    cp e
    sbc e
    db $dd
    add [hl]
    nop
    ccf
    rlca
    ld e, e
    ld c, d
    ld l, c
    ld c, c
    dec [hl]
    dec h
    dec e
    dec e
    add h
    nop
    ld d, h
    nop
    inc bc
    adc c
    nop
    ld e, d
    add hl, bc
    ccf
    jr nz, @+$49

    ld b, c
    or [hl]
    jp z, $cabe

    ld a, h
    ld a, h
    add [hl]
    nop
    inc h
    ld b, $03
    dec b
    ld b, $0a
    dec c
    inc c
    dec bc
    and l
    ldh a, [rNR11]
    ld a, [bc]
    ld c, $0d
    inc c
    dec de
    jr c, @+$59

    ret nc

    scf
    ld sp, $616f
    xor a
    and e
    cpl
    inc hl
    ld e, a
    ld b, e
    sbc b
    nop
    sbc [hl]
    ld b, $02
    rst $38
    ld b, $ff
    inc c
    rst $38
    ld [$0088], sp
    cp [hl]
    ld b, $87
    rst $08
    ld b, a
    ld hl, sp+$78
    ret nz

    ld b, b
    or l
    ld [bc], a
    adc h
    and e
    ld [bc], a
    ld [hl-], a
    ld c, $1d
    ld a, [de]
    ld [$51f5], a
    xor $86
    ld sp, hl
    adc a
    or $9f
    jp hl


    cp a
    pop af
    ld a, a
    sub [hl]
    nop
    rst $30
    add hl, de
    ld a, l
    rlca
    ld a, c
    rrca
    ld a, [$f20f]
    rra
    db $f4
    rra
    add sp, $3f
    ld sp, hl
    ld a, a
    rst $28
    add $3f
    inc c
    rst $38

jr_048_7af3:
    ld sp, $c6fe
    ld hl, sp+$08
    ldh a, [rNR10]
    adc e
    ld bc, $0728
    ldh [rNR41], a
    ret nz

    jr nc, jr_048_7af3

    sub b
    ldh [$e0], a
    add a
    ld bc, $01ae
    push bc
    call nz, $0184
    ld e, d
    rrca
    nop
    rst $38
    ld a, b
    ld hl, sp-$79
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld [bc], a
    rst $38
    inc b
    ld b, [hl]
    rst $38
    ld [$1043], sp
    rst $38
    inc c
    jr nz, @+$01

    ld hl, $43ff
    cp $f3
    ld [hl+], a
    rst $28
    ld b, h
    rst $18
    ret z

    xor a
    add [hl]
    ld bc, $0597
    xor e
    adc d
    ld d, l
    ld b, c
    add hl, sp

jr_048_7b3d:
    add hl, sp
    ld l, e
    and l
    ld [bc], a
    ld b, b
    ld [bc], a
    inc a
    rst $38
    jp $ff4a


    nop
    dec b
    rlca
    rst $38
    rra
    di
    ld a, h
    db $ec
    add l
    ld bc, $01ea
    rst $08
    rra
    ld b, e
    cp a
    ccf
    dec b
    inc de
    rla
    ld de, $1811
    add hl, bc
    add e
    ld [bc], a
    or c
    rlca
    jp hl


    add hl, bc
    call $ee07
    add a
    ld a, a
    ld b, e
    ld b, e
    ld a, [hl]
    ld b, d
    rlca
    inc a
    call nz, $84fc
    inc bc
    rst $38
    inc c
    db $fc
    adc e
    ld [bc], a
    ld d, h
    sbc d
    nop
    xor h
    add h
    inc bc
    sbc e
    add h
    inc bc
    or h
    dec b
    rlca
    sbc $e0
    rst $30

jr_048_7b89:
    jr c, jr_048_7b89

    add h
    db $ec
    inc bc
    ld hl, sp+$1f
    ld a, a
    ldh [$85], a
    inc b
    inc h
    ld bc, $07f8
    and e
    ld bc, $02d0
    rrca
    rst $38
    db $10
    ld c, b
    rst $38
    jr nz, jr_048_7ba6

    ld b, e
    rst $38
    ld b, a

jr_048_7ba6:
    db $fc
    ld h, c
    dec c
    rst $38
    rst $38
    ld a, a
    nop
    cp a
    nop
    ld a, h
    inc bc
    or e
    inc c
    rst $28
    db $10
    rst $18
    jr nz, jr_048_7b3d

    ld bc, $02d0
    rlca
    rst $38
    inc c
    add h
    and a
    add e
    ld [bc], a
    ld c, d
    rlca
    ld bc, $01ff
    cp $07
    rst $38
    inc c
    db $fc
    add e
    ld [bc], a
    add d
    ld bc, $8383
    push bc
    inc b
    inc de
    ld b, e
    ldh a, [rNR10]
    inc c
    ld h, b
    ldh [$f8], a
    jr c, @+$01

    rlca
    add e
    ld a, h
    nop
    rst $38
    db $fc
    rst $38
    inc bc
    ld c, b
    rst $38
    nop
    ld bc, $e060
    and e
    inc bc
    ld e, b
    inc b
    inc b
    db $fc
    add h
    db $fc
    ld h, d
    ld b, h
    cp $02
    ld bc, $fc0c
    add e
    ld [bc], a
    cp $89
    ld [bc], a
    add $03
    ld d, c
    xor $87
    ld hl, sp-$75
    inc bc
    call nz, $008f
    cp h
    adc a
    ld bc, $832c
    nop
    ldh a, [$0b]
    cp c
    pop af
    pop hl
    pop bc
    add c
    add c
    rrca
    ld bc, $112f
    rst $28
    ld sp, $0085
    sub b
    inc d
    ld l, e

Call_048_7c24:
    pop hl
    inc hl
    inc hl
    ld h, e
    ld h, e
    rst $00
    jp Jump_048_474e


    ei
    ld h, c
    di
    pop hl
    jp $86e1


    jp $c306


    ld c, $84
    ld bc, $0c0b
    ld e, [hl]
    ld b, a
    and [hl]
    add [hl]
    adc h
    adc h
    adc c
    adc b
    dec de
    ld [$1017], sp
    rrca
    sub d
    inc bc
    add c
    rst $38
    ld a, l
    rrca
    ld bc, $0403
    inc c
    jr jr_048_7c65

    scf
    jr nz, jr_048_7c87

    jr c, jr_048_7c6f

    ld d, $03
    ld [bc], a
    ld bc, $ec01
    ld c, h
    dec bc
    ld [$0700], sp

jr_048_7c65:
    inc b
    dec bc
    nop
    rlca
    nop
    inc bc
    ld [bc], a
    ld bc, $8400

jr_048_7c6f:
    jp c, $0f13

    rra
    rst $38
    pop hl
    cpl
    ld bc, $015f
    cp a
    nop
    rst $38
    nop
    ld [hl], a
    ld hl, sp-$79
    adc a
    ld bc, $0200
    dec b
    db $ec
    dec l

jr_048_7c87:
    inc hl
    ld bc, $0343
    ld [bc], a
    ld [$0407], sp
    rlca
    inc c
    nop
    db $10
    ld [de], a
    dec d
    rrca
    jp $e0d2


    jr nc, @-$7e

    nop
    ret nz

    nop
    ld h, c
    inc c
    ld a, l
    dec e
    ld a, [hl]
    inc e
    ccf
    ccf
    rst $38
    ld [hl], l
    rst $38
    ld l, e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    rst $10
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    rst $28
    ld a, a
    cp a
    rst $38
    rst $28
    ld a, a
    rst $38
    cp $9d
    cp [hl]
    cp e
    sbc h
    ld e, a
    ret nz

    ld b, a
    ret nz

    xor e
    ld h, h
    rra
    ld [hl], c
    dec b
    ld c, $43
    rlca
    inc b
    ld c, h
    inc bc
    ld [bc], a
    ld c, b
    inc b
    rlca
    ldh [$30], a
    dec b
    ld [$080e], sp
    ld [$1018], sp
    stop
    jr nz, jr_048_7ce1

jr_048_7ce1:
    ld b, b
    add b
    add b
    add c
    add b
    adc e
    nop
    ld d, a
    nop
    xor a
    nop
    rst $38
    nop
    cp $01
    ld a, [$f00e]
    db $10
    ld h, b
    ld h, b
    add b
    add b
    nop
    add b
    ld b, b
    add h
    ld b, b
    xor h
    and h
    ld e, d

Call_048_7d00:
    pop bc
    ccf
    rlca
    cp $fc
    rst $38
    ei
    jr z, @+$01

    add hl, de
    ei
    db $fc
    rst $28
    ldh a, [rIE]
    jp nz, $8cff

    ld [hl], a
    sub h
    db $e3
    inc [hl]
    rst $38
    jr c, @+$01

    ld h, b
    ei
    inc b
    ei
    jr @+$01

    ld h, b
    cp a
    ret c

    ei
    db $e4
    ld e, l
    rst $38
    nop
    inc b
    cp a
    nop
    ld e, a
    nop
    ccf
    add h
    add e
    ld [bc], a
    cp a
    nop
    ld a, a
    add [hl]
    sub e
    rlca
    rst $18
    ccf
    rst $28
    rst $38

jr_048_7d3a:
    ld [hl], l
    ld [hl], a
    ld [hl+], a
    ld [hl+], a
    ld h, h
    inc e
    stop
    jr nc, jr_048_7d64

    ld d, e
    ld d, b
    xor a
    add sp, -$09
    jr nc, jr_048_7d3a

    xor b
    rst $30
    di
    db $ec
    rst $20
    ld hl, sp-$0b
    ld_long a, $fff0
    ld a, [$7bfd]
    db $fc
    db $fc
    ccf
    call c, Call_048_433f
    cp $1f
    ld [de], a
    rst $28
    rra
    rst $38

jr_048_7d64:
    rrca
    db $fc
    rrca
    ld a, [$e90d]
    ld e, $f0
    rra
    pop hl
    ld e, $c0
    ccf
    ld hl, sp+$07
    rst $38
    add h
    ld bc, $0543
    ei
    rlca
    rst $38
    ld bc, $01fe

jr_048_7d7e:
    add sp, $23
    rst $38
    nop
    add hl, bc
    rst $18
    ldh [$fd], a
    cp $b7
    rst $38
    ld d, d
    ld [hl], d
    jr nz, jr_048_7dad

    ld h, h
    ldh [$3a], a
    ret nz

    ld [bc], a
    pop bc
    inc b
    db $db
    jr jr_048_7d7e

    ld [hl], b
    adc a
    ret nz

    ld a, $93
    ld l, h
    ld b, b
    cp a
    add d
    ld a, l
    inc d
    db $eb
    jr z, @-$27

    ld b, b
    cp [hl]
    add b
    ld a, h
    nop
    rst $38
    ld c, d
    or l

jr_048_7dad:
    inc d
    db $eb
    nop
    rst $38
    add b
    ld a, h
    ret nc

    xor b
    adc b
    db $76
    ld b, b
    cp a
    jr @+$01

    ld a, a
    add a
    ccf
    ret nz

    rra
    ldh [$fe], a
    ld bc, $02fe
    inc e
    db $e4
    rst $38
    db $fd
    ld [c], a
    ld a, [c]
    inc h
    ldh a, [rNR43]
    ld hl, sp+$0f
    ld a, b
    ld hl, sp-$2c
    ld a, h
    xor h
    ld a, h
    db $f4
    inc a
    ld a, [$de3e]
    ccf
    rst $38
    rra
    cp $0f
    ld b, e
    rst $38
    rlca
    dec d
    ei
    rlca
    xor a
    inc bc
    ld e, l
    inc bc
    xor a
    ld bc, $015e
    cp $01
    db $fd
    inc bc
    di
    adc h
    ld a, a
    ld [hl], b
    dec c
    inc c
    inc bc
    inc bc
    ld h, c
    inc bc
    ret nz

    jr nc, jr_048_7dff

jr_048_7dff:
    ldh [$c5], a
    nop
    and $05
    ld b, b
    inc h
    nop
    ld hl, sp+$00
    ldh a, [$83]
    adc l
    and [hl]
    nop
    dec l
    inc b
    add b
    ldh [rNR23], a
    nop
    ldh [$a9], a
    nop
    push bc
    add e
    adc e
    ld de, $c0c0
    ldh [rNR41], a
    ld [hl], b
    sub b
    jr jr_048_7e2b

    ret z

    ld c, b
    db $ec
    sub h
    db $fc
    or h
    ld e, h
    ld d, h

jr_048_7e2b:
    inc c
    inc c
    or c
    nop
    cp [hl]
    ld bc, $c0c0
    add l
    add l
    dec b
    ldh [$e0], a
    ldh a, [$f0]
    ret nz

    ldh a, [$83]
    add l
    ldh [$37], a
    add b
    ret nz

    ldh [$60], a
    ldh a, [rNR10]
    ld d, b
    or b
    ldh [$e0], a
    nop
    rlca
    inc c
    ccf
    ld c, e
    ld b, c
    ld [hl], a
    add e
    rst $38
    and a
    ld a, a
    ld h, a
    ld a, $2f
    dec e
    rra
    ld a, [de]
    rra
    dec d
    rra
    dec hl
    ccf
    scf
    ccf
    dec hl
    ccf
    ld d, a
    ld a, a
    ld l, a
    ld a, a
    ld e, l
    ld a, [hl]
    ld a, e
    ld a, h
    ld l, a
    ldh a, [$1f]
    add b
    xor a
    sub b
    ld a, a
    ld b, e
    inc a
    ccf
    rlca
    ld b, $8a
    nop
    inc l
    dec c
    jr nz, jr_048_7e7e

jr_048_7e7e:
    jr jr_048_7e80

jr_048_7e80:
    ld e, $00
    rrca
    dec h
    db $db
    ld d, a
    xor a
    cp a
    rst $18
    cp a
    ld [hl+], a
    rst $38
    ld [$ff5f], sp
    cp a
    rst $38
    ld a, [hl]
    rst $38
    cp h
    rst $38
    ld a, a
    ld h, $ff
    add hl, bc
    rst $30
    ld hl, sp-$41
    ret nz

    cp $0f
    db $e3
    ld a, [hl-]
    rst $38
    ld a, b
    ld b, h
    rst $38
    nop
    ld b, $e1
    rst $38
    add $fb
    ld a, [hl-]
    db $e3
    ld [c], a
    ld b, a
    inc bc
    ld [bc], a
    ld bc, $0601
    add l
    ld bc, $862a
    ld [bc], a
    add $09
    ret nz

    add b
    ld b, h
    ret nz

    inc l
    add b
    ld a, [hl]
    ld b, h
    cp e
    db $fc
    ld a, [hl+]
    rst $38
    inc b
    adc a
    rst $38
    cpl
    rst $38
    rst $38
    and h
    ld bc, $055d
    ei
    db $fc
    rst $08
    ldh a, [rIE]
    nop
    and l
    ld bc, $06fe
    ld sp, hl
    ld e, $ff
    jr nz, @+$01

    ld b, b
    rst $38
    and l
    ld bc, $a7ff
    inc bc
    ld b, e
    rla
    inc c
    nop
    inc e
    nop
    add hl, sp
    nop
    ld a, a
    ld d, b
    xor a
    ld h, e
    sbc h
    add $39
    jp z, $fdf5

    ld a, [c]
    db $fc
    ei
    db $fc
    rst $38
    db $fd
    cp $fe
    and [hl]
    inc bc
    ld h, c
    dec bc
    cp h
    ld a, a
    reti


    ld a, $da
    dec a
    ldh a, [$1f]
    ldh [$1f], a
    ld sp, hl
    ld b, $87
    ld bc, $04fe
    ei
    ld b, $ff
    ld bc, $85fe
    inc bc
    ccf
    ldh [rLCDC], a
    ld [bc], a
    nop
    inc c
    nop
    inc a
    nop
    ld hl, sp+$00
    ld hl, sp-$80
    ld [hl], b
    nop
    ldh [rP1], a
    ldh [rTMA], a
    pop bc
    db $10
    adc $00
    db $fc
    add b
    ld a, b
    nop
    db $fc
    sub h
    ld l, e
    ld a, [hl+]
    call nc, $f000
    add b
    ld h, b
    sub b
    ldh [rLCDC], a
    cp b
    add b
    ld a, [hl]
    nop
    ldh [rLCDC], a
    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    adc $31
    rst $00
    ld b, c
    cp a
    sub c
    rst $38
    or l
    rst $10
    db $fd
    ld a, [$89fa]
    ld [bc], a
    db $76
    adc b
    inc bc
    jr nc, @+$08

    ld b, a
    inc a
    inc a
    inc d
    inc d
    ld [$8708], sp
    nop
    ldh [$0d], a
    nop
    ld a, c
    add hl, hl
    ld d, [hl]
    inc d
    dec hl
    ld [$01f7], sp
    rst $38
    rlca
    rst $38
    sbc a
    rst $38

jr_048_7f80:
    adc c
    inc bc
    ld d, [hl]
    adc b
    inc bc
    ld [hl], b
    ld c, $e0

jr_048_7f88:
    rst $38
    ld hl, sp+$6f
    ld a, l

jr_048_7f8c:
    ld e, a
    ld a, l
    ld c, a
    ld e, d
    ld c, l
    ld a, d
    ld e, e
    ld a, [hl]
    inc sp
    ld [hl-], a
    adc b
    inc bc
    adc b
    add [hl]
    ld bc, $0751
    ret nz

    ccf
    ld b, d
    cp l
    add h
    ld a, e
    ld a, [bc]
    push af
    adc d
    inc bc
    ret nz

    add e
    inc bc
    ret


    adc b
    ld bc, $15bf
    jr z, jr_048_7f88

    ld [hl], b
    adc a
    jr z, jr_048_7f8c

    add e
    ld a, h
    rlca
    ld hl, sp+$05
    ld_long a, $ffc0
    ld a, [c]
    db $fd
    ei
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    adc c
    inc bc
    xor $03
    jp c, $d93d

    ld a, $85
    ld bc, $05ec
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    add a
    inc b
    ld [$028b], sp
    ld d, b
    dec c
    nop
    rst $38
    ld b, b
    ld hl, sp+$30
    ldh a, [$38]
    ret z

    call c, Call_048_7c24
    add d
    ld a, [hl]
    add d
    add l
    inc b
    ld c, d
    dec b
    ld [hl], a
    sbc b
    rst $38

Call_048_7ff3:
    jr nc, @+$01

    jr nz, jr_048_7f80

    ld bc, $ff76
    nop
    nop
    nop
    nop
    nop
    nop
