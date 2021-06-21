; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    ld l, a
    inc b
    ccf
    ld a, a
    ld a, a
    add b
    add b
    ld b, e
    rst $38
    cp a
    ld b, $a0
    and b
    xor l
    and b
    and l
    and b
    and b
    ld h, c
    ld [bc], a
    ld b, c
    nop
    ld [$0262], sp
    add b
    nop
    ld bc, $1462
    ld b, b
    nop
    and d
    inc c
    ld c, l
    ld [de], a
    sub d
    dec l
    ld [de], a
    ld l, l
    ld c, h
    or d
    ld b, c
    cp h
    or d
    ld c, b
    ld b, l
    jr nc, @+$01

    rst $38
    db $db
    ld c, b
    and l
    pop bc
    ld [de], a
    rst $38
    rst $38
    nop
    rst $38
    xor b
    nop
    ld d, l
    db $20, $a2
    ld [$0014], sp
    xor d
    nop
    ld d, l
    ld [bc], a
    ld a, [bc]
    nop
    inc d
    xor e
    rst $08
    inc c
    dec d
    dec b
    ld d, l
    dec b
    dec b
    cp a
    ld b, b
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $18
    ld a, a
    ld b, l
    ldh a, [$50]
    ld bc, $50ff
    and l
    adc a
    ld bc, $faff
    ld b, l
    rrca
    ld a, [bc]
    ldh [rOBP0], a
    ei
    ld c, $00
    add hl, bc
    cpl
    rra
    ld a, b
    ld a, $36
    ld a, l
    ld l, c
    cp $56
    ld a, l
    ld c, d
    rst $38
    ld sp, hl
    rst $30
    inc e
    rst $38
    pop bc
    db $e3
    add d
    nop
    ld d, l
    nop
    ld a, [hl+]
    add l
    push af
    ld a, [bc]
    ld a, [$bf05]
    ld b, b
    add sp, -$10
    ld a, d
    inc a
    ld l, h
    ld a, $97
    ld a, [hl]
    ld a, d
    cp a
    rst $00
    ld b, a
    add e
    add e
    reti


    add a
    xor e
    inc bc
    ld d, a
    inc h
    xor h
    ld c, $13
    ld [hl-], a
    cp [hl]
    jr nc, jr_037_4102

    ld c, h
    ld b, a
    ld h, b
    db $ed
    ld a, [c]
    add hl, sp
    add hl, sp
    rst $30
    adc $40
    inc h
    ld bc, $ff83
    ldh [$2c], a
    and b
    xor a
    ld d, b
    rst $38
    nop
    cp e
    cp e
    rst $38
    call z, $8809
    ld a, [hl+]
    ld de, $00d7
    cp a
    ld b, b
    ld e, l
    and d
    ld a, [$a807]
    nop
    push hl
    ldh [$9a], a
    db $fc
    db $f4
    inc l
    cp $4c
    and e
    ld e, [hl]
    add $3a
    xor e
    ld c, l
    inc bc
    inc bc
    rrca
    dec c
    dec sp
    add hl, sp
    db $db
    ret


    ld b, a
    sbc e
    adc c
    ld bc, $ffff
    ld h, c
    inc d
    rst $38
    ld [$00fd], sp
    rst $28
    sub b
    cp [hl]
    ld bc, $04fb
    rst $38
    ld b, b
    ret nz

    ret nz

    or b
    ldh a, [$9c]
    call c, $dbb3
    or l
    ld b, [hl]

jr_037_4102:
    reti


    or a
    inc d
    db $dd
    ld [hl+], a
    xor d
    ld d, l
    ld [hl], l
    adc d
    xor e
    ld d, h
    push de
    ld a, [hl+]
    xor [hl]
    ld d, c
    ld d, l
    xor d
    cp e
    ld b, h
    nop
    cp $00
    ei
    nop
    ld b, e
    rst $38
    nop
    ld [bc], a
    rst $28
    nop
    rst $38
    and e
    adc c
    nop
    and b
    jp $1600


    inc b
    rst $38
    ld a, a
    rst $38
    ld l, b
    ld e, b
    ld b, e
    ld l, b
    ld e, a
    ld bc, $3f30
    and a
    adc a
    ld bc, $161a
    ld b, e
    ld a, [de]
    or $03
    inc c
    db $fc
    ld a, a
    ld e, a
    ld b, l
    ld d, b
    ld a, a
    ld [bc], a
    ld e, a
    ld [hl], b
    ld b, b
    ld [hl+], a
    ld a, a
    inc bc
    rst $38
    ret nz

    ld a, [$45fe]

jr_037_4150:
    ld a, [bc]
    or $01
    ld a, [$a506]
    adc a
    jr jr_037_4150

    rst $08
    ret


    cp $72
    ld a, [hl]
    xor a
    xor h
    ld b, [hl]
    ld b, h
    push bc
    add b
    jp nz, $e186

    adc a
    db $eb
    nop
    sub [hl]
    ld b, c
    xor a
    nop
    rst $18
    nop
    ld a, d
    add [hl]
    nop
    xor c
    ldh [rVBK], a
    ei
    xor a
    ld [hl], l
    rst $18
    ld a, e
    rst $28
    ld a, [hl]
    rst $30
    ld a, [hl+]
    rst $38
    ld d, [hl]
    rst $38
    ld l, e
    rst $38
    push de
    rst $38
    cp d
    push bc
    ld d, l
    ld l, d
    cp d
    dec [hl]
    ld d, l
    ld l, [hl]
    add sp, $7f
    ld a, c
    ccf
    ld l, [hl]
    ld e, a
    ret z

    add a
    cp l
    ld b, d
    ld d, h
    db $eb
    xor b
    ld d, a
    sub b
    rst $28
    adc c
    rst $38
    ret nc

    rst $38
    ld [hl], d
    rst $38
    dec e
    rst $38
    ld [hl], h
    adc e
    xor c
    sub $52
    xor a
    ld hl, $10ff
    rst $38
    sbc d
    rst $38
    ld l, l
    rst $38
    add b
    rst $38
    rla
    rst $28
    ld d, e
    rst $38
    ld a, $fe
    ld l, h
    db $fc
    ld a, [c]
    cp $65
    cp $92
    rst $38
    and l
    rst $38
    ld c, a
    sbc e
    adc c
    rrca
    rst $38
    nop
    cp l
    ld b, b
    rst $30
    ld [$81fe], sp
    rst $18
    nop
    rst $38
    ld bc, $08f5
    cp a
    ld b, b
    ld c, a
    or a
    reti


    ld c, a
    ld [hl], b
    ld [de], a
    ld h, c
    ld b, e
    cp $00
    ld h, c
    ld b, e
    rst $28
    nop
    ld h, c
    ld bc, $007e
    ld c, a
    ld c, $48
    ldh [$8c], a
    xor c
    ld bc, $2256
    and d
    ld a, [bc]
    rla
    inc b
    cp a
    dec e
    ld l, l
    dec hl
    ld a, [hl-]
    ccf
    ld a, $27
    xor b
    add b
    push de
    ld h, b
    ld [c], a
    ld c, b
    inc [hl]
    ldh [$3a], a
    ld hl, sp+$15
    cp $5e
    db $fc
    db $e4
    db $fc
    xor d
    nop
    ld b, c
    inc d
    xor b
    ld l, d
    ld d, l
    ld a, h
    add d
    cp $57
    ld a, a
    rst $28
    rst $38
    ld e, l
    ld a, a
    add l
    pop af
    ret c

    ld [c], a
    pop af
    add $5a
    push bc
    ld h, h
    jp c, Jump_037_75aa

    ret c

    ccf
    rst $20
    rra
    ld e, h
    ld [c], a
    ld a, b
    inc a
    ld c, b
    inc a
    sub a
    ld a, h
    ld c, e
    cp h
    xor [hl]

jr_037_423c:
    ld a, l
    ld e, [hl]
    rst $38
    ld sp, hl
    rst $20
    rst $38
    xor e
    ld d, l
    ld e, a
    cp e
    cpl
    ld e, [hl]
    or a
    ld a, [hl+]
    ld e, a
    ld e, h
    xor a
    jr @+$01

    ldh [$fe], a
    or l
    jp z, Jump_037_774a

    cp l
    ld [hl+], a
    db $76
    ld c, l
    db $ec
    ld a, e
    ld e, c
    rra
    rrca
    rrca
    inc de
    rlca
    nop
    rst $38
    jr z, jr_037_423c

    ld d, d
    xor l
    ld h, l
    jp c, $bdcb

    sub l
    rst $38
    ld a, d
    rst $38
    or a
    rst $38
    dec b
    rst $38
    and d
    ld e, a
    db $10
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    cp [hl]
    rst $38
    db $ed
    ld [hl+], a
    rst $38
    ld d, $4b
    rst $38
    xor [hl]
    rst $38
    ld d, [hl]
    cp $2a
    cp $9c
    db $fc
    ld a, l
    ld a, [$e0ea]
    call nc, $9be0
    adc e
    sbc h
    adc a
    cp a
    cp a
    ret nz

    ld [hl+], a
    rst $38
    ld [bc], a
    add b
    add b
    add b
    inc h
    rst $38
    nop
    nop
    add a
    add e
    jp $1301


    dec b
    rst $38
    rst $30
    reti


    scf
    ld sp, hl
    rst $38
    xor d
    sbc a
    ld b, e
    ld [hl], b
    ld [de], a
    inc c
    ld a, b
    ld [de], a
    ld a, l
    ld [de], a
    ld a, h
    inc de
    ld l, h
    dec de
    ld [hl], a
    rrca
    ld a, a
    nop
    xor d
    ld h, h
    ld [bc], a
    rst $38
    nop
    nop
    push bc
    or l
    nop
    nop
    xor a
    sbc a
    ldh [rVBK], a
    ret z

    rst $38
    ld d, d
    ld a, a
    or [hl]
    ccf
    ccf
    dec e

jr_037_42d6:
    ld a, a
    inc b
    ld a, [hl]
    ld [$06bb], sp
    ld c, a
    ld bc, $ff03
    ld c, e
    cp $ec
    db $fc
    dec a
    ld hl, sp+$7e
    and b
    ld a, [hl]
    sub b
    ld c, h
    ldh a, [$f1]
    nop

jr_037_42ee:
    xor h
    cpl
    ld b, d
    rla
    xor d
    ld b, d
    ld d, [hl]
    ld [bc], a
    and l
    inc c
    ld e, d
    inc c
    and [hl]
    rrca
    ld d, c
    rlca
    xor d
    jr z, jr_037_42d6

    db $fc
    and d

jr_037_4303:
    cp $55
    rst $38
    ld a, [$55fe]
    db $fc
    db $ec
    ld a, [hl]
    cp l

jr_037_430d:
    ld e, b
    ld a, [hl+]
    ldh [rHDMA5], a
    ret nz

    ld [$d540], a
    ld b, b
    ld l, d
    jr nc, jr_037_42ee

    jr c, jr_037_4383

    ld a, [c]
    sub l
    ldh [$6f], a
    ld d, $a7
    rrca
    ld c, a
    ccf
    xor a
    rra
    rrca
    rra
    and a
    rrca
    ld d, e
    rlca
    ld a, [bc]
    ld bc, $0015
    ld [$c8df], a
    cp a
    inc sp
    db $fd
    and $26
    rst $38
    dec bc
    rra
    ccf
    ld l, e
    sbc a
    xor e
    dec c
    adc h
    scf

jr_037_4342:
    ld h, a
    cp a
    ld a, a
    cp a
    and l
    adc a
    ld c, $e8
    ldh a, [$f5]
    ld hl, sp-$0e
    ld hl, sp-$0c
    ld hl, sp-$16
    ldh a, [$d5]
    ld [c], a
    ld a, [bc]
    add b
    inc d
    db $ed
    ld h, d
    dec b
    ccf
    ld a, a
    nop
    add b
    cp a
    cp a
    adc c
    nop
    jr jr_037_430d

    adc a
    add h
    nop
    ld l, e
    ld a, a
    adc a
    nop
    db $10
    add a
    nop
    ld h, b
    add a
    cp a
    db $ec
    ld d, c
    add l
    dec b
    ld h, d
    ldh a, [rBGP]
    nop
    jr jr_037_4303

    dec b
    ld [hl], b
    ldh a, [$57]
    nop
    ld l, b
    rrca

jr_037_4383:
    xor b
    nop
    ld d, e
    inc hl
    and [hl]
    inc c
    rra
    jr jr_037_4342

    ld l, $7f
    ld [hl], b
    xor e
    call z, $e27d
    ldh a, [rNR44]
    nop
    ret nc

    dec bc
    xor d
    db $fc
    db $fc
    ld c, h
    xor $5a
    cp e
    ld d, [hl]
    push bc
    ccf
    xor d
    ld c, [hl]
    ldh a, [rHDMA1]
    ld bc, $0b00
    and b
    cp a
    ldh [$a0], a
    rst $38
    cp a
    ldh [$a0], a
    ldh [$bf], a
    ld b, b
    rst $38
    ld h, c
    ld bc, $fd05
    xor l
    adc a
    ld a, [c]
    adc a
    ld bc, $0770
    ld a, [hl]
    ld a, [hl]
    cp l
    cp l
    db $db
    db $db
    rst $20
    rst $20
    rst $00
    add b
    pop af
    rst $28
    adc a
    rst $38
    nop
    nop
    ld l, a
    ld [bc], a
    ld d, b
    nop
    and b
    add e
    add e
    and [hl]
    add l
    rla
    ld a, [bc]
    nop
    ld d, [hl]
    rlca
    xor c
    rrca
    ld d, [hl]
    ld c, $ac
    dec c
    dec c
    inc c
    ld b, $0f
    inc bc
    rlca
    ld a, [bc]
    ld bc, $ff6f
    xor $fe
    ld e, e
    ld e, a
    ld [hl+], a
    call $fd06
    ld e, $9c
    ld sp, hl
    db $fc
    ld [c], a
    ldh a, [$62]
    ld bc, $ffff
    ld h, c
    ld c, b
    rst $38
    nop
    ldh [rNR41], a
    rst $28
    cp [hl]
    xor $7f
    rst $38
    cp a
    ld hl, sp+$78
    rst $00
    rst $38
    rst $38
    ld a, l
    cp $aa
    cp $56
    ccf
    cp $c7
    rst $38
    ccf
    ld a, $7f
    rst $38
    ld a, a
    ld l, [hl]
    ld a, a
    ld d, l
    ccf
    ld a, [hl-]
    rst $20
    db $fd
    nop
    ld [hl+], a
    rst $38
    add e
    add e
    ld bc, $aaff
    and l
    add c
    rrca
    cp a
    add [hl]
    cp c
    adc e
    or l
    sub a
    xor l
    xor l
    cp e
    xor e
    or l
    and l
    or l
    sbc l
    cp l
    sbc l
    ld c, b
    db $fd
    inc bc
    ldh [$2c], a
    ei
    dec b
    ld e, a
    dec b

jr_037_444a:
    rst $30
    dec b
    ld d, a
    sbc b
    ldh [$a0], a
    ret nz

    add b
    ret nz

    call nz, $d383
    adc h
    rst $28
    sub b
    rst $18
    and b
    cp a

jr_037_445c:
    ret nz

    ld de, $010f
    rlca
    dec c
    inc bc
    daa
    pop bc
    rst $20
    add hl, de
    rst $30
    add hl, bc
    db $eb
    dec d
    pop af
    rrca
    ld a, [hl]

jr_037_446e:
    nop
    cp l
    nop
    db $db
    nop
    ld b, e
    rst $20
    nop
    dec b
    rst $18
    rlca
    cp d
    add hl, de
    ld l, a
    scf
    add l
    adc a
    add hl, de
    rst $28
    rrca
    ld hl, sp+$17
    db $d3
    sbc a
    ld a, a
    rst $28
    sbc [hl]
    db $f4
    ld a, [hl]
    jr jr_037_444a

    jr jr_037_446e

    inc e
    db $eb
    ld a, [bc]
    db $eb
    adc d
    rst $18
    rra
    or $ff
    ld h, a
    ccf
    adc c
    xor a
    dec b
    db $db
    add b
    ld a, l
    ldh [$9e], a
    ldh a, [$30]
    rst $38
    nop
    xor d
    xor l
    add c
    rra
    rst $30
    rst $30
    add hl, sp
    ccf
    db $76
    xor $7c
    db $fc
    call $cefc
    ld c, a
    rst $00
    rst $08
    add c
    inc bc
    inc e
    ld hl, sp-$1c
    db $fc
    jr jr_037_445c

    db $ec
    call z, $eccd
    sbc d
    inc a
    pop af
    ld hl, sp-$3e
    ldh [$89], a
    nop
    ld b, [hl]
    add h
    nop
    ld b, h
    ldh [rNR41], a
    nop
    ld a, [hl]
    rlca
    cp [hl]
    ld c, $f2
    ld a, $e1
    ccf
    rst $30
    ld a, $df
    rra
    cp a
    inc bc
    ld a, a
    ld bc, $dcb6
    db $dd
    ld hl, sp-$15
    cp b
    xor a
    ld hl, sp+$77
    or b
    ld a, e
    ldh a, [$ed]
    ldh a, [$ce]
    ldh a, [rVBK]
    db $fd
    inc bc
    inc bc
    or c
    sbc l
    cp l
    sub c
    ld b, e
    or c
    sbc a
    ld [bc], a
    or b
    sbc a
    cp a
    add h
    add e
    add hl, bc
    dec b
    ld d, a
    dec b
    rst $38
    ld b, l
    rla
    db $fd
    rst $38
    dec b
    rst $38
    add l
    add e
    inc c
    sbc a
    ldh [$bc], a
    ret nz

    add h
    db $e3
    sub b
    rst $08
    add b
    rst $38
    ret nz

    cp a
    add b
    ld [hl+], a
    rst $38
    ld b, $f9
    rlca

