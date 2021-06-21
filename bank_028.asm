; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    rrca
    ld e, l
    nop
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    inc de
    ld b, b
    ld bc, $1e2f
    ld h, l
    inc b
    jr z, jr_028_4050

    ld b, b
    inc b
    jr z, jr_028_4044

    ld b, b
    rrca
    ld e, l
    nop
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld a, [hl+]
    ld b, b
    ld bc, $d02f
    ld h, l
    inc b
    jr z, jr_028_407e

    ld b, b
    inc b
    jr z, jr_028_4063

    ld b, b
    ld bc, $7c28
    ld b, b
    inc b
    jr z, jr_028_4073

    ld b, b
    ld bc, $2828
    ld b, c
    inc b
    jr z, @+$57

    ld b, b
    rrca
    ld e, h
    nop
    ld bc, $3f2f

jr_028_4044:
    ld e, [hl]
    ld b, $00
    ld d, c
    ld b, b
    ld bc, $7a28
    ld b, c
    inc b
    db $28, $84

jr_028_4050:
    ld b, h
    inc b
    jr z, jr_028_40c0

    ld b, b
    rrca
    ld e, h
    nop
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld l, b
    ld b, b
    ld bc, $2628

jr_028_4063:
    ld b, d
    inc b
    jr z, jr_028_40a1

    ld b, l
    inc b
    jr z, jr_028_40df

    ld b, b
    ld bc, $7828
    ld b, d
    inc b
    db $28, $84

jr_028_4073:
    ld b, h
    ld bc, $2428
    ld b, e
    inc b
    jr z, jr_028_40b5

    ld b, l
    inc e
    rla

jr_028_407e:
    ld b, $05
    jp nz, $0640

    dec bc
    ret z

    ld b, b
    ld b, $0d
    adc $40
    ld b, $0f
    call nc, $0640
    db $10
    jp c, $0640

    ld de, $40e0
    ld b, $13
    and $40
    ld b, $14
    db $ec
    ld b, b
    ld b, $17
    ld a, [c]

jr_028_40a1:
    ld b, b
    ld b, $18
    ld hl, sp+$40
    ld b, $1b
    cp $40
    ld b, $1c
    inc b
    ld b, c
    ld b, $1d
    ld a, [bc]
    ld b, c
    ld b, $1e
    db $10

jr_028_40b5:
    ld b, c
    ld b, $20
    ld d, $41
    ld b, $21
    inc e
    ld b, c
    ld b, $23

jr_028_40c0:
    ld [hl+], a
    ld b, c
    ld c, e
    ld e, l
    ret nz

    ld b, b
    ld d, l
    sub c
    ld c, e
    ld e, l
    inc h
    ld c, d
    ld d, l
    sub c
    ld c, e
    ld e, l
    cpl
    ld c, a
    ld d, l
    sub c
    ld c, e
    ld e, l
    jr nc, jr_028_412d

    ld d, l
    sub c
    ld c, e
    ld e, l
    call nc, Call_028_5557

jr_028_40df:
    sub c
    ld c, e
    ld e, l
    call nz, Call_028_555b
    sub c
    ld c, e
    ld e, l
    cpl
    ld l, d
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld e, l
    ld l, [hl]
    ld d, l
    sub c
    ld c, e
    add hl, de
    call c, Call_028_5549
    sub c
    ld c, e
    add hl, de
    cp l
    ld c, h
    ld d, l
    sub c
    ld c, e
    add hl, de
    ld [hl], c
    ld d, d
    ld d, l
    sub c
    ld c, e
    add hl, de
    or d
    ld e, d
    ld d, l
    sub c
    ld c, e
    add hl, de
    db $e4
    ld e, l
    ld d, l
    sub c
    ld c, e
    add hl, de
    cp [hl]
    ld h, b
    ld d, l
    sub c
    ld c, e
    add hl, de
    add b
    ld l, c
    ld d, l
    sub c
    ld c, e
    add hl, de
    db $fc
    ld l, d
    ld d, l
    sub c
    ld c, e
    add hl, de
    sbc a
    ld l, a
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    ld c, d

jr_028_412d:
    ld b, c
    ld b, $0c
    ld d, b
    ld b, c
    ld b, $0e
    ld d, [hl]
    ld b, c
    ld b, $12
    ld e, h
    ld b, c
    ld b, $15
    ld h, d
    ld b, c
    ld b, $1a
    ld l, b
    ld b, c
    ld b, $1f
    ld l, [hl]
    ld b, c
    ld b, $24
    ld [hl], h
    ld b, c
    ld c, e
    ld e, l
    adc b
    ld b, [hl]
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld a, a
    ld c, h
    ld d, l
    sub c
    ld c, e
    ld e, l
    push af
    ld d, d
    ld d, l
    sub c
    ld c, e
    ld e, l
    jp c, Jump_028_555f

    sub c
    ld c, e
    ld e, l
    db $fd
    ld [hl], c
    ld d, l
    sub c
    ld c, e
    add hl, de
    ld [hl], h
    ld c, a
    ld d, l
    sub c
    ld c, e
    add hl, de
    xor l
    ld h, l
    ld d, l
    sub c
    ld c, e
    add hl, de
    ld a, d
    ld [hl], c
    ld d, l
    sub c
    inc e
    rla
    ld b, $05
    ret nz

    ld b, c
    ld b, $0b
    add $41
    ld b, $0d
    call z, $0641
    rrca
    jp nc, $0641

    db $10
    ret c

    ld b, c
    ld b, $11
    sbc $41
    ld b, $13
    db $e4
    ld b, c
    ld b, $14
    ld [$0641], a
    rla
    ldh a, [rSTAT]
    ld b, $18
    or $41
    ld b, $1b
    db $fc
    ld b, c
    ld b, $1c
    ld [bc], a
    ld b, d
    ld b, $1d
    ld [$0642], sp
    ld e, $0e
    ld b, d
    ld b, $20
    inc d
    ld b, d
    ld b, $21
    ld a, [de]
    ld b, d
    ld b, $23
    jr nz, jr_028_4202

    ld c, e
    ld e, l
    ld b, $41
    ld d, l
    sub c
    ld c, e
    ld e, l
    add b
    ld c, d
    ld d, l
    sub c
    ld c, e
    ld e, l
    sub b
    ld c, a
    ld d, l
    sub c
    ld c, e
    ld e, l
    sub c
    ld d, l
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld l, c
    ld e, b
    ld d, l
    sub c
    ld c, e
    ld e, l
    inc h
    ld e, h
    ld d, l
    sub c
    ld c, e
    ld e, l
    rst $28
    ld l, d
    ld d, l
    sub c
    ld c, e
    ld e, l
    sbc h
    ld l, [hl]
    ld d, l
    sub c
    ld c, e
    add hl, de
    inc de
    ld c, d
    ld d, l
    sub c
    ld c, e
    add hl, de
    di
    ld c, h
    ld d, l
    sub c
    ld c, e
    add hl, de
    jr jr_028_4253

    ld d, l
    sub c

