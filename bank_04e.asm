; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $04e", ROMX[$4000], BANK[$4e]

    dec de
    jr nc, @+$72

    db $fc
    adc h
    ld a, d
    ld b, [hl]
    ld d, c
    ld l, a
    ld hl, $203f
    ccf
    inc d
    rra
    add hl, bc
    rrca
    dec bc
    rrca
    ld de, $131f
    rra
    ld [de], a
    rra
    ld de, $101f
    rra
    ld b, e
    ld [$050f], sp
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $6101
    rlca
    rlca
    rlca
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $ec01
    jr z, jr_04e_4037

    ld bc, $0202

jr_04e_4037:
    inc bc
    add h
    xor a
    ldh [rSCX], a
    ld bc, $1f03
    inc e
    ld l, a
    ld [hl], b
    sub a
    add sp, $0b
    db $f4
    rla
    add sp, $0b
    rst $30
    call z, $30fc
    db $30, $80
    add b
    add c
    pop bc
    ld h, e
    db $e3
    sbc $ff
    ld l, e
    rst $38
    dec e
    cp $0a
    push af
    dec d
    ld [$f58b], a
    ld h, d
    ld a, [hl]
    sub h
    call c, $fcec
    jr c, jr_04e_40a4

    rrca
    rrca
    add e
    add a
    ld bc, $81e1
    sbc c
    ld b, b
    ld b, h
    jr nz, jr_04e_4097

    ld hl, $1139
    rla
    ld de, $0e11
    rrca
    ld [$1008], sp
    db $10
    and h
    add e
    ld [bc], a
    add hl, bc
    inc b
    ld b, $83
    nop
    jr z, jr_04e_4097

    ld c, $19
    ccf
    jr nz, @+$60

    pop bc
    inc c
    inc bc
    rrca
    and a
    db $fc
    and h
    ld [hl], b

jr_04e_4097:
    ld hl, sp+$61
    ldh [$2e], a
    add b
    add b
    ret nz

    ld h, b
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

jr_04e_40a4:
    ld b, b
    add [hl]
    add [hl]
    dec c
    rrca
    dec sp
    ccf
    ld d, a
    ld a, a
    xor l
    cp $f7
    ld hl, sp+$5f
    pop hl
    rst $38
    add e
    cp a
    ld b, e
    ld a, [hl]
    adc [hl]
    or [hl]
    db $76
    ld b, h
    call nz, $8d8c
    inc c
    adc l
    ld c, $8d
    dec c
    ld c, d
    dec a
    ld a, [hl-]
    ld a, l
    ld a, e
    db $ed
    ld b, h
    ei
    rst $08
    ldh [rNR42], a
    adc $db
    sbc a
    sbc [hl]
    rrca
    ld e, $4d
    adc $87
    xor h
    set 4, h
    rst $28
    ldh [$ef], a
    and b
    ld a, a
    ld b, b
    ld e, a
    ld hl, sp+$23
    inc a
    jr @+$21

    rlca
    rrca
    add b
    sub b
    ld a, b
    ld hl, sp+$17
    rst $30
    ld h, b
    ldh [$b1], a
    nop
    ld l, $e0
    inc h
    ld h, b
    ld h, b
    or b
    ldh a, [$58]
    ld hl, sp-$44
    db $fc
    rst $28
    rst $38
    db $fc
    ccf
    db $ec
    cp a
    ld sp, hl
    sbc $5a
    ld a, l
    ld e, a
    ld a, [hl]
    ld h, c
    ld h, c
    ld b, b
    ld b, c
    nop
    add c
    ld b, b
    ld b, c
    ld b, b
    ld b, d
    ldh [rNR43], a
    ldh a, [$7c]
    db $fd
    db $fc
    cp $22
    rst $38
    rlca
    cp a
    rst $38

jr_04e_4120:
    ld l, [hl]

jr_04e_4121:
    sbc a
    rst $38
    rlca
    ei
    rlca
    ld b, e
    db $fd
    inc bc
    add hl, de
    ld hl, sp+$3f
    db $ec
    ld l, a
    ld a, b
    rst $38
    ld hl, sp-$09
    ldh a, [rIF]
    pop hl
    rra
    add a
    ld a, [hl]
    dec sp
    db $fc
    db $fd
    jp nz, $20df

    rrca
    ld d, e
    inc a
    inc a
    ret nz

    ret nz

    ld a, e
    ld bc, $c0c0
    and e
    nop
    or b
    ldh [rSTAT], a
    cp [hl]
    ld b, [hl]
    ld a, a
    add c
    rst $28
    sub b
    ld a, a
    ld [hl], b
    ld a, $09
    ld e, h
    rlca
    xor [hl]
    inc bc
    ld e, e
    dec b
    or a
    add hl, bc
    ld c, a
    jr nc, jr_04e_4121

    ld b, a
    ld a, c
    rst $38
    sbc [hl]
    cp $20
    ldh a, [$c0]
    pop bc
    ldh [$8e], a
    ret nz

    jr nc, jr_04e_4120

    ld b, b
    ldh [$1f], a
    ld a, b
    ldh [$5c], a
    db $fc
    cp a

jr_04e_4178:
    jp Jump_04e_609f


    rst $20
    add hl, de
    xor c
    rlca
    ld b, [hl]
    ld b, $8a
    ld c, $32
    cp [hl]
    pop bc
    rst $38
    ld e, a
    ld h, b
    ld h, b
    ld b, l
    dec h
    dec h
    rrca
    rra
    db $f4
    ld [hl+], a
    nop
    scf
    nop
    add b
    jp $cb00


    jp $c900


    add hl, bc
    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$01

jr_04e_41a3:
    rst $38
    add d
    jp nz, $0423

    add hl, bc
    jr jr_04e_41a3

    db $10
    db $10
    jr nz, @+$22

    ld h, b
    ld h, b
    sbc b
    ld hl, sp+$43
    add h
    db $fc
    inc bc
    call nc, $b8fc
    cp b
    adc e
    or e
    inc bc
    ret nz

    ld b, b
    ret nz

    ld b, b
    rst $00
    or [hl]
    ld bc, $0101
    and l
    adc a
    dec bc
    rlca
    ld c, $36
    ld a, e
    ld hl, sp-$79
    ld [hl], c
    ld c, a
    inc hl
    ccf
    inc e
    inc e
    ld h, c
    adc c
    nop
    ld h, $0d
    jr nz, jr_04e_423d

    ld d, b
    jr nc, @+$72

    ld d, b
    ld l, b
    ld e, b
    ld l, b
    sbc b
    add sp, -$68
    db $e4
    sbc h
    ld b, e
    call nz, $193c
    ret z

    jr c, jr_04e_4178

    ld a, b
    sub b
    ld [hl], b
    db $10
    ldh a, [$60]
    pop hl
    scf
    rst $38
    ld e, d
    cp a
    or e
    rst $08
    ld e, a
    ldh [$37], a

Jump_04e_4200:
    add hl, sp
    ld c, $0e
    add h
    add h
    db $e4
    db $e4
    add e
    nop
    adc h
    xor c
    ld bc, $15f8
    dec b
    rlca
    ld a, [bc]
    rrca
    dec c
    rra
    ld a, [de]
    rra
    dec l
    ld a, $2b
    inc a
    ld e, a
    ld a, b
    ld e, a
    pop af
    xor a
    di
    ld a, a
    db $e3
    cp [hl]
    adc $83
    ld bc, $0a00
    rst $38
    and b
    ld a, a
    ld e, b
    ld b, a
    ld hl, sp+$2d
    ld a, $1a
    rra
    rlca
    add h
    xor a
    rla
    ld [hl], b
    ld [hl], b
    sbc b
    ld hl, sp+$74
    db $fc
    ld l, [hl]

jr_04e_423d:
    cp $2a
    cp $97
    rst $38
    rst $30
    ld a, a
    xor e
    ld a, a
    ld a, [$ee3f]
    cp a
    db $f4
    rst $18
    ld d, h
    ld a, a
    add e
    ld bc, $833c
    ld [bc], a
    jr nc, jr_04e_425c

    ld h, b
    ldh [$b8], a
    ld e, b
    ld a, h
    add h
    cp [hl]

jr_04e_425c:
    ld b, d
    add e
    ld bc, $659c
    rrca
    jr nc, jr_04e_4294

    ld a, h
    ld c, h
    ld e, d
    ld h, [hl]
    dec a
    inc hl
    inc l
    inc sp
    ld c, $11
    ld d, $19
    rlca

jr_04e_4271:
    ld [$0b43], sp
    inc c
    ld de, $0605
    inc b
    rlca
    ld c, $0b
    rra
    ld de, $231c
    add hl, sp
    ld b, a
    ld h, d
    ld e, [hl]
    rst $08
    cp a
    db $f4
    rst $30
    add e
    ld [bc], a
    ld e, h
    push bc
    ld [bc], a
    dec sp
    ld b, h
    jr nz, jr_04e_4271

    inc b
    pop hl
    inc de

jr_04e_4294:
    rst $30
    dec c
    rst $38
    adc [hl]
    nop
    ldh a, [rTIMA]
    adc h
    db $db
    add h
    rst $28
    ret nz

    rst $38
    adc d
    ld bc, $8e05
    ld bc, $0650
    rlca
    db $fc
    rlca
    ld a, b
    adc a
    ld hl, sp+$77
    adc c
    ld bc, $ff66
    ld h, c
    ld bc, $0c0c
    ld [hl+], a
    inc de
    db $10
    ld de, $7b3f
    dec e
    adc c
    dec a
    ld b, l
    inc a
    inc h
    jr jr_04e_42e1

    ld [$080c], sp
    ld [$1818], sp
    inc hl
    ld [$0000], sp
    ld [hl+], a
    db $10
    rlca
    inc e
    inc e
    ld [hl+], a
    ld h, $21
    daa
    add hl, hl
    daa
    ld b, e
    db $10
    rra
    inc bc
    ld [$070f], sp

jr_04e_42e1:
    rlca
    db $ec
    ccf
    rrca
    ld h, b
    ld h, b
    sub c
    sub e
    jr jr_04e_42f8

    or b
    sbc e
    ld e, h
    ld e, a
    rst $08
    jp $40ce


    rlca
    add b
    ld b, e
    rlca
    nop

jr_04e_42f8:
    inc e
    rrca
    jr jr_04e_4313

    inc [hl]
    ld bc, $392a

Jump_04e_4300:
    ld a, d
    dec sp
    ld a, b
    ld a, a
    sbc b
    ld a, a
    add b
    ld a, a
    add e
    db $fd
    ld b, $ff
    inc b
    rst $30
    sbc b
    ld a, a
    add sp, $75
    db $f4

jr_04e_4313:
    ld b, $04
    dec b
    ld [hl+], a
    inc b
    nop
    ld bc, $0443
    nop
    jr z, jr_04e_4321

    nop
    nop

jr_04e_4321:
    ld b, h
    ld [bc], a
    nop
    dec h
    ld bc, $0001
    ld bc, $23ec
    inc hl
    add b
    ldh [$32], a
    jr @-$06

    inc a
    inc b
    ld a, b
    ld [$10f0], sp
    add sp, $38
    db $e4
    db $fc
    ld [c], a
    ld a, $e4
    inc a
    add sp, $38
    db $e4
    inc e
    ld a, [c]
    ld e, $f4
    inc e
    ei
    rrca
    ld sp, hl
    rrca
    cp l
    ld [hl], a
    db $fc
    ld [hl], a
    cp $73
    cp e
    ld h, l
    rst $30
    ld c, $ff
    rrca
    ld a, a
    rrca
    rst $30
    ld c, $7f
    nop
    cp a
    nop
    ld e, a
    nop
    cpl
    add h
    add e
    nop
    ld d, a
    push bc
    add l
    inc c
    ld b, b
    ccf
    ld b, b
    sbc l
    ld [hl+], a
    ld e, l
    ld [hl+], a
    xor $11
    ld a, [$7f8d]
    add a
    ld b, e
    ld a, [hl]
    ld b, d
    ld bc, $423e
    ld b, e
    ld a, $22
    inc b
    inc l
    inc h
    inc d
    ld b, h
    ld a, [bc]
    ld [hl+], a
    add d
    rlca
    ld c, h
    ld b, h
    xor h
    call c, $b8b8
    ldh [$f0], a
    db $ec
    daa
    rla
    call nz, $2ae4
    ld [$f731], a
    ret nz

    rst $38
    db $fc
    ccf
    rst $38
    ld bc, $e07f
    rst $30
    ld sp, hl
    ld a, l
    ei
    cp a
    ld a, e
    rst $08
    inc sp
    cp $01
    ld c, a
    rst $38
    nop
    dec c
    ld a, a
    nop
    ccf
    ld bc, $811f
    sub a
    add c
    ld c, e
    ld b, c
    rla
    ld b, c
    cpl
    ld hl, $1f45
    ld de, $0b0d
    ld hl, $2024
    db $10
    db $10
    add hl, bc
    ld [$1917], sp
    rla
    rla
    ld c, $1e
    db $ec
    dec h
    dec de
    ld bc, $2101
    ld hl, $5353
    adc a
    cp a
    rlca
    rst $38
    ei
    cp $b5
    ld a, e
    rst $18
    or c
    rst $30
    ld sp, hl
    db $dd
    ei
    rst $28
    rst $18
    or a
    rst $08
    rst $38
    rrca
    rst $30
    rrca
    add e
    add e
    dec c
    rst $28
    rra
    rst $18
    ccf
    rst $38
    ccf
    ei
    ld a, a
    push de
    rst $38
    xor l
    db $fd
    ld d, h
    ld a, h
    ld b, e
    inc h
    inc a
    dec c
    inc b
    inc a
    ld c, b
    ld a, b
    ret z

    ld hl, sp-$48
    cp b
    ld [hl], b
    ld [hl], b
    nop
    nop
    add b
    add b
    pop de
    nop
    rst $20
    inc c
    inc bc
    rlca
    dec bc
    rra
    dec h
    ccf
    inc bc
    ld a, [hl]
    ld d, a
    ld a, [hl]
    ld l, e
    rst $38
    rst $10
    ld [hl+], a
    rst $38
    ld a, [bc]
    db $fc
    cp $7f
    rst $38
    ld e, a
    ld a, a
    ccf
    ld a, a
    ld e, b
    ld a, h
    or b
    ld [hl+], a
    ldh a, [$03]
    and b
    ldh [$60], a
    ldh [rNR52], a
    ret nz

    ld b, e
    ld b, b
    ret nz

    inc hl
    ldh [rNR51], a
    ldh a, [rSB]
    ld hl, sp-$10
    dec hl
    ld hl, sp+$28
    db $fc
    inc c
    ld a, h
    ld a, h
    ld e, h
    ld a, h
    ld l, b
    ld a, h
    ld e, b
    ld a, b
    ld h, h
    ld a, h
    add h
    db $fc
    sbc b
    add e
    push af
    sub b
    ld bc, $064d
    add b
    ret nz

    ldh [$f0], a
    ldh a, [$30]
    ldh a, [rSCX]
    ret c

    ld hl, sp+$06
    jr c, @-$06

    ld hl, sp-$18
    add sp, -$60
    xor b
    jp $01cf


    add b
    add b
    db $ec
    ld d, a
    ld [bc], a
    ld bc, $0201
    call nz, $a380
    ld [bc], a
    ld e, a
    and l
    ld [bc], a
    ld h, $04

Call_04e_4481:
    ld bc, $0201
    inc bc
    ld [bc], a
    and a
    ld [bc], a
    ld e, h
    inc bc
    ld [bc], a
    nop
    ld b, $04
    add h
    nop
    sbc a
    ld h, c
    ldh [$2d], a
    inc b
    inc c
    inc bc
    rla
    ld de, $8317
    rst $38
    rra
    inc c
    ld a, a
    nop
    cp $80
    ld a, [hl]
    ret nz

    ld a, [hl]
    ldh a, [$7f]
    pop bc
    ld a, [hl]
    jp nz, $c5f9

    ld a, e
    add a
    rst $38
    add a
    db $fc
    add e
    ld [hl], a
    ld [$083f], sp
    ld a, a
    inc b
    cp a
    ld [bc], a
    ld a, [hl]
    inc bc
    db $fd
    inc bc
    ld a, l
    inc bc
    cp $01
    add h
    ld bc, $8a14
    ld bc, $0f15
    ld h, b
    ld h, b
    sub e
    sub e
    inc e
    inc c
    ld sp, hl
    sbc b
    xor a
    xor l
    dec sp
    add hl, sp
    dec sp
    ld a, [hl+]
    inc bc
    ld [de], a
    ld b, h
    ld bc, $1a03
    add c
    add c
    pop bc
    ld bc, $4141
    ld h, c
    ld b, b
    ld h, b
    ld h, b
    db $10

Jump_04e_44e8:
    db $e3
    inc de
    db $e4
    ld d, $f8
    ld c, $f9
    ld c, $f0
    sbc a
    ldh [$7f], a
    pop hl
    rst $38
    cp $bf
    add a
    nop
    ldh [rTIMA], a
    ret nz

    ldh [$e0], a
    jr nz, @-$3e

    ld b, b
    add a
    ld [bc], a
    cp [hl]
    ld bc, $8080
    ret


    ld [bc], a
    ld l, $23
    ld b, b
    dec b
    ld b, c
    ld b, c
    pop hl
    pop hl
    db $d3
    db $d3
    add e
    ld bc, $83ec
    ld [bc], a
    or b
    add e
    ld [bc], a
    or [hl]
    nop
    add b
    ld [hl+], a
    xor b
    ld [bc], a
    ldh a, [$f0]
    add b
    ld b, e
    ret nz

    ld a, [hl]
    inc c
    ldh a, [$7e]
    pop bc
    ld a, l
    jp nz, $c0ff

    ld a, a
    add [hl]
    rst $38
    add e
    rst $38
    add b
    add [hl]
    rst $28
    ld [$8141], sp
    ld b, c
    pop bc
    ld hl, $20c0
    ldh [$d0], a
    adc e
    nop
    jp c, $0003

    add b
    add b
    add b
    ldh a, [rNR42]
    ld [bc], a
    ld l, $04
    ret c

    db $fc
    or b
    ldh a, [$e0]
    adc b
    ld [bc], a
    ld d, a
    sub l
    ld [bc], a
    sbc [hl]
    adc e
    inc bc
    db $e4
    ld l, a
    adc l
    nop
    ld [bc], a
    rst $38
    ld h, [hl]
    ld bc, $0007
    ld [hl+], a
    ld [$0607], sp
    ld b, $03
    inc bc
    ld bc, $0001
    ld bc, $0177
    ld bc, $2201
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    inc b
    ld b, [hl]
    rrca
    ld [$0b0c], sp
    inc c
    inc e
    nop
    jr nc, jr_04e_4588

    ld b, b
    rra
    add b

jr_04e_4588:
    rst $38
    add b
    ld a, a
    ld a, h
    ld b, h
    inc bc
    ld [bc], a
    ld b, h
    inc bc
    ld [bc], a
    dec h
    ld bc, $0207
    ld [bc], a
    inc b
    inc b
    rlca
    inc b
    inc bc
    inc bc
    ld h, l
    ldh [$2a], a
    ret nz

    pop hl
    db $fd
    ld e, $7b
    inc b
    scf
    ld [$8876], sp
    xor [hl]
    ret nc

    xor $d0
    ld l, a
    ret nc

    ccf
    ld h, b
    ccf
    jr nz, jr_04e_45d4

    jr nz, jr_04e_45f5

    ld hl, $161f
    add hl, de
    dec d
    add hl, bc
    dec d
    dec a
    inc sp
    ccf
    jr z, jr_04e_4642

    ld b, h
    ccf
    adc h
    ld e, $0b
    ccf
    ld [$4477], sp
    db $10
    di
    dec c
    rst $08
    ld a, $03
    pop bc
    rlca

jr_04e_45d4:
    ld bc, HeaderManufacturerCode
    ld a, a
    ld [bc], a
    rst $38
    inc c
    di
    inc e
    ld b, e
    ldh a, [$1f]
    ld b, e
    add sp, $3f
    inc de
    db $e4
    ccf
    call nz, $02ff
    rst $38
    ld bc, $78ff
    rst $38
    or $8f
    ld h, c
    daa
    call $fe43

jr_04e_45f5:
    ld b, [hl]
    ld hl, sp-$08
    ld h, c
    dec b
    inc bc

jr_04e_45fb:
    rrca
    jr nc, @+$72

    ret nz

    add b
    xor l
    nop
    inc de
    inc de
    add b
    nop
    ld d, c
    nop
    xor d
    nop
    push de
    nop
    ld l, d
    add b
    sub l
    ld b, b
    ld a, [hl+]
    ret nz

    push de
    add b
    ld [c], a
    add b
    pop de
    nop
    ld b, e
    ld h, c
    add b
    rrca
    ldh [$9f], a

jr_04e_461e:
    add c
    ldh [$f3], a
    ld b, b
    rst $38
    ld b, b
    rst $08
    ld [hl], b
    ldh a, [$2f]
    rst $38
    jr @+$01

    rlca
    ld b, l
    rst $38
    nop
    inc b
    ld [$5515], a
    xor d
    nop
    ld c, d
    rst $38
    nop
    dec b

jr_04e_4639:
    ret nz

    rst $38
    cp h
    rst $38
    ld a, a
    rst $38
    and a
    nop
    ld e, [hl]

jr_04e_4642:
    ld c, $c3
    rst $00
    rst $38
    jr c, jr_04e_4686

    nop
    ld e, a
    nop
    cpl
    nop
    rla
    nop
    cpl
    nop
    ld d, a
    call nz, $0d85
    xor a
    nop
    ld h, a
    jr jr_04e_4639

    jr nz, jr_04e_45fb

    ld c, a
    sbc b
    ld e, b
    add sp, $2b
    di
    inc a
    ld b, e
    rst $38
    nop
    ld de, $09f6
    rst $30
    ld c, $ff
    ld [$8b7f], sp
    sbc a
    ld a, h
    rst $38
    jr @-$1f

    jr nc, @+$41

    ret nc

    rst $38
    jr nz, jr_04e_461e

    nop
    xor a
    rlca
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    nop
    ld c, [hl]

jr_04e_4686:
    rst $38
    nop
    inc bc
    rrca
    rst $38
    ldh a, [$f0]
    ld h, l
    ld de, $ff3f
    ldh [rP1], a
    add c
    inc bc
    rla
    rrca
    sbc $3e
    db $fc
    ld a, h
    cp b
    ld a, h
    ld hl, sp+$28
    ret nc

    jr z, jr_04e_46e5

    ldh a, [rNR10]
    ld e, $f7
    rrca
    push af
    dec bc
    cp $06
    ld hl, sp+$18
    ld h, c
    and b
    rst $20
    jr nz, @+$01

    ld e, $ff
    ld bc, $04fb
    rst $38
    inc b
    sbc a
    ld h, h
    rst $38
    add d
    rst $38
    ld [bc], a
    db $fd
    inc bc
    rst $38
    ld bc, $a4fe
    rst $10
    ld b, e
    cp $03
    inc bc
    rst $38
    ld bc, $e31d
    ld b, a
    ld bc, $43ff
    ld [bc], a
    rst $38
    dec bc
    inc b
    rst $38
    rrca
    rst $38
    dec sp
    db $fc
    db $e4
    ld hl, sp+$1b
    inc e
    rlca
    rlca
    and a
    nop
    ld h, $ad

jr_04e_46e5:
    nop
    db $10
    dec b
    jr c, jr_04e_4722

    ld c, h
    ld b, h

jr_04e_46ec:
    sbc h
    add h
    ld b, l
    ld hl, sp+$08
    ld [bc], a
    call nz, $fa34
    push bc
    or h
    inc c
    pop hl
    ld e, a
    cp c
    and [hl]
    ld e, [hl]
    ret nc

    inc l
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    and h
    nop
    ld a, [hl+]
    ld [bc], a
    ret nz

    jr nz, jr_04e_46ec

    ld b, e
    db $10
    ldh a, [$03]
    xor b
    ld e, b
    ld c, b
    cp b
    add e
    add e
    ld b, e
    ld [$43f8], sp
    db $10
    ldh a, [rTIMA]
    ld h, b
    ldh [$a0], a
    ldh [$f0], a

jr_04e_4722:
    sub b
    ld b, e
    ld hl, sp+$48
    add a
    ld bc, $0378
    add sp, $2b
    di
    ccf
    ld b, e
    db $fc
    inc b
    ld bc, $0bf7
    add l
    ld bc, $834a
    ld bc, $0390
    or $16
    pop af
    add hl, bc
    ld b, e
    di
    ld de, $e713
    ld hl, $a16f
    rst $38
    pop bc
    jr c, jr_04e_4751

    inc a
    nop
    cp $00
    rst $38
    ret nz

jr_04e_4751:
    cp a
    ld a, h
    rst $38
    adc e
    ei
    inc b
    adc b
    nop

jr_04e_4759:
    adc $00
    ret nz

    and e
    nop
    ld [hl-], a
    inc d
    ld hl, sp+$08
    ldh a, [$08]
    db $f4
    adc h
    ld h, h
    ld e, h
    ld h, h
    inc a
    ldh [$38], a
    add sp, $38
    ret nc

    jr nc, jr_04e_4791

    ldh [rSC], a
    ld [bc], a
    nop
    dec h
    inc b
    ld c, $08
    inc c
    ld [$0b0f], sp
    inc b
    inc c
    nop
    db $10
    rlca
    jr nz, jr_04e_47c3

    jr nz, @+$21

    rra
    ld b, a
    ld [bc], a
    inc bc
    ld c, $73
    db $10
    ld [hl], c
    db $10
    pop af
    db $10

jr_04e_4791:
    di
    rrca
    ld b, c
    jr nc, jr_04e_4759

    ret nz

    rrca
    nop
    ccf
    and e
    rst $10
    ld bc, $fc06
    ld b, e
    rlca
    ld hl, sp+$06
    adc a
    ld hl, sp-$71
    ld a, h
    rst $08
    inc [hl]
    rst $38
    adc b
    nop
    ldh a, [rTMA]
    xor a
    rst $38
    ld e, b
    rst $38
    ld b, a
    rst $38
    add b
    add l
    ld bc, $1d90
    db $f4
    inc c
    rst $38
    inc bc
    rst $38
    nop
    db $e3
    nop
    ld h, e
    add e

