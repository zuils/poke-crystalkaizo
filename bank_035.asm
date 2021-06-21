; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $035", ROMX[$4000], BANK[$35]

    or $41
    ld e, $42
    inc a
    ld b, d
    adc c
    ld b, d
    xor h
    ld b, d
    ld a, [c]
    ld b, d
    dec hl
    ld b, e
    ld e, d
    ld b, e
    ld a, l
    ld b, e
    db $dd
    ld b, e
    ei
    ld b, e
    rra
    ld b, h
    ld b, a
    ld b, h
    ld h, d
    ld b, h
    ld l, [hl]
    ld b, h
    or b
    ld b, h
    jp nc, $1744

    ld b, l
    ld b, c
    ld b, l
    add b
    ld b, l
    and a
    ld b, l
    call c, $2645
    ld b, [hl]
    ld e, h
    ld b, [hl]
    sbc b
    ld b, [hl]
    pop hl
    ld b, [hl]
    ld sp, $5947
    ld b, a
    adc h
    ld b, a
    cp c
    ld b, a
    db $db
    ld b, a
    ld d, a
    ld c, b
    ld [hl], d
    ld c, b
    call nz, $0948
    ld c, c
    ld [hl], $49
    ld e, e
    ld c, c
    adc l
    ld c, c
    db $fc
    ld c, c
    inc hl
    ld c, d
    ld c, c
    ld c, d
    ld [hl], e
    ld c, d
    cp l
    ld c, d
    and $4a
    ld a, [bc]
    ld c, e
    dec sp
    ld c, e
    ld e, h
    ld c, e
    xor c
    ld c, e
    cp h
    ld c, e
    push hl
    ld c, e
    ld b, $4c
    sbc e
    ld c, h
    cp a
    ld c, h
    push af
    ld c, h
    ld [$824d], sp
    ld c, l
    sbc d
    ld c, l
    ret nc

    ld c, l
    jp hl


    ld c, l
    ld b, a
    ld c, [hl]
    ld h, c
    ld c, [hl]
    or c
    ld c, [hl]
    call nc, $f34e
    ld c, [hl]
    daa
    ld c, a
    adc c
    ld c, a
    and h
    ld c, a
    rst $18
    ld c, a
    ld l, c
    ld d, b
    sbc b
    ld d, b
    cp c
    ld d, b
    rst $30
    ld d, b
    daa
    ld d, c
    ld c, b
    ld d, c
    ld h, h
    ld d, c
    sbc d
    ld d, c
    pop de
    ld d, c
    ld hl, sp+$51
    scf
    ld d, d
    ld e, [hl]
    ld d, d
    sbc h
    ld d, d
    ret nc

    ld d, d
    ld a, [$3452]
    ld d, e
    ld d, l
    ld d, e
    and l
    ld d, e
    call nz, $2353
    ld d, h
    ld c, b
    ld d, h
    adc h
    ld d, h
    xor e
    ld d, h
    ld a, [c]
    ld d, h
    ld a, [de]
    ld d, l
    ld b, d
    ld d, l
    sub d
    ld d, l
    jp hl


    ld d, l
    inc e
    ld d, [hl]
    ld d, e
    ld d, [hl]
    add b
    ld d, [hl]
    xor a
    ld d, [hl]
    jp $e156


    ld d, [hl]
    ld l, $57
    ld c, d
    ld d, a
    ld a, l
    ld d, a
    ret z

    ld d, a
    add hl, de
    ld e, b
    ld h, l
    ld e, b
    adc a
    ld e, b
    rst $00
    ld e, b
    dec d
    ld e, c
    ld h, b
    ld e, c
    sub c
    ld e, c
    call z, $ea59
    ld e, c
    ld [hl-], a
    ld e, d
    ld c, e
    ld e, d
    ld l, h
    ld e, d
    adc b
    ld e, d
    or d
    ld e, d
    rst $08
    ld e, d
    or $5a
    ld h, b
    ld e, e
    ret c

    ld e, e
    db $f4
    ld e, e
    scf
    ld e, h
    ld d, [hl]
    ld e, h
    add $5c
    ld [$275d], sp
    ld e, l
    ld e, b
    ld e, l
    sub b
    ld e, l
    ldh a, [$5d]
    dec e
    ld e, [hl]
    ld b, d
    ld e, [hl]
    add b
    ld e, [hl]
    xor [hl]
    ld e, [hl]
    db $db
    ld e, [hl]
    or $5e
    inc e
    ld e, a
    dec [hl]
    ld e, a
    ld a, e
    ld e, a
    and a
    ld e, a
    jp nc, Jump_035_425f

    ld h, b
    sub [hl]
    ld h, b
    rrca
    ld h, c
    inc l
    ld h, c
    ld l, l
    ld h, c
    or e
    ld h, c
    inc d
    ld h, d
    nop
    ld b, h
    jr c, jr_035_4176

    ld h, e
    ld b, h
    and a
    ld b, h
    push af
    ld b, h
    dec sp
    ld b, l
    or e
    ld b, l
    db $d3
    ld b, l
    ld [hl], $46
    ld [hl], h
    ld b, [hl]
    adc d
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ret c

    ld b, [hl]
    jr nz, jr_035_4191

    ld d, a
    ld b, a
    adc [hl]
    ld b, a
    xor h
    ld b, a
    db $10
    ld c, b
    ld a, c
    ld c, b
    sbc b
    ld c, b
    call nz, $f548
    ld c, b
    ld [de], a
    ld c, c
    ld a, [hl+]
    ld c, c
    ccf
    ld c, c
    sbc h
    ld c, c
    rst $00
    ld c, c
    ld sp, hl
    ld c, c
    dec c
    ld c, d
    ld b, b
    ld c, d
    cp b
    ld c, d
    ld sp, hl
    ld c, d
    dec h
    ld c, e
    ld l, h
    ld c, e
    adc a
    ld c, e
    ret c

    ld c, e

jr_035_4176:
    db $ec
    ld c, e
    inc e
    ld c, h
    ld e, c
    ld c, h
    ld l, [hl]
    ld c, h
    add h
    ld c, h
    or d
    ld c, h
    call nc, $f24c
    ld c, h
    inc e
    ld c, l
    inc a
    ld c, l
    ld a, h
    ld c, l
    sbc h
    ld c, l
    push bc
    ld c, l
    db $e4

jr_035_4191:
    ld c, l
    ld e, [hl]
    ld c, [hl]
    sub d
    ld c, [hl]
    rst $20
    ld c, [hl]
    add hl, bc
    ld c, a
    ld l, $4f
    ld l, h
    ld c, a
    add e
    ld c, a
    jp nz, $f54f

    ld c, a
    ld c, $50
    inc sp
    ld d, b
    adc [hl]
    ld d, b
    or a
    ld d, b
    rst $10
    ld d, b
    dec bc
    ld d, c
    jr z, jr_035_4203

    ld l, d
    ld d, c
    sbc [hl]
    ld d, c
    db $ec
    ld d, c
    rst $38
    ld d, c
    rra
    ld d, d
    ccf
    ld d, d
    ld h, d
    ld d, d
    ld a, [hl]
    ld d, d
    cp e
    ld d, d
    ld [bc], a
    ld d, e
    ld a, [hl+]
    ld d, e
    ld d, [hl]
    ld d, e
    sbc l
    ld d, e
    push de
    ld d, e
    ld a, [c]
    ld d, e
    ld a, [hl-]
    ld d, h
    ld l, a
    ld d, h
    sub [hl]
    ld d, h
    cp h
    ld d, h
    db $e3
    ld d, h
    ld h, $55
    inc a
    ld d, l
    ld a, b
    ld d, l
    jp c, $0755

    ld d, [hl]
    ld sp, $bf56
    ld d, [hl]
    rst $38
    ld d, [hl]
    xor c
    ld d, a
    ret nz

    ld d, a
    rst $08
    ld d, a
    inc l
    ld e, b
    add $58
    rlca
    ld e, c
    nop
    ld b, d
    add hl, bc
    ld b, d
    ld de, $1742
    ld b, d
    ld a, [de]
    ld b, d
    nop
    add hl, de
    ld a, [de]

jr_035_4203:
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$03

    ld hl, $221b
    dec e
    ld e, $23
    inc h
    ld [bc], a
    dec h
    ld h, $1b
    daa
    ld e, $03
    dec de
    ld e, $04
    jr z, jr_035_4246

    ld a, [hl+]
    inc h
    ld b, d
    jr z, jr_035_4264

    dec [hl]
    ld b, d
    nop
    inc h
    dec h
    ld h, $01
    daa
    jr z, jr_035_4255

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_4265

    ld [hl-], a
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4287

    ld b, d
    ld c, [hl]
    ld b, d
    ld h, c
    ld b, d
    ld [hl], d
    ld b, d
    add b
    ld b, d

jr_035_4246:
    add e
    ld b, d
    add [hl]
    ld b, d
    nop
    ld sp, $3332
    ld bc, $3534
    ld [hl], $37
    jr c, jr_035_428e

jr_035_4255:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e

Jump_035_425f:
    ld b, h
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld b, a

jr_035_4264:
    ld c, b

jr_035_4265:
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
    inc bc
    ld b, [hl]
    ld d, [hl]
    ld d, a
    ld e, b
    ld c, e
    ld c, h
    ld c, [hl]
    ld e, c
    ld d, c
    ld e, d
    ld e, e
    ld d, h
    ld d, l
    inc b
    ld e, h
    ld e, l
    dec b
    ld e, [hl]
    ld e, a
    dec b

jr_035_4287:
    ld h, b
    ld h, c
    sub c
    ld b, d
    sub a
    ld b, d
    and h

jr_035_428e:
    ld b, d
    and [hl]
    ld b, d
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld bc, $1e14
    rra
    ld a, [de]
    jr nz, jr_035_42bf

    ld [hl+], a
    dec de
    inc hl
    inc h
    inc e
    dec e
    ld [bc], a
    dec h
    inc bc
    inc d
    ld h, $27
    jr z, jr_035_42d5

    or h
    ld b, d
    cp b
    ld b, d
    jp z, $de42

    ld b, d
    nop
    inc h
    dec h
    ld h, $01
    nop
    daa
    jr z, jr_035_42bd

jr_035_42bd:
    nop
    add hl, hl

jr_035_42bf:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_42f8

    nop
    ld [hl-], a
    inc sp
    ld [bc], a
    nop
    daa
    inc [hl]
    dec [hl]
    nop
    add hl, hl
    ld a, [hl+]
    ld [hl], $37
    dec l

jr_035_42d5:
    ld l, $2f
    jr c, jr_035_4312

    nop
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [bc], a
    nop
    daa
    inc [hl]
    dec [hl]
    nop
    add hl, hl
    ld a, [hl+]
    ld [hl], $37
    dec l
    ld l, $2f
    ld a, $39
    nop
    ccf
    ld b, b
    inc a
    dec a
    ld hl, sp+$42
    ld [$2643], sp
    ld b, e

jr_035_42f8:
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_433b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $4031
    ld b, c
    ld b, d
    inc [hl]
    ld b, e
    ld [hl], $37
    ld b, h

jr_035_4312:
    ld b, l
    ld a, [hl-]
    dec sp
    inc a
    ld b, [hl]
    dec b
    ld b, a
    ld a, $3f
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    dec b
    ld c, h
    ld c, l
    dec b
    ld a, [hl+]
    ld c, [hl]
    ld c, a
    ld [bc], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    dec [hl]
    ld b, e
    ld b, b
    ld b, e
    ld c, a
    ld b, e
    ld d, h
    ld b, e
    ld d, [hl]
    ld b, e
    nop
    inc bc
    add hl, de
    ld a, [de]
    dec de
    inc e

jr_035_433b:
    dec e
    ld e, $1f
    jr nz, jr_035_4361

    ld bc, $1903
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [bc], a
    ld h, $27
    jr z, jr_035_437d

    inc bc
    jr z, jr_035_435b

    ld h, $27
    add hl, hl
    ld h, b

jr_035_435b:
    ld b, e
    ld [hl], d
    ld b, e
    ld [hl], a
    ld b, e
    nop

jr_035_4361:
    inc h
    dec h
    ld h, $27
    jr z, jr_035_4390

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    ld bc, $3635
    scf
    jr c, jr_035_437a

    add hl, sp
    ld a, [hl-]

jr_035_437a:
    dec sp
    inc a
    dec a

