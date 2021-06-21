; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

    db $10
    dec c
    dec c
    dec c
    ld de, $020a
    jr z, jr_02c_4034

    ld [$020a], sp
    add hl, hl
    ld a, [hl+]
    ld [$020a], sp
    ld [bc], a
    ld [bc], a
    ld [$020a], sp
    ld [bc], a
    ld [bc], a
    ld [$1609], sp
    inc b
    dec b
    add hl, bc
    add hl, bc
    rla
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
    ld de, $0a09
    ld [bc], a
    add hl, hl
    ld [bc], a
    inc b
    dec b
    dec b

jr_02c_4034:
    ld b, $08
    add hl, bc
    ld a, [bc]
    ld e, $02
    ld [bc], a
    inc c
    ld [de], a
    dec c
    ld [hl], $08
    add hl, bc
    ld a, [bc]
    add hl, hl
    jr nz, jr_02c_4066

    ld hl, $2021
    ld [bc], a
    ld [$0a09], sp
    dec hl
    dec e
    dec e
    inc b
    dec b
    ld b, $02
    ld [$0a09], sp
    ld e, $04
    dec d
    db $10
    dec c
    ld c, $29
    inc c
    ld de, $270a
    inc c
    ld [de], a
    ld c, $0f
    dec h

jr_02c_4066:
    ld [bc], a
    ld [bc], a
    ld [$0f0a], sp
    rrca
    rrca
    dec e
    rrca
    dec h
    ld [bc], a
    dec de
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
    ld de, $0909
    ld a, [bc]
    inc b
    dec b
    ld b, $0f
    rrca
    rrca
    inc c
    dec c
    ld de, $080a
    add hl, bc
    ld a, [bc]
    inc b
    dec b
    dec b
    dec b
    ld b, $08
    ld a, [bc]
    inc c
    ld [de], a
    ld c, $0c
    ld [de], a
    dec c
    dec c
    ld c, $08
    ld a, [bc]
    rrca
    rrca
    dec e
    dec e
    rrca
    rrca
    rrca
    rrca
    ld [$0f0a], sp
    rrca
    inc b
    inc d
    ld b, $0f
    rrca
    rrca
    ld [$0f0a], sp
    rrca
    inc c
    ld [de], a
    ld c, $0f
    rrca
    dec e
    ld [$0f0a], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc b
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
    add hl, bc
    dec e
    ld e, $1f
    rrca
    rrca
    ld de, $0f11
    ld de, $0f11
    ld bc, $0904
    ld c, $21
    ld [hl+], a
    inc hl
    ld c, $0e
    ld de, $1111
    ld de, $090e
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $24
    ld h, $27
    ld c, $14
    ld bc, $1511
    add hl, bc
    ld c, $0e
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    rrca
    db $10
    ld de, $0f0e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    rrca
    inc c
    inc c
    ld a, [de]
    ld a, [de]
    ld d, $09
    ld c, $0c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    inc c
    inc c
    ld d, $17
    inc c
    ld bc, $0512
    add hl, bc
    ld de, $1111
    ld [de], a
    add hl, bc
    ld c, $0c
    inc d
    add hl, bc
    ld c, $07
    dec c
    ld bc, $1118
    ld de, $1111
    ld de, $0911
    ld c, $0f
    ld c, $14
    ld de, $1211
    add hl, bc
    ld bc, $1418
    dec b
    dec b
    ld bc, $0e0e
    ld c, $0e
    inc de
    ld de, $0904
    ld c, $09
    add hl, bc
    db $10
    ld de, $1211
    add hl, bc
    ld c, $0e
    rrca
    rla
    dec b
    ld [$0909], sp
    rrca
    db $10
    ld bc, $1111
    ld de, $0512
    ld c, $0e
    dec b
    dec b
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc d
    ld de, $1111
    ld de, $0f12
    dec b
    dec b
    ld c, $20
    dec b
    rrca
    ld [$0909], sp
    ld bc, $1c19
    dec de
    ld bc, $1111
    ld de, $0f11
    ld de, $0c11
    dec b
    dec b
    ld de, $1111
    ld de, $0516
    dec b
    dec b
    dec b
    ld c, $05
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc c
    dec b
    ld bc, $0404
    ld c, $05
    dec b
    inc b
    inc b
    ld bc, $0e01
    dec b
    dec b
    ld bc, $0105
    dec b
    dec b
    ld c, $05
    dec b
    ld bc, $0505
    dec b
    ld bc, $0909
    ld bc, $0109
    dec b
    dec b
    ld c, $05
    dec b
    ld c, $05
    dec b
    ld bc, $050e
    dec b
    ld bc, $0501
    dec b
    dec b
    ld bc, $0101
    ld c, $05
    dec b
    ld bc, $0909
    add hl, bc
    ld c, $01
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
    ld bc, $1d05
    ld e, $1f
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
    ld bc, $2104
    ld [hl+], a
    inc hl
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
    ld bc, $2506
    ld h, $27
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
    dec b
    dec b
    dec b
    dec b
    dec b
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc de
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $280a
    dec sp
    add hl, hl
    ld hl, $212b
    ld hl, $1c1c
    inc b
    ld b, $28
    ld hl, $273e
    daa
    daa
    daa
    ld [$390a], sp
    jr jr_02c_42c0

    inc e
    dec hl
    ld hl, $2121
    inc e
    ld [$280a], sp
    add hl, hl
    add hl, de
    inc b
    dec b
    ld b, $0f
    ld [$020a], sp
    dec sp
    ld a, [de]
    inc e
    dec hl
    ld hl, $2921
    inc e
    ld [$190a], sp
    add hl, de
    inc e
    ld [$3610], sp
    rrca
    ld [$1e0a], sp
    dec e
    add hl, hl

jr_02c_42c0:
    jr nz, jr_02c_42e3

    ld hl, $1c21
    inc e
    inc c
    ld de, $2b06
    add hl, sp
    ld [$0f0a], sp
    rrca
    ld [$390a], sp
    add hl, hl
    dec sp
    dec sp
    ld hl, $2121
    ld hl, $1e20
    inc c
    ld [hl], $1e
    add hl, sp
    ld [$0609], sp
    rrca

jr_02c_42e3:
    ld [$020a], sp
    dec sp
    dec sp
    inc e
    ld a, $27
    dec a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld [bc], a
    inc c
    ld [de], a
    ld c, $31
    ld [$240a], sp
    dec sp
    dec sp
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, $02
    ld [bc], a
    dec sp
    ld h, $0f
    ld [$020a], sp
    dec sp
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
    ld b, $39
    inc b
    ld b, $0f
    ld [$280a], sp
    jr c, jr_02c_4330

    ld [de], a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0a09
    ld [bc], a

jr_02c_4330:
    ld [$0f0a], sp
    ld [$2a0a], sp
    ld [bc], a
    dec sp
    dec sp
    dec sp
    ld h, $0f
    rrca
    rrca
    rrca
    rrca
    inc c
    dec c
    ld c, $39
    inc c
    ld [hl], $1c
    ld [$2b0a], sp
    ld a, [hl+]
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $0f
    dec h
    ld [bc], a
    dec sp
    ld [bc], a
    dec sp
    ld a, $27
    ld [$280a], sp
    ld a, [hl+]
    inc c
    ld [de], a
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0505
    dec b
    ld b, $39
    inc b
    ld b, $0f
    ld [$2a0a], sp
    ld a, [hl+]
    ld a, [hl+]
    jr z, jr_02c_43b1

    ld h, $0f
    rrca
    rrca
    inc c
    dec c
    dec c
    dec c
    ld c, $02
    ld [$0f0a], sp
    ld [$280a], sp
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $0f
    rrca
    rrca
    rrca
    dec h
    dec hl
    add hl, sp
    ld [$0f0a], sp
    ld [$2a0a], sp
    inc c
    dec c
    dec c
    dec c
    dec c
    jr nc, jr_02c_43b2

    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $02
    inc c
    ld [hl], $0f
    ld [$240a], sp
    dec hl
    ld a, [hl+]
    dec hl

jr_02c_43b1:
    ld a, [hl+]

jr_02c_43b2:
    ld [bc], a
    ld [bc], a
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $20
    add hl, hl
    inc h
    ld e, $08
    add hl, bc
    inc hl
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
    inc hl
    dec b
    add hl, bc
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    dec c
    ld de, $1009
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $0e10
    inc e
    add hl, de
    dec hl
    dec hl
    inc c
    dec c
    ld c, $02
    dec sp
    inc h
    dec sp
    ld h, $08
    ld a, [bc]
    inc e
    jr z, @+$1c

    ld e, $2b
    ld [bc], a
    dec hl
    ld hl, $0421
    inc hl
    ld b, $26
    ld [$1c0a], sp
    jr nz, jr_02c_4409

    dec b
    dec b
    ld b, $2b

