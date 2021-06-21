; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $004", ROMX[$4000], BANK[$4]

    ld hl, $cfcc
    set 4, [hl]
    call Call_004_468a

jr_004_4008:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_004_401a

    call Call_004_4026
    call $045a
    jr jr_004_4008

jr_004_401a:
    ld a, [$cf65]
    ld [$d0d6], a
    ld hl, $cfcc
    res 4, [hl]
    ret


Call_004_4026:
    ld a, [$cf63]
    ld hl, $4030
    call Call_004_486b
    jp hl


    ld b, [hl]
    ld b, b
    ld d, [hl]
    ld b, b
    ld h, a
    ld b, b
    add [hl]
    ld b, c
    sbc b
    ld b, c
    sub h
    ld b, b
    and [hl]
    ld b, b
    db $d3
    ld b, b
    add sp, $40
    ld [hl], h
    ld c, b

Jump_004_4044:
    ld a, [hl]
    ld c, b
    xor a
    ldh [$d4], a
    call Call_004_4955
    ld a, [$cf64]
    ld [$cf63], a
    call Call_004_4a40
    ret


    xor a
    ld [$cf65], a
    call Call_004_4a36
    call Call_004_49bb
    call Call_004_489a
    call Call_004_4866
    ret


    ld hl, $4a4f
    call $1d3c
    ld a, [$d0d9]
    ld [$cf88], a
    ld a, [$d0df]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0df], a
    ld a, [$cfa9]
    ld [$d0d9], a
    ld b, $07
    ld c, $03
    call Call_004_48d4
    ret c

    call Call_004_41c5
    ret


    ld a, $02
    ld [$cf65], a
    call Call_004_4a36
    call Call_004_49bb
    call Call_004_489a
    call Call_004_4866
    ret


    ld hl, $4a7f
    call $1d3c
    ld a, [$d0da]
    ld [$cf88], a
    ld a, [$d0e0]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0e0], a
    ld a, [$cfa9]
    ld [$d0da], a
    ld b, $03
    ld c, $07
    call Call_004_48d4
    ret c

    call Call_004_41c5
    ret


    ld a, $03
    ld [$cf65], a
    call Call_004_4a36
    call Call_004_49bb
    xor a
    ldh [$d4], a
    call Call_004_489a
    call Call_004_4866
    ret


    ld a, $0b
    ld hl, $476f
    rst $08
    ld b, $05
    ld c, $01
    call Call_004_48d4
    ret c

    ld a, $03
    ld hl, $5427
    rst $08
    ld a, [$d142]
    and a
    jr nz, jr_004_410a

    ld hl, $413b
    ld de, $4153
    jr jr_004_4110

jr_004_410a:
    ld hl, $4124
    ld de, $4137

jr_004_4110:
    push de
    call $1d35
    call $1d81
    call $1c07
    pop hl
    ret c

    ld a, [$cfa9]
    dec a
    call Call_004_486b
    jp hl


    ld b, b
    rlca
    dec c
    dec bc
    inc de
    inc l
    ld b, c
    ld bc, $02c0
    sub h
    sub d
    add h
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld e, c
    ld b, c
    sub d
    ld b, h
    ld b, b
    dec b
    dec c
    dec bc
    inc de
    ld b, e
    ld b, c
    ld bc, $03c0
    sub h
    sub d
    add h
    ld d, b
    add [hl]
    adc b
    sub l
    add h
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld e, c
    ld b, c
    db $fd
    ld b, e
    sub d
    ld b, h
    ld a, $0b
    ld hl, $47bf
    rst $08
    ret c

    ld a, $0b
    ld hl, $47fb
    rst $08
    jr c, jr_004_4179

    ld hl, $cfcc
    ld a, [hl]
    push af
    res 4, [hl]
    ld a, $0b
    ld hl, $4867
    rst $08
    pop af
    ld [$cfcc], a

jr_004_4179:
    xor a
    ldh [$d4], a
    call Call_004_4955
    call Call_004_489a
    call Call_004_4a40
    ret


    ld a, $01
    ld [$cf65], a
    call Call_004_4a36
    call Call_004_49bb
    call Call_004_489a
    call Call_004_4866
    ret


    ld hl, $4aaf
    call $1d3c
    ld a, [$d0db]
    ld [$cf88], a
    ld a, [$d0e1]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0e1], a
    ld a, [$cfa9]
    ld [$d0db], a
    ld b, $01
    ld c, $05
    call Call_004_48d4
    ret c

    call Call_004_41c5
    ret


Call_004_41c5:
    ld a, $03
    ld hl, $5427
    rst $08
    ld a, [$d142]
    and a
    jr nz, jr_004_41f9

    ld a, $03
    ld hl, $5432
    rst $08
    ld a, [$d142]
    and a
    jr nz, jr_004_41eb

    ld a, $03
    ld hl, $5453
    rst $08
    ld a, [$d142]
    and a
    jr nz, jr_004_4207

    jr jr_004_4227

jr_004_41eb:
    ld a, $03
    ld hl, $5453
    rst $08
    ld a, [$d142]
    and a
    jr nz, jr_004_420f

    jr jr_004_422f

jr_004_41f9:
    ld a, $03
    ld hl, $5432
    rst $08
    ld a, [$d142]
    and a
    jr nz, jr_004_4217

    jr jr_004_421f

jr_004_4207:
    ld hl, $4249
    ld de, $426a
    jr jr_004_4235

jr_004_420f:
    ld hl, $4274
    ld de, $4291
    jr jr_004_4235

jr_004_4217:
    ld hl, $4299
    ld de, $42ac
    jr jr_004_4235

jr_004_421f:
    ld hl, $42b0
    ld de, $42c7
    jr jr_004_4235

jr_004_4227:
    ld hl, $42cd
    ld de, $42ea
    jr jr_004_4235

jr_004_422f:
    ld hl, $42f2
    ld de, $430b

jr_004_4235:
    push de
    call $1d35
    call $1d81
    call $1c07
    pop hl
    ret c

    ld a, [$cfa9]
    dec a
    call Call_004_486b
    jp hl


    ld b, b
    ld bc, $0b0d
    inc de
    ld d, c
    ld b, d
    ld bc, $05c0
    sub h
    sub d
    add h
    ld d, b
    add [hl]
    adc b
    sub l
    add h
    ld d, b
    sub e
    adc [hl]
    sub d
    sub d
    ld d, b
    sub d
    add h
    adc e
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld de, $fd43
    ld b, e
    ld h, h
    ld b, e
    jp nz, $9243

    ld b, h
    ld b, b
    inc bc
    dec c
    dec bc
    inc de
    ld a, h
    ld b, d
    ld bc, $04c0
    sub h
    sub d
    add h
    ld d, b
    add [hl]
    adc b
    sub l
    add h
    ld d, b
    sub e
    adc [hl]
    sub d
    sub d
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld de, $fd43
    ld b, e
    ld h, h
    ld b, e
    sub d
    ld b, h
    ld b, b
    rlca
    dec c
    dec bc
    inc de
    and c
    ld b, d
    ld bc, $02c0
    sub h
    sub d
    add h
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld de, $9243
    ld b, h
    ld b, b
    dec b
    dec c
    dec bc
    inc de
    cp b
    ld b, d
    ld bc, $03c0
    sub h
    sub d
    add h
    ld d, b
    sub d
    add h
    adc e
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld de, $c243
    ld b, e
    sub d
    ld b, h
    ld b, b
    inc bc
    dec c
    dec bc
    inc de
    push de
    ld b, d
    ld bc, $04c0
    add [hl]
    adc b
    sub l
    add h
    ld d, b
    sub e
    adc [hl]
    sub d
    sub d
    ld d, b
    sub d
    add h
    adc e
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    db $fd
    ld b, e
    ld h, h
    ld b, e
    jp nz, $9243

    ld b, h
    ld b, b
    dec b
    dec c
    dec bc
    inc de
    ld a, [$0142]
    ret nz

    inc bc
    add [hl]
    adc b
    sub l
    add h
    ld d, b
    sub e
    adc [hl]
    sub d
    sub d
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    db $fd
    ld b, e
    ld h, h
    ld b, e
    sub d
    ld b, h
    ld a, $03
    ld hl, $5453
    rst $08
    ld a, [$d142]
    ld hl, $431f
    rst $28
    ret


    dec l
    ld b, e
    dec l
    ld b, e
    dec l
    ld b, e
    dec l
    ld b, e
    inc [hl]
    ld b, e
    jr c, @+$45

    ld d, l
    ld b, e

jr_004_432d:
    ld hl, $4af3
    call Call_004_4889
    ret


    call $2f3f
    ret


    ld a, [$dcd7]
    and a
    jr z, jr_004_434e

    call $2f3f
    xor a
    ldh [$d4], a
    call Call_004_4955
    call Call_004_489a
    call Call_004_4a40
    ret


jr_004_434e:
    ld hl, $4af8
    call Call_004_4889
    ret


    call $2f3f
    ld a, [$d0ec]
    and a
    jr z, jr_004_432d

    ld a, $0a
    ld [$cf63], a
    ret


    ld hl, $4ae4
    call Call_004_4889
    ld a, $09
    ld hl, $4fbf
    rst $08
    push af
    call $1c07
    pop af
    jr c, jr_004_439c

    call Call_004_4a1d
    ld hl, $4ae9
    call $1d4f
    call $1dcf
    push af
    call $1c07
    pop af
    jr c, jr_004_439c

    ld hl, $d892
    ld a, [$d107]
    call $2f53
    call Call_004_4a1d
    ld hl, $4aee
    call Call_004_4889

jr_004_439c:
    ret


    ld a, [$cf65]
    and a
    jr z, jr_004_43b2

    dec a
    jr z, jr_004_43aa

    dec a
    jr z, jr_004_43ba

    ret


jr_004_43aa:
    xor a
    ld [$d0db], a
    ld [$d0e1], a
    ret


jr_004_43b2:
    xor a
    ld [$d0d9], a
    ld [$d0df], a
    ret


jr_004_43ba:
    xor a
    ld [$d0da], a
    ld [$d0e0], a
    ret


    ld a, $03
    ld hl, $5432
    rst $08
    ld a, [$d142]
    and a
    jr nz, jr_004_43f6

    ld a, [$cf65]
    rrca
    rrca
    and $c0
    ld b, a
    ld a, [$d107]
    inc a
    and $3f
    or b
    ld [$d95b], a
    ld a, [$d106]
    ld [$d95c], a
    call Call_004_4a1d
    ld de, $0005
    call $3c4e
    ld hl, $4afd
    call Call_004_4889
    ret


jr_004_43f6:
    ld hl, $4b02
    call Call_004_4889
    ret


    ld a, [$dcd7]
    and a
    jp z, Jump_004_4486

    ld a, [$cfcc]
    push af
    res 4, a
    ld [$cfcc], a
    ld a, $08
    ld [$d141], a
    call $31f3
    ld a, $14
    ld hl, $404f
    rst $08
    ld a, $14
    ld hl, $4405
    rst $08
    ld a, $14
    ld hl, $43e0
    rst $08

jr_004_4427:
    ld a, $14
    ld hl, $405f
    rst $08
    ld a, $14
    ld hl, $449a
    rst $08
    call $31f6
    call $32f9
    call $045a
    ld a, $14
    ld hl, $4457
    rst $08
    jr c, jr_004_4475

    ld a, [$d108]
    cp $fd
    jr nz, jr_004_4453

    ld hl, $448d
    call $1057
    jr jr_004_4427

jr_004_4453:
    ld a, [$cf63]
    push af
    ld a, [$cf64]
    push af
    call $389c
    ld hl, $d073
    ld de, $d050
    ld bc, $000b
    call $3026
    call Call_004_6bd9
    pop af
    ld [$cf64], a
    pop af
    ld [$cf63], a

jr_004_4475:
    pop af
    ld [$cfcc], a
    xor a
    ldh [$d4], a
    call Call_004_4955
    call Call_004_489a
    call Call_004_4a40
    ret


Jump_004_4486:
    ld hl, $4af8
    call Call_004_4889
    ret


    ld d, $7f
    ld c, e
    ld [hl], b
    ld d, b
    ret


    ld hl, $cfcc
    set 4, [hl]
    call Call_004_468a

jr_004_449b:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_004_44ad

    call Call_004_44b9
    call $045a
    jr jr_004_449b

jr_004_44ad:
    ld a, [$cf65]
    ld [$d0d6], a
    ld hl, $cfcc
    res 4, [hl]
    ret


Call_004_44b9:
    ld a, [$cf63]
    ld hl, $44c3
    call Call_004_486b
    jp hl


    reti


    ld b, h
    jp hl


    ld b, h
    ld a, [$9444]
    ld b, l
    and [hl]
    ld b, l
    daa
    ld b, l
    add hl, sp
    ld b, l
    ld h, [hl]
    ld b, l
    add c
    ld b, l
    ld [hl], h
    ld c, b
    ld a, [hl]
    ld c, b
    xor a
    ldh [$d4], a
    call Call_004_4955
    ld a, [$cf64]
    ld [$cf63], a
    call Call_004_4a40
    ret


    xor a
    ld [$cf65], a
    call Call_004_4a36
    call Call_004_49bb
    call Call_004_489a
    call Call_004_4866
    ret


    ld hl, $4a4f
    call $1d3c
    ld a, [$d0d9]
    ld [$cf88], a
    ld a, [$d0df]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0df], a
    ld a, [$cfa9]
    ld [$d0d9], a
    ld b, $07
    ld c, $03
    call Call_004_48d4
    ret c

    call Call_004_45d3
    ret


    ld a, $02
    ld [$cf65], a
    call Call_004_4a36
    call Call_004_49bb
    call Call_004_489a
    call Call_004_4866
    ret


    ld hl, $4a7f
    call $1d3c
    ld a, [$d0da]
    ld [$cf88], a
    ld a, [$d0e0]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0e0], a
    ld a, [$cfa9]
    ld [$d0da], a
    ld b, $03
    ld c, $07
    call Call_004_48d4
    ret c

    call Call_004_45d3
    ret


    ld a, $03
    ld [$cf65], a
    call Call_004_4a36
    call Call_004_49bb
    xor a
    ldh [$d4], a
    call Call_004_489a
    ld hl, $4b0c
    call Call_004_4889
    call Call_004_4866
    ret


    ld a, $0b
    ld hl, $476f
    rst $08
    ld b, $05
    ld c, $01
    call Call_004_48d4
    ret c

    xor a
    call Call_004_45dc
    ret


    ld a, $01
    ld [$cf65], a
    call Call_004_4a36
    call Call_004_49bb
    call Call_004_489a
    call Call_004_4866
    ret


    ld hl, $4aaf
    call $1d3c
    ld a, [$d0db]
    ld [$cf88], a
    ld a, [$d0e1]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0e1], a
    ld a, [$cfa9]
    ld [$d0db], a
    ld b, $01
    ld c, $05
    call Call_004_48d4
    ret c

    call Call_004_45d3
    ret


Call_004_45d3:
    ld a, $03
    ld hl, $5448
    rst $08
    ld a, [$d142]

Call_004_45dc:
    and a
    jr z, jr_004_45e7

    ld hl, $4601
    ld de, $4614
    jr jr_004_45ed

jr_004_45e7:
    ld hl, $4618
    ld de, $4627

jr_004_45ed:
    push de
    call $1d35
    call $1d81
    call $1c07
    pop hl
    ret c

    ld a, [$cfa9]
    dec a
    call Call_004_486b
    jp hl


    ld b, b
    rlca
    dec c
    dec bc
    inc de
    add hl, bc
    ld b, [hl]
    ld bc, $02c0
    sub h
    sub d
    add h
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    add hl, hl
    ld b, [hl]
    adc c
    ld b, [hl]
    ld b, b
    add hl, bc
    dec c
    dec bc
    inc de
    jr nz, jr_004_4665

    ld bc, $01c0
    sub b
    sub h
    adc b
    sub e
    ld d, b
    adc c
    ld b, [hl]
    ld a, $03
    ld hl, $5448
    rst $08
    ld a, [$d142]
    ld hl, $4637
    rst $28
    ret


    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, [hl]
    ld c, h
    ld b, [hl]
    ld d, [hl]
    ld b, [hl]
    ld [hl], c
    ld b, [hl]

jr_004_4645:
    ld hl, $4af3
    call Call_004_4889
    ret


    call $2f3f
    ld a, [$d0ec]
    and a
    jr nz, jr_004_466c

    ret


    call $2f3f
    ld a, [$d0ec]
    and a
    jr nz, jr_004_467e

    xor a
    ldh [$d4], a
    call Call_004_4955

jr_004_4665:
    call Call_004_489a
    call Call_004_4a40
    ret


jr_004_466c:
    call $31f3
    jr jr_004_467e

    call $2f3f
    ld a, [$d0ec]
    and a
    jr z, jr_004_4645

    cp $02
    jr z, jr_004_4684

jr_004_467e:
    ld a, $0a
    ld [$cf63], a
    ret


jr_004_4684:
    xor a
    ld [$d0ec], a
    ret


    ret


Call_004_468a:
    xor a
    ld [$cf63], a
    ld a, [$d0d6]
    and $03
    ld [$cf65], a
    inc a
    add a
    dec a
    ld [$cf64], a
    xor a
    ld [$cf66], a
    xor a
    ld [$d0e3], a
    ret


Call_004_46a5:
    xor a
    ldh [$d4], a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    ld [$d0e3], a
    call Call_004_4955
    call Call_004_4a40
    ret


jr_004_46be:
    call Call_004_46c7
    call Call_004_476f
    jr c, jr_004_46be

    ret


Call_004_46c7:
    ld a, [$cf63]
    ld hl, $46d1
    call Call_004_486b
    jp hl


    reti


    ld b, [hl]
    dec sp
    ld b, a
    rst $38
    ld b, [hl]
    ld h, $47
    xor a
    call Call_004_4762
    ld hl, $4a67
    call $1d3c
    ld a, [$d0d9]
    ld [$cf88], a
    ld a, [$d0df]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0df], a
    ld a, [$cfa9]
    ld [$d0d9], a
    ret


    ld a, $02
    call Call_004_4762
    ld hl, $4a97
    call $1d3c
    ld a, [$d0da]
    ld [$cf88], a
    ld a, [$d0e0]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0e0], a
    ld a, [$cfa9]
    ld [$d0da], a
    ret


    ld a, $03
    call Call_004_4762
    call Call_004_489a
    ld a, $0b
    ld hl, $476f
    rst $08
    ld a, [$d106]
    ld [$d106], a
    ret


    ld a, $01
    call Call_004_4762
    ld hl, $4ac7
    call $1d3c
    ld a, [$d0db]
    ld [$cf88], a
    ld a, [$d0e1]
    ld [$d0e4], a
    call $350c
    ld a, [$d0e4]
    ld [$d0e1], a
    ld a, [$cfa9]
    ld [$d0db], a
    ret


Call_004_4762:
    ld [$cf65], a
    call Call_004_4a36
    call Call_004_49bb
    call Call_004_489a
    ret


Call_004_476f:
    ld hl, $cf73
    ld a, [hl]
    and $01
    jr nz, jr_004_4788

    ld a, [hl]
    and $02
    jr nz, jr_004_478f

    ld a, [hl]
    and $20
    jr nz, jr_004_4795

    ld a, [hl]
    and $10
    jr nz, jr_004_47a8

    scf
    ret


jr_004_4788:
    ld a, $01
    ld [$cf66], a
    and a
    ret


jr_004_478f:
    xor a
    ld [$cf66], a
    and a
    ret


jr_004_4795:
    ld a, [$cf63]
    dec a
    and $03
    ld [$cf63], a
    push de
    ld de, $0062
    call $3c23
    pop de
    scf
    ret