jr_035_437d:
    add l
    ld b, e
    sbc [hl]
    ld b, e
    ret nz

    ld b, e
    db $db
    ld b, e
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_43c8

    ld a, [hl-]

jr_035_4390:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld bc, $4a49
    ld sp, $4c4b
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
    dec sp
    inc a
    ld d, a
    ld e, b
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld e, c
    ld e, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld e, e
    ld e, h
    ld [bc], a
    ld sp, $4c32
    inc sp
    ld c, a
    ld d, b
    ld d, c

jr_035_43c8:
    ld e, l
    ld d, h
    ld d, l
    ld d, [hl]
    dec sp
    inc a
    ld d, a
    ld e, b
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld e, [hl]
    inc bc
    ld e, [hl]
    db $e3
    ld b, e
    xor $43
    ld sp, hl
    ld b, e
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_43ef

jr_035_43ef:
    ld hl, $2200
    ld a, [de]
    dec de
    inc hl
    inc h
    ld e, $1f
    jr nz, jr_035_43fb

    dec h

jr_035_43fb:
    inc bc
    ld b, h
    dec c
    ld b, h
    add hl, de
    ld b, h
    inc e
    ld b, h
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_442e

    ld bc, $2200
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_035_4440

    ld a, [hl+]
    ld hl, $1c02
    rra
    ld [bc], a
    ld h, $29
    inc hl
    ld b, h
    ld b, h
    ld b, h
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    inc bc
    ld [hl], $37
    jr c, jr_035_4467

jr_035_442e:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc bc
    inc bc
    inc bc

jr_035_4440:
    ld c, c
    ld c, d
    inc bc
    inc bc
    ld bc, $4c4b
    ld c, a
    ld b, h
    ld d, h
    ld b, h
    ld e, b
    ld b, h
    ld e, l
    ld b, h
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $1e1d
    rra
    ld [bc], a
    jr nz, jr_035_447c

    ld [hl+], a
    inc hl
    ld [bc], a
    jr nz, jr_035_4481

    nop
    inc h
    ld h, h
    ld b, h
    nop
    add hl, de
    ld a, [de]

jr_035_4467:
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_448f

    ld [hl], h
    ld b, h
    adc h
    ld b, h
    and h
    ld b, h
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_035_447c:
    jr c, jr_035_44b7

    ld a, [hl-]
    dec sp
    inc a

jr_035_4481:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc b
    inc b
    inc b
    nop
    ld b, l
    ld [hl-], a

jr_035_448f:
    ld b, [hl]
    inc [hl]
    ld b, a
    ld c, b
    scf
    jr c, jr_035_44cf

    ld a, [hl-]
    dec sp
    inc a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, h
    inc b
    inc b
    inc b
    ld bc, $5150
    ld d, d
    ld d, e
    ld d, h
    scf
    jr c, jr_035_44e6

    ld a, [hl-]
    ld d, l
    inc a
    or [hl]
    ld b, h
    ret nz

    ld b, h
    ret nc

    ld b, h
    nop

jr_035_44b7:
    inc bc
    add hl, de
    ld a, [de]
    dec de
    inc bc
    inc e
    dec e
    ld e, $1f
    ld bc, $2003
    ld hl, $1b22
    inc hl
    inc h
    dec h
    inc bc
    ld h, $27
    jr z, jr_035_44d1

    inc bc

jr_035_44cf:
    add hl, hl
    ld [bc], a

jr_035_44d1:
    ld a, [hl+]
    jp c, $ed44

    ld b, h
    ld bc, $1545
    ld b, l
    nop
    inc b
    inc h
    dec h
    ld h, $27
    jr z, jr_035_450b

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_035_44e6:
    ld l, $2f
    jr nc, jr_035_451b

    ld [hl-], a
    inc sp
    nop
    ld bc, $2404
    dec h
    ld h, $27
    inc b
    inc [hl]
    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc b
    dec [hl]
    ld [hl], $31
    ld [hl-], a
    inc sp
    nop
    scf
    ld bc, $2404
    dec h
    jr c, jr_035_452e

    inc b
    inc [hl]
    ld a, [hl+]
    add hl, sp

jr_035_450b:
    inc l
    dec l
    inc b
    dec [hl]
    ld [hl], $31
    ld [hl-], a
    inc sp
    nop
    scf
    ld [bc], a
    ld a, [hl-]
    dec e
    ld b, l
    jr nc, jr_035_4560

jr_035_451b:
    ccf
    ld b, l
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $00
    scf
    jr c, jr_035_4562

    ld a, [hl-]
    nop
    dec sp
    inc a
    nop

jr_035_452e:
    nop
    dec a
    ld bc, $3f3e
    ld b, b
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
    ld [bc], a
    ld c, h
    ld c, c
    ld b, l
    ld e, d
    ld b, l
    ld l, e
    ld b, l
    ld a, h
    ld b, l
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_4576

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    add hl, de
    ld a, [de]
    dec de
    nop

jr_035_4560:
    inc e
    dec e

jr_035_4562:
    ld e, $1f
    jr nz, jr_035_4587

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    daa
    ld a, [de]
    dec de
    jr z, @+$2b

    dec e
    ld e, $1f
    ld a, [hl+]

jr_035_4576:
    ld hl, $2322
    dec hl
    dec h
    ld h, $01
    inc l
    dec l
    nop
    add [hl]
    ld b, l
    sub c
    ld b, l
    and h
    ld b, l
    nop

jr_035_4587:
    inc h
    dec h
    ld h, $27
    jr z, jr_035_45b6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld bc, $2f2e
    jr nc, jr_035_45c7

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_45d7

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld b, b
    ld b, c
    or e
    ld b, l
    or a
    ld b, l
    cp a
    ld b, l
    rst $00
    ld b, l
    jp nc, $da45

    ld b, l
    nop
    add hl, de
    ld a, [de]

jr_035_45b6:
    dec de
    ld bc, $1d1c
    ld e, $1f
    jr nz, jr_035_45df

    ld [hl+], a
    ld [bc], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_035_45f0

jr_035_45c7:
    inc bc
    inc hl
    ld a, [hl+]
    dec hl
    inc h
    inc l
    dec l
    ld l, $27
    jr z, jr_035_45fb

    inc b
    add hl, de
    ld a, [de]
    dec de
    inc h

jr_035_45d7:
    dec h
    daa
    jr z, jr_035_45e0

    inc hl
    db $e4
    ld b, l
    dec b

jr_035_45df:
    ld b, [hl]

jr_035_45e0:
    ld [$2346], sp
    ld b, [hl]
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    dec b
    dec b
    ld [hl], $37
    jr c, jr_035_45f5

jr_035_45f0:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_035_45f5:
    ld a, $3f
    dec b
    ld b, b
    ld b, c
    ld b, d

jr_035_45fb:
    ld b, e
    ld b, h
    dec b
    dec b
    ld b, l
    ld b, [hl]
    ld b, a
    dec b
    dec b
    dec b
    ld bc, $4834
    ld [bc], a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    dec b
    dec b
    ld c, l
    ld c, [hl]
    dec b
    add hl, sp
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    dec b
    ld d, l
    ld d, [hl]
    ld b, h
    dec b
    dec b
    ld d, a
    ld e, b
    dec b
    dec b
    inc bc
    ld e, c
    ld e, d
    jr nc, jr_035_466e

    ld a, [hl-]
    ld b, [hl]
    ld c, b
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    ld e, c
    ld b, [hl]
    nop
    add hl, de
    ld a, [de]
    rrca
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_463c

    rrca

jr_035_463c:
    ld hl, $2322
    rrca
    inc h
    dec h
    ld h, $0f
    daa
    jr z, @+$2b

    ld a, [hl+]
    ld bc, $210f
    ld [hl+], a
    inc hl
    rrca
    inc h
    dec h
    dec hl
    rrca
    daa
    jr z, @+$2b

    ld a, [hl+]
    ld [bc], a
    inc l
    dec l
    ld [bc], a
    ld l, $2d
    ld l, b
    ld b, [hl]
    ld [hl], l
    ld b, [hl]
    add c
    ld b, [hl]
    adc l
    ld b, [hl]
    sub c
    ld b, [hl]
    sub l
    ld b, [hl]
    nop
    ld sp, $3200
    inc sp
    inc [hl]

jr_035_466e:
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4673

jr_035_4673:
    add hl, sp
    ld a, [hl-]
    ld bc, $3b00
    inc a
    nop
    dec a
    nop
    nop
    ld a, $3f
    ld b, b
    ld b, c
    ld bc, $4342
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld [bc], a
    ld c, h
    ld c, l
    ld c, [hl]
    inc bc
    ld c, a
    ld d, b
    ld d, c
    inc b
    ld d, d
    ld d, e
    and d
    ld b, [hl]
    or d
    ld b, [hl]
    push bc
    ld b, [hl]
    reti


    ld b, [hl]
    db $dd
    ld b, [hl]
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [$2322], sp
    inc h
    dec h
    ld h, $01
    add hl, de
    ld a, [de]
    dec de
    inc e
    daa
    ld e, $1f
    jr z, jr_035_46dd

    add hl, hl
    ld a, [hl+]
    ld [hl+], a
    inc hl
    inc h
    dec hl
    inc l
    dec h
    ld h, $02
    add hl, de
    ld a, [de]
    dec l
    ld l, $1c
    daa
    ld e, $1f
    jr z, @+$23

    add hl, hl
    ld a, [hl+]
    ld [hl+], a
    inc hl
    inc h
    dec hl
    inc l
    dec h
    ld h, $03
    cpl
    jr nc, jr_035_470e

jr_035_46dd:
    inc b
    add hl, de
    ld a, [de]
    inc e
    jp hl


    ld b, [hl]
    rst $38
    ld b, [hl]
    ld d, $47
    dec l
    ld b, a
    nop
    ld sp, $0032
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_472d

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld bc, $3231
    nop
    inc sp
    inc [hl]
    ld b, l
    ld [hl], $37
    jr c, jr_035_4743

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_035_470e:
    ld a, $3f
    ld b, [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, a
    ld b, h
    ld bc, $3231
    nop
    inc sp
    inc [hl]
    ld c, b
    ld [hl], $37
    jr c, jr_035_475a

    ld c, c
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, [hl]
    ld b, b
    ld b, c
    ld c, d
    ld c, e
    ld b, h

jr_035_472d:
    ld [bc], a
    ld c, h
    ld c, l
    ld c, [hl]
    dec sp
    ld b, a
    ld b, a
    ld b, a
    ld d, e
    ld b, a
    ld d, l
    ld b, a
    ld d, a
    ld b, a
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f

jr_035_4743:
    jr nz, jr_035_4766

    ld [hl+], a
    rrca
    nop
    add hl, de
    ld a, [de]
    dec de
    inc hl
    inc h
    ld e, $1f
    dec h
    ld h, $22
    rrca
    ld bc, $0227
    jr z, jr_035_475b

    add hl, hl
    ld h, c

jr_035_475a:
    ld b, a

jr_035_475b:
    ld l, c
    ld b, a
    ld a, c
    ld b, a
    ld a, h
    ld b, a
    nop
    inc h
    dec h
    ld h, $27

jr_035_4766:
    jr z, jr_035_4791

    ld a, [hl+]
    ld bc, $0000
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_47a4

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    ld [bc], a
    ld [hl], $37
    ld bc, $0000
    dec hl
    jr c, jr_035_47bb

    ld l, $3a
    jr nc, jr_035_47c1

    inc a
    dec a
    ld a, $35
    nop
    nop
    sub h
    ld b, a
    and e
    ld b, a
    or d

jr_035_4791:
    ld b, a
    or a
    ld b, a
    nop
    inc b
    add hl, de
    ld a, [de]
    inc b
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_47c1

    ld [hl+], a
    inc hl
    inc h
    nop

jr_035_47a4:
    inc b
    add hl, de
    ld a, [de]
    inc b
    dec de
    inc e
    dec h
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    ld bc, $0426
    daa
    jr z, jr_035_47ba

    add hl, hl
    pop bc

jr_035_47ba:
    ld b, a

jr_035_47bb:
    ret


    ld b, a
    jp nc, $d847

    ld b, a

jr_035_47c1:
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_47f1

    ld a, [hl+]
    ld bc, $2c2b
    dec l
    ld l, $2f
    jr nc, jr_035_4802

    ld [hl-], a
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    inc bc
    jr c, @+$3b

    rst $20
    ld b, a
    rst $30
    ld b, a
    inc d
    ld c, b
    dec hl
    ld c, b
    ld b, a
    ld c, b
    ld c, [hl]
    ld c, b
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_482a

jr_035_47f1:
    ld a, [hl-]
    dec sp
    inc a
    nop
    dec a
    ld a, $01
    nop
    nop
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_035_4802:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld [hl], $37
    nop
    nop
    ld c, e
    ld c, h
    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    nop
    ld a, $02
    nop
    nop
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, l
    nop
    nop
    ld c, e
    ld c, h
    nop
    nop

jr_035_482a:
    nop
    inc bc
    nop
    nop
    nop
    ccf
    ld b, b
    ld c, [hl]
    ld c, a
    ld b, d
    ld b, e
    ld b, h
    ld d, b
    ld d, c
    ld b, l
    ld b, [hl]
    ld b, a
    ld d, d
    ld c, b
    ld c, c
    ld c, l
    ld d, e
    nop
    nop
    ld c, e
    ld c, h
    nop
    nop
    nop
    inc b
    ld d, h
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    dec b
    ld sp, $3332
    inc [hl]
    jr c, jr_035_488e

    nop
    dec a
    ld e, l
    ld c, b
    ld l, c
    ld c, b
    ld [hl], b
    ld c, b
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_4888

    ld [hl+], a
    inc hl
    ld bc, $2524
    ld h, $27
    jr z, jr_035_4899

    ld [bc], a
    ld a, [hl+]
    ld a, [hl]
    ld c, b
    sub [hl]
    ld c, b
    sbc d
    ld c, b
    sbc [hl]
    ld c, b
    and d
    ld c, b
    xor h
    ld c, b
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_48ae

    ld a, [hl+]
    dec hl
    inc l

jr_035_4888:
    dec l
    ld l, $2f
    jr nc, jr_035_48be

    ld [hl-], a

jr_035_488e:
    inc sp

jr_035_488f:
    nop
    inc [hl]
    dec [hl]
    ld [hl], $00
    scf
    jr c, jr_035_4898

    add hl, sp

jr_035_4898:
    ld a, [hl-]

jr_035_4899:
    dec sp
    ld bc, $3d3c
    dec sp
    ld [bc], a
    ld a, $3b
    ccf
    inc bc
    ld b, b
    ld b, c
    ld b, d
    ld a, $3b
    ccf
    ld b, e
    ld b, h
    ld b, l
    nop
    inc h

jr_035_48ae:
    dec h
    ld h, $27
    inc a
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec a
    cpl
    jr nc, jr_035_48ec

    ld [hl-], a
    inc sp
    nop

jr_035_48be:
    inc [hl]
    dec [hl]
    ld [hl], $00
    scf
    jr c, jr_035_488f

    ld c, b
    add sp, $48
    ld b, $49
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld a, [hl+]
    ld a, [hl+]
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]