jr_02c_4409:
    ld hl, $0c29
    dec c
    ld c, $26
    ld [$280a], sp
    jr z, @+$0e

    ld [de], a
    dec c
    ld [hl], $04
    ld b, $02
    ld hl, $3e1e
    inc sp
    ld [$0609], sp
    add hl, hl
    jr z, jr_02c_4426

    jr @+$04

jr_02c_4426:
    ld [$0609], sp
    ld [bc], a
    ld [hl+], a
    ld h, $04
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, de
    add hl, de
    add hl, de
    ld [bc], a
    inc b
    db $10
    dec c
    ld [hl], $1e
    ld a, $33
    inc c
    ld de, $0e10
    ld [bc], a
    inc b
    dec b
    ld b, $0c
    ld [hl], $21
    ld hl, $2622
    rrca
    rrca
    ld [$1e0a], sp
    ld e, $08
    add hl, bc
    ld a, [bc]
    daa
    daa
    daa
    daa
    inc b
    dec b
    ld b, $0f
    ld [$1e0a], sp
    ld e, $0c
    dec c
    ld [hl], $0f
    rrca
    rrca
    rrca
    ld [$0a09], sp
    rrca
    ld [$1e0a], sp
    ld e, $02
    dec sp
    ld e, $39
    dec e
    dec e
    add hl, sp
    ld [$0a09], sp
    ld [bc], a
    ld [$1e0a], sp
    ld e, $1e
    jr nz, @+$23

    ld [bc], a
    dec sp
    dec sp
    ld [bc], a
    ld [$3610], sp
    ld [bc], a
    ld [$1e0a], sp
    ld e, $02
    dec sp
    dec sp
    add hl, de
    inc e
    jr jr_02c_44ab

    inc c
    ld c, $02
    ld e, $08
    ld a, [bc]
    ld e, $1e
    ld e, $1c
    jr jr_02c_44bf

    ld hl, $2b1c
    add hl, sp
    dec e
    dec e
    ld [bc], a
    ld [$1e0a], sp
    ld e, $1e
    add hl, sp

jr_02c_44ab:
    ld hl, $2b1e
    ld e, $1e
    add hl, sp
    ld hl, $1c39
    ld [$1e0a], sp
    ld e, $1e
    add hl, sp
    dec e
    add hl, sp
    ld [hl+], a
    add hl, sp
    ld [hl+], a

jr_02c_44bf:
    add hl, sp
    dec e
    add hl, sp
    ld hl, $0a08
    inc h
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld [bc], a
    add hl, de
    ld [bc], a
    add hl, de
    ld [bc], a
    add hl, de
    ld [bc], a
    add hl, de
    ld [$2309], sp
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
    ld [bc], a
    ld [bc], a
    ld bc, $073b
    rlca
    rlca
    rlca
    rlca
    jr z, jr_02c_4516

    ld b, $0d
    inc c
    rlca
    ld c, $0a
    ld [bc], a
    dec c
    dec b
    inc b
    ld c, $12
    ld b, $03
    ld [de], a
    ld [de], a
    rlca
    inc c
    ld [$0112], sp
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    ld l, $30
    jr nc, jr_02c_4542

    jr nc, jr_02c_4543

    db $10
    db $10

jr_02c_4516:
    dec d
    ld de, $0e0e
    db $10
    db $10
    inc b
    inc b
    ld c, $0e
    db $10
    db $10
    inc b
    inc b
    ld c, $0e
    dec b
    ld a, [hl+]
    ld b, $07
    dec hl
    ld a, [hl+]
    ld hl, $0506
    inc b
    ld [hl+], a
    ld bc, $0401
    dec b
    ld b, $09
    ld a, [bc]
    ld [bc], a
    ld [$0109], sp
    ld bc, $0308
    ld a, [bc]
    add hl, bc
    ld a, [bc]

jr_02c_4542:
    add hl, bc

jr_02c_4543:
    ld [$0109], sp
    ld bc, $0906
    inc b
    inc b
    dec b
    add hl, bc
    dec b
    ld b, $01
    ld bc, $090a
    ld [$0916], sp
    add hl, bc
    add hl, bc
    rla
    ld bc, $0a01
    add hl, bc
    ld [$0916], sp
    add hl, bc
    add hl, bc
    rla
    ld bc, $0a01
    add hl, bc
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld bc, $0401
    add hl, bc
    ld b, $21
    ld b, $09
    inc b
    ld [hl+], a
    ld bc, $0801
    inc bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld h, $08
    add hl, bc
    ld bc, $0c01
    dec c
    ld c, $0e
    dec hl
    ld c, $1c
    ld [bc], a
    cpl
    jr nc, @+$15

    inc b
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    dec de
    ld bc, $0101
    inc d
    daa
    add hl, bc
    ld bc, $0101
    ld [$0101], sp
    ld [$0101], sp
    ld [$012a], sp
    dec b
    rlca
    ld b, $05
    rlca
    ld b, $05
    rlca
    ld a, [hl+]
    ld bc, $0705
    ld b, $05
    rlca
    ld b, $05
    rlca
    ld a, [hl+]
    ld bc, $0b05
    ld b, $05
    dec bc
    ld b, $05
    dec bc
    ld bc, $010c
    ld bc, $0101
    ld bc, $0101
    ld bc, $2902
    ld l, $2c
    jr z, jr_02c_4608

    ld bc, $0d01
    ld [hl], $01
    ld bc, $2514
    ld h, $01
    ld [bc], a
    ld [bc], a
    inc de
    dec l
    inc l
    jr nc, jr_02c_45ee

    dec c
    ld bc, $2301
    scf
    ld bc, $2401
    ld bc, $0101

jr_02c_45ee:
    ld bc, $0c01
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [de], a
    add hl, de
    ld de, $0c0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_02c_4608:
    inc c
    inc c
    inc c
    ld c, $04
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc de
    inc b
    rrca
    dec b
    dec b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc b
    inc h
    inc h
    inc h
    ld bc, $0302
    dec b
    inc c
    inc b
    ld bc, $1514
    inc d
    dec d
    inc d
    dec d
    inc d
    ccf
    inc b
    dec c
    inc c
    ld c, $04
    inc c
    inc b
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $04
    rrca
    add hl, de
    inc de
    ld a, [de]
    inc c
    inc b
    dec c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $04
    inc h
    inc h
    inc h
    inc b
    inc c
    inc b
    rrca
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    inc de
    ld a, [de]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc b
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc h
    inc b
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
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
    inc c
    inc c
    daa
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    ld a, $2b
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    daa
    inc c
    inc c
    daa
    ld e, $17
    dec bc
    inc e
    ld h, $1f
    ld e, $26
    rla
    dec bc
    inc e
    rra
    daa
    inc c
    inc c
    daa
    jr nz, jr_02c_46cc

    ld b, $06
    ld [$2021], sp
    dec bc
    dec bc

jr_02c_46cc:
    dec bc
    dec [hl]
    ld hl, $0c27
    inc c
    ld a, [hl-]
    jr nz, jr_02c_46dc

    ld a, [hl+]
    ld a, [hl+]
    ld [$2021], sp
    ld [hl], $36

jr_02c_46dc:
    ld [hl], $36
    ld hl, $0c27
    inc c
    daa
    jr nz, jr_02c_46ec

    dec l
    dec l
    ld [$171c], sp
    ld [hl], $36

jr_02c_46ec:
    ld [hl], $36
    ld hl, $0c3a
    inc c
    daa
    ld [hl+], a
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    inc hl
    daa
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    jr c, jr_02c_4720

    dec bc
    dec bc
    add hl, sp
    rlca
    ld b, $08
    dec bc
    dec bc
    inc l
    dec bc
    dec bc

jr_02c_4720:
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    cpl
    rlca
    ld b, $08
    dec bc
    rlca
    ld a, [hl+]
    ld [$0b0b], sp
    inc l
    dec bc
    dec [hl]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    add hl, bc
    scf
    scf
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], $36
    dec bc
    dec [hl]
    inc [hl]
    add hl, bc
    ld a, [bc]
    jr c, @+$09

    ld b, $08
    add hl, sp
    rlca
    dec l
    ld [$0b0b], sp
    dec bc
    dec bc
    dec [hl]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    ld b, $06
    ld [$2d07], sp
    dec l
    ld [$1b0b], sp
    dec bc
    ld [hl], $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    scf
    ld a, [bc]
    ld a, [bc]
    scf
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [hl], $0b
    dec de
    dec bc
    ld [hl], $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    ld [hl], $36
    dec bc
    ld b, $0c
    dec bc
    dec bc
    rlca
    ld a, [hl+]
    inc c
    dec bc
    dec de
    rlca
    dec l
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr c, jr_02c_47bf

    rlca
    ld b, $06
    add hl, sp
    inc c
    dec bc
    inc l
    inc l
    ld [$0b0c], sp
    dec de