jr_04e_47c3:
    db $f4
    inc b
    call c, $d924
    jr z, @-$11

    jr @+$01

    db $10
    xor $61
    adc a
    add b
    sbc e
    add h
    db $fd
    ld a, [hl]
    rst $38
    inc bc
    adc e
    ld bc, $43b4
    db $f4
    adc h
    dec bc
    ld h, d
    sbc $e2
    ld e, [hl]
    jp nz, $227e

    cp [hl]
    inc d
    inc e
    adc h
    inc e
    ld b, h
    ld hl, sp+$08
    ld [bc], a
    ret z

    ld [hl], b
    ldh a, [$87]
    ld [bc], a
    jr @-$70

    nop
    ld [hl], b
    inc b
    db $10
    rra
    inc d
    dec bc
    ld d, $8b
    nop
    add h
    adc h
    ld bc, $0530
    ld b, b
    sbc a
    ld b, c
    cp $07
    ei
    adc h
    ld bc, $ff43
    ld h, c
    inc bc
    inc b
    inc a
    inc bc
    ld b, e
    ld [hl+], a
    add b
    ld a, [bc]
    cp b
    nop
    and [hl]
    ld b, b
    ld b, b
    ld e, c
    ld e, e
    ld d, a
    ld d, a
    ld hl, $7221
    inc h
    ld bc, $81d2
    ld [de], a
    ld a, b
    call nz, $b2c4
    or d
    ld d, c
    ld d, e
    ld hl, $103f
    rra
    add hl, bc
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $d303
    xor c
    ld [$c0c0], sp
    ld hl, $1221
    di
    or h
    rst $30
    call c, $ff44
    ld hl, sp+$09
    pop af
    rst $38
    ld [hl], d
    ld a, a
    jr c, @+$41

    jr nc, jr_04e_4892

    jr nz, jr_04e_4894

    ld b, e
    ld b, b
    ld a, a
    ld [$ff8c], sp
    sub h
    rst $30
    inc a
    ld h, a
    jr c, jr_04e_48d0

    jr nc, jr_04e_48a6

    ld a, a
    nop
    ld b, h
    rst $38
    add c
    rlca
    add b
    rst $38
    ld b, b
    ld a, a
    jr c, jr_04e_48ae

    rlca
    rrca
    ld h, e
    dec b
    jr jr_04e_4891

    ld h, $3e
    ld c, a
    ld a, a
    inc hl
    rst $38
    add hl, bc
    rst $20
    rst $20
    jp $c1c3


    db $e3
    ldh [$e1], a
    ldh [$e0], a
    jp nz, $b6cc

    nop
    inc d
    ld b, e
    ld b, b
    ret nz

    ld [bc], a
    ld hl, sp-$08

jr_04e_4891:
    add a

jr_04e_4892:
    ld b, h
    rst $38

jr_04e_4894:
    nop
    inc b
    ld bc, $03ff
    rst $38
    inc b
    ld b, [hl]
    rst $38
    nop
    inc c
    inc bc
    rst $38
    ld e, $ff
    ld h, c
    pop af
    ret z

jr_04e_48a6:
    ret nz

    sbc b
    adc b
    dec de
    rrca
    ld hl, sp-$7c
    sbc e

jr_04e_48ae:
    nop
    add a
    ld [hl+], a
    rst $38
    ld e, $1b
    rra
    scf
    dec sp
    dec [hl]
    ld [hl], e
    ld e, h
    rst $30
    ret z

    rst $38
    pop bc
    rst $38
    add e
    rst $38
    adc h
    db $fc
    sub [hl]
    or $d2
    ld a, [c]
    ret z

    ei
    ld l, b
    ld a, a
    inc e
    ccf
    inc b
    rlca
    ld [bc], a

jr_04e_48d0:
    inc bc
    ld [bc], a
    sub b
    nop
    ld d, c
    ldh [$27], a
    ld bc, $0701
    ld b, $0f
    ld [$131f], sp
    ccf
    ld h, $ff
    ret z

    rst $38
    or b
    rst $08
    ldh a, [$1f]
    pop af
    ld a, $e6
    inc d
    db $fc
    nop
    cp $02
    cp $82
    cp $02
    cp $c2
    cp $84
    db $fc
    call nz, $08fc
    ld hl, sp+$11
    di
    add e
    nop
    and l
    ld bc, $fffe
    inc hl
    db $fc
    inc e
    xor h
    db $fc
    ld d, a
    rst $38
    cpl
    cp $e7
    rst $38
    ld d, $fe
    sbc a
    rst $38
    adc a
    rst $38
    ld c, h
    ld a, h
    ld l, [hl]
    ld a, [hl]
    ccf
    ld sp, hl
    ccf
    db $fc
    inc de
    ld a, [c]
    ld de, $20f1
    ldh [rNR41], a
    adc h
    nop
    or e
    dec d
    rrca
    rrca
    ld [hl], l
    ld [hl], b
    xor d
    add b
    ld d, l
    ld bc, $c1eb
    or $02
    db $ec
    inc b
    ld sp, hl
    add hl, bc
    pop af
    ld de, $61e1
    add d
    add d
    inc hl
    ld [bc], a
    inc bc
    dec b
    rlca
    inc b
    rlca
    ld b, e
    add hl, bc
    rrca
    ld b, e
    inc de
    rra
    add hl, bc
    rla
    ccf
    ld a, [hl]
    ld a, a
    cp $fe
    ld hl, sp-$04
    ret nz

    ldh [$a3], a
    nop
    ld h, h
    inc c
    ld c, $0c
    ld a, l
    ld [hl], b
    rst $38
    add e
    db $fc
    inc e
    ldh [$e0], a
    rlca
    rlca
    rst $38
    add e
    nop
    ld a, [c]
    db $10
    ldh [$1f], a
    inc e
    inc bc
    inc bc
    ldh a, [$f0]
    rst $38
    rrca
    cp $80
    ld a, l
    ld h, b
    ld e, $1c
    inc bc
    inc bc
    xor a
    nop
    dec e
    ld h, d
    add hl, de
    ld a, $02
    ld b, d
    add h
    add h
    ld a, [bc]
    ld a, [bc]
    ld bc, $0711
    daa
    inc b
    inc h
    ld [$0828], sp
    ld [$d090], sp
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    xor [hl]
    ld bc, $051b
    ret nz

    ret nz

    and b
    jr nz, @+$42

    ld b, b
    add l
    sub e
    ld [$e0e0], sp
    ld e, h
    inc e
    xor d
    ld [bc], a
    db $f4
    inc b
    ld hl, sp-$5a
    db $d3
    rlca
    ldh [$e0], a
    ld d, b
    db $10
    ldh [$60], a
    add b
    add b
    ld a, c
    and e
    nop
    call z, $0443
    rlca
    ld b, e
    ld [$050f], sp
    ld de, $121f
    rra
    jr jr_04e_49ed

    add l
    nop
    ld a, d
    ldh [rNR44], a
    and $e6
    db $ec
    db $ec
    ldh a, [$f1]
    ld b, b
    ld b, d
    add b
    adc h
    ld h, b
    ld [hl], b
    add c
    add c
    inc e
    ld a, [hl]
    nop
    jr c, jr_04e_4a46

    ld h, h
    sub b
    sub d
    ld b, b
    ld c, d
    ld b, b
    ld c, c

jr_04e_49ed:
    pop bc
    pop de
    add c
    pop de
    ld b, c
    pop de
    ld b, d
    ld [c], a
    cp $fe
    adc e
    nop
    call nc, $361d
    ld [hl], a
    ld e, h
    rst $38
    ret c

    rst $38
    pop af
    rst $38
    db $e3

Call_04e_4a04:
    rst $38
    call z, $96fc
    or $12
    ld [hl-], a
    ld [$182b], sp
    rra
    inc e
    rra
    inc d
    rla
    ld [hl+], a
    inc hl
    ld b, d
    ld b, e
    add c
    add c
    ld h, c
    ld de, $f908
    db $10
    ld a, [c]
    ld a, b
    ld hl, sp-$10
    pop af
    ldh [$e0], a
    ret nz

    call nz, $cc84
    inc c
    sbc h
    rla
    ld a, a
    adc l
    ld bc, $8562
    ld bc, $0290
    ld hl, sp+$08
    ldh a, [$87]
    ld [bc], a
    add hl, sp
    ld d, $01
    nop
    inc bc
    nop
    ld d, $00
    inc l
    nop
    ld e, b
    nop
    or h

jr_04e_4a46:
    nop
    ld l, b
    nop
    ret c

    nop
    or b
    nop
    ld h, b
    nop
    ret nz

    nop
    nop

jr_04e_4a52:
    add a
    ld bc, $6ab8
    inc b
    jr nz, jr_04e_4a59

jr_04e_4a59:
    ld b, b
    nop
    add b
    add [hl]
    nop
    add b
    ld [bc], a
    rst $20
    jr c, jr_04e_4a52

    sub c
    nop
    adc d
    add e
    ld bc, $0d1c
    ld [c], a
    and $fc
    db $fc
    add b
    add b
    ld b, b
    ld b, e
    ld [hl], b
    ld a, h
    ld bc, $0621
    ld e, $61
    add l
    nop
    ldh [rTAC], a
    rra
    rst $38
    ld [hl-], a
    di
    ld b, c
    pop bc
    adc b
    add b
    adc c
    nop
    xor $07
    rst $00
    rst $38
    rst $38
    cp a
    ei
    ccf
    rst $30
    ei
    add h
    ld [bc], a
    or b
    ld b, $9f
    inc h
    daa
    ld b, d
    ld b, e
    add d
    add e
    add e
    cp a
    inc b
    ld [$10f8], sp
    ldh a, [rSVBK]
    inc hl
    ld hl, sp+$22
    db $fc
    inc bc
    sbc h
    db $fc
    inc l
    db $fc
    xor e
    ld [bc], a
    db $10
    add e
    inc bc
    inc c
    rst $38
    db $ec
    adc c
    ld de, $0303
    dec b
    inc b
    dec bc
    ld [$080f], sp
    rra
    db $10
    rra
    ld de, $090f
    rlca
    ld b, $0b
    ld [$1743], sp
    nop
    dec b
    rra
    db $10
    rrca
    ld [$0707], sp
    ld l, d
    inc b
    ld bc, $0202
    nop
    inc b
    ld b, e
    inc b
    rlca
    jp $07ae


    ld bc, $0201
    nop
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc hl
    inc b
    inc bc
    dec c
    add hl, bc
    dec bc
    add hl, bc
    add e
    add e
    ld b, e
    rlca
    inc b
    inc bc
    inc bc
    ld [bc], a
    ld bc, $7701
    ldh [rNR52], a
    inc e
    inc c
    ld h, $22
    ld e, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    ld b, c
    cp $b2
    rst $08
    ld c, h
    sub e
    sub b
    scf
    inc [hl]
    ld h, a
    ld h, h
    rra
    dec de
    cp a
    and c
    rst $38
    ld hl, $43fe
    rst $38
    ld c, a
    push af
    dec a
    rst $20
    rst $38
    jr nz, jr_04e_4b5f

    ld h, $39
    db $10
    call nz, $9400
    ld [bc], a
    jr jr_04e_4b48

    ldh [rSCX], a
    rst $38
    nop
    inc e
    ld a, a
    inc e
    rst $38
    ld a, [hl]
    di
    rst $28
    rst $20
    sbc c
    sbc b
    jr nz, @+$22

    ld b, b
    ld b, b
    ld b, c
    ld b, b
    add b
    nop
    add c
    add b
    add d
    add b
    ld d, l
    nop
    xor e
    nop
    ld d, a

jr_04e_4b48:
    nop
    rst $28
    ld bc, $ff44
    add e
    ld b, $45
    cp $a6
    ld a, h
    ld [hl], h
    ld [$7908], sp
    rlca
    add $c6
    dec hl
    add hl, hl
    rst $28
    jr z, @+$01

jr_04e_4b5f:
    db $10
    ld b, e
    rst $38
    jr nc, jr_04e_4b78

    rst $18
    ld [hl], b
    adc a
    db $fc
    inc bc
    rst $38
    ld bc, $02ff
    cp $0e
    cp $0b
    ld_long a, $ff0f
    nop
    rst $38
    adc e
    db $fc

jr_04e_4b78:
    ld [hl], b
    ld b, [hl]
    rst $38
    nop
    rra
    ld [hl], b
    rst $38
    adc h
    sbc a
    add b
    cp a
    add b
    rst $38
    ld h, d

jr_04e_4b86:
    rst $38
    rra
    rst $38
    call nz, Call_04e_78fc
    jr c, jr_04e_4b86

    db $10
    ld [hl], h

jr_04e_4b90:
    db $10
    ld hl, sp+$10
    ld a, h
    jr z, jr_04e_4b90

    ld c, b
    db $fd
    ld b, h
    cp $84
    rst $38
    add d
    ld b, [hl]
    rst $38
    ld bc, $8106
    ld a, a
    ld b, b
    ccf
    jr nc, jr_04e_4bb6

    rrca
    ld [hl], a
    inc b
    inc a
    inc e
    ld c, [hl]
    ld [bc], a
    rst $18
    ld b, e
    pop bc
    rst $38
    dec c
    ld a, c

jr_04e_4bb4:
    rst $00
    ld b, l

jr_04e_4bb6:
    sub e
    sub d
    sub c
    sub c
    adc l
    adc l
    pop bc
    ld b, c
    di
    ld [hl-], a
    rst $38
    and e
    db $e4
    ld b, $04
    rst $38
    inc b
    ei
    jp z, $f939

    and e
    ld bc, $011a
    db $10
    ldh a, [rLYC]

jr_04e_4bd2:
    jr nz, jr_04e_4bb4

    ld b, e
    ld b, b
    ret nz

    dec d
    jr c, jr_04e_4bd2

    cp [hl]
    and $7d
    ld [hl], c
    ld a, [de]
    ld [$042d], sp
    rra
    inc b
    cpl
    ld [bc], a
    rra
    ld [bc], a
    cpl
    ld [bc], a
    ld e, a
    ld bc, $01bf
    add e
    add e
    and e
    ld bc, $0579
    rst $38
    ld h, b
    sbc a
    sbc b
    add a
    add a
    db $ec
    ld hl, $c003
    ret nz

    ld h, b
    jr nz, jr_04e_4c47

    ldh a, [rNR10]
    inc b
    ldh [rNR41], a
    ret nz

    ret nz

    ldh [$88], a
    adc e
    rst $10
    sub [hl]
    ld [bc], a
    add b
    add b
    ld b, b
    adc $fa
    add hl, bc
    db $fc
    inc b
    cp $82
    rst $38
    pop hl
    cp $7e
    ldh [rNR41], a
    and e
    nop
    and d
    db $ec
    ld [hl], c
    add e
    nop
    jp nz, $050d

jr_04e_4c29:
    inc b
    add hl, bc
    ld bc, $080a
    rla
    ld [bc], a
    ld a, [de]
    ld [de], a
    rla
    ld [de], a
    dec de
    ld [de], a
    ld b, e
    rrca
    add hl, bc
    adc c
    nop
    call nc, $4015
    ld b, b
    add c
    add b
    ld [bc], a
    nop
    dec d
    nop
    dec hl
    nop

jr_04e_4c47:
    ld d, a
    nop
    xor a
    ld bc, $035f
    xor a
    ld [bc], a
    rst $38
    ld b, $ff
    rlca
    ld b, e
    rst $38
    adc e
    inc bc
    db $fc
    call nc, $2828
    ld h, c
    add l
    ld bc, $0180
    di
    db $fc
    ld b, e
    ld [hl], b
    sbc a
    ldh [rNR42], a
    jr nz, @+$01

    nop
    rst $38
    ld hl, sp+$30
    ld [hl], b
    jr nc, @-$06

    ld [hl], b
    ldh a, [$50]
    ld hl, sp+$50
    db $fd
    adc b
    ld a, [$fd88]
    inc c
    cp $04
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    pop hl
    ld e, $1e
    ld h, c
    ld c, $3d
    inc b
    ld e, $04
    ccf
    inc b
    ld e, a
    ld [bc], a
    ccf
    ld [bc], a
    ld a, a
    ld [bc], a
    cp a
    ld bc, $457f
    ld bc, $06ff
    nop
    rst $38
    add b
    rst $38
    ret nz

    ccf
    jr c, jr_04e_4c29

    nop
    and h
    inc b
    add b
    add b
    ret nz

    ld b, b
    ld b, b
    adc d
    ld [bc], a
    add e
    ld bc, $10f0
    ld b, h
    ld hl, sp-$78
    inc b
    ret z

    cp b
    xor b
    sub b
    sub b
    add h
    nop
    xor l
    inc b
    inc bc
    inc b
    dec b
    nop
    ld [$0843], sp
    rrca
    add e
    xor l
    dec bc
    ld bc, $1f01
    dec d
    rra
    ld d, $3f
    ld h, $1f
    ld e, $07
    inc b
    and l
    ld [bc], a
    ld h, h
    nop
    ldh [rLY], a
    rst $38
    ld bc, $1905
    rst $38
    ld a, h
    rst $30
    rst $08
    rst $00
    add e
    ld bc, $022c
    cp a
    ld bc, $c37f
    db $fd
    ld b, $0c
    rst $38
    inc a
    rst $38
    ld hl, sp-$71
    adc a
    add e
    sbc a
    ld [$3f18], sp
    nop
    ld a, a
    nop
    rst $38
    call nz, $3bff
    add h
    ld bc, $009b
    cp $83
    inc bc
    ld b, c
    ld [$ff05], sp
    add hl, bc
    rst $38
    inc sp
    db $fd
    call $3131
    ld h, c
    add l
    ld [bc], a
    ld [bc], a
    inc c
    ld b, b
    ret nz

    ld h, b
    ldh [$dc], a
    db $ec
    ld a, a
    ld [hl], e
    ld a, [de]
    ld [$01bf], sp
    ld a, a
    ld b, e
    ld [bc], a
    rst $38
    ld a, [bc]
    inc b
    rst $38
    dec b
    cp $0a
    db $fc
    sbc h
    ldh [$e0], a
    ret nz

    ld b, b
    adc c
    inc bc
    and d
    and l
    nop
    jp nc, $03a3

    jr z, @-$55

    nop
    ret c

    adc l
    ld bc, $0300
    db $fc
    ld c, a
    ldh a, [$3f]
    adc l
    ld bc, $8d12
    ld bc, $0370
    ld [bc], a
    cp $03
    cp $8d
    ld bc, $ff82
    db $ec
    jr nc, @+$18

    ld [bc], a
    ld bc, $0405
    ld b, h
    inc b
    and h
    sbc h
    sbc e
    add b
    sub b
    ld b, b
    ld h, b
    ld b, e
    ld b, b
    ld c, a
    ld b, b
    rra
    add b
    cp a
    add b
    ld hl, sp-$79
    ld b, e
    ldh a, [$8f]
    rrca
    ld [hl], b
    adc a
    ld [hl], b
    ld c, a
    jr c, jr_04e_4dc5

    jr c, jr_04e_4da7

    ld c, $31
    rra
    db $10
    rlca
    inc c
    ld bc, $ec03
    cpl
    ld b, $01
    inc bc
    inc b
    rlca
    ld [bc], a
    rrca
    dec c
    inc h
    rrca
    ld bc, $0f07
    ld [hl+], a
    rlca
    inc de
    ld b, $02
    inc b
    ld c, $08
    ld e, $18
    sub a
    sub h
    and [hl]
    and h
    rst $30
    ld [hl], h

jr_04e_4da7:
    ld e, a
    inc c
    xor a
    inc b
    ld d, a
    ld [bc], a
    xor $43
    ld bc, $02ff
    nop
    ld a, a
    add b
    ld b, e
    ccf
    ret nz

    ld b, a
    rra
    ldh [$09], a
    ccf
    pop bc
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38

jr_04e_4dc5:
    rst $38
    db $ec
    dec hl
    ld a, [bc]
    ld h, b
    ldh a, [rP1]
    db $fc
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    jp hl


    ld [hl+], a
    db $fd
    rlca
    cp $ff
    di
    ld a, [$daca]
    ld a, h
    inc [hl]
    and [hl]
    nop
    add [hl]
    ld [$4000], sp
    nop
    xor d
    nop
    push de
    nop
    ld a, [$8300]
    db $eb
    inc b
    ld e, a
    ldh [$ab], a
    db $fc
    rst $18
    inc [hl]
    rst $38
    inc bc
    ld a, a
    rst $38
    rlca
    rrca
    sub e
    nop
    ld a, c
    ld de, $0300
    ld bc, $0203
    rlca
    inc bc
    rlca
    ld b, $07
    inc b
    inc c
    ld [$0809], sp
    jr jr_04e_4e10

jr_04e_4e10:
    jr @+$25

    db $10
    ld bc, $3f1f
    cp c
    nop
    ld e, d
    rlca
    dec b
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    cp a
    nop
    ld b, a
    rst $38
    nop
    ld bc, $c0bf
    scf
    rst $38
    ld bc, $ff3f
    rst $08
    db $dd
    ldh [$35], a
    ret nz

    ret nz

    or b
    ldh a, [$57]
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    rrca
    rrca
    rlca
    inc b
    rst $00
    ldh [rTAC], a
    nop
    rrca
    nop
    ld a, $7c
    rrca
    inc bc
    sbc a
    ret nz

    dec de
    inc a
    ld c, $03
    rlca
    nop
    dec bc
    nop
    rlca
    nop
    dec bc
    inc bc
    dec b
    dec b
    ld e, $0f
    add hl, bc
    add hl, bc
    rra
    rlca
    dec l
    dec b
    ld e, a
    inc bc
    cp a
    nop
    ld e, a
    nop
    ld c, h
    rst $38
    nop
    inc d
    ld bc, $0ff7
    cp $fc
    ld hl, sp-$20
    ldh [$c0], a
    ret nz

    add b
    rst $08
    add b
    sbc a
    add b
    ld e, h
    inc bc
    or b
    rrca
    ld [hl], b
    rrca
    ld b, h
    ldh [$1f], a
    ld a, [bc]
    sbc a
    ldh a, [$8f]
    db $fc
    jp $203f


    rra
    jr @+$05

    rlca
    ld l, e
    ld bc, $f8f4
    inc hl
    rst $38
    dec c
    db $fd
    inc bc
    rst $38
    nop
    add a
    nop
    rst $38
    ld a, b
    rst $38
    ld b, $7f
    add b
    rst $38
    ret nz

    add a
    ld bc, $0a92
    call $633f
    rst $38
    add l
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    xor e
    adc b
    ld bc, $0137
    rst $38
    ccf
    ld b, [hl]
    rst $38
    rra
    ld [bc], a
    ccf
    rst $08
    ld c, a
    inc hl
    adc a
    ld b, $ce
    cp $5c
    inc c
    ld l, $02
    ld d, a
    add $f7
    inc bc
    ccf
    ret nz

    rrca
    ldh a, [rBGP]
    rlca
    ld hl, sp+$08
    rrca
    ldh a, [$7f]
    add c
    cp $02
    db $fc
    inc c
    ret nz

    xor h
    ld bc, $0641
    inc e
    ld a, $52
    rst $38
    xor e
    rst $38
    rst $18
    add e
    ret


    ld [bc], a
    ld a, a
    cp a
    ld a, a
    ld b, [hl]
    cp $3f
    ld c, $3e
    cp $3e
    cp [hl]
    ld a, [hl]
    cp h
    ld a, [hl]
    db $fc
    cp $fc
    db $fc
    ld a, b
    db $fc
    or b
    ld hl, sp-$3d
    add e
    ld [hl+], a
    cp $aa
    ld bc, $0335
    cp $fe
    db $fc
    cp $25
    db $fc
    rlca
    ld a, b
    ld a, h
    ld a, b
    ld a, b
    ldh a, [$f8]
    ldh a, [$f0]
    inc hl
    adc b
    ld bc, $d010
    ld b, e
    ldh [$60], a
    ld b, e
    ret nz

    ld b, b
    ld bc, $4080
    ld [hl+], a
    add b
    nop
    add b
    ldh a, [$27]
    nop
    db $76
    inc bc
    inc bc
    inc b
    ld c, $08
    sbc e
    nop
    ld a, [c]
    ld bc, $743c
    ld h, c
    inc bc
    inc b
    inc c
    ld [$8508], sp
    ld bc, $0164
    ccf
    ccf
    jp $c501


    ld bc, $e4c7
    ld b, e
    rlca
    nop
    and e
    ld [bc], a
    rlc l
    pop hl
    rst $38
    rra
    rrca
    dec bc
    ld bc, $018f
    ld [c], a
    dec b
    dec c
    dec b
    ccf
    inc bc
    ld e, a
    nop
    adc c
    ld bc, $85f6
    ld [bc], a
    ld b, d
    and l
    ld [bc], a
    ld [bc], a
    add e
    ld bc, $0120
    rst $38
    ld h, b
    sbc h
    ld [bc], a
    ld d, h
    ld bc, $be1f
    add e
    ld [bc], a
    jp $fe0a


    ld a, h
    db $fc
    cp b
    db $fc
    ld [hl], b
    ld hl, sp-$08
    db $fc
    db $fc
    cp $97
    inc bc
    ld [de], a
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    ld c, $08
    sbc l
    inc bc
    ld [hl-], a
    adc c
    inc bc
    ld c, [hl]
    add l
    inc bc
    ld e, d
    ld h, c
    add e
    ld bc, $09d2
    rra
    ld e, $1e
    ccf
    rst $38
    rst $38
    ld l, l
    rra
    rlca
    ld bc, $01a3
    ld d, $11
    inc bc
    nop
    inc bc
    inc bc
    dec b
    dec b
    ld c, $0f
    add hl, bc
    add hl, bc
    rrca
    rlca
    dec c
    dec b
    rra
    inc bc
    cpl
    nop
    sub [hl]
    inc bc
    add h
    add e
    inc bc
    sbc c
    ld [bc], a
    ld b, b
    db $dd
    ld a, $9b
    inc bc
    and h
    inc c
    rst $18
    ccf
    cp $7e
    db $fc
    cp $7c
    cp $bc
    db $fc
    ld a, b
    db $fc
    ldh a, [$8c]
    inc bc
    rl h
    inc e
    ld a, $c1
    rst $38
    inc bc
    rst $38
    ld d, l
    db $fd
    xor [hl]
    cp $fa
    ld a, [$fcee]
    rst $28
    db $ec
    rst $38
    ld hl, sp-$61
    ldh [$fc], a
    ld h, d
    adc e
    inc bc
    db $fc
    inc bc
    sbc d
    sbc d
    inc a
    ld h, h
    rst $38
    db $ec
    dec [hl]
    rrca
    ld bc, $0201
    inc bc
    ld b, $05
    rra
    jr jr_04e_5032

    jr nz, jr_04e_503b

    ld hl, $111f
    rrca
    rrca
    rst $08
    adc [hl]
    inc b
    inc bc
    inc bc
    inc b
    inc b
    rlca
    add $82
    ldh [rNR42], a
    ld h, b
    ld h, b
    sub b
    sub b
    adc b
    adc b
    call nc, $ac84
    add h
    sub $82
    ld l, a
    ld b, e
    ld a, a
    ld b, c
    ld e, a
    ld h, c
    ccf
    ld h, c