jr_037_4524:
    ld sp, $290f
    rst $00
    dec c
    xor b
    adc a
    dec de
    ld e, [hl]
    add hl, sp
    cp a
    inc sp
    di
    ccf
    rst $18
    jr c, jr_037_4524

    rra
    db $db
    rlca
    cp l
    nop
    ld a, [hl]
    nop
    ld l, [hl]
    ld [hl], d
    cp a
    inc sp
    ld a, a
    cp a
    ld [hl], a
    ld a, [c]
    ld [c], a
    rst $38
    add [hl]

jr_037_4547:
    rst $38
    add e
    adc a
    ld a, [bc]
    ld e, [hl]
    ld a, [hl]
    or d
    cp [hl]
    ei
    inc sp
    cp $39
    rra
    rst $38
    rlca
    add h
    adc a
    dec bc
    xor $f0
    cp l
    or b
    ei
    jr nc, jr_037_4547

    ld [hl], b
    rst $00
    ldh [$5b], a
    add b
    add e
    adc a
    adc d
    nop
    ldh a, [$c3]
    add a
    adc b
    nop
    rrca
    nop
    ld d, l
    and h
    add c
    inc bc
    rst $38
    rst $38
    or a
    ld hl, sp+$22
    rst $38
    ld [bc], a
    cp a
    pop hl
    di
    jp $0181


    or e
    db $fc
    add l
    nop
    ld [hl], c
    dec b
    jp nz, $fee7

    rst $20
    jp $85fe


    adc e

jr_037_458f:
    add hl, bc
    push af
    rrca
    rst $38
    rst $38
    ccf
    db $fd
    daa
    rst $38
    db $fd
    daa
    add l
    adc e
    ld [bc], a
    rst $38
    rst $38
    add b
    ld c, h
    add b
    cp a
    adc h
    nop
    ld b, e
    add h
    ld bc, HeaderSGBFlag
    inc bc
    ld bc, $fd4b
    inc bc
    ldh [$2f], a
    ld a, l
    rlca
    cp h
    ld [$0edf], sp
    rst $20
    rlca
    rst $20
    inc bc
    call c, $bf0e
    rra
    ld a, a
    ccf
    cp $80
    ld a, l
    ldh [rNR31], a
    jr c, jr_037_458f

    adc h
    di
    and $fb
    cp $3b
    cp $cc
    db $ec
    ld a, d
    ld b, $b1
    add hl, bc
    db $db
    dec bc
    and c
    ld h, c
    rlca
    adc [hl]
    db $db
    ret nc

    sbc l
    sub b
    ld a, [hl]
    ld h, b
    adc h
    ld [bc], a
    db $10
    ld [bc], a
    ld de, $eeee
    adc e
    adc a
    rlca
    push de
    call nz, Call_037_7fbb
    add d
    ld bc, $0038
    ld b, l
    ld b, h
    jr c, jr_037_4602

    jr c, jr_037_45f9

jr_037_45f9:
    add d
    ld bc, $8200
    ld a, a
    ld a, a
    call z, $91cf

jr_037_4602:
    sbc [hl]
    ld b, e
    and d
    cp h
    dec b
    pop bc
    cp $c0
    rst $38
    ldh [rIE], a
    xor a
    adc a
    ld de, $bfc0
    rst $38
    rst $38
    rst $08
    rst $38
    xor a
    rst $30
    or [hl]
    ei
    cp e
    db $fd
    db $f4
    cp a
    rst $38
    rst $38
    ld bc, $adff
    adc a
    nop
    and h
    ld [hl+], a
    rst $38
    nop
    db $ed
    add e
    add h
    ld [bc], a
    cp a
    db $f4
    rst $38
    jp $0782


    add h
    rst $38
    rst $38
    db $fc
    or h
    adc h
    or a
    adc a
    add a
    nop
    ld [hl], c
    dec bc
    rst $08
    db $fd
    rst $08
    rst $38
    rst $38
    call $cfff
    db $fd
    rst $38
    rst $30
    rrca
    and e
    sbc a
    ld d, c
    cp a
    add b
    add e
    pop hl
    ld [$ffff], sp
    xor l
    rst $38
    pop hl
    pop hl
    rst $38

jr_037_465a:
    and c
    rst $38
    add h
    ld [bc], a
    ld h, b
    ldh [$27], a
    rst $38
    rst $38
    adc a
    rst $38
    dec d
    adc a
    dec c
    ld [hl], l
    sbc a
    adc a
    rst $38
    rst $38
    ld l, a
    cpl
    and e
    inc hl
    ret c

    jr jr_037_465a

    ld c, $f5
    ld [hl], e
    set 1, b
    sbc l
    sbc b
    ld a, [hl]
    ld [hl], b
    db $fc
    db $fc
    rst $30
    cp $e7
    cp $0f
    inc a
    sbc a
    cp b
    ld a, e
    ldh a, [$83]
    ld [bc], a
    inc c
    ld bc, $03fd
    add e
    inc bc

jr_037_4691:
    db $10
    dec b
    daa
    rst $38
    rst $38
    db $fd
    daa
    daa
    and e
    inc bc
    rra
    ld c, a
    ld b, b
    cp a
    nop
    nop
    ld c, l
    rst $38
    nop

jr_037_46a4:
    or b
    sbc a
    rrca
    reti


    rst $18
    adc $ce
    ld [c], a
    ld [c], a
    or c
    or c
    cp h
    cp h
    or e
    cp a
    sbc a
    sbc a
    add b
    add b
    xor a
    adc a
    ldh [$86], a
    rst $38
    inc bc
    db $fc
    inc b

jr_037_46bf:
    db $fc
    jr jr_037_46a4

    ld hl, $42c0
    ld h, c
    call nz, $88d2
    pop hl
    adc c
    ld sp, hl
    rst $20
    ld a, $1f
    adc [hl]
    inc l
    xor c
    db $fd
    inc b
    ld c, $59
    inc c
    cp d
    inc e
    ld e, h
    db $e3
    rst $18
    ldh [$5f], a
    jr nc, jr_037_46bf

    jr z, jr_037_4691

    call nc, $3ef5
    ld a, [bc]
    ld a, a
    sub $7f
    xor c
    rst $38
    add l
    pop af
    ret c

    ld [c], a
    pop af
    add $5a
    push bc
    ld h, h
    jp c, Jump_037_75aa

    ret c

    ccf
    rst $20
    rra
    ld e, h
    ld [c], a
    ld a, b
    inc a
    ld c, b
    inc a
    sub a
    ld a, h
    ld c, e
    cp h
    xor [hl]
    ld a, l
    ld e, [hl]
    rst $38
    ld sp, hl
    rst $20
    rst $38
    xor e
    ld d, l
    ld e, a
    cp e
    cpl
    ld e, [hl]
    or a
    ld a, [hl+]
    ld e, a
    ld e, h
    xor a
    jr @+$01

    ldh [$fe], a
    db $fc
    inc bc
    db $f4
    inc c
    ldh a, [rNR10]
    ldh [rNR41], a
    add b
    ld b, b
    pop bc
    ld b, b
    add [hl]
    ld b, c
    pop af
    add a
    rra
    ldh [$de], a
    ld sp, $18ef
    rst $00
    inc a
    db $eb
    ld e, $87
    ld a, [hl]
    ld a, [hl+]
    rst $38
    ld d, l

Call_037_473a:
    rst $38
    rst $38
    db $fc
    rst $38
    inc bc
    and d
    ld [$8314], sp
    ld [bc], a
    cp c
    rrca

Call_037_4746:
Jump_037_4746:
    ld [bc], a
    ld a, [bc]
    nop
    inc d
    nop
    inc a
    jp $3cc3


    nop
    rst $38

jr_037_4751:
    ld b, d
    cp l
    and l
    jp $22c3


    rst $38
    ld de, $ff3c
    ld bc, $8300
    nop
    rst $00
    nop
    rst $28
    nop
    rst $30
    nop
    db $e3
    nop
    pop bc
    nop
    add b
    nop
    ld b, e
    rst $38
    add b
    ld bc, $80c0
    ld b, e
    rst $38
    cp a
    dec b
    rst $28
    or b
    add sp, -$49
    xor b
    rst $30
    ld b, e
    db $fd
    inc bc
    ld bc, $0305
    ld b, e
    db $fd
    rst $38
    ld bc, $1fe5
    ld b, e
    dec d
    rst $38
    ld b, l
    cp $01
    ld bc, $ff00
    ld b, l
    rst $28
    db $10
    ld [bc], a
    nop
    rst $38
    add b
    ld b, [hl]
    add b
    sbc a
    add hl, bc
    sub b
    adc a
    sub a
    adc b
    sub h
    res 2, a
    cp b
    ld bc, $4503
    ld sp, hl
    rlca
    dec de
    add hl, bc
    rst $20
    jp hl


    rlca
    dec hl
    rst $00
    db $ed
    rrca
    rst $20
    rst $08
    jp hl


    sbc $72
    cp $af
    db $ec
    ld b, [hl]
    call nz, $80c5
    jp nz, $e186

    adc a
    xor b
    nop
    ld d, l
    jr nz, jr_037_4751

    inc b
    add h
    ldh [rNR44], a
    ei
    rst $38
    ld [hl], l
    rst $18
    ld a, e
    rst $28
    ld a, [hl]
    rst $30
    ld a, [hl+]
    rst $38
    ld d, [hl]
    rst $38
    ld l, e
    rst $38
    push de
    rst $38
    db $eb
    nop
    sub [hl]
    ld b, c
    xor a
    nop
    rst $18
    nop
    ld a, d
    add l
    push af
    ld a, [bc]
    ld a, [$bf05]
    ld b, b
    sbc b
    ldh [$b0], a
    ret nz

    and e
    inc bc
    ld c, $85
    add a
    dec b
    nop
    rst $38
    nop
    nop
    nop
    nop
    adc e
    add a
    ldh [$27], a
    jp nz, $958f

    rst $08
    add e
    cp $47
    db $fc
    xor e
    db $fc
    ld e, l
    rst $38
    xor e
    ld a, [hl]
    push de
    ccf
    dec hl
    rst $38
    sub l
    ld a, a
    ld [$d63f], a
    ld a, a
    cp l
    ei
    reti


    ccf
    sub [hl]
    ld a, a
    rst $20
    ld hl, sp-$04
    add b
    adc b
    rst $00
    jp $bbff


    db $fc
    add e
    add a
    dec b
    add b
    rst $38
    ld a, a
    ld a, a
    dec a
    inc bc
    xor l
    adc a
    ldh [rNR41], a
    cp $01
    ld a, l
    add d
    cp d
    ld b, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld e, l
    and d
    cp [hl]
    ld b, c
    ld a, a
    add b
    and a
    rst $38
    and b
    rst $38
    xor a
    ldh a, [$a7]
    rst $38
    xor b
    rst $30
    and a
    rst $38
    ldh [rIE], a
    rst $38
    nop
    push af
    and h
    adc a
    add h
    add l
    and h
    adc a
    add hl, bc
    nop
    add c
    cp $01
    ld a, [hl]
    ld bc, $ff00
    stop
    ld b, e
    rst $20
    db $10
    add hl, bc
    nop
    rst $38
    sub l
    jp z, $b897

    sub h
    adc e
    sub a
    adc b
    jp $e804


    inc bc
    ld e, a
    ret nz

    ccf
    rst $38
    add e
    inc b
    db $fc

jr_037_487e:
    inc bc
    xor c

jr_037_4880:
    ld b, a
    jp hl


    rlca
    jp $f804


    ld b, $fa
    rlca
    db $fc
    rst $38
    cp b
    rst $08
    add sp, $44
    rst $38
    ld hl, sp+$01
    rst $38
    db $fc
    ld c, e
    db $fc
    rst $38
    ld a, [bc]
    db $f4
    rst $38
    rst $28
    db $f4
    db $fc
    rst $20
    sbc h
    rst $20
    inc e
    rst $20
    inc d
    ld b, e
    rst $28
    jr jr_037_48ab

    rst $38
    ld a, b
    rst $28
    adc e

jr_037_48ab:
    db $ec
    ld c, l
    jr z, jr_037_487e

    ld bc, $cc2b
    ld b, l
    jr z, @-$2f

    or l
    cp a
    ld b, $3f
    rst $38
    rst $28
    ccf
    scf
    rst $28
    add hl, sp
    ld b, h
    rst $20
    jr c, jr_037_4880

    cp a
    ld c, a
    or [hl]
    sub d
    ld c, a
    db $ed
    inc h
    ld c, a
    rst $38
    nop
    ld c, a
    db $ed
    ld [hl], $4f
    db $db
    ld l, l
    add hl, bc
    or a
    sub d
    or a
    sub e
    or a
    sub b
    cp b
    sub a
    cp a
    sbc a
    add e
    inc bc
    ld h, b
    add e
    inc bc
    add hl, sp
    add e
    inc bc
    ld l, [hl]
    adc c

Call_037_48e8:
    add l
    dec bc
    ld e, e
    db $ed
    db $db
    db $ed
    ei
    dec c
    dec bc
    db $fd
    ei

jr_037_48f3:
    db $fd
    rst $38
    ld bc, $0383
    and d
    dec bc
    db $ed
    inc h
    xor $25
    rst $28
    daa
    rst $28
    jr nz, jr_037_48f3

    cpl
    rst $38
    ccf
    jp Jump_037_6802


    adc $a2
    inc c
    nop
    db $ed
    ld [hl], $2d
    or $ed
    or $fd
    ld b, $05
    cp $fd
    cp $87
    sbc l
    sbc c
    add l
    dec bc
    rst $38
    nop
    cp a
    nop
    rst $08
    jr nc, @+$01

    nop
    ld d, $e1
    ld [$4317], sp
    rst $28
    db $10
    ld a, [bc]
    rra
    ldh [$f7], a
    nop
    ld sp, hl
    ld b, $6f
    db $10
    adc b
    ld [hl], a
    ldh a, [rLY]
    ld [$01f3], sp
    ld hl, sp+$07
    ld d, b
    rst $38
    nop
    ldh [$3b], a
    ld h, a
    call c, $d25c
    ld d, d
    jp hl


    add hl, hl
    rst $30
    ld h, a
    xor a
    or h
    xor [hl]
    cp c
    sbc l
    or e
    rst $38
    ld h, b
    rst $38
    ldh a, [rVBK]
    ld c, b
    rst $30
    add h
    ld e, e
    sub [hl]
    cp l
    di
    dec e
    db $e3
    jp $9fff


    sub e
    sub a
    sbc c
    adc e
    adc h
    adc h
    adc a
    rst $00
    add e
    ldh [$80], a
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    db $fd
    db $eb
    reti


    db $db
    ld sp, $f133
    pop hl
    jp $0701


    ei
    ld b, e
    ld b, $ff
    ldh [rNR41], a
    ld e, a
    ret nz

    rst $18
    rst $18
    ret nz

    sbc a
    and b
    ret nz

    sbc a
    ldh [$c0], a
    ld a, a
    ld h, b
    rra
    ccf
    ei
    cp $03
    rst $38
    ei
    rlca
    ei
    dec b
    dec b
    ei
    inc bc
    rlca
    cp $07
    ld sp, hl
    cp $20
    rra
    ld b, e
    ld [hl+], a
    dec e
    dec bc
    ld h, d
    dec e
    or a
    ld [$156a], sp
    or a
    ld [$14eb], sp
    dec b
    ld a, [$e543]
    ld a, [de]
    rlca
    rst $20
    jr @-$09

    ld a, [bc]
    rst $28
    db $10
    rst $30
    ld [$ff45], sp
    nop
    rlca
    db $e3
    nop
    ret


    inc e
    call $e322
    inc e
    ld b, e
    rst $38
    nop
    inc bc
    inc a
    inc a
    ld [hl], d
    ld c, [hl]
    ld b, e
    ret


    add a
    ld a, [de]
    or c
    rst $08
    jp nz, $fd7f

    cp a
    ld c, d
    ld h, [hl]
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    inc h
    cp a
    push hl
    cp a
    ld sp, hl
    sbc a
    ld [hl], e
    ld c, [hl]
    ld a, $3c
    rst $38
    nop
    rst $38
    ld l, b
    inc bc
    ccf
    nop
    pop bc
    ld a, $ae
    adc a
    ld [$0300], sp
    nop
    inc b
    inc bc
    ld [$1007], sp
    rrca
    ld b, e
    jr nz, jr_037_4a29

    ld b, e
    ld b, b
    ccf
    ld c, l
    ld bc, $01fe
    rlca
    ld hl, sp+$4d
    add b
    nop
    nop
    ldh [$a3], a
    xor a
    inc b
    nop
    stop
    ld [$4300], sp
    inc b
    nop
    ld b, e
    ld [bc], a
    nop
    ld c, e
    add b
    ld a, a