jr_02c_47bf:
    dec bc
    dec bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    jr nc, jr_02c_47fe

    scf
    jr c, jr_02c_47dd

    ld [hl-], a
    inc sp
    dec bc
    add hl, sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc

jr_02c_47dd:
    dec bc
    rlca
    ld b, $36
    dec de
    dec bc
    rlca
    dec l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0a0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0a0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_02c_47fe:
    ld bc, $0a0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec [hl]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld de, $0a09
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld de, $0a09
    ld a, [bc]
    ld a, [bc]
    ld bc, $0606
    ld b, $06
    ld de, $0606
    ld bc, $0101
    ld h, $26
    ld h, $26
    ld h, $26
    ld h, $0a
    ld bc, $0601
    ld b, $20
    dec b
    ld b, $06
    ld b, $0a
    ld bc, $0a01
    ld a, [bc]
    inc de
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rlca
    ld bc, $0a0a
    inc de
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld bc, $0e0e
    rla
    dec c
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    jr jr_02c_487a

    ld a, [de]
    dec de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    inc e
    dec e
    ld e, $1f
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_02c_487a:
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0e0e
    ld c, $0e
    ld c, $0f
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0a0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld bc, $0a0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec [hl]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0f
    ld de, $0e0d
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld c, $0f
    ld de, $0a09
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld bc, $0404
    inc b
    inc b
    inc b
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld bc, $0514
    ld b, $06
    ld b, $01
    ld bc, $0a0a
    dec bc
    inc de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    rla
    ld c, $0e
    ld c, $0e
    ld c, $0b
    ld a, [bc]
    ld a, [bc]
    jr jr_02c_4910

    ld a, [de]
    dec de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    inc e
    dec e
    ld e, $1f
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_02c_4910:
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc de
    ld a, [hl+]
    dec d
    ld b, $16
    ld bc, $0119
    rla
    ld a, [hl+]
    inc c
    ld bc, $0419
    ld bc, $0203
    dec b
    ld b, $05
    dec b
    dec b
    dec b
    rlca
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
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0f0f
    rrca
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    jr nz, @+$11

    rrca
    rrca
    rrca
    rrca
    jr nz, jr_02c_49f0

    add hl, bc
    inc bc
    inc bc
    rrca
    rrca
    rrca
    dec b
    rlca
    ld b, $05
    rlca
    add hl, bc
    dec bc
    rla
    add hl, bc
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    add hl, bc
    ld a, [bc]
    inc b
    ld a, [bc]
    dec bc
    add hl, bc
    ld [hl-], a
    inc b
    ld [hl-], a
    dec bc
    add hl, bc
    ld a, [bc]
    inc sp
    ld a, [bc]
    dec bc
    ld [hl+], a
    ld h, $26
    ld h, $24

jr_02c_49f0:
    inc hl
    ld bc, $0101
    dec h
    jr nz, @+$23

    ld bc, $2120
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
    ld bc, $0101
    ld bc, $0101
    dec e
    ld bc, $011e
    ld bc, $0c01
    ld bc, $0901
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    dec c
    rrca
    inc c
    rrca
    rrca
    ld c, $0f
    dec c
    rrca
    rrca
    dec c
    rrca
    inc c
    rrca
    rrca
    ld c, $0f
    dec c
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    dec c
    rrca
    inc c
    dec c
    rrca
    ld c, $0f
    dec c
    rrca
    rrca
    dec c
    rrca
    inc c
    dec c
    dec c
    ld c, $0f
    dec c
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    dec c
    rrca
    inc c
    ld [hl], $0f
    ld c, $0f
    dec c
    rrca
    rrca
    dec c
    rrca
    inc c
    inc h
    dec c
    ld c, $0f
    dec c
    rrca
    ld b, $01
    ld bc, $1919
    ld a, [de]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    db $10
    ld de, $0707
    inc e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec de
    dec c
    inc d
    dec d
    rlca
    rlca
    inc l
    dec de
    dec de
    dec bc
    dec de
    rlca
    rlca
    rlca
    rlca
    ld [$122e], sp
    ld [de], a
    ld d, $1b
    rlca
    ld [$0729], sp
    rlca
    ld l, $12
    ld [de], a
    ld d, $1b
    dec c
    rlca
    rlca
    ld [$2e29], sp
    dec bc
    dec de
    dec bc
    dec de
    inc [hl]
    inc [hl]
    dec h
    inc h
    inc [hl]
    ld l, $16
    ld [de], a
    ld d, $1b
    rlca
    rlca
    rlca
    rlca
    daa
    ld l, $16
    ld [de], a
    ld d, $1b
    dec c
    inc c
    ld c, $07
    ld c, $1c
    dec de
    dec de
    dec de
    dec de
    inc b
    inc bc
    dec b
    add hl, hl
    add hl, hl
    rrca
    ld hl, $221f
    rrca
    rrca
    inc hl
    jr nz, jr_02c_4afe

    rrca
    jr nc, jr_02c_4ae8

    rrca
    rrca
    ld sp, $2824
    dec h
    add hl, hl
    inc h
    inc e
    daa
    inc e

jr_02c_4ae8:
    ld h, $1c
    inc e
    ld h, $1c
    daa
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld h, $1c
    daa
    inc e
    inc e
    inc e
    rra
    inc e
    inc e

jr_02c_4afe:
    dec [hl]
    dec [hl]
    ld e, $01
    ld bc, $1d01
    ld bc, $3434
    ccf
    rlca
    dec l
    dec l
    rlca
    ld c, $07
    rlca
    rlca
    rlca
    dec l
    db $10
    ld de, $0d0e
    inc c
    ld c, $07
    rlca
    inc d
    dec d
    ld c, $3d
    inc a
    inc a
    inc a
    dec a
    scf
    inc bc
    inc bc
    inc bc
    scf
    ld a, $3d
    inc bc
    dec a
    ccf
    inc bc
    scf
    inc bc
    scf
    inc bc
    ld a, [hl-]
    ccf
    inc bc
    ld a, $3a
    scf
    inc bc
    inc bc
    inc bc
    scf
    dec a
    ld [hl-], a
    inc bc
    ld sp, $363d
    inc bc
    inc bc
    inc bc
    jr c, jr_02c_4b80

    ld a, $09
    ccf
    dec sp
    dec b
    inc e
    add hl, hl
    add hl, hl
    dec b
    ld b, $0f
    rrca
    rrca
    dec h
    rrca
    ld hl, $221f
    rrca
    ld b, $23
    jr nz, @+$26

    rrca
    rrca
    rrca
    rrca
    inc d
    dec d
    ld h, $0f
    rrca
    jr @+$1b

    daa
    dec bc
    rrca
    rrca
    rlca
    ld [bc], a
    add hl, de
    dec e
    ld hl, $081d
    rlca
    rlca
    ld sp, $0e36
    rlca
    rlca
    inc sp
    inc b
    inc a
    ld [hl-], a
    rlca

jr_02c_4b80:
    ld sp, $223d
    jr nc, jr_02c_4bb5

    jr nc, @+$39

    ld [hl+], a
    jr nc, jr_02c_4bba

    jr nc, jr_02c_4bc3

    ld [hl+], a
    jr nc, jr_02c_4bbf

    jr nc, @+$39

    ld a, $34
    inc [hl]
    inc [hl]
    ccf
    dec de
    ld de, $0a01
    inc bc
    ld [$0309], sp
    inc bc
    inc c
    dec c
    inc bc
    inc bc
    ld b, $03
    inc bc
    db $10
    jr nz, jr_02c_4bc4

    dec bc
    inc bc
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc de
    inc bc
    inc bc
    ld [hl+], a
    inc bc
    inc bc

jr_02c_4bb5:
    inc bc
    ld [$0520], sp
    inc d

jr_02c_4bba:
    inc d
    inc c
    ld bc, $0601

jr_02c_4bbf:
    rlca
    ld bc, $0101

jr_02c_4bc3:
    ld a, [bc]

jr_02c_4bc4:
    dec bc
    inc d
    inc d
    ld bc, $1414
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld bc, $0504
    dec b
    dec e
    ld a, [de]
    rrca
    rrca
    ld bc, $0f02
    jr nc, jr_02c_4bef

    inc c
    dec c
    ld sp, $0b06
    rrca
    rrca
    rlca
    dec bc
    ld [de], a
    ld [bc], a
    ld de, $0204
    inc b