jr_04e_5032:
    cpl
    ld sp, $303f
    ld d, $39
    rra
    ld a, [de]
    inc c

jr_04e_503b:
    rra
    ld [$030c], sp
    dec de
    ld [hl+], a
    dec d
    add hl, bc
    dec [hl]
    ld [hl], $37
    jr nc, @+$55

    ld a, b
    ld c, b
    ld a, a
    ld b, [hl]
    ld a, a
    ld b, h
    add b
    rst $38
    rlca
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ld b, e
    ret nz

    nop
    ld b, [hl]
    add b
    nop
    ld [hl+], a
    add b
    ld de, $80c0
    ld b, b
    ld b, b
    ld h, b
    ld b, b
    jr nc, jr_04e_508a

    ld hl, sp-$30
    cp $0c
    rst $38
    inc bc
    cp $0f
    ldh a, [$f0]
    ld h, e
    ld de, $0707
    ld a, [de]
    jr jr_04e_509c

    jr nz, @+$44

    ld b, b
    push de
    add b
    xor e
    add c
    ld d, a
    ld bc, $00ab
    rst $10
    nop
    ld b, h
    rst $38

jr_04e_508a:
    nop
    ld b, e
    add b
    rst $38
    ld b, $40
    rst $38
    ld sp, $8eff
    ld a, a
    nop
    ld b, a
    ld a, a
    ld b, b
    jp $0691


jr_04e_509c:
    cp a
    ret nz

jr_04e_509e:
    rst $38
    ld a, $ff
    nop
    rra
    adc h
    nop
    dec hl
    ld bc, $0203
    pop de
    nop
    add hl, sp
    inc b
    add b
    nop
    rst $38
    ldh [rIF], a
    add l
    and [hl]
    inc b
    ret nz

    add b
    jr nz, jr_04e_5129

    db $10
    ld b, l
    ld hl, sp+$08
    ld bc, $10f0
    ld [hl+], a
    ldh [rP1], a
    jr nz, jr_04e_5108

    ldh a, [rNR10]
    dec b
    db $fc
    inc e
    rst $38
    inc hl
    rst $38
    ld b, c
    add e
    pop de
    inc de
    rst $20
    ld e, $e1
    ld hl, $5edc
    rlca
    and a
    and l
    and a
    cp b
    cp a
    jr nc, jr_04e_509e

jr_04e_50df:
    ret c

    ld e, [hl]
    pop hl
    ld hl, $1eef
    ld b, e
    rst $38
    nop
    rlca
    ccf
    nop
    rra
    nop
    ccf
    jr nz, @+$01

    ret nz

    call nz, $0485
    inc b
    rst $38
    jr jr_04e_50df

    ldh [rLYC], a
    rlca
    nop
    ld b, e
    rrca
    nop
    inc b
    rra
    ld e, $7f
    ld h, c
    rst $20
    jp $9300


jr_04e_5108:
    nop
    ld a, a
    adc d
    nop
    ld hl, sp+$0f
    inc bc
    ld b, $04
    dec c
    ld [$101e], sp
    ccf
    jr nz, jr_04e_5197

    ld b, b
    cp $81
    rst $38
    add c
    db $fd
    ld b, e
    inc bc
    rst $38
    ld a, [bc]
    rlca
    rst $38
    rrca
    db $fd
    ld e, $e7
    add hl, de

jr_04e_5129:
    cp $86
    jr z, jr_04e_5185

    ld b, l
    ld a, b
    ld c, b
    ld bc, $84f8
    ld c, b
    db $fc
    inc b
    ld c, c
    ld [bc], a
    cp $4a
    ld bc, $01ff
    cp $01
    push bc
    sub e
    inc bc
    ld hl, sp-$68
    ldh [$60], a
    and l
    ld bc, $1f06
    inc c
    inc c
    ld [de], a
    ld [de], a
    ld h, [hl]
    ld h, d
    adc a
    add c
    ld d, a
    dec c
    cp a
    dec e
    ld a, d
    ld a, $fe
    ld a, d
    db $76
    ld a, [$f4fc]
    db $ec
    db $f4
    ld hl, sp-$18
    ret c

    add sp, -$10
    ret nc

    or b
    ret nc

    ld h, b
    and b
    and e
    ld bc, $ec06
    ld a, [hl-]
    ld a, [bc]
    ld bc, $1909
    dec b
    dec h
    dec l
    ld [hl+], a
    ccf
    ld [hl+], a
    rra
    ld [hl+], a
    and l
    ld bc, $012a
    rrca
    ld [$0743], sp
    inc b
    ld [bc], a

jr_04e_5185:
    inc bc
    ld [bc], a
    ld bc, $0184
    rlca
    add h
    nop
    add b
    dec c
    dec [hl]
    dec d
    dec [hl]
    ld [hl], $57
    ld [hl], b
    ld d, e
    ld a, b

jr_04e_5197:
    adc b
    db $fd
    add [hl]
    rst $38
    nop
    ld hl, sp-$79
    nop
    sbc e
    adc $01
    add hl, de
    call nz, $0a8d
    add b
    cp a
    ret nz

    ld a, a
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld c, b
    ld sp, $6130
    ld [$0703], sp
    nop
    ld [$0809], sp
    rlca
    ld [$ca07], sp
    nop
    ld e, b
    adc c
    ld bc, $0350
    rst $38
    nop
    ld a, a
    add b
    ld c, d
    rst $38
    nop
    ld [bc], a
    ret nz

    rrca
    db $10
    and e
    nop
    sbc d
    ld bc, $88f0
    ld b, l
    add sp, $18
    inc bc
    ld hl, sp+$08
    ldh a, [$08]
    ld b, l
    db $fc
    inc b
    ld bc, $04f8
    add h
    ld bc, $85d2
    ld bc, $8ac3
    ld bc, $0109
    inc bc
    rlca
    add e
    nop
    inc a
    dec b
    cpl
    jr nz, jr_04e_5214

    db $10
    rlca
    ld c, $89
    ld bc, $0408
    ld [$030c], sp
    dec bc
    dec b
    ld [hl+], a
    dec d
    rlca
    ld d, $17
    db $10
    inc de
    jr jr_04e_5232

    ccf
    ld h, $43
    ccf
    jr nz, jr_04e_5219

    ld a, a
    ld b, b
    ld a, [hl]
    ld b, b

jr_04e_5214:
    ld a, b
    ret nz

    ldh a, [$80]
    ld [hl], b

jr_04e_5219:
    add b
    ld b, e
    ldh [rP1], a
    nop
    ld b, b
    ld b, h
    add b
    ret nz

    rrca
    ld b, b
    ret nz

    ld h, b
    ld b, b
    jr nz, jr_04e_5269

    db $10
    jr nz, jr_04e_525c

jr_04e_522c:
    jr nz, @+$1a

    jr nc, jr_04e_522c

    ret z

    db $fc

jr_04e_5232:
    ld b, $87
    nop
    cp b
    adc e
    ld bc, $05a0
    ld [hl], b
    ld c, b
    ld a, h
    ld b, h
    db $fc
    add h
    xor b
    nop
    and $04
    ld bc, $01ff
    cp $01
    ld d, [hl]
    rst $38
    nop
    ld b, $01
    cp $82
    ld hl, sp+$4c
    ldh [rSVBK], a
    daa
    add b
    ld bc, $8000
    ld b, a
    ret nz

    ld b, b

jr_04e_525c:
    ld [bc], a
    add b
    ld b, b
    add b
    adc h
    ld [bc], a
    ld a, d
    ld b, $0f
    ld [$1807], sp
    rra

jr_04e_5269:
    db $10
    rra
    ld b, e
    jr nz, jr_04e_52ad

    ld b, $50
    ld a, a
    ld c, b
    ld a, a
    ld b, a
    rst $38
    ld c, $48
    rst $38
    nop
    ld bc, $ff40
    xor a
    db $dd
    inc b
    add b
    rst $38
    ld b, e
    rst $38
    inc a
    ld b, e
    rst $38
    nop
    adc d
    ld bc, $8556
    inc bc
    ld d, c
    nop
    ld b, $83
    ld [bc], a
    sub $01
    ld hl, sp-$78
    and d
    ret


    nop
    inc b
    adc l
    ld bc, $ffb2
    ldh [$29], a
    db $10
    jr nc, jr_04e_52aa

    ld c, b
    inc b
    add h
    ld [bc], a
    add [hl]
    add c
    add a
    ld b, b

jr_04e_52aa:
    ld b, [hl]
    ld b, b
    ld c, [hl]

jr_04e_52ad:
    ld [bc], a
    ld c, d
    ld hl, $052d
    cpl
    inc d
    rra
    ld [de], a
    rra
    ld c, $0f
    rrca
    dec bc
    rra
    ld de, $2019
    jr nc, jr_04e_52f1

    ld d, b
    ld d, b
    ld e, c
    ld d, b
    ld a, a
    ld [hl], b
    cpl
    ld [hl], c
    ld b, e
    ld a, $22
    rrca
    dec e
    rla
    add hl, de
    dec de
    add hl, bc
    rrca
    ld b, $07
    ld bc, $0e01
    ld e, $1f
    inc de
    rrca
    rrca
    ld h, c
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    db $ec
    dec h
    dec d
    add b
    add b
    ret nz

    jp $4541


    ld hl, $2127
    dec hl
    ei

jr_04e_52f1:
    ei
    sub d
    rst $38
    and b
    rst $38
    rlca
    cp $1f
    ld hl, sp-$02
    ldh [rSCX], a
    db $fc
    nop
    ldh [$27], a
    cp $00
    rst $38
    ret nz

    rra
    ldh a, [rIF]
    ld a, b
    rlca
    ld a, h
    rrca
    db $fc
    di
    ld_long a, $ff11
    add hl, bc
    rst $38
    add a
    rst $38
    ld a, a
    ld a, a
    call z, $d4ef
    rst $18
    ld a, [hl-]
    dec sp
    ei
    ld a, e
    db $e3
    di
    rlca
    rrca
    ld a, [hl]
    ld a, [hl]
    ld hl, sp-$64
    ld h, b
    ld h, b
    db $ec
    add hl, hl
    dec bc
    add b
    ret nz

    ldh [$b0], a
    ld hl, sp+$18
    ld hl, sp+$0c
    ld a, h
    inc b
    inc a
    ld [hl-], a
    ld b, e
    ld e, [hl]
    ld e, d
    ldh [$27], a
    xor $7a
    adc $7a
    cp $32
    db $fd
    dec b
    cp $06
    ld sp, hl
    rrca
    ldh a, [rNR24]
    ldh [$fc], a
    cp h
    cp $3e
    rst $28
    ld e, $ff
    rlca
    rst $38
    rrca
    ei
    ccf
    rst $38
    jp Jump_04e_67ff


    ld a, a
    rra
    dec e
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $6101
    dec b
    inc bc
    rlca
    nop
    add hl, bc
    inc b
    rlca
    sbc h
    nop
    ld b, d
    ld bc, $0001
    ld b, e
    ld [bc], a
    nop
    ld bc, $0004
    ld b, e
    ld [$0100], sp
    stop
    ld b, e
    jr nz, jr_04e_5382

jr_04e_5382:
    rla
    ld b, b
    nop
    ld b, b
    add b
    add c
    add b
    add d
    nop
    inc b
    ld [$3008], sp
    jr nc, @-$3d

    pop bc
    ld b, [hl]
    add $38
    ld hl, sp+$20
    ldh [rP1], a
    ldh [rNR10], a
    ld b, h
    ldh a, [$90]
    nop
    jr nz, @+$24

    ldh [$15], a
    sub b
    ret nc

    db $10
    ldh a, [$e8]
    add sp, $04
    db $f4
    add [hl]
    cp $7a
    ld a, [$fd21]
    ld e, $ff
    ldh [rIE], a
    db $10
    rra
    dec bc
    dec bc
    and a
    nop
    xor d
    ld de, $0101
    ld b, $06
    ld [$100f], sp
    rra
    jr nz, jr_04e_5406

    ld b, b
    ld e, a
    add b
    adc a
    nop
    rlca
    nop
    inc bc

jr_04e_53cf:
    rst $00
    pop hl
    add hl, bc
    inc bc
    inc bc
    inc b
    dec c
    nop
    ld de, $2000
    nop
    ret nz

    add a
    and a
    ld bc, $3838
    cp l
    nop
    ld b, d
    dec bc
    inc a
    ld a, $c1
    ld sp, hl
    add b
    rst $38
    ld a, a
    rst $38
    jr nz, jr_04e_53cf

    ld h, b
    ld h, b
    add l
    xor c
    inc bc
    ld a, b
    ld a, b
    add h
    add h
    inc h
    ld [bc], a
    inc b
    add d
    ld [bc], a
    jp nz, $e202

    ld b, e
    inc b
    db $f4
    dec bc
    inc c
    db $fc

jr_04e_5406:
    ld [de], a
    ld a, [c]
    ld [hl+], a
    ld [c], a
    ld b, c
    ld h, c
    add c
    pop af
    ld bc, $43f1
    ld [bc], a
    ld a, [$0407]
    db $fc
    ld [$10f8], sp
    ld [hl], b
    ld h, b
    ld h, b
    ld hl, sp+$27
    nop
    ld l, e
    adc e
    and a
    adc l
    nop
    nop
    dec c
    nop
    ld c, [hl]
    jr nz, @+$30

    ld bc, $172f
    rra
    rla
    inc d
    rra
    jr @+$1e

    db $10
    ld b, l
    jr c, jr_04e_5457

    inc de
    ccf
    ld h, $58
    ld a, c
    ld c, b
    ld l, e
    jr c, jr_04e_547f

    inc h
    ccf
    inc de
    rra
    ld [de], a
    ld e, $0a
    ld c, $06
    rlca
    inc bc
    inc bc
    add a
    nop
    ld [hl], $8e
    nop
    ld e, [hl]
    ld a, [de]
    add $42
    ld c, d
    ld [hl+], a

jr_04e_5457:
    ld l, $f2
    or $f3
    rra
    or $1f
    push hl
    ccf
    ld h, b
    daa
    jr nz, jr_04e_549b

    inc sp
    rra
    ccf
    nop
    ld a, h
    nop
    db $fc
    add b
    ld a, a
    add b
    ld b, h
    ld a, a
    ret nz

    inc b
    pop bc
    rst $38
    pop bc
    ld a, a
    pop bc
    ld b, e
    ccf
    ldh [rSB], a
    rst $38
    ldh a, [$87]
    nop

jr_04e_547f:
    sbc b
    adc b
    cp e
    add hl, bc
    ld hl, sp+$00
    db $e4
    ld a, h
    db $fc
    sub b
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSCX]
    ld [$0ff8], sp
    inc b
    db $fc
    ld h, h
    cp h
    or h
    ld a, l
    ld [hl], l
    ld a, $ee
    ld sp, hl

jr_04e_549b:
    rst $08
    ldh a, [rNR24]
    ldh [$3c], a
    db $fc
    adc b
    nop
    rst $30
    ld b, $08
    jr @+$06

    inc h
    ld [bc], a
    ld b, d
    ld bc, $4344
    ld b, b
    inc bc
    jr nz, jr_04e_54d9

    ld [hl+], a
    dec hl
    adc c
    db $fd
    ld [hl+], a
    ld b, b
    ld b, $43
    ld hl, $2125
    daa
    ld de, $8b1b
    nop
    ld [hl], h
    sub h
    ld bc, $8726
    ld bc, $0039
    db $10
    add h
    sub e
    db $10
    ld b, $00
    jr jr_04e_54d2

jr_04e_54d2:
    inc a
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    ld a, a

jr_04e_54d9:
    nop
    ccf
    nop
    rra
    nop
    rrca
    add a
    ld bc, $0b92
    ld bc, $0601
    rlca
    ld [$001b], sp
    ld hl, $4100
    nop
    add b
    add l
    ld bc, $01aa
    jr jr_04e_550d

    sub b
    ld [bc], a
    ld a, [bc]
    inc bc
    ldh a, [rP1]
    ld [$4700], sp
    inc b
    nop
    ld c, $84
    nop
    ret z

    nop
    add sp, $08
    ld hl, sp+$14
    db $f4
    inc h
    db $e4
    ld b, d

jr_04e_550d:
    jp nz, $e282

    add l
    ld bc, $03ee
    ld [$10f8], sp
    ldh a, [$a9]
    ld bc, $0914
    jr nc, jr_04e_551e

jr_04e_551e:
    ld [hl], b
    ld b, b
    ld a, c
    ld h, b
    ld a, a
    ld d, b
    ccf
    ld b, c
    add l
    nop
    ld a, [hl+]
    nop
    inc a
    ld b, e
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl-]
    cp $42
    ld b, e
    cp $02
    add e
    nop
    db $ec
    rst $38
    db $ec
    ld hl, $060f
    ld b, $0f
    add hl, bc
    rra
    add hl, de
    ld a, $29
    inc [hl]
    dec hl
    ld a, d
    ld b, l
    ld a, b
    ld b, a
    ld e, b
    ld h, a
    ld b, e
    jr nz, jr_04e_558e

    dec b
    db $10
    rra
    inc c
    inc c
    inc bc
    inc bc
    db $ec
    ld e, e
    add hl, bc
    add b
    add b
    ldh [$e0], a
    db $10
    ret nc

    db $10
    ldh a, [$09]
    adc c
    ld [hl+], a
    rlca
    inc c
    add h
    rlca
    nop
    rrca
    ld [$1717], sp
    jp hl


    jp hl


    dec bc
    ld [$0407], sp
    add [hl]
    rst $30
    ld c, $01
    nop
    ld [bc], a
    inc b
    inc b
    nop
    ld [$1010], sp
    ld bc, $2221
    ld [hl+], a
    ld h, d
    ld b, [hl]
    ld b, e
    ld a, h
    ld b, h
    ld b, $3d
    inc hl
    ccf
    jr nz, @+$21

jr_04e_558e:
    db $10
    rrca
    ldh a, [$32]
    nop
    add hl, sp
    inc de
    ld bc, $0201
    inc bc
    rlca
    rlca
    rrca
    rrca
    rst $28
    rst $28
    scf
    rra
    ld a, e
    dec bc
    ld hl, sp-$18
    add sp, $18
    db $fc
    call nz, $fe43
    ld [hl+], a
    ld de, $d1ff
    rst $38
    sub c
    xor $b2
    ld b, a
    ld h, e
    add [hl]
    push bc
    rrca
    ld [$1807], sp
    rla
    inc [hl]
    ld b, e
    ld b, e
    jp $9900


    dec bc
    ld bc, $0701
    ld b, $07
    jr jr_04e_5629

    ld h, b
    rst $38
    add c
    cp $0e
    and a
    db $ed
    ld bc, $0101
    call c, $04c2
    ld bc, $0602
    ld [$2308], sp
    db $10
    dec bc
    ld hl, $2220
    jr nz, jr_04e_5635

    ld h, b
    sbc d
    ldh a, [$7f]
    db $fc
    ei
    ld a, [$f322]
    ldh [$3e], a
    or $af
    db $ec
    rst $00
    ret nz

    ld b, a
    ld b, b
    rrca
    ld b, b
    daa
    jr z, jr_04e_5628

    ld [hl+], a
    rra
    db $10
    inc bc
    inc e
    rra
    dec de
    daa
    inc hl
    adc $c1
    ld a, a
    add b
    ei
    call nz, $dcff
    rst $20
    db $e4
    rst $00
    call nz, $080f
    ccf
    jr c, @+$01

    ret z

    rst $28
    db $10
    rst $20
    jr @+$01

    ld [hl], b
    cp a
    and c
    ld a, $22
    ld a, [hl-]
    ld h, $1f
    rra

jr_04e_5624:
    ld a, l
    ld l, [hl]
    ld a, a
    add b

jr_04e_5628:
    rlca

jr_04e_5629:
    nop
    rst $30
    ld c, e
    db $fc
    db $fc
    ld l, [hl]
    inc de
    inc b
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld a, [bc]

jr_04e_5635:
    inc de
    ld de, $7137
    add a
    sub b
    daa
    jr nz, jr_04e_567d

    nop
    ld a, a
    nop
    cp a
    nop
    ld e, a
    call nz, Call_04e_4481
    rst $38
    nop
    add hl, bc
    rrca
    db $fc
    ld hl, sp-$30
    jr nc, jr_04e_5624

    inc [hl]
    add sp, $18
    rst $30
    add $89
    dec bc
    db $fd
    inc bc
    rst $28
    rra
    rst $10
    rst $38
    xor a
    rst $38
    cp $ff
    cp e
    ld a, h
    ld b, e
    rst $38
    nop
    ld b, l
    rst $38
    ld bc, $ff48
    nop
    db $10
    ld bc, $82fd
    ld [hl], e
    ld a, h
    rrca
    ld [$171e], sp
    adc a
    sub c
    sbc a
    sub b
    adc l
    adc d
    rlca

jr_04e_567d:
    rlca
    cp c
    nop
    xor $07
    ldh [$60], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $fc
    inc b
    ld b, e
    cp $02
    ld b, l
    rst $38
    ld bc, $fe11
    nop
    rst $38
    rrca
    rst $38
    rst $38
    ld c, a
    ld a, a
    ld h, a
    ld a, a
    db $d3
    rst $38
    cp c
    rst $18
    rst $30
    rla
    pop hl
    ld hl, $c023
    rra
    ldh [$e0], a
    or b
    ret nc

    ld hl, sp-$74
    cp $03
    rst $38
    nop
    rst $38
    ld h, b
    inc c
    sbc b
    inc b
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    add e
    add e
    add d
    add e
    add e
    add d
    add c
    add h
    inc b
    inc b
    add b
    adc b
    ld b, e
    ret


    ld c, b
    rlca
    adc l
    adc d
    add $c7
    ldh [rNR41], a
    ld h, b
    and b
    db $f4
    inc sp
    nop
    call nc, $e183
    ld bc, $e0e0
    dec h
    ldh a, [rSB]
    ld h, b
    ld h, b
    adc e
    sbc c
    dec b
    add b
    ld b, b
    ret nz

    ld b, b
    ld h, b
    and b
    ld [hl+], a
    ldh [rP1], a
    ld h, b
    jp $0182


    ldh [rNR41], a
    and e
    ld bc, $07a0
    or $1a
    cp $02
    ld a, h
    add h
    xor b
    ld e, b
    or a
    nop
    jp nc, $0800

    ld h, c
    call nz, $cd01
    adc e
    nop
    or h
    ld h, a
    dec bc
    ld e, $1e
    ld a, c
    ld h, a
    cp $81
    ld h, a
    ld a, b
    ld d, $19
    db $10
    rra
    ld b, h
    jr nz, jr_04e_575a

    dec e
    dec hl
    jr nz, jr_04e_5741

    db $10
    db $10
    jr c, jr_04e_575b

    ld c, a
    ld c, c
    ld c, a
    ld b, h
    ccf
    inc h
    ld e, a
    ld e, c
    ld e, a
    ld c, c
    ccf
    ld [hl-], a
    rra
    ld [de], a
    rra
    ld de, $2237
    daa
    inc hl
    ld b, a
    ld h, e
    adc [hl]
    adc b
    ld bc, $0327
    ldh a, [$30]
    pop bc

jr_04e_5741:
    pop bc
    sub d
    ld bc, $1648
    ld bc, $0602
    adc b
    adc b
    ret nc

    ld d, b
    ld [hl], b
    or b
    ld sp, $12f0
    ldh a, [rNR11]
    ldh a, [rNR30]
    ldh a, [$3f]
    db $fc
    dec sp

jr_04e_575a:
    ld a, d

jr_04e_575b:
    ld [hl], e
    ld [hl], e
    add l
    ld bc, $157e
    rst $00
    ret nz

    rst $08
    ret nz

    rst $20
    jr z, @-$11

    ld [hl+], a
    rst $18
    ld d, b
    add e
    sbc h
    and $fe
    cpl
    inc bc
    scf
    ld c, b
    rst $38
    nop
    pop af
    adc $a5
    ld bc, $89bc
    ld [bc], a
    ldh a, [rTAC]
    ld hl, sp+$18

jr_04e_5780:
    db $f4
    inc e
    db $f4
    inc c
    ld a, b
    adc b
    sub l
    inc bc
    ld [bc], a
    dec b
    ld [$0410], sp
    jr jr_04e_578f

jr_04e_578f:
    inc c
    add l
    adc d
    ld bc, $0408
    ld [hl], e
    dec c
    dec c
    dec c
    ld a, [hl-]
    ld [hl], $5c
    ld [hl], h
    ld a, [hl]
    ld d, b
    ld l, l
    ld d, d
    ld [hl], b
    ld c, a
    jr c, jr_04e_57cc

    add e
    nop
    inc [hl]
    inc bc
    rrca
    rrca
    nop
    ld [$018d], sp
    nop
    inc bc
    rrca
    rrca
    rlca
    rrca
    add e
    nop
    call nc, $3819
    jr c, jr_04e_5780

    call nz, $0202
    ld h, [hl]
    ld h, $3b
    add hl, de
    ccf
    ld de, $121e
    ccf
    cpl
    ld a, $e5
    ccf

jr_04e_57cc:
    add sp, -$19
    ret c

    rst $10
    inc [hl]
    ld b, e
    ld b, e
    rst $38
    ld h, e
    ld de, $1e3c
    ld hl, $303f
    inc a
    ld d, $18
    rrca
    jr jr_04e_57ec

    inc c
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $6701
    dec b
    ld b, $0e

