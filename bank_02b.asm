; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

    ld a, [bc]
    ld c, l
    dec bc
    dec bc
    dec bc
    ld l, l
    ld d, l
    ld c, l
    rrca
    rrca
    ld a, [bc]
    ld c, l
    dec bc
    dec bc
    dec bc
    ld l, l
    ld d, l
    ld c, l
    rra
    rra
    ld a, [bc]
    ld c, l
    dec bc
    dec bc
    dec bc
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld l, [hl]
    rlca
    rlca
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    dec [hl]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    dec [hl]
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    ld a, [bc]
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld c, l
    ld b, e
    ld b, e
    inc de
    inc de
    ld a, [bc]
    ld a, [bc]
    ld d, l
    rrca
    rrca
    rrca
    ld b, e
    ld b, e
    inc de
    inc de
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld l, l
    ld d, l
    ld a, [bc]
    jr jr_02b_40b1

    ld d, l
    ld e, c
    ld d, l
    ld d, l
    ld d, l
    inc sp
    ld d, l
    ld a, [bc]
    jr jr_02b_40bb

    rlca
    ld b, d
    rrca
    rrca
    rrca
    rrca
    ld d, l
    ld a, [bc]
    jr jr_02b_40c5

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, l
    ld a, [bc]
    jr jr_02b_40cf

    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld a, [bc]
    jr jr_02b_40d9

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr @+$45

    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld b, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_02b_40b1:
    ld a, [bc]
    ld a, [bc]
    ld b, e
    rlca
    rlca
    rlca
    rlca
    rrca
    rlca
    rlca

jr_02b_40bb:
    rlca
    rlca
    rlca
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld a, [bc]
    add hl, bc
    add hl, bc

jr_02b_40c5:
    add hl, bc
    add hl, bc
    ld [bc], a
    dec c
    dec c
    ld d, $09
    ld b, $05
    dec b

jr_02b_40cf:
    dec b
    ld b, $05
    add hl, bc
    add hl, bc
    ld [$0b09], sp
    dec bc
    add hl, bc

jr_02b_40d9:
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld d, $0c
    dec bc
    db $10
    ld de, $090b
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$0109], sp
    inc d
    dec d
    ld bc, $0605
    add hl, bc
    add hl, bc
    ld [$0903], sp
    dec bc
    dec bc
    add hl, bc
    inc bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    inc c
    dec c
    dec c
    dec c
    ld d, $0d
    dec c
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [$0902], sp
    add hl, bc
    add hl, bc
    inc d
    daa
    inc d
    inc de
    inc de
    inc de
    dec hl
    ld [hl+], a
    dec hl
    dec hl
    dec hl
    dec hl
    dec d
    add hl, hl
    inc de
    inc de
    inc de
    jr z, jr_02b_414c

    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    inc hl
    inc l
    add hl, hl
    ld d, l
    ld d, l
    ld d, l
    ld a, h
    ld [hl], d
    ld c, l
    ld h, l
    jr z, jr_02b_415d

    add hl, hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    ld h, l
    jr z, jr_02b_4167

    inc c
    dec c
    dec c
    dec c
    ld c, $3e
    dec sp
    ld h, l
    jr z, jr_02b_4170

    ld [hl], l
    ld [hl], c
    ld [hl], c
    ld [hl], c
    db $76
    jr z, jr_02b_4175

jr_02b_414c:
    ld h, l
    jr z, jr_02b_4178

    ld a, h
    ld a, l
    ld a, l
    ld a, l
    ld a, [hl]
    inc h
    dec h
    ld h, l
    jr z, jr_02b_4182

    ld a, e
    ld a, c
    ld a, e
    dec bc

jr_02b_415d:
    dec bc
    dec bc
    dec bc
    ld h, l
    jr z, jr_02b_418c

    rra
    rra
    rra
    rra

jr_02b_4167:
    rra
    rra
    rra
    ld l, $28
    inc l
    ccf
    ccf
    ccf

jr_02b_4170:
    ccf
    ccf
    ccf
    ccf
    ccf

jr_02b_4175:
    inc l
    inc l
    inc l

jr_02b_4178:
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    dec b
    dec b

jr_02b_4182:
    dec b
    ld e, h
    ld e, [hl]
    ld h, c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_02b_418c:
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, [hl]
    jr @+$21

    add hl, de
    ld e, h
    ld h, c
    dec b
    dec b
    dec b
    dec b
    ld e, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    ld h, c
    dec b
    dec b
    dec b
    ld h, [hl]
    ld b, a
    inc e
    dec e
    ld e, $5e
    ld h, [hl]
    ld e, h
    inc d
    dec d
    ld e, h
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld a, $02
    ld [bc], a
    dec b
    dec b
    jr jr_02b_41d8

    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    ld h, [hl]
    ld d, h
    ld d, l
    ld [bc], a
    ld e, [hl]
    ld h, c
    ld a, [de]
    rla
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, d

jr_02b_41d8:
    ld h, [hl]
    ld h, h
    ld [bc], a
    ccf
    ld h, [hl]
    ld h, h
    ld d, h
    db $76
    ld a, c
    ld e, c
    ld a, $02
    ld h, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, a
    ld [bc], a
    ld e, h
    jr jr_02b_4207

    ld [bc], a
    ld h, [hl]
    ld h, h
    ld e, h
    ld e, b
    dec [hl]
    dec [hl]
    ld e, c
    ld h, c
    ld [bc], a
    dec b
    ld e, [hl]
    ld h, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ccf
    ld h, [hl]
    ld d, $1e
    ld [bc], a
    ld e, [hl]
    ld d, h
    db $76
    ld a, c

jr_02b_4207:
    dec [hl]
    dec [hl]
    ld e, c
    inc a
    ld [bc], a
    dec b
    dec b
    ld h, h
    ld h, b
    ld [bc], a
    ld h, [hl]
    ld e, h
    ld e, h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, h
    ld a, c
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld h, b
    ld [bc], a
    ld h, [hl]
    dec b
    dec b
    jr jr_02b_423d

    ld [bc], a
    ld e, l
    ld e, h
    ld [bc], a
    ccf
    ld e, h
    ld h, c
    ld e, b
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld e, h
    ld e, h
    ld [bc], a
    ld e, [hl]
    dec b
    dec b
    ld a, [de]
    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ccf
    ld d, h

jr_02b_423d:
    db $76
    db $76
    ld a, c
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld e, [hl]
    inc a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld d, h
    db $76
    ld a, c
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld e, [hl]
    ld [bc], a
    ld h, d
    dec b
    ld h, h
    ld e, h
    ld [bc], a
    ld h, d
    ld h, [hl]
    ld e, [hl]
    ld e, b
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld h, h
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    dec b
    ld e, h
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld h, [hl]
    ld d, h
    ld a, c
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld e, h
    ld [bc], a
    ld h, d
    ld e, h
    dec b
    ld h, c
    ld h, [hl]
    ld [bc], a
    ld e, h
    ld h, [hl]
    ld e, b
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld h, c
    ld e, [hl]
    ld h, h
    inc a
    ld [bc], a
    ld h, h
    dec b
    dec b
    dec b
    ld e, h
    ld [bc], a
    ld [bc], a
    ld h, h
    ld h, c
    ld e, b
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld h, [hl]
    ld h, h
    ld e, h
    ld e, h
    ld [bc], a
    ld b, a
    inc d
    dec d
    dec b
    dec b
    ld h, b
    ld h, [hl]
    ld [bc], a
    ld [bc], a
    ld e, [hl]
    ld e, [hl]
    ld e, h
    inc a
    ld b, a
    ld [bc], a
    ld e, [hl]
    ld e, h
    inc a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, d
    dec b
    dec b
    dec b
    ld h, c
    ld h, h
    ld a, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, $65
    ld e, h
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, c
    ld h, h
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld h, c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0302
    inc de
    ld [$0605], sp
    rlca
    inc b
    inc c
    inc b
    inc b
    inc b
    ld l, $2f
    db $10
    ld de, $2e27
    cpl
    inc b
    inc b
    inc b
    ld e, $1e
    dec b
    dec e
    dec e
    dec e
    dec e
    ld [$0a09], sp
    rrca
    rrca
    jr nz, jr_02b_4326

    rrca
    ld a, [de]
    rrca
    inc c
    dec c
    ld c, $0f
    dec de
    rra
    inc e
    dec de
    rrca
    rrca
    db $10
    ld de, $1712
    ld hl, $260b
    ld hl, $260b
    inc b
    inc b

jr_02b_4326:
    inc b
    inc b
    inc b
    ld [bc], a
    inc bc
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, $07
    jr nc, jr_02b_4365

    ld [hl-], a
    rrca
    dec de
    rrca
    rrca
    rrca
    rrca
    rrca
    inc de
    ld hl, $0f0f
    inc d
    ld de, $1312
    db $10
    dec d
    db $10
    db $10
    db $10
    ld d, $16
    db $10
    db $10
    ld d, $16
    db $10
    db $10
    ld d, $16
    db $10
    db $10
    ld d, $16
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld c, $0f
    db $10
    rla
    rla
    rla
    rla
    rla

jr_02b_4365:
    rla
    rla
    rla
    rla
    add hl, bc
    inc bc
    ld a, [bc]
    rla
    rla
    rla
    rla
    rla
    rla
    rlca
    rlca
    rlca
    add hl, de
    jr @+$03

    jr @+$03

    jr jr_02b_4383

    inc c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_02b_4383:
    rlca
    add hl, bc
    inc bc
    ld bc, $070a
    db $10
    ld de, $0707
    inc d
    dec d
    rlca
    dec c
    inc c
    rlca
    ld c, $04
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    ld [$0707], sp
    ld b, $07
    inc c
    rlca
    rlca
    ld [de], a
    inc de
    ld d, $02
    dec bc
    dec bc
    rlca
    rlca
    ld [$0708], sp
    rrca
    rlca
    inc c
    rlca
    rlca
    inc bc
    dec b
    inc bc
    inc bc
    ld [$0a09], sp
    ld [bc], a
    dec bc
    inc b
    inc b
    inc b
    inc c
    dec c
    ld c, $04
    inc b
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    dec bc
    rlca
    rlca
    ld b, $25
    inc b
    inc b
    inc b
    inc bc
    dec b
    inc de
    inc de
    inc de
    inc bc
    jr jr_02b_43f5

    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    inc b
    db $10
    inc l
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    inc b
    ld l, $2d
    inc bc

jr_02b_43f5:
    dec b
    rla
    add hl, bc
    ld a, [bc]
    inc bc
    ld bc, $0402
    inc b
    inc c
    dec c
    ld c, $04
    inc b
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    inc b
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    ld [de], a
    inc b
    inc de
    inc de
    inc bc
    dec b
    inc bc
    inc d
    inc d
    inc bc
    jr jr_02b_4435

    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec d
    dec d
    inc de
    inc de
    inc b
    db $10
    ld de, $0404
    inc b
    inc b
    inc b
    inc b
    dec d
    inc d
    inc bc

jr_02b_4435:
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0402
    inc b
    inc b
    ld e, $1f
    inc b
    inc b
    inc b
    rlca
    inc b
    inc b
    ld a, [de]
    dec de
    inc b
    inc b
    inc b
    rlca
    inc b
    inc b
    inc e
    dec e
    inc b
    inc b
    inc b
    inc bc
    dec b
    inc bc
    inc bc
    ld hl, $2f21
    add hl, de
    dec bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    jr nz, jr_02b_446c

    inc b
    inc b
    inc b
    inc b

jr_02b_446c:
    dec bc
    rlca
    jr nz, jr_02b_4474

    inc b
    inc b
    inc b
    inc b

jr_02b_4474:
    inc bc
    ld h, $06
    dec h
    dec b
    rla
    dec c
    ld b, $0f
    ld de, $030a
    ld [bc], a
    ld [bc], a
    dec bc
    inc bc
    db $10
    ld [bc], a
    inc c
    inc bc
    ld [$0908], sp
    ld c, $16
    inc b
    dec c
    dec d
    ld [de], a
    ld de, $030a
    inc de
    ld [bc], a
    dec bc
    inc bc
    inc d
    ld [bc], a
    inc c
    inc bc
    ld [$0908], sp
    inc bc
    dec d
    inc b
    dec c
    ld d, $12
    jr jr_02b_44c0

    inc bc
    inc de
    dec de
    ld a, [de]
    inc bc
    inc e
    ld [bc], a
    inc c
    inc bc
    ld [$0908], sp
    inc bc
    inc h
    dec h
    ld [hl+], a
    inc hl
    jr z, jr_02b_44e3

    inc l
    dec hl
    ld h, $27
    inc l
    dec hl

jr_02b_44c0:
    dec e
    ld e, $21
    dec hl
    dec e
    ld e, $1e
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    inc l
    ld a, [hl+]
    ld [bc], a
    dec l
    ld l, $02
    ld [bc], a
    ld sp, $0232
    cpl
    jr nc, jr_02b_44d9

    cpl
    inc b

jr_02b_44d9:
    inc b
    inc b
    inc e
    jr z, jr_02b_44eb

    ld [bc], a
    jr z, @+$0f

    ld [bc], a
    add hl, bc

jr_02b_44e3:
    add hl, bc
    daa
    dec de
    ld bc, $1201
    ld c, $0e

jr_02b_44eb:
    ld [de], a
    ld [$0101], sp
    ld [$0101], sp
    ld [$0101], sp
    ld [$0607], sp
    dec b
    rlca
    ld b, $05
    rlca
    ld b, $05
    rlca
    rlca
    ld b, $05
    rlca
    ld b, $05
    rlca
    ld b, $05
    rlca
    dec bc
    ld b, $05
    dec bc
    ld b, $05
    dec bc
    ld b, $05
    dec bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $010c
    ld bc, $1011
    db $10
    ld bc, $0101
    ld bc, $010c
    ld d, $16
    ld d, $16
    ld d, $17
    jr @+$1b

    ld a, [de]
    rla
    rla
    inc e
    dec e
    ld e, $17
    rla
    rra
    dec de
    jr nz, @+$19

    ld d, $16
    ld d, $16
    ld d, $17
    jr jr_02b_4565

    ld a, [de]
    rla
    rla
    inc e
    ld hl, $171e
    rla
    rra
    dec de
    jr nz, jr_02b_4566

    inc de
    ld bc, $2908
    inc b
    dec de
    inc e
    inc b
    inc b
    jr @+$1b

    inc b
    dec b
    ld b, $07
    ld a, [hl+]
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c

jr_02b_4565:
    dec c

jr_02b_4566:
    dec c
    dec c
    ld de, $020a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$020a], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$020a], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$020a], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$020a], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$020a], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$020a], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$1609], sp
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld d, $08
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0909
    add hl, bc
    ld a, [bc]
    inc h
    ld a, [hl+]
    jr z, jr_02b_45ca

    ld a, [de]
    inc c

jr_02b_45ca:
    dec c
    dec c
    ld de, $2309
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [de]
    ld [$1009], sp
    ld c, $02
    dec e
    inc b
    inc d
    ld b, $02
    ld [$0e10], sp
    ld [bc], a
    ld [bc], a
    dec e
    inc c
    ld [de], a
    ld c, $02
    ld [$240a], sp
    dec hl
    add hl, hl
    ld a, [hl+]
    ld [bc], a
    ld [bc], a
    dec sp
    ld [bc], a
    ld [$2309], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $02
    ld [$0d10], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $02
    ld [$210a], sp
    dec hl
    ld hl, $2121
    ld hl, $2921
    ld [$210a], sp
    ld hl, $2121
    ld hl, $2921
    inc e
    ld [$290a], sp
    ld hl, $2829
    add hl, hl
    jr z, jr_02b_464e

    inc e
    ld [$2b0a], sp
    add hl, hl
    ld [hl+], a
    inc b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    ld a, [bc]
    ld e, $2b
    add hl, hl
    ld [$0d10], sp
    dec c
    dec c
    ld de, $1e0a
    ld e, $02
    inc c
    ld c, $0f
    dec h
    rra
    ld [$1e0a], sp
    ld [bc], a
    inc e
    dec l
    ld l, $2c
    ld l, $2f

jr_02b_464e:
    ld [$210a], sp
    ld [bc], a
    inc e
    dec l
    ld l, $2c
    ld l, $2f
    ld [$1b0a], sp
    ld [bc], a
    add hl, hl
    ld h, $0f
    rrca
    rrca
    rrca
    ld [$0509], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $040a
    inc d
    ld b, $04
    ld b, $0f
    rrca
    ld sp, $0a08
    ld [$0e10], sp
    inc c
    ld c, $0f
    rrca
    ld sp, $0a08
    ld [$2d0a], sp
    ld l, $2e
    inc l
    inc l
    cpl
    ld [$080a], sp
    ld a, [bc]
    dec l
    ld l, $2e
    inc l
    inc l
    cpl
    ld [$080a], sp
    ld a, [bc]
    dec e
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$080a], sp
    add hl, bc
    dec b
    ld b, $0f
    inc b
    dec b
    ld b, $08
    ld a, [bc]
    inc c
    ld [de], a
    dec c
    ld c, $0f
    inc c
    dec c
    ld [hl], $08
    ld a, [bc]
    inc e
    ld [bc], a
    ld sp, $0f0f
    dec h
    ld [bc], a
    ld hl, $0a08
    inc e
    inc b
    ld b, $0f
    inc b
    dec b
    dec b
    ld b, $08
    ld a, [bc]
    jr z, @+$0a

    ld a, [bc]
    rrca
    inc c
    jr nc, jr_02b_46ea

    ld a, [bc]
    ld [$020a], sp
    ld [$0f0a], sp
    dec h
    ld [bc], a
    ld [$080a], sp
    ld a, [bc]
    inc e
    ld [$0509], sp

jr_02b_46ea:
    ld b, $04
    add hl, bc
    ld a, [bc]
    ld [$020a], sp
    ld [$0d10], sp
    ld c, $0c
    jr nc, @+$10

    ld [$020a], sp
    inc c
    ld [hl], $0f
    rrca
    rrca
    rrca
    rrca
    ld [$020a], sp
    ld h, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$0509], sp
    ld b, $0f
    rrca
    rrca
    rrca
    rrca
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0e10
    ld a, [hl+]
    ld [bc], a
    add hl, de
    jr z, jr_02b_4734

    add hl, hl
    inc h

jr_02b_4734:
    ld [$2b0a], sp
    add hl, hl
    ld a, $27
    daa
    dec a
    inc b
    inc hl
    add hl, bc
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    dec hl
    add hl, hl
    ld [bc], a
    ld a, [de]
    inc c
    dec c
    ld de, $3e0a
    dec a
    inc b
    ld b, $02
    dec hl
    ld [bc], a
    ld [bc], a
    ld [$040a], sp
    dec b
    add hl, bc
    add hl, bc
    dec b
    dec b
    ld b, $02
    ld [$080a], sp
    dec [hl]
    dec c
    dec c
    ld de, $0e10
    ld e, $08
    ld a, [bc]
    inc c
    ld [hl], $2b
    add hl, hl
    ld [$020a], sp
    dec hl
    ld [$310a], sp
    ld [bc], a
    ld a, [hl+]
    inc e
    ld [$0609], sp
    add hl, hl
    ld [$040a], sp
    dec d
    ld b, $1c
    inc c
    ld [de], a
    ld c, $1c
    ld [$080a], sp
    db $10
    ld c, $02
    jr z, jr_02b_478e

    ld a, [hl+]
    dec hl