jr_028_4202:
    ld c, e
    add hl, de
    add hl, hl
    ld e, e
    ld d, l
    sub c
    ld c, e
    add hl, de
    ld b, d
    ld e, [hl]
    ld d, l
    sub c
    ld c, e
    add hl, de
    inc a
    ld h, c
    ld d, l
    sub c
    ld c, e
    add hl, de
    or d
    ld l, c
    ld d, l
    sub c
    ld c, e
    add hl, de
    ld a, $6b
    ld d, l
    sub c
    ld c, e
    add hl, de
    ret nz

    ld l, a
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    ld c, b
    ld b, d
    ld b, $0c
    ld c, [hl]
    ld b, d
    ld b, $0e
    ld d, h
    ld b, d
    ld b, $12
    ld e, d
    ld b, d
    ld b, $15
    ld h, b
    ld b, d
    ld b, $1a
    ld h, [hl]
    ld b, d
    ld b, $1f
    ld l, h
    ld b, d
    ld b, $24
    ld [hl], d
    ld b, d
    ld c, e
    ld e, l
    jp Jump_028_5546


    sub c
    ld c, e
    ld e, l
    or $4c
    ld d, l

jr_028_4253:
    sub c
    ld c, e
    ld e, l
    ld l, e
    ld d, e
    ld d, l
    sub c
    ld c, e
    ld e, l
    dec l
    ld h, b
    ld d, l
    sub c
    ld c, e
    ld e, l
    scf
    ld [hl], d
    ld d, l
    sub c
    ld c, e
    add hl, de
    or d
    ld c, a
    ld d, l
    sub c
    ld c, e
    add hl, de
    dec b
    ld h, [hl]
    ld d, l
    sub c
    ld c, e
    add hl, de
    and h
    ld [hl], c
    ld d, l
    sub c
    inc e
    rla
    ld b, $05
    cp [hl]
    ld b, d
    ld b, $0b
    call nz, $0642
    dec c
    jp z, $0642

    rrca
    ret nc

    ld b, d
    ld b, $10
    sub $42
    ld b, $11
    call c, $0642
    inc de
    ld [c], a
    ld b, d
    ld b, $14
    add sp, $42
    ld b, $17
    xor $42
    ld b, $18
    db $f4
    ld b, d
    ld b, $1b
    ld a, [$0642]
    inc e
    nop
    ld b, e
    ld b, $1d
    ld b, $43
    ld b, $1e
    inc c
    ld b, e
    ld b, $20
    ld [de], a
    ld b, e
    ld b, $21
    jr jr_028_42fd

    ld b, $23
    ld e, $43
    ld c, e
    ld e, l
    ld h, l
    ld b, c
    ld d, l
    sub c
    ld c, e
    ld e, l
    dec l
    ld c, e
    ld d, l
    sub c
    ld c, e
    ld e, l
    db $fd
    ld c, a
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld de, $5556
    sub c
    ld c, e
    ld e, l
    db $e4
    ld e, b
    ld d, l
    sub c
    ld c, e
    ld e, l
    sbc a
    ld e, h
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld b, l
    ld l, e
    ld d, l
    sub c
    ld c, e
    ld e, l
    xor $6e
    ld d, l
    sub c
    ld c, e
    add hl, de
    ld [hl], c
    ld c, d
    ld d, l
    sub c
    ld c, e
    add hl, de
    ld c, a
    ld c, l
    ld d, l
    sub c
    ld c, e
    add hl, de
    sbc c

jr_028_42fd:
    ld d, e
    ld d, l
    sub c
    ld c, e

jr_028_4301:
    add hl, de
    ret z

    ld e, e
    ld d, l
    sub c
    ld c, e
    add hl, de
    xor h
    ld e, [hl]
    ld d, l
    sub c
    ld c, e
    add hl, de
    adc h
    ld h, c
    ld d, l
    sub c
    ld c, e
    add hl, de
    db $ed
    ld l, c
    ld d, l
    sub c
    ld c, e
    add hl, de
    adc a
    ld l, e
    ld d, l
    sub c
    ld c, e
    add hl, de
    ld bc, $5570
    sub c
    inc e
    rla
    ld b, $06
    ld b, [hl]
    ld b, e
    ld b, $0c
    ld c, h
    ld b, e
    ld b, $0e
    ld d, d
    ld b, e
    ld b, $12
    ld e, b
    ld b, e
    ld b, $15
    ld e, [hl]
    ld b, e
    ld b, $1a
    ld h, h
    ld b, e
    ld b, $1f
    ld l, d
    ld b, e
    ld b, $24
    ld [hl], b
    ld b, e
    ld c, e
    ld e, l
    inc [hl]
    ld b, a
    ld d, l
    sub c
    ld c, e
    ld e, l
    add [hl]
    ld c, l
    ld d, l
    sub c
    ld c, e
    ld e, l
    push bc
    ld d, e
    ld d, l
    sub c
    ld c, e
    ld e, l
    sub l
    ld h, b
    ld d, l
    sub c
    ld c, e
    ld e, l
    sub a
    ld [hl], d
    ld d, l
    sub c
    ld c, e
    add hl, de
    inc e
    ld d, b
    ld d, l
    sub c
    ld c, e
    add hl, de
    adc b
    ld h, [hl]
    ld d, l
    sub c
    ld c, e
    add hl, de
    db $eb
    ld [hl], c
    ld d, l
    sub c
    ld bc, $8628
    ld b, e
    inc b
    jr z, jr_028_4301

    ld b, h
    ld bc, $3228
    ld b, h
    inc b
    jr z, jr_028_43bf

    ld b, l
    inc e
    rla
    ld b, $05
    call z, $0643
    rlca
    jp nc, $0643

    dec bc
    ret c

    ld b, e
    ld b, $0d
    sbc $43
    ld b, $0f
    db $e4
    ld b, e
    ld b, $10
    ld [$0643], a
    ld de, $43f0
    ld b, $13
    or $43
    ld b, $14
    db $fc
    ld b, e
    ld b, $17
    ld [bc], a
    ld b, h
    ld b, $18
    ld [$0644], sp
    dec de
    ld c, $44
    ld b, $1d
    inc d
    ld b, h
    ld b, $1e
    ld a, [de]

jr_028_43bf:
    ld b, h
    ld b, $20
    jr nz, jr_028_4408

    ld b, $21
    ld h, $44
    ld b, $23
    inc l
    ld b, h
    ld c, e
    ld e, l
    pop hl
    ld b, c
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld [$5548], a
    sub c
    ld c, e
    ld e, l
    push bc
    ld c, e
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld a, l
    ld d, b
    ld d, l
    sub c
    ld c, e
    ld e, l
    sub e
    ld d, [hl]
    ld d, l
    sub c
    ld c, e
    ld e, l
    db $76
    ld e, c
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld b, b
    ld e, l
    ld d, l
    sub c
    ld c, e
    ld e, l
    xor $6b
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld h, b
    ld l, a
    ld d, l
    sub c
    ld c, e
    add hl, de
    jp c, Jump_028_554a

    sub c

