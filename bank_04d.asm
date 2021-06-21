; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04d", ROMX[$4000], BANK[$4d]

Call_04d_4000:
    db $ec
    ld [hl], $22
    ld bc, $0223
    ld b, e
    dec b
    rlca
    dec e
    ld a, [bc]
    rrca
    ld [de], a
    rra
    ld [de], a
    ld e, $20
    inc l
    ld b, h
    ld b, h
    ld e, h
    ld e, h
    ld l, b
    ld l, b
    ld [$000c], sp
    ld e, $11
    rra
    ld [hl+], a
    ld a, $24
    inc a
    ld c, b
    ld c, b
    sub b
    sub b
    ld h, b
    ld h, b
    db $ec
    dec [hl]
    ldh [$3d], a
    inc b
    inc c
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld a, $48
    ld a, c
    ld c, c
    ld a, c
    ld b, h
    ld a, h
    inc b
    cp h
    add [hl]
    sbc [hl]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, hl
    ld l, c
    db $10
    or b
    ld [$0648], sp
    add $31
    pop af
    dec hl
    db $eb
    inc a
    cp $20
    jr nz, jr_04d_40a9

    ld e, h
    ld c, [hl]
    ld c, a
    ld c, e
    ld c, [hl]
    adc a
    adc [hl]
    adc e
    adc d
    rlca
    ld b, $04
    ld b, $00
    ld a, [bc]
    ld [$0109], sp
    ld de, $1212
    ld [$020a], sp
    ld b, $f0
    jr nc, jr_04d_406d

jr_04d_406d:
    add hl, bc
    inc h
    ld bc, $0000
    dec h
    ld [bc], a
    ld [hl+], a
    add d
    ld de, $4606
    ld c, [hl]
    ld c, b
    ccf
    jr nc, @+$41

    inc sp
    sbc a
    sbc h
    db $fc
    ldh a, [$78]
    ld b, b
    ld sp, hl
    add b
    rst $28
    ldh a, [rSCX]
    rrca
    ld [$070c], sp
    ld [$101f], sp
    rst $18
    pop hl
    rst $38
    inc bc
    db $fc
    nop
    ld a, h
    inc b
    ld a, h
    ld b, e
    rlca
    ld a, a
    ld a, [bc]
    nop
    ld a, h
    add h
    jr c, @+$7e

    nop
    ld [$1301], sp
    inc e
    inc e

jr_04d_40a9:
    db $f4
    ld hl, $7500
    inc hl
    ld d, b
    ld b, l
    sub b
    ldh a, [rSCX]
    db $10
    ldh a, [rSB]
    jr nz, @+$62

    inc h
    jr nz, jr_04d_40cf

    ld hl, $3e2f
    dec [hl]
    ccf
    ld a, d
    ld a, a
    rlca
    rrca
    rrca
    pop af
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld e, $7f
    rlca
    ld a, a

jr_04d_40cf:
    inc bc
    ld b, a
    rst $38
    ld bc, $fd17
    inc bc
    rst $38
    ld h, e
    ld e, $f2
    sbc $f2
    db $db
    rst $30
    sbc a
    rst $30
    ccf
    rst $28
    rst $38
    adc a
    scf
    sbc $61
    ld h, e
    ld b, b
    ld b, b
    add b
    add b
    db $ec
    add hl, sp
    ld [de], a
    ldh [$f0], a
    rst $38
    rrca
    ld a, a
    pop hl
    cp [hl]
    ld a, [$fcfc]
    ld [$010c], sp
    pop hl
    db $e3
    dec de
    ei
    dec b
    ld a, a
    and e

Call_04d_4103:
    push hl
    add hl, de
    jp $e5dd


    ld a, [$f2fb]
    di
    ld [c], a
    db $e3
    adc l
    adc a
    inc de
    rra
    ccf
    ld a, l
    rst $38
    ldh [$df], a
    ldh [rIE], a
    ret nz

    ld a, a
    add e
    db $fc
    inc e
    ldh [$f8], a
    ld [hl-], a
    or b
    add hl, de
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_04d_4150

    ld b, c
    ld b, c
    ld [bc], a
    add d
    add h
    add h
    ld [$3718], sp
    scf
    ld a, b
    ld c, a
    ldh a, [$96]
    db $f4
    sub $43
    db $e4
    rst $20
    dec bc
    call nz, $8cc7
    adc [hl]
    ld e, [hl]
    jp c, $fa3e

    ld a, $7e
    ccf
    ld a, l
    ld b, e
    rra
    db $fd

jr_04d_4150:
    inc bc
    ld c, $ca
    inc c
    inc c
    inc hl
    add h
    dec bc
    jp nz, Jump_04d_41c6

    ld c, a
    ld hl, $103f
    rra
    dec c
    rrca
    ld [bc], a
    ld [bc], a
    ld hl, sp+$29
    ld bc, $0d05
    db $10
    jr nc, @-$36

    ret z

    ld [$10e8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    xor a
    nop
    ld hl, sp+$44
    ld b, b
    ret nz

    nop
    ld b, b
    inc hl
    jr nz, @+$25

    db $10
    dec b
    ld [$0838], sp
    ld hl, sp-$7c
    db $fc
    and e
    nop
    ld d, [hl]
    dec bc
    ld [hl+], a
    ld [hl-], a
    ld [hl+], a
    ld [hl+], a
    ld de, $0d11
    dec c
    inc bc
    inc bc
    add b
    add b
    add a
    sbc a
    inc b
    sub b
    sub b
    ld d, b
    ld d, b
    jr nz, @-$3a

    ld bc, $8b67
    nop
    and b
    ldh [rNR42], a
    ld e, $be
    ld de, $1851
    ret c

    inc [hl]
    db $f4
    inc h
    and $22
    rst $20
    dec hl
    dec hl
    ld c, [hl]
    ld c, [hl]
    ld c, d
    ld c, [hl]
    ld c, h
    ld c, h
    add h
    adc h
    add e
    sub d
    inc b
    daa
    rlca
    ld c, a

Jump_04d_41c6:
    ld [$2449], sp
    inc h
    jr @+$1a

    add l
    nop
    sub c
    nop
    nop
    inc hl
    ld a, [bc]
    nop
    ld c, $4a
    add hl, bc
    rrca
    inc b
    dec c
    ld [$0009], sp
    ld [$0423], sp
    inc c
    nop
    inc b
    ld hl, $1320
    db $10
    rra
    db $10
    ccf
    jr nz, jr_04d_426b

    jp Jump_04d_437c


    inc b
    db $fc
    db $10
    rlca
    db $fd
    rlca
    rst $38
    nop
    ei
    rlca
    nop
    ld hl, sp-$18
    ld hl, sp+$31
    ld sp, $4604
    jr @+$3a

    adc h
    ld [bc], a
    rlc h
    add c
    adc a
    cp [hl]
    push af
    rst $38
    adc c
    ld bc, $e082
    ld hl, $3e1f
    ld a, a
    rlca
    ei
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $e1fe
    sbc [hl]
    pop af
    rst $18
    pop af
    cp l
    db $e3
    ld a, e
    rst $00
    rst $30
    adc a
    rst $38
    rrca
    rst $08
    ccf
    sbc a
    rst $38
    cp a
    rst $38
    ld a, e
    cp $05
    rrca
    add l
    ld [bc], a
    or a
    nop
    ld [$2822], sp
    ld bc, $3c24
    ld b, e
    ld b, h
    ld a, h
    ld bc, $7c40
    ld b, l
    ld b, d
    ld a, [hl]
    ld bc, $2e22
    inc hl
    ld [hl+], a
    dec c
    ld [c], a
    ld [c], a
    di
    rla
    ld [hl], e
    or $b3
    or $f3
    or $13
    inc de
    inc bc
    rst $20
    add l
    ld bc, $07fa
    ret nz

    ret nz

    rst $30
    scf
    ld hl, sp+$0f
    ldh a, [rNR21]
    adc b
    ld [bc], a
    ld l, b
    inc c
    adc h

jr_04d_426b:
    sub l
    or [hl]
    ld [bc], a
    ld b, e
    dec c
    adc a
    sbc b
    sbc b
    nop
    adc b
    jr nc, @+$72

    ld h, c
    add e
    inc bc
    ld [hl], b
    dec bc
    ld a, a
    add c
    inc b
    db $fc
    ld h, d
    cp $1e
    ld e, $00
    ld [$0707], sp
    add e
    rst $28
    add hl, bc
    rst $28
    sbc a
    ld e, a
    ld a, a
    ccf
    ccf
    dec sp
    ld a, $c5
    rst $08
    add [hl]
    ld [bc], a
    or [hl]
    inc b
    db $10
    ld [$0428], sp
    inc l
    and l
    pop af
    and e
    inc bc
    db $10
    inc bc
    ld de, $1119
    ld de, $0822
    add l
    inc bc
    ld e, c
    ld h, c
    ld bc, $0408
    ld [hl+], a
    inc d
    ld bc, $1e12
    ld b, e
    ld [hl+], a
    ld a, $48
    ld hl, $083f
    daa
    ld de, $1011
    ld de, $f2f2
    di
    inc de
    add a
    inc bc
    jr nz, jr_04d_42d1

    daa
    dec hl
    ld b, [hl]
    ld c, d
    ld c, [hl]
    ld c, d
    ld c, h

jr_04d_42d1:
    ld c, h
    add a
    inc bc
    ld h, b
    ld [bc], a
    ld a, l
    jp Jump_04d_447b


    inc b
    rst $38
    add l
    inc bc
    and b
    add hl, bc
    ld a, [hl]
    pop hl
    cp $11
    rst $38
    ld de, $23fd
    ei
    ld b, a
    rst $38
    db $ec
    ld [hl], e
    ld [$0101], sp
    dec b
    dec b
    ld [bc], a
    ld a, [bc]
    ld [$020a], sp
    inc h
    stop
    nop
    ld h, $20
    ld b, $10
    db $10
    ld [$0408], sp
    ld b, $03
    ld b, [hl]
    inc bc
    ld [bc], a
    nop
    inc bc
    ld b, e

Jump_04d_430b:
    ld [bc], a
    ld bc, $0101
    nop
    rst $00
    xor d
    dec h
    ld bc, $0200
    add e
    sub a
    ld b, a
    ld [bc], a
    inc bc
    jp $f88d


    ld hl, $08c8
    ld b, b
    ld b, b
    and b
    and b
    db $10
    jr nc, jr_04d_4330

    jr z, jr_04d_4352

    ld [hl+], a
    ld [$0912], sp
    dec bc
    dec c

jr_04d_4330:
    inc c
    ld a, [bc]
    db $10
    dec e

Call_04d_4334:
    db $10
    rra
    db $10
    rla
    jr jr_04d_4344

    dec c
    dec b
    rlca
    inc bc
    ld [bc], a
    ld [bc], a
    ld h, c
    ldh [$32], a
    add b

jr_04d_4344:
    ld [c], a
    ldh a, [$cd]
    ld c, [hl]
    call $216d
    ld [hl], e
    ld e, $be
    ld c, $9e
    add e
    ld b, d

jr_04d_4352:
    pop bc
    or e
    di
    adc h
    rst $38
    ret nz

    cp a
    ld h, b
    ld l, a
    or b
    or l
    ld l, d
    ld a, [hl+]
    push af
    push af
    ld e, d

jr_04d_4362:
    ld e, [hl]
    db $dd
    ld a, a
    call c, $dc59
    ld l, d
    call c, $c85d
    ld [hl+], a
    add sp, $35
    ldh [$3a], a
    ldh [$95], a
    ld hl, sp-$63
    cp $43
    ld c, l
    ld a, [hl]
    ld de, $3c27

Jump_04d_437c:
    inc de
    ld e, $09
    rrca
    inc b
    rlca
    inc bc
    inc bc
    rlca
    rlca
    ld a, [de]
    add hl, de
    ld [bc], a
    ld h, $1e
    ld a, $8f
    nop
    cp [hl]
    ldh [$2b], a
    inc a
    ld a, h
    xor a
    add e
    ld d, a
    nop
    xor a
    nop
    ld e, a
    ld b, b
    ccf
    and b
    cp [hl]
    and c
    ccf
    ld hl, $263a
    jr @+$3a

    jr z, jr_04d_43a7

jr_04d_43a7:
    ld d, h
    nop
    ld a, [hl+]
    ld bc, $0e56
    or [hl]
    sub $30
    add hl, sp
    rra
    rra
    inc a

Call_04d_43b4:
    ld e, $10
    ld [hl], b
    ld [hl], b
    sbc b
    ld hl, sp-$69
    rst $38
    ld h, b
    ld b, e
    rst $38
    nop

Jump_04d_43c0:
    ldh [$33], a
    db $fd
    ld [bc], a
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    rst $38
    di
    push af
    di
    ld a, e
    pop af
    ld h, h
    ld [hl], c
    xor d
    ld h, b
    ld [hl], l
    jr nz, jr_04d_4362

    jr nz, jr_04d_4438

    nop
    rst $38
    nop
    and $7d

jr_04d_43de:
    cp a
    ld a, h
    rst $38
    inc a
    db $db
    inc a
    rst $38
    jr jr_04d_43de

    ret z

    ccf
    ldh a, [rIE]
    rst $08
    ld a, h
    adc l
    cpl
    ld d, e
    ld [hl], $76
    adc b
    adc c
    rlca
    rrca
    ld h, c
    ld a, [bc]
    ld [$1418], sp
    inc d
    dec d
    ld d, l
    ld [hl+], a
    and d
    add b
    and d
    and d
    inc h
    add b
    xor e
    nop
    cp d
    ldh [rNR44], a
    ld bc, $0603
    ld c, $19
    ccf
    ld sp, hl
    rst $20
    ld a, c
    ld h, a
    ld b, e
    push hl
    add a
    ret


    rlca
    adc c
    rrca
    ld de, $221e
    ccf
    jp $05fe


    db $fd
    ld b, $fa
    dec c
    xor l
    ld e, d
    ld e, d
    or l
    or l
    ld e, d

Jump_04d_442c:
    ld a, d
    push de
    ld b, l
    ldh [rIE], a
    ld b, $e1
    cp a

Call_04d_4434:
    ld [c], a
    cp a
    ld h, d
    cp a

jr_04d_4438:
    ld a, [c]
    ld b, h
    rra
    pop af

Call_04d_443c:
    ld [bc], a
    cp c

Call_04d_443e:
    ld a, a
    ld hl, sp+$43
    rst $38
    db $fc
    ld d, $77
    cp $33
    xor $13
    rst $38
    rlca
    rst $38
    rra
    cp $e7
    ld c, a
    rst $30
    adc e
    add c
    inc d
    ld h, c
    adc [hl]
    sub d
    adc [hl]
    sbc [hl]
    ld h, c
    ld h, c
    xor c
    nop
    and b
    nop
    nop
    ld [hl+], a
    ld b, b
    add a
    nop
    add d
    inc hl
    ld b, b
    or a
    nop
    cp [hl]
    inc hl
    add b
    nop
    ret nz

    and h
    nop
    xor l
    nop
    jr nz, jr_04d_44b8

    ldh [$60], a
    ld [bc], a
    and b
    ldh [$90], a
    ld c, d

Jump_04d_447b:
    ldh a, [rNR10]
    ld b, e
    ld [$15f8], sp
    sbc b
    add sp, -$58
    ret c

    sbc $ae
    ld l, a
    reti


    ld e, a
    add sp, $35
    ld_long a, $ff33
    sub l
    ld_long a, $ff53
    inc a
    db $fc
    ret nz

    ret nz

    add e
    db $d3
    ld bc, $8080
    db $ec
    ld e, c
    add hl, bc
    ret nz

    ret nz

    ld hl, sp+$38
    ld hl, sp+$08
    sub b
    ldh a, [$60]
    ldh [$8b], a
    push hl
    inc b
    ld [hl], b
    ld hl, sp-$18
    rst $28
    sbc a
    ld b, e
    adc b
    rst $38
    ld [bc], a
    ld d, b
    db $fd
    ld [hl+], a

jr_04d_44b8:
    add e
    ld bc, $858c
    nop
    and [hl]
    ld [bc], a
    nop
    ld bc, $2501
    ld [bc], a
    ld b, e
    dec b
    ld b, $06
    inc b
    ld b, $04
    ld [bc], a
    dec b
    inc bc
    ld [bc], a
    add l
    nop
    sbc b
    ld a, [bc]
    ld bc, $0403
    inc c
    db $10
    ld de, $2020
    ld b, b
    ld b, b
    nop
    adc c
    ld bc, $00d1
    ld bc, $8123
    add hl, de
    ld b, b
    ld b, b
    ld h, c
    ld h, b
    ld d, d
    ld d, c
    sbc [hl]
    ret c

    sbc [hl]
    sbc $85
    call nz, $6848
    ld sp, $92b0
    ld d, c
    db $e3
    cpl
    rst $20
    ld hl, $a6ea
    cp $9d

Jump_04d_4500:
    adc e
    ld bc, $e014
    scf
    ld b, b
    ld h, b
    sub b
    sub b
    jr z, jr_04d_4533

    nop
    ld c, b
    db $10
    db $10
    jr @+$1e

    ld [hl-], a
    inc hl
    ld h, c
    ld b, b
    xor d
    ret nz

    push de
    add b
    ld a, a
    add b
    ld l, a
    sbc b
    ld l, a
    and h
    ld c, a
    call nz, $0c9b
    jr jr_04d_4534

    scf
    inc bc
    ld l, d
    nop
    call nc, Call_04d_4a80
    ldh [$e4], a
    ldh a, [$bc]
    cp [hl]
    or e
    or e

jr_04d_4533:
    pop bc

jr_04d_4534:
    pop bc
    ld h, e
    ld a, a
    inc e
    sbc h
    add b
    ld h, c
    pop hl
    ld e, $87

jr_04d_453e:
    ld bc, $8e88
    ld [bc], a
    ld d, h

Call_04d_4543:
    ld c, $c0
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$09
    ld a, [$fc06]
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    rlc d
    ei
    dec bc
    rlca
    ld bc, $86fe
    ld hl, sp-$02
    inc bc
    rra
    ld c, $75
    ld a, l
    add [hl]
    adc c
    ld bc, $61f6
    ld a, [bc]
    ld b, b
    ret nc

    jr nz, jr_04d_4594

    ld [$1448], sp
    inc d
    inc b
    inc h
    nop
    and e
    nop
    adc c
    and e
    nop
    adc e
    inc b
    db $10
    ld h, b
    jr nz, jr_04d_453e

    ld b, b
    and l
    nop
    sbc [hl]
    adc e
    inc bc
    ld h, b
    dec bc
    rst $10
    cpl
    rst $38
    dec e
    push hl
    and e
    xor a
    ld [c], a
    ei
    sub $bf
    ld l, h
    add a
    inc bc

jr_04d_4594:
    ld a, b
    adc e
    inc bc
    ld d, b
    dec bc
    ld hl, $5220
    ld [hl], c
    ld c, [hl]
    ld a, b
    rst $00
    rst $38
    push bc
    db $fc
    ld l, b
    ld a, b
    add a
    inc bc
    ld l, b
    adc c
    inc bc
    and b
    ld b, $9c
    cp $83
    rst $38
    pop bc
    rst $38
    ld a, a
    adc a
    inc bc
    or c
    ld [$f280], sp
    ldh a, [$cf]
    ld a, [hl]
    pop hl
    ld a, a
    dec sp
    ld a, a
    add l
    ld bc, $090a
    ld d, h
    nop
    dec hl
    ld bc, $0f5e
    or b
    rst $18
    add hl, sp
    ccf
    add l
    ld bc, $ff7a
    db $ec
    add hl, hl
    rrca
    inc b
    rlca
    ld [$0a1c], sp
    ld l, $21
    daa
    inc e
    rra
    ld [bc], a
    inc de
    ld a, [bc]
    dec bc
    rlca
    rlca
    ld a, c
    dec h
    ld bc, $0201
    inc bc
    res 0, [hl]
    ld [bc], a
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    inc hl
    inc b
    ld bc, $0800
    inc hl
    add hl, bc
    rlca
    ld b, $07
    ld [bc], a
    inc bc
    ld b, $07
    dec b
    dec b
    ld [hl+], a
    rlca
    ld de, $0905
    dec c
    ld [$0608], sp
    ld b, $c1
    pop hl
    adc a
    rst $38
    add b
    ld [$f500], a
    nop
    cp $00
    ld b, h
    rst $38
    nop
    add hl, bc
    pop hl
    rst $38
    dec de
    rra
    rrca
    ld c, $0b
    ld a, [bc]
    inc bc
    inc de
    ld b, e
    ld d, $14
    dec c
    ld e, $1c
    inc hl
    ld a, $01
    ld a, a
    ld b, b
    ld c, e
    nop
    rst $10
    add b
    xor e
    nop
    rst $10
    add e
    sbc a
    dec b
    ld h, c
    rst $38
    add [hl]
    cp [hl]
    ld a, b
    ld a, b
    ld h, c
    dec b
    db $10
    jr nc, jr_04d_468e

    ld c, b
    adc b
    adc b
    ld b, e
    inc b
    inc d
    dec bc
    rrca
    rrca
    jr nc, jr_04d_468e

    ld b, b
    ld h, d
    add b
    add c
    nop
    add e
    nop
    rst $08
    add l
    jp $0103


    ei
    ld b, $fe
    ld b, e
    ld bc, $e0ff
    dec [hl]
    jr nz, @+$01

    rlca
    ld a, a
    rst $38
    ld sp, hl
    ld a, a
    ld h, b
    rst $08
    rst $38
    ld [hl], b
    ld a, a
    ld a, a
    rst $08
    ld e, a
    rst $00
    rst $28
    pop bc
    rst $10
    add c
    xor a
    add b
    sub a
    nop
    cpl
    nop
    rra
    ccf
    rst $28
    ret nz

    rla
    nop
    cpl
    ld bc, $0117
    xor a
    inc bc
    rst $38
    inc e
    rst $38

jr_04d_468e:
    ldh [rIE], a
    add b
    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    rst $38
    ld c, l
    ret c

    add e
    add a
    ld l, a
    ld de, $c1c1
    ld [hl-], a
    ld [hl], d

jr_04d_46a1:
    ld a, [bc]
    cp d
    inc b
    ld e, l
    inc b
    db $fd
    ld [$08f9], sp
    ld a, [$fa68]
    adc b
    sbc d
    ld b, e
    add h
    sbc h
    ldh [rNR44], a
    add e
    rra
    and b
    rst $38
    jr jr_04d_46a1

    pop bc
    rst $38
    ld sp, $a23f
    cp [hl]
    rst $00
    rst $38
    jr c, @+$01

    ld hl, sp-$11
    ld hl, sp-$31
    ld a, h
    adc a
    db $fc
    rlca
    ld a, [hl]
    add a
    cp $83
    rst $38
    add c
    rst $18
    pop hl
    ei
    sbc l
    ld a, a
    add e
    and h
    push de
    ld [de], a
    add e
    db $fc
    ld h, a
    db $fc
    rla
    ld hl, sp+$0e
    ldh a, [$3f]
    ret nz

    rst $38
    add b
    rst $38
    jp $f07f


    rst $38
    rrca
    rrca
    ld h, a
    dec c
    ld e, $1e
    ld h, c
    ld h, c
    add d
    adc [hl]
    ld [bc], a
    ld [hl-], a
    ld [bc], a
    ld b, d
    inc b
    add h
    inc b
    inc b
    ld [hl+], a
    ld [$1800], sp
    inc hl
    inc b
    dec bc
    ld [$3008], sp
    jr nc, @+$42

    ld b, b
    add e
    add a
    adc b
    sbc b
    and b
    and b
    and e
    nop
    ld l, d
    rla
    nop
    add b
    ret nz

    pop bc
    ld a, b
    ld a, [$d706]
    dec b
    db $ed
    ld [bc], a
    cp $03
    rst $38
    dec b
    db $fd
    ld e, $fe
    ldh [$e0], a
    ld b, b
    ld b, b
    ld b, c
    ld b, c
    ld b, e
    ld [bc], a
    add d
    dec d
    sub h
    add d
    ld l, a
    push bc
    ld d, b
    call nz, Call_04d_6828
    inc [hl]
    or b
    ld a, [hl+]
    ld h, b
    dec [hl]
    ldh [rOCPD], a
    pop bc
    sbc $8e
    ld [hl], b
    ldh a, [$80]
    add b
    db $ec
    dec h
    ld bc, $c040
    and h
    di
    inc b
    stop
    ret z

    ld [$2328], sp
    ld [$1006], sp
    db $10
    and b
    and b
    ret nc

    ret nc

    nop
    add h
    adc c
    ld bc, $e060
    add h
    sbc c
    ld b, $08
    ld [$8848], sp
    adc b
    nop
    ld [$1023], sp
    inc bc
    and b
    jr nz, jr_04d_47b3

    ld b, b
    adc d
    reti


    ld bc, $00f5
    add h
    nop
    pop hl
    dec e
    inc bc
    cp $c3
    cp $36
    inc a
    ld c, $18
    inc e
    db $10
    ld e, $17
    inc e
    jr jr_04d_47aa

    db $10
    dec e
    db $10
    ld l, $38
    ld c, a
    ld e, b
    add a
    xor h
    add e
    rst $10
    ld bc, $00bf
    rst $38
    adc c
    nop
    or [hl]
    rra
    ld [hl], b
    ld a, a
    rst $38
    cp a
    rst $18
    ccf
    or l
    ld c, $5f
    inc b
    cpl

jr_04d_47aa:
    inc b
    rla
    ld [$080f], sp
    ccf
    cp $0f
    add hl, bc

jr_04d_47b3:
    rra
    ld [$102f], sp
    ld e, a
    db $10
    cp a
    db $10
    rst $38
    ld l, h
    rst $38
    add e
    and l
    nop
    reti


    inc b
    ld a, a
    ldh a, [$8f]
    rst $18
    ld [bc], a
    add h
    nop
    add hl, sp
    dec b
    jr c, @+$01

    ldh [rIE], a
    ld [hl], b
    sbc a
    ld b, e
    ld hl, sp+$0f
    ld b, e
    db $fc
    rlca
    call nz, $1ae4
    pop hl
    rst $38
    dec e
    rst $38
    inc bc
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$0d]
    ldh a, [$9a]
    ldh [$7d], a
    ldh [$3f], a
    pop bc
    ld a, a
    add a
    rst $38
    ld b, c
    rst $38