jr_02b_478e:
    ld [$080a], sp
    ld a, [bc]
    dec hl
    dec hl
    inc b
    dec b
    dec b
    dec b
    add hl, bc
    ld a, [bc]
    inc c
    ld [hl], $02
    dec e
    inc c
    dec c
    dec c
    dec c
    ld de, $200a
    ld [bc], a
    ld [bc], a
    dec sp
    ld a, [hl+]
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    ld [$3e0a], sp
    dec a
    inc b
    ld b, $2a
    ld a, $3d
    ld [bc], a
    ld [$260a], sp
    dec h
    inc c
    ld c, $28
    ld h, $25
    inc h
    ld [$1f0a], sp
    jr z, @+$2b

    ld a, [hl+]
    ld a, [hl+]
    ld a, [de]
    inc b
    inc hl
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc de
    inc de
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, $13
    inc de
    inc de
    inc de
    ld b, $13
    inc de
    ld b, $27
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld b, $06
    ld b, $13
    inc de
    inc de
    ld b, $13
    inc de
    ld b, $06
    daa
    add hl, de
    ld a, [de]
    dec d
    ld bc, $0101
    ld bc, $1801
    dec de
    dec hl
    ld b, $06
    ld b, $13
    inc de
    inc de
    ld b, $27
    ld a, [de]
    ld bc, $0101
    inc de
    inc de
    inc de
    inc de
    ld bc, $0101
    jr @+$2d

    ld b, $13
    inc de
    ld b, $13
    ld b, $1a
    ld bc, $1301
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld bc, $1801
    dec hl
    ld b, $13
    inc de
    daa
    ld a, [de]
    ld bc, $1301
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld bc, $1801
    inc b
    ld b, $13
    ld d, $01
    ld bc, $1313
    inc de
    inc de
    ld bc, $0101
    ld bc, $1313
    inc de
    inc de
    ld bc, $1801
    add hl, de
    dec de
    ld d, $01
    inc de
    inc de
    inc de
    inc de
    ld bc, $0801
    add hl, bc
    ld bc, $1301
    inc de
    inc de
    inc de
    ld bc, $2928
    ld a, [hl+]
    ld d, $01
    inc de
    inc de
    inc de
    ld bc, $0801
    inc [hl]
    dec [hl]
    add hl, bc
    ld bc, $1301
    inc de
    inc de
    ld bc, $2d2c
    ld l, $16
    ld bc, $0101
    ld bc, $3a01
    jr c, @+$41

    inc sp
    add hl, sp
    dec sp
    ld bc, $0101
    ld bc, $300b
    ld sp, $1632
    ld bc, $0303
    inc bc
    ld bc, $0c01
    ld [hl], $37
    dec c
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $1110
    ld de, $0116
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0c01
    dec c
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0614
    dec b
    ld d, $01
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $1401
    ld b, $05
    inc hl
    ld [de], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $1001
    ld b, $05
    dec b
    inc de
    nop
    ld [de], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $1001
    rra
    ld b, $05
    ld b, $13
    ld b, $23
    ld [de], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $1701
    ld bc, $0614
    dec b
    dec b
    ld b, $13
    ld b, $06
    inc hl
    ld de, $0112
    ld bc, $0101
    ld bc, $0101
    ld bc, $1401
    ld b, $05
    ld b, $05
    inc de
    inc de
    inc de
    ld b, $06
    inc hl
    ld de, $1c12
    ld e, $10
    ld de, $1111
    ld de, $061f
    dec b
    ld b, $05
    ld b, $13
    ld b, $06
    ld b, $06
    ld b, $16
    jr nz, @+$24

    inc d
    ld b, $06
    ld b, $06
    ld b, $06
    dec b
    dec b
    dec b
    inc de
    inc de
    ld b, $27
    add hl, de
    add hl, de
    dec de
    ld a, [de]
    inc h
    ld h, $18
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    dec de
    dec hl
    ld b, $05
    ld b, $13
    ld b, $06
    ld d, $0e
    ld c, $0f
    ld bc, $0101
    cpl
    ld c, $01
    ld c, $0e
    rrca
    inc d
    ld b, $05
    dec b
    inc de
    ld b, $06
    ld d, $01
    ld bc, $0101
    ld bc, $3c01
    dec a
    dec a
    dec a
    ld a, $01
    inc d
    ld b, $06
    dec b
    inc de
    ld b, $06
    ld d, $01
    ld bc, $1501
    ld bc, $0101
    ld bc, $0101
    ld bc, $1401
    ld b, $05
    dec b
    inc de
    ld b, $06
    ld d, $01
    ld a, [bc]
    ld bc, $1110
    ld de, $1111
    ld de, $1111
    ld de, $061f
    dec b
    ld b, $13
    ld b, $13
    ld d, $28
    add hl, hl
    ld a, [hl+]
    inc d
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    dec b
    inc de
    ld b, $13
    ld b, $2c
    dec l
    ld l, $14
    ld b, $05
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    ld b, $06
    ld b, $05
    inc de
    inc de
    inc de
    ld b, $30
    ld sp, $1432
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    ld c, $02
    ld [bc], a
    inc de
    inc [hl]
    ld bc, $2b3b
    inc c
    inc a
    jr nc, jr_02b_4a0a

    ld bc, $2625
    ld bc, $1717
    jr jr_02b_4a1e

    ld [bc], a
    inc de
    dec d
    ld d, $05

jr_02b_4a0a:
    dec b
    dec b
    dec b
    inc b
    ld de, $0427
    rrca
    ld a, [de]
    inc de
    inc hl
    inc d
    add hl, hl
    ld sp, $0c32
    inc b
    ld c, $1b
    inc e

jr_02b_4a1e:
    inc b
    inc sp
    dec [hl]
    inc b
    inc b
    inc b
    jr jr_02b_4a3f

    inc b
    ld [hl], $04
    dec b
    ld b, $07
    ld a, [hl+]
    dec b
    dec b
    dec b
    dec b
    ld a, [bc]
    ld d, $0a
    ld d, $0a
    ld d, $0a
    ld d, $0a
    ld d, $0b
    dec bc
    dec bc
    dec bc

jr_02b_4a3f:
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc d
    inc d
    db $10
    ld de, $1215
    inc de
    inc d
    inc d
    inc d
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    rlca
    ld [$0606], sp
    ld b, $06
    rrca
    rrca
    ld bc, $0301
    inc bc
    inc l
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $0301
    inc bc
    dec l
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    inc bc
    add hl, bc
    inc bc
    inc bc
    rrca
    rrca
    rrca
    dec b
    dec b
    dec b
    inc c
    dec c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [$0a09], sp
    ld a, [bc]
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, [bc]
    ld d, $1e
    ld l, d
    ld [hl], b
    ld [hl], b
    ld l, e
    dec b
    dec b
    ld d, h
    ld d, l
    inc bc
    inc bc
    ld l, h
    ld [hl], d
    ld [hl], e
    ld l, l
    dec b
    dec b
    ld e, b
    ld e, c
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0545
    ld a, [bc]
    ld e, b
    ld e, c
    ld l, d
    ld [hl], b
    ld [hl], b
    ld l, e
    ld bc, $1514
    ld a, [bc]
    ld e, b
    ld e, c
    ld l, b
    ld l, a
    ld [hl], e
    ld l, l
    ld bc, $4501
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld l, c
    ld bc, $0101
    dec b
    dec b
    ld l, h
    ld [hl], e
    ld l, [hl]
    ld [hl], c
    ld l, c
    ld bc, $0545
    dec b
    dec b
    ld a, [bc]
    ld e, d
    ld l, h
    ld [hl], e
    ld l, l
    ld bc, $0805
    add hl, bc
    dec b
    inc bc
    ld bc, $0101
    ld a, [bc]
    ld bc, $100e
    ld de, $030b
    dec b
    ld a, [bc]
    ld l, d
    ld [hl], b
    ld l, e
    ld bc, $0505
    dec b
    inc bc
    ld l, d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld l, c
    ld bc, $0a0a
    dec b
    ld l, d
    ld [hl], c
    ld l, a
    ld [hl], e
    ld l, [hl]
    ld l, c
    inc bc
    inc bc
    ld l, d
    ld l, e
    ld l, h
    ld [hl], e
    ld l, l
    inc bc
    ld l, h
    ld l, l
    inc bc
    inc bc
    ld l, b
    ld l, c
    ld a, [bc]
    inc bc
    ld d, b
    ld d, [hl]
    ld d, [hl]
    ld d, c
    inc bc
    ld l, d
    ld [hl], c
    ld l, c
    dec b
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, c
    inc bc
    inc bc
    ld l, h
    ld [hl], e
    ld l, l
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld b, $07
    ld [$010e], sp
    ld [bc], a
    rrca
    ld c, $03
    inc b
    rrca
    ld c, $0d
    dec c
    rrca
    inc d
    inc l
    dec hl
    rla
    dec b
    rlca
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $08
    ld c, $1b
    inc e
    dec c
    dec de
    inc e
    dec c
    dec de
    inc e
    rrca
    inc d
    ld [de], a
    inc de
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    rla
    ld c, $1d
    ld e, $0d
    dec e
    ld e, $0d
    dec e
    ld e, $0f
    ld c, $1f
    jr nz, jr_02b_4b8c

    rra
    jr nz, @+$0f

    rra
    jr nz, jr_02b_4b94

    dec b
    ld b, $07
    ld b, $06
    ld b, $07

jr_02b_4b8c:
    db $10
    ld de, $0e08
    dec de
    dec c
    dec c
    dec c

jr_02b_4b94:
    ld a, [de]
    dec c
    dec c
    inc e
    rrca
    inc d
    ld [de], a
    inc de
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    rla
    ld c, $1d
    ld e, $0d
    dec e
    ld e, $0d
    dec e
    ld e, $0f
    ld c, $1f
    jr nz, jr_02b_4bbe

    rra
    jr nz, @+$0f

    rra
    jr nz, jr_02b_4bc6

    dec b
    ld b, $07
    ld b, $06
    ld b, $07

jr_02b_4bbe:
    db $10
    ld de, $0e08
    dec e
    ld e, $0d
    dec e

jr_02b_4bc6:
    ld e, $0d
    dec e
    ld e, $0f
    ld c, $1f
    jr nz, jr_02b_4bdc

    rra
    jr nz, @+$0f

    rra
    jr nz, @+$11

    ld h, $2a
    daa
    ld a, [hl+]
    daa
    ld a, [hl+]
    daa

jr_02b_4bdc:
    ld a, [hl+]
    daa
    jr z, jr_02b_4be5

    dec l
    jr nc, jr_02b_4beb

    ld c, $18

jr_02b_4be5:
    add hl, de
    rrca
    ld c, $03
    inc b
    rrca

jr_02b_4beb:
    ld c, $0d
    dec c
    rrca
    inc d
    inc l
    dec hl
    rla
    add hl, bc
    inc bc
    inc l
    inc l
    ccf
    inc l
    inc l
    inc l
    inc l
    add hl, bc
    ld a, $3d
    inc a
    dec hl
    add hl, bc
    inc a
    dec hl
    dec hl
    dec hl
    inc a
    add hl, bc
    dec a
    dec a
    dec hl
    dec hl
    inc a
    inc a
    dec hl
    dec hl
    dec hl
    ld a, $3d
    dec a
    inc l
    db $10
    ld de, $2c3c
    inc l
    add hl, bc
    ld a, $3d
    dec a
    inc l
    inc d
    dec d
    inc a
    inc a
    dec hl
    dec hl
    ld a, $03
    dec hl
    dec a
    dec hl
    dec a
    dec hl
    dec hl
    inc l
    add hl, bc
    ccf
    dec c
    dec hl
    dec hl
    dec hl
    add hl, bc
    dec hl
    inc a
    dec hl
    dec hl
    inc l
    inc l
    inc l
    inc l
    dec e
    ld e, $2b
    inc bc
    dec hl
    dec hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $022a
    inc a
    dec hl
    inc a
    dec hl
    dec hl
    dec c
    dec hl
    add hl, bc
    ld a, [hl+]
    ccf
    add hl, bc
    dec hl
    dec hl
    dec hl
    dec hl
    add hl, bc
    dec hl
    add hl, bc
    add hl, bc
    inc l
    ccf
    inc l
    ccf
    inc l
    inc l
    ld a, $2b
    add hl, bc
    add hl, bc
    rrca
    inc l
    inc l
    db $10
    ld de, $0e3c
    add hl, bc
    dec c
    add hl, bc
    add hl, bc
    dec a
    dec hl
    inc d
    dec d
    inc a
    dec hl
    dec hl
    add hl, bc
    add hl, bc
    ld [bc], a
    dec hl
    ld a, [hl+]
    dec c
    dec hl
    dec hl
    inc l
    inc l
    dec c
    add hl, bc
    dec hl
    inc a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    add hl, bc
    ld a, [hl+]
    inc h
    add hl, bc
    add hl, bc
    inc bc
    inc l
    ld [bc], a
    inc l
    inc l
    add hl, bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0f0f
    inc b
    dec b
    ld l, $2f
    dec b
    ld b, $0b
    rrca
    rrca
    rrca
    ld [$0909], sp
    add hl, bc
    rrca
    ld a, [bc]
    dec bc
    rrca
    rrca
    dec a
    dec hl
    add hl, bc
    rlca
    add hl, bc
    add hl, bc
    inc l
    ld a, $0f
    rrca
    dec a
    dec b
    ld b, $10
    ld de, $0504
    ld a, $0f
    rrca
    dec a
    rrca
    ld a, [bc]
    inc d
    dec d
    ld [$3e07], sp
    rrca
    rrca
    dec a
    ld a, [hl+]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld [$3e0b], sp
    rrca
    rrca
    dec a
    dec c
    ld c, $09
    add hl, bc
    inc c
    dec c
    ld a, $0f
    rrca
    add hl, bc
    inc l
    add hl, bc
    add hl, bc
    rra
    add hl, bc
    dec hl
    add hl, bc
    rrca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0212
    ld sp, $310b
    dec bc
    ld [bc], a
    inc bc
    ld sp, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld h, $2b
    ld h, $2e
    ld bc, $0101
    rlca
    add hl, bc
    inc d
    inc l
    inc d
    dec l
    ld bc, $0c01
    ld [bc], a
    ld [bc], a
    ld de, $0a24
    ld [bc], a
    dec c
    inc b
    ld bc, $0101
    ld bc, $3d01
    ld bc, $1515
    jr nc, jr_02b_4d3a

    dec sp

jr_02b_4d3a:
    cpl
    ld bc, $3520
    add hl, de
    inc sp
    rra
    ld bc, $3a39
    ld bc, $3520
    ld [hl-], a
    inc [hl]
    dec c
    ld [bc], a
    inc b
    inc bc
    ld [bc], a
    ld sp, $230b
    inc bc
    ld bc, $0f0e
    ld c, $0f
    ld bc, $2801
    ld bc, $2701
    ld bc, $0127
    ld bc, $2901
    ld bc, $083c
    ld bc, $0108
    ld [$2337], sp
    ld bc, $310c
    dec bc
    ld [bc], a
    dec c
    inc hl
    inc c
    ld [bc], a
    dec c
    ld bc, $0e01
    rrca
    ld bc, $0123
    dec d
    dec d
    ld c, $0f
    daa
    ld c, $0f
    inc hl
    dec [hl]
    add hl, de
    inc sp
    daa
    ld bc, $2701
    ld bc, $3523
    ld [hl-], a
    inc [hl]
    dec e
    ld [bc], a
    ld sp, $0b23
    ld [bc], a
    dec e
    ld [bc], a
    ld a, [bc]
    ld c, $0f
    ld bc, $1523
    dec d
    dec d
    dec d
    dec a
    daa
    inc e
    ld [hl+], a
    inc hl
    ld [hl], $19
    inc sp
    ld [hl], $3e
    ld bc, $1401
    inc hl
    dec [hl]
    ld [hl-], a
    inc [hl]
    dec [hl]
    ld a, $05
    dec b
    jr @+$21

    add hl, de
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, a
    inc e
    ld [hl], a
    ld e, $05
    jr jr_02b_4de0

    dec b
    dec b
    dec b
    inc b
    ld bc, $0101
    ld b, a
    ld d, $1e
    ld a, [bc]
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $5401
    ld bc, $0101

jr_02b_4de0:
    ld bc, $0145
    ld bc, $0101
    ld e, b
    dec b
    inc d
    dec d
    ld bc, $0101
    ld bc, $6201
    dec b
    inc b
    ld bc, $0101
    ld b, a
    inc d
    dec d
    ld bc, $0562
    dec b
    ld h, l
    ld h, l
    ld bc, $0101
    ld bc, $6201
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0505
    jr jr_02b_4e35

    dec b
    jr jr_02b_4e38

    dec b
    ld e, b
    ld e, c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0505
    ld a, [de]
    rla
    dec b
    ld a, [de]
    dec de
    dec b
    ld h, h

jr_02b_4e35:
    ld [bc], a
    dec b
    db $76