jr_004_47a8:
    ld a, [$cf63]
    inc a
    and $03
    ld [$cf63], a
    push de
    ld de, $0062
    call $3c23
    pop de
    scf
    ret


    call Call_004_46a5
    ld a, [$c2c7]
    or a
    jr z, jr_004_47ca

    ld a, $77
    ld hl, $628f
    rst $08

jr_004_47ca:
    call Call_004_47d7
    call Call_004_476f
    jr c, jr_004_47ca

    xor a
    ld [$cf66], a
    ret


Call_004_47d7:
    ld a, [$cf63]
    ld hl, $47e1
    call Call_004_486b
    jp hl


    jp hl


    ld b, a
    dec sp
    ld c, b
    rlca
    ld c, b
    ld h, $48
    xor a
    ld hl, $47ef
    jr @+$6d

    ld b, b
    ld bc, $0b07
    inc de
    rst $30
    ld b, a
    ld bc, $05ae
    ld [$0002], sp
    adc b
    jp nc, $b409

    ld c, d
    add hl, bc
    jp $094a


    jp $3e44


    ld [bc], a
    ld hl, $480e
    jr @+$4e

    ld b, b
    ld bc, $0b07
    inc de
    ld d, $48
    ld bc, $05ae
    ld [$0001], sp
    sub d
    jp nc, $b409

    ld c, d
    add hl, bc
    jp $094a


    jp $3e44


    inc bc
    call Call_004_4762
    call Call_004_489a
    ld a, $0b
    ld hl, $476f
    rst $08
    ld a, [$d106]
    ld [$d106], a
    ret


    ld a, $01
    ld hl, $4842
    jr @+$1a

    ld b, b
    ld bc, $0b07
    inc de
    ld c, d
    ld c, b
    ld bc, $05ae
    ld [$0002], sp
    and [hl]
    jp nc, $b409

    ld c, d
    add hl, bc
    jp $094a


    jp $e544


    call Call_004_4762
    pop hl
    call $1d3c
    call $350c
    ret


Call_004_4866:
    ld hl, $cf63
    inc [hl]
    ret


Call_004_486b:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld hl, $cf63
    set 7, [hl]
    xor a
    ld [$cf66], a
    ret


    ld hl, $cf63
    set 7, [hl]
    ld a, $01
    ld [$cf66], a
    ret


Call_004_4889:
    ld a, [$cfcc]
    push af
    set 4, a
    ld [$cfcc], a
    call $1057
    pop af
    ld [$cfcc], a
    ret


Call_004_489a:
    call $31f6

Call_004_489d:
    ld a, [$cf65]
    and $03
    ld e, a
    ld d, $00
    ld a, [$d230]
    cp $03
    jr z, jr_004_48b3

    ld a, [$d472]
    bit 0, a
    jr nz, jr_004_48c5

jr_004_48b3:
    ld hl, $48cc
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $9500
    ld bc, $040f
    call $0eba
    ret


jr_004_48c5:
    ld a, $12
    ld hl, $4e81
    rst $08
    ret


    ld b, $51
    and $52
    ld d, $50
    or $51

Call_004_48d4:
    ld hl, $cf73
    ld a, [$d0e3]
    and a
    jr nz, jr_004_4931

    ld a, [hl]
    and $01
    jr nz, jr_004_48f8

    ld a, [hl]
    and $02
    jr nz, jr_004_48fa

    ld a, [hl]
    and $20
    jr nz, jr_004_4901

    ld a, [hl]
    and $10
    jr nz, jr_004_4912

    ld a, [hl]
    and $04
    jr nz, jr_004_4923

    scf
    ret


jr_004_48f8:
    and a
    ret


jr_004_48fa:
    ld a, $09
    ld [$cf63], a
    scf
    ret


jr_004_4901:
    ld a, b
    ld [$cf63], a
    ld [$cf64], a
    push de
    ld de, $0062
    call $3c23
    pop de
    scf
    ret


jr_004_4912:
    ld a, c
    ld [$cf63], a
    ld [$cf64], a
    push de
    ld de, $0062
    call $3c23
    pop de
    scf
    ret


jr_004_4923:
    ld a, $09
    ld hl, $490c
    rst $08
    ld hl, $4b07
    call Call_004_4889
    scf
    ret


jr_004_4931:
    ld a, [hl]
    and $05
    jr nz, jr_004_493d

    ld a, [hl]
    and $02
    jr nz, jr_004_494f

    scf
    ret


jr_004_493d:
    ld a, $09
    ld hl, $490c
    rst $08
    ld de, $0020
    call $3c4e
    ld de, $0020
    call $3c4e

jr_004_494f:
    xor a
    ld [$d0e3], a
    scf
    ret


Call_004_4955:
    call $31f3
    call $0fc8
    call $300b
    call $0568
    ld hl, $4b16
    ld de, $9000
    ld bc, $0600
    ld a, $04
    call $0e8d
    ld hl, $c4b4
    ld bc, $00dc
    ld a, $24
    call $3041
    ld hl, $c4b9
    ld bc, $0b0f
    call $0fb6
    ld hl, $c4a0
    ld a, $28
    ld c, $14

jr_004_498a:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_004_498a

    call Call_004_49bb
    call Call_004_49a5
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    call $058a
    call Call_004_489d
    ret


Call_004_49a5:
    ld hl, $c4dc
    ld a, $50
    ld de, $000f
    ld b, $03

jr_004_49af:
    ld c, $05

jr_004_49b1:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_004_49b1

    add hl, de
    dec b
    jr nz, jr_004_49af

    ret


Call_004_49bb:
    ld a, [$cf65]
    ld d, a
    swap a
    sub d
    ld d, $00
    ld e, a
    ld hl, $49e1
    add hl, de
    ld d, h
    ld e, l
    ld hl, $c52c
    ld c, $03

jr_004_49d0:
    ld b, $05

jr_004_49d2:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_004_49d2

    ld a, c
    ld c, $0f
    add hl, bc
    ld c, a
    dec c
    jr nz, jr_004_49d0

    ret


    nop
    inc b
    inc b
    inc b
    ld bc, $0706
    ld [$0a09], sp
    ld [bc], a
    dec b
    dec b
    dec b
    inc bc
    nop
    inc b
    inc b
    inc b
    ld bc, $1615
    rla
    jr @+$1b

    ld [bc], a
    dec b
    dec b
    dec b
    inc bc
    nop
    inc b
    inc b
    inc b
    ld bc, $0c0b
    dec c
    ld c, $0f
    ld [bc], a
    dec b
    dec b
    dec b
    inc bc
    nop
    inc b
    inc b
    inc b
    ld bc, $1110
    ld [de], a
    inc de
    inc d
    ld [bc], a
    dec b
    dec b
    dec b
    inc bc

Call_004_4a1d:
    ld a, [$d106]
    ld [$d265], a
    call $3468
    call $30d6
    ret


    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ret


Call_004_4a36:
    ld hl, $c4cd
    ld bc, $0a0f
    call $0fb6
    ret


Call_004_4a40:
    call $31f6
    ld b, $14
    call $3340
    call $32f9
    call $045a
    ret


    ld b, b
    ld bc, $0b07
    inc de
    ld d, a
    ld c, d
    ld bc, $05ae
    ld [$0002], sp
    sub d
    ret c

    add hl, bc
    or h
    ld c, d
    add hl, bc
    jp $094a


    jp Jump_004_4044


    ld bc, $0b07
    inc de
    ld l, a
    ld c, d
    ld bc, $052e
    ld [$0002], sp
    sub d
    ret c

    add hl, bc
    or h
    ld c, d
    add hl, bc
    jp $094a


    jp Jump_004_4044


    ld bc, $0b07
    inc de
    add a
    ld c, d
    ld bc, $05ae
    ld [$0001], sp
    cp h
    ret c

    add hl, bc
    or h
    ld c, d
    add hl, bc
    jp $094a


    jp Jump_004_4044


    ld bc, $0b07
    inc de
    sbc a
    ld c, d
    ld bc, $052e
    ld [$0001], sp
    cp h
    ret c

    add hl, bc
    or h
    ld c, d
    add hl, bc
    jp $094a


    jp Jump_004_4044


    ld bc, $0b07
    inc de
    or a
    ld c, d
    ld bc, $05ae
    ld [$0002], sp
    rst $10
    ret c

    add hl, bc
    or h
    ld c, d
    add hl, bc
    jp $094a


    jp Jump_004_4044


    ld bc, $0b07
    inc de
    rst $08
    ld c, d
    ld bc, $052e
    ld [$0002], sp
    rst $10
    ret c

    add hl, bc
    or h
    ld c, d
    add hl, bc
    jp $094a


    jp $1644


    sbc d
    ld c, e
    ld [hl], b
    ld d, b
    ld d, $a5
    ld c, e
    ld [hl], b
    ld d, b
    ld d, $bb
    ld c, e
    ld [hl], b
    ld d, b
    ld d, $d8
    ld c, e
    ld [hl], b
    ld d, b
    ld d, $ee
    ld c, e
    ld [hl], b
    ld d, b
    ld d, $17
    ld c, h
    ld [hl], b
    ld d, b
    ld d, $2e
    ld c, h
    ld [hl], b
    ld d, b
    ld d, $45
    ld c, h
    ld [hl], b
    ld d, b
    ld d, $63
    ld c, h
    ld [hl], b
    ld d, b
    ld d, $83
    ld c, h
    ld [hl], b
    ld d, b
    ld d, $85
    ld c, h
    ld [hl], b
    ld d, b
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    adc a
    adc a
    db $dd
    db $dd
    ret c

    ret c

    db $dd
    db $dd
    db $dd
    db $dd
    adc h
    adc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $85cc
    add l
    cp l
    cp l
    push bc
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, jr_004_4be4

    ld d, e
    ld d, e
    ld e, h
    ld e, h
    ld d, c
    ld d, c
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    dec l
    db $ed
    dec hl
    db $eb
    daa
    rst $20
    ld h, $e6
    ld a, [hl+]
    ld [$ed2d], a
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec [hl]
    dec [hl]
    dec d
    dec d
    push af
    push af
    add hl, de
    add hl, de
    db $fd
    db $fd

jr_004_4be4:
    di
    di
    rra
    rra
    or a
    or a
    and e
    and e
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    inc de
    inc de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, jr_004_4c2c

    dec d
    dec d
    push af
    push af
    dec d
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ldh [$e3], a
    ld c, h
    ld c, a
    ld [hl], b
    ld [hl], e

jr_004_4c10:
    ld b, h
    ld b, a
    db $fc
    rst $38
    db $fc
    rst $38
    jr c, jr_004_4c10

    ld a, $fe
    ld a, $fe
    ld a, $fe
    ld a, $fe
    ld a, $fe
    ccf
    rst $38
    ccf
    rst $38
    ld l, $2e
    xor $ee
    db $e4
    db $e4

jr_004_4c2c:
    ld [$eeea], a
    xor $ee
    xor $ff
    rst $38
    rst $38
    rst $38
    or $f6
    or $f6
    xor $ee
    xor $ee
    sbc $de
    sbc $de
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    db $eb
    db $eb
    db $eb
    jp hl


    jp hl


    ld a, [bc]
    ld a, [bc]
    db $eb
    db $eb
    db $eb
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    cp a
    cp h
    cp a
    inc a
    ccf
    cp h
    cp a
    cp h
    cp a
    cp h
    cp a
    db $fc
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    db $e3
    db $e3
    db $ed
    db $ed
    db $e3
    db $e3
    db $ed
    db $ed
    db $ed
    db $ed
    pop hl
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fafa]
    ld a, [$1a1a]
    jp c, $1ada

    ld a, [de]
    ld a, [bc]
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $00
    sbc a
    sbc a
    rst $20
    rst $20
    adc a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    ld d, l
    ld d, l
    xor d
    cp [hl]
    ld b, c
    ld d, l
    xor d
    ld [$5715], a
    xor b
    xor d
    ld d, l
    ld d, l
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    pop af
    pop af
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $08
    rst $08
    rst $00
    rst $00
    rst $00
    rst $00
    rst $08
    rst $08
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    db $e3
    db $ed
    db $ed
    db $ed
    db $ed
    db $e3
    db $e3
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    ld l, e
    sbc h
    sbc h
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, Jump_004_56da

    ld d, [hl]
    adc $ce
    adc $ce
    ld d, [hl]
    ld d, [hl]
    jp c, $ffda

    rst $38
    rst $38
    rst $38
    inc hl
    inc hl
    rst $30
    rst $30
    ld [hl], a
    ld [hl], a
    rst $30
    rst $30
    rst $30
    rst $30
    scf
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [$f0]
    ld sp, hl
    ld sp, hl
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
    ld a, b
    ld a, b
    ldh a, [$f0]
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
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    db $76
    ld [hl], $36
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, $2e
    db $e4
    db $e4
    ld l, d
    ld l, d
    xor $ee
    xor $ee
    ld l, $2e
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    cp a
    cp a
    sbc a
    sbc a
    rst $08
    rst $08
    rst $28
    rst $28
    adc a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

    rst $38
    rst $38
    nop
    nop
    rlca
    nop
    rra
    ld bc, $0d3f
    ccf
    dec c
    ccf
    dec c
    ccf
    dec c
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ldh [rP1], a
    ld hl, sp-$80
    db $fc
    or b
    db $fc
    or b
    db $fc
    or b
    db $fc
    or b
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    pop bc
    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    rst $38
    dec c
    cp a
    dec c
    ccf
    dec c
    ccf
    dec c
    ccf
    inc c
    cp $08
    ld a, $08
    ccf
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    or b
    db $fd
    or b
    db $fc
    or b
    db $fc
    or b
    db $fc
    jr nc, jr_004_5120

    db $10
    ld a, h
    db $10
    db $fc
    db $10
    inc bc
    inc bc
    add e
    inc bc
    jp $c303


    inc bc
    jp $c303


    inc bc
    jp $c303


    inc bc
    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    pop bc
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    ld a, $08

Jump_004_50c8:
    ld a, $08
    ccf
    ld [$0c3f], sp
    rst $38
    rlca
    rra
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38

Jump_004_50e6:
    ld a, h
    db $10
    ld a, h
    db $10
    db $fc
    db $10
    db $fc
    jr nc, @+$01

    ldh [$f8], a
    nop
    nop
    nop
    rst $38
    rst $38
    jp $c303


    inc bc
    jp $c303


    inc bc
    add e
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
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

    rst $38
    rst $38
    nop
    nop
    rlca
    nop
    ld e, $00
    ld [hl-], a
    nop

jr_004_5120:
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    nop
    ldh [rP1], a
    ld a, b
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    nop
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    pop bc
    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    ld a, [c]
    nop
    ld a, [c]
    ld b, b
    ld a, [c]
    ret nz

    ld a, [c]
    ret nz

    di
    ret nz

    or $00
    or $c0
    rst $30
    ret nz

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
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld c, a
    nop
    ld c, l
    nop
    ld c, h
    nop
    ld c, h
    nop
    call z, Call_004_6f00
    nop
    ld l, h
    nop
    db $ec
    nop
    inc bc
    inc bc
    add e
    inc bc
    jp $c303


    inc bc
    jp $c303


    inc bc
    jp $c303


    inc bc
    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    pop bc
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    or $c0
    or $c0
    rst $30
    ret nz

    di
    ret nz

    ld hl, sp+$00
    rra
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
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, h
    nop
    ld l, h
    nop
    db $ec
    nop
    call z, $1f00
    nop
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    jp $c303


    inc bc
    jp $c303


    inc bc
    add e
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
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

    rst $38
    rst $38
    nop
    nop
    rlca
    nop
    ld e, $00
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    nop
    ldh [rP1], a
    ld a, b
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    nop
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    pop bc
    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    ld a, [c]
    nop
    or d
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    inc sp
    nop
    or $00
    ld [hl], $00
    scf
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld c, a
    nop
    ld c, a
    ld [bc], a
    ld c, a
    inc bc
    ld c, a
    inc bc
    rst $08
    inc bc
    ld l, a
    nop
    ld l, a
    inc bc
    rst $28
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    jp $c303


    inc bc
    jp $c303


    inc bc
    jp $c303


    inc bc
    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    pop bc
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    ld [hl], $00
    ld [hl], $00
    scf
    nop
    inc sp
    nop
    ld hl, sp+$00
    rra
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
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, a
    inc bc
    ld l, a
    inc bc
    rst $28
    inc bc
    rst $08
    inc bc
    rra
    nop
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    jp $c303


    inc bc
    jp $c303


    inc bc
    add e
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
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

    rst $38
    rst $38
    nop
    nop
    rlca
    nop
    ld e, $00
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    nop
    ldh [rP1], a
    ld a, b
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    nop
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    pop bc
    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    ld a, [c]
    nop
    or d
    nop
    ld [hl-], a
    nop
    ld [hl-], a
    nop
    inc sp
    nop
    rst $30
    ld bc, $0137
    scf
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld c, a
    nop
    ld c, l
    nop
    ld c, h
    nop
    ld c, h
    nop
    call z, $ef00
    add b
    db $ec
    add b
    db $ec
    nop
    inc bc
    inc bc
    add e
    inc bc
    jp $c303


    inc bc
    jp $c303


    inc bc
    jp $c303


    inc bc
    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    pop bc
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    rst $38
    rst $38
    scf
    ld bc, $0137
    scf
    nop
    inc sp
    nop
    ld hl, sp+$00
    rra
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    db $ec
    add b
    db $ec
    add b
    db $ec
    nop
    call z, $1f00
    nop
    ld hl, sp+$00
    nop
    nop
    rst $38
    rst $38
    jp $c303


    inc bc
    jp $c303


    inc bc
    add e
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    call Call_004_54dd
    ret


    xor a
    ld [$dc2d], a
    ld [$dc3a], a
    ld [$dc1c], a
    ret


    xor a
    ld [$d464], a

Call_004_53e9:
    ld a, [$d464]
    cp $03
    jr c, jr_004_53f2

    ld a, $03

jr_004_53f2:
    ld e, a
    ld d, $00
    ld hl, $53fd
    add hl, de
    ld a, [hl]
    jp Jump_004_542e


    inc d
    ld a, [bc]
    dec b
    inc bc
    call Call_004_543c
    ret nc

    ld hl, $d464
    ld a, [hl]
    cp $03
    jr nc, jr_004_540e

    inc [hl]

jr_004_540e:
    call Call_004_53e9
    scf
    ret


Call_004_5413:
Jump_004_5413:
    ld a, $01

Jump_004_5415:
    ld [hl], a
    push hl
    call $05a7
    pop hl
    inc hl
    call Call_004_5621
    ret


Call_004_5420:
Jump_004_5420:
    inc hl
    push hl
    call Call_004_55cf
    call Call_004_55c8
    pop hl
    dec hl
    call Call_004_5586
    ret


Jump_004_542e:
    ld hl, $d465
    ld [hl], a
    call $05a7
    ld hl, $d466
    call Call_004_562e
    ret


Call_004_543c:
    ld hl, $d466
    call Call_004_55d6
    call Call_004_55ae
    ld hl, $d465
    call Call_004_5586
    ret


jr_004_544c:
    ld hl, $dc1c
    jp Jump_004_5413


    ld hl, $dc1c
    call Call_004_5420
    ret nc

    xor a
    ld hl, $dc1e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $dc4c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $dc50
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $dc54
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $dc58
    ld a, [hl]
    and a
    jr z, jr_004_5480

    dec [hl]
    jr nz, jr_004_5483

jr_004_5480:
    call Call_004_5485

jr_004_5483:
    jr jr_004_544c