jr_04d_47f4:
    ccf
    ccf
    ld h, c
    add e
    ld [bc], a
    inc [hl]
    inc b
    add c
    add e
    add h
    add h
    nop
    and h
    ld [bc], a
    inc hl
    dec b
    sub b
    sub b
    ld a, b
    ld hl, sp+$06
    sub $89
    ld bc, $03b4
    ld h, b
    db $e4
    add b
    adc b
    push bc
    ld [bc], a
    jr z, jr_04d_481f

    and d
    and b
    sub l
    ret nz

    ld l, d
    ret nz

    ld d, l
    pop bc
    ld l, d

jr_04d_481f:
    add $c3
    add e
    inc bc
    push af
    add b
    rst $28
    rrca
    and a
    ld bc, $037c
    ld h, b
    ldh [$08], a
    jr jr_04d_47f4

    nop
    ld l, a
    inc b
    ld [bc], a
    ld bc, $0131
    ld c, c
    ld b, e
    ld bc, $0681
    add d
    add d
    call nz, $b8c4
    cp h
    nop
    jp Jump_04d_6b00


    ld d, $01
    jr c, jr_04d_4883

    ld b, h
    ld b, [hl]
    add d
    add d
    add b
    add c
    ld c, c
    ld c, c
    ld sp, $8171
    add c
    ld b, d
    ld [bc], a
    add d
    ld [bc], a
    ld d, h
    inc b
    cp b
    jr @-$55

    nop
    jr c, @-$77

    nop
    ldh [rIF], a
    rra
    ld a, a
    rst $38
    pop af
    ld a, a
    ld h, b
    rst $38
    ldh [$5f], a
    ld [hl], c
    ld l, [hl]
    rst $38
    ld d, b
    rst $18
    rst $28
    rst $00

jr_04d_4875:
    add a
    nop
    ld hl, sp-$77
    ld bc, $0d40
    ld hl, $b23f
    cp [hl]
    rst $20
    ld a, a
    sbc b

jr_04d_4883:
    rst $38
    jr c, jr_04d_4875

    ld hl, sp-$31
    db $fc
    rrca
    add a
    ld bc, $8b58
    nop
    ld [hl], b
    add e
    nop
    ld a, d
    inc b
    ld b, $07
    dec b
    rlca
    ld [$008a], sp
    add l
    inc b
    inc bc
    rst $38
    ld b, $ff
    nop
    adc d
    nop
    push hl
    adc c
    ld bc, $4330
    ld [$06fa], sp
    db $e4
    db $fc
    add h
    db $fc
    inc bc
    rst $38
    nop
    adc d
    ld bc, $ff45
    ld l, b
    inc b
    ld bc, $0200
    ld bc, $6e01
    ld bc, $0001
    ld [hl+], a
    ld bc, $0101
    ld bc, $39ec
    inc bc
    inc bc
    inc bc
    inc c
    ld c, $43
    db $10
    rra
    nop
    rrca
    jp z, $e086

    dec hl
    ld b, $0f
    db $10
    add hl, de
    jr nz, jr_04d_4904

    ld h, b
    rst $28
    rra
    ld a, a
    ld b, $3f
    add b
    cp a
    ld b, b
    ld e, a
    ld h, b
    ld a, a
    ld d, b
    ld a, a
    db $10
    rst $18

jr_04d_48ed:
    nop
    sub a
    nop
    adc a
    nop
    rla
    nop
    rrca
    nop
    rra

Call_04d_48f7:
    nop
    ccf
    adc b
    rst $38
    add b
    rst $38
    ld b, e
    ld a, a
    ccf
    inc a
    inc bc
    inc bc
    dec h

jr_04d_4904:
    ld bc, $0225
    ld bc, $0200
    inc hl
    inc b
    nop
    nop
    ld [hl+], a
    ld [$0000], sp
    inc h
    db $10
    ld b, $08
    jr nz, @+$17

    jr nz, jr_04d_4944

    jr nz, jr_04d_4951

    add h
    add e
    inc de
    ld a, [de]
    db $10
    rra
    db $10
    ccf
    jr c, jr_04d_48ed

    db $ec
    inc bc
    ld d, [hl]
    nop
    cp a
    rra
    ldh [rIE], a
    nop
    rst $38
    inc bc
    db $fc
    db $fc
    xor d
    nop
    inc de
    rlca
    add c
    ld b, e
    jp $ff7c


    inc b
    rst $38
    ld [$ff44], sp
    nop
    add hl, de
    ld b, b

jr_04d_4944:
    rst $38
    adc h
    rst $38
    or d
    di
    ld l, b
    jp hl


    ld a, h
    rst $38
    ld a, b
    rst $38
    nop
    rst $38

jr_04d_4951:
    ld bc, $0fff
    cp $7e

jr_04d_4956:
    pop hl
    db $fc
    add a
    db $fc
    dec de
    db $fc
    db $e3
    ld b, l
    db $fc
    inc bc
    inc b
    ld a, h
    inc bc
    inc e
    inc bc
    jr jr_04d_49ab

    rlca
    ld [$001f], sp
    rrca
    nop
    rlca
    nop
    dec bc
    db $10
    rlca
    inc bc
    dec bc
    inc bc
    rla
    ld bc, $200b
    rla
    ld h, b
    rrca
    and b
    rra
    ld [hl], b
    rrca
    or b
    rrca
    ld a, b
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld b, l
    rst $38
    nop
    dec b
    ld a, a
    ret nz

    rst $18
    jr c, jr_04d_4956

    rst $00
    ld l, c

jr_04d_4995:
    dec c
    jr jr_04d_49d0

    add [hl]
    add $01
    rlca
    ld bc, $309f
    rst $38
    ld c, b
    rst $08
    add b
    rst $08
    ld b, e
    add c
    rst $38
    inc bc
    ld b, d
    cp $3c

jr_04d_49ab:
    db $fc
    ld b, a
    db $10
    ldh a, [rSB]
    nop

jr_04d_49b1:
    ldh a, [rSCX]
    jr nz, jr_04d_4995

    ld bc, $e000
    ld b, e
    ld b, b
    ret nz

    ld [$c341], sp
    ld b, b
    call nz, $c848
    ld h, c
    ldh a, [rSTAT]
    ld b, h
    ret nz

    ld b, e
    jr @+$65

    ldh a, [$29]
    db $ec
    jr nz, jr_04d_49b1

    db $10

jr_04d_49d0:
    pop af
    jr @-$06

    inc c
    db $fc
    add d
    cp $81
    rst $38
    nop
    rst $38
    jr @+$01

    inc a
    rst $38
    ld e, $ff
    inc c
    ld b, [hl]
    rst $38
    nop
    rrca
    ld [bc], a
    rst $38
    adc h
    ld a, [hl]
    ldh a, [rNR33]
    ldh a, [$2e]
    db $fc
    inc hl
    rst $38
    db $10
    rst $38
    call z, $3f3f
    ld l, a
    nop
    add b
    db $f4
    ld [hl+], a
    nop
    rra
    daa
    add b
    rlca
    ret nz

    ld b, b
    ldh [rSVBK], a
    xor h
    ld c, h
    jp nz, $8722

    nop
    jr nz, jr_04d_4a0c

jr_04d_4a0c:
    ld bc, $0e61
    jr nz, @-$59

    and b
    adc d
    sub b
    ld [hl], l
    ret nc

    ld c, a
    rst $08
    ld [hl], l
    ret nz

    ld a, [hl+]
    ldh [$35], a
    pop hl
    and e
    nop
    db $fc
    inc c
    ld c, $af
    ld bc, $0055
    xor d
    nop
    push de
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    add e
    add h
    nop
    rrca
    db $ec
    dec a
    ldh [$31], a
    ld b, b
    ret nz

    jr nz, jr_04d_4a5b

    ldh [rNR41], a
    db $e4
    xor h
    or $72
    ld c, [hl]
    ld [bc], a
    sbc h
    inc b
    ld a, h
    inc b
    sub h
    inc a
    ld a, [hl]
    jp nz, $02be

    ld a, [hl]
    ld a, [hl-]
    call nc, $0cfc
    db $fc
    ld h, [hl]
    cp $32
    cp $01
    rst $38
    add b
    rst $38

jr_04d_4a5b:
    ld h, b
    rst $38
    jr @+$01

    inc b
    rst $38
    ld [bc], a
    rst $38
    add c
    ld a, a
    rst $38
    inc bc
    db $fc
    db $fc
    db $ec
    ld e, l
    dec c
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    ld b, $fa
    ld a, $c2
    db $fc
    inc a
    xor b
    nop
    ld l, b
    rlca
    ld b, $08

Call_04d_4a80:
    add hl, bc
    nop
    inc c
    inc b
    rlca
    inc b
    and h
    ld bc, $1377
    inc b
    rlca
    nop
    ld a, [bc]
    nop
    ld de, $1200
    nop
    ld hl, $2700
    ld [bc], a
    cpl

jr_04d_4a98:
    jr nz, @+$41

    ld hl, $133f
    ld e, $92
    ld [bc], a
    inc l
    inc b
    add b
    ld b, a
    ld a, a
    jr nc, jr_04d_4a98

    add e
    ld bc, $06a6
    add hl, bc
    rst $38
    ld d, $fe
    dec c
    db $fd
    rrca
    ld b, [hl]
    rst $38
    nop
    ld [bc], a
    rra
    rst $38
    rst $38
    add e
    nop
    db $d3
    dec b
    nop
    db $fc
    rst $38
    inc bc
    ld [bc], a
    inc bc
    call nz, $a400
    dec bc
    rlca
    rrca
    jr nc, @+$33

    ld b, b
    ld [hl], e
    rst $00
    rst $38
    inc b
    db $fc
    ld [$43f9], sp
    ld [$04ff], sp
    call nz, $03ff
    ccf
    nop
    add $01
    ld b, d
    dec bc
    jr nc, @+$01

    ldh a, [$cf]
    ldh a, [rIF]
    ldh a, [$1f]
    ld hl, sp-$19
    ld hl, sp+$07
    ld b, a
    db $fc
    inc bc
    ld bc, $8000
    and h
    inc bc
    ld e, $01
    ldh a, [$90]
    ld b, [hl]
    ldh a, [rNR10]
    ld bc, $e020
    and a
    nop
    sbc h
    nop
    nop
    ld d, b
    ret nz

    ld b, b
    add e
    ld bc, $057c
    ld hl, $133f
    rra
    rrca
    rrca
    adc c
    nop
    jr nz, jr_04d_4b14

jr_04d_4b14:
    ld bc, $0384
    ld d, c
    nop
    ld [$ff46], sp
    nop
    nop
    ccf
    ld [hl+], a
    rst $38
    dec c
    pop af
    rst $38
    rst $00
    cp $77
    ld hl, sp-$01
    nop
    rst $38
    pop bc
    ccf
    ccf
    ld bc, $8301
    rst $38
    nop
    nop
    ld b, [hl]
    rst $38
    nop
    ld bc, $ff10
    ld b, h
    ldh a, [$cf]
    ld [$f89f], sp
    rla
    ld hl, sp+$27
    ld hl, sp+$47
    db $fc
    add e
    ld b, e
    db $fc
    inc bc
    add e
    rst $08
    inc b
    inc c
    ld c, $00
    nop
    nop
    add $00
    rra
    add e
    nop
    ld [$0f01], a
    rst $38
    adc e
    rst $08
    ld de, $ffff
    ld a, b
    rst $38
    pop hl
    rst $38
    push bc
    cp $77
    ld a, b
    rra
    add c
    ccf
    ld a, a
    inc b
    rst $38
    jp $8eff


    rst $08
    ld [$f88f], sp
    sub a
    ld hl, sp+$07
    ld hl, sp+$27
    db $fc
    ld b, e
    add e
    pop de
    add e
    nop
    ldh a, [rTMA]
    inc c
    rst $38
    or d
    di
    xor b
    rst $28
    ld [hl], b
    add $00
    di
    ld b, $40
    rst $38
    add [hl]
    rst $38
    sbc b
    rst $38
    jr nz, @-$78

    adc l
    rst $38
    ld a, d
    ld [hl+], a
    ld bc, $25e0
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    rlca
    rra
    dec de
    ld e, $23
    ld a, $25
    dec a
    ld b, [hl]
    ld a, [hl]
    ld b, l
    ld a, a
    adc [hl]
    rst $38
    sub c
    db $f4
    xor d
    ldh [$d7], a
    pop bc
    and d
    add e
    ld [hl], e
    sbc [hl]
    adc [hl]
    sub b
    sub b
    ld d, b
    ld d, b
    ld sp, $4331
    inc bc
    ld [bc], a
    ld b, e
    rlca
    inc b
    add e
    xor e
    call nz, $01b3
    ld bc, $2201
    ld [bc], a
    ld bc, $0202
    call z, $e0bf
    ld [hl-], a
    ld bc, $0702
    ld [$030f], sp
    rra
    ld d, $1d

jr_04d_4be1:
    dec e
    ld e, $3e
    ld a, l
    ld e, l
    cp d
    xor b
    rst $18
    xor a
    ld e, a
    ld c, a
    cp [hl]
    adc c
    ld a, b
    jr c, jr_04d_4be1

    ld sp, $73e0
    ret nz

    jp $e7e0


    ldh [$6f], a
    ldh [$7f], a
    add b
    ld a, a
    call nz, $e1ff
    rst $18
    rst $38
    ccf
    jr nz, jr_04d_4c25

    db $10
    ld l, a
    db $fc
    rst $08
    rst $38
    ld b, e
    ld b, e
    ld a, a
    dec e
    push hl
    rst $38
    ld [$f53f], a
    ccf
    ld a, [$ef1f]
    rra

jr_04d_4c19:
    rst $20
    rra
    pop bc
    ccf
    nop
    rst $38
    ld c, b
    rst $38
    xor d
    rst $38
    cp $01

jr_04d_4c25:
    adc [hl]
    ld [hl], c
    sbc c
    adc c
    cp e
    cp e
    ld b, h
    ld b, h
    ld h, l
    dec c
    rlca
    rrca
    ld a, [de]
    dec d
    push af
    ld_long a, $ff3f
    add sp, -$09
    ld d, h
    xor e
    xor d
    ld d, l
    add e
    add e
    ldh [rNR44], a
    ld b, b
    cp a
    nop
    rst $38
    ldh a, [rIE]

jr_04d_4c47:
    db $fc
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $0cff
    rst $30
    jr nc, jr_04d_4c19

    ld b, b
    rst $20
    ldh [$a7], a
    ld hl, sp-$01
    ld [bc], a
    rst $38
    ld e, $fb
    db $fc
    ld a, a

jr_04d_4c5e:
    add b
    rst $38
    nop
    rst $38
    ld bc, $07ff
    inc hl
    rst $38
    dec de
    ld a, [$f5ff]
    rst $38
    add sp, -$01
    ld d, b
    rst $38
    add sp, -$01
    rst $18
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    ld a, a
    rst $38
    inc hl
    db $e3
    jr nz, jr_04d_4c5e

    ld h, b
    ldh [rNR10], a
    ret nc

    ldh a, [$f0]
    ld l, c
    jr jr_04d_4c47

    ret nz

    daa
    rst $28
    jr nc, @+$01

    sub b
    rst $38
    ld a, [hl]
    rst $38
    rla
    rst $38
    ld de, $10ff
    rst $38
    jr @+$01

    inc c
    rst $38
    rrca
    rst $38
    jr c, @+$01

    ld h, b
    ld b, h
    rst $38
    ret nz

    ld bc, $ffe0
    ld b, e
    ld hl, sp+$7f
    dec b
    db $fc
    ld a, a
    db $fd
    ccf
    cp $3e
    ld b, e
    rst $38
    ccf
    rra
    ld a, [$fd7f]
    rst $38
    ld a, [$f4ff]
    rst $38
    add sp, -$01
    ld b, b
    rst $38
    ret nz

    rst $38
    ld h, c
    rst $38
    ld a, a
    rst $38
    inc sp
    cp $e3
    cp $33
    cp $16
    rst $38
    ld a, a
    rst $38
    pop hl
    rst $38
    cp $fe
    add h
    nop
    ld d, e
    ld b, $03
    inc b
    inc b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    adc e
    db $e3

Call_04d_4ce0:
    ld [$f030], sp
    ld [$98f8], sp
    ld hl, sp-$02
    cp $e1
    ld b, [hl]
    rst $38
    ret nz

    inc e
    ld [hl], b
    rst $38
    jr c, @+$01

    ccf
    rst $38
    add hl, de
    cp $13
    db $fc
    rla
    ld hl, sp+$26
    ld sp, hl
    db $fd
    cp $3f
    ld hl, $003f
    rst $20
    ret c

    ld h, e
    db $e4
    jp Jump_04d_4ec4


    call Call_04d_443e
    cp $02
    dec b
    ccf
    rst $38
    ei
    rst $00
    ld a, h
    add e
    and h
    nop
    ld a, [c]
    nop
    nop
    ld b, e
    cp $01
    ld bc, $8778
    and e
    nop
    push af
    dec c
    ld d, h
    ld a, a
    rst $38
    add b
    ld e, d
    and l
    add b
    ld e, e
    sbc c
    sbc b
    adc e
    xor e
    ld b, h
    ld b, h
    or l
    nop
    rlca
    ld b, e
    ld b, b
    ret nz

    ldh [$27], a
    jr nz, @-$1e

    nop
    ldh a, [$d0]
    ldh a, [$f0]
    jr nc, @-$06

    ld [$04fc], sp
    db $fc
    jp nz, $02fe

    cp $81
    rst $38
    ld b, c
    rst $38
    ld hl, $22fe
    cp $12
    ld a, h
    sub h
    jr c, jr_04d_4db0

    jr c, jr_04d_4d92

    ret z

    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$90]
    ldh a, [rSCX]
    ld h, b
    ldh [rSB], a
    ld b, b
    ret nz

    ld b, a
    jr nz, @-$1e

    add e
    cp c
    add a
    add a
    and e
    nop
    ld e, h
    add e
    nop
    ld c, h
    ldh [rNR43], a
    ld b, $07
    inc bc
    rlca
    ld a, [de]
    rra
    ld h, $3d
    ld d, l
    ld l, [hl]
    db $76
    ld c, l
    push af
    adc [hl]
    ld a, [c]
    adc a
    ld a, [$f987]
    add a
    cp e
    rst $00
    ld [hl], a
    ld c, h
    ld l, a
    ld e, b
    cpl

jr_04d_4d92:
    jr c, jr_04d_4dab

    jr @+$11

    ld [$0c0b], sp
    inc b
    ld [hl+], a
    ld b, $01
    rlca
    dec b
    add e
    xor e
    add e
    nop
    sub b
    ldh [$27], a
    xor a
    db $fd
    rra
    db $fd
    sbc a

jr_04d_4dab:
    cp $f7
    ld a, a
    rst $18
    ccf

jr_04d_4db0:
    rst $10
    rrca
    add l
    ld b, e
    sbc a
    ld a, a
    dec [hl]
    sbc a
    ld c, d
    rst $08
    or a
    ld h, a
    ld h, a
    ccf
    pop hl
    rst $18
    nop
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp+$5f
    ldh a, [rIE]
    pop hl
    rst $30
    rrca
    add d
    adc h
    adc d
    ld bc, $003f
    db $fc
    ld b, [hl]
    ccf
    rst $38
    dec d
    ld a, [$fd7f]
    ld a, a
    ld a, [$fdff]
    rst $38
    rst $38
    cp $73
    ld [c], a
    reti


    pop af
    ld a, [hl]
    rst $38
    ld a, h
    ld hl, sp+$32
    rst $38
    db $e3
    rst $38
    add a
    ld bc, $e068
    daa
    add hl, de
    rst $38
    ld [de], a
    db $fd
    rla
    ld hl, sp+$2f
    ldh a, [$2b]
    db $f4
    ld [hl], a
    db $fc
    adc e
    db $fc
    rst $08
    ld hl, sp+$6f
    ld hl, sp-$61
    ldh a, [rNR21]
    ld sp, hl
    ld l, b
    rst $38
    db $f4
    adc a
    ld a, [$e107]
    rra
    add c
    ld a, a
    inc bc
    rst $38
    add h
    rst $38
    ld a, [hl-]
    dec e
    db $fc
    db $e3
    add a
    ld bc, $05c8
    db $10
    ldh a, [$c8]
    ld hl, sp-$58
    ld a, b
    ld b, e
    ret nc

    jr c, @+$45

    adc h
    ld a, h

jr_04d_4e2c:
    ld b, a
    inc c

jr_04d_4e2e:
    db $fc
    add hl, bc
    inc e
    db $fc
    jr jr_04d_4e2c

    jr z, jr_04d_4e2e

    ld c, b
    ld hl, sp-$30
    ldh a, [$8a]
    ld [bc], a
    ld [hl], b
    inc b
    ld a, [hl]
    rst $18
    ld a, $d7
    rrca
    inc h
    rst $38
    rrca
    cp $bf
    cp $d7
    db $fc
    xor a
    db $fd
    rst $18
    ld sp, hl
    cp $73
    db $fd
    rlca
    ld hl, sp-$01
    ret nc

    adc d
    ld bc, $8405
    xor a
    ld a, [bc]
    ldh a, [$1f]
    ldh a, [$8f]
    db $fc
    rst $28
    ld a, a
    db $db
    ccf
    rst $10
    rrca
    add e
    nop
    ldh [rTMA], a
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    adc b
    rst $30
    add h
    nop
    db $eb
    rst $38
    inc b
    ld bc, $0403
    inc b
    nop
    ld [hl+], a
    ld [$041f], sp
    inc b
    inc bc
    ld [bc], a
    ld bc, $1c01
    inc a
    ld b, e
    ld b, e
    nop
    add b
    add c
    add b
    ld b, a
    ld b, b
    rra
    ld a, $01
    ld bc, $0602
    ld [$0108], sp
    db $10
    inc de
    db $10
    rrca
    db $10
    ld b, $0f
    db $ec
    scf
    inc b
    add b
    add b
    ld b, b
    ld b, b
    nop
    ld [hl+], a
    jr nz, jr_04d_4eb3

    db $10
    db $10
    add hl, bc
    add hl, bc
    add $06
    cp $80
    rst $38

jr_04d_4eb3:
    ret nz

    ld c, d
    rst $38
    nop
    ld [$ff01], sp
    ld h, $fc
    ccf
    jp nz, $8143

    add c
    ld b, e
    ld [bc], a
    inc bc

Jump_04d_4ec4:
    ld bc, $0306
    ld c, l
    inc b
    rlca
    call nz, $048f
    inc bc
    ld bc, $0001
    ld bc, $c9a7
    rrca
    ld bc, $0301
    rlca
    dec de
    inc a
    ld e, a
    ld h, b
    rrca
    ret nz

    cp h
    jp $ff83


    inc a
    ld a, h
    ld l, c
    ldh [$2d], a
    jr nz, jr_04d_4f5a

    adc b
    adc b
    nop
    inc b
    inc bc
    dec b
    dec c
    ld c, $2a
    inc a
    call nz, $d849
    ld d, d
    sbc d
    sub e
    set 6, e
    db $fd
    and c
    cp $00
    rst $38
    nop
    ld a, a
    add b
    cp a
    ret nz

    inc a
    ret nz

    ld sp, $67c3
    add a
    ld l, h
    adc [hl]
    ld c, b
    sbc l
    ld d, c
    sbc e
    or e
    dec de
    sub d
    scf
    ld b, e
    or d
    ld [hl], $15
    ld d, e
    or [hl]
    ld d, d
    cp e
    ld a, l
    sbc e
    dec hl
    db $dd
    dec a
    adc $9f
    rst $20
    adc l
    di
    add a
    ld hl, sp-$45
    db $fc
    rra
    rst $38
    inc de
    di
    ld b, e
    and b
    ld h, b
    ld [bc], a
    add b
    ld h, b
    nop
    and d
    rst $30
    db $d3
    nop
    ld h, c
    ldh [rOBP1], a
    and b
    ret nz

    ldh a, [$30]
    jr z, jr_04d_4f5c

    ret nc

    ret z

    ld l, d
    rst $20
    xor $e1
    rst $28
    ldh [$df], a
    ret nz

    ccf
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    inc bc
    nop
    add h
    ld a, b
    cp $ff

jr_04d_4f5a:
    inc bc
    add e

jr_04d_4f5c:
    inc [hl]
    ld a, b
    db $fd
    cp $83
    jp $3d18


    ld a, $7e
    db $76
    ld h, e
    ld h, e
    ld h, c
    inc hl
    ld [hl], c
    inc de
    inc sp
    ld b, $86
    rst $38
    db $fc
    ld [hl], a
    ld sp, hl
    ld a, e
    add a
    rst $38
    cp $76
    ld sp, hl
    rst $38

jr_04d_4f7b:
    nop
    ld a, h
    add e
    rst $38
    rst $38
    sbc a
    ld a, a
    ld bc, $0101
    ld bc, $0101
    ld a, a
    dec bc
    add e
    rst $00
    rst $30
    jr c, jr_04d_4f7b

    db $10
    ld sp, hl
    inc bc
    ldh a, [rLYC]
    dec [hl]
    rst $00
    and e
    jp hl


    ldh [$35], a
    inc a
    nop
    sbc a
    ret nz

    rst $08
    ldh [$67], a
    ld [hl], b
    ld [hl-], a
    or c
    ret nc

    sbc e
    jp c, $e9c9

    ld c, l
    ld c, [hl]
    ld l, [hl]
    ld l, h
    ld l, h
    ld l, l
    ld l, h
    ld e, e
    rst $28
    xor $da
    cp [hl]
    jp c, $bd7f

    cp $68
    xor a
    call c, $ff3f
    ld sp, hl
    db $fc
    ldh a, [$f8]
    ldh [$e0], a
    cp b

jr_04d_4fc5:
    cp $01
    rst $38
    rlca
    ld hl, sp-$62
    pop hl
    ld h, b
    ld a, a
    rrca
    rra
    sbc e
    nop
    ld b, l
    ld b, $c0
    ld h, b
    ld [hl], b
    db $10
    xor b
    sub b
    ret z

    ld b, h
    ret c

    add sp, $05
    ret nc

    or b
    sub b
    ld [hl], b
    jr nz, jr_04d_4fc5

    ld b, e
    db $10
    ldh a, [rNR33]
    ld [$48f8], sp
    ld hl, sp+$44
    db $fc
    ld [hl-], a
    ld a, $4a
    ld c, [hl]
    add l
    add a
    add e
    add e
    ld b, e
    ld b, e
    daa
    ld hl, $011f
    rrca
    ld bc, $829e
    ld a, d
    ld b, $fc
    inc c
    ldh a, [$f0]
    adc b
    nop
    ld e, d
    jp $1701


    ld [bc], a
    ret nz

    nop
    add b
    xor c
    nop
    ld e, d
    ld bc, $0404