jr_02b_4e38:
    ld a, [bc]
    db $76
    db $76
    ld a, [bc]
    ld a, [bc]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec [hl]
    ld [hl], $35
    dec [hl]
    dec [hl]
    ld bc, $0101
    inc d
    dec d
    ld bc, $0204
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld a, [bc]
    ld sp, $3535
    dec [hl]
    ld bc, $0101
    ld bc, $0101
    ld b, a
    inc d
    dec d
    ld bc, $0145
    dec b
    dec b
    dec b
    inc [hl]
    ld e, c
    ld a, [bc]
    ld e, b
    dec [hl]
    dec [hl]
    dec [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $1401
    dec d
    dec b
    dec b
    dec b
    inc [hl]
    ld e, c
    ld [hl], c
    ld [hl], c
    ld e, b
    dec [hl]
    dec [hl]
    dec [hl]
    ld a, [bc]
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    dec b
    dec b
    dec b
    inc [hl]
    ld a, d
    db $76
    db $76
    ld a, c
    dec [hl]
    jr nc, jr_02b_4ead

    ld e, c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

jr_02b_4ead:
    dec b
    dec b
    ld [hl-], a
    add hl, sp
    jr nc, jr_02b_4ee5

    add hl, sp
    add hl, sp
    inc [hl]
    dec [hl]
    ld e, c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld d, h
    db $76
    db $76
    ld d, l
    dec b
    dec b
    inc l
    dec l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld e, b
    dec [hl]
    dec [hl]
    ld e, c
    dec b
    dec b
    ld [hl+], a
    inc hl
    dec b

jr_02b_4ee5:
    dec b
    ld d, h
    ld d, l
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, b
    ld e, c
    dec b
    dec b
    jr z, jr_02b_4f21

    dec b
    dec b
    ld e, b
    ld e, c
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, b
    ld e, c
    dec b
    dec b
    ld [hl], h
    ld [hl], l
    dec b
    dec b
    ld e, b
    ld e, c
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0505
    dec b
    ld e, b
    ld e, c
    dec b
    dec b
    ld bc, $0545

jr_02b_4f21:
    dec b
    ld e, b
    ld e, c
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld bc, $0505
    dec b
    ld e, b
    ld e, c
    dec b
    dec b
    ld bc, $5401
    db $76
    ld a, c
    ld e, c
    dec b
    dec b
    dec b
    dec b
    inc l
    dec l
    ld bc, $0505
    dec b
    ld e, b
    ld e, c
    dec b
    dec b
    ld bc, $5801
    dec [hl]
    dec [hl]
    ld e, c
    dec b
    dec b
    dec b
    dec b
    ld l, $2f
    ld bc, $1918
    ld e, l
    ld e, b
    jr jr_02b_4f78

    add hl, de
    ld bc, $0401
    inc l
    ld a, [hl+]
    dec l
    dec b
    ld h, b
    dec b
    dec b
    ld bc, $0101
    ld a, [de]
    rla
    ld [bc], a
    ld b, a
    inc e
    dec e
    ld e, $01
    ld bc, $2647
    daa
    cpl
    ld h, c
    ld h, b
    dec b
    dec b

jr_02b_4f78:
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $6161
    ld h, e
    dec b
    dec b
    dec b
    dec b
    ld h, c
    ld h, l
    ld h, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0145
    ld bc, $3d01
    ld e, l
    ld h, d
    dec b
    ld [hl], b
    ld l, e
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld h, l
    ld h, l
    dec b
    dec b
    dec b
    dec b
    ld e, d
    ld d, [hl]
    jr jr_02b_4fc9

    ld h, c
    ld h, c
    dec b
    ld [hl], d
    ld l, l
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $1a01
    dec de
    ld e, l
    ld bc, $010e
    ld b, l

jr_02b_4fc9:
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    inc l
    dec l
    ld e, l
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $1514
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld l, $2f
    inc b
    ld bc, $0401
    ld [bc], a
    inc b
    ld h, d
    dec b
    ld bc, $4501
    dec b
    dec b
    dec b
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld bc, $0101
    ld bc, $6501
    ld h, c
    dec b
    dec b
    dec b
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    cpl
    cpl
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld a, [bc]
    dec b
    dec b
    ld l, b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    ld a, [bc]
    dec b
    dec b
    ld a, [bc]
    jr jr_02b_5064

    dec b
    dec b
    dec b
    ld l, h
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    dec b
    dec b
    dec b
    ld [bc], a
    inc d
    dec d
    dec b
    dec b
    dec b
    dec b
    ld a, [de]
    inc sp
    dec b
    ld a, [bc]
    cpl
    cpl
    cpl

jr_02b_5064:
    dec b
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld b, h
    ld c, c
    ld c, c
    ld c, c
    dec b
    jr jr_02b_5089

    dec b
    ld bc, $0501
    dec b
    ld b, a
    ld e, e
    ld e, h
    dec b
    dec b
    dec b
    add hl, bc
    ld a, b
    ld b, h
    ld b, h
    ld bc, $053c
    ld a, [de]
    dec de
    ld b, a
    ld bc, $0201
    ld [bc], a

jr_02b_5089:
    ld [bc], a
    ld e, l
    ld e, [hl]
    dec b
    ld a, [bc]
    dec b
    ld e, $0b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $3b3b
    ld d, a
    ld c, e
    ld d, a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $1f18
    add hl, de
    ld [bc], a
    ld bc, $1447
    dec d
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cpl
    cpl
    cpl
    dec b
    dec b
    dec b
    ld bc, $1d1c
    ld e, $3c
    ld bc, $0101
    ld bc, $050a
    ld [bc], a
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    dec b
    ld a, [bc]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld l, e
    ld sp, $3131
    ld sp, $3131
    ld sp, $7171
    ld [hl], c
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, [hl]
    ld l, c
    ld sp, $3131
    ld sp, $3131
    dec [hl]
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, c
    jr jr_02b_511c

    ld l, b
    ld l, c
    ld [hl], $31
    ld sp, $3131
    ld sp, $7135
    ld [hl], c
    ld [hl], c
    ld l, c
    ld d, $1e
    ld l, b
    ld l, c
    dec [hl]
    ld sp, $3131
    ld sp, $0731
    ld [hl], c

jr_02b_511c:
    ld [hl], c
    ld [hl], c
    ld l, c
    inc b
    inc b
    ld l, b
    ld l, c
    ld [hl], $07
    ld sp, $3131
    ld sp, $7136
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, e
    inc b
    ld l, b
    ld [hl], c
    ld l, e
    dec [hl]
    add hl, sp
    add hl, sp
    add hl, sp
    dec [hl]
    ld a, [hl-]
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, c
    inc b
    ld l, b
    ld [hl], c
    ld l, c
    ld [hl], $35
    dec [hl]
    dec [hl]
    dec [hl]
    inc [hl]
    ld [hl], c
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, l
    ld e, d
    ld l, h
    ld [hl], d
    ld l, l
    rlca
    inc [hl]
    inc [hl]
    add hl, sp
    inc [hl]
    inc [hl]
    ld [hl], c
    ld l, c
    inc d
    dec d
    ld bc, $5c01
    dec [hl]
    dec [hl]
    ld [hl], $35
    inc [hl]
    inc [hl]
    dec [hl]
    inc [hl]
    ld [hl], c
    ld l, c
    ld bc, $0101
    ld bc, $345b
    dec [hl]
    ld [hl], $35
    inc [hl]
    inc [hl]
    ld [hl-], a
    inc [hl]
    ld [hl], c
    ld [hl], c
    ld l, e
    ld bc, $0101
    jr nc, jr_02b_51b2

    dec [hl]
    jr nc, @+$37

    inc [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    ld [hl], c
    ld l, a
    ld l, l
    ld bc, $3001
    dec [hl]
    dec [hl]
    dec [hl]
    jr nc, @+$09

    dec [hl]
    ld [hl-], a
    dec [hl]
    jr nc, @+$73

    ld l, c
    ld bc, $4501
    jr c, @+$37

    dec [hl]
    dec [hl]
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    jr c, @+$37

    ld [hl], c
    ld l, c
    ld bc, $0101
    ld bc, $3938
    dec [hl]
    ld [hl-], a
    rlca
    add hl, sp
    jr c, @+$37

    inc [hl]
    ld [hl], c

jr_02b_51b2:
    ld l, c
    ld bc, $0101
    ld bc, $0101
    jr c, @+$3b

    dec [hl]
    dec [hl]
    dec [hl]
    jr c, jr_02b_51f5

    ld [hl], c
    ld [hl], c
    ld l, e
    ld bc, $0101
    ld bc, $0101
    ld bc, $3938
    dec [hl]
    dec [hl]
    jr c, jr_02b_5241

    ld [hl], c
    ld l, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    jr c, @+$37

    dec [hl]
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld l, e
    ld bc, $0101
    ld bc, $4501
    ld bc, $0701
    dec [hl]
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, c
    ld bc, $1401

jr_02b_51f5:
    dec d
    ld bc, $0101
    ld bc, $3536
    ld [hl], c
    ld [hl], c
    ld l, a
    ld [hl], d
    ld l, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc [hl]
    ld [hl], c
    ld [hl], c
    ld l, c
    jr @+$21

    add hl, de
    ld bc, $1401
    dec d
    ld bc, $1918
    ld bc, $7134
    ld [hl], c
    ld l, c
    inc e
    dec e
    ld e, $01
    ld bc, $0101
    ld bc, $1b1a
    ld bc, $7134
    ld [hl], c
    ld l, c
    ld a, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $7134
    ld [hl], c
    ld [hl], c
    ld l, e
    ld bc, $0101
    inc d
    dec d

jr_02b_5241:
    ld a, b
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld l, e
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld l, e
    ld bc, $0101
    ld bc, $7168
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, a
    ld [de], a
    inc de
    ld h, [hl]
    ld b, [hl]
    ld d, $1e
    ld b, h
    ld h, [hl]
    ld h, [hl]
    ld [de], a
    inc de
    ld h, a
    ld h, [hl]
    ld h, [hl]
    ld l, b
    ld a, [bc]
    dec [hl]
    ld a, [bc]
    ld h, [hl]
    ld h, a
    ld h, [hl]
    ld [de], a
    inc de
    ld b, [hl]
    ld h, [hl]
    ld h, [hl]
    ld b, h
    ld h, [hl]
    ld h, [hl]
    inc b
    inc b
    inc b
    ld [de], a
    inc de
    ld l, b
    ld a, [bc]
    dec [hl]
    ld hl, $1467
    inc de
    ld h, a
    jr @+$1b

    ld h, [hl]
    ld b, $18
    rra
    add hl, de
    inc d
    inc de
    inc b
    inc b
    ld h, [hl]
    ld l, b
    ld a, [bc]
    dec [hl]
    ld [hl+], a
    ld h, [hl]
    ld b, l
    ld h, [hl]
    ld h, l
    ld d, $1e
    ld h, [hl]
    ld b, $1c
    dec e
    ld e, $66
    ld b, l
    ld b, c
    ld b, d
    ld h, [hl]
    ld l, b
    ld a, [bc]
    dec [hl]
    ld [hl+], a
    ld h, [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $66
    ld b, $77
    ld b, $04
    inc d
    inc de
    ld h, [hl]
    ld l, h
    dec [hl]
    dec [hl]
    dec h
    ld h, $18
    rra
    add hl, de
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, d
    ld c, c
    ld c, c
    dec [hl]
    dec [hl]
    add hl, hl
    ld a, [hl+]
    ld a, [de]
    rrca
    ld de, $7e7e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    jr jr_02b_5313

    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld e, c
    ld b, b
    dec l
    ld l, $66
    ld b, l
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    db $10
    ld de, $1312
    ld b, c
    jr jr_02b_532c

jr_02b_5313:
    ld b, c
    ld e, c
    ld b, h
    ld [hl], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc e
    ld e, $6a
    ld e, c
    ld b, h
    ld c, c
    inc b

jr_02b_532c:
    inc b
    inc b
    jr jr_02b_534f

    add hl, de
    ld b, $06
    ld b, l
    ld [de], a
    inc de
    ld h, [hl]
    ld h, [hl]
    ld h, a
    ld h, a
    inc b
    ld l, b
    ld a, [bc]
    db $76
    ld d, l
    ld [de], a
    inc de
    ld h, a
    db $10
    rla
    ld de, $0606
    jr jr_02b_5368

    add hl, de
    ld h, [hl]
    inc d
    inc de
    inc b
    ld h, a

jr_02b_534f:
    ld l, b
    ld a, [bc]
    dec [hl]
    ld e, c
    ld h, a
    ld h, [hl]
    inc b
    inc b
    inc b
    ld b, l
    ld b, $06
    daa
    inc hl
    jr z, jr_02b_53c5

    inc b
    inc b
    ld [de], a
    inc de
    ld l, b
    ld e, c
    ld b, h
    inc d
    inc de

jr_02b_5368:
    ld h, [hl]
    ld h, a
    ld [$097b], sp
    ld b, $06
    daa
    inc hl
    jr z, jr_02b_53da

    ld h, a
    ld h, [hl]
    ld h, h
    inc de
    ld l, b
    ld e, c
    ld b, h
    inc b
    inc b
    inc b
    inc b
    jr nz, jr_02b_53a4

    ld e, a
    ld b, $06
    db $10
    rla
    inc sp
    jr jr_02b_53a1

    ld h, [hl]
    ld h, a
    inc b
    ld l, b
    ld e, c
    ld h, a
    ld [de], a
    inc de
    ld h, [hl]
    inc d
    inc de
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $16
    ld e, $04
    ld h, h
    inc de
    ld l, b
    ld a, d

jr_02b_53a1:
    ld d, l
    ld h, a
    ld h, [hl]

jr_02b_53a4:
    inc b
    inc b
    ld b, l
    ld b, $67
    ld h, [hl]
    ld h, a
    ld h, h
    dec d
    ld h, a
    ld b, l
    inc b
    ld h, h
    inc de
    ld h, a
    ld l, b
    ld a, [bc]
    ld e, c
    inc b
    ld [de], a
    inc de
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    ld b, $06
    ld [de], a
    inc de
    ld h, h
    inc de
    ld h, a
    ld [de], a

jr_02b_53c5:
    inc de
    inc b
    ld l, h
    dec [hl]
    ld e, c
    ld h, a
    inc b
    ld h, h
    inc de
    ld b, c
    ld b, c
    ld b, d
    ld b, $06
    ld b, b
    ld b, c
    ld b, c
    ld h, a
    ld h, h
    inc de
    inc b

jr_02b_53da:
    ld h, a
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, [hl]
    ld bc, $4401
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, [hl]
    ld bc, $4401
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld b, [hl]
    ld bc, $4401
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld b, [hl]
    ld bc, $4401
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $1849
    rra
    add hl, de
    inc d
    dec d
    ld bc, $4801
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, [hl]
    ld b, a
    inc e
    dec e
    ld e, $02
    ld b, a
    ld bc, $4401
    inc d
    dec d
    inc d
    dec d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, [hl]
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, HeaderNewLicenseeCode
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    ld b, [hl]
    ld b, c
    ld b, c
    ld b, c
    ld bc, $1514
    jr jr_02b_548c

    ld bc, $7654
    ld [$5509], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, [hl]
    ld bc, $0101
    ld bc, $0101
    ld a, [de]
    rla
    ld bc, $3558
    ld a, [hl]
    ld a, a

jr_02b_548c:
    ld e, c
    dec b
    dec b
    ld d, h
    dec b
    dec b
    ld b, [hl]
    jr @+$1b

    ld b, c
    jr @+$1b

    ld bc, $0101
    ld bc, $3558
    inc de
    rrca
    ld e, c
    dec b
    dec b
    ld e, b
    dec b
    dec b
    ld c, d
    ld a, [de]
    ld de, $1a49
    dec de
    ld bc, $0101
    ld bc, $3558
    inc de
    rrca
    ld a, d
    ld a, [bc]
    db $76
    ld a, c
    ld bc, $0178
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1301
    rrca
    dec [hl]
    ld [hl], $35
    dec [hl]
    ld bc, $0101
    ld bc, $0a01
    db $76
    db $76
    ld a, [bc]
    ld bc, $5445
    db $76
    db $76
    inc de
    rrca
    jr nc, jr_02b_54e5

    add hl, sp
    add hl, sp
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]

jr_02b_54e5:
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    inc c
    dec c
    ld e, b
    dec [hl]
    ld [hl], $1a
    ld de, $3534
    dec [hl]
    ld [hl], $35
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    jr jr_02b_5518

    ld e, b
    dec [hl]
    ld [hl], $01
    ld b, l
    inc [hl]
    dec [hl]
    dec [hl]
    ld [hl], $35
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    db $10
    ld de, $3558
    ld [hl], $43
    ld b, e

jr_02b_5518:
    dec [hl]
    dec [hl]
    ld [hl], $31
    ld sp, $3131
    ld sp, $3131
    ld sp, $0a31
    db $76
    db $76
    ld a, [bc]
    ld sp, $3131
    ld sp, $3131
    ld sp, $3535
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld a, [bc]
    ld a, [bc]
    ld l, d
    ld [hl], b
    ld [hl], b
    ld l, e
    ld b, d
    dec b
    dec b
    inc l
    dec l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc h
    dec h
    ld a, [bc]
    ld l, h
    jr nz, jr_02b_557d

    ld l, [hl]
    ld l, e
    dec b
    dec b
    ld h, $2f
    dec bc
    ld bc, $0101
    ld bc, $0505
    dec b
    inc h
    dec h
    ld b, h
    ld a, [bc]
    scf
    dec sp
    ld l, h
    ld l, l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101

jr_02b_557d:
    dec b
    inc h
    dec h
    ld a, [bc]
    ld bc, $7574
    ld a, [bc]
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $2801
    add hl, hl
    dec b
    ld b, c
    ld b, c
    ld bc, $0505
    inc l
    dec l
    inc l
    ld a, [hl+]
    dec l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $7574
    dec b
    ld b, l
    ld d, [hl]
    ld d, [hl]
    ld d, c
    ld [bc], a
    ld h, $2f
    ld h, $27
    cpl
    ld a, [bc]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0545
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $7654
    ld d, l
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $2d2c
    ld [bc], a
    ld bc, $2d2c
    ld bc, $0101
    ld bc, $5958
    ld a, [bc]
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $2f26
    ld [bc], a
    ld bc, $2f26
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc l
    dec l
    ld bc, $1918
    ld bc, $0505
    dec b
    dec b
    ld bc, $1514
    ld [bc], a
    ld bc, $4702
    ld bc, $4701
    ld l, $2f
    ld bc, $171a
    ld bc, $0505
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    ld bc, $1f18
    add hl, de
    ld bc, $2d2c
    ld bc, $0201
    jr @+$1b

    ld bc, $2d2c
    ld bc, $0805
    add hl, bc
    dec b
    ld bc, $1d1c
    ld e, $01
    ld l, $2f
    ld bc, $0201
    ld a, [de]
    dec de
    ld bc, $2f26
    ld bc, $1c0e
    ld e, $05
    ld bc, $0101
    ld b, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, b
    ld h, d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, b
    ld h, d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, b
    ld h, d
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, c
    ld d, $1e
    ld [$097b], sp
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, l
    ld bc, $1c01
    dec e
    ld e, $3f
    ld b, a
    ld [bc], a
    ld d, d
    ld e, d
    ld d, [hl]
    ld h, l
    ld b, a
    dec a
    inc a
    ld h, d
    ld bc, $0101
    ld bc, $0504
    dec b
    dec b
    inc d
    dec d
    ld l, e
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $5769
    jr @+$1b

    ld d, [hl]
    ld e, d
    ld d, a
    jr jr_02b_5700

    ld l, d
    ld l, c
    ld b, a
    ld a, [de]
    ld de, $0101
    ld [bc], a
    ld a, [de]
    dec de
    ld l, b
    ld l, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $6801
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], b

jr_02b_5700:
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    dec b
    dec b
    dec b
    inc l
    dec l
    ld h, c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    ld h, c
    dec b
    dec b
    dec b
    ld h, c
    ld l, $2f
    ld h, c
    ld h, c
    dec b
    dec b
    ld h, c
    ld e, l
    ld e, l
    ld h, c
    ld e, h
    ld e, l
    inc a
    ld h, l
    ld h, l
    ld h, c
    dec b
    dec b
    ld h, c
    ld h, d
    ld a, $66
    ld e, h
    inc a
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld e, e
    ld h, l
    ld h, l
    ld h, c
    dec b
    dec b
    ld h, b
    ld h, l
    ld h, d
    dec b
    ld e, h
    ld h, d
    ld h, b
    ld e, l
    inc a
    ld h, c
    inc a
    ld h, l
    ld h, l
    ld h, d
    dec a
    ld h, c
    dec b
    dec b
    ld d, h
    db $76
    ld d, l
    ld h, [hl]
    ld h, d
    dec b
    ccf
    ld h, c
    ld h, c
    ld e, h
    ld e, l
    inc a
    ld h, [hl]
    ld h, c
    ld h, e
    ld h, [hl]
    ld h, b
    dec b
    ld d, h
    db $76
    ld a, c
    dec [hl]
    ld e, c
    ld h, h
    ld h, d
    dec b
    ld h, d
    ld h, c
    ld h, h
    ld h, l
    ld e, h
    ld e, l
    inc a
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    dec b
    ld e, b
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld h, c
    ld [bc], a
    dec b
    ld a, $5d
    ld h, c
    ld h, c
    ld e, e
    ld e, l
    ld h, c
    ld h, c
    dec b
    ld d, h
    db $76
    db $76
    ld a, c
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    inc a
    ld [bc], a
    dec b
    dec b
    ld e, e
    ld e, l
    ld e, l
    ld e, l
    inc a
    ld h, c
    dec b
    ld d, h
    ld a, c
    jr nc, jr_02b_57d0

    ld sp, $3507
    ld e, c
    ld e, h
    ld [bc], a
    ld h, [hl]
    dec b
    dec b
    ld h, c
    ld e, h
    inc a
    ld h, c
    dec b
    dec b
    ld d, h
    ld a, c
    add hl, sp
    inc [hl]
    dec [hl]
    add hl, sp
    ld a, [hl-]
    dec [hl]
    ld e, c
    ld h, b
    ld h, d
    dec b
    dec b
    dec b
    dec b
    ld h, b
    ld h, c
    dec b
    dec b
    ld d, h
    ld a, c
    jr nc, jr_02b_581e

    ld [hl], c
    ld e, b
    inc [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld h, b
    dec b
    dec b
    dec b
    dec b

jr_02b_57d0:
    dec b
    ld h, e
    ld h, c
    dec b
    ld d, h
    ld a, c
    dec [hl]
    jr c, jr_02b_5853

    db $76
    ld a, c
    inc [hl]
    ld e, c
    ld e, [hl]
    ld e, l
    ld [bc], a
    dec b
    dec b
    dec b
    ld e, l
    ld e, [hl]
    ld a, $05
    dec b
    ld e, b
    dec [hl]
    dec [hl]
    dec [hl]
    ld sp, $3131
    dec [hl]
    ld e, c
    ld e, l
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld h, d
    ld h, l
    ld h, l
    dec b
    dec b
    ld e, b
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ld e, c
    ld h, c
    ld e, l
    ld e, l
    ld h, d
    ld l, d
    ld [hl], b
    ld [hl], b
    dec b
    dec a
    ld h, c
    dec b
    dec b
    dec b
    dec b
    ld e, b
    ld e, c
    dec b
    ld b, a
    dec b
    ld e, l
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    dec b
    ld l, b
    ld [hl], c
    ld [hl], c

jr_02b_581e:
    dec b
    ld h, l
    ld d, a
    ld c, e
    ld h, l
    ld h, l
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, l
    dec b
    dec b
    ld l, b
    ld [hl], c
    ld [hl], c
    dec b
    ld h, c
    ld c, e
    ld d, a
    ld h, c
    dec b
    dec b
    dec b
    ld h, b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, a
    inc d
    dec d
    dec b
    ld l, d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec b
    dec b
    ld h, l
    ld [bc], a
    dec a
    ld e, l
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_02b_5853:
    ld [bc], a
    dec b
    dec b
    ld l, b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec b
    dec b
    dec b
    dec b
    ld h, h
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld l, h
    ld [hl], d
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld l, a
    ld [hl], e
    ld l, [hl]
    ld [hl], c
    ld [hl], c
    ld l, b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, l
    ld l, a
    ld l, l
    ld [hl], c
    ld l, h
    ld l, [hl]
    ld [hl], c
    ld l, b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, a
    ld [hl], c
    ld [hl], c
    ld l, a
    ld [hl], d
    ld l, l
    ld l, a
    ld [hl], d
    ld [hl], d
    ld l, l
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, h
    ld l, [hl]
    ld l, b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld l, a
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, [hl]
    ld [hl], c
    ld l, b
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, l
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld l, a
    ld l, l
    ld [hl], c
    ld l, c
    jr jr_02b_58e7

    add hl, de
    ld l, b
    ld [hl], c
    ld l, b
    ld l, b
    ld l, c
    ld l, a
    ld [hl], d
    ld [hl], e
    ld l, [hl]
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld l, c
    ld l, a
    ld [hl], d
    ld l, l
    inc e
    dec e
    ld e, $6c
    ld [hl], d
    ld l, b
    ld l, b
    ld l, c
    ld l, c
    inc b
    inc b
    ld l, b
    ld [hl], c

jr_02b_58e7:
    ld [hl], c
    ld l, c
    ld [hl], c
    ld l, c
    ld l, c
    ld a, [bc]
    ld a, [bc]
    ld b, a
    ld [bc], a
    ld [bc], a
    ld c, [hl]
    ld [bc], a
    ld l, b
    ld l, h
    ld l, l
    ld l, c
    inc b
    inc b
    ld l, b
    ld [hl], d
    ld [hl], d
    ld l, l
    ld [hl], c
    ld l, c
    ld l, c
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld l, d
    ld [hl], b
    ld l, e
    ld [bc], a
    ld l, b
    ld [hl], c
    ld l, a
    ld l, l
    inc b
    inc b
    ld l, b
    ld [hl], c
    ld [hl], c
    ld l, a
    ld [hl], d
    ld l, l
    ld l, c
    ld a, [bc]
    ld d, a
    ld a, [bc]
    ld l, h
    ld [hl], d
    ld l, l
    ld h, b
    ld l, b
    ld [hl], c
    ld l, c
    ld a, [bc]
    ld d, a
    ld c, e
    ld l, b
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], c
    ld l, c
    ld b, h
    ld bc, HeaderComplementCheck
    ld bc, $4401
    ld l, b
    ld [hl], c
    ld l, c
    ld bc, $0101
    ld l, b
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], c
    ld l, c
    inc d
    dec d
    ld b, [hl]
    ld bc, $2d2c
    ld b, h
    ld l, h
    ld [hl], d
    ld l, l
    ld e, d
    ld d, [hl]
    ld l, d
    ld [hl], c
    ld [hl], c
    ld l, a
    ld l, l
    ld [hl], c
    ld [hl], c
    ld l, c
    ld b, h
    ld bc, $7846
    ld l, $2f
    ld b, h
    ld a, [bc]
    inc d
    dec d
    ld bc, $6801
    ld [hl], c
    ld l, a
    ld l, l
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, e
    ld a, b
    ld b, [hl]
    ld bc, $0101
    ld b, h
    ld bc, $0101
    ld bc, $6845
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, c
    ld b, [hl]
    ld b, [hl]
    ld bc, $1918
    ld b, h
    jr jr_02b_599a

    ld bc, $0a01
    ld l, b
    ld [hl], c
    ld l, c
    ld [hl], c
    ld l, a
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, l
    ld b, [hl]
    ld b, [hl]
    ld bc, $1b1a
    ld b, h
    ld a, [de]
    rla
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c