Call_004_5485:
    call $2f8c
    and $03
    add $03
    ld [$dc58], a
    ret


    ld a, $14
    ld [$d46c], a
    ld a, $00
    ld [$d46d], a
    call $05a7
    ld hl, $dc35
    call Call_004_5613
    ret


    ld hl, $dc35
    call Call_004_55db
    ld a, [$cfd7]
    and a
    jr nz, jr_004_54d4

    ld a, [$cfd6]
    and a
    jr nz, jr_004_54d4

    ld a, [$cfd4]
    ld b, a
    ld a, [$d46d]
    sub b
    jr nc, jr_004_54c2

    add $3c

jr_004_54c2:
    ld [$d46d], a
    ld a, [$cfd5]
    ld b, a
    ld a, [$d46c]
    sbc b
    ld [$d46c], a
    jr c, jr_004_54d4

    and a
    ret


jr_004_54d4:
    xor a
    ld [$d46c], a
    ld [$d46d], a
    scf
    ret


Call_004_54dd:
    call $05a7
    ld hl, $dc23
    call Call_004_5621
    ret


    ld hl, $dc23
    call Call_004_55cf
    call Call_004_55c8
    and a
    jr z, jr_004_54fa

    ld b, a
    ld a, $04
    ld hl, $7988
    rst $08

jr_004_54fa:
    xor a
    ret


    ld a, $02
    ld hl, $dc3a
    ld [hl], a
    call $05a7
    ld hl, $dc3b
    call Call_004_5621
    ret


    ld hl, $dc3b
    call Call_004_55cf
    call Call_004_55c8
    ld hl, $dc3a
    call Call_004_5586
    ret


    ld hl, $dc1e
    set 2, [hl]
    ret


    and a
    ld hl, $dc1e
    bit 2, [hl]
    ret nz

    scf
    ret


    call Call_004_5534
    ld hl, $dc2d
    jp Jump_004_5415


Call_004_5534:
    call $3376
    ld c, a
    ld a, $05
    sub c
    jr z, jr_004_553f

    jr nc, jr_004_5541

jr_004_553f:
    add $07

jr_004_5541:
    ret


    ld hl, $dc2d
    jp Jump_004_5420


    ld a, $00
    call $2fcb
    ld hl, $abfa
    ld a, [hl+]
    ld [$d1ea], a
    ld a, [hl]
    ld [$d1eb], a
    call $2fe1
    ld hl, $d1ea
    call Call_004_5420
    jr nc, jr_004_5572

    ld hl, $d1ea
    call Call_004_5413
    call $2fe1
    ld a, $41
    ld hl, $50c8
    rst $08

jr_004_5572:
    ld a, $00
    call $2fcb
    ld hl, $d1ea
    ld a, [hl+]
    ld [$abfa], a
    ld a, [hl]
    ld [$abfb], a
    call $2fe1
    ret


Call_004_5586:
    cp $ff
    jr z, jr_004_5595

    ld c, a
    ld a, [hl]
    sub c
    jr nc, jr_004_5590

    xor a

jr_004_5590:
    ld [hl], a
    jr z, jr_004_5595

    xor a
    ret


jr_004_5595:
    xor a
    ld [hl], a
    scf
    ret


    ld a, [$cfd7]
    and a
    jr nz, jr_004_55cc

    ld a, [$cfd6]
    and a
    jr nz, jr_004_55cc

    ld a, [$cfd5]
    jr nz, jr_004_55cc

    ld a, [$cfd4]
    ret


Call_004_55ae:
    ld a, [$cfd7]
    and a
    jr nz, jr_004_55cc

    ld a, [$cfd6]
    and a
    jr nz, jr_004_55cc

    ld a, [$cfd5]
    ret


    ld a, [$cfd7]
    and a
    jr nz, jr_004_55cc

    ld a, [$cfd6]
    ret


Call_004_55c8:
    ld a, [$cfd7]
    ret


jr_004_55cc:
    ld a, $ff
    ret


Call_004_55cf:
    xor a
    jr jr_004_5605

    inc hl
    xor a
    jr jr_004_55f8

Call_004_55d6:
    inc hl
    inc hl
    xor a
    jr jr_004_55eb

Call_004_55db:
    inc hl
    inc hl
    inc hl
    ldh a, [$98]
    ld c, a
    sub [hl]
    jr nc, jr_004_55e6

    add $3c

jr_004_55e6:
    ld [hl], c
    dec hl
    ld [$cfd4], a

jr_004_55eb:
    ldh a, [$96]
    ld c, a
    sbc [hl]
    jr nc, jr_004_55f3

    add $3c

jr_004_55f3:
    ld [hl], c
    dec hl
    ld [$cfd5], a

jr_004_55f8:
    ldh a, [$94]
    ld c, a
    sbc [hl]
    jr nc, jr_004_5600

    add $18

jr_004_5600:
    ld [hl], c
    dec hl
    ld [$cfd6], a

jr_004_5605:
    ld a, [$d4cb]
    ld c, a
    sbc [hl]
    jr nc, jr_004_560e

    add $8c

jr_004_560e:
    ld [hl], c
    ld [$cfd7], a
    ret


Call_004_5613:
    ld a, [$d4cb]
    ld [hl+], a
    ldh a, [$94]
    ld [hl+], a
    ldh a, [$96]
    ld [hl+], a
    ldh a, [$98]
    ld [hl+], a
    ret


Call_004_5621:
    ld a, [$d4cb]
    ld [hl], a
    ret


    ld a, [$d4cb]
    ld [hl+], a
    ldh a, [$94]
    ld [hl+], a
    ret


Call_004_562e:
    ld a, [$d4cb]
    ld [hl+], a
    ldh a, [$94]
    ld [hl+], a
    ldh a, [$96]
    ld [hl+], a
    ret


    ld a, [$d108]
    ld [$cf60], a
    call $3856
    ld hl, $d24e
    push hl
    ld a, [$d262]
    ld b, a
    ld c, $00
    ld hl, $567a

jr_004_564f:
    ld a, [hl+]
    and a
    jr z, jr_004_5666

    cp b
    jr z, jr_004_5659

    inc c
    jr jr_004_564f

jr_004_5659:
    pop hl
    ld b, $02
    push de
    ld d, $00
    ld a, $03
    call $2d83
    pop de
    ret


jr_004_5666:
    pop hl
    ld c, $00
    ret


    ld a, [$d265]
    dec a
    ld hl, $567a
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    ret


    rst $18
    dec e
    xor [hl]
    call Call_004_5c2e
    ret nz

    ld sp, hl
    db $f4
    db $ed
    pop af
    and $ad
    dec sp
    ccf
    call nz, $f0b6
    jp z, $dacb

    ld c, h
    rst $20
    pop hl
    ld d, a
    ld e, c
    ret c

    ld e, e
    ld e, [hl]
    rst $30
    cp l
    ld l, b
    ld [$d6cf], sp
    cp h
    ret


    ld a, [hl]
    add c
    ld l, a
    add hl, bc
    adc d
    push bc
    sbc h
    push de
    xor b
    db $d3
    rlca
    jp nc, $0fab

    inc de
    add hl, sp
    ld b, [hl]
    sub h
    ld a, [$357f]
    ld d, l
    ld a, [hl-]
    nop
    call $2ed3
    call Call_004_56c1
    call $2b74
    ret


Call_004_56c1:
    ld hl, $c6d0
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $c6d4
    ld [hl], b
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    ldh a, [$de]
    push af
    xor a
    ldh [$de], a
    ldh a, [$aa]

Jump_004_56da:
    push af
    ld a, $01
    ldh [$aa], a
    call Call_004_56f8
    call $045a

jr_004_56e5:
    call Call_004_5915
    jr nc, jr_004_56e5

    pop af
    ldh [$aa], a
    pop af
    ldh [$de], a
    pop af
    ld [$cfcc], a
    call $092f
    ret


Call_004_56f8:
    call $31f3
    ld b, $08
    call $3340
    call $0568
    call Call_004_5c51
    call Call_004_58a8
    ld a, $e3
    ldh [rLCDC], a
    call Call_004_571d
    call $31f6
    call $163a
    call $32f9
    call Call_004_5be0
    ret


Call_004_571d:
    ld a, [$c6d4]
    and $07
    ld e, a
    ld d, $00
    ld hl, $572e
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, $57
    adc l
    ld d, a
    xor [hl]
    ld d, a
    pop de
    ld d, a
    push af
    ld d, a
    inc l
    ld e, b
    ld a, $57
    ld a, $57
    ld a, [$d108]
    ld [$d265], a
    ld hl, $683f
    ld a, $23
    ld e, $01
    rst $08
    ld a, [$d108]
    ld [$d265], a
    call $343b
    ld hl, $c4cd
    call $1078
    ld l, c
    ld h, b
    ld de, $5780
    call $1078
    inc de
    ld hl, $c4f5
    call $1078
    ld a, $14
    ld hl, $4bdd
    rst $08
    jr c, jr_004_577c

    ld a, $ef
    jr nz, jr_004_5778

    ld a, $f5

jr_004_5778:
    ld hl, $c4c9
    ld [hl], a

jr_004_577c:
    call Call_004_587b
    ret


    ldh [$92], a
    ld d, b
    adc l
    adc b
    add d
    adc d
    adc l
    add b
    adc h
    add h
    and $50
    ld a, $22
    ld hl, $432c
    rst $08
    call Call_004_5847
    ld hl, $c4cd
    ld de, $57a3
    call $1078
    call Call_004_5882
    ret


    sbc b
    adc [hl]
    sub h
    sub c
    ld a, a
    adc l
    add b
    adc h
    add h
    and $50
    ld de, $43c0
    ld b, $30
    call Call_004_5847
    ld hl, $c4cd
    ld de, $57c3
    call $1078
    call Call_004_5882
    ret


    sub c
    adc b
    sub l
    add b
    adc e
    ldh [$92], a
    ld a, a
    adc l
    add b
    adc h
    add h
    and $50
    ld de, $4fc0
    ld b, $30
    call Call_004_5847
    ld hl, $c4cd
    ld de, $57e6
    call $1078
    call Call_004_5882
    ret


    adc h
    adc [hl]
    sub e
    add a
    add h
    sub c
    ldh [$92], a
    ld a, a
    adc l
    add b
    adc h
    add h
    and $50
    ld de, $7380
    ld hl, $8000
    ld bc, $3104
    call $0eba
    xor a
    ld hl, $c300
    ld [hl+], a
    ld [hl], a
    ld de, $2420
    ld a, $0a
    call $3b2a
    ld hl, $0001
    add hl, bc
    ld [hl], $00
    ld hl, $c4cd
    ld de, $5822
    call $1078
    call Call_004_5889
    ret


    add c
    adc [hl]
    sub a
    ld a, a
    adc l
    add b
    adc h
    add h
    and $50
    ld hl, $c4cb
    ld de, $5839
    call $1078
    call Call_004_5882
    ret


    or l
    call nz, $30d3
    pop bc
    ld a, a
    ret


    ld a, a
    push bc
    rst $08
    or h
    jp z, Jump_004_50e6

Call_004_5847:
    push de
    ld hl, $8000
    ld c, $04
    push bc
    call $0eba
    pop bc
    ld hl, $00c0
    add hl, de
    ld e, l
    ld d, h
    ld hl, $8040
    call $0eba
    xor a
    ld hl, $c300
    ld [hl+], a
    ld [hl], a
    pop de
    ld b, $0a
    ld a, d
    cp $7a
    jr nz, jr_004_5873

    ld a, e
    cp $40
    jr nz, jr_004_5873

    ld b, $1e

jr_004_5873:
    ld a, b
    ld de, $2420
    call $3b2a
    ret


Call_004_587b:
    ld a, $0a
    ld hl, $c51d
    jr jr_004_5890

Call_004_5882:
    ld a, $07
    ld hl, $c51d
    jr jr_004_5890

Call_004_5889:
    ld a, $08
    ld hl, $c4f5
    jr jr_004_5890

jr_004_5890:
    ld [$c6d3], a
    ld a, l
    ld [$c6d8], a
    ld a, h
    ld [$c6d9], a
    ret


Call_004_589c:
    push bc
    push af
    ld a, [$c6d4]
    sub $03
    ld b, a
    pop af
    dec b
    pop bc
    ret


Call_004_58a8:
    call $163a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $60
    call $3041
    ld hl, $c4b5
    ld bc, $0612
    call Call_004_589c
    jr nz, jr_004_58c4

    ld bc, $0412

jr_004_58c4:
    call $0fb6
    ld de, $5da2

Call_004_58ca:
    call Call_004_589c
    jr nz, jr_004_58d5

    ld hl, $0055
    add hl, de
    ld d, h
    ld e, l

jr_004_58d5:
    push de
    ld hl, $c541
    ld bc, $0712
    call Call_004_589c
    jr nz, jr_004_58e7

    ld hl, $c519
    ld bc, $0912

jr_004_58e7:
    call $0fb6
    ld hl, $c5e1
    ld bc, $0112
    call $0fb6
    pop de
    ld hl, $c542
    ld b, $05
    call Call_004_589c
    jr nz, jr_004_5903

    ld hl, $c51a
    ld b, $06

jr_004_5903:
    ld c, $11

jr_004_5905:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_004_5905

    push de
    ld de, $0017
    add hl, de
    pop de
    dec b
    jr nz, jr_004_5903

    ret


Call_004_5915:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_004_5930

    call Call_004_5968
    ld a, $23
    ld hl, $4f62
    rst $08
    call Call_004_5940
    call $045a
    and a
    ret


jr_004_5930:
    ld hl, $4f53
    ld a, $23
    rst $08
    call $300b
    xor a
    ldh [$cf], a
    ldh [$d0], a
    scf
    ret


Call_004_5940:
    xor a
    ldh [$d4], a
    ld hl, $c505
    call Call_004_589c
    jr nz, jr_004_594e

    ld hl, $c4dd

jr_004_594e:
    ld bc, $0112
    call $0fb6
    ld hl, $c6d0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c6d8
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $1078
    ld a, $01
    ldh [$d4], a
    ret


Call_004_5968:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $5977
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, e
    ld e, c
    and c
    ld e, c
    ld de, $5018
    call Call_004_589c
    jr nz, jr_004_5985

    ld d, $40

jr_004_5985:
    ld a, $02
    call $3b2a
    ld a, c
    ld [$c6d5], a
    ld a, b
    ld [$c6d6], a
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld hl, $cf63
    inc [hl]
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $01
    jr nz, jr_004_59b9

    ld a, [hl]
    and $02
    jr nz, jr_004_59e7

    ld a, [hl]
    and $08
    jr nz, jr_004_59cf

    ld a, [hl]
    and $04
    jr nz, jr_004_59f4

    ret


jr_004_59b9:
    call Call_004_5a0b
    cp $01
    jr z, jr_004_59f4

    cp $02
    jr z, jr_004_59e7

    cp $03
    jr z, jr_004_59eb

    call Call_004_5c11
    call Call_004_5b14
    ret nc

jr_004_59cf:
    ld hl, $c6d5
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $000c
    add hl, bc
    ld [hl], $08
    ld hl, $000d
    add hl, bc
    ld [hl], $04
    call Call_004_589c
    ret nz

    inc [hl]
    ret


jr_004_59e7:
    call Call_004_5bbc
    ret


jr_004_59eb:
    call Call_004_5bf7
    ld hl, $cf63
    set 7, [hl]
    ret


jr_004_59f4:
    ld hl, $cf64
    ld a, [hl]
    xor $01
    ld [hl], a
    jr z, jr_004_5a04

    ld de, $5ce7
    call Call_004_58ca
    ret


jr_004_5a04:
    ld de, $5da2
    call Call_004_58ca
    ret


Call_004_5a0b:
    ld hl, $c6d5
    ld c, [hl]
    inc hl
    ld b, [hl]

Call_004_5a11:
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    push bc
    ld b, $04
    call Call_004_589c
    jr nz, jr_004_5a1f

    inc b

jr_004_5a1f:
    cp b
    pop bc
    jr nz, jr_004_5a39

    ld hl, $000c
    add hl, bc
    ld a, [hl]
    cp $03
    jr c, jr_004_5a33

    cp $06
    jr c, jr_004_5a36

    ld a, $03
    ret


jr_004_5a33:
    ld a, $01
    ret


jr_004_5a36:
    ld a, $02
    ret


jr_004_5a39:
    xor a
    ret


    call Call_004_5a8b
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    ld e, a
    swap e
    ld hl, $0007
    add hl, bc
    ld [hl], e
    ld d, $04
    call Call_004_589c
    jr nz, jr_004_5a53

    inc d

jr_004_5a53:
    cp d
    ld de, $5a79
    ld a, $00
    jr nz, jr_004_5a60

    ld de, $5a82
    ld a, $01

jr_004_5a60:
    ld hl, $000e
    add hl, bc
    add [hl]
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ld hl, $000c
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, [hl]
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


    nop
    db $10
    jr nz, jr_004_5aad

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    nop
    nop
    nop
    jr nc, jr_004_5ab7

    jr nc, jr_004_5ae9

    ld h, b
    ld h, b

Call_004_5a8b:
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_004_5b02

    ld a, [hl]
    and $80
    jr nz, jr_004_5ae9

    ld a, [hl]
    and $20
    jr nz, jr_004_5ac5

    ld a, [hl]
    and $10
    jr nz, jr_004_5aa3

    ret


jr_004_5aa3:
    call Call_004_5a11
    and a
    jr nz, jr_004_5ab7

    ld hl, $000c
    add hl, bc

jr_004_5aad:
    ld a, [hl]
    cp $08
    jr nc, jr_004_5ab4

    inc [hl]
    ret


jr_004_5ab4:
    ld [hl], $00
    ret


jr_004_5ab7:
    cp $03
    jr nz, jr_004_5abc

    xor a

jr_004_5abc:
    ld e, a
    add a
    add e
    ld hl, $000c
    add hl, bc
    ld [hl], a
    ret


jr_004_5ac5:
    call Call_004_5a11
    and a
    jr nz, jr_004_5ad8

    ld hl, $000c
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_5ad5

    dec [hl]
    ret


jr_004_5ad5:
    ld [hl], $08
    ret


jr_004_5ad8:
    cp $01
    jr nz, jr_004_5ade

    ld a, $04

jr_004_5ade:
    dec a
    dec a
    ld e, a
    add a
    add e
    ld hl, $000c
    add hl, bc
    ld [hl], a
    ret


jr_004_5ae9:
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    call Call_004_589c
    jr nz, jr_004_5af9

    cp $05
    jr nc, jr_004_5aff

    inc [hl]
    ret


jr_004_5af9:
    cp $04
    jr nc, jr_004_5aff

    inc [hl]
    ret


jr_004_5aff:
    ld [hl], $00
    ret


jr_004_5b02:
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_5b0c

    dec [hl]
    ret


jr_004_5b0c:
    ld [hl], $04
    call Call_004_589c
    ret nz

    inc [hl]
    ret


Call_004_5b14:
    ld a, [$c6d7]

Jump_004_5b17:
    ld a, [$c6d3]
    ld c, a
    ld a, [$c6d2]
    cp c
    ret nc

    ld a, [$c6d7]

Jump_004_5b23:
jr_004_5b23:
    call Call_004_5bd0
    ld [hl], a

Jump_004_5b27:
jr_004_5b27:
    ld hl, $c6d2
    inc [hl]
    call Call_004_5bd0

jr_004_5b2e:
    ld a, [hl]
    cp $50
    jr z, jr_004_5b37

    ld [hl], $f2
    and a
    ret


jr_004_5b37:
    scf
    ret


    ld a, [$c6d2]
    and a
    ret z

    push hl
    ld hl, $c6d2
    dec [hl]
    call Call_004_5bd0
    ld c, [hl]
    pop hl

