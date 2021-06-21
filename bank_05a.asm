; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05a", ROMX[$4000], BANK[$5a]

Call_05a_4000:
    db $ec
    dec a
    dec h
    ld bc, $0213
    inc bc
    ld b, $07
    dec b
    rlca
    add hl, bc
    dec bc
    dec de
    inc de
    rla
    ld de, $2137
    ld l, [hl]
    ld b, d
    ld e, h
    ld b, h
    rst $38
    sbc a
    inc hl
    rst $38
    inc bc
    ccf
    ld a, a
    rlca
    rra
    ldh a, [$39]
    jp c, $25e0

    ld [hl], e
    ld [hl], a
    rst $30
    rst $28
    ld a, l
    jp $f9ff


    cp a
    and $7b
    db $ec
    di
    rst $18
    rst $20
    rst $38
    db $e3
    rst $38
    jp Jump_05a_43fc


    ld a, h
    add d
    rst $38
    add l
    rst $38
    adc [hl]
    rst $38
    rst $18
    cp $dc
    rst $38
    db $fc
    rst $38
    call c, $eeff
    rst $38
    db $ec
    scf
    ldh [rNR42], a
    ldh [$e0], a
    ei
    sbc e
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    cp a
    cp $71
    db $fc
    inc bc
    ld hl, sp-$79
    ld hl, sp-$39
    ldh a, [$8f]
    ldh a, [rIF]
    rst $18
    ld a, a

jr_05a_4067:
    xor a
    rst $38
    ld e, a
    rst $38
    pop hl
    sbc a
    ldh [$1f], a
    cp b
    ld a, a
    ld b, e
    ld a, h
    rst $38
    nop
    jr c, jr_05a_4067

    ld sp, $11df
    ld [bc], a
    dec b
    dec b
    add hl, bc
    add hl, bc
    jr nc, jr_05a_40b1

    call z, Call_05a_7ffe
    add c
    db $fc
    db $e3
    sbc b
    ld a, a
    add $ff
    pop af
    add e
    push bc
    inc bc
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$3c
    add c
    ld [$ffc0], sp
    ldh a, [rIE]
    ld hl, sp-$01
    inc a
    rst $38

jr_05a_409e:
    ld e, $44
    rst $38
    ld c, $01
    dec e
    rst $38
    db $f4
    add hl, sp
    nop
    ld [$c01b], sp
    ret nz

    jr nc, jr_05a_409e

    ld l, b
    add sp, $64

jr_05a_40b1:
    db $e4
    dec [hl]
    rst $30
    cp a
    rst $38
    ld e, e
    rst $38
    daa
    db $fd
    rra
    rst $38
    inc e
    di
    rrca
    ei
    rrca
    ld sp, hl
    ld c, $fe
    ld [$43f8], sp
    db $10
    ldh a, [rTIMA]
    inc a
    cp $7f
    rst $38
    rst $38
    rst $38
    db $ec
    ccf
    dec c
    ld [hl], b
    ldh a, [$f8]
    ld hl, sp-$74
    db $fc
    inc a
    db $fc
    cp $fe
    ld [hl], $fe
    sbc $f6
    ld b, e
    cp $fa
    ld bc, $647c
    ld b, e
    ld a, h
    ld b, h
    ld b, e
    ld a, $22
    inc bc
    sbc [hl]
    jp nc, $f9ff

    rst $38
    db $ec
    ld b, a
    rrca
    inc bc
    inc bc
    inc b
    dec b
    ld [$100a], sp
    dec d
    jr nz, jr_05a_412a

    jr nz, jr_05a_4137

    ld b, b
    ld l, e
    ld b, b
    ld a, a
    ld b, a
    add b
    rst $38
    db $ec
    ccf
    db $10
    ld bc, $0601
    ld b, $3f
    ccf
    ret nz

    push de
    nop
    xor d
    nop
    ld d, l
    nop
    xor a
    nop
    ld a, a
    nop
    ld c, d
    rst $38
    nop
    inc bc
    ld bc, $00ff
    cp $ec
    add hl, hl
    ld b, $06
    rrca

jr_05a_412a:
    nop
    db $10
    ld bc, $4021
    dec h
    ld b, d
    jr jr_05a_418a

    inc hl
    dec hl
    inc sp
    scf

jr_05a_4137:
    ld b, l
    ld b, a
    adc c
    adc a
    ld [hl-], a
    ccf
    call nz, $98ff
    rst $38
    ld [hl], b
    ld a, a
    dec c
    xor a
    ld [bc], a
    ld d, a
    ld bc, $00eb
    db $fd
    add l
    reti


    add hl, bc
    ld e, $ff
    ld h, c
    push af
    add b
    xor d
    nop
    ld d, a
    nop
    xor a
    db $ec
    add hl, hl
    inc b
    jr c, @+$7a

    add h
    add $00
    rst $00
    nop
    and b
    inc e
    ld b, b
    ld bc, $07a1
    ld d, a
    add c
    and c
    ld b, b
    ret nz

    ld h, b
    ldh a, [$60]
    add sp, -$70
    db $f4
    sub b
    ld a, [$fd08]
    ld [$04fa], sp
    db $fd
    add [hl]
    cp $82
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld b, a
    db $fc
    rlca
    rst $08
    ld hl, sp+$3f
    ldh a, [$1f]

jr_05a_418a:
    ldh a, [rIF]
    ld hl, sp-$14
    jr nc, jr_05a_41b2

    add b
    ldh [$2b], a
    ret nz

    ret nz

    ldh a, [$f0]
    call nz, $fafc
    ld a, [$fefe]
    rst $38
    rst $38
    ld a, a
    ld e, a
    dec sp
    daa
    dec e
    inc de
    inc c
    ld a, [bc]
    ld b, $06
    ld bc, $0081
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop

jr_05a_41b2:
    xor d
    ret nz

    push de
    ldh [$2a], a
    db $fc
    sbc l
    jp $e743


    daa
    ld sp, hl
    add hl, sp
    db $ec
    dec sp
    rlca
    ld [bc], a
    inc bc
    dec b
    dec b
    adc d
    adc d
    jp nc, $23d2

    db $e4
    rla
    ld b, h
    call nz, $c8c8
    ld [$1868], sp

jr_05a_41d4:
    jr jr_05a_41de

    jr jr_05a_41e4

    inc l
    inc c
    ld e, h
    ld a, [de]
    cp d
    ld a, [hl-]

jr_05a_41de:
    ld a, d
    push de
    push de
    sub e
    inc de
    and b

jr_05a_41e4:
    jr nz, @+$01

    db $ec
    ld h, [hl]
    ld c, h
    ld bc, $0d00
    dec b
    inc bc
    rlca
    rrca
    rrca
    rra
    ld e, $3f
    ld a, d
    inc a
    inc a
    ld a, b
    ld [hl], b
    ld a, b
    ld b, e
    ld a, b
    ld [hl], c
    dec c
    ld [hl], b
    ld a, b
    inc a
    ld a, b
    ld a, d
    inc a
    ld e, $3f
    rrca
    rra
    rlca
    rrca
    dec b
    inc bc
    ld hl, sp+$20
    and e
    inc b
    ret nz

    ld b, b
    jr nz, jr_05a_41d4

    jr nz, jr_05a_425f

    ret nz

    ldh [$08], a
    ldh [$f0], a
    ld hl, sp-$04
    db $fc
    cp $de
    ccf
    rla
    jp $15d4


    rst $00
    ld b, a
    ld h, e
    rst $00
    db $e3
    inc bc
    rst $00
    rrca
    rlca
    rla
    rrca
    sbc $3f
    db $fc
    cp $f8
    db $fc
    add sp, -$10
    ret nz

    ldh [$c0], a
    ld b, h
    ldh [rLCDC], a
    inc bc
    ret nz

    ldh [rP1], a
    ret nz

    db $ec
    dec h
    rlca
    rlca
    ld c, $0b
    rra
    ld d, $3f
    cp h
    ld a, [hl]
    and l
    nop
    adc h
    ld bc, $e0c0
    and l
    nop
    db $76
    rlca
    inc a
    ld a, [hl]
    ld d, $3f
    dec bc
    rra
    rlca

jr_05a_425f:
    ld c, $ec
    ld h, e
    jr jr_05a_4268

    inc bc
    rla
    rrca
    rst $18

jr_05a_4268:
    ccf
    ld a, [hl]
    rst $38
    ld hl, sp-$02
    ldh [$f8], a
    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    cp $7e
    rst $38
    ld e, a
    ccf
    rla
    rrca
    inc b
    cp c
    nop
    rst $28
    ld [bc], a
    add b
    nop
    add b
    sbc e
    sub c
    inc d
    ld [bc], a
    ld bc, $0f97
    ccf
    rst $38
    cp $ff
    ld a, [c]
    db $fc
    ret nc

    ldh [$f2], a
    db $fc
    cp $ff
    ccf
    rst $38
    rla
    rrca
    ld [bc], a
    adc l
    nop
    sbc l
    inc bc
    add b
    add b
    add b
    add b
    adc c
    cp d
    add h
    cp l
    adc e
    nop
    ld [hl], b
    rrca
    ld a, l
    ccf
    ld a, [hl-]
    ld a, a
    ld [hl], l
    ld a, [hl]
    ld [hl], h
    ld a, a
    db $76
    ld a, a
    ld [hl], a
    ld a, a
    dec sp
    ld a, a
    ld a, l
    ccf
    add e
    nop
    adc h
    adc c
    nop
    ret nz

    inc b
    ld e, $ff
    rst $28
    rst $38
    ld [hl], a
    ld b, h
    rst $38
    dec sp
    inc b
    ld a, e
    rst $38
    ei
    rst $38
    rst $30
    jp $028b


    rst $38
    db $fc
    cp $ff
    db $ec
    ld c, [hl]
    ld [hl+], a
    ld bc, $0343
    ld [bc], a
    inc hl
    ld bc, $0205
    inc bc
    inc b
    inc b
    nop
    ld [$066f], sp
    inc bc
    ld bc, $0304
    dec b
    rlca
    ld b, $24
    rlca
    ld bc, $0703
    inc hl
    inc bc
    ld bc, $0301
    add l
    xor l
    ld bc, $0301
    add a
    add e
    dec h
    ld bc, $0000
    add l
    sub e
    jr @+$09

    dec b
    rlca
    ld a, [bc]
    rrca
    dec c
    rra
    jr jr_05a_432d

    jr nz, @+$62

    add b
    add b
    rrca
    nop
    ccf
    nop
    rst $30
    rrca
    cp a
    ld a, a
    ld a, a
    rst $38
    ret nz

    ldh [rPCM34], a
    and e
    rl b
    and b
    ldh a, [$50]
    ld sp, hl
    db $ec
    cp $f2
    rst $38

jr_05a_432d:
    push bc
    rst $38
    adc d
    rst $38
    dec d
    rst $38
    rrca
    rst $38
    rra
    ld b, h
    rst $38
    ccf
    ld b, e
    ld a, a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld a, a
    ld l, $ff
    ld [bc], a
    ld a, a
    rst $38
    cp a
    ld [hl+], a
    rst $38
    inc bc
    rlca
    rrca
    nop
    ld bc, $0761
    ldh [rP1], a
    cp $00
    rst $18
    ldh [$fb], a
    db $fc
    add e
    sub l
    inc b
    scf
    rrca
    dec e
    inc bc
    ld a, a
    db $76
    ld [$70b8], sp
    ld [hl], $0f
    cp l
    ld a, a
    di
    rst $38
    ld a, a
    db $e4
    inc l
    rst $38
    inc de
    ld e, [hl]
    ccf
    dec a
    rrca
    ld a, $07
    rst $38
    inc bc
    cp $01
    ld a, a
    add c
    rst $18
    ldh [$f7], a
    ld hl, sp-$01
    db $fd
    ld a, a

Jump_05a_4381:
    rst $38
    ld [hl], c
    ld [$0818], sp
    inc h
    inc e
    ld c, h
    ld a, h
    cp h

jr_05a_438b:
    db $fc
    ld a, h
    jr z, jr_05a_438b

    ld bc, $fcf8
    daa
    ld hl, sp+$15
    db $f4
    db $f4
    ld a, [$e5f3]
    pop af
    ld_long a, $ffe1
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    and $d9
    sbc d
    and $fc
    adc h
    ldh [$f0], a
    inc h
    add b
    inc h
    ret nz

    and e
    nop
    and b
    inc b
    ld h, b
    ldh [$a0], a
    ldh [$60], a
    and [hl]
    nop
    ld a, c
    ld bc, $c080
    db $ec
    ld sp, $00a6
    sub h
    ld hl, sp+$26
    add [hl]
    rst $38
    db $ec
    cpl
    inc bc
    ld c, $0f
    db $10
    db $10
    inc hl
    jr nz, jr_05a_43f5

    ld b, b
    ld [$2048], sp
    inc h
    jr nz, @+$25

    db $10
    ld de, $1810
    and e
    sub e
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $ec01
    ld b, e
    rlca
    ret nz

    ret nz

    ld sp, $0931
    add hl, bc
    rlca
    rlca
    add a
    call $8014
    add b
    ld b, b
    ret nz

jr_05a_43f5:
    jr nz, jr_05a_4457

    ld [$0238], sp
    ld c, $00

Jump_05a_43fc:
    rlca
    add b
    pop bc
    ld hl, $0a30
    inc c
    inc bc
    inc bc
    nop
    ldh a, [$2a]
    jp hl


    add hl, bc
    ld bc, $0601
    rlca
    ld [$100f], sp
    ld e, $20
    ld a, $43
    ld b, b
    ld a, a
    ld [bc], a
    add b
    rst $38
    add b
    ld c, b
    rst $38
    nop
    ldh [rNR44], a
    add b
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_05a_4465

    db $10
    rra
    ld [$040f], sp
    rrca
    ld [bc], a
    rlca
    dec hl
    inc bc
    push de
    add c
    ld l, d
    ldh [$0d], a
    ld hl, sp-$5e
    ld e, $90
    rst $00
    ld sp, hl
    db $fc
    ld a, a
    rst $38
    rra
    ccf
    rrca
    rrca
    rra
    rra
    ld a, a
    ld [bc], a
    ccf
    ccf
    ret nz

    ld b, e
    rst $38
    nop
    ld b, e
    ccf
    nop
    ld bc, $007f
    ld e, d
    rst $38
    nop
    ld c, $a0

jr_05a_4457:
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    rst $38
    cp a
    ld a, a

jr_05a_4465:
    jr z, @+$01

    db $ec
    ld hl, $e008
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $01
    ld e, b
    rst $38
    nop
    ld a, [bc]
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor a
    rst $38
    ld a, a
    ld l, $ff
    ld bc, $df9f
    db $ec
    dec hl
    add e
    nop
    and d
    ld bc, $c040
    ld b, e
    jr nz, @-$1e

    ld b, e
    db $10
    ldh a, [$0c]
    ld [$28f8], sp
    ld hl, sp+$5c
    db $fc
    xor h
    db $fc
    ld e, h
    db $fc
    cp h
    db $fc
    ld a, h
    ld [hl+], a
    db $fc
    dec h
    ld hl, sp+$23
    ldh a, [rTMA]
    ldh [$e0], a
    call c, $e2dc
    cp $f2
    ld [hl+], a
    cp $01
    db $fc
    db $fc
    rst $38
    db $ec
    ld d, e
    dec bc
    ld c, $0e
    ld sp, $4033
    ld b, a
    ld b, b
    ld c, a
    add b
    rst $38
    add h
    rst $38
    db $ec
    scf
    rra
    ld bc, $0201
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    inc c
    ld [$1119], sp
    ld [hl], $26
    jr z, jr_05a_4501

jr_05a_44d9:
    ld l, b
    ld c, b
    ld d, b
    ld d, b
    ld d, c
    ld d, b
    rst $00
    add b
    cp a
    sub b
    rst $38
    or b
    rst $18
    ret


    cp a
    add [hl]
    ld b, e
    ld a, l
    call nz, $3f03
    db $f4
    rrca
    db $fc
    sbc d
    pop bc
    inc c
    inc bc
    nop
    inc b
    nop
    ld [$1000], sp
    db $10
    ld de, $2a20
    jr nz, jr_05a_4536

jr_05a_4501:
    ld c, c
    ld b, b
    ld a, a
    nop
    jr nz, jr_05a_4529

    ccf
    ld bc, $c0c0
    ld h, c
    inc de
    rst $38
    rst $38
    push af
    db $10
    dec hl
    jr nz, jr_05a_4569

    ld b, b
    set 0, b
    ld [hl], a
    jr nz, jr_05a_44d9

    ld de, $0e5f
    cp a
    ld [$08ff], sp
    ld b, h
    rst $38
    db $10
    ld [bc], a
    ld h, b
    rst $38
    sub b
    ld b, h

jr_05a_4529:
    rst $38
    ld [$0400], sp
    ld b, e
    rst $38
    ld [bc], a
    ld [hl], a
    inc b
    ld a, h
    db $fc
    inc bc
    ld a, a