jr_028_4408:
    ld c, e
    add hl, de
    and h
    ld c, l
    ld d, l
    sub c
    ld c, e
    add hl, de
    add hl, de
    ld d, h
    ld d, l
    sub c
    ld c, e
    add hl, de
    rla
    ld e, a
    ld d, l
    sub c
    ld c, e
    add hl, de
    inc d
    ld h, d
    ld d, l
    sub c
    ld c, e
    add hl, de
    ld a, [hl-]
    ld l, d
    ld d, l
    sub c
    ld c, e
    add hl, de
    di
    ld l, e
    ld d, l
    sub c
    ld c, e
    add hl, de
    sub [hl]
    ld [hl], b
    ld d, l
    sub c
    inc e
    rla
    ld b, $0c
    ld d, b
    ld b, h
    ld b, $0e
    ld d, [hl]
    ld b, h
    ld b, $12
    ld e, h
    ld b, h
    ld b, $15
    ld h, d
    ld b, h
    ld b, $1a
    ld l, b
    ld b, h
    ld b, $1f
    ld l, [hl]
    ld b, h
    ld b, $24
    ld [hl], h
    ld b, h
    ld c, e
    ld e, l
    ld c, [hl]
    ld c, [hl]
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld a, [hl-]
    ld d, h
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld a, [bc]
    ld h, c
    ld d, l
    sub c
    ld c, e
    ld e, l
    ld [c], a
    ld [hl], d
    ld d, l
    sub c
    ld c, e
    add hl, de
    sub c
    ld d, b
    ld d, l
    sub c
    ld c, e
    add hl, de
    jr nc, jr_028_44d9

    ld d, l
    sub c
    ld c, e
    add hl, de
    ld l, $72
    ld d, l
    sub c
    ld c, e
    ld e, l
    and a
    ld h, c
    sub c
    ld c, e
    add hl, de
    sub [hl]
    ld h, a
    sub c
    inc e
    rla
    ld b, $05
    sub $44
    ld b, $07
    db $db
    ld b, h
    ld b, $0b
    ldh [rLY], a
    ld b, $0d
    push hl
    ld b, h
    ld b, $0f
    ld [$0644], a
    db $10
    rst $28
    ld b, h
    ld b, $11
    db $f4
    ld b, h
    ld b, $13
    ld sp, hl
    ld b, h
    ld b, $14
    cp $44
    ld b, $16
    inc bc
    ld b, l
    ld b, $17
    ld [$0645], sp
    jr jr_028_44c2

    ld b, l
    ld b, $1b
    ld [de], a
    ld b, l
    ld b, $1c
    rla
    ld b, l
    ld b, $1d
    inc e
    ld b, l

jr_028_44c2:
    ld b, $1e
    ld hl, $0645
    jr nz, jr_028_44ef

    ld b, l
    ld b, $21
    dec hl
    ld b, l
    ld b, $22
    jr nc, jr_028_4517

    ld b, $23
    dec [hl]
    ld b, l
    ld c, e
    ld e, l
    ld d, c

jr_028_44d9:
    ld b, d
    sub c
    ld c, e
    ld e, l
    ld h, d
    ld c, c
    sub c
    ld c, e
    ld e, l
    ld c, $4c
    sub c
    ld c, e
    ld e, l
    ld b, $51
    sub c
    ld c, e
    ld e, l
    ld a, [bc]
    ld d, a
    sub c

jr_028_44ef:
    ld c, e
    ld e, l
    rst $20
    ld e, c
    sub c
    ld c, e
    ld e, l
    or a
    ld e, l
    sub c
    ld c, e
    ld e, l
    ld b, a
    ld l, h
    sub c
    ld c, e
    ld e, l
    db $db
    ld l, a
    sub c
    ld c, e
    add hl, de
    nop
    ld b, b
    sub c
    ld c, e
    add hl, de
    ld c, b
    ld c, e
    sub c
    ld c, e
    add hl, de
    rra
    ld c, [hl]
    sub c
    ld c, e
    add hl, de
    ld [hl], c

jr_028_4515:
    ld d, h
    sub c

jr_028_4517:
    ld c, e
    add hl, de
    ld c, [hl]
    ld e, h
    sub c
    ld c, e
    add hl, de
    ld l, [hl]
    ld e, a
    sub c
    ld c, e
    add hl, de
    xor c
    ld h, d
    sub c
    ld c, e
    add hl, de
    sub e
    ld l, d
    sub c
    ld c, e
    add hl, de
    ld e, b
    ld l, h
    sub c
    ld c, e
    add hl, de
    xor e
    ld l, l
    sub c
    ld c, e
    add hl, de
    db $eb
    ld [hl], b
    sub c
    inc e
    rla
    ld b, $06
    ld e, h
    ld b, l
    ld b, $0c
    ld h, c
    ld b, l
    ld b, $0e
    ld h, [hl]
    ld b, l
    ld b, $12
    ld l, e
    ld b, l
    ld b, $15
    ld [hl], b
    ld b, l
    ld b, $1a
    ld [hl], l
    ld b, l
    ld b, $1f
    ld a, d
    ld b, l
    ld b, $24
    ld a, a
    ld b, l
    ld c, e
    ld e, l
    xor h
    ld b, a
    sub c
    ld c, e
    ld e, l
    or a
    ld c, [hl]
    sub c
    ld c, e
    ld e, l
    adc b
    ld d, h
    sub c
    ld c, e
    ld e, l
    ld a, [bc]
    ld h, d
    sub c
    ld c, e
    ld e, l
    ld h, c
    ld [hl], e
    sub c
    ld c, e
    add hl, de
    ld [c], a
    ld d, b
    sub c
    ld c, e
    add hl, de
    rst $30
    ld h, a
    sub c
    ld c, e
    add hl, de
    add c
    ld [hl], d
    sub c
    nop
    and b
    ld b, l
    ld [$458e], sp
    inc b
    jr z, jr_028_458d

jr_028_458d:
    ld b, b
    inc b
    jr z, jr_028_4515

    ld b, h
    nop
    and b
    ld b, l
    ld [$459c], sp
    inc b
    jr z, jr_028_45b2

    ld b, b
    inc b
    jr z, jr_028_45d9

    ld b, l
    rrca
    ld e, e
    nop
    sub c
    inc e
    rla
    ld b, $10
    xor [hl]
    ld b, l
    ld b, $1c
    or [hl]
    ld b, l
    ld c, e
    ld e, l
    rst $30
    ld e, c

jr_028_45b2:
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld h, [hl]
    ld e, h
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld [hl-], a
    ld b, b
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld a, b
    ld [hl], e
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    add hl, de
    ld e, a
    ld c, e
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    reti


