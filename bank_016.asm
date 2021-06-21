; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    ld [bc], a
    dec c
    ld b, b
    nop
    nop
    ld c, $40
    nop
    nop
    ld bc, $0f02
    ld b, b
    sub c
    sub c
    inc [hl]
    inc c
    nop
    add hl, bc
    inc l
    ld b, b
    ld sp, $002e
    add hl, bc
    ld e, $40
    inc bc
    inc l
    ld b, b
    inc e
    ld c, $0a
    ld [bc], a
    daa
    ld b, b
    inc bc
    inc l
    ld b, b
    ld l, a
    inc bc
    inc d
    ld bc, $6e90
    inc bc
    inc d
    nop
    sub b
    db $76
    inc bc
    ld bc, $0076
    nop
    inc bc
    ld b, h
    ld b, b
    db $76
    inc bc
    ld [bc], a
    halt
    inc bc
    inc bc
    ld b, h
    ld b, b
    ld l, e
    ld b, a
    ld c, h
    rst $00
    ld b, b
    ld d, h
    ld c, c
    ld a, a
    ld de, $7000
    inc bc
    nop
    ld l, c
    inc bc
    cp d
    ld b, b
    ld l, [hl]
    inc bc
    ld [hl], c
    ld l, c
    nop
    push bc
    ld b, b
    ld [de], a
    inc bc
    inc e
    ld bc, $918e
    ld l, e
    ld b, a
    ld sp, $00bc
    add hl, bc
    ld [hl], b
    ld b, b
    inc sp
    cp h
    nop
    ld c, h
    and h
    ld b, e
    ld d, l
    ld c, h
    jr nz, jr_016_40b7

    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld c, c
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    adc [hl]
    ld b, h
    ld d, h
    ld c, c
    db $76
    ld b, $01
    sub c
    ld a, [hl-]
    inc b
    inc [hl]
    ld bc, $42eb
    dec bc
    ld b, e
    nop
    nop
    sub l
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, $43
    ld d, h
    ld c, c
    sub c
    add c
    dec b
    add hl, hl
    ld bc, $41e5
    rla
    ld b, d
    nop
    nop
    xor c
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, b
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld d, e
    dec h
    ld b, e
    ld d, e
    ld b, d
    ld b, e