jr_035_48ec:
    ld c, c
    ld [hl-], a
    inc sp
    ld c, d
    ld c, e
    ld c, h
    scf
    jr c, @+$4f

    ld a, [hl-]
    dec sp
    ld c, [hl]
    dec a
    ld a, $4f
    ld d, b
    ld b, c
    ld b, d
    ld d, c
    ld b, h
    ld b, l
    ld a, [hl+]
    ld a, [hl+]
    ld b, [hl]
    ld b, a
    ld c, b
    ld bc, $5352
    inc de
    ld c, c
    dec e
    ld c, c
    dec hl
    ld c, c
    ld l, $49
    inc [hl]
    ld c, c
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_493e

    ld bc, $1922
    ld a, [de]
    inc hl
    inc e
    inc h
    ld e, $25
    rra
    jr nz, jr_035_494a

    nop
    nop
    ld [bc], a
    ld h, $27
    inc bc
    add hl, de
    ld a, [de]
    dec de
    inc e
    daa
    inc b
    daa
    inc a
    ld c, c
    ld c, b
    ld c, c
    ld e, b
    ld c, c
    nop
    inc h

jr_035_493e:
    dec h
    ld h, $27
    jr z, jr_035_496c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $01
    cpl

jr_035_494a:
    jr nc, jr_035_497d

    ld [hl-], a
    daa
    jr z, jr_035_495f

    inc sp
    rrca
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4991

    ld [bc], a
    ld a, [hl-]
    dec sp
    ld h, e
    ld c, c
    ld [hl], e
    ld c, c

jr_035_495f:
    add e
    ld c, c
    add a
    ld c, c
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_4994

    ld a, [hl+]

jr_035_496c:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_49a4

    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_49a4

    ld a, [hl+]
    dec hl

jr_035_497d:
    inc l
    ld [hl-], a
    inc sp
    cpl
    inc [hl]
    dec [hl]
    ld bc, $3736
    jr c, jr_035_498a

    ld [hl], $39

jr_035_498a:
    ld a, [hl-]
    dec sp
    inc a
    sub a
    ld c, c
    xor b
    ld c, c

jr_035_4991:
    cp [hl]
    ld c, c
    db $db

jr_035_4994:
    ld c, c
    ld sp, hl
    ld c, c
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_49da

    ld a, [hl-]
    dec sp
    inc a

jr_035_49a4:
    dec a
    ld a, $3f
    ld b, b
    ld bc, $3231
    inc sp
    ld b, c
    ld b, d
    ld b, e
    ld [hl], $44
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    inc a
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld [bc], a
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld [hl-], a
    inc sp
    ld e, b
    ld b, c
    ld b, d
    ld b, e
    ld [hl], $44
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    inc a
    ld c, l
    ld c, [hl]
    ld c, a

jr_035_49da:
    ld d, b
    inc bc
    ld d, c
    ld d, d
    inc bc
    ld d, e
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld [hl-], a
    inc sp
    ld e, l
    ld e, [hl]
    ld b, d
    ld b, e
    ld [hl], $44
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    inc a
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    inc b
    ld e, a
    ld h, b
    inc b
    ld c, d
    ld a, [bc]
    ld c, d
    dec d
    ld c, d
    inc e
    ld c, d
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld bc, $1f1e
    jr nz, jr_035_4a30

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld [bc], a
    jr z, jr_035_4a41

    ld a, [hl+]
    dec hl
    inc hl
    inc l
    ld [bc], a
    ld e, $2d
    jr nz, jr_035_4a4c

    inc hl
    inc h
    add hl, hl
    ld c, d
    dec [hl]
    ld c, d
    ld b, d
    ld c, d
    nop
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

jr_035_4a30:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $01
    cpl
    jr nc, jr_035_4a6a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4a7a

jr_035_4a41:
    ld a, [hl-]
    ld [bc], a
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld c, a
    ld c, d
    ld h, b

jr_035_4a4c:
    ld c, d
    ld h, e
    ld c, d
    nop
    add hl, de
    ld a, [de]
    dec de
    ld c, $1c
    dec e
    ld c, $0e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    ld c, $0e
    ld bc, $1e24
    ld [bc], a
    add hl, de
    ld a, [de]
    dec de
    ld c, $1c
    dec h

jr_035_4a6a:
    ld c, $0e
    rra
    ld h, $21
    ld [hl+], a
    inc hl
    ld c, $0e
    ld a, e
    ld c, d
    sbc a
    ld c, d
    xor h
    ld c, d
    cp c

jr_035_4a7a:
    ld c, d
    nop
    ld b, $06
    ld sp, $3332
    inc [hl]
    ld b, $06
    dec [hl]
    ld [hl], $37
    jr c, @+$08

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld b, $3e
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, $06
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, $06
    ld b, $47
    ld c, b
    ld bc, $0649
    scf
    jr c, jr_035_4aab

    ld c, d
    dec sp
    ld c, e
    dec a
    ld b, $41

jr_035_4aab:
    ld b, d
    ld bc, $0649
    scf
    jr c, jr_035_4ab8

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld b, $41

jr_035_4ab8:
    ld b, d
    ld [bc], a
    ld c, h
    ld c, l
    ld c, [hl]
    push bc
    ld c, d
    db $d3
    ld c, d
    pop hl
    ld c, d
    db $e4
    ld c, d
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_4af1

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    dec h
    ld h, $1b
    daa
    dec e
    ld e, $1f
    jr nz, jr_035_4aff

    jr z, @+$25

    add hl, hl
    ld bc, $2b2a
    ld [bc], a
    inc l
    ldh a, [rWY]
    push af
    ld c, d
    ld_long a, $ff4a
    ld c, d
    ld b, $4b
    nop

jr_035_4af1:
    inc h
    dec h
    ld h, $27
    nop
    inc h
    jr z, @+$28

    add hl, hl
    nop
    inc h
    ld a, [hl+]
    ld h, $2b

jr_035_4aff:
    ld bc, $2d2c
    ld l, $2f
    jr nc, jr_035_4b37

    ld [bc], a
    ld [hl-], a
    inc sp
    inc [hl]
    db $10
    ld c, e
    rra
    ld c, e
    jr c, @+$4d

    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01
    ld sp, $403f
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

jr_035_4b37:
    ld d, l
    ld [bc], a
    ld d, [hl]
    ld d, a
    ld b, c
    ld c, e
    ld c, c
    ld c, e
    ld e, b
    ld c, e
    nop
    add hl, de
    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $01
    add hl, de
    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_4b75

    nop
    ld [hl+], a
    inc hl

jr_035_4b57:
    inc h
    ld [bc], a
    dec h
    ld h, $27
    ld h, [hl]
    ld c, e
    ld a, e
    ld c, e
    sub d
    ld c, e
    sbc [hl]
    ld c, e
    and d
    ld c, e
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    jr c, jr_035_4baa

    ld a, [hl-]
    dec sp
    nop
    inc a

jr_035_4b75:
    dec a
    ld a, $00
    ccf
    nop
    ld b, b
    ld bc, $3231
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    jr c, @+$43

    ld b, d
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    nop
    ld c, c
    nop
    ld b, b
    ld [bc], a
    scf
    nop
    ld c, d
    ld a, [hl-]
    dec sp
    nop
    inc a
    dec a
    ld a, $00
    ccf
    inc bc
    ld c, e
    ld c, h
    ld c, l
    inc b
    ld sp, $3332
    inc [hl]
    dec [hl]
    jr c, jr_035_4b57

jr_035_4baa:
    ld c, e
    or e
    ld c, e
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld bc, $1f1e
    jr nz, jr_035_4bd9

    ld [hl+], a
    inc hl
    inc h
    dec h
    ret nz

    ld c, e
    ld [c], a
    ld c, e
    nop
    ld b, $06
    ld b, $06
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4c07

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_035_4bd9:
    ld b, l
    ld b, $06
    ld b, [hl]
    ld b, a
    ld b, $06
    ld b, $06
    ld bc, $4948
    db $ed
    ld c, e
    rst $30
    ld c, e
    ld bc, $044c
    ld c, h
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_4c18

    nop
    add hl, de
    ld [hl+], a
    dec de
    inc e
    inc hl
    ld e, $1f
    jr nz, jr_035_4c22

    ld bc, $2524
    ld [bc], a
    ld h, $14

jr_035_4c07:
    ld c, h
    dec e
    ld c, h
    dec l
    ld c, h
    ld b, e
    ld c, h
    ld e, c
    ld c, h
    ld l, a
    ld c, h
    add l
    ld c, h
    nop
    ld sp, $3332

jr_035_4c18:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4c1f

    add hl, sp

jr_035_4c1f:
    ld a, [hl-]
    dec sp
    inc a

jr_035_4c22:
    dec a
    ld a, $31
    ld [hl-], a
    ccf
    ld b, b
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4c30

    add hl, sp
    ld a, [hl-]

jr_035_4c30:
    dec sp
    inc a
    dec a
    ld a, $31
    ld [hl-], a
    ccf
    ld b, b
    inc [hl]
    dec [hl]
    ld b, c
    ld b, d
    ld b, e
    scf
    jr c, jr_035_4c84

    ld b, l
    ld b, [hl]
    ld b, a
    ld [bc], a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $31
    ld [hl-], a
    ccf
    ld b, b
    inc [hl]
    dec [hl]
    ld c, b
    ld b, d
    ld b, e
    scf
    jr c, jr_035_4c9f

    ld b, l
    ld b, [hl]
    ld b, a
    ld [bc], a
    add hl, sp
    ld c, d
    dec sp
    inc a
    ld c, e
    ld a, $31
    ld [hl-], a
    ccf
    ld b, b
    inc [hl]
    dec [hl]
    ld b, c
    ld b, d
    ld b, e
    scf
    jr c, @+$46

    ld b, l
    ld b, [hl]
    ld b, a
    ld [bc], a
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $31
    ld c, h
    ccf
    ld b, b
    inc [hl]
    ld c, l
    ld b, c
    ld b, d
    ld b, e
    scf
    jr c, @+$46

    ld b, l
    ld b, [hl]