jr_028_45d9:
    ld e, l
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld h, c
    ld l, h
    ld d, l
    inc bc
    add h
    ld b, h
    inc e
    rla
    ld b, $0d
    nop
    ld b, [hl]
    ld b, $10
    dec b
    ld b, [hl]
    ld b, $18
    ld a, [bc]
    ld b, [hl]
    ld b, $1c
    rrca
    ld b, [hl]
    ld b, $1d
    inc d
    ld b, [hl]
    ld b, $21
    add hl, de
    ld b, [hl]
    ld c, e
    ld e, l
    ld d, $51
    sub c
    ld c, e
    ld e, l
    ld h, b
    ld e, d
    sub c
    ld c, e
    add hl, de
    cpl
    ld c, [hl]
    sub c
    ld c, e
    add hl, de
    ld sp, hl
    ld e, h
    sub c
    ld c, e
    add hl, de
    adc b
    ld e, a
    sub c
    ld c, e
    add hl, de
    ld l, e
    ld l, h
    sub c
    inc e
    rla
    ld b, $06
    jr nc, jr_028_466a

    ld b, $15
    dec [hl]
    ld b, [hl]
    ld b, $1a
    ld a, [hl-]
    ld b, [hl]
    ld b, $1f
    ccf
    ld b, [hl]
    ld c, e
    ld e, l
    call z, $9147
    ld c, e
    ld e, l
    rst $20
    ld [hl], e
    sub c
    ld c, e
    add hl, de
    db $ec
    ld d, b
    sub c
    ld c, e
    add hl, de
    ld bc, $9168
    ld c, e
    ld e, l
    db $eb
    ld l, a
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    push bc
    ld l, l
    ld d, l
    inc bc
    add h
    ld b, h
    rla
    dec bc
    ld b, $00
    add d
    ld b, [hl]
    ld b, $01
    adc d
    ld b, [hl]
    ld b, $02
    sub d
    ld b, [hl]
    ld b, $03
    sbc d
    ld b, [hl]
    ld b, $04
    and d
    ld b, [hl]

jr_028_466a:
    ld b, $05
    xor d
    ld b, [hl]
    ld b, $06
    or d
    ld b, [hl]
    ld b, $07
    cp d
    ld b, [hl]
    ld b, $08
    jp nz, $0646

    add hl, bc
    jp z, $0646

    ld a, [bc]
    jp nc, Jump_028_4b46

    ld e, l
    ld h, c
    ld b, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    sbc l
    ld b, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    xor $42
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld b, b
    ld b, e
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    sub c
    ld b, e
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    db $e3
    ld b, e
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    inc sp
    ld b, h
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    add l
    ld b, h
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    sub $44
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld [hl+], a
    ld b, l
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld [hl], c
    ld b, l
    ld d, l
    inc bc
    add h
    ld b, h
    rla
    ld a, [bc]
    ld b, $00
    inc b
    ld b, a
    ld b, $01
    inc c
    ld b, a
    ld b, $02
    inc d
    ld b, a
    ld b, $03
    inc e
    ld b, a
    ld b, $04
    inc h
    ld b, a
    ld b, $05
    inc l
    ld b, a
    ld b, $06
    inc [hl]
    ld b, a
    ld b, $07
    inc a
    ld b, a
    ld b, $08
    ld b, h
    ld b, a
    ld b, $09
    ld c, h
    ld b, a
    ld c, e
    ld e, l
    inc hl
    ld h, d
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    jp Jump_028_5562


    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    adc d
    ld h, e
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    inc h
    ld h, h
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    db $eb
    ld h, h
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    sbc c
    ld h, l
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    xor h
    ld h, [hl]
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    ld c, a
    ld h, a
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    ld d, $68
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    ld l, l
    ld l, b
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    rla
    ld a, [bc]
    ld b, $00
    ld a, [hl]
    ld b, a
    ld b, $01
    add [hl]
    ld b, a
    ld b, $02
    adc [hl]
    ld b, a
    ld b, $03
    sub [hl]
    ld b, a
    ld b, $04
    sbc [hl]
    ld b, a
    ld b, $05
    and [hl]
    ld b, a
    ld b, $06
    xor [hl]
    ld b, a
    ld b, $07
    or [hl]
    ld b, a
    ld b, $08
    cp [hl]
    ld b, a
    ld b, $09
    add $47
    ld c, e
    add hl, de
    add c
    ld d, h
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld [$5554], a
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld d, l
    ld d, l
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    rst $00
    ld d, l
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    jr z, jr_028_47f8

    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    sbc e
    ld d, [hl]
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld c, d
    ld d, a
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    db $10
    ld e, b
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    add $58
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld l, c
    ld e, c
    ld d, l
    inc bc
    add h
    ld b, h
    rla
    ld a, [bc]
    ld b, $00
    ld hl, sp+$47
    ld b, $01
    nop
    ld c, b
    ld b, $02
    ld [$0648], sp
    inc bc
    db $10
    ld c, b
    ld b, $04
    jr @+$4a

    ld b, $05
    jr nz, jr_028_4830

    ld b, $06
    jr z, jr_028_4834

    ld b, $07
    jr nc, jr_028_4838

    ld b, $08
    jr c, jr_028_483c

    ld b, $09
    ld b, b
    ld c, b

jr_028_47f8:
    ld c, e
    add hl, de
    cp h
    ld h, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    db $fc
    ld h, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    dec [hl]
    ld h, e
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld h, [hl]
    ld h, e
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    and c
    ld h, e
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    and $63
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld hl, $5564
    inc bc
    add h
    ld b, h

jr_028_4830:
    ld c, e
    add hl, de
    ld e, a
    ld h, h

jr_028_4834:
    ld d, l
    inc bc
    add h
    ld b, h

jr_028_4838:
    ld c, e
    add hl, de
    sbc e
    ld h, h

jr_028_483c:
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    db $dd
    ld h, h
    ld d, l
    inc bc
    add h
    ld b, h
    ld sp, $074f
    add hl, bc
    ldh [rOBP0], a
    ld sp, $0750
    add hl, bc
    ret c

    ld c, b
    ld sp, $00d1
    add hl, bc
    ret nc

    ld c, b
    inc [hl]
    jr z, jr_028_485d