jr_02c_4bef:
    dec c
    inc b
    ld a, [bc]
    ld bc, $0101
    ld bc, $0101
    dec d
    dec d
    dec d
    dec d
    ld bc, $0501
    jr c, jr_02c_4c30

    dec [hl]
    ld [hl], $19
    inc sp
    ld [hl], $01
    rlca
    add hl, bc
    inc d
    jr nz, @+$37

    dec [hl]
    ld [hl-], a
    inc [hl]
    scf
    db $10
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld de, $240a
    ld hl, $1c39
    add hl, hl
    dec sp
    ld [bc], a
    inc h
    ld [$020a], sp
    jr c, @+$3b

    ld hl, $3b1c
    inc b
    inc hl
    add hl, bc
    ld a, [bc]
    ld [bc], a

jr_02c_4c30:
    inc e
    ld hl, $381c
    inc e
    inc c
    dec c
    ld de, $2b0a
    inc e
    ld hl, $1c21
    dec sp
    dec hl
    ld hl, $0a08
    dec hl
    inc e
    dec sp
    ld hl, $1921
    inc a
    ld [bc], a
    ld [$2b0a], sp
    inc e
    jr c, @+$23

    ld a, [hl-]
    ld [hl+], a
    ld a, [hl-]
    add hl, sp
    ld [$240a], sp
    dec sp
    dec sp
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc h
    ld [$2309], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    inc b
    ld c, $05
    inc e
    ld a, [bc]
    rrca
    ld bc, $0f02
    ld a, [bc]
    rla
    inc c
    dec c
    rrca
    ld a, [bc]
    dec de
    dec bc
    rrca
    rlca
    ld a, [bc]
    dec b
    inc bc
    dec b
    inc bc
    dec b
    jr z, @+$2d

    rrca
    ld a, [hl+]
    jr z, jr_02c_4cb4

    ld a, [hl+]
    rrca
    dec hl
    jr z, @+$2a

    jr z, @+$0d

    dec hl
    ld a, [hl+]
    ld de, $1d1c
    ld e, $13
    jr jr_02c_4cb9

    ld hl, $1922
    db $10
    ld d, $16
    ld d, $10
    add hl, de
    db $10
    db $10
    db $10
    jr jr_02c_4cc0

    add hl, de
    db $10
    jr jr_02c_4cc3

    add hl, de
    dec de
    db $10
    ld a, [de]
    jr jr_02c_4cc1

    db $10
    inc hl
    db $10

jr_02c_4cb4:
    db $10
    jr nz, jr_02c_4cd7

    jr nz, jr_02c_4cd9

jr_02c_4cb9:
    jr nz, jr_02c_4cdb

    inc hl
    inc hl
    inc hl
    jr nz, jr_02c_4ce0

jr_02c_4cc0:
    add hl, de

jr_02c_4cc1:
    add hl, de
    add hl, de

jr_02c_4cc3:
    jr nz, jr_02c_4cdf

    inc hl
    add hl, de
    inc hl
    ld a, [de]
    ld a, [de]
    add hl, de
    inc e
    add hl, de
    ld a, [de]
    ld hl, $1c1c
    inc e
    ld [hl+], a
    ld a, [de]
    ld a, [de]
    inc e
    ld a, [de]

jr_02c_4cd7:
    ld a, [de]
    inc e

jr_02c_4cd9:
    ld e, $1c

jr_02c_4cdb:
    dec e
    inc e
    inc e
    inc e

jr_02c_4cdf:
    rra

jr_02c_4ce0:
    inc e
    inc e
    ld e, $1d
    ld a, [de]
    add hl, de
    add hl, de
    ccf
    rlca
    daa
    inc l
    add hl, sp
    rlca
    ld l, $2e
    rlca
    ld c, $27
    inc l
    add hl, sp
    rlca
    ld c, $02
    dec l
    jr z, jr_02c_4d23

    inc de
    inc b
    dec b
    ld l, $06
    dec b
    ld d, $04
    ld bc, $012c
    dec b
    rla
    jr jr_02c_4d0e

    ld l, $06
    inc c
    add hl, de
    add hl, de

jr_02c_4d0e:
    ccf
    inc b
    inc b
    inc b
    inc b
    inc b
    ld de, $0309
    inc bc
    dec hl
    ld [de], a
    ld [bc], a
    inc e
    inc e
    ld [bc], a
    ld [bc], a
    inc de
    inc l
    ld [bc], a
    ld [bc], a

jr_02c_4d23:
    ld [bc], a
    inc e
    cpl
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
    ld de, $1009
    dec c
    ld de, $0a09
    rra
    ld [bc], a
    inc a
    inc a
    inc a
    inc h
    inc a
    ld a, [hl+]
    inc c
    dec c
    ld c, $1f
    ld [$0a09], sp
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $04
    inc hl
    ld b, $02
    ld [bc], a
    ld hl, $0222
    ld [$0e10], sp
    ld e, $1c
    ld [$0c0a], sp
    dec c
    ld c, $20
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$040a], sp
    dec b
    ld b, $0c
    ld c, $19
    rra
    inc b
    ld b, $1e
    inc b
    dec b
    ld b, $08
    ld a, [bc]
    ld [$3610], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc c
    ld c, $1e
    inc c
    dec c
    ld c, $08
    ld a, [bc]
    ld [$020a], sp
    ld [bc], a
    ld hl, $042a
    ld b, $02
    ld e, $04
    ld b, $1f
    ld [$080a], sp
    ld a, [bc]
    inc b
    dec b
    dec b
    ld b, $08
    ld a, [bc]
    ld [bc], a
    inc e
    ld [$390a], sp
    ld [$080a], sp
    ld a, [bc]
    ld [$1210], sp
    ld c, $0c
    ld c, $28
    inc e
    inc c
    ld c, $39
    ld [$080a], sp
    ld a, [bc]
    ld [$020a], sp
    dec sp
    ld [bc], a
    add hl, de
    ld [bc], a
    inc e
    ld hl, $2938
    ld [$080a], sp
    ld a, [bc]
    ld [$020a], sp
    dec sp
    add hl, de
    add hl, de
    add hl, de
    inc e
    dec sp
    inc e
    jr c, jr_02c_4dd3

    ld a, [bc]
    ld [$080a], sp
    ld a, [bc]
    ld [bc], a
    dec sp
    add hl, de

jr_02c_4dd3:
    add hl, de
    ld e, $1c
    inc e
    jr c, @+$1e

    ld [$0c0a], sp
    ld [de], a
    dec c
    ld c, $24
    dec sp
    add hl, de
    ld a, [de]
    ld e, $1c
    dec e
    dec hl
    inc e
    ld [$3c0a], sp
    ld [bc], a
    dec sp
    inc b
    inc hl
    dec b
    ld b, $1e
    ld e, $28
    ld hl, $2b1e
    ld [$2a0a], sp
    add hl, de
    jr z, jr_02c_4e09

    dec c
    dec c
    ld c, $1e
    ld e, $02
    dec e
    ld [hl+], a
    ld e, $08
    ld a, [bc]
    rra

jr_02c_4e09:
    ld hl, $2121
    ld hl, $2121
    ld [hl+], a
    ld hl, $0222
    ld hl, $0802
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec sp
    ld hl, $2121
    ld hl, $2121
    ld hl, $2121
    ld [$0509], sp
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
    ld de, $1b0a
    inc e
    add hl, hl
    ld hl, $2121
    ld hl, $1802
    ld a, [de]
    dec de
    ld [bc], a
    ld a, [de]
    ld [$1e0a], sp
    inc e
    inc e
    inc e
    ld hl, $0221
    inc e
    inc e
    jr @+$04

    dec e
    jr z, @+$0a

    ld a, [bc]
    ld e, $1c
    inc e
    inc e
    inc e
    add hl, hl
    jr z, @+$1e

    inc e
    jr jr_02c_4e95

    dec e
    ld [bc], a
    ld [$1e0a], sp
    inc e
    inc e
    inc e
    inc e
    jr nz, jr_02c_4e96

    dec de
    inc e
    jr jr_02c_4e9c

    ld [bc], a
    jr z, jr_02c_4e87

    ld a, [bc]
    ld e, $1c
    inc e
    inc e
    inc e
    jr nz, jr_02c_4eb1

jr_02c_4e87:
    ld a, [de]
    dec de
    inc b
    dec b
    ld b, $1e
    ld [$1e0a], sp
    inc e
    inc e
    inc e
    inc e
    dec de

jr_02c_4e95:
    inc e

jr_02c_4e96:
    ld e, $1e
    ld [$3610], sp
    add hl, hl

jr_02c_4e9c:
    ld [$1e0a], sp
    inc e
    inc e
    jr nz, @+$20

    ld e, $1e
    ld e, $1e
    ld [$2a0a], sp
    ld [bc], a
    ld [$1e0a], sp
    inc e
    jr nz, jr_02c_4ed2