jr_05a_4536:
    nop
    ld b, e
    ccf
    nop
    inc bc
    rst $38
    nop
    ld a, a
    nop
    ld c, [hl]
    rst $38
    nop
    inc de
    ld bc, $c0ff
    rst $38
    jr nc, jr_05a_4588

    ld [$c60f], sp
    rst $00

jr_05a_454d:
    db $e3
    inc hl
    di
    inc de
    pop af
    ld de, $69f9
    ld sp, hl
    adc c
    ld c, e
    db $fc
    inc b
    ld b, e
    ld sp, hl
    add hl, bc
    rlca
    ld a, [c]
    inc de
    db $e4
    daa
    call nz, $c847
    ld c, a
    cp [hl]
    nop
    ld a, h

jr_05a_4569:
    inc bc
    ret nz

    jr nz, jr_05a_454d

    db $10
    ld b, e
    ldh a, [$50]
    ld [bc], a
    ret nc

jr_05a_4573:
    ld c, b
    ret c

    ld b, l
    ld l, b
    ld hl, sp+$01
    jr z, jr_05a_4573

    ld b, e
    inc b
    db $fc
    ld [$f8f8], sp
    db $10
    ldh a, [rNR52]
    and $79
    ld sp, hl
    ret nz

jr_05a_4588:
    add h
    db $ed
    add hl, bc
    ld bc, $02ff
    cp $8c
    db $fc
    or b
    ldh a, [$c0]
    ret nz

    dec h
    add b
    add l
    cp c
    add e
    cp e
    ld bc, $e020
    db $ec
    dec a
    ld bc, $8080
    rst $18
    add b
    rst $38
    db $ec
    ld d, d
    add hl, bc
    ld bc, $0202
    dec b
    dec b
    inc bc
    dec bc
    dec bc
    rrca
    inc de
    ld [hl+], a
    rla
    ld [hl], e
    ld [bc], a
    ld bc, $0301
    ld [hl+], a
    ld [bc], a
    nop
    inc bc
    ld b, e
    inc b
    rlca
    ld c, d
    ld [$010f], sp
    rlca
    ld [$0745], sp
    inc b
    ld bc, $0403
    ld b, e
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0102
    ld bc, $a6cf
    inc de
    ld b, $07
    ld a, [de]
    inc e
    ld [hl], l
    ld l, d
    adc d
    add l
    dec b
    ld h, d
    pop hl
    ld a, [c]
    ld a, [c]
    pop af
    ldh a, [$f1]
    ldh [$f1], a
    ld [c], a
    pop hl
    ld l, l
    inc bc
    rlca
    rra
    jr nz, jr_05a_4652

    and e
    or [hl]
    rlca
    ld b, b
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld c, a
    rst $38
    nop
    nop
    cp $49
    ld bc, $e0ff
    dec h
    nop
    cp a
    nop
    ld e, a
    nop
    xor a
    add b
    rst $18
    add b
    ld l, a
    ld b, b
    scf
    jr nz, jr_05a_4644

    jr nz, @+$21

    ld d, b
    cp a
    or b
    ld [hl], a
    ld a, b
    jr c, jr_05a_469d

    rrca
    rra
    nop
    add b
    add b
    nop
    ld bc, $0400
    add e
    ld [$04c7], sp
    di
    ld [bc], a
    adc [hl]
    rst $18
    ld de, $c080
    jr nz, jr_05a_4664

    ld [$0c08], sp
    inc b
    ld e, $02
    ld a, [hl]
    ld a, [bc]
    rst $38
    add hl, bc
    rst $30
    add hl, bc
    rst $38
    ld bc, $fe43

jr_05a_4644:
    ld [bc], a
    ld b, $fc
    inc b
    ld hl, sp+$18
    and b
    ld h, b
    nop
    xor h
    nop
    sbc e
    dec h
    add b

jr_05a_4652:
    ld b, e
    ret nz

    ld b, b
    ld b, e
    ldh [rNR41], a
    rrca
    ldh a, [rNR10]
    db $fc
    inc e
    ld a, [$dd1a]
    dec a
    jr c, @-$02

    pop hl

jr_05a_4664:
    ldh a, [rDIV]
    inc bc
    jr nz, jr_05a_4688

    add e
    nop
    jp hl


    dec b
    ld bc, $04fe
    ld hl, sp+$11
    db $e3
    db $ec
    ld c, e
    inc de
    add b
    add b
    ldh [$e0], a
    db $10
    ld hl, sp+$08
    db $f4
    ld d, $ea
    ld a, [bc]
    push af
    dec d
    ld [$050a], a
    ld h, d
    pop af

jr_05a_4688:
    ldh a, [$f8]
    db $ec
    ld d, a
    inc hl
    add b
    ld b, e
    ld b, b
    ret nz

    rst $38
    db $ec
    ld c, d
    ld h, $01
    nop
    nop
    inc h
    ld [bc], a
    nop
    nop
    inc h

jr_05a_469d:
    inc b
    ld bc, $0808
    db $76
    add h
    and l
    call nz, $249f
    ld [$0000], sp
    ld h, $10
    nop
    nop
    ld h, $20
    nop
    nop
    ld h, $40
    nop
    ld b, c
    ld [hl+], a
    ld b, b
    nop
    ld bc, $8022
    nop
    add c
    jp $0281


    nop
    ld [bc], a
    nop
    add a
    add e
    ld [bc], a
    dec b
    nop
    ld a, [bc]
    add h
    add e
    nop
    dec d
    adc l
    call nc, $0304
    inc b
    inc c
    jr nc, jr_05a_4706

    and h
    and d
    ld h, d
    dec b
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld b, e

jr_05a_46e1:
    rra
    nop
    ld b, l
    ccf
    nop
    nop
    ld e, a
    adc b
    add e
    nop
    cp a
    adc h
    add e
    nop
    ld a, a
    adc h
    add e
    nop
    rst $38
    add h
    add e
    nop
    jp hl


    ld b, h
    db $10
    ldh a, [$03]
    pop hl
    jr nz, jr_05a_46e1

    jr nz, jr_05a_4765

    inc c
    inc bc
    ld bc, $0905

jr_05a_4706:
    add hl, bc
    inc bc
    ld de, $e0e7
    rrca
    nop
    ld b, $01
    jp $05fb


    dec d
    nop
    xor e
    nop
    rst $18
    nop
    add sp, $2a
    rst $38
    nop
    ld c, c
    ld bc, $03ff
    nop
    rst $38
    nop
    rst $28
    ld b, e
    db $10
    rst $38
    ld b, $08
    rst $38
    ld b, $3f
    ld b, c
    cp a
    ld b, b
    xor l
    nop
    cp a
    inc hl
    add b
    dec c
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh [$28], a
    add sp, $28
    ret c

    inc a
    ld b, e
    db $fc
    inc e
    rla
    xor $1a
    ld sp, hl
    ld bc, $00fc
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $28
    ld sp, $0fff
    pop af
    add hl, bc
    ldh a, [$0a]
    ld [$f41a], a
    inc d
    ldh [rNR41], a
    ld b, e
    ret nz

    ld b, b
    and e
    nop
    ld c, [hl]

jr_05a_4765:
    ld bc, $8000
    adc a
    jp $8000


    ld b, l
    ld b, b
    ret nz

    ld [bc], a
    ret nz

    jr nc, jr_05a_47ab

    db $ec
    daa
    ld [bc], a
    add b
    add b
    add b
    jp nz, $ec80

    ld sp, $ecff
    ld h, h
    ld a, [bc]
    ld bc, $0301
    inc bc
    rlca
    rrca
    rlca
    rlca
    rrca
    ld e, $0f
    ld b, e
    rra
    ld c, $0a
    ld e, $0f
    rlca
    rrca
    rrca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ret


    sbc c
    ld b, $01
    ld bc, $0703
    inc bc
    daa
    rra
    ld b, e
    ccf
    ld a, a
    inc bc
    daa
    rra

jr_05a_47ab:
    rlca
    inc bc
    add d

jr_05a_47ae:
    sbc e
    push de
    or l
    ld [bc], a
    inc a
    xor l
    ld h, [hl]
    inc hl
    rst $38
    inc b
    db $db
    rst $20
    ld b, d
    add c
    add c
    ld h, c
    inc c
    jr jr_05a_47c9

    inc l
    jr jr_05a_4800

    nop
    jr @-$7d

    nop
    ld b, d

jr_05a_47c9:
    add c
    db $db
    rst $20
    inc hl
    rst $38
    ld b, $bd
    ld a, [hl]
    nop
    inc a
    ld c, d
    inc h
    ld a, [hl]
    add h
    and c
    inc bc
    add c
    jp $8100


    ld b, e
    add c
    nop
    inc bc
    nop
    add c

Jump_05a_47e3:
    add c
    jp $9d83


    ld [bc], a
    ld a, [hl]
    rst $38
    ld e, d
    push de
    cp l
    xor b
    nop
    ld h, l
    ld bc, $fc72
    ld b, e
    cp $7f
    ld bc, $fc72
    or a
    nop
    db $76
    ld b, a
    ldh a, [$e0]
    and l

jr_05a_4800:
    nop
    sub [hl]
    db $ec
    ld d, h
    adc e
    nop
    or c
    add [hl]
    nop
    cp a
    ld bc, $0000
    adc c
    nop
    add $87
    nop
    or b
    inc b
    rst $20
    db $db
    ld c, d
    xor l
    sbc c
    add d
    sbc e
    ld h, e
    sub e
    sbc a
    add h
    nop
    cp b
    ld h, a
    inc b
    jr jr_05a_47ae

    inc l
    ld e, d
    cp l
    push bc
    sub b
    adc l
    ld bc, $0900
    ld [hl], b
    ld hl, sp-$04
    ld a, [hl]
    cp $7f
    ld [hl], a
    rst $38
    ld [c], a
    rst $30
    adc h
    ld bc, $8718
    sbc a
    rlca
    or $76
    rst $38
    cp $7f
    db $fc
    ld a, [hl]
    ld [hl], b
    adc d
    ld bc, $4315
    ld e, $0f
    adc h
    nop
    ld [hl], h
    add [hl]
    rst $28
    ld a, [bc]
    jp $bdff


    rst $38
    ld c, [hl]
    rst $38
    and a
    rst $18
    add a
    rst $38
    rst $08
    jp $d900


    rst $00
    adc e
    ld b, h
    rst $38
    ld a, [hl]
    adc e
    ld bc, $ff14
    db $ec
    ld b, c
    rlca
    jr jr_05a_4886

    inc h
    inc h
    dec h
    dec h
    ld b, l
    ld b, l
    ld b, e
    ld b, e
    ld b, d
    inc c
    add e
    add d
    add [hl]
    add d
    add e
    add d
    push bc
    add c
    xor e
    add c
    push de
    add c
    ld l, e
    ld b, h

jr_05a_4886:
    ld b, b
    ld a, a
    db $ec
    dec [hl]
    ldh [rNR44], a
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_05a_490a

    nop
    ret nz

    add b
    add b
    nop
    add d
    nop
    dec d
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld b, h
    rst $38
    add b
    sbc b
    rst $18
    dec b
    inc bc
    rlca
    ld bc, $0308
    db $10
    add e
    cp a
    ld [$213e], sp
    dec a
    ld [hl+], a
    rra
    db $10
    rra
    jr jr_05a_48e7

    add h
    adc l
    ld [bc], a
    ccf
    jr nz, jr_05a_494d

    jp nz, $e8b3

    add hl, hl
    rst $38
    nop
    ld a, c
    dec c
    ret nz

    jp $3cff


    ret


    jr nc, jr_05a_48fd

    ret nz

    ret nz

    nop
    jp $e700


    nop
    add sp, $2d
    rst $38

jr_05a_48e7:
    nop
    inc b
    db $fd
    ld [bc], a
    db $fc
    rlca
    db $fc
    ld b, h
    rlca
    ld a, [$0779]
    ldh a, [$f0]
    db $fd
    rrca
    cp $02
    db $fd
    ld [bc], a
    ld e, a
    rst $38

jr_05a_48fd:
    nop
    add hl, bc
    call z, $f033
    rra
    ld hl, sp+$0f
    db $fc
    rlca
    rst $38
    inc bc
    and e

jr_05a_490a:
    nop
    ld a, [c]
    xor e
    nop
    db $f4
    ld [bc], a
    ld a, a
    add b
    ccf
    jp c, $3a01

    rlca
    ld [hl], b
    ldh a, [$38]
    ld [$047c], sp
    ld hl, sp+$04
    ld b, l
    cp $02

jr_05a_4922:
    dec bc
    ldh [rNR32], a
    add h
    ld a, h
    ret c

    jr c, jr_05a_4922

    ld [$0cf4], sp
    ld a, [c]
    ld a, [bc]
    ld b, e
    pop af
    add hl, bc
    add hl, bc
    pop hl
    ld de, $31c1
    ld [c], a
    ld [hl+], a
    and h
    ld h, h
    ld c, b
    ret c

    ld b, e
    ld c, b
    ret z

    dec b
    db $10
    sub b
    ld h, b
    ldh [$80], a
    add b
    and a
    nop
    sub b
    and e
    nop
    sub [hl]

jr_05a_494d:
    ld bc, $40c0
    ld b, l
    ldh [rNR41], a
    rst $38
    db $ec
    ld b, e
    dec de
    inc c
    ld e, $01
    ld hl, $4020
    ld [hl], b
    ld b, b
    inc e
    jr nz, jr_05a_4971

    jr jr_05a_4967

    ld b, $01
    inc bc

jr_05a_4967:
    inc c
    inc c
    ld bc, $1f10
    db $10
    rrca
    ld [$0703], sp

jr_05a_4971:
    ld b, $07
    db $ec
    ld b, l
    rla
    add b

jr_05a_4977:
    ret nz

    jr nz, @+$32

    ld [$020c], sp
    ld [bc], a
    ld bc, $f001
    nop
    cp a
    ret nz

    ld a, [hl]
    inc bc
    db $fc
    rlca
    ldh a, [$1f]
    call nz, $20f8
    ret nz

    db $ec
    dec [hl]
    dec b
    ld bc, $0003
    inc b
    ld [$2208], sp
    db $10
    inc bc
    jr nz, jr_05a_49c6

    jr nz, jr_05a_49d3

    ld b, l
    ld b, b
    ld a, a
    ld b, h
    add b
    rst $38
    ld [bc], a
    pop hl
    sbc [hl]
    ccf
    call nz, $08e7
    ld bc, $00fe
    rst $38
    nop
    rst $38
    jr nc, jr_05a_49c2

    ld [bc], a
    ld hl, sp+$30
    xor b
    inc b
    inc bc
    rlca
    jr jr_05a_49f4

    ld b, b
    add h
    nop
    cp l
    rlca
    dec b

jr_05a_49c2:
    nop
    dec bc
    nop
    ld d, a

jr_05a_49c6:
    nop
    cp a
    nop
    ld b, l
    rst $38
    nop
    add hl, de
    db $fd
    inc bc
    db $fc
    inc b
    ldh a, [$08]

jr_05a_49d3:
    ld a, [$fd08]
    ld [$047f], sp
    rrca
    ld [bc], a
    inc bc

jr_05a_49dc:
    ld bc, $e010
    rlca
    ei
    inc b
    db $fc
    dec bc
    ld hl, sp+$4f
    jr c, jr_05a_49dc

    cpl
    rst $18
    inc b
    ld e, b
    inc e
    ld l, $03
    ld e, a
    add d
    rst $10
    ld c, [hl]
    rst $38

jr_05a_49f4:
    nop
    jr jr_05a_4977

    ld e, a
    ld h, b
    rra
    db $10
    adc a
    ld [$0463], sp
    rst $30
    inc b
    ld sp, hl
    ld [bc], a
    rst $38
    ld [bc], a
    cp h
    pop bc
    rrca
    ld de, $01ff
    rst $38
    ld [bc], a
    db $fd
    dec b
    db $f4
    dec [hl]
    nop
    ret nz

    ld a, [de]
    ldh [rNR41], a
    sub b
    ld [hl], b
    adc b
    ld l, b
    nop
    call nz, $c404
    ld [$12ca], sp
    jp nc, Jump_05a_62a2

    add d
    ld h, d
    jp nz, $c036

    ld a, $e4
    inc e
    db $fc
    inc b
    ldh a, [$a4]
    nop
    ld d, a
    inc b

jr_05a_4a33:
    ldh [rNR41], a
    ret nz

    ld b, b
    nop
    ld [hl+], a
    add b
    ld bc, $8000
    rst $38
    db $ec
    ld c, a
    rrca
    ld bc, $0703
    rlca
    ld [$0018], sp
    jr nz, jr_05a_4a4b

    ld b, b