jr_004_5b48:
    ld a, [hl+]
    cp $ff
    jr z, jr_004_5b27

    cp c
    jr z, jr_004_5b53

    inc hl
    jr jr_004_5b48

jr_004_5b53:
    ld a, [hl]
    jr jr_004_5b23

    or [hl]
    ld h, $b7
    daa
    cp b
    jr z, @-$45

    add hl, hl
    cp d
    ld a, [hl+]
    cp e
    dec hl
    cp h
    inc l
    cp l
    dec l
    cp [hl]
    ld l, $bf
    cpl
    ret nz

    jr nc, jr_004_5b2e

    ld sp, $32c2
    jp $c433


    inc [hl]
    jp z, $cb3a

    dec sp
    call z, $cd3c
    dec a
    adc $3e
    add l
    dec b
    add [hl]
    ld b, $87
    rlca
    adc b
    ld [$0989], sp
    adc d
    ld a, [bc]
    adc e
    dec bc
    adc h
    inc c
    adc l
    dec c
    adc [hl]
    ld c, $8f
    rrca
    sub b
    db $10
    sub c
    ld de, $1292
    sub e
    inc de
    sbc c
    add hl, de
    sbc d
    ld a, [de]
    sbc e
    dec de
    call $9c3d
    inc e
    rst $38
    jp z, $cb44

    ld b, l
    call z, $cd46
    ld b, a
    adc $48
    sbc c
    ld b, b
    sbc d
    ld b, c
    sbc e
    ld b, d
    call $9c47
    ld b, e
    rst $38

Call_004_5bbc:
    ld hl, $c6d2
    ld a, [hl]
    and a
    ret z

    dec [hl]
    call Call_004_5bd0
    ld [hl], $f2
    inc hl
    ld a, [hl]
    cp $f2
    ret nz

    ld [hl], $eb
    ret


Call_004_5bd0:
    push af
    ld hl, $c6d0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c6d2]
    ld e, a
    ld d, $00
    add hl, de
    pop af
    ret


Call_004_5be0:
    ld hl, $c6d0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], $f2
    inc hl
    ld a, [$c6d3]
    dec a
    ld c, a
    ld a, $eb

jr_004_5bf0:
    ld [hl+], a
    dec c
    jr nz, jr_004_5bf0

    ld [hl], $50
    ret


Call_004_5bf7:
    ld hl, $c6d0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c6d3]
    ld c, a

jr_004_5c01:
    ld a, [hl]
    cp $eb
    jr z, jr_004_5c0a

    cp $f2
    jr nz, jr_004_5c0c

jr_004_5c0a:
    ld [hl], $50

jr_004_5c0c:
    inc hl
    dec c
    jr nz, jr_004_5c01

    ret


Call_004_5c11:
    ld hl, $c6d5
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    ld hl, $0004
    add hl, bc
    add [hl]
    sub $08
    srl a
    srl a
    srl a
    ld e, a
    ld hl, $0007
    add hl, bc

Call_004_5c2e:
    ld a, [hl]
    ld hl, $0005
    add hl, bc
    add [hl]
    sub $10
    srl a
    srl a
    srl a
    ld d, a
    ld hl, $c4a0
    ld bc, $0014

jr_004_5c43:
    ld a, d
    and a
    jr z, jr_004_5c4b

    add hl, bc
    dec d
    jr jr_004_5c43

jr_004_5c4b:
    add hl, de
    ld a, [hl]
    ld [$c6d7], a
    ret


Call_004_5c51:
    call $300b
    ld hl, $4f53
    ld a, $23
    rst $08
    call $0e51
    call $0e5f
    ld de, $5e65
    ld hl, $8eb0
    ld bc, $0401
    call $0f9d
    ld de, $5e6d
    ld hl, $8f20
    ld bc, $0401
    call $0f9d
    ld de, $9600
    ld hl, $5cb7
    ld bc, $0010
    ld a, $04
    call $0e8d
    ld de, $87e0
    ld hl, $5cc7
    ld bc, $0020
    ld a, $04
    call $0e8d
    ld a, $05
    ld hl, $c312
    ld [hl+], a
    ld [hl], $7e
    xor a
    ldh [$d0], a
    ld [$c3bf], a
    ldh [$cf], a
    ld [$c3c0], a
    ld [$cf63], a
    ld [$cf64], a
    ldh [$d4], a
    ld [$c6d2], a
    ld a, $07
    ldh [$d1], a
    ret


    nop
    nop
    nop
    ld [hl], b
    inc c
    ld [hl], b
    inc c
    ld [hl], b
    jr nc, jr_004_5ccf

    jr nc, jr_004_5cd1

    nop
    ld c, $00
    nop
    rst $38
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b

jr_004_5ccf:
    add b
    add b

jr_004_5cd1:
    add b
    add b
    add b
    add b
    add b
    add b
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
    nop
    nop
    nop
    nop
    and b
    ld a, a
    and c
    ld a, a
    and d
    ld a, a
    and e
    ld a, a
    and h
    ld a, a
    and l
    ld a, a
    and [hl]
    ld a, a
    and a
    ld a, a
    xor b
    xor c
    ld a, a
    xor d
    ld a, a
    xor e
    ld a, a
    xor h
    ld a, a
    xor l
    ld a, a
    xor [hl]
    ld a, a
    xor a
    ld a, a
    or b
    ld a, a
    or c
    or d
    ld a, a
    or e
    ld a, a
    or h
    ld a, a
    or l
    ld a, a
    or [hl]
    ld a, a
    or a
    ld a, a
    cp b
    ld a, a
    cp c
    ld a, a
    ld a, a
    pop af
    ld a, a
    sbc d
    ld a, a
    sbc e
    ld a, a
    sbc h
    ld a, a
    sbc l
    ld a, a
    sbc [hl]
    ld a, a
    sbc a
    ld a, a
    pop hl
    ld a, a
    ld [c], a
    sub h
    adc a
    adc a
    add h
    sub c
    ld a, a
    ld a, a
    add e
    add h
    adc e
    ld a, a
    ld a, a
    ld a, a
    add h
    adc l
    add e
    ld a, a
    and b
    ld a, a
    and c
    ld a, a
    and d
    ld a, a
    and e
    ld a, a
    and h
    ld a, a
    and l
    ld a, a
    and [hl]
    ld a, a
    and a
    ld a, a
    xor b
    xor c
    ld a, a
    xor d
    ld a, a
    xor e
    ld a, a
    xor h
    ld a, a
    xor l
    ld a, a
    xor [hl]
    ld a, a
    xor a
    ld a, a
    or b
    ld a, a
    or c
    or d
    ld a, a
    or e
    ld a, a
    or h
    ld a, a
    or l
    ld a, a
    or [hl]
    ld a, a
    or a
    ld a, a
    cp b
    ld a, a
    cp c
    ld a, a
    ld a, a
    ld [$d07f], a
    ld a, a
    pop de
    ld a, a
    jp nc, $d37f

    ld a, a
    call nc, $d57f
    ld a, a
    sub $7f
    or $f7
    ld a, a
    ld hl, sp+$7f
    ld sp, hl
    ld a, a
    ld a, [$fb7f]
    ld a, a
    db $fc
    ld a, a
    db $fd
    ld a, a
    cp $7f
    rst $38
    sub h
    adc a
    adc a
    add h
    sub c
    ld a, a
    ld a, a
    add e
    add h
    adc e
    ld a, a
    ld a, a
    ld a, a
    add h
    adc l
    add e
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    add d
    ld a, a
    add e
    ld a, a
    add h
    ld a, a
    add l
    ld a, a
    add [hl]
    ld a, a
    add a
    ld a, a
    adc b
    adc c
    ld a, a
    adc d
    ld a, a
    adc e
    ld a, a
    adc h
    ld a, a
    adc l
    ld a, a
    adc [hl]
    ld a, a
    adc a
    ld a, a
    sub b
    ld a, a
    sub c
    sub d
    ld a, a
    sub e
    ld a, a
    sub h
    ld a, a
    sub l
    ld a, a
    sub [hl]
    ld a, a
    sub a
    ld a, a
    sbc b
    ld a, a
    sbc c
    ld a, a
    ld a, a
    db $e3
    ld a, a
    and $7f
    rst $20
    ld a, a
    di
    ld a, a
    add sp, $7f
    db $f4
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    ld a, a
    add e
    add h
    adc e
    ld a, a
    ld a, a
    ld a, a
    add h
    adc l
    add e
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    add d
    ld a, a
    add e
    ld a, a
    add h
    ld a, a
    add l
    ld a, a
    add [hl]
    ld a, a
    add a
    ld a, a
    adc b
    adc c
    ld a, a
    adc d
    ld a, a
    adc e
    ld a, a
    adc h
    ld a, a
    adc l
    ld a, a
    adc [hl]
    ld a, a
    adc a
    ld a, a
    sub b
    ld a, a
    sub c
    sub d
    ld a, a
    sub e
    ld a, a
    sub h
    ld a, a
    sub l
    ld a, a
    sub [hl]
    ld a, a
    sub a
    ld a, a
    sbc b
    ld a, a
    sbc c
    ld a, a
    ld a, a
    pop af
    ld a, a
    sbc d
    ld a, a
    sbc e
    ld a, a
    sbc h
    ld a, a
    sbc l
    ld a, a
    sbc [hl]
    ld a, a
    sbc a
    ld a, a
    pop hl
    ld a, a
    ld [c], a
    db $e3
    ld a, a
    and $7f
    rst $20
    ld a, a
    rst $28
    ld a, a
    push af
    ld a, a
    di
    ld a, a
    add sp, $7f
    db $f4
    ld a, a
    jp hl


    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    ld a, a
    add e
    add h
    adc e
    ld a, a
    ld a, a
    ld a, a
    add h
    adc l
    add e
    ld a, a
    ldh a, [$c0]
    ldh a, [$ce]
    db $fd
    dec c
    dec c
    ld c, $00
    nop
    nop
    ld a, a
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
    ld a, a
    ld a, a
    ld hl, $c6d0
    ld [hl], e
    inc hl
    ld [hl], d
    ldh a, [$de]
    push af
    xor a
    ldh [$de], a
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    call Call_004_5e9a
    call $045a

jr_004_5e8e:
    call Call_004_5fc0
    jr nc, jr_004_5e8e

    pop af
    ldh [$aa], a
    pop af
    ldh [$de], a
    ret


Call_004_5e9a:
    call $31f3
    call $0568
    call Call_004_5c51
    ld de, $8000
    ld hl, $5ef4
    ld bc, $0080
    ld a, $04
    call $0e8d
    xor a
    ld hl, $c300
    ld [hl+], a
    ld [hl], a
    ld de, $1810
    ld a, $00
    call $3b2a
    ld hl, $0002
    add hl, bc
    ld [hl], $00
    call Call_004_5f84
    ld a, $e3
    ldh [rLCDC], a
    call Call_004_5f74
    ld b, $08
    call $3340
    call $31f6
    call $163a
    ld a, $e4
    call $0c9f
    ld a, $e4
    call $0cf8
    call Call_004_5be0
    ld hl, $c6d0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0010
    add hl, de
    ld [hl], $4e
    ret


    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld h, b
    ld a, a
    ld d, b
    ld a, a
    ld c, b
    ld a, a
    ld b, h
    ld a, a
    ld b, d
    ld a, a
    ld b, c
    nop
    nop
    cp $fe
    cp $06
    cp $0a
    cp $12
    cp $22
    cp $42
    cp $82
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp $02
    cp $02
    cp $02
    cp $02
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld h, b
    ld a, a
    ld e, b
    ld [hl], a
    ld c, [hl]
    ld a, c
    ld b, a
    ld a, h
    ld b, e
    ld a, [hl]
    ld b, c
    nop
    nop
    cp $fe
    cp $06
    cp $1a
    xor $72
    sbc [hl]
    ld [c], a
    ld a, $c2
    ld a, [hl]
    add d
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    cp $02
    cp $02
    cp $02
    cp $02
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop

Call_004_5f74:
    ld a, $21
    ld [$c6d3], a
    ret


    and b
    db $e3
    and [hl]
    db $dd
    ld a, a
    or [hl]
    or d
    jp Jump_004_50c8


Call_004_5f84:
    call $163a
    ld hl, $c4a0
    ld bc, $0078
    ld a, $60
    call $3041
    ld hl, $c518
    ld bc, $00f0
    ld a, $7f
    call $3041
    ld hl, $c4b5
    ld bc, $0412
    call $0fb6
    ld de, $61dd

Call_004_5fa9:
    ld hl, $c52d
    ld b, $06

jr_004_5fae:
    ld c, $13

jr_004_5fb0:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_004_5fb0

    push de
    ld de, $0015
    add hl, de
    pop de
    dec b
    jr nz, jr_004_5fae

    ret


Call_004_5fc0:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_004_5fdb

    call Call_004_6008
    ld a, $23
    ld hl, $4f62
    rst $08
    call Call_004_5feb
    call $045a
    and a
    ret


jr_004_5fdb:
    ld hl, $4f53
    ld a, $23
    rst $08
    call $300b
    xor a
    ldh [$cf], a
    ldh [$d0], a
    scf
    ret


Call_004_5feb:
    xor a
    ldh [$d4], a
    ld hl, $c4b5
    ld bc, $0412
    call $0fb6
    ld hl, $c6d0
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $c4ca
    call $1078
    ld a, $01
    ldh [$d4], a
    ret


Call_004_6008:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $6017
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec de
    ld h, b
    ld a, [hl-]
    ld h, b
    ld de, $4810
    ld a, $09
    call $3b2a
    ld a, c
    ld [$c6d5], a
    ld a, b
    ld [$c6d6], a
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    ld hl, $000e
    add hl, bc
    ld [hl], a
    ld hl, $cf63
    inc [hl]
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $01
    jr nz, jr_004_6052

    ld a, [hl]
    and $02
    jr nz, jr_004_608d

    ld a, [hl]
    and $08
    jr nz, jr_004_607a

    ld a, [hl]
    and $04
    jr nz, jr_004_60aa

    ret


jr_004_6052:
    call Call_004_6185
    cp $01
    jr z, jr_004_60aa

    cp $02
    jr z, jr_004_608d

    cp $03
    jr z, jr_004_60a1

    call Call_004_5c11
    call Call_004_61ac
    jr c, jr_004_607a

    ld hl, $c6d2
    ld a, [hl]
    cp $10
    ret nz

    inc [hl]
    call Call_004_5bd0
    ld [hl], $f2
    dec hl
    ld [hl], $4e
    ret


jr_004_607a:
    ld hl, $c6d5
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $000c
    add hl, bc
    ld [hl], $09
    ld hl, $000d
    add hl, bc
    ld [hl], $05
    ret


jr_004_608d:
    call Call_004_5bbc
    ld hl, $c6d2
    ld a, [hl]
    cp $10
    ret nz

    dec [hl]
    call Call_004_5bd0
    ld [hl], $f2
    inc hl
    ld [hl], $4e
    ret


jr_004_60a1:
    call Call_004_5bf7
    ld hl, $cf63
    set 7, [hl]
    ret


jr_004_60aa:
    ld hl, $cf64
    ld a, [hl]
    xor $01
    ld [hl], a
    jr nz, jr_004_60ba

    ld de, $61dd
    call Call_004_5fa9
    ret


jr_004_60ba:
    ld de, $624f
    call Call_004_5fa9
    ret


    call Call_004_610c
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    ld e, a
    swap e
    ld hl, $0007
    add hl, bc
    ld [hl], e
    cp $05
    ld de, $60f8
    ld a, $00
    jr nz, jr_004_60df

    ld de, $6102
    ld a, $01

jr_004_60df:
    ld hl, $000e
    add hl, bc
    add [hl]
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ld hl, $000c
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, de
    ld a, [hl]
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


    nop
    db $10
    jr nz, @+$32

    ld b, b
    ld d, b
    ld h, b
    ld [hl], b
    add b
    sub b
    nop
    nop
    nop
    jr nc, jr_004_6137

    jr nc, jr_004_6169

    ld h, b
    ld h, b
    ld h, b

Call_004_610c:
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_004_6178

    ld a, [hl]
    and $80

Call_004_6117:
    jr nz, jr_004_616a

    ld a, [hl]
    and $20
    jr nz, jr_004_6146

    ld a, [hl]
    and $10
    jr nz, jr_004_6124

    ret


jr_004_6124:
    call Call_004_618b
    and a
    jr nz, jr_004_6138

    ld hl, $000c
    add hl, bc
    ld a, [hl]
    cp $09
    jr nc, jr_004_6135

    inc [hl]
    ret


jr_004_6135:
    ld [hl], $00

jr_004_6137:
    ret


jr_004_6138:
    cp $03
    jr nz, jr_004_613d

    xor a

jr_004_613d:
    ld e, a
    add a
    add e
    ld hl, $000c
    add hl, bc
    ld [hl], a
    ret


jr_004_6146:
    call Call_004_618b
    and a
    jr nz, jr_004_6159

    ld hl, $000c
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6156

    dec [hl]
    ret


jr_004_6156:
    ld [hl], $09
    ret


jr_004_6159:
    cp $01
    jr nz, jr_004_615f

    ld a, $04

jr_004_615f:
    dec a
    dec a
    ld e, a
    add a
    add e
    ld hl, $000c
    add hl, bc
    ld [hl], a

jr_004_6169:
    ret


jr_004_616a:
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    cp $05
    jr nc, jr_004_6175

    inc [hl]
    ret


jr_004_6175:
    ld [hl], $00
    ret


jr_004_6178:
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_004_6182

    dec [hl]
    ret


jr_004_6182:
    ld [hl], $05
    ret


Call_004_6185:
    ld hl, $c6d5
    ld c, [hl]
    inc hl
    ld b, [hl]

Call_004_618b:
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    cp $05
    jr nz, jr_004_61aa

    ld hl, $000c
    add hl, bc
    ld a, [hl]
    cp $03
    jr c, jr_004_61a4

    cp $06
    jr c, jr_004_61a7

    ld a, $03
    ret


jr_004_61a4:
    ld a, $01
    ret


jr_004_61a7:
    ld a, $02
    ret


jr_004_61aa:
    xor a
    ret


Call_004_61ac:
    ld a, [$c6d7]
    jp Jump_004_5b17


    ld a, [$c6d2]
    and a
    ret z

    cp $11
    jr nz, jr_004_61c3

    push hl
    ld hl, $c6d2
    dec [hl]
    dec [hl]
    jr jr_004_61c8

jr_004_61c3:
    push hl
    ld hl, $c6d2
    dec [hl]

jr_004_61c8:
    call Call_004_5bd0
    ld c, [hl]
    pop hl

jr_004_61cd:
    ld a, [hl+]
    cp $ff
    jp z, Jump_004_5b27

    cp c
    jr z, jr_004_61d9

    inc hl
    jr jr_004_61cd