jr_04d_5017:
    ld b, e
    inc c
    ld [$0e01], sp
    ld [$00c4], sp
    adc a
    nop
    ld [bc], a
    sub l
    ld bc, $1f74
    ld bc, $0f01
    ld b, $1f
    ld a, b
    adc $8d
    db $e4
    rst $00
    scf
    inc sp
    ld c, [hl]
    ld c, e
    add [hl]
    add a
    adc e
    adc c
    ld de, $0111
    ld bc, $0181
    db $e3
    ld bc, $01ff
    cp $e3
    ld e, $1f
    add l
    nop
    sbc d
    ld l, e
    rrca
    inc bc
    ld bc, $0605
    ld a, [bc]
    inc c
    inc b

jr_04d_5052:
    add hl, bc
    jr jr_04d_5067

    ld a, [de]
    inc de
    ld l, e
    ld [hl], e

jr_04d_5059:
    db $fd
    add c
    add e
    nop
    call c, $e809
    jr jr_04d_5052

    adc b
    ld a, d
    rst $00
    cp $e1

jr_04d_5067:
    rst $38
    ldh a, [$85]
    ld bc, $893a
    ld bc, $0590
    rst $28
    db $10
    cp $01
    cp $4e
    adc c
    ld bc, $05f0
    ldh a, [rNR10]
    add sp, -$10
    ret z

    ret c

    adc d
    call $070c
    rra
    jr jr_04d_50a6

    ld h, b
    ld b, h
    db $fc
    ld b, d
    cp $32
    ld a, $48
    ld c, a
    add a
    ld [bc], a
    jr jr_04d_5017

    nop
    ldh [$0e], a
    jr c, jr_04d_5059

    ld h, l
    add e
    ld c, a
    adc a
    ret c

    ld e, $90
    add hl, sp
    and c
    inc sp
    rst $20
    inc sp
    and e

jr_04d_50a6:
    ld b, [hl]
    ld h, [hl]
    xor $1c
    xor a
    ld h, [hl]
    and d
    ld [hl], a
    ld a, l
    or e
    ld d, a
    cp c
    cp c
    sbc $be
    rst $08
    sbc e
    rst $20
    adc a
    ldh a, [$33]
    db $fc
    inc de
    rst $30
    and b
    ld h, b
    ld bc, $1800
    inc a
    ld a, $7e
    ld h, d
    add [hl]
    ld bc, $0c55
    ld b, [hl]
    add [hl]
    rst $38
    db $fc
    scf
    ld sp, hl
    ei
    rlca
    rst $38

jr_04d_50d4:
    cp $77
    ld hl, sp-$01
    ld h, c
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    add e
    ld bc, $e0a0
    ld h, $7b
    inc bc
    sbc h
    nop
    xor a
    ret nz

    ld h, a
    ldh a, [$33]
    jr c, @+$5c

    sbc c
    add sp, -$33
    db $ec
    ld h, l
    dec h
    ld [hl], a
    ld h, [hl]

jr_04d_50f5:
    ld [hl], $34
    inc [hl]
    ld [hl], l
    inc [hl]
    dec hl
    ld [hl], a
    cp $6a
    sbc $ea
    rst $38
    call $987e
    rst $38
    inc [hl]
    rst $10
    rst $28
    add hl, de
    add h
    ld bc, $0bcb

jr_04d_510d:
    ld a, [hl+]
    inc a
    call nz, $d948
    ld d, e
    sbc b
    sub b
    ret z

    ldh a, [$fc]
    and b
    add e
    ld [bc], a
    xor h
    dec bc
    jr z, jr_04d_5137

    db $10
    ld [$870a], sp
    ld c, [hl]
    ld b, c
    rrca
    jr nz, @+$21

    nop
    adc l
    ld [bc], a
    cp h
    dec bc
    db $ec
    db $10
    ld hl, sp+$00
    ld a, [c]
    ld b, a
    jr nc, jr_04d_50f5

    ldh a, [rP1]

jr_04d_5137:
    ld hl, sp+$00
    adc c
    ld bc, $8ba6
    ld bc, $09f0
    jr z, @+$12

    ld [$a818], sp
    sbc b
    jr z, jr_04d_51a0

    ld d, b
    jr nc, jr_04d_50d4

    ld [bc], a
    ld b, $ff
    ld l, a
    rlca
    ld bc, $0601
    rlca
    ld [$100f], sp
    rra
    ld b, e
    jr nz, jr_04d_519a

    ld b, a
    ld b, b
    ld a, a

jr_04d_515e:
    ld c, l
    add b
    rst $38
    rlca
    ld b, b
    rst $38
    ld l, d
    ld a, a
    dec [hl]
    ccf
    ld a, [bc]
    rrca
    db $ec
    ld b, l
    jr jr_04d_515e

    ldh a, [$08]
    ld [$e46c], sp
    jr jr_04d_510d

    ret


    ret


    ld a, $2f
    sub a
    sbc a
    ld a, b
    rst $18
    jr nz, @+$01

    ld [hl+], a
    rst $38
    inc a
    rst $38
    jr nc, @+$01

    ld [hl], c
    ld b, h
    rst $38
    ld a, a
    ld c, $7e
    rst $38
    xor $ff
    sub $ff
    xor d
    rst $38
    ld a, h
    rst $38
    add h
    rst $00
    inc b
    rlca
    inc b
    ld c, l

jr_04d_519a:
    rrca
    ld [$1f59], sp
    db $10
    ld b, [hl]

jr_04d_51a0:
    ccf
    jr nz, @+$0f

    ld d, d
    ld d, [hl]
    ccf
    ccf
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra

jr_04d_51ad:
    ld h, $3f
    ld h, $3b
    ld b, e
    db $10
    rra
    add hl, de
    daa
    ccf
    jr nz, jr_04d_51f5

    inc hl
    ld a, $26
    inc a
    ld b, a
    ld a, h

jr_04d_51bf:
    rst $08
    ld hl, sp+$4f
    ld sp, hl
    ld c, a
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01

jr_04d_51ca:
    rst $38
    nop
    rst $38
    ld bc, $a3ff
    add l
    jp $098b


    inc c
    di
    jr jr_04d_51bf

    ld [$10e7], sp
    rst $08
    jr nz, jr_04d_51ad

    add a
    add e
    ld b, e
    jr jr_04d_51ca

    ld b, $0c
    di
    rlca
    ld hl, sp+$03
    db $fc
    nop
    ld c, h

jr_04d_51ec:
    rst $38
    nop
    dec c
    jr z, @+$01

    dec d
    rst $38

jr_04d_51f3:
    ld a, [hl+]
    rst $38

jr_04d_51f5:
    dec d
    rst $38
    dec bc
    rst $38
    ld d, $fe
    inc b
    db $fc
    ld b, e
    ld [$03f8], sp
    jr nc, jr_04d_51f3

    ret nz

    ret nz

    and e
    nop
    ld c, $02
    ld a, a
    rst $38
    ld [hl+], a
    ld b, h
    rst $38
    nop
    rrca
    ld b, h
    rst $38
    rst $00
    rst $38
    xor d
    cp d
    rra
    ld bc, $707f
    rst $38
    jr nz, jr_04d_51ec

    db $fc
    rst $38
    ld a, d
    ld b, [hl]
    rst $38
    nop
    ld b, $83
    rst $38
    rst $38
    ld e, a
    rst $38
    xor d
    rst $38
    and e
    ld a, [c]
    inc b
    ld d, l
    cp $2a
    rst $38
    dec b
    ld d, h
    rst $38
    nop
    dec b
    ld bc, $fffe
    nop
    cp $01
    adc e
    sub c
    dec c
    ld [bc], a
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld a, a
    rst $38
    rst $10
    rst $38
    rst $08
    rst $38
    ld a, $3e
    ld h, a
    add hl, bc
    ld h, b
    ld h, b
    sbc b

jr_04d_5253:
    ld hl, sp+$04
    db $fc
    ld h, h
    db $fc
    ld h, b

jr_04d_5259:
    ret c

    and e
    nop
    ld d, $18
    call nz, $0afc
    ld a, [hl]
    sub [hl]
    cp $ea
    ld a, [hl]
    rst $10
    ld a, a
    ld a, [$fd3f]
    ccf
    ld a, [$fd3f]
    ld a, a
    ld a, [$f5ff]
    rst $38
    ld [$d5ff], a
    and h
    cp e
    add hl, bc
    xor d
    ld a, a
    call nc, $e03f
    sbc a
    ld [hl], b
    rst $08
    jr nc, jr_04d_5253

    ld c, e
    jr @-$17

    ld b, e
    jr nc, jr_04d_5259

    dec b
    ld h, b
    sbc a
    ret nz

    ccf
    add b
    ld a, a
    add d
    rst $30
    push bc
    ld bc, $0307
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    xor b
    add c
    jp $09bd


    ld a, [hl-]
    ccf
    dec e
    rra
    ld a, [bc]
    rrca
    inc b
    ld b, $03

jr_04d_52a9:
    inc bc
    db $76
    add hl, de
    add b
    ret nz

    ret nz

    ld b, b
    ldh [$b8], a
    ld hl, sp+$26
    cp $8f

jr_04d_52b6:
    rst $38
    jr jr_04d_52a9

    adc [hl]
    rst $38
    jr jr_04d_52b6

    or a
    rst $20
    inc a
    db $fc
    add hl, bc
    ld sp, hl
    ld c, [hl]
    ei
    ld h, h
    ld c, b
    rst $38
    ld a, h
    inc d
    ld [hl], $ff
    ld l, $ff
    daa
    rst $28
    ld h, $e7
    inc hl
    db $e3
    ld h, c
    pop hl
    jr nz, @-$1e

    ld d, b
    ldh a, [$30]
    ldh a, [$50]
    ldh a, [$b0]
    adc l
    add e
    inc bc
    ld hl, sp-$58
    ld hl, sp+$58
    adc d
    add e
    inc bc
    ld d, h
    call nc, $f8f8
    ld a, a
    and a
    nop
    db $10
    and l
    nop
    ld d, $51
    ld [bc], a
    cp $05
    add h
    db $fc
    ld d, h
    db $fc
    xor b
    ld hl, sp-$08
    add hl, hl
    nop
    add c
    add e
    nop
    db $10
    ld bc, $0e0b
    jp $ae00


    ld [de], a

jr_04d_530c:
    dec bc
    rrca
    ld [$030e], sp
    ld c, $16
    inc e
    rla
    inc e
    rra
    jr jr_04d_5348

    add hl, sp
    rst $28
    ld hl, sp+$27
    db $fc
    daa
    add e
    nop
    rst $38
    nop
    rst $38
    adc l
    ld bc, $0402
    ret nz

    ret nz

    jr nz, jr_04d_530c

    ld a, [hl]
    and h
    ld [bc], a
    dec bc
    inc bc
    xor e
    rst $38
    ld l, [hl]
    ld a, [hl]
    add l
    ld bc, $0762
    rst $38
    db $fc
    ld a, e
    ld a, d
    rst $00
    rst $38
    rst $38
    inc a
    add a
    ld bc, $8b6e
    ld bc, $6174

jr_04d_5348:
    dec e
    inc e
    inc e
    ld h, d
    ld a, [hl]
    call $2dfb
    rst $38
    add c
    rst $38
    ld h, d
    ld a, [hl]
    add d
    cp $c2
    ld a, [hl]
    pop bc
    ld a, a
    pop af
    ccf
    ld sp, hl
    ccf
    db $fc
    ccf
    rst $38
    ccf
    db $fc
    ld a, a
    rst $38
    rst $38
    ld l, e
    inc de
    jr nc, jr_04d_539b

    ret nc

    ret nc

    jr c, jr_04d_53a7

    ld l, b
    ld l, b
    sub b
    sub b
    jr nc, jr_04d_53a5

    ret


    ret


    ld a, $bf
    ld [hl], a
    rst $38
    jr @+$01

    adc c
    inc bc
    db $10
    inc bc
    add hl, bc
    rrca
    ld [$8a0f], sp
    inc bc
    ld e, $02
    ld sp, hl
    daa
    db $fd
    add e
    inc bc
    inc l
    adc c
    inc bc
    ld b, b
    inc bc
    xor c
    rst $38
    ld l, [hl]
    rst $38
    adc e
    inc bc
    ld c, [hl]
    add hl, bc

jr_04d_539b:
    add e
    rst $38
    rst $00
    cp $ab
    cp d
    rst $38
    ld a, h
    rst $38
    add e

jr_04d_53a5:
    sub l
    inc bc

jr_04d_53a7:
    ld h, h
    inc bc
    pop bc
    rst $38
    ld [bc], a
    cp $90
    inc bc
    ld a, [hl]
    nop
    ld a, a
    adc c
    ld bc, $11f0
    rra
    rst $38
    inc h
    rst $20
    jr @-$0d

    ld e, $ff
    ld [hl], $e7
    jr c, jr_04d_539b

    ld l, a
    xor a
    ret nc

    inc sp
    adc h
    ld a, a
    jp $3c03


    jr @-$7d

    rst $38
    add hl, de
    rst $38
    adc [hl]
    cp $03
    rst $38
    and c
    rst $38
    add hl, de
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    ld h, [hl]
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    ldh [$8d], a
    ld bc, $088b
    rst $38
    ld [bc], a
    cp $1c
    db $fc
    ldh a, [$f0]
    or b
    ldh a, [$8b]
    ld [bc], a
    or [hl]
    ld [bc], a
    add b
    add b
    ld b, b
    ld [hl+], a
    ret nz

    inc bc
    ld h, b
    ldh [$a0], a
    ldh [$c8], a
    ld [bc], a
    add b
    ld b, $f0
    jr nz, @-$1e

    ld h, b
    ldh [$c0], a
    ret nz

    ret


    sbc d
    adc d
    rst $38
    db $10
    rst $28
    ld a, [de]
    di
    inc e
    add sp, $1f
    rst $20
    dec sp
    srl h
    call z, $9b6b
    call nz, $823d
    ld a, a
    add e
    inc bc

jr_04d_5423:
    ld [hl-], a
    rst $38
    ld l, d
    inc hl
    ld bc, $81c2
    adc l
    sub b
    dec c
    ld b, $06
    inc c
    ld [$1417], sp
    rrca
    inc e
    rrca
    ld [$0707], sp
    inc bc
    ld [bc], a
    db $ec
    ld b, l
    ldh [$2c], a
    jr c, jr_04d_5479

    inc b
    call z, $9e8c
    ld [de], a
    ld [de], a
    ld de, $0b31
    dec sp
    ld a, [bc]
    ld a, [hl-]
    inc b
    cp a
    sbc h
    rst $38
    db $e3
    rst $38
    add b
    rst $38
    ld h, b
    cp a
    inc a
    dec e
    jr c, jr_04d_546c

    db $76
    rra
    db $fc
    rrca
    rst $38
    inc bc
    rst $28
    jr jr_04d_5423

    ld a, h
    cp a
    ret nz

    rst $38
    ld bc, $f3ff
    rlca

jr_04d_546c:
    ld b, e
    rlca
    dec b
    inc b
    dec b
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    jp $0e00


    ld a, a

jr_04d_5479:
    rlca
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    dec bc
    ld b, $06
    adc a
    xor c
    dec bc
    inc bc
    rra

jr_04d_5487:
    nop
    ld h, b
    nop
    add b
    nop
    rrca
    rlca
    ccf
    ld [$4378], sp
    db $10
    ldh a, [$0c]
    jr nc, jr_04d_5487

jr_04d_5497:
    ldh a, [$f8]
    jr c, jr_04d_5497

    inc e
    db $fc
    ld e, $fe
    ld a, $ff
    ld a, a
    jr nc, @+$01

    inc de
    rst $00
    rst $38
    adc e
    cp a
    jp c, $9bdf

    sbc a
    rst $00
    rst $08
    rst $28
    rst $38
    db $fd
    di
    ld a, a
    ld a, h
    ld e, a
    ld a, a
    ld c, a
    ld a, a
    ld b, l
    daa
    ccf
    ld b, e
    cpl
    ccf
    dec d
    ld a, $7e
    ld c, [hl]
    ld c, [hl]
    ld b, c
    ld b, a
    ld de, $86bf
    adc a
    jp nz, $72c6

    cp $7c
    db $fc
    ld hl, sp-$08
    or b
    cp b
    ldh [$e0], a
    ld l, a
    add hl, bc
    add b
    ret nz

    jr nz, jr_04d_54fc

    db $10
    sub b
    sub b
    ret nc

    ld c, b
    ld a, b
    ld b, e
    jr z, @+$3a

    ld bc, $1010
    adc h
    sbc e
    dec bc
    add b
    and c
    db $e3
    sbc b
    call c, $cc8c
    adc $ee
    rst $08
    rst $38
    rst $08
    ld b, h
    rst $38
    sbc a
    nop
    ccf

jr_04d_54fc:
    call z, $09f9
    cp $ff
    sbc h
    cp a
    sbc b
    sbc a
    sub b
    sbc a
    db $10
    sbc a
    and l
    nop
    ld a, [c]
    nop
    inc b
    jp $a300


    ld [bc], a
    rlca
    ld bc, $220f
    ld [$0c10], sp
    inc de
    inc de
    db $10
    ld de, $1f1c
    ld [hl+], a
    ccf
    ld d, l
    ld a, a
    or a
    cp a
    ld l, e
    ld l, e
    ld e, $1e
    ld [hl], e
    dec bc
    jr jr_04d_5545

    ld hl, $2739
    ccf
    ld c, [hl]
    ld a, [hl]
    cp h
    db $fc
    cp $fe
    ld h, c
    ld d, $01
    rlca
    db $10
    ld a, b
    ld [$c69c], sp
    add $63
    ld h, e
    inc sp
    inc sp

jr_04d_5545:
    ld sp, $197f
    rst $38
    sbc c
    rst $38
    sbc e
    rst $38
    db $db
    rst $38
    rst $18
    inc hl
    rst $38
    inc b
    db $fc
    db $fd
    db $e3
    rst $30
    rst $28
    add l
    di
    nop
    ld a, a
    ld b, e
    rst $38
    ld l, a
    nop
    rst $28
    ld b, e
    ld h, a
    rst $20
    db $10
    set 5, a
    ret z

    jp hl


    ret c

    db $dd
    rst $10
    rst $10
    ret c

    reti


    ld h, a
    rst $38
    ld a, $7f
    inc a
    db $fc
    ret nz

    ld b, h
    ret nz

    ld b, b
    or b
    nop
    xor d
    inc c
    inc bc
    rlca
    rrca
    ld [$101c], sp
    jr nc, @+$22

    ld h, b
    ld b, b
    ld h, b
    ret nz

    ret nz

    adc e
    sbc e
    ld a, [bc]
    jr c, @+$7a

    add [hl]
    cp $43
    ld a, a
    ld hl, $2b3f
    ld a, a
    dec d
    ld b, h
    rst $38
    sbc a
    nop
    rst $18
    add l
    db $eb
    dec bc
    rst $38
    rst $20
    rst $38
    jp $cbff


    rst $38
    rst $30
    rst $38
    ld l, e
    rst $38
    rst $30
    ld b, e
    rst $38
    cp a
    ld b, $bf
    sbc a
    sbc a
    adc a
    rst $18
    rst $00
    rst $08
    inc hl
    jp Jump_04d_430b


    rst $00
    ld b, l
    push bc
    add h
    add h
    add b
    add [hl]
    dec b
    dec b
    inc b
    inc b
    jp $2b00


    inc bc
    dec d
    rla
    dec c
    dec c
    ret nc

    nop
    rst $08
    rlca
    ldh [$e0], a
    ld hl, sp+$18
    inc a
    inc c
    ld c, $06
    ld b, e
    ld b, $02
    ld h, $03
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [hl+], a
    ld b, $07
    inc c
    inc c
    jr jr_04d_5626

    ldh a, [$f8]
    ldh [$e0], a
    inc h
    ret nz

    ld bc, $c0e0
    jr z, @-$1e

    nop
    ret nz

    jp nz, $2c89

    ret nz

    add hl, hl
    ldh [$08], a
    ldh a, [$d0]
    ldh a, [rNR10]
    ld [hl], b
    db $10
    ldh a, [$e0]
    ldh [rSCX], a
    db $10
    ld [hl], b
    dec b
    ldh [$f0], a
    ldh [$e0], a
    ld h, b
    ld h, b
    and a
    rst $28
    rrca
    inc e
    inc a
    inc sp
    ld sp, $5078
    ld a, [hl]
    ld b, b
    ccf
    jr nz, @+$41

    jr nc, jr_04d_5630

    ld [$0607], sp
    ld b, e
    inc bc

jr_04d_5626:
    ld [bc], a
    dec b
    rlca
    inc b
    rrca
    add hl, bc
    ld b, $0e
    push de
    nop

jr_04d_5630:
    pop bc
    db $10
    ld b, $07
    ld a, [$f3ff]
    ld a, a
    db $e4
    cp $68
    cp h
    ld [$849e], sp
    rst $38
    jp $e77f


    ld b, l
    ccf
    rst $38
    ld b, $ff
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    xor e
    ld bc, $0346
    ld bc, $0201
    inc bc
    add e
    ld [bc], a
    adc h
    dec bc
    ld bc, $080b
    ld [$0c0c], sp
    inc bc
    rrca
    ld bc, $0507
    rlca
    adc e
    ld [bc], a

jr_04d_5668:
    sbc b
    inc bc
    ld b, $3e
    pop bc
    pop bc
    ld h, d
    inc de
    sbc [hl]
    ld c, $ff
    pop af
    pop af
    jr nz, jr_04d_56a7

    nop
    ld [$0400], sp
    nop
    ld [c], a
    jp nz, $f1f2

    ei
    pop af
    rst $38
    ld hl, sp+$43
    rst $38
    db $fd
    ld h, $ff
    add e
    ld bc, $2320
    ccf
    db $10
    ld a, a
    ld a, a
    adc a
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    ld a, h
    ld a, h
    db $10
    ld [hl], b
    ld h, b
    ldh a, [rNR41]
    ldh [rNR41], a
    add h
    ld [bc], a
    db $dd
    nop
    nop
    adc l
    ld [bc], a

jr_04d_56a7:
    dec hl
    dec b
    add b
    ld b, b
    ld b, b
    jr nz, jr_04d_56ce

    nop
    add e
    ld bc, $045d
    ld l, b
    jr z, jr_04d_56ee

    jr jr_04d_56d0

    adc a
    inc bc
    inc c
    ld b, e
    rra
    db $10
    ld bc, $080f
    call Call_04d_4103
    add a
    inc bc
    ld b, b
    inc bc
    ld c, b
    db $fc

jr_04d_56ca:
    jr z, jr_04d_56ca

    add e
    inc bc

jr_04d_56ce:
    ld c, h
    rlca

jr_04d_56d0:
    ld [bc], a
    ld e, $0f
    rst $38
    ld a, [hl]
    ld a, a
    inc e
    inc e
    xor c
    sbc a
    ld bc, $c080
    ld [hl], l
    ldh a, [rNR44]
    db $dd
    sub a
    inc bc
    jr nc, jr_04d_5668

    db $ed
    sub c
    inc bc
    ld c, h
    add e
    inc bc
    ld e, h
    sbc a
    inc bc

jr_04d_56ee:
    add d
    nop
    ld sp, hl
    adc h
    inc bc
    and e
    ld bc, $ffff
    sbc l
    inc bc
    jp nc, $ff61

    ld l, e
    inc hl
    ld bc, $0000
    ld h, $02
    nop
    inc bc
    jp nz, $cb87

    adc h
    rra
    jr nc, @+$32

    ld c, h
    ld c, h
    ld b, d
    ld b, d
    sbc c
    add l
    adc h
    sub h
    adc [hl]
    sub h
    ld e, a
    ld b, e
    ld b, [hl]
    ld c, d
    ld b, a
    ld c, c
    daa
    ld hl, $2423
    inc de
    db $10
    ld de, $0812
    add hl, bc
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    jp z, $08ba

    ld bc, $0202
    nop
    inc b
    dec b
    dec b
    ld b, $06
    ld h, e
    rla
    rlca
    rlca
    rra
    jr jr_04d_576c

    jr nz, jr_04d_579e

    ld b, b
    cp [hl]
    add c
    cp l
    add d
    ld a, d
    inc b
    ld [hl], l
    ld [$08f0], sp
    ldh [rNR10], a
    jp hl


    db $10
    rst $28
    db $10
    ld b, l
    rst $18
    jr nz, jr_04d_5755

    ld a, a

jr_04d_5755:
    and b
    ld b, e
    cp $a1
    ldh [$39], a
    ld a, l
    ld h, e
    ld l, $33
    inc de
    rra
    rrca
    ld c, $03
    ld [bc], a
    rlca
    inc b
    add [hl]
    add l
    ld l, d
    ld l, l
    sub h

jr_04d_576c:
    dec de
    ret


    adc a
    ld h, d
    ld b, [hl]
    ld a, [hl-]
    ld [hl], $8c
    adc h
    ret nz

    ld b, c
    ldh [rNR43], a
    di
    ld [de], a
    ld a, e
    adc e
    ld a, $47
    rrca
    ld de, $c4c3
    jr c, jr_04d_57bd

    inc de
    rra
    ld a, [hl]
    ld l, l
    cp $83
    ld a, a
    ld e, e
    ld h, e
    ld h, a
    and d
    and [hl]
    inc l
    inc l
    jr nc, jr_04d_57c5

    and [hl]
    nop
    add hl, bc
    ld [hl+], a
    add b
    ldh [rBGP], a
    and b
    ld h, b

jr_04d_579e:
    ld e, a
    rra
    xor a
    nop
    rra
    nop
    ld a, a
    nop
    db $fd
    inc bc
    ei
    ld b, $f7
    inc c
    db $eb
    inc e
    rst $10
    jr nc, @-$57

    ld l, b
    ld h, a
    add sp, -$51
    or b
    call c, $f3e3
    rrca
    ld c, $fc
    ld sp, hl

jr_04d_57bd:
    db $f4
    ld c, d
    call nz, $c400
    ld b, b
    adc $20

jr_04d_57c5:
    rst $38
    ld [hl], b
    ld a, [c]
    sub b
    sub d
    jr z, jr_04d_5805

    cpl
    ccf
    ld e, [hl]
    db $76
    cp $e6
    cp a
    add a
    ld [hl], c
    rrca
    add $3e
    cp b
    ld hl, sp+$40
    ret nz

    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    ldh [$e0], a
    and e
    nop
    inc e
    ld [hl], e
    ldh [rNR52], a
    rlca
    rlca
    adc a
    adc b
    rst $38
    ld [hl], b
    sbc [hl]
    ld h, b
    inc a
    ret nz

jr_04d_57f4:
    ld a, c
    add b
    ei
    nop
    cp $01
    db $fd
    inc bc
    ld a, [$f407]
    rrca
    srl a
    jr nc, jr_04d_57f4

    db $fc