jr_05a_4a4b:
    ld c, d
    ld b, b
    pop bc
    cp [hl]
    add b
    rst $38
    db $ec
    ld b, a
    rla
    ld bc, $0301
    inc bc
    inc c
    inc e
    ld h, b
    ldh [$03], a
    nop
    rst $08
    ret nz

    ld a, a
    jr c, @-$3f

    ld b, $7f
    ld bc, $01fe
    db $fc
    inc bc
    jr c, jr_05a_4a33

    db $ec
    ld a, [hl+]
    inc hl
    ld bc, $0243
    inc bc
    rlca
    inc bc
    nop
    inc b
    ld [$0100], sp
    ld [$2300], sp
    rrca
    dec de
    ld [$101f], sp
    rra
    ld e, $27
    ld h, c
    rrca
    add b
    rst $38
    nop
    adc a
    ldh a, [$72]
    db $fd
    ld l, h
    rra
    ld a, [c]
    rrca
    pop af
    rrca
    ldh [$1f], a
    add b
    ld a, a
    add b
    rst $38
    ld b, b
    ld b, e
    rst $38
    jr nz, jr_05a_4a9f

jr_05a_4a9f:
    rst $38
    sbc l
    ret nc

    ldh [$2b], a
    inc bc
    inc bc
    rrca
    inc c
    rla
    scf
    ld b, a
    ld b, b
    ld a, a
    add b
    add a
    ld hl, sp-$10
    rst $38
    db $ec
    rra
    ei
    rlca
    db $f4
    dec bc
    xor d
    push de
    ld a, b
    ccf
    db $fc
    rlca
    ld a, [$7207]
    adc a
    inc b
    rst $38
    ld h, h
    rst $38
    cp b
    ld e, a
    ret nc

    cpl
    and b
    rst $18
    ret nz

    ld a, a
    and b
    ld a, a
    ld b, e
    ld de, $0fff
    ld hl, $41ff
    rst $38
    add d
    cp $02
    cp $c4
    db $fc
    jr c, @-$02

    ld a, a
    add a
    rst $38
    nop
    sbc e

jr_05a_4ae5:
    sbc $17
    ldh a, [$f8]
    ld a, $c6
    rst $20
    ld sp, hl
    sbc b
    ld a, a
    call nz, $c33f
    rst $38
    and b
    ld a, a
    ld hl, $23fe
    db $fc
    ld b, a
    ei
    add h
    db $fc
    ld [$43f8], sp
    db $10
    ldh a, [rSCX]
    jr nz, jr_05a_4ae5

    ld b, l
    ld b, b
    ret nz

    add hl, hl
    add b
    ld l, a
    dec b
    ldh [$f0], a
    rst $38
    rrca
    ld hl, sp+$07
    cp a
    nop
    call Call_05a_4000
    ld [hl+], a
    ret nz

    ld b, e
    ld h, b
    and b
    inc bc
    ldh [rNR41], a
    ret nz

    ret nz

    db $ec
    ld sp, $f001
    ldh a, [rIE]
    db $ec
    ld [hl+], a
    ld [hl+], a
    inc b
    ld b, $34
    inc [hl]
    ld c, h
    ld a, h
    inc sp
    ccf
    inc c
    ld [hl+], a
    rrca
    nop
    add hl, bc
    ld b, e
    add hl, de
    ld de, $1302
    ld [bc], a
    inc bc
    inc hl
    ld [bc], a
    ld l, [hl]
    inc bc
    inc bc
    nop
    inc b
    nop
    ld h, $08
    rlca
    inc b
    inc b
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $ec01
    ld [hl+], a
    ld c, $41
    ld b, e
    ld b, [hl]
    ld c, a
    ld c, b
    ld e, a
    ret nc

    rst $38
    ldh [$df], a
    ldh [rIE], a
    ret nz

    ccf
    ret nz

    ld b, a
    rst $38
    add b
    ld b, e
    ld a, a
    ld b, b
    ld b, e
    ccf
    jr nz, @+$07

    rra
    db $10
    rrca
    ld [$0607], sp
    add e
    ret


    dec b
    ret nz

    ret nz

    jr nc, jr_05a_4baa

    jr jr_05a_4b94

    add h
    db $db
    ld a, [bc]
    dec b
    inc bc
    inc bc
    ld d, a
    inc bc
    xor e
    ld bc, $80ff
    ld [hl], c
    ld a, [hl]
    call c, $03c6
    rrca
    ccf
    ld [hl], b
    pop af
    and h
    nop
    ld e, h

jr_05a_4b94:
    rlca
    inc bc
    nop
    adc a
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, b
    rst $38
    nop
    ld b, $80
    ld b, a
    ld a, b
    cpl
    jr nc, jr_05a_4be6

    jr nz, jr_05a_4bec

    ld a, a

jr_05a_4baa:
    ld b, b
    nop
    rst $38
    rst $00
    adc e

jr_05a_4baf:
    inc bc
    add b
    rst $38
    ld b, b
    rst $38
    ld a, h
    dec b
    ldh [$e0], a
    ld hl, sp+$1c
    cp $03
    add sp, $24
    rst $38
    nop
    ld [bc], a
    inc bc
    db $e4
    inc e
    ld b, e
    adc b
    ld a, b
    ld bc, $3cc4
    and l
    db $e3
    xor b
    nop
    sub b
    nop
    ld [bc], a
    db $ec
    ld hl, $8105
    jp $23e3


    di
    inc de
    ld b, e
    ld sp, hl
    add hl, bc
    rlca
    db $fd
    dec b
    rst $38
    rlca
    cp $03
    rst $38
    inc bc

jr_05a_4be6:
    xor c
    nop
    sbc b
    and h
    nop
    and b

jr_05a_4bec:
    ld [bc], a
    jr nz, jr_05a_4baf

    ret nz

    db $ec
    dec sp
    nop
    db $10
    inc h
    jr nc, jr_05a_4c03

    inc de
    sub e
    sbc c
    sbc a
    and $fe
    adc h
    db $fc
    ld l, b
    ld hl, sp-$6c
    sbc h

jr_05a_4c03:
    call nz, $cc22
    dec b
    ld b, b
    ret nz

    ld h, b
    ld h, b
    ld b, b
    ld h, b
    db $ec
    ld hl, $ecff
    ld l, $23
    ld bc, $0222
    rlca
    inc bc
    inc b
    ld b, $04
    rlca
    ld [$080e], sp
    ld b, l
    rra
    db $10
    ld b, l
    ccf
    jr nz, jr_05a_4c6f

    ld a, a
    ld b, b
    ld c, e
    rst $38
    add b
    ldh a, [rNR50]
    call nc, $030a
    rlca
    inc c
    ld e, $30
    dec d
    ld b, b
    ld a, [hl+]
    add b
    ld d, l
    nop
    and a
    add c
    nop
    xor e
    add h
    add e
    inc bc
    ld e, a
    nop
    xor a
    nop
    ld e, e
    rst $38
    nop
    nop
    rst $38
    db $ec
    jr nz, jr_05a_4c56

    ld [bc], a
    rlca
    dec a
    ld a, d
    ld_long $fff5, a
    ld e, $ff

jr_05a_4c56:
    ld bc, $cb83
    nop
    ld d, a
    jp $00cd


    nop
    add sp, $25
    rst $38
    nop
    ld bc, $01fe
    add d
    add e
    db $f4
    jr nz, jr_05a_4c6b

jr_05a_4c6b:
    ld e, a
    inc de
    add sp, -$08

jr_05a_4c6f:
    ld d, l
    cp a
    xor b
    ld d, a
    ld d, l
    xor e
    adc b
    rst $30
    ldh [$7f], a
    ldh a, [$1f]

jr_05a_4c7b:
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    ld b, e
    rst $38
    ld bc, $ff5d
    nop
    add hl, bc
    ei
    inc b
    push de
    ld a, [hl+]
    xor e
    ld d, h
    ld d, l
    xor e
    xor e
    ld d, l
    db $f4
    dec h
    nop
    dec bc
    inc bc
    ld b, b
    ret nz

    jr nz, jr_05a_4c7b

    ld b, e
    db $10
    ldh a, [$08]
    inc c
    db $fc
    ld c, $fa
    dec b
    db $fd
    inc b
    rst $38
    ld [bc], a
    ld b, h
    cp $82
    ld b, e
    pop bc
    ld a, a
    nop
    ldh [rWY], a
    ccf
    pop hl
    inc de
    db $e3
    ld a, $c3
    ld a, [hl]
    db $d3
    ld a, [hl]
    rst $28
    ld a, h
    rst $10
    ld a, l
    xor a
    ld sp, hl
    rst $18
    ei
    cp l
    di
    ld e, l
    rst $30
    cp [hl]
    cp $ec
    ld hl, $1005
    jr nc, @+$0a

    ld c, b
    ld b, h
    ld b, h
    inc hl
    ld [hl+], a
    ld [bc], a
    ld hl, $0121
    ld [hl+], a
    ld b, c
    ld bc, $8181
    add h
    nop
    ld sp, $0200
    inc hl
    inc b
    rlca
    ld [$1008], sp
    ldh a, [rNR41]
    ld h, b
    ldh [$a0], a
    jp $01fc


    ret nz

    ld b, b
    dec h
    add b
    call $a501
    rst $38
    db $ec
    ld l, c
    dec bc
    rlca
    inc bc
    dec b
    inc b
    rlca
    inc b
    inc bc
    rlca
    ld bc, $0003
    ld bc, $4365
    ld bc, $c800
    add c
    ld h, c
    ld a, [bc]
    ld bc, $0301
    inc bc
    rlca
    ld b, $05
    inc b
    rlca
    rlca
    inc bc
    db $ec
    inc h
    ld b, $80
    add b
    ret nz

    jp $eae0


    or $23
    rst $38
    inc de
    ld a, l
    cp $f4
    ld a, b
    ld a, b
    ldh a, [$e0]
    pop af
    ldh a, [$e2]
    pop af
    db $e3
    ldh [$f1], a
    ld a, b
    ldh a, [$f4]
    ld a, b

jr_05a_4d38:
    ld a, l
    cp $23
    rst $38
    ld [bc], a
    db $eb
    rst $30
    jp $efa3


    nop
    add b
    db $f4
    ld a, [hl+]
    rst $08
    nop
    rst $28
    xor e
    rst $08
    ld bc, $c78f
    db $f4
    add hl, sp
    rst $08
    dec b
    ldh [$c0], a
    and b
    ld h, b
    jr nz, jr_05a_4d38

    cp a
    nop
    ld [hl], b
    ld [hl+], a
    ldh [$b2], a
    nop
    sub e
    rlca
    inc e
    ld c, $16
    inc de
    rra
    inc de
    rrca
    rra
    ld b, e
    rlca
    rrca
    rlca
    rrca
    rra
    dec de
    rla
    ld [de], a
    rra
    inc e
    ld c, $ae
    sbc a
    ld [bc], a
    ret c

    ret z

    ld hl, sp-$59
    sbc a
    ld [bc], a
    ld hl, sp-$08
    ld a, b
    xor c
    sbc a
    ld [bc], a
    ld bc, $0101
    sbc b
    nop
    ld [hl], h
    nop
    ld bc, $018f
    inc [hl]
    dec b
    ld b, e
    ldh [rOCPS], a
    ld [hl], $ff
    ccf
    sub a
    nop
    call nz, $bf04
    ld a, a
    dec hl
    rst $30
    ld b, e
    call c, $5a01
    inc b
    jp nz, Jump_05a_5607

    db $ed
    db $fc
    adc h
    ld bc, $a813
    xor a
    nop
    nop
    db $f4
    dec h
    ld bc, $85ca
    nop
    ret nz

    inc de
    ld a, h
    rst $38
    ei
    ld a, a
    ld [hl], h
    rst $38
    ld [$e8fd], a
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    ei
    ld a, a
    ld a, h
    rst $38
    add l
    nop
    jp c, Jump_05a_5701

    rst $28
    and a
    sbc a
    nop
    xor $44
    rst $38
    ld [hl], a
    nop
    rst $30
    xor [hl]
    sbc a
    rst $38
    db $ec
    ld [hl], e
    add hl, bc
    dec c
    ld e, $17
    scf
    rla
    ccf
    rra
    ccf

jr_05a_4de8:
    dec e
    dec a
    ld b, e
    jr jr_05a_4e29

    nop
    jr @+$4a

    inc a
    add hl, de
    ld c, [hl]
    jr nc, jr_05a_4e6d

    inc b
    ld e, b
    jr nc, jr_05a_4e71

    nop
    jr nc, jr_05a_4de8

    dec h
    ldh [rNR42], a
    add b
    add b
    push bc
    jp $eff7


    rst $38
    rst $38
    db $fd
    cp $f4
    ld a, b
    ld a, b
    ldh a, [$e0]
    pop af

jr_05a_4e0f:
    ldh a, [$e2]
    pop af
    db $e3
    ldh [$f1], a
    ld a, b
    ldh a, [$f4]
    ld a, b
    ld a, l
    ld a, $3f
    rra
    rla
    rrca
    dec b
    inc bc
    db $ec
    cpl
    rlca
    and b

jr_05a_4e25:
    ret nz

    add sp, -$10
    db $fc

jr_05a_4e29:
    ld hl, sp-$42
    ld a, h
    and l
    rst $08
    ld bc, $c78f
    and a
    rst $08
    ld bc, $7fbf
    jp $03e4


    and e
    jp $0101


    db $ec
    ld h, $00
    inc c
    and e
    nop
    sbc b
    ld c, l
    inc c
    ld e, $47
    sbc b
    inc a
    ld b, l
    jr jr_05a_4e89

    ld [bc], a
    cp b
    cp h
    ld hl, sp+$43
    db $fc
    add sp, $02
    db $ec
    or b
    ld a, b
    ld h, e
    ld [bc], a
    jr jr_05a_4e98

    jr jr_05a_4e25

    nop
    adc e
    ld c, a
    inc a
    jr jr_05a_4e6a

    inc l
    jr jr_05a_4ea3

    nop
    jr jr_05a_4e6a

jr_05a_4e6a:
    jr jr_05a_4e0f

    adc c

jr_05a_4e6d:
    ld c, c
    jr jr_05a_4eac

    or e

jr_05a_4e71:
    xor a
    ld b, a
    dec c
    ld e, $47
    ld b, $0f
    ld b, [hl]
    inc bc
    rlca
    inc b
    dec b
    inc bc
    rlca
    nop
    inc bc
    adc l
    nop
    ret nz

    inc de
    db $fc
    rst $38
    ei
    ld a, a

jr_05a_4e89:
    ld [hl], h
    rst $38
    ld [$e8fd], a
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    ei
    ld a, a
    ld a, h

jr_05a_4e98:
    ccf
    sub l
    nop
    ld [c], a
    add l
    ld bc, $0418
    ld a, $fc
    rst $18

jr_05a_4ea3:
    cp $ee
    ld b, h
    rst $38
    ld [hl], a
    nop
    rst $30
    and [hl]
    xor a

jr_05a_4eac:
    ld bc, $ff3f
    adc [hl]
    ld bc, $0032
    ret nz

    and l
    jp hl


    ld b, e
    ret nz

    ldh [rBGP], a
    ld h, b
    ldh a, [rBGP]
    or b
    ld a, b
    ld b, e
    jr @+$3e

    rst $38
    db $ec
    ld b, c
    dec e
    inc e
    jr jr_05a_4efb

    nop
    ld [hl-], a
    ld [hl+], a
    add hl, sp
    ld hl, $111d
    ld e, $10
    rrca
    ld [$050f], sp
    rla
    inc de
    cpl
    ld [bc], a
    cpl
    ld [hl+], a
    ld c, a
    ld b, $5f
    ld b, h
    ld a, a
    ld b, h
    ccf
    jr @-$12

    dec sp
    ldh [rNR44], a
    ld bc, $0600
    ld [bc], a
    ld [$1300], sp
    nop
    rla
    db $10
    ccf
    inc bc
    ccf
    inc l
    ld hl, sp+$30
    pop hl
    ret nz

    rst $08

jr_05a_4efb:
    add b
    cp a
    ld bc, $067f

jr_05a_4f00:
    rst $38
    dec c
    rst $38
    ld a, [de]
    rst $38
    ld de, $21ff
    rst $38
    ld [hl-], a
    rst $38
    ld a, h
    db $ec
    dec sp
    dec e
    ldh [$e0], a
    inc e
    inc c
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    ld [hl], c
    ccf
    rrca
    rst $38
    ld b, $ff
    inc bc
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    cp h
    rst $38
    jp $89a4


    nop
    rra
    db $ec
    ccf
    dec de
    ldh [$c0], a
    dec de
    inc de
    rst $00
    inc b
    di
    ld [bc], a
    ei
    pop bc
    db $fd
    ld h, c
    rst $38
    and c
    rst $38
    ld [hl], c
    rst $38
    ld a, [c]
    rst $38
    dec [hl]
    rst $38
    ld c, $ff
    inc bc
    rst $38
    add c
    rst $38
    ldh [$a3], a
    nop
    or h
    db $f4