jr_035_4c84:
    ld b, a
    ld [bc], a
    add hl, sp
    ld c, d
    dec sp
    inc a
    ld c, e
    ld a, $31
    ld c, h
    ccf
    ld b, b
    inc [hl]
    ld c, l
    ld c, b
    ld b, d
    ld b, e
    scf
    jr c, @+$4b

    ld b, l
    ld b, [hl]
    ld b, a
    and e
    ld c, h
    and [hl]
    ld c, h

jr_035_4c9f:
    or b
    ld c, h
    cp d
    ld c, h
    nop
    add hl, de
    ld a, [de]
    ld bc, $1c1b
    dec e
    ld e, $1f
    jr nz, jr_035_4cb2

    inc b
    ld hl, $1b01

jr_035_4cb2:
    inc e
    dec e
    ld e, $22
    inc hl
    inc b
    inc b
    ld hl, $2402
    dec h
    dec de
    inc e
    rst $00
    ld c, h
    ldh [$4c], a
    rst $20
    ld c, h
    xor $4c
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $17
    jr jr_035_4d08

    jr c, jr_035_4d0c

    ld e, $1f
    ld a, [hl-]
    nop
    dec sp
    dec h
    ld h, $3c
    nop
    dec hl
    dec a
    ld a, $2e
    ld bc, $0000
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld bc, $0000
    ld b, e
    ld b, b
    ld b, h
    ld b, l
    ld [bc], a
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld sp, hl
    ld c, h
    cp $4c
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $1e1d
    rra
    jr nz, jr_035_4d25

    ld [hl+], a
    inc hl
    inc h
    dec h

jr_035_4d08:
    ld d, $4d
    add hl, de
    ld c, l

jr_035_4d0c:
    ld l, $4d
    ld b, a
    ld c, l
    ld d, [hl]
    ld c, l
    ld l, c
    ld c, l
    ld a, b
    ld c, l
    nop
    ld sp, $0132
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $31
    ld [hl-], a
    scf
    jr c, jr_035_4d5c

    ld a, [hl-]
    dec sp

jr_035_4d25:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $31
    ld [hl-], a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    dec sp
    inc a
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld b, h
    inc bc
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $31
    ld [hl-], a
    ld c, l
    ld a, [hl-]
    dec sp
    inc a
    ld c, [hl]
    ld b, b
    ld c, a
    ld b, h
    inc b
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_035_4d5c:
    jr c, jr_035_4d97

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    dec b
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4daa

    ld a, [hl-]
    dec a
    ld a, $3f
    ld b, c
    ld b, d
    ld b, e
    ld b, $37
    jr c, jr_035_4db5

    dec a
    ld a, $3f
    ld b, c
    ld b, d
    ld b, e
    adc b
    ld c, l
    adc e
    ld c, l
    sub a
    ld c, l
    nop
    add hl, de
    ld a, [de]
    ld bc, $1c1b
    dec e
    ld e, $1f
    jr nz, jr_035_4d97

    ld hl, $2322
    inc b

jr_035_4d97:
    ld [bc], a
    inc h
    dec h
    and d
    ld c, l
    cp a
    ld c, l
    jp $cb4d


    ld c, l
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]

jr_035_4daa:
    ld [hl], $37
    jr c, jr_035_4de7

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_035_4db5:
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    nop
    ld b, l
    ld b, [hl]
    ld bc, $4847
    ld c, c
    ld [bc], a
    ld [hl], $37
    ld a, [hl-]
    dec sp
    ld c, d
    ld c, e
    ld c, h
    inc bc
    ld b, a
    ld c, b
    ld c, c
    ld c, l
    sub $4d
    ldh [rKEY1], a
    db $e4
    ld c, l
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_4e01

    ld bc, $1a19
    dec de
    ld [bc], a
    add hl, de
    ld a, [de]

jr_035_4de7:
    ld [hl+], a
    dec de
    rst $30
    ld c, l
    nop
    ld c, [hl]
    dec c
    ld c, [hl]
    ld [hl+], a
    ld c, [hl]
    scf
    ld c, [hl]
    dec sp
    ld c, [hl]
    ld a, $4e
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$03

jr_035_4e01:
    ld sp, $3932
    ld a, [hl-]
    dec sp
    inc [hl]
    dec [hl]
    inc a
    dec a
    ld a, $37
    jr c, jr_035_4e10

    ccf
    ld b, b

jr_035_4e10:
    inc d
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld sp, $3932
    ld a, [hl-]
    dec sp
    inc [hl]
    dec [hl]
    inc a
    dec a
    ld a, $37
    jr c, jr_035_4e26

    ld b, [hl]
    ld b, a
    ld c, b

jr_035_4e26:
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld sp, $3932
    ld a, [hl-]
    dec sp
    inc [hl]
    dec [hl]
    inc a
    dec a
    ld a, $37
    jr c, jr_035_4e3c

    ld c, [hl]
    ld c, a
    ld d, b
    dec b

jr_035_4e3c:
    ld d, b
    ld d, c
    nop
    ld sp, $3932
    inc [hl]
    dec [hl]
    inc a
    scf
    jr c, jr_035_4e97

    ld c, [hl]
    ld d, [hl]
    ld c, [hl]
    ld e, e
    ld c, [hl]
    ld e, l
    ld c, [hl]
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $01
    rra
    jr nz, jr_035_4e7b

    nop
    ld [bc], a
    ld [hl+], a
    inc bc
    inc hl
    inc h
    dec h
    ld l, e
    ld c, [hl]
    db $76
    ld c, [hl]
    add h
    ld c, [hl]
    sub e
    ld c, [hl]
    xor d
    ld c, [hl]
    nop
    inc bc
    inc bc
    inc h
    dec h
    inc bc
    ld h, $27
    jr z, jr_035_4e9e

    ld a, [hl+]
    ld bc, $0303
    inc h
    dec h

jr_035_4e7b:
    inc bc
    ld h, $27
    jr z, jr_035_4ea9

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [bc], a
    inc bc
    inc bc
    inc h
    dec h
    inc bc
    ld l, $27
    jr z, jr_035_4eb7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    cpl
    inc bc
    inc bc
    inc bc
    inc h

jr_035_4e97:
    dec h
    inc bc
    ld l, $27
    jr z, @+$2b

    ld a, [hl+]

jr_035_4e9e:
    jr nc, jr_035_4ed1

    ld [hl-], a
    dec hl
    inc sp
    inc [hl]
    inc l
    dec [hl]
    ld [hl], $37
    dec l

jr_035_4ea9:
    cpl
    inc b
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    or a
    ld c, [hl]
    call nz, $d14e
    ld c, [hl]

jr_035_4eb7:
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4efa

    ld a, [hl-]
    dec sp
    inc a
    ld bc, $3e3d
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld a, [de]

jr_035_4ed1:
    ld [bc], a
    ld c, b
    ld c, c
    jp c, $e44e

    ld c, [hl]
    ldh a, [$4e]
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_4f05

    ld bc, $1a19
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_4f0f

    ld [hl+], a
    inc hl
    ld [bc], a
    ld [hl+], a
    inc hl
    ei
    ld c, [hl]
    dec b
    ld c, a
    inc d
    ld c, a
    inc hl

jr_035_4efa:
    ld c, a
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_4f2b

    ld a, [hl+]
    dec hl
    inc l

jr_035_4f05:
    ld bc, $2524
    ld h, $27
    jr z, jr_035_4f35

    ld a, [hl+]
    dec hl
    inc l

jr_035_4f0f:
    dec l
    ld l, $2f
    jr nc, jr_035_4f45

    ld bc, $2524
    ld h, $27
    jr z, jr_035_4f44

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [hl-], a
    inc sp
    jr nc, jr_035_4f57

    ld [bc], a
    dec [hl]
    ld [hl], $37
    ld sp, $474f
    ld c, a

jr_035_4f2b:
    ld e, h
    ld c, a
    ld e, a
    ld c, a
    ld [hl], e
    ld c, a
    nop
    ld sp, $3332

jr_035_4f35:
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4f75

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_035_4f44:
    nop

jr_035_4f45:
    ld b, d
    ld b, e
    ld bc, $4544
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    ld c, c
    scf
    jr c, jr_035_4f9c

    ld c, e
    dec sp
    ld c, h

jr_035_4f55:
    ld c, l
    ld c, [hl]

jr_035_4f57:
    ld c, a
    ld d, b
    nop
    ld d, c
    ld d, d
    ld [bc], a
    jr c, jr_035_4f9a

    inc bc
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    ld c, c
    scf
    add hl, sp
    ld a, [hl-]
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    ld b, d
    ld b, e
    nop
    ld b, h

jr_035_4f75:
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    ld c, c
    scf
    jr c, jr_035_4fb7

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    ld b, d
    ld b, e
    adc a
    ld c, a
    sbc l
    ld c, a
    and b
    ld c, a
    nop
    add hl, de
    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

jr_035_4f9a:
    ld [hl+], a
    inc hl

jr_035_4f9c:
    nop
    ld bc, $2524
    ld [bc], a
    ld h, $27
    jr z, jr_035_4f55

    ld c, a
    cp [hl]
    ld c, a
    call z, $d54f
    ld c, a
    reti


    ld c, a
    db $dd
    ld c, a
    nop
    ld sp, $3332
    nop
    nop
    inc [hl]

jr_035_4fb7:
    dec [hl]
    ld [hl], $37
    jr c, jr_035_4ff5

    ld a, [hl-]
    dec sp
    nop
    inc a
    dec a
    inc sp
    nop
    nop
    ld a, $3f
    ld [hl], $37
    jr c, jr_035_500a

    ld a, [hl-]
    ld b, c
    ld bc, $4342
    ld b, h
    ld b, l
    ld a, [hl-]
    ld b, [hl]
    ld b, a
    ld c, b
    ld [bc], a
    add hl, sp
    ld a, [hl-]
    dec sp
    ld [bc], a
    ld b, b
    ld a, [hl-]
    ld b, c
    inc bc
    ld a, [hl-]
    db $ed
    ld c, a
    ld a, [$0c4f]
    ld d, b
    inc hl
    ld d, b
    ld b, b
    ld d, b
    ld b, h
    ld d, b
    ld h, b
    ld d, b
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_035_4ff5:
    jr c, jr_035_5030

    ld a, [hl-]
    dec sp
    inc a
    ld bc, $053d
    ld a, $31
    ld [hl-], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    inc sp
    inc [hl]
    ld b, e
    ld b, h
    add hl, sp
    ld a, [hl-]

jr_035_500a:
    dec sp
    inc a
    ld [bc], a
    ld sp, $3332
    inc [hl]
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    dec b
    ld c, e
    add hl, sp
    ld a, [hl-]
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    dec sp
    inc a
    ld d, b
    dec b
    inc bc
    dec a
    dec b
    ld sp, $3f32
    ld d, c
    ld d, d
    ld d, e
    inc sp
    inc [hl]
    ld d, h
    ld d, l

jr_035_5030:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    add hl, sp
    ld a, [hl-]
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    dec sp
    inc a
    ld d, b
    dec b
    inc b
    ld e, h
    ld e, l
    ld e, [hl]
    dec b
    dec a
    dec b
    ld sp, $5132
    ld d, d
    ld d, e
    inc sp
    inc [hl]
    ld d, h
    ld e, a
    ld d, [hl]
    ld h, b
    dec b
    ld e, c
    ld h, c
    ld e, e
    add hl, sp
    ld a, [hl-]
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    dec sp
    inc a
    ld d, b
    dec b
    ld b, $31
    ld [hl-], a
    inc sp
    inc [hl]
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld [hl], l
    ld d, b
    ld a, c
    ld d, b
    ld a, l
    ld d, b
    add a
    ld d, b
    adc l
    ld d, b
    sub l
    ld d, b
    nop
    add hl, de
    ld a, [de]
    dec de
    nop
    add hl, de
    ld a, [de]
    inc e
    ld bc, $1e1d
    rrca
    rra
    jr nz, jr_035_50a5

    ld [hl+], a
    rrca
    inc hl
    ld [bc], a
    dec e
    ld e, $0f
    rra
    jr nz, jr_035_5091

    dec e
    ld e, $24