jr_028_485d:
    add hl, bc
    ldh a, [rOBP0]
    inc [hl]
    ld a, [hl-]
    nop
    add hl, bc
    ret z

    ld c, b
    ld sp, $0044
    add hl, bc
    ret nz

    ld c, b
    inc [hl]
    ld [hl+], a
    nop
    add hl, bc
    cp b
    ld c, b
    ld sp, $0021
    add hl, bc
    or b
    ld c, b
    ld sp, $0022
    add hl, bc
    xor b
    ld c, b
    ld sp, $0020
    add hl, bc
    and b
    ld c, b
    inc [hl]
    ld e, $00
    add hl, bc
    add sp, $48
    inc [hl]
    dec e
    nop
    add hl, bc
    sbc b
    ld c, b
    ld c, e
    add hl, de
    and e
    ld b, [hl]
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    sbc c
    ld b, b
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    and $40
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld l, l
    ld b, c
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    add sp, $41
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld b, a
    ld b, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    cp e
    ld b, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    call nc, Call_028_5543
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld c, b
    ld b, h
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld e, e
    ld b, l
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    rst $38
    ld b, l
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    rst $18
    ld b, [hl]
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ret c

    ld b, a
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    jp nz, $5545

    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld e, e
    ld c, b
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    ld l, e
    ld c, c
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    add hl, hl
    ld c, h
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    push bc
    ld c, [hl]
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    sbc e
    ld d, c
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    sbc e
    ld d, h
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    dec e
    ld d, a
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    cp [hl]
    ld e, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    xor a
    ld e, [hl]
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    or b
    ld l, b
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    ld [hl-], a
    ld l, l
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ei
    ld [hl], b
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld h, l
    ld [hl], h
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    add hl, de
    add $4b
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    sub b
    ld c, [hl]
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld h, c
    ld d, c
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    add hl, de
    inc hl
    ld e, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld e, h
    ld e, l
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld a, [c]
    ld e, a
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld e, $65
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    add d
    ld l, b
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    add hl, de
    and l
    ld l, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    and a
    ld l, h
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld b, $71
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    sub h
    ld [hl], d
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    rla
    inc bc
    ld b, $00
    sub $49
    ld b, $01
    sbc $49
    ld b, $02
    and $49
    ld c, e
    add hl, de
    ld b, [hl]
    ld c, b
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    add c
    ld c, b
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    call c, Call_028_5548
    inc bc
    add h
    ld b, h
    inc e
    ld a, [de]
    ld b, $02
    nop
    ld c, d
    ld b, $01
    ld [$4b4a], sp
    add hl, de
    rla
    ld l, [hl]
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld h, a
    ld l, [hl]
    ld d, l
    inc bc
    add h
    ld b, h
    dec hl
    ld bc, $1d09
    ld c, d
    dec hl
    inc b
    add hl, bc
    dec h
    ld c, d
    inc sp
    ld l, d
    ld [bc], a
    ld c, e
    add hl, de
    ld de, $556f
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    db $d3
    ld l, [hl]
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    ld d, d
    ld l, a
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    jr c, @+$48

    sub c
    ld c, e
    ld e, l
    rst $00
    ld c, c
    sub c
    ld c, e
    ld e, l
    ld c, c
    ld c, h
    sub c
    ld c, e
    ld e, l
    ld [c], a
    ld c, [hl]
    sub c
    ld c, e
    ld e, l
    ld a, [bc]
    ld d, d
    sub c
    ld c, e
    ld e, l
    push hl
    ld d, h
    sub c
    ld c, e
    ld e, l
    add [hl]
    ld d, a
    sub c
    ld c, e
    ld e, l
    ld e, $5b
    sub c
    ld c, e
    ld e, l
    ld de, $915f
    ld c, e
    ld e, l
    jp c, $9169

    ld c, e
    ld e, l
    add l
    ld l, l
    sub c
    ld c, e
    ld e, l
    jr c, jr_028_4ad9

    sub c
    ld c, e
    ld e, l
    pop bc
    ld [hl], h
    sub c
    ld c, e
    add hl, de
    inc de
    ld c, h
    sub c
    ld c, e
    add hl, de
    call nc, $914e
    ld c, e
    add hl, de
    cp a
    ld d, c
    sub c
    ld c, e
    add hl, de
    ld h, e
    ld e, d
    sub c
    ld c, e
    add hl, de
    ld b, e
    ld h, b
    sub c
    ld c, e
    add hl, de
    ld a, c
    ld h, l
    sub c
    ld c, e
    add hl, de
    and e
    ld l, b
    sub c
    ld c, e
    add hl, de
    pop de
    ld l, d
    sub c
    ld c, e
    add hl, de
    rst $30
    ld l, h
    sub c
    ld c, e
    add hl, de
    ld a, [hl+]
    ld [hl], c
    sub c
    ld c, e
    add hl, de
    push de
    ld [hl], d
    sub c
    ld c, e
    ld e, l
    sub l
    ld c, b
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    ld e, l
    sbc h
    ld d, d
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld l, l
    ld e, e
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld c, $75
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    add hl, de
    ld a, [de]
    ld c, a
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    rrca
    ld d, d
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    add hl, de
    and [hl]
    ld e, l

jr_028_4ad9:
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    add a
    ld h, b
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    add hl, de
    dec e
    ld l, c
    ld d, l
    inc bc
    ld a, [hl-]
    ld b, l
    ld c, e
    add hl, de
    ld b, l
    ld l, l
    ld d, l
    inc bc
    add h
    ld b, h
    ld c, e
    ld e, l
    ld [hl], b
    ld e, a
    sub c
    ld c, e
    ld e, l
    pop de
    ld l, l
    sub c
    ld c, e
    add hl, de
    ld e, d
    ld c, h
    sub c
    ld c, e
    ld e, l
    ld a, h
    ld [hl], c
    sub c
    ld c, e
    ld e, l
    nop
    ld b, b
    dec [hl]
    inc d
    nop
    sbc h
    nop
    nop
    sub c
    inc [hl]
    inc de
    nop
    add hl, bc
    ld [hl], e
    ld c, e
    inc e
    ld a, [bc]
    ld a, [bc]
    ld de, $4b4b
    nop
    ld [hl-], a
    ld c, e
    inc bc
    ld c, $4c
    inc [hl]
    inc de
    nop
    add hl, bc
    ld [hl], e
    ld c, e
    nop
    ld c, a
    ld c, e
    inc bc
    ld [hl], a
    ld c, e
    dec hl
    ld bc, $4109
    ld c, e
    dec hl
    ld [bc], a
    add hl, bc
    ld b, [hl]
    ld c, e
    ld c, h
    ld b, d
    ld c, l
    ld d, l
    sub c
    ld c, h
    jr z, jr_028_4b90

    ld d, l
    sub c

Jump_028_4b46:
    ld c, h
    ld [hl], d
    ld c, h
    ld d, l
    sub c
    ld c, h
    xor a
    ld c, h
    sub c
    inc e
    ld a, [bc]
    ld a, [bc]
    ld de, $4b6e
    dec hl
    ld bc, $6409
    ld c, e
    dec hl
    ld [bc], a
    add hl, bc
    ld l, c
    ld c, e
    ld c, h
    add hl, hl
    ld c, [hl]
    ld d, l
    sub c
    ld c, h
    sub [hl]
    ld c, l
    ld d, l
    sub c
    ld c, h
    rst $08
    ld c, l
    ld d, l
    sub c
    ld c, h
    ld bc, $554e
    sub c
    ld c, h
    ld e, [hl]
    ld c, [hl]
    sub c
    ld sp, $0044
    add hl, bc
    add d
    ld c, e
    rla
    dec bc
    inc bc
    add h
    ld c, e
    rla
    ld c, $06
    nop
    cp h
    ld c, e
    ld b, $01
    jp nz, $064b

    ld [bc], a
    ret z

    ld c, e