jr_05a_4f54:
    ld a, [hl-]
    nop
    jp nz, $24e0

    inc bc
    ld [$1108], sp
    db $10
    ld h, a
    jr nz, jr_05a_4f00

    add c
    rst $38
    ld [bc], a
    rst $38
    xor h
    rst $38
    ld e, a
    pop af
    ldh [$fc], a
    add b
    rst $38
    nop
    rst $38
    sbc h
    rst $38
    ld [hl], d
    rst $38
    or c
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    jp $63ff


    rst $38
    ld d, a
    db $f4
    inc a
    nop
    ld h, b
    ldh [rNR43], a
    add b
    ret nz

    ld b, b
    ret nz

    nop
    db $ec
    inc l
    or $22
    xor $22
    cp $42
    db $fc
    call nz, Call_05a_68f8
    ld a, b
    jr c, jr_05a_4f54

    inc d
    cp $12
    cp $1a
    rst $38
    add hl, bc
    rst $38
    adc l
    rst $38
    adc a
    rst $38
    adc c
    rst $38
    add l
    rst $38
    db $ec
    daa
    inc hl
    ld bc, $0243
    inc bc
    ld b, l
    inc b
    rlca
    ld b, a
    ld [$430f], sp
    inc c
    rrca
    inc bc
    ld a, [bc]
    dec bc
    add hl, bc
    add hl, bc
    dec h
    inc b
    ld [hl+], a
    ld [bc], a
    ld hl, sp+$2c
    and d
    ld d, $03
    inc bc
    rlca
    inc c
    rrca
    db $10
    ld de, $2020
    ld b, b
    ldh [$80], a
    ld [hl], c
    add b
    ld a, a
    add b
    ld d, l
    xor d
    ld a, [hl+]
    push de
    inc d
    db $eb
    nop
    ld d, b
    rst $38
    nop
    dec b
    add b
    rst $38
    ld h, b
    ld a, a
    inc e
    rra
    rst $00
    xor h
    dec bc
    ld b, b
    nop
    xor b
    add b
    ld d, h
    ld b, b
    ld a, [hl+]
    jr nz, jr_05a_5007

    db $10
    ld c, $0c
    reti


    ret nz

    ld [bc], a
    rra
    rra
    ldh [$83], a
    cp c
    ld [bc], a
    ld a, a
    ret nz

    ccf
    ld b, l
    ldh [$1f], a
    ld [$3fc0], sp

jr_05a_5007:
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    ld e, b
    rst $38
    nop
    inc bc
    ldh [rIE], a
    rra
    rra
    ld b, l
    rra
    nop
    ld b, e
    rrca
    nop
    ld b, $af
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    ld a, b
    inc b
    ldh [$e0], a
    inc e
    db $fc
    inc bc
    xor e
    nop
    sbc c
    and h
    db $dd
    ld [bc], a
    ld [bc], a
    db $fd
    ld bc, $ff58
    nop
    ld bc, $ff1f
    jp nc, $00e0

    inc bc
    cp a
    nop
    ld e, [hl]
    ld e, $20
    ldh [rNR23], a
    ld hl, sp+$14
    db $fc
    adc d
    ld a, [hl]
    ld c, d
    cp [hl]
    sub d
    ld a, l
    ld b, e
    cp l
    add a
    ld a, b
    di
    db $fc
    adc h
    adc a
    add [hl]
    add a
    inc b
    add l
    nop
    pop bc
    ld b, d
    jp $c744


    jr nc, @-$5a

    nop
    and c
    inc bc
    rlca
    cp $1f
    ld hl, sp-$7c
    db $db
    nop
    ld bc, $0183
    ld b, a
    rlca
    cp $02
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    jp $ecb8


    jr nc, jr_05a_50a0

    add b
    and a
    nop
    jr z, jr_05a_5085

    ld b, b
    ret nz

jr_05a_5085:
    ld b, b
    inc h
    ret nz

    jp $d988


    sub c
    rst $38
    db $ec
    ld [hl], d
    inc bc
    ld bc, $0103
    ld bc, $0348
    rlca
    inc b
    ld bc, $0303
    ld bc, $cb00
    sub c
    inc b

jr_05a_50a0:
    ld b, $02
    add hl, bc
    ld b, $09
    ld b, e
    rlca
    rrca
    inc bc
    inc bc
    rlca
    ld bc, $7b03
    ldh [rNR42], a
    rrca
    nop
    cpl
    rra
    dec a
    ld a, e
    ld a, a
    rst $38
    or $f9
    ret nc

    ldh [$e0], a
    ret nz

    add b
    add $c2
    adc e
    add $8f
    add b
    add $e0
    ret nz

    ret nc

    ldh [$f6], a
    ld sp, hl
    ld a, a
    rst $38
    ccf
    ld a, a
    cpl
    rra
    ld b, l
    ld b, $0f
    ld b, h
    ld c, $0f
    ld [$fe9f], sp
    cp $fc
    cp $f8
    db $fc
    nop
    ldh a, [rPCM34]
    ld de, $0608
    ld d, $0f
    ld l, [hl]
    sbc a
    db $fd
    cp $fa
    db $fc
    db $fc
    ld hl, sp-$44
    ld a, b
    ld a, b
    inc a
    ld e, $3c
    ld b, e
    ld a, $1c
    and e
    add a
    inc bc
    cp h
    ld a, b
    ldh a, [$f8]
    and e
    nop
    sbc b
    ld bc, $8040
    db $ec
    ld h, e
    adc [hl]
    nop
    add b
    ld b, $01
    nop
    ld [bc], a
    inc bc
    ld b, $03
    rlca
    jp $8200


    nop
    ld bc, $9584
    adc [hl]
    nop
    ret nc

    ld bc, $868f
    ld b, e
    ld c, a
    adc [hl]
    ld [bc], a
    rst $18
    adc [hl]
    rst $38
    add e
    nop
    add sp, $04
    ld a, b
    db $fc
    nop
    ld [hl], b
    nop
    ld b, e
    ld bc, $8600
    pop bc
    sub d
    xor a
    ld bc, $46cf
    ld b, e
    cpl
    xor $1b
    rst $28
    xor $ff
    cp $fe
    ld a, h
    cp $38
    ld a, h
    nop
    jr nc, @+$81

    rst $38
    ldh a, [rIE]
    rst $28
    rst $38
    db $d3
    rst $38
    xor c
    rst $30
    and c
    rst $38
    or e
    rst $38
    cp a
    rst $38
    rst $18
    call nz, $898b
    nop
    sub $83
    ld bc, $0210
    ld a, h
    ld hl, sp-$48
    ld c, b
    db $fc
    sbc $03
    cp b
    db $fc
    ld a, h
    ld hl, sp-$75
    ld bc, $ff24
    db $ec
    ld c, l
    inc hl
    ld bc, $020d
    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $08
    rrca
    db $10
    rra
    dec h
    ccf
    jp z, $ecff

    inc hl
    ld [hl-], a
    ld bc, $0346
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld b, $07
    add e
    ret


    jr @+$22

    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    inc b
    rst $08
    ld [bc], a
    or a
    dec b
    ld d, a
    ld c, d
    rla
    dec b
    xor a
    ld a, [de]
    rst $08
    dec [hl]
    rra
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    ldh a, [rNR41]
    rst $18
    inc bc
    ld h, b
    ld h, b
    sub b
    ldh a, [rSCX]
    ld [$00f8], sp
    jr jr_05a_5201

    ld hl, sp+$38
    ld b, e
    jr nc, @-$06

    ld b, e
    ld [hl], b
    ldh a, [rDIV]
    ld a, e
    rst $38
    ld a, b
    rst $38
    ldh [rWY], a
    rst $38
    nop
    ld a, [bc]
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
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
    dec h
    rst $38
    nop
    rst $38
    db $ec
    dec [hl]
    rlca
    rra
    ld a, a
    db $fc
    add e
    cp $01
    ld a, h
    add e
    add e
    reti


    ld [bc], a
    ld bc, $3fff
    add a
    call $fe23
    jp nz, $2481

    rst $38
    add [hl]
    rst $18
    ldh a, [$2b]
    nop
    ld h, d
    ld b, l
    ld [bc], a

jr_05a_5201:
    inc bc
    ld b, e
    inc b
    rlca

jr_05a_5205:
    ld [bc], a
    adc c
    adc a
    ld a, e
    ld b, e
    rst $38
    ccf
    adc c
    reti


    ld [de], a
    rst $38
    rst $00
    add a
    ld a, e
    ld sp, $7cff
    rst $08
    adc $c6
    add $e6
    ld h, [hl]
    ld a, [hl]
    ld a, h
    cp l
    add hl, de
    rst $00
    jp $21f0


    rst $18
    inc b
    ld a, b
    ld a, b
    add h
    db $fc
    sbc h
    ld b, [hl]
    db $fc
    inc a
    ld bc, $fc38
    ld b, a
    ld a, b
    ld hl, sp+$01
    ldh a, [$f8]
    inc hl
    ldh a, [rSB]
    ldh [$f0], a
    dec h
    ldh [$c4], a
    adc b
    inc hl
    ld hl, sp+$27
    db $fc
    ld [hl+], a
    cp $8b
    ld bc, $ff6d
    db $ec
    ld l, c
    ld de, $0c1c
    ld [de], a
    ld d, $13
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    rlca
    rrca
    rlca
    rlca
    rrca
    ld e, $0f
    ld b, e
    rra
    ld c, $02
    ld e, $0f
    rlca
    add h
    sub d
    ld [bc], a
    inc bc
    ld bc, $ec01
    ld [hl-], a
    ld [bc], a
    sbc d
    ld a, h
    cp $22
    rst $38
    inc b
    db $db
    rst $20
    ld b, d
    add c
    add c
    ld h, c
    ld de, $0818
    inc l
    jr jr_05a_52bd

    nop
    jr jr_05a_5205

    nop
    ld b, d
    add c
    db $db
    rst $20
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld e, d
    ld c, e
    inc a
    jr jr_05a_5298

    ccf
    rra
    ccf
    rrca
    rra
    nop

jr_05a_5298:
    rrca
    ld a, a
    inc bc
    add b
    nop
    add b
    ret nz

    or c
    nop
    ld [hl], h
    ld bc, $e0c0
    xor [hl]
    nop
    adc b
    ld [$f0f0], sp
    ld hl, sp-$28
    cp h
    ld hl, sp-$04
    nop
    ld hl, sp-$14
    ld c, a
    ld b, [hl]
    jr jr_05a_52f3

    ld bc, $193d
    adc e
    nop
    jp hl


jr_05a_52bd:
    inc b
    ldh [$e0], a
    ldh a, [$b0]
    ld a, b
    ld b, e
    ldh a, [$f8]
    ld bc, $f000
    add l
    sbc e
    ld [bc], a
    dec de
    ld a, $1f
    adc c
    sbc a
    inc bc
    add b
    add b
    ret nz

    ld b, b
    ld b, [hl]
    ldh [$c0], a
    ld bc, $c000
    ld b, a
    jr jr_05a_531b

    nop
    add hl, de
    adc l
    nop
    jp hl


    ld [$f0f0], sp
    db $fc
    call c, $fcbe
    cp $00
    db $fc
    adc c
    ld bc, $052e
    ret c

jr_05a_52f3:
    cp [hl]
    cp $ff
    nop
    rst $38
    adc e
    nop
    ld [hl], b
    ld b, e
    ld e, $0f
    add e
    nop
    ret nz

    ld c, $c3
    rst $38
    cp l
    rst $38
    ld c, [hl]
    rst $38
    and a
    rst $18
    add a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    call nz, $878b
    nop
    ret c

    adc e
    ld bc, $4310
    ld a, b

jr_05a_531b:
    ldh a, [rIE]
    db $ec
    jr nc, jr_05a_5323

    ld bc, $0201

jr_05a_5323:
    inc bc
    ld b, e
    inc b
    rlca
    ld b, a
    ld [$490f], sp
    db $10
    rra
    inc d
    jr nz, jr_05a_536b

    jr nz, jr_05a_5363

    jr nz, jr_05a_5364

    jr nz, jr_05a_536a

    jr nz, jr_05a_5374

    ld b, b
    ld a, l
    ld b, b
    ld d, a
    ld l, b
    ld l, d
    ld d, l
    push de
    xor d
    xor d
    push de
    db $ec
    daa
    dec d
    inc bc
    rlca
    inc c
    jr jr_05a_537b

    ld h, b
    ret nz

    add b
    add b
    nop
    ret nz

    nop
    and b
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    ld a, [$4f00]
    rst $38
    nop
    ld a, [bc]
    ld a, a
    nop
    ld e, l

jr_05a_5363:
    nop

jr_05a_5364:
    ret nz

    nop
    call nz, $ea00
    nop

jr_05a_536a:
    rst $28

jr_05a_536b:
    add e
    adc l
    ld bc, $ff80
    db $ec
    ld h, $0e
    ld [hl], b

jr_05a_5374:
    ldh a, [$fe]
    ld c, $0f
    ld bc, $0002

jr_05a_537b:
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
    and h
    db $dd
    inc b
    ld d, a
    nop
    cp a
    nop
    rst $38
    sub d
    pop hl
    res 0, c
    nop
    rst $38
    db $f4
    inc l
    nop
    ld b, $07
    ldh [$60], a
    ld [hl], b
    db $10
    db $fc
    inc c
    ld a, a
    inc bc
    add sp, $23
    rst $38
    nop
    rlca
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ld a, [$ec05]
    inc sp
    rlca
    ldh a, [$f0]
    cp $4e
    rst $38
    ld hl, $18f7
    ld c, a
    rst $38
    nop
    inc de
    push af
    ld a, [bc]
    ld [$d415], a
    dec hl
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b

jr_05a_53ca:
    cp a
    nop
    rst $38
    db $ec
    add hl, sp
    ld bc, $8080
    ld b, e
    ret nz

    ld b, b
    ld b, l
    ldh [rNR41], a
    ld b, l
    ldh a, [rNR10]
    dec b
    ld d, b
    or b
    xor b
    ld e, b
    jr jr_05a_53ca

    ld b, e
    ld [$01f8], sp
    inc c
    db $f4
    ld b, e
    inc b
    db $fc
    ld b, e
    ld [bc], a
    cp $ff
    db $ec
    ld l, l
    ld d, $3c
    jr @+$28

    inc l
    daa
    ld a, $3f
    rra
    rra
    rrca
    rlca
    rrca
    rrca
    rra
    ld a, $1f
    inc e
    ld a, $7e
    inc a
    jr c, jr_05a_5484

    ld a, h
    ld c, h
    ld a, b
    ldh a, [$0d]
    ld a, h
    ld a, b
    jr c, jr_05a_548d

    ld a, $7c
    inc e
    ld a, $3f
    ld e, $0f
    ld e, $08
    ld b, $7d
    ld c, $17
    rrca
    ccf
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $ed
    di
    and c
    jp $8301


    dec bc
    call nz, $1bd4
    dec a
    ld a, [hl]
    db $f4
    ld a, b
    ld a, b
    ldh a, [$e0]
    pop af
    ldh a, [$e2]
    pop af
    db $e3
    ldh [$f1], a
    ld a, b
    ldh a, [$f4]
    ld a, b
    dec a
    ld a, [hl]
    rra
    ccf
    rrca
    rra
    dec bc
    rlca
    ld bc, $6103
    db $f4
    dec h
    rst $08
    nop
    sub a
    or d
    rst $08
    ld bc, $c78f
    db $f4
    ld sp, $f4cf
    ld sp, $6e00
    adc c
    nop
    ret nz

    ld bc, $870b
    adc d
    nop
    adc $08
    ldh a, [$f0]
    pop hl
    ldh a, [$e2]
    pop hl
    di
    ld a, b
    pop af
    adc a
    nop
    ld [c], a
    add [hl]
    ld bc, $b210
    xor a
    ld bc, $c78f
    cp c
    xor a
    dec b
    db $ed
    di
    xor e
    rst $00
    rrca
    sbc a

jr_05a_5484:
    adc d
    db $dd
    ld [$f0e0], sp
    pop hl
    ldh [$f2], a
    ld a, c