jr_037_4a29:
    ld b, e
    ld b, b
    ccf
    ld [bc], a
    inc c
    ldh a, [rNR24]
    ld b, h
    ldh [rNR31], a
    dec c
    add hl, de
    ldh [$0c], a
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $30
    nop
    sbc b
    nop
    ret c

    nop
    call nz, $c381
    cp e
    xor h
    call $0243
    nop
    ld b, e
    jr nz, @+$21

    nop
    db $10
    and e
    inc b
    ld h, h
    ld bc, $0303
    ld h, e
    xor h
    rst $08
    ld [bc], a
    pop bc
    ld a, $3f
    adc h
    db $fd
    ld [bc], a
    add e
    nop
    db $fc
    add l
    rlca
    rst $38
    ld a, [bc]
    rst $38
    db $e3
    rst $38
    ld [de], a
    rst $28
    ld d, $ff
    nop
    rst $38
    nop
    nop
    ld e, h
    rst $38
    nop
    dec bc
    ld bc, $83fe
    rst $38
    ld a, [hl]
    rst $38
    cp l
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    add $81
    adc c
    sbc e
    dec b
    rst $38
    ld [bc], a
    cp $05
    db $fc
    dec bc
    ld b, h
    rst $38
    nop
    ld a, [bc]
    rrca
    rst $38
    ld [hl], b
    ldh [$9f], a
    adc a
    ld a, a
    ld [hl], c
    rst $38
    add b
    rst $38
    and a
    adc a
    rlca
    ld bc, $f0ff
    rst $38
    adc $bf
    pop bc
    cp a
    xor d
    rrc b
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$f9]
    rla
    ld a, [$4517]
    db $f4
    cpl
    rla
    jp hl


    ld e, [hl]
    jp hl


    sbc $69
    ld e, [hl]
    rrca
    pop af
    ld a, $c1
    ld l, l
    add c
    ret z

    ld bc, $0181
    add b
    ld bc, $0121
    ld a, b
    ld bc, $87b8
    ld b, e
    cp a
    add b
    ld [bc], a
    sbc e
    add b
    add c
    inc h
    add b
    ld de, $808c
    adc a
    ld hl, sp+$4f
    ld hl, sp-$59
    ld a, h
    rst $20
    inc a
    ld h, a
    inc a
    ld [hl], e
    ld e, $73
    rra
    ld [hl], e
    ld e, $49
    jp hl


    ld e, [hl]
    dec c
    rst $28
    ld e, a
    add sp, $5f
    ei
    db $fc
    ld sp, hl
    ld bc, $0170
    add c
    ld bc, $01c2
    and l
    ld_long a, $ff06
    nop
    add a
    add b
    and a
    add b
    and e
    add a
    ld [bc], a
    ld e, e
    dec b
    rst $38
    rst $38
    nop
    ld [hl], e
    ld e, $73

jr_037_4b11:
    ld b, a
    ld e, $f3
    ld b, $fe
    inc de
    cp $df
    ccf
    cp $83
    ld b, e
    ld a, h
    rst $00
    inc b
    jr c, jr_037_4b11

    jr c, @-$0f

    db $10
    add l
    ld b, $df
    ld b, $ff
    cp a
    rst $38
    rst $08
    cp a
    ldh a, [$8f]
    ld b, h
    rst $38
    add b
    ld [bc], a
    ret nz

    cp a
    and c
    and e
    adc a
    nop
    pop af
    ld b, [hl]
    rst $38
    ld bc, $0315
    rst $38
    add l
    db $fd
    sbc [hl]
    sub d
    cp $9c
    and l
    cp $92
    di
    db $d3
    ld a, [c]
    and e
    and d
    ld b, c
    pop bc
    ld h, b
    ldh [rOBP1], a
    ld a, c
    and h
    adc a
    inc c
    rst $38
    db $db
    ld l, a
    call $b677
    set 5, [hl]
    rla
    ld e, b
    ret c

    ld b, a
    rst $00
    ld b, l
    ld b, b
    ret nz

    ldh [$2d], a
    ld h, b
    ldh [$78], a
    ld hl, sp+$67
    rst $20
    cp $1b
    ld [c], a
    rst $20
    ld [bc], a
    rra
    jp nc, $e22f

    rra
    sub $2f
    cp $1f
    or $ef
    ld e, b
    ld e, b
    ld b, a
    ld b, a
    ld b, b
    ret nz

    ldh [$c0], a
    rst $20
    ld hl, sp+$78
    ld a, a
    rra
    ccf
    rlca
    rrca
    cp $1a
    ld [c], a
    and $02
    rra
    db $d3
    cpl
    and a
    adc a
    ld b, $be
    set 5, h
    rst $38
    db $fc
    rst $38
    ld hl, sp+$46
    rst $38
    db $fc
    nop
    rst $38
    push bc
    add b
    inc b
    rst $38
    rst $30
    rst $38
    db $ec
    rst $30
    add h
    ld b, $1a
    ld a, [bc]
    db $e4
    rla
    db $ec
    rra
    add sp, $1f
    ld hl, sp+$7f
    add sp, -$71
    add sp, $52
    cpl
    ret z

    add hl, bc
    ret


    ld l, $cb
    db $fd
    sub e
    ld [hl], a
    rst $18
    ld a, a
    rst $18
    ccf
    db $f4
    dec [hl]
    cp a
    dec b
    inc de
    db $f4
    sub e
    rst $38
    nop
    rst $38
    ld l, h
    inc b
    call nc, $e000
    nop
    ld b, b
    and h
    ld [$00c9], sp
    add b
    ld [hl], h
    rrc b
    adc d
    jp $87b5


    add hl, bc
    ld d, b
    ld b, $f0
    adc a
    adc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    adc h
    add hl, bc
    ld e, a
    add e
    ld [bc], a
    add hl, sp
    inc b
    ld sp, hl
    rla
    ei
    rla
    rst $30
    ld b, h
    cpl
    push af
    nop
    db $ed
    ld b, h
    ld e, a
    jp hl


    cpl
    rst $38
    inc b
    adc a
    ld hl, sp-$31
    ld hl, sp-$19
    ld b, e
    db $fc
    and a
    ld bc, $b3fe
    ld b, h
    cp $93
    ld b, a
    jp hl


    ld e, a
    ld bc, $5feb
    add l
    add hl, bc
    jp z, $ff2b

    add e
    add hl, bc
    db $ec
    ld b, l
    sub e
    cp $43
    db $d3
    cp $85

jr_037_4c2d:
    add hl, bc
    ld_long a, $ff00
    and h
    inc b
    xor c
    dec c
    ld de, $1100
    db $10
    add hl, hl
    jr z, @-$53

    jr z, jr_037_4c2d

    jr z, @-$27

    ld d, h
    rst $38
    ld b, h
    ld b, e
    rst $28
    jr c, jr_037_4c48

    rst $38

jr_037_4c48:
    db $10
    add l
    add hl, bc
    ld a, [hl+]
    ld l, a
    rst $38
    nop
    nop
    db $10
    db $10
    db $10

Call_037_4c53:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc c
    dec c
    ld c, $0f
    inc e
    dec e
    ld e, $1f
    jr nz, jr_037_4c94

    jr z, jr_037_4c95

    jr nz, jr_037_4c8e

    jr c, jr_037_4ca9

    ld [bc], a
    inc bc
    ld [de], a
    inc de
    dec hl
    inc l
    ld hl, $0521
    ld b, $11
    ld de, $1615
    jr nz, jr_037_4ca0

    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_037_4ca6

    jr nz, @+$22

    inc c
    dec c
    ld c, $0f
    inc e
    dec e

jr_037_4c8e:
    ld e, $1f
    inc c
    dec c
    ld c, $0f

jr_037_4c94:
    inc e

jr_037_4c95:
    dec e
    ld e, $1f
    inc c
    dec c
    ld c, $0f
    inc e
    dec e
    ld e, $1f

jr_037_4ca0:
    ld bc, $0101
    ld bc, $2725

jr_037_4ca6:
    ld hl, $0821

jr_037_4ca9:
    add hl, bc
    ld de, $1811
    add hl, de
    ld de, $3520
    rla
    ld de, $3520
    rla
    ld de, $3520
    rla
    ld de, $3520
    rla
    ld de, $3520
    rla
    ld h, $26
    jr nc, jr_037_4cf7

    rlca
    rlca
    ld de, $1111
    ld de, $2020
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_037_4cf4

    jr nz, jr_037_4cf6

    jr nz, jr_037_4cf8

    inc b
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    dec b
    ld b, $20
    jr nz, jr_037_4cfa

    ld d, $20
    jr nz, jr_037_4d09

    jr nz, @+$07

    ld b, $20
    jr nz, jr_037_4d04

    ld d, $25
    ld h, $26
    daa

jr_037_4cf4:
    ld [hl], $37

jr_037_4cf6:
    scf

jr_037_4cf7:
    ld a, [hl-]

jr_037_4cf8:
    ld [hl+], a
    inc hl

jr_037_4cfa:
    inc hl
    inc h
    ld [hl-], a
    inc sp
    inc sp
    inc [hl]
    or b
    or b
    or b
    or b

jr_037_4d04:
    or h
    push de
    sub $b7
    rst $10

jr_037_4d09:
    ret c

    ret c

    reti


    jp c, $dbdb

    call c, $0d0c
    ld c, $0f
    inc e
    dec e
    ld e, $1f
    jr nz, jr_037_4d3a

    jr nz, jr_037_4d3c

    jr nz, jr_037_4d3e

    jr nz, jr_037_4d40

    ld [bc], a
    inc bc
    ld [de], a
    inc de
    dec hl
    inc l
    dec hl
    inc l
    dec b
    ld b, $05
    ld b, $15
    ld d, $15
    ld d, $20
    ld a, [hl+]
    jr z, jr_037_4d5d

    jr nz, jr_037_4d56

    jr c, @+$3b

    jr nz, jr_037_4d5a

jr_037_4d3a:
    jr nz, jr_037_4d5c

jr_037_4d3c:
    jr nz, jr_037_4d5e

jr_037_4d3e:
    jr nz, jr_037_4d60

jr_037_4d40:
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e

jr_037_4d56:
    ld d, e
    ld d, e
    ld d, e
    ld d, e

jr_037_4d5a:
    ld d, e
    ld d, e

jr_037_4d5c:
    ld d, e

jr_037_4d5d:
    ld d, e

jr_037_4d5e:
    ld d, e
    ld d, e

jr_037_4d60:
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    ld b, [hl]
    ld b, a
    ld d, e
    ld d, e
    ld d, [hl]
    ld d, a
    ld d, e
    ld d, e
    jr nz, jr_037_4d92

    jr nz, jr_037_4d94

    jr nz, jr_037_4d96

    jr nz, jr_037_4d98

    jr nz, @+$22

    jr nz, jr_037_4d9c

    jr nz, jr_037_4d9e

    jr nz, jr_037_4da0

    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    ld d, e
    ld d, e
    ld b, [hl]
    ld b, a
    ld d, e
    ld d, e
    ld d, [hl]
    ld d, a
    add c
    ld e, l

jr_037_4d92:
    sub l
    sub a

jr_037_4d94:
    add d
    ld e, l

jr_037_4d96:
    ld e, l
    ld e, l

jr_037_4d98:
    dec h
    ld h, $26
    daa

jr_037_4d9c:
    ld e, b
    ld e, c

jr_037_4d9e:
    ld e, b
    ld e, c

jr_037_4da0:
    pop de
    and e
    and h
    pop de
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    call nc, Call_037_5353
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    rst $00
    ret z

    jp nc, $d3d2

    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    jp nc, $d3d3

    db $d3
    db $d3
    jp nc, Jump_037_4746

    ld d, e
    ld d, e
    ld d, [hl]
    ld d, a
    ld d, e
    ld d, e
    ld b, [hl]
    ld b, a
    ld d, e
    ld d, e
    ld d, [hl]
    ld d, a
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld b, [hl]
    ld b, a
    ld d, e
    ld d, e
    ld d, [hl]
    ld d, a
    ld d, e
    ld d, e
    ld b, [hl]
    ld b, a
    ld d, e
    ld d, e
    ld d, [hl]
    ld d, a
    ld l, $2f
    ld d, e
    ld d, e
    ld a, $3f
    ld d, e
    ld d, e
    ld c, [hl]
    ld c, a
    ld d, e
    ld d, e
    ld e, [hl]
    ld e, a
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld l, $2f
    ld d, e
    ld d, e
    ld a, $3f
    ld d, e
    ld d, e
    ld c, [hl]
    ld c, a
    ld d, e
    ld d, e
    ld e, [hl]
    ld e, a
    ld d, e
    ld b, b
    ld c, b
    ld c, b
    ld b, b
    ld d, b
    ld d, c
    ld d, c
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld c, b
    ld c, b
    ld b, d
    ld d, e
    ld d, c
    ld d, c
    ld d, d
    ld b, d
    ld d, c
    ld d, c
    ld d, d
    ld d, d
    ld d, c
    ld d, c
    ld d, d
    ld d, d
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
    dec l
    dec l
    dec l
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld d, b
    ld b, e
    ld b, h
    ld b, h
    ld b, e
    ld b, h
    ld b, h
    ld b, h
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld d, c
    ld d, c
    ld d, d
    ld d, d
    ld d, c
    ld d, c
    ld d, d
    ld d, d
    ld b, h
    ld b, h
    ld b, l
    ld d, d
    ld b, h
    ld b, h
    ld b, h
    ld b, l
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    inc b
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    ld a, [bc]
    dec bc
    ld d, e
    ld d, e
    ld a, [bc]
    dec bc
    ld d, e
    ld d, e
    ld a, [bc]
    dec bc
    ld d, e
    ld d, e
    ld a, [de]
    dec de
    ld d, e
    ld d, e
    ld a, [bc]
    dec bc
    ld b, [hl]
    ld b, a
    ld a, [bc]
    dec bc
    ld d, [hl]
    ld d, a
    ld a, [bc]
    dec bc
    ld b, [hl]
    ld b, a
    ld a, [bc]
    dec bc
    ld d, [hl]
    ld d, a
    ld b, [hl]
    ld b, a
    ld a, [bc]
    dec bc
    ld d, [hl]
    ld d, a
    ld a, [bc]
    dec bc
    ld b, [hl]
    ld b, a
    ld a, [bc]
    dec bc
    ld d, [hl]
    ld d, a
    ld a, [bc]
    dec bc
    ld d, e
    ld d, e
    ld a, [bc]
    dec bc
    ld d, e
    ld d, e
    ld a, [bc]
    dec bc
    ld d, e
    ld d, e
    ld a, [bc]
    dec bc
    ld d, e
    ld d, e
    ld a, [de]
    dec de
    jp z, $b0b0

    or b
    res 6, c
    db $dd
    or c
    call z, $deb2
    or d
    ret


    ret nz

    ret nz

    ret nz

    or b
    or b
    or b
    adc $b1
    db $dd
    or c
    rst $08
    or d
    sbc $b2
    ret nc

    ret nz

    ret nz

    ret nz

    call Call_037_4746
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    ld d, a
    sub a
    sub a
    sub a
    sub a
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    dec h
    ld h, $26
    daa
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    or b
    or b
    pop bc
    jp nz, $b1dd

    jp $dec4


    or d
    push bc
    add $c0
    ret nz

    push bc
    add $c1
    jp nz, $b0b0

    jp $b1c4


    db $dd
    push bc
    add $b2
    sbc $c5
    add $c0
    ret nz

    or b
    or b
    or b
    or b
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    add c
    ld e, l
    adc b
    adc c
    add d
    ld e, l
    adc b
    adc c
    add d
    ld e, l
    adc b
    adc c
    add b
    ld e, l
    adc b
    adc c
    adc e
    adc h
    ld e, l
    add l
    adc e
    adc h
    ld e, l
    add [hl]
    adc e
    adc h
    ld e, l
    add a