jr_04e_57ec:
    inc bc
    ld de, $080f
    add e
    sub e
    add hl, de
    rrca
    inc c
    rra
    db $10
    rrca
    dec c
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc h
    inc l
    ld de, $4350
    ld b, b
    ld c, a
    ld b, b
    sbc a
    and b
    rst $18
    ldh [$3f], a
    daa
    jr jr_04e_5826

    db $ec
    inc hl
    ldh [rNR51], a
    ret nz

    add b
    jr jr_04e_584d

    inc bc
    rlca
    ld b, c
    ld bc, $02aa
    sub $02
    cp $02
    or $0a
    ld l, [hl]
    sub c
    rst $28
    sub c
    ld c, a

jr_04e_5826:
    ld h, b
    cpl
    jr nz, jr_04e_5879

    ld b, b
    call $9dc2
    ld b, d
    dec e
    add d
    sbc [hl]
    add c
    sbc a
    add b
    sbc [hl]
    add c
    ld c, c
    rra
    nop
    ld b, a
    rrca
    nop
    ld b, e
    add a
    nop
    nop
    add e
    ld b, e
    add b
    inc bc
    ld d, $40
    ld b, l
    ld b, b
    ld c, e
    ld b, b
    dec d
    ld [hl+], a

jr_04e_584d:
    ld a, [hl+]
    ld hl, $1005
    ld a, [de]
    db $10
    dec c
    ld [$040b], sp
    nop
    dec bc
    ld [$070a], sp
    rlca
    ld h, a
    ld c, $3c
    inc a
    add c
    jp $0002


    dec b
    nop
    ld [de], a
    inc c
    dec l
    ld [de], a
    ld l, [hl]
    ld de, $447f
    ld bc, $05ff
    cp e
    add $ff
    jr c, @+$01

    nop
    ld b, l

jr_04e_5879:
    cp $85
    add hl, bc
    ld a, c
    add [hl]
    rst $38
    nop
    cp l
    ld [hl], d
    adc a
    db $fc
    rst $38
    jr c, @+$5f

    rst $38
    nop
    rrca
    ld a, a
    add b
    adc a
    ld [hl], b
    pop af
    rrca
    db $fc
    rlca
    cp $0f
    ld [hl], c
    adc c
    or c
    ld d, c
    ldh [$e0], a
    ld l, e
    add hl, bc
    ld b, b
    ret nz

    ld d, b
    jr c, @+$01

    rlca
    rst $38
    nop
    cp $00
    add sp, $27
    rst $38
    nop
    ld bc, $01fe
    ld c, a
    rst $38
    nop
    rrca
    rst $00
    nop
    adc e
    nop
    add a
    nop
    res 0, b
    rst $38
    add c
    rlca
    cp c
    dec bc
    dec h
    cp $fe
    ld l, e
    ld a, [bc]
    ld bc, $2e01
    rra
    ret nz

    pop bc
    ld b, e
    nop
    xor a
    nop
    ld e, a
    add [hl]
    cp l
    ldh [rNR51], a
    db $fc

jr_04e_58d3:
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$08
    di
    inc de
    db $db
    inc a
    rst $20
    jr c, @-$1d

    ld a, $f0
    rra
    pop af
    ld e, $f0
    rra
    adc b
    rrca
    ld b, $07
    add c
    ld bc, $00f3
    rst $38
    nop
    ld sp, hl
    ld b, $f0
    ret


    reti


    ld a, $ff
    rla
    ld b, h
    cp $11
    nop
    ld hl, $fd43
    ld [hl+], a
    rrca
    ei
    inc h
    rst $20
    ld e, b
    rst $18
    ld h, b
    rst $38
    add b
    rst $38
    add e
    db $ec
    inc e
    ldh [$60], a
    add b
    add b
    ld l, l
    dec c
    ld hl, sp-$04

jr_04e_5915:
    inc b
    cp $1c
    cp $7c
    cp $f8
    db $fc
    ldh a, [$78]
    ldh [rSVBK], a
    and a
    nop
    ld [de], a
    rrca
    inc a
    inc a
    cp [hl]
    jp nz, $0cfc

    ldh a, [$30]
    ret nz

    ret nz

    ldh a, [$f0]

jr_04e_5931:
    ld hl, sp+$08
    ldh a, [$f0]
    jp $1d94


    ldh [$e0], a
    sub b
    db $10
    ldh [rNR41], a
    sub b
    ld d, b
    ldh a, [rNR10]
    ldh [$60], a
    sub b
    sub b
    or b
    db $10
    ld d, b
    db $10
    or b
    db $10
    ldh a, [rNR10]
    ret nz

    jr nz, jr_04e_5931

    jr nz, jr_04e_58d3

    ld b, b
    ret nz

    ld b, b
    adc l
    rst $10
    add e
    nop
    jr nz, jr_04e_596e

    rla
    inc [hl]
    dec l
    ld l, $07
    ld b, d
    ld d, a
    ld b, c
    or a
    add b
    rlca
    add b
    ld c, [hl]
    ld b, b
    ld a, $20
    ld e, $10

jr_04e_596e:
    ld c, $83
    nop
    inc hl
    and l
    xor e
    xor [hl]
    ld bc, $8ddb
    nop
    ldh [$03], a
    rst $08
    jr c, @+$01

    jr nc, jr_04e_5915

    ld bc, HeaderROMSize
    cp $01
    ld b, e
    db $fd
    ld [bc], a
    inc c
    ld a, l
    add d
    adc [hl]
    ld [hl], c
    ldh a, [rIF]
    db $fc
    rlca
    rst $38
    rrca
    ld [hl], b
    adc e
    or b
    and h
    nop
    cp e
    rrca
    rst $38
    nop
    rst $18
    jr nz, jr_04e_5a1e

    add b
    db $db
    ld [hl], $89
    ld c, c
    jp nz, $3f49

    add b
    rst $38
    add b
    ld b, e
    db $e3
    sbc h
    rlca
    ld [hl], a
    ret


    ld a, $e3
    rst $38
    rst $38
    dec [hl]
    ccf
    ld h, e
    add e
    ld bc, $00c0
    xor $84
    ld bc, $0fc5
    db $dd
    and d
    cp e
    call nz, $d8e7
    sbc a
    ldh [rIE], a
    add b
    db $fd
    inc bc
    db $ec
    inc e
    ld h, b
    ldh [$85], a
    ld [bc], a
    ld [hl-], a
    ld bc, $1918
    add $00
    add hl, de
    ld c, $06
    ld bc, $0909
    ld c, $0f
    ld [$0906], sp
    ld b, $05
    inc bc
    inc b
    ld bc, $8702
    ld [bc], a
    ld h, b
    rla
    add a
    nop
    adc e
    add b
    push bc
    add b
    dec sp
    nop
    dec a
    ret nz

    rra
    jr nz, jr_04e_5a39

    ret nz

    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    dec a
    jp $c73a


    add sp, $18
    add a
    ld bc, $091c
    rra
    ldh [$c1], a
    rst $38
    ld a, $ff
    ld [bc], a
    inc bc
    ld bc, $8501
    nop
    inc d
    add e
    ld bc, $09a0
    jp c, $ef3e

    inc a

jr_04e_5a1e:
    di
    ld [hl], b
    add [hl]
    ld bc, $011e
    ret z

    ld bc, $0464
    rrca
    ld [hl], a
    ld hl, sp-$05
    inc d
    ld b, e
    db $fd
    ld [de], a
    ld bc, $11fe
    adc l
    ld bc, $83c2
    ld [bc], a
    nop

jr_04e_5a39:
    dec b
    cp h
    xor h
    ldh a, [$30]
    ld l, b
    adc b
    ld b, e
    jr nc, jr_04e_5a93

    dec b
    ld h, b
    and b
    ldh [rNR41], a
    ret nz

    ret nz

    and l
    ld [bc], a
    ld a, [c]
    ld bc, $40c0
    ld b, e
    ldh [rNR41], a
    ld bc, $1010
    adc l
    ld [bc], a
    ld [hl+], a
    rlca
    rst $08
    ret nz

    sbc a
    ld b, b
    dec de
    add h
    sbc l
    add e
    add a
    nop
    adc b
    add [hl]
    ld bc, $0058
    adc [hl]
    add a
    nop
    add sp, -$01
    ld h, [hl]
    ld [bc], a
    inc b
    inc b
    dec bc
    ld b, e
    dec b
    ld a, [bc]
    ld de, $0c03
    inc sp
    inc [hl]
    ld c, a
    ld c, b
    ld b, a
    ld c, b
    dec [hl]
    ld [hl+], a
    dec sp
    inc h
    ld [de], a
    dec e
    ld [$090b], sp
    add hl, bc
    ld [hl+], a
    ld [$0c07], sp
    inc b
    inc c
    ld b, $06
    ld [bc], a
    inc b

jr_04e_5a93:
    nop
    inc h
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    ld bc, $ec01
    ld l, $e0
    ld [hl-], a
    jr jr_04e_5ab9

    ld h, h
    ld a, h
    add d
    db $f4
    dec bc
    ld a, [$f505]
    ld a, [bc]
    ret nz

    ccf
    add b
    ld a, a
    add c
    ld a, a
    jp nz, $e43e

    inc e
    ldh [rNR23], a
    ret z

    add hl, sp
    nop

jr_04e_5ab9:
    pop af
    nop
    ldh [$ce], a
    add $1a
    ld a, [bc]
    rra
    ld c, $0d
    ld c, $03
    ld bc, $0201
    rlca
    ld [bc], a
    rrca
    ld [bc], a
    ccf
    ld h, h
    ei
    adc h
    dec [hl]

jr_04e_5ad1:
    ld [hl], h
    ld [hl+], a
    inc b
    ld b, h
    inc b
    nop
    add hl, bc
    inc c
    ld a, [bc]
    ld c, $08
    ld c, $09
    rrca
    ld [$0807], sp
    ld b, l
    rlca
    inc b
    dec b
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    add e
    add e
    dec b
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    adc c
    nop
    ld [bc], a
    ldh [$2e], a
    rrca
    sub b
    sbc h
    ld h, e
    ld a, b
    add a
    jr nc, jr_04e_5ad1

    ld h, c
    cp $92
    sbc h
    inc e
    jr nc, jr_04e_5b19

    ld [hl], b
    dec l
    ldh [$2c], a
    di
    ld h, b

jr_04e_5b0f:
    sbc $e0
    adc a
    add sp, -$72
    push af
    add [hl]
    ld a, [$f583]

jr_04e_5b19:
    add c
    ld a, [$fc00]
    nop
    ld a, [$f400]
    nop
    ld hl, sp+$00
    db $f4
    nop
    add sp, $00
    ret nc

    ld h, a
    and e
    rrc c
    jr nz, jr_04e_5b0f

    and c
    ldh [$61], a
    ldh [rNR42], a
    pop bc
    ld h, c
    ret nc

    ld [hl+], a
    ld d, c
    rrca
    or c
    ld sp, $3161
    and e
    ld sp, $617f
    cp $e2
    or $fa
    xor [hl]
    xor [hl]
    inc a
    inc a
    ld h, [hl]
    ld bc, $0080
    ld b, e
    ret nz

    nop
    ld [bc], a
    ldh [rP1], a
    ret nz

    xor b
    adc a
    nop
    ld bc, $81c7
    dec bc
    add b
    ld b, b
    ldh [rNR10], a
    ld [bc], a
    db $f4
    call z, $30f3
    ccf
    rrca
    rrca
    ld [hl], b
    dec d
    inc b
    add h
    add h
    and d
    sub d
    ld c, [hl]
    xor [hl]
    pop af
    cp a
    ld bc, $48ef
    xor a
    ret z

    cpl
    add h
    ld b, a
    inc b
    rlca
    inc b
    rrca
    ld b, $22
    rrca
    ld bc, $0e0e
    jp nc, Jump_04e_4200

    add l
    pop de
    ld e, $08
    ld [bc], a
    sbc l
    add e
    ld e, h
    add a
    ld a, b
    rst $00
    jr c, @+$45

    cp h
    ld h, d
    sbc l
    ld h, c
    sbc [hl]
    jr nc, jr_04e_5beb

    inc a
    ld b, e
    dec e
    ld [hl+], a
    ld a, [de]
    dec h
    dec b
    sbc d
    add d
    add l
    ld [hl], b
    ld [hl], e
    ld [$430b], sp
    inc b
    rlca
    add e
    nop
    or c
    dec d
    nop
    inc bc
    ld b, $09
    nop
    rrca
    nop
    rrca
    ld bc, $000e
    rlca
    nop
    rlca
    inc b
    ld b, $86
    add d
    adc $c2
    cp $c2
    ld b, l
    cp [hl]
    and d
    rlca
    inc a
    ld h, h
    ld a, h
    ld a, h
    ld e, h
    ld e, h
    ld a, b
    ld a, h
    ld l, d
    ld a, [bc]
    ret nz

    ret nz

    jr nc, @+$72

    adc b
    jr nc, jr_04e_5c28

    jr c, jr_04e_5c22

    ld a, b
    add [hl]
    ld b, e
    ld hl, sp+$06
    add hl, bc
    ldh [rNR34], a
    add b
    ld a, h
    ld b, b
    cp h
    add b

jr_04e_5beb:
    ld a, b
    ld b, b
    or b
    and l
    cp a
    inc bc
    nop
    ldh a, [rP1]
    ld hl, sp+$45
    ld [$03f0], sp
    db $10
    ldh [rNR41], a
    ret nz

    and e
    ld bc, $008d
    ld b, b
    jp $3101


    and h
    nop
    ld [hl-], a
    nop
    nop
    db $f4
    dec h
    nop
    inc sp
    ldh [rNR41], a
    add hl, bc
    ld bc, $050e
    ld a, [bc]
    rlca
    ld [$0403], sp
    ld h, e
    ld h, h
    sub [hl]
    sbc c
    call Call_04e_638e
    ld b, h
    inc a

jr_04e_5c22:
    inc hl
    jr jr_04e_5c3a

    ld [$0008], sp

jr_04e_5c28:
    ld [$0404], sp
    ld b, $04
    inc bc
    ld b, $03
    inc bc
    adc b
    nop
    ld [hl-], a
    inc b
    ld [hl], b
    jr nc, @-$32

    ld a, h
    add e

jr_04e_5c3a:
    add e
    nop
    ld l, b
    ld bc, $1fe0
    add l
    nop
    ld [hl], b
    ld de, $9c64
    ret nz

    inc a
    ldh [rNR24], a
    ret z

    add hl, sp
    nop
    ldh a, [$80]
    pop af
    ld h, c
    ld h, c
    inc bc
    ld bc, $0202
    add h
    ld bc, $0935
    ld bc, $8183
    add a
    add l
    ld a, a

jr_04e_5c60:
    ld b, d
    dec e
    ld a, $07
    adc b
    nop
    sub a
    dec de
    pop bc
    cp $22
    inc a
    inc l
    ld [hl], b
    jr nz, jr_04e_5c60

    ld c, l
    ldh [$4c], a
    di

jr_04e_5c74:
    ldh [$9e], a
    ldh [$8f], a
    xor b
    ld c, [hl]
    push af
    ld b, [hl]
    ld a, [$f543]
    ld b, c
    ld a, [$fc80]
    add b
    add e
    nop
    db $ec
    add hl, bc
    dec sp
    inc a
    daa
    inc l
    ld h, $29
    dec d
    ld [de], a
    dec de
    inc d
    adc e
    nop
    ld a, [de]
    ld [bc], a
    inc c
    ld [$240c], sp
    ld [$0c05], sp
    ld [$0407], sp
    inc bc
    inc bc
    xor h
    ld bc, $067d
    ld a, a
    add b
    ld a, a
    pop bc
    ccf
    ld [c], a
    ld e, $87
    nop
    ld a, b
    dec d
    ret nz

    jp nz, $0406

    dec c
    inc c
    ld de, $0311
    ld bc, $020f
    rra
    inc c
    ld a, e
    inc e
    db $eb
    inc l
    set 1, h
    dec b
    inc b
    adc c
    nop
    sub [hl]
    add hl, bc
    ld bc, $72fe
    db $fc
    adc h
    adc b
    ld [$1d38], sp
    ldh a, [$8c]
    nop
    jp c, Boot

    add a
    nop
    add sp, $07
    ret nz

    jp nz, $0206

    rlca
    inc b
    rrca
    inc c
    add a
    nop
    adc b
    dec b
    inc sp
    inc [hl]
    cpl
    jr z, jr_04e_5d16

    jr z, jr_04e_5c74

    ld [bc], a
    sub $01
    ld [bc], a
    dec c
    add e
    ld [bc], a
    call c, $e100
    add [hl]
    ld [bc], a
    or c
    inc bc
    ld l, l
    ret nz

    ld l, h
    db $d3
    add e
    ld [bc], a
    cp h
    rst $38
    ld h, l
    inc b
    inc bc
    inc bc
    inc c
    rrca
    rrca
    ld b, e
    rrca
    rlca
    ldh [$28], a
    rlca
    inc bc
    rlca

jr_04e_5d16:
    ld h, e
    ld h, e
    pop af
    di
    ld sp, hl
    ld sp, hl
    ld a, [hl]
    ld a, [hl]
    inc hl
    inc hl
    inc bc
    ld b, b
    ld l, a
    ld b, b
    ld a, a
    add b
    ei
    add a
    ld [hl], a
    adc a
    ld a, a
    ld c, a
    ccf
    cpl
    ld de, $3e11
    ld a, a
    ld e, a
    rst $38
    xor a
    rst $38
    rra
    ld a, a
    nop
    rlca
    ld bc, $c303
    xor e
    ld bc, $0707
    db $ec
    daa
    ld a, [bc]
    add b
    add b
    ld [hl], c
    pop af
    adc a
    rst $38
    ld [c], a
    rst $38
    ld hl, sp-$01
    cp $24
    rst $38
    inc e
    cp a
    rst $28
    db $dd
    rst $08
    inc a
    dec b
    db $fd
    dec b
    ld a, [$fd06]
    inc bc
    ld a, a
    add c
    cp a
    adc $f1
    cp $f3
    xor $e3
    sbc $e7
    cp h
    cp $b9
    rst $38
    jp $a6ff


    and e
    add hl, bc
    rst $20
    rst $38
    rra
    ld a, a
    rst $38
    rst $38
    ldh a, [$f0]
    ld h, b
    ld h, b
    xor a
    call z, $0209
    ld b, $03
    dec bc
    ld c, $0e
    ld [bc], a
    ld [bc], a
    ld bc, $6101
    dec de
    ld b, b
    ld b, b
    ld hl, $b661
    rst $30
    jr c, @+$01

    dec [hl]
    rst $38
    ld c, d
    rst $38
    sbc l
    rst $38
    ld a, a
    rst $38
    ld a, [hl-]
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    dec a
    ccf
    ld [hl+], a
    sbc a
    jp Jump_04e_44e8


    ld a, a
    cp a
    ldh [$35], a
    cp b
    ld a, e
    ld hl, sp+$7c
    ld e, [hl]
    rst $18
    or d
    cp [hl]
    add $ff
    cp a
    cp a
    db $dd
    rst $18
    pop hl
    rst $38
    jp nz, $c1ff

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld b, d
    ld a, a
    ld b, c
    ld a, a
    scf
    ccf
    rra
    ccf
    dec de
    rla
    dec a
    dec h
    jr c, @+$2a

    ld hl, sp-$38
    call c, Call_04e_4a04
    or d
    db $ec
    db $ec
    xor c
    xor c
    db $10
    db $10
    ld h, c
    ld [$7060], sp
    sub b
    ldh a, [rSVBK]
    ldh a, [$a0]
    ldh a, [$60]
    ld b, e
    ldh [$c0], a
    ld [$b8c0], sp
    ld hl, sp+$02
    cp $5c
    db $fc
    or b
    ld hl, sp-$5c
    nop
    inc c
    ld bc, $80c0
    call nz, $2281
    ldh a, [$0b]
    ld hl, sp-$08
    ld sp, hl
    pop af
    pop af
    ld bc, $0203
    rlca
    dec b
    rra
    ccf
    jr z, @+$01

    ld a, [bc]
    ld a, [hl]
    rst $38
    or b
    cp $5c
    cp $bf
    rst $38
    ld e, a
    rst $38
    cp a
    jr z, @+$01

    ld de, $eefc
    jr c, jr_04e_5e52

    inc e
    inc d
    ld d, $1a
    ld a, a
    ld h, c
    xor d
    or l
    dec bc
    ld c, e
    jp c, Jump_04e_64da

    ld h, h
    xor l
    nop
    ld e, d
    inc c
    ld [bc], a
    inc bc
    dec b
    rlca
    ld [bc], a
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    rra
    rra
    ld e, $22
    ccf
    ld [hl+], a
    ld a, a
    dec b
    rst $38
    rst $18
    rst $38
    cp a

jr_04e_5e52:
    rst $38
    rst $18
    push bc
    pop bc
    ld bc, $7fff
    ld a, [hl+]
    rst $38
    stop
    ld hl, sp+$03
    inc bc
    rlca
    rrca
    ld a, [de]
    ccf
    ld hl, $567f
    rst $38
    xor e
    rst $38
    rst $10
    cp a
    rst $38
    add h
    ld a, [$7f09]
    ld a, a
    rra
    rra
    rrca
    rrca
    add e
    add e
    ret nz

    ld b, b
    rst $08
    nop
    ld h, a
    ld b, $c0
    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$60], a
    add e
    ld bc, $0239
    ret c

    cp h
    cp h
    ld b, e
    ld a, h
    db $fc
    and e
    xor c
    ld bc, $fece
    add l
    ld bc, $0a64
    ldh [$f8], a
    sbc [hl]
    cp $7e
    cp $fc
    db $fc
    ld hl, sp-$08
    nop
    and e
    nop
    ld [hl], $04
    ld hl, sp-$10
    ldh a, [$60]
    ldh [$61], a
    add e
    ld bc, $0538
    ld a, h
    db $fc
    cp $fe
    call c, $25fc
    cp $83
    sbc a
    dec b
    db $fc
    db $fc
    cp b
    cp b
    ret nz

    ret nz

    add a
    nop
    and d
    nop
    inc bc
    and h
    ld bc, $0339
    ld bc, $1c01
    inc e
    adc c
    nop
    ld a, [de]
    ld d, $74
    adc h
    ld a, c
    ld c, c
    dec sp
    ld a, [hl+]
    inc de
    db $10
    ld b, $05
    dec c
    dec bc
    add hl, bc
    rlca
    ld de, $101f
    rrca
    jr z, jr_04e_5f26

    jr nz, jr_04e_5f28

    inc b
    ld b, h
    ld a, a
    ld b, h
    ld b, e
    ld [hl+], a

jr_04e_5eef:
    rst $38
    inc b
    dec [hl]
    db $fd
    ld e, b
    ld hl, sp-$80
    add $01
    ld [$0086], a
    add b
    ld [bc], a
    ld a, [hl]
    or e
    ld l, [hl]
    adc c
    nop
    adc d
    dec h
    rst $38
    dec b
    ld l, a
    rst $38
    ld e, a
    rst $38
    inc hl
    rst $28
    ld b, e
    jr nz, jr_04e_5eef

    rlc c
    db $eb
    ld bc, $f0e0
    ld [hl+], a
    pop af
    ldh [$29], a
    ld sp, hl
    ei
    ld a, [$f3f2]
    ld b, $05
    inc b
    rlca
    inc c
    dec de
    add hl, sp
    rst $30

jr_04e_5f26:
    pop af
    rst $28

jr_04e_5f28:
    db $e3
    rst $18
    jp nz, $84bf

    rst $38
    ld c, c
    rst $38
    cp d
    rst $38
    ld e, l
    rst $38
    and b
    ldh a, [$90]
    ld a, b
    jr c, @-$02

    inc e
    cp $3e
    cp $1e
    rst $38
    xor a
    rst $38
    sbc a
    add h
    ld bc, $10a7
    dec [hl]
    rst $38
    ld a, l
    rst $38
    db $ed
    db $fd
    ld a, h
    db $fd
    sbc $df
    cp a
    cp a
    ld a, $3f
    dec a
    ld a, a
    ld e, [hl]
    adc d
    ld bc, $00c5
    nop
    inc hl
    add b
    inc hl
    ret nz

    inc h
    ldh [rSB], a
    ld b, b
    ldh [$86], a
    ld [bc], a
    add b
    ld b, e
    rst $38
    pop af
    add hl, bc
    rst $28
    di
    xor $ff
    db $ec
    xor $f1
    pop af
    rst $38
    rst $38
    adc d
    nop
    sub l
    add l
    nop
    ldh [$09], a
    rst $38
    ccf
    ld hl, sp+$3b
    ld hl, sp+$7c
    sbc $5f
    or d
    cp [hl]
    and [hl]
    ld bc, $08ae
    rst $28
    dec e
    rst $08
    ccf
    inc b
    rst $38
    inc b
    ld a, [$8907]
    nop
    ret nc

    dec b
    ld a, l
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $38
    ld l, c
    dec bc
    jr jr_04e_5fdc

    ld b, [hl]
    ld b, [hl]
    rra
    add c
    rst $38
    adc b
    ld a, [hl]
    adc c
    inc [hl]
    ld a, e
    ld b, e
    db $10
    rra
    dec c
    jr c, jr_04e_6033

    cpl
    sbc a
    xor $9f
    or $97
    ld [hl], e
    sub e
    ld [hl+], a

jr_04e_5fbd:
    ld h, e
    inc bc
    ld [bc], a
    inc hl
    ld bc, $3fec
    ldh [$2b], a
    jr jr_04e_6004

    call nz, $fec2
    ld [bc], a
    ld a, [hl]
    add [hl]
    ld e, b
    ld hl, sp+$31
    pop af
    inc de
    ld a, [c]
    ld c, e
    ld a, [$9eef]
    ld e, e
    cp [hl]
    ld l, d
    sbc l

jr_04e_5fdc:
    jr nc, jr_04e_5fbd

    sub $ff
    ld e, c
    rst $38
    ret c

    ld [hl], a
    sbc l
    db $e3
    cp a
    ld [c], a
    ld a, a
    ld h, h
    ccf
    inc h
    ld a, [de]
    rla
    rra
    ld de, $393e
    ld b, e
    ccf
    jr nz, jr_04e_600b

    inc hl
    inc a
    rla
    jr jr_04e_6019

    add hl, de
    dec e
    ld [de], a
    ld a, $27
    cpl
    add hl, sp
    rra
    add hl, de

jr_04e_6004:
    ld [$0b0f], sp
    inc c
    dec b
    ld b, $02