jr_004_61d9:
    ld a, [hl]
    jp Jump_004_5b23


    add b
    ld a, a
    add c
    ld a, a
    add d
    ld a, a
    add e
    ld a, a
    add h
    ld a, a
    add l
    ld a, a
    add [hl]
    ld a, a
    add a
    ld a, a
    adc b
    ld a, a
    adc c
    adc d
    ld a, a
    adc e
    ld a, a
    adc h
    ld a, a
    adc l
    ld a, a
    adc [hl]
    ld a, a
    adc a
    ld a, a
    sub b
    ld a, a
    sub c
    ld a, a
    sub d
    ld a, a
    sub e
    sub h
    ld a, a
    sub l
    ld a, a
    sub [hl]
    ld a, a
    sub a
    ld a, a
    sbc b
    ld a, a
    sbc c
    ld a, a
    ld a, a
    ld a, a
    db $f4
    ld a, a
    and $7f
    rst $20
    rst $30
    ld a, a
    ld hl, sp+$7f
    ld sp, hl
    ld a, a
    ld a, [$fb7f]
    ld a, a
    db $fc
    ld a, a
    db $fd
    ld a, a
    cp $7f
    rst $38
    ld a, a
    or $e1
    ld a, a
    ld [c], a
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], c
    ld a, a
    ld [$ef7f], a
    ld a, a
    push af
    ld a, a
    ldh a, [$7f]
    ld [hl], l
    ld a, a
    pop af
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    ld a, a
    add e
    add h
    adc e
    ld a, a
    ld a, a
    ld a, a
    add h
    adc l
    add e
    ld a, a
    ld a, a
    ld a, a
    and b
    ld a, a
    and c
    ld a, a
    and d
    ld a, a
    and e
    ld a, a
    and h
    ld a, a
    and l
    ld a, a
    and [hl]
    ld a, a
    and a
    ld a, a
    xor b
    ld a, a
    xor c
    xor d
    ld a, a
    xor e
    ld a, a
    xor h
    ld a, a
    xor l
    ld a, a
    xor [hl]
    ld a, a
    xor a
    ld a, a
    or b
    ld a, a
    or c
    ld a, a
    or d
    ld a, a
    or e
    or h
    ld a, a
    or l
    ld a, a
    or [hl]
    ld a, a
    or a
    ld a, a
    cp b
    ld a, a
    cp c
    ld a, a
    ld a, a
    ld a, a
    add sp, $7f
    db $e3
    ld a, a
    di
    ret nc

    ld a, a
    pop de
    ld a, a
    jp nc, $d37f

    ld a, a
    call nc, $d57f
    ld a, a
    sub $7f
    jp hl


    ld a, a
    sbc d
    ld a, a
    sbc e
    ld [hl], d
    ld a, a
    ld [hl], e
    ld a, a
    sbc [hl]
    ld a, a
    sbc a
    ld a, a
    ldh [$7f], a
    sbc h
    ld a, a
    sbc l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub h
    adc a
    adc a
    add h
    sub c
    ld a, a
    ld a, a
    add e
    add h
    adc e
    ld a, a
    ld a, a
    ld a, a
    add h
    adc l
    add e
    ld a, a
    ld a, a
    ld a, a
    inc [hl]
    ld de, $0800
    call $3662
    ld d, c
    nop
    rrca
    rla
    nop
    sub c
    ld c, $04
    ld hl, sp+$62
    ld [$62e3], sp
    ld l, [hl]
    cp $47
    ld c, h
    xor $62
    add l
    ld bc, $8b00
    inc a
    ld b, l
    ld c, c
    sub c
    ld b, a
    ld c, h
    xor $62
    ld d, h
    ld c, h
    di
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld d, $1c
    ld c, d
    ld [hl], b
    ld d, b
    ld d, $2c
    ld c, d
    ld [hl], b
    ld d, b
    xor a
    ld [$c2dd], a
    ld a, [$d03e]
    ld [$d265], a
    call $3468
    ld hl, $d099
    call $30d9
    ld a, [$d03e]
    ld [$d106], a
    ld a, [$d03f]
    ld [$d10c], a
    ld hl, $d892
    call $2f66
    ret nc

    ld a, $01
    ld [$c2dd], a
    ret


    ld a, [$dcd7]
    and a
    ret z

    ld a, [$c2dd]
    ld [$d1ea], a
    ldh a, [rOBP1]
    ld [$d1eb], a
    call Call_004_633e
    ld a, [$d1eb]
    call $0d24
    ret


Call_004_633e:
    xor a
    ld [$d1ec], a

jr_004_6342:
    ld a, [$d1ea]
    ld e, a
    ld d, $00
    ld hl, $6365
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d1ec]
    ld e, a
    inc a
    ld [$d1ec], a
    add hl, de
    ld a, [hl]
    cp $05
    jr z, jr_004_6364

    ld hl, $6377
    rst $28
    jr jr_004_6342

jr_004_6364:
    ret


    ld l, e
    ld h, e
    ld l, a
    ld h, e
    ld [hl], e
    ld h, e
    nop
    ld bc, $0503
    nop
    ld bc, $0503
    nop
    ld [bc], a
    inc b
    dec b
    add e
    ld h, e
    sub e
    ld h, e
    and c
    ld h, e
    cp a
    ld h, e
    ret z

    ld h, e
    db $db
    ld h, e
    call $6434
    ld de, $63fc
    ld hl, $87c0
    ld bc, $0402
    call $0eba
    ret


    ld hl, $c480
    ld de, $63dc
    call Call_004_64a3
    call Call_004_64a3
    jr jr_004_63a7

    ld hl, $c480
    ld de, $641c

jr_004_63a7:
    ld a, [$dcd7]
    ld b, a

jr_004_63ab:
    call Call_004_64a3
    push de
    ld de, $0012
    call $3c23
    pop de
    ld c, $1e
    call $0468
    dec b
    jr nz, jr_004_63ab

    ret


    ld de, $000d
    call $3b97
    jp Jump_004_6459


    ld de, $00aa
    call $3c23
    call Call_004_6459
    call $3c55
    ld de, $000d
    call $3c23
    ret


    ret


    jr nz, jr_004_6400

    ld a, h
    ld d, $20
    ld h, $7c
    ld d, $26
    jr nz, jr_004_6464

    ld d, $26
    jr z, jr_004_6468

    ld [hl], $2b
    jr nz, jr_004_646c

    ld d, $2b
    jr z, jr_004_6470

    ld [hl], $30
    jr nz, jr_004_6474

    ld d, $30
    jr z, jr_004_6478

    ld [hl], $00
    nop
    nop
    nop

jr_004_6400:
    nop
    nop
    ld a, [hl]
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
    inc c
    inc c
    ld [de], a
    ld e, $21
    ccf
    inc sp
    dec l
    ld e, $12
    inc c
    inc c
    inc a
    ld d, c
    ld a, l
    ld d, $3c
    ld d, [hl]
    ld a, l
    ld d, $3b
    ld c, l
    ld a, l
    ld d, $3b
    ld e, d
    ld a, l
    ld d, $39
    ld c, c
    ld a, l
    ld d, $39
    ld e, l
    ld a, l
    ld d, $cd
    jr jr_004_6469

    jr nz, jr_004_643e

    ld a, $e0
    ldh [rOBP1], a
    ret


jr_004_643e:
    ld hl, $6451
    ld de, $d0f0
    ld bc, $0008
    ld a, $05
    call $306b
    ld a, $01
    ldh [$e5], a
    ret


    rst $38
    ld a, a
    ld a, a
    ld a, [hl+]
    rst $38
    inc b
    nop
    nop

Call_004_6459:
Jump_004_6459:
    ld c, $08

jr_004_645b:
    push bc
    call Call_004_6469
    ld c, $0a
    call $0468

jr_004_6464:
    pop bc
    dec c
    jr nz, jr_004_645b

jr_004_6468:
    ret


Call_004_6469:
jr_004_6469:
    call $3218

jr_004_646c:
    jr nz, jr_004_6475

    ldh a, [rOBP1]

jr_004_6470:
    xor $28
    ldh [rOBP1], a

jr_004_6474:
    ret


jr_004_6475:
    ldh a, [rSVBK]
    push af

jr_004_6478:
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d0f0
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push de
    ld c, $03

jr_004_6486:
    ld a, [hl+]
    ld e, a
    ld a, [hl-]
    ld d, a
    dec hl
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_004_6486

    pop de
    dec hl
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl], a
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    ret


Call_004_64a3:
    push bc
    ld a, [$d1ea]
    ld bc, $1020
    cp $01
    jr z, jr_004_64b1

    ld bc, $0000

jr_004_64b1:
    ld a, [de]
    add c
    inc de
    ld [hl+], a
    ld a, [de]
    add b
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    pop bc
    ret


    ld c, $04
    ld a, [bc]
    ld h, l
    inc bc
    adc $64
    ld c, b
    nop
    ld c, $04
    ld a, [$4c64]
    push af
    ld h, h
    ld d, h
    rrca
    ld l, $00
    adc e
    jr z, jr_004_64e7

    dec de
    nop
    inc [hl]
    ld de, $0900
    ld a, [c]
    ld h, h
    ld c, $04
    inc de
    ld h, l
    ld c, $04
    daa

jr_004_64e7:
    ld h, l
    ld bc, $c104
    ld h, d
    rrca
    nop
    nop
    adc d
    pop af
    sub e
    inc c
    ld d, $00
    ld d, $4e
    ld c, d
    ld [hl], b
    ld d, b
    call $3317
    call $0fdb
    call $3200
    call $3016
    call $04f0
    ret


    ld b, $00
    call $3340
    call $32f9
    ret


    ld a, $41
    ld hl, $60c7
    rst $08
    ld hl, $d84e
    ld a, [hl]
    srl a
    ld [hl+], a
    ld a, [hl]
    rra
    ld [hl+], a
    ld a, [hl]
    rra
    ld [hl], a
    ret


    ld a, [$dcb2]
    ld d, a
    ld a, [$dcb3]
    ld e, a
    ld a, $05
    ld hl, $5344
    rst $08
    ld a, c
    jr c, jr_004_6539

    xor a

jr_004_6539:
    ld [$d001], a
    ret


    inc e
    add hl, bc
    ld b, $00
    ld d, l
    ld h, l
    ld b, $01
    ld d, b
    ld h, l
    ld b, $02
    ld e, a
    ld h, l
    ld b, $03
    ld e, d
    ld h, l
    sub c
    ld l, c
    nop
    ld h, h
    ld h, l
    sub c
    ld l, c
    nop
    ld l, e
    ld h, l
    sub c
    ld l, c
    nop
    ld [hl], d
    ld h, l
    sub c
    ld l, c
    nop
    ld a, c
    ld h, l
    sub c
    ld c, a
    db $10
    inc h
    ld c, a
    stop
    ld b, a
    ld c, a
    db $10
    dec h
    ld c, a
    db $10
    ld bc, $4f47
    db $10
    ld h, $4f
    db $10
    ld [bc], a
    ld b, a
    ld c, a
    db $10
    daa
    ld c, a
    db $10
    inc bc
    ld b, a
    ld a, $2e
    ld hl, $4172
    rst $08
    jr c, jr_004_658d

    ld hl, $65ba
    jr jr_004_6590

jr_004_658d:
    ld hl, $65ad

jr_004_6590:
    call $31cd
    ld a, $01
    ld [$d0ec], a
    ret


    ld c, $04

jr_004_659b:
    push bc
    ld de, $0012
    call $3c4e
    ld de, $0022
    call $3c4e
    pop bc
    dec c
    jr nz, jr_004_659b

    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld c, $04
    sbc c
    ld h, l
    ld c, h
    jp $4965


    sub c
    ld a, h
    rrca
    dec [hl]
    nop
    ld c, h
    ret z

    ld h, l
    ld c, c
    sub c
    ld d, $77
    ld c, d
    ld [hl], b
    ld d, b
    ld d, $a9
    ld c, d
    ld [hl], b
    ld d, b
    call $1fbf
    ld de, $0006
    call $3c23
    ld a, $01
    ld hl, $6454
    rst $08
    ld hl, $d84d
    bit 2, [hl]
    ld hl, $66d3
    jr z, jr_004_65e9

    ld hl, $66db

jr_004_65e9:
    call $1d35
    call Call_004_6829
    ld a, [$d0d2]
    ld [$cf88], a
    call Call_004_68a4
    call $1e7f
    call Call_004_68d1
    call $2e31
    call $2e20
    ld a, $01
    ld hl, $64bf
    rst $08
    call Call_004_68de
    call $0485
    jr jr_004_6621

Jump_004_6612:
    call $1ad2
    call $0485
    call Call_004_6829
    ld a, [$d0d2]
    ld [$cf88], a

jr_004_6621:
    call Call_004_6669
    jr c, jr_004_6652

    call Call_004_68b4
    ld a, [$cf88]
    ld [$d0d2], a
    call $2009
    call $1bee
    call Call_004_67e5
    ld hl, $6644
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld [de], a
    ld h, [hl]
    ld d, d
    ld h, [hl]
    and d
    ld h, [hl]
    sbc c
    ld h, [hl]
    sub c
    ld h, [hl]
    ld e, a
    ld h, [hl]
    or c
    ld h, [hl]

jr_004_6652:
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call $0e5f
    pop af
    ldh [$d8], a
    call $1c07

jr_004_6662:
    call $2dcf
    call $0485
    ret


Call_004_6669:
    xor a
    ldh [$d4], a
    call Call_004_68b4
    call $1e70
    ld a, $ff
    ld [$cf74], a

jr_004_6677:
    call Call_004_68a7
    call $1f1a
    ld a, [$cf73]
    cp $02
    jr z, jr_004_668f

    cp $01
    jr z, jr_004_668a

    jr jr_004_6677

jr_004_668a:
    call $2009
    and a
    ret


jr_004_668f:
    scf
    ret


    call $1c07
    ld a, $80
    ldh [$a0], a
    ret


    call $1c07
    ld a, $80
    ldh [$a0], a
    jr jr_004_6662

    call $1c07
    ld hl, $d0e9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d0e8]
    rst $08
    jr jr_004_6662

    call Call_004_66b7
    jp Jump_004_6612


Call_004_66b7:
    call $31f3
    call $1d7d
    call $2bae
    call Call_004_68a4
    call $1e7f
    call Call_004_68de
    call $1ad2
    call $0d90
    call $2b5c
    ret


    ld b, b
    nop
    ld a, [bc]
    ld de, $e313
    ld h, [hl]
    ld bc, $0240
    ld a, [bc]
    ld de, $e313
    ld h, [hl]
    ld bc, $00a8
    ld a, $d0
    rst $28
    ld h, a
    db $eb
    ld h, [hl]
    scf
    ld l, c
    ld hl, $4e67
    ld h, a
    db $76
    ld l, c
    ld h, $67
    ld e, h
    ld h, a
    ld e, e
    ld l, c
    dec hl
    ld h, a
    ld l, e
    ld h, a
    jr z, jr_004_6768

    jr nc, jr_004_6768

    adc [hl]
    ld h, a
    dec bc
    ld l, c
    ld [hl-], a
    ld h, a
    sbc [hl]
    ld h, a
    inc e
    ld l, c
    scf
    ld h, a
    or c
    ld h, a
    db $ed
    ld l, b
    ld a, $67
    pop bc
    ld h, a
    ld c, h
    ld l, c
    ld b, e
    ld h, a
    ld a, d
    ld h, a
    ldh a, [rBCPS]
    ld c, c
    ld h, a
    pop de
    ld h, a
    ld d, h
    add e
    add h
    sub a
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, b
    adc a
    add b
    add d
    adc d
    ld d, b
    ld d, d
    ld d, b
    sub d
    add b
    sub l
    add h
    ld d, b
    adc [hl]
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    add h
    sub a
    adc b
    sub e
    ld d, b
    inc h
    add [hl]
    add h
    add b
    sub c
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    and e
    and b
    or e
    and b
    and c
    and b
    or d
    and h
    ld d, b
    adc a
    and b
    or c
    or e
    cp b
    ld a, a
    ld c, d
    ld c, [hl]
    or d
    or e
    and b
    or e

jr_004_6768:
    or h
    or d
    ld d, b
    add d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, [hl]
    xor b
    or e
    and h
    xor h
    or d
    ld d, b
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    call nc, $aa4e
    and h
    cp b
    ld a, a
    and e
    and h
    or l
    xor b
    and d
    and h
    ld d, b
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld c, [hl]
    or d
    or e
    and b
    or e
    or h
    or d
    ld d, b
    sub d
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, [hl]
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and h
    or d
    or d
    ld d, b
    add d
    and a
    and b
    xor l
    and [hl]
    and h
    ld c, [hl]
    or d
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    or d
    ld d, b
    add d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    xor h
    and h
    xor l
    or h
    ld d, b
    sub b
    or h
    xor b
    or e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and c
    and h
    ld a, a
    xor c
    or h
    and e
    and [hl]
    and h
    and e
    add sp, $50

Call_004_67e5:
    ld a, [$cf74]
    call Call_004_6819
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    push de
    ld a, [$cf74]
    call Call_004_6819
    inc hl
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call $1078
    ret


Jump_004_6800:
    push de
    ld a, [$cf74]
    cp $ff
    jr z, jr_004_6817

    call Call_004_6819
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call $1078
    ret


jr_004_6817:
    pop de
    ret


Call_004_6819:
    ld e, a
    ld d, $00
    ld hl, $cf97
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ret


Call_004_6829:
    xor a
    ld [$cf76], a
    call Call_004_688d
    ld hl, $d84c
    bit 0, [hl]
    jr z, jr_004_683c

    ld a, $00
    call Call_004_68a0

jr_004_683c:
    ld a, [$dcd7]
    and a
    jr z, jr_004_6847

    ld a, $01
    call Call_004_68a0

jr_004_6847:
    ld a, [$c2dc]
    and a
    jr nz, jr_004_6859

    ld hl, $d84d
    bit 2, [hl]
    jr nz, jr_004_6859

    ld a, $02
    call Call_004_68a0

jr_004_6859:
    ld hl, $d957
    bit 7, [hl]
    jr z, jr_004_6865

    ld a, $07
    call Call_004_68a0

jr_004_6865:
    ld a, $03
    call Call_004_68a0
    ld a, [$c2dc]
    and a
    jr nz, jr_004_687e

    ld hl, $d84d
    bit 2, [hl]
    ld a, $08
    jr nz, jr_004_687b

    ld a, $04

jr_004_687b:
    call Call_004_68a0

jr_004_687e:
    ld a, $05
    call Call_004_68a0
    ld a, $06
    call Call_004_68a0
    ld a, c
    ld [$d03e], a
    ret


Call_004_688d:
    xor a
    ld hl, $d03e
    ld [hl+], a
    ld a, $ff
    ld bc, $000f
    call $3041
    ld de, $d03f
    ld c, $00
    ret


Call_004_68a0:
    ld [de], a
    inc de
    inc c
    ret


Call_004_68a4:
    jp Jump_004_68b4


Call_004_68a7:
    call Call_004_68cb
    ret z

    call Call_004_68b4
    ld de, $c5b8
    jp Jump_004_6800


Call_004_68b4:
Jump_004_68b4:
    call Call_004_68cb
    ret z

    ld hl, $c5a4
    ld bc, $050a
    call $0fb6
    ld hl, $c5a4
    ld b, $03
    ld c, $08
    jp $1024


Call_004_68cb:
    ld a, [$cfd1]
    and $01
    ret


Call_004_68d1:
    ld hl, $d84d
    bit 2, [hl]
    ret z

    ld a, $09
    ld hl, $4bdc
    rst $08
    ret


Call_004_68de:
    ld hl, $d84d
    bit 2, [hl]
    jr nz, jr_004_68e6

    ret


jr_004_68e6:
    ld a, $09
    ld hl, $4be7
    rst $08
    ret


    ld a, $01
    ret


    ld hl, $6906
    call Call_004_6cf5
    jr c, jr_004_6903

    ld a, $04
    ld hl, $760b
    call $31cf
    ld a, $04
    ret


jr_004_6903:
    ld a, $00
    ret


    ld d, $6c
    ld e, d
    ld [hl], b
    ld d, b
    call $2879
    ld a, $05
    ld hl, $4a1a
    rst $08
    jr nc, jr_004_6919

    ld a, $00
    ret


jr_004_6919:
    ld a, $01
    ret


    call $2b29
    ld a, $01
    ld hl, $5b64
    rst $08
    ld a, $06
    ret


    call $2b29
    ld a, $09
    ld hl, $5105
    rst $08
    call $2b3c
    ld a, $00
    ret


    ld a, [$dcd7]
    and a
    jr z, jr_004_6949

    call $2b29
    ld a, $10
    ld hl, $4000
    rst $08
    call $2b3c