jr_02c_4eb1:
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    ld e, $1e
    ld [$2b0a], sp
    dec e
    ld [$1e0a], sp
    jr nz, jr_02c_4ee0

    ld hl, $2121
    inc e
    ld hl, $0822
    ld a, [bc]
    jr jr_02c_4ee1

    ld [$210a], sp
    ld hl, $2121
    ld hl, $2121

jr_02c_4ed2:
    ld hl, $081e
    ld a, [bc]
    jr jr_02c_4ef0

    ld [$180a], sp
    jr jr_02c_4ef5

    inc b
    dec b
    dec b

jr_02c_4ee0:
    dec b

jr_02c_4ee1:
    dec b
    dec b
    add hl, bc
    ld a, [bc]
    dec de
    add hl, de
    ld [$1d0a], sp
    dec e
    dec e
    inc c
    jr nc, jr_02c_4efc

    dec c

jr_02c_4ef0:
    dec c
    dec c
    dec c
    ld c, $1e

jr_02c_4ef5:
    dec hl
    ld [$1d0a], sp
    daa
    daa
    daa

jr_02c_4efc:
    daa
    dec e
    dec e
    dec de
    jr z, jr_02c_4f2b

    add hl, hl
    add hl, de
    ld [bc], a
    ld [$2d0a], sp
    inc l
    ld l, $2e
    cpl
    cpl
    cpl
    inc b
    dec b
    dec b
    ld b, $02
    inc e
    ld [$0f0a], sp
    rrca
    ld sp, $0f31
    rrca
    rrca
    inc c
    dec c
    dec c
    ld c, $1e
    ld [bc], a
    ld [$020a], sp
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_02c_4f2b:
    add hl, de
    dec de
    jr z, jr_02c_4f50

    ld [bc], a
    add hl, de
    ld [bc], a
    ld [$0509], sp
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
    db $10
    dec c
    dec c
    dec c
    ld de, $1009
    dec c
    dec c
    ld de, $1b0a
    inc e
    ld [bc], a

jr_02c_4f50:
    ld [$0a09], sp
    inc h
    rra
    ld [$2a0a], sp
    ld [bc], a
    inc e
    ld [$0a09], sp
    inc h
    dec hl
    ld [$190a], sp
    add hl, de
    ld [bc], a
    ld [$0909], sp
    inc hl
    dec b
    add hl, bc
    ld a, [bc]
    inc e
    jr @+$1b

    inc c
    ld de, $0909
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc e
    inc e
    ld hl, $0c02
    dec c
    dec c
    dec c
    ld de, $200a
    dec hl
    jr z, jr_02c_4f85

    jr z, jr_02c_4fad

jr_02c_4f85:
    add hl, hl
    jr z, jr_02c_4f90

    ld a, [bc]
    dec e
    dec e
    dec e
    dec e
    ld a, [de]
    ld a, [de]
    add hl, de

jr_02c_4f90:
    ld [bc], a
    ld [$020a], sp
    jr z, @+$2d

    add hl, hl
    add hl, de
    ld [bc], a
    ld [bc], a
    ld a, [de]
    ld [$280a], sp
    inc b
    dec b
    dec b
    ld b, $1d
    add hl, de
    inc b
    add hl, bc
    ld a, [bc]
    ld a, [hl+]
    inc c
    ld [de], a
    dec c
    ld [hl], $02

jr_02c_4fad:
    jr z, @+$0a

    add hl, bc
    ld a, [bc]
    jr z, jr_02c_4fdb

    dec hl
    jr z, jr_02c_4fdf

    jr z, jr_02c_4fd4

    ld [$0909], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $1c
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    daa
    ld [$1009], sp
    dec c
    dec c
    ld de, $0909

jr_02c_4fd4:
    ld a, [bc]
    ld a, [hl+]
    ld [$0a09], sp
    jr z, jr_02c_4ffa

jr_02c_4fdb:
    ld [$0909], sp
    ld a, [bc]

jr_02c_4fdf:
    add hl, hl
    inc c
    ld de, $240a
    ld [bc], a
    ld [$0909], sp
    ld a, [bc]
    add hl, hl
    dec de
    ld [$2309], sp
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    add hl, bc
    db $10
    dec c
    dec c
    dec c

jr_02c_4ffa:
    ld de, $1009
    dec c
    ld de, $1009
    dec c
    dec c
    dec c
    ld de, $240a
    ld [bc], a
    ld a, [hl+]
    ld [$0a09], sp
    dec de
    ld [$0a09], sp
    jr z, jr_02c_5031

    ld a, [hl+]
    ld [$2309], sp
    ld b, $02
    ld [$0a09], sp
    dec hl
    ld [$0a09], sp
    add hl, hl
    inc h
    dec hl
    ld [$0d10], sp
    ld c, $02
    ld [$0a09], sp
    add hl, hl
    ld [$0909], sp
    dec b
    inc hl
    dec b

jr_02c_5031:
    add hl, bc
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$0a09], sp
    dec hl
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld [bc], a
    inc b
    dec b
    db $10
    dec c
    ld c, $29
    ld [$1009], sp
    dec c
    dec c
    dec c
    ld de, $020a
    ld [$0a09], sp
    ld [bc], a
    ld hl, $0821
    add hl, bc
    ld a, [bc]
    jr jr_02c_507c

    ld a, [de]
    ld [$1b0a], sp
    ld [$0a09], sp
    ld a, [hl+]
    dec hl
    inc h
    ld [$0a09], sp
    inc e
    inc h
    ld e, $08
    add hl, bc
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    dec b
    inc hl
    add hl, bc
    add hl, bc
    add hl, bc
    dec b
    inc hl
    dec b

jr_02c_507c:
    add hl, bc
    db $10
    dec c
    dec c
    dec c
    ld de, $180a
    ld [bc], a
    ld a, [de]
    ld [$290a], sp
    inc h
    ld a, [hl+]
    ld [$0509], sp
    inc hl
    dec b
    add hl, bc
    ld b, $19
    ld bc, $0702
    rlca
    rlca
    dec bc
    rlca
    daa
    rrca
    jr z, jr_02c_50ab

    inc c
    rlca
    rlca
    daa
    daa
    daa
    daa
    add hl, hl
    ld a, [hl+]
    daa
    daa
    daa
    daa

jr_02c_50ab:
    daa
    daa
    daa
    daa
    ld bc, $2701
    daa
    daa
    daa
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec h
    ld h, $27
    daa
    ld bc, $2701
    daa
    dec h
    ld h, $27
    daa
    daa
    daa
    ld bc, $2701
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    add hl, bc
    jr nc, jr_02c_5101

    daa
    daa
    daa
    daa
    daa
    daa
    daa
    dec c
    ld bc, $2727
    daa
    daa
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
    daa
    daa
    dec h
    ld h, $27
    daa
    daa
    daa
    ld [$0a09], sp
    ld bc, $0101

jr_02c_5101:
    ld [$2625], sp
    ld a, [bc]
    inc c
    ld [bc], a
    ld c, $01
    ld bc, $0c01
    ld a, [hl+]
    add hl, hl
    ld c, $0c
    dec c
    ld c, $01
    ld bc, $0c01
    inc bc
    dec c
    ld c, $0c
    dec c
    ld c, $01
    ld bc, $2c01
    cpl
    cpl
    dec l
    inc c
    dec c
    ld c, $01
    ld bc, $0101
    ld bc, $0101
    inc c
    dec c
    ld c, $01
    ld bc, $0101
    ld bc, $0101
    inc c
    dec c
    ld c, $01
    ld bc, $0101
    ld bc, $0101
    inc c
    ld [bc], a
    ld c, $01
    ld bc, $0101
    ld bc, $0101
    inc l
    cpl
    dec l
    ld bc, $0101
    ld bc, $0101
    ld bc, $1d1d
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    ld bc, $0102
    ld bc, $0000
    ld b, $06
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    ld b, $13
    inc de
    ld b, $06
    inc de
    inc de
    inc de
    ld b, $06
    inc de
    inc de
    inc de
    ld [$1309], sp
    inc de
    inc de
    ld b, $06
    inc de
    ld b, $3a
    ccf
    inc sp
    dec sp
    inc de
    inc de
    ld b, $06
    inc de
    inc de
    inc de
    inc c
    dec c
    inc de
    inc de
    inc de
    ld b, $06
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, $13
    ld b, $06
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, $06
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, $13
    inc de
    ld b, $06
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, $06
    ld b, $06
    ld b, $06
    inc de
    inc de
    ld b, $06
    ld b, $06
    ld b, $13
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, $06
    dec de
    add hl, de
    add hl, de
    add hl, de
    dec de
    add hl, de
    add hl, de
    dec de
    ld b, $06
    jr nz, jr_02c_521e

    ld [hl+], a
    inc d
    dec d
    ld d, $0e
    rrca
    ld b, $06
    jr nz, jr_02c_5228

    ld [hl+], a
    inc d
    ld bc, $2f16
    cpl
    ld b, $06
    jr nz, @+$23

    ld [hl+], a
    jr jr_02c_521e

    ld a, [de]
    cpl
    cpl
    ld b, $06
    jr nz, @+$23

    ld [hl+], a
    jr z, jr_02c_5247