jr_05a_548d:
    di
    db $f4
    ld a, c
    adc e
    nop
    db $e4
    cp l
    xor a
    ld bc, $cf87
    or e
    xor a
    dec d
    rra
    ccf
    inc a
    ld a, a
    ei
    ld a, a
    ld [hl], h
    rst $38
    ld [$e8fd], a
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    ei
    ld a, a
    inc a
    ld a, a
    adc c
    db $d3
    and l
    sbc a
    nop
    xor $44
    rst $38
    ld [hl], a
    nop
    rst $30
    or d
    sbc a
    rst $38
    ld a, a
    ld b, e
    ld bc, $c200
    add c
    db $ec
    inc a
    rra
    dec bc
    rlca
    ld c, $1e
    rra
    ccf
    dec a
    ld a, [hl]
    db $f4
    ld a, b
    ld a, b
    ldh a, [$e0]
    pop af
    ldh a, [$e2]
    pop af
    db $e3
    ldh [$f1], a
    ld a, b
    ldh a, [$f4]
    ld a, b
    dec a
    ld a, [hl]
    rra
    ccf
    rrca
    rra
    inc bc
    rlca
    ld c, l
    ld bc, $0b03
    rlca
    inc bc
    inc bc
    rlca
    rrca
    rra
    dec de
    scf
    rra
    ccf
    dec c
    ld e, $b8
    rst $08
    nop
    ld hl, sp-$57
    rst $08
    ld b, e
    adc a
    rst $00
    dec b
    rlca
    adc a
    rra
    rrca
    ld l, $1f
    xor h
    rst $08
    ld b, $fc
    call c, $fcc6
    cp $80
    db $fc
    and a
    rst $08
    ld bc, $dce8
    and e
    rst $08
    db $ec
    ld hl, $ff13
    di
    rst $38
    rst $38
    nop
    rst $38
    add b
    pop bc
    jp $e3e1


    rst $30
    ld [hl], a
    rst $38
    ld a, $7f
    inc e
    ld a, $00
    inc e
    db $ec
    dec sp
    rlca
    ldh a, [$e0]
    ldh [$f0], a
    ld h, b
    ldh a, [$e0]
    ldh [$83], a
    nop
    jp nc, $23f4

    nop
    dec h
    nop
    ld bc, $0089
    sub e
    nop
    rra
    xor c
    adc a
    ld bc, $dce8
    and a
    adc a
    add h
    nop
    ret nc

    ld a, [bc]
    ret c

    adc b
    db $ec
    cp b
    call c, $f8f0
    ldh [$f0], a
    add b
    ldh [$89], a
    nop
    ld h, b
    dec d
    inc a
    ld a, a
    ei
    ld a, a
    ld [hl], h
    rst $38
    ld [$e8fd], a
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    ei
    ld a, a
    inc a
    ld a, a
    rra
    ccf
    adc c
    nop
    or b
    and e
    sbc a
    nop
    xor $44
    rst $38
    ld [hl], a
    ld b, e
    rst $30
    rst $38
    inc bc
    rst $28
    rst $38
    sbc $ff
    and e
    sbc a
    rst $38
    db $ec
    ld hl, $0109
    rlca
    db $10
    add hl, de
    jr nz, jr_05a_55d6

    jr @+$21

    rlca
    rlca
    adc h
    sub l
    inc h
    ld bc, $034b
    ld [bc], a
    ret


    adc h
    jp $0788


    inc b
    rlca
    inc bc
    inc bc
    dec b
    rlca
    inc bc
    inc bc
    db $f4
    ld [hl+], a
    rst $18
    ld a, [de]
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$06
    cp $01
    rst $38
    ret nz

    rst $38
    add hl, sp
    ccf
    daa
    ld b, $47
    ld b, b
    add e
    nop
    add a
    add b
    adc e
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, d
    rst $38
    nop
    ld c, $98
    rst $20
    db $fc
    sub e

jr_05a_55d6:
    cp $23
    cp $47
    cp $87
    rst $38
    ret z

    rst $38
    dec sp
    ccf
    db $ec
    daa
    rlca
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    ld a, a
    ret nz

    rst $38
    add b
    ld d, h
    rst $38
    nop
    ld b, $01
    rst $38
    inc bc
    rst $38
    rlca
    cp $07
    ld b, e
    db $fc
    rrca
    inc bc
    ld sp, hl
    rra
    ei
    rra
    ld b, e
    cp $0f
    rlca
    rst $38
    rlca
    rst $38
    sbc a

Jump_05a_5607:
    ld h, c
    rst $38
    adc a
    cp a
    db $ec
    add hl, hl
    dec bc
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp+$08
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $e7ac
    inc e
    ld a, h
    rst $38
    cp $e1
    pop hl
    ldh a, [$f0]
    ld a, h
    db $fc
    sbc $fe
    adc a
    rst $38
    sbc e
    rst $38
    inc sp
    rst $38
    ld [hl], e

jr_05a_562f:
    rst $38
    ld h, a
    rst $38
    adc $fe
    sbc h
    db $fc
    rst $38
    rst $38
    rlca
    rst $30
    db $ec
    scf
    dec b
    add b
    add b
    ret nz

    ret nz

    and b
    and b
    ld b, e
    ret nc

    ld d, b
    ld bc, $60e0
    ld b, e
    ret nz

    ld b, b
    daa
    ret nz

    ld bc, $8080
    res 3, b
    ld bc, $e0e0
    db $ec
    ld e, a
    rst $38
    db $ec
    ld l, e
    dec bc
    ld bc, $0100

jr_05a_565f:
    inc bc
    inc bc
    rlca
    rrca
    rlca
    rlca
    rrca
    ld e, $0f
    ld b, e
    rra
    ld c, $0d
    ld e, $0f
    rlca
    rrca
    rrca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $0103
    ld b, l
    ld bc, $0103
    rlca
    inc bc
    ld b, l
    inc bc
    rlca
    ld bc, $050e
    ld b, e
    rlca
    rrca
    ld bc, $0700
    ld l, h
    ld bc, $0818
    ld b, e
    inc h
    jr jr_05a_5695

    inc a

jr_05a_5695:
    jr @+$25

    inc a
    inc bc
    ld a, [hl]
    inc a
    ld a, [hl]
    ld h, [hl]
    ld [hl+], a
    rst $38
    inc b
    db $db
    rst $20
    ld b, d
    add c
    add c
    add e
    sbc c
    ld a, [bc]
    inc l
    jr @+$3e

    nop
    jr jr_05a_562f

    nop
    ld b, d

jr_05a_56b0:
    add c
    db $db
    rst $20
    inc hl
    rst $38
    inc b
    jp $e7e7


    jp Jump_05a_4381


    jp $22e7


    rst $38
    inc b
    cp l
    rst $38
    add c
    db $db
    jp $8143


    nop
    nop
    add c
    ld a, l
    db $f4
    ld b, b
    nop
    ld l, h
    db $ec
    ld b, d
    add [hl]
    nop
    ret nz

    ld [$1030], sp
    ld e, b
    jr nc, jr_05a_5753

    nop
    jr nc, jr_05a_565f

    nop
    add [hl]
    adc a
    ld b, $60
    jr nz, jr_05a_5695

    ld h, b
    ldh a, [rP1]
    ld h, b
    adc [hl]
    nop
    db $ed
    inc b
    ld b, $02
    add hl, bc
    ld b, $09
    add e
    nop
    ld a, c
    ld b, e
    inc e
    ld a, $85
    nop
    cp d
    xor l
    sbc a
    nop
    jr nz, jr_05a_56b0

    sbc a

Jump_05a_5701:
    add h
    nop
    ld [hl], b
    ld c, b
    rrca
    ld e, $0c
    rlca
    rrca
    jp $bdff


    rst $38
    ld c, [hl]
    rst $38
    and a
    rst $18
    add a
    rst $38
    rst $08
    ld [hl+], a
    rst $38
    nop
    ld a, [hl]
    jp nz, $018b

    jp $8bff


    nop
    call nc, $afaf
    rst $38
    db $ec
    ld b, a
    rla
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc b
    dec b
    inc b
    ld [bc], a
    ld [$080d], sp
    dec bc
    ld de, $121f
    ld e, $13
    rra

jr_05a_573a:
    rra
    inc hl
    ccf
    ld b, c
    ld a, a
    db $ec
    dec a
    ldh [rNR42], a
    ld bc, $0601
    ld b, $18
    jr jr_05a_57aa

    ld h, b
    add b
    add b
    nop
    ld bc, $0255
    xor e
    rlca

jr_05a_5753:
    ld e, h
    rrca
    cp b
    scf
    ret nc

    rst $28
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
    jr z, jr_05a_573a

    add h
    ei
    ldh a, [$3a]
    db $db
    ldh [rNR50], a
    inc bc
    inc b
    inc c
    pop de
    ldh a, [$37]
    jr nc, jr_05a_5781

    ld [$1a0d], sp
    ld e, $65
    ld a, a
    add a
    db $fd
    ld a, [hl-]
    ld [$55d5], a
    ld [$f52a], a

jr_05a_5781:
    dec e
    ld_long a, $ff0c
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $0aff
    rst $38
    dec d
    rst $38
    db $ec
    scf
    ldh [$27], a
    ld b, b
    ldh [rNR10], a
    jr @+$3e

    ld b, $ff
    ld bc, $08f7
    rst $38
    ld [$867f], sp
    cp l
    ld b, e
    db $fd
    rst $38
    ld b, e
    cp a
    add b
    ld a, a
    nop

jr_05a_57aa:
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    ld hl, $3edf
    rst $38

jr_05a_57b3:
    ld a, [$d4f5]
    ei
    ld [$75fd], a
    cp $ec
    ccf
    ld [hl+], a
    add b
    ld b, h
    ld b, b
    ret nz

    inc c
    ld b, b
    ld b, b
    ret nz

    ret nz

    ld [hl], b
    or b
    jr jr_05a_57b3

    inc c
    db $fc
    rra
    rst $38
    db $fc
    ld b, h
    rst $38
    ld [$1005], sp
    rst $38
    inc d
    rst $38
    ld a, [hl+]
    rst $38
    db $ec
    ld d, e
    dec bc
    ret nz

    ret nz

    ld h, b
    and b
    jr nc, jr_05a_57b3

    db $10
    ldh a, [rNR32]
    db $fc
    ld [hl], $fa
    rst $38
    db $ec
    ld a, d
    ld bc, $3030
    ld c, b
    ld a, b
    ldh a, [rNR12]
    ld a, h
    ld a, b
    jr c, jr_05a_5874

    ld a, l
    ccf
    rra
    ccf
    ccf
    rra
    rrca
    rra
    rlca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $24ec
    ldh [$28], a
    ld [bc], a
    ld bc, $070b
    rrca
    rra
    rra
    ccf
    dec a
    ld a, [hl]
    db $f4
    ld a, b
    ld a, b
    ldh a, [$e0]
    pop af
    pop af
    db $e3
    ldh a, [$e2]
    ldh [$f1], a
    ld a, b
    ldh a, [$74]
    ld hl, sp-$03
    cp $ff
    rst $38
    rst $08
    rst $38
    adc e
    rst $00
    ld bc, $a183
    jp $f3e9


    ld sp, hl
    ld [hl+], a
    rst $38
    inc bc
    ccf
    ld a, a
    rla
    rrca
    db $f4
    ld sp, $01cf
    adc a
    rst $00
    and e
    rst $08
    ld bc, $1e2f
    db $f4
    dec [hl]
    rst $08
    ld l, h
    db $f4
    inc h
    nop
    ld a, e
    sub a
    nop
    cp [hl]
    nop
    db $f4
    add h
    nop
    rst $10
    inc bc
    sbc a
    rst $38
    inc bc
    adc a
    adc e
    nop
    ld [c], a
    sub l
    ld bc, $bb0c
    xor a
    adc e
    db $e3
    ld b, $7d
    ld a, $74
    ld a, b
    ld hl, sp+$70
    ld h, b
    add [hl]
    db $e3
    nop
    ld hl, sp-$7a
    db $e3
    inc b
    cp a

jr_05a_5874:
    rst $38
    rst $28
    rst $38
    ei
    cp [hl]
    xor a
    ld bc, $c78f
    or a
    xor a
    add l
    reti


    inc de
    inc a
    ld a, a
    ei
    ld a, a
    ld [hl], h
    rst $38
    ld [$e8fd], a
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    db $fc
    rst $38
    add l
    nop
    jp c, $9fa9

    nop
    xor $44
    rst $38
    ld [hl], a
    nop
    rst $30
    and h
    sbc a
    ld bc, $fedf
    and a
    sbc a
    rst $38
    db $ec
    ld d, e
    inc hl
    ld bc, $0000
    ld hl, sp+$2c
    add h
    ld b, $01
    inc bc
    ld b, $04
    inc c
    ld [$2508], sp
    db $10
    inc bc
    jr nz, jr_05a_58ea

    jr nz, jr_05a_58f7

    adc b
    add e
    ld b, e
    ccf
    jr nz, jr_05a_58c9

    rra

jr_05a_58c9:
    jr nz, jr_05a_5911

    rra
    db $10
    ld [de], a
    jr nc, jr_05a_590f

    ld [hl], b
    rst $18
    ldh a, [$af]
    ldh a, [$5f]
    ld hl, sp-$6c
    rst $38
    xor d
    rst $38
    ld d, l
    ld a, a
    dec hl
    ld a, a
    ld bc, $ec17
    ld hl, $0f05
    rra
    ld a, a
    ldh [$8f], a
    nop

jr_05a_58ea:
    ld b, e
    rlca
    nop
    dec bc
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    cp a

jr_05a_58f7:
    nop
    ld a, a
    nop
    ld e, l
    rst $38
    nop
    add hl, bc
    ld a, a
    sbc l
    db $e3
    rst $38
    ld b, c
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    db $ec
    ld hl, $c007
    ret nz

    ld hl, sp+$38

jr_05a_590f:
    cp $06

jr_05a_5911:
    rst $38
    ld bc, $ff43
    nop
    dec b
    db $fd
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    add a
    add e
    ld bc, $15ea
    adc e
    add e
    ld bc, $2ad5
    add l
    add e
    dec c
    rst $18
    ld l, $f3
    ld a, a
    add l
    rst $38
    ld c, $ff
    sub l
    rst $38
    xor d
    rst $38
    ld d, b
    cp $f4
    ld a, [hl+]
    nop
    ld e, h
    ld a, [bc]
    add b
    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ld h, b
    and b
    and b
    ld h, b
    adc e
    add e
    inc bc
    ld d, b
    or b
    or b
    ld d, b
    add l
    add e
    inc de
    cp b
    ld e, b
    ld e, [hl]
    cp [hl]
    or l
    ld e, a
    ld l, e
    rst $38
    push de
    rst $38
    ld l, d
    cp $b0
    db $fc
    ld c, b
    db $ec
    nop
    ret nc

    nop
    and b
    db $ec
    ld e, a
    rst $38
    db $ec
    ld [hl], d
    inc bc
    ld bc, $0301
    inc bc
    inc hl
    rlca
    ld [bc], a
    rrca
    ld c, $0f
    ld b, e
    rra
    ld c, $0a
    ld c, $0f
    rlca
    rrca
    rrca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld hl, sp+$30
    sbc c
    inc bc
    jr jr_05a_598b

jr_05a_598b:
    inc a
    ld a, [hl]
    inc hl
    rst $38
    inc b
    db $db
    rst $20
    ld b, d
    add c
    add c
    ld h, c
    inc c

jr_05a_5997:
    jr jr_05a_59a1

    inc l
    jr jr_05a_59d8

    nop
    jr @-$7d

    nop
    ld b, d

jr_05a_59a1:
    add c
    db $db
    rst $20
    inc hl
    rst $38
    ld [bc], a
    cp h
    ld a, [hl]
    jr jr_05a_5997

    ld sp, $00b2
    ld [hl], e
    dec c
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    rst $38
    ld a, l
    ld a, $3f
    rra
    rra
    rrca
    rrca
    ld hl, sp+$45
    nop
    ld a, b
    inc bc
    ret nz

    ret nz

    jr nz, jr_05a_5a27

    and l
    ret


    inc h
    ret nz

    and [hl]
    nop
    adc l
    add a
    rst $28
    ld b, $f1
    pop af
    cp $fa
    db $fd
    ld a, a
    ccf

jr_05a_59d8:
    adc b
    rst $28
    sub c
    ld bc, $0103
    ld b, b
    ret nz

    push bc
    ld bc, $2216
    add b
    call nz, $8b8b

jr_05a_59e8:
    cp a
    add hl, bc
    db $e3
    db $e3
    db $fc
    push af
    ei
    rst $38
    rst $38
    ld a, a
    ld a, $3e
    add h
    cp a
    nop
    ld b, $93
    ld bc, $0101
    add b
    add b
    or c
    ld bc, $030c
    ld e, $0f
    ld e, $0f
    adc l
    nop
    add d
    add l
    nop
    ret nz

    ld a, [bc]
    jp $bdff


    rst $38
    ld c, [hl]
    rst $38
    and a
    rst $18
    add a
    rst $38
    rst $08
    jp $c78c


    adc e
    ld [bc], a
    rst $38
    cp h
    ld a, [hl]
    or l
    cp a
    adc c
    ld bc, $ff26
    db $ec

jr_05a_5a27:
    ld l, c
    ld d, $1c
    inc c
    ld [de], a
    ld d, $13
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    rlca
    rrca
    rlca
    rlca
    rrca
    ld e, $0f
    rra
    ld c, $0f
    ld e, $0e
    ld c, b
    rra
    rrca
    ld bc, $1f0c
    ld c, h
    inc c
    ld e, $04
    ld [de], a
    inc c

jr_05a_5a4c:
    ld [de], a
    nop
    inc c
    ld a, l
    inc bc
    inc a
    nop
    cp l
    ld a, [hl]
    inc hl
    rst $38
    inc b
    db $db
    rst $20
    ld b, d
    add c
    add c
    ld h, c
    inc c
    jr jr_05a_5a69

    inc l
    jr jr_05a_5aa0

    nop
    jr jr_05a_59e8

    nop
    ld b, d