jr_028_4b90:
    ld b, $03
    adc $4b
    ld b, $04
    call nc, $064b
    dec b
    jp c, $064b

    ld b, $e0
    ld c, e
    ld b, $07
    and $4b
    ld b, $08
    db $ec
    ld c, e
    ld b, $09
    ld a, [c]
    ld c, e
    ld b, $0a
    ld hl, sp+$4b
    ld b, $0b
    cp $4b
    ld b, $0c
    inc b
    ld c, h
    ld b, $0d
    ld a, [bc]
    ld c, h
    ld c, h
    ei
    ld c, [hl]
    inc bc
    dec c
    ld c, h
    ld c, h
    rst $08
    ld c, a
    inc bc
    dec c
    ld c, h
    ld c, h
    sbc l
    ld d, b
    inc bc
    dec c
    ld c, h
    ld c, h
    ld b, e
    ld d, c
    inc bc
    dec c
    ld c, h
    ld c, h
    ld b, h
    ld d, d
    inc bc
    dec c
    ld c, h
    ld c, h
    jr jr_028_4c30

    inc bc
    dec c
    ld c, h
    ld c, h
    ret c

    ld d, e
    inc bc
    dec c
    ld c, h
    ld c, h
    adc b
    ld d, h
    inc bc
    dec c
    ld c, h
    ld c, h
    sbc $55
    inc bc
    dec c
    ld c, h
    ld c, h
    rla
    ld d, a
    inc bc
    dec c
    ld c, h
    ld c, h
    dec a
    ld e, b
    inc bc
    dec c
    ld c, h
    ld c, h
    or c
    ld e, c
    inc bc
    dec c
    ld c, h
    ld c, h
    ret nz

    ld e, d
    inc bc
    dec c
    ld c, h
    ld c, h
    db $ed
    ld e, e
    sub c
    rla
    inc bc
    ld b, $00
    inc e
    ld c, h
    ld b, $01
    jr nz, jr_028_4c64

    ld b, $02
    inc h
    ld c, h
    ld c, h
    adc b
    ld e, h
    sub c
    ld c, h
    ld e, a
    ld e, l
    sub c
    ld c, h
    cpl
    ld e, [hl]
    sub c
    nop
    add a
    xor b
    db $f4
    ld a, a
    or e
    and a
    xor b

jr_028_4c30:
    or d
    ld a, a
    xor b
    or d
    ld a, a
    add c
    sub h
    add h
    adc l
    add b
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, c
    adc b
    jp nc, $aa7f

    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    xor [hl]
    and [hl]
    and [hl]
    cp b
    ld c, a
    xor b
    xor l

jr_028_4c64:
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    add c
    sub h
    add h
    adc l
    add b
    ld [hl], l
    ld c, a
    adc [hl]
    and a
    rst $20
    ld a, a
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    add c
    sub h
    add h
    adc l
    add b
    call nc, $b27f
    and a
    xor [hl]
    or [hl]
    and $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    add c
    sub h
    add h
    adc l
    add b
    add sp, $4f
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld d, c
    or e
    and a
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    and a
    and b
    or e
    db $f4
    ld a, a
    or e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, c
    add c
    sub h
    add h
    adc l
    add b
    call nc, $8f7f
    add b
    sub d
    sub d
    sub [hl]
    adc [hl]
    sub c
    add e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, c
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and b
    ld a, a
    and d
    and b
    xor e
    xor e
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor h
    xor b
    and e
    xor l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    add c
    sub h
    add h
    adc l
    add b
    ld [hl], l
    ld c, a
    adc [hl]
    and a
    rst $20
    ld a, a
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    add sp, $7f
    ld d, c
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld c, a
    adc b
    jp nc, $a47f

    or a
    and a
    and b
    or h
    or d
    or e
    and h
    and e
    rst $20
    ld d, a
    nop
    inc d
    rst $20
    ld c, a
    add a
    xor b
    db $f4
    ld a, a
    xor b
    or e
    call nc, $817f
    sub h
    add h
    adc l
    add b
    rst $20
    ld d, c
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or h
    xor a
    ld a, a
    and h
    and b
    or c
    xor e
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    ld c, a
    adc b
    ld a, a
    and e
    and h
    and d
    xor b
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    inc d
    rst $20
    ld c, a
    add a
    xor b
    db $f4
    ld a, a
    xor b
    or e
    call nc, $817f
    sub h
    add h
    adc l
    add b
    rst $20
    ld d, c
    adc b
    ld a, a
    xor l
    and h
    and h
    and e
    and h
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    rst $20
    ld d, a
    nop
    inc d
    rst $20
    ld c, a
    add a
    xor b
    db $f4
    ld a, a
    xor b
    or e
    call nc, $817f
    sub h
    add h
    adc l
    add b
    rst $20
    ld d, c
    adc b
    jp nc, $a97f

    or h
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld c, a
    and c
    or c
    and h
    and b
    xor d
    add sp, $57
    nop
    inc d
    rst $20
    ld c, a
    add a
    xor b
    db $f4
    ld a, a
    xor b
    or e
    call nc, $817f
    sub h
    add h
    adc l
    add b
    rst $20
    ld d, c
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc [hl]
    and a
    add sp, $7f
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    and $51
    add b
    xor b
    cp b
    and h
    and h
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld d, c
    and c
    and h
    ld a, a
    and d
    or c
    and b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor b
    xor e
    xor e
    cp b
    ld c, a
    and [hl]
    and b
    and [hl]
    ld a, a
    and [hl]
    or c
    and h
    and h
    or e
    xor b
    xor l
    and [hl]
    or d
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    xor b
    or d
    ld c, a
    xor b
    xor l
    ld a, a
    and e
    and h
    and h
    xor a
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    rst $20
    ld d, c
    inc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ret nc

    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    and b
    cp b
    db $f4
    ld a, a
    adc b
    ld c, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    and b
    or e
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    add e
    adc c
    ld a, a
    add c
    add h
    adc l
    rst $20
    ld c, a
    adc b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    and $51
    adc l
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    db $f4
    ld a, a
    and a
    and h
    ld c, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    or h
    or d
    xor b
    and d
    ld a, a
    xor [hl]
    xor l
    ld d, c
    xor h
    cp b
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    ld a, a
    xor b
    or d
    ld c, a
    and d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    adc e
    xor b
    xor d
    and h
    db $f4
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    and $51
    ld [hl], l
    adc [hl]
    xor [hl]
    xor a
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld d, c
    or d
    and a
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and h
    and d
    and h
    xor a
    or e
    xor b
    xor [hl]
    xor l
    xor b
    or d
    or e
    ld a, a
    and b
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    and $51
    ldh [$96], a
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    db $f4
    ldh [$7f], a
    xor b
    or d
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or d
    and a
    and h
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    or d
    and b
    cp b
    or d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or d
    and a
    and h
    call nc, $b17f
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    and a
    and b
    or e
    or e
    xor b
    and h
    or d
    or e
    ld d, c
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    or d
    and a
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    add sp, $51
    adc b
    or d
    xor l
    push de
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    or h
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    and $51
    add d
    and b
    or e
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    sub e
    and h
    xor e
    xor e
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    inc d
    add sp, $4f
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld d, c
    and b
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc e
    sub h
    add d
    adc d
    sbc b
    ld a, a
    adc l
    sub h
    adc h
    add c
    add h
    sub c
    ld a, a
    sub d
    add a
    adc [hl]
    sub [hl]
    and $51
    sub c
    add h
    add h
    add e
    ld a, a
    xor h
    xor [hl]
    and b
    xor l
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and a
    and h
    call nc, $ad7f
    and h
    or l
    and h
    or c
    ld a, a
    or [hl]
    xor [hl]
    xor l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, c
    and a
    and h
    ld a, a
    or l
    xor [hl]
    or [hl]
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    and b
    xor b
    or c
    ld a, a
    or e
    xor b
    xor e
    xor e
    ld a, a
    and a
    and h
    ld a, a
    and e
    xor [hl]
    and h
    or d
    add sp, $51
    adc e
    and h
    or e
    call nc, $a27f
    and a
    and b
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    xor e
    and b
    or d
    or e
    ld c, a
    xor l
    xor b
    and [hl]
    and a
    or e
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    or e
    or c
    and h
    or d
    or d
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    db $f4
    ld a, a
    adc b
    ld d, c
    and b
    or e
    and h
    ld a, a
    and b
    ld a, a
    or e
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor c
    or h
    xor l
    xor d
    ld c, a
    and l
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, c
    adc h
    add b
    sub c
    sbc b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and e
    and h
    and b
    xor e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and h
    xor b
    and [hl]
    and a
    or e
    ld [hl], l
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and e
    xor [hl]
    ld [hl], l
    ld d, c
    add a
    or h
    and a
    and $7f
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld c, a
    or [hl]
    and h
    xor b
    and [hl]
    and a
    or e
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld c, a
    or e
    xor [hl]
    or e
    and b
    xor e
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    rst $20
    ld d, c
    adc h
    add b
    sub c
    sbc b
    ld a, a
    or [hl]
    and h
    xor b
    and [hl]
    and a
    or d
    ld [hl], l
    ld d, c
    add b
    xor b
    cp b
    and h
    and h
    rst $20
    ld a, a
    adc h
    db $e3
    adc h
    add b
    sub c
    sbc b
    rst $20
    ld d, c
    sub h
    and a
    ld [hl], l
    ld a, a
    sub h
    xor h
    ld [hl], l
    ld a, a
    adc b
    ld [hl], l
    ld a, a
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld c, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    rst $20
    ld d, a
    nop
    sbc b
    and h
    or d
    or e
    and h
    or c
    and e
    and b
    cp b
    db $f4
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    adc [hl]
    add b
    adc d
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    or d
    or e
    or h
    and e
    xor b
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor a
    and h
    ld a, a
    and a
    xor b
    or d
    ld c, a
    or d
    and a
    xor [hl]
    or [hl]
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, a
    xor b
    xor l
    or e
    or c
    xor [hl]
    and e
    or h
    and d
    and h
    and e
    ld a, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    add sp, $51
    add [hl]
    and h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    db $e3
    db $e3
    and a
    and h
    ld a, a
    or e
    or h
    xor l
    and h
    or d
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    rst $20
    ld d, c
    adc [hl]
    and a
    rst $20
    ld a, a
    add a
    and h
    or c
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, c
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    or e
    ld c, a
    and a
    xor b
    xor h
    ld a, a
    or h
    xor a
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, c
    add d
    and b
    or e
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    ld [hl], l
    add d
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld a, a
    and d
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, c
    sub h
    and a
    xor h
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    or h
    and a
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    or h
    and a
    ld a, a
    and d
    xor [hl]
    and e
    and h
    ld a, a
    and e
    xor b
    or e
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    add c
    or h
    and a
    ld a, a
    or h
    xor h
    and b
    ld a, a
    xor a
    or c
    xor [hl]
    ld a, a
    or d
    xor [hl]
    ld a, a
    or h
    and a
    ld c, a
    and a
    and b
    or l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    ld a, a
    xor b
    and e
    ld a, a
    or h
    and c
    ld d, c
    or d
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or h
    xor l
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld c, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or h
    and a
    xor h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    xor b
    or c
    add sp, $51
    sub h
    and a
    ld a, a
    and l
    xor b
    and e
    cp c
    ld a, a
    xor h
    or h
    and a
    ld a, a
    or l
    xor [hl]
    xor b
    and d
    and h
    ld c, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and l
    xor e
    cp b
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    and a
    and b
    or d
    ld d, l
    and c
    and h
    and h
    xor l
    ld a, a
    add c
    sub h
    add h
    adc l
    add b
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    inc d
    add sp, $4f
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld d, c
    add d
    add b
    sub c
    add e
    ld a, a
    and c
    cp b
    ld a, a
    and c
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    or b
    or h
    xor b
    cp c
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, c
    or c
    and h
    and d
    and h
    xor a
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and e
    and h
    or d
    xor d
    db $f4
    ld c, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    add [hl]
    or h
    and h
    or d
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $7f
    adc b
    ld a, a
    xor h
    and b
    and e
    and h
    ld c, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld a, a
    or b
    or h
    and h
    or d
    or e
    xor b
    xor [hl]
    xor l
    or d
    rst $20
    ld d, c
    ld [hl], l
    sub [hl]
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld c, a
    and h
    and b
    or d
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    xor e
    and h
    or e
    call nc, $a27f
    and a
    and b
    or e
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $a47f

    xor e
    and b
    or e
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    or c
    and h
    ld d, c
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld c, a
    adc a
    add b
    sub d
    sub d
    sub [hl]
    adc [hl]
    sub c
    add e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    db $f4
    ld d, c
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or h
    and a
    ld [hl], l
    ld a, a
    or [hl]
    and a
    and h
    or [hl]
    ld [hl], l
    ld c, a
    xor [hl]
    or l
    and h
    or c
    or [hl]
    and a
    and h
    xor e
    xor h
    xor b
    xor l
    and [hl]
    add sp, $51
    add l
    add b
    adc l
    ld a, a
    add d
    adc e
    sub h
    add c
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, a
    and d
    and b
    xor h
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    xor l
    ld d, c
    and e
    or c
    xor [hl]
    or l
    and h
    or d
    db $f4
    ld a, a
    or d
    and a
    xor [hl]
    or h
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    ldh [$8f], a
    adc b
    adc d
    add b
    add d
    add a
    sub h