jr_04d_5805:
    db $fc
    ld a, [c]
    sbc [hl]
    xor c
    inc sp
    ld l, b
    ld sp, $3ca3
    db $10
    rra
    cpl
    ld b, e
    rrca
    rra
    nop
    rst $38
    add e
    add l
    inc bc
    ld a, $1d
    rst $38
    db $e4
    ld b, e
    rrca
    ld [$8f0b], sp
    adc h
    sbc a
    sbc h
    sbc e
    cp [hl]
    ld [hl], a
    ld a, [hl]
    dec bc
    rrca
    dec b
    rlca
    ld b, e
    ld [bc], a
    inc bc

jr_04d_5830:
    add h
    nop
    inc e
    or b
    pop hl
    ld bc, $f8f0
    ld b, e
    ld hl, sp+$08
    inc bc
    ldh a, [rNR10]
    ret nc

    jr nc, jr_04d_5884

    and b
    ld h, b
    add e
    ld bc, $6106
    rlca
    add c
    add c
    ld b, c
    pop bc
    jr nz, jr_04d_5830

    jp nz, $23c2

    ld [bc], a
    ldh [$39], a
    inc b
    inc b
    call nz, $3dc4
    db $fd
    add hl, bc
    ld sp, hl
    sub d
    ld a, [c]
    di
    di
    cp $fe
    adc b
    ld hl, sp-$1c
    db $fc
    ld e, b
    ld hl, sp+$2c
    db $fc
    ld h, $fe
    add hl, sp
    rst $38
    sbc [hl]
    ld a, [hl]
    ld d, b
    jr nc, jr_04d_5883

    jr nc, jr_04d_58a5

    ret nc

    add sp, $38
    cp $d6
    and c
    cp a
    ld d, c
    rst $18
    ld c, b
    rst $08
    ld b, h
    rst $00
    ld b, a

jr_04d_5883:
    rst $00

jr_04d_5884:
    add a
    add h
    add hl, bc
    add hl, bc
    ld de, $1310
    inc de
    inc c
    inc c
    ld [hl], a
    ld d, $40
    ret nz

    jr nz, jr_04d_58b4

    db $10
    db $10
    ld [$8808], sp
    ld c, b
    call nz, $e424
    sub h
    ld a, [c]
    add d
    ld a, [c]
    jp z, $2a32

    add hl, sp

jr_04d_58a5:
    ld hl, $4a19
    ld de, $431d
    ld a, [de]
    ld [de], a
    dec c
    ld a, [hl-]
    ld [hl+], a
    inc [hl]
    inc h
    ld [hl], h
    ld b, h

jr_04d_58b4:
    ld a, b
    ld c, b
    ld [hl], b
    ld d, b
    ldh [$a0], a
    ret nz

    ret nz

    and l
    nop
    ld [$c00d], sp
    ret nz

    and b
    ld h, b
    db $10
    ldh a, [$d8]
    ret z

    add h
    add h
    ld h, h
    ld h, h
    jr @+$1a

    adc [hl]
    nop
    inc c
    or h
    ld bc, $8311
    nop
    ld h, b
    nop
    ccf
    adc h
    nop
    ld h, l
    inc b
    pop hl
    db $10
    db $e3
    db $10
    rst $20
    add [hl]
    nop
    ld [hl], a
    ld de, $e0ff
    sbc [hl]
    sub c
    sbc b
    adc a
    sbc c
    adc a
    ld c, l
    ld b, a
    ld c, a
    ld b, e
    daa
    inc hl
    inc sp
    ld sp, $1113
    ld b, e
    add hl, bc
    ld [$0c19], sp
    inc c
    ld [de], a
    ld [de], a
    ld d, $12
    dec h

jr_04d_5903:
    dec h
    dec l
    daa
    dec hl
    ld a, [hl+]
    ld e, e
    ld c, e
    ld [hl], d
    ld d, e
    ld [hl], a
    ld d, h
    daa
    inc h
    rrca
    ld [$111e], sp
    nop
    nop
    ldh a, [rNR41]
    nop
    cp [hl]
    ldh [$2c], a
    rst $28
    xor c
    cp c
    pop de
    pop af
    jr nz, jr_04d_5903

    ld b, h
    ret nz

    adc [hl]
    add b
    ld e, $86
    cp e
    ld c, $3d
    db $d3
    cp c
    di
    cp c
    ld sp, hl
    rst $08
    ld a, a
    ld e, [hl]
    db $76
    ld a, [hl]
    ld h, $3f
    daa
    sub c
    sbc a
    sub [hl]
    sbc [hl]
    ret z

    ret z

    ld l, b
    add sp, -$44
    and h
    sbc h
    sub h

jr_04d_5945:
    adc b
    adc b
    add b
    add b
    sub l
    ld bc, $041c
    ld a, l
    add b
    ei
    nop
    or $86
    ld bc, $1037
    db $db
    ccf
    inc h
    db $fc
    ld h, d

jr_04d_595b:
    add $f3
    rst $00
    jp c, $d6e7

    rst $28
    ld b, a
    ld a, a
    ld c, a
    ld a, a
    rrca
    ld b, e
    ccf
    rra
    ld [bc], a
    rst $38
    cp $fd
    add l
    ld bc, $9d5a
    ld bc, $057c
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_04d_595b

    add e
    ld [bc], a
    ld a, [hl+]
    add e
    ld bc, $0508
    ld a, b
    sbc b
    add $fe
    pop af
    rst $38
    add l
    ld bc, $00b2
    ld a, b
    add [hl]
    ld bc, $8eb9
    ld [bc], a
    ret nz

    rlca
    jr c, jr_04d_5945

    ld [hl], b
    ld l, a
    rst $30
    ret


    ld sp, hl
    sub c
    adc b
    ld [bc], a
    rst $10
    add hl, de
    and b
    ld h, b
    and b
    ld h, [hl]
    ld c, b
    ret


    adc b
    adc c
    ld [$9009], sp
    sub c
    ld d, l
    pop de
    dec [hl]
    pop af
    push de
    pop de
    ld de, $1915
    dec d
    add hl, hl
    dec h
    jp hl


    push hl
    ld b, e
    dec l
    pop hl
    ld bc, $f199
    ld b, e
    ld a, [$0bf2]
    sbc d
    ld a, [c]
    ld a, [$54f2]
    db $f4
    inc [hl]
    db $e4
    ld a, $e6
    add hl, hl
    rst $38
    rst $38
    db $ec
    inc sp
    rrca
    rlca
    rlca
    ld [$100f], sp
    add hl, de
    ld de, $1318
    inc e
    db $10
    rra
    add hl, bc
    ld c, $07
    rlca
    dec h
    inc bc
    ld bc, $0301
    inc hl
    ld bc, $0001
    ld bc, $51ec
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ld b, l
    jr nz, @-$1e

    ld bc, $a060
    add $88
    ld [hl+], a
    add b
    ld d, $c0
    ret nz

    and b
    ldh [$90], a
    sub b
    add sp, $18
    and $be
    ld sp, hl
    pop af
    ld a, h
    ld h, e
    ccf
    daa
    ld d, $1f
    rrca
    ld c, $07
    ld b, $01
    ldh a, [$39]
    rst $38
    ld [$080e], sp
    add hl, bc
    ld [$0e08], sp
    ld [$080f], sp
    ld b, e
    rlca
    inc b
    ld bc, $0203
    adc l
    ret


    rlca
    ld bc, $0301
    ld [bc], a
    ld b, $04
    dec b
    inc b
    add e
    sbc a
    rlca
    rst $08
    ret z

    ccf
    ld hl, sp+$03
    inc b
    rst $20
    inc b
    ld b, h
    rst $38
    ld [bc], a
    inc b
    add c
    ld a, a

jr_04d_5a46:
    ld [hl], c
    rrca
    rrca
    ld l, c
    ld a, [bc]
    ld [$1c1c], sp
    rra
    ld de, $1b19
    rla
    ld c, $0e
    inc c
    ld b, e
    inc c
    ld [$0800], sp
    inc hl
    db $10
    ld [$381b], sp
    cpl
    jr z, jr_04d_5a82

    jr c, jr_04d_5a84

    db $10
    rra
    ld b, h
    db $10
    rla
    ld bc, $1007
    ld b, e
    dec bc
    ld [$23e0], sp
    ld bc, $0304
    inc bc
    nop
    add b
    ld b, b
    ld h, b
    db $10
    db $10
    ret z

    ld [$04fc], sp
    rst $38
    inc bc

jr_04d_5a82:
    rst $38
    ld [bc], a

jr_04d_5a84:
    rst $38
    nop
    rst $38
    ret nz

    ld a, [hl-]
    inc a
    ld e, $10

jr_04d_5a8c:
    inc c
    jr nc, @+$3e

    jr nz, jr_04d_5b0d

    ld b, b
    ret c

    ldh [$e8], a
    db $10
    ld b, e
    ld [$1900], sp
    adc b
    inc b
    ld e, h
    inc b
    rst $38
    rlca
    rst $38
    dec c
    cp $11
    rst $38
    jr nz, jr_04d_5a46

    ld h, b
    ld sp, hl
    ld b, b
    pop af
    nop
    db $e3
    nop
    rst $20
    ld bc, $86ff
    ld a, c
    ld a, c
    ld l, c
    dec c

jr_04d_5ab6:
    cp h
    cp $ff
    pop af
    adc a
    cp b
    rst $28
    ld hl, sp-$61
    add sp, -$01
    ld [hl], b
    ld a, a
    nop
    ld b, h
    rst $38
    nop
    dec b
    inc c
    rst $30
    ld d, $ff
    ld e, $ff
    push bc
    add l
    dec d
    dec b
    or $0f
    db $fc
    rra
    db $eb
    ld l, a
    dec c
    adc [hl]
    rrca
    rrca
    rra
    jr @+$21

    rra
    scf
    cpl
    ld a, a
    ld b, b
    pop af
    add b
    ret nz

    cp d
    nop
    ld d, b
    ld bc, $c0c0
    inc hl
    jr nz, jr_04d_5b03

    ld h, b
    ldh [$e0], a
    jr nz, jr_04d_5ab6

    ld b, b
    jp $8741


    add d

jr_04d_5afa:
    rra
    inc c
    rst $38
    jr nc, jr_04d_5afa

    rst $00
    ld a, a
    ld b, b
    ccf

jr_04d_5b03:
    jr nc, jr_04d_5a8c

    ld bc, $1344
    add b
    add b
    cp b
    ld a, [hl]
    ld sp, hl

jr_04d_5b0d:
    ld [hl], c
    ret nz

    pop af
    ei
    pop af
    ld [hl], a
    ld hl, sp-$05
    ld a, l
    cp [hl]
    ld a, [hl]
    ret c

    inc a
    ldh a, [rNR10]
    add [hl]
    nop
    xor c
    ld b, $e0
    jr nz, jr_04d_5b03

    ld b, b
    ret nz

    ret nz

    ld b, b
    ld [hl+], a
    ret nz

    ld [bc], a
    ld b, b
    add b
    ret nz

    dec hl
    add b
    inc b
    sbc h
    sbc [hl]
    pop hl
    ld h, c
    ld a, h
    ld b, h
    ld b, b
    ld a, a
    inc bc
    ld a, [hl]
    ld b, e
    ld e, b
    inc a
    add hl, hl
    jr nz, jr_04d_5b4e

    db $10
    jr nc, @+$52

    jr nc, @+$32

    ld c, b
    ld b, b
    ld c, b
    ret z

    ld c, b
    adc b
    adc b
    ret c

    adc b

jr_04d_5b4e:
    ldh a, [$a4]
    ld bc, $0911
    ret nz

    ret nz

jr_04d_5b55:
    ldh [rNR41], a
    ret nc

    jr nc, @-$36

    ld c, b
    ld hl, sp-$08
    adc d
    ld [bc], a
    ld a, [bc]
    inc b
    ldh [$60], a
    ldh [$c0], a
    ret nz

    db $f4
    dec hl
    nop
    ret nc

    inc b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld hl, sp+$2e
    nop
    and [hl]
    ld bc, $0101
    ld b, l
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    or h
    jp hl


    rrca
    ldh a, [$f0]
    ld [$04f8], sp
    inc a
    inc h
    inc e
    ld h, h
    sbc h
    inc c
    db $f4
    jr c, jr_04d_5b55

    ldh a, [$f0]
    inc h
    ret nz

    db $10
    ldh [$60], a
    ldh [rSVBK], a
    ld [hl], b
    ld c, b
    ld l, b
    ld h, [hl]
    ld e, [hl]
    ld sp, $3c39
    add hl, sp
    ld e, $13
    rrca
    dec bc
    add e
    nop
    ld b, d
    sub l

jr_04d_5ba7:
    db $db
    ld bc, $0203
    ld b, l
    rlca
    inc b
    rst $08
    ldh [$a3], a
    ld [bc], a
    call c, $0302
    ld [bc], a
    ld b, $4a
    inc b
    rlca
    ld b, e
    inc bc
    ld [bc], a
    dec b
    adc l
    adc l
    ld [hl], c
    pop af
    rlca
    ret nz

    ld b, [hl]
    rst $38
    add b
    nop
    ldh [$a5], a
    ld [bc], a
    sbc [hl]
    adc c
    ld bc, $0870
    jp $20c3


    jr nz, jr_04d_5b55

    jr nz, jr_04d_5ba7

    db $10
    add sp, -$70

jr_04d_5bda:
    ld bc, $1483
    call c, $fce0
    stop
    ld [$0408], sp
    sbc h
    nop
    ld a, h
    ld [bc], a
    cp $3a
    and $64
    and $5a

jr_04d_5bef:
    cp $82
    rst $38
    ld b, e
    add c
    rst $20
    inc bc
    ld bc, $01e7
    and $43
    add d

jr_04d_5bfc:
    cp $04
    ld b, h
    rst $38
    ld a, $f1
    pop af
    sub h
    inc bc
    ld e, b
    inc b
    nop
    inc bc
    ld bc, $0207
    adc e
    ld [bc], a
    inc h
    dec h
    add b
    rrca
    add e
    add e
    add h
    add h
    sbc c
    sbc b
    rst $20
    ld h, b
    ld a, a
    ld b, b
    ld a, [hl]
    ld b, c
    ld a, a
    ld b, c
    ld a, [hl]
    ld b, d
    adc c
    ld [bc], a
    db $76
    adc c
    ld [bc], a
    call nc, $8025
    rrca
    inc a
    inc a
    ld b, d
    ld a, [hl]
    add c
    rst $08
    adc c
    rst $00
    sbc c
    rst $20
    add e
    db $fd
    ld c, [hl]
    ld [hl], d
    inc a
    inc a
    ld [hl+], a
    jr nc, jr_04d_5c60

    ld [hl], b
    adc c
    inc bc
    ld b, [hl]
    sub l
    ld bc, $054e
    inc de
    db $10
    rra
    jr nc, jr_04d_5c6a

    jr jr_04d_5bda

    ld bc, $056a
    pop bc
    call nz, $2323
    add b
    jr nz, jr_04d_5bef

    ld bc, $06be
    nop
    rst $38
    ld c, $ff
    db $10
    rst $38

jr_04d_5c60:
    nop
    add a
    ld bc, $09de
    rst $38
    rra
    db $ed
    ld l, [hl]
    rrca

jr_04d_5c6a:
    adc a
    rra
    jr jr_04d_5c6e

jr_04d_5c6e:
    nop
    ldh a, [rNR42]
    ld [bc], a
    jr nc, jr_04d_5bfc

    ld [bc], a
    ld d, h
    add h

jr_04d_5c77:
    ld [bc], a
    xor a
    sbc l
    ld [bc], a
    and b
    rrca
    inc d
    jr z, jr_04d_5cbc

    ld b, d
    rst $08
    nop
    ld c, [hl]
    add c
    ld a, a
    add b
    cp $01
    inc a
    ld b, d
    db $10
    inc l
    adc a
    inc b
    add d
    add l
    inc b
    and d
    add hl, bc
    adc a
    pop af
    ld [hl], a
    adc b
    rst $38
    nop
    ld [hl], a
    adc b
    sbc a
    ld h, b
    adc a
    inc b
    or d
    rst $38
    ld l, [hl]
    inc b
    dec b
    inc bc
    dec bc
    add hl, bc
    add hl, bc
    inc hl
    inc b
    ldh [rNR42], a
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    dec b
    inc c
    ld a, [bc]
    inc c
    ld [$0c08], sp
    db $10

jr_04d_5cbc:
    db $10
    jr nz, jr_04d_5cdf

    nop
    ld b, b
    ld b, a
    ld b, b
    ld c, a
    ld b, d
    ccf
    inc h
    ccf
    jr nz, jr_04d_5ce9

    inc de
    rrca
    inc c
    inc bc
    inc bc
    db $ec
    inc l
    ld a, [bc]
    ld b, c
    jr nz, jr_04d_5c77

    xor h
    xor h
    or b
    sub b
    daa
    nop
    ccf
    nop
    ld b, e
    ld a, a

jr_04d_5cdf:
    nop
    dec d
    rst $38
    nop
    rst $28
    ld e, $a0
    ld h, b
    add c
    add b

jr_04d_5ce9:
    rlca
    nop
    rlca
    jr jr_04d_5d0b

    inc hl
    inc c
    ld c, h
    jr jr_04d_5d0b

    ld h, h
    inc l
    ret c

    ld a, $43
    rst $38
    nop
    dec b
    cp $1f
    sbc $e2
    rst $38
    ld bc, $ff44
    nop
    ld de, $3dc0
    ld a, $32
    dec l
    dec b

jr_04d_5d0b:
    ld c, d
    ld c, e
    ld b, h
    ld c, a
    ld b, h
    ccf
    ld [hl+], a
    dec e
    inc de
    add hl, bc
    inc c
    dec b
    ld [hl+], a
    inc b
    ld bc, $0202
    add e
    nop
    jr jr_04d_5d25

    ld bc, $0301
    ld [bc], a
    inc b

jr_04d_5d25:
    dec b
    add a
    nop
    jr c, jr_04d_5d44

    ld b, b
    call nz, $2a22
    ld l, d
    ld a, [hl+]
    bit 1, c
    add d
    sub b
    sub a
    sub b
    push hl
    ld h, e
    db $eb
    daa
    rst $08
    ld b, a
    rst $10
    ld c, a
    ld e, [hl]
    rst $08

jr_04d_5d40:
    adc h
    ld e, a
    ld e, b
    sbc a

jr_04d_5d44:
    ld hl, sp+$43
    rra
    ldh a, [rTAC]
    rrca
    ld a, l
    add a
    ccf
    ld b, b
    ld a, $41
    ld a, a
    and h
    push de
    inc bc
    ld a, a
    add b
    rst $18
    ldh [rLYC], a
    rst $38
    nop
    ldh [rNR44], a
    db $fc
    inc bc
    ld [hl], b
    adc h
    and b
    ld d, b
    ld h, b
    sub b
    pop de
    jr nz, jr_04d_5d40

    daa
    rst $18
    jr z, @-$0e

    db $10
    ret nz

    ldh [$a0], a
    ld h, b
    pop af
    jr nz, @+$01

    db $10
    rst $38
    ld [$06ff], sp
    db $fd
    dec b
    ld a, h
    add h
    jr c, jr_04d_5dc7

    ldh a, [$f0]
    add $da
    ld de, $0807
    jr jr_04d_5daf

    ld h, e
    adc [hl]
    add d
    ccf
    ld bc, $f977
    rst $38
    db $fc
    rst $38
    cp $ce
    rst $38
    rlca
    ld b, h
    rst $38
    inc bc
    inc de
    ld [bc], a
    rst $38
    inc bc
    cp $07
    db $fc
    ld e, $f9
    ld a, a
    db $e3
    cp $0d
    ld [hl], l
    ld a, [$1df2]
    db $fd
    rrca
    rst $38
    ld [bc], a
    ld b, e

jr_04d_5daf:
    rst $38
    nop
    ld a, [bc]
    rst $10
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, [hl]
    ld bc, $853e
    nop
    sub l
    ld d, $00
    cp a
    ret nz

    cp $20
    ld a, h

jr_04d_5dc7:
    ld [de], a
    db $e4
    ld a, [de]
    db $fc
    rrca
    and $15
    db $ed
    ld a, [de]
    ret nc

    ccf
    ret nz

    rst $38
    sub e
    sbc a
    ld a, h
    ld a, h
    ld l, c
    nop
    add b
    add $80
    dec b
    ldh [$f0], a
    jr jr_04d_5dea

    ldh a, [rNR10]
    ld b, a
    ldh [rNR41], a
    ldh [rNR44], a
    and b

jr_04d_5dea:
    ld h, b
    ret nz

    ld b, b
    ld h, b
    ldh [$f0], a
    sub b
    ldh a, [rNR10]
    db $ec
    inc l
    ld [hl], d
    or d
    ld a, [c]
    ld b, d
    xor $82
    call c, $3c04
    inc b
    ld hl, sp+$08
    ei
    dec bc
    rst $38
    inc b
    rst $38
    ld [bc], a
    ccf
    pop bc
    ccf
    ret nz

    ld h, a
    sbc b
    ld b, e
    db $e3
    inc e
    inc b
    di
    inc c
    ccf
    nop
    ld e, $44
    ld bc, $000e
    rra
    jp $ed00


    inc b
    ldh [$1f], a
    ld hl, sp-$1a
    rst $20
    and e
    db $d3
    db $ec
    ld sp, $1811
    jr jr_04d_5e50

    inc h
    call z, $1cc4
    inc b
    jr c, jr_04d_5e3b

    ld hl, sp+$08
    ldh a, [rNR10]
    ld [hl], b
    sub b
    ldh [$a0], a

jr_04d_5e3b:
    ld b, a
    ret nz

    ld b, b
    inc bc
    ldh [rNR41], a
    ld h, b
    and b
    ld b, e
    ld [hl], b
    sub b
    dec c
    add sp, $18
    db $e4
    inc e
    jp nz, $0a3e

    or $9e

jr_04d_5e50:
    xor $12
    ld [hl-], a
    db $fc
    db $fc
    ld h, c

jr_04d_5e56:
    ldh [$37], a
    dec b
    ld c, d
    ld c, e
    ld b, l
    ld c, a
    ld b, l
    ld a, $22
    ld e, $12
    ld a, [bc]
    rrca
    rlca
    dec b
    rlca
    inc b
    ld a, l
    add b
    jp c, $f5e0

    nop
    ei
    rlca
    jp hl


    jr jr_04d_5e56

    jr nz, jr_04d_5ebc

    ret nz

    xor [hl]
    add c
    ld e, l
    add d
    ld hl, sp+$07
    push de
    dec hl
    adc c
    rla
    inc b
    ei
    inc bc
    db $fd
    ld bc, $c3ff
    cp $fc
    ccf
    db $fd
    rlca
    cp $06
    db $fc
    inc b
    add a
    ld bc, $4818
    rst $38
    nop
    ld e, $80
    cp a
    ld b, b
    cp $01
    cp [hl]
    ld b, c
    ld e, a
    and b
    xor a
    ret nc

    ld d, a
    xor b
    ccf
    ret nc

    cp [hl]
    ldh [$cc], a
    ld a, [c]
    add b
    cp $44
    ei
    ld l, d
    push af
    push bc
    ld a, [$3f20]
    ld b, b

jr_04d_5eb5:
    ld a, a
    add [hl]
    ld bc, $8a78
    nop
    rst $28

jr_04d_5ebc:
    dec de
    ld a, [$7104]
    adc b
    and d
    ld d, b
    ld h, c
    sub b
    jp $f520


    jr nz, jr_04d_5eb5

    jr nz, jr_04d_5f32

    sub c
    db $fd
    ld a, [c]
    or l
    ld a, d
    db $eb
    inc e
    or $0f
    db $fd
    dec b
    db $fc
    inc b
    sub d
    rst $18
    inc de
    nop
    rst $38
    nop
    db $76
    add hl, bc
    ld a, [$fb05]
    inc b
    rst $20
    jr @-$60

    ld h, a
    ld h, c
    adc b
    call nc, $ea00
    nop
    push af
    add [hl]
    ld bc, $0761
    ld h, c
    ld a, a
    ld e, a
    ld a, a
    sub [hl]
    sbc [hl]
    ld a, b
    ld a, b
    ld h, e
    add l
    ld bc, $0ec0

Jump_04d_5f01:
    cp a
    add b
    sbc [hl]
    ld b, c
    ld c, [hl]
    ld b, c
    adc [hl]
    ld hl, $20ff
    cp a
    jr nz, jr_04d_5f8d

    ret nz

    rst $18
    adc d
    ld bc, $07d5
    ccf
    inc h
    ld a, $21
    ld a, [de]
    ld d, $0c
    inc c
    ld h, [hl]
    adc e
    nop
    ld a, a
    inc d
    ccf
    cp $00
    ei
    rlca
    reti


    add hl, sp
    pop bc
    call $1f0f
    rra
    ccf
    ld a, $7f
    ld [hl], e
    db $fc

jr_04d_5f32:
    ld a, a
    add b

jr_04d_5f34:
    ld a, $7f
    adc c
    nop
    ldh [$e0], a
    ld hl, $803f
    ld a, a
    nop
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ldh [rIE], a
    ret nz

    or a
    ret z

    rst $20
    jr jr_04d_5f34

    scf
    ret nc

    db $ec
    and b
    ld d, b
    inc bc
    jr jr_04d_5f5b

    jr nz, jr_04d_5f65

    ld b, b
    ld d, $01
    ld l, a
    inc hl

jr_04d_5f5b:
    db $ed
    ld e, $43
    rst $38
    nop
    add e
    xor a
    dec b
    cp l
    ld b, a

jr_04d_5f65:
    cp a
    ret nz

    ld a, [hl]
    add c
    ld b, l
    rst $38
    nop
    rst $38
    ld [hl], b
    inc hl
    ld bc, $0323
    inc h
    rlca
    inc b
    inc bc
    rrca
    rrca
    dec bc
    rrca
    ld b, h
    dec bc
    dec c
    ld b, e
    inc b
    rlca
    add hl, de
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    dec b
    ld b, $0a
    rrca
    dec bc
    inc bc
    rla

jr_04d_5f8d:
    rla
    dec d
    dec b
    ld d, $03
    ld a, [bc]
    add hl, bc
    add hl, bc
    nop
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    jp $7db1


    dec bc
    jr nz, jr_04d_5fd1

    ld [hl-], a
    ld d, d
    ld [hl], l
    sub l
    call nc, $d2b4
    or d
    call nz, Call_04d_43b4
    ld [c], a
    and d
    ld b, $e0
    inc h
    cp b
    ld a, h
    or b
    ld [hl], b
    ret nz

    xor b
    cp c
    rrca
    add d
    add b
    add l
    add b
    jp nz, $e540

    ld sp, $0eff
    rst $38
    nop
    cp $01
    db $fc
    ld [bc], a
    ld b, e
    rst $38
    inc bc
    dec bc
    ld hl, sp+$07
    ld h, b
    rst $38