jr_02b_599a:
    ld l, c
    ld [hl], c
    ld l, c
    ld d, h
    db $76
    db $76
    ld d, l
    ld b, [hl]
    ld b, [hl]
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld c, c
    ld l, b
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld l, c
    ld [hl], c
    ld l, c
    ld e, b
    dec [hl]
    dec [hl]
    ld e, c
    ld c, d
    ld a, b
    ld d, h
    ld d, l
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld l, b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, e
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld l, e
    ld bc, $0105
    ld l, d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld l, d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    dec hl
    ld b, $2a
    inc l
    add hl, hl
    inc l
    dec hl
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    inc c
    ld c, $2a
    inc l
    add hl, hl
    jr z, jr_02b_5a14

    inc l
    jr z, jr_02b_5a1a

    add hl, hl
    dec hl
    dec h
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], l
    db $76
    jr z, jr_02b_5a28

    add hl, hl
    jr z, jr_02b_5a79

    inc l
    inc h
    ld d, a
    dec h
    ld a, d
    dec e
    ld e, $7a
    ccf
    ccf
    ccf
    dec sp
    dec bc
    ld l, b
    ld l, c
    jr z, jr_02b_5a3c

    add hl, hl
    jr z, jr_02b_5a8d

    inc l

jr_02b_5a14:
    inc l
    inc l
    add hl, hl
    dec e
    ld l, $2d

jr_02b_5a1a:
    ld e, $2c
    inc l
    inc l
    add hl, hl
    ld a, c
    scf
    ld a, [hl]
    inc h
    ld d, a
    ld a, d
    jr z, jr_02b_5aa1

    dec e

jr_02b_5a28:
    ld e, $7a
    ld a, [hl+]
    ccf
    ccf
    ccf
    dec sp
    inc l
    inc l
    ld a, d
    ld a, d
    dec e
    ld e, $7a
    inc l
    inc l
    add hl, hl
    jr z, jr_02b_5a64

    dec bc

jr_02b_5a3c:
    dec bc
    inc h
    inc h
    ld d, a
    ld d, a
    ld a, [hl+]
    add hl, hl
    dec hl
    ld d, a
    dec h
    inc h
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    inc l
    add hl, hl
    jr z, jr_02b_5a78

    dec bc
    dec bc
    dec bc
    dec e
    ld e, $2c
    jr z, jr_02b_5a80

    add hl, hl
    inc l
    inc l
    inc l
    inc l
    inc l
    jr z, jr_02b_5a8b

    inc l
    add hl, hl
    jr z, jr_02b_5add

    ccf

jr_02b_5a64:
    ccf
    ccf
    dec sp
    dec sp
    inc l
    jr z, jr_02b_5a94

    add hl, hl
    dec hl
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    inc h
    ld d, a
    ld a, d
    add hl, hl
    jr z, jr_02b_5aa2

    ld d, a

jr_02b_5a78:
    ld d, a

jr_02b_5a79:
    ld d, a
    dec h
    add hl, hl
    inc l
    inc h
    dec h
    add hl, hl

jr_02b_5a80:
    add hl, hl
    jr nz, jr_02b_5aa4

    jr z, jr_02b_5ab1

    inc l
    inc l
    ld a, d
    add hl, hl
    jr z, jr_02b_5b05

jr_02b_5a8b:
    ld d, a
    ld d, a

jr_02b_5a8d:
    ld d, a
    ld a, [hl+]
    add hl, hl
    ld d, a
    ld d, a
    ld d, a
    dec h

jr_02b_5a94:
    add hl, hl
    ld a, h
    ld [hl], d
    inc h
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    dec h
    inc h
    add hl, hl
    inc l
    inc l

jr_02b_5aa1:
    inc l

jr_02b_5aa2:
    inc h
    dec h

jr_02b_5aa4:
    inc l
    inc l
    inc l
    inc l
    add hl, hl
    inc l
    inc l
    inc l
    ld h, l
    ld h, h
    ld [hl-], a
    ld l, a
    ld b, d

jr_02b_5ab1:
    rrca
    add hl, hl
    dec hl
    ld a, d
    dec e
    ld e, $7a
    dec e
    ld e, $7a
    ld a, [hl+]
    add hl, hl
    inc l
    inc l
    inc l
    ld h, l
    ld h, h
    ld l, l
    ld h, b
    ld b, d
    rrca
    add hl, hl
    add hl, hl
    dec e
    ld l, $3e
    ccf
    dec sp
    dec l
    ld e, $24
    dec h
    rra
    rra
    rra
    ld l, $64
    rrca
    ld l, [hl]
    ld b, d
    rrca
    add hl, hl
    inc l
    dec sp

jr_02b_5add:
    ld b, e
    inc h
    ld d, a
    dec h
    ld b, e
    dec l
    ld e, $0b
    rrca
    rrca
    rrca
    ld h, l
    dec l
    ld e, $6e
    ld b, d
    rrca
    add hl, hl
    inc l
    ld a, d
    inc [hl]
    dec bc
    dec bc
    dec bc
    ld [hl], $65
    dec l
    rra
    ld e, $0b
    dec bc
    rrca
    rrca
    dec bc
    rrca
    ld b, d
    rrca
    add hl, hl
    inc l
    dec e

jr_02b_5b05:
    ld e, $0f
    rrca
    rrca
    dec bc
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    dec bc
    rrca
    rrca
    dec bc
    rrca
    ld b, d
    rrca
    inc l
    dec sp
    ld a, d
    dec bc
    dec bc
    dec bc
    dec bc
    inc sp
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    ld l, h
    dec bc
    dec bc
    dec bc
    rrca
    ld e, c
    ld a, [bc]
    inc l
    inc l
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rlca
    cpl
    scf
    ld a, [hl-]
    ld a, [hl]
    rlca
    cpl
    rlca
    jr nz, @+$23

    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    cpl
    ld a, h
    ld a, [hl]
    ld sp, $3131
    ld sp, $3131
    ld sp, $3131
    ld [$0b0b], sp
    ld sp, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld sp, $3131
    ld sp, $3131
    ld sp, $1d0b
    rra
    rra
    rra
    rra
    rra
    ld e, $0b
    ld sp, $650b
    ld h, h
    dec bc
    ld sp, $3131
    ld sp, $3131
    dec bc
    ld h, l
    ld h, h
    dec bc
    ld sp, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    ld d, c
    ld d, c
    ld h, e
    ld sp, $5162
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld e, c
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    rrca
    ld d, l
    ld d, l
    ld d, l
    ld e, c
    dec bc
    dec bc
    dec bc
    rrca
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rlca
    rlca
    jr nz, jr_02b_5bd7

    rrca
    rrca
    jr c, jr_02b_5bf3

    ld b, a
    ld bc, $1701
    scf
    ld a, [hl]
    rrca
    rrca
    db $10
    ld h, [hl]
    ld b, a
    ld [hl], h
    ld [hl], h
    ld [hl], h
    rrca
    rrca
    rrca
    rrca
    ld [$4701], sp
    ld [hl], h
    ld [hl], h
    ld [hl], h
    rrca
    rrca
    rrca
    rrca
    rrca

jr_02b_5bd7:
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
    ld a, [bc]
    rrca

jr_02b_5bf3:
    rrca
    rrca
    rrca
    rrca
    rrca
    dec bc
    dec bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $0f01
    rrca
    rrca
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], a
    jr nz, jr_02b_5c2e

    ld [hl-], a
    rrca
    rrca
    rrca
    ld bc, $0101
    rla
    scf
    ld a, [hl]
    ld d, $6d
    ld a, [bc]
    rrca
    rrca
    cpl
    rlca
    rlca
    rrca
    ld bc, $0f01
    ld h, b
    rrca
    rrca
    rlca
    rlca
    cpl
    rrca
    ld bc, $310f
    ld l, [hl]

jr_02b_5c2e:
    rra
    ld l, d
    cpl
    rlca
    rlca
    rrca
    dec e
    ld e, $32
    rrca
    ld b, e
    add hl, de
    rlca
    cpl
    rlca
    rrca
    rrca
    ld bc, $0f01
    ld l, e
    dec d
    rlca
    rlca
    rlca
    cpl
    rrca
    rrca
    rrca
    rrca
    ld b, e
    ld b, e
    ld h, h
    ld c, [hl]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, e
    ld a, d
    ld h, h
    ld c, [hl]
    ld a, d
    ld a, [bc]
    rrca
    rrca
    ld a, d
    rrca
    ld hl, $7a6b
    inc de
    ld d, [hl]
    ld [hl], a
    ld a, d
    rrca
    rrca
    rrca
    ld a, [hl]
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $1313
    ld a, d
    ld d, c
    ld d, c
    ld d, c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rra
    ld e, $4e
    dec bc
    ld a, d
    dec bc
    dec bc
    ld h, d
    ld d, c
    ld d, c
    ld a, d
    ld h, h
    ld c, [hl]
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, [hl]
    ld a, d
    ld [hl], h
    ld b, e
    ld h, h
    ld a, d
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld a, d
    ld [hl], h
    ld [hl], h
    ld b, e
    ld a, d
    ld c, [hl]
    ld a, [bc]
    ld [hl], h
    ld a, d
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld [hl], h
    daa
    ld [bc], a
    inc l
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    ld sp, $2737
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    ld bc, $273a
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, $27
    daa
    daa
    daa
    daa
    daa
    ld bc, $3a01
    daa
    daa
    daa
    daa
    ld bc, $2701
    daa
    daa
    daa
    daa
    daa
    jr c, jr_02b_5d29

    ld [hl-], a
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    jr c, jr_02b_5d04

    inc sp

jr_02b_5d04:
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    jr c, jr_02b_5d47

    ld [hl-], a
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    ld bc, $3301
    daa
    daa
    daa
    daa
    daa
    daa
    daa

jr_02b_5d29:
    daa
    daa
    daa
    daa
    daa
    ld bc, $3a01
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    jr c, @+$37

    ld [hl-], a
    daa
    daa
    daa
    daa
    daa
    daa
    daa

jr_02b_5d47:
    daa
    daa
    daa
    daa
    daa
    jr c, jr_02b_5d4f

    inc sp

jr_02b_5d4f:
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    jr c, @+$03

    ld bc, $2727
    daa
    daa
    daa
    ld c, $02
    ld [bc], a
    inc de
    daa
    daa
    daa
    ld bc, $2701
    daa
    daa
    daa
    daa
    daa
    inc [hl]
    ld bc, $2b3b
    daa
    daa
    daa
    ld bc, $2735
    daa
    daa
    daa
    daa
    daa
    inc c
    inc a
    jr nc, @+$0f

    daa
    daa
    daa
    ld bc, $2735
    daa
    daa
    daa
    daa
    daa
    ld bc, $2625
    ld bc, $2727
    daa
    ld bc, $2701
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    ld sp, $2701
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    ld a, [hl+]
    scf
    ld a, [hl+]
    inc d
    ld a, [hl+]
    scf
    inc d
    ld a, [hl+]
    scf
    inc d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    rla
    rla
    dec l
    dec l
    dec l
    ld a, [hl+]
    dec l
    dec l
    ld a, [hl+]
    dec l
    dec l
    ld a, [hl+]
    dec l
    add hl, hl
    dec l
    rla
    rla
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    rla
    rla
    ld a, [hl+]
    ld a, $2a
    ccf
    ld a, [hl+]
    ld a, $3f
    ld a, [hl+]
    ld a, $14
    inc d
    inc d
    inc d
    rla
    rla
    dec l
    dec l
    dec l
    dec a
    dec l
    dec l
    dec a
    dec l
    dec l
    inc d
    inc d
    inc d
    inc d
    rla
    rla
    ld a, [hl+]
    ld a, $2a
    ccf
    ld a, [hl+]
    ld a, $3f
    ld a, [hl+]
    ld a, $3f
    scf
    inc a
    inc d
    rla
    rla
    dec l
    dec l
    dec l
    dec a
    dec l
    dec l
    dec a
    dec l
    dec l
    dec a
    dec l
    dec l
    inc d
    rla
    rla
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    rla
    rla
    rla
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    rla
    rla
    rrca
    inc de
    dec c
    dec bc
    ld de, $1717
    rla
    ld d, $16
    jr z, jr_02b_5e7b

    ld d, $17
    rla
    ld [bc], a
    ld a, [bc]
    jr z, jr_02b_5e74

    ld [bc], a
    rla
    rla
    rla
    dec l
    dec l
    dec l
    dec l

jr_02b_5e74:
    dec l
    rla
    rla
    ld [bc], a
    ld de, $0f2d

jr_02b_5e7b:
    ld [bc], a
    rla
    rla
    rla
    dec d
    dec d
    ld bc, $1515
    rla
    rla
    dec bc
    ld [bc], a
    inc e
    ld [bc], a
    inc de
    rla
    rla
    rla
    dec l
    dec l
    inc e
    dec l
    dec l
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    ld [$0909], sp
    ld a, [bc]
    cpl
    cpl
    ld [$0909], sp
    ld a, [bc]
    inc c
    dec c
    dec bc
    ld c, $01
    ld bc, $0d0c
    inc bc
    ld c, $0c
    jr @+$0b

    add hl, bc
    dec h
    ld h, $08
    dec e
    inc de
    ld a, [bc]
    inc c
    ld c, $0d
    dec c
    dec c
    dec c
    dec de
    dec c
    dec c
    ld c, $0c
    ld a, [de]
    dec c
    dec bc
    dec c
    dec bc
    dec c
    dec bc
    dec bc
    ld c, $0c
    dec c
    dec bc
    dec bc
    dec c
    dec c
    add hl, de
    dec c
    dec c
    ld c, $0c
    jr jr_02b_5f0e

    dec c
    dec c
    dec bc
    rra
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    inc e
    dec e
    dec e
    dec e
    dec e

jr_02b_5f0e:
    add hl, de
    dec c
    dec bc
    ld c, $10
    ld de, $1111
    ld de, $1011
    ld de, $1211
    ld [$0409], sp
    inc b
    ld [$0909], sp
    add hl, bc
    inc b
    ld a, [bc]
    inc c
    dec bc
    dec c
    dec c
    inc c
    dec bc
    dec bc
    dec c
    ld [bc], a
    ld c, $0c
    dec bc
    jr jr_02b_5f41

    inc c
    rra
    add hl, bc
    ld a, [bc]
    dec b
    ld c, $0c
    dec c
    ld c, $0d
    inc c
    dec bc
    dec bc

jr_02b_5f41:
    ld c, $05
    ld c, $0c
    dec c
    ld c, $0d
    inc c
    dec bc
    dec c
    ld c, $05
    ld c, $0c
    dec c
    ld c, $0d
    rra
    add hl, bc
    inc b
    jr nz, jr_02b_5f5c

    ld c, $2c
    ld l, $34
    dec c

jr_02b_5f5c:
    ld hl, $2211
    dec b
    dec b
    ld c, $01
    ld bc, $0b30
    dec c
    dec bc
    ld b, $0b
    dec b
    ld c, $01
    ld bc, $2f32
    cpl
    cpl
    cpl
    cpl
    cpl
    dec l
    inc bc
    ld h, $24
    inc h
    inc h
    ld b, $25
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    ld bc, $0504
    ld [hl+], a
    dec b
    dec b
    ld hl, $0605
    ld bc, $0801
    add hl, bc
    add hl, bc
    add hl, bc
    jr nz, jr_02b_5fa9

    add hl, bc
    ld a, [bc]
    ld bc, $0801
    add hl, bc
    inc b
    dec b
    dec b