jr_05a_5a69:
    add c
    db $db
    rst $20
    inc hl
    rst $38
    ld [bc], a
    cp l
    ld a, [hl]
    inc a
    db $ec
    ld sp, $8002
    add b
    ret nz

    xor c
    nop
    ld [hl], h
    dec c
    ld hl, sp+$70
    ld a, b
    ldh a, [$e0]
    ldh a, [$f0]
    ldh [$c0], a
    ldh [$80], a
    ret nz

    nop
    add b
    db $ec
    ld h, e
    adc e
    nop
    ld [hl], b
    inc bc
    ld e, $0f
    rrca
    ld e, $23
    rst $38
    dec bc
    jp $bdff


    rst $38
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    nop

jr_05a_5aa0:
    rst $28
    jr jr_05a_5adf

    adc e
    ld bc, $8310
    ld bc, $6d1a
    rlca
    ld a, [de]
    inc e
    ld h, $2f
    daa
    ccf
    dec de
    rra
    sub e
    cp a
    nop
    rst $38
    ld b, e
    rst $38
    nop
    inc b
    inc l
    jr jr_05a_5afa

    add c
    jr jr_05a_5a4c

    nop
    call nc, $ef8d
    ld bc, $1f0e
    add a
    xor a
    ld b, $4e
    rst $38
    and a
    rst $18
    add a
    rst $38
    rst $08
    res 6, e
    add e
    nop
    db $db
    nop
    nop
    adc l
    rst $38
    ld bc, $f078
    rst $38

jr_05a_5adf:
    db $ec
    add e
    inc d
    ld bc, $0303
    rlca
    rlca
    rrca
    ld c, $1f
    ld e, $3c
    inc a
    jr c, jr_05a_5b27

    ld a, b
    ld [hl], b
    ld a, c
    pop af
    ld [hl], e
    ld h, e
    di
    db $e3
    ld [hl+], a
    rst $38
    inc b

jr_05a_5afa:
    cp a
    ld a, a
    ld b, e
    ccf
    ld bc, $9ac3
    ld hl, sp+$3a
    and b
    add hl, bc
    cpl
    rra
    dec a
    ld sp, hl
    rst $38
    rst $38
    jp hl


    ldh a, [$80]
    ret nz

    add e
    adc e
    rlca
    dec sp
    ld a, l
    ld a, a
    rst $38
    jp $99ff


    rst $20
    ld b, e
    cp l
    jp $9902


    rst $20
    jp $ff28


    dec b
    ld a, a
    rst $38
    ccf

jr_05a_5b27:
    ld a, a
    cpl
    rra
    ld h, e
    inc b
    rlca
    nop
    rlca
    rrca
    rlca
    ld b, l
    rrca
    ld b, $04
    add hl, bc
    inc b
    add hl, bc
    nop
    ld b, $7f
    ld d, $40
    add b
    ret nz

    ldh a, [$fc]
    ld hl, sp+$7e
    db $fc
    ld e, $3f
    rlca
    rrca
    ld b, a
    add a
    rst $18
    rst $28
    db $fd
    db $fd
    db $fc
    ld sp, hl
    db $fc
    ld hl, sp-$08
    ld c, b
    db $fc
    cp $16
    ld hl, sp-$04
    db $fc
    ld hl, sp-$10
    ld sp, hl
    pop hl
    pop af
    jp Jump_05a_47e3


    add a
    rlca
    rrca
    ld e, $3f
    ld a, [hl]
    db $fc
    db $fc
    ld hl, sp-$40
    ldh a, [rLCDC]
    db $f4
    inc sp
    nop
    and l
    ld bc, $8080
    inc hl
    ret nz

    ld [hl+], a
    ldh [rDIV], a
    ldh a, [$e0]
    ld h, b
    ldh a, [$f0]
    inc h
    ld [hl], b
    inc bc
    ldh a, [rSVBK]
    ld h, b
    ldh a, [$c4]
    adc l
    ld b, $e0
    ret nz

    ret nz

    add b
    ret nz

    nop
    add b
    db $ec
    ld [hl], c
    rst $38
    db $ec
    dec h
    inc b
    ld bc, $0201
    ld [bc], a
    nop
    ld [hl+], a
    inc b
    inc bc
    ld [$0008], sp
    ld [$1023], sp
    ld bc, $1000
    dec h
    jr nz, jr_05a_5bab

    nop

jr_05a_5bab:
    jr nz, @+$29

    ld b, b
    ld [bc], a
    nop
    ld b, b
    nop
    dec h
    add b
    ld bc, $8181
    ld h, $91
    dec h
    and d
    sbc e
    db $d3
    add hl, bc
    ld b, $06
    jr jr_05a_5bda

    jr nz, jr_05a_5be4

    ld b, b
    ld b, b
    add b
    add b
    db $f4
    inc h
    nop
    inc bc
    jp $00dd


    add b
    db $ec
    add hl, hl
    ld bc, $e7e7
    add l
    db $dd
    ld bc, $4000

jr_05a_5bda:
    add e
    or a
    db $ec
    ld d, c
    ld [$8080], sp
    jr nc, @+$72

    inc c

jr_05a_5be4:
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $3af4
    db $db
    ld [bc], a
    ld bc, $0001
    ld hl, sp+$28
    nop
    xor b
    ld bc, $2020
    jp $3500


    inc h
    ld [$0800], sp
    daa
    inc b
    dec bc
    dec b
    dec b
    ld b, $06
    ld b, a
    ld b, [hl]
    ld b, $47
    dec b
    ld h, $27
    inc h
    ld b, e
    cpl
    jr z, @+$04

    rrca
    jr z, @+$21

    ld b, e
    ld d, b
    ld e, a
    ld a, [bc]
    ld e, [hl]
    ld d, c
    ld d, e
    and [hl]
    xor [hl]
    db $fc
    db $fc
    add d
    rst $38
    ld bc, $ecff
    dec a
    add e
    ld sp, hl
    dec e
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ld b, [hl]
    add $91
    sbc c
    db $eb
    ld [hl], l
    cp $06
    ld hl, sp+$08
    ldh a, [rNR10]
    ld hl, sp+$08
    cp $06
    db $fd
    inc bc
    rst $38
    pop af
    ld l, [hl]
    ld l, [hl]
    ld b, b
    ret nz

    add b
    add b
    rst $38
    db $ec
    cpl
    inc hl
    ld bc, $0243
    inc bc
    ld b, l
    inc b
    rlca
    ld b, l
    ld [$470f], sp
    db $10
    rra
    ld c, c
    jr nz, jr_05a_5c98

    ld c, c
    ld b, b
    ld a, a
    db $ec
    inc h
    add hl, de
    db $10
    ld [$0828], sp
    ld c, b
    ld b, h
    ld e, h
    add l
    db $fd
    adc [hl]
    rst $38
    nop
    rst $00
    nop
    add a
    nop
    rrca
    nop
    rla
    nop
    dec hl
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, b
    rst $38
    nop
    rlca
    ld [bc], a
    rst $38
    ld bc, $06ff
    rst $38
    rrca
    ld sp, hl
    sbc l
    nop
    inc de
    nop
    nop
    ld [hl+], a
    ld [bc], a
    inc bc
    nop
    inc b
    inc b
    dec b
    ld b, e
    ld [$020f], sp
    jr nc, jr_05a_5cd6

    ret nz

jr_05a_5c98:
    ld e, [hl]
    rst $38
    nop
    ld b, a
    ld bc, $45ff
    ld [bc], a
    cp $05
    jp nz, $3ffe

    rst $38
    add b
    rst $38
    cp e
    db $dd
    inc hl
    ld b, b
    ld bc, $6020
    and a
    nop
    inc a
    and l
    nop
    ld b, [hl]
    ld d, c
    inc b
    db $fc
    ld b, e
    ld [$0bf8], sp
    ld c, b
    ld hl, sp-$50
    or b
    sub b
    sub b
    ret nc

    ret nc

    add b
    ret nc

    jr nz, jr_05a_5ce8

    ld h, e
    add hl, bc
    inc bc
    inc bc
    inc c

jr_05a_5ccd:
    rra
    pop bc
    rst $20
    rlca
    adc [hl]
    ccf
    ld hl, sp-$14
    ld c, a

jr_05a_5cd6:
    add hl, bc
    inc c
    inc e
    inc hl
    daa
    ret nz

    rst $38
    ld e, $ff
    ld a, a
    pop hl
    add e
    ld bc, $001d
    rst $38
    db $ec
    ld d, h

jr_05a_5ce8:
    dec bc
    ret nz

    ret nz

    jr nz, jr_05a_5ccd

    sbc b
    ld hl, sp-$3c
    ld a, h
    ld a, [c]
    ld a, $f9
    rrca
    rst $38
    db $ec
    ld h, c
    inc de
    db $10
    ld h, b
    ld b, b
    ld hl, sp+$58
    call z, Call_05a_7f0e
    rra
    ccf
    rrca
    rra
    rrca
    rrca
    rlca
    rlca
    rrca
    rlca
    ld b, $0f
    ld b, e
    rrca
    ld c, $0b
    ld c, $0f
    rlca
    rrca

jr_05a_5d15:
    rrca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $0270
    ld bc, $0301
    add e
    sub a
    ld a, c
    ld bc, $3c5a
    inc hl
    rst $38
    inc b
    db $db
    rst $20
    ld b, d
    add c
    add c
    ld h, c
    inc c
    jr jr_05a_5d3c

    inc l
    jr jr_05a_5d73

    nop
    jr @-$7d

    nop
    ld b, d

jr_05a_5d3c:
    add c
    db $db
    rst $20
    inc hl
    rst $38
    ld bc, $7ebd
    ld b, a
    jr jr_05a_5d83

    ld [bc], a
    ld a, [hl]
    inc a
    inc a
    ld [hl+], a
    ld a, [hl]
    add e
    sub c
    inc bc
    rst $38
    rst $38
    jp Jump_05a_73e7


    and e
    nop
    ld h, d
    nop
    ld d, $f4
    ld d, b
    nop
    ld h, a
    db $ec
    ld a, $08
    inc e
    inc c
    daa
    rla
    cpl
    dec de
    ccf
    rrca
    rra
    and a
    adc a
    nop
    jr z, jr_05a_5d15

    adc a
    sub e
    and e
    sub l

jr_05a_5d73:
    nop
    ld [hl], b
    ldh a, [$35]
    nop
    and [hl]
    and e
    rst $18
    adc b
    di
    db $f4
    ld [hl+], a
    rst $18
    add h
    ei
    ld b, [hl]

jr_05a_5d83:
    rrca
    ld c, $82
    ei
    nop
    rlca
    adc l
    db $eb
    ld a, [bc]
    jp $bdff


    rst $38
    ld c, [hl]
    rst $38
    and a
    rst $18
    add a
    rst $38
    rst $08
    ld [hl+], a
    rst $38
    nop
    ld a, [hl]
    call nz, $8d8b
    nop
    jp nc, $bfaf

    rst $38
    db $ec
    ld a, d
    ld c, $01
    dec bc
    rlca
    rrca
    rra
    ld e, $3f
    inc e
    ld a, $1c
    ld e, $0e
    rrca
    ld b, $0f
    inc hl
    rlca
    dec d
    ld b, $0f
    inc e
    rrca
    dec c
    ld e, $3d
    ld e, $3c
    rra
    ld a, $1f
    ccf
    rra
    rrca
    rra
    rra
    rrca
    rlca
    rrca
    inc bc
    rlca
    ld b, l
    ld bc, $0003
    nop
    res 5, a
    ld [bc], a
    ld bc, $0701
    ld b, e
    rlca
    rrca
    ld bc, $0700
    ld a, c
    rrca
    ld a, b
    cp $df
    rst $28
    rst $38
    rst $38
    ld a, c
    add a
    nop
    ld bc, $0100
    ld a, c
    inc bc
    ld a, c
    rst $38
    add e
    adc l
    inc bc
    rra
    rst $38
    rst $08
    ccf
    ld b, e
    rst $28
    rra
    ld [bc], a
    rst $08
    ccf
    rra
    ld a, [hl+]
    rst $38
    dec bc
    cp $ff

jr_05a_5e04:
    ld a, [$f0fc]
    db $fc
    ld a, h
    rst $38
    rra
    ld a, a
    rlca
    rra
    ld [hl+], a
    rlca
    ld a, [bc]
    rra
    rra
    ld a, a
    ld a, h
    rst $38
    ldh a, [$fc]
    ret nz

    ldh a, [rP1]
    ret nz

    ld a, l
    ld [bc], a
    ld b, b
    add b
    ret nz

    and h
    nop
    cp c
    dec b
    ldh [$e0], a
    ret nz

    ret nz

    add b
    ret nz

    inc h
    add b
    inc bc
    ret nz

    ldh [$c0], a
    ret nz

    ld c, b
    ldh [$f0], a
    ld [bc], a
    ret nz

    ldh [$e0], a
    xor l
    nop
    and a
    nop
    ret nz

    ld b, l
    ret nz

    ldh [rSB], a
    nop
    ret nz

    db $ec
    ret


    rst $38
    db $ec
    ld [hl], c
    dec bc
    ld bc, $0100
    inc bc
    inc bc
    rlca
    rrca
    rlca
    rlca
    rrca
    ld e, $0f
    ld b, e
    rra
    ld c, $05
    ld e, $0f

jr_05a_5e5c:
    rlca
    rrca
    rrca
    rlca
    jp $f890


    inc h
    sbc c
    inc b
    jr jr_05a_5e70

    inc h
    jr @+$26

    ld c, c
    jr jr_05a_5eaa

    ld [bc], a
    ld e, d

jr_05a_5e70:
    inc a
    ld a, [hl]
    ld [hl+], a
    rst $38
    inc b
    db $db
    rst $20
    ld b, d
    add c
    add c
    add e
    sbc e
    ld de, $182c
    inc a
    nop
    jr jr_05a_5e04

    nop
    ld b, d
    add c
    db $db
    rst $20
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld e, d
    inc a
    jr jr_05a_5e5c

    and c
    nop
    nop
    ld hl, sp+$22
    cp l
    or l
    nop
    ld [hl], d
    inc b
    ret nz

    ldh [$c0], a
    add b
    add b
    db $ec
    ld h, a
    ld a, [bc]
    inc bc
    inc bc
    dec b
    inc bc
    dec bc
    rrca
    rra
    rra

jr_05a_5eaa:
    ld e, $1c
    ld a, $85
    ld bc, $430d
    add b
    ret nz

    jp z, $1301

    ld [bc], a
    ld bc, $0201
    xor h
    adc a
    inc b
    ret nz

    ld b, b
    ld h, b
    ldh [$f0], a
    and l
    xor a
    xor l
    ld bc, $4310
    ld e, $0f
    adc l
    nop
    add d
    add l
    nop
    ret nz

    ld a, [bc]
    jp $bdff


    rst $38
    ld c, [hl]
    rst $38
    and a
    rst $18
    add a
    rst $38
    rst $08
    jp $c78b


    adc e
    ld [bc], a
    rst $38
    ld e, d
    inc a
    or a
    cp a
    add a
    ld bc, $ff28
    db $ec
    ld [hl+], a
    inc bc
    rlca
    inc bc
    add hl, bc
    rlca
    jp $0081


    ld bc, $55ec
    ld a, [bc]
    ld [$8e07], sp
    rst $18
    rst $38
    rst $38
    ld hl, sp-$04
    add sp, -$10
    ld h, b
    ld b, e
    ldh a, [rSVBK]
    ldh [rNR52], a
    ld a, b
    jr c, jr_05a_5f87

    inc e
    ld a, $0e
    rra
    rlca
    rrca
    dec bc
    rlca
    rrca
    rra
    jr jr_05a_5f56

    ld [hl], e
    inc a
    scf
    ld a, b
    rst $30
    ld a, b
    di
    ld a, h
    ld hl, sp+$7f
    rst $38
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    dec b
    inc bc
    ldh a, [$29]
    nop
    dec hl
    ld [$fc02], sp
    ld l, [hl]
    rra
    rst $38
    rst $38
    inc bc
    rlca
    ld [bc], a
    ld b, h
    ld bc, $0800
    ld bc, $0303
    rlca
    rla
    rrca
    ld e, $ff
    db $fc
    and e
    jp z, $fe04

    ld a, [hl]
    rst $38
    ccf
    rst $38
    ld b, e
    cp a
    ld a, a
    ld [bc], a

jr_05a_5f56:
    ccf
    rst $38
    ld a, a
    ld h, $ff
    inc bc
    cp $ff
    db $fc
    cp $83
    nop
    adc b
    nop
    ldh [$ec], a
    ld a, [hl+]
    inc bc
    add b
    nop
    add b
    ret nz

    ld c, b
    ret nz

    ldh [rSC], a
    ret nz

    add b
    ret nz

    xor e
    nop
    ld a, [hl+]
    nop
    add b
    ld h, c
    ld c, b
    add b
    ret nz

    ld bc, $8000
    db $f4
    ld d, [hl]
    nop
    dec hl
    db $ec
    ld a, d
    rst $38
    db $ec