jr_04e_600b:
    inc bc
    sbc l
    nop
    ld a, [hl+]
    ld a, [de]
    ld bc, $0601
    rlca
    db $fd
    rst $38
    rst $38
    ccf
    push de

jr_04e_6019:
    ld a, [hl-]
    jp c, $a035

    ld e, a
    ld d, a
    xor a
    xor [hl]
    ld e, c
    ld l, [hl]
    ld sp, hl
    sbc $b9
    rst $28
    jr @+$01

    add b
    ld a, a
    ld b, e
    ret nz

    rst $38
    ldh [$30], a
    jr nz, @+$01

    nop

jr_04e_6033:
    ld a, a
    add b
    sbc b
    rst $20
    ld h, h
    rst $38
    ld c, h
    rst $08
    adc e
    ld c, b
    cp $01
    rst $38
    inc hl
    cp a
    ld a, a
    ld b, a
    cp a
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [$9f]
    ldh a, [$1f]
    cp h
    ld a, a
    rst $38
    ccf
    ld a, l
    adc a
    adc [hl]
    rst $38
    ld [hl], l
    ld [hl], a
    inc c
    rrca
    ccf
    jr nc, @+$58

    ld l, c
    ld c, c
    ld a, a
    ccf
    ccf
    ld l, l
    rrca
    and $e6
    ld e, a
    ld sp, hl
    xor a
    ld hl, sp-$09
    ld hl, sp-$64
    ld [hl], e
    ld b, b
    cp a
    add b
    ld a, a
    ld e, $ff
    ld b, e
    cp d
    rst $20
    inc bc
    ei
    rst $00
    ei
    ld b, [hl]
    ld b, e
    rst $38
    nop
    ld bc, $03fd
    and h
    add l
    dec e
    ld b, b
    ld a, l
    add e
    rst $30
    adc a
    sbc c
    ld sp, hl
    ld l, b
    jp hl


    ldh [$1f], a
    ld a, b
    rst $38
    rst $20
    rst $38
    pop bc
    rst $38
    cp $ff
    nop
    rst $38
    ld hl, sp-$01
    ld b, $ff
    nop
    rst $38

Jump_04e_609f:
    ld [$8cff], sp
    ld [hl+], a
    rst $38
    ldh [$36], a
    cp c
    ld sp, hl
    ld [hl], c
    pop af
    ld de, $91f1
    ld [hl], c
    ret nc

    jr nc, jr_04e_60e1

    ldh a, [$e0]
    ldh [rP1], a
    ld b, $07
    add hl, bc
    rrca
    add hl, bc
    inc bc
    ld de, $1113
    ld e, $13
    jr jr_04e_60e1

    inc h
    ccf
    jp nc, Jump_04e_72cf

    rst $08
    daa
    rst $38
    ld a, $ff
    ld b, a
    cp $02
    rst $38
    dec b
    cp $06
    rst $38
    add l
    rst $38
    ret c

    ld l, a
    add sp, $3f
    and l
    ld a, a

jr_04e_60dc:
    ld h, d
    add h
    ld bc, $e007

jr_04e_60e1:
    ld hl, $3fd0
    ld h, b
    rst $38
    add b
    rst $38
    add hl, bc
    or $15
    ld [$f50a], a
    ld d, l
    ld_long $ff40, a
    add b
    rst $38
    inc e
    rst $38
    dec sp
    rst $20
    dec l
    ld a, [c]
    ld [hl], e
    db $fc
    ei
    add h
    ld a, [$7c8d]
    di
    ld [hl], e
    rst $08
    inc hl
    db $fc
    add hl, bc
    sub $fe
    xor c
    rst $38
    set 6, h
    sub d
    rst $38
    ld a, a
    ld a, a
    ld h, l
    ld a, [bc]
    inc b
    inc e
    add d
    and d
    ld h, [hl]
    jp nz, $c67e

    ld a, d
    rst $08
    ld sp, $ff44
    ld b, c
    add hl, de
    ld b, d
    cp $1c
    db $fc
    inc a
    db $fc
    sbc [hl]
    ld a, [hl]
    ld e, d
    cp $d6
    ld a, [hl]
    adc d

jr_04e_612f:
    cp $04
    db $fc
    call c, $08fc
    ld hl, sp+$10
    ldh a, [$60]
    ldh [rNR10], a
    ldh a, [rLYC]
    ld [$05f8], sp
    sub h
    db $fc
    ld h, h
    db $fc
    sbc b
    ld a, b
    ld b, e
    ld [$01f8], sp
    ld d, b
    ldh a, [rSCX]
    jr nz, jr_04e_612f

    ld b, l
    ld b, b
    ret nz

    xor l
    nop
    or b
    and a
    nop
    jr z, jr_04e_60dc

    nop
    and b
    dec bc
    ccf
    ld hl, $3e23
    inc de
    ld e, $0c
    rrca
    ld b, $07
    inc bc
    inc bc
    add e
    ld bc, $1100
    add b
    rst $38
    ld e, b
    rst $38
    db $e4
    ld a, a
    inc [hl]
    rst $08
    db $ec
    rra
    ld a, a
    adc a
    add e
    rst $38
    ld h, d
    ld a, a
    dec e
    rra
    adc c
    ld bc, $8716
    ld bc, $1860
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    adc l
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    adc h
    rst $38
    or d
    rst $08
    call z, Call_04e_6cf3
    sub e
    add sp, $37
    di
    rst $08
    inc c
    adc [hl]
    ld bc, $0bd1
    rst $38
    nop
    ld a, l
    add d
    sbc h
    db $e3
    ld b, d
    rst $38
    db $76
    rst $38
    adc h
    ld c, a
    add e
    nop
    db $fc
    dec bc
    ld a, a
    add b
    ld a, h
    add e
    di
    adc a
    sbc a
    rst $38
    ld l, b

jr_04e_61bb:
    ld sp, hl
    nop
    rst $38
    add e
    ld bc, $085c
    jp $c6ff


    rst $38
    db $fc
    rst $38
    ld bc, $feff
    add [hl]
    ld bc, $6b69
    inc de
    ld c, $0f
    dec de
    rla
    inc a
    inc hl
    ld a, l
    ld h, e
    ld a, l
    ld d, e
    ld [hl], b
    ld e, a
    ld a, c
    ld c, a
    ld h, a
    ld e, a
    daa
    ccf
    ld e, $1f
    add e
    ld [bc], a
    ld c, h
    ld bc, $0302
    sub l
    nop
    ld h, $05
    ldh [$e0], a
    ret nc

    jr nc, jr_04e_61bb

    jr c, jr_04e_6238

    ld [$04f8], sp
    sbc c
    ld sp, hl
    ei
    ld a, [$84cb]
    nop
    ld a, e
    add a
    rst $18
    nop
    rst $38
    add a
    ld [bc], a
    ld a, c
    add h
    nop
    call $020b
    inc bc
    inc b
    rlca
    dec c
    ld c, $11
    ld e, $13
    ld e, $db
    rst $10
    ld b, e
    inc a
    di
    nop
    add hl, hl
    adc b
    ld bc, $6397
    ld [de], a
    ret nz

    ret nz

    jr nc, @-$0e

    inc c
    db $fc
    add h
    ld a, h
    add d
    ld a, [hl]
    ld a, [hl-]
    and $32
    xor $e2
    cp $e6
    cp $fc
    adc b
    ld bc, $fff7

jr_04e_6238:
    ld a, d
    ld [bc], a
    ld bc, $3e1e
    ld [hl+], a
    ld b, b
    ld [bc], a
    ld [hl], b
    jr nz, @+$40

    ld b, e
    db $10
    rra
    jr jr_04e_6250

    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0201

jr_04e_6250:
    ld [bc], a
    dec b
    rlca
    ld [$100d], sp
    ld a, [de]
    jr nz, jr_04e_628e

    ld hl, $183f
    rra
    rlca
    rlca
    ld bc, $a5c9
    dec h
    ld bc, $81c3
    jp nc, $e0b9

    ld c, a
    ld [hl], b
    ld [hl], b
    adc [hl]
    sbc $85
    xor a
    add d
    rst $18
    add c
    cp a
    add b
    rst $38
    ld b, c
    ld a, a
    ld c, d
    ld a, a
    ld d, l
    ld a, a
    rst $38
    rst $38
    rla
    inc sp
    jr nc, @+$23

    jr c, @+$24

    jr jr_04e_62f6

    ld de, $1bf8
    pop af
    ld e, $f3
    inc a
    rst $20

jr_04e_628e:
    db $fc
    add $1c
    ld b, $08
    ld b, $78
    add [hl]
    ld hl, sp-$3a
    ld [hl], l
    rst $20
    xor l
    rst $20
    ld [hl], h
    rst $20
    xor [hl]
    db $e3
    ld e, a
    pop de
    set 1, b
    ret


    jp z, $8a89

    adc d
    sbc c
    sub a
    sub b
    rra
    inc de
    inc e
    rra
    ld bc, $063f
    ccf
    add hl, de
    ld a, a
    ld l, [hl]
    cp $f0
    ldh a, [rBCPD]
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    ld b, e
    ld [$e009], sp
    ld c, l
    db $10
    inc de
    ldh a, [$f3]
    and b
    db $e3
    ld h, [hl]
    rst $20
    ret


    ret


    ld c, e
    ret


    sub e
    sub b
    sub e
    ret nc

    ld h, e
    ldh [$80], a
    adc a
    ld bc, $3f10
    ccf
    ldh [$61], a
    add b
    add e
    nop
    rlca
    inc bc
    rst $38
    ld bc, $0807
    rrca
    inc d
    rra
    jr z, @+$3d

    ld d, b
    ld [hl], e
    ldh [$e7], a
    ret nz

    rst $08
    pop hl
    rst $38
    ld [bc], a

jr_04e_62f6:
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    ldh [$7f], a
    rst $38
    ccf
    ldh [rNR10], a
    ret nc

    rst $08
    inc hl
    ldh a, [$31]
    ld hl, sp-$37
    ld hl, sp+$3c
    db $fd
    call z, $07cd
    rlca
    dec b
    rlca
    ld b, e
    ld [bc], a
    inc bc
    add l
    nop
    ld d, h
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ld b, e
    and b
    ldh [rSCX], a
    ld d, b
    ldh a, [rNR33]
    dec hl
    ei
    ld h, $ff
    dec d
    rst $38
    ld [de], a
    rst $38
    adc e
    rst $38
    adc c
    rst $38
    push hl
    ld a, a
    rst $30
    rra
    db $fc
    inc c
    ldh a, [$80]
    pop af
    ret nz

    ld a, e
    ldh [$bf], a
    ldh a, [$df]
    ld hl, sp-$11
    ld hl, sp+$45
    rst $30
    db $fc
    ldh [$2b], a
    or $fc
    rst $30
    db $fc
    and a
    db $fc
    ld d, a
    db $fc
    xor a
    ld hl, sp+$5d
    ld hl, sp-$46
    ldh a, [$75]
    ldh [$fb], a
    ret nz

    db $fc
    add b
    cp $00
    di
    inc c
    rst $38
    ld a, $e1
    ld a, a
    ret nz

    ld a, a
    ldh a, [rIE]
    sbc $ff
    xor c
    ld sp, hl
    ld d, b
    ldh a, [$a0]
    ldh [$60], a
    ldh [$c0], a
    ret nz

    rlc b
    ld e, a
    rra
    ld c, $0f
    ld [hl], b
    ld [hl], a
    add b
    xor a
    nop
    ld e, a
    ld bc, $aaff
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    push de
    rst $38
    dec sp
    ccf
    ld a, a
    rra

Call_04e_638e:
    ldh a, [$38]
    ldh [rSVBK], a
    ret nz

    ld h, b
    ld b, b
    ret nz

    ret nz

    ld h, a
    ld b, e
    ldh [$3f], a
    inc b
    cp e
    ccf
    ld b, $07
    rra
    ld b, e
    ld bc, $09ff
    rlca
    ld a, [hl]
    rst $38
    rst $30
    ccf
    or $3f
    db $d3
    ld a, a
    adc d
    ld b, h
    rst $38
    adc e
    inc de
    ld b, l
    ld a, a
    dec h
    ccf
    and l
    scf
    pop hl
    dec hl
    ld [c], a
    di
    ld [bc], a
    di
    ld bc, $c1f9
    db $fd
    jr c, jr_04e_6403

    rlca
    rlca
    xor [hl]
    nop
    dec c
    inc bc
    add b
    ld b, b
    ret nz

    ld b, b
    inc h
    ret nz

    xor h
    nop
    ld c, [hl]
    ld de, $7080
    ld a, b
    ld b, $06
    inc bc
    rrca
    rlca
    rst $38
    ld a, [bc]
    cp $34
    db $fc
    ret z

    ld hl, sp+$30
    ldh a, [$60]
    ld [hl+], a
    ldh [rTAC], a
    sub b
    ldh a, [$08]
    ld hl, sp-$7c
    db $fc
    ld b, d
    cp $c3
    ld bc, $0598
    cp [hl]
    cp $f8
    ld hl, sp-$40
    ret nz

    or c
    nop
    ld b, d
    ld l, b
    nop
    inc b

Call_04e_6402:
    ld h, d

jr_04e_6403:
    inc c
    add hl, bc
    nop
    dec de
    nop
    rra
    nop
    ccf
    ld a, $3e
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    sub b
    nop
    ld d, h
    ld [$0001], sp
    dec d
    nop
    rlca
    nop
    dec bc
    nop
    rrca
    ld b, h
    ld bc, $0207
    inc bc
    ld bc, $9003
    and c
    inc b
    jr nz, jr_04e_642a

jr_04e_642a:
    ldh [rSB], a
    rst $38
    add l
    nop
    ld a, d
    ld [bc], a
    ld c, e
    ret z

    ld c, c
    adc h
    nop
    and e
    adc e
    nop
    ret nz

    add hl, bc
    db $10
    inc de
    jr nz, jr_04e_6462

    ld h, $27
    ld c, c
    ld c, c
    ld c, e
    ld c, c
    adc c
    nop
    sub $03
    inc a
    db $fd
    call nz, $abc5
    ld bc, $617c
    inc d
    add h
    ld hl, sp+$40
    rst $38
    and b
    cp $a0
    db $fc
    ld d, b
    cp $50
    rst $38

jr_04e_645e:
    jr z, jr_04e_645e

    inc h
    rst $38

jr_04e_6462:
    inc d
    rst $38
    ld [de], a
    rst $38
    adc d
    adc c
    ld bc, $0937
    rst $38
    adc $ff
    ld bc, $001f
    ld a, a
    nop
    inc bc
    nop
    and h
    nop
    or a
    ld bc, $c020
    and h
    ld [bc], a
    ld h, b
    ld bc, $0080
    ld [hl+], a
    ret nz

    inc bc
    jr nc, jr_04e_64b6

    ld a, a
    rra
    add l
    ld bc, $03b0
    cp $07
    ld a, [hl]
    rst $38
    ld b, e
    or $3e
    ld bc, $7ed2
    add [hl]
    ld bc, $04d0
    cp $07
    rst $38
    nop
    ldh [$b3], a
    nop
    ld [$0288], sp
    nop
    db $10
    rst $38
    inc [hl]
    rst $38
    ret z

    rst $38
    jr nc, @+$01

    ld b, b
    db $fd
    add b
    ld hl, sp+$00
    ld sp, hl
    nop
    ret z

    nop

jr_04e_64b6:
    ld b, b
    ld h, l
    adc d
    nop
    ldh [$0e], a
    ld bc, $0c08
    inc d
    ld e, $28
    ld a, [hl-]
    ld d, b
    ld [hl], d
    ldh [$e6], a
    ret nz

    call $fbe1
    add l
    nop
    ld a, [$6dff]
    rla
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rlca
    add hl, bc
    rrca

Jump_04e_64da:
    ld a, [bc]
    rrca
    ld [de], a
    dec de
    inc d
    ld c, $25
    inc hl
    add hl, hl
    jr nz, jr_04e_650f

    ld a, $2a
    ccf
    ld a, [hl+]
    ld b, e
    rra

jr_04e_64eb:
    dec d
    ld de, $0a0f
    rlca
    ld c, $01
    inc de
    db $10
    rla
    nop
    ccf
    daa
    ccf
    dec hl
    dec sp
    ld [de], a
    inc de
    ld bc, $ec03
    dec hl
    ldh [$27], a
    ld b, $0e
    rra
    inc sp
    ld a, a
    call z, $30ff
    rst $38
    ld b, c
    rst $38
    add [hl]

jr_04e_650f:
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, e
    rst $38
    adc h
    rst $38
    db $10
    ld a, a
    jr nz, jr_04e_64eb

    ld b, e
    sbc [hl]
    add a
    cp a
    adc a
    rst $30
    rla
    db $e3
    daa
    db $e3
    ld h, e
    and a
    xor a
    ld h, c
    ld [hl], c
    inc hl
    add c
    inc b
    ld b, e
    jp $c742


    ld b, b
    ld b, e
    rst $38
    add b
    ld [$40c7], sp
    ld b, b
    nop
    jr nz, jr_04e_653d

jr_04e_653d:
    db $10
    inc b
    inc c
    add [hl]
    db $eb
    dec bc
    ld bc, $0e07
    rla
    ld de, $1706
    ld a, [bc]
    ld a, [de]
    nop
    ld [bc], a
    nop
    adc $00
    ld c, $e0
    inc hl
    jr c, jr_04e_65ce

    db $fc
    add h
    ld hl, sp+$18
    ldh a, [rSVBK]
    db $fc
    adc a
    cp $02
    db $fc
    inc e
    rst $38
    db $e3
    rst $38
    nop

jr_04e_6566:
    rst $38
    rlca
    ld hl, sp+$38
    ldh [$e0], a
    jr jr_04e_6566

    rlca
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    push bc
    add c
    nop
    add b
    ld c, b
    rst $38
    ld bc, $0005
    rst $38
    nop
    ld a, a
    nop
    inc bc
    and l
    nop
    ld a, [bc]
    ld de, $7c3c
    dec de
    rla
    db $fd
    db $e3
    cp h
    ld b, d
    ld a, [hl]
    adc a
    pop af
    ld sp, $c240
    add b
    add d
    add e
    add e

jr_04e_659c:
    ld a, e
    ld [bc], a
    add b
    add b
    ret nz

    and h
    nop
    or a
    rla
    ld bc, $1d01
    ccf
    jp $0cff


    rst $38
    db $10
    rst $30
    jr nz, jr_04e_659c

    ld b, b
    rst $10
    add b
    xor a
    nop
    rst $10
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    add h
    add e
    ld b, h
    rst $38
    add b
    nop
    ld b, b
    jp $7800


jr_04e_65c7:
    jr @+$41

    rrca
    rrca
    jr nc, jr_04e_65fd

    pop hl

jr_04e_65ce:
    db $e3
    ld e, $12
    sub [hl]
    sbc d
    ld a, a
    ld h, e
    ei
    adc l
    ld a, a
    or c
    sub $da
    ld [bc], a
    ld d, $04
    inc d
    inc b
    inc c
    adc a
    nop
    nop
    add hl, bc
    ld a, [de]
    ld a, [de]
    inc a
    inc h
    ld a, h
    ld b, h
    ld a, b
    ld c, b
    ld a, c
    ld c, c
    ld b, e
    di
    sub d
    ld [de], a
    rst $20
    and h
    rst $28
    jr z, jr_04e_65c7

    ld c, c
    sbc $d2
    ld a, h
    db $f4

jr_04e_65fd:
    add hl, de
    sbc l
    inc bc
    jp nz, $e707

    jr c, jr_04e_65fd

    nop
    ld b, h
    ldh a, [rP1]
    inc de
    ld bc, $06e1
    cp $18
    ld hl, sp+$01
    ei
    ld [bc], a
    ld a, [c]
    inc b
    db $e4
    ld [$10e8], sp
    ldh a, [$e0]
    ldh [rLCDC], a
    ld b, b
    rst $00
    ld bc, $0437
    add b
    add b
    ld b, b
    ret nz

    ret nz

    or [hl]
    nop
    dec sp
    dec e
    add h
    add h
    ld d, h
    ld e, d
    ld a, $22
    ld a, [hl]
    ld b, d
    rst $38
    add a
    db $fd
    dec c
    pop af
    ld de, $21e1
    add $46
    adc a
    adc c
    rra
    ld de, $627e
    db $fc
    add h
    ld hl, sp+$08
    ldh a, [$30]
    jp $01b6


    ld b, b
    ld b, b
    add h
    ret


    ld [hl+], a
    add b
    ld bc, $8080
    db $ec
    add hl, hl
    add hl, de
    ld bc, $0703
    inc b
    rrca
    add hl, bc
    rra
    ld [de], a
    rra
    inc h
    ccf
    jr z, jr_04e_66a4

    ld c, c
    ld l, a
    ld d, d
    dec sp
    sub h
    adc l
    and h
    add e
    xor c
    ld a, [$feaa]
    xor d
    ld b, e
    ld a, a
    ld d, h
    inc de
    ccf
    add hl, hl
    ld a, [hl]
    ld a, d
    adc l
    call $fec2
    ld [hl], d
    ld a, [hl]
    add hl, de
    ccf
    dec c
    rra
    dec c
    rrca
    ld a, [de]
    rra
    ld b, $0f
    sub l
    nop
    ld a, [hl-]
    ldh [$2b], a
    db $10
    db $10
    add hl, sp
    add hl, hl
    ld a, e
    ld c, d
    ld a, a
    adc h
    rst $38
    jr nc, @+$01

    pop bc
    rst $38
    ld b, $ff
    jr @+$01

    ld h, b
    rst $38
    add e
    rst $38

jr_04e_66a4:
    inc c
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    add e
    inc a
    rrca
    ld a, b
    rra
    db $fc
    ccf
    rst $18
    ld e, a
    adc a
    sbc a
    adc a
    adc a
    sbc a
    cp a
    add a
    rst $00
    ld b, e
    ld b, $07
    inc b
    inc c
    rrca
    ld [$001f], sp
    ld b, l
    rst $38
    nop
    db $10
    add b
    ld b, b
    ret nz

    inc e
    inc a
    inc bc
    inc bc
    rrca
    inc e
    ld l, $23
    dec c
    ld l, $14
    dec [hl]
    ld bc, $9105
    pop hl
    ld e, $30
    jr nc, jr_04e_674f

    ld d, b
    ldh a, [$90]
    ldh a, [rNR10]
    db $ec
    inc l
    db $fc
    ld [hl], h
    rst $38
    rst $00
    rst $38
    dec c
    rst $38
    add hl, de
    rst $38
    ld h, e
    cp $82
    db $fc
    inc b
    ld hl, sp+$18
    rst $20
    rst $20
    ret c

    rst $38
    inc a
    ld b, l
    rst $38
    nop
    adc a
    nop
    rst $28
    ld b, e
    rst $38
    nop
    ld [bc], a
    db $eb
    nop
    ld d, h
    add l
    ld bc, $0b88
    rst $38
    rst $38
    ld a, b
    add [hl]
    cp $1f
    pop hl
    ld h, c
    add b
    add d
    nop
    ld [bc], a
    and a
    ld bc, $03d4
    jr jr_04e_6757

    ld a, a
    adc $8b
    ld [bc], a
    sub h
    jp $c501


    rrca
    ldh [$60], a
    ret nz

    ret nz

    ldh a, [$3c]
    ld hl, sp+$08
    ldh a, [rSVBK]
    cp $8e
    rst $38
    ld bc, $1efc
    adc e
    rst $18
    ld bc, $1f1d
    adc l
    ld bc, $8442
    ld [bc], a
    ld h, b
    ld [bc], a
    ld a, e
    adc h
    call z, $0287
    ld l, b
    inc bc
    rst $38
    rst $38
    rst $08
    rst $28
    ld [hl+], a

jr_04e_674f:
    rlca
    nop
    rlca
    add a
    ld [bc], a
    cp b
    add a
    nop

jr_04e_6757:
    add b
    rlca
    ei
    ccf
    jp $8363


    add e
    ld bc, $ff01
    db $ec
    add hl, hl
    inc b
    ld b, $0e
    nop
    ld de, $2200
    ld sp, $2e09
    ld l, $31
    jr nz, jr_04e_6791

    db $10
    rrca
    rrca
    ld bc, $6201
    inc e
    inc e
    ld bc, $4323
    ld [hl+], a
    rra
    ld h, d
    ld c, a
    ld e, h
    ld b, a
    ld b, c
    ccf
    inc hl
    inc e
    inc e
    nop
    ld bc, $0200
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a

jr_04e_6791:
    ld [bc], a
    ld bc, $0003
    ld bc, $0769
    ld bc, $0301
    rlca
    rrca
    rrca
    ld e, $1e
    inc h
    inc e
    ld b, e
    ld e, $0e
    nop
    rra
    ld [hl+], a
    rrca
    ldh [rNR42], a
    ld c, $0a
    inc c
    ld a, [de]
    inc e
    dec b
    ld c, [hl]
    inc d
    or a
    xor h
    and a
    cp h
    or a
    sbc h
    cp a
    ld l, b
    rst $18
    or b
    rst $38
    add a
    rst $38
    rst $08
    ld a, b
    add sp, $70
    ret c

    ld a, b
    rst $08
    cp $f1
    pop af
    ldh a, [$f0]
    ld b, b
    inc h
    ld h, b
    inc h
    ldh a, [rNR14]
    ldh [rNR10], a
    sub b
    sbc b
    sub b
    ld l, h
    ld l, h
    ld e, a
    sbc $7f
    cpl
    ld a, h
    inc l
    ld a, b
    ret z

    ld a, b

jr_04e_67e2:
    ld [$10f0], sp
    ldh [$e0], a
    xor d
    rst $18
    add hl, bc
    pop bc
    add e
    rst $00
    rlca
    adc a
    rrca
    rrca
    ld c, $1e
    ld c, $26
    ld e, $0b
    cp $fe
    adc $3e
    inc hl
    rra
    daa
    rra