jr_02b_5fa9:
    ld b, $09
    ld a, [bc]
    ld bc, $2201
    add hl, bc
    ld [$1110], sp
    ld a, [bc]
    add hl, bc
    ld hl, $0101
    inc b
    add hl, bc
    ld [$1514], sp
    ld a, [bc]
    add hl, bc
    ld b, $01
    ld bc, $0922
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    ld hl, $0101
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, $01
    ld bc, $0505
    ld [hl+], a
    dec e
    ld e, $21
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2a01
    ld a, [hl+]
    inc b
    ld hl, $2f2e
    ld [hl+], a
    ld b, $0f
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc c
    dec c
    add hl, bc
    rra
    dec c
    ld c, $0f
    ld a, [hl+]
    ld a, [hl+]
    db $10
    ld de, $090a
    add hl, bc
    ld [$1110], sp
    ld a, [hl+]
    rrca
    inc d
    dec d
    ld a, [bc]
    db $10
    ld de, $1408
    dec d
    rrca
    rrca
    db $10
    ld de, $140a
    dec d
    ld [$1110], sp
    rrca
    ld a, [hl+]
    inc d
    dec d
    ld a, [bc]
    db $10
    ld de, $1408
    dec d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc b
    dec b
    inc d
    dec d
    dec b
    ld b, $0f
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld [$0931], sp
    inc h
    jr nc, @+$0c

    rrca
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc c
    dec c
    dec c
    dec c
    dec c
    ld c, $2a
    ld a, [hl+]
    inc h
    inc l
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc h
    ld a, $2b
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    inc h
    ld a, $3e
    inc h
    inc l
    inc l
    inc l
    ccf
    inc l
    ccf
    ccf
    ld a, $3e
    ld a, $2b
    dec hl
    dec hl
    db $10
    ld de, $3f2c
    ld a, $3e
    ld a, $2b
    dec hl
    dec hl
    inc d
    dec d
    inc l
    inc l
    ccf
    ld a, $09
    inc l
    ccf
    ccf
    dec a
    ld a, $3c
    inc a
    ld a, $3e
    add hl, bc
    inc l
    inc l
    inc l
    dec a
    ld a, $2b
    dec hl
    dec hl
    add hl, bc
    inc h
    rrca
    rrca
    rrca
    dec a
    ld a, $0f
    rrca
    rrca
    inc h
    rrca
    dec hl
    dec hl
    dec hl
    dec hl
    inc h
    inc l
    inc l
    inc l
    rrca
    dec a
    dec hl
    dec hl
    inc a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    inc h
    ld a, $3d
    dec hl
    dec hl
    dec a
    inc a
    dec hl
    dec hl
    dec hl
    inc a
    ld a, $3d
    dec hl
    dec hl
    dec hl
    dec a
    dec hl
    dec hl
    ld a, $3c
    ld a, $24
    dec hl
    dec hl
    inc a
    inc a
    dec a
    dec hl
    ld a, $3d
    ld a, $3d
    ld a, [hl+]
    ld a, [hl+]
    ld a, $3d
    dec a
    ld a, [hl+]
    inc l
    dec a
    ld a, $2a
    inc l
    inc l
    ld a, $3c
    inc a
    inc l
    ld a, $3d
    ld a, $2b
    dec hl
    dec hl
    ld a, $3e
    inc l
    inc l
    inc l
    dec a
    ld a, $24
    dec hl
    dec hl
    ld a, $3f
    inc a
    ccf
    inc h
    dec a
    inc l
    ld a, [hl+]
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    inc h
    dec b
    add hl, bc
    ld a, $2b
    dec hl
    dec hl
    inc a
    ccf
    dec hl
    dec hl
    dec hl
    ld sp, $0f09
    inc h
    dec hl
    ld a, $3d
    inc l
    inc h
    rrca
    ld sp, $0f3e
    ld a, [hl+]
    ld a, [hl+]
    ld a, $3d
    ld a, [hl+]
    ld a, [hl+]
    rrca
    ld sp, $3c3e
    dec a
    dec hl
    dec hl
    inc h
    inc l
    inc l
    ld a, $31
    ld a, $3d
    dec hl
    ld a, $2b
    ccf
    dec a
    ccf
    ld a, $31
    ld a, $3d
    dec hl
    ccf
    dec hl
    inc l
    inc l
    inc l
    ld a, $31
    ld a, $3e
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, [hl+]
    ld sp, $3f3e
    inc l
    inc l
    inc l
    ccf
    inc l
    inc l
    inc l
    ld a, $2c
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc h
    ld hl, $3b3b
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    ld [hl+], a
    dec a
    jr @+$1a

    jr jr_02b_6178

    jr @+$1a

    jr @+$1a

    add hl, bc
    ld a, [hl+]
    ld a, $30
    inc l
    ld a, $2b
    dec hl
    dec hl
    dec hl
    add hl, bc
    add hl, bc
    ld a, [hl+]
    jr nc, jr_02b_619d

    db $10
    ld de, $3b3b
    dec sp

jr_02b_6178:
    ld sp, $243e
    jr nc, jr_02b_61a7

    inc d
    dec d
    jr jr_02b_6199

    jr jr_02b_619b

    ccf
    ld a, [hl+]
    add hl, bc
    ld hl, $3b3b
    dec sp
    dec sp
    dec sp
    ld [hl+], a
    add hl, bc
    inc l
    ccf
    dec a
    jr jr_02b_61ab

    jr jr_02b_61ad

    jr jr_02b_61b1

    ld a, [hl+]
    dec hl

jr_02b_6199:
    dec hl
    dec hl

jr_02b_619b:
    inc l
    inc h

jr_02b_619d:
    dec sp
    dec sp
    dec sp
    ld sp, $1818
    jr jr_02b_61bd

    jr jr_02b_61bf

jr_02b_61a7:
    jr @+$1a

    jr jr_02b_61c3

jr_02b_61ab:
    add hl, bc
    inc l

jr_02b_61ad:
    inc l
    inc l
    inc l
    inc l

jr_02b_61b1:
    inc l
    inc l
    inc l
    dec a
    ld sp, $0930
    add hl, bc
    inc h
    dec hl
    dec hl
    add hl, bc

jr_02b_61bd:
    inc h
    dec a

jr_02b_61bf:
    ld sp, $0730
    rrca

jr_02b_61c3:
    rrca
    ld a, [hl+]
    ld a, [hl+]
    dec a
    ld a, $3d
    ld sp, $0b30
    add hl, bc
    db $10
    ld de, $3d24
    ld a, $3d
    ld sp, $0b30
    add hl, bc
    inc d
    dec d
    inc h
    dec a
    ld a, $3d
    ld sp, $0b30
    add hl, bc
    rrca
    rrca
    rrca
    dec a
    ld a, $3d
    ld sp, $2b09
    dec hl
    dec hl
    dec hl
    dec hl
    inc a
    ld a, $3d
    add hl, bc
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    inc a
    inc h
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    inc h
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc h
    ld a, $2b
    dec hl
    dec hl
    dec hl
    inc h
    inc l
    inc l
    inc l
    ld a, [hl+]
    ld a, $2b
    inc a
    inc a
    dec hl
    dec hl
    dec hl
    add hl, bc
    inc l
    dec a
    ld a, $0f
    inc h
    ld a, [hl+]
    db $10
    ld de, $242b
    dec a
    inc a
    ld a, $2a
    ld a, [hl+]
    inc h
    inc d
    dec d
    dec hl
    ld a, $3d
    dec a
    inc l
    add hl, bc
    inc l
    rrca
    rrca
    rrca
    dec a
    dec a
    dec a
    dec a
    add hl, bc
    ld a, [hl+]
    dec hl
    dec hl
    inc a
    dec hl
    dec hl
    inc h
    dec a
    dec a
    add hl, bc
    dec hl
    dec hl
    dec hl
    dec hl
    rrca
    inc h
    jr nc, jr_02b_627f

    dec a
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    add hl, bc
    dec hl
    dec hl
    ld a, $3c
    dec hl
    dec hl
    add hl, bc
    inc h
    inc l
    inc l
    ccf
    dec a
    ld a, $3d
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, $3d
    ld a, $3d
    ld a, [hl+]
    rrca
    add hl, bc
    inc h
    rrca
    rrca
    ld a, $3d
    ld a, $2b

jr_02b_627f:
    inc h
    ld a, [hl+]
    db $10
    ld de, $240f
    inc l
    dec a
    inc l
    add hl, bc
    dec l
    ld h, $14
    dec d
    ld h, $2d
    add hl, bc
    ld [de], a
    rrca
    rrca
    ld a, [hl+]
    rrca
    rrca
    rrca
    ld a, [hl+]
    ld a, [hl+]
    rrca
    dec hl
    rrca
    rrca
    ld a, [hl+]
    inc h
    inc l
    ld a, $2a
    ld a, [hl+]
    rrca
    rrca
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec a
    ld a, $2a
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    inc h
    dec hl
    dec hl
    dec hl
    dec hl
    inc l
    inc l
    inc l
    inc l
    inc h
    inc e
    inc e
    inc e
    inc e
    dec de
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc e
    inc e
    inc e
    inc e
    dec de
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc e
    inc e
    inc e
    inc e
    dec l
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc e
    inc e
    inc b
    dec b
    add hl, bc
    inc b
    ld b, $23
    inc hl
    inc hl
    inc e
    inc e
    ld [$1b1b], sp
    dec de
    ld a, [bc]
    inc hl
    inc hl
    inc hl
    inc e
    inc e
    ld [$2d1b], sp
    dec de
    ld a, [bc]
    inc hl
    inc hl
    inc hl
    inc e
    inc e
    ld [$242d], sp
    dec l
    ld a, [bc]
    inc hl
    inc hl
    inc hl
    inc e
    inc e
    inc e
    inc e
    dec de
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc e
    inc e
    inc e
    inc e
    dec de
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld bc, $0521
    ld [hl-], a
    dec b
    inc [hl]
    inc sp
    ld [hl-], a
    ld [hl+], a
    ld bc, $3401
    add hl, bc
    inc sp
    add hl, bc
    ld [hl], $33
    add hl, bc
    inc sp
    ld bc, $0901
    add hl, bc
    inc b
    dec [hl]
    ld [hl-], a
    ld b, $35
    add hl, bc
    ld bc, $3501
    inc [hl]
    ld [$3334], sp
    ld a, [bc]
    inc [hl]
    add hl, bc
    ld bc, $0901
    ld [hl], $08
    ld [hl-], a
    dec h
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld bc, $3501
    inc [hl]
    inc c
    dec c
    dec c
    inc sp
    dec [hl]
    ld [hl], $01
    ld bc, $0932
    inc [hl]
    ld [hl-], a
    add hl, bc
    add hl, bc
    inc [hl]
    add hl, bc
    ld bc, $3301
    add hl, bc
    ld a, [hl-]
    dec e
    ld e, $09
    add hl, bc
    ld [hl], $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1009
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0909
    ld a, [bc]
    inc b
    inc b
    dec b
    dec b
    ld b, $06
    inc c
    ld de, $0a09
    ld [$0908], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld [$0e10], sp
    ld [$0d0c], sp
    jr nc, @+$10

    ld a, [bc]
    inc e
    ld [$1d0a], sp
    inc c
    ld de, $0909
    db $10
    ld c, $28
    ld [$1d0a], sp
    ld sp, $0d0c
    jr nc, jr_02b_63b4

    ld sp, $082b
    add hl, bc
    ld b, $1d
    add hl, de
    ld [bc], a
    ld a, [hl+]
    jr z, @+$04

    ld hl, $0908

jr_02b_63b4:
    add hl, bc
    ld b, $1b
    ld hl, $042b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0909
    ld a, [bc]
    inc b
    dec b
    dec b
    dec b
    ld b, $04
    dec sp
    inc b
    ld b, $3c
    ld b, $08
    add hl, bc
    db $10
    ld c, $08
    add hl, bc
    db $10
    ld [de], a
    ld c, $08
    dec sp
    inc c
    ld [hl], $3c
    ld a, [bc]
    ld [$0a09], sp
    inc b
    add hl, bc
    dec [hl]
    ld c, $02
    ld [bc], a
    ld [$3938], sp
    ld [bc], a
    ld a, [hl-]
    ld a, [bc]
    ld [$0a09], sp
    ld [$0a09], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0a09], sp
    inc c
    ld de, $0509
    dec b
    ld b, $08
    dec [hl]
    dec c
    dec c
    ld de, $080a
    add hl, bc
    ld a, [bc]
    ld [bc], a
    inc c
    dec c
    dec c
    dec c
    ld c, $0c
    ld c, $03
    inc bc
    inc c
    ld c, $08
    add hl, bc
    ld a, [bc]
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, $04
    dec b
    ld b, $04
    dec b
    ld b, $08
    add hl, bc
    ld a, [bc]
    inc c
    ld de, $0d35
    dec c
    ld c, $08
    add hl, bc
    db $10
    ld de, $0a09
    ld [$0a09], sp
    ld [bc], a
    inc c
    ld de, $0206
    ld [bc], a
    inc c
    dec c
    ld c, $0c
    ld [de], a
    ld c, $08
    add hl, bc
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    inc c
    ld de, $0206
    inc b
    dec b
    dec b
    ld b, $02
    ld [bc], a
    ld [$0a09], sp
    inc b
    dec b
    dec b
    add hl, bc
    add hl, bc
    ld b, $08
    dec [hl]
    dec c
    ld [hl], $02
    inc b
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    dec c
    dec c
    dec c
    ld c, $0c
    ld c, $02
    ld [bc], a
    ld [bc], a
    ld [$0909], sp
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec l
    ld l, $2d
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    cpl
    ld l, $2e
    cpl
    dec l
    ld l, $2f
    inc c
    jr nc, @+$0f

    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [de], a
    jr nc, @+$31

    dec l
    ld l, $2f
    ld [$080a], sp
    db $10
    dec c
    ld [de], a
    ld l, $2e
    scf
    ld l, $2e
    ld l, $2e
    ld l, $0d
    ld [hl], $04
    dec b
    dec b
    ld b, $08
    ld a, [bc]
    ld [$3e0a], sp
    daa
    dec a
    ld [bc], a
    dec sp
    ld [bc], a
    ld h, $0f
    rrca
    inc b
    ld b, $0f
    inc c
    ld [de], a
    ld de, $0c0a
    ld [hl], $0c
    ld [hl], $31
    ld sp, $0432
    dec b
    dec b
    ld b, $0f
    rrca
    inc c
    ld c, $0f
    rrca
    rrca
    ld [$0c0a], sp
    ld [hl], $0c
    ld [hl], $2e
    cpl
    inc l
    inc c
    ld [de], a
    ld de, $0f0a
    rrca
    inc b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    ld a, [bc]
    ld [$080a], sp
    add hl, bc
    dec d
    ld b, $0f
    rrca
    rrca
    ld [$0f0a], sp
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    ld [hl], $0c
    dec c
    dec c
    ld c, $05
    ld b, $0f
    ld [$0f0a], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    db $10
    dec c
    ld c, $0c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [de], a
    ld c, $0f
    inc c
    ld c, $0f
    inc c
    dec c
    dec c
    ld de, $0e10
    dec l
    cpl
    inc c
    ld c, $2d
    ld [de], a
    dec c
    dec c
    dec c
    cpl
    inc l
    dec l
    cpl
    inc l
    dec l
    ld l, $2e
    inc c
    ld c, $2f
    dec l
    cpl
    dec l
    cpl
    dec l
    jr nc, @+$30

    scf
    ld l, $2f
    inc l
    dec l
    cpl
    inc l
    dec l
    ld l, $37
    dec l
    cpl
    cpl
    dec e
    dec e
    dec l
    cpl
    dec e
    add hl, bc
    db $10
    dec c
    dec c
    inc [hl]
    inc l
    dec l
    cpl
    inc l
    inc [hl]
    dec c
    ld de, $2f2d
    dec [hl]
    inc [hl]
    ld de, $3435
    jr nc, @+$13

    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    inc b
    ld b, $0f
    rrca
    rrca
    ld [$091d], sp
    ld a, [bc]
    rrca
    ld [$020a], sp
    ld [bc], a
    ld [$0f0a], sp
    rrca
    rrca
    rrca
    inc c
    ld c, $0f
    rrca
    rrca
    inc c
    jr nc, jr_02b_65f7

    ld [hl], $0f
    ld [$020a], sp
    ld [bc], a
    ld [$0f0a], sp
    rrca
    inc b
    dec d
    dec b

jr_02b_65f7:
    ld b, $0f
    rrca
    rrca
    rrca
    rrca
    ld sp, $0f0f
    ld [$290a], sp
    add hl, hl
    inc c
    ld c, $0f
    rrca
    inc c
    ld [de], a
    dec c
    ld c, $0f
    rrca
    rrca
    rrca
    inc b
    ld b, $0f
    rrca
    ld [$240a], sp
    inc b
    dec b
    dec b
    ld b, $0f
    dec h
    inc h
    dec sp
    ld h, $0f
    inc b
    dec b
    ld b, $0c
    ld c, $1c
    inc h
    ld [$2309], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    inc hl
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    inc hl
    add hl, bc
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    ld c, $28
    dec hl
    ld [bc], a
    add hl, de
    jr z, jr_02b_6681

    ld [bc], a
    ld a, [de]
    inc b
    dec b
    dec b
    ld b, $0c
    dec c
    ld de, $0909
    add hl, bc
    ld a, [bc]
    ld [bc], a
    dec hl
    ld [hl+], a
    dec e
    ld hl, $2b29
    jr nz, jr_02b_6671

    inc c
    ld [de], a

jr_02b_6671:
    ld de, $0509
    ld b, $0c
    ld de, $0909
    ld a, [bc]
    jr z, @+$06

    dec b
    dec b
    dec b
    ld b, $18

jr_02b_6681:
    jr z, @+$04

    ld hl, $0c21
    dec c
    dec c
    ld [hl], $31
    ld [$0909], sp
    ld a, [bc]
    inc e
    ld [$1404], sp
    ld b, $0a
    add hl, hl
    dec hl
    inc b
    dec b
    dec b
    dec b
    ld b, $1c
    ld [bc], a
    ld a, [de]
    inc c
    ld de, $0a09
    ld [bc], a
    ld [$120c], sp
    ld c, $0a
    dec e
    ld [hl+], a
    ld [$0d10], sp
    dec c
    ld [hl], $02
    add hl, hl
    ld [bc], a
    ld e, $0c
    ld de, $1c0a
    ld [$0909], sp
    dec e
    ld sp, $0505
    add hl, bc
    ld a, [bc]
    dec e
    jr z, @+$3e

    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec e
    dec e
    ld [$1c0a], sp
    ld [$0604], sp
    db $10
    dec c
    dec c
    dec c
    dec c
    ld c, $28
    dec hl
    inc b
    ld b, $31
    add hl, sp
    ld sp, $0904
    ld a, [bc]
    ld [bc], a
    ld [$0a08], sp
    ld [hl], $1d
    inc b
    dec b
    ld b, $2a
    ld a, [hl+]
    inc b
    db $10
    ld c, $02
    ld [bc], a
    ld a, [de]
    ld [$0a09], sp
    rra
    ld [$360c], sp
    add hl, sp
    inc b
    add hl, bc
    db $10
    ld [hl], $1e
    ld e, $0c
    ld [hl], $04
    ld b, $1e
    ld e, $08
    add hl, bc
    ld a, [bc]
    ld [bc], a
    inc c
    ld [de], a
    ld c, $39
    inc c
    ld de, $390a
    add hl, sp
    ld a, [hl-]
    ld a, [hl-]
    add hl, sp
    inc c
    ld [hl], $1e
    ld e, $08
    add hl, bc
    ld a, [bc]
    jr nz, jr_02b_6747

    jr c, @+$3b

    add hl, sp
    ld sp, $360c
    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld hl, $2b21
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld [$0a09], sp
    add hl, sp
    ld a, [hl-]
    ld [bc], a
    ld hl, $3b02
    ld [bc], a
    ld a, [hl+]
    ld [bc], a
    ld [bc], a
    dec hl
    ld hl, $3a21
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld [$0a09], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    dec b