Jump_037_4f5c:
    adc e
    adc h
    ld e, l
    add h
    dec sp
    inc a
    inc a
    dec a
    dec sp
    inc a
    inc a
    dec a
    dec sp
    inc a
    inc a
    dec a
    dec sp
    inc a
    inc a
    dec a
    jp nc, $c7d2

    ret z

    jp nc, $d3d3

    db $d3
    db $d3
    jp nc, $d3d3

    db $d3
    db $d3
    jp nc, Jump_037_60d3

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    dec sp
    inc a
    inc a
    dec a
    dec sp
    inc a
    inc a
    dec a
    dec h
    ld h, $26
    daa
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    sbc b
    sbc c
    sub a
    sub a
    sbc d
    sbc e
    sub a
    sub a
    sbc h
    sbc l
    sub a
    sub a
    sbc [hl]
    sbc a
    sub a
    sub a
    sub a
    sub a
    sbc b
    sbc c
    sub a
    sub a
    sbc d
    sbc e
    sub a
    sub a
    sbc h
    sbc l
    sub a
    sub a
    sbc [hl]
    sbc a
    sub a
    sub [hl]
    ld e, l
    add l
    ld e, l
    ld e, l
    ld e, l
    add [hl]
    dec h
    ld h, $26
    daa
    ld e, b
    ld e, c
    ld e, b
    ld e, c
    add c
    ld e, l
    sub l
    sub a
    add d
    ld e, l
    ld e, l
    sub a
    add e
    ld e, l
    ld e, l
    sub l
    add b
    ld e, l
    sub l
    sub a
    sub a
    sub [hl]
    ld e, l
    add l
    sub a
    ld e, l
    ld e, l
    add [hl]
    sub [hl]
    ld e, l
    ld e, l
    add a
    sub a
    sub [hl]
    ld e, l
    add h
    add c
    ld e, l
    adc b
    adc c
    add d
    ld e, l
    adc b
    adc c
    add e
    ld e, l
    adc b
    sub b
    add b
    ld e, l
    adc l
    adc [hl]
    adc e
    adc h
    ld e, l
    add l
    adc e
    adc h
    ld e, l
    add [hl]
    sub d
    adc h
    ld e, l
    add a
    adc [hl]
    adc a
    ld e, l
    add h
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    sub a
    db $d3
    db $d3
    db $d3
    db $d3
    dec sp
    inc a
    inc a
    dec a
    sub h
    sub h
    sub h
    sub h
    sub e
    sub e
    sub e
    sub e
    and c
    db $d3
    db $d3
    db $d3
    and d
    jp nc, $d2d3

    sub c
    sub c
    sub c
    sub c
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    jp nc, $d3d3

    and c
    jp nc, $d3d2

    and d
    sub c
    sub c
    sub c
    sub c
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    sub b
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], d
    ld [hl], d
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    or d
    rlca
    nop
    or d
    or d
    nop
    nop
    or d
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca

jr_037_50ee:
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    rst $38
    ld h, c
    ld b, h
    rst $38
    nop
    add a
    add a
    ld bc, $00aa
    or a
    add c
    dec b
    ld d, a
    rlca
    or a
    jr jr_037_51df

    jr nz, jr_037_50ee

    adc a
    rlca
    push af
    ldh [$ea], a
    jr jr_037_51a9

    inc b
    nop
    nop
    add l
    cp e
    ld b, e
    ldh a, [rIF]
    ld b, e
    rrca
    ldh a, [rSCX]
    cp a
    add b
    ld de, $809f
    adc a
    and b
    add a
    sub b
    add e
    adc b
    add c
    add h
    add b
    add d
    rst $38
    ccf
    ld e, a
    ret nz

    ld a, a
    rst $38
    ld b, e
    cp a
    add b
    ld c, $80
    rst $38
    cp a
    rst $38
    cp [hl]
    pop hl
    rst $38
    db $fc
    cp $03
    cp $ff
    rst $38
    ld bc, $a4ff
    adc a
    ldh [rSTAT], a
    dec b
    rst $38
    cp d
    pop hl
    db $eb

jr_037_51a9:
    push bc
    add sp, $57
    ld [c], a
    sbc a
    res 7, a
    xor $bf
    cp [hl]
    rst $38
    ld a, a
    ld l, d
    db $ed
    adc a
    ld d, a
    and a
    sbc [hl]
    ld [c], a
    sub a
    jp hl


    rst $10
    ld sp, hl
    rst $10
    db $fd
    ld [hl], l
    rst $38
    ld e, l
    rst $18
    cp d
    ld sp, $4d4d
    ei
    add e
    rst $30
    xor c
    xor [hl]
    rst $38
    ld a, e
    ld [hl], c
    call c, $fb43
    sbc l
    xor [hl]
    adc h
    ld [hl], e
    ld [hl-], a
    rst $18
    ld b, c
    rst $38
    ld d, l
    or l

jr_037_51df:
    ld a, a
    ld l, a
    rst $08
    or $e2
    rst $10
    sbc c
    add l
    nop
    ld [$1f0b], sp
    rst $38
    ldh [$60], a
    ld b, b
    ret nz

    cp a
    cp a
    ret nz

    ret nz

    rst $38
    inc b
    ld b, e
    ld a, [bc]
    ei
    ld bc, $fbfa
    and a
    adc a
    add e
    push af
    inc c
    cp l
    rst $20
    and a
    db $fd
    and l
    push hl
    cp l
    db $fd
    cp a
    rst $38
    add b
    rst $38
    dec e
    ld b, e
    rst $38
    db $dd
    inc bc
    ld a, a
    db $dd
    ld a, a
    ld d, c
    push bc
    add e
    jr nc, @+$01

    rlca
    ld a, [hl]
    ld a, [hl]
    cp l
    cp l
    db $db
    db $db
    rst $20
    rst $20
    rst $00
    add b
    rra
    cp e
    inc h
    ld a, h
    inc hl
    xor a
    jr nc, jr_037_529d

    ccf
    xor a
    cpl

jr_037_5230:
    ld h, h
    daa
    and a
    daa
    ld e, [hl]
    dec e
    sbc $24
    dec a
    call nz, $0cf6
    dec c
    db $fc
    or $f4
    dec h
    db $e4
    and $e4
    cp l
    ld a, b
    add a
    nop
    ld c, b
    add [hl]
    nop
    ld b, $00
    nop
    ld b, e
    db $fd
    inc bc
    rrca
    ld sp, hl
    inc bc
    pop af
    rlca
    pop hl
    dec bc
    pop bc
    inc de
    add c
    inc hl
    ld bc, $b243
    pop hl
    cp [hl]
    pop hl
    ld b, l
    and b
    rst $38
    inc b
    cp a
    rst $38
    adc b
    rst $38
    ld a, a
    ld b, h
    rst $38
    dec b
    xor e
    adc a
    ldh [$59], a
    xor e
    scf
    ld d, a
    jr jr_037_5230

    inc e
    ld d, a
    rra
    or c
    inc e
    ld e, c
    inc c
    xor a
    rlca
    ld d, h
    ld bc, $fcc6
    ret


    inc a
    ld a, [de]
    ld hl, sp-$17
    db $fc
    ld [$11fe], sp
    cp $e0
    cp $01
    db $fc
    xor d
    ld [hl+], a
    ld d, a
    ld [bc], a
    xor d
    ld [bc], a
    ld e, a
    ld c, $b4
    ld e, $6d

jr_037_529d:
    ld a, $ac
    ld a, $66
    ccf
    ld [$554a], a
    ret nz

    ld [$7540], a
    ldh a, [$aa]
    ld a, b
    dec [hl]
    db $fc
    or [hl]
    ld a, h
    ld h, l
    db $fc
    sub [hl]
    sub h
    xor [hl]
    xor b
    sbc a
    sub h
    cp a
    xor b
    rst $38
    add b
    ret nz

    rst $38
    rst $38
    cp a
    add b
    rst $38
    db $fd
    ei
    add l
    ei
    db $fd
    inc bc
    dec b
    ei
    db $fd
    xor e
    and [hl]
    adc a
    ld b, e
    rst $38
    and b
    ld b, e
    rst $30
    xor h
    add e
    adc c
    inc bc
    ld [$e0f5], a
    db $fd
    adc d
    rst $38
    inc bc
    dec b
    xor a
    ld d, a
    rlca
    ld b, h
    cp a
    xor a
    ld [bc], a
    and b
    and b
    cp a
    add e
    add e
    inc bc
    sbc a
    sbc a
    add b
    add b
    ld b, h
    db $fd
    rst $30
    ldh [$3e], a
    rlca
    push af
    rst $38
    db $fd
    rlca
    rlca
    db $fd
    rst $38
    ld sp, hl
    ld bc, $fd01
    inc bc
    db $fc
    inc c
    ld hl, sp+$10
    cp $25
    sbc $6a
    ld sp, hl
    ld l, a
    ld c, h
    rst $38
    sub h
    rst $38
    rst $28
    ldh a, [$1f]
    ld [$b07f], sp
    rra
    ld d, h
    rrca
    ld a, [de]
    dec bc
    ld a, [bc]
    add a
    inc b
    adc $87
    sub c
    rst $38
    cp e
    pop de
    or a
    pop de
    xor a
    pop hl
    cp a
    pop hl
    rst $38
    pop bc
    cp a
    pop hl
    cp l
    pop hl
    cp a
    and b
    sbc a
    sbc a
    ld b, l
    sbc a
    add b
    ld de, $c05f
    cp a
    ld h, b
    rst $18
    ccf
    ld a, a
    ld a, a
    add b
    add b
    add c
    add h
    add e
    adc b
    add a
    sub b
    adc a
    and b
    jp Jump_037_5400


    add e
    nop
    rlca
    ld c, e
    rst $38
    nop

Call_037_5353:
jr_037_5353:
    dec de
    ld [$f5c0], a
    jr nz, jr_037_5353

    db $10
    dec [hl]
    ret nc

    ld a, [de]
    ldh a, [$d5]
    jr nc, jr_037_53bf

    cp h
    push de
    ld a, $fe
    cp $03
    ld bc, $2381
    pop bc
    inc de
    pop hl
    dec bc
    pop af
    rlca
    jp $5401


    ld h, c
    dec b
    ld a, a
    ld a, a
    di
    sbc [hl]
    db $ed
    or e
    ld b, e
    jp nc, $03ad

    db $ed
    or e
    di
    cp a
    and e
    adc a
    dec d
    rst $10
    ld c, e
    and a
    db $dd
    rst $08
    cp l
    ccf
    push hl
    rst $20
    sbc c
    rra
    push af
    db $fd
    adc e
    ld a, l
    ei
    ld a, l
    adc a
    ld a, e
    add a
    ld a, a
    add b
    add a
    nop
    ld [bc], a
    dec c
    ld a, a
    rst $38
    ld b, b
    ret nz

    ld b, b
    rst $18
    call z, Call_037_4c53
    db $d3
    ld b, b
    rst $18
    ld b, c
    sbc $a7
    adc a
    rlca
    inc bc
    ld a, [$fb02]
    jp nz, $e23b

    dec de
    ld c, a
    rst $38
    nop
    dec bc
    ret nz

    cp a

jr_037_53bf:
    cp a
    rst $38
    cp a
    ld [$faaa], a
    xor d
    ld [$efaf], a
    add e
    nop
    db $ec
    add e
    nop
    ld a, d
    ld b, e
    db $fd
    sub a
    inc bc
    sub l
    rst $30
    sbc l
    sbc a
    and e
    adc a
    ld [bc], a
    ld a, a
    ld a, a
    add b
    ld c, h
    add b
    cp a
    and e
    adc a
    ld c, e
    db $fd
    inc bc
    nop
    cp e
    xor [hl]
    rst $38
    inc bc
    db $fd
    rlca
    ld sp, hl
    rst $38
    ld b, l
    ld sp, hl

jr_037_53f0:
    rlca
    ld bc, $07fa
    and e
    ld [bc], a
    ld e, h
    ld c, a
    cp a
    add b
    inc e
    xor a
    rrca
    ld d, e
    db $10
    xor a

Jump_037_5400:
    jr nz, @+$72

    cpl
    and b
    ccf
    ld l, a
    jr nc, jr_037_53f0

    rst $30
    xor a
    or b
    xor c
    or [hl]
    rst $28
    or b
    ldh [$bf], a
    ldh a, [$bf]
    rst $38
    adc a
    adc e
    db $fc
    add b
    ld [hl+], a
    rst $38
    ld c, a
    db $fd
    inc bc
    push bc
    ld [bc], a
    ret nc

    dec b
    rst $38
    rst $38
    ld d, l
    xor d
    xor d
    ld d, l
    add e
    nop
    inc [hl]
    add h
    nop
    ld [hl], l
    ld [$81ff], sp
    rst $38
    ld h, c
    rst $38
    or c
    ld e, a
    xor [hl]
    ld c, $83
    adc a
    ld b, e
    ret nz

    cp a
    inc de
    pop bc
    cp a
    rst $00
    cp [hl]
    jp z, $fabd

    ld [hl], b
    ld d, l
    nop
    jp Jump_037_4f5c


    ret nc

    ld b, b
    rst $18
    ld b, b
    ret nz

jr_037_544f:
    rst $38
    ld a, a
    add l
    inc bc
    ld c, d
    ld bc, $0af3
    xor l
    adc a
    ld de, $bd56
    push de
    ld a, $16
    db $fd
    dec [hl]
    cp $f6
    call Call_037_7ec5
    ld [hl], $fd
    call $ffce
    rra
    ld b, l
    jr nz, jr_037_544f

    rlca
    rst $38
    jr nz, @+$41

    rst $28
    ld sp, hl
    db $eb
    cp a
    xor a
    xor e
    adc a
    dec c
    rst $38
    rst $30
    rst $38
    push af
    sbc a
    rst $38
    ldh [$ea], a
    or b
    xor a
    and b
    xor d
    cp a
    and b
    add e
    inc bc
    inc c
    dec bc
    rst $38
    ld a, a
    ld sp, hl
    rst $38
    rlca
    and a
    dec b
    rst $30
    dec b
    rla
    db $fd
    rlca
    and l
    adc a
    add h
    ld [bc], a
    ld [hl], c
    ld a, [bc]
    add b
    nop
    add b
    adc b
    dec e
    nop
    add b
    ld [$009a], sp
    add b
    add e
    adc a
    ld b, e
    ld [bc], a
    inc bc
    ld a, [bc]
    ld l, e
    ld a, [$0302]
    ld b, d
    di
    ld [bc], a
    inc bc
    cp a
    add a
    cp h
    ld b, e
    add a
    cp a
    dec b
    add b
    cp a
    sbc a
    and b
    and b
    xor [hl]
    ld [hl+], a
    and b
    add hl, de
    rst $38
    ld hl, sp+$17
    db $e4
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld a, h
    add e
    add d
    ld a, [hl-]
    add e
    ld [bc], a
    add e
    rst $38
    ld a, a
    ld b, b
    ret nz

    ld a, a
    rst $18
    ld e, a
    rst $18
    rst $18
    ld e, a
    ld b, l
    ld e, a
    rst $18
    add e
    ld [bc], a
    ld [hl], b
    dec hl
    rst $38
    dec bc
    adc c
    rst $38
    adc l
    adc e
    sbc l
    adc e
    xor l
    add a
    db $dd
    add a
    cp a
    add e
    ld b, e
    db $fd
    add a
    xor a
    xor a
    ld e, $80
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    cp $fc
    ei
    ld a, [c]
    rst $28
    nop
    rst $38
    rlca
    rst $38
    dec de
    ld sp, hl
    ld l, a
    db $e3
    cp a
    adc e
    ld a, a
    xor a
    pop af
    cp a
    pop af
    adc h
    inc bc
    rst $28
    inc de
    ld b, $fd
    db $fd
    cp $b6
    add [hl]
    or l
    add l
    ld c, l
    ld c, c
    di
    or e
    db $ed
    sbc a
    cp c
    rst $00
    jp Jump_037_7dff


    ld a, $47
    inc l
    ld d, e
    ld b, a
    inc hl
    ld e, h
    ld b, a
    call nz, Call_037_473a
    inc [hl]
    jp z, $33e0

    cp h
    and $bf
    ld a, [c]
    ld c, h
    ld hl, sp-$2a
    ld a, b
    call $f3fe
    cp a
    add sp, -$61
    rst $30
    rst $08
    ld a, l
    call $3931
    ld [bc], a
    ld de, $7a3b
    push af
    ld a, a
    db $fd
    adc a
    rst $30
    db $fd
    ccf
    ei
    rst $38
    push af
    pop de
    cp [hl]
    rst $30
    jp z, $9be5

    db $eb
    rst $18
    rst $18
    or d
    rst $18
    or [hl]
    rst $38
    cp a
    rst $20
    db $fd
    db $db
    rst $20
    ld b, e
    and l
    db $db
    rlca
    dec de
    rst $20
    ld b, e
    cp l
    or a
    call Call_037_7dcf
    daa
    and b
    add e
    ld [bc], a
    ld d, b
    inc bc
    adc d
    add l
    add b
    add d
    ld b, a
    ld [bc], a
    add e
    rlca
    ld a, [hl]
    add e
    db $fd
    cp $01
    cp $ff
    nop
    add a
    inc b
    adc b
    nop
    rst $18
    add e
    inc b
    add c
    nop
    rst $38
    add [hl]
    inc b
    sub e
    nop
    add c
    ld b, e
    add c
    sbc c
    inc b
    nop
    ld a, [hl]
    rst $38
    rst $38
    nop
    adc $04
    sbc [hl]
    ld bc, $ff00
    xor a
    xor a
    ld a, [bc]
    adc e
    rst $38
    cpl
    rst $38
    or c
    rst $38
    pop af
    rst $38
    or c
    rst $38
    pop de
    add h
    add e
    ld b, e
    rra
    pop af
    ld b, h
    ld a, a
    sub c
    inc de
    sub a
    ld a, l
    sbc l
    ld [hl], a
    push af
    rst $18
    push de
    rst $38
    sbc a
    cp a
    ret nz

    add c
    rst $38
    pop bc
    rst $38
    cp a
    rst $38
    sub b
    rst $38
    ret nc

    and e
    inc b
    dec a
    dec b
    ld sp, hl
    db $fd
    inc bc
    ld bc, $03ff
    add h
    ld bc, $0379
    inc de
    rst $38
    rst $38
    cp $ef
    rst $38
    db $ed
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
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    ld h, $27
    ld [de], a
    inc de
    ld [hl], $2f
    ld bc, $0101
    ld bc, $0101
    ld bc, $2701
    add hl, hl
    ld [bc], a
    inc bc
    cpl
    add hl, sp
    ld [de], a
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $3201
    inc sp
    ld [hl-], a
    inc sp
    jr nc, jr_037_5677

    ld c, $0f
    ld c, $0f
    ld c, $0f
    inc a
    dec sp
    ld e, $1f
    nop
    nop
    inc h
    ld c, d
    nop
    nop
    inc [hl]
    inc l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    dec bc
    ld bc, $0801
    add hl, bc
    ld bc, $1a01
    dec de
    ld bc, $1801
    add hl, de
    ld bc, $0101
    ld bc, $0b0a
    ld bc, $0801

