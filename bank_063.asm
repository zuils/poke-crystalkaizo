; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $063", ROMX[$4000], BANK[$63]

    nop
    ld bc, $0505
    ld b, b
    ld [hl], $37
    nop
    sub b
    ld d, c
    ld b, d
    ld b, b
    ld d, c
    add b
    ld b, b
    ld l, e
    ld b, a
    ld sp, $0079
    add hl, bc
    inc hl
    ld b, b
    ld c, h
    add $40
    ld d, l
    sbc [hl]
    ld b, a
    ld bc, $7933
    nop
    ld c, c
    sub c
    ld c, h
    xor d
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld d, e
    rst $38
    ld b, c
    ld d, e
    ld e, $42
    ld d, e
    ld e, [hl]
    ld b, d
    ld d, e
    xor c
    ld b, d
    ld d, e
    call c, $0c42
    stop
    inc c
    ld de, $9b00
    inc e
    sbc e
    dec e
    nop
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    and h
    and e
    ld c, a
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add [hl]
    sbc b
    adc h
    and $51
    sub e
    and a
    and h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld a, a
    or h
    or d
    and h
    or d
    ld c, a
    or c
    xor [hl]
    and d
    xor d
    db $e3
    or e
    cp b
    xor a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld d, l
    and b
    or e
    ld a, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld c, a
    xor l
    xor b
    and [hl]
    and a
    or e
    add sp, $57
    nop
    add b
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    and $51
    sub e
    and a
    and b
    or e
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    xor h
    and h
    xor h
    xor [hl]
    or c
    xor b
    and h
    or d
    add sp, $7f
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld d, c
    or [hl]
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    xor h
    xor b
    xor l
    and e
    ld a, a
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld c, a
    xor h
    and b
    xor l
    add sp, $51
    add a
    and h
    or c
    and h
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or e
    and h
    xor h
    ld d, l
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    add sp, $57
    nop
    add [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor l
    and h
    or [hl]
    db $f4
    ld a, a
    or h
    xor l
    db $e3
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld [hl], l
    ld d, c
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor c
    xor [hl]
    cp b
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    add sp, $57
    nop
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    add b
    ld a, a
    sub d
    or e
    xor [hl]
    xor l
    and h
    ld a, a
    add [hl]
    or c
    and b
    cp b
    ld a, a
    add d
    xor b
    or e
    cp b
    ld d, a
    nop
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub c
    xor [hl]
    and d
    xor d
    ld a, a
    sub d
    xor [hl]
    xor e
    xor b
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld c, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    adc h
    sub h
    sub d
    add h
    sub h
    adc h
    ld a, a
    adc [hl]
    add l
    ld c, a
    sub d
    add d
    adc b
    add h
    adc l
    add d
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    or c
    and h
    xor l
    xor [hl]
    or l
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld c, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld c, a
    adc l
    adc [hl]
    sub [hl]
    ld a, a
    adc [hl]
    adc a
    add h
    adc l
    rst $20
    ld d, a
    nop
    sub [hl]
    add h
    adc e
    add d
    adc [hl]
    adc h
    add h
    ld a, a
    sub e
    adc [hl]
    ld c, a
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    rst $20
    ld d, a
    nop
    nop
    dec b
    dec c
    dec e
    ld bc, $030e
    ld de, $0110
    ld c, $04
    ld de, $0217
    ld c, $05
    add hl, de
    dec c
    ld bc, $060e
    dec e
    rlca
    ld bc, $080e
    nop
    rlca
    rla
    add hl, de
    nop
    add hl, hl
    ld b, b
    ld de, $000b
    inc l
    ld b, b
    ld [$000f], sp
    cpl
    ld b, b
    inc de
    ld hl, $3200
    ld b, b
    ld hl, $0013
    dec [hl]
    ld b, b
    add hl, de
    ld c, $00
    jr c, jr_063_4371

    ld de, $0018
    dec sp
    ld b, b
    dec b
    inc h
    dec d
    add hl, bc
    ld [bc], a
    ld [hl+], a
    rst $38
    rst $38
    and b
    nop
    add hl, bc
    ld b, b
    rst $38
    rst $38
    dec h
    ld [hl+], a
    ld c, $02
    ld [hl+], a
    rst $38
    rst $38
    add b
    nop
    inc c
    ld b, b
    rst $38
    rst $38
    cpl
    inc e
    ld e, $05
    ld [bc], a
    rst $38
    rst $38
    sub b
    nop
    rrca
    ld b, b
    rst $38
    rst $38
    ld e, l
    ld [hl+], a
    add hl, bc
    ld bc, $ff00
    rst $38
    nop
    nop
    ld a, $40
    rst $38
    rst $38
    ld e, l
    ld [hl+], a
    ld [$0001], sp
    rst $38

jr_063_4371:
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc b
    rrca
    rlca
    ld bc, $0216
    dec bc
    rlca
    ld bc, $4703
    inc bc
    inc bc
    inc b
    inc bc
    ld b, h
    inc bc
    rlca
    ld [bc], a
    inc bc
    ld b, l
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc bc
    rrca
    dec bc
    ld [bc], a
    ld d, $02
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld b, a
    inc bc
    ld de, $0303
    ld b, a
    nop
    nop
    ld bc, $1354
    ld de, $0001
    rst $38
    rst $38
    ld bc, $9600
    ld b, e
    adc a

jr_063_43b9:
    ld b, $00
    nop
    ld [bc], a
    ld bc, $0000
    dec b
    rrca
    add hl, bc
    inc bc
    ld d, $02
    rlca
    dec bc
    dec b
    inc bc
    ld b, a
    rlca
    rlca
    inc b
    inc bc
    ld b, a
    inc bc
    dec b
    inc bc
    inc bc
    ld b, d
    inc bc
    rrca
    inc b
    inc bc
    ld c, b
    nop
    nop
    ld bc, $0a54
    ld a, [bc]
    ld bc, $ff00
    rst $38
    ld bc, $bc00
    ld b, e
    sub b
    ld b, $00
    nop
    nop
    nop
    ld [bc], a
    dec b
    rlca
    add hl, bc
    inc bc
    ld b, a
    dec c
    inc bc
    inc b
    inc bc
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec c
    dec b
    inc b
    ld d, $02
    inc bc
    dec b
    ld b, $03
    ld b, a
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    dec e
    ld bc, $011f
    inc h
    ld bc, $0113
    inc c
    ld c, $00
    sub a
    nop
    jr nz, jr_063_43b9

    nop
    ld [bc], a
    sbc c
    nop
    ld c, $00
    nop
    add hl, bc
    dec b
    dec b
    ld [bc], a
    inc bc
    ld b, d
    inc bc
    inc hl
    ld [bc], a
    inc bc
    ld b, e
    add hl, bc
    dec e
    inc bc
    inc bc
    ld b, e
    rra
    add hl, bc
    inc bc
    inc bc
    ld b, h
    rra
    rla
    ld [bc], a
    inc bc
    ld b, h
    dec e
    rra
    ld [bc], a
    inc bc
    ld b, [hl]
    dec d
    add hl, de
    ld bc, $4803
    dec de
    dec c
    ld [bc], a
    inc bc
    ld c, b
    dec d
    ld de, $0301
    ld b, l
    nop
    inc bc
    inc b
    ld e, $07
    dec e
    ld b, h
    ld [de], a
    inc h
    rlca
    jr nz, jr_063_44a6

    rla
    ld [bc], a
    rlca
    inc hl
    ld b, h
    ld b, $54
    ld de, $010b
    nop
    rst $38
    rst $38
    ld bc, $1000
    ld b, h
    sub c
    ld b, $54
    ld d, $06
    ld bc, $ff00
    rst $38
    ld bc, $1200
    ld b, h
    sub d
    ld b, $54
    dec de
    dec h
    ld bc, $ff00
    rst $38
    ld bc, $1400
    ld b, h
    sub e
    ld b, $54
    inc c
    dec d
    ld bc, $ff00
    rst $38
    ld bc, $1600
    ld b, h
    sub h
    ld b, $54
    ld e, $17
    ld bc, $ff00
    rst $38
    ld bc, $1800

jr_063_44a6:
    ld b, h
    sub l
    ld b, $5a
    ld e, $1b
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [de]
    ld b, h
    rst $38
    rst $38
    nop
    nop
    ld c, $01
    jr z, jr_063_44bd

    dec d

jr_063_44bd:
    ld bc, $0000
    inc b
    dec b
    dec bc
    rlca
    inc bc
    ld b, a
    dec bc
    rlca
    ld [$4703], sp
    add hl, de
    rlca
    ld bc, $4903
    rra
    dec c
    dec b
    inc bc
    ld b, h
    nop
    nop
    inc bc
    ld d, h
    rrca
    ld c, $01
    nop
    rst $38
    rst $38
    ld bc, $b800
    ld b, h
    sub [hl]
    ld b, $54
    ld [$010a], sp
    nop
    rst $38
    rst $38
    ld bc, $ba00
    ld b, h
    sub a
    ld b, $54
    db $10
    add hl, bc
    ld bc, $ff00
    rst $38
    ld bc, $bc00
    ld b, h
    sbc b
    ld b, $00
    ld bc, $0402
    ld b, l
    ld sp, $0318
    add hl, bc
    dec d
    ld b, l
    ld hl, $0947
    ld [de], a
    ld b, l
    inc bc
    dec d
    ld b, l
    ld l, a
    ld [bc], a
    sub b
    ld l, [hl]
    ld [bc], a
    sub b
    ld l, e
    ld b, a
    ld c, h
    ld sp, $8445
    ld sp, hl
    nop
    adc e
    rrca
    ld c, c
    inc sp
    jr jr_063_4529

    ld e, $03
    ld a, [bc]

jr_063_4529:
    ld e, l
    ld sp, hl
    ld h, h
    ld e, a
    ld l, [hl]
    ld [bc], a
    ld h, b
    sub c
    nop
    add [hl]
    cp b
    and b
    and b
    and b
    or d
    rst $20
    ld d, a
    nop
    nop
    ld bc, $090d
    inc bc
    inc bc
    ld c, b
    nop
    nop
    ld bc, $09a1
    dec c
    ld d, $00
    rst $38
    rst $38
    sub b
    nop
    jr jr_063_4595

    dec a
    rlca
    nop
    nop
    dec d
    ld bc, $011b
    inc de
    ld bc, $0102
    sbc d
    nop
    inc l
    sbc e
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld hl, $020b
    inc de
    ld [bc], a
    ld bc, $010d
    inc bc
    ld c, e
    nop
    ld [bc], a
    dec de
    ld [$5c07], sp
    ld b, l
    inc c
    ld de, $5f07
    ld b, l
    inc b
    ld d, h
    ld [$0106], sp
    nop
    rst $38
    rst $38
    ld bc, $5400
    ld b, l
    sbc c
    ld b, $54
    inc e
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $5600
    ld b, l
    sbc d

jr_063_4595:
    ld b, $54
    ld b, $06
    ld bc, $ff00
    rst $38
    ld bc, $5800
    ld b, l
    sbc e
    ld b, $54
    db $10
    ld de, $0001
    rst $38
    rst $38
    ld bc, $5a00
    ld b, l
    pop bc
    rlca
    nop
    nop
    rra
    ld bc, $0102
    ld a, $01
    sbc h
    nop
    rrca
    nop
    nop
    inc b
    ld hl, $0211
    inc bc
    ld c, d
    ld bc, $0111
    inc bc
    ld c, h
    dec d
    rrca
    ld bc, $4d03
    dec b
    rla
    ld [bc], a
    inc bc
    ld c, l
    nop
    ld bc, $0c21
    rlca
    cp b
    ld b, l
    inc bc
    ld d, h
    ld b, $1b
    ld bc, $ff00
    rst $38
    ld bc, $b200
    ld b, l
    jp nz, Jump_063_5407

    ld e, $11
    ld bc, $ff00
    rst $38
    ld bc, $b400
    ld b, l
    jp Jump_063_5407


    ld c, $0e
    ld bc, $ff00
    rst $38
    ld bc, $b600
    ld b, l
    call nz, $0007
    nop
    rrca
    ld l, d
    nop
    ld l, e
    ld b, a
    ld c, h
    scf
    ld b, [hl]
    ld d, h
    ld c, c
    ld h, h
    inc a
    ld b, [hl]
    inc a
    ld b, [hl]
    ld e, [hl]
    ccf
    ld bc, $835f
    ld h, b
    rrca
    ld l, d
    nop
    ld b, a
    ld c, h
    ccf
    ld b, [hl]
    ld d, h
    ld c, c
    rrca
    jr nc, jr_063_4624

jr_063_4624:
    rrca
    inc sp
    nop
    ld l, [hl]
    ld [bc], a
    adc e
    rrca
    rrca
    ld [hl-], a
    nop
    adc e
    ld e, $0f
    dec de
    nop
    ld c, b
    nop
    and d
    sub c
    nop
    ld d, [hl]
    ld c, a
    ld d, [hl]
    ld d, a
    nop
    ld [hl], l
    ld d, a
    nop
    ld d, [hl]
    ld c, a
    ld d, [hl]
    ld d, a
    nop
    nop
    ld bc, $0a1f
    ld [bc], a
    inc bc
    ld c, e
    nop
    nop
    ld bc, $0406
    dec c
    rlca
    nop
    rst $38
    rst $38
    add b
    nop
    inc bc
    ld b, [hl]
    ld h, d
    rlca
    nop
    nop
    jr z, @+$03

    ld c, $01
    nop
    nop
    ld [bc], a
    rrca
    inc bc
    inc bc
    inc bc
    ld c, e
    inc bc
    ld de, $0304
    ld c, e
    nop
    nop
    ld [bc], a
    ld d, h
    db $10
    rlca
    ld bc, $ff00
    rst $38
    ld bc, $5e00
    ld b, [hl]
    sbc h
    ld b, $54
    ld c, $15
    ld bc, $ff00
    rst $38
    ld bc, $6000
    ld b, [hl]
    sbc l
    ld b, $00
    nop
    ld [de], a
    ld bc, $0126
    db $10
    ld bc, $012c
    inc c
    rrca
    nop
    sbc l
    nop
    ld b, c
    nop
    nop
    inc bc
    ld hl, $0303
    ld a, [de]
    ld [bc], a
    ld bc, $0213
    inc bc
    ld c, a
    ld hl, $0323
    dec b
    add hl, bc
    nop
    ld bc, $1b1f
    rlca
    sbc c
    ld b, [hl]
    ld [$0754], sp
    ld a, [de]
    ld bc, $ff00
    rst $38
    ld bc, $8e00
    ld b, [hl]
    sbc [hl]
    ld b, $59
    rrca
    jr jr_063_46df

    nop
    rst $38
    rst $38
    nop
    nop
    sub [hl]
    ld b, [hl]
    rst $38
    rst $38
    ld e, c
    add hl, bc
    ld hl, $0018
    rst $38
    rst $38
    nop
    nop
    sub [hl]
    ld b, [hl]
    rst $38
    rst $38
    ld e, c
    rlca

jr_063_46df:
    dec bc
    jr jr_063_46e2

jr_063_46e2:
    rst $38
    rst $38
    nop
    nop
    sub [hl]
    ld b, [hl]
    rst $38
    rst $38
    ld e, c
    inc h
    jr z, jr_063_4706

    nop
    rst $38
    rst $38
    nop
    nop
    sub [hl]
    ld b, [hl]
    rst $38
    rst $38
    ld d, h
    ld e, $20
    ld bc, $ff00
    rst $38
    ld bc, $9000
    ld b, [hl]
    sbc a
    ld b, $54
    rlca

jr_063_4706:
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $9200
    ld b, [hl]
    and b
    ld b, $54
    rla
    rra
    ld bc, $ff00
    rst $38
    ld bc, $9400
    ld b, [hl]
    adc $07
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0072
    add hl, bc
    dec [hl]
    ld b, a
    ld c, h
    ccf
    ld b, a
    ld d, l
    sbc [hl]
    ld h, [hl]
    ld bc, $3908
    ld b, a
    inc sp
    ld [hl], d
    nop
    ld c, h
    inc c
    ld c, b
    ld d, h
    ld c, c
    sub c
    daa
    ld bc, $01cc
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    and b
    or c
    or e
    xor e
    and h
    and e

Jump_063_4752:
    ld c, a
    xor h
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    add c
    adc e
    add b
    add d
    adc d
    db $e3
    ld c, a
    add [hl]
    adc e
    add b
    sub d
    sub d
    add h
    sub d
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld d, c
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    add sp, $51
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    xor h
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    and h
    or c
    and h
    and $51
    add a
    and h
    cp b
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld c, a
    xor a
    and b
    xor b
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    add c
    adc e
    add b
    add d
    adc d
    db $e3
    ld d, l
    add [hl]
    adc e
    add b
    sub d
    sub d
    add h
    sub d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    add c
    adc e
    add b
    add d
    adc d
    add [hl]
    adc e
    add b
    sub d
    sub d
    add h
    sub d
    ld a, a
    or h
    xor a
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    and e
    and b
    or c
    xor d
    db $e3
    ld d, l
    or e
    cp b
    xor a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    inc bc
    rla
    ld bc, $0805
    ld hl, $0203
    inc bc
    ld c, [hl]
    nop
    nop
    inc bc
    ld c, e
    inc c
    inc d
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    jr nz, jr_063_489f

    rst $38
    rst $38
    ld d, h
    inc d
    add hl, de
    ld bc, $ff00
    rst $38
    ld bc, $3b00
    ld b, a
    and c
    ld b, $54
    inc de
    dec bc
    ld bc, $ff00
    rst $38
    ld bc, $3d00
    ld b, a
    and d
    ld b, $00
    nop
    nop
    nop
    inc b
    dec b
    inc bc
    ld [$0a05], sp
    inc bc
    inc bc
    inc b
    inc bc
    ld d, b
    rrca
    dec b
    ld bc, $5103
    dec c
    dec b
    ld [bc], a
    inc bc
    ld d, b
    nop
    nop
    nop
    ld [bc], a
    sbc l
    ld c, b
    nop
    nop
    sbc [hl]
    ld c, b
    nop
    nop
    ld bc, $9f05
    ld c, b
    sub c
    sub c

jr_063_489f:
    ld sp, $0319
    add hl, bc
    xor b
    ld c, b
    ld l, [hl]
    inc b
    sub b
    inc e
    dec bc
    ld b, $02
    or l
    ld c, b
    ld b, $04
    or l
    ld c, b
    ld l, [hl]
    inc b
    sub b
    ld l, a
    inc b
    sub b
    ld l, a
    inc bc
    ld b, a
    ld c, h
    cp b
    ld c, c
    adc e
    ld e, $49
    ld [hl], l
    nop
    nop
    rrca
    halt
    ld [bc], a
    ld a, a
    ld e, l
    nop
    ld l, c
    inc bc
    xor [hl]
    ld c, c
    ld b, a
    ld c, h
    cp a
    ld c, c
    ld d, l
    rra
    rst $10
    ld bc, $f408
    ld c, b
    ld b, c
    rst $10
    nop
    ld c, h
    ei
    ld c, c
    add l
    ld bc, $8600
    ld b, l
    inc sp
    rrca
    nop
    ld c, h
    dec c
    ld c, d
    ld d, l
    ld c, h
    pop af
    ld c, d
    ld d, h
    ld c, c
    inc bc
    ld sp, hl
    ld c, b
    ld c, h
    adc e
    ld c, d
    ld d, h
    ld c, c
    ld l, c
    inc bc
    or e
    ld c, c
    rrca
    ld l, d
    nop
    adc e
    ld e, $0f
    dec a
    nop
    ld l, [hl]
    inc bc
    inc d
    nop
    sub c
    cp l
    dec b
    dec de
    inc d
    ld d, e
    ld c, l
    ld [hl], a
    ld c, l
    nop
    nop
    ld d, $49
    ld h, [hl]
    ld b, a
    ld c, h
    add d
    ld c, l
    ld d, h
    ld c, c
    sub c
    cp [hl]
    dec b
    inc e
    dec d
    db $e4
    ld c, l
    cp $4d
    nop
    nop
    ld a, [hl+]
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld de, $544e
    ld c, c
    sub c
    cp a
    dec b
    dec a
    add hl, bc
    xor e
    ld c, [hl]
    ret


    ld c, [hl]
    nop
    nop
    ld a, $49
    ld h, [hl]
    ld b, a
    ld c, h
    db $d3
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    cp a
    dec b
    dec a
    add hl, bc
    ld hl, sp+$4e
    ld b, $4f
    nop
    nop
    ld d, d
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    rrca
    ld c, a
    ld d, h
    ld c, c
    sub c
    rra
    sub b
    ld bc, $7008
    ld c, c
    ld l, [hl]
    ld [bc], a
    ld b, a
    ld b, c
    sub b
    nop
    ld c, h
    ld b, c
    ld c, a
    add l
    ld bc, $8600
    ld b, l
    ld c, c
    sub c
    ld b, a
    ld b, c
    sub b
    nop
    ld c, h
    ld b, c
    ld c, a
    ld d, l
    ld c, h
    ld d, c
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld a, a
    rra
    nop
    ld l, e
    ld b, a
    ld sp, $0000
    add hl, bc
    sub l
    ld c, c
    ld c, h
    add e
    ld c, h
    ld d, h
    ld c, c
    inc sp
    nop
    nop
    rrca
    dec a
    nop
    sub c
    ld c, h
    dec l
    ld c, l
    ld d, h
    ld c, c
    rrca
    dec a
    nop
    sub c
    ld d, e
    ld l, $4c
    rra
    ld bc, $0115
    and b
    nop
    daa
    and c
    nop
    rrca
    and d
    nop
    dec d
    dec bc
    dec bc
    dec bc
    dec bc
    ld b, a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, a
    nop
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld d, a
    nop
    add d
    adc e
    add b
    adc b
    sub c
    sbc h
    ld a, a
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $51
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    or d
    ld c, a
    xor h
    cp b
    ld a, a
    and b
    xor a
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    cp b
    add sp, $57
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    sub e
    adc h
    ld hl, sp-$06
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    add c
    sub c
    add h
    add b
    sub e
    add a
    add sp, $51
    adc l
    xor [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    and e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    or c
    and h
    and b
    or e
    and a
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc [hl]
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $51
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld d, c
    or c
    xor [hl]
    xor [hl]
    xor h
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    or d
    and h
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add d
    adc e
    add b
    adc b
    sub c
    sbc h
    ld a, a
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld c, a
    xor h
    and b
    or e
    or e
    and h
    or c
    and $7f
    add b
    or c
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    and $51
    add e
    xor [hl]
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
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    and $51
    add l
    or c
    xor [hl]
    xor h
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc l
    add h
    sub [hl]
    ld a, a
    add c
    add b
    sub c
    adc d
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    add sp, $51
    sub e
    and a
    and h
    xor l
    ld a, a
    sub d
    sub h
    sub c
    add l
    ld a, a
    and h
    and b
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    or h
    or e
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld c, a
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    and b
    or c
    and h
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld c, a
    and l
    and h
    and h
    xor e
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or [hl]
    xor [hl]
    or c
    or d
    and h
    ld d, c
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    add [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    add sp, $57
    nop
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld a, a
    sub d
    add a
    sub c
    adc b
    adc l
    add h
    ld d, c
    add b
    ld a, a
    or d
    and a
    or c
    xor b
    xor l
    and h
    ld a, a
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor e
    xor b
    or l
    and h
    and e
    ld c, a
    xor b
    xor l
    ld a, a
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ldh [$92], a
    ld a, a
    add e
    add h
    adc l
    add sp, $57
    nop
    ld [hl], l
    ld c, a
    sub [hl]
    and a
    and b
    or e
    and $7f
    ld d, d
    and $51
    ld [hl], l
    adc l
    xor [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    ld d, c
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    xor l
    push de
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor a
    or h
    or d
    and a
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and e
    xor b
    or d
    db $e3
    ld c, a
    and d
    xor b
    xor a
    xor e
    xor b
    xor l
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld d, c
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    and h
    or d
    or e
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and h
    or [hl]
    ld [hl], l
    ld d, c
    adc e
    and h
    and b
    or c
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    or [hl]
    and b
    cp b
    ld [hl], l
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and h
    xor l
    or e
    and h
    or c
    ld a, a
    or h
    xor l
    xor b
    xor l
    or l
    xor b
    or e
    and h
    and e
    rst $20
    ld d, a
    nop
    sub d
    db $e3
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add a
    sub c
    adc b
    adc l
    add h
    ld a, a
    and b
    and a
    and h
    and b
    and e
    ld c, a
    xor b
    or d
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    db $e3
    or h
    or d
    and h
    or c
    ld a, a
    and d
    xor e
    and b
    xor l
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
    and c
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    cp b
    xor b
    xor d
    and h
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    xor a
    and h
    or c
    xor h
    xor b
    or d
    or d
    xor b
    xor [hl]
    xor l
    ld d, c
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    or e
    xor [hl]
    ld c, a
    or h
    or d
    and h
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    or d
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    db $f4
    ld a, a
    adc b
    jp nc, $a64f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    xor l
    ld d, c
    and b
    and e
    xor h
    xor b
    or c
    and b
    and c
    xor e
    and h
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    and b
    xor b
    xor l
    ld d, c
    xor [hl]
    or h
    or c
    ld a, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    call nc, $a04f
    xor a
    xor a
    or c
    xor [hl]
    or l
    and b
    xor e
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    or c
    ld a, a
    or [hl]
    and h
    ld c, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    adc [hl]
    or h
    and d
    and a
    xor b
    and h
    or d
    add sp, $57
    nop
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    adc e
    add b
    adc l
    add d
    add h
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    adc h
    and h
    and b
    xor l
    xor b
    and h
    add sp, $57
    nop
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld c, a
    and b
    xor l
    and [hl]
    or c
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    ld d, d
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    add c
    or h
    or e
    ld a, a
    ld d, d
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and d
    and b
    or c
    or c
    cp b
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld d, l
    xor b
    or e
    and h
    xor h
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    inc bc
    inc d
    inc bc
    inc bc
    ld d, b
    dec e
    inc de
    ld bc, $5203
    ld bc, $1e01
    inc de
    nop
    cp b
    ld c, b
    nop
    nop
    inc b
    jr jr_063_4f9e

    nop
    sbc [hl]
    ld c, c
    dec e
    ld hl, $a507
    ld c, c
    add hl, de
    ld a, [de]
    rlca
    xor b
    ld c, c
    rla
    ld e, $07
    xor e
    ld c, c

jr_063_4f9e:
    add hl, bc
    ld d, h
    inc d
    daa
    ld bc, $ff00
    rst $38
    nop
    nop
    ld e, d
    ld c, c
    xor b
    ld b, $19
    ld [hl+], a
    ld [de], a
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    rst $28
    ld h, $d8
    ld b, $04
    dec de
    jr jr_063_4fbf

    ld [hl+], a
    rst $38

jr_063_4fbf:
    rst $38
    nop
    nop
    ld a, [hl]
    ld c, c
    add $06
    inc hl
    inc c
    jr jr_063_4fd1

    nop
    rst $38
    rst $38
    add d
    inc b
    ld a, [bc]
    ld c, c

jr_063_4fd1:
    rst $38
    rst $38
    inc h
    jr nz, @+$28

    ld b, $00
    rst $38
    rst $38
    add d
    inc bc
    ld e, $49
    rst $38
    rst $38
    ld h, $15
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    add d
    ld bc, $4932
    rst $38
    rst $38
    ld h, $18
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    add d
    ld bc, $4946
    rst $38
    rst $38
    ld d, h
    jr nz, jr_063_5012

    ld bc, $ff00
    rst $38
    ld bc, $a100
    ld c, c
    cp a
    rlca
    nop
    jr nz, jr_063_5024

    ld bc, $ff00
    rst $38
    ld bc, $a300
    ld c, c

jr_063_5012:
    ret nz

    rlca
    ld [bc], a
    ld e, $50
    nop
    nop
    ld [hl+], a
    ld d, b
    nop
    nop
    nop
    adc l
    inc hl
    ld d, b
    sub c
    sub c
    ld l, c

jr_063_5024:
    nop
    cp a
    ld d, d
    ld l, c
    ld [bc], a
    rst $00
    ld d, d
    ld b, a
    ld c, h
    ld [$5552], a
    inc sp
    ld bc, $4c00
    cp h
    ld d, e
    ld d, l
    ld c, a
    dec d
    ld d, d
    ld e, c
    ld d, b
    ld b, $01
    xor c
    ld d, b
    ld b, $02
    bit 2, b
    ld b, $03
    xor c
    ld d, b
    sub c
    inc sp
    ld [bc], a
    nop
    ld c, h
    db $d3
    ld d, e
    ld d, l
    ld c, a
    inc [hl]
    ld d, d
    ld e, c
    ld d, b
    ld b, $01
    xor c
    ld d, b
    ld b, $02
    xor c
    ld d, b
    ld b, $03
    bit 2, b
    inc sp
    inc bc
    nop
    ld c, h
    di
    ld d, e
    ld d, l
    ld c, a
    ld e, b
    ld d, d
    ld e, c
    ld d, b
    ld b, $01
    bit 2, b
    ld b, $02
    xor c
    ld d, b
    ld b, $03
    xor c
    ld d, b
    inc sp
    inc b
    nop
    ld c, h
    jr nz, jr_063_50d3

    ld d, l
    ld c, a
    add e
    ld d, d
    ld e, c
    ld d, b
    ld b, $01
    xor c
    ld d, b
    ld b, $02
    bit 2, b
    ld b, $03
    xor c
    ld d, b
    inc sp
    dec b
    nop
    ld c, h
    ld c, d
    ld d, h
    ld d, l
    ld c, a
    and l
    ld d, d
    ld e, c
    ld d, b
    ld b, $01
    bit 2, b
    ld b, $02
    xor c
    ld d, b
    ld b, $03
    bit 2, b
    ld sp, $0005
    add hl, bc
    nop
    ld d, c
    ld c, h
    dec l
    ld e, b
    ld d, l
    ld sp, $0004
    add hl, bc
    sub c
    ld d, b
    ld sp, $0003
    add hl, bc
    ld a, c
    ld d, b
    ld sp, $0002
    add hl, bc
    ld h, c
    ld d, b
    ld sp, $0001
    add hl, bc
    ld c, c
    ld d, b
    ld c, c
    db $76
    ld [bc], a
    ld [bc], a
    ld b, a
    ld c, h
    or $57

jr_063_50d3:
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    nop
    ld b, a
    ld c, h
    ld d, $58
    ld d, h
    ld c, c
    inc sp
    pop bc
    nop
    ld b, a
    ld sp, $0005
    add hl, bc
    sub c
    ld d, b
    ld sp, $0004
    add hl, bc
    ld a, c
    ld d, b
    ld sp, $0003
    add hl, bc
    ld h, c
    ld d, b
    ld sp, $0002
    add hl, bc
    ld c, c
    ld d, b
    ld sp, $0001
    add hl, bc
    jr nc, jr_063_5150

    ld c, h
    ld a, h
    ld d, h
    ld d, h
    ld c, c
    add l
    rra
    nop
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    ld e, l
    nop
    ld l, a
    dec b
    add [hl]
    halt
    nop
    adc e
    ld e, $69
    dec b
    call nc, Call_063_7652
    dec b
    inc bc
    halt
    ld [bc], a
    db $76
    ld [bc], a
    ld [bc], a
    ld b, a
    ld c, h
    ld d, $59
    ld d, h
    ld c, c
    rrca
    ld l, d
    nop
    ld l, c
    dec b
    jp c, Jump_063_4752

    ld c, h
    ld [hl], h
    ld e, c
    ld d, h
    ld c, c
    ld l, c
    dec b
    db $dd
    ld d, d
    ld b, a
    ld c, h
    add e
    ld e, c
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    ret


    ld d, d
    db $76
    dec b
    ld bc, $4c47
    jr nz, jr_063_51a1

    ld d, h
    ld c, c
    ld [hl], l
    nop

jr_063_5150:
    dec b
    rrca
    ld b, a
    ld c, h
    xor [hl]
    ld e, c
    ld d, h
    ld c, c
    ld l, c
    dec b
    ldh [rHDMA2], a
    ld b, a
    ld c, h
    cp a
    ld e, c
    ld d, h
    ld [hl], $22
    nop
    add l
    sbc h
    nop
    add [hl]
    rrca
    dec a
    nop
    sbc h
    ld [$1400], sp
    ld bc, $0312
    ld d, c
    ld bc, $f24c
    ld e, c
    ld d, l
    ld c, h
    dec bc
    ld e, d
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    adc $52
    db $76
    dec b
    ld bc, $0269
    pop de
    ld d, d
    halt
    ld bc, $4c47
    and e
    ld d, l
    ld d, h
    ld c, c
    ld b, a
    ld c, h
    or h
    ld e, d
    ld d, h
    ld c, c
    ld l, c
    dec b
    db $e3
    ld d, d
    add l
    rra
    nop
    ld l, [hl]
    dec b
    add [hl]

jr_063_51a1:
    inc sp
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    add hl, bc
    ld sp, hl
    ld d, c
    ld sp, $0006
    add hl, bc
    rst $38
    ld d, c
    ld sp, $00bd
    ld [$51c5], sp
    ld sp, $0319
    add hl, bc
    di
    ld d, c
    ld c, h
    inc h
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc b
    ld d, [hl]
    ld d, h
    inc e
    ld bc, $0606
    db $ed
    ld d, c
    ld c, h
    sub a
    ld d, [hl]
    add l
    ld [bc], a
    nop
    add [hl]
    dec l
    sub e
    rrca
    nop
    nop
    ld sp, $00c1
    rrca
    sub h
    nop
    inc sp
    cp l
    nop
    inc sp
    ld b, $00
    ld c, h
    jp z, Jump_063_5456

    ld c, c
    sub c
    ld c, h
    xor h
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    add d
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    push hl
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    jp z, Jump_063_5456

    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld b, b
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    or c
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld b, b
    inc b
    ld [$130b], sp
    dec e
    ld d, d
    ld bc, $0381
    adc a
    and b
    xor e
    ld d, b
    sub h
    xor l
    and e
    and h
    or c
    xor e
    xor b
    xor l
    and [hl]
    ld d, b
    add l
    or c
    xor b
    and h
    xor l
    and e
    ld d, b
    ld b, b
    inc b
    add hl, bc
    dec bc
    inc de
    inc a
    ld d, d
    ld bc, $0381
    sub d
    or e
    or c
    and b
    or e
    and h
    and [hl]
    cp b
    ld d, b
    sub c
    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld d, b
    add d
    and a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld d, b
    ld b, b
    inc b
    dec b
    dec bc
    inc de
    ld h, b
    ld d, d
    ld bc, $0381
    sub [hl]
    and h
    and b
    xor d
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld d, b
    sub e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld d, b
    add b
    xor l
    cp b
    and c
    xor [hl]
    and e
    cp b
    ld d, b
    ld b, b
    inc b
    ld [$130b], sp
    adc e
    ld d, d
    ld bc, $0381
    adc e
    xor [hl]
    or l
    and h
    ld d, b
    sub l
    xor b
    xor [hl]
    xor e
    and h
    xor l
    and d
    and h
    ld d, b
    adc d
    xor l
    xor [hl]
    or [hl]
    xor e
    and h
    and e
    and [hl]
    and h
    ld d, b
    ld b, b
    inc b
    inc c
    dec bc
    inc de
    xor l
    ld d, d
    ld bc, $0381
    sub e
    xor [hl]
    or h
    and [hl]
    and a
    ld d, b
    add c
    xor [hl]
    or e
    and a
    ld d, b
    sub [hl]
    and h
    and b
    xor d
    ld d, b
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, a
    ld [$0a47], sp
    ld a, [bc]
    ld a, [bc]
    nop
    ld b, a
    dec bc
    dec bc
    ld b, a
    dec bc
    nop
    ld b, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, a
    dec sp
    ld [de], a
    ld b, a
    ld a, [bc]
    ld a, [hl-]
    ld b, a
    dec bc
    dec bc
    ld b, a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, a
    nop
    add a
    xor h
    ld [hl], l
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc l
    xor [hl]
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    xor a
    xor e
    and b
    xor b
    xor l
    ld c, a
    or [hl]
    and a
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h
    add sp, $51
    add d
    adc e
    add b
    adc b
    sub c
    ld a, a
    or d
    and h
    xor l
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    or d
    and a
    and h
    and $51
    sub e
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and a
    and b
    xor l
    and e
    and l
    or h
    xor e
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    or e
    and h
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc l
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    or d
    or [hl]
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld d, l
    and b
    ld a, a
    and l
    and h
    or [hl]
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
    add sp, $51
    sub c
    and h
    and b
    and e
    cp b
    and $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and a
    and h
    xor e
    xor a
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or [hl]
    xor b
    xor l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    and $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h

Jump_063_5407:
    or c
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or [hl]
    xor b
    or d
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld c, a
    xor b
    xor h
    xor a
    xor [hl]
    or c
    or e
    and b
    xor l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    or c
    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sub d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l

Jump_063_5456:
    add sp, $4f
    sub [hl]
    and h
    and b
    xor d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    xor b
    xor h
    xor a
    xor [hl]
    or c
    or e
    and b
    xor l
    or e
    and $57
    nop
    add a
    xor h
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    and e
    and h
    and h
    xor a
    xor e
    cp b
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub l
    and h
    or c
    cp b
    ld a, a
    and d
    xor [hl]
    xor h
    xor h
    and h
    xor l
    and e
    and b
    and c
    xor e
    and h
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    and d
    xor [hl]
    xor l
    or l
    xor b
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor b
    or d
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor h
    xor a
    xor [hl]
    or c
    or e
    and b
    xor l
    or e
    rst $20
    ld d, c
    ld d, d
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    and l
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    add sp, $57
    nop
    add d
    adc e
    add b
    adc b
    sub c
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    ld a, a
    xor b
    or d
    ld c, a
    xor b
    xor h
    xor a
    and h
    and d
    and d
    and b
    and c
    xor e
    and h
    db $f4
    ld a, a
    xor b
    xor l
    ld d, l
    or d
    xor d
    xor b
    xor e
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    rst $20
    ld d, c
    add b
    and e
    xor h
    xor b
    or e
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and d
    xor [hl]
    xor l
    and l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    adc b
    sub d
    adc b
    adc l
    add [hl]
    db $e3
    ld d, l
    add c
    add b
    add e
    add [hl]
    add h
    rst $20
    ld d, c
    ld [hl], l
    adc [hl]
    or c
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    adc b
    ld a, a
    xor b
    xor l
    and l
    xor [hl]
    or c
    xor h
    ld c, a
    adc e
    add b
    adc l
    add d
    add h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    xor b
    or d
    and $57
    nop
    add d
    adc e
    add b
    adc b
    sub c
    ld [hl], l
    ld d, c
    sub c
    and h
    and l
    xor e
    and h
    and d
    or e
    ld a, a
    or h
    xor a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld c, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    xor e
    and b
    and d
    xor d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and d
    and a
    xor b
    xor e
    and e
    ld a, a
    and a
    and b
    or d
    add sp, $57
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    db $f4
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    xor [hl]
    ld a, a
    and e
    and h
    or d
    xor b
    or c
    and h
    add sp, $57
    nop
    add a
    xor h
    ld [hl], l
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    or c
    or c
    xor b
    or l
    and b
    xor e
    ld a, a
    xor b
    or d
    ld c, a
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    or e
    or h
    xor l
    and b
    or e
    and h
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    add e
    sub c
    add b
    sub e
    adc b
    adc l
    adc b
    ld c, a
    and b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    or c
    and h
    and d
    xor [hl]
    and [hl]
    xor l
    xor b
    cp c
    and h
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    add sp, $57
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    add e
    sub c
    add b
    sub e
    adc b
    adc l
    adc b
    rst $20
    ld d, a
    nop
    add a
    xor h
    and $7f
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor a
    and b
    or c
    or e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    add sp, $57
    nop
    add e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld c, a
    or d
    cp b
    xor h
    and c
    xor [hl]
    xor e
    xor b
    and d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    and d
    xor e
    and b
    xor l
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    xor l
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld d, c
    and h
    xor l
    or e
    or c
    or h
    or d
    or e
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    add d
    adc e
    add b
    adc b
    sub c
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    and b
    xor l
    ld d, c
    xor b
    xor l
    or l
    and b
    xor e
    or h
    and b
    and c
    xor e
    and h
    ld a, a
    xor e
    and h
    or d
    or d
    xor [hl]
    xor l
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or d
    ld a, a
    and a
    and h
    or c
    ld c, a
    and [hl]
    or c
    and b
    xor l
    and e
    and l
    and b
    or e
    and a
    and h
    or c
    add sp, $57
    nop
    add b
    ld a, a
    and c
    xor [hl]
    cp b
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    and [hl]
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    add a
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    add d
    adc e
    add b
    adc b
    sub c
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or d
    and a
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    add sp, $7f
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    xor b
    or d
    xor [hl]
    xor h
    and h
    ld [hl], l
    ld d, a
    nop
    add a
    and b
    and a
    and $7f
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld c, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    or e
    and a
    and b
    or e
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    and b
    xor b
    and e
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    or d
    or e
    and b
    xor l
    and e
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    and b
    ld d, c
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and a
    and b
    or d
    ld a, a
    and [hl]
    and b
    xor b
    xor l
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    call nc, $b17f
    and b
    or c
    and h
    ld d, l
    and b
    xor a
    xor a
    or c
    xor [hl]
    or l
    and b
    xor e
    add sp, $51
    adc b
    xor l
    ld a, a
    and l
    and b
    and d
    or e
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld c, a
    adc h
    and b
    or d
    or e
    and h
    or c
    ld a, a
    adc e
    add b
    adc l
    add d
    add h
    add sp, $57
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
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld c, a
    adc h
    and b
    or d
    or e
    and h
    or c
    ld a, a
    adc e
    add b
    adc l
    add d
    add h
    and $51
    add a
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld d, l
    and e
    xor b
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or e
    and a
    add sp, $51
    adc b
    or e
    call nc, $a87f
    xor l
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, a
    and c
    xor e
    xor [hl]
    xor [hl]
    and e
    add sp, $57
    nop
    sub d
    xor [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and $51
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld c, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    or d
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    and l
    and b
    xor b
    xor e
    and $51
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, c
    ld [hl], l
    sub [hl]
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    xor a
    and b
    or d
    or d
    and h
    and e
    and $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor e
    cp b
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    add h
    or l
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld c, a
    and c
    and h
    and h
    xor l
    ld a, a
    and b
    xor a
    xor a
    or c
    xor [hl]
    or l
    and h
    and e
    rst $20
    ld d, a
    nop
    adc b
    db $e3
    adc b
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    or d
    or e
    and b
    xor l
    and e
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    or c
    and h
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
    or e
    and a
    and h
    ld c, a
    sub c
    adc b
    sub d
    adc b
    adc l
    add [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld [hl], l
    ld d, c
    add a
    or h
    or c
    or c
    cp b
    ld a, a
    or h
    xor a
    rst $20
    ld a, a
    sub e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    sub c
    adc b
    sub d
    adc b
    adc l
    add [hl]
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    sub c
    adc b
    sub d
    adc b
    adc l
    add [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and h
    xor l
    and b
    and c
    xor e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and d
    xor e
    xor b
    xor h
    and c
    xor b
    xor l
    and [hl]
    ld d, l
    or [hl]
    and b
    or e
    and h
    or c
    and l
    and b
    xor e
    xor e
    or d
    add sp, $51
    add b
    xor e
    or d
    xor [hl]
    db $f4
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or c
    and h
    and d
    xor [hl]
    and [hl]
    xor l
    xor b
    cp c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and b
    or d
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, a
    xor [hl]
    and c
    and h
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld d, c
    and d
    xor [hl]
    xor h
    xor h
    and b
    xor l
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld c, a
    or b
    or h
    and h
    or d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, a
    nop
    nop
    ld [bc], a
    add hl, bc
    inc b
    ld [bc], a
    inc bc
    ld d, c
    add hl, bc
    dec b
    ld [bc], a
    inc bc
    ld d, c
    nop
    nop
    inc b
    add hl, bc
    dec b
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    and l
    ld d, c
    nop
    nop
    add hl, bc
    ld [$0906], sp
    nop
    rst $38
    rst $38
    nop
    nop
    dec b
    ld d, d
    nop
    nop
    add hl, bc
    ld [$080b], sp
    nop
    rst $38
    rst $38
    nop
    nop
    dec c
    ld d, d
    nop
    nop
    add hl, de
    inc c
    ld [$0007], sp
    rst $38
    rst $38
    sub b
    nop
    rst $28
    ld h, $90
    rlca
    nop
    nop
    ld [$0001], sp
    nop
    ld [bc], a
    rrca
    dec c
    ld [bc], a
    jr jr_063_5b0e

    rrca
    add hl, de

jr_063_5b0e:
    inc bc
    jr jr_063_5b13

    nop
    nop

jr_063_5b13:
    ld bc, $0a54
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $0200
    ld e, e
    xor c
    ld b, $01
    daa
    ld e, e
    nop
    nop
    nop
    sub c
    inc c
    nop
    nop
    ld d, c
    inc [hl]
    ld e, e
    ld d, c
    xor $5b
    ld d, c
    add hl, de
    ld e, h
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    add a
    adc h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    and $51
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and c
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor b
    and l
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and b
    or d
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    add c
    adc b
    adc e
    adc e
    ld a, a
    and [hl]
    or h
    cp b
    ld c, a
    and d
    or c
    and h
    and b
    or e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    cp b
    or d
    or e
    and h
    xor h
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or e
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    adc a
    add d
    add sp, $51
    add c
    adc b
    adc e
    adc e
    call nc, $8f7f
    add d
    ld a, a
    and d
    and b
    xor l
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    ld hl, sp-$0a
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor a
    and h
    or c
    ld a, a
    add c
    adc [hl]
    sub a
    add sp, $57
    nop
    add c
    adc b
    adc e
    adc e
    call nc, $8f7f
    add d
    ld a, a
    and d
    and b
    xor l
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    ld hl, sp-$0a
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor a
    and h
    or c
    ld a, a
    add c
    adc [hl]
    sub a
    add sp, $57
    nop
    add e
    xor [hl]
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
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    add b
    adc a
    sub c
    adc b
    add d
    adc [hl]
    sub c
    adc l
    sub d
    and $51
    add d
    or c
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    db $f4
    ld c, a
    and a
    xor [hl]
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    xor l
    and e
    ld d, c
    and l
    xor b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld c, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld a, a
    and e
    and h
    or l
    xor b
    and d
    and h
    add sp, $51
    sub e
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    add sp, $51
    add c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    or l
    and h
    xor l
    or e
    and h
    and e
    db $f4
    ld d, c
    and h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    add b
    adc a
    sub c
    adc b
    add d
    adc [hl]
    sub c
    adc l
    sub d
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    ld bc, $0708
    rlca
    inc b
    ld bc, $0708
    rlca
    nop
    ld bc, $0114
    nop
    nop
    inc b
    scf
    dec b
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    jr z, @+$5d

    rst $38
    rst $38
    ld b, b
    ld a, [bc]
    dec c
    inc b
    db $10
    rst $38
    rst $38
    nop
    nop
    dec hl
    ld e, e
    rst $38
    rst $38
    dec sp
    dec b
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld l, $5b
    rst $38
    rst $38
    ld l, $08
    dec b
    ld [bc], a
    ld hl, $ffff
    nop
    nop
    ld sp, $ff5b
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0010
    add hl, bc
    inc [hl]
    ld e, l
    ld sp, $002b
    add hl, bc
    ld l, $5d
    ld c, h
    ld [hl], h
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $fd
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], e
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $005e
    add hl, bc
    ld e, l
    ld e, l
    ld sp, $0010
    add hl, bc
    ld c, [hl]
    ld e, l
    ld c, h
    ldh [$5e], a
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec h
    ld e, a
    ld d, l
    sbc [hl]
    adc d
    ld bc, $6108
    ld e, l
    inc sp
    ld e, [hl]
    nop
    ld c, c
    sub c
    ld c, h
    sub e
    ld e, a
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    push hl
    ld e, a
    add h
    ld d, e
    nop
    ld d, h
    ld c, c
    sub c
    inc c
    inc bc
    nop
    inc c
    inc c
    nop
    nop
    add b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and e
    xor b
    or d
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    call nc, $af7f
    or c
    xor [hl]
    db $e3
    ld c, a
    or e
    and h
    and d
    or e
    xor [hl]
    or c
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld d, l
    and b
    xor l
    and [hl]
    or c
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or h
    or d
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    and c
    and b
    and e
    ld c, a
    xor [hl]
    xor h
    and h
    xor l
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    or d
    or e
    and b
    cp b
    ld a, a
    xor b
    xor l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    add b
    adc a
    adc a
    sub c
    add h
    adc l
    sub e
    adc b
    add d
    add h
    ld c, a
    and a
    and b
    or d
    xor l
    push de
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc b
    adc e
    add h
    sub a
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    add sp, $51
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld c, a
    xor b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    and b
    cp c
    cp b
    ld a, a
    and [hl]
    or h
    cp b
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and a
    and b
    or d
    and h
    and e
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    and b
    xor l
    and e
    ld d, c
    or [hl]
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc b
    adc e
    add h
    sub a
    ld c, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    and $51
    sub e
    and a
    and b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    and [hl]
    or h
    or e
    or d
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $7f
    add d
    xor [hl]
    xor h
    and h
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or h
    or d
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    and $51
    add b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor a
    xor e
    and b
    cp b
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and h
    or c
    and h
    and $57
    nop
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    db $e3
    db $e3
    adc b
    ld a, a
    and l
    xor [hl]
    or c
    db $e3
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    add d
    add a
    add b
    sub c
    add d
    adc [hl]
    add b
    adc e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    xor h
    and b
    and e
    and h
    add sp, $51
    add l
    xor b
    or c
    and h
    db $e3
    or e
    cp b
    xor a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, l
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    and c
    and b
    and d
    xor d
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, l
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    add l
    add b
    sub c
    add l
    add h
    sub e
    add d
    add a
    ldh [$83], a
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    db $e3
    ld c, a
    and h
    or d
    or e
    db $f4
    ld a, a
    xor h
    and b
    xor l
    rst $20
    ld d, a
    nop
    add l
    add b
    sub c
    add l
    add h
    sub e
    add d
    add a
    ldh [$83], a
    sbc h
    ld a, a
    adc d
    or [hl]
    and b
    and b
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [$0707], sp
    inc bc
    ld [bc], a
    ld [$0007], sp
    inc bc
    ld bc, $0000
    ld l, [hl]
    ld e, l
    ld bc, $0001
    ld l, [hl]
    ld e, l
    ld bc, $0007
    ld [hl], c
    ld e, l
    inc bc
    ld b, c
    rlca
    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [de]
    ld e, l
    rst $30
    ld b, $27
    rlca
    add hl, bc
    ld [bc], a
    ld de, $ffff
    nop
    nop
    ld a, [hl-]
    ld e, l
    or $06
    sbc [hl]
    ld a, [bc]
    add hl, bc
    ld d, $22
    rst $38
    rst $38
    or b
    nop
    ld h, e
    ld e, l
    push af
    ld b, $00
    nop
    ld b, a
    sub h
    nop
    inc bc
    nop
    ld c, c
    sub c
    ld d, c
    ld c, l
    ld h, b
    ld d, c
    or [hl]
    ld h, b
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    add [hl]
    sub c
    add h
    add b
    sub e
    ld c, a
    add c
    add b
    adc e
    adc e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $7f
    ld d, h
    ld d, c
    add c
    add b
    adc e
    adc e
    sub d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc d
    sub h
    sub c
    sub e
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    and a
    xor b
    or d
    ld a, a
    and d
    or h
    or d
    or e
    xor [hl]
    xor h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    add sp, $57
    nop
    add b
    ld a, a
    add [hl]
    sub c
    add h
    add b
    sub e
    ld a, a
    add c
    add b
    adc e
    adc e
    ld a, a
    xor b
    or d
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and d
    and b
    or e
    and d
    and a
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    and b
    ld d, l
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc d
    sub h
    sub c
    sub e
    call nc, $ac7f
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and c
    and h
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld d, l
    or e
    xor b
    xor h
    and h
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld [$0707], sp
    inc bc
    inc bc
    ld [$0007], sp
    nop
    inc bc
    add hl, sp
    rlca
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, b
    ld h, b
    rst $38
    rst $38
    inc hl
    add hl, bc
    ld b, $07
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, a
    ld h, b
    rst $38
    rst $38
    dec h
    ld b, $0b
    dec b
    ld [bc], a
    rst $38
    rst $38
    add b
    nop
    ld c, d
    ld h, b
    rst $38
    rst $38
    nop
    ld bc, $5402
    ld h, c
    ld sp, $002b
    ld [$6177], sp
    ld sp, $00c0
    add hl, bc
    ld [hl], a
    ld h, c
    inc [hl]
    ld d, b
    nop
    add hl, bc
    ld l, a
    ld h, c
    ld l, [hl]
    dec b
    ld l, a
    ld [bc], a
    ld l, [hl]
    ld b, $6f
    inc bc
    sub b
    ld l, [hl]
    ld [bc], a
    ld l, a
    dec b
    ld l, [hl]
    inc bc
    ld l, a
    ld b, $90
    ld l, e
    ld b, a
    ld sp, $0035
    add hl, bc
    call z, $3161
    dec hl
    nop
    add hl, bc
    cp a
    ld h, c
    ld c, h
    ld [hl], e
    ld h, h
    ld d, h
    ld c, c
    rrca
    ld l, d
    nop
    inc sp
    ld a, [$1c06]
    add hl, bc
    ld b, $01
    xor e
    ld h, c
    halt
    nop
    add l
    jr jr_063_619d

jr_063_619d:
    ld l, c
    ld [bc], a
    ld h, [hl]
    ld h, h
    add l
    inc hl
    nop
    ld l, [hl]
    ld [bc], a
    add [hl]
    rrca
    dec a
    nop
    sub c
    halt
    nop
    add l
    jr jr_063_61b1

jr_063_61b1:
    ld l, c
    ld [bc], a
    ld l, h
    ld h, h
    add l
    inc hl
    nop
    ld l, [hl]
    ld [bc], a
    add [hl]
    rrca
    dec a
    nop
    sub c
    ld c, h
    dec d
    ld h, [hl]
    ld d, l
    sbc [hl]
    and b
    ld bc, $b208
    ld h, d
    inc sp
    dec [hl]
    nop
    ld sp, $0000
    add hl, bc
    sbc a
    ld h, d
    ld sp, $0258
    add hl, bc
    or h
    ld h, d
    ld sp, $0259
    add hl, bc
    jp z, $3162

    ld e, d
    ld [bc], a
    add hl, bc
    ldh [$62], a
    ld sp, $025b
    add hl, bc
    or $62
    ld sp, $025c
    add hl, bc
    inc c
    ld h, e
    ld sp, $025d
    add hl, bc
    ld [hl+], a
    ld h, e
    ld sp, $025e
    add hl, bc
    jr c, jr_063_625f

    ld sp, $00be
    add hl, bc
    ld c, [hl]
    ld h, e
    ld sp, $0001
    add hl, bc
    ld [de], a
    ld h, d
    ld sp, $0002
    add hl, bc
    ld [de], a
    ld h, d
    ld c, h
    ret


    ld h, [hl]
    ld d, h
    ld hl, $0955
    ld c, c
    ld h, d
    ld hl, $0959
    ld c, c
    ld h, d
    ld hl, $095c
    ld c, c
    ld h, d
    ld hl, $095d
    ld c, c
    ld h, d
    ld hl, $0961
    ld c, c
    ld h, d
    ld hl, $0963
    ld c, c
    ld h, d
    ld hl, $0965
    ld c, c
    ld h, d
    ld sp, $0001
    add hl, bc
    xor [hl]
    ld h, d
    ld sp, $0002
    add hl, bc
    ld b, e
    ld h, d
    ld c, c
    sub c
    ld c, h
    ret


    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], $67
    ld d, l
    inc sp
    ld [bc], a
    nop
    rrca
    ld d, [hl]
    nop
    ld b, $00
    and l
    ld h, d
    ld b, $59
    ld [hl], l
    ld h, d
    ld b, $5c
    ld a, e
    ld h, d

jr_063_625f:
    ld b, $5d
    add c
    ld h, d
    ld b, $61
    add a
    ld h, d
    ld b, $63
    adc l
    ld h, d
    ld b, $65
    sub e
    ld h, d
    inc sp
    ld e, b
    ld [bc], a
    inc bc
    sbc c
    ld h, d
    inc sp
    ld e, c
    ld [bc], a
    inc bc
    sbc c
    ld h, d
    inc sp
    ld e, d
    ld [bc], a
    inc bc
    sbc c
    ld h, d
    inc sp
    ld e, e
    ld [bc], a
    inc bc
    sbc c
    ld h, d
    inc sp
    ld e, h
    ld [bc], a
    inc bc
    sbc c
    ld h, d
    inc sp
    ld e, l
    ld [bc], a
    inc bc
    sbc c
    ld h, d
    inc sp
    ld e, [hl]
    ld [bc], a
    inc bc
    sbc c
    ld h, d
    inc sp
    nop
    nop
    ld [hl], $50
    nop
    ld c, h
    ld a, c
    ld h, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    cp h
    ld h, a
    ld d, h
    ld c, c
    sub c
    inc sp
    ld bc, $4c00
    ld a, [hl+]
    ld l, b
    ld d, h
    ld c, c
    sub c
    inc [hl]
    ld d, b
    nop
    add hl, bc
    push bc
    ld h, e
    ld c, h
    ei
    ld h, a
    ld d, l
    sbc a
    sbc a
    ld d, $08
    or d
    ld h, d
    ld [hl-], a
    ld e, b
    ld [bc], a
    inc bc
    xor e
    ld h, d
    inc [hl]
    ld d, b
    nop
    add hl, bc
    push bc
    ld h, e
    ld c, h
    ei
    ld h, a
    ld d, l
    sbc a
    and b
    ld d, $08
    or d
    ld h, d
    ld [hl-], a
    ld e, c
    ld [bc], a
    inc bc
    xor e
    ld h, d
    inc [hl]
    ld d, b
    nop
    add hl, bc
    push bc
    ld h, e
    ld c, h
    ei
    ld h, a
    ld d, l
    sbc a
    and l
    ld d, $08
    or d
    ld h, d
    ld [hl-], a
    ld e, d
    ld [bc], a
    inc bc
    xor e
    ld h, d
    inc [hl]
    ld d, b
    nop
    add hl, bc
    push bc
    ld h, e
    ld c, h
    ei
    ld h, a
    ld d, l
    sbc a
    and h
    ld d, $08
    or d
    ld h, d
    ld [hl-], a
    ld e, e
    ld [bc], a
    inc bc
    xor e
    ld h, d
    inc [hl]
    ld d, b
    nop
    add hl, bc
    push bc
    ld h, e
    ld c, h
    ei
    ld h, a
    ld d, l
    sbc a
    and c
    ld d, $08
    or d
    ld h, d
    ld [hl-], a
    ld e, h
    ld [bc], a
    inc bc
    xor e
    ld h, d
    inc [hl]
    ld d, b
    nop
    add hl, bc
    push bc
    ld h, e
    ld c, h
    ei
    ld h, a
    ld d, l
    sbc a
    sbc l
    ld d, $08
    or d
    ld h, d
    ld [hl-], a
    ld e, l
    ld [bc], a
    inc bc
    xor e
    ld h, d
    inc [hl]
    ld d, b
    nop
    add hl, bc
    push bc
    ld h, e
    ld c, h
    ei
    ld h, a
    ld d, l
    sbc a
    and [hl]
    ld d, $08
    or d
    ld h, d
    ld [hl-], a
    ld e, [hl]
    ld [bc], a
    inc bc
    xor e
    ld h, d
    ld sp, $00bf
    add hl, bc
    ld l, b
    ld h, e
    ld hl, $0873
    ld [bc], a
    ld h, d
    ld c, h
    xor e
    ld l, b
    ld d, h
    ld c, c
    inc sp
    cp a
    nop
    jr nz, jr_063_63d6

    ld bc, $5036
    nop
    sub c
    inc [hl]
    ld d, b
    nop
    ld [$6378], sp
    ld c, h
    inc [hl]
    ld l, c
    ld d, h
    ld c, h
    ld c, c
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld e, h
    ld l, c
    ld d, h
    ld c, c
    inc sp
    ret nz

    nop
    ld [hl-], a
    cp [hl]
    nop
    ld [hl-], a
    cp a
    nop
    rrca
    ld l, d
    nop
    adc e
    inc d
    ld [hl], l
    nop
    ld [bc], a
    ld e, $1c
    add hl, bc
    ld b, $01
    and d
    ld h, e
    halt
    nop
    add l
    jr jr_063_639b

jr_063_639b:
    ld l, c
    ld [bc], a
    ld h, [hl]
    ld h, h
    inc bc
    xor h
    ld h, e
    halt
    nop
    add l
    jr jr_063_63a8

jr_063_63a8:
    ld l, c
    ld [bc], a
    ld l, h
    ld h, h
    add l
    inc hl
    nop
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    and h
    rlca
    add [hl]
    rrca
    dec a
    nop
    ld [de], a
    ld [$0207], sp
    sub c
    ld l, e
    ld b, a
    ld sp, $00bf
    add hl, bc
    ldh [$63], a
    ld sp, $00bb
    ld [$63d4], sp
    ld c, h
    ret c

    ld h, a
    ld d, h
    ld c, c
    db $76
    dec b
    ld bc, $4c91
    ld h, e

jr_063_63d6:
    ld l, b
    ld d, h
    ld c, c
    db $76
    dec b
    ld bc, $bb33
    nop
    sub c
    ld c, h
    inc [hl]
    ld l, c
    ld d, h
    db $76
    dec b
    ld bc, $494c
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld sp, $0000
    add hl, bc
    cpl
    ld h, h
    ld sp, $0001
    add hl, bc
    ld c, b
    ld h, h
    ld sp, $00c0
    add hl, bc
    jr nz, jr_063_6464

    ld sp, $0030
    add hl, bc
    daa
    ld h, h
    ld sp, $002b
    add hl, bc
    add hl, de
    ld h, h
    ld sp, $06fa
    add hl, bc
    jr nz, jr_063_6476

    ld b, a
    ld c, h
    or l
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    rrca
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    pop af
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld d, l
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00bf
    add hl, bc
    ccf
    ld h, h
    ld c, h
    or d
    ld l, d
    ld d, h
    ld c, c
    db $76
    ld b, $03
    sub c
    ld c, h
    inc d
    ld l, e
    ld d, h
    ld c, c
    db $76
    ld b, $03
    sub c
    ld b, a
    ld c, h
    db $fc
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld d, [hl]
    ld l, e
    add h
    ld c, a
    nop
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld l, c
    ld l, e
    ld d, e
    ld a, [hl]
    ld l, e
    inc c
    ld bc, $0c00

jr_063_6464:
    inc c
    nop
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, a
    inc de
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, a
    nop
    add a
    xor h

jr_063_6476:
    and $7f
    sub [hl]
    and a
    xor [hl]
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    ld d, d
    db $f4
    ld a, a
    and h
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    and $51
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    pop de
    xor e
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    and b
    xor b
    or e
    add sp, $51
    add e
    xor [hl]
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
    sub e
    add h
    add b
    adc h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    and $7f
    add b
    and a
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, c
    or [hl]
    xor [hl]
    or c
    or c
    cp b
    add sp, $7f
    adc b
    pop de
    xor e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    cp b
    and a
    xor [hl]
    or [hl]
    add sp, $51
    sub e
    add h
    add b
    adc h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    call nc, $a07f
    xor l
    ld c, a
    and h
    or l
    xor b
    xor e
    ld a, a
    and [hl]
    and b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    or h
    or d
    and h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and e
    xor b
    or c
    or e
    cp b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    add sp, $51
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or d
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and e
    xor b
    or d
    and c
    and b
    xor l
    and e
    and h
    and e
    ld d, l
    or e
    and a
    or c
    and h
    and h
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    and b
    and [hl]
    xor [hl]
    add sp, $51
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
    and h
    cp b
    db $d3
    and h
    ld a, a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub [hl]
    add h
    adc e
    adc e
    db $f4
    ld a, a
    and d
    or h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld d, c
    xor [hl]
    and l
    and l
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    sub e
    add b
    adc b
    adc e
    sub d
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    and b
    xor e
    and h
    rst $20
    ld d, c
    sub d
    xor [hl]
    ld a, a
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor [hl]
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    ld d, l
    xor e
    and h
    or d
    or d
    xor [hl]
    xor l
    ld a, a
    xor b
    xor l
    ld a, a
    xor a
    and b
    xor b
    xor l
    rst $20
    ld d, c
    add a
    and b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    rst $20
    ld c, a
    adc [hl]
    xor e
    and e
    ld a, a
    adc d
    sub h
    sub c
    sub e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and a
    xor b
    or d
    ld d, l
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    add a
    xor b
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    xor l
    and e
    xor e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    db $e3
    ld c, a
    or d
    and h
    xor e
    and l
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    or c
    and h
    and b
    xor e
    ld d, l
    and a
    and h
    or c
    xor [hl]
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub [hl]
    add h
    adc e
    adc e
    add sp, $51
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    or e
    cp b
    xor e
    and h
    rst $20
    ld d, c
    adc b

Jump_063_666c:
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    adc b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    add b
    adc a
    sub c
    adc b
    add d
    adc [hl]
    sub c
    adc l
    sub d
    add sp, $51
    add d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    or e
    or c
    and h
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    ldh [$a4], a
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    ld c, a
    add b
    adc a
    sub c
    adc b
    add d
    adc [hl]
    sub c
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    and $51
    add l
    xor b
    xor l
    and h
    rst $20
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or e
    or h
    or c
    xor l
    ld a, a
    xor b
    or e
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $57
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    adc b
    or e
    pop de
    xor e
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    and e
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld d, c
    add c
    add b
    adc e
    adc e
    add sp, $7f
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    adc [hl]
    and a
    ld [hl], l
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    xor e
    and h
    or e
    and e
    xor [hl]
    or [hl]
    xor l
    add sp, $57
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    adc b
    jp nc, $b67f

    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld c, a
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    add b
    and a
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    and e
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $7f
    add a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    add sp, $51
    sub e
    or c
    cp b
    ld a, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    adc l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    cp b
    ld c, a
    and [hl]
    or c
    and b
    xor l
    and e
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld d, c
    and a
    and h
    xor e
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and l
    and b
    or d
    or e
    and h
    or c
    add sp, $57
    nop
    sub [hl]
    and a
    db $e3
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    and $51
    adc b
    sub $a4
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    or d
    and h
    and h
    xor l
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, $51
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor e
    or d
    and h
    add sp, $51
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    ld a, a
    xor b
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc b
    jp nc, $a27f

    and a
    and h
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld c, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    add b
    and a
    db $e3
    and a
    and b
    rst $20
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    rst $20
    ld c, a
    sub d
    xor [hl]
    ld [hl], l
    ld d, a
    nop
    ld d, d
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    add c
    add b
    adc e
    adc e
    ld a, a
    or d
    or e
    and b
    or c
    or e
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    and b
    xor d
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    adc b
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    add sp, $51
    sub e
    and a
    and h
    or c
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
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld a, a
    and b
    or c
    and h
    ld c, a
    and [hl]
    xor [hl]
    xor l
    and h
    ld [hl], l
    ld a, a
    sub [hl]
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, c
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and c
    cp b
    ld a, a
    and c
    and b
    and e
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    and $57
    nop
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    call nc, $a67f
    xor [hl]
    xor l
    and h
    ld [hl], l
    ld c, a
    adc b
    jp nc, $b27f

    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor l
    and h
    xor e
    cp b
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld a, a
    xor h
    cp b
    ld c, a
    and e
    and b
    and e
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and d
    and b
    xor h
    and h
    ld d, c
    and c
    and b
    and d
    xor d
    rst $20
    ld a, a
    adc b
    or e
    or d
    ld a, a
    sub e
    add b
    adc b
    adc e
    ld a, a
    xor b
    or d
    ld c, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add e
    and b
    and e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    or d
    ld a, a
    and b
    or e
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and a
    and h
    ld a, a
    or d
    or e
    or h
    and e
    xor b
    and h
    or d
    ld d, l
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    cp b
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    ld d, l
    and b
    xor l
    and e
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    add sp, $57
    nop
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    xor e
    xor a
    ld c, a
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    add c
    add b
    adc e
    adc e
    sub d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, l
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a57f
    or h
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    add c
    add b
    adc e
    adc e
    sub d
    rst $20
    ld d, a
    nop
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    call nc, $a27f
    and a
    and h
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    add c
    add b
    adc e
    adc e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    adc b
    jp nc, $b67f

    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor b
    xor e
    xor e
    ld a, a
    and a
    and h
    call nc, $a37f
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    sbc h
    ld a, a
    ld [hl], l
    ld c, a
    sbc b
    and b
    or [hl]
    xor l
    and $57
    nop
    ld [hl], l
    add b
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    adc [hl]
    add b
    adc d
    and $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or d
    or e
    and b
    or e
    or h
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    call nc, $af7f
    or c
    xor [hl]
    db $e3
    ld d, l
    or e
    and h
    and d
    or e
    xor [hl]
    or c
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    inc bc
    inc b
    ld [$0707], sp
    inc b
    inc b
    ld [$0007], sp
    rlca
    ld bc, $0006
    ld h, e
    ld h, h
    nop
    ld [$5a00], sp
    ld h, h
    nop
    add hl, bc
    nop
    ld e, d
    ld h, h
    ld bc, $0005
    ld h, b
    ld h, h
    ld bc, $0002
    ld h, b
    ld h, h
    ld bc, $0003
    ld h, b
    ld h, h
    ld bc, $0004
    ld e, l
    ld h, h
    dec b
    dec bc
    ld b, $07
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld a, b
    ld h, c
    ld a, $07
    ld h, $07
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    db $ed
    ld h, e
    adc h
    rlca
    ld b, l
    rlca
    ld a, [bc]
    ld bc, $ff00
    rst $38
    nop
    nop
    ld c, a
    ld h, h
    db $fd
    ld b, $0b
    rlca
    ld [de], a
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    cp l
    ld h, e
    ccf
    rlca
    ld h, $08
    rrca
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld l, $64
    adc l
    rlca
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $04be
    add hl, bc
    ld c, b
    ld l, h
    ld c, h
    dec bc
    ld l, l
    ld d, h
    ld c, c
    ld h, h
    xor [hl]
    ld l, l
    nop
    nop
    ld e, [hl]
    inc bc
    ld bc, $605f
    inc sp
    cp [hl]
    inc b
    ld b, a
    ld c, h
    inc d
    ld l, [hl]
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $1c
    nop
    inc e
    rlca
    nop
    ld [hl], e
    ld l, h
    ld sp, $0009
    add hl, bc
    ld l, l
    ld l, h
    inc sp
    ld h, h
    inc b
    inc sp
    inc a
    dec b
    inc sp
    dec a
    dec b
    inc sp
    ld a, $05
    ld c, h
    dec hl
    ld l, [hl]
    ld d, l
    sbc [hl]
    pop af
    ld bc, $7108
    ld l, h
    inc sp
    add hl, bc
    nop
    ld c, h
    ld a, [$546e]
    ld c, c
    sub c
    ld c, h
    sbc b
    ld l, a
    ld d, h
    ld c, c
    sub c
    ld b, $07
    ld a, a
    ld l, h
    ld b, $06
    ld a, h
    ld l, h
    sub c
    inc c
    ld [de], a
    nop
    inc c
    inc de
    nop
    ld h, h
    inc b
    dec a
    ld bc, $71a9
    db $db
    ld [hl], c
    nop
    nop
    adc [hl]
    ld l, h
    ld h, [hl]
    ld b, a
    ld c, h
    db $fc
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld h, h
    inc b
    dec a
    inc b
    rla
    ld [hl], d
    ld c, b
    ld [hl], d
    nop
    nop
    and d
    ld l, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, c
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    inc a
    dec b
    inc h
    dec b
    ld hl, sp+$6f
    scf
    ld [hl], b
    nop
    nop
    or [hl]
    ld l, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, e
    ld [hl], b
    ld d, h
    ld c, c
    sub c
    dec a
    dec b
    inc h
    ld b, $81
    ld [hl], b
    or h
    ld [hl], b
    nop
    nop
    jp z, Jump_063_666c

    ld b, a
    ld c, h
    db $d3
    ld [hl], b
    ld d, h
    ld c, c
    sub c
    ld a, $05
    inc h
    rlca
    jr jr_063_6d49

    ld [hl], h
    ld [hl], c
    nop
    nop
    sbc $6c
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [hl]
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld sp, $04be
    add hl, bc
    db $f4
    ld l, h
    ld b, a
    ld c, h
    sub [hl]
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld e, c
    ld [hl], e
    ld d, h
    ld c, c
    sub c
    inc [hl]
    inc e
    nop
    add hl, bc
    inc b
    ld l, l
    inc c
    dec l
    nop
    ld b, e
    inc bc
    ld bc, $0c01
    ld l, $00
    nop
    adc b
    jp nc, $817f

    sub h
    add [hl]
    sub d
    sbc b
    rst $20
    ld c, a
    adc b
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld d, c
    xor b
    or e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or h
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc h
    cp b
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a

jr_063_6d49:
    ld a, a
    xor b
    or d
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
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld d, c
    or e
    and a
    and h
    ld a, a
    and b
    or h
    or e
    and a
    xor [hl]
    or c
    xor b
    or e
    cp b
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and e
    and h
    xor h
    xor [hl]
    xor l
    or d
    or e
    or c
    and b
    or e
    and h
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    sub $a4
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    or e
    or h
    and e
    xor b
    and h
    or d
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    db $f4
    ld a, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    xor l
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    or e
    ld d, l
    xor [hl]
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    ld a, a
    cp b
    and h
    or e
    add sp, $51
    adc [hl]
    adc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor l
    add sp, $7f
    sub e
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    add a
    adc b
    sub l
    add h
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    add e
    xor [hl]
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
    and h
    ld c, a
    and c
    and h
    xor l
    and h
    and l
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    add a
    adc b
    sub l
    add h
    db $e3
    ld d, l
    add c
    add b
    add e
    add [hl]
    add h
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    db $f4
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc e
    ld sp, hl
    or $51
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    and c
    and h
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld c, a
    and h
    or l
    and h
    xor l
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    or d
    add sp, $51
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    add d
    sub h
    sub e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and b
    and c
    xor e
    and h
    ld d, c
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld c, a
    xor [hl]
    and l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
    sub e
    adc h
    ld a, [$7fff]
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    add l
    sub h
    sub c
    sbc b
    ld a, a
    add d
    sub h
    sub e
    sub e
    add h
    sub c
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor h
    xor b
    or d
    or d
    db $f4
    ld c, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld d, l
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    or h
    or c
    xor l
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, l
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
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
    and [hl]
    or c
    and h
    and b
    or e
    and $4f
    adc b
    ld a, a
    and e
    xor b
    or d
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld c, a
    and e
    and h
    and h
    xor a
    add sp, $7f
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld d, c
    xor h
    and b
    xor l
    cp b
    ld a, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    xor b
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and h
    and e
    add sp, $51
    sub d
    or e
    or h
    and e
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    db $e3
    ld c, a
    xor b
    or e
    and h
    or d
    ld a, a
    or e
    and a
    xor [hl]
    or c
    xor [hl]
    or h
    and [hl]
    and a
    xor e
    cp b
    add sp, $57
    nop
    add c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    add sp, $7f
    sub d
    xor [hl]
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and [hl]
    and h
    or e
    ld d, c
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    and l
    and b
    or d
    or e
    and h
    or c
    add sp, $57
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    xor b
    or d
    xor l
    push de
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, l
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    add sp, $7f
    sub c
    and h
    and b
    xor e
    xor e
    cp b
    rst $20
    ld d, a
    nop
    add c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld c, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    and h
    and e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    or d
    ld d, c
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and c
    or h
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and a
    cp b
    ld [hl], l
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    and $7f
    sub [hl]
    and a
    and h
    or [hl]
    db $f4
    ld d, l
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    cp b
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    db $e3
    or h
    xor a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld d, l
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub h
    or c
    or c
    and [hl]
    and [hl]
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    or e
    and h
    and b
    and d
    and a
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld d, l
    xor h
    xor [hl]
    or l
    and h
    or d
    ld [hl], l
    ld d, a
    nop
    add b
    adc h
    sbc b
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld a, a
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    and $7f
    adc l
    xor [hl]
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    add b
    adc h
    sbc b
    ld a, a
    jp hl


    ld a, a
    adc h
    add b
    sbc b
    sbc h
    ld a, a
    adc [hl]
    and a
    db $f4
    ld c, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    xor l
    and h
    or d
    or d
    rst $20
    ld d, a
    nop
    add b
    adc h
    sbc b
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc h
    add b
    sbc b
    sbc h
    ld a, a
    sbc b
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
    or d
    and h
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    and $55
    sub [hl]
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    rst $20
    ld d, a
    nop
    add b
    adc h
    sbc b
    ld a, a
    jp hl


    ld a, a
    adc h
    add b
    sbc b
    sbc h
    ld a, a
    adc [hl]
    and a
    db $f4
    ld c, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    xor l
    and h
    or d
    or d
    rst $20
    ld d, a
    nop
    adc h
    add b
    sbc b
    sbc h
    ld a, a
    adc [hl]
    or h
    or c
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld d, l
    and b
    ld a, a
    or d
    and a
    and b
    xor h
    and h
    add sp, $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    or c
    rst $20
    ld d, c
    add c
    sub h
    add [hl]
    sub d
    sbc b
    call nc, $b87f
    xor [hl]
    or h
    xor l
    and [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    and a
    xor b
    or d
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor e
    and h
    and e
    and [hl]
    and h
    ld a, a
    xor [hl]
    and l
    ld d, c
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or c
    and h
    and b
    xor e
    add sp, $51
    adc b
    or e
    call nc, $a67f
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld d, l
    and b
    and e
    or l
    xor b
    and d
    and h
    add sp, $51
    adc e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld [hl], l
    ld a, a
    add c
    or h
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    and l
    xor b
    or c
    and h
    add sp, $51
    add l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    db $e3
    or e
    cp b
    xor a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    db $e3
    and h
    and l
    and l
    and h
    and d
    db $e3
    ld d, l
    or e
    xor b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    sub [hl]
    and h
    xor e
    xor e
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    and d
    xor e
    and b
    or d
    and a
    ld d, c
    xor [hl]
    and l
    ld a, a
    or e
    and b
    xor e
    and h
    xor l
    or e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $51
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    or h
    or e
    or h
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rrca
    inc b
    dec b
    ld [$0f07], sp
    dec b
    dec b
    ld [$0007], sp
    ld [bc], a
    dec c
    inc bc
    nop
    ei
    ld l, h
    dec c
    ld b, $00
    ei
    ld l, h
    rlca
    inc d
    dec bc
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld e, $6c
    rst $38
    rst $38
    dec h
    inc c
    inc c
    ld b, $00
    rst $38
    rst $38
    or d
    ld [bc], a
    xor d
    ld l, h
    rst $38
    rst $38
    dec h
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    or d
    inc bc
    cp [hl]
    ld l, h
    rst $38
    rst $38
    dec h
    ld b, $04
    ld b, $00
    rst $38
    rst $38
    or d
    inc bc
    jp nc, $ff6c

    rst $38
    ld h, $0e
    ld [$0006], sp
    rst $38
    rst $38
    add d
    ld bc, $6c82
    rst $38
    rst $38
    ld h, $0e
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add d
    ld bc, $6c96
    rst $38
    rst $38
    ld c, b
    ld de, $060b
    nop
    rst $38
    rst $38
    add b
    nop
    and $6c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_063_7652:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