jr_035_5091:
    ld hl, $0f22
    inc hl
    inc b
    add hl, de
    ld a, [de]
    sbc [hl]
    ld d, b
    xor d
    ld d, b
    or [hl]
    ld d, b
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_50ce

jr_035_50a5:
    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    ld bc, $2d2c
    ld l, $2f
    jr nc, jr_035_50b1

jr_035_50b1:
    ld sp, $0032
    nop
    nop
    ld [bc], a
    inc sp
    inc [hl]
    jp $ce50


    ld d, b
    rst $18
    ld d, b
    db $ed
    ld d, b
    db $f4
    ld d, b
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5106

    ld a, [hl-]

jr_035_50ce:
    ld bc, $3c3b
    ld sp, $3e3d
    inc sp
    inc [hl]
    ccf
    ld b, b
    ld b, c
    scf
    jr c, @+$44

    ld b, e
    ld a, [hl-]
    ld b, h
    ld [bc], a
    dec sp
    ld b, l
    dec a
    ld b, [hl]
    ld b, a
    ccf
    ld b, b
    ld c, b
    ld b, c
    ld b, d
    ld c, c
    ld b, e
    ld b, h
    inc bc
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    inc b
    ld c, a
    ld d, b
    ld bc, $0b51
    ld d, c
    rrca
    ld d, c
    inc de
    ld d, c
    jr nz, jr_035_5152

    nop
    add hl, de
    ld a, [de]
    dec de
    inc e

jr_035_5106:
    inc d
    dec e
    ld e, $1f
    jr nz, @+$03

    ld hl, $2322
    ld [bc], a
    inc h
    dec h
    ld h, $03
    add hl, de
    ld a, [de]
    inc h
    dec de
    inc e
    dec h
    inc d
    ld h, $1d
    ld e, $1f
    jr nz, jr_035_5125

    inc h
    dec h
    ld h, $21

jr_035_5125:
    ld [hl+], a
    inc hl
    dec l
    ld d, c
    ccf
    ld d, c
    ld b, e
    ld d, c
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_515d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_516d

    ld [hl-], a
    inc sp
    inc [hl]
    ld bc, $2a27
    dec [hl]
    ld [bc], a
    daa
    ld [hl], $2a
    dec [hl]
    ld c, [hl]
    ld d, c
    ld d, h
    ld d, c
    ld e, a
    ld d, c
    nop
    add hl, de
    ld a, [de]
    dec de

jr_035_5152:
    inc e
    dec e
    ld bc, $1f1e
    jr nz, jr_035_517a

    ld [hl+], a
    add hl, de
    ld a, [de]
    dec de

jr_035_515d:
    inc e
    dec e
    ld [bc], a
    inc hl
    inc h
    dec h
    ld h, $6e
    ld d, c
    db $76
    ld d, c
    ld a, d
    ld d, c
    adc l
    ld d, c
    sub a

jr_035_516d:
    ld d, c
    nop
    inc h
    inc bc
    dec h
    ld h, $27
    jr z, jr_035_519f

    ld bc, $2b2a
    inc l

jr_035_517a:
    ld [bc], a
    dec l
    ld l, $2f
    jr nc, jr_035_51b1

    inc h
    inc bc
    ld a, [hl+]
    dec h
    ld h, $2b
    ld [hl-], a
    inc sp
    inc [hl]
    jr z, jr_035_51b4

    dec [hl]
    ld [hl], $03
    dec l
    ld l, $2f
    jr nc, jr_035_51c4

    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $04
    ld a, [hl+]
    dec hl
    and d
    ld d, c
    or c
    ld d, c
    pop bc

jr_035_519f:
    ld d, c
    rst $08
    ld d, c
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_51d2

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

jr_035_51b1:
    ld bc, $2524

jr_035_51b4:
    ld h, $32
    jr z, @+$35

    inc [hl]
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_51f2

    ld [bc], a
    inc h
    dec h

jr_035_51c4:
    ld h, $35
    jr z, jr_035_51f2

    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_5200

    inc bc
    ld [hl], $db

jr_035_51d2:
    ld d, c
    and $51
    rst $28
    ld d, c
    pop af
    ld d, c
    db $f4
    ld d, c
    nop
    inc h
    dec h
    ld h, $04
    daa
    jr z, jr_035_520c

    ld a, [hl+]
    dec hl
    inc l
    ld bc, $2e2d
    cpl
    jr nc, jr_035_521d

    ld [hl-], a
    inc sp
    inc [hl]
    ld [bc], a
    dec [hl]
    inc bc

jr_035_51f2:
    ld [hl], $37
    inc b
    ld [hl], $35
    scf
    nop
    ld d, d
    add hl, bc
    ld d, d
    rra
    ld d, d
    inc [hl]
    ld d, d

jr_035_5200:
    nop
    ld sp, $0505
    ld [hl-], a
    inc sp
    dec b
    inc [hl]
    dec [hl]
    ld bc, $3736

jr_035_520c:
    jr c, jr_035_5247

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec b
    ld b, [hl]

jr_035_521d:
    ld b, a
    ld c, b
    ld [bc], a
    ld c, c
    jr c, jr_035_525c

    ld c, d
    ld c, e
    dec a
    ld a, $3f
    ld b, b
    dec b
    ld c, h
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec b
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    inc bc
    ld d, c
    ld d, d
    dec a
    ld d, d
    ld c, d
    ld d, d
    ld e, e
    ld d, d
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

jr_035_5247:
    ld [hl+], a
    inc hl
    inc h
    ld bc, $1a19
    dec de
    nop
    dec h
    inc e
    dec e
    ld e, $00
    ld h, $1f
    jr nz, jr_035_5279

    ld [hl+], a
    inc hl
    inc h
    ld [bc], a

jr_035_525c:
    dec de
    daa
    ld h, [hl]
    ld d, d
    ld l, c
    ld d, d
    add b
    ld d, d
    sub a
    ld d, d
    nop
    ld sp, $0132
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_52aa

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_035_5279:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld bc, $3433
    dec [hl]
    ld [hl], $37
    ld c, c
    ld c, d
    ld a, [hl-]
    dec sp
    ld c, e
    dec a
    ld a, $3f
    ld c, h
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, l
    ld [bc], a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    xor b
    ld d, d
    or d
    ld d, d
    ret nz

    ld d, d
    jp z, $cc52

    ld d, d
    adc $52
    nop
    add hl, de

jr_035_52aa:
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_52d3

    ld bc, $1a19
    ld [hl+], a
    dec de
    inc e
    inc hl
    inc h
    dec h
    ld e, $26
    daa
    jr nz, jr_035_52e1

    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    jr z, @+$20

    rra
    jr nz, jr_035_52eb

    ld [bc], a
    dec e
    ld [bc], a
    inc h
    ld [bc], a
    jr z, @-$1e

    ld d, d
    db $e3

jr_035_52d3:
    ld d, d
    and $52
    jp hl


    ld d, d
    db $eb
    ld d, d
    xor $52
    pop af
    ld d, d
    di
    ld d, d
    nop

jr_035_52e1:
    inc h
    dec h
    ld bc, $2726
    ld [bc], a
    jr z, jr_035_5312

    inc bc
    ld a, [hl+]

jr_035_52eb:
    inc b
    dec hl
    inc l
    dec b
    dec l
    ld l, $06
    cpl
    rlca
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc b
    ld d, e
    inc c
    ld d, e
    inc e
    ld d, e
    inc l
    ld d, e
    cpl
    ld d, e
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_5334

    ld a, [hl+]
    ld bc, $2c2b
    dec l
    ld l, $26

jr_035_5312:
    ld [hl+], a
    cpl
    jr nc, jr_035_533f

    ld sp, $3222
    inc sp
    inc [hl]
    dec [hl]
    ld bc, $2c2b
    dec l
    ld l, $26
    ld [hl+], a
    ld [hl], $28
    scf
    jr c, jr_035_534a

    ld [hl-], a
    add hl, sp
    ld a, [hl-]
    dec sp
    ld [bc], a
    add hl, hl
    ld a, [hl+]
    inc bc
    dec hl
    ld l, $29
    ld a, [hl+]

jr_035_5334:
    ld a, [hl-]
    ld d, e
    ld b, d
    ld d, e
    ld c, h
    ld d, e
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e

jr_035_533f:
    dec e
    ld [bc], a
    ld e, $01
    rra
    jr nz, jr_035_5367

    ld a, [de]
    ld [hl+], a
    inc e
    dec e

jr_035_534a:
    ld [bc], a
    ld e, $02
    inc hl
    add hl, de
    ld a, [de]
    inc h
    dec h
    ld h, $02
    ld e, $5d
    ld d, e
    ld l, [hl]
    ld d, e
    adc c
    ld d, e
    adc l
    ld d, e
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_53a0

jr_035_5367:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld bc, $3231
    ld b, c
    ld [bc], a
    inc sp
    ld b, d
    ld b, e
    ld [bc], a
    ld [bc], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [hl], $48
    ld c, c
    ld c, d
    ld c, e
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld [bc], a
    ld c, h
    ld c, l
    ld c, [hl]
    inc bc
    ld b, c
    ld [bc], a
    ld c, a
    ld b, e
    ld [bc], a
    ld [bc], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [hl], $48
    ld c, c
    ld c, d
    ld c, e
    add hl, sp
    ld a, [hl-]
    dec sp

jr_035_53a0:
    inc a
    dec a
    ld a, $3f
    ld b, b
    xor e
    ld d, e
    cp d
    ld d, e
    pop bc
    ld d, e
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_53db

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld e, $2e
    ld e, $1e
    ld bc, $302f
    ld sp, $3332
    inc [hl]
    ld [bc], a
    dec [hl]
    ld [hl], $d6
    ld d, e
    call c, $f053
    ld d, e
    rst $38
    ld d, e
    dec bc
    ld d, h
    ld d, $54
    jr @+$56

    inc e
    ld d, h
    ld hl, $0054
    ld sp, $3332
    inc [hl]

jr_035_53db:
    dec [hl]
    ld bc, $3736
    jr c, jr_035_541a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld [bc], a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    dec sp
    inc a
    dec a
    ld b, b
    ld b, c
    ld b, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc bc
    ld c, l
    dec sp
    inc a
    dec a
    ld b, b
    ld b, c
    ld b, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc b
    dec sp
    inc a
    dec a
    ld b, b
    ld b, c
    ld b, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec b
    ld sp, $3606

jr_035_541a:
    scf
    jr c, jr_035_5424

    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [$2b4d], sp

jr_035_5424:
    ld d, h
    jr nc, jr_035_547b

    ld [hl], $54
    dec a
    ld d, h
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $1e1d
    rra
    jr nz, @+$1e

    ld [bc], a
    ld hl, $2322
    inc h
    dec h
    ld h, $03
    ld hl, $1922
    ld a, [de]
    inc hl
    inc h
    dec de
    inc e
    dec h
    ld h, $50
    ld d, h
    ld h, c
    ld d, h
    ld [hl], e
    ld d, h
    add l
    ld d, h
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5493

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld bc, $3231
    inc sp
    inc [hl]
    dec [hl]
    ld b, c
    scf
    jr c, jr_035_54ad

    ld b, e
    dec sp
    inc a
    dec a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, b
    ld bc, $3231
    inc sp
    ld b, a
    dec [hl]
    ld b, c
    scf

jr_035_547b:
    jr c, jr_035_54c5

    ld c, c
    dec sp
    inc a
    dec a
    ld c, d
    ld c, e
    ld b, [hl]
    ld b, b
    ld [bc], a
    ld sp, $3632
    scf
    dec sp
    inc a
    sub d
    ld d, h
    sbc c
    ld d, h
    and b
    ld d, h
    nop

jr_035_5493:
    add hl, de
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld e, $00
    rra
    dec de
    jr nz, @+$1f

    ld bc, $001e
    ld hl, $1b1f
    ld [hl+], a
    inc hl
    dec e
    inc h
    dec h
    or e
    ld d, h

jr_035_54ad:
    ret nc

    ld d, h
    db $d3
    ld d, h
    rst $28
    ld d, h
    nop
    ld sp, $3200
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_54be

jr_035_54be:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_035_54c5:
    ld b, b
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
    ld bc, $403f
    ld [bc], a
    ld sp, $3200
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_54de