jr_05a_5f87:
    ld c, l
    ld bc, $0101
    ld b, e
    inc bc
    ld [bc], a
    dec bc
    rlca
    inc b
    rra
    inc e
    ccf
    inc [hl]
    ld a, a
    ld b, h
    rst $38
    add b
    rst $38
    add d
    db $ec
    ld b, a
    rla
    rlca
    rrca
    jr nc, jr_05a_6012

    push de
    add b
    xor e
    nop
    ld [hl], a
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    rlca

jr_05a_5fb0:
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    db $ec
    ld b, a
    add hl, bc
    add b
    ret nz

    jr nc, jr_05a_602d

    ld a, b
    jr @+$01

    and a
    rst $38
    ret nc

    and h
    db $dd
    ld [bc], a
    add c
    rst $38
    ld bc, $df84
    nop
    ld [$45ec], sp
    dec bc
    ld bc, $0403
    inc c
    dec d
    db $10
    ld a, [hl+]
    jr nz, jr_05a_5fb0

    ret nz

    rst $38
    ld b, b
    ld b, e
    rst $38
    add b
    ld b, [hl]
    rst $38
    nop
    ld bc, $ff01
    db $ec
    ld b, [hl]
    dec d
    ldh [$f0], a
    inc c
    inc c
    ld d, e
    inc bc
    xor h
    nop
    rst $18
    nop
    cp a
    ld a, [bc]
    rst $38
    dec e
    rst $38
    ld a, [hl-]
    rst $38
    ld [hl], h
    rst $38
    and b
    rst $38
    ld b, c
    add e
    ld bc, $ec1a
    ld c, e
    inc de
    add b
    add b
    ld b, b
    ld b, b
    ldh [rNR41], a
    ldh [$a0], a
    ldh a, [rSVBK]
    ld hl, sp+$38
    db $e4
    ld b, h

jr_05a_6012:
    ld a, [$fd02]
    ld bc, $01ff
    rst $38
    db $ec
    adc b
    rlca
    ld bc, $0301
    inc bc
    rlca
    ld c, $07
    ld b, $44
    rrca
    ld e, $43
    rra
    rrca
    ld d, $07
    rrca

jr_05a_602d:
    rrca
    rra
    rra
    ccf
    dec a
    ld a, a
    ld hl, sp+$7d
    db $fc
    ld a, b
    ld a, $7c
    ld e, $3f
    rrca
    rra
    rlca
    rrca
    dec b
    inc bc
    nop
    rst $18
    and a
    inc bc
    jr jr_05a_605f

    inc l
    nop
    ld b, e
    inc l
    jr @+$0a

    ld a, $1f
    ccf
    ccf
    rra
    rla
    rrca
    ld bc, $6103
    dec bc
    inc a
    nop
    cp l
    ld a, [hl]
    rst $30
    rst $28
    rst $38

jr_05a_605f:
    rst $38
    rrca
    rst $38
    ld h, a

jr_05a_6063:
    sbc a
    ld b, e
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    inc l
    rst $38
    ld [bc], a
    cp l
    ld a, [hl]
    inc a
    ld h, d
    add hl, bc
    add b
    ret nz

    add sp, -$10
    db $fc
    ld hl, sp-$08
    db $fc
    jr jr_05a_60f9

    ld b, h
    jr jr_05a_60ac

    ld bc, $003c
    rst $18
    ret


    ld [bc], a
    add b
    and b
    ret nz

    and e
    nop
    sbc d
    ld a, [bc]
    ld a, b
    db $fc
    ld a, h
    ld a, $3f
    ld e, $1f
    cp [hl]
    cp h
    cp $f8
    and e
    nop
    xor c
    ld c, b
    ldh a, [$f8]
    nop
    ldh [$c3], a
    sbc d
    inc b
    ldh [$80], a
    ret nz

    nop
    add b
    db $ec
    db $db
    rst $38
    db $ec

jr_05a_60ac:
    ld l, [hl]
    ld a, [bc]
    ld bc, $0301
    inc bc
    rlca
    rrca
    rlca
    rlca
    rrca
    ld e, $0f
    ld b, e
    rra
    ld c, $00
    ld e, $47
    rrca
    rlca
    ld d, c
    rrca
    ld b, $04
    add hl, bc
    ld [bc], a
    add hl, bc
    nop
    ld b, $7b
    inc bc
    inc a
    nop
    cp l
    ld a, [hl]
    inc hl
    rst $38
    inc b
    db $db
    rst $20
    ld b, d
    add c
    add c
    ld h, c
    inc c
    jr jr_05a_60e4

    inc l
    jr jr_05a_611b

    nop
    jr jr_05a_6063

    nop
    ld b, d

jr_05a_60e4:
    add c
    db $db
    rst $20
    inc hl
    rst $38
    ld [bc], a
    cp l
    ld a, [hl]
    inc a
    db $ec
    ld sp, $00b2
    ld l, a
    ld [bc], a
    ldh a, [$e0]
    ret nz

    ld [hl+], a
    ldh [rTAC], a

jr_05a_60f9:
    ldh a, [$f0]
    ld hl, sp-$08
    ld e, b
    ld a, b
    jr c, jr_05a_6131

    db $ec
    ld e, a
    adc a
    nop
    sub h
    adc e
    rst $38
    ld b, $7c
    ld a, h
    ld a, $3e
    ld d, $1e
    ld c, $ac
    ld bc, $8f2f
    nop
    sbc b
    inc b
    rra
    rra
    dec bc
    rrca

jr_05a_611b:
    rlca
    adc d
    adc a
    adc c
    nop
    ld [hl], b
    ld b, l
    ld e, $0f
    inc c
    rst $38
    rst $38
    jp $bdff


    rst $38
    ld c, [hl]
    rst $38
    and a
    rst $18
    add a
    rst $38

jr_05a_6131:
    rst $08
    jp $c000


    call nz, $868b
    nop
    sub $b2
    xor a
    rst $38
    db $ec
    ld a, a
    ld bc, $0f10
    ld b, e
    rra
    ccf
    ld bc, $0f10
    ld l, d
    dec d
    ld bc, $0301
    rlca
    inc bc
    inc bc
    rlca
    rlca
    ld a, a
    ld l, a
    rst $08
    ld a, a
    rst $38
    rlca
    ld a, a
    inc bc
    rlca

jr_05a_615b:
    rlca
    inc bc
    ld bc, $0003
    jp z, $8795

    or e
    db $ec
    inc hl
    add hl, bc
    jr nz, @-$3e

    ldh a, [$f8]
    add sp, -$34
    ld a, h
    db $fc
    ld e, $3c
    ld b, e
    inc e
    ld e, $02
    ld e, [hl]
    ccf
    ld a, a
    ld [hl+], a
    rst $38
    inc bc
    add a
    rst $38
    inc sp
    rst $08
    ld b, e
    ld a, e
    add a
    ld [bc], a
    inc sp
    rst $08
    add a
    ld a, [hl+]
    rst $38
    inc bc
    ld a, a
    rst $38
    ld e, [hl]
    ccf
    ld b, e
    inc e
    ld e, $09
    ld e, $3c
    ld a, h
    db $fc
    add sp, -$34
    ldh a, [$f8]
    jr nz, jr_05a_615b

    db $ec
    inc sp
    nop
    add b
    and e
    nop
    sub a
    dec b
    ldh a, [$f8]
    ldh a, [$f0]
    ld hl, sp-$08
    and e
    jp nc, $ff0d

    ld hl, sp-$01
    ldh a, [$f8]
    ld hl, sp-$10
    ldh [$f0], a
    ret nz

    ldh [$80], a
    ret nz

    add b
    db $ec
    ld c, l
    dec b
    ret nz

    ld b, b
    ld h, b
    ret nz

    ldh [rP1], a
    ld hl, sp+$4e
    add l
    db $ec
    cpl
    rst $38
    db $ec
    add a
    ldh [rNR43], a
    ld [$3430], sp
    ld a, b
    dec sp
    ld a, h
    ld e, a
    ccf
    cpl
    rra
    ld e, $0f
    inc e
    rrca
    dec c
    ld e, $3d
    ld e, $3c
    rra
    ld a, $1f
    ccf
    rra
    rrca
    rra
    rra
    rrca
    rlca
    rrca
    inc bc
    rlca
    ld bc, $0103
    db $ec
    ld a, $0b
    ld a, b
    nop
    ld a, d
    db $fc
    sbc $ef
    rst $38
    rst $38
    rra
    rst $38
    rst $08
    ccf
    ld b, e
    rst $28
    rra
    ld [bc], a
    rst $08
    ccf
    rra
    ld a, [hl+]
    rst $38
    inc bc
    cp $ff
    ld a, d
    db $fc
    ld b, l
    jr nc, jr_05a_6288

    ld bc, $7838
    ld b, e
    jr c, jr_05a_6292

    rlca
    ccf
    ccf
    rra
    ccf
    rrca
    rra
    nop
    rlca
    db $ec
    jr nc, jr_05a_6227

    add b
    add b
    ret nz

    ldh [$c0], a

jr_05a_6227:
    ret nz

    ld c, b
    ldh [$f0], a
    ld b, $c0
    ldh [$e0], a
    ret nz

    add b
    ret nz

    nop
    xor c
    nop
    xor d
    ld [$2030], sp
    ld c, b
    jr nc, jr_05a_6284

    ld [hl], b
    ld hl, sp-$10
    ld hl, sp-$5d
    nop
    and h
    nop
    nop
    db $f4
    ccf
    nop
    xor d
    db $ec
    add b
    rst $38
    db $ec
    add h
    add hl, de
    ld bc, $0301
    inc bc
    rlca
    ld c, $07
    ld b, $0f
    ld c, [hl]
    ccf
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld c, a
    ccf
    rlca
    rrca
    rrca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ret


    sbc c
    inc b
    ld bc, $0301
    rlca
    inc bc
    ld b, a
    rrca
    rlca
    ld bc, $0307
    add d
    sbc e
    ld hl, sp+$25
    or l
    ld [bc], a
    inc a
    or l
    ld h, [hl]
    inc hl
    rst $38
    inc bc
    rrca

jr_05a_6284:
    rst $38
    ld h, a
    sbc a
    ld b, e

jr_05a_6288:
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    inc l
    rst $38
    ld b, $bd

jr_05a_6292:
    ld a, [hl]
    nop
    inc a
    ld d, d
    inc h
    ld a, [hl]
    ld [hl+], a
    rst $38
    dec b
    db $db
    rst $20
    add c
    jp $8100


    ld b, e

Jump_05a_62a2:
    add c
    nop
    ld a, [bc]
    nop
    add c
    add c
    jp $e7db


    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld e, d
    ld hl, sp+$25
    cp l
    and h
    nop
    add l
    ld [bc], a
    ldh a, [$e0]
    ldh [rOBP0], a
    ldh a, [$f8]
    or a
    nop
    sub [hl]
    ld bc, $f8e4
    ld b, e
    db $fc
    cp $01
    db $e4
    ld hl, sp-$5b
    nop
    or [hl]
    db $ec
    jp $ecff


    add l
    inc bc
    ld bc, $0300
    inc bc
    ld [hl+], a
    rlca
    dec bc
    rrca
    rrca
    rra
    ld a, $1f
    inc e
    ld a, $7e
    inc a
    jr c, jr_05a_6360

    ld a, h
    ld c, h
    ld a, b
    ldh a, [rSB]
    ld a, h
    ld a, b
    and [hl]
    sub l
    inc b
    rra
    rrca
    rra
    rlca
    rrca
    jp $f8a8


    add hl, hl
    or c
    ld e, $17
    rrca
    ccf
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    add sp, -$10
    and b

jr_05a_6304:
    ret nz

    nop
    add b
    dec bc
    rlca
    rrca
    rra
    rra
    ccf
    jr nc, @+$81

    and $79
    ld l, a
    ldh a, [$ef]
    ldh a, [$e6]
    ld sp, hl
    ldh a, [rNR43]
    rst $38
    nop
    ld a, a
    jp $0d9d


    ld a, a
    rra
    ccf
    rrca
    rra
    dec bc
    rlca
    ld bc, $a183
    jp $f3e9


    ld sp, hl
    ld [hl+], a
    rst $38
    inc bc
    ccf
    ld a, a
    rla
    rrca
    db $f4
    scf
    rst $18
    inc b
    db $fc
    cp $7f
    cp $7e
    ld b, h
    rst $38
    ld a, a
    nop
    rst $38
    or d
    rst $18
    nop
    or a
    db $f4
    inc l
    rst $18
    ld h, e
    db $f4
    ld e, e
    nop
    add [hl]
    db $ec
    dec a
    rst $38
    db $ec
    adc h
    inc bc
    ld bc, $0301
    inc bc
    ld [hl+], a
    rlca
    ld d, $06
    rrca
    inc e
    rrca
    dec c

jr_05a_6360:
    ld e, $3d
    ld e, $3c
    rra
    ld a, $1f
    ccf
    rra
    rrca
    rra
    rra
    rrca
    rlca
    rrca
    inc bc
    rlca
    ld [bc], a
    ret


    sbc l
    ld [$0101], sp
    rra
    rra
    daa
    rrca
    daa
    nop
    rra
    db $ec
    jr nz, jr_05a_6304

    rst $08
    inc d
    rrca
    ld c, $1f
    inc e
    ld a, $38
    ld a, h
    ld [hl], b
    ld hl, sp-$20
    ldh a, [$f4]
    ld hl, sp-$03
    cp $ff
    rst $38
    rra
    rst $38
    rst $08
    ccf
    ld b, e
    rst $28
    rra
    ld [bc], a
    rst $08
    ccf
    rra
    inc l
    rst $38
    ld bc, $7fbe
    add a
    and a
    dec b
    ret nz

    ldh [$80], a
    ret nz

    nop
    add b
    db $ec
    ld [hl+], a
    dec b
    ldh [$c0], a
    sub b
    ldh [$90], a
    nop
    call $0585
    add b
    add b
    ret nz

    ldh [$c0], a
    ret nz

    ld c, b
    ldh [$f0], a
    ld [bc], a
    ret nz

    ldh [$e0], a
    ld b, e
    ret nz

    add b
    ld [bc], a
    add b
    nop
    add b
    db $ec
    db $d3
    rst $38
    db $ec
    sub d
    ldh [$29], a
    ld h, b
    ld b, b
    sub b
    ld a, b
    sbc b
    inc a
    ld a, b
    jr jr_05a_6419

    ld e, $3d
    rra
    rra
    rrca
    rra
    jr @+$41

    ld [hl], e
    inc a
    scf
    ld a, b
    rst $30
    ld a, b
    di
    ld a, h
    ld hl, sp+$7f
    rst $38
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    dec b
    inc bc
    ld bc, $2dec
    ld b, $30
    jr nz, jr_05a_644c

    jr c, @+$4e

    ld e, $3c
    ld b, e
    inc c
    ld e, $0f
    inc e
    ld e, $1e
    inc a
    jr c, jr_05a_648e

    ld hl, sp-$08
    db $f4
    ld hl, sp-$04
    cp $7f

jr_05a_6419:
    rst $38
    ccf
    rst $38
    ld b, e
    cp a
    ld a, a
    ld [bc], a
    ccf
    rst $38
    ld a, a
    ld h, $ff
    ld [$fffe], sp
    db $fc
    cp $f8
    db $fc
    add sp, -$10
    ldh [$ec], a
    scf
    dec b
    inc c
    ld [$0c12], sp
    ld [de], a
    inc a
    add e
    db $e3
    ld [bc], a
    inc a
    ld a, h
    ld hl, sp-$5d
    nop
    or [hl]
    ld bc, $c080
    ld b, a
    ret nz

    add b
    ld [bc], a
    nop
    add b
    add b
    db $ec

jr_05a_644c:
    call z, $ecff
    sub b
    inc b
    jr nc, jr_05a_6483

    ld a, b
    jr nc, @+$5a

    ld c, l
    jr nc, jr_05a_64d1

    ld b, a
    add hl, de
    inc a
    ld b, l
    jr jr_05a_649b

    ld [bc], a
    dec e
    dec a
    rra
    ld b, e
    ccf
    rla
    ld [bc], a
    scf
    dec c
    ld e, $ec
    dec sp
    db $10
    dec b
    inc bc
    rla
    rrca
    ccf
    rra
    ld [hl], b
    ccf
    and $79
    ld l, a
    ldh a, [$ef]
    ldh a, [$e6]
    ld sp, hl
    ldh a, [rNR43]
    rst $38
    nop
    ld a, a
    add h

jr_05a_6483:
    add d
    rlca
    rst $38
    rst $38
    rst $30
    rst $28
    push bc
    jp $8080


    db $ec