Jump_04e_67ff:
    adc b
    ld a, h
    inc de
    ei
    ld b, e
    inc d
    db $f4
    rra
    rla
    rst $30
    inc de
    ei
    dec bc
    db $fc
    add a
    rst $38
    ldh a, [$7f]
    cp $0f
    ld a, a
    ld bc, $03fd
    ei
    db $fc
    rst $38
    ld b, b
    dec hl
    add b
    push de
    add b
    xor a
    add b
    rst $10
    add b
    xor a
    add b
    ld e, a
    add b
    ld b, h
    ld a, a
    ld b, b
    ld b, e
    jr nz, @+$01

    ld b, $10
    rst $38
    ret z

    dec e
    ld a, $03
    rlca
    ld l, l
    dec b
    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    ld l, a
    add hl, bc
    add b
    add b
    ldh a, [$fc]
    jr c, jr_04e_68b8

    sbc b
    cp b
    db $db
    call c, $d443
    rst $18
    jr jr_04e_67e2

    cp a
    and h
    ld a, a
    push bc
    rst $38
    add hl, bc
    rst $38
    ld [de], a
    cp $e2
    cp $f3
    rra
    rst $38
    rrca
    rst $38
    rra
    xor $1f
    cp $03
    rst $38
    ld bc, $43fb
    rlca
    rst $38
    nop
    inc bc
    ld b, e
    rst $38
    ld bc, $fe02
    inc bc
    rst $30
    ld b, e
    rrca
    rst $38
    inc b
    rlca
    ei
    rra
    pop bc
    ld sp, hl
    db $ec
    add hl, hl
    ld [bc], a
    add b
    ret nz

    ld h, b
    and e
    nop
    ld l, c
    ldh [$32], a
    ld hl, sp+$78
    db $fc
    adc h
    db $fc
    ld d, $8e
    ld a, [de]
    adc d
    ei
    adc e
    ld [hl], a
    ld [hl], e
    ei
    rlca
    db $fc
    adc a
    ldh a, [rIE]
    ld e, $ff
    ld hl, $40e1
    add $c8
    ret


    ret c

    ret


    rst $18
    and $6f
    pop af
    ccf
    rst $38
    ld a, [hl]
    cp $86
    add $82
    cp d
    ld [hl+], a
    ld h, $72
    ld h, $fc
    inc e
    db $fc
    add h
    ld [hl], b

jr_04e_68b8:
    ld a, b
    db $ec
    dec sp
    daa
    add b
    ld hl, sp+$29
    add b
    inc b
    ld bc, $0003
    inc b
    nop
    ld [hl+], a
    inc c
    rlca
    dec bc
    dec bc
    inc c
    ld [$0407], sp
    inc bc
    inc bc
    ld h, h
    ld a, [bc]
    inc e
    dec b
    ld c, [hl]
    inc c
    add a
    adc h
    add a
    cp h
    or a
    add h
    adc a
    adc b
    nop
    adc d
    inc b
    or b
    ld hl, sp+$38
    rst $28
    ld a, [hl]
    add a
    nop
    sbc b
    dec bc
    adc b
    ld a, h
    db $10
    ld hl, sp+$10
    ldh a, [rNR14]
    db $f4
    inc de
    di
    db $10
    ld hl, sp-$7d
    nop
    db $ec
    add hl, de
    jr c, jr_04e_6970

    jr jr_04e_6937

    dec de
    inc e
    ld d, h
    ld e, a
    sub e
    sbc a
    inc d
    ccf
    xor b
    ld a, h
    ret z

    db $fc
    rla
    db $f4
    inc de
    di
    rst $38
    ld hl, sp-$01
    inc c
    rst $38
    rra
    add l
    ld bc, $875a
    ld bc, $05a0
    ld hl, sp-$08
    ld a, b
    db $fc
    cp h
    ld a, h
    ld b, e
    sbc $5e
    ld [$9fb1], sp
    pop de
    ccf
    pop hl
    ld a, a
    add b
    rst $38
    nop
    add h
    ld bc, $8ebb
    ld [bc], a
    dec a
    db $10
    inc bc

jr_04e_6937:
    rlca
    ld b, $06
    rlca
    ld c, $0f
    inc c
    rrca
    ld [$090f], sp
    rrca
    nop
    inc c
    nop
    ld [$0087], sp
    ld [hl], b
    ldh [rNR52], a
    ccf
    ccf
    ld l, a
    sbc $2a
    inc e
    ld a, d
    inc a
    rst $08
    ld a, a
    rst $28
    cp a
    rst $38
    scf
    or $7f
    ld sp, hl
    db $fd
    or $f6
    ld h, c
    ld b, c
    ld h, b
    ld h, b
    ldh a, [rIE]
    cp $ff
    rrca
    ld sp, hl
    rra
    pop af
    rst $38
    jp nz, $0c7f

jr_04e_6970:
    ei
    ldh a, [$d5]
    add a
    ld [bc], a
    daa
    inc d
    rlca
    db $10
    jr jr_04e_69ec

    ld h, b
    adc a
    pop af
    pop hl
    rst $38
    ld sp, $987f
    cp a
    ret c

    rst $18
    call nc, $d7df
    rst $18
    sub h
    cp a
    add e
    ld [bc], a
    sbc h
    ld h, l
    ld b, $f0
    ldh a, [$6e]
    ld e, $f1
    rst $38
    db $fc
    ld b, [hl]
    rst $38
    cp $00
    inc a
    jp $cb02


    jr @+$01

    ld b, b
    rst $38
    jr nz, jr_04e_6a25

    ld e, b
    ld e, a
    sbc $5f
    or a
    sbc a
    db $db
    scf
    db $fd
    ld h, e
    rst $38
    add c
    rst $38
    ld bc, $1fff
    pop hl
    ld hl, $46c0
    add l
    ld bc, $07c2
    rst $28
    ld [hl], c
    rst $38
    ccf
    db $fc
    ld a, h
    add h
    call nz, $028b
    ld c, $02
    ld b, b
    ret nz

    jr nz, @-$3b

    nop
    cp d
    ld [bc], a
    ld hl, sp+$08
    ld hl, sp+$43
    inc e
    db $fc
    ld b, e
    ld e, $fe
    nop
    ld c, $83
    ld bc, $0870
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    add hl, sp
    ld a, a
    ld b, $0e
    and e
    ld [bc], a
    ld e, e

jr_04e_69ec:
    add a
    ld bc, $0040
    db $d3
    add [hl]
    rst $38
    rst $38
    ld l, e
    dec bc
    jr nz, jr_04e_6a68

    inc a
    ld a, [hl]
    inc de
    ccf
    jr jr_04e_6a1d

    inc c
    rra
    ld b, $0f
    ld b, e
    inc bc
    rlca
    ld b, e
    ld bc, $0003
    nop
    ld b, a
    ld bc, $0300
    rrca
    nop
    rlca
    nop
    add e
    adc l
    jr jr_04e_6a1d

    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$000f], sp

jr_04e_6a1d:
    rra
    ld de, $031f
    ccf
    daa
    ccf
    rrca

jr_04e_6a25:
    ld a, a
    ld e, a
    ld a, a
    ld a, h
    ld a, [hl]
    inc [hl]
    ld a, h
    jr nz, jr_04e_6a52

    ld a, a
    ld [hl+], a
    ld bc, $0322
    nop
    push bc
    ld [hl+], a
    rst $38
    nop
    rra
    ld b, e
    rst $38
    ccf
    ld h, $ff
    ldh [$2c], a
    rst $20
    rst $38
    pop hl
    rst $38
    cp h
    di
    ld e, a
    ldh a, [$3f]
    ldh a, [$5f]
    ld hl, sp+$2f
    rst $38
    rrca
    rst $28
    inc bc
    rst $28

jr_04e_6a52:
    nop
    ld [c], a
    db $10
    ld a, [c]
    nop
    ld a, [c]
    ld [$04fa], sp
    cp $0b
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    add l
    rst $38
    add d
    rst $38
    pop bc
    rst $38

jr_04e_6a68:
    ld b, d
    ld a, a
    ld d, l
    ld a, a
    cpl
    jp $86e9


    cp e
    ld bc, $ff7f
    inc hl
    ld a, a
    ld bc, $fefe
    ld h, h
    ld [hl+], a
    ld [$1805], sp
    inc e
    inc c
    dec a
    sbc a
    cp a
    dec l
    rst $38
    nop
    cp $44
    rst $38
    db $fc
    ld b, $ee
    rst $38
    ld l, [hl]
    rst $38
    sbc a
    ld a, a
    rst $18
    ld b, e
    cp a
    rst $38
    dec b
    rst $38
    cp $ff
    ldh [$f8], a
    nop
    ld c, b
    jr nz, jr_04e_6a9f

jr_04e_6a9f:
    ld [$ffc0], sp
    ld a, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    add h
    add e
    nop
    ld a, a
    inc l
    rst $38
    dec b
    rst $08
    rst $38
    add e
    rst $00
    ld bc, $c703
    nop
    ld l, e
    ld b, $10
    db $10
    jr nc, jr_04e_6b2e

    ldh a, [$f0]
    rst $38
    xor d
    and l
    jp $0b87


    ld sp, hl
    rst $38
    rst $20
    ld sp, hl
    rst $18
    pop hl
    ccf
    pop bc
    ld a, a
    and c
    rst $38
    inc hl
    add e
    sub c
    inc b
    ldh a, [$fe]
    nop
    jp nz, Jump_04e_4300

    ld b, d
    nop
    ld b, $43
    ld bc, $0743
    ld c, a
    rrca
    ld a, a
    dec sp
    rst $38
    ld b, $fe
    rst $38
    pop af
    pop af
    ret nz

    ldh [rP1], a
    and [hl]
    rst $18
    ld c, $01
    inc bc
    inc c
    rra
    ld [hl], c
    rst $38
    add a
    rst $38
    ld c, a
    rst $38
    xor [hl]
    rst $38
    ld e, [hl]
    rst $38
    cp $43
    cp $fc
    ld bc, $f8fc
    inc h
    db $fc
    call nz, $d100
    inc b
    rst $38
    cp a
    rst $38
    ccf
    cp a
    inc h
    ccf
    inc bc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub h
    call $fe00
    add e
    or l
    xor b
    sbc e
    nop
    cp a
    add h
    adc a
    ld [bc], a
    sbc [hl]
    cp $5b
    and h
    nop
    cp a
    nop
    ld h, b

jr_04e_6b2e:
    ld b, e
    ldh [$c0], a
    inc b
    ret nz

    add b
    add b
    nop
    add b
    ld l, a
    ld bc, $c040
    and l
    ld bc, $a51c
    nop
    ld e, $07
    add b
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    add e
    ld sp, hl
    dec c
    sbc $fe
    xor [hl]
    cp $d6
    rst $38
    xor e
    rst $38
    scf
    rst $38
    ld e, $3f
    ld [de], a
    ld [de], a
    ld a, c
    dec d
    ld [bc], a
    rlca
    inc c
    rrca
    nop
    rra
    db $10
    ccf
    ld hl, $033f
    ld a, a
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    jr c, @+$7e

    jr nz, jr_04e_6b9b

    ld l, c
    ld [bc], a
    ldh [$fc], a
    nop
    ld c, d
    jr nz, jr_04e_6b7b

jr_04e_6b7b:
    inc bc
    ld b, b
    ldh a, [rP1]
    ld b, d
    add a
    ld bc, $0150
    inc bc
    ld b, a
    add a
    ld bc, $0358
    cp a
    rst $38
    cp a
    cp a
    add a
    ld bc, $8aa8
    ld [bc], a
    nop
    inc b
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$59

jr_04e_6b9b:
    ld bc, $09ac
    rst $18
    rst $38
    xor a
    rst $38
    sub $ff
    ld a, $3e
    inc d
    inc d
    ld [hl], e
    add hl, bc
    jr nz, jr_04e_6bdc

    jr jr_04e_6bea

    ld d, $3f
    dec de
    rra
    add hl, bc
    rra
    ld b, e
    inc c
    rrca
    inc bc
    ld b, $0f
    ld b, $07
    adc h
    nop
    jr @+$04

    ld bc, $0100
    sub h
    nop
    ld e, b
    ld a, [bc]
    add e
    add e
    db $e3
    rst $20
    rst $38
    db $e3
    rst $38
    cp c
    rst $30
    ld e, h
    di
    add a
    nop
    adc b
    adc h
    nop
    and b
    ld bc, $5fff
    add h

jr_04e_6bdc:
    nop
    ld [hl], e
    nop
    ld a, a
    and [hl]
    ld bc, $0fc3
    ld a, [hl]
    ld a, a
    cp $fe
    db $fc
    rst $38

jr_04e_6bea:
    sbc $ff
    xor $ff
    ld l, a
    rst $38
    rra
    rst $38
    rst $38
    cp a
    adc l
    ld bc, $010c
    inc bc
    add a

jr_04e_6bfa:
    add e
    push hl
    adc c
    ld bc, $03be
    pop hl

Jump_04e_6c01:
    pop af
    nop
    ret nz

    call nz, $0ff3
    inc bc
    dec b
    rrca
    dec bc
    rra
    inc de
    ccf
    ld b, a
    rst $38
    add [hl]
    rst $38
    ld c, [hl]
    cp $ae
    cp $5e
    add l
    ld bc, $8695
    ld bc, $8b99
    ld bc, $83c0
    ld bc, $01ce
    add b
    add b
    adc [hl]
    ld bc, $00ea
    add b
    adc l
    sub c
    jr jr_04e_6c3e

    ld e, a
    scf
    cp a
    ld a, [bc]
    ld e, a
    dec b
    xor a
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d

jr_04e_6c3e:
    db $fc
    cp $e8
    db $fd
    ret nc

    ld a, [$d580]
    add b
    and [hl]
    adc a
    ld a, [bc]
    cpl
    cpl
    ld bc, $0015
    ld a, [bc]
    nop
    jr nz, jr_04e_6c53

jr_04e_6c53:
    ld d, h
    nop
    add e
    ld [bc], a
    ld d, l
    ld b, $a0
    cp a
    cp a
    ld d, a
    ld d, a
    nop
    xor d
    and h
    add c
    nop
    ld b, l
    ld h, e
    inc b
    rst $38
    rst $38
    call c, $28dd
    add e
    adc a
    inc b
    ld [bc], a
    nop
    ld b, c
    nop
    and b
    ld h, c
    nop
    jr z, jr_04e_6bfa

    or a
    inc b
    and b
    nop
    dec b
    nop
    ld a, [bc]
    add e
    ld [bc], a
    dec a
    ld bc, $4500
    rst $38
    db $ec
    inc hl
    dec bc
    jr nc, @+$72

    rrca
    sbc a
    add b
    rst $08
    ld h, b
    ld a, a
    inc e
    rra

Jump_04e_6c92:
    inc bc
    inc bc
    ld h, l
    add hl, bc
    ld b, $0e
    ld bc, $1013
    inc de
    ld [$040d], sp
    rlca
    ld b, e
    ld [bc], a
    inc bc
    ld bc, $0101
    push bc
    sub d
    dec b
    inc e
    rra
    ld hl, $1e3f
    ld e, $c5
    adc b
    nop
    nop
    ld [hl+], a
    ld [bc], a
    ld bc, $0101
    ld [hl], l
    add l
    sbc l
    ldh [rNR50], a
    nop
    inc b
    dec b
    dec b
    ld c, $0e
    add hl, bc
    dec bc
    nop
    inc c
    inc b
    inc d

jr_04e_6cc9:
    inc de
    ld [de], a
    pop de
    pop de
    ccf
    rst $38
    jr jr_04e_6cc9

    nop
    ldh a, [$93]
    ldh a, [rBGP]
    ld h, e
    ld l, h
    ld h, h
    add hl, sp
    add hl, hl
    cp e
    db $eb
    ld a, e
    ei
    rlca
    db $fd
    ld bc, $ff46
    nop
    rla
    ldh [rIE], a
    sub b
    rst $38
    ld [$64ff], sp
    rst $38
    sbc h
    sbc a
    inc c
    rrca
    inc d

Call_04e_6cf3:
    rra
    jr z, jr_04e_6d32

    ret z

    db $fc
    ld [$347f], sp
    rst $30
    jp $86c3


    adc $24
    ld bc, $44e0
    inc bc
    inc bc
    dec l
    ld l, l
    db $10
    sub b
    cp b
    adc b
    cp a
    add a
    ld a, [hl]
    ld b, h
    ld a, a
    ld c, b
    ccf
    jr nc, jr_04e_6d34

    ld bc, $8efe
    ld [hl], b
    ld [hl], b
    add b
    add b
    ld h, b
    ld [hl], b
    jr c, @+$0a

    sbc a
    rlca
    db $ed
    inc b
    cp $88
    rst $38
    ldh a, [$7f]
    nop
    rst $38
    ld bc, $81ff
    ld a, a
    ld b, e
    dec a
    daa

jr_04e_6d32:
    jr c, @+$41

jr_04e_6d34:
    ld h, e
    ccf
    call c, $a87c
    add sp, $5b
    ret z

    rst $18
    sbc b
    rst $38
    sbc a
    db $fd

jr_04e_6d41:
    cp h
    rst $38
    call z, $c67f
    ccf
    di
    rrca
    push bc
    db $eb
    inc b
    rst $38
    ld c, $fe
    jr nc, jr_04e_6d41

    and [hl]
    nop
    ld b, d
    ld [bc], a
    add b
    ld b, b
    ld b, b
    ld b, e
    ld h, b
    jr nz, jr_04e_6d5d

    rst $38

jr_04e_6d5d:
    rra
    ld b, e
    ld hl, sp+$08
    ldh [$37], a
    ld [hl], c
    sub b
    ld a, h
    ld a, h
    inc bc
    add e
    ld [bc], a
    nop
    dec b
    nop
    dec bc
    nop
    push af
    ldh [$1f], a
    jr jr_04e_6da3

    inc b
    rla
    ld [bc], a
    cpl
    ld bc, $f0ff
    rrca
    inc c
    rrca
    ld [bc], a
    rst $38
    ld bc, $70ff
    adc a
    adc h
    daa
    ld h, $67
    ld h, d
    ld l, a
    ld h, e
    inc a
    daa
    ld hl, sp-$61
    add b
    rst $38
    ld h, b
    ld a, a
    ld [hl], b
    rra
    ldh a, [rIF]
    ld hl, sp-$11
    ld hl, sp-$01
    ld b, e
    ld hl, sp+$0f
    inc bc
    ldh a, [$1f]
    ldh [$7f], a

jr_04e_6da3:
    and l
    nop
    sbc [hl]
    inc bc
    ld hl, sp-$01
    rlca
    rlca
    or c
    nop
    ld h, h
    ldh [$2d], a
    ld [hl], b
    ld [hl], b
    cp h
    inc e
    ld e, a
    dec bc
    rst $38
    ld [$04ff], sp
    rst $38
    add h
    rst $38
    ld b, h
    rst $38
    ld e, [hl]
    rst $38
    ld hl, $40ff
    ld a, a
    call z, $926f
    db $fd
    sub d
    rst $38
    sub b
    rst $38
    sub e
    db $fc
    ld c, a
    ld hl, sp+$4f
    pop af
    cp a
    db $e3
    cp [hl]
    rst $20
    ld a, a
    ld hl, sp+$7e
    ret nz

    db $fc
    nop
    ld sp, hl
    add l
    ld bc, $0010
    inc bc
    ld b, h
    rst $38
    inc b
    ld [bc], a
    ld c, $ff
    add hl, bc
    add h
    or [hl]
    rrca
    rlca
    rst $38
    ld [bc], a
    cp $02
    adc $01
    rst $00
    ld bc, $01e7
    rst $38
    ld [c], a
    cp $1c
    inc e
    or l
    nop
    ld h, b
    ld bc, $c040
    ld b, e
    and b
    ld h, b
    ld b, e
    ldh a, [$50]
    ld b, h

jr_04e_6e0a:
    ld hl, sp-$78
    inc d
    ld c, b
    db $fc
    ld b, h
    db $fc
    db $fc
    inc b
    call z, $e202
    ld a, [c]
    ld a, [c]

jr_04e_6e18:
    db $fc
    inc l
    db $fc
    db $e4
    inc e
    sub h
    inc e
    inc [hl]
    jr c, jr_04e_6e86

    ld b, e
    ld a, b
    ret z

    add hl, de
    ld hl, sp-$78
    or $16
    ld sp, hl
    sbc c
    pop hl
    ei
    ld [bc], a
    cp $0c
    db $fc
    ldh a, [$f0]
    ld b, b
    ret nz

    jr nz, jr_04e_6e18

    db $10
    ldh a, [$90]
    or b
    sub b
    sub b

jr_04e_6e3e:
    ld h, b
    ld h, b
    jp c, Jump_04e_7300

    add [hl]
    nop
    ld b, c
    adc c
    nop
    ld b, [hl]
    add a
    nop
    sub b
    ld [$f9f9], sp
    dec b
    dec e
    rlca
    ld a, l
    add hl, bc
    rst $38
    jr nc, @-$5a

    ld bc, $01b9
    ld h, b
    ld a, a
    add a
    nop
    xor b
    add h
    ld bc, $02b9
    add e
    ld a, l
    ld h, a
    add a
    nop
    ld hl, sp-$74
    ld bc, $0840
    jr nc, jr_04e_6e3e

    ld c, h
    and a
    and [hl]
    daa
    ld [hl+], a
    cpl
    inc hl
    adc c
    ld bc, $0a56
    rst $38
    ld a, [hl]
    pop hl
    ld h, c
    ret nz

    di
    ld b, b
    rst $38
    jr nz, @+$01

    jr jr_04e_6e0a

jr_04e_6e86:
    ld bc, $8ebb
    ld [bc], a
    nop
    nop
    inc h
    ld b, e
    db $fc
    ld b, h
    ld bc, $c4f8
    ld b, l
    ld hl, sp-$78
    add e
    ld [bc], a
    inc e
    ld c, $00
    jr c, jr_04e_6edd

    ld b, h
    ld b, b
    ld h, d
    ld b, c
    ld [hl], e
    jr nz, jr_04e_6ee3

    db $10
    rra
    inc c
    rrca
    inc bc
    adc d
    ld [bc], a
    ld c, a
    rlca
    ccf
    ccf
    ld b, b
    ld a, a
    ld b, c
    ld h, a
    ld a, $3e
    rst $00
    ld bc, $057d
    ld [$080c], sp
    rrca
    rlca
    rlca
    adc e
    nop
    or b
    inc bc
    ld b, e
    jp $8080


    adc l
    ld [bc], a
    add b
    dec b
    xor h
    db $ec
    ld e, a
    rst $18
    rst $18
    sbc a
    ld b, e
    rst $38
    cp a
    inc bc
    cp $fc
    ld l, a
    adc $83
    ld bc, $850c

jr_04e_6edd:
    ld bc, $0260
    ret c

    rst $08
    ld a, b

jr_04e_6ee3:
    add [hl]
    ld bc, $0d69
    cp $5e
    pop hl
    ld h, c
    add c
    rst $08
    ld [bc], a
    cp $1c
    db $fc
    db $fc
    db $e4
    db $fc
    inc h
    adc l
    ld [bc], a
    adc $17
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$f0]
    ld c, $fe
    ld bc, $f1f1
    ei
    ld c, [hl]
    adc $30
    ldh a, [$0c]
    db $fc
    add d
    ld [c], a
    ld b, d
    ld [hl], d
    ld [hl+], a
    ld a, $8b
    ld bc, $ffda
    ld [hl], a
    inc h
    ld bc, $0245
    inc bc
    ld c, b
    inc b
    rlca
    ld bc, $0601
    ld c, c
    inc bc
    ld [bc], a
    rla
    rlca
    inc b
    dec b
    inc b
    ld a, [de]
    jr jr_04e_6f6b

    jr nz, jr_04e_6f4d

    ld [de], a
    rrca
    ld c, $03
    inc bc
    rlca
    rlca
    jr jr_04e_6f4f

    nop
    jr nc, jr_04e_6f5b

    jr nz, jr_04e_6f3f

    ld b, b
    ld b, e
    ld b, a

jr_04e_6f3f:
    ld b, c
    rlca
    rlca
    ld h, e
    ld h, $22
    ld d, $12
    inc c
    inc c
    adc a
    jp nc, $070b

jr_04e_6f4d:
    ld c, $12

jr_04e_6f4f:
    db $10
    jr nz, jr_04e_6f72

    ld b, c
    ld b, b
    res 0, b
    ei
    add b
    ld c, e
    rst $38
    nop

jr_04e_6f5b:
    inc c
    rst $28
    nop
    ret


    nop
    pop bc
    nop
    call nz, $ce00
    nop
    db $ed
    nop
    cp $88
    sub l

jr_04e_6f6b:
    ld [bc], a
    ld a, a
    nop
    cp e
    ld b, e
    inc b
    rst $38

jr_04e_6f72:
    ld a, [de]
    ld b, h
    ei
    call z, $cc7b
    scf
    ld hl, sp-$44
    rst $38
    ld h, e
    ld h, e
    add c
    add b
    add l
    and h
    pop hl
    and [hl]
    ld a, a
    db $e3
    inc e
    rst $38
    add b
    rst $38
    ld e, b
    ld a, a
    daa
    daa
    call nz, $1b00
    rrca
    ld bc, $0602
    inc c
    jr @+$12

    jr nz, jr_04e_6fba

    ld b, b
    ld a, [bc]
    ldh [rHDMA5], a
    nop
    ld a, [hl+]
    nop
    dec d
    add e
    add sp, $01
    nop
    ld h, l
    call $0bd1
    nop
    rst $38
    nop
    ld l, a
    nop
    ld c, a
    nop
    rra
    nop
    ld e, a
    nop
    cp a
    adc d
    sub e
    ldh [$2c], a

jr_04e_6fba:
    ld a, a
    add b
    db $eb
    add b
    sub $80
    rst $38
    ld b, h
    rst $38
    ld b, [hl]
    cp e
    ld l, [hl]
    add hl, sp
    rst $38
    ld b, [hl]
    rst $00
    add c
    add e
    push bc
    add c
    db $e3
    add b
    ld h, e
    ret nz

    inc hl
    ldh [$27], a
    ldh [rBGP], a
    pop bc
    adc [hl]
    add d
    inc a
    inc c
    ldh a, [$f0]
    ld hl, sp-$04
    rlca
    inc bc
    inc bc
    nop
    rlca
    nop
    rrca
    add h
    cp c
    nop
    cp a
    xor d
    nop
    adc a
    inc bc
    xor $00
    and $00
    ld b, l
    ldh a, [rP1]
    nop
    push af
    adc [hl]
    db $eb
    nop
    ei
    ld b, h
    inc b
    rst $38
    ld de, $06f9
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    db $fc
    inc de
    rst $20
    add hl, de
    rst $38
    ld c, c
    ei
    ld l, h
    sbc e
    db $fc
    inc hl
    call c, $00c5
    ld a, h
    dec bc
    db $fd
    add d
    xor d
    push de
    call nz, $b1bb
    rst $18
    xor d
    xor $44
    ld b, h
    ld h, l
    ld [$c0c0], sp
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$43
    inc b
    db $fc
    ld b, h
    ld [bc], a
    cp $0e
    or $02
    and d
    ld bc, $0183
    inc bc
    ld bc, $0107
    sub a
    ld bc, $009f
    rst $18
    add h
    rst $10
    adc b
    db $d3
    nop
    ld [bc], a
    ld b, e
    cp $03
    ld b, e
    rst $38
    ld bc, $21e0
    db $fd
    inc bc
    ei
    dec b
    push de
    ld a, [hl+]
    xor d
    ld d, l
    ld d, h
    xor e
    add b
    rst $38
    ret nz