jr_02b_6747:
    ld b, $39
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, $29
    ld [bc], a
    inc a
    ld [bc], a
    ld [$0909], sp
    ld b, $02
    inc b
    db $10
    dec c
    ld [hl], $39
    inc c
    ld [de], a
    ld de, $0909
    add hl, bc
    ld b, $02
    inc a
    ld [bc], a
    ld [$0909], sp
    ld a, [bc]
    ld [bc], a
    inc c
    ld [hl], $31
    ld hl, $2029
    add hl, hl
    inc c
    dec c
    dec c
    dec c
    ld [hl], $39
    ld a, [hl-]
    add hl, sp
    ld [$0909], sp
    ld a, [bc]
    ld [bc], a
    dec sp
    inc a
    ld [bc], a
    add hl, de
    jr z, jr_02b_67b1

    add hl, sp
    inc e
    inc e
    ld hl, $2121
    ld hl, $0202
    ld [$0909], sp
    ld a, [bc]
    ld [bc], a
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, $02
    ld [bc], a
    inc e
    inc e
    inc b
    dec b
    dec b
    ld b, $02
    ld [$0909], sp
    ld a, [bc]
    ld [bc], a
    inc c
    ld [de], a
    ld de, $0909
    add hl, bc
    ld b, $21
    ld [bc], a

jr_02b_67b1:
    ld [bc], a
    inc c
    ld de, $3610
    ld [bc], a
    ld [$0909], sp
    ld a, [bc]
    dec de
    inc a
    ld [bc], a
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    inc b
    ld b, $29
    ld a, [hl+]
    ld [$020a], sp
    ld [bc], a
    ld [$1009], sp
    ld c, $39
    ld a, [hl-]
    ld [bc], a
    ld [$0909], sp
    db $10
    ld [hl], $0c
    ld [hl], $28
    ld [bc], a
    inc c
    ld de, $0614
    ld [$0a09], sp
    add hl, hl
    ld hl, $1e1e
    inc c
    dec c
    dec c
    ld c, $3a
    ld hl, $023a
    ld [bc], a
    dec sp
    inc c
    jr nc, jr_02b_6801

    ld [$0a09], sp
    ld hl, $3a1e
    inc a
    inc h
    add hl, hl
    jr z, jr_02b_6829

    ld [bc], a
    dec sp
    ld [bc], a

jr_02b_6801:
    dec e
    dec e
    inc e
    inc a
    ld [bc], a
    ld [bc], a
    ld [$0a09], sp
    ld e, $1e
    ld e, $04
    inc hl
    dec b
    dec b
    ld b, $02
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec sp
    ld e, $04
    dec b
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld e, $1e
    ld e, $0c
    dec c
    dec c
    dec c
    ld c, $29
    inc b
    dec b

jr_02b_6829:
    dec b
    dec b
    inc hl
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld [bc], a
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0d10
    dec c
    ld de, $280a
    ld [bc], a
    ld hl, $0221
    ld a, [hl+]
    jr z, jr_02b_68a4

    add hl, de
    jr z, jr_02b_68a8

    dec hl
    dec hl
    dec hl
    ld [$1f0a], sp
    ld [bc], a
    inc c
    ld c, $02
    inc b
    dec b
    dec b
    ld b, $28
    inc b
    dec b
    dec b
    dec b
    ld b, $1e
    ld e, $1e
    ld [$290a], sp
    dec hl
    ld hl, $3921
    ld [$1210], sp
    ld c, $21
    inc c
    ld [de], a
    dec c
    ld [de], a

jr_02b_68a4:
    ld c, $1e
    ld e, $1e

jr_02b_68a8:
    ld [$3e0a], sp
    daa
    daa
    dec a
    ld [bc], a
    ld [$020a], sp
    ld [bc], a
    dec hl
    ld hl, $1d21
    inc e
    ld [bc], a
    add hl, de
    ld e, $1e
    ld [$020a], sp
    dec e
    dec e
    jr @+$2d

    inc c
    ld [hl], $04
    dec b
    dec b
    dec b
    dec b
    ld b, $1c
    inc b
    dec b
    dec b
    ld b, $08
    ld a, [bc]
    ld [bc], a
    dec e
    dec e
    dec e
    dec e
    dec e
    ld [bc], a
    inc c
    ld [de], a
    dec c
    dec c
    dec c
    ld de, $0c16
    ld [de], a
    ld de, $080a
    ld a, [bc]
    ld [bc], a
    dec sp
    dec sp
    dec sp
    dec sp
    dec e
    ld hl, $0221
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$0206], sp
    ld hl, $360c
    ld [$020a], sp
    inc e
    add hl, de
    add hl, de
    inc e
    ld hl, $0402
    dec b
    dec b
    ld b, $31
    inc c
    ld [hl], $1e
    ld a, $27
    dec a
    ld [$020a], sp
    jr c, @+$3a

    add hl, sp
    inc b
    ld b, $02
    inc c
    ld [de], a
    ld de, $280a
    dec hl
    ld e, $1e
    ld h, $0f
    dec h
    ld [$020a], sp
    jr c, @+$3a

    add hl, sp
    inc c
    ld [hl], $21
    ld hl, $0c21
    ld [hl], $02
    inc e
    add hl, de
    ld e, $26
    dec h
    inc b
    add hl, bc
    ld a, [bc]
    ld [bc], a
    jr c, @+$3b

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    ld a, [hl+]
    ld hl, $1c21
    ld e, $1d
    ld h, $25
    inc c
    ld de, $020a
    jr c, @+$23

    ld hl, $2121
    ld hl, $2221
    ld hl, $2121
    ld hl, $1d1d
    ld h, $32
    dec a
    ld [$020a], sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    inc b
    dec b
    dec b
    ld b, $26
    dec h
    ld [$020a], sp
    dec e
    ld sp, $311d
    inc e
    ld sp, $311d
    dec e
    ld sp, $081c
    db $10
    dec c
    ld [hl], $26
    dec h
    ld [$020a], sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    inc e
    inc c
    ld [hl], $3e
    daa
    inc sp
    dec h
    ld [$020a], sp
    inc e
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    inc h
    add hl, de
    add hl, de
    jr z, jr_02b_69c2

    jr z, jr_02b_69c6

    ld h, $25
    inc b
    dec b
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc hl
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    db $10

jr_02b_69c2:
    dec c
    dec c
    dec c
    dec c

jr_02b_69c6:
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $1009
    dec c
    dec c
    dec c
    dec c
    ld de, $0909
    ld a, [bc]
    dec de
    dec hl
    ld hl, $2121
    ld hl, $2121
    ld e, $0c
    dec c
    ld c, $3e
    dec a
    ld [bc], a
    ld a, [de]
    inc c
    ld de, $0a09
    add hl, sp
    ld a, [hl-]
    add hl, hl
    ld hl, $2921
    ld a, [hl+]
    inc a
    inc a
    inc h
    inc h
    ld a, $33
    ld [hl-], a
    dec a
    ld [bc], a
    ld a, [hl+]
    ld [$0a09], sp
    ld [bc], a
    inc h
    dec hl
    ld e, $04
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $26
    rrca
    rrca
    ld [hl-], a
    daa
    dec a
    inc c
    ld de, $0609
    jr nz, jr_02b_6a3e

    ld a, [hl+]
    inc c
    jr nc, @+$0f

    dec c
    dec c
    dec c
    ld c, $26
    rrca
    rrca
    rrca
    rrca
    ld [hl-], a
    dec a
    ld [$0a09], sp
    ld [bc], a
    ld [bc], a
    add hl, de
    inc a
    ld [bc], a
    ld a, $3d
    ld [bc], a
    dec hl
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    dec b
    ld b, $26
    dec h
    ld [$0a09], sp
    ld [bc], a
    inc b
    dec b

jr_02b_6a3e:
    dec b
    dec b
    dec b
    ld b, $39
    ld a, [hl-]
    add hl, sp
    add hl, sp
    inc c
    ld de, $3610
    ld h, $25
    ld [$0e10], sp
    ld [bc], a
    ld [$0909], sp
    db $10
    dec c
    ld c, $21
    inc a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    ld c, $02
    ld h, $25
    ld [$280a], sp
    ld [bc], a
    inc c
    ld de, $0e10
    ld a, $27
    dec a
    ld e, $04
    ld b, $3e
    daa
    daa
    daa
    inc sp
    dec h
    ld [$2b0a], sp
    inc b
    ld b, $08
    ld a, [bc]
    ld a, $33
    rrca
    dec h
    inc b
    add hl, bc
    ld a, [bc]
    ld h, $25
    inc b
    dec b
    dec b
    dec b
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    inc c
    ld c, $08
    ld a, [bc]
    ld h, $25
    inc b
    dec b
    add hl, bc
    db $10
    ld c, $26
    dec h
    inc c
    dec c
    dec c
    ld de, $0a09
    ld a, $3d
    inc b
    add hl, bc
    ld a, [bc]
    ld h, $25
    ld [$3509], sp
    ld c, $3e
    inc sp
    dec h
    ld sp, $0604
    inc c
    ld de, $260a
    dec h
    ld [$0a09], sp
    ld h, $25
    inc c
    dec c
    ld [hl], $1d
    ld h, $0f
    ld [hl-], a
    dec a
    ld [$0609], sp
    ld [$260a], sp
    dec h
    ld [$0e10], sp
    ld h, $25
    ld [bc], a
    ld hl, $0402
    dec b
    ld b, $26
    dec h
    inc c
    ld [de], a
    ld c, $08
    ld a, [bc]
    ld h, $25
    ld [$310a], sp
    ld h, $25
    inc b
    inc d
    dec b
    add hl, bc
    db $10
    ld c, $26
    ld [hl-], a
    dec a
    ld [bc], a
    dec e
    ld [$260a], sp
    dec h
    inc c
    ld [hl], $18
    ld h, $25
    inc c
    dec c
    dec c
    dec c
    ld [hl], $31
    ld h, $0f
    dec h
    ld [bc], a
    inc b
    add hl, bc
    add hl, bc
    ld b, $29
    ld [bc], a
    ld hl, $2602
    dec h
    ld a, [hl+]
    add hl, de
    inc a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, $25
    inc b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    dec c
    ld a, $0d
    dec c
    ld a, $0d
    ld a, $3e
    dec c
    dec c
    ld a, $0d
    dec c
    dec c
    ld a, $3e
    dec c
    dec c
    ld de, $190a
    rra
    rra
    cpl
    inc l
    dec l
    rra
    inc l
    dec sp
    ld hl, $1d1d
    dec e
    ld hl, $1d1d
    add hl, de
    rlca
    ld [$2c0a], sp
    rra
    rra
    inc l
    rra
    rra
    rra
    dec l
    dec sp
    rra
    dec l
    ld l, $1f
    rra
    inc l
    cpl
    cpl
    dec e
    ld [$2f0a], sp
    rra
    inc l
    rra
    rra
    cpl
    rra
    rra
    dec sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [$1f0a], sp
    rra
    rra
    ld l, $1f
    rra
    dec l
    rra
    dec sp
    rra
    dec l
    rra
    rra
    rra
    inc l
    rra
    ld l, $1f
    ld [$2d0a], sp
    cpl
    rra
    rra
    rra
    dec l
    rra
    rra
    dec sp
    rra
    rra
    rra
    rra
    rra
    rra
    dec l
    rra
    dec e
    ld [$2f0a], sp
    rra
    rra
    inc l
    cpl
    rra
    rra
    rra
    dec sp
    rra
    cpl
    rra
    rra
    rra
    rra
    rra
    ld a, [de]
    rlca
    ld [$020a], sp
    ld [bc], a
    ld [bc], a
    inc l
    rra
    rra
    ld l, $1f
    dec sp
    cpl
    rra
    rra
    rra
    rra
    ld l, $1f
    add hl, de
    inc hl
    ld [$150a], sp
    dec d
    dec d
    rra
    rra
    rra
    rra
    add hl, de
    rra
    dec l
    rra
    rra
    rra
    rra
    rra
    rra
    add hl, de
    dec h
    ld [$0609], sp
    add hl, hl
    add hl, de
    dec d
    dec d
    jr nz, jr_02b_6bfa

    add hl, de
    rra
    rra
    rra
    cpl
    rra
    rra
    rra
    rra
    add hl, de
    ld hl, $0908
    add hl, bc
    ld a, [hl+]
    ld b, $1f
    rra
    inc l
    inc b
    dec b

jr_02b_6bfa:
    dec b
    dec b
    ld b, $1f
    inc b
    dec b
    dec b
    ld b, $3b
    inc hl
    ld [$0d10], sp
    dec c
    ld c, $1f
    rra
    rra
    add hl, sp
    add hl, sp
    ld a, [hl-]
    add hl, sp
    ld a, [hl-]
    rra
    add hl, sp
    ld [de], a
    ld [de], a
    ld a, [hl-]
    dec sp
    ld hl, $0a08
    cpl
    rra
    rra
    rra
    rra
    ld l, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    daa
    dec e
    ld [$1f0a], sp
    rra
    rra
    rra
    rra
    inc l
    ld l, $1f
    dec l
    rra
    rra
    ld l, $1f
    inc l
    rra
    dec l
    daa
    add hl, hl
    ld [$1f0a], sp
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    cpl
    rra
    rra
    dec l
    inc b
    ld a, [hl+]
    add hl, bc
    ld a, [bc]
    rra
    rra
    rra
    rra
    ld l, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    cpl
    rra
    rra
    ld [$0909], sp
    ld a, [bc]
    rra
    inc l
    cpl
    cpl
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [$0909], sp
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, de
    dec d
    dec sp
    dec d
    dec d
    ld [bc], a
    dec d
    dec d
    dec d
    add hl, de
    add hl, de
    ld [bc], a
    ld [bc], a
    dec e
    inc d
    dec de
    inc hl
    ld a, [de]
    rlca
    ld a, [de]
    jr jr_02b_6cc1

    jr nz, jr_02b_6cc3

    jr jr_02b_6ccd

    ld [bc], a
    dec sp
    inc e
    ld e, $18
    ld a, [de]
    rla
    ld e, $3b
    ld hl, $1416
    inc l
    ld l, $02
    add hl, de
    jr jr_02b_6cbf

    ld [bc], a
    inc e

jr_02b_6cbf:
    ld a, [de]
    inc e

jr_02b_6cc1:
    ld [hl+], a
    cpl

jr_02b_6cc3:
    ld [bc], a
    jr jr_02b_6ce8

    dec d
    jr nz, jr_02b_6cdf

    ld [hl+], a
    inc d
    jr nz, jr_02b_6cfc

jr_02b_6ccd:
    ld [bc], a
    inc e
    dec de
    jr nz, jr_02b_6cf2

    ld a, [de]
    rla
    jr nz, jr_02b_6cf0

    rra
    jr jr_02b_6cdc

    inc d
    ld [hl+], a
    ld [bc], a

jr_02b_6cdc:
    ld [hl+], a
    inc e
    dec e

jr_02b_6cdf:
    inc l
    cpl
    add hl, de
    dec e
    add hl, de
    dec bc
    inc e
    dec e
    dec e

jr_02b_6ce8:
    dec e
    dec e
    ld e, $19
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_02b_6cf0:
    add hl, de
    add hl, de

jr_02b_6cf2:
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_02b_6cfc:
    add hl, de
    add hl, de
    add hl, de
    inc b
    dec b
    ld b, $04
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $08
    inc bc
    ld a, [bc]
    ld [$1007], sp
    ld [de], a
    dec c
    ld [de], a
    ld a, [hl-]
    inc c
    dec c
    ld a, [hl-]
    inc c
    dec c
    ld c, $2d
    rra
    inc l
    rra
    dec l
    ld l, $1d
    dec e
    dec e
    dec e
    rra
    rra
    rra
    rra
    rra
    inc l
    inc l
    rra
    rra
    inc l
    rra
    rra
    rra
    dec l
    rra
    rra
    inc l
    rra
    rra
    rra
    cpl
    ld l, $2f
    rra
    ld l, $1f
    dec l
    rra
    rra
    rra
    rra
    rra
    dec l
    rra
    jr nz, jr_02b_6d66

    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    dec d
    ld [bc], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    ld [hl+], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra

jr_02b_6d66:
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rlca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld hl, $1f1f
    rra
    rra
    rra
    rra
    rra
    rra
    ld [bc], a
    inc hl
    ld hl, $1f1f
    rra
    rra
    rra
    rra
    ld [bc], a
    ld e, $19
    inc d
    dec d
    ld [bc], a
    ld [hl+], a
    inc d
    rlca
    inc b
    ld b, $02
    inc hl
    inc b
    db $10
    ld a, [hl-]
    rra
    rra
    add hl, sp
    ld c, $1f
    rra
    rra
    rra
    inc h
    dec h
    dec h
    rra
    inc l
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    inc bc
    rra
    rra
    dec l
    cpl
    rra
    cpl
    dec l
    ld e, $1f
    inc l
    rra
    ld d, $04
    ld b, $1f
    rra
    cpl
    rra
    ld l, $14
    rra
    ld l, $08
    ld a, [bc]
    dec l
    rra
    rra
    inc l
    ld a, [de]
    inc bc
    rra
    rra
    add hl, sp
    ld de, $0306
    dec l
    rra
    rra
    rra
    add hl, de
    ld [hl+], a
    jr nz, jr_02b_6dfc

    ld a, [hl-]
    ld [bc], a
    dec l
    rra
    ld a, [de]
    rra
    rra
    inc e
    inc hl
    add hl, de
    dec e
    inc hl

jr_02b_6dfc:
    inc l
    dec l
    rra
    add hl, de
    cpl
    rra
    inc l
    rra
    rra
    inc l
    cpl
    jr jr_02b_6e36

    rra
    inc l
    dec d
    rra
    rra
    rra
    ld l, $2c
    inc l
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    cpl
    ld l, $2e
    ld l, $2d
    cpl
    rra
    ld [bc], a
    dec de
    dec l
    cpl
    cpl
    ld l, $2d
    dec l
    inc l

jr_02b_6e36:
    inc l
    inc l
    inc l
    inc l
    ld l, $2e
    ld l, $2e
    ld l, $31
    daa
    dec a
    rra
    ld sp, $2c2f
    dec l
    ld l, $2d
    cpl
    rrca
    dec h
    inc h
    dec l
    cpl
    dec b
    dec b
    inc hl
    dec l
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0b0a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$080b], sp
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    ld [de], a
    ld c, $0c
    ld [de], a
    ld [$270a], sp
    daa
    daa
    daa
    daa
    ld sp, $2727
    ld [$310a], sp
    rrca
    ld sp, $3131
    ld sp, $310f
    ld [$2d0a], sp
    inc l
    ld l, $2e
    ld l, $2e
    inc l
    cpl
    ld [$0f0a], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$190a], sp
    add hl, de
    add hl, de
    add hl, de
    inc h
    jr jr_02b_6eba

    ld [bc], a
    ld [$0509], sp
    dec b
    dec b
    dec b
    inc hl
    dec b
    dec b
    dec b
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $040a
    inc d

jr_02b_6eba:
    dec b
    dec b
    dec b
    dec b
    dec d
    ld b, $08
    ld a, [bc]
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $08
    add hl, bc
    dec b
    ld b, $1f
    jr z, jr_02b_6ef0

    inc b
    dec b
    dec b
    add hl, bc
    dec c
    dec c
    ld c, $31
    daa
    ld sp, $0d0c
    dec c
    dec c
    dec l
    dec l
    dec l
    dec l
    inc l
    cpl
    cpl
    cpl
    cpl
    cpl
    dec b
    dec b
    dec b
    ld b, $0f
    inc b
    dec b

jr_02b_6ef0:
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc h
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc hl
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    dec c
    dec c
    ld de, $0e10
    ld sp, $0819
    ld a, [bc]
    inc e
    ld [bc], a
    inc h
    ld [$020a], sp
    inc b
    inc hl
    add hl, bc
    ld a, [bc]
    ld [bc], a
    ld [$0909], sp
    ld a, [bc]
    jr z, jr_02b_6f2b

    add hl, bc
    add hl, bc
    ld a, [bc]
    rra
    ld [$0909], sp
    add hl, bc