Call_028_5543:
    rst $20
    ldh [$7f], a

Jump_028_5546:
    xor [hl]
    or l

Call_028_5548:
    and h

Call_028_5549:
    or c

Jump_028_554a:
    ld d, c
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    add sp, $7f
    adc b
    ld a, a

Call_028_5557:
    xor h
    and h
    and b
    xor l

Call_028_555b:
    db $f4
    ld c, a
    or e
    and a

Jump_028_555f:
    and h
    cp b
    ld a, a

Jump_028_5562:
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor e
    xor [hl]
    or h
    and e
    add sp, $51
    add b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    or h
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    xor l
    ld a, a
    xor h
    or h
    or d
    or e
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    ld c, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and b
    and d
    xor d
    and h
    or e
    rst $20
    ld d, c
    add b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    adc e
    and h
    or e
    call nc, $a27f
    and a
    and b
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add [hl]
    or h
    and h
    or d
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $4f
    sub e
    and a
    and h
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    call nc, $8351
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld c, a
    and l
    and b
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    sub e
    sub l
    rst $20
    ld d, c
    add b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and b
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    and b
    ld c, a
    and l
    and b
    or d
    and a
    xor b
    xor [hl]
    xor l
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    sub e
    sub l
    ld d, c
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    ld c, a
    or d
    or h
    xor b
    or e
    or d
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and a
    and h
    ld a, a
    or [hl]
    and h
    and b
    or c
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    ld a, a
    or d
    or h
    xor b
    or e
    or d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $a07f
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld d, c
    xor b
    or d
    ld a, a
    and b
    ld a, a
    sub e
    sub l
    ld a, a
    and l
    and b
    xor l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    ld a, a
    and a
    xor b
    xor h
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    and b
    or c
    and h
    ld a, a
    xor h
    and h
    xor l
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    xor b
    or e
    rst $20
    ld d, c
    adc [hl]
    and a
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    rst $20
    ld d, c
    adc e
    and b
    or e
    and h
    or c
    rst $20
    ld a, a
    sub e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    xor h
    cp b
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    xor h
    and h
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    xor e
    and b
    or a
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    and $51
    add l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or h
    and e
    xor b
    xor [hl]
    ld d, c
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor h
    cp b
    ld c, a
    or d
    and a
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld d, c
    xor l
    xor b
    and d
    and h
    ld a, a
    and d
    or h
    xor a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and h
    and b
    add sp, $4f
    adc b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and b
    xor l
    or e
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    or c
    and b
    and e
    or h
    and b
    xor e
    xor e
    cp b
    ld c, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor h
    and h
    ld a, a
    and e
    or c
    xor [hl]
    or [hl]
    or d
    cp b
    ld [hl], l
    ld d, c
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    sbc c
    cp c
    cp c
    ld d, c
    adc [hl]
    xor [hl]
    xor a
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    and e
    or c
    xor b
    and l
    or e
    and h
    and e
    ld c, a
    xor [hl]
    and l
    and l
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld d, c
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or h
    and a
    ld [hl], l
    ld c, a
    and h
    xor h
    and c
    and b
    or c
    or c
    and b
    or d
    or d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    and h
    and e
    rst $20
    ld a, a
    adc e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    and $51
    ld [hl], l
    adc [hl]
    and a
    db $f4
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    and $51
    adc b
    sub $a4
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    adc b
    sub $a4
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld c, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $51
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and b
    ld c, a
    or e
    or c
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    add sp, $51
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    adc h
    add b
    sub c
    sbc b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld c, a
    add e
    sub c
    adc [hl]
    sub [hl]
    sbc c
    add h
    add h
    and $51
    adc b
    or d
    xor l
    push de
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    and d
    and a
    and b
    or c
    and b
    and d
    or e
    and h
    or c
    and $51
    add c
    or h
    or e
    ld a, a
    adc h
    add b
    sub c
    sbc b
    call nc, $837f
    sub c
    adc [hl]
    sub [hl]
    sbc c
    add h
    add h
    ld c, a
    xor d
    and h
    xor a
    or e
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    ld d, c
    and l
    and b
    xor e
    xor e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor c
    xor [hl]
    and c
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    and a
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and l
    and b
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, a
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    add sp, $51
    adc e
    and h
    or e
    call nc, $a27f
    and a
    and b
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, c
    add c
    cp b
    and h
    db $e3
    and c
    cp b
    and h
    rst $20
    ld d, a
    nop
    add [hl]
    or h
    and h
    or d
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $7f
    add b
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or h
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld d, c
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    and b
    or c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and b
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    xor l
    cp b
    ld a, a
    or l
    and b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld d, c
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld c, a
    xor b
    xor l
    ld a, a
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    add sp, $51
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    or [hl]
    and b
    or d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    or l
    and b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or e
    or c
    xor b
    xor a
    ld d, c
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    and $51
    adc b
    ret nc

    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    or c
    and b
    or e
    and a
    and h
    or c
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    and b
    and d
    and a
    rst $20
    ld d, c
    inc d
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld d, c
    and l
    or h
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or h
    or d
    ld c, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    rst $20
    ld d, c
    add c
    cp b
    and h
    db $e3
    and c
    cp b
    and h
    rst $20
    ld d, a
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    add c
    add h
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    add l
    add h
    sub c
    adc l
    ld a, a
    or e
    and b
    xor e
    xor d
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    and a
    xor [hl]
    or h
    or c
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    or h
    or d
    xor b
    and d
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, c
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld a, a
    and e
    and b
    cp b
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    ld a, a
    or [hl]
    and h
    and h
    xor d
    add sp, $51
    adc [hl]
    xor l
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    add l
    add h
    sub c
    adc l
    call nc, $b14f
    and b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    cp b
    xor e
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld d, c
    xor [hl]
    and l
    ld a, a
    or c
    or h
    and c
    and c
    and h
    and e
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    xor [hl]
    xor l
    ld c, a
    add c
    add h
    adc l
    ld a, a
    or [hl]
    and h
    xor b
    or c
    and e
    xor e
    cp b
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    or [hl]
    and h
    ld a, a
    and h
    xor l
    and e
    and h
    and e
    ld a, a
    or h
    xor a
    ld c, a
    and h
    xor l
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    add c
    add h
    adc l
    call nc, $b251
    xor b
    xor e
    xor e
    cp b
    db $f4
    ld a, a
    and d
    and a
    xor b
    xor e
    xor e
    cp b
    db $f4
    ld a, a
    and b
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    cp b
    db $e3
    xor l
    xor b
    xor e
    xor e
    cp b
    ld a, a
    xor c
    xor b
    or l
    and h
    db $e3
    ld d, l
    or e
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and a
    or e
    xor b
    and d
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    add sp, $51
    adc e
    and h
    or e
    call nc, $a27f
    and a
    and b
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    adc h
    add b
    sub c
    sbc b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc e
    adc b
    adc e
    sbc b
    ld d, l
    or d
    xor [hl]
    xor [hl]
    xor l
    add sp, $51
    adc b
    or e
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    xor b
    and l
    ld c, a
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, $51
    sub d
    sub e
    adc [hl]
    sub c
    add h
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or d
    and b
    xor e
    and h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or [hl]
    and h
    ld a, a
    and [hl]
    xor [hl]
    ld [hl], l
    ld d, c
    inc d
    db $f4
    ld a, a
    xor h
    and b
    cp b
    and c
    and h
    ld a, a
    or [hl]
    and h
    ld c, a
    and d
    and b
    xor l
    ld a, a
    and a
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, c
    add d
    and b
    or e
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b37f

    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    ld c, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld d, c
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld a, a
    or e
    xor [hl]
    xor h
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    add sp, $4f
    adc b
    or e
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    xor a
    and b
    cp b
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    db $f4
    ld c, a
    adc b
    ld a, a
    xor d
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    xor [hl]
    or e
    rst $20
    ld d, c
    add a
    or h
    and a
    and $7f
    adc l
    or h
    and a
    db $e3
    or h
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ac4f
    cp b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    xor b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
    rst $20
    ld d, c
    add d
    and b
    or e
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    inc d
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    or h
    or d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld d, c
    or e
    xor [hl]
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and b
    and e
    xor b
    xor [hl]
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and e
    xor b
    or d
    xor a
    xor e
    and b
    cp b
    ld d, c
    or e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor h
    and b
    xor a
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    and c
    and b
    and e
    ld a, a
    or d
    and h
    xor l
    or d
    and h
    ld c, a
    xor [hl]
    and l
    ld a, a
    and e
    xor b
    or c
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, c
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    and a
    and b
    xor l
    and e
    cp b
    ld [hl], l
    ld d, c
    add b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and d
    and b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    rst $20
    ld a, a
    adc e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or d
    or h
    xor l
    xor l
    cp b
    ld c, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    and $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor a
    and h
    and e
    ld c, a
    or h
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld d, c
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    and b
    or d
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and b
    or d
    ld a, a
    adc b
    ld c, a
    and b
    xor h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    add sp, $4f
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    and c
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