jr_037_5677:
    add hl, bc
    ld bc, $1a01
    dec de
    ld bc, $1801
    add hl, de
    nop
    nop
    inc h
    ld c, d
    nop
    nop
    inc [hl]
    inc l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld [hl-], a
    inc sp
    nop
    nop
    jr nc, @+$33

    ld bc, $3001
    ld sp, $0101
    ld e, $1f
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc d
    inc d
    inc d
    inc d
    ld [bc], a
    inc bc
    dec b
    cpl
    ld [de], a
    inc de
    inc a
    ld a, [hl-]
    ld bc, $0101
    ld bc, $0101
    ld bc, $2f01
    dec d
    ld [bc], a
    inc bc
    ld a, [hl-]
    dec sp
    ld [de], a
    inc de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    dec l
    ld l, $00
    nop
    dec a
    ld a, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $4001
    ld b, c
    nop
    nop
    jr nz, jr_037_5727

    ld [hl-], a
    daa
    ld b, d
    ld b, e
    ld [hl], $2f
    ld e, $1f
    inc a
    ld a, [hl-]
    nop
    nop
    nop
    nop
    daa
    inc sp
    nop
    nop
    cpl
    add hl, sp
    ld bc, $3a01
    dec sp
    ld bc, $0001
    nop
    ld c, b
    ld c, c
    nop
    nop
    ld e, b

jr_037_5727:
    ld e, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $4901
    ld c, e
    nop
    nop
    ld e, d
    ld e, e
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld h, $27
    ld bc, $4601
    ld b, a
    ld bc, $0101
    ld bc, $0101
    ld bc, $2701
    add hl, hl
    ld bc, $2f01
    add hl, sp
    ld bc, $2401
    ld c, d
    nop
    nop
    inc [hl]
    inc l
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $5150
    ld bc, $5001
    ld d, c
    ld bc, $0101
    ld bc, $5756
    ld bc, $3c01
    ld a, [hl-]
    ld bc, $0201
    inc bc
    ld bc, $1201
    inc de
    cpl
    dec d
    ld bc, $3a01
    dec sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $3332
    ld [hl-], a
    inc sp
    jr nc, jr_037_57d7

    jr nc, @+$33

    jr nc, jr_037_57db

    ld c, $0f
    ld e, $1f
    ld e, $1f
    ld d, b
    ld d, c
    ld bc, $5001
    ld d, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, b
    ld b, c
    ld bc, $2001
    ld hl, $0101
    ld b, d
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    inc c

jr_037_57d7:
    dec c
    ld bc, $1c01

jr_037_57db:
    dec e
    ld bc, $1e01
    rra
    nop
    nop
    dec l
    ld l, $06
    rlca
    dec a
    ld a, $16
    rla
    ld bc, $1e01
    rra
    ld bc, $2701
    daa
    daa
    daa
    cpl
    cpl
    cpl
    cpl
    cpl
    ld [hl+], a
    inc hl
    cpl
    cpl
    ld d, d
    ld d, e
    cpl
    cpl
    dec h
    dec [hl]
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    cpl
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld [bc], a
    inc bc
    ld h, $27
    ld [de], a
    inc de
    ld [hl], $2f
    ld bc, $3601
    cpl
    ld bc, $3601
    cpl
    daa
    add hl, hl
    ld [bc], a
    inc bc
    cpl
    add hl, sp
    ld [de], a
    inc de
    cpl
    add hl, sp
    ld bc, $2f01
    add hl, sp
    ld bc, $0201
    inc bc
    ld [hl], $2f
    ld [de], a
    inc de
    ld [hl], $2f
    ld bc, $0501
    cpl
    ld bc, $3c01
    ld a, [hl-]
    cpl
    add hl, sp
    ld [bc], a
    inc bc
    cpl
    add hl, sp
    ld [de], a
    inc de
    cpl
    dec d
    ld bc, $3a01
    dec sp
    ld bc, $4c01
    ld c, l
    ld bc, $5c01
    ld e, l
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2727
    daa
    inc sp
    ld a, [hl-]
    ld a, [hl-]
    ld [hl], $39
    ld bc, $3601
    add hl, sp
    ld bc, $3601
    add hl, sp
    ld bc, $3601
    add hl, sp
    ld bc, $3601
    add hl, sp
    ld bc, $3601
    add hl, sp
    ld bc, $3601
    add hl, sp
    scf
    jr z, @+$39

    jr z, @+$3a

    ccf
    jr c, jr_037_58d6

    ld bc, $014f
    ld bc, $0101
    ld bc, $0001
    nop
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $3701
    jr z, jr_037_58da

    jr z, @+$3a

    ld c, [hl]
    jr c, jr_037_58e7

    ld bc, $0101
    ld c, a
    ld bc, $0101
    ld bc, $2837
    scf
    jr z, @+$3a

    ld c, [hl]
    jr c, jr_037_5906

    ld bc, $0101
    ld bc, $0101
    ld bc, $2a01
    dec hl
    ld a, [hl+]
    dec hl
    ld d, h
    ld d, l
    ld e, [hl]
    ld e, a
    ld d, h
    ld d, l
    ld a, [hl+]
    dec hl
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld [hl-], a
    daa
    daa
    inc sp
    ld [hl], $2f

jr_037_58d6:
    cpl
    add hl, sp
    inc a
    ld a, [hl-]

jr_037_58da:
    ld a, [hl-]
    dec sp
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    ld bc, $1201

jr_037_58e7:
    inc de
    ld bc, $0101
    ld bc, $0101
    ld bc, $2a01
    dec hl
    ld a, [hl+]
    dec hl
    ld e, [hl]
    ld e, a
    ld d, h
    ld d, l
    ld bc, $5401
    ld d, l
    ld bc, $5e01
    ld e, a
    ld a, [hl+]
    dec hl
    ld bc, $5e01
    ld e, a

jr_037_5906:
    ld bc, $2a01
    dec hl
    ld bc, $5e01
    ld e, a
    ld bc, $0101
    ld bc, $2b2a
    ld bc, $5e01
    ld e, a
    ld bc, $2a01
    dec hl
    ld bc, $5e01
    ld e, a
    nop
    nop
    inc h
    ld c, d
    nop
    nop
    inc [hl]
    inc l
    ld a, [hl+]
    dec hl
    ld a, [hl+]
    dec hl
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    sub c
    sub c
    rlca
    sbc l
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    sbc l
    nop
    nop
    rlca
    rlca
    nop
    sub c
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    sub l
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    sub e
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    sbc l
    rlca
    nop
    nop
    nop
    nop
    halt
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    sub c
    sub c
    halt
    nop
    nop
    rlca
    rlca
    nop
    sub e
    rlca
    rlca
    nop
    sub h
    rlca
    sub l
    sub a
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    ld [hl], d
    nop
    nop
    nop
    sub b
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    sbc l
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    cpl
    rst $38
    dec b
    inc bc
    inc bc
    inc b
    inc b
    ld [$4309], sp
    add hl, bc
    ld a, [bc]
    push bc
    add h
    and l
    adc a
    ld b, e
    ret nc

    db $10
    and l
    adc a
    ld b, l
    rst $38
    nop
    ld bc, $ff00
    adc b
    add a
    ld [bc], a
    rst $38
    cp a
    add b
    ld c, e
    rst $38
    cp a
    xor a
    adc a
    ld h, e
    inc bc
    rrca
    rrca
    rla
    jr jr_037_5b73

    cpl
    jr nc, jr_037_5b4c

jr_037_5b31:
    daa
    jr c, @+$57

    nop
    xor d
    nop
    push af
    ldh a, [$ea]
    jr jr_037_5b31

    inc c
    or $0c
    push af
    inc c
    and $1c
    rst $38
    rst $38
    ret nz

    add b
    cp a
    or b
    xor b
    or a
    cp b

jr_037_5b4c:
    add a
    ld b, l
    and a
    sbc b
    push bc
    rst $08
    ld bc, $ff00
    add a
    pop hl
    ld [bc], a
    rst $38
    rst $38
    add c
    ld [hl+], a
    rst $38
    ld bc, $55aa
    and h
    add c
    ld [bc], a
    nop
    xor d
    nop
    and l
    xor a
    nop
    add hl, de
    xor b
    xor a
    ld [hl], c
    rlca
    rrca
    rlca
    jr jr_037_5b91

    daa

jr_037_5b73:
    jr c, jr_037_5b9e

    ld [hl], a
    ld b, e
    ld d, e
    ld l, [hl]
    ld bc, $6f51
    xor a
    adc a
    sub h
    nop
    nop
    add $00
    ld c, [hl]
    nop
    nop
    add [hl]
    ld a, [$8783]
    dec c
    adc b
    ld [hl], a
    ld h, [hl]
    ld de, $1177

jr_037_5b91:
    rst $38
    rst $38
    ld a, a
    ld a, a
    ret nz

    add b
    ret nz

    sbc a
    ld b, l
    rst $08
    sub b
    inc bc
    ret nz

jr_037_5b9e:
    add b
    rst $38
    ret nz

    ld b, a

jr_037_5ba2:
    and a
    sbc b
    rlca
    cp b
    add a
    cp b
    or a
    xor a
    or b
    ret nz

    add b
    ld d, b
    rst $38
    cp a
    ld c, [hl]
    db $fd
    rst $38
    rra
    ld h, b
    ccf
    sub h
    rra
    ld a, [hl]
    cpl
    cp l
    inc sp
    ld d, a
    ld [de], a
    or a
    inc de

jr_037_5bc0:
    ld l, [hl]
    ld h, $ba
    jr c, jr_037_5bc9

    db $fc
    jr z, jr_037_5bc0

    ld a, h

jr_037_5bc9:
    db $f4
    cp h
    call z, Call_037_48e8
    add sp, -$38
    ld [hl], h
    ld h, h
    inc e
    inc e
    ld c, a
    and a
    sbc b
    rra
    rst $38
    jr c, jr_037_5ba2

    ld b, h
    cp e
    cp d
    cp e
    cp e
    push bc
    add c
    cp a
    push bc
    ld b, a
    cp $b9
    ld a, [hl]
    rst $38
    push hl
    rst $38
    rlc e
    sub h
    ld c, $20
    ld e, h
    ld bc, $8338
    ld h, [hl]
    ld de, $ff00
    ld c, a
    push hl
    add hl, de
    ld bc, $0055
    xor l
    add c
    ld c, c
    ld d, b
    ld l, a
    ld [bc], a
    ld e, a
    ld h, b
    ld b, b
    ld [hl+], a
    ld a, a
    ld [bc], a
    ld a, [hl-]
    cp $2a
    ld b, h
    xor $3a
    nop
    ld a, [de]
    and [hl]
    adc a
    cpl
    add b
    cpl
    ld bc, $ff43
    db $fd
    ld bc, $01fd
    ld b, [hl]
    ld bc, $01ff
    ld bc, $a601
    nop
    or l
    nop
    ld d, l
    adc b
    add a
    ld bc, $0000
    ret


    nop
    ld c, c
    add h
    nop
    xor l
    ld [bc], a
    cp a
    rst $38
    ccf
    ld a, [hl+]
    rst $38
    or b
    adc a
    rra
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ei
    cp $ff
    db $fc
    di
    cp $db
    rst $38
    rlca
    rst $38
    dec de
    ld sp, hl
    ld l, a
    db $e3
    cp a
    adc e
    ei
    cpl
    rst $38
    cp a
    pop af
    cp a
    rst $30
    pop af
    ld b, e
    rst $38
    nop
    dec d
    xor d
    ld d, l
    ld d, l
    xor e
    xor [hl]
    ld d, [hl]
    ld e, e
    cp c
    dec l
    db $e3
    cpl
    rst $38
    rst $38
    rlca
    ld sp, hl
    add hl, de
    db $ed
    ld h, e
    cp a
    sbc a
    rst $18
    ld sp, $f122

jr_037_5c79:
    dec b
    ld de, $1131
    db $fd
    rst $38
    inc bc
    jp $2402


    ld [$a5a7], sp
    and a
    db $fd
    rst $20
    cp l
    rst $38
    push af
    rrca
    ld c, a
    rst $38
    nop
    ld [bc], a
    rra
    rra
    ldh [rNR44], a
    jr nz, @-$1e

    jr nz, jr_037_5c79

    cp a
    ld h, b
    ld a, a
    cpl
    ld a, c
    ld l, e
    cp a
    xor a
    rla
    add sp, $3f
    ret nz

    ld e, a
    and b
    rst $38
    nop
    ld l, a
    or b
    rst $08
    jr nz, @+$81

    add b
    nop
    rst $38
    db $fd
    inc bc
    cp $01
    ld a, [$f20d]
    add hl, bc
    and e
    sub l
    inc b
    pop de
    cpl
    dec bc
    rst $38
    add b
    and h
    ld [bc], a
    ld a, [hl+]
    ld [$ff80], sp
    adc b
    rst $30
    and $91
    rst $30
    sub c
    rst $38
    xor b
    adc a
    ld [bc], a
    adc c
    ld [hl], a
    ld h, a
    add h
    ld bc, $af2b
    ld [bc], a
    jr nz, jr_037_5cdd

    rst $38
    rst $38

jr_037_5cdd:
    rst $38
    adc h
    nop
    rrca
    adc d
    ld [bc], a
    ld b, [hl]
    add h
    ld bc, $ab20
    ld bc, $0340
    ld sp, hl
    dec c
    inc bc
    ld bc, $02a5
    or b
    inc c
    cp h
    rst $20
    and a
    db $e4
    cp h
    db $fc
    and a
    rst $38
    xor a
    ldh a, [$fb]
    rst $38
    rst $38
    ld b, e
    rst $38
    ld sp, hl
    ld c, b
    rst $38
    reti


    ld bc, $f117
    ld b, [hl]
    rst $10
    ld sp, $3f08
    db $db
    add hl, sp
    ld l, a
    db $e3
    sbc a
    db $eb
    rst $38
    pop af
    ld b, l
    rst $30
    sub c
    inc d
    or $96
    ld a, [$e8b9]
    and a
    rst $38
    rst $38
    scf
    rla
    dec sp
    add hl, de
    ld l, c
    ld h, a
    add c
    cp a
    add c
    ld a, a
    ld bc, $01ff
    and l
    nop
    dec de
    dec b
    cp a
    rst $38
    rst $38
    cp $85
    rst $00
    ld b, h