jr_05a_648e:
    dec sp
    inc bc
    ld bc, $a301
    jp $c4c6


    inc bc
    cp $7e
    rst $38
    ld a, a

jr_05a_649b:
    add e
    sub $a6
    rst $18
    rlca
    cp $fc
    db $fc
    ld hl, sp-$18
    ldh a, [$a0]
    ret nz

    db $ec
    dec sp
    add hl, bc
    or b
    ld a, b
    add sp, -$14
    add sp, -$04
    ld hl, sp-$04
    cp b
    cp h
    ld b, e
    jr jr_05a_64f4

    nop
    jr jr_05a_6503

    inc a
    sbc b
    ld c, [hl]
    inc c
    ld e, $04
    ld a, [de]
    inc c
    ld e, $00
    inc c
    db $ec
    ld e, a
    rst $38
    db $ec
    adc e
    ld [$0001], sp
    ld bc, $0303

jr_05a_64d1:
    rlca
    ld c, $07
    ld b, $44
    rrca
    ld e, $43
    rra
    rrca
    dec bc
    rlca
    rrca
    rrca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $0103
    ld b, l
    ld bc, $0103
    rlca
    inc bc
    ld b, l
    inc bc
    rlca
    ld bc, $050e

jr_05a_64f4:
    ld b, e
    rlca
    rrca
    ld bc, $0700
    ld a, h
    ld bc, $1018
    ld b, e
    inc h
    jr jr_05a_6503

    inc a

jr_05a_6503:
    jr jr_05a_6528

    inc a
    inc bc
    ld a, [hl]
    inc a
    ld a, [hl]
    ld h, [hl]
    ld [hl+], a
    rst $38
    inc bc
    rrca
    rst $38
    ld h, a
    sbc a
    ld b, e
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    inc l
    rst $38
    inc b
    jp $e7e7


    jp Jump_05a_4381


    jp $22e7


    rst $38
    inc b
    cp l

jr_05a_6528:
    rst $38
    add c
    db $db
    jp $8143


    nop
    nop
    add c
    db $ec
    dec l
    and l
    nop
    adc h
    ld [bc], a
    ldh a, [$e0]
    ldh [rSCX], a
    ldh a, [$f8]
    db $f4
    ld b, e
    nop
    sbc c
    db $ec
    and d
    rst $38
    db $ec
    adc e
    ld d, $3c
    jr @+$28

    inc l
    daa
    ld a, $3f
    rra
    rra
    rrca
    rlca
    rrca
    rrca
    rra
    ld a, $1f
    inc e
    ld a, $7e
    inc a
    jr c, jr_05a_65d9

    ld a, h
    ld c, h
    ld a, b
    ldh a, [$0d]
    ld a, h
    ld a, b
    jr c, @+$7e

    ld a, $7c
    inc e
    ld a, $3f
    ld e, $0f
    ld e, $08
    ld b, $ec
    dec l
    ld c, $17
    rrca
    ccf
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    rst $38
    jp hl


    di
    and c
    jp $8301


    dec bc
    call nz, $0ae4
    jr nc, jr_05a_6606

    and $79
    ld l, a
    ldh a, [$ef]
    ldh a, [$e6]
    ld sp, hl
    ldh a, [rNR43]
    rst $38
    nop
    ld a, a
    jp $089d


    ld a, a
    rra
    ccf
    rrca
    rra
    dec bc
    rlca
    ld bc, $6103
    db $f4
    dec [hl]
    rst $18
    nop
    or a
    xor d
    rst $18
    inc b
    db $fc
    cp $7f
    cp $7e
    ld b, h
    rst $38
    ld a, a
    nop
    rst $38
    db $f4
    ld b, b
    rst $18
    db $f4
    ld e, a
    nop
    adc h
    db $ec
    inc sp
    rst $38
    db $ec
    sub l
    dec e
    ld [hl], b
    jr c, jr_05a_662b

    ld a, h
    inc [hl]
    ld a, [hl]
    ld e, $3f
    rrca
    rra
    rlca

jr_05a_65cb:
    rrca
    inc bc
    rlca
    ld bc, $0303
    rlca
    rlca
    rrca
    rrca
    rra
    ld e, $3f
    inc [hl]

jr_05a_65d9:
    ld a, [hl]
    ld l, b
    ld a, h
    ld [hl], b
    jr c, jr_05a_65cb

    jr nc, jr_05a_65e1

jr_05a_65e1:
    ld bc, HeaderCGBFlag
    ld [bc], a
    ld c, c
    ld bc, $1003
    inc bc
    rlca
    rrca
    rra
    rra
    ccf
    jr nc, jr_05a_6670

    and $79
    ld l, a
    ldh a, [$ef]
    ldh a, [$e6]
    ld sp, hl
    ldh a, [rNR50]
    rst $38
    add hl, bc
    ld a, a
    rst $38
    ccf
    ld a, a
    rra
    ccf
    rrca
    rra
    dec bc

jr_05a_6606:
    rlca
    ld c, c
    ld bc, $0003
    nop
    ld hl, sp+$25
    cp c
    ld bc, $0080
    xor h
    rst $18
    nop
    ret nc

    and h
    rst $18
    ld b, $fc
    cp $7f
    cp $7e
    rst $38
    ld a, a
    add $d5
    inc bc
    cp $ff
    rst $38
    cp $ab
    rst $18
    ld [bc], a
    nop

jr_05a_662b:
    ret nz

    nop
    and h
    rst $18
    db $ec
    cp a
    rst $38
    db $ec
    add a
    ld bc, $3f40
    ld b, e
    rst $38
    ld a, a
    ld bc, $3f40
    ld l, c
    rra
    ld bc, $0500
    inc bc
    rlca
    rrca
    inc c
    rra
    add hl, sp
    ld e, $1b
    inc a
    ld a, e
    inc a
    ld a, c
    ld a, $7c
    ccf
    ld a, a
    ccf
    rra
    ccf
    ccf
    rra
    rrca
    rra
    rlca
    rrca
    inc bc
    rlca
    ld [bc], a
    ld bc, $2eec
    ld b, $ff
    rst $18
    sbc a
    rst $38
    rst $38
    ld h, b
    rst $38
    ld c, c
    ld h, b
    ldh a, [$09]
    ld l, b
    ldh a, [$fa]

jr_05a_6670:
    db $fc
    cp $ff
    ccf
    rst $38
    sbc a
    ld a, a
    ld b, e
    rst $18
    ccf
    ld [bc], a
    sbc a
    ld a, a
    ccf
    jr z, @+$01

    ld b, $fe
    rst $38
    db $fc
    cp $f4
    ld hl, sp-$10
    db $ec
    inc l
    ld bc, $c020
    ld b, e
    ldh a, [$e0]
    ld bc, $c020
    ld [hl], b
    inc bc
    add b
    ret nz

    add b
    add b
    ld c, b
    ret nz

    ldh [rTIMA], a
    add b
    ret nz

    ret nz

    add b
    nop
    add b
    db $ec
    set 7, a
    db $ec
    adc c
    dec bc
    rlca
    inc bc
    dec b
    ld b, $04
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $4365
    ld bc, $c800
    add c
    ld h, c
    inc bc
    ld bc, $0301
    inc bc
    dec h
    rlca
    nop
    inc bc
    db $ec
    inc [hl]
    ld b, $80
    add b

jr_05a_66ca:
    ret nz

    jp $eae0


    rst $30
    inc hl
    rst $38
    ld a, [bc]
    ld [hl], b
    rst $38
    and $79
    ld l, a
    ldh a, [$ef]
    ldh a, [$e6]
    ld sp, hl
    ldh a, [rNR43]
    rst $38
    inc b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    inc h
    rst $38
    ld [bc], a
    db $eb

jr_05a_66e9:
    rst $30
    jp $ffa3


    nop
    add b
    db $f4
    ld a, [hl-]
    rst $18

jr_05a_66f2:
    ld bc, $ff6f
    and h
    pop de
    dec b
    ld a, a
    cp $7e
    rst $38
    ld a, a
    rst $38
    add d
    push de
    db $f4
    ld c, b
    rst $18
    dec b
    ldh [$c0], a
    and b
    jr nz, jr_05a_66e9

    jr nz, jr_05a_66ca

    nop
    sub b
    dec b
    ld h, b
    and b
    jr nz, jr_05a_66f2

    ldh [$c0], a
    db $ec
    ld l, c
    rst $38
    db $ec
    adc a
    ld [$0001], sp
    ld bc, $0303
    rlca
    ld c, $07
    ld b, $44
    rrca
    ld e, $43
    rra
    rrca
    ld [bc], a
    rlca
    rrca
    rrca
    ld b, e
    rlca
    inc bc
    nop
    ld bc, $99cc
    ld [$0f0f], sp
    rra
    dec de
    dec a
    rra
    ccf
    nop
    rra
    db $ec
    dec l
    ld [bc], a
    ld e, c
    ld a, $7f
    ld [hl+], a
    rst $38
    inc bc
    rrca
    rst $38
    ld h, a
    sbc a
    ld b, e
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    ld a, [hl+]
    rst $38
    ld [bc], a
    ld a, [hl]
    rst $38
    ld e, d
    ld c, e
    inc a
    jr jr_05a_6762

    db $fc
    ld hl, sp-$04
    ldh a, [$f8]
    nop

jr_05a_6762:
    ldh a, [$ec]
    add hl, hl
    ld c, $38
    jr nc, jr_05a_67b1

    ld l, b
    ret z

    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$f0], a
    ldh [$e0], a
    ld c, b
    ldh a, [$f8]
    nop
    ldh [$84], a
    sub d
    ld [bc], a
    ret nz

    add b
    add b
    db $ec
    call nc, $ecff
    sbc d
    ld bc, $3030
    ld c, b
    ld a, b
    ldh a, [rNR12]
    ld a, h
    ld a, b
    jr c, jr_05a_680d

    ld a, l
    ccf
    rra
    ccf
    ccf
    rra
    rrca
    rra
    rlca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $34ec
    ld [de], a
    ld bc, $0b03
    rlca
    rrca
    rra
    rra
    ccf
    jr nc, jr_05a_682b

    and $79
    ld l, a
    ldh a, [$ef]

jr_05a_67b1:
    ldh a, [$e6]
    ld sp, hl
    ldh a, [rNR43]
    rst $38
    nop
    ld a, a
    add h
    add d
    inc c
    rst $38
    rst $38
    rst $08
    rst $38
    adc e
    rst $00
    ld bc, $a183
    jp $f3e9


    ld sp, hl
    ld [hl+], a
    rst $38
    inc bc
    ccf
    ld a, a
    rla
    rrca
    db $f4
    scf
    rst $18
    ld b, $fc
    cp $7f
    cp $7e
    rst $38
    ld a, a
    add l
    sub $a4
    add a
    xor e
    rst $18
    nop
    or a
    xor b
    rst $18
    db $ec
    inc a
    db $f4
    ld d, d
    nop
    sbc e
    db $ec
    ld sp, $ecff
    xor c
    add hl, bc
    inc bc
    inc bc
    inc b
    ld b, $06
    rlca
    inc bc
    inc bc
    ld bc, $2401
    inc bc
    nop
    ld bc, $38ec
    call nz, $02bf
    ld c, $07
    ld b, $44
    rrca
    ld e, $43
    rra
    rrca

jr_05a_680d:
    ld bc, $0f07
    add e
    add d
    ld a, [bc]
    rra
    rra
    cp [hl]
    rst $38
    ld a, h
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$a3], a
    push hl
    db $f4
    inc [hl]
    rst $18
    inc bc
    inc a
    nop
    cp l
    ld a, [hl]
    inc hl
    rst $38
    inc bc

jr_05a_682b:
    rrca
    rst $38
    ld h, a
    sbc a
    ld b, e
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    inc l
    rst $38
    ld [bc], a
    cp l
    ld a, [hl]
    inc a
    db $ec
    ld b, c
    and h
    nop
    di
    ld [bc], a
    ldh a, [$e0]
    ldh [rOBP0], a
    ldh a, [$f8]
    and e
    ld bc, $0404
    ret nz

    ldh [$80], a
    ret nz

    nop
    ld hl, sp+$42
    sbc c
    db $ec
    cpl
    rst $38
    db $ec
    add d
    inc c
    ld [hl], b
    ld b, b
    ld hl, sp+$78
    call z, Call_05a_7f0e
    rra
    ccf
    rrca
    rra
    rrca
    rrca
    ld b, e
    ld c, $07
    ld [bc], a
    ld b, $0f
    ld c, $24
    rrca
    add hl, bc
    rlca
    rrca
    rrca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld bc, $0272
    ld bc, $0301
    add e
    sbc c
    db $ec
    daa
    ld bc, $3cdb
    inc hl
    rst $38
    inc bc
    rrca
    rst $38
    ld h, a
    sbc a
    ld b, e
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    inc l
    rst $38
    ld bc, $7ebd
    ld c, c
    jr @+$3e

    ld [bc], a
    ld a, [hl]
    inc a
    inc a
    ld [hl+], a
    ld a, [hl]
    add e
    sub e
    inc bc
    rst $38
    rst $38
    jp $ece7


    ld [hl+], a
    xor h
    nop
    add e
    ld b, e
    ldh a, [$e0]
    ld [bc], a
    ldh [$f0], a
    ldh a, [$f4]
    ld d, b
    nop
    sub a
    db $ec
    sub a
    rst $38
    db $ec
    sub b
    rlca
    ld bc, $0301
    inc bc
    rlca
    ld c, $07
    ld b, $44
    rrca
    ld e, $43
    rra
    rrca
    ld [$0f07], sp
    rrca
    rlca
    inc bc
    rlca
    ld bc, $0003
    ld hl, sp+$40
    sbc c
    inc bc
    inc a
    nop
    cp l
    ld a, [hl]
    inc hl
    rst $38
    inc bc
    rrca
    rst $38
    ld h, a
    sbc a
    ld b, e
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    inc l
    rst $38
    ld bc, $7ebd
    ld hl, sp+$3b
    and c
    ld c, $38

Call_05a_68f8:
    jr nc, jr_05a_6942

    ld l, b
    ret z

    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$f0], a
    ldh [$e0], a
    ld b, h
    ldh a, [$f8]
    ld c, e
    ldh a, [$f8]
    ld bc, $f830
    ld c, h
    jr nc, jr_05a_698a

    inc b
    ld c, b
    jr nc, jr_05a_695e

    nop
    jr nc, @-$12

    pop bc
    rst $38
    db $ec
    sub c
    ld [$0001], sp
    ld bc, $0303
    rlca
    ld c, $07
    ld b, $44
    rrca

jr_05a_6929:
    ld e, $43
    rra
    rrca
    ld [bc], a
    rlca
    rrca
    rrca
    ld b, e
    rlca
    inc bc
    nop
    ld bc, $34f8
    sbc c
    inc b
    jr jr_05a_694c

    inc h
    jr jr_05a_6963

    ld c, c
    jr @+$3e

jr_05a_6942:
    ld [bc], a
    ld e, d
    inc a
    ld a, [hl]
    ld [hl+], a
    rst $38
    inc bc
    rrca
    rst $38
    ld h, a

jr_05a_694c:
    sbc a
    ld b, e
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    ld a, [hl+]
    rst $38
    inc b
    ld a, [hl]
    rst $38
    ld e, d
    inc a
    jr jr_05a_6929

    and c

jr_05a_695e:
    nop
    nop
    ld hl, sp+$32
    cp l

jr_05a_6963:
    and l
    nop
    sub d
    ld [bc], a
    ldh a, [$e0]
    ldh [rOBP0], a
    ldh a, [$f8]
    and e
    nop
    and h
    inc b
    ldh [$c0], a
    ret nz

    add b
    add b
    db $ec
    jp nc, $ecff

    adc [hl]
    rlca
    ld bc, $0301
    inc bc
    rlca
    ld c, $07
    ld b, $44
    rrca
    ld e, $43
    rra
    rrca

jr_05a_698a:
    inc b
    rlca
    rrca
    rrca
    rlca
    inc bc
    ld [hl+], a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld a, [de]
    ld e, $1c
    inc c
    db $ec
    add hl, sp
    inc bc
    inc a
    nop
    cp l
    ld a, [hl]
    inc hl
    rst $38
    inc bc
    rrca
    rst $38
    ld h, a
    sbc a
    ld b, e
    rst $30
    rrca
    ld [bc], a
    ld h, a
    sbc a
    rrca
    inc l
    rst $38
    ld [bc], a
    cp l
    ld a, [hl]
    inc a
    db $ec
    ld b, c
    and h
    nop
    adc a
    ld [bc], a
    ldh a, [$e0]
    ldh [rOBP0], a
    ldh a, [$f8]
    ld b, l
    ldh [$f0], a
    nop
    ldh [rHDMA1], a
    ldh a, [$60]
    inc b
    sub b
    ld b, b
    sub b
    nop
    ld h, b
    db $ec
    pop bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_05a_73e7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_05a_7f0e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_05a_7ffe:
    nop
    nop