jr_04e_705e:
    ld a, a
    ld h, c
    cp a
    sbc [hl]
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    nop
    rst $38
    jr jr_04e_705e

    adc $f7
    add hl, sp
    add hl, sp
    db $ec
    inc h
    dec hl
    add b
    ld c, d
    ld b, b
    ret nz

    ld bc, $6080
    ld b, e
    ldh [rNR41], a
    ld b, l
    ldh [$a0], a
    ld b, e
    and b
    ldh [rSCX], a
    db $10
    ldh a, [$0d]
    inc c
    db $fc
    ld [bc], a
    cp $3c
    db $fc
    db $10
    ldh a, [$88]
    ld hl, sp+$78
    db $fc
    ld b, b
    ret nz

    jp $8501


    sub e
    nop
    ld [hl], $0b
    jr nz, jr_04e_70c1

    inc hl
    jr nz, jr_04e_70f3

    ld b, b
    ld e, a
    ld b, a
    ld [hl], c
    ld d, c
    ld [hl+], a
    inc hl
    rst $08
    nop
    add hl, de
    nop
    cp $8b
    nop
    sub a
    inc b
    adc h
    ld a, h
    rst $38
    ld h, e
    db $e3
    add l
    nop
    xor h
    inc de
    rst $38
    db $e3
    inc e
    rst $38

jr_04e_70c1:
    ld b, $ff
    ld h, $ff
    sub d
    rst $38
    ld c, b
    ld a, a
    ld b, [hl]
    ld a, a
    add e
    cp a
    db $e4
    db $e4
    jr jr_04e_70e9

    ld h, d
    ld bc, $bf00
    adc c
    nop
    rst $30
    ld c, $40
    rst $38
    ld b, h
    ccf
    and $1b
    cp $b9
    rst $38
    adc $c7
    pop bc
    add e
    ld b, e
    add b
    ld b, e

jr_04e_70e9:
    ld h, e
    ret nz

    db $10
    rst $00
    pop bc
    sbc [hl]
    add a
    ld a, b
    rst $38
    nop

jr_04e_70f3:
    rst $38
    add c
    rst $38
    ld b, b
    ld a, a
    ld e, l
    ld e, l
    ld h, e
    ld h, e
    nop
    adc c
    ld bc, $0c4f
    inc d
    ld sp, hl
    ld d, $e3
    ld e, $fb
    ld c, [hl]
    ld hl, sp+$7f
    add a
    ld sp, hl
    ld a, a
    add c
    add d
    pop bc
    ld b, h
    add b
    rst $38
    dec bc
    ld a, a
    add b
    cpl
    ret nc

    ld d, l
    xor d
    ld a, [bc]
    push af
    ld [de], a
    rst $38
    xor e
    rst $28
    add l
    ld bc, $457c
    inc bc
    ld [bc], a
    rrca
    inc de
    ld [de], a
    dec a
    inc l
    ld l, $30
    inc de
    ld e, $0e
    dec c
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    adc c
    nop
    ld b, [hl]
    nop
    cp $88
    nop
    sub e
    rrca
    rst $38
    nop
    ei
    ld b, h
    db $eb
    sbc h
    ld [hl], a
    ld hl, sp+$7f
    add b
    rst $38
    jr nz, jr_04e_71cc

    add b
    cp l
    cp $85
    nop
    xor d
    adc e
    nop
    ldh a, [$0d]
    ld l, e
    add b
    rst $10
    add c
    rst $10
    ld l, h
    db $fd
    ld a, $f3
    rrca
    cp $41
    ld sp, hl
    ld e, $85
    ld bc, $070a
    cp $8f
    db $dd
    ld h, a
    db $dd
    rst $38
    ld h, e
    sbc h
    ld b, a
    rst $38
    nop
    ld bc, $aa55
    add l
    ld bc, $03c2
    add b
    rst $38
    ld h, c
    rst $38
    add e
    ld bc, $01cc
    rst $38
    ld [de], a
    adc l
    ld bc, $0562
    call nc, $a82b
    ld d, a
    ret nz

    cp a
    add l
    sbc e
    inc bc
    and b
    ld e, a
    ld b, b
    cp a
    add e
    ld [bc], a
    inc h
    nop
    ld h, b
    jp $2202


    add [hl]
    ld [bc], a
    add hl, hl
    rst $38
    db $ec
    ld d, c
    ld d, $01
    ld bc, $0302
    dec c
    rrca
    inc de
    rra
    inc bc
    rra
    dec b
    rra
    ld [bc], a
    rrca
    dec c
    rra
    ld [bc], a
    rlca
    nop
    ld bc, $0200
    nop
    ld hl, sp+$39
    sub [hl]
    ld de, $0201
    ld b, $08
    ld [$1010], sp
    nop
    jr nz, jr_04e_71fa

    jr nz, jr_04e_71f6

jr_04e_71cc:
    jr nz, jr_04e_71e3

    ld b, b
    ld l, d

jr_04e_71d0:
    ld b, b
    ld [hl], l
    ld c, h
    ld b, b
    ld a, a
    ld b, e
    rst $38
    ret nz

    dec d
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    cp b
    ld c, a
    rst $38
    sbc e
    rst $38

jr_04e_71e3:
    or $ff
    xor b
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    ld [$5500], a
    nop
    ld a, [bc]
    db $ec
    dec [hl]
    dec de
    ld hl, sp-$04
    ccf
    inc bc

jr_04e_71f6:
    rra
    nop
    ld a, $00

jr_04e_71fa:
    ld e, a
    ld b, c
    ld a, a
    ld h, c
    rst $38
    ld h, c
    ld a, a
    ld h, b
    rst $38
    rrca
    db $fc
    inc de
    ld a, [c]
    ld hl, $33ec
    ldh a, [$1f]
    rst $38
    rrca
    ld b, l
    rst $38
    nop
    dec d
    cp $0f
    rst $30
    ccf
    push bc
    ld a, a
    adc d
    rst $38
    push de
    rst $38
    cp d
    rst $38
    ld [hl], l
    rst $38
    ld e, d
    rst $38
    xor l
    rst $38
    ld d, e
    rst $30
    jr nz, jr_04e_71d0

    ldh a, [rNR50]
    nop

jr_04e_722b:
    ld a, a
    ld b, $03
    inc b
    inc c
    jr @+$1a

    ld [hl+], a
    ld [hl+], a
    inc hl
    ld b, [hl]
    rrca
    ld d, a
    add [hl]
    xor a
    add e
    rst $18
    add h
    xor h
    adc b
    ei
    adc h
    db $fc
    add a
    rst $38
    add e
    rst $38
    ld b, b
    ld b, [hl]
    rst $38
    jr nz, jr_04e_722b

    ld a, [hl+]
    db $10
    rst $38
    sub b
    ld a, a
    ret nc

    dec [hl]
    ld a, [$f53a]
    ld [hl], l
    jp c, $95fa

    push af
    rra
    ei
    rra
    ld e, a
    cp a
    cp a
    ld e, a
    ld e, d
    cp a
    cp l
    rst $38
    ld a, [$77ff]
    rst $38
    and e
    rst $38
    ld b, a
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    ld c, $7f
    inc e
    cp [hl]
    nop
    dec b
    ldh a, [rNR44]
    nop
    ldh a, [rTMA]
    ld a, [hl]
    inc bc
    ccf
    nop
    cpl
    ld [$457f], sp
    jr @+$01

    ldh [rLCDC], a
    ldh [$9f], a
    ld [hl], b
    rrca
    ld a, b
    adc a
    ld a, b
    rra
    ldh a, [rIE]
    ldh [rIE], a
    nop
    db $fd
    inc bc
    db $f4
    inc c
    ldh a, [rNR10]
    ld [$9520], a
    ld b, b
    ei
    ld d, c
    ld [hl], a
    pop de
    rst $38
    sub c
    rst $38
    ld hl, sp-$19
    sbc h
    sub e
    ld c, $63
    sbc [hl]
    add a
    db $fc
    rst $38
    ld hl, sp-$29
    xor b
    xor e
    call nc, $f8f7
    rst $18
    db $fc
    xor e
    cp $f5
    rst $38
    cp d
    rst $38
    ld d, h
    rst $38
    ld a, [bc]
    rst $18
    rla
    cp a
    nop
    ld d, l
    nop
    ld a, [hl+]
    db $f4
    inc h
    ld bc, $024a
    add b

Jump_04e_72cf:
    ret nz

    ld b, b
    ld b, h
    ldh [rNR41], a
    ld c, [hl]
    db $10
    ldh a, [rTAC]
    ld hl, sp-$08
    ld a, [hl]
    ld b, $3f
    ld bc, $007f
    ld c, b
    rst $38
    add b
    nop
    nop
    add [hl]
    ld bc, $022e
    ld bc, $02fd
    adc b
    add e
    inc c
    ld a, c
    sbc a
    rst $38
    ld a, [hl+]
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    nop
    ld b, b
    db $ec
    ld b, e
    ld [bc], a
    add b

Jump_04e_7300:
    add b
    add b
    ld b, l
    ld b, b
    ret nz

    ld c, b
    jr nz, @-$1e

    dec d
    and b
    ld h, b
    ld h, b
    or b
    cp b
    ld a, h
    ld l, h
    cp h
    or [hl]
    ld e, [hl]
    ld e, d
    cp [hl]
    or $7e
    call c, $a8fe
    db $fc
    ld d, b
    ld hl, sp-$60
    ldh a, [$ae]
    nop
    ld l, b
    rrca
    inc bc
    nop
    inc c
    nop
    db $10
    ld [bc], a
    ld [hl+], a
    ld h, $26
    ld b, $46
    ld d, a
    ld b, [hl]
    ld l, a
    ld b, e
    ld e, a
    adc c
    ld bc, $477f
    add b
    rst $38
    add [hl]
    ld bc, $f089
    ld hl, $d801

jr_04e_7340:
    ld b, a
    rst $38

jr_04e_7342:
    nop
    add l
    ld bc, $8dfa
    ld [bc], a
    ld c, b
    add e
    ld [bc], a
    and $8d
    ld [bc], a
    ld d, [hl]
    call z, Call_04e_7400
    jr jr_04e_735a

    nop
    ld [$1000], sp
    inc b
    inc d

jr_04e_735a:
    inc c
    inc l
    ld l, $2c
    dec a
    inc l
    cpl
    ld b, a
    ld e, a
    ld c, b
    ld a, b
    ld d, b
    ld [hl], a
    ld e, b
    ld a, b
    ld c, a
    ld a, a
    ld b, a
    ld b, a
    ld a, a
    ld b, b
    nop
    ld a, a
    adc d
    ld [bc], a
    sbc e
    nop
    ld a, b
    add h
    ld bc, $1513
    ccf
    nop
    rra
    db $10
    ccf
    jr nc, jr_04e_7340

    jr nc, @+$81

    jr nc, @+$01

    ret nz

jr_04e_7386:
    ccf
    ldh [$9f], a
    ld [hl], b
    rra
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    ld c, d
    rst $38
    nop
    nop
    ld b, b
    add a
    ld bc, $4b88
    rst $38
    db $10
    inc bc
    push af
    ld a, [de]
    ld a, [$8415]
    add e
    nop
    rra
    add l
    inc bc
    ld l, b
    rla
    ldh [rNR10], a
    ret nz

    jr nz, jr_04e_7342

    ld h, h
    xor [hl]
    ld c, h
    db $fd
    ld c, h
    rst $38
    ld c, h
    ld a, a

jr_04e_73b5:
    add a
    rst $38
    adc b
    ld hl, sp-$70
    rst $30
    sbc b
    ld hl, sp-$71
    rst $38
    add a
    ld c, h
    rst $38
    add b
    nop
    ldh a, [$83]
    ld [bc], a
    inc e
    dec bc
    ldh a, [rNR10]
    ld hl, sp-$28
    ld a, h
    ld b, $3f
    inc bc
    ccf
    ld bc, $105f
    ld b, e
    rst $38
    jr nc, jr_04e_73d9

jr_04e_73d9:
    rst $38
    adc [hl]
    rst $30
    adc e
    inc bc
    ld [hl], b
    sub c
    ld [bc], a
    ldh [rSB], a
    ldh [rNR41], a
    adc c
    rst $28
    dec b
    sub c
    ld h, b
    xor d
    ld b, b
    db $fd
    ld b, b
    adc c
    rst $08
    nop
    ld a, a
    add h
    inc bc
    db $eb
    nop
    nop
    ld b, e
    stop
    ld [bc], a
    jr nz, @+$24

    jr nz, jr_04e_7386

    inc bc

Call_04e_7400:
    xor b
    ld bc, $003f
    add e
    inc bc
    adc $01
    cp a
    nop
    add a
    inc bc
    ret c

    dec bc
    ld b, $46
    ld d, a
    ld b, a
    ld l, a
    ld b, h
    ld e, h
    adc b
    xor e
    adc h
    ld hl, sp-$71
    add h
    inc bc
    inc l
    ld a, [bc]
    jr @+$01

    ld hl, sp-$61
    ld [hl], b
    ld c, a
    jr c, jr_04e_73b5

    ld a, b
    rrca
    ld hl, sp-$7d
    inc bc
    ld e, h
    rst $38
    ld h, l
    rla
    ld b, $06
    dec bc
    add hl, bc
    rla
    db $10
    rrca
    add hl, bc
    dec [hl]
    scf
    ld c, d
    ld e, e
    add l
    cp l
    rst $08
    rst $38
    ld a, [hl]
    ld a, a
    ccf
    cpl
    rra
    rla
    rrca
    rrca
    dec h
    ld bc, $0309
    inc bc
    dec b
    dec b
    rlca
    rlca
    dec b
    inc b
    inc bc
    inc bc
    ld l, [hl]
    inc c
    ld bc, $0707
    rra
    add hl, de
    cpl
    jr nz, jr_04e_7465

    jr nz, @+$15

    inc de
    ld c, $0f
    ld h, c
    ld [bc], a

jr_04e_7465:
    ld bc, $0001
    ld [hl+], a
    ld [bc], a
    ld bc, $0101
    ld [hl], l
    ldh [$29], a
    add e
    add e
    call nz, $e7c4
    push hl
    di
    di
    ld [hl], a
    rst $30
    ld a, b
    ld hl, sp+$60
    ldh [$c0], a
    ret nz

    adc [hl]
    adc [hl]
    sub c
    sub c
    jr nz, jr_04e_74a6

    and h
    inc h
    ldh [rNR41], a
    pop af
    sub c
    ld a, a
    ld c, [hl]
    rst $38
    ld b, b
    ld a, a
    ld b, b
    push af
    ret nz

    ld a, [hl+]

jr_04e_7495:
    jr nz, @+$1a

    jr @+$09

    rlca
    ld h, a
    inc b
    ldh a, [$f8]
    db $fc
    cp $fe
    ld [hl+], a
    rst $38
    ld de, $ff8f

jr_04e_74a6:
    rst $20
    rst $38
    rrca
    rra
    ld a, a
    ld a, a
    sbc a
    rst $38
    ld c, $fe
    inc e
    ld a, h
    jr nc, jr_04e_74e4

    ret nz

    ret nz

    ld [hl], c
    rrca

jr_04e_74b8:
    rrca
    rrca
    jp hl


    add sp, $79
    jr jr_04e_74b8

    ret c

    ld l, a
    ld l, b
    rst $20
    ld h, a
    ccf
    ccf
    rrca
    rrca
    ld b, e
    ld [$e009], sp
    ld hl, $0918
    ld hl, sp-$71
    rst $30
    add a
    rst $38
    add h
    rst $38
    ld [hl], e
    xor a
    xor c
    cp $ea
    xor [hl]
    adc d
    ld a, h
    ld [hl], h
    sbc c
    add hl, bc
    ld [hl], $36
    ret z

jr_04e_74e4:
    ret z

    ld a, b
    ld [hl], b
    xor b
    xor b
    ld hl, sp-$18
    xor e
    adc e
    ld [hl], h
    ld [hl], h
    inc hl
    adc b
    rrca
    ret


    adc c
    ld hl, sp-$78
    db $fc
    call nz, $c37f
    ld a, $20
    dec d
    db $10
    ld c, $08
    rlca
    ld b, $85
    nop
    jr nz, jr_04e_7495

    nop
    ld d, b
    rlca
    rra
    rra
    sub e
    sbc a
    or d
    cp [hl]
    ld a, [c]
    cp $c4
    nop
    and d
    inc b
    db $fc
    ld hl, sp-$08
    cp $fe
    ld b, l
    cp $f2
    ld e, $ff
    db $fc
    cp a
    xor b
    sbc a
    sub c
    ld d, $12
    rra
    inc de
    ld c, $0a
    rlca
    dec b
    ei
    ei
    ld b, $06
    rlca
    rlca
    ld a, [bc]
    ld a, [bc]
    rrca
    ld c, $0a
    ld [$c7c7], sp
    inc hl
    jr nz, jr_04e_7554

    ld b, [hl]
    db $10
    rra
    rla

jr_04e_7541:
    ld a, [hl-]
    jr nz, jr_04e_7541

    ret nz

    xor d
    nop
    ld d, l
    nop
    xor e
    ld bc, $0656
    ld hl, sp-$08
    sbc b
    sbc b
    db $fc
    inc c
    db $fc

jr_04e_7554:
    db $f4
    jr c, jr_04e_755f

    ldh a, [$f0]
    xor c
    db $dd
    rlca
    inc e
    inc b
    db $fd

jr_04e_755f:
    ld [hl], l
    db $db
    db $db
    rst $38
    rst $18
    add l
    nop
    inc l
    rlca
    rra
    ld e, $21
    ld hl, $4040
    ld b, h
    ld b, h
    ld b, e
    ret nz

    ld b, b
    rrca
    pop hl
    ld hl, $deff

jr_04e_7578:
    cp a
    and b
    rst $30
    and b
    xor d
    jr nz, jr_04e_7554

    ret nz

    add e
    add e
    ld a, h
    ld a, h
    and e
    nop
    ld c, d
    rlca
    ret nz

    ret nz

    ldh [$a0], a
    ldh [rNR42], a
    di
    rla
    ld b, e
    rst $38
    rra
    dec c
    cp $1f
    db $fc
    rra
    cp $3f
    ld a, a
    ccf
    rst $18
    ld e, a
    sbc a
    sbc [hl]
    rlca
    ld c, $b3
    nop
    or h
    dec d
    jr nc, jr_04e_75d8

    ld a, b
    ld e, b
    ld hl, sp-$78
    ld hl, sp-$28
    or $f6
    db $eb
    rst $28
    pop de
    rst $18
    ei
    rst $28
    cp $7e
    db $fc
    inc a
    ld hl, sp+$38
    ld c, b
    ldh a, [$90]
    ld bc, $f010
    add h
    nop
    push af
    inc bc
    xor b
    adc b
    ldh a, [$f0]
    ld l, e
    rla
    ldh [$f0], a
    ld hl, sp-$04
    or $fe
    ldh [$fa], a
    ld b, d
    ld a, [c]
    ld h, h
    db $f4

jr_04e_75d8:
    sbc b
    sbc b
    add b
    add b
    ldh [$60], a
    ret nc

    db $10
    sub b
    db $10
    and b
    jr nz, jr_04e_7578

    nop
    or h
    add hl, bc
    inc bc
    inc bc
    inc b
    inc b
    add a
    add l
    jp $e1c3


    pop hl
    add [hl]
    cp e
    ld [$7fe0], sp
    rra
    ld sp, hl
    ret c

    ld l, c
    ld l, b
    ret


    ld c, b
    push bc
    ld bc, $051f
    ld bc, $1e01
    ld e, $92
    sbc [hl]
    add e
    ld bc, $852c
    ld bc, $0b84
    db $fc
    ld [hl], h
    ret c

    ret c

    ld [hl], c
    ld d, c
    ld d, e
    ld d, e
    rst $38
    rst $18
    rlca
    ld b, $85
    ld bc, $871a
    ld bc, $8316
    ld bc, $0070
    ldh a, [rNR43]
    sub b
    add a
    ld bc, $0f76
    rst $30
    add a
    rst $38
    db $f4
    xor a
    xor e
    daa
    dec h
    ld a, [$2ede]
    ld h, $fc
    xor h
    ld sp, hl
    ld a, c
    add a
    ld bc, $0740
    inc e
    inc d
    rrca
    rrca
    inc b
    inc b
    ei
    ld a, [$0187]
    and b
    rlca

jr_04e_764c:
    or a
    sub b
    jp c, $b570

    sub b
    db $e3
    and e
    add e
    nop
    sub b
    dec bc
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    rlca
    rlca

jr_04e_765e:
    inc b
    inc b
    di
    ld_long a, $ffff
    add e
    nop
    ldh a, [rNR31]
    cp b
    or b
    sub b
    sub b
    ldh [rSVBK], a
    or e
    sub e
    db $e4
    and h
    ret z

    ret z

    ld c, $0e
    dec d
    dec d
    inc h
    inc h
    ccf
    dec sp
    dec h
    inc h
    rst $18
    push de
    cpl
    ld l, $17
    db $10
    adc e
    nop
    ld [hl], b
    inc b
    sub e
    sub c
    daa
    jr nz, jr_04e_764c

    ld b, e
    jr nz, @+$01

    adc d
    nop
    add l
    ld [bc], a
    adc b
    adc b
    rst $08
    ld b, e
    adc b
    rst $38
    adc b
    ld bc, $4507
    rst $38
    stop
    ld a, [$0188]
    ld h, a
    add a
    ld bc, $0490
    daa
    ld hl, $405f
    ld a, a
    ld b, l
    ld b, b
    rst $38
    adc h
    ld bc, $ffa3
    ld h, l
    ld [bc], a
    db $10
    stop
    ld b, h
    jr nc, jr_04e_76dd

    ld [bc], a
    db $10
    ld [hl], b
    ld d, b
    ld [hl+], a
    ld [hl], b
    rla
    jr nz, jr_04e_765e

    add sp, -$68
    adc b
    ld hl, sp+$78
    ld a, b
    ld h, h
    ld c, h
    ld [bc], a
    adc $b6
    adc $89
    rst $38
    ld c, b
    ld a, a
    jr c, jr_04e_7717

    ld b, $05
    inc bc
    ld [bc], a

jr_04e_76dc:
    inc hl

jr_04e_76dd:
    ld bc, $2468
    ld bc, $0000
    ld a, [hl+]
    ld [bc], a
    nop
    ld bc, $8dc4
    db $ec
    dec hl
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
    ld b, e
    inc b
    rlca
    inc c
    add d
    add e
    ld b, c
    jp $e000


    jr nz, jr_04e_76dc

    sub b
    ld [hl], b
    db $10
    ld [hl], b
    ret nz

    ld b, [hl]
    cp b
    adc b
    dec b
    ld c, b
    jr c, jr_04e_7708

jr_04e_7708:
    ld a, b
    db $10
    ld [hl], b
    ld b, a
    db $10
    ldh a, [rNR22]
    ld [$88f8], sp
    ld a, b
    inc b
    ld a, h
    inc bc
    ld a, a

jr_04e_7717:
    ld b, b
    ccf
    add b
    cp a
    and b
    sbc a
    ld d, b
    ld c, a
    jr z, @+$29

    ld [de], a
    ld de, $0c0c
    inc bc
    inc bc
    ld h, c
    ld e, $02
    ld [bc], a
    ld bc, $0505
    inc b
    add hl, bc
    ld [$090b], sp
    ld l, e
    ld l, c
    ld e, e
    ld e, c
    ld h, $26
    ccf
    ld [hl+], a
    inc e
    scf
    nop
    ccf
    ld hl, $425f
    ld a, [hl]
    add l
    db $fc
    add a
    ld a, a
    ld bc, $ff48
    nop
    inc d
    ld a, h
    rst $38
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [$030f], sp
    db $10
    inc de
    db $10
    rla
    jr jr_04e_7766

    inc c
    rlca
    rlca
    ld bc, $0001
    ld b, h
    inc bc
    ld [bc], a
    inc c
    nop

jr_04e_7766:
    ld b, $05

jr_04e_7768:
    ld b, $04
    dec b
    ld a, [bc]
    dec c
    inc c
    dec bc
    db $10
    rra
    ldh [$c3], a
    xor l
    ld a, [bc]
    cp $02
    db $fc
    dec b
    ld sp, hl
    ld [de], a
    ld [c], a
    ld [$e00c], sp
    ldh a, [$a6]
    nop
    inc sp
    ld [hl+], a
    add c
    rla
    jp nz, $c442

    ld b, h
    db $e4
    db $ec
    jr jr_04e_7806

    jp z, $1b39

    ld a, [c]
    rra
    ld a, [c]
    rst $18
    ldh a, [$ef]
    ld hl, sp-$19
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    ld b, e
    ld [bc], a
    cp $00
    nop
    ld b, h
    db $fc
    inc b
    ld c, $84
    ld a, h
    add h
    cp l
    add $ff
    ld h, d
    rst $18
    ld [c], a
    ld e, a
    jp nz, $815f

    sbc a
    ld d, c
    ld b, h
    rst $08
    ld b, b
    nop
    jr z, @+$46

    rst $20
    jr nz, jr_04e_77ce

    inc d
    di
    db $10
    di
    ld [hl-], a
    reti


    add hl, bc
    ret c

    ld h, h
    and h
    inc b
    and h
    ld b, d
    ld b, d
    ld b, c