jr_004_6949:
    ld a, $00
    ret


    call $2b29
    ld a, $24
    ld hl, $4b8d
    rst $08
    call $2b3c
    ld a, $00
    ret


    call $2b29
    ld a, $04
    ld hl, $4000
    rst $08
    ld a, [$cf66]
    and a
    jr nz, jr_004_6970

    call $2b3c
    ld a, $00
    ret


jr_004_6970:
    call $2b4d
    ld a, $04
    ret


    ld a, [$dcd7]
    and a
    jr z, jr_004_69c8

    call $2b29

jr_004_697f:
    xor a
    ld [$d141], a
    call $31f3

jr_004_6986:
    ld a, $14
    ld hl, $404f
    rst $08
    ld a, $14
    ld hl, $4405
    rst $08
    ld a, $14
    ld hl, $43e0
    rst $08

jr_004_6998:
    ld a, $14
    ld hl, $405f
    rst $08
    ld a, $14
    ld hl, $449a
    rst $08
    call $31f6
    call $32f9
    call $045a
    ld a, $14
    ld hl, $4457
    rst $08
    jr c, jr_004_69c8

    call Call_004_6a88
    cp $03
    jr z, jr_004_6986

    cp $00
    jr z, jr_004_697f

    cp $01
    jr z, jr_004_6998

    cp $02
    jr z, jr_004_69ce

jr_004_69c8:
    call $2b3c
    ld a, $00
    ret


jr_004_69ce:
    ld a, b
    push af
    call $2b4d
    pop af
    ret


    ld a, [$d892]
    and a
    ret nz

    ld a, [$d8bc]
    and a
    ret nz

    ld a, [$d8d7]
    and a
    ret nz

    ld hl, $d859
    ld b, $39

jr_004_69e9:
    ld a, [hl+]
    and a
    jr nz, jr_004_69f2

    dec b
    jr nz, jr_004_69e9

    scf
    ret


jr_004_69f2:
    and a
    ret


    push de
    call Call_004_6a6c
    ld a, $03
    ld hl, $5427
    rst $08
    ld a, [$d142]
    and a
    jr nz, jr_004_6a3f

    ld hl, $6a45
    call $1d4f
    ld a, $09
    ld hl, $4fbf
    rst $08
    push af
    call $1c17
    call $1c07
    pop af
    jr c, jr_004_6a42

    ld hl, $6a4a
    call $1d4f
    call $1dcf
    push af
    call $1c07
    pop af
    jr c, jr_004_6a42

    pop hl
    ld a, [$d107]
    call $2f53
    call Call_004_6a6c
    ld hl, $6a4f
    call $1d4f
    call $1c07
    and a
    ret


jr_004_6a3f:
    call Call_004_6a54

jr_004_6a42:
    pop hl
    scf
    ret


    ld d, $90
    ld e, d
    ld [hl], b
    ld d, b
    ld d, $ad
    ld e, d
    ld [hl], b
    ld d, b
    ld d, $ca
    ld e, d
    ld [hl], b
    ld d, b

Call_004_6a54:
    ld hl, $6a5b
    call $1d67
    ret


    ld d, $df
    ld e, d
    ld [hl], b
    ld d, b

Call_004_6a60:
    ld hl, $6a67
    call $2012
    ret


    ld d, $03
    ld e, e
    ld [hl], b
    ld d, b

Call_004_6a6c:
    ld a, [$d106]
    ld [$d265], a
    call $3468
    call $30d6
    ret


Call_004_6a79:
    ld a, $14
    ld hl, $4405
    rst $08
    ld a, $23
    ld hl, $6a71
    rst $08
    ld a, $01
    ret


Call_004_6a88:
    ld hl, $c5cd
    ld bc, $0212
    call $0fb6
    ld a, $09
    ld hl, $4d19
    rst $08
    call $389c
    ld a, [$cf74]
    ld hl, $6ab0
    ld de, $0003
    call $30e1
    jr nc, jr_004_6aad

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_004_6aad:
    ld a, $00
    ret


    ld bc, $6e1b
    ld [bc], a
    jr nc, jr_004_6b24

    inc bc
    cp l
    ld l, [hl]
    inc b
    ld l, d
    ld l, [hl]
    ld b, $55
    ld l, [hl]
    rlca
    ld a, a
    ld l, [hl]
    ld [$6ed1], sp
    add hl, bc
    xor c
    ld l, [hl]
    ld a, [bc]
    and $6e
    dec c
    and $6e
    dec bc
    ld h, $6f
    dec b
    sub h
    ld l, [hl]
    inc c
    dec sp
    ld l, a
    ld c, $50
    ld l, a
    rrca
    nop
    ld l, [hl]
    db $10
    db $ec
    ld l, d
    ld de, $6b60
    ld [de], a
    ld a, c
    ld l, d
    inc de
    cp d
    ld l, a
    inc d
    ld b, l
    ld l, l
    ld a, [$dcd7]
    cp $02
    jr c, jr_004_6b58

    ld a, [$d109]
    inc a
    ld [$d0e3], a
    ld a, $23
    ld hl, $6a8c
    rst $08
    ld a, $14
    ld hl, $442d
    rst $08
    ld a, $04
    ld [$d141], a
    ld a, $14
    ld hl, $405f
    rst $08
    ld a, $14
    ld hl, $449a
    rst $08
    ld hl, $c4b4
    ld bc, $0028
    ld a, [$d0e3]
    dec a
    call $30fe

jr_004_6b24:
    ld [hl], $ec
    call $31f6
    call $32f9
    call $045a
    ld a, $14
    ld hl, $4457
    rst $08
    bit 1, b
    jr c, jr_004_6b58

    ld a, $14
    ld hl, $4f12
    rst $08
    xor a
    ld [$d141], a
    ld a, $14
    ld hl, $404f
    rst $08
    ld a, $14
    ld hl, $4405
    rst $08
    ld a, $14
    ld hl, $43e0
    rst $08
    ld a, $01
    ret


jr_004_6b58:
    xor a
    ld [$d141], a
    call Call_004_6a79
    ret


    ld a, [$d108]
    cp $fd
    jr z, jr_004_6ba6

    ld hl, $6c9b
    call $1d35
    call $1d81
    call $1c07
    jr c, jr_004_6ba6

    call $389c
    ld hl, $d073
    ld de, $d050
    ld bc, $000b
    call $3026
    ld a, [$cfa9]
    cp $01
    jr nz, jr_004_6ba0

    call $1d6e
    call $3317
    call Call_004_6ba9
    call $3317
    call $0e58
    call $1c07
    ld a, $00
    ret


jr_004_6ba0:
    call Call_004_6c60
    ld a, $03
    ret


jr_004_6ba6:
    ld a, $03
    ret


Call_004_6ba9:
    ld a, $04
    ld hl, $46a5
    rst $08

jr_004_6baf:
    ld a, $04
    ld hl, $46be
    rst $08
    ld a, [$cf66]
    and a
    jr z, jr_004_6bd8

    ld a, [$cf65]
    cp $02
    jr z, jr_004_6bd0

    call $2f46
    ld a, [$d142]
    and a
    jr nz, jr_004_6bd0

    call Call_004_6bd9
    jr jr_004_6bd8

jr_004_6bd0:
    ld hl, $6cd2
    call $1d67
    jr jr_004_6baf

jr_004_6bd8:
    ret


Call_004_6bd9:
    call $103e
    call Call_004_6a6c
    call Call_004_6cd7
    ld a, [hl]
    and a
    jr z, jr_004_6bf4

    push hl
    ld d, a
    ld a, $2e
    ld hl, $5e76
    rst $08
    pop hl
    jr c, jr_004_6c01

    ld a, [hl]
    jr jr_004_6c08

jr_004_6bf4:
    call Call_004_6cea
    ld hl, $6cb4
    call $1d67
    call Call_004_6c4c
    ret


jr_004_6c01:
    ld hl, $6cb9
    call $1d67
    ret


jr_004_6c08:
    ld [$d265], a
    call $3468
    ld hl, $6ccd
    call Call_004_6cf5
    jr c, jr_004_6c4b

    call Call_004_6cea
    ld a, [$d265]
    push af
    ld a, [$d106]
    ld [$d265], a
    pop af
    ld [$d106], a
    call Call_004_6cdf
    jr nc, jr_004_6c3c

    ld hl, $6caf
    call $1d67
    ld a, [$d265]
    ld [$d106], a
    call Call_004_6c4c
    ret


jr_004_6c3c:
    ld a, [$d265]
    ld [$d106], a
    call Call_004_6cdf
    ld hl, $6cc3
    call $1d67

jr_004_6c4b:
    ret


Call_004_6c4c:
    call Call_004_6cd7
    ld a, [$d106]
    ld [hl], a
    ld d, a
    ld a, $2e
    ld hl, $5e76
    rst $08
    jr nc, jr_004_6c5f

    call Call_004_6cfe

jr_004_6c5f:
    ret


Call_004_6c60:
    call $103e
    call Call_004_6cd7
    ld a, [hl]
    and a
    jr z, jr_004_6c8c

    ld [$d106], a
    call Call_004_6cdf
    jr nc, jr_004_6c94

    ld a, $2e
    ld hl, $5e76
    rst $08
    call Call_004_6cd7
    ld a, [hl]
    ld [$d265], a
    ld [hl], $00
    call $3468
    ld hl, $6cc8
    call $1d67
    jr jr_004_6c9a

jr_004_6c8c:
    ld hl, $6cbe
    call $1d67
    jr jr_004_6c9a

jr_004_6c94:
    ld hl, $6cc3
    call $1d67

jr_004_6c9a:
    ret


    ld d, b
    inc c
    inc c
    ld de, $a313
    ld l, h
    ld bc, $0280
    add [hl]
    adc b
    sub l
    add h
    ld d, b
    sub e
    add b
    adc d
    add h
    ld d, b
    ld d, $2c
    ld e, e
    ld [hl], b
    ld d, b
    ld d, $57
    ld e, e
    ld [hl], b
    ld d, b
    ld d, $6f
    ld e, e
    ld [hl], b
    ld d, b
    ld d, $8e
    ld e, e
    ld [hl], b
    ld d, b
    ld d, $aa
    ld e, e
    ld [hl], b
    ld d, b
    ld d, $c4
    ld e, e
    ld [hl], b
    ld d, b
    ld d, $dc
    ld e, e
    ld [hl], b
    ld d, b
    ld d, $09
    ld e, h
    ld [hl], b
    ld d, b

Call_004_6cd7:
    push af
    ld a, $01
    call $3917
    pop af
    ret


Call_004_6cdf:
    ld a, $01
    ld [$d10c], a
    ld hl, $d892
    jp $2f66


Call_004_6cea:
    ld a, $01
    ld [$d10c], a
    ld hl, $d892
    jp $2f53


Call_004_6cf5:
    call $1d4f
    call $1dcf
    jp $1c07


Call_004_6cfe:
    ld de, $d002
    ld a, $04
    ld hl, $5e75
    rst $08
    ld hl, $d47d
    ld de, $d023
    ld bc, $000a
    call $3026
    ld hl, $d47b
    ld bc, $0002
    call $3026
    ld a, [$d108]
    ld [de], a
    inc de
    ld a, [$d106]
    ld [de], a
    ld a, [$d109]
    ld hl, $a600
    ld bc, $002f
    call $30fe
    ld d, h
    ld e, l
    ld hl, $d002
    ld bc, $002f
    ld a, $00
    call $2fcb
    call $3026
    call $2fe1
    ret


    ld a, [$c2dc]
    cp $01
    jr z, jr_004_6d6d

    cp $02
    jr z, jr_004_6d6d

    ld hl, $6dc9
    call $1d35
    call $1d81
    call $1c07
    jp c, Jump_004_6dc6

    ld a, [$cfa9]
    cp $01
    jr z, jr_004_6d6d

    cp $02
    jr z, jr_004_6d76

    jp Jump_004_6dc6


jr_004_6d6d:
    ld a, $2e
    ld hl, $5229
    rst $08
    ld a, $00
    ret


jr_004_6d76:
    ld hl, $6df1
    call Call_004_6cf5
    jr c, jr_004_6d9a

    ld a, [$d109]
    ld b, a
    ld a, $11
    ld hl, $456e
    rst $08
    jr c, jr_004_6d92

    ld hl, $6dfb
    call $1d67
    jr jr_004_6dc6

jr_004_6d92:
    ld hl, $6df6
    call $1d67
    jr jr_004_6dc6

jr_004_6d9a:
    ld hl, $6de2
    call Call_004_6cf5
    jr c, jr_004_6dc6

    call Call_004_6cd7
    ld a, [hl]
    ld [$d106], a
    call Call_004_6cdf
    jr nc, jr_004_6dbe

    call Call_004_6cd7
    ld [hl], $00
    call $389c
    ld hl, $6de7
    call $1d67
    jr jr_004_6dc6

jr_004_6dbe:
    ld hl, $6dec
    call $1d67
    jr jr_004_6dc6

Jump_004_6dc6:
jr_004_6dc6:
    ld a, $03
    ret


    ld b, b
    ld a, [bc]
    inc c
    ld de, $d113
    ld l, l
    ld bc, $0380
    sub c
    add h
    add b
    add e
    ld d, b
    sub e
    add b
    adc d
    add h
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld d, $22
    ld e, h
    ld [hl], b
    ld d, b
    ld d, $47
    ld e, h
    ld [hl], b
    ld d, b
    ld d, $62
    ld e, h
    ld [hl], b
    ld d, b
    ld d, $86
    ld e, h
    ld [hl], b
    ld d, b
    ld d, $a9
    ld e, h
    ld [hl], b
    ld d, b
    ld d, $c4
    ld e, h
    ld [hl], b
    ld d, b
    call $1d6e
    call $300b
    xor a
    ld [$cf5f], a
    call $3c9d
    ld a, $25
    call $2d83
    call $3c97
    call $1d7d
    ld a, $00
    ret


    ld a, $03
    ld hl, $4785
    rst $08
    ld a, [$d0ec]
    cp $01
    jr nz, jr_004_6e2d

    ld b, $04
    ld a, $02
    ret


jr_004_6e2d:
    ld a, $03
    ret


    ld a, $03
    ld hl, $4a3b
    rst $08
    ld a, [$d0ec]
    cp $02
    jr z, jr_004_6e4c

    cp $00
    jr z, jr_004_6e4f

    ld a, $41
    ld hl, $60b5
    rst $08
    ld b, $04
    ld a, $02
    ret


jr_004_6e4c:
    ld a, $03
    ret


jr_004_6e4f:
    ld a, $00
    ret


    ld a, $01
    ret


    ld a, $03
    ld hl, $48ac
    rst $08
    ld a, [$d0ec]
    cp $01
    jr nz, jr_004_6e67

    ld b, $04
    ld a, $02
    ret


jr_004_6e67:
    ld a, $03
    ret


    ld a, $03
    ld hl, $4ce5
    rst $08
    ld a, [$d0ec]
    cp $01
    jr nz, jr_004_6e7c

    ld b, $04
    ld a, $02
    ret


jr_004_6e7c:
    ld a, $03
    ret


    ld a, $03
    ld hl, $4d9d
    rst $08
    ld a, [$d0ec]
    cp $01
    jr nz, jr_004_6e91

    ld b, $04
    ld a, $02
    ret


jr_004_6e91:
    ld a, $03
    ret


    ld a, $03
    ld hl, $4ade
    rst $08
    ld a, [$d0ec]
    cp $01
    jr nz, jr_004_6ea6

    ld b, $04
    ld a, $02
    ret


jr_004_6ea6:
    ld a, $03
    ret


    ld a, $03
    ld hl, $4c61
    rst $08
    ld a, [$d0ec]
    and a
    jr z, jr_004_6eba

    ld b, $04
    ld a, $02
    ret


jr_004_6eba:
    ld a, $03
    ret


    ld a, $03
    ld hl, $4909
    rst $08
    ld a, [$d0ec]
    and a
    jr z, jr_004_6ece

    ld b, $04
    ld a, $02
    ret


jr_004_6ece:
    ld a, $03
    ret


    ld a, $03
    ld hl, $4b9c
    rst $08
    ld a, [$d0ec]
    cp $01
    jr nz, jr_004_6ee3

    ld b, $04
    ld a, $02
    ret


jr_004_6ee3:
    ld a, $03
    ret


    call Call_004_6f05
    jr nc, jr_004_6ef3

    ld a, $03
    ld hl, $73df
    rst $08
    jr jr_004_6ef9

jr_004_6ef3:
    ld hl, $6f00
    call $1057

jr_004_6ef9:
    xor a
    ld [$d141], a
    ld a, $03
    ret


Call_004_6f00:
    ld d, $e3
    ld e, h
    ld [hl], b
    ld d, b

Call_004_6f05:
    ld a, $24
    call $3917
    ld a, [hl+]
    ldh [$b3], a
    ld a, [hl]
    ldh [$b4], a
    ld a, $05
    ldh [$b7], a
    ld b, $02
    call $3124
    ld a, $23
    call $3917
    ldh a, [$b6]
    sub [hl]
    dec hl
    ldh a, [$b5]
    sbc [hl]
    ret


    ld a, $03
    ld hl, $4e7d
    rst $08
    ld a, [$d0ec]
    cp $01
    jr nz, jr_004_6f38

    ld b, $04
    ld a, $02
    ret


jr_004_6f38:
    ld a, $03
    ret


    ld a, $03
    ld hl, $4eeb
    rst $08
    ld a, [$d0ec]
    cp $01
    jr nz, jr_004_6f4d

    ld b, $04
    ld a, $02
    ret


jr_004_6f4d:
    ld a, $03
    ret


    ld a, $14
    ld hl, $46bc
    rst $08
    ld b, $04
    ld a, $02
    ret


    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call $0e58
    call Call_004_6f73
    pop bc
    ld a, b
    ld [$cfcc], a
    push af
    call $31f3
    pop af
    ret


Call_004_6f73:
    call Call_004_7172
    ld de, $6fb2
    call $1bb1
    call Call_004_71ef
    ld hl, $cfa5
    set 6, [hl]
    jr jr_004_6f93

Jump_004_6f86:
    call $1bd3
    bit 1, a
    jp nz, Jump_004_6f9f

    bit 0, a
    jp nz, Jump_004_6f9c

jr_004_6f93:
    call Call_004_7235
    call Call_004_7256
    jp Jump_004_6f86


Jump_004_6f9c:
    and a
    jr jr_004_6fa0

Jump_004_6f9f:
    scf

jr_004_6fa0:
    push af
    xor a
    ld [$d0e3], a
    ld hl, $cfa5
    res 6, [hl]
    call $300b
    call $0fc8
    pop af
    ret


    inc bc
    ld bc, $0103
    ld b, b
    nop
    jr nz, @-$3b

    ld a, [$d108]
    cp $fd
    jr z, jr_004_6fd2

    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call Call_004_6fd5
    pop af
    ld [$cfcc], a
    call $31f3

jr_004_6fd2:
    ld a, $00
    ret


Call_004_6fd5:
Jump_004_6fd5:
    ld a, [$d109]
    inc a
    ld [$d0d8], a
    call Call_004_7172
    call Call_004_72d3
    ld de, $7163
    call $1bb1

Jump_004_6fe8:
    call Call_004_71ef
    ld hl, $cfa5
    set 6, [hl]
    jr jr_004_7009

Jump_004_6ff2:
    call $1bd3
    bit 1, a
    jp nz, Jump_004_7038

    bit 0, a
    jp nz, Jump_004_70c6

    bit 4, a
    jp nz, Jump_004_705b

    bit 5, a
    jp nz, Jump_004_7075