jr_035_54de:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $4b
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
    ld bc, $404c
    ld hl, sp+$54
    dec b
    ld d, l
    ld [de], a
    ld d, l
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_553b

    ld a, [hl-]
    dec sp
    inc a
    nop
    ld sp, $3e3d
    inc [hl]
    ccf
    ld b, b
    scf
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc a
    ld bc, $4645
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld b, h
    ld [hl+], a
    ld d, l
    add hl, hl
    ld d, l
    inc [hl]
    ld d, l
    ccf
    ld d, l
    nop
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld bc, $2b2a
    nop
    inc l
    dec l
    nop
    ld l, $2f
    jr nc, jr_035_5565

    ld bc, $3332
    nop
    inc [hl]
    dec [hl]
    nop

jr_035_553b:
    ld l, $36
    scf
    ld sp, $2e02
    ld sp, $554e
    ld d, a
    ld d, l
    ld l, a
    ld d, l
    ld [hl], a
    ld d, l
    adc d
    ld d, l
    adc l
    ld d, l
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_557e

    ld a, [hl+]
    dec hl
    ld bc, $2d2c
    inc h
    dec h
    ld l, $2f
    jr nc, jr_035_5591

    ld [hl-], a
    inc sp
    ld h, $34
    daa

jr_035_5565:
    dec [hl]
    ld [hl], $37
    jr z, jr_035_55a2

    add hl, sp
    add hl, hl
    ld a, [hl+]
    dec hl
    ld a, [hl-]
    ld [bc], a
    ld l, $31
    ld [hl-], a
    inc [hl]
    dec [hl]
    jr c, @+$3c

    inc bc
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_55af

jr_035_557e:
    ld [hl-], a
    inc sp
    ld h, $34
    daa
    dec [hl]
    ld [hl], $37
    jr z, jr_035_55c0

    add hl, sp
    ld a, [hl-]
    inc b
    dec sp
    inc a
    dec b
    dec a
    ld a, $3f

jr_035_5591:
    ld b, b
    and d
    ld d, l
    or c
    ld d, l
    jp nz, $ca55

    ld d, l
    push de
    ld d, l
    ld [c], a
    ld d, l
    db $e4
    ld d, l
    and $55

jr_035_55a2:
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a

jr_035_55af:
    dec a
    ld a, $01
    ld sp, $3332
    inc [hl]
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec sp
    inc a
    ld b, [hl]

jr_035_55c0:
    dec a
    ld a, $02
    ld sp, $3332
    inc [hl]
    ld b, a
    ld c, b
    ld c, c
    inc bc
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5609

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $04
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec sp
    inc a
    ld b, [hl]
    dec a
    ld a, $05
    ld b, a
    ld b, $4a
    rlca
    ld c, e
    ld c, h
    di
    ld d, l
    ld sp, hl
    ld d, l
    inc b
    ld d, [hl]
    db $10
    ld d, [hl]
    rla
    ld d, [hl]
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_55fb

    add hl, hl

jr_035_55fb:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    inc h
    dec h
    ld h, $27
    jr z, jr_035_5607

    add hl, hl
    ld a, [hl+]

jr_035_5607:
    dec hl
    inc l

jr_035_5609:
    dec l
    ld l, $2f
    jr nc, jr_035_5635

    ld sp, $0332
    ld l, $2f
    jr nc, @+$29

    ld sp, $0432
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $24
    ld d, [hl]
    inc [hl]
    ld d, [hl]
    ld b, d
    ld d, [hl]
    ld d, b
    ld d, [hl]
    nop
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01

jr_035_5635:
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [bc], a
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc bc
    ld c, c
    ld c, d
    ld h, c
    ld d, [hl]
    ld h, h
    ld d, [hl]
    ld h, a
    ld d, [hl]
    ld l, h
    ld d, [hl]
    ld [hl], b
    ld d, [hl]
    ld [hl], a
    ld d, [hl]
    ld a, l
    ld d, [hl]
    nop
    add hl, de
    ld a, [de]
    nop
    dec de
    inc e
    ld bc, $1e1d
    rra
    jr nz, @+$04

    ld hl, $2322
    inc bc
    add hl, de
    ld a, [de]
    dec e
    ld e, $1f
    jr nz, @+$06

    dec de
    inc e
    ld hl, $2322
    dec b
    inc h
    dec h
    add [hl]
    ld d, [hl]
    sbc d
    ld d, [hl]
    xor c
    ld d, [hl]
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_035_56cc

    ld a, [hl-]
    nop
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $4140
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    ld c, c
    ld c, d
    ld c, e
    nop
    ld [bc], a
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    or e
    ld d, [hl]
    cp a
    ld d, [hl]
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    rra
    jr nz, jr_035_56df

    nop
    ld bc, $2322
    inc h
    ret


    ld d, [hl]
    pop de
    ld d, [hl]
    db $db
    ld d, [hl]
    nop
    add hl, de
    ld a, [de]

jr_035_56cc:
    dec de
    inc e
    dec e
    ld e, $1f
    ld bc, $2120
    add hl, de
    ld a, [de]
    ld [hl+], a
    inc e
    dec e
    inc hl
    rra
    ld [bc], a
    add hl, de
    ld a, [de]
    inc e

jr_035_56df:
    dec e
    rra
    rst $20
    ld d, [hl]
    ld bc, $1e57
    ld d, a
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec [hl]
    dec [hl]
    jr c, jr_035_572c

    dec [hl]
    ld a, [hl-]
    dec [hl]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec [hl]
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld bc, $3115
    ld [hl-], a
    ld [bc], a
    ld b, l
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec [hl]
    dec [hl]
    jr c, jr_035_5749

    inc [hl]
    ld a, [hl-]
    inc [hl]
    dec sp
    inc a
    ld [hl-], a
    ld a, $3f
    inc [hl]
    ld a, [hl-]
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld [bc], a
    ld b, [hl]
    inc [hl]
    ld b, a
    ld [hl], $48
    ld c, c
    add hl, sp
    dec [hl]
    ld c, d
    ld c, e
    ld b, b
    ld c, h
    ld b, c

jr_035_572c:
    ld c, l
    ld c, [hl]
    ld [hl-], a
    ld d, a
    ld b, d
    ld d, a
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5775

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $4140
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_035_5749:
    ld b, [hl]
    ld d, [hl]
    ld d, a
    ld e, l
    ld d, a
    ld h, [hl]
    ld d, a
    ld l, [hl]
    ld d, a
    ld [hl], h
    ld d, a
    db $76
    ld d, a
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $01
    add hl, de
    inc b
    nop
    rra
    inc e
    jr nz, jr_035_5786

    ld e, $02
    ld [hl+], a
    add hl, de
    inc hl
    inc b
    inc h
    dec h
    ld h, $03
    add hl, de
    inc hl
    inc b
    dec h
    ld h, $04

jr_035_5775:
    daa
    dec b
    jr z, jr_035_5792

    inc hl
    inc b
    dec h
    ld h, $87
    ld d, a
    sbc e
    ld d, a
    or c
    ld d, a
    cp c
    ld d, a
    ret nz

jr_035_5786:
    ld d, a
    nop
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_035_5792:
    ld l, $2f
    jr nc, jr_035_57c7

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $01
    scf
    jr c, jr_035_57a2

    add hl, sp
    ld a, [hl-]
    dec sp

jr_035_57a2:
    ld a, [hl+]
    dec hl
    inc l
    ld l, $2f
    jr nc, jr_035_57da

    inc a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    dec a
    ld a, $36
    ld [bc], a
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    dec l
    inc bc
    scf
    jr c, jr_035_57c0

    add hl, sp
    ld a, [hl-]
    dec sp

jr_035_57c0:
    inc b
    dec hl
    inc l
    ld l, $2f
    ld [hl-], a
    inc sp

jr_035_57c7:
    ld [hl], $d2
    ld d, a
    ld [c], a
    ld d, a
    ld a, [c]
    ld d, a
    inc bc
    ld e, b
    dec d
    ld e, b
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_035_57da:
    jr c, jr_035_5815

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    ccf
    ld b, b
    ld b, c
    ld b, d
    dec [hl]
    ld b, e
    ld b, h
    ld b, l
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld bc, $4847
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld c, [hl]
    add hl, de
    ld d, l
    ld d, [hl]
    ld d, a
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop

jr_035_5815:
    inc bc
    ld e, b
    ld e, c
    ld e, d
    inc hl
    ld e, b
    jr nc, jr_035_5875

    inc sp
    ld e, b
    ld b, l
    ld e, b
    ld d, d
    ld e, b
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    dec h
    ld h, $27
    jr z, jr_035_5858

    ld a, [hl+]
    ld bc, $2a29
    ld [bc], a
    nop
    nop
    nop
    nop
    inc h
    nop
    dec h
    ld h, $27
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_5875

    nop
    inc bc
    nop
    nop
    nop
    nop
    inc h
    nop
    dec h
    ld h, $27
    ld [hl-], a
    jr z, jr_035_5885

    inc b
    nop
    nop
    nop
    nop
    inc h

jr_035_5858:
    nop
    dec h
    ld h, $27
    inc [hl]
    dec [hl]
    ld [hl-], a
    jr z, jr_035_5897

    scf
    inc sp
    add hl, hl
    ld a, [hl+]
    ld l, l
    ld e, b
    ld a, b
    ld e, b
    add h
    ld e, b
    adc e
    ld e, b
    nop
    nop
    nop
    ld sp, $3204
    inc sp
    inc [hl]

jr_035_5875:
    dec [hl]
    ld [hl], $37
    ld bc, $3938
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld [bc], a

jr_035_5885:
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc bc
    ld c, b
    ld c, c
    ld c, d
    sbc c
    ld e, b
    and c
    ld e, b
    xor a
    ld e, b
    cp c
    ld e, b

jr_035_5897:
    jp SerialTransferCompleteInterrupt


    inc h
    dec h
    ld h, $27
    jr z, jr_035_58c9

    ld a, [hl+]
    ld bc, $242b
    inc l
    dec l
    dec h
    ld h, $27
    ld l, $28
    add hl, hl
    ld a, [hl+]
    cpl
    jr nc, jr_035_58b2

    dec hl
    inc l

jr_035_58b2:
    dec l
    ld h, $2e
    jr z, jr_035_58e0

    cpl
    jr nc, @+$04

    ld sp, $3332
    ld h, $34
    jr z, jr_035_58f6

    ld [hl], $37
    inc bc
    ld h, $28
    dec [hl]
    pop de
    ld e, b

jr_035_58c9:
    jp c, $e858

    ld e, b
    ei
    ld e, b
    rlca
    ld e, c
    nop
    ld sp, $3200
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $35
    ld bc, $3837
    add hl, sp
    ld a, [hl-]
    dec sp

jr_035_58e0:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [bc], a
    scf
    jr c, jr_035_5930

    ld b, l
    dec sp
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld a, $3f
    ld c, e

jr_035_58f6:
    ld b, b
    ld c, h
    ld c, l
    ld b, d
    ld c, [hl]
    inc bc
    ld b, h
    ld b, l
    ld c, b
    ld a, $3f
    ld c, e
    ld c, h
    ld c, a
    ld c, l
    ld d, b
    ld c, [hl]
    inc b
    ld sp, $5100
    ld [hl-], a
    inc sp
    ld d, d
    inc [hl]
    dec [hl]
    ld d, e
    ld [hl], $35
    ld d, h
    ld d, l
    dec de
    ld e, c
    jr nc, @+$5b

    ld c, e
    ld e, c
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_595e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_035_5930:
    ld bc, $3231
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5973

    ld b, l
    ld b, [hl]
    inc a
    dec a
    ld a, $47
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld c, b
    ld c, c
    ld b, e
    ld b, h
    ld c, d
    ld c, e
    ld c, h
    nop
    ld sp, $3332
    ld c, l
    dec [hl]
    ld [hl], $37
    ld c, [hl]
    ld c, a
    ld a, [hl-]
    dec sp
    inc a
    ld d, b
    ld d, c
    ccf
    ld b, b
    ld b, c
    ld b, d

jr_035_595e:
    ld b, e
    ld b, h
    ld l, b
    ld e, c
    ld l, h
    ld e, c
    ld a, l
    ld e, c
    adc [hl]
    ld e, c
    nop
    ld sp, $3332
    ld bc, $3534
    ld [hl], $37
    jr c, jr_035_59ac