jr_04e_77ce:
    ld b, c
    xor e
    nop
    ld c, [hl]
    inc bc
    add b
    ret nz

    and b
    and b
    inc hl
    db $10
    rrca
    jr z, jr_04e_7804

    ld c, b
    ld c, b
    jr jr_04e_7768

    jr c, jr_04e_77f2

    ld hl, sp-$78
    ldh a, [$50]
    ldh [$60], a
    ret nz

    ld b, b
    or c
    nop
    ld c, [hl]
    add hl, bc
    ld e, $3f
    ret nz

    rst $38

jr_04e_77f2:
    nop
    rst $38
    inc de
    ldh [rLCDC], a
    cp h
    add l
    nop
    ld [c], a
    ld a, [bc]
    cp b
    rst $38
    call nz, $42c7
    jp $e322


jr_04e_7804:
    ld a, [de]
    ei

jr_04e_7806:
    rlca
    ld b, [hl]
    rst $38
    nop

jr_04e_780a:
    and e
    ld bc, $0912
    jr nz, @+$21

    ld [$8007], sp
    add b
    jr nz, @+$62

    ld c, $1f
    db $ec
    ld sp, $c016
    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$80]
    ld a, b
    ld c, b
    jr c, @+$42

    cp h
    ld b, h
    cp h
    inc b
    db $fc
    ld b, b
    cp $42
    cp $02
    cp $82
    ld c, b
    cp $02
    ld b, e
    inc b
    db $fc
    inc b
    ld [$30f8], sp
    ret nc

    jr nz, jr_04e_780a

    and [hl]
    ld b, h
    rst $38
    nop
    add hl, bc
    sbc h
    rst $38
    ld a, [hl]
    ld a, a
    ld [bc], a
    ld c, $07
    rlca
    ld [$850f], sp
    nop
    dec [hl]
    ld bc, $0203
    ld b, e
    ld [bc], a
    inc bc
    push bc
    nop
    cpl
    ld b, e
    inc b
    rlca
    ld b, e
    add hl, bc
    rrca
    ld b, l

jr_04e_7861:
    ld [de], a
    ld e, $01
    ld de, $431f
    add hl, de
    rla
    ld bc, $0f08
    ld b, e
    inc c
    dec bc
    inc bc
    ld [$040b], sp
    rlca
    ld b, e
    ld b, $05
    ld bc, $0504
    jp nz, $01aa

    ld [bc], a
    ld [bc], a
    adc b
    nop
    dec hl
    ldh [rNR44], a
    ld b, b
    ld b, b
    ldh [$a0], a
    and b
    ldh [$50], a
    ldh a, [$90]
    ldh a, [rBCPS]
    ld a, b
    xor b
    sbc b
    adc b
    ld hl, sp+$70
    ld hl, sp+$68
    jr jr_04e_7861

    jr c, jr_04e_78a3

    ld hl, sp+$13
    ld a, [c]
    ld [c], a
    push hl
    ld b, h
    rst $00
    add h

jr_04e_78a3:
    add a
    ld [bc], a
    inc bc
    ld bc, $cf03
    ld bc, $a3a7
    jp hl


    and l
    db $eb
    add l
    nop
    and d
    rlca
    ld [$04f8], sp
    db $fc
    add e
    ld a, a
    nop
    ld a, a
    xor b
    ld bc, $0c79
    rlca
    ld [$1909], sp
    db $10
    ld d, $19
    db $10
    rra
    ld [$170f], sp
    rra
    ld b, e
    inc [hl]
    inc l
    inc bc
    ld h, h
    ld e, h
    ld l, b
    ld e, b
    ld b, e
    ld c, b
    ld a, b
    ld b, l
    ret z

    cp b
    ld b, e
    call nz, $01bc
    add h
    db $fc
    ld b, e
    ld b, d
    ld a, [hl]
    rrca
    ld b, c
    ld a, a
    ld h, c
    ld e, a
    jr nz, jr_04e_7929

    jr nc, jr_04e_791b

    db $10
    rra
    jr jr_04e_7907

    inc c
    dec bc
    ld b, $05
    xor l
    ld bc, $0f96
    ld b, $06
    dec e
    dec de

Call_04e_78fc:
    ld l, [hl]
    and $54
    inc a
    sbc b

jr_04e_7901:
    ld a, b
    ret nc

    ldh a, [$63]
    ld [c], a
    ld b, d

jr_04e_7907:
    push bc
    ret


    ld bc, $049f
    jr nc, @-$0e

    ld c, $fe
    ld bc, $0186
    rst $00
    dec b
    and b
    sbc a
    ld l, h
    ld h, e
    inc e
    inc e

jr_04e_791b:
    add e
    nop
    cp h
    add l
    nop
    ret nc

    ld bc, $5f20
    jp $ce01


    inc bc
    add d

jr_04e_7929:
    ld a, a
    ld bc, $85ff
    ld bc, $0930
    rra
    ldh a, [$2f]
    ld hl, sp+$27
    rst $38
    ld hl, $c1ff
    rst $38
    rst $38
    ld a, e
    inc hl
    ld bc, $0345
    ld [bc], a
    ret


    adc b
    dec c
    rlca
    ccf
    nop
    ld b, b
    jr nc, jr_04e_7901

    or b
    or a
    ld b, b
    ld a, a
    jr c, jr_04e_798f

    rlca
    rlca
    add e
    and e
    inc bc
    ld b, $07
    ld [$430b], sp
    ld de, $011f
    rrca
    rrca
    db $ec
    cpl
    rra
    ld bc, $0201
    ld [bc], a
    dec b
    dec b
    rlca
    ld b, $07
    dec b
    rrca
    ld a, [bc]
    ld a, l
    ld [hl], e
    sbc a
    ldh [rIE], a
    and b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, c
    rst $28
    ld bc, $13f2
    pop af
    cp a
    cp $df
    ld b, e
    pop hl
    cp a
    inc bc
    db $e3
    rst $38
    inc de
    rra
    ld [hl+], a
    rrca
    ld b, h
    rst $38
    add hl, bc

jr_04e_798f:
    rra
    db $10
    rst $38
    db $e3
    rst $38
    db $f4
    call c, $ebfb
    rst $38
    xor b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nc, jr_04e_79bc

    db $10
    inc de
    db $10
    ld de, $0910
    ld [$0407], sp
    inc bc
    inc bc
    ld a, e
    ldh [$2a], a
    add hl, sp
    add hl, sp
    rst $00
    add $03
    inc bc
    ld a, [bc]
    nop
    ld d, l

jr_04e_79bc:
    nop
    xor a
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    db $fc
    nop
    db $fc
    ld a, h
    sub $ea
    xor d
    push de
    ld a, a
    db $fd
    add e
    cp $82
    rst $38

jr_04e_79d3:
    ld bc, $f8ff
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    add $fb
    inc hl
    cp e
    ld [bc], a
    cp d
    add $c7
    push bc
    adc l
    dec e
    add e
    cp $c3
    ld a, [hl]
    push hl
    cp a
    db $db
    ld a, [hl]
    rst $38
    ld [hl+], a
    rst $38
    inc e
    rst $38
    nop
    cp a
    jr nc, jr_04e_7a77

    ld e, b
    rst $38
    xor b
    rst $38
    ld [hl], b
    rst $38
    jr @+$01

    nop
    rst $38
    jr nc, jr_04e_79d3

    call z, $f395
    dec b
    ld a, $3e
    ld b, a
    ld b, c
    rst $38
    db $e3
    ld b, h
    rst $38
    nop
    ld [bc], a
    pop bc
    rst $38
    ld b, $4a
    rst $38
    nop
    dec c
    ld bc, $03fe
    ld a, a
    ld b, $7d
    rlca
    ei
    db $fd
    or $0b
    db $fc
    rlca
    ld sp, hl
    ld b, h
    rst $38
    inc bc
    ld bc, $7f07
    inc hl
    rst $38
    ld bc, $3f07
    jp $0987


    pop af
    rst $38
    ld [$040f], sp
    rlca
    cp $f3
    rst $38
    add hl, bc
    and e
    nop
    adc [hl]
    jp $15ab


    pop af
    nop
    rst $28
    rrca
    rst $18
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec [hl]
    rst $38
    db $10
    ld a, [$f505]
    ld a, [bc]
    xor d
    push de
    push de
    xor d
    ld a, a
    ld a, a
    ld [hl], e
    dec c
    sbc [hl]
    sbc [hl]
    pop hl
    pop hl
    call nc, $aa80
    nop
    rst $30
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    jp $1081


    rst $38
    ld bc, $e0ff
    cp a
    ld e, h
    ld d, l
    xor [hl]
    rst $38

jr_04e_7a77:
    ld a, [$fd0f]
    rlca
    db $fd
    inc bc
    cp $fb
    add h
    ld bc, $020b
    cp $8f
    or $24
    ld [hl], a
    ld bc, $8f8e
    add e
    ld bc, $0d1a
    nop
    rst $38
    rlca
    rst $38
    ld [$1bf8], sp
    di
    pop af
    or $e7
    inc b
    rst $38
    ldh a, [rSCX]
    rst $38
    nop
    nop
    rra
    jp $0c83


    xor b
    rst $38
    ld b, b
    rst $38
    nop
    di
    nop
    or c
    ld [hl], b
    rst $08
    rst $08
    add b
    add b
    cp c
    nop
    ld h, h
    ld [de], a
    ld h, b
    ld h, b
    db $10
    db $10
    ldh a, [$90]
    ld hl, sp+$48
    ld hl, sp-$58
    ld hl, sp+$68
    cp $2e
    db $dd
    and l
    db $fc
    nop
    cp $85
    ld bc, $1167
    inc b
    ei
    ld c, $f7
    cp $0a
    rst $38
    pop af
    rst $38
    dec e
    rst $38
    inc hl
    rst $38
    ld b, b
    pop hl
    ret nz

    db $fc
    ret nz

    ld b, h
    rst $38
    ld b, b
    ldh [rNR42], a
    jr nz, @+$01

    rra
    rst $38
    add e
    cp $47
    ld a, l
    rst $38
    cp l
    sbc $63
    db $fd
    ld a, $ea
    dec d
    push de
    dec hl
    db $eb
    rla
    xor d
    ld d, [hl]
    ld d, [hl]
    xor d
    cp d
    ld d, [hl]
    ld [hl], h
    xor h
    ld hl, sp+$78
    ret nz

    ld b, b
    ret nz

    ret nz

    db $f4
    ld sp, $4e00
    ld b, h
    ret nz

    ld b, b
    nop
    ret nz

    inc h
    add b
    add [hl]
    adc e
    inc bc
    inc a
    cp $00
    rrca
    ld b, e
    dec c
    rst $38
    ld de, $fe02
    db $fc
    db $fc
    ret nz

    ld b, b
    ld b, b
    ret nz

    ldh a, [rSVBK]
    ld c, h
    db $fc
    jp nz, $82fe

    cp $fc
    db $fc
    db $ec
    inc hl
    dec c
    inc bc
    rra
    nop
    jr nz, @+$1a

    ld e, e
    ld e, b
    ld e, e
    jr nz, jr_04e_7b7a

    jr jr_04e_7b5c

    rlca
    rlca
    push bc
    ld bc, HeaderCGBFlag
    ld b, $07
    ld b, e
    add hl, bc
    rrca
    add l
    adc l
    dec b

jr_04e_7b4b:
    ret nz

    ret nz

    jr c, jr_04e_7b4b

    nop
    ld a, $43
    ld a, [de]
    cp $03
    inc b
    db $fc
    ld hl, sp-$08
    add e
    rst $18
    add hl, bc

jr_04e_7b5c:
    ldh [$60], a
    ld e, b
    ld hl, sp-$3c
    db $fc
    add h
    db $fc
    ld hl, sp-$08
    add h
    nop
    ld a, b
    inc bc
    rlca
    nop
    ld [$2206], sp
    ld d, $05
    ld [$060f], sp
    rlca
    inc bc
    inc bc
    rst $00
    nop
    dec hl

jr_04e_7b7a:
    inc hl
    inc bc
    ld bc, $0101
    and [hl]
    call $f002
    nop
    ld a, b
    ld b, e
    ld l, b
    ld hl, sp+$03
    db $10
    ldh a, [$e0]
    ldh [$85], a
    cp a
    ld [bc], a
    ld [hl], b
    ldh a, [$d0]
    xor b
    rst $18
    rlca
    rst $38
    add $c3
    add e
    rst $38
    rst $38
    add e
    add d
    add a
    ld bc, $0718
    cp $8f
    add [hl]
    rlca
    rst $38
    rst $38
    rlca
    rlca
    add a
    ld bc, $00f8
    rst $38
    and h
    ld bc, $0181
    rst $38
    cp $c7
    ld bc, $000e
    cp $87
    sub b
    nop
    rst $38
    add l
    sbc a
    rst $38
    db $ec
    ld [hl], l
    ld b, $02
    ld [bc], a
    ld bc, $0705
    inc b
    inc bc
    ld b, h
    ld [$050f], sp
    ld c, $09
    inc c
    ld a, [bc]
    ld c, $0a
    dec h
    inc b
    add hl, bc
    ld b, $04
    rlca
    inc b
    ld bc, $0302
    ld [bc], a
    ld bc, $7401
    ld a, [bc]
    ld bc, $0602
    nop
    ld [$0809], sp
    rlca
    ld b, $01
    ld bc, $007e
    ld bc, $a189
    rra
    ld bc, $0003
    inc b
    add hl, bc
    ld [$1011], sp
    add c
    and b
    add e
    ld b, b
    add e
    nop
    inc bc
    nop
    rlca
    nop
    inc b
    inc bc
    dec bc
    inc b
    rrca
    nop
    dec c
    ld bc, $031d
    ccf
    inc bc
    cp $03
    ld b, h
    rst $38
    nop
    ld b, $0e
    db $fd
    add $37
    jr c, jr_04e_7c2e

    ld c, $43
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc hl
    inc b
    dec e
    inc c

jr_04e_7c2b:
    jr c, @+$3a

    ret nz

jr_04e_7c2e:
    ret nc

    db $10
    db $10
    ld b, b
    jr nz, @-$16

    jr nz, jr_04e_7c2b

    jr nz, @-$54

    ret nz

    ld [hl], l
    ld b, b
    ld e, a
    ld [hl], b
    ld l, a
    ld a, b
    ld d, a
    ld a, b
    cpl
    jr c, jr_04e_7c83

    jr nc, @+$21

    db $10
    rrca
    add h
    nop
    or e
    rrca
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    rrca
    inc e
    ld h, e
    ldh [rTAC], a
    nop
    cp a
    ld b, e
    db $fc
    db $fc
    xor d
    db $fc
    ld [hl+], a
    add b
    ld b, $e0
    ld h, e
    call c, $b07c
    ld [hl], b
    db $e3
    add e
    db $dd
    inc b
    nop
    ld a, a
    add b
    rst $38
    nop
    ld b, e
    rst $38
    ld bc, $fe00
    ld b, e
    inc bc
    db $fd
    ldh [$30], a
    dec b
    db $fc
    inc b
    ld hl, sp+$04
    db $fc
    ld [$08fa], sp

jr_04e_7c83:
    db $fd
    ld [$09fb], sp
    rst $38
    add hl, bc
    cp $05
    ld a, [hl]
    ld b, $06
    ld a, [hl-]
    rla
    ld l, c
    rlca
    ret z

    rlca
    ret c

    rlca
    ld [hl], b
    inc bc
    inc c
    adc a
    ld [de], a
    ld b, a
    ld [hl+], a
    ld h, [hl]
    and c
    inc hl
    ld h, c
    di
    ld de, $11e3
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    nop
    add h
    or a
    dec bc
    rlca
    cp $83

jr_04e_7cb1:
    cp a
    ld a, b
    ld h, a
    and a
    ldh [$60], a
    ld [hl], b
    sub b
    ldh a, [$b4]
    nop
    or e
    ld bc, $c0c0
    and l
    nop
    adc h
    dec b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    adc h
    sbc a
    ld c, $80
    add c
    add e
    add h
    add h
    adc b
    adc b
    db $10
    sub b
    jr nz, @+$22

    nop
    ld b, b
    ld b, b
    ld b, b
    and h
    nop
    sub $06
    add b
    add e
    ld b, e
    db $fc
    inc c
    cp $02
    jp Jump_04e_6c01


    rlca
    rst $20
    jr jr_04e_7cb1

    inc a
    ret


    ld [hl], $cc
    inc sp
    ld b, e
    adc $31
    dec b
    call nz, $e13b
    ld e, $63
    sbc h
    and e
    pop af
    dec d
    rst $38
    add c
    cp $06
    xor b
    ret c

    ld e, b
    ld l, b
    ld l, h
    ld d, h
    ld a, h
    add h
    cp $82
    adc [hl]
    add d
    jp nz, Jump_04e_6c92

    ld d, h
    jr c, jr_04e_7d4e

    sbc a
    nop
    cp b
    add hl, de
    ld b, $0e
    db $10
    jr nc, @+$42

    ret nz

    nop
    ld bc, $0600
    nop
    jr jr_04e_7d27

jr_04e_7d27:
    jr nz, jr_04e_7d49

    ld b, b
    ld d, c
    add c
    ld a, [hl+]
    add d
    ld c, h
    inc e
    jr nc, jr_04e_7d62

    ret nz

    ret nz

    adc e
    ld bc, $434c
    ret nz

    ld b, b
    ld c, c
    ldh [rNR41], a
    dec b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    db $ec
    inc sp
    ld bc, $f0f0

jr_04e_7d49:
    inc h
    ld [$7802], sp
    ld [hl], b

jr_04e_7d4e:
    sub b
    inc hl
    jr nz, jr_04e_7d52

jr_04e_7d52:
    ld b, b
    add d
    push bc
    db $ec
    ld c, c
    rlca
    inc bc
    rlca
    ld bc, $0208
    ld [$0401], sp
    sbc c
    nop

jr_04e_7d62:
    sub h
    and e
    ld bc, $04f0
    dec b
    dec b
    inc bc
    inc b
    inc bc
    jp z, $8787

    ld bc, $0500
    rst $38
    rst $00
    ccf
    inc sp
    rrca
    inc c
    adc e
    ld bc, $050e
    ld [$a088], sp
    ld [hl], b
    ldh a, [rNR10]
    adc c
    ld bc, $0530
    pop bc
    pop hl

jr_04e_7d88:
    ld a, $0f
    db $fd
    ld [bc], a
    and h
    ld bc, $0366
    nop
    rst $38
    ret nz

    ld c, $a6
    ld bc, $0b4b
    ld bc, $8007
    ld [$1040], sp
    or e
    db $10
    ld a, a
    add hl, bc
    rst $20
    ld e, $45
    rst $38
    nop
    adc l
    ld bc, $05a2
    add c
    ld b, c
    ld b, c
    pop bc
    ret nz

    ld b, c
    adc d
    ld [bc], a
    adc $88
    ld bc, $0ff1
    add c
    ld b, e
    db $f4
    inc c
    ld a, [hl]
    ld [c], a
    ccf
    ld de, $107f
    rst $20
    jr c, jr_04e_7d88

    ld a, h
    ret


    or [hl]
    adc h
    ld [bc], a
    ld a, [bc]
    rlca
    cp b
    ld c, a
    call nc, $93af
    cp $82
    ld a, a
    ld b, h
    ld bc, $07ff
    cp $01
    cp $82
    ld a, h
    ld b, h
    jr c, jr_04e_7e18

    sub b
    inc bc
    ld c, h
    ld b, $2c
    inc de
    ld [de], a
    inc bc
    ld [de], a
    ld a, [bc]
    ld a, [bc]
    adc e
    inc bc
    ld h, h
    ld bc, $02fc
    ld b, e
    db $fc
    inc b
    ld bc, $04f8
    ld b, h
    ld hl, sp+$08
    rlca
    inc c
    ld hl, sp+$0c
    db $fc
    ld a, [bc]
    db $fc
    ld b, $7c
    adc d
    ld bc, $8f85
    ld [bc], a
    ld b, h
    xor b
    ld [bc], a
    or [hl]
    nop
    ccf
    add h
    ld [bc], a
    ld l, b
    ld a, [bc]
    inc bc
    nop
    inc e
    db $10
    ld h, b
    ld a, [hl+]

jr_04e_7e18:
    add b
    ld d, l
    add b
    cp a
    ld c, a
    call $bf02
    ld c, $80
    ldh [rNR23], a
    inc e
    nop
    ld [bc], a
    ld [bc], a
    ld [c], a
    ld [bc], a
    ld e, $0c
    inc b
    cp b
    jr @+$62

    add a
    ld bc, $8ab7
    nop
    rst $28
    dec b
    rrca
    nop
    rra
    nop
    ccf
    nop
    adc h
    ld bc, $0200
    ld l, $13
    ld [de], a
    rst $38
    ld h, [hl]
    ld bc, $0003
    ld [hl+], a
    inc b
    inc hl
    ld [bc], a
    ld bc, $0101
    ld [hl], l
    dec b
    ld bc, $0003
    inc b
    dec b
    inc b
    ld b, l
    inc bc
    ld [bc], a
    rlca
    ld bc, $0304
    ld [$080b], sp
    rlca
    rlca
    add $ac
    nop
    inc b
    dec h
    ld [$0115], sp
    db $10
    ld de, $1211
    ld d, $19
    jr c, jr_04e_7e7b

    ld b, b
    ld e, a
    ld b, b
    ccf
    ld h, b
    ld a, a
    ld d, b

jr_04e_7e7b:
    rst $38
    sub b
    rst $20
    and b
    rst $08
    pop bc
    ld h, l
    ldh [$27], a
    ld a, b
    ld hl, sp+$0e
    ld b, $15
    ld bc, $002a
    ld d, l
    nop
    xor e
    ld bc, $83d6
    db $fc
    add a
    ld a, h
    ld b, a
    jr c, jr_04e_7ed7

    dec bc
    dec bc
    ld [de], a
    db $10
    ld de, $2210
    jr nz, jr_04e_7ec6

    inc l
    inc sp
    ld [hl-], a
    ld b, l
    jp nz, $011f

    ld a, a
    ld bc, $01fe
    ld b, e
    rst $38
    nop
    rra

jr_04e_7eb0:
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    ei
    inc b
    rst $38
    inc b
    rst $30
    ld [$c8bf], sp
    ccf
    jr nz, jr_04e_7efe

    nop
    ld e, [hl]
    ld bc, $02bc
    ld e, l
    ld [bc], a

jr_04e_7ec6:
    cp c
    inc b
    ld a, l
    inc b
    rst $38
    add h
    ld a, a
    ld [bc], a
    rst $38
    ld bc, $ff45
    nop
    rlca
    cp a
    ld b, b
    ld a, a

jr_04e_7ed7:
    add e
    push af
    adc h
    rst $30
    db $10
    ld h, a
    dec de
    inc bc
    rlca
    adc a
    sbc b
    pop af
    ld h, b
    and c
    ret nz

    ld h, e
    add b
    ld a, $c1
    ld d, b
    xor a
    ld bc, $02ff
    cp $03
    cp $fe
    ld a, h
    ld a, a
    inc b
    rst $38
    inc bc
    ld a, a
    nop
    ld d, a
    rst $38
    nop
    dec b

jr_04e_7efe:
    rst $18
    jr c, @-$2f

    ld b, h
    cp e
    add h
    add h
    sbc a
    ld c, $02
    ei
    ld b, $f3
    inc c
    rst $20
    inc e
    rst $08
    jr c, jr_04e_7eb0

    ld [hl], b
    cp a
    pop hl
    rst $38
    ld bc, $ff44
    ld [bc], a
    add e
    rst $28
    nop
    call nz, $1d67
    ldh a, [$f0]
    rlca
    rst $38
    add b
    ld a, a
    add e
    ld a, a
    inc e
    db $fc
    ld h, b
    ldh [$03], a
    add e
    ld c, $0d
    dec d
    ld a, [de]
    ld l, d
    dec [hl]
    and l
    ld a, [hl-]
    ld c, d
    ld [hl], l
    dec d
    db $eb
    rst $08
    or $ff
    jr c, jr_04e_7f93

    rst $38
    nop
    ld bc, $01fe
    add $00
    or [hl]
    nop
    ld bc, $fe43
    ld [bc], a
    db $10
    rst $38
    dec c
    rst $38
    ld sp, $40cf
    add a
    add b
    add a
    nop
    ld c, a
    ld b, $b9
    rrca
    ld e, e
    inc c
    cp a
    call nz, $aadf
    nop
    ld e, $1b
    add b
    ld h, b
    ldh [$f8], a
    ld hl, sp+$04
    inc b
    ld a, d
    ld a, [hl]
    reti


    xor a
    or b
    ld e, a
    ld h, b
    cp a
    add b
    ld a, a

jr_04e_7f74:
    ld h, b
    rst $38
    cp $df
    ld sp, hl
    add hl, bc
    ld hl, sp+$08
    ldh a, [$08]
    ld hl, sp+$43
    inc b
    db $fc
    nop
    inc bc
    ld b, h
    rst $38
    nop
    ldh [$28], a
    ld b, b
    rst $38
    jr nz, jr_04e_7f74

    rra
    ld sp, hl
    add hl, bc
    di

jr_04e_7f91:
    ld a, [bc]
    ld e, e

jr_04e_7f93:
    and l
    xor a
    ld e, a
    ld a, h
    or e
    add $f9
    add c
    rst $38
    ld [hl], d
    ld a, [hl]
    ld c, $0e
    inc bc
    inc bc
    pop bc
    pop hl
    rst $38
    sbc b
    rst $38
    ld b, [hl]
    rst $38
    inc sp
    db $fc
    inc c
    db $e4
    dec e
    sbc [hl]
    ld [hl], d
    ld a, a
    pop hl
    ld b, e
    rst $38
    nop
    nop
    rst $38
    db $76
    rra
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_04e_7f91

    db $10
    ldh a, [$90]
    add sp, -$38
    ld hl, sp-$1c
    db $fc
    ld h, h
    ld a, h
    inc a
    call c, $04fc
    cp $02
    or $0a
    cp $02
    db $fc
    db $e4
    ld hl, sp+$18
    push bc
    sbc d
    dec bc
    sbc b
    sbc b
    ld h, h
    db $e4
    ld b, h
    call nz, $e4a4
    ret c

    ld hl, sp-$34
    db $f4
    ld b, h
    db $fc
    call nz, Call_04e_6402
    sbc b
    sbc b
    jp $4500


    dec bc
    ld c, $0a
    ld a, [de]
    sub [hl]
    push af
    db $eb
    db $eb
    dec d
    push af
    dec bc
    ld a, [c]
    ld c, $ff