jr_04d_5fd1:
    ret nz

    rst $38
    ld sp, $0e3f
    ld c, $00
    add b
    ld h, c
    inc de
    ret nz

    ret nz

    jr nc, jr_04d_6011

    cpl
    ccf
    ld de, $091f
    rrca
    rlca
    ld b, $07
    inc b
    inc c
    ld [$0a0d], sp
    rlca
    rlca
    xor a
    nop
    inc bc
    inc bc
    ld h, h
    ld h, h
    ld a, [de]
    ld a, [de]
    jp Jump_04d_4500


    ld bc, $0404
    dec h
    ld [bc], a

Call_04d_5fff:
    ldh [$32], a
    inc bc
    inc bc
    dec hl
    ld [bc], a
    ld d, l
    ld b, $2f
    ld [$115e], sp
    cp l
    inc de
    ld a, e
    daa
    rst $30
    ld c, a

jr_04d_6011:
    db $fd
    adc a
    ld sp, hl
    rra
    ldh [$1f], a
    db $e3
    rst $38
    rst $20
    db $fc
    and $fc
    push bc
    db $fc
    ld c, $f8
    dec d
    ldh a, [rOCPS]
    ldh [$d5], a
    add b
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    stop
    and $e7
    reti


    ccf
    ld sp, hl
    ld b, h
    rlca
    ei
    rlca
    cp $07
    ld a, b
    ld [$b070], sp
    ret nz

    ret nz

    adc e
    nop
    rlca
    nop
    nop
    inc h
    ld [bc], a
    nop
    nop
    inc h
    inc b
    ldh [rLY], a
    dec c
    dec c
    rra
    ld d, $1f
    db $10
    cp $e1
    ei
    add a
    rst $28
    rra
    cp a
    ld a, a
    ld a, [hl]
    rst $38
    cp $ff
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld [c], a
    cp $8c
    db $fc
    ld [hl], b
    ldh a, [$9c]
    sbc h
    dec bc
    rrca
    ld [$a40f], sp
    rlca
    ld d, h
    rlca
    xor h
    rlca
    ld e, b
    rrca
    xor b
    rrca
    ld d, b
    rra
    or b
    rra
    jr nz, @+$01

    ld b, b
    ld a, a
    ld b, b
    rst $38
    ld hl, sp-$01
    or $ff
    pop bc
    pop hl
    pop bc
    pop bc
    add e
    add d
    ld [bc], a
    inc bc
    ld bc, $0003
    add a
    nop
    ld c, c
    add h
    reti


    inc de
    inc b
    inc b
    add h
    add h
    xor b
    xor b
    ld e, b
    ld e, b
    ld [$4008], sp
    ld b, b
    ldh [$a0], a
    ldh a, [$90]
    ret nc

    jr nc, jr_04d_60bb

    ldh a, [rSCX]
    and b
    ldh [rSCX], a
    ld b, b
    ret nz

    xor a
    nop
    ld b, [hl]
    inc c
    add b
    add b
    ld h, b
    ldh [$3a], a

jr_04d_60bb:
    ret nc

    ld e, l
    xor b
    ld a, [hl+]
    ret c

    dec d
    db $ec
    ld b, $44
    db $fc
    rlca
    inc bc
    rrca
    ld sp, hl
    ld c, $fe
    ld b, e
    ld [$01f8], sp
    inc e
    db $e4
    ld b, e
    db $fc

jr_04d_60d3:
    inc b
    rlca
    db $f4
    inc c
    ldh [rNR32], a
    jr z, jr_04d_60d3

    ldh a, [$f0]
    xor e
    nop
    add hl, bc
    add hl, bc
    ld b, b
    ld b, b
    ld d, b
    ld d, b
    jr z, jr_04d_610f

    nop
    inc b
    ld [$2308], sp
    db $10
    and a
    nop
    call nc, $8025
    dec b
    ld b, b
    ret nz

    jr nc, @-$4e

    ld [$4388], sp
    inc b
    ld b, h
    ld bc, $0242
    rst $00
    nop
    db $dd
    dec c
    inc c
    inc b
    ld e, h
    inc b
    xor b
    ld [$0858], sp
    or b
    db $10
    ldh [rNR41], a

jr_04d_610f:
    ret nz

    ld b, b
    cp l
    nop
    ld c, b
    ld bc, $0702
    and e
    pop de
    ldh [$2d], a
    ld b, d
    ld b, d
    ldh [$a4], a
    ld a, [c]
    sub d
    xor c
    reti


    ld sp, hl
    ret


    ld d, l
    db $ed
    ld e, [hl]
    and $6a
    db $76
    ld l, h
    ld [hl], h
    inc a
    ld [hl], h
    ld [hl-], a
    ld a, $36
    ld a, $1d
    dec sp
    dec e
    rra
    dec c
    ld d, $1b
    inc e
    add hl, bc
    ld c, $03
    rla
    ld d, $16
    dec b
    rla
    dec bc
    ld a, [bc]
    ld [bc], a
    dec bc
    dec b
    dec b
    xor d
    ld bc, $081c
    jr nc, jr_04d_6177

    inc l
    and d
    ld [c], a
    ld de, $0131
    ld de, $008c
    dec b
    add l
    ld bc, $0a80
    nop
    dec b
    nop
    ld a, [hl+]
    nop
    ld d, l
    ld bc, $c2eb
    rst $38
    inc a
    ld b, h
    rst $38
    nop
    ld b, e
    add b
    rst $38
    inc e
    ret nz

    ld a, [hl]
    add c
    inc a
    rst $08
    add b
    rst $38
    pop hl

jr_04d_6177:
    rst $38
    ccf
    ld a, $2f
    ccf
    ld b, $06
    dec c
    dec bc
    ld a, [bc]
    rrca
    ld a, [de]
    rla
    ccf
    daa
    rra
    rla
    or a
    xor a
    ld [hl], a
    ld c, a
    ld b, e
    scf
    cpl
    ldh [$2b], a
    ld [hl], a
    cpl
    xor $5f
    ld l, [hl]
    ld e, a
    xor $5f
    ld c, l
    ld a, a
    db $dd
    ld a, a
    rst $18
    rst $38
    sbc [hl]
    rst $38
    ld c, e
    cp [hl]
    db $e3
    ld e, $d3
    ld a, $b3
    ld a, [hl]
    inc sp
    cp [hl]
    rst $30
    db $fc
    and $fc
    rrca
    ld hl, sp+$0e
    ld hl, sp+$1d
    ldh a, [$7a]
    ldh [$f1], a
    add c
    adc $0f
    pop af
    rst $38
    add e
    ld bc, $0730
    add h
    add h
    adc b
    adc b
    sub b
    sub b
    ld d, b
    ret nc

    ld b, e
    ld h, b
    ldh [rSB], a
    ld [$6d08], sp
    adc c
    nop
    sub b
    dec bc
    db $e3
    rra
    ret nz

    rst $38
    nop
    rst $38
    ld [hl], b
    ld a, a
    add hl, hl
    ccf
    ld e, $1e
    adc c
    nop
    and [hl]
    add e
    ld [bc], a
    sbc c
    rst $00
    nop
    db $db
    ld bc, $0800
    and l
    ld bc, $03f2
    ld [bc], a
    ld [bc], a
    add hl, bc
    dec bc
    add a
    ld bc, $8438
    ld bc, $01e0
    add h
    add d
    ld [hl+], a
    adc d
    dec b
    adc c
    adc c
    ld d, c
    ld d, c
    ld sp, $4331
    rlca
    db $fd
    dec b
    ld b, $fe
    ld c, $fa
    inc c
    db $fc
    add l
    ld bc, $07ca
    rlca
    inc b
    rlca
    ld [$0a0f], sp
    inc bc
    ld d, $87
    nop
    jr c, jr_04d_6221

    rst $38

jr_04d_6221:
    ld c, $48
    rst $38
    nop
    add h
    nop
    sbc e
    add e
    nop
    ldh a, [rTMA]
    jp $a73f


    ld a, h
    ld b, [hl]
    db $fc
    add l
    add h
    nop
    ei
    rst $38
    ld l, e
    ldh [$2f], a
    ld bc, $0301
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    ld c, $0c
    rra
    inc d
    ld e, $24
    ccf
    ld [hl+], a
    ld [hl], $22
    ld a, [hl+]
    ld b, d
    ld [hl], c
    ld b, c
    ld h, c
    pop bc
    ret nz

    and b
    ret nz

    sub b
    ldh a, [$90]
    ld c, b
    adc b
    ld h, h
    ld b, h
    jr nz, jr_04d_6280

    jr nc, @+$32

    inc a
    inc l
    ld [hl-], a
    ld [hl+], a
    jr @+$12

    ld [$0608], sp
    ld b, $c3
    xor [hl]
    ld bc, $0303
    ld b, l
    rlca
    inc b
    add hl, bc
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $a377
    xor c

jr_04d_6280:
    rrca
    ldh a, [rNR10]
    ld hl, sp+$08
    ld a, l
    dec b
    cp l
    dec b
    ld e, [hl]
    ld [bc], a
    ld c, $02
    rlca
    ld bc, $0007
    ld b, e
    inc bc
    nop
    inc bc
    ld bc, $8100
    add b
    and e
    cp e
    ld bc, $2020
    ld l, a
    ld de, $8080
    ld a, h
    ld a, b
    rst $38
    sub l
    rst $38
    dec sp
    adc h
    ld c, h
    call nz, $c1c4
    ld b, l
    add c
    pop hl
    ld bc, $6321
    add hl, bc
    add l
    add b
    ld c, d
    ld b, b
    dec [hl]
    jr nc, jr_04d_62c9

    inc c
    inc bc
    inc bc
    ld l, c
    ldh [rNR51], a
    jr nc, jr_04d_62fb

    ld e, h
    ld b, h
    cp a
    add a
    cp h
    add d

jr_04d_62c9:
    ld a, a
    ld b, d
    cp a
    and d
    ccf
    ld hl, $117f
    rst $38
    adc b
    ld a, a
    ld b, b
    ccf
    add hl, hl
    sbc a
    sub b
    and e
    and b
    push hl
    ld h, b
    bit 0, b
    push af
    ld hl, $21eb
    ld [hl], a
    ld de, $107f
    ld b, e
    ccf
    ld [$1f02], sp
    inc b
    rrca
    add h
    ld sp, hl
    ldh [rNR42], a
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, [hl]
    ld b, b
    rst $38

jr_04d_62fb:
    add e
    cp $8f
    db $f4
    db $fd
    ld b, h
    ld a, [hl]
    adc b
    db $fd
    db $10
    ld_long a, $ffb0
    ld hl, sp-$01
    ld a, b
    ld a, a
    ld a, c
    ld a, a
    cp [hl]
    ld a, $50
    ld [$30a0], sp
    rst $08
    nop
    ld l, e
    rlca
    add c
    add e
    ld b, a
    ld b, h
    and $24
    push hl
    inc h
    ld b, e
    ld [c], a
    ld [hl+], a
    ldh [rLYC], a
    rst $38
    ld a, $fb
    dec e
    rst $38
    db $ed
    rst $18
    dec a
    db $fd
    ld b, $9d
    ld a, [c]
    rrca
    adc b
    add e
    call nz, Call_04d_4543
    ld b, e
    ld h, d
    ld [c], a
    ld [c], a
    db $e4
    db $e4
    db $fc
    ld [hl], h
    db $fc
    inc b
    rst $38
    inc bc
    ld a, a
    add c
    cp $02
    db $e4
    inc b
    adc b
    inc c
    jr nc, jr_04d_6387

    add c
    db $fd
    ld [bc], a
    ld a, [$fc04]
    inc b
    ld a, h
    ld [$08f8], sp
    ld a, b
    db $10
    ldh a, [$35]
    ldh [rOCPS], a
    ret nz

    rst $10
    add e
    rst $38
    db $fc
    rra
    db $10
    jr nz, jr_04d_6387

    jr jr_04d_6381

    inc bc
    rlca
    adc [hl]
    nop
    adc [hl]
    add hl, bc
    ret nz

jr_04d_6370:
    db $e4
    ld [hl], $ff
    add hl, bc
    ld e, e
    inc b
    ld l, $04
    dec b

jr_04d_6379:
    ld b, e
    inc b
    add h
    ld de, $4084
    ld b, b
    and b

jr_04d_6381:
    and b
    ret nz

    ret nc

    pop de
    db $d3
    cp a

jr_04d_6387:
    cp a
    add b
    add b
    and b
    nop
    ld d, h
    nop
    and b
    and l
    nop
    ld h, l
    dec de
    rlca
    cp $fe
    jr nc, jr_04d_63d0

    inc de
    inc de
    inc a
    inc a
    ld [$8448], sp
    add b
    dec b
    inc b
    rlca
    dec b
    ld b, $06
    inc b
    inc b
    ld [$1808], sp
    ld [$10b0], sp
    ld h, b
    and h
    nop
    ld b, a
    dec bc
    ldh [rSVBK], a
    inc b
    ld c, $16
    add hl, bc
    nop
    ld b, $81
    add c
    ld a, $7e
    sub c
    nop
    adc h
    rla
    ret nz

    ld b, b
    db $ec
    inc l
    ld [hl], d
    ld [de], a
    and c
    ld hl, $4141
    ld b, d
    ld b, d
    add d

jr_04d_63d0:
    add d
    add h
    add h
    ld c, $0a
    ld d, $92
    scf
    ld a, c
    rlca
    dec b
    inc hl
    inc bc
    ld c, $07
    dec b
    ld e, $3a
    or [hl]
    ld [c], a
    ld l, $22
    add h
    call nz, $040c
    jr jr_04d_63f4

    jr nc, jr_04d_6370

    rst $08
    ld bc, $80c0
    sub a
    nop

jr_04d_63f4:
    ld d, h
    ld [bc], a
    nop
    jr nz, jr_04d_6379

    add h
    ld bc, $861b
    ld bc, $0c30
    ccf
    ei
    inc e
    rst $38
    db $ec
    rst $18
    inc a
    db $fd
    ld b, $fd
    ld [bc], a
    rst $08
    ret c

    add e
    ld bc, $0344
    db $db
    ld a, [$e2fe]
    ld b, l
    db $fc
    inc b
    ld [bc], a
    rst $38
    inc bc
    ld a, l
    adc d
    ld bc, $8955
    ld bc, $0090
    ret nz

    add h
    ld bc, $009b
    pop af
    sub d
    ld bc, $11a1
    inc c
    inc a
    ld e, $1e
    ld l, $2e
    scf
    ld [hl], a
    sbc l
    sbc c
    rrca
    ld b, $b6
    ld [c], a
    ld c, $02
    inc b
    inc b
    adc c
    ld [bc], a
    ld d, $84
    nop
    ldh [rDIV], a
    jr nz, @-$14

    ld hl, $1077
    add l
    nop
    ld [$018b], a
    db $e4
    ld bc, $4040
    ld b, a
    ldh [rNR41], a
    inc bc
    cp $3e
    ei
    dec e
    add a
    ld [bc], a
    ld c, d
    dec c
    rst $38
    ld [$38df], sp
    rst $18
    pop hl
    rst $38
    ld [bc], a
    cp $02
    db $fc
    inc b
    db $fc
    inc b
    adc e
    ld bc, $04e6
    ldh [rNR41], a
    rst $28
    ld a, a
    db $fd
    adc [hl]
    rst $38
    dec b
    rlca
    dec b
    rlca
    rlca
    dec b
    dec b
    adc c
    ld bc, $61c6
    inc b
    inc c
    inc c
    ld [de], a
    ld [de], a
    ld hl, $0188
    rst $30
    add hl, bc
    ld [$1c08], sp
    sub h
    ld [hl], $7a
    ld b, $06
    ld [bc], a
    ld [bc], a
    add e
    ld [bc], a
    ld a, [bc]
    dec de
    rra
    add hl, sp
    and a
    pop hl
    rla
    ld de, $091f
    rrca
    add hl, bc
    ld c, $06
    ld c, $02
    ld l, $22
    cp [hl]
    ld [hl+], a
    call c, $fc14
    ld c, h
    db $fc
    ld b, h
    ld hl, sp-$58
    ld [hl], b
    ld [hl], b
    sub c
    ld bc, $13e0
    ldh [rNR41], a
    ldh [$60], a
    inc bc
    rlca
    rst $38
    rst $38
    rrca
    inc a
    rra
    ld e, $2f
    ld l, $37
    ld [hl], a
    cp l
    cp c
    ld a, a
    ld b, [hl]
    ld b, [hl]
    rst $38
    add b
    db $10
    add h
    ld a, a
    ld e, b
    ld a, a
    ld hl, $427f
    cp a
    cp a
    ld [$1008], sp
    sub b
    jr nc, jr_04d_655b

    inc b
    inc b
    inc hl
    ld [bc], a
    dec b
    inc b
    inc b
    jr jr_04d_6524

    and b
    ldh [$88], a
    cp e
    nop
    jr nz, jr_04d_653c

    ldh a, [rNR10]
    inc b
    ldh [rNR41], a
    ldh [$a0], a
    ret nz

    call nz, $cc02
    rst $38

jr_04d_64ff:
    ld a, c
    ld bc, $0101
    ld b, e
    inc bc
    ld [bc], a
    ld b, l
    rlca
    inc b
    ld b, e
    inc bc
    ld [bc], a
    ld bc, $0101
    db $ec
    ld d, a
    ld de, $0f0f
    ccf
    jr nc, jr_04d_64ff

    ret nz

    pop de
    nop
    ld [$d500], a
    nop
    ld [$f100], a
    nop
    ei
    nop

jr_04d_6524:
    ld b, h
    rst $38
    nop
    ld b, $01
    rst $38
    add d
    ld a, a
    ld h, h
    rra
    inc e
    sub e
    rst $38
    rrca
    ld a, e
    ld a, a
    add e

jr_04d_6535:
    rst $38
    rst $08
    rst $38
    ld a, a
    rst $38
    add hl, sp
    ld a, l

jr_04d_653c:
    ld bc, $0001
    ld bc, $0000
    rst $08
    sub b
    nop
    inc bc
    ret c

    nop
    inc e
    ld c, $07
    rlca
    ccf
    jr c, @+$01

    ret nz

    rst $38
    ld [hl], b
    cp a
    ld c, $7f
    ld bc, $00a3
    pop af
    add l
    rst $20

jr_04d_655b:
    ld de, $fa07
    jr c, jr_04d_6535

    ret nz

    xor d
    nop
    ld d, l
    nop
    and e
    nop
    push hl
    nop
    ld a, [c]
    nop
    db $fd
    nop
    cp $a6
    nop
    sub l
    inc b
    ld a, a
    ld h, b
    ld a, a
    ld a, b
    ld a, [hl]
    inc hl
    rst $38
    ldh [rNR43], a
    di
    rst $38
    di
    rst $08
    rst $38
    sub a
    rst $38
    adc a
    cp $97
    cp $8f
    rst $38
    rst $10
    rst $38
    ld l, e
    rst $38
    ccf
    ld a, a
    rra
    ccf
    rra
    rra
    dec a
    ccf

jr_04d_6594:
    db $fc
    db $fc
    jr c, jr_04d_6594

    ld a, b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$b9], a
    rst $28
    ldh [$27], a
    ccf
    inc bc
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$68
    db $e3
    rst $20
    rst $00
    ld b, h
    add e
    ret nz

    add c
    add b
    ret nz

    ret nz

    ldh [$f0], a
    ld a, h
    ld c, $bf
    ld bc, $007f
    di
    nop
    ld sp, hl
    nop
    rst $38
    nop
    ld e, a
    nop
    xor a

jr_04d_65c5:
    nop
    rst $10
    nop
    rst $28
    nop
    ld b, a
    rst $38
    nop
    inc bc
    rst $18
    ldh [$fd], a
    cp $85
    di
    ld bc, $ffff
    ld b, e
    rst $38
    ccf
    add hl, hl
    rst $38
    inc b
    db $fc
    cp $3c
    ld a, h
    ccf
    ld b, e
    ccf
    rra
    ld [bc], a
    rra
    ld b, $07
    sbc e
    nop
    ld a, [hl+]
    rrca
    ret nz

    ret nz

    db $fc
    inc a
    rst $38
    db $e3
    ccf
    jr nc, jr_04d_65c5

    ret z

    rst $30
    inc [hl]
    ei
    ld a, [de]
    ld [hl], e
    dec bc
    jp $d700


    add hl, bc
    add c
    add $f7
    inc [hl]
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [bc], a
    push bc
    ld bc, $0404
    rst $00
    nop
    jp $e700


    add l
    pop af

jr_04d_6616:
    ld [bc], a
    inc bc
    db $fc
    inc e
    inc hl
    ldh [rIF], a
    ld hl, sp-$08
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $28
    rst $28
    jp $c0e7


    ret nz

    add b
    ret nz

    and a
    nop
    jp nz, $c001

    ret nz

    ld b, e
    jr nz, jr_04d_6616

    ld bc, $c0c0
    ld a, l
    rlca
    add b
    add b
    ldh [$60], a
    ld hl, sp+$18
    inc a
    inc b
    ld b, e
    cp $02
    ld [$e1ff], sp
    rst $38
    dec e
    rst $38
    inc bc
    ccf
    nop
    sbc a
    add $01
    dec de
    inc b
    cp $80
    rst $08
    add b
    rst $20
    ld b, a
    ld b, b
    rst $38
    inc b
    add b
    ld a, a
    ld h, b
    rra
    rra
    xor c
    nop
    inc de
    ld [hl+], a
    ret nz

    ld bc, $00c0
    db $f4
    ld b, h
    nop
    dec hl
    and e
    nop
    ld a, [de]
    ld [$20e0], sp
    ldh a, [rNR10]
    ld [hl], b
    db $10
    jr c, @+$0a

    jr c, @+$48

    ld [$43f8], sp
    ldh a, [rNR10]

jr_04d_6681:
    ld bc, $60e0
    db $f4
    dec [hl]
    nop
    ld a, [hl+]
    sub a
    nop
    ld a, [de]
    rlca
    inc bc
    inc bc
    rra
    inc e
    ld [hl], h
    ld h, b
    add sp, -$80
    add a
    nop
    adc d
    ld [bc], a
    rst $30
    nop
    ei
    adc b
    nop
    sub a
    nop
    jp $018b


    rrca
    ld b, $80
    ld a, a
    ld b, b
    ld a, a
    ld [hl], b
    ld a, a
    db $fc
    adc e
    ld bc, $0224
    ld sp, hl
    nop
    rst $38
    sub b
    ld bc, $0381
    ld a, a
    add b
    rst $30
    ld hl, sp-$78
    ld bc, $8498
    ld bc, $8ef1
    ld bc, $04f4
    ld bc, $0efe
    ldh a, [$f0]
    add l
    ld [bc], a
    ld a, [bc]
    rst $00
    ld bc, $031c
    adc $80
    rst $20
    add b
    adc d
    ld [bc], a
    ld l, h
    nop
    jr @-$58

    ld bc, $0248
    add b
    ldh [rNR41], a
    add l
    ld [bc], a
    ret nc

    ld bc, $1030
    adc h
    ld [bc], a
    ret c

    ret z

    ld [bc], a
    ld h, $83
    inc bc
    jr nz, jr_04d_6681

    inc bc
    ld [hl+], a
    add l
    nop
    add h
    sub b
    inc bc
    inc a
    ld b, e
    ld [bc], a
    rst $38
    inc b
    add h
    ld a, a
    ld a, h
    rrca
    inc c
    adc c
    xor l
    dec b
    jr c, jr_04d_673e

    ld b, h
    ld a, h
    ld h, a
    ld a, a
    add e
    ld bc, $0138
    rlca
    rrca
    inc hl
    ld bc, $01a6
    call nc, $f009
    rst $38
    ld c, $7f
    ld bc, $0033
    pop hl
    nop
    jp $018f


    rrca
    ld b, $40
    ld a, a
    ldh [rIE], a
    ld hl, sp-$01
    cp $84
    inc bc
    ld l, b
    ld [bc], a
    cp $8f
    cp $a3
    db $eb
    inc bc
    cp $06
    ccf
    ld bc, $0187
    ld l, b
    and a
    ld [bc], a

jr_04d_673e:
    ld e, [hl]
    dec b
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld c, d
    rst $38
    nop
    nop
    add b
    add h
    inc bc
    adc b
    nop
    ccf
    xor c
    inc bc
    ld d, $05
    db $fc
    db $fc
    ccf
    inc sp
    rst $08
    ret z

    add a
    ld bc, $90f0
    ld bc, $02f6
    inc c
    pop af
    di
    call nz, $1202
    inc c
    rst $38
    db $fc
    rst $38
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    nop
    add b
    sub c
    ld [bc], a
    inc a
    add hl, bc
    ldh a, [rNR10]
    jr c, jr_04d_6785

    db $fc
    inc b
    db $fc
    db $e4
    cp $1a
    add e
    inc b

jr_04d_6785:
    ld [hl], h
    nop
    sbc a
    and a
    inc bc
    ld a, l
    ld bc, $ce80
    adc d
    ld [bc], a
    ld l, c
    dec c
    rst $38
    ret nz

    ccf
    jr nz, jr_04d_67b6

    jr @-$77

    add a
    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    db $f4
    dec h
    inc bc
    nop
    nop
    ld [hl], b
    ld b, e
    db $10
    jr nc, jr_04d_67f0

    db $10
    ldh a, [$a3]
    inc bc
    or $a7
    inc bc
    db $fc
    add [hl]
    ld bc, $0020

jr_04d_67b6:
    rst $38
    add a
    inc bc
    ld l, b
    adc d
    ld bc, $8390
    inc b
    sbc e
    nop
    rst $38
    rst $38
    db $ec
    ld h, c
    dec bc
    inc bc
    rlca
    ld c, $09
    ld e, $13
    ld e, $12
    ld [de], a
    ld e, $11
    rra
    ld b, e
    add hl, bc
    rrca
    inc c
    jr jr_04d_67f7

    ld hl, $032f
    ld l, $4f
    ld c, h
    ld b, a
    ld b, b
    rrca
    add b
    adc a
    ld b, h
    ret nz

    rst $18
    dec bc
    dec de
    ld b, h
    ld e, a
    ld b, b
    dec a
    inc hl
    rra
    ld e, $0b

jr_04d_67f0:
    inc c
    inc bc
    inc bc
    ld h, c
    ld a, [de]
    inc a
    ld a, h