jr_004_7009:
    call Call_004_7235
    ld a, [$d0e3]
    and a
    jr nz, jr_004_7018

    call Call_004_7256
    jp Jump_004_6ff2


Jump_004_7018:
jr_004_7018:
    ld a, $7f
    ld hl, $c57d
    ld bc, $0005
    call $3041
    ld hl, $c591
    ld bc, $0512
    call $0fb6
    ld hl, $c591
    ld de, $716b
    call $1078
    jp Jump_004_6ff2


Jump_004_7038:
    call $2009
    call $3c55
    ld a, [$d0e3]
    and a
    jp z, Jump_004_7154

    ld a, [$d0e3]
    ld [$cfa9], a
    xor a
    ld [$d0e3], a
    ld hl, $c4c9
    ld bc, $0812
    call $0fb6
    jp Jump_004_6fe8


Jump_004_705b:
    ld a, [$d0e3]
    and a
    jp nz, Jump_004_6ff2

    ld a, [$d109]
    ld b, a
    push bc
    call Call_004_708f
    pop bc
    ld a, [$d109]
    cp b
    jp z, Jump_004_6ff2

    jp Jump_004_6fd5


Jump_004_7075:
    ld a, [$d0e3]
    and a
    jp nz, Jump_004_6ff2

    ld a, [$d109]
    ld b, a
    push bc
    call Call_004_70a7
    pop bc
    ld a, [$d109]
    cp b
    jp z, Jump_004_6ff2

    jp Jump_004_6fd5


Call_004_708f:
jr_004_708f:
    ld a, [$d109]
    inc a
    ld [$d109], a
    ld c, a
    ld b, $00
    ld hl, $dcd8
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_004_70a7

    cp $fd
    ret nz

    jr jr_004_708f

Call_004_70a7:
jr_004_70a7:
    ld a, [$d109]
    and a
    ret z

jr_004_70ac:
    ld a, [$d109]
    dec a
    ld [$d109], a
    ld c, a
    ld b, $00
    ld hl, $dcd8
    add hl, bc
    ld a, [hl]
    cp $fd
    ret nz

    ld a, [$d109]
    and a
    jr z, jr_004_708f

    jr jr_004_70ac

Jump_004_70c6:
    call $2009
    call $3c55
    ld a, [$d0e3]
    and a
    jr nz, jr_004_70de

    ld a, [$cfa9]
    ld [$d0e3], a
    call $1bee
    jp Jump_004_7018


jr_004_70de:
    ld hl, $dce1
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    push hl
    call Call_004_713a
    pop hl
    ld bc, $0015
    add hl, bc
    call Call_004_713a
    ld a, [$d22d]
    jr z, jr_004_7113

    ld hl, $c62e
    ld bc, $0020
    ld a, [$d109]
    call $30fe
    push hl
    call Call_004_713a
    pop hl
    ld bc, $0006
    add hl, bc
    call Call_004_713a

jr_004_7113:
    ld de, $0020
    call $3c23
    call $3c55
    ld de, $0020
    call $3c23
    call $3c55
    ld hl, $c4c9
    ld bc, $0812
    call $0fb6
    ld hl, $c572
    ld bc, $0109
    call $0fb6
    jp Jump_004_6fe8


Call_004_713a:
    push hl
    ld a, [$cfa9]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$d0e3]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    ld b, [hl]
    ld [hl], a
    ld a, b
    ld [de], a
    ret


Jump_004_7154:
    xor a
    ld [$d0e3], a
    ld hl, $cfa5
    res 6, [hl]
    call $300b
    jp $0fc8


    inc bc
    ld bc, $0103
    ld b, b
    nop
    jr nz, @-$0b

    sub [hl]
    and a
    and h
    or c
    and h
    and $50

Call_004_7172:
    call $31f3
    call $0fc8
    call $300b
    xor a
    ldh [$d4], a
    ld a, $3e
    ld hl, $7571
    rst $08
    ld a, $23
    ld hl, $6814
    rst $08
    ld a, [$d109]
    ld e, a
    ld d, $00
    ld hl, $dcd8
    add hl, de
    ld a, [hl]
    ld [$d265], a
    ld e, $02
    ld a, $23
    ld hl, $683f
    rst $08
    ld hl, $c4b4
    ld b, $09
    ld c, $12
    call $0fe8
    ld hl, $c57c
    ld b, $05
    ld c, $12
    call $0fe8
    ld hl, $c4a2
    ld bc, $0203
    call $0fb6
    xor a
    ld [$cf5f], a
    ld hl, $de41
    ld a, [$d109]
    call $38a2
    ld hl, $c4b9
    call $1078
    push bc
    ld a, $14
    ld hl, $484a
    rst $08
    pop hl
    call $382d
    ld hl, $cd99
    call $334e
    ld b, $0e
    call $3340
    ld hl, $c4b0
    ld bc, $0103
    jp $0fb6


Call_004_71ef:
    xor a
    ldh [$d4], a
    ld [$d0e3], a
    ld [$cf5f], a
    ld a, $1f
    call $2d83
    ld hl, $d110
    ld de, $d25e
    ld bc, $0004
    call $3026
    ld a, $28
    ld [$d1ea], a
    ld hl, $c4de
    ld a, $20
    call $2d83
    ld hl, $c4fa
    ld a, $23
    call $2d83
    call $31f6
    call $32f9
    ld a, [$d0eb]
    inc a
    ld [$cfa3], a
    ld hl, $c57c
    ld b, $05
    ld c, $12
    jp $0fe8


Call_004_7235:
    ld hl, $dce1
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    ld a, [$cfa9]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$cf60], a
    ld hl, $c591
    ld bc, $0512
    jp $0fb6


Call_004_7256:
    xor a
    ldh [$d4], a
    ld hl, $c568
    ld de, $72ba
    call $1078
    ld hl, $c57c
    ld de, $72c2
    call $1078
    ld hl, $c59c
    ld de, $72ca
    call $1078
    ld a, [$cf60]
    ld b, a
    ld hl, $c592
    ld a, $2a
    call $2d83
    ld a, [$cf60]
    dec a
    ld hl, $5afd
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    ld hl, $c5a0
    cp $02
    jr c, jr_004_72a7

    ld [$d265], a
    ld de, $d265
    ld bc, $0103
    call $3198
    jr jr_004_72ad

jr_004_72a7:
    ld de, $72cf
    call $1078

jr_004_72ad:
    ld hl, $c5b9
    ld a, $11
    call $2d83
    ld a, $01
    ldh [$d4], a
    ret


    ld a, c
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, d
    ld a, e
    ld d, b
    ld a, h
    sub e
    sbc b
    adc a
    add h
    di
    ld a, l
    ld d, b
    add b
    sub e
    adc d
    di
    ld d, b
    db $e3
    db $e3
    db $e3
    ld d, b

Call_004_72d3:
    call Call_004_72da
    call Call_004_72fe
    ret


Call_004_72da:
    ld a, [$d109]
    and a
    ret z

    ld c, a
    ld e, a
    ld d, $00
    ld hl, $dcd7
    add hl, de

jr_004_72e7:
    ld a, [hl]
    and a
    jr z, jr_004_72f3

    cp $fd
    jr z, jr_004_72f3

    cp $fc
    jr c, jr_004_72f8

jr_004_72f3:
    dec hl
    dec c
    jr nz, jr_004_72e7

    ret


jr_004_72f8:
    ld hl, $c4b0
    ld [hl], $71
    ret


Call_004_72fe:
    ld a, [$d109]
    inc a
    ld c, a
    ld a, [$dcd7]
    cp c
    ret z

    ld e, c
    ld d, $00
    ld hl, $dcd8
    add hl, de

jr_004_730f:
    ld a, [hl]
    cp $ff
    ret z

    and a
    jr z, jr_004_731e

    cp $fd
    jr z, jr_004_731e

    cp $fc
    jr c, jr_004_7321

jr_004_731e:
    inc hl
    jr jr_004_730f

jr_004_7321:
    ld hl, $c4b2
    ld [hl], $ed
    ret


    call Call_004_7345
    jr c, jr_004_732f

    jp Jump_004_73c3


jr_004_732f:
    call $2e08
    ld b, $04
    ld hl, $7340
    call $269a
    call $0a46
    jp $2dcf


    ld d, $f3
    ld e, h
    ld [hl], b
    ld d, b

Call_004_7345:
    ld a, [$d95b]
    and a
    jr z, jr_004_739d

    and $c0
    rlca
    rlca
    ld hl, $7354
    rst $28
    ret


    ld e, h
    ld [hl], e
    add a
    ld [hl], e
    ld [hl], c
    ld [hl], e
    sbc e
    ld [hl], e
    ld hl, $d892
    call Call_004_73a6
    jr c, jr_004_739d

    inc hl
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    call Call_004_73b6
    jr c, jr_004_739d

    and a
    ret


    ld a, [$d95c]
    ld hl, $d8bd
    ld de, $0001
    call $30e1
    jr nc, jr_004_739d

    ld a, [$d95c]
    ld [$d106], a
    and a
    ret


    ld hl, $d8d7
    call Call_004_73a6
    jr nc, jr_004_739d

    inc hl
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    call Call_004_73b6
    jr c, jr_004_739d

    ret


    jr jr_004_739d

jr_004_739d:
    xor a
    ld [$d95b], a
    ld [$d95c], a
    scf
    ret


Call_004_73a6:
    ld a, [$d95b]
    and $3f
    dec a
    cp [hl]
    jr nc, jr_004_73b4

    ld [$d107], a
    and a
    ret


jr_004_73b4:
    scf
    ret


Call_004_73b6:
    ld a, [$d95c]
    cp [hl]
    jr nz, jr_004_73c1

    ld [$d106], a
    and a
    ret


jr_004_73c1:
    scf
    ret


Jump_004_73c3:
    ld a, $03
    ld hl, $5453
    rst $08
    ld a, [$d142]
    ld hl, $73d1
    rst $28
    ret


    ld [hl+], a
    ld [hl], h
    rst $18
    ld [hl], e
    rst $18
    ld [hl], e
    rst $18
    ld [hl], e
    ld [$f573], a
    ld [hl], e
    ld b, $74
    call $2e08
    call Call_004_6a60
    call $2dcf
    and a
    ret


    call $2e08
    call $2f3f
    call $2dcf
    and a
    ret


    call $2dba
    call $2b29
    call $2f3f
    call $2b3c
    call $2dcf
    and a
    ret


    call $2dba
    ld a, $01
    ld [$d0ef], a
    call $2f3f
    xor a
    ld [$d0ef], a
    ld a, [$d0ec]
    cp $01
    jr nz, jr_004_7425

    scf
    ld a, $80
    ldh [$a0], a
    ret


    call $2dba

jr_004_7425:
    call Call_004_6a60
    call $2dcf
    and a
    ret


    call Call_004_744a
    call Call_004_747d
    jr c, jr_004_7448

    ld [$d041], a
    call Call_004_74dd
    jr c, jr_004_7448

    ld hl, $d041
    cp [hl]
    jr z, jr_004_7448

    call Call_004_74c0
    and a
    ret


jr_004_7448:
    scf
    ret


Call_004_744a:
    ld a, b
    ld [$d03e], a
    ld a, e
    ld [$d03f], a
    ld a, d
    ld [$d040], a
    call Call_004_745a
    ret


Call_004_745a:
    ld de, $d0f0
    ld bc, $0004
    ld hl, $d03f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d03e]
    call $304d
    inc hl
    ld [de], a
    inc de

jr_004_746f:
    ld a, [$d03e]
    call $304d
    ld [de], a
    inc de
    add hl, bc
    cp $ff
    jr nz, jr_004_746f

    ret


Call_004_747d:
    ld hl, $d03f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d03e]
    call $304d
    ld c, a
    inc hl
    ld a, [$dcad]
    ld d, a
    ld a, [$dcae]
    ld e, a
    ld b, $00

jr_004_7495:
    ld a, [$d03e]
    call $304d
    cp $ff
    jr z, jr_004_74be

    inc hl
    inc hl
    ld a, [$d03e]
    call $304d
    inc hl
    cp d
    jr nz, jr_004_74b7

    ld a, [$d03e]
    call $304d
    inc hl
    cp e
    jr nz, jr_004_74b8

    jr jr_004_74bb

jr_004_74b7:
    inc hl

jr_004_74b8:
    inc b
    jr jr_004_7495

jr_004_74bb:
    xor a
    ld a, b
    ret


jr_004_74be:
    scf
    ret


Call_004_74c0:
    push af
    ld hl, $d03f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    pop af
    ld bc, $0004
    call $30fe
    inc hl
    ld de, $dcac
    ld a, [$d03e]
    ld bc, $0003
    call $0e8d
    ret


Call_004_74dd:
    call $1d6e
    ld hl, $750d
    call $1057
    call Call_004_7512
    ld hl, $7550
    call $1d3c
    call $352f
    call $1ad2
    xor a
    ld [$d0e4], a
    call $350c
    call $1c17
    ld a, [$cf73]
    cp $02
    jr z, jr_004_750b

    xor a
    ld a, [$cf77]
    ret


jr_004_750b:
    scf
    ret


    ld d, $bc
    ld d, d
    ld l, a
    ld d, b

Call_004_7512:
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    ld hl, $c4a0
    ld b, $04
    ld c, $08
    call $0fe8
    ld hl, $c4c9
    ld de, $7537
    call $1078
    ld hl, $c4f4
    call Call_004_753f
    pop af
    ld [$cfcc], a
    ret


    adc l
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    xor l
    sbc h
    ld d, b

Call_004_753f:
    push hl
    ld a, [$d041]
    ld e, a
    ld d, $00
    ld hl, $d0f1
    add hl, de
    ld a, [hl]
    pop de
    call Call_004_756b
    ret


    ld b, b
    ld bc, $090c
    ld [de], a
    ld e, b
    ld [hl], l
    ld bc, $0410
    nop
    ld bc, $f000
    ret nc

    inc b
    ld l, b
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$cf74]

Call_004_756b:
    push de
    call Call_004_7575
    ld d, h
    ld e, l
    pop hl
    jp $1078


Call_004_7575:
    push de
    ld e, a
    ld d, $00
    ld hl, $7583
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    ret


    and e
    ld [hl], l
    and a
    ld [hl], l
    xor e
    ld [hl], l
    xor a
    ld [hl], l
    or e
    ld [hl], l
    or [hl]
    ld [hl], l
    cp c
    ld [hl], l
    cp h
    ld [hl], l
    cp a
    ld [hl], l
    jp nz, $c575

    ld [hl], l
    ret z

    ld [hl], l
    bit 6, l
    adc $75
    jp nc, $d675

    ld [hl], l
    add c
    ld a, [$5085]
    add c
    ld sp, hl
    add l
    ld d, b
    add c
    ld hl, sp-$7b
    ld d, b
    add c
    rst $30
    add l
    ld d, b
    rst $30
    add l
    ld d, b
    ld hl, sp-$7b
    ld d, b
    ld sp, hl
    add l
    ld d, b
    ld a, [$5085]
    ei
    add l
    ld d, b
    db $fc
    add l
    ld d, b
    db $fd
    add l
    ld d, b
    cp $85
    ld d, b
    rst $38
    add l
    ld d, b
    rst $30
    or $85
    ld d, b
    rst $30
    rst $30
    add l
    ld d, b
    sub c
    adc [hl]
    adc [hl]
    add l
    ld d, b
    xor a
    ld [$df9c], a
    ld a, $14
    ld [$dc79], a
    ld a, $04
    ld hl, $5490
    rst $08
    ret


    ld e, $03
    ld b, $5b
    ld e, a
    ld h, b
    add hl, de
    ld a, c
    call c, $0308
    db $76
    sub c
    add l
    daa
    nop
    ld b, a
    ld c, h
    rrca
    db $76
    ld d, h
    inc bc
    dec bc
    db $76
    add l
    daa
    nop
    ld b, a
    ld c, h
    inc d
    db $76
    ld d, h
    ld c, c
    inc c
    ld d, $00
    ld d, $ca
    ld d, d
    ld l, a
    ld d, b
    ld d, $e7
    ld d, d
    ld l, a
    ld d, b
    ld b, a
    ld c, h
    jr nz, jr_004_7693

    ld d, h
    ld c, c
    sub c
    ld d, $08
    ld d, e
    ld l, a
    ld d, b
    ld b, a
    add hl, de
    ld b, b
    ret nc

    ld b, c
    nop
    nop
    ld c, h
    ld b, l
    db $76
    rra
    rst $38
    ld bc, $3e08
    db $76
    ld c, $04
    ld c, a
    db $76
    adc b
    ld b, l
    inc bc
    ld b, e
    db $76
    ld d, l
    ld c, h
    ld c, d
    db $76
    ld d, h
    ld c, c
    sub c
    ld d, $21
    ld d, e
    ld l, a
    ld d, b
    ld d, $31
    ld d, e
    ld l, a
    ld d, b
    ld hl, $d03e
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld b, $01
    call $2e6f
    ret


    ld a, c
    ld de, $0003
    ld hl, $7681
    call $30e1
    jr nc, jr_004_767f

    ld a, $0c
    ld [$d03f], a
    inc hl
    ld a, [hl+]
    ld [$d040], a
    ld a, [hl+]
    ld [$d041], a
    ld a, $04
    ld hl, $769a
    call $261f
    scf
    ret


jr_004_767f:
    xor a
    ret


    sub c
    inc bc
    nop
    sub e
    ld sp, $9400
    dec bc
    nop
    sub l
    rlca
    nop
    sub [hl]
    ld b, $00
    sub a
    add hl, bc
    nop

jr_004_7693:
    sbc l
    ld [$9f00], sp
    dec b
    nop
    rst $38
    inc bc
    ccf
    ret nc

    call Call_004_7900
    ld a, $41
    ld hl, $5f79
    rst $08
    call Call_004_7819
    ld a, [$d00a]
    call Call_004_7730
    ld a, [$d00b]
    ld [$d265], a
    call $343b
    ld hl, $7719
    call $1057
    ld a, [$d006]
    call Call_004_7730
    ld a, [$d007]
    ld [$d265], a
    call $343b
    ld hl, $7702
    call $1057
    ld a, [$d002]
    call Call_004_7730
    ld a, [$d003]
    ld [$d265], a
    call $343b
    ld hl, $76eb
    call $1057
    jp Jump_004_7807


    ld d, $fa
    ld d, b
    ld [hl], b
    ld [$9911], sp
    nop
    call $3c23
    call $3c55
    ld hl, $76fd
    ret


    ld d, $3f
    ld d, c
    ld [hl], b
    ld d, b
    ld d, $66
    ld d, c
    ld [hl], b
    ld [$9811], sp
    nop
    call $3c23
    call $3c55
    ld hl, $7714
    ret


    ld d, $96
    ld d, c
    ld [hl], b
    ld d, b
    ld d, $b5
    ld d, c
    ld [hl], b
    ld [$9411], sp
    nop
    call $3c23
    call $3c55
    ld hl, $772b
    ret


    ld d, $e4
    ld d, c
    ld [hl], b
    ld d, b

Call_004_7730:
    dec a
    jr z, jr_004_7777

    ld c, a
    ld b, $00
    ld hl, $7783
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    push hl
    push bc
    ld hl, $552d
    ld a, $0e
    rst $08
    ld hl, $d073
    ld de, $d016
    ld bc, $000d
    call $3026
    ld hl, $d016

jr_004_7757:
    ld a, [hl+]
    cp $50
    jr nz, jr_004_7757

    dec hl
    ld [hl], $7f
    inc hl
    ld d, h
    ld e, l
    pop bc
    pop hl
    push de
    ld a, [hl]
    ld b, a
    ld hl, $594c
    ld a, $0e
    rst $08
    ld hl, $d073
    pop de
    ld bc, $000a
    jp $3026