jr_037_5d3a:
    cp a
    ret nz

    ld [bc], a
    rst $38
    ld a, a
    rst $38
    add h
    sub l
    ld [bc], a
    ccf
    pop hl
    pop hl
    ld b, h
    rst $38
    ld bc, $ff11
    cp $fc
    ld hl, sp+$05
    ld b, $06
    inc b
    inc b
    rlca
    db $fc
    rlca
    rst $38
    db $f4
    rst $38
    or $ff
    push af
    and l
    ld bc, $4530
    ei
    ld bc, $01a3
    inc a
    ldh [$2f], a
    rst $38
    cp $ff
    db $fd
    ld b, d
    cp c
    sub a
    ld h, b
    db $fc
    inc bc
    jr jr_037_5d3a

    ld l, [hl]
    sub c
    nop
    rst $38
    xor d
    ld d, l
    xor e
    ld d, a
    db $fc
    inc c
    ldh a, [rNR13]
    db $e3
    cpl
    push hl
    inc l
    adc $55
    rst $08
    ld d, e
    xor d
    ld d, l
    ld [$3fd5], a
    jr nc, jr_037_5dfd

    add sp, -$49
    sub h
    rst $10
    or h
    di
    ld a, [$6a9b]
    ld b, e
    db $10
    rra
    ld [hl+], a
    rra
    nop
    db $10
    add a
    nop
    ld a, b
    rla
    dec c
    ld hl, sp+$0a
    ld hl, sp-$03
    ld hl, sp-$06
    ld [$0cf5], sp
    db $f4
    inc c
    push af
    inc c
    db $e4
    inc e
    rst $38
    inc a
    jp $df42


    add c
    jp $8381


    add e
    nop
    add e
    jp $6102


    ld b, $78
    add a
    add h
    rst $30
    ld [bc], a
    add a
    ld [bc], a
    add e
    add e
    dec bc
    add e
    ld a, [hl]
    rst $38
    cp $f0
    ldh a, [$90]
    sub b
    sbc a
    sbc a
    sbc b
    ldh a, [rSCX]
    sub a
    ld hl, sp+$03
    cp a
    rst $38
    or b
    ldh [$a5], a
    adc a
    nop
    add hl, bc
    ld b, h
    rrca
    ld sp, hl
    and e
    adc a
    ld h, c
    dec e
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    jr nz, jr_037_5e32

    inc hl
    ccf
    inc h
    ccf
    jr c, jr_037_5e38

    ld d, l
    nop
    xor d
    add b

jr_037_5dfd:
    ld [hl], l
    ldh [rNR30], a
    ldh a, [$0d]
    ld hl, sp-$76
    ld hl, sp+$4d
    ld hl, sp+$3a
    ld hl, sp+$43
    rst $38
    cp a
    dec bc
    sbc a
    add b
    and b
    sbc a
    ret nz

    cp a
    add a
    cp $8e
    ld sp, hl
    sbc b
    rst $30
    ld b, e
    rst $38
    db $fd
    rla
    ld a, l
    pop bc
    ld h, c
    cp a
    ld bc, $19ff
    rst $30
    inc bc
    rst $38
    ld b, l
    rst $38
    cp $eb
    or l
    rst $18
    ld e, d
    adc a
    cp l
    rst $18
    ld c, [hl]

jr_037_5e32:
    cp a
    sub l
    ld sp, hl
    jp $b203


jr_037_5e38:
    inc c
    ei
    xor a
    rst $10
    ld e, a
    ei
    xor c
    ld e, l
    ei
    adc e
    push de
    ld d, c
    xor a
    adc d
    inc h
    rst $38
    dec bc
    sub l
    jp $83ad


    sbc l
    jp $81bd


    add c
    ei
    add c
    rst $30

jr_037_5e55:
    pop de
    ld bc, $1711
    rst $08
    ld d, c
    rst $20
    add hl, hl
    db $e3
    inc l
    ldh a, [rNR13]
    db $ec
    inc e
    di
    rrca
    xor b
    ld d, a
    xor d
    ld d, l
    dec hl
    jp c, $ae5d

    push af
    or $0b
    call z, $8fa3
    inc bc
    ld a, [bc]
    push af
    xor d
    ld d, l
    ld b, h
    cp a
    xor a
    ld [bc], a
    and b
    and b
    cp a
    add e
    add e
    inc bc
    sbc a
    sbc a
    add b
    add b
    ld b, h
    db $fd
    rst $30
    inc d
    rlca
    push af
    rst $38
    db $fd
    rlca
    rlca
    db $fd
    rst $38
    ld sp, hl
    ld bc, $0f01
    rrca
    rst $30
    jr @+$19

    jr jr_037_5eac

    rst $38
    sub b
    ld a, a
    ld b, e
    ld [hl], b
    rra
    ld bc, $fff0
    and a
    adc a
    ld bc, $fb0c
    ld b, e
    dec bc

jr_037_5eac:
    ld hl, sp+$09
    rrca
    rst $38
    ldh [$f0], a
    rst $38
    cp a
    ldh [$c0], a
    add b
    ret nz

    ld b, a
    ret nz

    add b
    xor a
    adc a
    dec e
    ld l, h
    cpl
    and e
    inc hl
    ld h, b
    jr nc, jr_037_5e55

    inc a
    ld d, b
    inc sp
    xor h
    inc e
    ld d, e
    rrca
    xor d
    nop
    ld l, b
    add sp, -$78
    adc b
    ld [$1018], sp
    ld a, b
    db $10
    sbc b
    ld h, b
    ld [hl], b
    add b
    ldh [$83], a
    ld [bc], a
    ld b, c
    ldh [$28], a
    inc e
    rst $00
    rst $10
    xor [hl]
    dec l
    rst $18
    sbc e
    rst $38
    push af
    rst $38
    xor [hl]
    ei
    rst $10
    push af
    rst $38
    rst $38
    add hl, hl
    ld d, a
    ld d, d
    adc c
    xor c
    ld d, a
    inc c
    cp e
    rst $00
    rst $38
    cp e
    rst $38
    ld d, l
    rst $38
    sbc a
    rst $38
    ldh [$ea], a
    or b
    xor a
    and b
    xor d
    cp a
    and b
    cp a
    and h
    inc bc
    rrc c
    ld sp, hl
    rst $38
    rlca
    and a
    dec b
    rst $30
    dec b
    rla
    db $fd
    rlca
    and l
    adc a
    sbc a
    nop
    ld d, b
    rrca
    rst $38
    rst $38
    add b
    ld a, a
    rst $38
    rst $38
    sub b
    rst $38
    rst $38
    sbc a
    cp a
    add b
    sbc a
    add b
    rst $38
    ld a, a
    add l
    inc bc
    ld sp, $0900
    ld b, e
    rst $38
    ld sp, hl
    inc b
    rlca
    db $fd
    inc bc
    rst $38
    cp $c9
    ld [bc], a
    ld c, l
    push bc
    ld [bc], a
    ld b, l
    ld c, e
    ret nz

    add b
    add e
    inc b
    ld h, b
    xor a
    adc a
    add a
    inc b
    ld h, h
    ld b, e
    sub a
    ld hl, sp+$06
    sbc a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    add hl, bc
    ld c, c
    rrca
    ld sp, hl
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $ed
    adc a
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $3305
    inc sp
    inc sp
    dec d
    ld bc, $0101
    dec d
    ld bc, $0101
    dec d
    ld bc, $0101
    inc sp
    inc sp
    inc sp
    inc sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc sp
    inc sp
    inc sp
    ld b, $01
    ld bc, $1601
    ld bc, $0101
    ld d, $01
    ld bc, $1601
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $1111
    ld de, $0211
    inc bc
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc c
    add hl, de
    ld a, [de]
    inc l
    inc e
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    dec c
    dec e
    rlca
    ld [$0d1d], sp
    rla
    jr @+$0f

    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    rlca
    ld [$1d0d], sp
    rla
    jr jr_037_601c

    dec c
    ld c, $0f
    db $10
    db $10
    ld e, $1f
    ld [de], a
    ld [de], a
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    ld [bc], a
    inc bc
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec c
    dec e
    dec c
    dec e

jr_037_601c:
    dec e
    dec c
    dec e
    dec c
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0115
    ld bc, $1501
    ld bc, $0101
    dec d
    ld bc, $0101
    dec d
    ld bc, $0101
    ld bc, $0101
    ld d, $01
    ld bc, $1601
    ld bc, $0101
    ld d, $01
    ld bc, $1601
    dec d
    ld bc, $0101
    ld [hl-], a
    ld de, $1111
    jr nz, jr_037_607a

    db $10
    db $10
    jr nc, jr_037_6080

    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_607a:
    nop
    nop
    nop
    nop
    nop
    nop

jr_037_6080:
    ld bc, $0101
    ld bc, $0101
    ld bc, $1501
    ld bc, $0101
    dec d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $1601
    ld bc, $0101
    ld d, $01
    ld bc, $1601
    ld de, $1111
    ld [hl+], a
    db $10
    db $10
    db $10
    ld hl, $1212
    ld [de], a
    ld sp, $0633
    inc b
    inc b
    ld bc, $2316
    inc hl
    ld bc, $3326
    inc sp
    ld bc, $0101
    ld bc, $3305
    inc sp
    inc sp
    dec d
    ld bc, $0101
    dec h
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop

Jump_037_60d3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    inc sp
    ld b, $11
    ld de, $2211
    db $10
    db $10
    db $10
    ld hl, $1212
    ld [de], a
    ld sp, $2f2e
    ld b, [hl]
    ld b, a
    cpl
    ld l, $56
    ld d, a
    ld l, $2f
    add e
    add h
    cpl
    ld l, $85
    add [hl]
    ld bc, $0101
    ld bc, $1111
    ld de, $0211
    inc bc
    ld c, $0f
    ld [de], a
    ld [de], a
    ld e, $1f
    daa
    jr z, jr_037_6117

    inc b
    scf
    jr c, jr_037_611b

jr_037_6117:
    inc b
    inc b
    inc b
    inc b

jr_037_611b:
    inc b
    inc b
    inc b
    inc b
    inc b
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    inc h
    inc h
    inc h
    inc h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    dec b
    inc sp
    inc sp
    inc sp
    ld [hl-], a
    ld de, $1111
    jr nz, jr_037_614a

    db $10
    db $10
    jr nc, jr_037_6150

    ld [de], a
    ld [de], a
    db $10
    db $10
    db $10
    ld hl, $1212
    ld [de], a
    ld sp, $0404

jr_037_614a:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_037_6150:
    dec b
    inc sp
    inc sp
    inc sp
    dec d
    ld bc, $1111
    dec d
    ld d, $10
    db $10
    dec d
    ld d, $12
    ld [de], a
    inc sp
    inc sp
    inc sp
    ld b, $11
    ld de, $1601
    db $10
    db $10
    dec d
    ld d, $12
    ld [de], a
    dec d
    ld d, $15
    ld d, $0d
    dec e
    dec d
    ld d, $1d
    dec c
    dec d
    ld d, $0d
    dec e
    dec d
    ld d, $1d
    dec c
    dec c
    dec e
    dec d
    ld d, $1d
    dec c
    dec d
    ld d, $0d
    dec e
    dec d
    ld d, $1d
    dec c
    dec d
    ld d, $15
    ld d, $0d
    dec e
    dec d
    ld d, $1d
    dec c
    dec d
    ld h, $33
    inc sp
    ld [hl-], a
    ld de, $1111
    dec c
    dec e
    dec d
    ld d, $1d
    dec c
    dec d
    ld d, $33
    inc sp
    dec h
    ld d, $11
    ld de, $2211
    inc hl
    inc hl
    inc hl
    inc hl
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
    inc b
    inc b
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    inc sp
    inc sp
    inc sp
    inc sp
    ld de, $1111
    ld de, $3333
    inc sp
    inc sp
    ld de, $1111
    ld de, $0302
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld l, $2f
    ld l, $2f
    cpl
    ld l, $2f
    ld l, $2e
    cpl
    ld l, $2f
    cpl
    ld l, $2f
    ld l, $2e
    cpl
    ld l, $2f
    cpl
    ld l, $2f
    ld l, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $5f5e
    ld e, [hl]
    ld e, a
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    add hl, de
    ld b, b
    ld b, c
    inc e
    add hl, de
    ld d, b
    ld d, c
    inc e
    add hl, de
    inc l
    ld a, [de]
    inc e
    add hl, de
    inc l
    inc l
    inc e
    dec de
    ccf
    ccf
    ccf
    cpl
    ld l, $2f
    ld l, $2e
    cpl
    ld l, $2f
    cpl
    ld l, $2f
    ld l, $14
    add d
    add d
    dec [hl]
    dec bc
    add b
    add c
    dec bc
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    add hl, de
    ld b, b
    ld b, c
    inc e
    add hl, de
    ld d, b
    ld d, c
    inc e
    inc d
    add d
    add d
    dec [hl]
    dec bc
    add b
    add c
    dec bc
    ld l, $2f
    ld l, $2f
    cpl
    ld l, $2f
    ld l, $24
    inc h
    inc h
    inc h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld [bc], a
    inc bc
    inc de
    ld a, $12
    ld [de], a
    ld [hl], $2b
    ld c, b
    ld c, c
    ld [hl], $2b
    ld e, b
    ld e, c
    dec sp
    inc a
    ld [bc], a
    inc bc
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld d, h
    ld d, l
    dec c
    dec e
    ld b, d
    ld b, e
    dec e
    dec c
    rla
    jr jr_037_62af

    cpl
    ld l, $2f
    cpl
    ld l, $2f
    ld l, $2e
    cpl
    daa
    jr z, jr_037_62bc

    ld l, $37
    jr c, jr_037_629a

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, de
    inc l
    ld b, h
    ld b, l
    inc d
    add d

jr_037_629a:
    add d
    add d
    dec sp
    inc a
    dec bc
    dec bc
    ld a, [bc]
    inc c
    dec c
    dec e
    inc l
    inc e
    dec e
    dec c
    add d
    dec [hl]
    dec c
    dec e
    dec sp
    inc a
    dec e

jr_037_62af:
    dec c
    ld [bc], a
    inc bc
    db $10
    db $10
    dec l
    dec a
    ld [de], a
    ld [de], a
    ld d, d
    ld d, e
    dec c
    dec e

jr_037_62bc:
    ld e, h
    ld e, l
    dec e
    dec c
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    dec c
    dec e
    ld c, b
    ld c, c
    dec e
    dec c
    ld e, b
    ld e, c
    dec c
    dec e
    ld b, [hl]
    ld b, a
    dec e
    dec c
    ld d, [hl]
    ld d, a
    dec c
    dec e
    add e
    add h
    dec e
    dec c
    add l
    add [hl]
    ld [bc], a
    inc bc
    db $10
    db $10
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc c
    inc d
    ld a, [de]
    add d
    dec [hl]
    dec sp
    inc a
    dec sp
    inc a
    db $10
    db $10
    ld [bc], a
    inc bc
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    dec c
    dec e
    ld b, [hl]
    ld b, a
    dec e
    dec c
    ld d, [hl]
    ld d, a
    dec c
    dec e
    add e
    add h
    dec e
    dec c
    add l
    add [hl]
    dec c
    dec e
    dec c
    dec e
    dec e
    dec c
    dec e
    dec c
    ld l, $2f
    ld l, $2f
    cpl
    ld l, $2f
    ld l, $2e
    cpl
    add hl, hl
    ld a, [hl+]
    cpl
    ld l, $39
    ld a, [hl-]
    ld bc, $0101
    ld bc, $1111
    ld de, $0211
    inc bc
    ld c, $0f
    ld [de], a
    ld [de], a
    ld e, $1f
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld e, d
    ld e, e
    ld e, d
    ld e, e
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld c, [hl]
    ld c, [hl]
    ld e, d
    ld e, e
    ld c, h
    ld c, l
    ld c, h
    ld c, l
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld e, a
    ld c, d
    ld c, e
    ld c, d
    ld c, e
    dec b
    inc sp
    inc sp
    ld b, $15
    ld bc, $1601
    dec h
    ld bc, $1601
    ld bc, $0101
    ld d, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    sbc h
    nop
    sub b
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    sbc h
    nop
    sub b
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    ld a, d
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    rlca
    rlca
    sbc l
    sbc l
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rlca
    sub c
    rlca
    rlca
    nop
    rlca
    nop
    nop
    nop
    ld [hl], d
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    sub e
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    sbc l
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    dec d
    dec d
    dec d
    nop
    dec d
    dec d
    nop
    nop
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    dec d
    nop
    dec d
    nop
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    nop
    dec d
    nop
    dec d
    nop
    nop
    ld [de], a
    dec d
    dec d
    nop
    dec d
    dec d
    nop
    nop
    dec d
    dec d
    nop
    dec d
    dec d
    dec d
    nop
    nop
    nop
    rlca
    dec d
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    dec d
    nop
    nop
    nop
    nop
    dec d
    rlca
    and c
    rlca
    and c
    rlca
    and l
    rlca
    rlca
    and e
    and e
    rlca
    rlca
    and h
    rlca
    rlca
    rlca
    and e
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld l, a
    nop
    xor d
    xor [hl]
    add c
    rlca
    ld a, a
    ld a, a
    ret nz

    add b
    cp a
    add b
    and b
    sbc a
    ld b, a
    and b
    sub b
    ld bc, $ffff
    ld h, c
    rla
    rst $38
    nop
    ld h, a
    sbc b
    ld b, e
    and h
    ld bc, $00c2
    add c
    ld bc, $ffc2
    rst $38
    ld [bc], a
    ld [bc], a
    db $fc
    inc b
    cp $08
    pop af
    db $10
    db $f4
    inc e
    ld b, e
    rst $30
    rra
    db $10
    cp $fe
    ld h, c
    ld h, c
    dec e
    dec de
    dec b
    rlca
    adc a
    inc bc
    ld a, a
    inc bc
    cpl
    inc de
    rst $28
    db $d3
    add b
    ld [hl+], a
    rst $38
    inc c
    and b
    rst $38
    and l
    ld a, [$bfff]
    ldh [$bf], a
    push af
    ld [$55aa], a
    nop
    ld [hl+], a
    rst $38
    add hl, bc
    ld [hl], b
    rst $28
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld d, l
    xor d
    add l
    adc a
    dec bc