jr_016_40b7:
    ld d, e
    ld h, d
    ld b, e
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    rrca
    rrca
    dec c
    dec c
    ld b, a
    dec c
    ld b, a
    nop
    add a
    xor h
    and $7f
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    ld d, h
    db $e3
    ld c, a
    add e
    add h
    sub a
    db $f4
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    and $55
    adc h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    or e
    and $51
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add a
    xor h
    and $7f
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    and $51
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or [hl]
    or c
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld d, c
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub c
    sub h
    adc b
    adc l
    sub d
    add sp, $51
    adc b
    and l
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and e
    or c
    and b
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    and c
    and h
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or h
    xor a
    db $e3
    ld c, a
    and [hl]
    or c
    and b
    and e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    db $e3
    ld d, l
    add e
    add h
    sub a
    add sp, $7f
    add l
    xor [hl]
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and $4f
    adc b
    jp nc, $b27f

    or e
    or h
    and e
    cp b
    xor b
    xor l
    and [hl]
    db $e3
    db $e3
    ld d, l
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and e
    xor b
    or d
    or e
    or h
    or c
    and c
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    ld [hl], l
    ld c, a
    adc b
    jp nc, $a57f

    or c
    or h
    or d
    or e
    or c
    and b
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld d, c
    xor [hl]
    or h
    or c
    ld a, a
    xor e
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or c
    and h
    and b
    xor e
    ld c, a
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
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    rst $30
    ei
    or $f6
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    ld d, l
    and b
    and [hl]
    xor [hl]
    add sp, $51
    adc l
    xor [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld c, a
    and c
    or h
    xor b
    xor e
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $51
    adc b
    or e
    call nc, $a07f
    xor e
    or d
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor b
    and l
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
    or d
    or e
    and b
    or e
    or h
    and h
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    and b
    xor l
    cp b
    ld a, a
    xor h
    and h
    and b
    xor l
    xor b
    xor l
    and [hl]
    add sp, $51
    adc b
    or e
    call nc, $a07f
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld c, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    cp b
    ld [hl], l
    ld d, a
    nop
    add a
    xor h
    xor h
    xor h
    ld [hl], l
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    add sp, $57
    nop
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc h
    sbc b
    sub d
    sub e
    add h
    sub c
    sbc b
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    ld c, a
    adc a
    add b
    adc l
    add h
    adc e
    ld a, a
    add d
    add a
    add b
    adc h
    add c
    add h
    sub c
    ld d, a
    nop
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    adc [hl]
    add l
    ld a, a
    add b
    adc e
    adc a
    add a
    ld c, a
    sub l
    adc b
    sub d
    adc b
    sub e
    adc [hl]
    sub c
    sub d
    ld a, a
    sub [hl]
    add h
    adc e
    add d
    adc [hl]
    adc h
    add h
    ld d, a
    nop
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    adc [hl]
    add l
    ld a, a
    add b
    adc e
    adc a
    add a
    ld c, a
    sub c
    add h
    sub d
    add h
    add b
    sub c
    add d
    add a
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld d, c
    sub e
    add a
    add h
    ld a, a
    add b
    sub h
    sub e
    add a
    adc [hl]
    sub c
    adc b
    sub e
    sbc b
    ld a, a
    adc [hl]
    adc l
    ld c, a
    sub e
    add a
    add h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    adc [hl]
    add l
    ld a, a
    add b
    adc e
    adc a
    add a
    ld d, a
    nop
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and h
    or a
    xor a
    xor e
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
    sub c
    sub h
    adc b
    adc l
    sub d
    db $f4
    ld a, a
    or [hl]
    and h
    ld d, c
    or d
    or h
    and e
    and e
    and h
    xor l
    xor e
    cp b
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    and e
    ld c, a
    and b
    xor l
    ld a, a
    xor [hl]
    and e
    and e
    ld a, a
    xor a
    or c
    and h
    or d
    and h
    xor l
    and d
    and h
    add sp, $51
    sub [hl]
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or d
    and d
    and b
    or c
    and h
    and e
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or c
    and b
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    add sp, $51
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
    ld a, a
    and c
    and h
    ld c, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    and a
    xor b
    and e
    and h
    ld a, a
    and b
    ld c, a
    and a
    or h
    and [hl]
    and h
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    rst $20
    ld d, c
    ld [hl], l
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, c
    or [hl]
    and h
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    and d
    xor [hl]
    and e
    and h
    or d
    add sp, $57
    nop
    add b
    ld [hl], l
    ld a, a
    add a
    ld [hl], l
    ld a, a
    add h
    ld [hl], l
    ld a, a
    add b
    ld [hl], l
    ld a, a
    add e
    ld [hl], l
    ld c, a
    add a
    xor h
    xor h
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and b
    or e
    and $51
    adc b
    jp nc, $a37f

    and h
    and d
    xor [hl]
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor h
    and h
    or d
    or d
    and b
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    nop
    dec bc
    ld de, $0102
    inc bc
    rla
    rlca
    ld c, $01
    inc bc
    jr @+$1f

    ld [bc], a
    ld bc, $1903
    ld hl, $0110
    inc bc
    ld a, [de]
    dec c
    ld a, [bc]
    ld bc, $1b03
    dec bc
    ld de, $0301
    inc e
    inc de
    ld b, $01
    inc bc
    ld h, $1b
    ld b, $02
    inc bc
    ld h, $05
    rlca
    inc bc
    ld a, [bc]
    db $10
    inc d
    dec c
    ld bc, $0c0a
    dec d
    dec c
    ld [bc], a
    ld a, [bc]
    inc c
    ld [bc], a
    ld bc, $0b0e
    nop
    ld sp, $0040
    nop
    ld bc, $0a0f
    nop
    ld a, [hl-]
    ld b, b
    nop
    nop
    inc bc
    ld [$0010], sp
    or c
    ld b, b
    db $10
    inc c
    nop
    or h
    ld b, b
    inc c
    ld [de], a
    nop
    or a
    ld b, b
    dec b
    daa
    jr jr_016_4532

    ld b, $00
    rst $38
    rst $38
    ld [bc], a
    ld bc, $4089
    rst $38
    rst $38
    inc a
    inc de
    rrca
    rlca
    nop
    rst $38

jr_016_4532:
    rst $38
    nop
    nop
    ld b, e
    ld b, b
    inc bc
    rlca
    ld a, [hl-]
    dec d
    ld de, $0003
    rst $38
    rst $38
    and b
    nop
    ld h, c
    ld b, b
    adc [hl]
    rlca
    daa
    rrca
    ld [de], a
    ld [bc], a
    ld de, $ffff
    or b
    nop
    db $76
    ld b, b
    adc a
    rlca
    daa
    inc c
    db $10
    rlca
    nop
    rst $38
    rst $38
    add b
    nop
    ld a, [hl]
    ld b, b
    adc a
    rlca
    ld [bc], a
    ld l, l
    ld b, l
    nop
    nop
    ld a, e
    ld b, l
    nop
    nop
    ld bc, $7c01
    ld b, l
    rrca
    adc l
    nop
    ld sp, $0326
    add hl, bc
    ld [hl], a
    ld b, l
    sub c
    adc l
    sub [hl]
    ld b, l
    sub c
    sub c
    ld sp, $0326
    add hl, bc
    add [hl]
    ld b, l
    ld a, d
    inc b
    nop
    ld l, $31
    and b
    ld [bc], a
    ld [$458d], sp
    sub b
    ld a, d
    ld [bc], a
    ld [bc], a
    ld bc, $047a
    ld [bc], a
    ld [bc], a
    sub b
    adc e
    ld e, $78
    ld e, $75
    nop
    nop
    inc d
    adc e
    ld e, $85
    dec de
    nop
    ld a, d
    inc b
    nop
    jr nc, jr_016_4624

    ld a, b
    ld [hl-], a
    inc d
    ld bc, $9149
    ld c, b
    nop
    dec d
    inc bc
    rrca
    add hl, hl
    nop
    ld c, c
    add hl, bc
    cp d
    ld b, l
    sub c
    inc sp
    dec b
    rlca
    inc sp
    and b
    ld [bc], a
    ld [hl], $2e
    nop
    ld [de], a
    inc bc
    dec de
    ld bc, $1e78
    ld [hl], l
    nop
    nop
    rrca
    ld a, d
    ld [bc], a
    ld [bc], a
    jr jr_016_464c

    inc b
    ld [bc], a
    add hl, de
    ld a, h
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld l, c
    nop
    db $10
    ld b, [hl]
    add l
    cpl
    nop
    add [hl]
    adc e
    inc d
    adc [hl]
    sub c
    ld d, e
    add l
    ld b, [hl]
    ld d, e
    xor d
    ld b, [hl]
    ld b, a
    ld c, h
    ld [de], a
    ld b, [hl]
    dec d
    inc bc
    rrca
    add a
    nop
    ld c, c
    sub c
    ld sp, $0326
    add hl, bc
    add hl, bc
    ld b, [hl]
    ld b, a
    ld c, h
    ld b, h
    ld b, [hl]
    dec d
    inc bc
    rrca
    add a
    nop
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld h, l
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld e, c
    ld b, a
    nop
    adc a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e

jr_016_4624:
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $947f
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    or e
    and h
    or a
    or e
    rst $20
    ld d, a
    nop
    adc a
    and b
    or e
    or e
    and h
    or c
    xor l

jr_016_464c:
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
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
    and c
    xor b
    and [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and h
    xor a
    xor e
    xor b
    and d
    and b
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and l
    xor e
    and h
    or [hl]
    ld a, a
    and [hl]
    or c
    and b
    and d
    and h
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    ld d, c
    or c
    and b
    xor b
    xor l
    and c
    xor [hl]
    or [hl]
    db $e3
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    and h
    and e
    ld c, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    add sp, $57
    nop
    nop
    dec b
    add hl, bc
    inc bc
    ld bc, $1603
    add hl, bc
    inc b
    ld bc, $1603
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec de
    inc bc
    inc b
    inc bc
    inc bc
    dec de
    nop
    inc b
    ld bc, $1d03
    nop
    ld b, $03
    ld [bc], a
    nop
    rst $20
    ld b, l
    inc bc
    dec b
    nop
    rst $20
    ld b, l
    ld [bc], a
    inc bc
    ld bc, $45ae
    ld [bc], a
    inc b
    ld bc, $45ea
    nop
    inc bc
    ld bc, $45ed
    nop
    inc b
    ld bc, $45f8
    nop
    ld [bc], a
    dec hl
    ld b, a
    nop
    nop
    ld [hl], $47
    nop
    nop
    ld bc, $3701
    ld b, a
    ld sp, $0327
    add hl, bc
    ld [hl-], a
    ld b, a
    sub c
    adc l
    ld d, c
    ld b, a
    sub c
    sub c
    ld sp, $0327
    add hl, bc
    ld b, c
    ld b, a
    ld a, d
    inc b
    nop
    ld l, $31
    and c
    ld [bc], a
    ld [$4748], sp
    sub b
    ld a, d
    ld [bc], a
    ld [bc], a
    ld bc, $047a
    ld [bc], a
    ld [bc], a
    sub b
    adc e
    ld e, $78
    ld e, $75
    nop
    nop
    inc d
    adc e
    ld e, $85
    dec de
    nop
    ld a, d
    inc b
    nop
    jr nc, jr_016_47df

    ld a, b
    ld [hl-], a
    inc d
    ld bc, $9149
    ld d, c
    nop
    ld c, b
    ld c, b
    nop
    dec d
    nop
    rrca
    add hl, hl
    nop
    ld c, c
    add hl, bc
    ld a, b
    ld b, a
    sub c
    inc sp
    dec b
    rlca
    inc sp
    and c
    ld [bc], a
    ld [hl], $2b
    nop
    inc sp
    ld c, [hl]
    rlca
    ld [de], a
    inc bc
    dec de
    ld bc, $1e78
    ld [hl], l
    nop
    nop
    rrca
    ld a, d
    ld [bc], a
    ld [bc], a
    jr jr_016_480d

    inc b
    ld [bc], a
    add hl, de
    ld a, h
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld l, c
    nop
    cp $47
    add l
    cpl
    nop
    add [hl]
    adc e
    inc d
    adc [hl]
    sub c
    ld l, e
    ld b, a
    inc e
    ld c, $06
    ld a, [de]
    rst $08
    ld b, a
    ld sp, $0327
    add hl, bc
    ret


    ld b, a
    ld sp, $02a1
    ld [$47c0], sp
    ld c, h
    cp b
    ld c, c
    ld d, l
    ld c, h
    push af
    ld c, b
    ld d, h
    ld c, c
    db $76
    inc bc
    ld bc, $4c91
    ld a, h
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    bit 2, h
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld a, [de]
    ld c, e
    ld d, e
    ccf
    ld c, e
    ld b, a
    ld c, h
    and a
    ld c, d

jr_016_47df:
    dec d
    nop
    rrca
    add a
    nop
    ld c, c
    sub c
    ld sp, $0327
    add hl, bc
    rst $30
    ld b, a
    ld b, a
    ld c, h
    reti


    ld c, d
    dec d
    nop
    rrca
    add a
    nop
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld a, [$544a]
    ld c, c
    sub c
    ld e, c
    ld b, a
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e

jr_016_480d:
    and a
    xor b
    or d
    ld c, a
    and d
    and a
    and b
    xor h
    and c
    and h
    or c
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    xor e
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    and b
    xor l
    and h
    xor e
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and e
    and h
    xor a
    xor b
    and d
    or e
    ld d, c
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    or c
    and b
    or [hl]
    xor l
    ld a, a
    and c
    cp b
    ld c, a
    or e
    and a
    and h
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    or d
    add sp, $51
    sub d
    xor e
    xor b
    and e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    xor l
    and h
    xor e
    or d
    ld c, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    xor h
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor a
    xor b
    and d
    or e
    or h
    or c
    and h
    add sp, $51
    sub e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and e
    and h
    or d
    and d
    or c
    xor b
    xor a
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub d
    and d
    xor b
    and h
    xor l
    or e
    xor b
    or d
    or e
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and h
    or a
    and b
    xor h
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld d, c
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor l
    and h
    or [hl]
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    add sp, $57
    nop
    sub c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    db $f4
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    db $f4
    ld c, a
    and d
    or c
    cp b
    xor a
    or e
    xor b
    and d
    ld a, a
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    add sp, $51
    adc b
    or e
    call nc, $ae7f
    and e
    and e
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld c, a
    or [hl]
    and h
    or c
    and h
    xor l
    push de
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    and b
    ld d, l
    xor e
    xor b
    or e
    or e
    xor e
    and h
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
    ld [hl], l
    ld d, c
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
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    add sp, $57
    nop
    add b
    and a
    rst $20
    ld a, a
    add a
    and h
    or c
    and h
    call nc, $a07f
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    and a
    or h
    and [hl]
    and h
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    rst $20
    ld d, c
    adc b
    or e
    call nc, $a17f
    xor b
    and [hl]
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    or e
    or c
    and h
    xor h
    xor [hl]
    or c
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    adc b
    jp nc, $ac7f

    xor [hl]
    or c
    and h
    ld c, a
    and d
    xor [hl]
    xor l
    and d
    and h
    or c
    xor l
    and h
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld d, l
    and c
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    or d
    rst $20
    ld d, c
    add b
    xor l
    and e
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    or d
    xor e
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    or d
    or e
    xor [hl]
    xor l
    and h
    ld a, a
    xor a
    and b
    xor l
    and h
    xor e
    or d
    ld a, a
    or d
    and h
    and h
    xor h
    ld d, c
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    and d
    xor e
    and h
    and b
    or c
    ld c, a
    cp b
    and h
    or e
    ld [hl], l
    ld d, a
    nop
    adc a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $947f
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    or e
    and h
    or a
    or e
    rst $20
    ld d, a
    nop
    adc a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
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
    and c
    xor b
    and [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and h
    xor a
    xor e
    xor b
    and d
    and b
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add b
    ld a, a
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
    and a
    xor b
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    add sp, $51
    add h
    cp b
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    or d
    and d
    and b
    xor l
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or c
    and h
    and b
    add sp, $57
    nop
    nop
    dec b
    add hl, bc
    inc bc
    ld [bc], a
    inc bc
    ld d, $09
    inc b
    ld [bc], a
    inc bc
    ld d, $03
    inc bc
    inc b
    inc bc
    dec de
    inc bc
    inc b
    dec b
    inc bc
    dec de
    nop
    inc b
    ld bc, $1e03
    nop
    ld b, $03
    ld [bc], a
    nop
    push de
    ld b, a
    inc bc
    dec b
    nop
    push de
    ld b, a
    ld [bc], a
    inc bc
    ld bc, $476c
    ld [bc], a
    inc b
    ld bc, $47d8
    nop
    inc bc
    ld bc, $47db
    nop
    inc b
    ld bc, $47e6
    ld [bc], a
    ld b, d
    add hl, bc
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld l, c
    ld b, a
    ld c, [hl]
    rlca
    inc a
    dec b
    rlca
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    xor b
    ld b, a
    rst $38
    rst $38
    ld [bc], a
    jp hl


    ld c, e
    nop
    nop
    rst $30
    ld c, e
    nop
    nop
    ld bc, $f801
    ld c, e
    rrca
    add h
    nop
    ld sp, $0328
    add hl, bc
    di
    ld c, e
    sub c
    adc l
    ld [de], a
    ld c, h
    sub c
    sub c
    ld sp, $0328
    add hl, bc
    ld [bc], a
    ld c, h
    ld a, d
    inc b
    nop
    ld l, $31
    and d
    ld [bc], a
    ld [$4c09], sp
    sub b
    ld a, d
    ld [bc], a
    ld [bc], a
    ld bc, $047a
    ld [bc], a
    ld [bc], a
    sub b
    adc e
    ld e, $78
    ld e, $75
    nop
    nop
    inc d
    adc e
    ld e, $85
    dec de
    nop
    ld a, d
    inc b
    nop
    jr nc, jr_016_4ca0

    ld a, b
    ld [hl-], a
    inc d
    ld bc, $9149
    ld c, b
    nop
    dec d
    ld bc, $290f
    nop
    ld c, c
    add hl, bc
    ld [hl], $4c
    sub c
    inc sp
    dec b
    rlca
    inc sp
    and d
    ld [bc], a
    ld [hl], $2c
    nop
    ld [de], a
    inc bc
    dec de
    ld bc, $1e78
    ld [hl], l
    nop
    nop
    rrca
    ld a, d
    ld [bc], a
    ld [bc], a
    jr jr_016_4cc8

    inc b
    ld [bc], a
    add hl, de
    ld a, h
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld l, c
    nop
    adc h
    ld c, h
    add l
    cpl
    nop
    add [hl]
    adc e
    inc d
    adc [hl]
    sub c
    ld d, e
    ld bc, $534d
    ld h, $4d
    ld b, a
    ld c, h
    adc [hl]
    ld c, h
    dec d
    ld [bc], a
    rrca
    add a
    nop
    ld c, c
    sub c
    ld sp, $0328
    add hl, bc
    add l
    ld c, h
    ld b, a
    ld c, h
    ret nz

    ld c, h
    dec d
    ld [bc], a
    rrca
    add a
    nop
    ld c, c
    sub c
    ld b, a
    ld c, h
    pop hl
    ld c, h
    ld d, h
    ld c, c
    sub c
    ld e, c
    ld b, a
    nop
    adc a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e

jr_016_4ca0:
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $947f
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    or e
    and h
    or a
    or e
    rst $20
    ld d, a
    nop
    adc a
    and b
    or e
    or e
    and h
    or c
    xor l

jr_016_4cc8:
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
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
    and c
    xor b
    and [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and h
    xor a
    xor e
    xor b
    and d
    and b
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and e
    or c
    xor b
    and l
    or e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    or d
    and h
    and b
    ld a, a
    and c
    cp b
    ld a, a
    or e
    or [hl]
    xor b
    or d
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    xor b
    or e
    or d
    ld a, a
    or e
    and h
    xor l
    ld a, a
    or e
    and h
    xor l
    or e
    and b
    and d
    xor e
    and h
    or d
    add sp, $57
    nop
    nop
    dec b
    add hl, bc
    inc bc
    inc bc
    inc bc
    ld d, $09
    inc b
    inc bc
    inc bc
    ld d, $03
    inc bc
    ld b, $03
    dec de
    inc bc
    inc b
    rlca
    inc bc
    dec de
    nop
    inc b
    ld bc, $1f03
    nop
    ld b, $03
    ld [bc], a
    nop
    ld h, e
    ld c, h
    inc bc
    dec b
    nop
    ld h, e
    ld c, h
    ld [bc], a
    inc bc
    ld bc, $4c2a
    ld [bc], a
    inc b
    ld bc, $4c66
    nop
    inc bc
    ld bc, $4c69
    nop
    inc b
    ld bc, $4c74
    nop
    ld [bc], a
    xor l
    ld c, l
    nop
    nop
    cp b
    ld c, l
    nop
    nop
    ld bc, $b901
    ld c, l
    ld sp, $0329
    add hl, bc
    or h
    ld c, l
    sub c
    adc l
    db $d3
    ld c, l
    sub c
    sub c
    ld sp, $0329
    add hl, bc
    jp Jump_016_7a4d


    inc b
    nop
    ld l, $31
    and e
    ld [bc], a
    ld [$4dca], sp
    sub b
    ld a, d
    ld [bc], a
    ld [bc], a
    ld bc, $047a
    ld [bc], a
    ld [bc], a
    sub b
    adc e
    ld e, $78
    ld e, $75
    nop
    nop
    inc d
    adc e
    ld e, $85
    dec de
    nop
    ld a, d
    inc b
    nop
    jr nc, jr_016_4e61

    ld a, b
    ld [hl-], a
    inc d
    ld bc, $9149
    ld c, b
    nop
    dec d
    ld [bc], a
    rrca
    add hl, hl
    nop
    ld c, c
    add hl, bc
    rst $30
    ld c, l
    sub c
    inc sp
    dec b
    rlca
    inc sp
    and e
    ld [bc], a
    ld [hl], $2d
    nop
    ld [de], a
    inc bc
    dec de
    ld bc, $1e78
    ld [hl], l
    nop
    nop
    rrca
    ld a, d
    ld [bc], a
    ld [bc], a
    jr jr_016_4e89

    inc b
    ld [bc], a
    add hl, de
    ld a, h
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld l, c
    nop
    ld c, l
    ld c, [hl]
    add l
    cpl
    nop
    add [hl]
    adc e
    inc d
    adc [hl]
    sub c
    ld d, e
    jp nz, Jump_016_534e

    rst $20
    ld c, [hl]
    ld b, a
    ld c, h
    ld c, a
    ld c, [hl]
    dec d
    ld bc, $870f
    nop
    ld c, c
    sub c
    ld sp, $0329
    add hl, bc
    ld b, [hl]
    ld c, [hl]
    ld b, a
    ld c, h
    add c
    ld c, [hl]
    dec d
    ld bc, $870f
    nop
    ld c, c
    sub c
    ld b, a
    ld c, h
    and d
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld e, c
    ld b, a
    nop
    adc a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e

jr_016_4e61:
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    or d
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $947f
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    or e
    and h
    or a
    or e
    rst $20
    ld d, a
    nop
    adc a
    and b
    or e
    or e
    and h
    or c
    xor l

jr_016_4e89:
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
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
    and c
    xor b
    and [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and h
    xor a
    xor e
    xor b
    and d
    and b
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    ld a, a
    xor b
    or e
    or d
    ld d, c
    xor a
    or c
    and h
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or d
    and b
    or [hl]
    db $e3
    xor e
    xor b
    xor d
    and h
    ld c, a
    and l
    and b
    xor l
    and [hl]
    or d
    add sp, $57
    nop
    nop
    dec b
    add hl, bc
    inc bc
    inc b
    inc bc
    ld d, $09
    inc b
    inc b
    inc bc
    ld d, $03
    inc bc
    ld [$1b03], sp
    inc bc
    inc b
    add hl, bc
    inc bc
    dec de
    nop
    inc b
    ld bc, $2003
    nop
    ld b, $03
    ld [bc], a
    nop
    inc h
    ld c, [hl]
    inc bc
    dec b
    nop
    inc h
    ld c, [hl]
    ld [bc], a
    inc bc
    ld bc, $4deb
    ld [bc], a
    inc b
    ld bc, $4e27
    nop
    inc bc
    ld bc, $4e2a
    nop
    inc b
    ld bc, $4e35
    nop
    ld [bc], a
    ld l, c
    ld c, a
    nop
    nop
    ld l, d
    ld c, a
    nop
    nop
    nop
    sub c
    adc l
    ld l, [hl]
    ld c, a
    sub c
    ld b, a
    ld c, h
    adc c
    ld c, a
    ld d, h
    ld c, c
    inc d
    nop
    inc sp
    ld l, $00
    ld [hl-], a
    adc [hl]
    rlca
    sub c
    ld d, c
    xor h
    ld c, a
    ld d, c
    jp c, Jump_016_514f

    inc h
    ld d, b
    ld d, e
    ld [hl], d
    ld d, b
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld c, a
    xor a
    or c
    and h
    or d
    and h
    xor l
    and d
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
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
    or c
    xor [hl]
    xor [hl]
    xor h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $ad55
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld c, a
    xor h
    cp b
    or d
    or e
    xor b
    and d
    and b
    xor e
    ld a, a
    or b
    or h
    and b
    xor e
    xor b
    or e
    cp b
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    add sp, $51
    adc b
    or e
    ld a, a
    and l
    and h
    and h
    xor e
    or d
    ld a, a
    or d
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    and h
    or e
    and a
    and h
    or c
    and h
    and b
    xor e
    ld a, a
    and h
    or l
    and h
    xor l
    add sp, $57
    nop
    add b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    xor h
    and c
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor d
    xor b
    xor l
    and [hl]
    or d
    add sp, $51
    adc e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    cp b
    or c
    and b
    xor h
    xor b
    and e
    or d
    db $f4
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    xor l
    or d
    or e
    and b
    xor l
    and d
    and h
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and h
    xor a
    xor e
    xor b
    and d
    and b
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    nop
    add hl, bc
    dec c
    ld a, [bc]
    dec b
    inc bc
    ld d, $0f
    inc bc
    inc bc
    inc bc
    rla
    rrca
    inc b
    inc b
    inc bc
    rla
    inc bc
    rrca
    inc bc
    inc bc
    jr jr_016_50b2

    db $10
    inc b
    inc bc

jr_016_50b2:
    jr jr_016_50c9

    inc bc
    inc bc
    inc bc
    add hl, de
    dec d
    inc b
    inc b
    inc bc
    add hl, de
    jr jr_016_50ce

    inc bc
    inc bc
    ld a, [de]
    jr jr_016_50d4

    inc b
    inc bc
    ld a, [de]
    nop
    ld a, [de]

jr_016_50c9:
    inc bc
    ld [bc], a
    nop
    add [hl]
    ld c, a

jr_016_50ce:
    inc bc
    dec b
    nop
    add [hl]
    ld c, a
    inc bc

jr_016_50d4:
    ld [$8600], sp
    ld c, a
    inc bc
    dec bc
    nop
    add [hl]
    ld c, a
    inc bc
    ld c, $00
    add [hl]
    ld c, a
    inc bc
    ld de, $8600
    ld c, a
    ld [$0002], sp
    add [hl]
    ld c, a
    ld [$0005], sp
    add [hl]
    ld c, a
    ld [$0008], sp
    add [hl]
    ld c, a
    ld [$000b], sp
    add [hl]
    ld c, a
    ld [$000e], sp
    add [hl]
    ld c, a
    ld [$0011], sp
    add [hl]
    ld c, a
    dec c
    ld [bc], a
    nop
    add [hl]
    ld c, a
    dec c
    ld de, $8600
    ld c, a
    ld [de], a
    ld [bc], a
    nop
    add [hl]
    ld c, a
    ld [de], a
    dec b
    nop
    add [hl]
    ld c, a
    ld [de], a
    ld [$8600], sp
    ld c, a
    ld [de], a
    dec bc
    nop
    add [hl]
    ld c, a
    ld [de], a
    ld c, $00
    add [hl]
    ld c, a
    ld [de], a
    ld de, $8600
    ld c, a
    jr jr_016_5131

    nop
    add [hl]

jr_016_5131:
    ld c, a
    jr jr_016_5139

    nop
    add [hl]
    ld c, a
    jr jr_016_5141

jr_016_5139:
    nop
    add [hl]
    ld c, a
    jr jr_016_5149

    nop
    add [hl]
    ld c, a

jr_016_5141:
    jr jr_016_5151

    nop
    add [hl]
    ld c, a
    jr jr_016_5159

    nop

jr_016_5149:
    add [hl]
    ld c, a
    inc bc
    ld a, [hl-]
    dec bc
    rlca

Jump_016_514f:
    inc bc
    nop

jr_016_5151:
    rst $38
    rst $38
    and b
    nop
    ld a, l
    ld c, a
    dec b
    rlca

jr_016_5159:
    add hl, hl
    ld de, $0212
    ld de, $ffff
    nop
    nop
    add b
    ld c, a
    dec b
    rlca
    cpl
    rla
    rrca
    rlca
    nop
    rst $38
    rst $38
    or b
    nop
    add e
    ld c, a
    dec b
    rlca
    ld [bc], a
    add b
    ld d, c
    nop
    nop
    add c
    ld d, c
    nop
    nop
    ld bc, $8502
    ld d, c
    sub c
    adc l
    sub d
    ld d, c
    sub c
    inc de
    ld b, $01
    adc e
    ld d, c
    sub b
    ld [hl], d
    inc b
    inc bc
    rlca
    ld l, a
    inc b
    sub b
    ld l, c
    inc b
    ld l, a
    ld d, d
    add l
    dec c
    nop
    adc e
    inc a
    add l
    jr nz, jr_016_519e

jr_016_519e:
    adc e
    ld e, $85
    ld hl, $8b00
    ld e, $85
    ld [hl+], a
    nop
    adc e
    ld e, $76
    inc b
    nop
    ld b, a
    ld c, h
    ld a, b
    ld d, d
    ld d, h
    ld c, c
    ld l, c
    inc b
    ld [hl], h
    ld d, d
    ld b, a
    ld c, h
    ld a, [$8552]
    ld bc, $8600
    ld [hl], $0c
    nop
    ld c, h
    ld de, $5453
    ld c, c
    ld l, c
    inc b
    db $76
    ld d, d
    inc d
    nop
    rrca
    dec a
    nop
    sub c
    ld l, e
    ld b, a
    inc e
    ld c, $06
    ld a, [de]
    rst $18
    ld d, c
    ld c, h
    ld de, $5453
    ld c, c
    sub c
    ld c, h
    ld e, a
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    inc e
    ld c, $06
    ld a, [de]
    dec bc
    ld d, d
    inc [hl]
    inc c
    nop
    add hl, bc
    dec b
    ld d, d
    ld sp, $002e
    add hl, bc
    rst $38
    ld d, c
    ld c, h
    db $ed
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, b
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, l
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    bit 2, h
    ld d, h
    ld c, c
    ld [hl-], a
    adc a
    rlca
    sub c
    ld l, e
    ld b, a
    inc e
    ld c, $06
    ld a, [de]
    ld l, $52
    ld sp, $002e
    add hl, bc
    jr z, jr_016_5274

    ld c, h
    ld c, a
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    bit 2, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, c
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld sp, $0704
    add hl, bc
    ld b, c
    ld d, d
    inc e
    ld c, $06
    ld a, [de]
    ld b, a
    ld d, d
    ld c, h
    or [hl]
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    reti


    ld d, a
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld sp, $0704
    add hl, bc
    ld e, d
    ld d, d
    inc e
    ld c, $06
    ld a, [de]
    ld h, b
    ld d, d
    ld c, h
    ld c, $58
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec l
    ld e, b
    ld d, h
    rrca
    daa
    nop
    ld c, c
    sub c
    ld d, e
    ld c, b
    ld e, b
    ld d, e
    add [hl]
    ld e, b
    dec c
    dec c
    ld c, $01
    ld b, a

jr_016_5274:
    inc c
    ld b, a
    dec c
    ld b, a
    nop
    add e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    xor h
    xor [hl]
    and e
    xor b
    and l
    xor b
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    add e
    add h
    sub a
    add sp, $51
    adc b
    ld a, a
    and b
    and e
    and e
    and h
    and e
    ld a, a
    and b
    xor l
    ld c, a
    xor [hl]
    xor a
    or e
    xor b
    xor [hl]
    xor l
    and b
    xor e
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld d, c
    or e
    xor [hl]
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld c, a
    and e
    and b
    or e
    and b
    add sp, $51
    adc b
    or e
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    or d
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    or b
    or h
    and h
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    or e
    and a
    and h
    cp b
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    add sp, $57
    nop
    ld d, d
    call nc, Call_016_547f
    add e
    add h
    sub a
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or h
    xor a
    and [hl]
    or c
    and b
    and e
    and h
    and e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld d, l
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    and h
    and e
    add sp, $51
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor h

Jump_016_534e:
    and b
    xor l
    cp b
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    and h
    or a
    xor b
    or d
    or e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    or l
    and b
    or c
    xor b
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    and $51
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    and b
    and d
    and a
    xor b
    and h
    or l
    and h
    xor h
    and h
    xor l
    or e
    rst $20
    ld d, c
    adc b
    sub $a4
    ld a, a
    or d
    and h
    or e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    or c
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and a
    and b
    xor l
    and e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    add sp, $51
    add l
    and h
    and h
    xor e
    ld a, a
    and l
    or c
    and h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld c, a
    xor b
    or e
    ld a, a
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    and b
    or c
    and h
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    rst $30
    ei
    or $f6
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    ld d, l
    xor [hl]
    xor e
    and e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld c, a
    or [hl]
    and a
    cp b
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld d, l
    and c
    or h
    xor b
    xor e
    or e
    db $e3
    db $e3
    xor [hl]
    or c
    ld a, a
    and c
    cp b
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor h
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a

Call_016_544f:
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b

Jump_016_5467:
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
    sub c
    sub h
    adc b
    adc l
    sub d
    and $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b

Call_016_547f:
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    and $51
    sub e
    and a
    and b
    or e
    call nc, $a87f
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    and h
    ld c, a
    xor l
    and h
    or [hl]
    or d
    rst $20
    ld d, c
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor b
    xor l
    or l
    and h
    or d
    or e
    xor b
    and [hl]
    and b
    or e
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
    adc [hl]
    or h
    or c
    ld a, a
    xor b
    xor l
    or l
    and h
    or d
    or e
    xor b
    and [hl]
    and b
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and a
    and h
    xor e
    xor a
    db $f4
    ld a, a
    xor b
    or d
    ld d, c
    and [hl]
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    or d
    ld a, a
    xor b
    xor l
    or d
    xor b
    and [hl]
    and a
    or e
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld c, a
    or e
    xor [hl]
    ld a, a
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
    and c
    or h
    xor b
    xor e
    or e
    ld d, c
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    and b
    and c
    xor b
    or e
    and b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and e
    and e
    ld a, a
    xor a
    and b
    or e
    db $e3
    ld c, a
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    and e
    or c
    and b
    or [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    or [hl]
    and b
    xor e
    xor e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub c
    sub h
    adc b
    adc l
    sub d
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor d
    and h
    cp b
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or h
    xor l
    or c
    and b
    or l
    and h
    xor e
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    cp b
    ld d, l
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    sub c
    sub h
    adc b
    adc l
    sub d
    and $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    or l
    and h
    or c
    cp b
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
    ld a, a
    or e
    and a
    and h
    ld d, c
    and e
    or c
    and b
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    and b
    xor e
    xor e
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $51
    add a
    xor h
    xor h
    ld [hl], l
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    xor h
    and h
    and b
    xor l
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld d, l
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    xor h
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
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
    and d
    and b
    or h
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    or c
    cp b
    xor a
    or e
    xor b
    and d
    ld d, c
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    add sp, $51
    sub [hl]
    and h
    sub $a4
    ld a, a
    and l
    xor [hl]
    and d
    or h
    or d
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    or d
    or e
    or h
    and e
    xor b
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $57
    nop
    add b
    and d
    and d
    xor [hl]
    or c
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld [hl], l
    ld d, c
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    ld c, a
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld d, c
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    add d
    adc [hl]
    adc h
    ld c, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and c
    or h
    xor b
    xor e
    or e
    add sp, $51
    adc b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    xor h
    and h
    and b
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld c, a
    xor e
    xor b
    xor l
    xor d
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld c, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld d, c
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    ld c, a
    xor l
    xor [hl]
    or [hl]
    and $51
    sub e
    and a
    and h
    ld a, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    cp b
    ld c, a
    and e
    and h
    and h
    xor a
    and h
    xor l
    or d
    ld [hl], l
    ld d, a
    nop
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    adc [hl]
    add l
    ld a, a
    add b
    adc e
    adc a
    add a
    ld d, c
    add h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    sbc b
    and h
    and b
    or c
    ld a, a
    rst $30
    or $57
    nop
    adc h
    cp b
    or d
    or e
    and h
    or c
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    adc l
    and b
    xor h
    and h
    sbc h
    ld a, a
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld d, c
    add b
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld hl, sp-$04
    ld c, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    or d
    and h
    and h
    xor h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    cp b
    and h
    or e
    add sp, $57
    nop
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
    xor a
    or c
    xor b
    xor l
    or e
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor a
    and a
    xor [hl]
    or e
    xor [hl]
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub c
    add h
    sub d
    add h
    add b
    sub c
    add d
    add a
    ld d, c
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ldh [$92], a
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    and h
    or c
    db $f4
    ld c, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$6e
    adc b
    adc e
    adc d
    sub e
    sub c
    add h
    add h
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    and b
    and d
    and b
    and e
    and h
    xor h
    xor b
    and d
    ld a, a
    and c
    xor [hl]
    xor [hl]
    xor d
    or d
    add sp, $51
    add b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    sub c
    or h
    xor b
    xor l
    or d
    ld [hl], l
    ld c, a
    adc h
    cp b
    or d
    or e
    and h
    or c
    xor b
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld d, l
    add b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    or d
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $03
    ld d, $07
    inc bc
    ld b, $03
    ld d, $00
    inc bc
    dec b
    ld b, $00
    ld l, h
    ld d, d
    inc b
    inc bc
    nop
    inc [hl]
    ld d, d
    ld bc, $0007
    ld c, l
    ld d, d
    inc bc
    inc a
    add hl, bc
    ld [$0007], sp
    rst $38
    rst $38
    sub b
    nop
    push hl
    ld d, c
    rst $38
    rst $38
    inc a
    ld b, $09
    ld [bc], a
    ld [de], a
    rst $38
    rst $38
    sub b
    nop
    inc d
    ld d, d
    rst $38
    rst $38
    inc a
    add hl, bc
    ld b, $07
    nop
    rst $38
    rst $38
    sub b
    nop
    pop de
    ld d, c
    inc b
    rlca
    nop
    nop
    xor [hl]
    ld bc, $0196
    ld a, h
    ld bc, $018a
    ld d, e
    inc hl
    ld e, c
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and h
    xor a
    xor e
    xor b
    and d
    and b
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    nop
    inc b
    add hl, bc
    inc bc
    dec b
    inc bc
    rla
    add hl, bc
    inc b
    dec b
    inc bc
    rla
    ld bc, $0103
    inc bc
    ld hl, $0401
    ld [bc], a
    inc bc
    ld hl, $0200
    ld bc, $0002
    jr nz, jr_016_59bf

    ld bc, $0005
    jr nz, jr_016_59c4

    inc b
    ld d, h
    ld a, [bc]
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $1800
    ld e, c
    sub h
    rlca
    ld d, h
    ld a, [bc]
    add hl, bc
    ld bc, $ff00
    rst $38
    ld bc, $1a00
    ld e, c
    sub l
    rlca
    ld d, h
    ld [$0106], sp
    nop
    rst $38
    rst $38
    ld bc, $1c00
    ld e, c
    sub [hl]
    rlca
    ld d, h
    ld [$0109], sp
    nop
    rst $38
    rst $38
    ld bc, $1e00
    ld e, c
    sub a
    rlca
    nop
    nop
    jr nz, @+$03

    jr nz, @+$03

    jr nz, jr_016_59a9

    ld a, c

jr_016_59a9:
    ld bc, $ad53
    ld e, c
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and h
    xor a
    xor e
    xor b
    and d
    and b
    ld a, a
    xor [hl]
    and l
    ld c, a

jr_016_59bf:
    and b
    xor l
    ld a, a
    and b
    xor l

jr_016_59c4:
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    nop
    inc b
    add hl, bc
    inc bc
    dec b
    inc bc
    jr jr_016_59e4

    inc b
    dec b
    inc bc
    jr jr_016_59e1

    inc bc

jr_016_59e1:
    ld bc, $2203

jr_016_59e4:
    ld bc, $0204
    inc bc
    ld [hl+], a
    nop
    ld [bc], a
    ld bc, $0002
    xor d
    ld e, c
    ld bc, $0005
    xor d
    ld e, c
    inc b
    ld d, h
    ld a, [bc]
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $a200
    ld e, c
    sbc b
    rlca
    ld d, h
    ld a, [bc]
    add hl, bc
    ld bc, $ff00
    rst $38
    ld bc, $a400
    ld e, c
    sbc c
    rlca
    ld d, h
    ld [$0106], sp
    nop
    rst $38
    rst $38
    ld bc, $a600
    ld e, c
    sbc d
    rlca
    ld d, h
    ld [$0109], sp
    nop
    rst $38
    rst $38
    ld bc, $a800
    ld e, c
    sbc e
    rlca
    nop
    nop
    sub [hl]
    ld bc, $015f
    add e
    ld bc, $0184
    ld d, e
    scf
    ld e, d
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and h
    xor a
    xor e
    xor b
    and d
    and b
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    nop
    inc b
    add hl, bc
    inc bc
    dec b
    inc bc
    add hl, de
    add hl, bc
    inc b
    dec b
    inc bc
    add hl, de
    ld bc, $0103
    inc bc
    inc hl
    ld bc, $0204
    inc bc
    inc hl
    nop
    ld [bc], a
    ld bc, $0002
    inc [hl]
    ld e, d
    ld bc, $0005
    inc [hl]
    ld e, d
    inc b
    ld d, h
    ld a, [bc]
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $2c00
    ld e, d
    sbc h
    rlca
    ld d, h
    ld a, [bc]
    add hl, bc
    ld bc, $ff00
    rst $38
    ld bc, $2e00
    ld e, d
    sbc l
    rlca
    ld d, h
    ld [$0106], sp
    nop
    rst $38
    rst $38
    ld bc, $3000
    ld e, d
    sbc [hl]
    rlca
    ld d, h
    ld [$0109], sp
    nop
    rst $38
    rst $38
    ld bc, $3200
    ld e, d
    sbc a
    rlca
    nop
    nop
    xor [hl]
    ld bc, $0120
    jr nz, jr_016_5abd

    ld a, d

jr_016_5abd:
    ld bc, $c153
    ld e, d
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and h
    xor a
    xor e
    xor b
    and d
    and b
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    nop
    inc b
    add hl, bc
    inc bc
    dec b
    inc bc
    ld a, [de]
    add hl, bc
    inc b
    dec b
    inc bc
    ld a, [de]
    ld bc, $0103
    inc bc
    inc h
    ld bc, $0204
    inc bc
    inc h
    nop
    ld [bc], a
    ld bc, $0002
    cp [hl]
    ld e, d
    ld bc, $0005
    cp [hl]
    ld e, d
    inc b
    ld d, h
    ld a, [bc]
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $b600
    ld e, d
    and b
    rlca
    ld d, h
    ld a, [bc]
    add hl, bc
    ld bc, $ff00
    rst $38
    ld bc, $b800
    ld e, d
    and c
    rlca
    ld d, h
    ld [$0106], sp
    nop
    rst $38
    rst $38
    ld bc, $ba00
    ld e, d
    and d
    rlca
    ld d, h
    ld [$0109], sp
    nop
    rst $38
    rst $38
    ld bc, $bc00
    ld e, d
    and e
    rlca
    nop
    nop
    nop
    nop
    inc bc
    add hl, bc
    add hl, bc
    inc bc
    inc bc
    dec e
    add hl, bc
    ld a, [bc]
    inc b
    inc bc
    dec e
    dec d
    ld de, $0302
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    add hl, bc
    inc bc
    inc bc
    ld e, $05
    ld a, [bc]
    inc b
    inc bc
    ld e, $0b
    ld de, $0304
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    add hl, bc
    inc bc
    inc bc
    rra
    rlca
    ld a, [bc]
    inc b
    inc bc
    rra
    dec c
    ld de, $0306
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    add hl, bc
    inc bc
    inc bc
    jr nz, jr_016_5b93

    ld a, [bc]
    inc b
    inc bc
    jr nz, jr_016_5b9e

jr_016_5b93:
    ld de, $0308
    dec de
    nop
    nop
    nop
    nop
    nop
    db $e4
    inc b

jr_016_5b9e:
    ld e, $01
    or l
    ld e, h
    dec de
    ld e, l
    nop
    nop
    xor b
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    ld sp, $545d
    ld c, c
    sub c
    dec h
    dec b
    inc l
    ld [bc], a
    dec bc
    ld e, h
    ld e, a
    ld e, h
    nop
    nop
    cp h
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, h
    ld e, h
    ld d, h
    ld c, c
    sub c
    dec [hl]
    dec b
    inc l
    ld [de], a
    ld [hl], e
    ld e, l
    xor [hl]
    ld e, l
    nop
    nop
    ret nc

    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    ret


    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, d
    inc b
    jr nc, jr_016_5be1

    dec d
    ld e, [hl]
    ld h, b
    ld e, [hl]
    nop

jr_016_5be1:
    nop
    db $e4
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, a
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc b
    jr nc, @+$09

    xor a
    ld e, [hl]
    db $f4
    ld e, [hl]
    nop
    nop
    ld hl, sp+$5b
    ld h, [hl]
    ld b, a
    ld c, h
    db $fc
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    inc b
    ld bc, $0131
    ld [de], a
    ld bc, $010c
    ld d, e
    add hl, hl
    ld e, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and a
    and h
    and b
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    add b
    sbc c
    add b
    adc e
    add h
    add b
    db $f4
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    adc e
    and h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    and h
    and h
    ld c, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, l
    and h
    xor l
    xor [hl]
    or h
    and [hl]
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
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor [hl]
    and a
    db $f4
    ld a, a
    xor [hl]
    and a
    rst $20
    ld d, a
    nop
    add b
    xor e
    xor e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld c, a
    adc b
    sub $a4
    ld a, a
    and e
    and h
    and d
    xor b
    and e
    and h
    and e
    add sp, $51
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    xor e
    and h
    and b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or c
    xor [hl]
    and b
    xor h
    ld a, a
    and l
    and b
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or [hl]
    xor b
    and e
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    and h
    and b
    or c
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $51
    sub e
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
    xor h
    cp b
    ld c, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or c
    xor b
    or l
    and b
    xor e
    rst $20
    ld d, a
    nop
    sub h
    and [hl]
    and a
    add sp, $7f
    adc h
    cp b
    ld a, a
    xor a
    xor [hl]
    xor [hl]
    or c
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, a
    nop
    add h
    or l
    and h
    or c
    cp b
    ld a, a
    add l
    or c
    xor b
    and e
    and b
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or c
    xor [hl]
    and b
    or c
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and e
    and h
    and h
    xor a
    ld c, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    and b
    or l
    and h
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld c, a
    or d
    or h
    or c
    xor a
    or c
    xor b
    or d
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and h
    and h
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld a, a
    adc b
    jp nc, $a17f

    and h
    and b
    or e
    and h
    xor l
    ld c, a
    and c
    xor b
    and [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    xor l
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    and c
    or h
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    db $e3
    ld d, l
    sub e
    add b
    adc b
    adc e
    add sp, $51
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sbc c
    sub h
    add c
    add b
    sub e
    call nc, $927f
    sub h
    adc a
    add h
    sub c
    sub d
    adc [hl]
    adc l
    adc b
    add d
    ld c, a
    xor d
    and h
    and h
    xor a
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor l
    and [hl]
    ld d, l
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    jp nc, $b27f

    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld c, a
    or h
    xor a
    or d
    and h
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    xor l
    ld a, a
    or [hl]
    and h
    and h
    xor d
    and h
    xor l
    and e
    or d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld d, c
    or c
    xor [hl]
    and b
    or c
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and e
    and h
    and h
    xor a
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    and b
    or l
    and h
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    xor b
    or e
    call nc, $ab7f
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    and b
    ld c, a
    and d
    and b
    or l
    and h
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    db $f4
    ld c, a
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
    ld d, l
    or d
    and d
    and b
    or c
    cp b
    add sp, $57
    nop
    add l
    adc e
    add b
    sub d
    add a
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a54f
    xor b
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    or d
    ld d, l
    or h
    xor a
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and d
    and b
    or l
    and h
    add sp, $57
    nop
    sub h
    adc l
    adc b
    adc [hl]
    adc l
    ld a, a
    add d
    add b
    sub l
    add h
    ld d, a
    nop
    nop
    inc b
    inc de
    dec b
    inc bc
    inc bc
    ld h, $21
    inc bc
    inc b
    inc bc
    ld h, $1f
    ld de, $0801
    ld b, $03
    ld de, $0a04
    ld bc, $0000
    add hl, bc
    dec l
    add hl, bc
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    or d
    ld [bc], a
    call nz, $ff5b
    rst $38
    dec hl
    rra
    dec d
    ld [$ff00], sp
    rst $38
    sub d
    inc bc
    sbc h
    ld e, e
    rst $38
    rst $38
    dec l
    rrca
    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    or d
    ld bc, $5bb0
    rst $38
    rst $38
    ld a, [hl-]
    add hl, de
    dec c
    rlca
    nop
    rst $38
    rst $38
    add d
    inc b
    db $ec
    ld e, e
    rst $38
    rst $38
    ld a, [hl-]
    add hl, de
    ld c, $09
    nop
    rst $38
    rst $38
    add d
    inc b
    ret c

    ld e, e
    rst $38
    rst $38
    ld d, h
    db $10
    ld [de], a
    ld bc, $ff00
    rst $38
    ld bc, $0000
    ld e, h
    ld e, d
    ld b, $00
    ld b, $08
    ld bc, $ff00
    rst $38
    ld bc, $0200
    ld e, h
    ld e, e
    ld b, $54
    dec d
    ld [$0001], sp
    rst $38
    rst $38
    ld bc, $0400
    ld e, h
    ld e, h
    ld b, $54
    dec h
    db $10
    ld bc, $ff00
    rst $38
    ld bc, $0600
    ld e, h
    ld e, l
    ld b, $00
    nop
    push hl
    inc b
    ld e, $02
    ld c, d
    ld h, c
    ld [hl], e
    ld h, c
    nop
    nop
    jp nc, Jump_016_665f

    ld b, a
    ld c, h
    add c
    ld h, c
    ld d, h
    ld c, c
    sub c
    and $04
    ld e, $03
    or b
    ld h, c
    rla
    ld h, d
    nop
    nop
    and $5f
    ld h, [hl]
    ld b, a
    ld c, h
    jr nc, jr_016_604d

    ld d, h
    ld c, c
    sub c
    ld h, $05
    inc l
    inc bc
    dec e
    ld h, b
    ld l, d
    ld h, b
    nop
    nop
    ld a, [$665f]
    ld b, a
    ld c, h
    ld [hl], e
    ld h, b
    ld d, h
    ld c, c
    sub c
    daa
    dec b
    inc l
    inc b
    cp a
    ld h, b
    db $dd
    ld h, b
    nop
    nop
    ld c, $60
    ld h, [hl]
    ld b, a
    ld c, h
    ei
    ld h, b
    ld d, h
    ld c, c
    sub c
    rst $20
    ld bc, $0133
    inc c
    ld c, $00
    nop
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
    ld c, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc b
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    or d
    and b
    or [hl]
    ld d, l
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]

jr_016_604d:
    xor l
    add sp, $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    or d
    and a
    cp b
    add sp, $4f
    adc e
    and h
    or e
    call nc, $a17f
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, a
    nop
    sub h
    or h
    or c
    and [hl]
    and [hl]
    and a
    ld [hl], l
    ld d, a
    nop
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor h
    xor b
    xor l
    and e
    ld a, a
    xor b
    or e
    ld c, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld d, l
    or d
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    ld a, a
    and a
    or h
    xor l
    and [hl]
    or c
    cp b
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
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
    rst $20
    ld c, a
    add b
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    ld c, a
    and l
    and h
    xor b
    or d
    or e
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor b
    or l
    and h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    db $f4
    ld a, a
    or e
    xor [hl]
    xor [hl]
    db $f4
    ld a, a
    xor b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    ret nc

    ld a, a
    xor e
    xor b
    xor d
    and h
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $af7f
    xor e
    and h
    xor l
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld c, a
    or c
    xor [hl]
    xor [hl]
    xor h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    call nc, $b37f
    and a
    and h
    or c
    and h
    and $51
    adc e
    and h
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    ld [hl], l
    ld c, a
    add [hl]
    xor [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc b
    jp nc, $a37f

    and h
    db $e3
    ld d, l
    xor e
    xor b
    or c
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor c
    xor [hl]
    cp b
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor l
    and e
    or h
    and d
    or e
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    add sp, $51
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
    xor h
    cp b
    ld a, a
    and l
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld d, l
    or c
    and h
    and b
    xor e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
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
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor b
    xor e
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and b
    xor l
    xor l
    xor [hl]
    or h
    xor l
    and d
    and h
    ld a, a
    xor h
    cp b
    ld d, l
    or d
    or e
    or h
    and e
    cp b
    ld a, a
    and l
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    or d
    add sp, $51
    adc b
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and c
    and h
    db $e3
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    add sp, $57
    nop
    nop
    dec b
    inc bc
    inc bc
    rlca
    inc bc
    ld d, $0b
    inc bc
    ld [$1603], sp
    rlca
    dec c
    ld bc, $2503
    ld hl, $0203
    inc bc
    dec h
    dec de
    ld de, $0301
    daa
    nop
    nop
    rlca
    dec l
    inc c
    db $10
    add hl, bc
    nop
    rst $38
    rst $38
    or d
    inc bc
    xor $5f
    rst $38
    rst $38
    dec l
    ld [de], a
    inc d
    ld b, $00
    rst $38
    rst $38
    or d
    inc bc
    ld [bc], a
    ld h, b
    rst $38
    rst $38
    dec hl
    add hl, bc
    inc c
    ld [$ff00], sp
    rst $38
    sub d
    inc bc
    add $5f
    rst $38
    rst $38
    dec hl
    ld [hl+], a
    ld [$0007], sp
    rst $38
    rst $38
    sub d
    inc bc
    jp c, $ff5f

    rst $38
    ld d, h
    dec bc
    db $10
    ld bc, $ff00
    rst $38
    ld bc, $1600
    ld h, b
    ld e, [hl]
    ld b, $5a
    inc h
    dec bc
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [de]
    ld h, b
    rst $38
    rst $38
    ld d, h
    ld e, $14
    ld bc, $ff00
    rst $38
    ld bc, $1800
    ld h, b
    ld e, a
    ld b, $00
    ld bc, $0d02
    ld h, e
    inc [hl]
    ld e, c
    nop
    add hl, bc
    add hl, de
    ld h, e
    inc e
    dec bc
    ld b, $05
    inc e
    ld h, e
    ld l, [hl]
    rlca
    sub b
    ld l, a
    rlca
    sub b
    ld l, e
    add h
    add e
    nop
    ld e, l
    add e
    ld h, h
    ld e, a
    ld l, [hl]
    rlca
    ld [hl], $59
    nop
    ld h, b
    sub c
    ld c, b
    dec b
    dec de
    ld bc, $636e
    push de
    ld h, e
    nop
    nop
    ld a, [hl-]
    ld h, e
    ld h, [hl]
    ld b, a
    ld c, h
    ldh a, [$63]
    ld d, h
    ld c, c
    sub c
    ld e, e
    dec b
    inc e
    ld bc, $6444
    ld h, a
    ld h, h
    nop
    nop
    ld c, [hl]
    ld h, e
    ld h, [hl]
    ld b, a
    ld c, h
    adc b
    ld h, h
    ld d, h
    ld c, c
    sub c
    ld l, c
    dec b
    inc e
    rrca
    or [hl]
    ld h, h
    rlca
    ld h, l
    nop
    nop
    ld h, d
    ld h, e
    ld h, [hl]
    ld b, a
    ld c, h
    dec hl
    ld h, l
    ld d, h
    ld c, c
    sub c
    ld b, c
    ld bc, $0110
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld c, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $51
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or d
    or e
    cp b
    xor e
    and h
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld d, l
    or [hl]
    and a
    xor [hl]
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    add sp, $51
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
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
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
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    and e
    and b
    cp c
    cp c
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    cp b
    xor e
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    cp b
    xor e
    and h
    ld c, a
    xor b
    or d
    ld a, a
    or d
    or e
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    and l
    or h
    xor e
    db $f4
    ld a, a
    adc b
    ld a, a
    and b
    and e
    xor h
    xor b
    or e
    add sp, $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor d
    and h
    and h
    xor a
    ld c, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $a87f

    xor l
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    add sp, $4f
    add d
    and b
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    or h
    xor l
    and e
    and $57
    nop
    add b
    or [hl]
    or [hl]
    db $f4
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    add sp, $57
    nop
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
    or e
    or c
    and b
    xor b
    xor l
    ld c, a
    and c
    cp b
    ld a, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    adc b
    ld d, l
    xor b
    xor h
    xor a
    or c
    xor [hl]
    or l
    and h
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc b
    ld c, a
    xor e
    xor b
    xor d
    and h
    and e
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld d, l
    adc b
    ret nc

    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $b67f
    and a
    and b
    or e
    ld a, a
    and b
    ld a, a
    or c
    and h
    and b
    xor e
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and e
    xor [hl]
    and h
    or d
    add sp, $57
    nop
    adc b
    ret nc

    ld a, a
    or c
    and b
    or e
    and a
    and h
    or c
    ld a, a
    xor a
    and h
    or e
    ld a, a
    xor h
    cp b
    ld c, a
    and c
    and b
    and c
    xor b
    and h
    or d
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    and b
    ld a, a
    or [hl]
    and h
    and h
    xor d
    db $f4
    ld c, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    call nc, $a47f
    and e
    and [hl]
    and h
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, a
    nop
    nop
    ld bc, $0503
    dec b
    inc bc
    ld h, $00
    nop
    ld b, $2c
    jr jr_016_6597

    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    ld l, $63
    rst $38
    rst $38
    inc h
    rra
    rlca
    rlca
    nop

jr_016_6597:
    rst $38
    rst $38
    add d
    ld bc, $6342
    rst $38
    rst $38
    inc h
    ld [$0709], sp
    nop
    rst $38
    rst $38
    add d
    inc bc
    ld d, [hl]
    ld h, e
    rst $38
    rst $38
    ld d, h
    ld de, $0111
    nop
    rst $38
    rst $38
    ld bc, $6a00
    ld h, e
    ld h, b
    ld b, $54
    ld d, $0a
    ld bc, $ff00
    rst $38
    ld bc, $6c00
    ld h, e
    ld h, c
    ld b, $53
    rlca
    ld [de], a
    inc h
    ld de, $ffff
    sub b
    nop
    rra
    ld h, e
    ld h, b
    rlca
    nop
    nop
    ld d, c
    or l
    ld h, [hl]
    dec c
    dec b
    rra
    dec e
    dec h
    ld l, b
    call z, $0068
    nop
    db $e4
    ld h, l
    ld h, [hl]
    ld b, a
    ld c, h
    add sp, $68
    ld d, h
    ld c, c
    sub c
    pop af
    inc b
    rra
    ld bc, $698b
    ret nc

    ld l, c
    nop
    nop
    ld hl, sp+$65
    ld b, a
    ld c, h
    db $fc
    ld l, c
    ld d, h
    ld c, c
    rrca
    jr nc, jr_016_6601

jr_016_6601:
    rrca
    inc sp
    nop
    ld l, [hl]
    ld [bc], a
    ld l, [hl]
    inc bc
    ld l, [hl]
    inc b
    ld l, [hl]
    dec b
    adc e
    rrca
    rrca
    ld [hl-], a
    nop
    ld l, [hl]
    ld [$0872], sp
    dec bc
    ld b, $6f
    ld [$0869], sp
    and l
    ld h, [hl]
    halt
    inc bc
    ld b, a
    ld c, h
    jp z, Jump_016_5467

    ld c, c
    inc sp
    dec hl
    nop
    ld l, l
    ld b, $04
    ld [de], a
    ld [$0107], sp
    ld [hl-], a
    di
    ld b, $32
    jp hl


    ld b, $33
    push af
    ld b, $33
    or $06
    inc sp
    ei
    ld b, $33
    ld b, b
    rlca
    ld [hl-], a
    ld sp, hl
    ld b, $32
    db $fd
    ld b, $32
    ld a, $07
    rrca
    ld l, $00
    rrca
    dec de
    nop
    adc e
    rrca
    inc a
    ld [$0304], sp
    inc bc
    sub c
    ld a, [c]
    inc b
    rra
    ld [bc], a
    adc l
    ld l, d

Jump_016_665f:
    rst $18
    ld l, d
    nop
    nop
    ld h, l
    ld h, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [c]
    ld l, d
    ld d, h
    ld c, c
    sub c
    db $10
    dec b
    ld b, d
    ld bc, $6b43
    ld a, e
    ld l, e
    nop
    nop
    ld a, c
    ld h, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    adc l
    ld l, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    add h
    ld c, a
    nop
    ld c, h
    bit 5, e
    ld c, [hl]
    add hl, bc
    adc a
    ld h, [hl]
    ld c, c
    sub c
    ld c, h
    add hl, bc
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld h, c
    ld l, h
    add h
    ld c, a
    nop
    ld d, h
    ld c, c
    sub c
    inc c
    ld c, $00
    ld de, $0e01
    ld c, $0e
    ld c, $0d
    ld b, l
    ld b, l
    ld b, l
    ld c, $0d
    dec c
    ld b, l
    ld b, l
    ld b, l
    ld [bc], a
    ld b, a
    nop
    adc d
    sub h
    sub c
    sub e
    sbc h
    ld a, a
    add a
    and h
    cp b
    ld a, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld c, a
    ld d, d
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    xor a
    ld c, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld d, l
    or d
    and a
    xor [hl]
    or h
    or e
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    and a
    xor b
    xor h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    ld c, a
    or e
    or h
    xor h
    and c
    xor e
    and h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    sub [hl]
    add h
    adc e
    adc e
    add sp, $51
    adc b
    ld a, a
    or d
    xor e
    and b
    xor h
    xor h
    and h
    and e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    and a
    and b
    or c
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and b
    and d
    xor d
    db $f4
    ld d, l
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $51
    sub c
    and b
    or e
    or d
    rst $20
    ld a, a
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, a
    and l
    xor b
    or e
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    sub $a4
    ld a, a
    xor a
    or h
    xor l
    xor b
    or d
    and a
    and h
    and e
    ld c, a
    or e
    and a
    and h
    xor h
    ld [hl], l
    ld d, c
    add b
    and a
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld c, a
    and a
    and h
    xor e
    xor a
    and h
    and e
    add sp, $51
    ld d, d
    db $f4
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and [hl]
    or h
    or e
    or d
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld d, l
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    xor e
    and b
    and d
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
    sub [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    db $f4
    ld c, a
    ld d, d
    rst $20
    ld d, c
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
    and a
    and b
    or d
    ld c, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    xor [hl]
    and l
    and l
    add sp, $51
    adc h
    cp b
    ld a, a
    and c
    and b
    and d
    xor d
    call nc, $a17f
    and h
    or e
    or e
    and h
    or c
    ld c, a
    or e
    xor [hl]
    xor [hl]
    add sp, $7f
    adc e
    and h
    or e
    call nc, $a67f
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld d, l
    xor [hl]
    and l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    xor a
    ld d, c
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and d
    xor [hl]
    xor [hl]
    or e
    ld c, a
    cp b
    and h
    xor e
    xor e
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    xor h
    and h
    add sp, $51
    add a
    and h
    ld a, a
    or d
    or e
    and b
    or c
    or e
    xor e
    and h
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
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    and l
    and h
    xor e
    xor e
    ld d, l
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or l
    and h
    xor l
    or e
    ld c, a
    xor h
    cp b
    ld a, a
    and b
    xor l
    and [hl]
    and h
    or c
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld d, l
    xor b
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add b
    or c
    or c
    and [hl]
    and a
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    adc l
    adc [hl]
    sub e
    ld c, a
    xor h
    cp b
    ld a, a
    and e
    and b
    cp b
    rst $20
    ld d, a
    nop
    sub d
    or h
    or c
    and h
    db $f4
    ld a, a
    or [hl]
    and h
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    and a
    and b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and b
    xor b
    xor e
    or d
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
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or d
    and h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $51
    add h
    or l
    and h
    or c
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and h
    ld a, a
    and e
    xor [hl]
    ld c, a
    xor b
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    or c
    xor [hl]
    and l
    xor b
    or e
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $b17f
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld c, a
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
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
    db $f4
    ld d, c
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and h
    pop de
    xor e
    ld a, a
    and e
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    or c
    or h
    xor a
    or e
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, l
    and h
    or a
    xor a
    and h
    and d
    or e
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    and h
    or c
    and d
    cp b
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    adc [hl]
    adc d
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor l
    and h
    or a
    or e
    ld d, l
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
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
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    xor l
    ld a, a
    or h
    xor a
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
    add c
    or h
    or e
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    xor b
    xor l
    or h
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    and b
    and d
    or e
    xor b
    or l
    xor b
    or e
    xor b
    and h
    or d
    ld d, l
    or h
    xor l
    and e
    and h
    or c
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and l
    or h
    xor l
    ld a, a
    or [hl]
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    or d
    ld d, l
    or d
    or e
    xor b
    or c
    ld a, a
    or h
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
    ld d, a
    nop
    sub b
    or h
    xor b
    or e
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    db $e3
    ld c, a
    adc a
    adc [hl]
    adc d
    add h
    sub e
    add b
    adc b
    adc e
    sub d
    and $51
    adc b
    and l
    ld a, a
    or [hl]
    and h
    ld a, a
    xor [hl]
    and c
    and h
    cp b
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
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
    call nc, $b17f
    and h
    xor a
    ld d, l
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    or c
    or h
    xor b
    xor l
    and h
    and e
    rst $20
    ld d, a
    nop
    adc c
    or h
    or d
    or e
    ld [hl], l
    ld c, a
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    or d
    and h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    db $e3
    ld d, l
    adc a
    adc [hl]
    adc d
    add h
    sub e
    add b
    adc b
    adc e
    sub d
    and $51
    adc b
    or e
    call nc, $b37f
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    add [hl]
    sub c
    sub h
    adc l
    sub e
    rst $20
    ld d, a
    nop
    sub d
    or e
    xor [hl]
    xor a
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    sub e
    add b
    adc b
    adc e
    sub d
    and $51
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or e
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    and e
    and h
    and l
    and h
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or h
    or d
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or c
    xor [hl]
    or e
    or e
    and h
    xor l
    ld a, a
    and c
    or c
    and b
    or e
    rst $20
    ld d, a
    nop
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
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and l
    and b
    or d
    or e
    rst $20
    ld d, c
    sub [hl]
    and a
    and b
    or e
    call nc, $b67f
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    or d
    and h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    and $57
    nop
    add b
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
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor b
    or e
    or d
    ld a, a
    sub e
    add b
    adc b
    adc e
    ld a, a
    and d
    or h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld [hl], l
    ld d, c
    add a
    or h
    and a
    and $7f
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    adc h
    add b
    adc b
    adc e
    add sp, $4f
    sub c
    and h
    and b
    and e
    ld a, a
    xor b
    or e
    and $57
    nop
    ld d, d
    ld a, a
    or c
    and h
    and b
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc h
    add b
    adc b
    adc e
    add sp, $51
    add c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    ld d, c
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
    ld a, a
    and b
    xor l
    and e
    ld c, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    add sp, $51
    adc e
    xor [hl]
    or l
    and h
    db $f4
    ld a, a
    add e
    and b
    and e
    ld d, a
    nop
    add b
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
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor b
    or e
    or d
    ld a, a
    sub e
    add b
    adc b
    adc e
    ld a, a
    and d
    or h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rrca
    ld de, $0806
    rlca
    dec bc
    rlca
    ld bc, $2903
    nop
    nop
    add hl, bc
    dec [hl]
    dec bc
    inc de
    ld b, $00
    rst $38
    rst $38
    ld [bc], a
    inc bc
    ret c

    ld h, l
    db $fc
    ld b, $35
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    ld [bc], a
    ld bc, $65ec
    db $fc
    ld b, $35
    ld a, [bc]
    add hl, bc
    add hl, bc
    nop
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    ld e, c
    ld h, [hl]
    db $fc
    ld b, $36
    ld [$090e], sp
    nop
    rst $38
    rst $38
    add d
    inc b
    ld l, l
    ld h, [hl]
    db $fc
    ld b, $45
    ld [$010b], sp
    nop
    rst $38
    rst $38
    add b
    nop
    add c
    ld h, [hl]
    ei
    ld b, $45
    ld b, $0a
    ld bc, $ff00
    rst $38
    add b
    nop
    sub l
    ld h, [hl]
    ei
    ld b, $0b
    ld [de], a
    inc d
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    push de
    ld h, l
    ld b, b
    rlca
    ld e, d
    ld b, $07
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    and b
    ld h, [hl]
    rst $38
    rst $38
    ld d, h
    rlca
    ld c, $01
    nop
    rst $38
    rst $38
    ld bc, $a300
    ld h, [hl]
    ld h, d
    ld b, $00
    nop
    ld l, e
    ld b, a
    ld sp, $0073
    add hl, bc
    ld [hl+], a
    ld l, l
    ld c, h
    ld a, [hl+]
    ld l, l
    ld d, l
    sbc [hl]
    ld d, d
    ld bc, $2008
    ld l, l
    inc sp
    ld [hl], e
    nop
    ld c, c
    sub c
    ld c, h
    ld a, [c]
    ld l, l
    ld d, h
    ld c, c
    sub c
    pop de
    ld bc, $8800
    jp nc, $b67f

    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
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
    call nc, $ac7f
    xor [hl]
    xor h
    and h
    xor l
    or e
    ld d, l
    xor [hl]
    and l
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    sub e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor [hl]
    and c
    or d
    and h
    or c
    or l
    and b
    db $e3
    ld c, a
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld a, a
    adc b
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    and b
    ld a, a
    xor l
    and h
    or [hl]
    ld d, l
    and e
    xor b
    or d
    and d
    xor [hl]
    or l
    and h
    or c
    cp b
    add sp, $51
    add b
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
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld c, a
    adc d
    adc b
    adc l
    add [hl]
    ldh [$92], a
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld d, c
    and [hl]
    and h
    or e
    or d
    ld a, a
    and c
    xor b
    or e
    or e
    and h
    xor l
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld c, a
    sub d
    add a
    add h
    adc e
    adc e
    add e
    add h
    sub c
    add sp, $51
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or d
    and a
    and b
    or c
    and h
    ld a, a
    and b
    ld c, a
    adc d
    adc b
    adc l
    add [hl]
    ldh [$92], a
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
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
    and c
    and h
    ld c, a
    xor e
    xor b
    xor d
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
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    xor a
    and b
    or e
    xor b
    and h
    xor l
    or e
    db $e3
    ld c, a
    xor e
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    and h
    ld d, l
    xor [hl]
    xor l
    and h
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    add sp, $57
    nop
    nop
    ld bc, $090b
    ld [bc], a
    inc bc
    jr z, jr_016_6e49

jr_016_6e49:
    nop
    ld [bc], a
    ld c, b
    ld [$0209], sp
    ld hl, $ffff
    nop
    ld bc, $6d0b
    rst $38
    rst $38
    ld d, h
    add hl, bc
    inc de
    ld bc, $ff00
    rst $38
    ld bc, $2800
    ld l, l
    ld h, e
    ld b, $00
    nop
    ld d, c
    ld l, l
    ld l, [hl]
    ld d, c
    jp nz, $006e

    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    and b
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    adc e
    adc b
    add [hl]
    add a
    sub e
    add a
    adc [hl]
    sub h
    sub d
    add h
    add sp, $51
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    and h
    and b
    or d
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    xor e
    xor b
    xor h
    and c
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $57
    nop
    adc b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or e
    db $f4
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld d, c
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    ld a, a
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    adc e
    adc b
    add [hl]
    add a
    sub e
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    nop
    dec b
    ld de, $090a
    ld bc, $110e
    dec bc
    add hl, bc
    ld bc, $0b0e
    inc bc
    ld bc, $2b03
    dec c
    db $10
    inc bc
    inc bc
    dec hl
    dec c
    ld de, $0304
    dec hl
    nop
    nop
    ld [bc], a
    ld c, c
    ld b, $0c
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld h, a
    ld l, [hl]
    rst $38
    rst $38
    ld l, $0d
    inc d
    inc b
    jr nz, @+$01

    rst $38
    nop
    nop
    ld l, d
    ld l, [hl]
    rst $38
    rst $38
    nop
    nop
    sbc [hl]
    inc b
    jr nz, jr_016_6f7a

    ld hl, sp+$70
    dec de
    ld [hl], c
    nop

jr_016_6f7a:
    nop
    ld a, l
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, $71
    ld d, h
    ld c, c
    sub c
    db $76
    dec b
    jr z, jr_016_6f8b

    ld a, d
    ld [hl], b

jr_016_6f8b:
    or b
    ld [hl], b
    nop
    nop
    sub c
    ld l, a
    ld e, $17
    rlca
    ld h, [hl]
    ld b, a
    inc [hl]
    ld h, [hl]
    nop
    add hl, bc
    rst $00
    ld l, a
    ld a, [hl+]
    rlca
    add hl, bc
    ld e, a
    ld [hl], b
    ld sp, $0263
    add hl, bc
    or b
    ld l, a
    inc sp
    ld h, e
    ld [bc], a
    nop
    ld d, e
    ld [hl], b
    inc bc
    or e
    ld l, a
    nop
    ld d, a
    ld [hl], b
    sub a
    rlca
    ld b, $01
    ld h, a
    ld [hl], b
    ld b, $02
    ld h, e
    ld [hl], b
    ld b, e
    jr z, jr_016_6fc2

    nop
    nop

jr_016_6fc2:
    ld e, e
    ld [hl], b
    inc bc
    ld e, a
    ld [hl], b
    nop
    ld l, e
    ld [hl], b
    ld h, h
    or b
    ld [hl], b
    nop
    nop
    add hl, de
    db $f4
    reti


    ld b, $03
    ld [c], a
    ld l, a
    ld b, $02
    add sp, $6f
    ld b, $01
    xor $6f
    ld b, $00
    db $f4
    ld l, a
    ld sp, $00cd
    add hl, bc
    dec de
    ld [hl], b
    ld sp, $0044
    add hl, bc
    ld c, $70
    ld sp, $0021
    add hl, bc
    ld bc, $5e70
    jr z, jr_016_6ff9

    ld e, a
    ld h, b

jr_016_6ff9:
    dec de
    db $f4
    reti


    ld bc, $6635
    nop
    sub c
    ld e, [hl]
    jr z, jr_016_700f

    ld e, a
    ld h, b
    dec de
    db $f4
    reti


    ld [bc], a
    dec [hl]
    ld h, [hl]
    nop
    sub c
    ld e, [hl]

jr_016_700f:
    jr z, @+$0e

    ld e, a
    ld h, b
    dec de
    db $f4
    reti


    inc bc
    dec [hl]
    ld h, [hl]
    nop
    sub c
    ld e, [hl]
    jr z, @+$0f

    ld e, a
    ld h, b
    dec [hl]
    ld h, [hl]
    nop
    ld sp, $0337
    add hl, bc
    ccf
    ld [hl], b
    ld sp, $0265
    add hl, bc
    ld a, $70
    nop
    db $76
    ld [hl], b
    sbc [hl]
    dec de
    ld bc, $6f08
    ld [hl], b
    inc sp
    ld h, l
    ld [bc], a
    inc bc
    ld e, a
    ld [hl], b
    sub c
    ld b, a
    ld c, h
    or [hl]
    ld [hl], c
    ld d, h
    sbc [hl]
    dec de
    ld bc, $6f08
    ld [hl], b
    ld [hl-], a
    scf
    inc bc
    inc sp
    ld h, l
    ld [bc], a
    inc bc
    ld e, a
    ld [hl], b
    inc c
    add hl, de
    nop
    sub c
    inc c
    ld a, [de]
    nop
    sub c
    inc c
    dec de
    nop
    sub c
    inc c
    inc e
    nop
    sub c
    inc c
    dec e
    nop
    sub c
    inc c
    ld e, $00
    sub c
    inc c
    rra
    nop
    sub c
    inc sp
    scf
    inc bc
    inc c
    ld hl, $9100
    inc c
    ld [hl+], a
    nop
    sub c
    nop
    adc h
    and h
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    and b
    or c
    and h
    ld c, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or d
    xor a
    xor [hl]
    xor b
    xor e
    xor b
    xor l
    and [hl]
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    sub h
    or c
    and l
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld c, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, c
    or e
    xor [hl]
    ld a, a
    or d
    and b
    xor b
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    or d
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    and $57
    nop
    add a
    xor h
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add b
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    add sp, $57
    nop
    sub h
    xor a
    ld a, a
    or e
    xor [hl]
    xor a
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    ld d, h
    db $e3
    ld c, a
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
    and h
    and h
    xor a
    or d
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc e
    adc b
    add [hl]
    add a
    sub e
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld a, a
    xor e
    xor b
    or e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor b
    or e
    call nc, $b27f
    xor b
    and d
    xor d
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, c
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    and d
    or h
    or c
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, a
    xor [hl]
    or c
    and e
    xor b
    xor l
    and b
    or c
    cp b
    ld a, a
    xor h
    and h
    and e
    xor b
    and d
    xor b
    xor l
    and h
    add sp, $57
    nop
    adc h
    and b
    xor l
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    or d
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and b
    or d
    ld a, a
    and h
    or l
    and h
    or c
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
    and a
    and h
    or c
    and h
    call nc, $b34f
    and a
    and b
    or e
    ld a, a
    xor h
    and h
    and e
    xor b
    and d
    xor b
    xor l
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, $57
    nop
    nop
    ld b, $0b
    inc bc
    inc bc
    inc bc
    ld a, [hl+]
    inc bc
    dec b
    ld [bc], a
    inc bc
    inc l
    dec c
    db $10
    inc b
    inc bc
    ld a, [hl+]
    dec c
    ld de, $0305
    ld a, [hl+]
    dec bc
    db $10
    inc b
    inc bc
    inc l
    dec bc
    ld de, $0305
    inc l
    nop
    nop
    ld [bc], a
    ld c, c
    ld [$0910], sp
    nop
    rst $38
    rst $38
    sub d
    inc bc
    add l
    ld l, a
    rst $38
    rst $38
    ld b, b
    inc c
    dec d
    ld [$ff00], sp
    rst $38
    sub d
    inc bc
    ld [hl], c
    ld l, a
    rst $38
    rst $38
    nop
    nop
    cp $03
    jr @+$06

    ld a, e
    ld [hl], d
    call nz, $0072
    nop
    ld c, c
    ld [hl], d
    ld h, [hl]
    ld b, a
    ld c, h
    rst $18
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    sbc d
    inc b
    jr nz, jr_016_7256

    db $f4

jr_016_7256:
    ld [hl], e
    scf
    ld [hl], h
    nop
    nop
    ld e, l
    ld [hl], d
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, a
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld [hl], a
    dec b
    jr z, jr_016_726c

    inc sp
    ld [hl], e
    ld h, l

jr_016_726c:
    ld [hl], e
    nop
    nop
    ld [hl], c
    ld [hl], d
    ld h, [hl]
    ld b, a
    ld c, h
    add h
    ld [hl], e
    ld d, h
    ld c, c
    sub c
    ccf
    ld bc, $9600
    and a
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    or c
    and h
    and $4f
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld d, c
    or e
    xor [hl]
    ld a, a
    and [hl]
    and b
    or [hl]
    xor d
    and $7f
    adc b
    ld a, a
    or d
    or h
    and [hl]
    and [hl]
    and h
    or d
    or e
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
    xor e
    and h
    and b
    or l
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and b
    or c
    and h
    ld c, a
    and d
    xor [hl]
    xor l
    and d
    and h
    or c
    xor l
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    and h
    and d
    xor d
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or h
    xor a
    and $51
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    xor b
    and d
    xor d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or h
    xor a
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    sub d
    and b
    xor b
    xor e
    xor [hl]
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld c, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $55
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    add h
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    db $f4
    ld a, a
    adc b
    ld d, l
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    call nc, Call_016_544f
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    cp b
    xor a
    and h
    ld a, a
    and a
    and b
    or d
    ld d, c
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    and e
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
    and h
    ld c, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
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
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    or e
    xor [hl]
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
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
    ld [hl], l
    or d
    xor b
    and [hl]
    and a
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or h
    or d
    and h
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc [hl]
    adc l
    adc b
    sub a
    add sp, $57
    nop
    nop
    add hl, bc
    inc bc
    dec c
    ld bc, $2d03
    inc bc
    dec b
    ld [bc], a
    inc bc
    dec hl
    dec b
    add hl, bc
    inc b
    inc bc
    dec l
    dec bc
    db $10
    dec b
    inc bc
    dec hl
    dec bc
    ld de, $0306
    dec hl
    add hl, bc
    db $10
    dec b
    inc bc
    dec l
    add hl, bc
    ld de, $0306
    dec l
    inc bc
    ld [$0307], sp
    dec l
    inc bc
    add hl, bc
    ld [$2d03], sp
    nop
    nop
    inc b
    ld c, c
    ld [$090c], sp
    nop
    rst $38
    rst $38
    sub d
    ld bc, $7265
    rst $38
    rst $38
    ld b, b
    add hl, bc
    ld de, $0009
    rst $38
    rst $38
    sub d
    inc b
    ld d, c
    ld [hl], d
    rst $38
    rst $38
    daa
    ld de, $0707
    nop
    rst $38
    rst $38
    sub d
    inc bc
    dec a
    ld [hl], d
    rst $38
    rst $38
    ld d, h
    ld b, $0c
    ld bc, $ff00
    rst $38
    ld bc, $7900
    ld [hl], d
    ld h, h
    ld b, $00
    nop
    add hl, de
    dec b
    add hl, de
    dec b
    push bc
    ld [hl], l
    dec hl
    halt
    nop
    or $74
    ld h, [hl]
    ld b, a
    ld c, h
    inc a
    db $76
    ld d, h
    ld c, c
    sub c
    ld a, b
    dec b
    jr z, jr_016_7506

    ld [de], a
    ld [hl], l
    ld h, l
    ld [hl], l

jr_016_7506:
    nop
    nop
    ld a, [bc]
    ld [hl], l
    ld h, [hl]
    ld b, a
    ld c, h
    add h
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    nop
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld c, a
    or [hl]
    xor [hl]
    or c
    or c
    xor b
    and h
    and e
    ld a, a
    or d
    xor b
    and d
    xor d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub d
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, a
    or d
    xor h
    xor b
    xor e
    and h
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    and e
    and b
    cp b
    or d
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor h
    and b
    xor l
    and b
    and [hl]
    and h
    ld a, a
    and b
    ld c, a
    or d
    xor h
    xor b
    xor e
    and h
    ld a, a
    and h
    xor b
    or e
    and a
    and h
    or c
    ld [hl], l
    ld d, a
    nop
    sub d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    or d
    xor b
    and d
    xor d
    db $f4
    ld c, a
    adc b
    sub $a4
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $a051
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    adc a
    add a
    add b
    sub c
    adc h
    add b
    add d
    sbc b
    ld a, a
    xor b
    xor l
    ld c, a
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    add sp, $57
    nop
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and d
    xor b
    or e
    cp b
    call nc, $867f
    sbc b
    adc h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    add sp, $51
    adc b
    ld a, a
    xor h
    and h
    and b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    and h
    or c
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    add sp, $51
    adc l
    xor [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and a
    and b
    and e
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    add b
    and b
    and b
    and d
    xor d
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sub c
    xor b
    and [hl]
    and a
    or e
    add sp, $7f
    add b
    xor l
    cp b
    and c
    xor [hl]
    and e
    cp b
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
    or [hl]
    xor [hl]
    or c
    or c
    xor b
    and h
    and e
    ld d, l
    xor b
    and l
    ld a, a
    and a
    xor b
    or d
    ld a, a
    xor [hl]
    or c
    ld a, a
    and a
    and h
    or c
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and a
    or h
    or c
    or e
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    xor a
    or c
    and b
    cp b
    ld a, a
    and l
    xor [hl]
    or c
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
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, c
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $57
    nop
    nop
    ld a, [bc]
    rlca
    dec c
    ld bc, $2c03
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld l, $07
    add hl, bc
    inc bc
    inc bc
    ld l, $05
    add hl, bc
    inc bc
    inc bc
    inc l
    add hl, bc
    db $10
    ld b, $03
    inc l
    add hl, bc
    ld de, $0307
    inc l
    inc bc
    ld [$0308], sp
    inc l
    inc bc
    add hl, bc
    add hl, bc
    inc bc
    inc l
    rlca
    db $10
    inc b
    inc bc
    ld l, $07
    ld de, $0305
    ld l, $00
    nop
    ld [bc], a
    ld c, c
    ld [de], a
    dec bc
    ld [$ff00], sp
    rst $38
    sub d
    inc bc
    cp $74
    rst $38
    rst $38
    jr z, jr_016_770d

    rrca
    ld b, $00
    rst $38
    rst $38
    sub d

jr_016_770d:
    ld bc, $74ea
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_016_7a4d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