jr_02c_521e:
    ld a, [hl+]
    ld [$0609], sp
    ld b, $24
    dec h
    ld h, $2c
    dec l

jr_02c_5228:
    ld l, $0c
    dec c
    ld b, $06
    ld b, $06
    ld b, $30
    ld sp, $0632
    ld b, $06
    ld [$0a09], sp
    inc c
    ld [bc], a
    ld c, $0c
    dec c
    ld c, $0c
    dec c
    ld c, $0c
    dec c
    ld c, $0c
    dec c

jr_02c_5247:
    ld c, $0c
    dec c
    ld c, $0c
    dec c
    ld c, $0c
    dec c
    ld c, $0c
    dec c
    ld c, $0c
    dec c
    ld c, $0c
    dec c
    ld c, $0c
    ld [bc], a
    ld c, $10
    ld de, $2512
    dec h
    dec h
    dec h
    jr nz, jr_02c_5286

    jr nz, jr_02c_5288

    ld h, $26
    jr nz, jr_02c_5292

    jr nz, jr_02c_528f

    ld [hl+], a
    jr nz, jr_02c_527a

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_02c_527a:
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
    dec c
    dec c

jr_02c_5286:
    dec c
    dec c

jr_02c_5288:
    dec c
    dec c
    inc de
    dec c
    dec c
    dec c
    dec e

jr_02c_528f:
    dec e
    dec e
    dec e

jr_02c_5292:
    dec e
    jr nz, jr_02c_5297

    ld [hl+], a
    dec e

jr_02c_5297:
    dec e
    dec e
    dec e
    ld e, $19
    add hl, de
    dec e
    ld [bc], a
    ld a, [de]
    dec e
    dec e
    ccf
    ld [bc], a
    ld e, $1e
    inc e
    dec sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    ld hl, $3939
    add hl, sp
    inc e
    dec e
    dec e
    dec e
    dec e
    ld [bc], a
    ld hl, $2121
    add hl, sp
    inc e
    dec e
    dec e
    dec e
    dec e
    ld [bc], a
    add hl, sp
    ld hl, $2121
    inc e
    dec e
    rra
    jr z, jr_02c_52ea

    ld hl, $2b02
    add hl, sp
    add hl, sp
    ld hl, $391d
    dec e
    rra
    dec e
    dec e
    add hl, hl
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec hl
    ld [hl+], a
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e

jr_02c_52ea:
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    jr z, jr_02c_52f6

    add hl, de
    ld a, [de]

jr_02c_52f6:
    inc a
    inc a
    inc a
    inc a
    ld e, $1d
    ld [bc], a
    dec hl
    ld [bc], a
    ld [bc], a
    ld e, $1d
    ld e, $1d
    add hl, sp
    add hl, sp
    dec e
    add hl, sp
    ld hl, $1d1d
    dec e
    dec de
    inc a
    ld [bc], a
    ld [bc], a
    add hl, de
    ld [bc], a
    dec e
    ld sp, $1d31
    add hl, sp
    ld a, [hl-]
    dec de
    inc e
    rra
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, hl
    ld [bc], a
    add hl, de
    ld [bc], a
    inc e
    jr @+$1b

    jr @+$1f

    inc e
    dec sp
    add hl, de
    add hl, de
    add hl, de
    inc e
    inc e
    inc e
    dec sp
    ld hl, $0421
    dec b
    ld b, $02
    inc e
    ld hl, $3b02
    add hl, de
    ld a, [de]
    inc c
    jr nc, jr_02c_5377

    ld [bc], a
    dec e
    dec e
    dec e
    jr nz, jr_02c_5369

    dec hl
    ld [bc], a
    ld e, $02
    ld hl, $1d1d
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    dec de
    dec e
    dec e
    dec e
    dec e
    ld e, $20
    ld a, [hl+]

jr_02c_5369:
    dec e
    add hl, sp
    jr c, jr_02c_5396

    inc e
    jr c, @+$23

    ld [bc], a
    add hl, hl
    ld [bc], a
    ld a, [de]
    ld [bc], a
    ld [bc], a
    dec sp

jr_02c_5377:
    inc e
    ld [bc], a
    inc b
    dec b
    dec b
    ld b, $02
    dec e
    ld [bc], a
    dec sp
    inc e
    ld [bc], a
    ld [$1210], sp
    ld c, $02
    dec e
    ld [bc], a
    jr c, jr_02c_53c4

    add hl, sp
    ld [$390a], sp
    ld hl, $1d2b
    ld a, [hl+]
    ld [bc], a
    ld [bc], a

jr_02c_5396:
    ld [bc], a
    ld [$390a], sp
    dec e
    dec e
    dec e
    add hl, sp
    inc b
    dec b
    dec b
    add hl, bc
    ld a, [bc]
    add hl, sp
    ld sp, $1d31
    ld [bc], a
    inc c
    ld [de], a
    dec c
    dec c
    ld c, $39
    ld sp, $1c04
    dec hl
    ld a, [hl+]
    ld [bc], a
    jr jr_02c_53b8

    dec hl
    ld [bc], a

jr_02c_53b8:
    dec e
    ld [$211d], sp
    ld hl, $2402
    ld hl, $1d2b
    inc b
    add hl, bc

jr_02c_53c4:
    dec e
    dec e
    dec e
    inc b
    inc hl
    dec b
    dec b
    dec b
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
    add hl, bc
    add hl, bc
    ld b, e
    ld b, e
    ld h, h
    ld l, b
    ld a, a
    ld a, a
    ld l, c
    ld h, l
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld h, h
    ld l, b
    ld a, a
    ld a, a
    ld l, c
    ld h, l
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld h, h
    scf
    ld d, e
    ld a, [hl-]
    ld a, [hl]
    ld h, l
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    dec l
    ld l, d
    ld sp, $6708
    ld l, $43
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld h, a
    ld l, d
    jr jr_02c_544b

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld a, [de]
    ld a, [de]
    jr jr_02c_5455

    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    add hl, de
    ld b, [hl]
    ld c, d
    jr jr_02c_545a

    ccf
    ccf
    ld b, e
    ld b, e
    ld a, $3f
    ccf
    ccf
    ccf
    inc l
    ld a, $3f
    ld a, $3f
    inc l
    inc l
    ld a, $3f
    ccf
    ccf
    inc l
    inc l
    jr z, @+$2e

    ld l, $2d
    add hl, hl
    cpl
    ld [hl-], a
    dec d
    rla
    jr nc, @+$3c

    ld a, $3d
    ccf
    dec sp
    jr c, jr_02c_5478

    ld sp, $3936
    jr c, jr_02c_5484

    ld sp, $393c

jr_02c_544b:
    jr c, jr_02c_5482

    ld sp, $3936
    jr c, jr_02c_548e

    ld sp, $393c

jr_02c_5455:
    jr c, jr_02c_548c

    ld sp, $3936

jr_02c_545a:
    jr c, @+$3e

    ld sp, $393c
    jr c, jr_02c_5496

    ld sp, $3936
    jr c, jr_02c_54a2

    ld sp, $393c
    inc d
    dec hl
    ld sp, $372b
    inc sp
    jr nc, jr_02c_54a2

    ld [hl-], a
    inc sp
    dec hl
    inc [hl]
    dec [hl]
    ld [hl], $2b

jr_02c_5478:
    dec hl
    dec hl
    dec hl
    inc a
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl

jr_02c_5482:
    dec hl
    dec hl

jr_02c_5484:
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl
    dec hl

jr_02c_548c:
    dec hl
    dec hl

jr_02c_548e:
    dec a
    dec hl
    dec hl
    dec de
    inc hl
    ld de, $0301

jr_02c_5496:
    ld [$0309], sp
    inc bc
    inc c
    dec c
    inc bc
    inc bc
    ld b, $03
    inc bc
    dec de

jr_02c_54a2:
    dec bc
    ld [bc], a
    jr nz, jr_02c_54aa

    inc bc
    dec h
    ld h, $12

jr_02c_54aa:
    inc b
    inc bc
    daa
    jr z, jr_02c_54b2

    inc b
    ld c, $32

jr_02c_54b2:
    ld d, $32
    jr nc, jr_02c_54c5

    rrca
    cpl
    inc l
    ld l, $2d
    rlca
    ld b, $0b
    rrca
    rlca
    ld a, $3f
    ccf
    ccf
    ccf