jr_04d_67f7:
    ld b, e
    ld a, a
    inc h
    ccf
    jr jr_04d_681c

    dec c
    rrca
    inc bc
    inc bc
    ld b, $07
    add hl, de
    rra
    inc h
    ccf
    ld b, e
    ld a, a
    dec a
    ccf
    inc bc
    inc bc
    ld [bc], a

jr_04d_680e:
    inc bc
    inc b
    inc hl
    rlca
    ld [hl+], a
    inc b
    add hl, bc
    dec bc
    ld [$080f], sp
    ld de, $0816

jr_04d_681c:
    add hl, bc
    rlca
    rlca
    ld h, e
    dec de
    ldh a, [$f1]
    rrca
    cp $e0
    rst $38
    dec de

Call_04d_6828:
jr_04d_6828:
    rra
    inc b
    rlca
    ld [bc], a
    inc bc
    pop hl
    pop af
    ld hl, sp+$0c
    ld a, [hl]
    add e
    rst $38
    nop
    add a
    jr jr_04d_685b

    inc h
    inc de
    ld d, h
    db $d3
    ld d, h
    ld b, e
    di
    ld [hl], h
    ldh [$3b], a
    rst $30
    ld a, b
    rst $38
    nop
    rst $30
    jr jr_04d_6828

    ldh [rIE], a
    nop
    rst $28
    jr nc, jr_04d_680e

    ret nz

    rst $38
    add b
    ld a, a
    ld b, b
    rst $38
    ret nz

    ld h, c
    ldh [$a2], a
    ldh [rNR11], a

jr_04d_685b:
    ldh a, [$d0]
    ldh a, [$3f]
    ldh a, [$7f]
    db $dd
    db $e3
    rst $38
    jp $37ff


    db $fc
    rrca
    db $fc
    rst $08
    ld hl, sp+$7f
    ldh a, [rIE]
    ret nz

    rst $18
    jr nz, @+$01

    db $10
    rst $38
    inc c
    ei
    dec bc
    ldh a, [rNR10]
    pop hl
    ld h, c
    add c
    add c
    ld h, c
    dec d
    ld e, $3e
    rst $38
    pop bc
    ret nz

    ccf
    nop
    rst $38
    ldh [rIE], a
    rrca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    inc e
    rra
    add e
    add e
    and h
    nop
    xor c
    ld bc, $e020
    ld b, [hl]
    db $10
    ldh a, [rSB]
    di
    dec bc
    ld b, e
    db $fc
    rrca
    inc bc
    ei
    rrca
    ld hl, sp+$0f
    ld b, e
    db $fd
    rlca
    ldh [$2d], a
    cp $06
    rst $38
    rlca
    ld a, [hl]
    rlca
    cp [hl]
    inc bc
    ld a, [hl]
    inc bc
    rst $38
    rlca
    ld a, [$1aef]
    rst $38
    dec l
    rst $38
    ld b, a
    rst $38
    rst $08
    db $fd
    sub e
    cp $d3
    ld a, [hl]
    db $e3
    ld a, [hl]
    rst $38
    ld e, $df
    nop
    rra
    add b
    cp a
    add b
    cp [hl]
    add c

jr_04d_68d5:
    rst $38
    add c
    inc e
    ld h, e
    adc d
    sub [hl]
    ld a, h
    ld a, h
    ld h, c
    add hl, de
    ret nz

    ret nz

    ldh [rNR41], a
    jr nc, jr_04d_68d5

    ret nz

    ret nz

    add b
    add b
    add c
    add c
    ld b, a
    add $3e
    ld sp, hl
    inc bc
    rst $38
    add b
    rst $38
    ld a, b
    ld a, a
    ld b, $07
    ld bc, $6901
    daa
    add b
    ld h, c
    add hl, de
    ld e, $1f
    push hl
    rst $38
    ld b, l
    rst $38
    ld c, d
    cp $8c
    db $fc
    sbc b
    ld hl, sp-$20
    ldh [$7c], a
    db $fc
    ccf
    ei
    ld h, $fd
    inc hl
    cp $93
    cp $ff
    ld a, h
    ld b, a
    rst $38
    nop
    dec c
    rst $28
    sub b
    sbc a
    ldh [$1f], a
    ldh [$7f], a
    ld h, b
    add hl, de
    ld d, $10
    add hl, de
    rrca
    rrca
    adc e
    jp $c003


    ld b, b
    ld h, b
    and b
    add e
    ld bc, $0b3b
    sub b
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp+$48
    ld a, b
    jr c, jr_04d_6979

    ld a, e
    dec c
    ld [$0c1c], sp
    ld h, h
    inc e
    add h
    db $fc
    inc b
    ld hl, sp+$08
    ld a, b
    adc b
    ld [hl], b
    sub b
    ld b, e
    and b
    ld h, b
    ld b, e
    ret nz

    ld b, b
    ld c, c
    ldh [rNR41], a
    rrca
    ret nz

    ld b, b
    add b
    add b
    sbc a
    add b
    sub a
    adc b
    ccf
    ld b, b
    ld e, e
    ld h, a
    ccf
    ccf
    rlca
    rlca
    inc h
    inc bc
    ld [bc], a
    ld [bc], a
    dec a
    ld a, l
    add a
    nop
    sub h
    dec de
    rra
    rra
    ld l, c
    ld a, a

jr_04d_6979:
    adc l
    rst $38
    ld d, d
    ld a, a
    inc a
    ccf
    inc b
    rlca
    inc bc
    inc bc
    rrca
    ld [$3837], sp
    ld b, e
    ld b, h
    daa