jr_035_5973:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld bc, $4434
    ld b, l
    scf
    jr c, @+$3b

    ld b, [hl]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [bc], a
    ld b, a
    ld c, b
    sbc c
    ld e, c
    xor [hl]
    ld e, c
    or h
    ld e, c
    cp c
    ld e, c
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_59c9

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_59d9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_035_59ac:
    ld [hl], $37
    ld bc, $3938
    ld a, [hl-]
    dec sp
    inc a
    ld [bc], a
    dec a
    ld a, $3f
    ld b, b
    inc bc
    inc h
    dec h
    ld h, $27
    jr z, jr_035_59e9

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_035_59c9:
    inc sp
    inc [hl]
    dec [hl]
    ret nc

    ld e, c
    and $59
    nop
    inc h
    nop
    dec h
    ld h, $27
    jr z, jr_035_5a01

    ld a, [hl+]

jr_035_59d9:
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    jr nc, jr_035_5a12

jr_035_59e1:
    ld [hl-], a
    inc sp
    nop
    inc [hl]
    dec [hl]
    ld bc, $3736

jr_035_59e9:
    jr c, jr_035_59e1

    ld e, c
    ld b, $5a
    inc de
    ld e, d
    dec de
    ld e, d
    inc hl
    ld e, d
    jr nc, jr_035_5a50

    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5a39

    ld a, [hl-]