jr_004_7777:
    ld hl, $d47d
    ld de, $d016
    ld bc, $000b
    jp $3026


    sbc c
    ld [hl], a
    sbc c
    ld [hl], a
    and h
    ld [hl], a
    xor a
    ld [hl], a
    cp d
    ld [hl], a
    push bc
    ld [hl], a
    ret nc

    ld [hl], a
    db $db
    ld [hl], a
    and $77
    pop af
    ld [hl], a
    db $fc
    ld [hl], a
    inc h
    ld bc, $0fcc
    ld [bc], a
    rrca
    ld h, h
    ld [bc], a
    pop bc
    ld [hl-], a
    ld [bc], a
    inc h
    inc bc
    ld sp, $0297
    inc c
    ld c, c
    ld [bc], a
    rrca
    ld d, e
    ld [bc], a
    dec de
    ld bc, $e1d4
    inc bc
    call $03a1
    sub $b0
    ld [bc], a
    dec sp
    ld bc, $aad6
    ld [bc], a
    ld a, e
    and b
    ld [bc], a
    xor b
    ld l, c
    ld [bc], a
    inc h
    dec b
    cpl
    ld b, [hl]
    ld [bc], a
    inc c
    ld c, b
    ld [bc], a
    call z, $020f
    ld [hl], $05
    ld a, a
    and b
    ld [bc], a
    call z, $020f
    and [hl]
    ld h, h
    ld [bc], a
    dec [hl]
    dec b
    and [hl]
    ld l, c
    ld [bc], a
    inc c
    ld e, b
    ld [bc], a
    pop bc
    rrca
    ld [bc], a
    inc h
    rlca
    ld a, e
    and b
    ld [bc], a
    pop bc
    inc h
    ld [bc], a
    xor b
    ld l, c
    ld [bc], a
    ld d, $05
    pop bc
    ld sp, $7f02
    sbc a
    ld [bc], a
    cpl
    ld b, [hl]
    ld [bc], a
    rla
    ld [bc], a
    xor b
    ld l, d
    ld [bc], a
    ld sp, $0296
    rrca
    ld d, b
    ld [bc], a

Jump_004_7807:
    ld hl, $d00a
    ld de, $fffc
    ld b, $03

jr_004_780f:
    ld a, [hl]
    cp $01
    jr z, jr_004_7818

    add hl, de
    dec b
    jr nz, jr_004_780f

jr_004_7818:
    ret


Call_004_7819:
    call Call_004_7833
    call Call_004_78b0
    ld hl, $d00e
    ld a, $01
    ld [hl+], a
    ld a, [$df9c]
    ld [hl+], a
    ldh a, [$b3]
    ld [hl+], a
    ldh a, [$b4]
    ld [hl], a
    call Call_004_783e
    ret


Call_004_7833:
    ld hl, $d002
    ld b, $0c
    xor a

jr_004_7839:
    ld [hl+], a
    dec b
    jr nz, jr_004_7839

    ret


Call_004_783e:
    ld de, $d010
    ld hl, $d004
    ld c, $02
    call $31db
    jr c, jr_004_786b

    ld hl, $d006
    ld de, $d00a
    ld bc, $0004
    call $3026
    ld hl, $d002
    ld de, $d006
    ld bc, $0004
    call $3026
    ld hl, $d002
    call Call_004_78a0
    jr jr_004_789f

jr_004_786b:
    ld de, $d010
    ld hl, $d008
    ld c, $02
    call $31db
    jr c, jr_004_788c

    ld hl, $d006
    ld de, $d00a
    ld bc, $0004
    call $3026
    ld hl, $d006
    call Call_004_78a0
    jr jr_004_789f

jr_004_788c:
    ld de, $d010
    ld hl, $d00c
    ld c, $02
    call $31db
    jr c, jr_004_789f

    ld hl, $d00a
    call Call_004_78a0

jr_004_789f:
    ret


Call_004_78a0:
    ld de, $d00e
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl], a
    ret


Call_004_78b0:
    ld e, $00

jr_004_78b2:
    push de
    call Call_004_79ed
    pop de
    jr nz, jr_004_78f9

    ld a, e
    inc a
    inc a
    ld [$d00e], a
    dec a
    ld c, a
    ld b, $00
    ld hl, $7783
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl

jr_004_78cd:
    call $2f8c
    and $03
    cp $03
    jr z, jr_004_78cd

    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld [$d00f], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2f8c
    and $07
    ld c, a
    ld b, $00
    add hl, bc
    ld a, h
    ld [$d010], a
    ld a, l
    ld [$d011], a
    push de
    call Call_004_783e
    pop de

jr_004_78f9:
    inc e
    ld a, e
    cp $0a
    jr nz, jr_004_78b2

    ret


Call_004_7900:
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld a, [$df9c]
    and a
    jr z, jr_004_797e

    ld a, [$dfc1]
    call Call_004_797f
    ld a, [$dfc1]
    call Call_004_797f
    ld a, [$dfc1]
    call Call_004_797f
    ld a, [$dfc1]
    call Call_004_797f
    ld a, [$dfc3]
    call Call_004_797f
    ld a, [$dfc5]
    call Call_004_797f
    ld a, [$dfc7]
    call Call_004_797f
    ld a, [$dfc9]
    call Call_004_797f
    ld a, [$dfcb]
    call Call_004_797f
    ld a, [$dfb1]
    ld b, a
    and $02
    add a
    add a
    ld c, a
    swap b
    ld a, b
    and $02
    add a
    add c
    ld d, a
    ld a, [$dfb2]
    ld b, a
    and $02
    ld c, a
    swap b
    ld a, b
    and $02
    srl a
    add c
    add c
    add d
    add d
    call Call_004_797f
    ld a, [$dfbf]
    srl a
    srl a
    srl a
    call Call_004_797f
    ld a, [$df9d]
    and a
    jr z, jr_004_797e

    ld a, $01
    call Call_004_797f

jr_004_797e:
    ret


Call_004_797f:
    ld hl, $ffb4
    add [hl]
    ld [hl], a
    ret nc

    dec hl
    inc [hl]
    ret


    ld hl, $dcfb
    ld a, [$dcd7]
    and a
    ret z

    ld c, a

jr_004_7991:
    ld a, [hl]
    and $0f
    jr z, jr_004_79a0

    sub b
    jr nc, jr_004_799a

    xor a

jr_004_799a:
    ld d, a
    ld a, [hl]
    and $f0
    add d
    ld [hl], a

jr_004_79a0:
    ld de, $0030
    add hl, de
    dec c
    jr nz, jr_004_7991

    ret


    ld c, $0a
    ld hl, $79fe

jr_004_79ad:
    push bc
    push hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld b, $00
    call $2e6f
    pop hl
    inc hl
    inc hl
    pop bc
    dec c
    jr nz, jr_004_79ad

    ld c, $05

jr_004_79c0:
    push bc

jr_004_79c1:
    call $2f8c
    cp $fa
    jr nc, jr_004_79c1

    ld c, $19
    call $3110
    ld e, b
    ld d, $00
    ld hl, $79fe
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    ld b, $02
    call $2e6f
    pop de
    ld a, c
    and a
    jr nz, jr_004_79c1

    ld b, $01
    call $2e6f
    pop bc
    dec c
    jr nz, jr_004_79c0

    ret


Call_004_79ed:
    ld hl, $79fe
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld b, $02
    call $2e6f
    ret


    ld d, $07
    rla
    rlca
    jr jr_004_7a0b

    add hl, de
    rlca
    ld a, [de]
    rlca
    dec de
    rlca
    inc e

jr_004_7a0b:
    rlca
    dec e
    rlca
    ld e, $07
    rra
    rlca
    ld hl, $dd01
    ld a, [hl+]
    or [hl]
    jr z, jr_004_7a2b

    ld hl, $dcd7
    ld a, $01
    ld [hl+], a
    inc hl
    ld a, [hl]
    ld [$df9b], a
    ld [hl], $ff
    xor a
    ld [$c2dd], a
    ret


jr_004_7a2b:
    ld a, $01
    ld [$c2dd], a
    ret


    ld hl, $dcd9
    ld a, [$df9b]
    ld [hl], a
    ld b, $01

jr_004_7a3a:
    ld a, [hl+]
    cp $ff
    jr z, jr_004_7a42

    inc b
    jr jr_004_7a3a

jr_004_7a42:
    ld a, b
    ld [$dcd7], a
    ret


    ld hl, $dcd7
    ld a, [hl]
    and a
    ret z

    cp $07
    jr c, jr_004_7a54

    ld a, $06
    ld [hl], a

jr_004_7a54:
    inc hl
    ld b, a
    ld c, $00

jr_004_7a58:
    ld a, [hl]
    and a
    jr z, jr_004_7a64

    cp $fc
    jr z, jr_004_7a64

    cp $fe
    jr c, jr_004_7a73

jr_004_7a64:
    ld [hl], $eb
    push hl
    push bc
    ld a, c
    ld hl, $dcdf
    call $3927
    ld [hl], $eb
    pop bc
    pop hl

jr_004_7a73:
    inc hl
    inc c
    dec b
    jr nz, jr_004_7a58

    ld [hl], $ff
    ld hl, $dcdf
    ld a, [$dcd7]
    ld d, a
    ld e, $00

jr_004_7a83:
    push de
    push hl
    ld b, h
    ld c, l
    ld a, [hl]
    and a
    jr z, jr_004_7a8f

    cp $fc
    jr c, jr_004_7a9c

jr_004_7a8f:
    ld [hl], $eb
    push de
    ld d, $00
    ld hl, $dcd8
    add hl, de
    pop de
    ld a, $eb
    ld [hl], a

jr_004_7a9c:
    ld [$cf60], a
    call $3856
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    cp $02
    ld a, $02
    jr c, jr_004_7ab4

    ld a, [hl]
    cp $64
    jr c, jr_004_7ab5

    ld a, $64

jr_004_7ab4:
    ld [hl], a

jr_004_7ab5:
    ld [$d143], a
    ld hl, $0024
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $000a
    add hl, bc
    ld b, $01
    ld a, $0c
    call $2d83
    pop hl
    ld bc, $0030
    add hl, bc
    pop de
    inc e
    dec d
    jr nz, jr_004_7a83

    ld de, $de41
    ld a, [$dcd7]
    ld b, a
    ld c, $00

jr_004_7adc:
    push bc
    call Call_004_7b71
    push de
    ld a, $5f
    ld hl, $5073
    rst $08
    pop hl
    pop bc
    jr nc, jr_004_7b0e

    push bc
    push hl
    ld hl, $dcd8
    push bc
    ld b, $00
    add hl, bc
    pop bc
    ld a, [hl]
    cp $fd
    ld hl, $7b6b
    jr z, jr_004_7b06

    ld [$d265], a
    call $343b
    ld hl, $d073

jr_004_7b06:
    pop de
    ld bc, $000b
    call $3026
    pop bc

jr_004_7b0e:
    inc c
    dec b
    jr nz, jr_004_7adc

    ld de, $ddff
    ld a, [$dcd7]
    ld b, a
    ld c, $00

jr_004_7b1b:
    push bc
    call Call_004_7b71
    push de
    ld a, $5f
    ld hl, $5073
    rst $08
    pop hl
    jr nc, jr_004_7b34

    ld d, h
    ld e, l
    ld hl, $d47d
    ld bc, $000b
    call $3026

jr_004_7b34:
    pop bc
    inc c
    dec b
    jr nz, jr_004_7b1b

    ld hl, $dce1
    ld a, [$dcd7]
    ld b, a

jr_004_7b40:
    push hl
    ld c, $04
    ld a, [hl]
    and a
    jr z, jr_004_7b4b

    cp $fc
    jr c, jr_004_7b4d

jr_004_7b4b:
    ld [hl], $01

jr_004_7b4d:
    ld a, [hl]
    and a
    jr z, jr_004_7b55

    cp $fc
    jr c, jr_004_7b5c

jr_004_7b55:
    xor a
    ld [hl+], a
    dec c
    jr nz, jr_004_7b55

    jr jr_004_7b60

jr_004_7b5c:
    inc hl
    dec c
    jr nz, jr_004_7b4d

jr_004_7b60:
    pop hl
    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    dec b
    jr nz, jr_004_7b40

    ret


    adc a
    sbc l
    add hl, bc
    ld d, b
    ld d, b
    ld d, b

Call_004_7b71:
    push de
    ld c, $01
    ld b, $06

jr_004_7b76:
    ld a, [de]
    cp $50
    jr z, jr_004_7b85

    inc de
    inc c
    dec b
    jr nz, jr_004_7b76

    dec c
    dec de
    ld a, $50
    ld [de], a

jr_004_7b85:
    pop de
    ret


    ld hl, $7b98
    ld b, $00

jr_004_7b8c:
    inc b
    ld a, b
    cp $ff
    ret z

    ld a, [hl+]
    sub e
    ld a, [hl+]
    sbc d
    jr c, jr_004_7b8c

    ret


    ld bc, $0400
    nop
    add hl, bc
    nop
    stop
    add hl, de
    nop
    inc h
    nop
    ld sp, $4000
    nop
    ld d, c
    nop
    ld h, h
    nop
    ld a, c
    nop
    sub b
    nop
    xor c
    nop
    call nz, $e100
    nop
    nop
    ld bc, $0121
    ld b, h
    ld bc, $0169
    sub b
    ld bc, $01b9
    db $e4
    ld bc, $0211
    ld b, b
    ld [bc], a
    ld [hl], c
    ld [bc], a
    and h
    ld [bc], a
    reti


    ld [bc], a
    db $10
    inc bc
    ld c, c
    inc bc
    add h
    inc bc
    pop bc
    inc bc
    nop
    inc b
    ld b, c
    inc b
    add h
    inc b
    ret


    inc b
    db $10
    dec b
    ld e, c
    dec b
    and h
    dec b
    pop af
    dec b
    ld b, b
    ld b, $91
    ld b, $e4
    ld b, $39
    rlca
    sub b
    rlca
    jp hl


    rlca
    ld b, h
    ld [$08a1], sp
    nop
    add hl, bc
    ld h, c
    add hl, bc
    call nz, $2909
    ld a, [bc]
    sub b
    ld a, [bc]
    ld sp, hl
    ld a, [bc]
    ld h, h
    dec bc
    pop de
    dec bc
    ld b, b
    inc c
    or c
    inc c
    inc h
    dec c
    sbc c
    dec c
    db $10
    ld c, $89
    ld c, $04
    rrca
    add c
    rrca
    nop
    db $10
    add c
    db $10
    inc b
    ld de, $1189
    db $10
    ld [de], a
    sbc c
    ld [de], a
    inc h
    inc de
    or c
    inc de
    ld b, b
    inc d
    pop de
    inc d
    ld h, h
    dec d
    ld sp, hl
    dec d
    sub b
    ld d, $29
    rla
    call nz, Call_004_6117
    jr jr_004_7c37

jr_004_7c37:
    add hl, de
    and c
    add hl, de
    ld b, h
    ld a, [de]
    jp hl


    ld a, [de]
    sub b
    dec de
    add hl, sp
    inc e
    db $e4
    inc e
    sub c
    dec e
    ld b, b
    ld e, $f1
    ld e, $a4
    rra
    ld e, c
    jr nz, jr_004_7c5f

    ld hl, $21c9
    add h
    ld [hl+], a
    ld b, c
    inc hl
    nop
    inc h
    pop bc
    inc h
    add h
    dec h
    ld c, c
    ld h, $10

jr_004_7c5f:
    daa
    reti


    daa
    and h
    jr z, jr_004_7cd6

    add hl, hl
    ld b, b
    ld a, [hl+]
    ld de, $e42b
    dec hl
    cp c
    inc l
    sub b
    dec l
    ld l, c
    ld l, $44
    cpl
    ld hl, $0030
    ld sp, $31e1
    call nz, $a932
    inc sp
    sub b
    inc [hl]
    ld a, c
    dec [hl]
    ld h, h
    ld [hl], $51
    scf
    ld b, b
    jr c, @+$33

    add hl, sp
    inc h
    ld a, [hl-]
    add hl, de
    dec sp
    db $10
    inc a
    add hl, bc
    dec a
    inc b
    ld a, $01
    ccf
    nop
    ld b, b
    ld bc, $0441
    ld b, d
    add hl, bc
    ld b, e
    db $10
    ld b, h
    add hl, de
    ld b, l
    inc h
    ld b, [hl]
    ld sp, $4047
    ld c, b
    ld d, c
    ld c, c
    ld h, h
    ld c, d
    ld a, c
    ld c, e
    sub b
    ld c, h
    xor c
    ld c, l
    call nz, $e14e
    ld c, a
    nop
    ld d, c
    ld hl, $4452
    ld d, e
    ld l, c
    ld d, h
    sub b
    ld d, l
    cp c
    ld d, [hl]
    db $e4
    ld d, a
    ld de, $4059
    ld e, d
    ld [hl], c
    ld e, e
    and h
    ld e, h
    reti


    ld e, l
    db $10
    ld e, a
    ld c, c
    ld h, b
    add h
    ld h, c
    pop bc
    ld h, d

jr_004_7cd6:
    nop
    ld h, h
    ld b, c
    ld h, l
    add h
    ld h, [hl]
    ret


    ld h, a
    db $10
    ld l, c
    ld e, c
    ld l, d
    and h
    ld l, e
    pop af
    ld l, h
    ld b, b
    ld l, [hl]
    sub c
    ld l, a
    db $e4
    ld [hl], b
    add hl, sp
    ld [hl], d
    sub b
    ld [hl], e
    jp hl


    ld [hl], h
    ld b, h
    db $76
    and c
    ld [hl], a
    nop
    ld a, c
    ld h, c
    ld a, d
    call nz, $297b
    ld a, l
    sub b
    ld a, [hl]
    ld sp, hl
    ld a, a
    ld h, h
    add c
    pop de
    add d
    ld b, b
    add h
    or c
    add l
    inc h
    add a
    sbc c
    adc b
    db $10
    adc d
    adc c
    adc e
    inc b
    adc l
    add c
    adc [hl]
    nop
    sub b
    add c
    sub c
    inc b
    sub e
    adc c
    sub h
    db $10
    sub [hl]
    sbc c
    sub a
    inc h
    sbc c
    or c
    sbc d
    ld b, b
    sbc h
    pop de
    sbc l
    ld h, h
    sbc a
    ld sp, hl
    and b
    sub b
    and d
    add hl, hl
    and h
    call nz, $61a5
    and a
    nop
    xor c
    and c
    xor d
    ld b, h
    xor h
    jp hl


    xor l
    sub b
    xor a
    add hl, sp
    or c
    db $e4
    or d
    sub c
    or h
    ld b, b
    or [hl]
    pop af
    or a
    and h
    cp c
    ld e, c
    cp e
    db $10
    cp l
    ret


    cp [hl]
    add h
    ret nz

    ld b, c
    jp nz, $c400

    pop bc
    push bc
    add h
    rst $00
    ld c, c
    ret


    db $10
    set 3, c
    call z, $cea4
    ld [hl], c
    ret nc

    ld b, b
    jp nc, $d411

    db $e4
    push de
    cp c
    rst $10
    sub b
    reti


    ld l, c
    db $db
    ld b, h
    db $dd
    ld hl, $00df
    pop hl
    pop hl
    ld [c], a
    call nz, $a9e4
    and $90
    add sp, $79
    ld [$ec64], a
    ld d, c
    xor $40
    ldh a, [$31]
    ld a, [c]
    inc h
    db $f4
    add hl, de
    or $10
    ld hl, sp+$09
    ld a, [$fc04]
    ld bc, $00fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