jr_04d_698a:
    jr c, @+$41

    jr nz, jr_04d_69ad

    add hl, de
    ld b, $06
    ld h, a
    dec d
    or e
    ld [hl], h
    rst $30
    ld [$00ff], sp
    ld [hl], a
    adc b
    rst $38
    ldh a, [$9f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh [rIE], a
    ret nz

    rst $38
    db $10
    rst $38
    ldh [$85], a
    nop
    or $0d

jr_04d_69ad:
    ldh a, [$f0]
    ld e, a
    ldh a, [$e7]
    db $fd
    sub e
    rst $38
    ld d, e
    rst $38
    ld e, a
    db $fc
    rst $38
    ldh [$84], a
    ld bc, $08ce
    db $10
    rst $38
    jr c, jr_04d_698a

    ld b, [hl]
    add c
    add c
    ld bc, $8701
    ld bc, $0f9a
    ld a, [hl-]
    rst $38
    ld d, l
    rst $38
    and e
    rst $38
    db $e3
    rst $38
    rst $38
    ld a, $ff
    ld b, b
    rlca
    adc b
    adc a
    ldh a, [rLY]
    rst $38
    add b
    add hl, bc
    ld b, c
    ld [hl], e
    cp $5f
    xor a
    xor h
    call nc, $7878
    nop
    add l
    ld bc, $06cf
    ld h, b
    rra
    ldh [rIE], a
    ldh [$39], a
    ld [hl], $83
    ld bc, $89dc
    ld [bc], a
    ld h, b
    inc hl
    ld bc, $0301
    ld [bc], a
    add [hl]
    rst $18
    nop
    db $fd
    add l
    rst $18
    dec bc
    rst $38
    nop
    ld a, [hl-]
    rst $38
    ld e, l
    rst $38
    and a
    rst $38
    rst $00
    db $fc
    rst $38
    ld a, b
    ld b, e
    rst $38
    nop
    nop
    rst $38
    add [hl]
    ld bc, $0faf
    ld c, e
    cp $8f
    cp $ff
    db $fc
    ld e, a
    ld hl, sp+$47
    db $fc
    ld b, [hl]
    db $fd
    ccf
    ld hl, sp-$01
    ret nz

    ld b, a
    rst $38
    nop
    ld [$02fd], sp
    db $fc
    inc bc
    db $f4
    adc a
    adc a
    rst $38
    ld [hl], b
    xor b
    ld bc, $83df
    ld bc, $07f2
    ld c, b
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $fc
    db $fc
    add a
    ld bc, $8be4
    ld [bc], a
    ld l, $05
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [$60], a
    ld b, e
    ldh a, [rNR10]
    ld b, l
    ld hl, sp+$08
    inc bc
    ldh a, [rNR10]
    ldh [$e0], a
    ld l, e
    adc e
    ld [bc], a
    ld d, b
    add e
    nop
    sbc h
    adc e
    ld [bc], a
    sub b
    inc bc
    ret nc

    ldh a, [$3f]
    ldh a, [$6e]
    inc c
    inc e
    ld b, $e2
    sbc [hl]
    ld [bc], a
    cp $02
    ld a, h
    add h
    ld a, b
    adc b
    or b
    ld [hl], b
    add e
    ld [bc], a
    inc l
    rst $38
    ld h, [hl]
    nop
    ld bc, $8383
    ldh [$29], a
    ld bc, $0302
    inc b
    dec b
    ld b, $0a
    dec c
    ld [$350f], sp
    inc sp
    ld h, l
    ld h, e
    ld c, c
    ld b, a
    adc c
    add a
    ldh a, [$8f]
    add b
    rst $38
    ld b, c
    ld a, a
    ld h, e
    ld a, d
    ld d, $16
    dec c
    inc c
    inc de
    db $10
    dec a
    inc l
    scf
    ld l, $13
    ld e, $1f
    add hl, de
    ld b, $06
    db $ec
    inc l
    ldh [rNR52], a
    ld c, $00
    ld a, [c]
    ld d, b
    inc b
    jr nz, @-$76

    ld [hl], b
    adc b
    ld hl, sp+$04
    db $fc
    inc e
    ld h, e
    rst $38
    sbc h
    ld h, e
    and d
    pop bc
    ld b, c
    add b
    ld b, e
    add b
    inc a
    jp $ff00


    add b
    rst $38
    ldh a, [rIE]
    add a
    add a
    jp nc, $fc53

    ccf
    ldh [$1f], a
    ld b, e
    cp $03
    dec bc
    db $fc
    rlca
    rst $38
    rra
    db $e3
    ld [c], a
    ld bc, $0801
    ld [$0c0c], sp
    inc hl
    dec bc
    dec c
    ld sp, hl
    rst $38
    add b
    adc a
    ld [hl], b
    ld a, a
    db $10
    rra
    jr nz, jr_04d_6b22

    ld c, l
    ld c, l
    ld [hl], e
    ld [hl], e
    add l

Jump_04d_6b00:
    nop
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0704
    dec b
    adc b
    nop
    inc [hl]
    ld a, [de]
    inc de
    nop
    inc l
    inc d
    ld b, c
    ld a, d
    add c
    ld a, a
    add b
    ccf
    ld b, b
    ld a, h
    ld b, e
    ld hl, sp-$7c
    ld d, b
    xor h
    inc l
    call nc, $ec14

jr_04d_6b22:
    dec b
    db $fd
    ld [bc], a
    rst $38
    inc bc
    rst $38
    and e
    rst $18
    rlca
    ld b, b
    rst $38
    add c
    rst $38
    rlca
    cp $0f
    cp $43
    dec e
    rst $38
    ldh [$2f], a
    jr c, @+$01

    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    add h
    ei
    add d
    db $fd
    and e
    call c, Call_04d_48f7
    di
    inc c
    rst $38
    jr nz, @+$01

    and b
    rst $38
    sub b
    ld a, a
    ret z

    db $fd
    or $0f
    rrca
    inc bc
    inc bc
    rra
    rra
    ld h, c
    ld a, a
    add b
    rst $38
    ld e, b
    ld a, a
    db $e4
    ld h, a
    sbc h
    add a
    cp a
    sbc a
    ldh [$e0], a
    ld h, h
    nop
    ret nz

    and l
    nop
    ld b, $83
    add c
    add hl, de
    jr nc, @+$32

    ld l, b
    ld e, b
    ld c, b
    ld a, b
    adc b
    ld hl, sp-$77
    ld sp, hl
    dec bc
    ld_long a, $ff0c
    inc a
    rst $38
    rst $38
    jp $00c7


    add e
    add b
    add e
    nop
    rst $00
    nop
    ld b, [hl]
    rst $38
    nop
    ld c, $c3
    dec a
    cp $01
    cp $67
    sbc b
    ccf
    ret nz

    ccf
    pop bc
    rra
    pop hl
    ccf
    jp nz, $ff46

    ld [bc], a
    ld b, e
    ld bc, $08ff
    nop
    ld a, a
    add c
    cp $fe
    ldh a, [$f0]
    ret nc

    ldh a, [rLYC]
    ld [$03f8], sp
    ld [hl], b
    ldh a, [$80]
    add b
    ld h, [hl]
    ldh [$38], a
    stop
    inc c
    nop
    ld b, $00
    rlca
    ld bc, $0002
    inc bc
    inc b
    inc de
    nop
    rra
    ld bc, $c00e
    rst $08
    ret nz

    ld c, a
    ld b, c
    add $40
    rst $00
    ld [hl], b
    di
    call c, $94fc
    db $fc
    add e
    rst $38
    jp nc, $f27f

    ld a, a
    pop bc
    ld a, a
    db $ec
    rst $38
    ldh a, [$bf]
    ld h, b
    cp a
    ld hl, sp+$3f
    xor $4f
    db $dd
    ld e, c
    db $fd
    jp hl


    db $fd
    dec b
    rst $00
    ld [bc], a
    ld b, e
    add e
    nop
    adc b
    ei
    ld b, $80
    rst $38
    pop hl
    rra
    rra
    rlca
    rlca
    and l
    pop hl
    dec bc
    jr @+$21

    inc h
    daa
    inc l
    daa
    ld c, a
    ld b, a
    ld e, b
    ld c, b
    jr nc, jr_04d_6c3e

    add h
    ld bc, $e024
    inc a
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [$80]
    ld a, b
    ldh [rNR23], a
    ld h, b
    sbc b
    nop
    db $fc
    ld b, b
    cp [hl]
    ldh [rNR34], a
    ld d, b
    xor [hl]
    xor b
    ld d, h
    db $10
    add sp, $28
    call nc, Call_04d_6c54
    inc a
    inc b
    inc e
    ld [hl+], a
    cp [hl]
    and d
    cp $e2
    ccf
    pop hl
    rra
    ld sp, hl
    daa
    push hl
    ld a, e
    db $e3

jr_04d_6c3e:
    cp a
    sbc l
    sbc a
    sub c
    sbc $d0
    cp $62
    cp $22
    db $ec
    db $10
    db $fc
    inc d
    ld hl, sp+$18
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    add hl, de

Call_04d_6c54:
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [$e0], a
    ret c

    ld hl, sp-$40
    db $fc
    add h
    db $fc
    ld [bc], a
    cp $1a
    cp $2e
    and $46
    jp nz, $e2e4

    inc d
    inc d
    inc c
    inc c
    ld l, d
    dec de
    ld bc, $0200
    inc b
    inc b
    dec bc
    ld [$0b0c], sp
    ld [$040f], sp
    rlca
    dec b
    rlca
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    inc b
    inc bc
    dec bc
    rlca
    dec bc
    inc bc
    dec b
    ld bc, $99cd
    add hl, de
    nop
    inc bc
    rlca
    inc c
    jr c, jr_04d_6d08

    ret nc

    ld a, h
    inc hl
    ret nc

    ld l, a
    ld b, b
    rst $38
    ld b, e
    rst $38
    inc l
    db $fc
    ld [hl], l
    db $fd
    ld [hl], e
    ld c, a
    sbc b
    add a
    ld a, $01
    ld a, a
    add l
    ld bc, $08c3
    add c
    cp $07
    ld [hl], b
    rst $38
    inc c
    rrca
    rlca
    rlca
    jp nz, $02c4

    inc b
    inc bc
    ld [bc], a
    adc e
    nop
    sub h
    add hl, bc
    ld b, $00
    add hl, bc
    inc d
    ld d, [hl]
    add hl, hl
    and $df
    cp c
    ld a, [hl]
    and a
    ld bc, $06c1
    pop bc
    rst $38
    ld [hl], b
    ld a, a
    jr c, @+$41

    ret nz

    ld b, [hl]
    rst $38
    nop
    rrca
    add b
    ld d, b
    ld d, b
    jr z, jr_04d_6d42

    sub b
    cp d
    ld b, b
    ld [hl], l
    add b
    add d
    ld e, b
    ld sp, $e8f2
    ret c

    add l
    ld bc, $0930
    ld c, e
    ld_long a, $ff3c
    inc c
    rst $38
    ld a, a
    di
    daa
    ldh [$87], a
    nop
    jr nz, @+$11

    inc c
    inc c
    ld de, $4330
    ret nz

    rst $30
    or b
    rst $08
    cp b
    ld h, a
    ld e, b
    ccf

jr_04d_6d08:
    ld b, a
    jr jr_04d_6d43

    and a
    ld [bc], a
    ld b, e
    adc c
    nop
    jr nz, @+$0f

    ld bc, $0308
    jr nc, jr_04d_6d1e

    ld b, b
    ld e, a
    ld e, b
    ld h, a
    ld e, h
    dec sp
    dec l

jr_04d_6d1e:
    ld e, $1e
    ld h, a
    dec b
    rst $38
    rra
    db $e3
    ld h, d
    add c
    add c
    adc d
    nop
    sub [hl]
    ld b, $ff
    ld b, c
    ld a, a
    ld h, a
    ld a, [hl]
    ld a, [de]
    ld e, $87
    nop
    jr z, @+$07

    ldh a, [rIE]
    adc a
    rst $38
    jp nz, $897f

    nop
    add [hl]
    rst $38
    ld [hl], a

jr_04d_6d42:
    inc hl

jr_04d_6d43:
    ld bc, $0247
    inc bc
    rla
    ld b, $07
    ld a, [bc]
    dec bc
    add hl, bc
    add hl, bc
    ld sp, $4431
    ld b, b
    add [hl]
    add b
    xor e
    add b
    push de
    add b
    ld l, e
    ld b, b
    ccf
    jr nz, jr_04d_6d7c

    jr jr_04d_6d66

    rlca
    ld [hl], l
    add hl, bc
    rlca
    inc bc
    add hl, bc
    nop

jr_04d_6d66:
    inc de
    db $10
    rra
    db $10
    rrca
    rrca
    adc d
    call $0316
    inc b
    inc b
    ld [$1008], sp
    db $10
    cpl
    cpl
    jr nc, jr_04d_6db9

    ld b, b
    ld a, a

jr_04d_6d7c:
    add b
    ld hl, sp-$80
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$45
    ccf
    rst $38
    dec c
    cpl
    rst $38
    rla
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    adc d
    rst $38
    ld h, c
    ld a, a
    cp a
    rra
    ld c, b
    rst $38
    nop
    inc b
    add b
    ld a, a
    ld a, a
    inc bc
    ld [bc], a
    ld b, e
    rlca
    inc b
    ld b, h
    rrca
    add hl, bc
    ld [bc], a
    ld a, [bc]
    rra
    ld [de], a
    ld b, e
    rra
    inc de
    add hl, bc
    ld a, a
    ld h, [hl]
    rst $38
    add [hl]
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    db $f4

jr_04d_6db9:
    ld b, e
    dec bc
    ld [$0083], sp
    ld a, [hl-]
    inc bc
    rrca
    rra
    ld h, b
    ldh [$a9], a
    nop
    db $10
    dec bc
    ld h, c
    ldh [$3a], a
    ldh a, [$bd]
    ld hl, sp+$7a
    ld a, b
    ld a, a
    ld a, h
    ld h, l
    ld a, h
    ld b, e
    jp $12fe


    add e
    sbc a
    add d
    sbc [hl]
    push hl
    db $fc
    db $fd
    db $fc
    cp l
    db $fc
    ld e, e
    ld hl, sp-$4e
    ldh a, [$64]
    ldh [$98], a
    add b
    db $fc
    add e
    db $db
    inc b
    rrca

jr_04d_6def:
    ld a, [$fe3a]
    ld a, h
    ld [hl+], a
    rst $38
    inc d
    xor $ff
    ld h, [hl]
    rst $38
    set 7, a
    ld c, [hl]
    rst $38
    jr c, jr_04d_6def

    ld h, b
    cp a
    add c
    ld a, a
    rrca
    ld a, a
    inc de
    rst $38
    inc sp
    rst $38
    ld sp, $cf43
    ld c, c
    rlca
    rst $18
    ld b, c
    sbc $d2
    sbc [hl]
    sub d
    inc c
    inc c
    add e
    call nc, Call_04d_7f05
    rra
    ldh [$7f], a
    ld b, b
    ld [hl], c
    ld b, e
    ld h, b
    jr nz, jr_04d_6e2f

    ldh a, [rNR10]
    ld [hl], c
    ld de, $0fbf
    ld a, a
    rlca
    cp a
    rlca
    ld a, a

jr_04d_6e2f:
    inc bc
    ld b, e
    rst $38
    ld bc, $2fe0
    cp $1e
    ei
    cp [hl]
    push hl
    ld h, a
    pop hl
    ld h, a
    ld sp, hl
    ld a, a
    ld [hl], e
    ld a, $3f
    rra
    rlca
    inc bc
    rlca
    ld bc, $000b
    dec d
    nop
    ei
    nop
    rst $38
    ret nz

    ld a, a
    ld a, $1f
    rrca
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, [de]
    rst $38
    dec a
    rst $28
    ld l, d
    rst $20
    and h
    rst $30
    ld d, h
    ld b, [hl]
    di
    sub d
    ld [$e312], sp
    ld [hl+], a
    rst $20
    inc h
    rst $00
    call nz, $0303

jr_04d_6e72:
    add a
    nop
    ret z

    ldh [rNR43], a
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    jp nz, $e1fe

    rst $38
    pop af
    rst $38
    sub b
    sbc a
    sbc b
    sbc a
    ld hl, sp-$01
    pop af
    rst $38
    xor c
    rst $38
    db $d3
    ld a, [hl]
    rst $28
    inc a
    cp $00
    push af
    nop
    ld a, [$fd00]
    nop
    ld a, [$d3a3]
    inc de
    ld b, $fa
    adc d
    ei
    adc e
    rst $30
    call nc, Call_04d_5fff
    rst $38
    ld l, b
    rst $28

jr_04d_6ea9:
    jr z, jr_04d_6e72

    add $c3
    inc bc
    pop af
    ld bc, $43f8
    ret nz

    db $fc
    rlca
    ldh a, [$fe]
    add sp, -$42
    xor b
    cp a
    and h
    rst $18
    ld b, e
    ld d, h
    sbc $0e
    ld e, h
    rst $08
    ld c, c
    db $dd
    ld d, c
    db $db
    ld d, e
    cp h
    and h
    cp b
    xor b
    ld [hl], b
    ld d, b
    ld h, b
    ld h, b
    ld l, l
    inc bc
    ret nz

    ret nz

    ldh a, [$30]
    ld b, e
    ld hl, sp-$78
    ld bc, $84fc
    ld b, e
    db $fc
    inc b
    ld [$08f8], sp
    ld [hl], b
    db $10
    and b
    jr nz, jr_04d_6f47

    jr nz, jr_04d_6ea9

    ld [hl+], a
    ld b, b
    ld bc, $40c0
    push bc
    ld bc, $0f85
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    ld hl, sp-$38
    cp h
    inc h
    call c, $fe14
    sub d
    xor $8a
    ld b, e
    cp $ca
    ld bc, $487e
    ld b, l
    ld a, h
    ld h, h
    rrca
    ld a, d
    ld h, d
    cp c
    and c
    db $dd
    pop de
    rst $38
    add hl, sp
    cp $0e
    db $fc
    inc b
    db $fc
    db $e4
    jr jr_04d_6f34

    adc d
    nop
    ld e, h
    nop
    nop
    and a
    pop bc
    add hl, bc
    rrca
    ld [$1117], sp
    cpl
    ld [hl+], a
    ccf
    inc h
    ld a, a
    ld b, l
    ld b, e
    ld a, a
    ld c, [hl]
    ld b, l
    ccf
    inc h

jr_04d_6f34:
    rlca
    ld a, a
    ld b, [hl]
    cp a
    adc [hl]
    ld a, c
    add hl, bc
    ldh a, [$30]
    and e
    ld bc, $897c
    nop
    ldh a, [rSB]
    rst $38
    ld a, [hl]
    add h

jr_04d_6f47:
    nop
    db $fc
    inc d
    ld b, [hl]
    rst $38
    adc d
    rst $38
    cp h
    rst $08
    ret nz

    ld a, a
    nop
    rst $38
    rrca
    rst $38
    ccf
    db $fc
    ld [hl], h
    db $fc
    ld h, h
    cp $62
    rst $38
    ld sp, $ff43
    add hl, de
    ld bc, $e6e6
    ld h, e
    inc b
    dec bc
    nop
    ld d, l
    nop
    db $eb
    add e
    nop
    sbc c
    ld bc, $3f7c
    add a
    ld bc, $125b
    dec a
    rst $38
    ld a, [hl-]

jr_04d_6f79:
    rst $28
    ld l, l
    rst $38
    ei
    rst $38
    cp c
    rst $38
    jr jr_04d_6f79

    sub h
    rst $30
    sub [hl]
    ld h, e
    ld h, d
    inc bc
    ld [bc], a
    ret


    nop
    add hl, de
    adc d
    ld bc, $06a0
    ld bc, $02fe
    rst $38
    add a
    ei
    adc d
    add h
    ld bc, $06b2
    ld l, l
    rst $28
    inc l
    rst $00
    call nz, $02c3
    add h
    ld bc, $0ebe
    ldh [$fc], a
    ret nc

    ld a, [hl]
    ld c, b
    ld a, $28
    ccf
    inc h
    sbc a
    sub h
    adc $4c
    add $44
    add e
    ld bc, $05d2
    sbc d
    sub d
    inc a
    inc h
    jr c, @+$2a

    add e
    ld bc, $8ddc
    ld [bc], a
    nop
    add e
    ld bc, $07ee
    add sp, $08
    db $f4
    add h
    db $fc
    db $e4
    cp $e2
    and h
    ld [bc], a
    ld e, d
    ld [$fc64], sp
    db $e4
    db $fc
    ret z

    ld a, h
    ld c, b
    ld a, h
    ld b, h
    ld b, e
    ld a, d
    ld h, d
    dec bc
    ld e, [hl]
    ld d, d
    ld c, h
    ld c, h
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [$e0], a
    sub l
    rst $38
    inc bc
    cp $86
    db $e3
    and d
    ld b, l
    pop bc
    ld b, c
    ld bc, $2263
    add l
    ld bc, $ff4a
    ld h, [hl]
    ldh [$2a], a
    ld bc, $0703
    rrca
    dec c
    inc bc
    ld [de], a
    inc de
    ld [de], a
    rrca
    inc l
    daa
    jr nz, @+$25

    jr nz, jr_04d_7057

    ld b, b
    ld c, e
    ld [hl], b
    ld b, l
    ld a, [hl]
    ld c, e
    ld a, a
    ld b, a
    ld e, a
    inc bc
    ld b, a
    daa
    jr nc, jr_04d_7023

    jr c, jr_04d_7039

    rra

jr_04d_7023:
    rrca
    rrca
    rlca
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $ec01
    inc sp
    dec c
    ld b, b
    ret nz

    jr nc, jr_04d_7064

    jr c, jr_04d_705e

    ld hl, sp-$38
    db $fc

jr_04d_7039:
    inc [hl]
    adc h
    ld c, h
    call c, Call_04d_4334
    db $fc
    inc b
    inc bc
    db $ec
    inc e
    cp b
    ld a, h
    inc hl
    ld hl, sp+$1d
    ret c

    add sp, -$08
    jr @-$4e

    ld a, c
    ldh a, [$f2]
    or d
    jp nc, $14f2

    or $14

jr_04d_7057:
    rst $28
    inc a
    adc e
    db $fc
    ld a, a
    ld a, b
    dec bc

jr_04d_705e:
    inc c
    rrca
    inc c
    ld c, $0f
    rrca

jr_04d_7064:
    dec bc
    dec bc
    inc c
    ld b, h
    rlca
    ld b, $02
    inc b
    inc bc
    ld [bc], a
    add h
    rst $30
    db $10
    ld bc, $0100
    inc bc
    inc bc
    dec bc
    inc c
    cpl
    jr nc, jr_04d_70de

    ld b, b
    ld h, a
    ld b, b
    ld e, a
    ld h, b
    ld e, $3f
    ld h, a
    dec c
    inc bc
    rlca
    inc bc
    ld [$1007], sp
    ld d, $13
    ld bc, $2925
    daa
    dec hl
    ld h, $43
    cpl
    jr nz, jr_04d_7096

jr_04d_7096:
    rra
    ld b, [hl]
    db $10
    rla
    ldh [$33], a
    rlca
    jr nc, @+$09

    ld d, b
    rlca
    add b
    inc bc
    nop
    ld hl, $1160
    ld e, b
    dec hl
    ld c, h
    rrca
    jr z, @+$09

    nop
    jp $f120


    jr z, @-$01

    ld d, $ff
    ld [bc], a
    cp $01
    rst $38
    jr nc, @-$3f

    ld a, h
    ei
    ld a, h
    ld [hl], a
    ld hl, sp+$7d
    cp $df
    ccf
    cp $07
    db $fd
    ld c, $f7
    adc b
    rst $18
    ldh [$f7], a
    ld hl, sp-$19
    rst $20
    ld b, e
    ldh a, [rNR10]
    inc bc
    ldh [$30], a

jr_04d_70d6:
    ret nz

    ldh [rOCPD], a
    ld bc, $8080
    ld b, h
    ret nz

jr_04d_70de:
    ld b, b
    ld [de], a
    ld b, c
    pop bc
    ld b, c
    ret nz

    ld b, d
    jp nz, $8242

    ld b, d
    pop bc
    ld b, h
    push bc
    ld b, h
    cp l
    ld a, h
    db $fd
    inc b
    ld sp, hl
    inc b
    ld b, e
    di
    ld [$f701], sp
    ld [$ff43], sp
    nop
    rlca
    ccf
    nop
    ld e, $ff
    adc c
    ld c, d
    jp Jump_04d_442c


    rst $38
    nop
    nop
    add b
    ld b, a
    rst $38
    nop
    dec e
    ei
    inc e
    rst $38
    rra
    ld a, e
    add a
    rst $38
    jr nc, @+$01

    ccf
    db $e3
    rra
    cp $06
    db $fc
    inc a
    db $fc
    db $fc
    ld a, $3e
    ccf
    ld a, c
    ld a, a
    ld b, b
    jr c, jr_04d_7168

    inc a
    jr nz, jr_04d_713a

    jr jr_04d_70d6

    push hl
    rrca
    ld a, b
    ld a, b
    inc a
    add h
    ld a, [hl]
    ld [bc], a
    xor $32
    sbc [hl]
    ld d, d
    sbc h

jr_04d_713a:
    ld [hl], d
    db $fc
    inc h
    db $fc
    inc b
    ld b, l
    ld hl, sp+$08
    ld bc, $08f0
    ld b, e
    ldh a, [rNR10]
    inc bc
    sub b
    ld [hl], b
    ld [hl], b
    adc b
    add $8b
    ld b, h
    inc b
    db $fc
    nop
    db $f4
    ld b, e
    inc c
    db $fc
    dec d
    inc b
    rst $10
    inc sp
    ei
    ld [$0cff], sp
    sub a
    ld [hl], h
    push af
    db $f4
    push hl
    rst $28
    call nz, $886f

jr_04d_7168:
    ret z

    ld [$0988], sp
    rrca
    ld [$0f22], sp
    dec c

jr_04d_7171:
    ld [$1008], sp
    sub h
    db $d3
    call nc, $2eed
    ld [c], a
    inc hl
    pop bc
    ld h, c
    add b
    ret nz

    db $ec
    dec sp
    ld bc, $c0c0
    ld b, e
    ldh [rNR41], a
    nop
    ld [hl], b
    ld [hl+], a
    ldh a, [rTIMA]
    cp b
    ret z

    ld a, b
    ld [$7c3c], sp
    inc hl
    db $fc
    ldh [$32], a
    sbc $e2
    ld a, [hl]
    ld [bc], a
    cp $02
    ld a, [$f406]
    inc c
    inc b
    db $f4
    jr c, jr_04d_71dc

    ret nz

    ret nz

    nop
    ld bc, $0e06
    ld e, $1a
    rlca
    dec h
    daa
    inc h
    rra
    ld e, b
    ld c, a
    ld b, b
    ld b, a
    ld b, b
    ld c, e
    ld b, b
    ld b, l
    ld b, b
    ld d, c
    ld h, b
    ld b, e
    ld a, a
    dec b
    ld a, a
    inc hl
    cpl
    inc hl
    jr nz, @+$15

    jr jr_04d_71e6

    rra
    dec bc
    adc h
    nop
    add hl, hl
    dec c
    ld b, b
    ret nz

    ld h, b
    ld h, b
    ld [hl], b
    ld d, b
    ldh a, [$90]
    ld hl, sp+$68
    jr jr_04d_7171

    cp h
    ld h, h
    add l

jr_04d_71dc:
    ld bc, $1fb0
    call c, $fc3c
    db $fc
    db $f4

jr_04d_71e4:
    db $fc
    db $ec

jr_04d_71e6:
    db $f4
    ld hl, sp+$08
    ret c

    jr c, jr_04d_71e4

    ld hl, sp-$50
    ret nc

    ldh a, [rNR11]
    ldh [rNR43], a
    ld [c], a
    ld [hl+], a
    ld [hl], d
    sub h
    cp [hl]
    call z, Call_04d_7c27
    rra
    jr jr_04d_720d

    ld [$008b], sp
    sub h
    add e
    nop
    ldh a, [rTAC]
    db $ed
    ld e, $fe
    rrca
    rst $30
    rrca
    ld sp, hl

jr_04d_720d:
    ld [hl], $83
    nop
    db $fc
    ld [de], a
    rra
    jr jr_04d_723d

    jr z, @+$23

    xor b
    rst $10
    ret c

    rst $28
    inc l
    ld [$c72b], a
    ld h, a
    add b
    ret nz

    cp h
    ld a, h
    db $fc
    ld b, e
    inc b
    ld hl, sp+$04
    ld [$18e8], sp
    jr nc, @-$0e

    jp $1d02


    dec b
    db $e4
    inc b
    db $e4
    inc c
    call nz, Call_04d_443c
    db $e4
    db $fc
    inc b
    db $f4

jr_04d_723d:
    add sp, $08
    ret c

    jr c, @+$63

    rrca
    rlca
    nop
    ld [$1300], sp
    nop
    daa
    nop
    inc h
    nop
    ld b, d
    nop
    ld c, b
    nop
    ld c, c
    nop
    ld b, e
    ld c, a
    nop
    ld bc, $002f
    ld b, l
    daa
    nop
    add l
    ld bc, $077f
    add b
    nop
    ld b, b
    nop
    and b
    nop
    and c
    nop
    ld b, e
    and d
    nop
    ld b, l
    and h
    nop
    ld b, e
    xor c
    nop
    inc b
    cp c
    db $10
    ld sp, hl
    nop
    ld sp, hl
    add a
    ld bc, $1081
    nop
    add h
    nop
    ld a, [hl-]
    nop
    ld a, l
    nop
    call $ad00
    nop
    adc l
    nop
    jp c, $fa00

    nop
    ld b, l
    db $f4
    nop
    ld bc, $00f0
    ld b, e
    add sp, $10
    nop
    sbc b
    adc d
    ld bc, $03a5
    adc h
    ld c, h
    call nc, Call_04d_4434
    db $e4
    inc b
    ld b, $0c
    and b
    ld a, h
    ldh [$f8], a
    ret z

    ld hl, sp-$74
    nop
    and b
    inc c
    add hl, sp
    rlca
    ld b, a
    jp $ff80


    add b
    ld a, a
    ld b, b
    ccf
    jr nc, jr_04d_72c9

    rrca
    ld h, l
    rst $38
    db $ec
    daa
    dec e
    ld bc, $0400
    ld [bc], a
    ld bc, $0028
    stop

jr_04d_72c9:
    jr nz, @+$22

    nop
    ld d, l
    nop
    dec sp
    ld b, b
    scf
    ld b, b
    dec hl
    nop
    ld e, $60
    rrca
    db $10
    ld b, $28
    dec b
    ld [bc], a
    nop
    dec b
    db $ec
    ld d, d
    dec b
    ret nz

    ret nc

    inc h
    nop
    ld [$61c4], sp
    inc bc
    inc bc
    ld d, $00
    ld l, d
    ld b, h
    ld bc, $0dfe
    db $fc
    ld [bc], a
    cp h
    ld [bc], a
    ld e, l
    dec b
    or [hl]
    rrca
    ld b, b
    ccf
    ld [$0ccf], sp
    rrca
    ld c, c
    db $10
    rra
    nop
    add hl, bc
    ld b, h
    rrca
    ld a, [bc]
    ld b, e
    ld b, $07
    ld [bc], a
    inc bc
    inc bc
    ld bc, $00df
    jr z, jr_04d_7313

    ld [bc], a

jr_04d_7313:
    nop
    add e
    and d
    ld b, $06
    ld bc, $0202
    inc b
    rlca
    nop
    ld b, l
    inc bc
    inc b
    inc bc
    ld bc, $0004
    ld [bc], a
    add h
    sub a
    nop
    ld [bc], a
    rst $00
    or [hl]
    jp $0ac4


    inc c
    rra
    jr nz, jr_04d_73b2

    add d
    ld sp, hl
    ld b, $f9
    nop
    rst $38
    ld bc, $ff4c
    nop
    inc bc
    ldh [rIE], a
    ld d, b
    ccf
    ld b, a
    ld [$07ff], sp
    db $10
    rst $38
    ldh [rIE], a
    ld h, b
    ld a, a
    inc e
    rra
    jp $8eac


    ld sp, hl
    ld b, $05
    ld [bc], a
    inc c
    jr nz, jr_04d_7368

    nop
    ld b, b
    and l
    sub h
    ldh [rNR51], a
    and b
    nop
    ld d, b
    nop
    ldh [rP1], a
    ret nc

    nop
    add sp, $00

jr_04d_7368:
    ret nc

    nop
    ld [$d500], a
    nop
    xor d
    nop
    ld e, a
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, c
    add [hl]
    inc de
    ld l, c
    adc e
    sbc c
    sub $53
    rst $38
    inc sp
    rst $38
    sbc h
    rlca
    ld sp, hl
    add e
    db $dd
    ld b, $02
    ld sp, hl
    ld b, $f9
    add b
    rst $38
    ld h, b
    ld d, h
    rst $38
    nop
    inc bc
    inc bc
    rst $38
    dec b
    db $fc
    ld b, l
    ld [$09ff], sp
    sbc h
    rst $38
    dec bc
    ei
    inc b
    db $fc

jr_04d_73a0:
    add h
    db $fc
    ld a, b
    ld a, b
    and a
    nop
    ld hl, $4808
    or b
    nop
    ld b, $0a
    ld bc, $0014
    ld a, [bc]
    adc l

jr_04d_73b2:
    nop
    db $e4
    ldh [$29], a
    nop
    ld [bc], a
    nop
    rlca
    nop
    ld c, [hl]
    nop
    cp a
    nop
    rst $38
    nop
    rst $30
    nop
    ei
    nop
    push de
    nop
    xor e
    nop
    sub $01
    adc b
    db $76
    add b
    add d
    ret nz

    ld b, b
    add b
    add b
    ld b, b

jr_04d_73d4:
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$00
    db $fd
    inc b
    db $fd
    ld [bc], a
    rst $38
    inc bc
    and h
    di
    nop
    inc bc
    ld b, h
    rst $38
    ld bc, $0245
    cp $83
    rst $18
    inc bc
    ld e, b
    ld hl, sp+$30
    ldh a, [rSCX]
    jr nz, jr_04d_73d4

    nop
    ld b, b
    or e
    nop
    call Call_04d_4000
    jp Jump_04d_5f01


    dec d
    nop
    jr nz, jr_04d_7412

    ld [$1000], sp
    nop
    inc c
    and b
    ld [$0450], sp
    xor b
    inc b
    ld d, h
    nop
    xor b
    inc b
    ld e, h

jr_04d_7412:
    nop
    ld hl, sp+$04
    ld b, e
    ldh a, [$08]
    ld b, $e0
    db $10
    ldh [rNR23], a
    ret nz

    jr nz, jr_04d_73a0

    and h
    ld bc, $05da
    ld [bc], a
    dec b
    nop
    jr jr_04d_742a

    and b

jr_04d_742a:
    add h
    ld bc, $035c
    add b
    ld b, b
    nop
    ldh [$84], a
    ld bc, $0beb
    rla
    add b
    cp d
    add b
    ccf
    ld b, b
    ld e, $20
    rla
    ld [$0601], sp
    db $ec
    ld d, b
    ldh [rNR41], a
    and b
    add b
    ld h, b
    stop
    add b
    ld [$0004], sp
    ld [$1604], sp
    nop
    inc a
    ld [bc], a
    cp $00
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ld hl, sp+$06
    ld [hl], b
    ld [$10e0], sp
    ret nz

    jr nz, jr_04d_7464

jr_04d_7464:
    sub b
    nop
    add b
    ldh a, [$4e]
    nop
    ld a, [bc]
    inc b
    ret nz

    ret nc

    jr nz, jr_04d_7470

jr_04d_7470:
    inc c
    adc a
    nop
    sbc [hl]
    inc c
    ld e, d
    ld b, $b2
    ld c, $49
    ccf
    ld [$04cf], sp
    rlca
    inc c
    rrca
    ld [$008a], sp
    or a
    ld [bc], a
    ld [$090f], sp
    adc l
    nop
    push bc
    add e
    ld bc, $0207
    inc b
    nop
    ld [bc], a
    add e
    nop
    or $07
    inc bc
    inc b
    nop
    rst $38
    ld [hl], b
    rst $38
    xor b
    sbc a
    ld b, l
    inc b

jr_04d_74a1:
    rst $38
    inc bc
    ld [$e0ff], sp
    rst $38
    sub l
    ld bc, $004c
    ld b, b
    adc b
    ld bc, $8363
    ld bc, $0090
    ldh [rSCX], a
    rst $38
    ret nz

    ld d, b
    rst $38
    nop
    inc bc
    rlca
    rst $38
    ld a, [bc]
    ld sp, hl
    ld b, l
    db $10
    rst $38
    inc bc
    sbc b
    rst $38
    rrca
    rst $38
    adc c
    ld bc, $8db8
    ld bc, $03be
    nop
    db $fd
    dec b
    db $fd
    ld b, e
    ld [bc], a
    rst $38
    ld [bc], a
    inc b
    rst $38
    ld bc, $028e
    dec bc
    dec b
    inc b
    db $fc
    sbc b
    ld hl, sp+$30
    ldh a, [$ae]
    nop
    dec de
    add a
    ld [bc], a
    dec sp
    ld [bc], a
    inc d
    ld d, b
    ld [$0285], sp
    ld b, [hl]
    inc bc
    ld [bc], a
    add l
    nop
    ld e, b
    adc b
    ld [bc], a
    ld l, b
    nop
    add b
    adc c
    ld [bc], a
    ld [hl], d
    ld bc, $c0bf
    add [hl]
    ld [bc], a
    ld a, [hl]
    sub l
    ld [bc], a
    push de
    ld [bc], a
    inc b
    ld [hl], b
    ld a, [bc]
    add e
    ld [bc], a
    xor $a7
    nop
    ld b, h
    ld b, e
    jr jr_04d_7513

jr_04d_7513:
    ld h, c
    nop
    ld b, c
    adc e
    nop
    add hl, hl
    ld [bc], a
    jr nz, jr_04d_7527

    jr nz, jr_04d_74a1

    nop
    inc a
    ld h, c
    inc b
    jr nc, jr_04d_7524

jr_04d_7524:
    jr nc, jr_04d_7526

jr_04d_7526:
    nop

jr_04d_7527:
    push bc
    ld bc, $8cdb
    nop
    sbc c
    add l
    nop
    xor d
    inc bc
    nop
    add b
    ld a, [de]
    ld b, b
    add e
    cp e
    add a
    ld [bc], a
    ld h, h
    adc b
    call $8005
    add b
    ld h, b
    inc de
    nop
    add e
    add h
    rst $30
    ld bc, $003e
    ld b, e
    db $fc
    ld [bc], a
    inc b
    ld hl, sp+$04
    ld a, b
    inc b
    ldh a, [$84]
    ld bc, $00ce
    db $10
    adc d
    nop
    daa
    nop
    db $10
    ld h, c
    adc b
    reti


    rlca
    ret nz

    inc b
    inc b
    ld [bc], a
    db $10
    add b
    ld [bc], a
    ld b, l
    adc c
    ld [bc], a
    ld h, [hl]
    add e
    ld [bc], a
    db $f4
    nop
    inc b
    add [hl]
    inc b
    ld h, c
    nop
    dec b
    ld h, c
    ld [bc], a
    inc b
    nop
    inc b
    rst $38
    ld l, l
    dec bc
    jr nc, @+$7b

    ld e, $87
    sbc a
    add b
    rst $08
    add b
    ld l, a
    ld b, b
    ccf
    jr nz, jr_04d_75cc

    ccf
    ld hl, $1e03
    ld [hl+], a
    inc e
    inc e
    db $ec
    ld b, l
    inc de
    rra
    rra
    ld h, b
    ld [hl], l
    add b
    db $eb
    ret nz

    rst $30
    db $e3
    ccf
    db $e4
    inc a
    call nz, $c53c
    db $fc
    sbc l
    cp h
    inc b
    inc b
    inc hl
    ld [$1023], sp
    ld bc, $0020
    dec hl
    jr nz, jr_04d_75b5

    ld sp, $1120
    db $10

jr_04d_75b5:
    ld de, $1047
    inc de
    ld [$1b11], sp
    ld de, $080f
    rlca
    ld b, $01
    ld bc, $1e7b
    ld b, $0e
    inc de
    ld de, $616f
    sbc [hl]

jr_04d_75cc:
    add c
    ld a, h
    adc $30
    ldh a, [rNR41]
    ldh [$90], a
    ldh a, [$cf]
    ld a, a
    rst $38
    jr nc, @+$01

    nop
    cp a
    nop
    ld d, a
    nop
    dec hl
    nop
    ld d, a
    nop
    cpl
    add h
    add e
    ldh [$35], a
    ld e, a
    ld bc, $027f
    ld a, [hl]
    inc b
    ld a, d
    ld c, $fa
    ld d, $f7
    scf
    or $38
    ld hl, sp+$40
    jr nc, @-$3e

    db $e3
    add b
    db $ed
    inc bc
    rst $18
    ld b, $ff
    adc e
    cp $1f
    ld [c], a
    ld [hl+], a
    call nz, $04c4
    ld b, $04
    dec b
    ld a, [bc]
    ld c, $0a
    rrca
    add hl, bc
    rrca
    nop
    dec bc
    nop
    ld [$0404], sp
    ld [bc], a
    inc bc
    ld bc, $0201
    ld [bc], a
    sub l
    rst $30
    dec bc
    ret nz

    ret nz

    di
    inc sp
    db $fc
    inc c
    or b
    ld [hl], b
    pop bc
    nop
    rst $20
    nop
    ld b, h
    rst $38
    nop
    nop
    ld sp, $ff43
    pop bc
    jr jr_04d_76b6

    ld b, b
    ld [hl], e
    ld b, b
    ld hl, $0140
    ld b, b
    rst $08
    ld bc, $071e
    add hl, sp
    add hl, bc
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    add b
    add e
    nop
    cp h
    nop
    push bc
    xor [hl]
    ld d, $01
    nop
    add [hl]
    ld bc, $0179
    add e
    ld bc, $e17d
    db $e3
    ccf
    rst $38
    ld e, $fe
    inc c
    db $fc
    inc b
    ld a, h
    ld [$f038], sp
    ldh a, [$95]
    rst $18
    ldh [rLYC], a
    ld h, c
    ld hl, $2766
    ret z

    ld c, [hl]
    ret nc

    ld e, a
    sub b
    sbc a
    adc b
    adc a
    adc h
    adc a
    ld [de], a
    rra
    rla
    dec e
    add hl, bc
    inc c
    sbc a
    sbc a
    db $e4
    rst $38
    add d
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $02ff
    cp $8c
    db $fc
    ld c, b
    ld a, b
    ld c, b
    ld hl, sp+$27
    ccf
    inc h
    ccf
    ld [de], a
    ccf
    add hl, sp
    ccf

jr_04d_769d:
    ld b, c
    ld [hl], c
    add b
    db $e3
    add e
    rst $30
    inc b
    db $fc
    ld a, [bc]
    ld_long a, $ff14
    sub b
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a

jr_04d_76af:
    ld sp, $0e3f
    ld c, $79
    add hl, bc
    ret nz

jr_04d_76b6:
    ret nz

    jr nc, jr_04d_7729

    ld [$04b8], sp
    ld e, h
    inc b
    db $fc
    ld b, l
    ld [bc], a
    cp $05
    sub h
    db $fc
    add sp, -$08
    ld [$45f8], sp
    db $10
    ldh a, [$0d]
    jr nz, jr_04d_76af

    ret nz

    ret nz

    db $10
    db $10
    ld a, [hl+]
    ld a, [hl+]
    ld c, l
    ld e, l
    ret


    ld sp, hl
    ld sp, $433b
    ld [bc], a
    cp $43
    inc b
    db $fc
    rlca
    adc b
    ld hl, sp-$70
    ldh a, [$a0]
    ldh [rLCDC], a
    ld b, b
    ld b, e
    ld b, b
    ret nz

    ld bc, $8080
    xor c
    ld bc, $111e
    inc b
    inc b
    jr jr_04d_7708

    dec [hl]
    jr nz, jr_04d_7739

    ld [$517c], sp
    inc a
    ld bc, $8098
    stop
    nop
    nop
    add a
    sbc d

jr_04d_7708:
    ld [bc], a
    ld [$2400], sp
    ld h, d
    dec b
    ld [de], a
    db $10
    dec c
    ld [$0406], sp
    adc c
    ld bc, $001e
    jr jr_04d_769d

    sbc a
    rlca
    ld b, b
    nop
    ld hl, sp+$1e
    cp $01
    push af
    nop
    add h
    nop
    ld l, l
    add hl, bc
    ld h, h

jr_04d_7729:
    inc a
    ld b, h
    inc a
    dec b
    inc a
    dec l
    ld a, h
    inc b
    ld d, h
    ld [hl+], a
    ld [$b4c6], sp
    dec c
    jr @+$1a

jr_04d_7739:
    ld b, $04
    add c
    add c
    ld c, h
    ret nz

    ld hl, $fbe0
    rla
    rst $30
    inc [hl]
    adc h
    nop
    db $f4
    ld b, $8e
    rst $38
    dec e
    rst $38
    inc sp
    adc $ce
    jp $11d2


    ld [de], a
    ld d, $12
    rra
    add hl, sp
    ccf
    ld b, [hl]
    ld b, a
    ld b, c
    ld e, a
    jr nz, jr_04d_779e

    db $10
    rra
    inc c
    rrca
    inc bc
    inc bc
    ld l, l
    nop
    add b
    jp nz, $8be6

    ld bc, $0560
    nop
    ld a, b
    nop
    add e

jr_04d_7772:
    nop
    ld a, h
    add e
    ld bc, $0572
    jr jr_04d_7772

    ld h, b
    ldh [rLCDC], a
    ret nz

    add a
    ld [bc], a
    ld [hl], $01
    ret nz

    ret nz

Jump_04d_7784:
    ld b, e
    ld h, b
    jr nz, jr_04d_778d

    pop bc
    ld b, c
    add $47
    adc b

jr_04d_778d:
    adc [hl]
    ld b, e
    sub b
    sbc a
    dec bc
    ld [$0c0f], sp
    rrca
    ld [de], a
    rra
    sub a
    sbc l
    ld sp, hl
    db $fc
    add a
    rst $38

jr_04d_779e:
    add e
    ld bc, $11c0
    ld de, $113f
    ld e, a
    db $10
    sbc a
    db $10
    ccf

jr_04d_77aa:
    jr nz, jr_04d_77aa

    jr nz, @+$3e

    ld b, b
    ld a, [$fd80]
    add b
    rst $38
    and h
    ld [bc], a
    ld [hl+], a
    inc b
    ld a, $18
    jr jr_04d_77c3

    rlca
    sbc a
    ld bc, $01ec
    ld b, b
    ret nz

jr_04d_77c3:
    add a
    ld [bc], a
    ld l, $01
    ld b, b
    ld b, b
    xor e
    ld bc, $181c
    inc b
    nop
    inc d
    nop
    stop
    ld d, d
    nop
    ld e, d
    ld [bc], a
    ld l, b
    jr nz, jr_04d_7842

    nop
    ld a, h
    ld d, b
    ld a, l
    ld b, c
    ccf
    ld hl, $1006
    nop
    add hl, bc
    rlca
    add e
    ld [bc], a
    call $0116
    inc b
    rlca
    jr jr_04d_780a

    ld h, b
    ld h, l
    add b
    di

jr_04d_77f3:
    nop
    rst $28
    ld b, e
    ccf
    inc h
    inc a
    inc b
    inc e
    add l
    cp h
    dec e
    inc e
    inc c
    inc c
    inc hl
    ld [$300f], sp
    jr nz, jr_04d_77f3

    adc b
    or [hl]
    inc b

jr_04d_780a:
    add hl, sp
    nop
    db $fc
    add b
    ld l, d
    xor b
    ld h, d
    jp nz, $c041

    adc e
    ld bc, $03b0
    ld c, c

jr_04d_7819:
    ld sp, hl
    ld h, $3f
    add l
    ld [bc], a
    db $10
    ld [$2020], sp
    ld e, b
    ld e, b
    sub h
    or h
    sub h
    db $f4
    ld [hl], h
    ld b, h
    db $fc
    inc b
    ld b, e
    ld [$01f8], sp
    sub b
    ldh a, [$85]
    ld [bc], a
    ld a, [hl+]
    rst $38
    db $ec
    jr nz, jr_04d_7819

    inc h
    ld bc, $3213
    rlca
    ld l, $2d
    dec h
    cpl

jr_04d_7842:
    dec h
    dec a
    daa
    ld a, $23
    ld a, $33
    rra
    ld de, $1b1e
    inc d
    dec de
    inc e
    rla
    inc a
    daa
    ld l, $33
    ld a, $33
    daa
    add hl, hl
    rra
    jr c, jr_04d_786b

    jr jr_04d_787d

    jr jr_04d_78a3

    rla
    db $10
    inc c
    dec bc
    ld d, $07
    ld [$0407], sp
    ld [bc], a
    inc bc

jr_04d_786b:
    ld bc, $0201
    inc bc
    ld bc, $0722
    ld bc, $0303
    sub d
    call z, Call_04d_4ce0
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_04d_787d:
    ld [bc], a
    inc b
    inc b
    ld b, $04
    dec c
    inc c
    rla
    inc d
    dec hl
    ld [hl+], a
    daa
    ld [hl], d
    ld a, l
    sbc a
    rst $18
    ld h, e
    rst $38
    add h
    ld e, a
    ld [$10bb], sp
    push de
    ld sp, $f19f
    adc [hl]
    ld sp, hl
    ld c, b
    rst $38
    ld bc, $0fff
    cp $af
    ld hl, sp-$41

jr_04d_78a3:
    ldh a, [$7f]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    ld c, $f7
    rla
    ei
    rra
    di
    ld a, $ff
    inc c
    db $fd
    inc bc
    rst $30
    rrca
    sbc $3f
    ld a, b
    ld hl, sp-$10
    ld hl, sp-$50
    ldh a, [$60]
    ldh a, [$c0]
    ldh [$80], a
    add b
    ld l, e
    ld c, $02
    ld bc, $0406
    ld l, b
    jr c, @-$6e

    sub b
    db $10
    db $10
    dec [hl]
    jr nz, jr_04d_7940

    jr nz, @-$3f

    ld b, l
    ld hl, $e0ff
    inc [hl]
    ld de, $1bf4
    ld hl, sp+$0f
    ret z

    cp a
    call nz, $e27f
    ccf
    ld sp, hl
    rra
    db $f4
    sub a
    ld d, d
    or e
    rst $08
    rst $38
    ld a, $f8
    rst $30
    adc a
    rst $00
    nop
    rst $38
    rra
    pop bc
    ld a, a
    ldh a, [$bf]
    ld sp, hl
    ld c, a
    rst $30
    ld e, $e9
    ld e, $d3
    inc a
    and e
    ld a, h
    rst $20
    ld a, b
    set 6, h
    rst $10
    add sp, -$15
    db $f4
    ld e, a
    sbc h
    inc bc
    inc bc
    dec h
    ld bc, $0203
    inc bc
    inc bc
    inc bc
    xor e
    pop hl
    ldh [rSTAT], a
    adc e
    add a
    ld a, b
    ld [hl], b
    jr nz, jr_04d_7942

    ld b, b
    ld b, b
    inc bc
    add c
    xor d
    add d
    sbc $82
    ld a, l
    inc b
    rst $38
    inc b
    db $fd
    ld b, $fa
    dec c
    db $dd
    xor e
    xor e
    db $dd
    ld c, e
    cp $52
    rst $38
    ld d, h
    rst $38
    inc [hl]
    rst $38
    cp d
    rst $38

jr_04d_7940:
    db $dd
    db $e3

jr_04d_7942:
    ld d, a
    add b
    xor e
    nop
    ld e, a
    nop
    ld a, a
    ret nz

    rst $38
    and b
    rst $38
    ldh [$7f], a
    ret nz

    rst $38
    add b
    ei
    nop
    db $e3
    nop
    add l
    ld b, $1a
    sbc e
    pop hl
    ld h, c
    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    inc b
    adc b
    ld a, b
    ld [$98f8], sp
    ld [hl+], a
    ld hl, sp+$07

jr_04d_796a:
    ldh a, [$f0]
    or b
    ldh a, [$50]
    ldh a, [$e0]
    ldh [rOCPD], a
    ldh [rNR52], a
    ret nz

    ret nz

    ld h, b
    jr nz, jr_04d_796a

    ld a, b
    ld l, $86
    ld d, l
    ld bc, $003a
    ld [hl], a
    rrca
    ldh [$30], a
    push bc
    ld b, b
    xor d
    ret nz

    ld a, a
    add b
    cp a
    ld b, a
    ld e, b
    xor b
    ld sp, $17d0
    ldh a, [$3f]
    ldh a, [$cf]
    ret nc

    add a
    adc h
    pop bc
    jp Jump_04d_43c0


    jr nz, @-$1e

    ld [bc], a
    db $10
    ldh a, [rNR10]
    ld b, e
    ld hl, sp+$08
    ld bc, $0cf4
    ld b, e
    db $fc
    inc b
    inc de
    cp $02
    xor [hl]
    ld d, d
    sub $aa
    ld l, d
    sub $56
    ld l, d
    ld [hl+], a
    ld a, [hl]
    ld a, d
    ld a, $56
    ld a, [hl]
    ld a, h
    ld a, [hl]
    jr c, jr_04d_79fd

    cp [hl]
    nop
    inc bc
    ld c, $80
    add b
    ret nz

    ldh [$60], a
    ld [hl], b
    db $10
    cp b
    ld [$08f8], sp
    db $fc
    inc b
    db $fc
    add h
    ld b, e
    db $fc
    ld b, h
    rlca
    ld hl, sp-$78
    ldh a, [rNR10]
    ret nz

    ld h, b
    add b
    add b
    db $ec
    inc sp
    jp $1d01


    rlca
    inc b
    inc b
    dec b
    inc b
    ld a, [bc]
    ld [$782d], sp
    ld l, c
    inc c
    rlca
    rrca
    ld [de], a
    ld [hl-], a
    ld b, h
    ld b, h
    add h
    add h
    db $dd
    adc b
    xor d
    adc b
    rst $18

jr_04d_79fd:
    ld b, [hl]
    adc b
    rst $38
    ld [$8bfc], sp
    db $f4
    rst $08
    call z, $e2f7
    ld a, a
    ld a, [c]
    adc b
    nop
    rst $20
    ld h, a
    ld a, [bc]
    or b
    ld [hl], b
    dec bc
    rrca
    inc c
    inc c
    db $10
    db $10
    and c
    jr nz, jr_04d_7a84

    ld b, e
    jr nz, @+$01

    dec bc
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, d
    ld a, [hl]
    push bc
    push de
    ld l, [hl]
    ld l, d
    db $dd
    ld c, c
    ld b, h
    rst $38
    ld d, d
    ld b, $34
    rst $38
    cp a
    rst $38
    xor $f1
    rst $10
    adc d
    ld [bc], a
    rrca
    ldh [$2d], a
    add b
    ret nz

    jr nz, @+$32

    ld [$5e08], sp
    ld c, $df
    ccf
    ret nz

    ld h, b
    add l
    add b
    xor d
    nop
    ld e, a
    rlca
    db $fc
    jr jr_04d_7ac0

    ldh [$ea], a
    sub b
    rra
    ldh [rIF], a
    pop af
    ld d, $ea
    rrca
    db $f4
    rst $20
    db $fc
    rst $18
    call c, $26c1
    ldh [rNR44], a
    pop hl
    ld de, $10f0
    ldh a, [$08]
    add a
    ld bc, $85b8
    ld bc, $0a86
    ld b, b
    ld b, b
    ldh [rNR41], a
    ldh [$e0], a
    jr nc, jr_04d_7aa7

    ld e, b
    ld [$83ac], sp
    ld bc, $02bf
    jp nz, $223e

    ld b, e
    cp $12

jr_04d_7a84:
    dec b
    ld a, [$f466]
    inc c
    jr @-$06

    adc l
    ld bc, $847c
    rst $08
    inc b
    ldh a, [rNR22]
    jp hl


    ld c, $f2
    add e
    rst $08
    rlca
    rst $00
    inc h
    pop hl
    ld h, $e0
    inc de
    pop af
    ld de, $cf89
    add h
    cp a
    nop
    ld [bc], a

jr_04d_7aa7:
    add l
    pop bc
    dec b
    ld a, [$fc16]
    ld h, h
    ldh a, [$08]
    adc l
    pop bc
    adc c
    nop
    jr nc, jr_04d_7af9

    ld a, $23
    inc bc
    cpl
    ld sp, $301f
    adc l
    nop
    ld b, d

jr_04d_7ac0:
    add hl, bc
    rst $38
    nop
    rst $30
    rrca
    rst $38
    jr @+$01

    jr nz, @+$01

    nop
    add l
    nop
    xor d
    add e
    nop
    ld b, b
    nop
    rla
    adc b
    sbc a
    ld [bc], a
    inc b
    rlca
    inc bc
    adc [hl]
    nop
    ld d, c
    add e
    xor a
    inc bc
    di
    rla
    rst $30
    inc a
    add l
    xor a
    ld [bc], a
    ld e, $ff
    ld hl, sp-$72
    nop
    or c
    rst $38
    ld h, c
    dec d
    rra
    rra
    ld h, a
    ld h, b
    adc a
    add b
    rst $38
    add b
    ld a, a
    ld [hl], b

jr_04d_7af9:
    rrca
    ld [$0407], sp
    rra
    inc e
    cpl
    daa
    cpl
    jr nz, jr_04d_7b43

    jr nz, @+$45

    rra
    db $10
    add e
    adc a
    ld bc, $0303
    ld l, c
    dec bc
    ld bc, $0201
    ld b, $0b
    ld [$0607], sp
    ld bc, $0101
    ld bc, $958c
    ld [hl+], a
    ld [bc], a
    nop
    inc bc
    jp nz, Jump_04d_7784

    inc bc
    ret nz

    ret nz

    ldh [rNR41], a
    ld b, e
    ldh a, [rNR10]
    ld b, h
    ld hl, sp+$08
    ld [bc], a
    adc b
    db $fc
    inc b
    ld b, a
    db $fd
    dec b
    ldh [$31], a
    ld sp, hl
    add hl, bc
    db $fc
    dec c
    rst $38
    inc de
    rst $38
    db $e3
    ld a, a
    ld h, d
    ld e, a

jr_04d_7b43:
    ld a, d
    add a
    db $fd
    add a
    db $fc
    jp $e1fe


    ccf
    ldh [$1f], a
    db $fc
    ccf
    jp nz, $00ff

    rst $38
    add b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_04d_7b99

    ld [hl], a
    ld a, a
    cp $88
    ccf
    inc b
    ld a, a
    rlca
    rst $38
    jr c, @+$01

    ld h, b
    rst $18
    ld d, b
    adc a
    adc a
    ld [hl], l
    ld bc, $2020
    dec h
    ld d, b
    nop
    sbc b
    ld b, h
    adc b
    cp b
    ldh [$2f], a
    db $fc
    add h
    db $fc
    inc b
    ld hl, sp+$07

jr_04d_7b7d:
    db $fc
    nop
    ld hl, sp+$00
    cp b
    ld b, b
    db $fc
    add b
    rst $18
    ld h, b
    ld a, $a1
    ld e, $11
    xor a
    jr nc, jr_04d_7b7d

    jr nz, @+$01

    add b
    rst $38
    ld h, b
    rst $18
    rst $18
    ld a, d
    rst $38
    ld hl, sp-$71

jr_04d_7b99:
    db $fc
    add a
    rst $38
    add e
    ld a, a
    ret nz

    ld a, e
    ret nz

    push af
    and b
    ld a, [$f718]
    or [hl]
    ld b, e
    pop bc
    ld b, c
    ld bc, $8080
    and a
    nop
    inc [hl]
    ld bc, $0101
    sub c
    nop
    ld c, d
    ld bc, $0202
    inc hl
    dec b
    ldh [$2b], a
    add hl, bc
    add hl, bc
    dec bc
    ld [$1013], sp
    rla
    db $10
    scf
    jr nz, jr_04d_7c07

    jr nz, @+$01

    ret nz

    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    sbc b
    db $e3
    inc h
    pop bc
    ld b, d
    and a
    ld h, b
    cp a
    ld hl, $06ff
    rst $38
    ld a, e
    xor a
    db $ec
    ccf
    ldh a, [$7f]
    ldh [$7f], a
    ret nz

    call nz, $9900
    nop
    ld bc, $ff44
    nop
    ld a, [de]
    rrca
    cp $f2
    ld a, [hl]
    ld [bc], a
    sbc h
    add h
    ld a, a
    ld a, e
    ld a, a
    ld h, d
    rst $38
    sbc l
    rst $38
    sub c
    rst $38
    ld c, $ff
    nop
    rst $20
    add b

jr_04d_7c07:
    db $e3
    add b
    ld [hl], c
    ld h, b
    rra
    inc e
    add a
    nop
    ld c, b
    inc b
    ld bc, $0301
    ld [bc], a
    ld b, $22
    inc b
    nop
    adc l
    ld b, h
    adc b
    adc a
    ld bc, $919f
    ld b, a
    sbc a
    sub b
    ld a, [de]
    rst $18
    ld d, b
    rst $08

Call_04d_7c27:
    ld c, b
    rst $38
    jr c, @+$01

    inc [hl]
    rst $30
    inc hl
    rst $30
    jr nc, @+$01

    add hl, hl
    cp $47

jr_04d_7c34:
    ld hl, sp-$71
    ldh a, [$3f]
    ret nz

    rst $38
    ret c

    ld a, a
    rst $00
    ld a, a
    ret nz

    jp $0a00


    inc d
    rst $38
    ret nz

    rst $38
    rst $30
    ccf
    rst $38
    ld c, b
    ld sp, hl
    sub b
    ld a, [c]
    or b
    ld a, a
    ld c, c
    rst $38
    rst $00
    rst $38
    ld hl, $12fe
    db $fc
    inc c
    ld b, l
    db $fc
    inc b
    and h
    nop
    ld a, [de]
    nop
    ld h, b
    add e
    ld bc, $080a
    jr nc, jr_04d_7c96

    db $fc
    call z, $02ce
    ld e, $02
    ld a, h
    and h
    nop
    rla
    dec c
    ld_long a, $ff0a
    dec b
    rst $38
    sbc c
    ei
    pop hl
    rst $20
    ld bc, $02ce
    cp $02
    add [hl]
    xor c
    ld b, $30
    ldh [$e0], a
    sub b
    ldh a, [rNR10]
    ldh a, [$c4]
    sbc h
    inc c
    db $fc
    inc a
    db $fc
    ld a, [hl]
    add $7d
    add c
    ld a, [hl]
    add $38

jr_04d_7c96:
    ld hl, sp+$20
    ldh [rSCX], a
    ld b, b
    ret nz

    inc b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    cp h
    nop
    ld b, a
    rlca
    rlca
    rlca
    add hl, de
    jr jr_04d_7cce

    jr nz, @+$41

    jr nz, jr_04d_7c34

    ld bc, $057a
    rlca
    rlca
    dec bc
    add hl, bc
    dec bc
    ld [$0083], sp
    inc e
    ld bc, $0407
    adc a
    nop
    ld c, b
    add e
    nop
    inc l
    add e
    nop
    ld h, d
    inc bc
    ldh a, [$30]
    ld hl, sp+$08
    ld b, e
    db $fc

jr_04d_7cce:
    inc b
    ld b, e
    cp $02
    inc bc
    rst $38
    inc hl
    rst $38
    pop bc
    ld b, e
    rst $38
    ld bc, $ff48
    ld [bc], a
    ld [$3dc6], sp
    dec sp
    ccf
    ld h, $5e
    ld [hl], a
    ld c, [hl]
    ld a, h
    add l
    nop
    adc d
    xor l
    ld bc, $021c
    and b
    and b
    jr nc, @+$46

    db $10
    ld [hl], b
    ld b, e
    ld hl, sp+$08
    ldh [rNR51], a
    pop af
    rrca
    ld hl, sp+$00
    ldh a, [rP1]
    ld [hl], b
    add b

jr_04d_7d01:
    ld sp, hl
    nop
    cp [hl]
    pop bc
    ld a, l
    ld b, d
    dec a
    ld [hl+], a
    ld e, a
    ld h, b
    rst $18
    ld b, b
    rst $38
    nop
    rst $38
    ret nz

    cp a
    cp a
    db $f4
    rst $38
    db $f4
    cp a
    ld [hl], h
    rst $18
    ld [hl], b
    rst $18
    ld hl, sp-$51
    rst $38
    rra
    xor l
    nop
    cp h
    db $10
    ld [de], a
    ld [de], a
    rla
    ld de, $2127
    cpl
    ld hl, $416f
    ld a, a
    ld b, c
    rst $38
    add c
    rst $38
    ld bc, $857f
    ld bc, $145b
    jr nc, jr_04d_7d01

    ld c, b
    add e
    add h
    ld c, a
    ret nz

    ld a, a
    ld b, d
    rst $38
    inc c
    rst $38
    rst $30
    rst $18
    call c, $b87f
    ld a, a
    ldh [rIE], a
    add b
    and e
    sbc a
    nop
    rst $38
    and [hl]
    nop
    ld h, c
    inc b
    inc c
    ld [$1019], sp
    inc de
    add h
    ld bc, $0531
    ccf
    jr nz, jr_04d_7de0

    ld b, [hl]
    ld a, a
    ld b, e
    ld b, a
    ld a, a
    ld b, b
    ld de, $203f
    ld a, a
    ld h, b
    rst $18
    sub b
    rst $18
    ld c, a
    rst $38
    ld b, c
    cp $73
    db $fc
    ld c, a
    ld hl, sp+$4f
    ldh a, [$bf]
    add e
    ld [bc], a
    ld [hl], d
    inc bc
    jr c, jr_04d_7d88

    ld a, b
    ld [$02a5], sp
    ld d, [hl]
    ld a, [bc]
    add sp, $28

jr_04d_7d88:
    db $fc
    inc d
    db $fc
    ld h, h
    db $ec
    add h
    sbc h
    inc b
    jr c, @-$39

    ld [bc], a
    inc c
    and h
    nop
    dec e
    ld bc, $c040
    add $98
    ld [bc], a
    ld hl, sp+$04
    db $fc
    rst $38
    db $ec
    ld [hl], $1a
    ld bc, $0203
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec c
    ld [bc], a
    ld de, $1215
    ld de, $131e
    inc e
    rra
    db $10
    rrca
    add hl, bc
    rrca
    ld c, $04
    rlca
    ld b, e
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0203
    ld [bc], a
    ldh a, [rNR51]
    add $00
    nop
    inc h
    inc b
    dec b
    nop
    inc b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    dec h
    ld bc, $0711
    rrca
    ccf
    ld [hl], b
    ldh [$80], a
    add b
    nop

jr_04d_7de0:
    ret nz

    nop

jr_04d_7de2:
    and b
    nop
    push de
    nop
    db $eb
    nop
    rst $38
    nop
    ld b, a
    cp $01
    ld de, $c1be
    rst $38
    jr nz, jr_04d_7e72

    sub b
    rra
    add sp, -$71
    db $f4
    jp $31ff


    ccf
    ld d, $1e
    jr jr_04d_7e18

    db $f4
    jr nz, jr_04d_7de2

    ld b, $80
    jp $2443


    ld h, a
    ld a, b
    ccf
    ld b, e
    inc l
    inc h
    ldh [$2f], a
    ld [$182f], sp
    rrca
    inc d
    inc de
    db $10
    db $10

jr_04d_7e18:
    cp h
    ret nz

jr_04d_7e1a:
    rst $30
    jr c, jr_04d_7e1a

    ld b, $3e

jr_04d_7e1f:
    ld bc, $005f
    cp a
    nop
    ld b, b
    ccf
    nop
    rst $38
    ld e, $e1
    ld hl, $40c0
    sub b
    ld c, b
    adc b
    ld b, h
    add h
    inc hl
    jp nz, $e11e

    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    cp $03
    ld hl, sp-$04
    ld h, a
    rra
    ldh [$f0], a
    ret z

    adc h
    ld [c], a
    add e
    ld [hl], b
    add h
    ld [hl], b
    ld c, b
    db $76
    ld [hl], b
    ld c, $41
    inc a
    ld [hl+], a
    dec a
    inc l
    rrca
    jr nc, @+$21

    rra
    ld bc, $0301
    rlca
    rra
    jr c, jr_04d_7e1f

jr_04d_7e5f:
    ret nz

    ld b, b

jr_04d_7e61:
    add b
    and e
    jp $1019


    rrca
    ld [bc], a
    ld bc, $0080
    ld [$02f0], sp
    db $fc
    ld b, c
    ccf
    ld [de], a

jr_04d_7e72:
    ld c, $04
    inc b

jr_04d_7e75:
    call nz, $e804
    ld [$08f8], sp
    db $fc
    nop

jr_04d_7e7d:
    rst $38
    ld bc, $3f43
    ret nz

    ld de, $e11e
    sbc b
    ld h, a
    sbc e
    ld h, a
    sub h
    ld l, h
    jr jr_04d_7e75

    jr nc, jr_04d_7e5f

    jr nz, jr_04d_7e61

    ldh [rNR41], a
    add b
    ret nz

    or e
    nop
    ld l, h
    ld bc, $3020
    inc hl
    db $10
    ldh [$37], a
    or b
    db $10
    ldh a, [$30]
    ld d, b
    ldh a, [$30]
    ret c

    ld hl, sp+$08
    db $fc
    inc c
    cp $06
    ld a, a
    ld bc, $000f
    inc bc
    nop
    inc hl
    ret nz

    ld de, $01e0
    ld hl, sp-$61
    ld a, h

jr_04d_7ebb:
    inc hl
    ld h, d
    add e
    add d
    inc bc
    ld b, $0f
    inc b
    rra
    inc c
    inc sp
    ld [de], a
    dec bc
    ld b, $3f
    inc c
    rst $38
    ldh a, [$fe]
    ld bc, $07f8

jr_04d_7ed1:
    pop bc
    ccf
    ld c, $fe
    ldh a, [$f0]
    db $ec
    scf
    inc bc
    add b
    add b
    ret nz

    ld b, b
    ld b, e
    and b
    ld h, b
    ld b, e
    ret nc

    jr nc, jr_04d_7f2e

    add sp, $18
    dec b
    ret z

    jr c, jr_04d_7ebb

    jr nc, jr_04d_7e7d

    ld [hl], b
    ld b, e
    jr nz, jr_04d_7ed1

    ld hl, sp+$22
    sbc h
    ldh [rNR52], a
    ld bc, $0603
    dec bc
    inc c
    inc bc
    inc d
    ld b, $20
    daa
    jr z, @+$51

    ld [hl], b
    ld a, a
    ld b, b

Call_04d_7f05:
    ccf
    jr nz, jr_04d_7f26

    rla
    rrca
    rrca
    rlca
    rlca
    dec bc
    rrca
    rra
    rla
    cpl
    scf
    dec hl
    dec a
    ld bc, $101e
    rra
    inc d
    rra
    dec de
    dec de
    ld h, l
    inc b
    rra
    ccf
    rst $38
    ret nz

    add c
    ld h, h
    dec b

jr_04d_7f26:
    add e
    nop
    ld d, h
    inc bc
    xor b

jr_04d_7f2b:
    rlca
    ld b, l
    ld sp, hl

jr_04d_7f2e:
    ld b, $17
    cp h
    jp $e3dc


jr_04d_7f34:
    xor $f1
    rst $30
    ld hl, sp+$5b
    db $fc
    xor a
    cp $57
    rst $38
    db $eb
    ccf
    ld a, $c1
    nop
    rst $38
    rst $08
    rst $38
    ld d, b
    ld [hl], b
    ld [hl+], a
    jr nz, jr_04d_7f2b

    daa
    and b
    call c, $f7e0
    jr jr_04d_7fd1

    inc b
    rst $38
    ld [bc], a
    rrca
    pop af
    inc bc
    db $fc
    pop af
    ld c, $08
    rlca
    db $f4
    ei
    inc b
    inc bc

jr_04d_7f61:
    call nz, $3803

jr_04d_7f64:
    rst $00
    ld bc, $83fe
    ld a, h
    rst $38
    nop

jr_04d_7f6b:
    rst $38
    add hl, de
    cp $e2
    db $e4
    inc e
    jr jr_04d_7f6b

    ldh [$c6], a
    ld bc, $4322
    rst $38
    nop
    ld [$07f8], sp
    db $e3
    rra
    call z, $b03c
    ld [hl], b
    ret nz

    add [hl]
    ld [bc], a
    ld hl, $0112
    ld bc, $0202
    inc bc
    ld [bc], a
    inc b
    dec b
    dec b
    ld b, $0b
    ld [$080f], sp
    inc b
    rlca
    inc bc
    inc bc
    nop
    ld [hl+], a
    ld bc, $0301
    ld b, $84
    ld bc, $1e3c
    ld b, b
    and b
    ldh [$90], a
    db $10
    adc b
    jr jr_04d_7f34

    ld l, b
    ld b, h
    add h
    call nz, $c20c
    ld [hl-], a
    ld [hl+], a
    jp nz, $04e4

    ld hl, sp+$1c
    ld hl, sp-$18
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    ld a, a
    ld bc, $bf87
    dec bc
    ld [bc], a
    inc bc
    dec b
    ld b, $07
    inc b
    dec bc
    ld [$0f08], sp
    rlca

jr_04d_7fd1:
    inc b
    adc [hl]
    cp a
    ld [de], a
    and b
    sub b
    jr nc, jr_04d_7f61

    ld c, b
    jr z, jr_04d_7f64

    ld b, h
    inc d
    add h
    inc h
    ld [bc], a
    add $a2
    ld a, [bc]
    call nz, $9814
    ld a, h
    adc c
    cp a
    inc b
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld de, $8a05
    nop
    ld b, l
    add [hl]
    ld bc, $4400
    add b
    ld b, b
    inc bc
    ld hl, $1ec0
    pop hl
    rst $38
    nop