jr_035_5a01:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $3231
    inc sp
    inc [hl]
    dec [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_035_5a12:
    ld b, [hl]
    ld [bc], a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld b, h
    ld b, l
    ld c, e
    ld [bc], a
    ld c, h
    ld c, b
    ld c, c
    ld b, e
    ld c, l
    ld b, l
    ld b, [hl]
    inc bc
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    ld c, [hl]
    inc b
    dec a
    ld a, [hl-]
    ld e, d
    ld a, $5a
    ld b, d
    ld e, d
    ld b, [hl]

jr_035_5a39:
    ld e, d
    nop
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1d1c
    ld e, $02
    rra
    jr nz, jr_035_5a46

jr_035_5a46:
    inc bc
    ld hl, $2322
    inc h
    ld d, c
    ld e, d
    ld d, l
    ld e, d
    ld h, a

jr_035_5a50:
    ld e, d
    nop
    inc h
    dec h
    ld h, $01
    daa
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $05
    ld [bc], a
    ld a, [hl+]
    dec hl
    ld l, $2f
    ld [hl], d
    ld e, d
    ld [hl], a
    ld e, d
    add l
    ld e, d
    nop
    inc h
    dec h
    ld h, $27
    ld bc, $2928
    inc b
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_5ab4

    ld [hl-], a
    inc sp
    ld [bc], a
    inc [hl]
    dec [hl]
    sub b
    ld e, d
    sbc a
    ld e, d
    xor l
    ld e, d
    xor a
    ld e, d
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5ad3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01
    ccf
    ld b, b
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
    ld a, $02
    inc sp
    inc bc
    ld b, c
    ld b, d
    cp b
    ld e, d

jr_035_5ab4:
    ret


    ld e, d
    call z, $005a
    inc h
    dec h
    ld h, $27
    jr z, jr_035_5ae8

    ld a, [hl+]
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_5af9

    nop
    ld bc, $3332
    ld bc, $3534
    reti


    ld e, d
    ldh a, [$5a]

jr_035_5ad3:
    ld a, [c]
    ld e, d
    db $f4
    ld e, d
    push af
    ld e, d
    nop
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_035_5b0a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop

jr_035_5ae8:
    jr nc, @+$33

    ld [hl-], a
    nop
    inc sp
    inc [hl]
    dec [hl]
    inc sp
    ld bc, $0236
    scf
    inc bc
    inc bc
    ld b, $5b
    inc c

jr_035_5af9:
    ld e, e
    dec d
    ld e, e
    add hl, hl
    ld e, e
    ld a, [hl-]
    ld e, e
    ld b, [hl]
    ld e, e
    ld c, b
    ld e, e
    ld d, b
    ld e, e
    nop
    nop
    inc h
    dec h

jr_035_5b0a:
    ld h, $27
    ld bc, $0000
    jr z, jr_035_5b3a

    ld h, $2a
    dec hl
    inc l
    ld [bc], a
    nop
    nop
    jr z, jr_035_5b43

    ld h, $2a
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    inc bc
    nop
    inc h
    dec h
    ld h, $27
    dec l
    ld l, $2f
    jr nc, jr_035_5b65

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00

jr_035_5b3a:
    inc b
    dec l
    ld l, $2f
    jr nc, jr_035_5b71

    ld [hl-], a
    inc sp
    inc [hl]

jr_035_5b43:
    dec [hl]
    ld [hl], $00
    dec b
    scf
    ld b, $31
    jr c, jr_035_5b85

    dec [hl]
    ld a, [hl-]
    dec sp
    nop
    rlca
    nop
    nop
    jr z, jr_035_5b7e

    ld h, $2a
    dec hl
    inc l
    ld sp, $3938
    dec [hl]
    ld a, [hl-]
    dec sp
    nop
    ld l, h
    ld e, e
    adc c
    ld e, e
    and [hl]

jr_035_5b65:
    ld e, e
    or [hl]
    ld e, e
    add $5b
    pop de
    ld e, e
    nop
    ld sp, $1c32
    inc e

jr_035_5b71:
    inc e
    inc e
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5bb3

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_035_5b7e:
    ld a, $3f
    ld b, b
    ld b, c
    inc e
    ld b, d
    ld b, e

jr_035_5b85:
    ld b, h
    inc e
    inc e
    inc e
    nop
    ld b, l
    inc e
    inc e
    inc e
    inc e
    inc e
    ld b, [hl]
    ld b, a
    ld c, b
    ld [hl], $49
    jr c, jr_035_5be1

    ld a, [hl-]
    dec sp
    ld c, e
    dec a
    ld a, $3f
    ld b, b
    ld c, h
    inc e
    ld b, d
    ld b, e
    ld b, h
    inc e
    inc e
    inc e
    ld bc, $1c45
    ld b, [hl]
    ld b, a
    ld c, c
    jr c, jr_035_5be8

    dec sp
    ld c, l
    ld a, $3f
    ld c, [hl]

jr_035_5bb3:
    inc e
    ld b, d
    ld c, a
    ld bc, $1c45
    ld b, [hl]
    ld b, a
    ld c, c
    jr c, jr_035_5bf8

    dec sp
    ld c, l
    ld a, $3f
    ld c, [hl]
    inc e
    ld b, d
    ld c, a
    ld [bc], a
    ld d, b
    ld a, [hl-]
    dec sp
    ld c, l
    ld a, $3f
    ld c, [hl]
    inc e
    ld b, d
    ld c, a
    inc bc
    ld b, l
    inc e
    ld b, [hl]
    ld b, a
    ld d, c
    jr c, @-$20

    ld e, e
    jp hl


    ld e, e
    rst $28
    ld e, e
    nop
    inc h
    dec h

jr_035_5be1:
    ld h, $27
    jr z, jr_035_5c0e

    ld a, [hl+]
    dec hl
    inc l

jr_035_5be8:
    dec l
    ld bc, $2f2e
    jr nc, @+$33

    ld [hl-], a
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $fe
    ld e, e
    inc bc
    ld e, h

jr_035_5bf8:
    ld a, [bc]
    ld e, h
    rra
    ld e, h
    inc [hl]
    ld e, h
    nop
    inc h
    dec h
    ld h, $27
    ld bc, $2428
    dec h
    ld h, $27
    add hl, hl
    ld [bc], a
    inc b
    ld a, [hl+]
    dec hl

jr_035_5c0e:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_5c38

    dec h
    ld h, $27
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5c22

    inc b
    ld a, [hl+]

jr_035_5c22:
    dec hl
    inc l
    add hl, sp
    ld l, $2f
    jr nc, jr_035_5c4d

    dec h
    ld h, $27
    ld a, [hl-]
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5c38

    jr z, @+$2b

    ccf

jr_035_5c38:
    ld e, h
    ld c, h
    ld e, h
    ld c, a
    ld e, h
    ld d, e
    ld e, h
    nop
    inc h
    dec h
    ld h, $04
    daa
    jr z, jr_035_5c70

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $01

jr_035_5c4d:
    cpl
    jr nc, @+$04

    ld sp, $3332
    inc bc
    inc [hl]
    dec [hl]
    ld e, [hl]
    ld e, h
    ld [hl], b
    ld e, h
    adc l
    ld e, h
    xor h
    ld e, h
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5ca1

    ld a, [hl-]
    dec sp
    nop
    inc a
    dec a
    ld a, $00
    nop

jr_035_5c70:
    ld bc, $3231
    inc sp
    ccf
    ld b, b
    inc [hl]
    dec [hl]
    ld [hl], $41
    ld b, d
    scf
    jr c, jr_035_5cc1

    ld b, h
    add hl, sp
    ld a, [hl-]
    dec sp
    ld b, l
    nop
    inc a
    dec a
    ld a, $00
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    ld [bc], a
    ld sp, $3332
    ccf
    ld b, b
    inc [hl]
    dec [hl]
    ld [hl], $41
    ld b, d
    scf
    jr c, jr_035_5ce4

    ld b, e
    ld b, h
    add hl, sp
    ld a, [hl-]
    dec sp
    ld c, d

jr_035_5ca1:
    ld b, l
    nop
    inc a
    dec a
    ld a, $00
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    inc bc
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5cff

    ld b, e
    add hl, sp
    ld a, [hl-]
    dec sp
    ld c, d
    ld b, l
    nop
    inc a
    dec a
    ld a, $00

jr_035_5cc1:
    nop
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    adc $5c
    db $db
    ld e, h
    di
    ld e, h
    ld b, $5d
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5d11

    ld a, [hl-]
    dec sp
    inc a
    ld bc, $3e3d
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h

jr_035_5ce4:
    dec b
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
    ld [bc], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_035_5cff:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    inc bc
    ld d, e
    ld c, $5d
    ld d, $5d
    ld hl, $005d
    inc h
    dec h

jr_035_5d11:
    ld h, $27
    jr z, jr_035_5d3e

    ld a, [hl+]
    ld bc, $2b24
    daa
    inc l
    dec l
    ld l, $2f
    nop
    nop
    nop
    ld [bc], a
    dec h
    daa
    jr z, jr_035_5d4f

    ld a, [hl+]
    dec l
    ld e, l
    ld b, c
    ld e, l
    ld d, l
    ld e, l
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5d70

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    ccf

jr_035_5d3e:
    ld b, b
    ld b, c
    ld b, d
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5d84

    ld a, [hl-]
    dec sp
    ld b, e
    ld b, h

jr_035_5d4f:
    ld a, $00
    ld b, l
    ld b, [hl]
    ld b, a
    ld b, d
    ld bc, $4948
    ld h, d
    ld e, l
    ld [hl], b
    ld e, l
    ld a, [hl]
    ld e, l
    adc h
    ld e, l
    adc [hl]
    ld e, l
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5da5

    ld a, [hl-]
    dec sp
    inc a
    inc bc

jr_035_5d70:
    nop
    ld sp, $3d32
    inc [hl]
    ld a, $3f
    scf
    ld b, b
    ld b, c
    ld a, [hl-]
    dec sp
    inc a
    inc bc
    nop
    ld sp, $4232
    inc [hl]
    ld b, e

jr_035_5d84:
    ld b, h
    scf
    ld b, l
    ld b, [hl]
    ld a, [hl-]
    dec sp
    inc a
    inc bc
    ld bc, HeaderCartridgeType
    ld c, b
    and b
    ld e, l
    xor e
    ld e, l
    cp l
    ld e, l
    jp z, $ce5d

    ld e, l
    pop de
    ld e, l
    rst $10
    ld e, l
    push hl
    ld e, l
    nop
    add hl, de
    nop
    ld a, [de]
    dec de

jr_035_5da5:
    inc e
    dec e
    ld e, $1f
    jr nz, jr_035_5dcc

    ld bc, $0019
    ld a, [de]
    dec de
    inc e
    nop
    dec e
    ld e, $1f
    ld [$2009], sp
    ld c, $22
    inc hl
    inc h
    inc de
    ld [bc], a
    ld a, [de]
    dec de
    inc e
    nop
    ld e, $1f
    ld [$0e09], sp
    inc hl
    inc h
    inc de
    inc bc
    dec h

jr_035_5dcc:
    ld h, $27
    inc b
    inc e
    rra
    dec b
    add hl, de
    nop
    ld a, [de]
    dec de
    ld hl, $1906
    nop
    nop
    dec e
    ld e, $08
    add hl, bc
    jr nz, jr_035_5def

    ld [hl+], a
    inc hl
    inc h
    inc de
    rlca
    ld a, [de]
    dec de
    nop
    ld e, $08
    add hl, bc
    ld c, $23
    inc h

jr_035_5def:
    inc de
    ld a, [$fe5d]
    ld e, l
    ld [bc], a
    ld e, [hl]
    rrca
    ld e, [hl]
    inc d
    ld e, [hl]
    nop
    add hl, de
    ld a, [de]
    dec de
    nop
    inc e
    ld a, [de]
    dec e
    ld bc, $1f1e
    jr nz, @+$23

    inc e
    ld a, [de]
    dec e
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $02
    inc e
    ld a, [de]
    dec e
    inc h
    inc bc
    ld e, $1f
    jr nz, jr_035_5e3a

    ld [hl+], a
    inc hl
    dec h
    ld h, $23
    ld e, [hl]
    jr nc, jr_035_5e7f

    dec a
    ld e, [hl]
    nop
    inc bc
    inc h
    dec h
    ld h, $27
    jr z, jr_035_5e54

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    cpl
    jr nc, jr_035_5e65

    rra
    ld [hl-], a
    jr z, @+$2b

    ld a, [hl+]
    dec hl

jr_035_5e3a:
    inc l
    dec l
    ld l, $01
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $4a
    ld e, [hl]
    ld h, d
    ld e, [hl]
    ld a, h
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_5e7a

    ld a, [hl+]
    dec hl
    inc l

jr_035_5e54:
    dec l
    ld l, $2f
    jr nc, jr_035_5e59

jr_035_5e59:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld bc, $2524

jr_035_5e65:
    ld h, $27
    jr z, jr_035_5e92

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $3a
    jr nc, jr_035_5e71

jr_035_5e71:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $3b
    inc a
    add hl, sp

jr_035_5e7a:
    dec a
    ld a, $02
    ccf
    inc bc

jr_035_5e7f:
    ld b, b
    adc b
    ld e, [hl]
    sbc e
    ld e, [hl]
    sbc [hl]
    ld e, [hl]
    xor d
    ld e, [hl]
    nop
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_035_5eb9

    ld a, [hl+]
    dec hl

jr_035_5e92:
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_5eb3

    ld sp, $0100
    ld [hl-], a
    inc sp
    ld [bc], a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    jr nz, jr_035_5ec9

    rra
    nop
    inc bc
    jr c, jr_035_5ee6

    ld a, [hl-]
    or h
    ld e, [hl]
    add $5e
    reti


jr_035_5eb3:
    ld e, [hl]
    nop
    inc h
    dec h
    ld h, $27

jr_035_5eb9:
    jr z, jr_035_5ee4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_5ef4

    ld [hl-], a
    inc sp
    inc [hl]
    ld bc, $2524

jr_035_5ec9:
    ld h, $27
    jr z, @+$37

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_5f07

    ld [hl-], a
    inc sp
    inc [hl]
    ld [bc], a
    dec [hl]
    pop hl
    ld e, [hl]
    jp hl


    ld e, [hl]
    ld a, [c]
    ld e, [hl]
    nop
    add hl, de
    ld a, [de]

jr_035_5ee4:
    dec de
    inc e

jr_035_5ee6:
    dec e
    ld e, $1f
    ld bc, $2120
    dec de
    ld [hl+], a
    inc e
    inc hl
    ld e, $1f
    ld [bc], a
    inc h

jr_035_5ef4:
    dec h
    ld h, $fc
    ld e, [hl]
    rlca
    ld e, a
    add hl, de
    ld e, a
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_035_5f2c

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_035_5f07:
    ld bc, $242e
    cpl
    jr nc, jr_035_5f33

    daa
    ld sp, $3332
    add hl, hl
    ld a, [hl+]
    inc [hl]
    dec hl
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5f1c

    inc sp
    inc [hl]

jr_035_5f1c:
    ld [hl+], a
    ld e, a
    ld a, [hl+]
    ld e, a
    ld sp, $005f
    add hl, de
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $01
    rra

jr_035_5f2c:
    jr nz, jr_035_5f4f

    dec de
    ld [hl+], a
    ld e, $02
    inc hl

jr_035_5f33:
    inc h
    dec h
    dec sp
    ld e, a
    ld d, a
    ld e, a
    ld [hl], e
    ld e, a
    nop
    ld e, $24
    dec h
    ld e, $1e
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_5f7e

    ld [hl-], a
    inc sp

jr_035_5f4f:
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld e, $1e
    ld e, $1e
    nop
    ld e, $24
    dec h
    ld e, $1e
    ld h, $27
    jr z, jr_035_5f8a

    ld a, [hl+]
    dec hl
    jr c, @+$3b

    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld e, $1e
    ld e, $1e
    ld bc, $3b3a
    inc a
    ld e, $1e
    ld e, $1e
    add c
    ld e, a
    sbc l

jr_035_5f7e:
    ld e, a
    and l
    ld e, a
    nop
    jr nc, jr_035_5fb5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_035_5f8a:
    jr c, jr_035_5fc5

    ld a, [hl-]
    dec sp
    inc a
    jr nc, @+$32

    dec a
    ld a, $3f
    jr nc, jr_035_5fc6

    jr nz, jr_035_5fd8

    ld b, c
    jr nc, jr_035_5fcb

    jr nc, @+$32

    ld bc, $4230
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [bc], a
    ld c, b
    or c
    ld e, a
    cp [hl]
    ld e, a
    bit 3, a
    adc $5f
    ret nc

    ld e, a
    nop
    ld sp, $3332

jr_035_5fb5:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_5ff4

    ld a, [hl-]
    dec sp
    inc a
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_035_5fc5:
    ld b, e

jr_035_5fc6:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_035_5fcb:
    ld bc, $4a49
    ld [bc], a
    ld c, e
    ld [bc], a
    ld c, e
    call c, $ed5f
    ld e, a
    rlca
    ld h, b

jr_035_5fd8:
    rra
    ld h, b
    ld [hl-], a
    ld h, b
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_601f

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld bc, $3231
    inc sp
    inc [hl]
    dec [hl]
    ld b, c

jr_035_5ff4:
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    jr c, jr_035_6036

    ld c, b
    dec sp
    inc a
    ld c, c
    ld l, $3e
    ccf
    ld c, d
    nop
    nop
    ld [bc], a
    ld sp, $3332
    inc [hl]
    dec [hl]
    nop
    ld c, e
    ld c, h
    ld c, l
    daa
    ld c, [hl]
    ld c, a
    ld d, b
    jr c, jr_035_6050

    ld a, [hl-]
    dec sp
    inc a
    ld d, c
    ld a, $3f
    ld c, d
    ld d, d

jr_035_601f:
    inc bc
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $53
    ld d, h
    scf
    jr c, jr_035_6064

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    inc b
    ld sp, $3332

jr_035_6036:
    inc [hl]
    ld [hl], $37
    jr c, jr_035_6074

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld c, b
    ld h, b
    ld e, a
    ld h, b
    ld a, a
    ld h, b
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_035_6050:
    jr c, jr_035_608b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld bc, $3231
    inc sp
    ld b, a

jr_035_6064:
    inc [hl]
    dec [hl]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, $50
    ccf
    ld b, b
    ld b, c
    ld b, d

jr_035_6074:
    ld d, c
    ld d, d
    ld b, l
    ld b, [hl]
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $49
    ld c, d
    add hl, sp
    ld a, [hl-]
    dec sp

jr_035_608b:
    ld c, [hl]
    ld c, a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    and h
    ld h, b
    or a
    ld h, b
    jp $e060


    ld h, b
    or $60
    nop
    ld h, c
    ld [bc], a
    ld h, c
    nop
    ld sp, $3332
    dec b
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_60e8

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec b
    ld bc, $4241
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld [bc], a
    ld sp, $4241
    ld b, e
    ld b, h
    ld [hl-], a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec b
    ld c, c
    ld c, d
    ld c, e
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_6111

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec b
    inc bc
    ld sp, $4241
    ld b, e
    ld b, h
    ld [hl-], a
    ld b, l

jr_035_60e8:
    ld b, [hl]
    ld b, a
    ld c, b
    dec b
    ld c, c
    ld c, d
    ld c, e
    dec [hl]
    ld c, h
    ld c, l
    ld c, [hl]
    dec b
    dec a
    ld c, [hl]
    inc b
    ld c, a
    ld d, b
    dec [hl]
    ld c, h
    ld c, l
    ld c, [hl]
    dec b
    dec a
    ld c, [hl]
    dec b
    ld d, c
    ld b, $31
    ld [hl-], a
    inc sp
    ld d, c
    dec b
    inc [hl]
    ld [hl], $37
    dec sp
    inc a
    dec a
    ld a, $17
    ld h, c

jr_035_6111:
    dec de
    ld h, c
    inc hl
    ld h, c
    ld a, [hl+]
    ld h, c
    nop
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1d1c
    ld e, $1f
    jr nz, jr_035_6143

    ld [hl+], a
    ld [bc], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_035_612e

    ld [hl+], a
    jr c, jr_035_618f

jr_035_612e:
    ld a, [hl-]
    ld h, c
    ld b, [hl]
    ld h, c
    ld d, e
    ld h, c
    ld d, [hl]
    ld h, c
    ld h, c
    ld h, c
    nop
    inc h
    ld bc, $2505
    ld h, $27
    jr z, jr_035_616a

    ld a, [hl+]
    dec hl

jr_035_6143:
    inc l
    dec l
    inc h
    ld [bc], a
    dec b
    ld l, $2f
    jr nc, jr_035_617d

    ld [hl-], a
    inc sp
    dec hl
    dec b
    inc [hl]
    dec [hl]
    inc h
    inc bc
    ld [hl], $37
    inc b
    dec b
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec b
    dec b
    ld l, $2f
    jr nc, jr_035_6198

    ld [hl-], a
    inc sp
    dec hl

jr_035_616a:
    dec b
    inc [hl]
    dec [hl]
    ld [hl], a
    ld h, c
    add h
    ld h, c
    adc [hl]
    ld h, c
    and d
    ld h, c
    or c
    ld h, c
    nop
    ld sp, $3200
    inc sp
    inc [hl]

jr_035_617d:
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    ld bc, $3d3c
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld [bc], a

jr_035_618f:
    ld sp, $3200
    inc sp
    ld b, l
    ld b, b
    ld b, [hl]
    ld b, d
    ld b, e

jr_035_6198:
    ld b, a
    ld c, b
    ld [hl], $37
    jr c, jr_035_61e7

    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc bc
    inc a
    dec a
    ld a, $3f
    ld c, d
    ld b, c
    ld b, [hl]
    ld b, d
    ld b, e
    ld b, a
    ld b, h
    ld c, b
    ld c, c
    nop
    inc b
    ld b, [hl]
    cp l
    ld h, c
    cp a
    ld h, c
    rst $08
    ld h, c
    jp nc, $ef61

    ld h, c
    nop
    ld sp, $3201
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_6201

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld [bc], a
    scf
    jr c, jr_035_61d6

    nop
    ld b, c
    nop

jr_035_61d6:
    ld b, d
    ld b, e
    ld b, h
    ld [hl-], a
    inc sp
    ld b, l
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_035_6228

    add hl, sp
    ld a, [hl-]
    dec sp
    ld b, a
    inc a

jr_035_61e7:
    dec a
    ld a, $48
    ld c, c
    ccf
    ld b, b
    ld c, d
    ld c, e
    inc b
    nop
    ld b, c
    nop
    ld b, d
    ld b, e
    ld b, h
    ld [hl-], a
    inc sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld b, l
    inc [hl]
    dec [hl]
    ld [hl], $4f
    ld d, b

jr_035_6201:
    ld d, c
    ld b, [hl]
    add hl, sp
    ld a, [hl-]
    dec sp
    ld d, d
    ld d, e
    ld d, h
    ld b, a
    inc a
    dec a
    ld a, $00
    ld c, b
    ld c, c
    ccf
    ld b, b
    ld c, d
    ld c, e
    ld e, $62
    ld [hl+], a
    ld h, d
    daa
    ld h, d
    dec sp
    ld h, d
    ld a, $62
    nop
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1a1c
    dec e
    dec de
    ld [bc], a

jr_035_6228:
    ld e, $1f
    jr nz, jr_035_624d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_035_625d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_035_623f

    ld sp, $041d

jr_035_623f:
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_624d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_035_625d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