jr_037_65d3:
    jr z, jr_037_65d3

    xor h
    ld a, e
    rst $38
    rst $28
    dec sp
    db $ec
    ld a, a
    cp a
    xor d
    ld d, l
    and e
    xor a
    rlca
    push hl
    ccf
    db $fd
    rst $20
    rst $38
    db $fd
    rst $30
    dec c
    jp $0a98


    add b
    rst $38
    cp a
    rst $38
    or a
    di
    cp l
    rst $28
    xor l
    rst $38
    or d
    ld b, e
    rst $38
    cp a
    nop
    ret nz

    and e
    adc a
    inc bc
    db $dd
    rst $08
    push af
    cp a
    and a
    adc a
    rra
    sbc [hl]
    db $dd
    call c, $ac9d
    db $dd
    jp c, $dbcd

    ret


    rst $38
    ret


    xor e
    db $dd
    sbc $9d
    db $dd
    cp e
    set 7, c
    call $d7fb
    ei
    rst $18
    di
    sub a
    di
    rst $10
    cp e
    db $dd
    cp e
    ld h, e
    ld [bc], a
    rra
    rra
    jr nz, jr_037_6673

    jr nz, jr_037_6656

    ld bc, $2020
    xor a
    adc a
    rrca
    ldh [$e0], a
    cp b
    cp b
    xor $ae
    rst $38
    ei
    jp z, $df8a

    adc a
    adc h
    adc b
    db $fd
    add sp, $65
    ld bc, $8080
    add e
    sub a
    db $10
    db $fc
    xor h
    rst $38
    ei
    xor a
    sbc a
    cp b
    adc b
    cp h
    adc e

jr_037_6656:
    cp b
    adc h
    cp h
    adc e
    cp a
    adc a
    cp a
    add e
    nop
    ld h, b
    ld [$03ff], sp
    ld bc, $55ab
    ld bc, $a9ab
    ld d, a
    add e
    nop
    sbc h
    dec c
    rst $38
    rst $38
    ld [hl], a
    cp a
    di

jr_037_6673:
    rst $18
    ld [hl], b
    sbc a
    ld a, h
    adc a
    ld a, a
    add e
    ld a, a
    add b
    add e
    adc a
    jr jr_037_66ef

    ld d, e
    rst $28
    db $d3
    db $ed
    rst $10
    add hl, hl
    rst $18
    dec a
    db $d3
    db $fd
    db $e3
    db $fd
    inc bc
    rst $38
    rst $38
    cp l
    ei
    add c
    rst $38
    cp l
    ei
    cp l
    jp $8381


    nop
    ld [hl], c
    ld [bc], a
    rst $38
    ld a, b
    ld [hl], b
    ld c, c
    add c
    ld a, a
    and l
    adc a
    ld e, $a8
    rst $18
    cp e
    call z, $ddaa
    cp c
    adc $fb
    db $ec
    cp b
    rst $38
    cp [hl]
    rst $28
    xor d
    rst $38
    pop de
    rst $38
    db $f4
    rst $38
    adc l
    rst $38
    cp a
    rst $08
    xor c
    rst $18
    cp c
    rst $08
    xor c
    rst $18
    adc c
    jp $a300


    inc b
    rst $38
    adc a
    rst $38
    rst $38
    ldh a, [rSCX]
    ret nz

    cp a
    ld [bc], a
    ld hl, sp-$51
    rst $38
    xor h
    adc a
    inc e
    dec a
    rst $10
    rst $38
    rst $38
    ld a, l
    ld [bc], a
    cp $01
    ccf
    ret nz

    rst $30
    nop
    db $eb
    inc b
    rst $10
    ld [$10ef], sp
    cp $00
    rst $38
    ld a, [hl]
    rst $38
    cp l

jr_037_66ef:
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    add $81
    inc b
    ccf
    jr nz, jr_037_6739

    cpl
    jr c, jr_037_6740

    cpl
    ccf
    ld [bc], a
    jr z, jr_037_6741

    ccf
    ld h, e
    xor a
    adc a
    ld [$b8fc], sp
    xor a
    xor [hl]
    rst $38
    ei
    adc [hl]
    ld a, [$448f]
    rst $38
    add b
    inc b
    rst $38
    rst $38
    ld [$ef8f], a
    ld b, e
    adc a
    jp hl


    rlca
    rst $28
    ld sp, hl
    cp a
    jp hl


    xor a
    ld sp, hl
    rst $38
    rst $38
    ld b, [hl]
    rst $38
    nop
    adc c
    add d
    ld c, $07
    rrca
    rla
    jr jr_037_6760

    jr nz, @+$64

    ld b, b
    ld l, a
    ld b, b
    ld a, d
    ld b, l
    ldh [rIE], a

jr_037_6739:
    adc $a4
    and d
    add e
    nop
    ld c, $01

jr_037_6740:
    rst $38

jr_037_6741:
    nop
    add e
    nop
    ld a, [hl]
    dec c
    nop
    rst $38
    ld [$edf0], a
    jr jr_037_675b

    inc b
    and a
    ld [bc], a
    or $02
    xor a
    ld d, d
    and e
    sbc a
    ld [hl], b
    inc b
    rst $38
    nop
    nop

jr_037_675b:
    ld d, l
    xor d
    xor c
    add c
    add e

jr_037_6760:
    nop
    and b
    rlca
    and a
    db $fd
    cp a
    push hl
    and l
    push hl
    cp a
    db $fd
    add a
    nop
    xor h
    dec b
    push hl
    ccf
    db $fd
    daa
    dec h
    daa
    ld b, h
    db $fd
    rst $38
    ld b, $03
    cp a
    rst $38
    jp $bd81


    jp $0185


    ld h, [hl]
    inc bc
    cp e
    call z, Call_037_7fff
    xor a
    adc a
    ldh [$31], a
    ld [hl], e
    ld [hl], e
    ld c, [hl]
    ld c, [hl]
    ld h, $42
    add hl, sp
    ld h, $4b
    ld a, c
    ld h, $31
    db $76
    ld d, e
    ld e, h
    ld a, a
    ld e, h
    ld e, h
    or h
    and $67
    ld b, a
    ld l, c
    add hl, de
    call nc, $aa02
    ld d, $5d
    adc a
    ld a, d
    adc $1e
    rra
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld e, $1f
    ld [hl], $22
    ld l, $2f
    dec l
    ld l, $2a
    cpl
    ld hl, sp-$08
    ld b, e
    ld b, b
    ret nz

    add hl, de
    ld hl, sp-$08
    ld d, h
    db $ec
    ld a, h
    db $f4
    cp h
    ld [hl], h
    ld a, h
    db $f4
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$61
    sbc $e7
    ei
    push de
    or $fd
    adc a
    db $fd
    cp a
    rst $08
    ld b, a
    rrca
    rst $38
    rlca
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    rst $00
    ld a, a
    daa
    add b
    nop
    rst $38
    add $80
    ld b, a
    ld bc, $0903
    rst $38
    rst $38
    ld a, l
    inc bc
    dec a
    inc bc
    dec e
    inc bc
    ld a, a
    rst $18
    ld c, d
    ld a, a
    ret nz

    ld bc, $c0ff

Jump_037_6802:
    and h
    adc a
    ld [bc], a
    and $03
    and $a8
    adc a
    cpl
    rst $38
    call Call_037_7f02
    add e
    nop
    add b
    ld [de], a
    sbc $3f
    cpl
    db $10
    pop hl
    rst $38
    ld a, l
    ld hl, sp-$10
    rrca
    add a
    rst $38
    cp $3f
    pop de
    db $e3
    db $fc
    inc bc
    inc e
    ld [hl+], a
    rst $38
    ld b, $97
    rrca
    rlca
    ld hl, sp-$08
    rst $38
    rst $38
    add h
    ld bc, $883a
    ld [bc], a
    dec e
    add l
    or b
    ld [$42ff], sp
    rst $38
    cp l
    ld b, d
    ld b, d
    nop
    cp l
    ld b, d
    jp $e087


    dec hl
    cp [hl]
    pop hl
    ld h, a
    ld h, d
    ld a, l
    ld a, [hl]
    and d
    db $fc
    ld e, b
    ld c, a
    ld l, a
    ld e, a
    ld a, l
    ld a, a
    inc de
    rra
    dec a
    ld sp, hl
    db $d3
    dec a
    rst $30
    ld c, a
    ld c, h
    and $e6
    cp $ff
    db $fd
    sbc c
    rst $38
    rst $08
    rst $38
    ccf
    cpl
    cpl
    jr nc, jr_037_688b

    ccf
    ld [hl-], a
    ccf
    dec l
    ccf
    db $10
    rra
    jp $e500


    xor a
    adc a
    ld [bc], a
    ld a, a
    ld a, a
    add b
    ld c, h
    add b
    cp a
    inc bc
    rst $38
    rst $38
    nop
    nop
    ld c, e
    rst $38
    nop
    and e
    nop
    jr nz, @+$4d

    db $fd

jr_037_688b:
    inc bc
    ld bc, $ffff
    adc e
    inc bc
    ld [hl+], a
    inc hl
    rst $38
    rlca
    dec e
    inc bc
    dec c
    inc bc
    dec b
    inc bc
    rst $38
    rst $38
    add l
    add l
    nop
    rst $38
    ld b, h
    rst $38
    add c
    ld bc, $abd5
    and l
    add c
    ld [bc], a
    rst $38
    add c
    nop
    ret z

    inc bc
    and l
    ld bc, $aa55
    inc hl
    rst $38
    adc a
    ld bc, $04d0
    nop
    rst $38
    nop
    add b
    nop
    ld b, e
    cp h
    nop
    ld bc, $3e80
    ld b, e
    add b
    nop
    ld b, $ff
    ld l, a
    sub b
    ld b, a
    xor b
    inc bc
    call nz, HeaderCGBFlag
    add d
    dec b
    inc bc
    call nz, $a847
    ld l, a
    sub b
    inc hl
    add c
    nop
    push de
    and e
    add c
    ld b, [hl]
    add c
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    jr z, @+$01

    ld bc, $ff00
    ld c, b
    rst $38
    add b
    nop
    rst $38
    ld b, e
    rst $38
    xor d
    add [hl]
    inc bc
    and h
    res 0, c
    xor c
    sbc a
    ld [bc], a
    xor e
    rst $38
    xor e
    sub d
    rst $38
    ld c, a
    cp a
    add b
    ld c, a
    rst $38
    nop
    ld c, a
    db $fd
    inc bc
    nop
    rst $38
    add h
    db $eb
    ld bc, $f88f
    ld b, e
    cp a
    adc b
    inc bc
    ld [hl], a
    ld hl, sp+$00
    nop
    and a
    adc a
    ld [bc], a
    rst $38
    ld de, $a4ff
    adc a
    adc $04
    xor [hl]
    inc b
    add c
    rst $38
    rst $38
    rst $38
    nop
    rlc h
    cp e
    ld bc, $8e9d
    ld b, e
    sbc e
    adc h
    add hl, bc
    db $eb
    sbc h
    adc e
    db $fc
    ld b, b
    ld a, a
    or b
    ccf
    ld e, a
    rra
    xor b
    inc b
    jr jr_037_6942

jr_037_6942:
    add b
    jp $0180


    rst $38
    rst $38
    and a
    sbc a
    add hl, bc
    ld d, c
    cp a
    add d
    ld a, [hl]
    inc c
    db $fc
    ld hl, sp-$08
    rst $38
    add c
    and a
    inc b
    ld d, [hl]
    inc b
    add c
    rst $38
    add c
    rst $38
    rst $38
    adc d
    inc b
    ld h, l
    add [hl]
    inc b
    ld h, b
    inc b
    adc d
    push af
    adc d
    rst $38
    add b
    ld b, e
    rst $38
    sbc a
    dec b
    di
    sbc a
    rst $30
    sbc b
    push af
    sbc d
    xor a
    adc a
    ld bc, $9a97
    add a
    ld [bc], a
    ld [$8100], sp
    add h
    ld bc, $a95f
    adc a
    ld bc, $017f
    ld b, e
    pop hl
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [de]
    dec de
    ld a, [de]
    dec de
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    jr c, @+$3a

    jr c, @+$3a

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld bc, $1026
    ld de, $0126
    jr nz, @+$23

    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld bc, $3026
    ld sp, $0126
    jr @+$1b

    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld b, b
    ld b, d
    ld b, b
    ld b, d
    jr z, @+$2b

    jr z, jr_037_6a21

    jr z, jr_037_6a23

    jr z, jr_037_6a25

    ld a, [hl+]
    dec hl
    jr z, @+$2b

    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $07
    ld [$2609], sp
    ld bc, $0126
    inc l

jr_037_6a21:
    dec l
    ld [hl+], a

jr_037_6a23:
    ld [hl+], a
    inc a

jr_037_6a25:
    dec a
    ld [hl+], a
    ld [hl+], a
    ld l, $2f
    ld bc, $3e26
    ccf
    ld h, $01
    ld [hl+], a
    ld [hl+], a
    inc l
    dec l
    ld [hl+], a
    ld [hl+], a
    inc a
    dec a
    ld bc, $2e26
    cpl
    ld h, $01
    ld a, $3f
    inc c
    dec c
    inc c
    dec c
    inc c
    dec c
    inc c
    dec c
    inc c
    dec c
    inc c
    dec c
    inc c
    dec c
    inc c
    dec c
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    daa
    daa
    daa
    daa
    scf
    scf
    scf
    scf
    inc l
    dec l
    ld bc, $3c26
    dec a
    ld h, $01
    ld l, $2f
    ld bc, $3e26
    ccf
    ld h, $01
    ld bc, $2c26
    dec l
    ld h, $01
    inc a
    dec a
    ld bc, $2e26
    cpl
    ld h, $01
    ld a, $3f
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld d, b
    ld d, c
    ld d, c
    ld d, d
    ld d, b
    ld c, b
    ld c, c
    ld d, d
    ld d, e
    ld a, [hl-]
    ld a, [hl-]
    ld d, h
    ld bc, $0e26
    rrca
    ld h, $01
    ld e, $1f
    ld bc, $4026
    ld b, c
    ld h, $01
    ld d, b
    ld d, c
    ld bc, $0e26
    rrca
    ld h, $01
    ld e, $1f
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, l
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld a, [bc]
    dec bc
    ld c, e
    ld a, [bc]
    ld a, [de]
    dec de
    ld e, e
    ld a, [de]
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, l
    ld d, l
    ld d, [hl]
    ld d, l
    ld d, l
    dec bc
    ld c, e
    ld a, [bc]
    dec bc
    dec de
    ld e, e
    ld a, [de]
    dec de
    ld bc, $5026
    ld d, c
    ld h, $01
    ld d, e
    ld a, [hl-]
    ld bc, $0e26
    rrca
    ld h, $01
    ld e, $1f
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld d, h
    ld bc, $0e26
    rrca
    ld h, $01
    ld e, $1f
    ld b, l
    ld b, [hl]
    ld b, l
    dec sp
    ld d, l
    ld d, [hl]
    ld d, l
    dec sp
    ld c, d
    ld c, e
    ld c, d
    dec sp
    ld e, d
    ld e, e
    ld e, d
    dec sp
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    jr c, jr_037_6b52

    jr c, jr_037_6b54

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc h
    inc h
    dec h
    ld d, a
    ld e, b
    ld e, b
    ld e, c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, b
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld d, b
    ld d, d
    inc e
    inc e
    ld d, b
    ld d, d
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld d, b
    ld d, d