jr_02c_54c5:
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    jr z, jr_02c_54fc

    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, [hl+]
    inc l
    inc l
    inc l
    inc l
    dec hl
    ld b, $2a
    add hl, hl
    jr z, jr_02c_5509

    ld h, d
    ld d, c
    ld d, c
    ld h, e
    inc c
    ld c, $57
    ld d, a
    ld b, $25
    inc l
    jr z, jr_02c_5516

    jr z, jr_02c_5518

    ld c, [hl]
    ld [hl], h
    ld [hl], h
    ld c, l
    db $10
    ld [de], a
    inc l
    inc l
    inc l
    jr nc, @+$05

    jr z, jr_02c_5525

jr_02c_54fc:
    jr z, @+$2b

    ld c, [hl]
    ld [hl], h
    ld [hl], h
    ld c, l
    inc l
    inc l
    inc l
    inc l
    ld a, $3f
    ccf

jr_02c_5509:
    inc l
    add hl, hl
    jr z, jr_02c_5536

    ld d, b
    ld b, c
    ld d, d
    ld c, a
    inc l
    jr nc, jr_02c_551d

    inc bc
    inc h

jr_02c_5516:
    ld b, $2a

jr_02c_5518:
    inc l
    add hl, hl
    jr z, jr_02c_5545

    inc l

jr_02c_551d:
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l
    inc l

jr_02c_5525:
    inc l
    jr z, @+$2e

    add hl, hl
    jr z, jr_02c_5557

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
    inc l

jr_02c_5536:
    inc l
    add hl, hl
    inc h
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a

jr_02c_5545:
    ld d, a
    dec h
    inc bc
    inc bc
    inc bc
    inc bc
    jr z, jr_02c_5584

    rra
    rra
    add hl, sp
    jr c, jr_02c_5571

    inc h
    jr z, jr_02c_557d

    rra
    rra

jr_02c_5557:
    db $10
    dec c
    dec c
    ld de, $0a09
    rra
    ld a, [hl+]
    ld [$0a09], sp
    inc h
    ld e, $08
    add hl, bc
    add hl, bc
    inc hl
    dec b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    db $10

jr_02c_5571:
    dec c
    dec c
    dec c
    ld de, $180a
    dec de
    ld e, $08
    ld a, [bc]
    add hl, hl
    inc h

jr_02c_557d:
    ld [bc], a
    ld [$0509], sp
    inc hl
    dec b
    add hl, bc

jr_02c_5584:
    ld [hl], c
    ld l, a
    ld l, l
    ld [hl], c
    ld l, a
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, [hl]
    ld [hl], c
    ld [hl], d
    ld l, l
    ld l, a
    ld [hl], d
    ld l, l
    ld l, a
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], e
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld l, [hl]
    ld l, b
    ld [hl], c
    ld [hl], c
    ld l, a
    ld l, l
    ld l, a
    ld [hl], d
    ld l, l
    ld [bc], a
    ld c, c
    ld [bc], a
    ld b, h
    ld b, [hl]
    ld d, h
    db $76
    db $76
    db $76
    db $76
    db $76
    ld l, b
    ld l, b
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld l, c
    ld bc, $4a49
    ld d, h
    ld d, l
    ld b, h
    ld b, [hl]
    ld e, b
    ld [hl], $36
    ld [hl], $36
    ld [hl], $68
    ld l, b
    ld [hl], c
    ld l, a
    ld l, l
    ld [hl], c
    ld l, c
    ld b, [hl]
    ld d, h
    db $76
    ld a, c
    ld e, c
    ld b, h
    ld b, [hl]
    ld e, b
    ld [hl], $36
    ld [hl], $36
    ld [hl], $68
    ld l, b
    ld [hl], c
    ld l, c
    ld l, a
    ld [hl], d
    ld l, l
    ld b, [hl]
    ld e, b
    dec [hl]
    dec [hl]
    ld a, [bc]
    db $76
    db $76
    ld a, [bc]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $68
    ld l, h
    ld l, [hl]
    ld l, c
    ld l, c
    ld bc, $4a49
    ld e, b
    dec [hl]
    ld [hl], $31
    ld sp, $3607
    ld [hl], $36
    ld [hl], $36
    ld [hl], $68
    ld [hl], c
    ld l, b
    ld l, c
    ld l, c
    ld b, [hl]
    ld d, h
    db $76
    ld a, c
    dec [hl]
    ld [hl], $35
    dec [hl]
    dec [hl]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $3a
    ld l, h
    ld l, [hl]
    ld l, b
    ld l, c
    ld l, c
    ld b, [hl]
    ld b, c
    ld a, [bc]
    ld a, [bc]
    ld sp, $3907
    dec [hl]
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld e, c
    ld bc, $6868
    ld l, c
    ld l, c
    ld bc, $7954
    ld [hl], $35
    dec [hl]
    dec [hl]
    ld sp, $393a
    ld a, [hl-]
    ld [hl], $36
    ld [hl], $59
    ld b, h
    ld l, b
    ld l, b
    ld l, c
    ld l, c
    ld b, [hl]
    ld c, c
    ld a, [bc]
    rlca
    dec [hl]
    dec [hl]
    ld [hl], $07
    inc [hl]
    dec [hl]
    ld [hl], $36
    ld [hl], $36
    ld e, c
    ld b, h
    ld l, b
    ld l, b
    ld l, c
    ld [hl], c
    ld [hl], b
    ld l, e
    dec [hl]
    ld [hl], $39
    add hl, sp
    ld b, b
    ld bc, $4201
    rlca
    ld [hl], $36
    ld [hl], $59
    ld b, h
    ld l, b
    ld l, b
    ld [hl], c
    ld [hl], b
    ld l, e
    ld l, c
    dec [hl]
    dec [hl]
    ld a, [bc]
    dec [hl]
    ld b, h
    ld b, l
    ld bc, $3646
    ld [hl], $36
    ld a, [hl-]
    ld e, c
    ld b, h
    ld l, b
    ld l, b
    ld l, e
    ld [hl], c
    ld l, c
    ld l, c
    dec [hl]
    dec [hl]
    ld a, [bc]
    ld a, [bc]
    ld b, h
    inc l
    dec l
    ld b, [hl]
    ld [hl], $0a
    dec [hl]
    dec [hl]
    ld e, c
    ld b, h
    ld l, b
    ld l, b
    ld [hl], c
    ld l, e
    ld l, c
    ld [hl], c
    ld l, e
    dec [hl]
    dec [hl]
    ld a, [bc]
    ld c, b
    ld l, $2f
    ld c, d
    dec [hl]
    ld e, c
    ld b, c
    ld b, c
    ld b, c
    ld bc, $6868
    ld [hl], c
    ld l, c
    ld l, c
    ld [hl], c
    ld [hl], c
    ld l, e
    dec [hl]
    ld bc, $0101
    ld bc, $3546
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld l, b
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], b
    ld l, e
    ld l, c
    ld a, [bc]
    ld a, [bc]
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld l, d
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld l, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld l, e
    ld [hl], c
    ld [hl], c
    ld l, d
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld l, d
    ld [hl], b
    ld [hl], b
    ld a, [bc]
    inc c
    ld de, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    ld de, $0d10
    ld a, [bc]
    dec l
    ld [$0d10], sp
    dec c
    dec c
    dec c
    dec c
    ld c, $2d
    ld l, $0c
    ld c, $2e
    ld a, [bc]
    dec l
    ld [$0f0a], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec l
    cpl
    ld l, $0a
    ld [bc], a
    inc c
    ld c, $0f
    rrca
    inc b
    dec b
    ld b, $2c
    inc l
    inc l
    dec l
    cpl
    ld l, $0a
    ld [bc], a
    dec l
    cpl
    inc l
    inc l
    inc c
    dec c
    ld c, $2c
    inc l
    inc l
    dec l
    cpl
    inc b
    ld a, [bc]
    daa
    dec l
    cpl
    inc l
    inc l
    dec l
    ld l, $2f
    rrca
    rrca
    rrca
    inc b
    dec b
    add hl, bc
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    dec l
    ld l, $2f
    rrca
    dec h
    dec e
    inc c
    dec c
    ld de, $1d0a
    rrca
    rrca
    dec h
    ld [bc], a
    inc h
    inc b
    ld b, $0f
    dec h
    ld [bc], a
    inc h
    ld [bc], a
    ld [$0509], sp
    dec b
    dec b
    dec b
    dec b
    inc hl
    add hl, bc
    add hl, bc
    dec b
    dec b
    dec b
    inc hl
    dec b
    add hl, bc
    dec b
    inc [hl]
    dec [hl]
    ld [$030e], sp
    inc b
    rrca
    ld c, $31
    ld [hl-], a
    rrca
    ld c, $31
    ld [hl-], a
    rrca
    inc d
    inc l
    dec hl
    rla
    inc d
    dec d
    ld d, $15
    jr jr_02c_57a2

    ld d, $15
    dec d
    add hl, de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_02c_57a2:
    inc de
    inc de
    dec de
    ld a, [de]
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$1a1b], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec de
    ld a, [de]
    ld de, $1712
    ld hl, $2322
    inc h
    dec h
    dec de
    ld a, [de]
    ld h, $27
    jr z, jr_02c_57f1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec de
    ld a, [de]
    ld l, $2f
    jr nc, jr_02c_5803

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    dec de
    ld a, [de]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de