jr_02b_6f2b:
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld sp, $3131
    rrca
    rrca
    inc b
    dec d
    ld b, $0f
    rrca
    inc c
    ld [de], a
    ld c, $0f
    rrca
    ld sp, $3127
    rrca
    rrca
    dec l
    inc l
    cpl
    rrca
    inc b
    ld b, $0f
    inc b
    ld b, $08
    ld a, [bc]
    inc h
    ld [$080a], sp
    add hl, bc
    inc hl
    add hl, bc
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    add hl, bc
    db $10
    dec c
    dec c
    ld de, $0909
    add hl, bc
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    ld de, $0e10
    inc b
    ld b, $08
    db $10
    dec c
    dec c
    ld c, $0c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $04
    inc d
    ld b, $08
    ld a, [bc]
    inc b
    rlca
    ld a, [bc]
    inc c
    ld c, $04
    dec b
    dec b
    dec b
    dec b
    ld b, $04
    ld b, $02
    ld [hl+], a
    inc c
    ld de, $080a
    ld a, [bc]
    ld [$3610], sp
    ld sp, $081e
    db $10
    dec c
    dec c
    ld [de], a
    ld c, $0c
    ld c, $02
    inc b
    ld b, $08
    ld a, [bc]
    ld [$080a], sp
    ld a, [bc]
    ld [bc], a
    dec hl
    ld [bc], a
    ld [$200a], sp
    ld [bc], a
    ld [bc], a
    inc a
    inc a
    ld [bc], a
    dec de
    ld [$080a], sp
    ld a, [bc]
    ld [$080a], sp
    ld a, [bc]
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ld [$0509], sp
    ld b, $39
    inc b
    dec b
    ld b, $02
    inc c
    ld c, $08
    ld a, [bc]
    ld [$080a], sp
    ld a, [bc]
    jr jr_02b_701a

    ld [bc], a
    inc c
    ld [de], a
    dec c
    ld c, $39
    inc c
    dec c
    ld c, $02
    ld [bc], a
    ld sp, $0a08
    ld [$080a], sp
    add hl, bc
    ld b, $3a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec sp
    dec hl
    ld [hl+], a
    inc b
    add hl, bc
    ld a, [bc]
    ld [$0c0a], sp
    ld de, $210a
    ld [bc], a
    dec hl
    dec e
    ld hl, $0231
    ld sp, $0504
    dec b
    dec b
    add hl, bc
    db $10
    ld c, $08
    ld a, [bc]
    ld [bc], a
    ld [$1d0a], sp

jr_02b_701a:
    dec e
    ld sp, $0504
    ld b, $39
    inc b
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    ld c, $1e
    ld [$020a], sp
    inc c
    ld [hl], $04
    dec b
    ld b, $0c
    inc de
    ld c, $2b
    ld [$0a0b], sp
    dec e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$290a], sp
    ld [bc], a
    ld [bc], a
    inc c
    ld [de], a
    ld de, $3906
    ld a, [hl-]
    ld [bc], a
    inc c
    ld de, $280a
    ld [bc], a
    inc b
    ld b, $02
    ld [$0509], sp
    ld b, $20
    ld hl, $0802
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    ld c, $02
    ld a, [hl+]
    ld [$020a], sp
    ld [$0909], sp
    add hl, bc
    dec b
    ld b, $04
    dec bc
    ld a, [bc]
    inc e
    dec hl
    jr jr_02b_7099

    inc e
    ld [bc], a
    dec hl
    dec e
    ld [$1e0a], sp
    ld [$0909], sp
    add hl, bc
    db $10
    ld c, $0c
    dec c
    ld c, $02
    inc b
    ld b, $2a
    ld [bc], a
    ld [bc], a
    inc b
    inc d
    db $10
    ld [hl], $2a
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec de
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec hl
    ld [$1b0a], sp

jr_02b_7099:
    ld [bc], a
    ld e, $08
    db $10
    ld c, $02
    ld [bc], a
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld b, $31
    ld [bc], a
    ld hl, $0904
    add hl, bc
    ld b, $21
    dec e
    inc c
    ld c, $1c
    ld [bc], a
    ld [hl+], a
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    cpl
    cpl
    ld l, $2e
    ld l, $2e
    ld l, $2d
    dec l
    ld l, $2f
    cpl
    ld l, $2e
    ld l, $2e
    ld l, $2d
    dec l
    ld l, $2f
    cpl
    dec h
    add hl, bc
    add hl, bc
    rlca
    ld h, $2d
    dec l
    ld l, $2f
    ld sp, $2732
    daa
    daa
    inc sp
    dec e
    dec l
    ld l, $0f
    rrca
    dec e
    rrca
    rrca
    rrca
    rrca
    ld sp, $0f0f
    dec b
    ld b, $04
    inc d
    dec b
    ld b, $0f
    inc b
    dec b
    dec b
    dec c
    ld c, $0c
    dec c
    dec c
    ld c, $0f
    inc c
    dec c
    dec c
    ld l, $2f
    dec l
    ld l, $2e
    cpl
    inc l
    dec l
    ld l, $2e
    ld l, $2f
    dec l
    ld l, $2e
    cpl
    inc l
    dec l
    ld l, $2e
    ld l, $2f
    dec l
    ld l, $2e
    cpl
    inc l
    dec l
    ld l, $2e
    ld l, $2f
    dec l
    ld l, $2e
    cpl
    inc l
    dec l
    ld l, $2e
    ld l, $2f
    dec l
    ld l, $2e
    cpl
    inc l
    dec l
    ld l, $2e
    ld l, $2f
    dec l
    scf
    ld l, $2f
    inc l
    dec l
    ld l, $2e
    rrca
    dec e
    dec h
    add hl, bc
    add hl, bc
    ld h, $0f
    dec e
    inc b
    ld b, $04
    ld b, $32
    daa
    daa
    inc sp
    rrca
    ld sp, $0e0c
    inc c
    ld c, $0f
    rrca
    dec h
    ld [bc], a
    dec de
    inc b
    ld b, $0f
    rrca
    rrca
    ld sp, $041d
    dec b
    dec b
    db $10
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    inc c
    dec c
    dec c
    ld c, $0f
    rrca
    dec l
    dec l
    cpl
    cpl
    ld l, $2e
    dec l
    dec l
    cpl
    cpl
    dec l
    dec l
    cpl
    cpl
    ld l, $2e
    dec l
    dec l
    cpl
    cpl
    dec l
    dec l
    cpl
    cpl
    ld a, $3d
    dec l
    dec l
    cpl
    cpl
    dec a
    dec l
    cpl
    ld a, $33
    ld [hl-], a
    dec a
    dec l
    cpl
    ld a, $32
    daa
    ld sp, $0f33
    rrca
    ld [hl-], a
    ld sp, $3327
    rrca
    inc b
    ld b, $0f
    rrca
    rrca
    rrca
    inc b
    ld b, $0f
    rrca
    inc c
    ld c, $31
    inc h
    ld [bc], a
    ld sp, $0e0c
    rrca
    rrca
    rrca
    inc b
    dec b
    inc hl
    dec b
    dec b
    ld b, $0f
    rrca
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    db $10
    inc de
    dec c
    dec c
    dec c
    inc de
    inc de
    inc de
    inc de
    ld de, $210a
    ld [bc], a
    ld hl, $1c1e
    inc e
    inc e
    inc e
    ld [$1e0a], sp
    ld e, $1e
    ld e, $1c
    inc e
    inc e
    inc e
    ld [$1e0a], sp
    ld e, $1e
    ld a, [hl+]
    jr z, jr_02b_7224

    jr z, jr_02b_7226

    ld [$1e0a], sp
    ld e, $1e
    inc b
    dec b
    dec b
    dec b
    ld b, $08
    ld a, [bc]
    ld e, $1e
    ld e, $0c
    ld [de], a
    dec c
    ld de, $080a
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec hl
    add hl, sp
    ld hl, $0a08
    ld [$040a], sp
    dec b
    dec b
    ld b, $02
    inc b

jr_02b_7224:
    add hl, bc
    ld a, [bc]

jr_02b_7226:
    ld [$080a], sp
    db $10
    dec c
    ld [hl], $02
    inc c
    jr nc, jr_02b_723e

    ld [$080a], sp
    ld a, [bc]
    jr nz, jr_02b_726f

    add hl, hl
    inc a
    inc a
    ld [bc], a
    ld [$080a], sp
    add hl, bc

jr_02b_723e:
    ld b, $02
    inc b
    dec b
    ld b, $39
    ld [$0c0a], sp
    ld [de], a
    ld c, $29
    inc c
    ld [de], a
    ld c, $29
    ld [$020a], sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    ld [$390a], sp
    inc b
    dec b
    dec b
    dec b
    dec b
    ld b, $1c
    ld [$020a], sp
    ld [$0d10], sp
    dec c
    dec c
    ld [hl], $02
    ld [$020a], sp

jr_02b_726f:
    inc c
    ld [hl], $02
    ld [bc], a
    jr c, jr_02b_72ae

    add hl, sp
    ld [$210a], sp
    ld hl, $2421
    inc h
    ld hl, $2221
    ld [$1709], sp
    dec b
    dec b
    dec b
    inc hl
    dec b
    dec b
    dec b
    add hl, bc
    dec l
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $37
    ld l, $2e
    ld l, $2e
    ld l, $2e
    inc c
    ld c, $0f
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld l, $2e
    ld l, $2d
    cpl
    inc l
    dec l
    cpl

jr_02b_72ae:
    ld l, $2e
    ld l, $2e
    ld l, $2e
    scf
    ld l, $2e
    ld l, $2d
    cpl
    inc l
    dec l
    cpl
    jr nc, jr_02b_72cc

    dec c
    dec c
    jr nc, jr_02b_72f1

    ld [de], a
    ld l, $2e
    cpl
    dec l
    cpl
    inc l
    dec l
    cpl

jr_02b_72cc:
    ld [de], a
    ld l, $2e
    ld l, $0d
    dec c
    dec c
    ld l, $2e
    cpl
    dec l
    cpl
    inc l
    dec l
    cpl
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [de], a
    ld l, $2e
    cpl
    dec l
    cpl
    inc l
    dec l
    cpl
    jr nc, jr_02b_72f9

    dec c
    dec c
    dec c
    dec c
    dec c

jr_02b_72f1:
    ld l, $2e
    cpl
    dec l
    cpl
    inc l
    dec l
    cpl

jr_02b_72f9:
    ld [de], a
    ld l, $12
    dec c
    jr nc, jr_02b_7333

    jr nc, @+$30

    ld l, $2f
    dec l
    cpl
    inc l
    dec l
    cpl
    jr nc, jr_02b_7338

    jr nc, jr_02b_7340

    dec c
    dec c
    ld [de], a
    ld l, $2e
    ld l, $2d
    cpl
    inc l
    dec l
    cpl
    ld [de], a
    ld l, $30
    dec c
    jr nc, jr_02b_734e

    rrca
    ld sp, $2e2e
    dec l
    cpl
    inc l
    dec l
    cpl
    jr nc, jr_02b_7356

    scf
    cpl
    ld [de], a
    cpl
    inc l
    dec l
    ld l, $2e
    dec l
    cpl
    inc l

jr_02b_7333:
    dec l
    cpl
    dec c
    ld [hl], $08

jr_02b_7338:
    dec e
    db $10
    cpl
    inc l
    dec l
    ld l, $2e
    dec l

jr_02b_7340:
    cpl
    inc l
    dec l
    cpl
    ld [de], a
    ld de, $1d08
    ld a, [bc]
    cpl
    inc l
    dec l
    ld l, $2e

jr_02b_734e:
    dec l
    cpl
    inc l
    dec l
    cpl
    rrca
    inc c
    inc c

jr_02b_7356:
    dec c
    ld c, $2f
    inc l
    dec l
    ld l, $2e
    dec l
    cpl
    inc l
    dec l
    cpl
    inc l
    dec l
    dec l
    ld l, $2f
    cpl
    inc l
    dec l
    ld l, $2e
    dec l
    cpl
    inc l
    dec l
    cpl
    rrca
    inc c
    ld [de], a
    dec c
    dec c
    ld [hl], $0f
    inc b
    dec b
    dec b
    dec b
    ld b, $0f
    rrca
    rrca
    dec h
    inc a
    ld [bc], a
    inc h
    dec sp
    rrca
    rrca
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc hl
    dec b
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0000
    nop
    inc b
    ld b, $00
    nop
    nop
    ld bc, $0101
    nop
    inc b
    add hl, sp
    ld a, [hl-]
    ld b, $00
    ld bc, $0000
    nop
    inc b
    inc c
    ld [de], a
    dec c
    ld c, $06
    nop
    nop
    nop
    inc b
    inc c
    dec c
    dec c
    dec c
    ld [de], a
    ld c, $06
    nop
    inc b
    inc c
    ld [de], a
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $06
    inc c
    ld c, $0d
    dec c
    dec c
    dec c
    ld [de], a
    inc c
    ld de, $0c0a
    ld c, $0d
    dec c
    ld [de], a
    dec c
    dec c
    inc b
    ld [$0a0a], sp
    ld a, [bc]
    rra
    dec l
    rra
    rra
    rra
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    rra
    rra
    rra
    rra
    inc l
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    cpl
    rra
    rra
    rra
    rra
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    rra
    rra
    rra
    inc l
    rra
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    rra
    rra
    rra
    rra
    rra
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    dec l
    rra
    rra
    rra
    rra
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    rra
    rra
    rra
    ld l, $1f
    ld [$0908], sp
    ld a, [bc]
    ld a, [bc]
    ld l, $1f
    rra
    add hl, hl
    rra
    ld [$0908], sp
    add hl, bc
    dec b
    dec b
    dec b
    dec b
    ld a, [hl+]
    dec b
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    ld a, [hl-]
    ccf
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0c
    inc a
    ccf
    dec c
    add hl, hl
    ld [$0909], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec c
    ld c, $0c
    ccf
    dec c
    dec c
    add hl, hl
    dec de
    dec c
    dec bc
    ld c, $0d
    dec a
    dec a
    ld c, $0d
    ld c, $0c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec bc
    ld c, $0d
    ld a, $3e
    ld c, $0d
    ld c, $16
    ld de, $2122
    ld de, $1116
    ld de, $0d12
    jr c, jr_02b_74dd

    ld c, $0d
    ld c, $0c
    ld a, [hl+]
    ld a, $0d
    ld a, [hl+]
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    ld c, $0c
    jr c, @+$3b

    dec c
    dec c
    inc c
    ld a, [hl-]
    ccf
    ld a, [hl-]
    ccf
    dec c
    add hl, hl
    ld c, $0d
    ld c, $0c
    dec c
    dec c
    dec c
    dec c
    inc c
    dec sp
    ccf
    dec sp
    ccf
    dec c
    add hl, hl
    ld c, $0d
    ld c, $0c
    ccf
    dec c
    rra
    dec e
    add hl, de
    inc a
    ccf
    inc a

jr_02b_74dd:
    ccf
    dec c
    add hl, hl
    ld c, $0d
    ld c, $0c
    ccf
    dec c
    dec c
    add hl, hl
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    ld c, $0c
    ccf
    dec c
    dec c
    dec c
    rra
    dec e
    dec e
    dec e
    dec e
    ld e, $1c
    ld a, [bc]
    dec c
    ld c, $0c
    add hl, hl
    dec c
    ld a, [hl+]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [bc], a
    ld c, $03
    ld c, $2c
    dec l
    ld l, $2c
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    dec l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0c
    dec c
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec c
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec c
    ld c, $0c
    dec c
    dec de
    ld a, $3a
    add hl, hl
    ld c, $0d
    inc c
    dec c
    dec c
    dec c
    ld a, [de]
    dec c
    ld c, $0c
    dec c
    dec c
    ld a, $3c
    add hl, hl
    ld c, $0d
    inc c
    ld [bc], a
    ld a, $3e
    dec c
    dec c
    ld c, $0c
    dec c
    add hl, de
    dec c
    dec c
    dec c
    ld c, $0d
    inc c
    add hl, hl
    jr c, jr_02b_75eb

    jr @+$0f

    ld c, $0c
    dec c
    ld d, $11
    ld de, $1711
    dec c
    ld d, $11
    ld de, $1711
    dec c
    ld c, $0c
    dec c
    dec de
    dec c
    ld a, $3e
    ld c, $0d
    inc c
    dec c
    dec c
    dec c
    ld a, [de]
    dec c
    ld c, $0c
    dec c
    dec c
    dec c
    jr c, jr_02b_7613

    ld c, $0d
    inc c
    ld a, [hl-]
    ld a, [hl-]
    ccf
    dec c
    dec c
    ld c, $0c
    dec c
    add hl, de
    dec c
    ccf
    inc a
    ld c, $0d
    inc c

jr_02b_75eb:
    inc a
    inc a
    ccf
    jr jr_02b_75fd

    ld c, $0c
    dec c
    inc c
    ld a, [hl+]
    dec c
    ccf
    ld c, $0d
    inc c
    dec c
    dec c
    add hl, hl

jr_02b_75fd:
    ld c, $0d
    ld c, $0c
    dec c
    rra
    dec e
    dec e
    dec e
    jr nz, jr_02b_7615

    rra
    dec e
    dec e
    dec e
    jr nz, jr_02b_761b

    ld c, $0c
    ld a, [hl+]
    dec c
    dec c

jr_02b_7613:
    dec c
    dec c

jr_02b_7615:
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c

jr_02b_761b:
    inc bc
    add hl, hl
    ld c, $2c
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    dec l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $08
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0909], sp
    ld [$0509], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $09
    add hl, bc
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [bc], a
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0409], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $08
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0809], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0809], sp
    add hl, bc
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    ld a, [bc]
    ld [$0809], sp
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0809], sp
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$0909], sp
    dec h
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    dec c
    dec c
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    ld c, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0801
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec hl
    dec a
    ld sp, $0101
    ld bc, $0101
    ld bc, $2f2c
    cpl
    cpl
    cpl
    add hl, de
    ccf
    dec c
    rra
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [$3d3d], sp
    dec a
    add hl, bc
    add hl, de
    ld a, [hl-]
    ccf
    dec [hl]
    cpl
    cpl
    cpl
    cpl
    inc [hl]
    ld c, $0c
    ccf
    ccf
    ccf
    dec c
    inc c
    inc a
    ccf
    ld sp, $0101
    ld bc, $3001
    ld c, $0c
    dec [hl]
    cpl
    cpl
    add hl, de
    inc c
    dec c
    add hl, hl
    ld [$3d3d], sp
    add hl, bc
    add hl, bc
    jr nz, jr_02b_77d0

    inc c
    rra
    dec e
    dec e
    ld e, $1f
    dec e
    dec e
    ld e, $0d
    ld a, $3e
    ld a, [hl-]
    add hl, hl

jr_02b_77d0:
    ld c, $0c
    dec [hl]
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    add hl, de
    ld a, $38
    add hl, sp
    inc a
    add hl, hl
    ld c, $0c
    rra
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld bc, $2c01
    cpl
    cpl
    cpl
    cpl
    cpl
    dec l
    inc c
    ld a, $3e
    ld a, $3e
    inc e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld sp, $0101
    ld bc, $0c01
    jr c, jr_02b_7839

    add hl, sp
    add hl, sp
    jr @+$31

    cpl
    cpl
    add hl, de
    dec a
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    dec [hl]
    cpl
    cpl
    cpl
    dec l
    ld bc, $0101
    add hl, de
    ld a, $3a
    ccf
    dec bc
    ld c, $0c
    ld sp, $0801
    add hl, bc
    dec a
    ld a, [bc]
    ld bc, $0c01
    ld a, $3c
    ccf
    dec c
    ld c, $0c
    rra
    dec e
    ld e, $3e
    ccf
    ld c, $01
    ld bc, $0d0c
    ccf
    dec c
    ld [bc], a