jr_037_6b52:
    inc e
    inc e

jr_037_6b54:
    ld d, b
    ld d, d
    inc e
    inc e
    ld d, b
    ld d, d
    inc e
    inc e
    ld a, [de]
    dec de
    inc e
    inc e
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    inc sp
    ld [hl+], a
    ld [hl+], a
    ld b, e
    ld b, h
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, b
    ld b, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, b
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld b, b
    ld b, c
    ld d, b
    ld d, d
    ld c, h
    ld c, l
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld bc, $4026
    ld b, c
    ld h, $01
    ld c, h
    ld c, l
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld b, c
    ld b, d
    ld bc, $4d26
    ld c, [hl]
    ld h, $01
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld b, b
    ld b, d
    ld b, b
    ld b, c
    ld d, b
    ld d, d
    ld c, h
    ld c, l
    ld bc, $0e26
    rrca
    ld h, $01
    ld e, $1f
    ld bc, $0e26
    rrca
    ld h, $01
    ld e, $1f
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [de], a
    inc de
    inc d
    dec d
    ld b, $07
    ld [$2609], sp
    ld bc, $0126
    ld b, b
    ld b, c
    ld b, c
    ld b, d
    ld d, b
    ld c, b
    ld c, c
    ld d, d
    ld b, $07
    ld [$2609], sp
    ld bc, $0126
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld b, b
    ld b, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $1a26
    dec de
    ld h, $01
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld b, b
    ld b, d
    inc e
    inc e
    ld d, b
    ld d, d
    inc e
    inc e
    inc hl
    inc h
    inc h
    dec h
    ld d, a
    ld e, b
    ld e, b
    ld e, c
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld d, b
    ld d, d
    inc e
    inc e
    ld d, b
    ld d, d
    inc e
    inc e
    ld d, b
    ld d, d
    inc e
    inc e
    ld d, b
    ld d, d
    inc e
    inc e
    ld b, b
    ld b, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $4140
    ld b, c
    ld b, c
    ld c, h
    ld c, l
    ld c, l
    ld c, l
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld bc, $4026
    ld b, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld c, $0f
    ld bc, $1e26
    rra
    ld h, $01
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld c, l
    ld c, l
    ld c, l
    ld c, l
    ld bc, $0126
    ld h, $26
    ld bc, $0126
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld bc, $4026
    ld b, c
    ld h, $01
    ld d, b
    ld d, c
    ld bc, $5026
    ld d, c
    ld h, $01
    ld d, e
    ld a, [hl-]
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld c, h
    ld c, l
    ld c, l
    ld c, l
    jr c, jr_037_6d62

    jr c, jr_037_6d64

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld b, c
    ld b, d
    ld d, b
    ld d, d
    ld c, l
    ld c, [hl]
    ld d, b
    ld d, d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld e, h
    ld e, l
    ld bc, $5e26
    ld e, a
    ld h, $01
    ld d, $17
    ld b, b
    ld b, d
    ld b, b
    ld b, c
    ld d, b
    ld d, d
    ld c, h
    ld c, l
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld b, c
    ld b, d

jr_037_6d62:
    ld b, b
    ld b, d

jr_037_6d64:
    ld c, l
    ld c, [hl]
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld d, b
    ld d, d
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld b, b
    ld b, c
    ld a, [de]
    dec de
    ld c, h
    ld c, l
    ld bc, $5026
    ld d, d
    ld h, $01
    ld d, b
    ld d, d
    ld b, c
    ld b, d
    ld d, b
    ld d, d
    ld c, l
    ld c, [hl]
    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    nop
    ld [hl], d
    nop
    nop
    rlca
    rlca
    sub c
    sub c
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld a, d
    nop
    nop
    rlca
    rlca
    nop
    sub b
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    nop
    rlca
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    sub b
    sub b
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    rlca
    rlca
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    sub b
    sub b
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc bc
    dec b
    inc bc
    inc bc
    dec b
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, $1f
    ld e, $1f
    inc de
    dec d
    inc de
    dec d
    inc de
    dec d
    inc de
    dec d
    ld a, $3f
    ld a, $3f
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
    cpl
    cpl
    cpl
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    sbc [hl]
    add b
    add c
    adc l
    add b
    sbc [hl]
    sub b
    sub c
    sbc [hl]
    add b
    add c
    adc l
    add b
    sbc [hl]
    sub b
    sub c
    adc l
    adc l
    add d
    add e
    sub c
    sub c
    sub d
    sub e
    adc l
    adc l
    add d
    add e
    sub c
    sub c
    sub d
    sub e
    dec hl
    inc l
    inc l
    dec l
    dec sp
    inc a
    inc a
    dec a
    dec sp
    inc a
    inc a
    dec a
    ld c, e
    ld c, h
    ld c, h
    ld c, l
    add h
    add l
    add [hl]
    add h
    sub h
    sub l
    sub [hl]
    sub h
    add h
    add l
    add [hl]
    add h
    sub h
    sub l
    sub [hl]
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    ld e, $1f
    nop
    nop
    inc de
    dec d
    ld e, d
    ld e, d
    inc de
    dec d
    ld e, c
    ld e, c
    ld a, $3f
    adc e
    add c
    adc l
    adc l
    sbc h
    sub b
    sub c
    sub c
    adc e
    add c
    adc l
    adc l
    sbc h
    sub b
    sub c
    sub c
    adc l
    add d
    adc h
    sbc l
    sub c
    sub d
    sbc l
    adc h
    adc l
    add d
    adc h
    sbc l
    sub c
    sub d
    sbc l
    adc h
    add b
    add b
    add c
    adc l
    cp e
    add b
    add c
    adc l
    ld b, $bb
    cp h
    cp l
    ld b, $06
    ld b, $06
    and a
    and b
    nop
    and c
    xor c
    or b
    or c
    or d
    xor e
    sbc a
    ret nc

    cp c
    ld b, $06
    pop de
    cp d
    and d
    and e
    and h
    and d
    or d
    or d
    or d
    or d
    or l
    or [hl]
    or l
    or [hl]
    or a
    cp b
    or a
    cp b
    and l
    nop
    and [hl]
    xor b
    or d
    or e
    or h
    xor d
    cp c
    db $d3
    xor l
    xor h
    cp d
    jp nc, $0606

    adc l
    adc a
    adc h
    adc h
    adc [hl]
    adc a
    adc h
    cp a
    cp l
    cp [hl]
    cp a
    ld b, $06
    ld b, $06
    ld b, $c0
    pop bc
    pop bc
    pop bc
    rst $00
    ret z

    nop
    nop
    sbc [hl]
    xor [hl]
    call nz, $80c4
    sbc [hl]
    call $1bcd
    dec de
    dec de
    dec de
    dec de
    dec de
    dec de
    ld h, $37
    jr c, jr_037_7016

    dec de
    add hl, sp
    ld a, [hl-]
    ld [bc], a
    ld [bc], a
    pop bc
    pop bc
    pop bc
    add $00
    nop
    set 1, h
    jp $afc3


    sbc l
    call $9dcd
    adc h
    ld de, $1111
    ld de, $0e0e

jr_037_7016:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec bc
    dec bc
    dec bc
    dec bc
    dec l
    inc a
    inc a
    inc a
    dec a
    dec l
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    pop bc
    pop bc
    jp nz, $0083

    nop
    ret


    sub e
    call nz, $cec4
    add e
    call $cdcd
    sub e
    adc e
    push bc
    pop bc
    pop bc
    sbc h
    jp z, RST_00

    adc e
    rst $08
    jp $9cc3


    call $cdcd
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
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
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    ld e, $1f
    ld e, $1f
    ld a, $3f
    ld a, $3f
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld e, d
    ld e, d
    ld e, d
    ld e, d
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld c, [hl]
    ld c, a
    ld b, $06
    ld e, [hl]
    ld e, a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    dec b
    dec hl
    inc l
    inc l
    dec hl
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    inc l
    inc l
    dec l
    dec b
    inc a
    inc a
    dec a
    dec l
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    dec sp
    inc a
    inc a
    dec sp
    ld c, e
    ld c, h
    ld c, h
    ld c, e
    ld c, h
    ld c, h
    ld c, h
    inc a
    inc a
    dec a
    dec a
    inc a
    inc a
    dec a
    dec a
    ld c, h
    ld c, h
    ld c, l
    dec a
    ld c, h
    ld c, h
    ld c, h
    ld c, l
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld c, h
    ld c, h
    inc a
    inc a
    ld c, h
    dec sp
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld c, h
    ld c, h
    inc a
    inc a
    dec a
    ld c, h
    inc l
    inc l
    inc l
    inc l
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    and d
    and e
    and h
    and d
    or d
    or d
    or d
    or d
    or l
    or [hl]
    or l
    or [hl]
    or a
    cp b
    or a
    cp b
    ld e, $1f
    nop
    nop
    inc de
    dec d
    nop
    nop
    inc de
    dec d
    ld e, d
    ld e, d
    ld a, $3f
    ld e, c
    ld e, c
    ld e, $1f
    db $10
    ld de, $1513
    dec c
    ld c, $13
    dec d
    dec c
    ld c, $3e
    ccf
    ld a, [bc]
    dec bc
    ld de, $0012
    nop
    ld c, $0f
    nop
    nop
    ld c, $0f
    ld e, d
    ld e, d
    dec bc
    inc c
    ld e, c
    ld e, c
    ld e, $1f
    ld a, [de]
    dec de
    inc de
    dec d
    ld a, [de]
    dec de
    inc de
    dec d
    ld a, [de]
    dec de
    ld a, $3f
    ld bc, $1b02
    inc e
    ld b, $06
    ld h, $1c
    ld b, $06
    dec de
    inc e
    ld b, $06
    ld [bc], a
    ld d, $06
    ld b, $2d
    inc a
    ld e, $1f
    dec a
    dec l
    ld a, $3f
    dec a
    dec a
    ld e, $1f
    dec a
    dec a
    ld a, $3f
    dec a
    dec a
    ld e, $1f
    dec a
    dec a
    inc de
    dec d
    dec a
    dec a
    inc de
    dec d
    dec a
    dec a
    ld a, $3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_037_75aa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_037_76b6

    jr jr_037_76b8

    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_037_76b6:
    rlca
    rlca

jr_037_76b8:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    ld [hl], b
    ld [hl], b
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    ld [hl], c
    ld [hl], c
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec d
    dec d
    nop
    nop
    nop
    nop
    dec d
    dec d
    rlca
    rlca
    rlca
    rlca
    dec d
    dec d
    dec d
    dec d
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca

Jump_037_774a:
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    rlca
    nop
    rlca
    dec d
    rlca
    dec d
    rlca
    rlca
    rlca
    rlca
    inc h
    nop
    inc h
    nop
    inc h
    nop
    nop
    nop
    ld e, e
    nop
    nop
    nop
    ld e, e
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    nop
    nop
    nop
    ld b, l
    nop
    nop
    nop
    ld b, l
    nop
    nop
    nop
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $c3c2
    add b
    add c
    jp nc, $90d3

    sub c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor [hl]
    xor a
    add b
    add c
    cp [hl]
    cp a
    sub b
    sub c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor h
    xor l
    adc h
    adc l
    cp h
    cp l
    sbc h
    sbc l
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    adc [hl]
    adc a
    xor [hl]
    xor a
    sbc [hl]
    sbc a
    cp [hl]
    cp a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add b
    add c
    add h
    add l
    sub b
    sub c
    sub h
    sub l
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    adc h
    adc l
    adc [hl]
    adc a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    adc [hl]
    adc a
    add h
    add l
    sbc [hl]
    sbc a
    sub h
    sub l
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add $c7
    and [hl]
    and a
    sub $d7
    or [hl]
    or a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and b
    and c
    ret nz

    pop bc
    or b
    or c
    ret nc

    pop de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    adc [hl]
    adc a
    ld [bc], a
    inc bc
    sbc [hl]
    sbc a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and b
    and c
    and [hl]
    and a
    or b
    or c
    or [hl]
    or a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor [hl]
    xor a
    and [hl]
    and a
    cp [hl]
    cp a
    or [hl]
    or a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add d
    add e
    add b
    add c
    sub d
    sub e
    sub b
    sub c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and h
    and l
    adc [hl]
    adc a
    or h
    or l
    sbc [hl]
    sbc a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and b
    and c
    adc [hl]
    adc a
    or b
    or c
    sbc [hl]
    sbc a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add $c7
    add b
    add c
    sub $d7
    sub b
    sub c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and d
    and e
    ret nz

    pop bc
    or d
    or e
    ret nc

    pop de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add [hl]
    add a
    add b
    add c
    sub [hl]
    sub a
    sub b
    sub c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [$0609], sp
    ld b, $0a
    dec bc
    ld d, $17
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    ld a, [de]
    dec de
    inc e
    dec e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    jr nz, jr_037_7a17

    ld [hl+], a
    inc hl
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    xor [hl]
    xor a
    inc bc
    ld [bc], a
    cp [hl]
    cp a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, b
    ld b, c
    ld b, d

jr_037_7a17:
    ld b, e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $06
    ld [$3809], sp
    add hl, sp
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld a, [bc]
    dec bc
    inc bc
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld d, h
    ld d, [hl]
    inc bc
    ld [bc], a
    ld e, b
    ld e, c
    ld [$0609], sp
    ld b, $0a
    dec bc
    ld b, e
    jr nz, @+$03

    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld [hl], $16
    ld hl, $0140
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld [$2309], sp
    jr c, jr_037_7a91

    dec bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601

jr_037_7a91:
    ld b, $06
    ld b, $36
    inc e
    ld [hl+], a
    scf
    ld bc, $0101
    ld bc, $0101
    ld bc, $ac01
    xor l
    and [hl]
    and a
    cp h
    cp l
    or [hl]
    or a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and h
    and l
    adc d
    adc e
    or h
    or l
    sbc d
    sbc e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and h
    and l
    and [hl]
    and a
    or h
    or l
    or [hl]
    or a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor b
    xor c
    and [hl]
    and a
    cp b
    cp c
    or [hl]
    or a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and b
    and c
    adc b
    adc c
    or b
    or c
    sbc b
    sbc c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and d
    and e
    and [hl]
    and a
    or d
    or e
    or [hl]
    or a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and h
    and l
    ld [bc], a
    inc bc
    or h
    or l
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ret nz

    pop bc
    ld [bc], a
    inc bc
    ret nc

    pop de
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    adc b
    adc c
    and h
    and l
    sbc b
    sbc c
    or h
    or l
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor d
    xor e
    ret nz

    pop bc
    cp d
    cp e
    ret nc

    pop de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    and b
    and c
    add b
    add c
    or b
    or c
    sub b
    sub c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor d
    xor e
    adc b
    adc c
    cp d
    cp e
    sbc b
    sbc c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor d
    xor e
    add b
    add c
    cp d
    cp e
    sub b
    sub c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    adc [hl]
    adc a
    xor h
    xor l
    sbc [hl]
    sbc a
    cp h
    cp l
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add b
    add c
    call nz, $90c5
    sub c
    call nc, $02d5
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor h
    xor l
    add b
    add c
    cp h
    cp l
    sub b
    sub c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add h
    add l
    add h
    add l
    sub h
    sub l
    sub h
    sub l
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor h
    xor l
    ret nz

    pop bc
    cp h
    cp l
    ret nc

    pop de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add h
    add l
    adc h
    adc l
    sub h
    sub l
    sbc h
    sbc l
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    adc [hl]
    adc a
    and b
    and c
    sbc [hl]
    sbc a
    or b
    or c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add b
    add c
    xor d
    xor e
    sub b
    sub c
    cp d
    cp e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add b
    add c
    ld [bc], a
    inc bc
    sub b
    sub c
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ret nz

    pop bc
    and d
    and e
    ret nc

    pop de
    or d
    or e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    xor [hl]
    xor a
    xor h
    xor l
    cp [hl]
    cp a
    cp h
    cp l
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ret nz

    pop bc
    call nz, $d0c5
    pop de
    call nc, $02d5
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and [hl]
    and a
    ret nz

    pop bc
    or [hl]
    or a
    ret nc

    pop de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    and d
    and e
    adc b
    adc c
    or d
    or e
    sbc b
    sbc c
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    add d
    add e
    adc [hl]
    adc a
    sub d
    sub e
    sbc [hl]
    sbc a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    nop
    rlca
    nop
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    ld h, b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_037_7dcf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_037_7dff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_037_7ec5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_037_7f02:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_037_7fbb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_037_7fff:
    nop