jr_02c_57f1:
    inc de
    inc de
    inc e
    dec de
    dec e
    ld e, $20
    jr nz, jr_02c_5818

    jr nz, @+$20

    jr nz, @+$20

    rra
    inc d
    dec d
    ld d, $15

jr_02c_5803:
    jr @+$17

    ld d, $15
    dec d
    add hl, de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec de
    ld a, [de]
    ld bc, $0302
    inc b

jr_02c_5818:
    dec b
    ld b, $07
    ld [$1a1b], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec de
    ld a, [de]
    ld de, $1712
    ld hl, $2322
    inc h
    dec h
    dec de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc e
    dec de
    dec e
    ld e, $20
    jr nz, jr_02c_585e

    jr nz, @+$20

    jr nz, @+$20

    rra
    inc d
    dec d
    ld d, $15
    jr @+$17

    ld d, $15
    dec d
    add hl, de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec de
    ld a, [de]
    ld bc, $0302
    inc b

jr_02c_585e:
    dec b
    ld b, $07
    ld [$1a1b], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec de
    ld a, [de]
    ld de, $1712
    ld hl, $2322
    inc h
    dec h
    dec de
    ld a, [de]
    ld h, $27
    jr z, jr_02c_58a5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc e
    dec de
    dec e
    ld e, $20
    jr nz, jr_02c_58ae

    jr nz, @+$20

    jr nz, @+$20

    rra
    inc d
    dec d
    ld d, $15
    jr @+$17

    ld d, $15
    dec d
    add hl, de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de

jr_02c_58a5:
    inc de
    inc de
    inc de
    dec de
    ld a, [de]
    ld bc, $0302
    inc b

jr_02c_58ae:
    dec b
    ld b, $07
    ld [$1a1b], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec de
    ld a, [de]
    ld de, $1712
    ld hl, $2322
    inc h
    dec h
    dec de
    ld a, [de]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc e
    dec de
    dec e
    ld e, $20
    jr nz, jr_02c_58f4

    jr nz, @+$20

    jr nz, jr_02c_58f8

    rra
    ld [hl+], a
    jr z, jr_02c_5907

    jr z, @+$26

    ld h, $25
    dec l
    dec h
    daa
    ld h, $25
    dec h
    dec h
    daa
    ld h, $2c
    dec h
    inc l
    daa
    ld a, [hl+]
    dec h
    ld l, $25
    dec hl

jr_02c_58f4:
    dec e
    ld e, $2a
    inc b

jr_02c_58f8:
    inc bc
    dec hl
    ld e, $1d
    ld bc, $1401
    inc e
    inc e
    dec d
    ld bc, $1a01
    inc e
    inc d

jr_02c_5907:
    ld b, $01
    add hl, de
    inc e
    rla
    jr jr_02c_590f

    add hl, hl

jr_02c_590f:
    dec b
    ld [bc], a
    jr z, @+$03

    ld d, $18
    rlca
    rlca
    ld [$0709], sp
    ld bc, $2016
    dec bc
    db $10
    rra
    ld a, [bc]
    inc c
    dec c
    inc hl
    inc hl
    ld c, $0f
    ld a, [bc]
    ld [hl+], a
    ld de, $2112
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    rla
    rla
    rla
    rla
    rla
    rla
    ld h, $2a
    daa
    rla
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, [bc]
    inc a
    ld d, $14
    ld a, [bc]
    ld a, [de]
    cpl
    add hl, hl
    inc hl
    add hl, bc
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld bc, $0f0b
    ld [de], a
    ld bc, $3e01
    jr c, jr_02c_599a

    ld bc, $0407
    dec b
    ld b, $0c
    rlca
    ld bc, $0e11
    inc de
    ld bc, $1e01
    jr z, jr_02c_598a

    ld bc, $0822
    ld a, [bc]
    add hl, bc
    db $10
    ld [hl+], a
    ld bc, $0d3b
    db $10
    ld bc, $1801
    dec h
    add hl, de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $241c

jr_02c_598a:
    dec e
    ld bc, $0101
    ld bc, $0101
    ld l, $01
    ld l, $01
    ld l, $01
    ld bc, $2b20

jr_02c_599a:
    ld hl, $2c01
    ld bc, $0101
    ld bc, $012e
    ld l, $01
    ld l, $01
    add hl, sp
    inc sp
    ld bc, $3933
    dec de
    dec de
    dec de
    ld bc, $1b30
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, [hl-]
    dec de
    dec de
    dec de
    dec de
    dec de
    ld bc, $1b01
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, [hl-]
    rla
    rla
    dec de
    dec de
    dec de
    dec de
    ld bc, $1b1b
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    dec de
    dec de
    dec de
    nop
    ld bc, $1b1b
    dec b
    ld b, $02
    inc c
    rlca
    dec de
    dec de
    dec de
    ld a, [hl-]
    jr nc, jr_02c_5a1f

    ld [hl-], a
    ld [hl-], a
    ld bc, $1b1b
    ld l, $09
    dec c
    db $10
    ld bc, $1b1b
    dec de
    ld a, [hl-]
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld bc, $1b1b
    dec de
    dec de
    ld bc, $0604
    inc bc
    ld b, $07
    ld a, [hl-]
    ld bc, $3a3a
    scf
    ld bc, $1b1b
    dec de
    dec de
    ld bc, $0908
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl-]
    add hl, sp
    dec a
    dec a

jr_02c_5a1f:
    dec a
    ld bc, $1b1b
    dec de
    dec de
    ld bc, $2e01
    ld l, $2e
    ld bc, $2f3a
    ld sp, $3332
    jr nc, jr_02c_5a6f

    dec [hl]
    ld [hl], $37
    ld a, $39
    inc a
    ld l, $3b
    ld a, [hl-]
    dec a
    ccf
    dec l
    rra
    ld a, $2f
    ld sp, $3334
    jr nc, jr_02c_5a83

    dec [hl]
    jr c, jr_02c_5a80

    ld a, $39
    inc a
    ld l, $3b
    ld a, [hl-]
    dec a
    ccf
    dec l
    rra
    ld a, $04
    inc b
    inc b
    inc b
    inc b
    dec h
    inc b
    inc b
    inc b
    inc b
    inc b
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
    ld h, $27
    inc l
    dec l
    dec b

jr_02c_5a6f:
    dec b
    dec d
    ld a, [de]
    dec bc
    dec de
    rla
    rra
    dec b
    dec b
    dec b
    rra
    ld [$0b09], sp
    ld c, $0f
    dec b

jr_02c_5a80:
    dec b
    dec b
    dec b

jr_02c_5a83:
    ld [bc], a
    ld [$0b09], sp
    ld c, $0f
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [$0b09], sp
    ld c, $0f
    ld bc, $0502
    dec b
    ld [bc], a
    db $10
    ld de, $1312
    inc d
    ld bc, $051f
    dec b
    dec e
    ld [bc], a
    ld bc, $2106
    ld bc, $1c01
    dec b
    dec b
    dec b
    rra
    ld bc, $0106
    ld bc, $1d02
    dec b
    dec b
    dec b
    rra
    ld bc, $0106
    ld bc, $0502
    dec b
    ld a, [bc]
    ld a, [bc]
    rra
    ld bc, $0106
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld a, [hl+]
    ld a, [hl+]
    ld [hl-], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec e
    dec b
    dec b
    ld a, [hl+]
    add hl, de
    inc sp
    dec l
    inc c
    dec c
    dec b
    dec b
    dec b
    dec b
    dec hl
    ld e, $33
    ld l, $18
    cpl
    jr nz, jr_02c_5b04

    jr nz, jr_02c_5b06

    dec hl
    ld e, $33
    jr nc, jr_02c_5b01

    ld sp, $0101
    ld bc, $2b01
    ld e, $33
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    dec b

jr_02c_5b01:
    dec b
    dec b
    dec b

jr_02c_5b04:
    dec b
    dec b

jr_02c_5b06:
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
    jr nc, @+$18

    ld sp, $3131
    ld sp, $3739
    ld [hl-], a
    ld a, [hl-]
    ld a, [hl-]
    dec a
    inc a
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], $32
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_02c_5b75

    ld a, [hl-]
    ld a, [hl-]
    ld [hl], $33
    inc [hl]
    dec sp
    inc [hl]
    dec sp
    inc [hl]
    dec sp
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02c_5b75:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