jr_02b_7839:
    ld c, $2c
    cpl
    cpl
    cpl
    cpl
    cpl
    dec l
    ld bc, $2c01
    cpl
    cpl
    cpl
    cpl
    dec l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0808
    inc de
    db $10
    ld [de], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    jr nz, jr_02b_78b4

    ld [hl+], a
    jr nz, jr_02b_789e

    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_02b_789e:
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    ld a, [bc]
    inc c
    rrca
    rrca
    dec c
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [bc], a
    ld c, $08

jr_02b_78b4:
    dec hl
    ld e, $1f
    ld e, $1f
    dec e
    dec e
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld a, [bc]
    inc c
    ccf
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    dec c
    rrca
    dec c
    dec c
    dec c
    dec c
    ld c, $0c
    dec c
    jr jr_02b_78f4

    dec e
    dec e
    dec e
    dec e
    dec e
    ld e, $1f
    ld a, [bc]
    ld e, $1f
    ld a, [bc]
    ld [$0a1d], sp
    inc e
    inc b
    inc b
    dec e
    dec e
    dec e
    dec hl
    dec a
    ld a, [bc]
    dec c
    dec bc
    ld c, $0c
    inc bc
    ld c, $0d
    dec c

jr_02b_78f4:
    dec c
    add hl, hl
    ld a, [hl+]
    dec c
    ccf
    dec c
    ld c, $0d
    dec c
    ld c, $0c
    dec c
    inc e
    rra
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    jr nz, @+$0f

    ld c, $10
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $3c12
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $3d
    ld [hl+], a
    dec b
    rlca
    inc a
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $3d
    rlca
    rlca
    scf
    inc a
    ld [hl], $36
    inc a
    jr @+$05

    ld [de], a
    inc de
    ld d, $03
    add hl, sp
    dec a
    rlca
    rlca
    scf
    ld [hl+], a
    rlca
    ld a, [hl+]
    inc a
    jr @+$05

    ld [de], a
    inc de
    ld d, $03
    add hl, sp
    dec a
    ld [bc], a
    ld [bc], a
    scf
    inc a
    rrca
    dec hl
    inc a
    jr @+$05

    ld [de], a
    inc de
    ld d, $03
    add hl, sp
    dec a
    ld [$3707], sp
    ld [hl+], a
    rlca
    rlca
    inc a
    ld [hl-], a
    rlca
    rlca
    rlca
    rlca
    rlca
    ld sp, $363d
    ld [hl], $3d
    ld [hl+], a
    ld sp, $3636
    ld [hl], $36
    ld [hl], $1f
    ld [hl], $36
    ld [hl], $3d
    rlca
    rlca
    scf
    ld [hl+], a
    inc b
    rlca
    ld h, $34
    inc [hl]
    inc [hl]
    inc [hl]
    dec h
    rlca
    inc h
    ccf
    rlca
    dec b
    scf
    ld a, $34
    inc [hl]
    ld a, $34
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ccf
    inc a
    ld [hl], $36
    inc a
    ld [bc], a
    ld b, $06
    dec a
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    dec a
    ld [hl+], a
    inc b
    rlca
    ld [hl+], a
    ld [$1110], sp
    scf
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    scf
    ld [hl+], a
    rlca
    rlca
    ld [hl+], a
    rlca
    inc d
    dec d
    scf
    rlca
    inc a
    ld [hl], $36
    ld [hl], $3d
    scf
    ld [hl+], a
    inc b
    rlca
    ld [hl+], a
    dec c
    rlca
    ld c, $37
    rlca
    ld [hl+], a
    ld [$0829], sp
    scf
    scf
    ld [hl+], a
    rlca
    rlca
    ld a, $34
    jr nz, jr_02b_7a1a

    ld a, [hl-]
    rlca
    ld [hl+], a
    rlca
    rlca
    rlca
    scf
    scf
    inc hl
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ccf
    rlca
    ld [hl+], a
    ld [$2908], sp
    scf
    scf
    cpl
    ld [$0606], sp
    db $10
    ld de, $0711
    rlca
    ld a, $25
    inc h
    inc [hl]
    ccf
    scf
    ld [hl+], a
    dec c
    rlca
    rlca
    inc d
    dec d
    dec d
    inc sp
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b

jr_02b_7a1a:
    scf
    ld a, $34
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ccf
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ccf
    ld a, [bc]
    jr nz, jr_02b_7a4e

    ld a, [bc]
    ld a, [bc]
    ld l, a
    ld l, b
    ld l, c
    ld a, [bc]
    ld l, a
    ld l, l
    ld l, b
    ld l, c
    ld hl, $6d6e
    scf
    ld a, [hl-]
    ld a, [hl]
    ld l, [hl]
    ld l, l
    ld bc, $0127
    ld l, [hl]
    ld l, l
    ld bc, $0127
    ld l, [hl]
    ld l, l
    ld bc, $0127
    ld l, [hl]
    ld l, l

jr_02b_7a4e:
    ld bc, $0127
    ld l, [hl]
    ld l, l
    ld bc, $0127
    ld l, [hl]
    ld l, l
    ld bc, $0127
    ld l, [hl]
    ld l, l
    ld bc, $0127
    ld l, [hl]
    ld l, l
    ld a, [bc]
    ld e, [hl]
    ld a, [bc]
    ld l, [hl]
    rrca
    ld l, a
    inc b
    ld l, a
    rrca
    jr nz, jr_02b_7a7a

    dec c
    dec c
    ld hl, $7f68
    ld a, a
    ld a, a
    ld l, c
    ld l, b
    ld a, a
    ld a, a
    ld a, a
    ld l, c

jr_02b_7a7a:
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
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    nop
    ld a, [bc]
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    nop
    inc b
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    rla
    inc b
    ld bc, $0302
    ld [$2a13], sp
    inc de
    inc l
    inc b
    dec b
    ld b, $07
    inc c
    inc b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    db $10
    inc b
    ld de, $0427
    inc b
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    dec d
    ld [hl+], a
    dec d
    dec d
    inc [hl]
    inc [hl]
    ld bc, $3434
    rra
    jr c, jr_02b_7b0d

    jr c, jr_02b_7af6

    inc h
    jr c, jr_02b_7b12

    jr c, @+$26

    inc h
    rra
    jr c, jr_02b_7aff

    inc h
    inc h
    inc h
    jr c, jr_02b_7b09

    inc h
    ld a, [hl+]
    ld a, [hl+]
    dec l
    ld a, [hl+]
    ld a, [hl+]
    dec l
    dec e
    inc e
    ld e, $2d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d

jr_02b_7af6:
    dec d
    ld [hl+], a
    dec d
    dec d
    inc [hl]
    inc [hl]
    ld bc, $3434

jr_02b_7aff:
    ld hl, $3838
    jr c, jr_02b_7b25

    ld [de], a
    jr c, jr_02b_7b3f

    jr c, jr_02b_7b1b

jr_02b_7b09:
    ld hl, $3812
    ld [de], a

jr_02b_7b0d:
    ld hl, $2112
    jr c, jr_02b_7b33

jr_02b_7b12:
    ld [de], a
    ld a, [hl+]
    ld a, [hl+]
    dec l
    ld a, [hl+]
    ld a, [hl+]
    dec l
    dec e
    inc e

jr_02b_7b1b:
    ld e, $2d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    dec d
    ld [hl+], a

jr_02b_7b25:
    dec d
    dec d
    inc l
    inc l
    ld bc, $2c2c
    dec hl
    dec l
    dec l
    dec l
    dec hl
    dec hl
    dec l

jr_02b_7b33:
    dec l
    dec l
    dec hl
    dec hl
    inc l
    dec l
    inc l
    dec hl
    dec hl
    dec hl
    dec l
    dec hl

jr_02b_7b3f:
    dec hl
    ld a, [hl+]
    ld a, [hl+]
    dec l
    ld a, [hl+]
    ld a, [hl+]
    dec l
    dec e
    inc e
    ld e, $2d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    dec d
    ld [hl+], a
    dec d
    dec d
    dec d
    dec d
    ld bc, $1515
    add hl, de
    dec l
    dec l
    dec l
    add hl, de
    rla
    dec l
    dec l
    dec l
    rla
    rla
    add hl, de
    dec l
    add hl, de
    rla
    rla
    rla
    dec l
    rla
    rla
    ld a, [hl+]
    ld a, [hl+]
    dec l
    ld a, [hl+]
    ld a, [hl+]
    dec l
    dec e
    inc e
    ld e, $2d
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [de], a
    ld hl, $2112
    ld hl, $0412
    ld hl, $1206
    ld a, [bc]
    ld [bc], a
    ld hl, $080b
    ld [de], a
    inc c
    ld [de], a
    ld [$0b12], sp
    ld hl, $2112
    dec bc
    rlca
    dec h
    ld [bc], a
    ld h, $07
    rlca
    ld [$0203], sp
    rlca
    dec d
    dec d
    dec d
    dec d
    dec d
    add hl, de
    add hl, de
    dec l
    add hl, de
    add hl, de
    rla
    rla
    dec l
    rla
    rla
    rla
    dec l
    add hl, de
    add hl, de
    dec [hl]
    ld [hl], $19
    add hl, de
    dec l
    dec [hl]
    ld [hl], $17
    dec l
    add hl, de
    dec [hl]
    ld [hl], $1e
    dec l
    dec e
    dec [hl]
    inc sp
    dec l
    inc e
    dec l
    inc sp
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    ld [bc], a
    dec c
    dec c
    ld c, $05
    dec b
    dec c
    dec c
    dec c
    ld [bc], a
    inc de
    ld de, $0a04
    inc de
    inc b
    rrca
    ld b, $0f
    ld a, [bc]
    ld de, $0802
    inc de
    dec c
    dec bc
    ld [bc], a
    ld [$020d], sp
    ld de, $0f04
    ld [$0802], sp
    ld [$110c], sp
    ld [$1113], sp
    ld [$050f], sp
    ld [bc], a
    ld [$0813], sp
    ld [$0f0b], sp
    ld b, $02
    ld [bc], a
    dec b
    ld [bc], a
    rrca
    dec c
    rrca
    dec h
    ld [bc], a
    ld h, $0c
    inc b
    ld b, $0b
    inc b
    rrca
    rrca
    rrca
    inc bc
    ld [bc], a
    ld de, $0d0f
    ld de, $0f0f
    dec c
    ld b, $38
    jr c, jr_02b_7c5e

    inc b
    ld a, [bc]
    scf
    scf
    scf
    ld [$3706], sp
    jr c, @+$3a

    inc b
    ld a, [bc]
    scf
    scf
    jr c, jr_02b_7c3d

    ld a, [bc]
    jr c, jr_02b_7c6f

    scf
    ld [$390a], sp
    scf

jr_02b_7c3d:
    add hl, sp
    ld [$370e], sp
    scf
    jr c, jr_02b_7c50

    add hl, bc
    inc de
    add hl, bc
    ld [de], a
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, $09
    add hl, bc
    daa
    daa

jr_02b_7c50:
    daa
    daa
    daa
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld [hl], $35
    ld [hl-], a
    ld [hl-], a
    cpl
    add hl, sp
    dec [hl]

jr_02b_7c5e:
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    inc h
    add hl, sp
    add hl, sp
    add hl, sp
    ld [hl], $35
    ld sp, $2e32
    ld [hl-], a
    dec [hl]
    ld l, $39

jr_02b_7c6f:
    cpl
    ld [hl], $35
    ld e, $2d
    dec e
    ld [hl], $39
    add hl, sp
    inc e
    add hl, sp
    add hl, sp
    dec h
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    ld h, $25
    inc e
    dec e
    ld e, $26
    dec h
    jr nz, @+$23

    ld [hl+], a
    ld h, $25
    ld de, $131f
    ld h, $25
    ld d, $1f
    ld d, $26
    dec h
    jr jr_02b_7cb6

    add hl, de
    ld h, $25
    dec de
    rra
    ld a, [de]
    ld h, $24
    db $10
    inc hl
    db $10
    daa
    dec d
    dec d
    dec d
    dec d
    dec d
    ld d, $28
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld d, $16
    ld a, [de]
    ld [bc], a

jr_02b_7cb6:
    ld [bc], a
    db $10
    ld de, $102d
    ld de, $1514
    add hl, bc
    inc d
    dec d
    rrca
    ld a, [hl+]
    ld [hl+], a
    rrca
    add hl, bc
    add hl, bc
    inc l
    add hl, bc
    inc l
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    ld a, [hl+]
    dec a
    ld a, $0d
    inc de
    ld a, [hl+]
    dec a
    ld a, $12
    add hl, bc
    rrca
    dec a
    ld a, $0d
    dec c
    add hl, bc
    dec a
    inc l
    dec c
    ld h, $0d
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    jr nz, jr_02b_7d1c

    jr nc, @+$22

    dec hl
    dec de
    jr jr_02b_7d0a

    jr nz, jr_02b_7d1d

    dec l
    dec hl
    dec l
    jr nz, jr_02b_7d26

    jr jr_02b_7d1b

    add hl, hl
    dec de
    dec l
    dec hl
    dec de
    jr jr_02b_7d2d

    dec l
    dec hl
    dec hl
    dec hl
    dec hl
    dec l
    ld e, $2d

jr_02b_7d0a:
    dec e
    dec hl
    inc l
    jr jr_02b_7d2b

    jr jr_02b_7d3c

    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    dec l
    db $10
    db $10
    add hl, bc

jr_02b_7d1b:
    dec l

jr_02b_7d1c:
    add hl, bc

jr_02b_7d1d:
    db $10
    inc hl
    inc hl
    jr z, jr_02b_7d4f

    db $10
    inc hl
    add hl, bc
    dec l

jr_02b_7d26:
    inc hl
    db $10
    jr z, jr_02b_7d3a

    dec l

jr_02b_7d2b:
    db $10
    inc hl

jr_02b_7d2d:
    ld a, [de]
    dec l
    dec l
    db $10
    inc hl
    dec l
    ld a, [de]
    dec l
    db $10
    dec l
    ld a, [de]
    ld a, [de]
    dec l

jr_02b_7d3a:
    db $10
    ld a, [de]

jr_02b_7d3c:
    dec l
    ld a, [de]
    inc c
    ld a, $3d
    inc a
    dec a
    inc a
    dec a
    inc a
    ld a, $0c
    ld a, $3c
    daa
    daa
    daa
    daa
    daa

jr_02b_7d4f:
    daa
    inc a
    ld a, $3e
    daa
    daa
    ld a, $3c
    ld a, $27
    daa
    daa
    ld a, $3e
    daa
    ld a, $3c
    inc c
    inc a
    ld a, $27
    daa
    ld a, $3e
    daa
    ld a, $0c
    inc c
    inc c
    ld a, $27
    daa
    ld a, $3e
    ld a, [hl-]
    ld a, $0c
    inc c
    ld a, $3c
    daa
    daa
    ld a, $3e
    ld a, $3c
    inc c
    ld a, $3c
    daa
    daa
    daa
    ld a, $3c
    ld a, $0c
    inc c
    ld a, $27
    daa
    daa
    ld a, $3c
    inc c
    inc a
    inc a
    dec a
    inc a
    ld l, $3d
    inc a
    inc a
    inc c
    inc c
    ld a, $3c
    inc a
    dec a
    inc a
    dec a
    inc a
    ld a, $0c
    ld a, $3e
    ld a, [hl-]
    daa
    daa
    daa
    daa
    daa
    inc a
    ld a, $3e
    inc a
    inc a
    inc a
    inc a
    ld a, $27
    daa
    daa
    ld a, $3e
    inc c
    inc c
    inc c
    inc c
    inc a
    ld a, $27
    daa
    ld a, $3e
    inc a
    ld a, $0c
    inc c
    inc c
    ld a, $27
    daa
    ld a, $3e
    ld sp, $3e3c
    inc c
    ld a, $3c
    daa
    daa
    ld a, $3e
    daa
    daa
    inc a
    inc a
    inc a
    daa
    daa
    jr z, jr_02b_7e1c

    inc a
    ld a, $27
    daa
    daa
    daa
    daa
    daa
    ld a, $3c
    inc c
    inc a
    dec a
    inc a
    dec a
    inc a
    dec a
    inc a
    inc a
    inc c
    inc c
    ld a, $3d
    ld a, $3d
    ld a, $3d
    inc a
    ld a, $0c
    ld a, $3c
    ld sp, $273e
    ld a, $3a
    daa
    inc a
    ld a, $3e
    daa
    daa
    ld a, $3a
    ld a, $27
    daa
    daa
    ld a, $3e
    daa
    ld a, $3c
    inc a
    inc a
    ld a, $27
    daa
    ld a, $3e
    daa

jr_02b_7e1c:
    ld a, $0c
    inc c
    inc c
    ld a, $27
    daa
    ld a, $3e
    daa
    inc a
    ld a, $0c
    ld a, $3c
    daa
    jr z, jr_02b_7e6c

    ld a, $27
    daa
    inc a
    inc a
    inc a
    daa
    daa
    daa
    ld a, $3c
    ld a, $27
    daa
    daa
    daa
    daa
    daa
    ld a, $3c
    inc c
    inc a
    dec a
    inc a
    dec a
    inc a
    dec a
    inc a
    inc a
    inc c
    inc c
    ld a, $3d
    ld a, $3d
    inc a
    dec a
    inc a
    ld a, $0c
    ld a, $3c
    daa
    ld a, $28
    daa
    daa
    daa
    inc a
    ld a, $3e
    ld a, [hl-]
    daa
    ld a, $31
    ld a, $3c
    daa
    daa
    ld a, $3e
    daa

jr_02b_7e6c:
    ld a, $3e
    ld a, [hl-]
    ld a, $31
    ld a, $27
    ld a, $3e
    daa
    ld a, $3e
    inc a
    ld a, $27
    ld a, $28
    ld a, $3e
    daa
    inc a
    ld a, $0c
    ld a, $27
    inc a
    daa
    ld a, $3e
    daa
    daa
    inc a
    inc a
    inc a
    daa
    daa
    daa
    ld a, $3c
    ld a, $27
    daa
    daa
    daa
    daa
    daa
    ld a, $3c
    inc c
    inc a
    dec a
    inc a
    dec a
    inc a
    dec a
    inc a
    inc a
    inc c
    inc c
    ld a, $3d
    inc a
    dec a
    inc a
    dec a
    inc a
    ld a, $0c
    ld a, $3c
    daa
    daa
    daa
    daa
    daa
    daa
    inc a
    ld a, $3e
    ld sp, $3e27
    inc a
    ld a, $27
    daa
    daa
    ld a, $3e
    daa
    ld a, $3c
    ld sp, $3e3c
    daa
    jr z, jr_02b_7f0c

    ld a, $27
    ld a, $27
    daa
    daa
    ld a, $27
    daa
    ld a, $3e
    daa
    ld a, $27
    daa
    daa
    ld a, $27
    daa
    ld a, $3e
    daa
    ld a, $27
    daa
    daa
    ld a, $27
    daa
    ld a, $3c
    ld a, $3e
    daa
    ld a, [hl-]
    daa
    ld a, $27
    ld a, $3c
    inc c
    inc a
    inc a
    dec a
    inc a
    dec a
    inc a
    dec a
    inc a
    inc c
    inc c
    ld a, $29
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $0c
    ld a, $3c

jr_02b_7f0c:
    daa
    daa
    daa
    daa
    daa
    daa
    inc a
    ld a, $3e
    daa
    ld a, $3c
    daa
    inc a
    ld a, $27
    jr z, jr_02b_7f5c

    ld a, $27
    inc a
    dec bc
    dec bc
    ld [hl], $3c
    daa
    daa
    ld a, $3e
    daa
    daa
    ld b, $08
    dec bc
    daa
    daa
    daa
    ld a, $3e
    daa
    ld a, $2d
    dec bc
    dec bc
    ld a, $27
    daa
    ld a, $3e
    daa
    inc a
    inc a
    daa
    inc a
    inc a
    daa
    daa
    ld a, $3c
    ld a, $27
    daa
    ld sp, $2727
    daa
    ld a, $3c
    inc c
    inc a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    inc a
    inc c
    nop
    nop

jr_02b_7f5c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
