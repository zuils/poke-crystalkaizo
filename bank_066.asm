; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $066", ROMX[$4000], BANK[$66]

    inc bc
    ld de, $0040
    nop
    ld [de], a
    ld b, b
    nop
    nop
    inc de
    ld b, b
    nop
    nop
    ld bc, $1405
    ld b, b
    sub c
    sub c
    sub c
    ld [hl], $44
    nop
    sub b
    ld [hl], d
    dec bc
    dec bc
    dec bc
    halt
    inc bc
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    ld l, a
    dec bc
    ld l, c
    dec bc
    inc [hl]
    ld b, c
    halt
    nop
    inc bc
    ld c, c
    ld b, b
    halt
    inc bc
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    ld l, a
    dec bc
    ld l, c
    dec bc
    inc a
    ld b, c
    halt
    ld bc, $1f7f
    nop
    ld b, a
    ld c, h
    ld c, l
    ld b, c
    ld d, h
    ld c, c
    inc sp
    cp a
    ld b, $31
    inc e
    nop
    add hl, bc
    ld [hl], c
    ld b, b
    ld sp, $001d
    add hl, bc
    add c
    ld b, b
    ld h, h
    and $41
    ld e, e
    ld b, e
    ld l, b
    dec bc
    ld e, [hl]
    add hl, bc
    ld b, $5f
    add e
    ld h, b
    inc bc
    sub c
    ld b, b
    ld h, h
    and $41
    ld e, e
    ld b, e
    ld l, b
    dec bc
    ld e, [hl]
    add hl, bc
    inc b
    ld e, a
    add e
    ld h, b
    inc bc
    sub c
    ld b, b
    ld h, h
    and $41
    ld e, e
    ld b, e
    ld l, b
    dec bc
    ld e, [hl]
    add hl, bc
    dec b
    ld e, a
    add e
    ld h, b
    inc bc
    sub c
    ld b, b
    ld a, a
    jr nz, jr_066_4094

jr_066_4094:
    ld b, a
    ld c, h
    inc sp
    ld b, d
    ld d, h
    ld c, c
    halt
    ld [bc], a
    ld l, c
    dec bc
    ld b, h
    ld b, c
    add l
    inc hl
    nop
    ld l, [hl]
    dec bc
    inc d
    nop
    add [hl]
    add d
    sub c
    ld d, c
    ld a, e
    ld b, e
    ld d, c
    rst $00
    ld b, e
    ld l, e
    ld b, a
    ld sp, $002b
    add hl, bc
    cp a
    ld b, b
    ld c, h
    dec de
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], e
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld d, c
    adc $44
    ld d, c
    ld a, [de]
    ld b, l
    ld b, a
    ld c, h
    or b
    ld b, l
    adc e
    inc a
    ld c, h
    jp $8445


    ld c, a
    nop
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    call $8445
    jp Jump_066_5400


    ld c, c
    sub c
    ld l, c
    nop
    ld c, b
    ld b, c
    ld b, a
    ld c, h
    rst $18
    ld b, l
    ld d, l
    db $76
    dec c
    inc bc
    ld c, h
    dec bc
    ld b, [hl]
    ld d, l
    ld c, h
    jr z, jr_066_413e

    ld d, h
    sbc [hl]
    ld [hl], e
    ld bc, $0d76
    ld [bc], a
    ld [hl], $64
    nop
    ld [hl-], a
    db $ed
    ld b, $33
    db $eb
    ld b, $14
    nop
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    jr z, jr_066_4157

    ld d, h
    db $76
    dec c
    ld [bc], a
    ld c, c
    sub c
    ld d, e
    ld e, d
    ld b, [hl]
    ld d, e
    sub e
    ld b, [hl]
    ld d, e
    and c
    ld b, [hl]
    ld d, e
    rst $20
    ld b, [hl]
    ld d, e
    adc l
    ld b, a
    ld d, e
    sbc h
    ld b, a
    inc c
    stop
    inc c
    ld de, $9b00
    inc d
    or c
    nop
    ld h, $0e
    ld c, $0e
    ld c, $0e
    ld c, $01
    ld b, a
    ld c, $0e

jr_066_413e:
    ld c, $0e
    ld c, $0e
    nop
    ld b, a
    ld c, $0e
    ld c, $47
    ld c, $0e
    dec c
    ld [bc], a
    ld b, a
    nop
    ld [hl], l
    sub e
    and h
    xor e
    xor e
    ld a, a
    xor h
    and h
    ld a, a

jr_066_4157:
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $51
    adc b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    or c
    or h
    and h
    ld a, a
    or e
    and a
    and b
    or e
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
    and a
    and b
    or d
    ld d, l
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    and $51
    sub [hl]
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
    or e
    and a
    and h
    xor h
    and $7f
    add a
    and b
    and a
    rst $20
    ld a, a
    sub b
    or h
    xor b
    or e
    ld d, l
    xor e
    cp b
    xor b
    xor l
    and [hl]
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
    xor c
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    and $4f
    sub e
    and a
    and h
    xor l
    ld a, a
    xor e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    add sp, $57
    nop
    ld [hl], l
    ld a, a
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld a, a
    sub h
    or d
    and h
    xor e
    and h
    or d
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld d, c
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, a
    or [hl]
    and h
    and b
    xor d
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and h
    and b
    xor d
    add sp, $51
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $4f
    adc b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    xor h
    and b
    or e
    or e
    and h
    or c
    ld d, l
    or [hl]
    and a
    xor [hl]
    ld a, a
    xor [hl]
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    add sp, $51
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
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    xor b
    xor a
    and h
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and h
    and b
    xor d
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or c
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
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    and d
    or e
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor a
    add sp, $51
    add c
    or h
    or e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld d, l
    or [hl]
    and h
    and b
    xor d
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    xor e
    xor e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    and b
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld c, a
    or [hl]
    and b
    cp b
    add sp, $7f
    add b
    ld a, a
    or [hl]
    and h
    and b
    xor d
    xor e
    xor b
    xor l
    and [hl]
    ld d, c
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    ld c, a
    and e
    xor b
    or d
    or e
    or c
    and b
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    ld [hl], l
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor e
    cp b
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    or e
    call nc, $b47f
    xor l
    or d
    and b
    and l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    jp nc, $b255

    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    add sp, $51
    add b
    or c
    and h
    xor l
    push de
    ld a, a
    adc b
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    sub d
    and b
    xor h
    and b
    or c
    xor b
    or e
    and b
    xor l
    and $57
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
    and $7f
    adc b
    ld d, l
    and a
    and h
    and b
    or c
    and e
    ld a, a
    xor b
    or e
    call nc, $b37f
    and b
    or d
    or e
    cp b
    rst $20
    ld d, c
    add b
    or c
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor e
    and b
    and e
    ld a, a
    adc b
    ld c, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and a
    and b
    or e
    and $57
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
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    or e
    xor [hl]
    or [hl]
    xor l
    ld [hl], l
    ld d, c
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
    and h
    xor b
    or c
    ld c, a
    sub e
    add b
    adc b
    adc e
    sub d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld d, l
    or d
    xor [hl]
    xor e
    and e
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
    add sp, $51
    adc d
    xor l
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    sub $a4
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    and h
    and h
    xor l
    ld d, c
    and [hl]
    xor [hl]
    xor [hl]
    and l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    adc d
    sub h
    sub c
    sub e
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
    add b
    ld a, a
    xor e
    xor [hl]
    or e
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
    ld a, a
    and e
    xor [hl]
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $57
    nop
    add d
    or h
    or e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    add b
    sbc c
    add b
    adc e
    add h
    add b
    ld c, a
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    xor b
    xor l
    ld d, l
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
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    or d
    xor d
    xor b
    xor l
    xor l
    cp b
    ld c, a
    or e
    or c
    and h
    and h
    or d
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld d, c
    xor b
    xor h
    xor a
    xor [hl]
    or d
    or d
    xor b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    add d
    add a
    add b
    sub c
    add d
    adc [hl]
    add b
    adc e
    ld a, a
    adc h
    add b
    adc l
    call nc, Call_066_544f
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    xor l
    ld a, a
    add d
    sub h
    sub e
    ld d, l
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or e
    or c
    and h
    and h
    or d
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
    ld d, c
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, a
    nop
    ld d, [hl]
    ld a, a
    ld d, [hl]
    sbc b
    and b
    or [hl]
    xor l
    and $57
    nop
    sub [hl]
    adc [hl]
    adc [hl]
    sub d
    sub e
    add h
    sub c
    sbc h
    ld a, a
    add [hl]
    or h
    and [hl]
    cp b
    xor [hl]
    xor [hl]
    ld [hl], l
    ld d, a
    nop
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
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    or d
    or e
    xor e
    and h
    or d
    or d
    rst $20
    ld d, c
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and $57
    nop
    ld d, d
    db $f4
    ld a, a
    and a
    and h
    or c
    and h
    call nc, $b84f
    xor [hl]
    or h
    or c
    ld a, a
    add [hl]
    sub d
    ld a, a
    add c
    add b
    adc e
    adc e
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    or [hl]
    and a
    cp b
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
    ld a, a
    xor b
    or d
    ld d, l
    or d
    xor [hl]
    ld a, a
    or c
    and h
    or d
    or e
    xor e
    and h
    or d
    or d
    and $57
    nop
    add b
    sbc c
    add b
    adc e
    add h
    add b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld c, a
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    xor b
    or l
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    add a
    and b
    xor a
    xor a
    cp b
    ld a, a
    add a
    and b
    or c
    xor h
    xor [hl]
    xor l
    cp b
    ld d, a
    nop
    adc d
    sub h
    sub c
    sub e
    ldh [$92], a
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    add b
    sbc c
    add b
    adc e
    add h
    add b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
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
    sub h
    add [hl]
    sub d
    sbc b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    add c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    add h
    xor l
    and d
    cp b
    and d
    xor e
    xor [hl]
    xor a
    and h
    and e
    xor b
    and b
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
    ld a, a
    sub [hl]
    add h
    adc e
    adc e
    ld d, c
    add b
    xor e
    or d
    xor [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a

Jump_066_4704:
    or e
    and a
    and h
    ld c, a
    sub c
    add b
    adc b
    adc l
    adc h
    add b
    adc d
    add h
    sub c
    ld a, a
    sub [hl]
    add h
    adc e
    adc e
    add sp, $51
    adc e
    xor [hl]
    and d
    and b
    xor e
    or d
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld c, a
    or e
    and a
    and b
    or e
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
    call nc, $b855
    and b
    or [hl]
    xor l
    ld a, a
    or d
    or h
    xor h
    xor h
    xor [hl]
    xor l
    or d
    ld a, a
    or c
    and b
    xor b
    xor l
    add sp, $51
    sub c
    and h
    and d
    xor [hl]
    or c
    and e
    or d
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
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
    call nc, $b87f
    and b
    or [hl]
    xor l
    ld d, c
    and h
    xor l
    and e
    and h
    and e
    ld a, a
    and b
    ld a, a
    and e
    or c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld c, a
    ld a, [$f6f6]
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
    add sp, $57
    nop
    add d
    add a
    add b
    sub c
    add d
    adc [hl]
    add b
    adc e
    ld a, a
    adc d
    adc b
    adc e
    adc l
    ld d, a
    nop
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
    ld d, c
    add h
    xor l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    and a
    and h
    ld c, a
    and [hl]
    and b
    or e
    and h
    add sp, $57
    nop
    nop
    ld [$0f09], sp
    ld bc, $0108
    dec c
    dec d
    ld bc, $0208
    dec b
    dec d
    ld [bc], a
    ld [$0503], sp
    add hl, bc
    ld bc, $0408
    rrca
    ld a, [bc]
    ld bc, $0508
    rlca
    rra
    ld bc, $2803
    ld a, [bc]
    ld [bc], a
    inc bc
    dec bc
    ld d, $0b
    ld [bc], a
    inc b
    dec bc
    ld d, $03
    ld bc, $050a
    nop
    jr @+$42

    nop
    nop
    ld bc, $050b
    nop
    inc [hl]
    ld b, b
    nop
    nop
    ld [bc], a
    ld b, $09
    nop
    push hl
    ld b, b
    nop
    nop
    add hl, bc
    add hl, bc
    inc de
    nop
    rla
    ld b, c
    add hl, bc
    ld a, [bc]
    nop
    ld a, [de]
    ld b, c
    rrca
    ld c, $00
    dec e
    ld b, c
    rlca
    dec e
    nop
    jr nz, jr_066_485b

    dec c
    inc de
    nop
    inc hl
    ld b, c
    add hl, bc
    stop
    add hl, hl
    ld b, c
    dec b
    ld d, $00
    inc l
    ld b, c
    add hl, bc
    inc bc
    nop
    ld h, $41
    ld b, $1f
    rlca
    ld sp, $0c41
    or $0d
    inc hl
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    xor e
    ld b, b
    ld a, [$2f06]
    dec c
    add hl, de
    ld [bc], a
    ld hl, $ffff
    nop
    nop
    or c
    ld b, b
    rst $38
    rst $38
    add hl, hl
    ld de, $0413
    jr nz, @+$01

    rst $38
    sub b
    nop
    push bc
    ld b, b
    rst $38
    rst $38

jr_066_485b:
    daa
    dec c
    dec bc
    dec b
    ld bc, $ffff
    and b
    nop
    ret z

    ld b, b
    rst $38
    rst $38
    ld b, l
    dec d
    inc c
    ld bc, $ff00
    rst $38
    nop
    nop
    bit 0, b
    ld sp, hl
    ld b, $45
    dec c
    ld d, $01
    nop
    rst $38
    rst $38
    nop
    nop
    bit 0, b
    ld sp, hl
    ld b, $45
    dec c
    ld hl, $0001
    rst $38
    rst $38
    nop
    nop
    bit 0, b
    ld sp, hl
    ld b, $45
    inc de
    inc de
    ld bc, $ff00
    rst $38
    nop
    nop
    bit 0, b
    ld sp, hl
    ld b, $5d
    ld b, $0c
    ld bc, $ff00
    rst $38
    nop
    nop
    cpl
    ld b, c
    rst $38
    rst $38
    or $0e
    rrca
    ld [$ff00], sp
    rst $38
    nop
    nop
    rst $28
    ld h, $bf
    ld b, $f6
    inc d
    ld c, $06
    nop
    rst $38
    rst $38
    nop
    nop
    xor [hl]
    ld b, b
    db $fc
    ld b, $62
    add hl, bc
    ld a, [bc]
    ld [$ff00], sp
    rst $38
    nop
    nop
    inc c
    ld b, c
    and h
    rlca
    nop
    ld [bc], a
    dec b
    ret c

    ld c, b
    ld [bc], a
    add sp, $48
    ld [hl], $46
    nop
    ld [hl], $16
    nop
    ld sp, $00b9
    add hl, bc
    rst $20
    ld c, b
    ld [hl-], a
    ld l, c
    rlca
    sub b
    ld sp, $0044
    ld [$4908], sp
    ld hl, $0836
    db $fd
    ld c, b
    inc e
    dec bc
    ld b, $03
    nop
    ld c, c
    ld b, $06
    nop
    ld c, c
    ld l, [hl]
    db $10
    sub b
    inc [hl]
    ld e, [hl]
    nop
    add hl, bc
    ld [$6f49], sp
    db $10
    sub b
    ld l, e
    ld b, a
    ld c, h
    ld b, d
    ld d, b
    ld c, [hl]
    ld [$499a], sp
    rrca
    ld c, a
    nop
    ld c, h
    sub b
    ld d, b
    ld c, [hl]
    ld [$49a0], sp
    daa
    and b
    rrca
    ld b, $02
    db $dd
    ld c, c
    ld c, h
    adc $50
    ld c, a
    ld h, a
    ld c, c
    ld e, c
    ld d, b
    ld b, $01
    ld a, [hl-]
    ld c, c
    ld b, $02
    ld c, c
    ld c, c
    ld b, $03
    ld e, b
    ld c, c
    inc bc
    rst $10
    ld c, c
    dec d
    ld bc, $cf4c
    ld d, c
    rrca
    add e
    nop
    ld b, $00
    and [hl]
    ld c, c
    inc bc
    rst $10
    ld c, c
    dec d
    ld [bc], a
    ld c, h
    rst $08
    ld d, c
    rrca
    add e
    nop
    ld b, $00
    and [hl]
    ld c, c
    inc bc
    rst $10
    ld c, c
    dec d
    inc bc
    ld c, h
    rst $08
    ld d, c
    rrca
    add e
    nop
    ld b, $00
    and [hl]
    ld c, c
    inc bc
    rst $10
    ld c, c
    ld b, b
    ld [bc], a
    nop
    dec bc
    rrca
    ld l, a
    ld c, c
    ld bc, $0480
    add l
    adc e
    add b
    adc h
    add h
    sub e
    add a
    sub c
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    add c
    adc [hl]
    adc e
    sub e
    ld d, b
    adc b
    add d
    add h
    ld a, a
    add c
    add h
    add b
    adc h
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld c, h
    or h
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    rlca
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, [hl-]
    ld d, c
    ld d, l
    ld h, $a0
    rrca
    add [hl]
    add l
    ld [hl+], a
    nop
    rrca
    ld c, a
    nop
    ld c, h
    adc e
    ld d, c
    ld d, h
    ld c, c
    inc e
    add hl, bc
    ld b, $02
    add $49
    ld l, c
    db $10
    ld e, a
    ld c, d
    inc bc
    jp z, Jump_066_6949

    db $10
    ld h, e
    ld c, d
    add l
    rra
    nop
    ld l, [hl]
    db $10
    ld [hl-], a
    ld l, e
    rlca
    ld [hl], $5e
    nop
    add [hl]
    sub c
    ld c, h
    and h
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor h
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld l, c
    ld c, d
    ld d, c
    xor c
    ld c, d
    ld l, e
    ld b, a
    ld sp, $0021
    add hl, bc
    rst $30
    ld c, c
    ld c, h
    and $4a
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec l
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    inc [hl]
    nop
    nop
    add hl, bc
    dec bc
    ld c, d
    ld c, h
    ld [hl], e
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc d
    ld c, h
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld [hl], $4c
    ld d, c
    add e
    ld c, h
    ld d, c
    rst $08
    ld c, h
    ld b, a
    ld c, h
    dec c
    ld c, l
    ld d, l
    ld l, e
    ld c, h
    ld a, [hl+]
    ld c, l
    ld d, h
    ld c, c
    db $76
    add hl, bc
    ld bc, $5191
    ld c, [hl]
    ld c, l
    ld d, c
    ld l, l
    ld c, l
    ld d, c
    xor d
    ld c, l
    ld d, c
    ld [c], a
    ld c, l
    ld d, c
    rra
    ld c, [hl]
    ld d, c
    ld c, e
    ld c, [hl]
    ld d, e
    ld [hl], a
    ld c, [hl]
    ld d, e
    adc a
    ld c, [hl]
    ld d, e
    xor e
    ld c, [hl]
    ld d, e
    db $e4
    ld c, [hl]
    ld d, e
    add hl, hl
    ld c, a
    ld d, e
    ld e, e
    ld c, a
    ld d, e
    add c
    ld c, a
    ld d, e
    xor [hl]
    ld c, a
    ld d, e
    ret c

    ld c, a
    ld d, e
    xor $4f
    inc c
    stop
    ld d, e
    ld [hl+], a
    ld d, b
    rrca
    rrca
    dec c
    ld b, a
    inc c
    rrca
    rrca
    dec c
    dec c
    ld b, a
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
    and c
    or h
    xor b
    xor e
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or [hl]
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
    ld a, a
    or e
    xor [hl]
    ld d, c
    or c
    and h
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor e
    and e
    db $f4
    ld c, a
    and d
    or c
    and h
    and b
    xor d
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
    add c
    adc b
    adc d
    add h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    xor b
    or e
    ld c, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    xor b
    xor l
    ld c, a
    and c
    xor e
    and b
    and d
    xor d
    ld a, a
    and e
    or c
    and h
    or d
    or d
    and h
    and e
    ld a, a
    or h
    xor a
    ld d, c
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
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
    xor h
    and h
    xor h
    and c
    and h
    or c
    and $7f
    add a
    xor [hl]
    or [hl]
    ld a, a
    or d
    xor b
    xor e
    xor e
    cp b
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    xor b
    xor l
    ld c, a
    and c
    xor e
    and b
    and d
    xor d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor a
    and b
    or c
    or e
    ld d, c
    xor [hl]
    and l
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
    and $7f
    adc b
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
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
    xor l
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
    add d
    adc b
    sub e
    sbc b
    ld a, a
    xor b
    or d
    ld d, l
    and b
    ld a, a
    xor e
    and b
    xor l
    and e
    xor h
    and b
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
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    xor a
    or c
    xor [hl]
    xor h
    xor [hl]
    or e
    xor b
    xor [hl]
    xor l
    and b
    xor e
    ld a, a
    and d
    and b
    xor h
    db $e3
    ld a, a
    ld d, l
    xor a
    and b
    xor b
    and [hl]
    xor l
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
    sub e
    and a
    and h
    cp b
    pop de
    xor e
    ld a, a
    xor h
    xor [hl]
    and e
    xor b
    and l
    cp b
    ld c, a
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
    db $f4
    ld d, c
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld c, a
    or d
    and h
    or c
    or l
    and h
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
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
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    or d
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    rst $20
    ld d, a
    nop
    add h
    db $e3
    and a
    and h
    db $e3
    and a
    and h
    db $e3
    and a
    and h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    ld c, a
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
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    and c
    and b
    or d
    and h
    xor h
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    add e
    add h
    adc a
    sub e
    add sp, -$6e
    sub e
    adc [hl]
    sub c
    add h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and a
    xor [hl]
    or h
    or d
    and h
    ld a, a
    or c
    and b
    or e
    and h
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor l
    and b
    xor h
    and h
    or d
    add sp, $51
    add a
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or c
    and h
    xor l
    and b
    xor h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    or [hl]
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
    xor [hl]
    xor l
    and h
    ld c, a
    and c
    xor b
    and [hl]
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    add sp, $7f
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, c
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
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
    xor b
    or d
    add sp, $57
    nop
    sub d
    xor [hl]
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
    ld [hl], l
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
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    and h
    or d
    or e
    and $7f
    sub d
    and d
    or c
    and b
    xor h
    rst $20
    ld d, a
    nop
    sub d
    or e
    and b
    cp b
    ld a, a
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
    ld c, a
    or [hl]
    and b
    cp b
    rst $20
    ld a, a
    add c
    and h
    and b
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sub e
    and b
    xor d
    and h
    ld a, a
    xor [hl]
    or l
    and h
    or c
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
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and b
    or e
    and $7f
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    or h
    or d
    xor b
    xor l
    and h
    or d
    or d
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    and $7f
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld c, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and b
    xor l
    ld d, c
    or e
    xor [hl]
    xor [hl]
    xor e
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    rst $20
    ld d, a
    nop
    adc [hl]
    or h
    or c
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    or c
    or h
    and h
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or d
    or e
    or c
    or h
    and [hl]
    and [hl]
    xor e
    and h
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    and c
    or c
    and b
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, l
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    and b
    or d
    or e
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    or c
    or h
    and h
    ld a, a
    or e
    and h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    xor [hl]
    and l
    ld d, l
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
    rst $20
    ld d, a
    nop
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
    add d
    adc b
    sub e
    sbc b
    ld c, a
    sub d
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, a
    nop
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
    add d
    adc b
    sub e
    sbc b
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
    ld d, a
    nop
    add l
    or h
    xor e
    xor e
    ld a, a
    sub d
    and h
    xor e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    or d
    rst $20
    ld d, c
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
    add d
    adc b
    sub e
    sbc b
    ld c, a
    add e
    add h
    adc a
    sub e
    add sp, -$6e
    sub e
    adc [hl]
    sub c
    add h
    ld d, a
    nop
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
    sub [hl]
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc b
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    cp b
    ld c, a
    adc a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    add [hl]
    xor b
    or c
    xor e
    rst $20
    ld d, a
    nop
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
    add d
    adc b
    sub e
    sbc b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add l
    and h
    or d
    or e
    xor b
    or l
    and h
    ld a, a
    add d
    xor b
    or e
    cp b
    ld c, a
    xor [hl]
    and l
    ld a, a
    adc [hl]
    xor a
    or h
    xor e
    and h
    xor l
    or e
    ld a, a
    add d
    and a
    and b
    or c
    xor h
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    add d
    cp b
    and d
    xor e
    and h
    ld a, a
    adc a
    and b
    or e
    and a
    rst $20
    ld d, l
    add c
    adc b
    adc d
    add h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    xor e
    and b
    cp b
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    rst $20
    ld d, c
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
    add d
    adc b
    sub e
    sbc b
    ld c, a
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld d, a
    nop
    adc l
    add b
    adc h
    add h
    ld a, a
    sub c
    add b
    sub e
    add h
    sub c
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
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
    adc l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    or d
    ld a, a
    sub c
    and b
    or e
    and h
    and e
    ld d, a
    nop
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld c, a
    add h
    adc l
    sub e
    sub c
    add b
    adc l
    add d
    add h
    ld d, a
    nop
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld c, a
    add h
    adc l
    sub e
    sub c
    add b
    adc l
    add d
    add h
    ld d, a
    nop
    add l
    xor [hl]
    or c
    ld a, a
    adc h
    xor [hl]
    and c
    xor b
    xor e
    and h
    ld a, a
    sub e
    xor b
    xor a
    or d
    rst $20
    ld c, a
    ld d, h
    add d
    adc [hl]
    adc h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld d, a
    nop
    add c
    xor e
    xor [hl]
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    add c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    ld c, a
    add l
    adc e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    ld d, c
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ret nc

    ld c, a
    xor e
    xor b
    xor d
    and h
    add sp, $51
    sub d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld a, a
    and b
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    and $57
    nop
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    ld a, [$f6f6]
    or $7f
    and d
    xor [hl]
    xor b
    xor l
    or d
    add sp, $7f
    adc [hl]
    xor d
    and b
    cp b
    and $57
    nop
    add b
    or [hl]
    or [hl]
    ld [hl], l
    ld a, a
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld c, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    ld [hl], l
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
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld c, a
    or c
    and h
    and [hl]
    or c
    and h
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    adc b
    ld a, a
    or e
    and h
    and b
    and d
    and a
    and $57
    nop
    add a
    xor h
    db $f4
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    add sp, $7f
    adc b
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
    and [hl]
    and h
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, l
    and d
    and b
    or d
    and a
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld [hl], l
    ld d, a
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
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
    ld c, a
    or [hl]
    and a
    and b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    and b
    xor h
    and b
    cp c
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
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and b
    or d
    ld d, l
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $57
    nop
    sub [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    rst $20
    ld c, a
    add l
    and b
    or c
    and h
    or [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    add c
    db $e3
    and c
    or h
    or e
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
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
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    ld d, a
    nop
    nop
    rrca
    rlca
    jr jr_066_51d8

    dec bc

jr_066_51d8:
    inc bc
    dec e
    dec e
    ld bc, $040b
    dec d
    rra
    ld bc, $050b
    add hl, de
    dec b
    ld bc, $060b
    dec c
    add hl, bc
    ld [bc], a
    dec bc
    rlca
    dec b
    dec e
    ld bc, $080b
    add hl, bc
    ld hl, $0b01
    add hl, bc
    rlca
    rrca
    ld bc, $0a0b
    dec de
    jr jr_066_5200

    dec bc

jr_066_5200:
    dec bc
    dec d
    ld c, $01
    dec bc
    inc de
    rrca
    dec b
    ld bc, $1103
    ld bc, $0313
    ld a, [bc]
    ld c, $05
    add hl, bc
    ld [$3603], sp
    dec e
    dec bc
    dec b
    inc bc
    ld [hl], $1b
    ld c, $01
    dec bc
    inc d
    nop
    inc c
    ld c, $0a
    nop
    dec sp
    ld c, d
    ld de, $0004
    ld a, $4a
    dec de
    ld a, [de]
    nop
    ld b, c
    ld c, d
    add hl, bc
    ld a, [de]
    nop
    ld b, h
    ld c, d
    ld [de], a
    ld d, $00
    ld b, a
    ld c, d
    ld e, $1c
    nop
    ld c, d
    ld c, d
    ld d, $10
    nop
    ld c, l
    ld c, d
    rlca
    inc c
    nop
    ld d, b
    ld c, d
    ld b, $08
    nop
    ld d, e
    ld c, d
    ld e, $0c
    nop
    ld d, [hl]
    ld c, d
    dec de
    ld de, $5901
    ld c, d
    ld b, $1e
    nop
    ld e, h
    ld c, d
    rrca
    dec l
    ld d, $0b
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    db $e3
    ld c, c
    rst $08
    ld b, $27
    dec d
    ld [hl+], a
    ld [bc], a
    ld de, $ffff
    nop
    nop
    and $49
    rst $08
    ld b, $24
    inc d
    db $10
    ld [$ff00], sp
    rst $38
    and b
    nop
    jp hl


    ld c, c
    rst $08
    ld b, $24
    ld e, $18
    ld [bc], a
    ld hl, $ffff
    nop
    nop
    db $fd
    ld c, c
    rst $08
    ld b, $27
    dec d
    rla
    ld [bc], a
    ld de, $ffff
    add b
    nop
    ld de, $cf4a
    ld b, $28
    ld c, $15
    dec b
    ld [bc], a
    rst $38
    rst $38
    and b
    nop
    inc d
    ld c, d
    rst $08
    ld b, $2f
    rra
    rrca
    dec b
    ld bc, $ffff
    nop
    nop
    rla
    ld c, d
    rst $08
    ld b, $35
    inc d
    ld [$0007], sp
    rst $38
    rst $38
    nop
    nop
    ld a, [de]
    ld c, d
    call z, $3506
    ld hl, $071a
    nop
    rst $38
    rst $38
    nop
    nop
    add hl, hl
    ld c, d
    call $3506
    inc hl
    db $10
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    inc l
    ld c, d
    call $3506
    dec de
    inc d
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    cpl
    ld c, d
    adc $06
    dec [hl]
    rlca
    rla
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    ld [hl-], a
    ld c, d
    adc $06
    dec [hl]
    jr nz, jr_066_5317

    ld b, $00
    rst $38
    rst $38
    nop
    nop
    dec [hl]
    ld c, d
    adc $06
    dec [hl]
    ld [hl+], a
    rla
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    jr c, @+$4c

    adc $06
    dec l
    ld a, [de]
    db $10

jr_066_5317:
    inc bc
    nop
    rst $38
    rst $38
    add b
    nop
    add hl, bc
    ld c, c
    ld l, d
    rlca
    nop
    ld bc, $2605
    ld d, e
    ld [hl], $3c
    nop
    sub b
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    jr c, jr_066_5385

    ld c, h
    adc l
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec c
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    ld c, h
    ld d, e
    ld c, h
    ld h, b
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor [hl]
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld d, c
    cp $54
    ld d, c
    adc [hl]
    ld d, l
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    ld h, [hl]
    ld d, e
    ld c, h
    db $fc
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, e
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld d, c
    and l
    ld d, [hl]
    ld d, c
    push hl
    ld d, [hl]
    ld d, c
    ld b, l
    ld d, a
    ld d, e
    or a
    ld d, a
    ld d, e
    and $57
    ld d, e
    add hl, hl
    ld e, b
    ld d, e
    ld c, d
    ld e, b
    ld d, e
    ld h, l
    ld e, b
    ld d, e

jr_066_5385:
    ld a, c
    ld e, b
    inc c
    stop
    inc c
    ld de, $0000
    add b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld c, a
    xor b
    or d
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
    ld a, a
    and b
    or e
    ld d, c
    xor h
    xor b
    xor h
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, a
    xor e
    xor b
    or l
    and h
    or d
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
    and h
    or l
    and h
    xor l
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or d
    and a
    and h
    call nc, $a251
    xor [hl]
    xor l
    or l
    and h
    or c
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    add sp, $4f
    adc b
    or e

Jump_066_5400:
    call nc, $a27f
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    or h
    xor l
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $51
    sub d
    and a
    and h
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or d
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
    and a
    and h
    or c
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    ld d, h

Call_066_544f:
    ld d, l
    add e
    adc [hl]
    adc e
    adc e
    db $e3
    db $e3
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h

Jump_066_5469:
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d

Call_066_547f:
    and b
    xor l
    ld a, a
    cp c
    xor b
    xor a
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld d, l
    sub e
    sub c
    add b
    adc b
    adc l
    call nc, $b17f
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    cp c
    xor b
    xor a
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    cp b
    ld a, a
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    and h
    xor l
    or e
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
    db $f4
    ld c, a
    or c
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld d, l
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    xor [hl]
    or h
    or e
    db $f4
    ld a, a
    adc b
    ld c, a
    or d
    or e
    or h
    xor h
    and c
    xor e
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, c
    or h
    xor l
    or h
    or d
    and h
    and e
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor l
    and h
    or a
    or e
    ld c, a
    and e
    xor [hl]
    xor [hl]

Jump_066_556c:
    or c
    add sp, $51
    add c
    xor [hl]
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
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
    and h
    and e
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, -$0c
    ld c, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor h
    and h
    or c
    and d
    and a
    and b
    xor l
    and e
    xor b
    or d
    and h
    add sp, $51
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
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld d, c
    and d
    xor [hl]
    xor h
    xor a
    and b
    xor l
    cp b
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
    ld c, a
    or e
    and a
    and b
    or e
    add sp, $57
    nop
    add d
    and a
    and h
    or [hl]
    ld [hl], l
    ld a, a
    add d
    and a
    and h
    or [hl]
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $a17f
    xor b
    and [hl]
    ld c, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    ld a, a
    and c
    or c
    and h
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    add sp, $51
    add d
    and a
    and h
    or [hl]
    ld [hl], l
    ld a, a
    add d
    and a
    and h
    or [hl]
    ld [hl], l
    ld d, a
    nop
    add d
    and a
    and h
    or [hl]
    ld [hl], l
    ld a, a
    add d
    and a
    and h
    or [hl]
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and c
    xor b
    and [hl]
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    adc a
    adc e
    add b
    adc l
    sub e
    add sp, $51
    add d
    and a
    and h
    or [hl]
    ld [hl], l
    ld a, a
    add d
    and a
    and h
    or [hl]
    ld [hl], l
    ld c, a
    add a
    and b
    and b
    and b
    and a
    db $f4
    ld a, a
    adc b
    jp nc, $a57f

    or h
    xor e
    xor e
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    ld c, a
    and b
    xor e
    xor e
    and h
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld d, c
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, a
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    or c
    or e
    and b
    ld a, a
    and b
    xor l
    or a
    xor b
    xor [hl]
    or h
    or d
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld c, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld d, c
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld a, a
    xor b
    xor l
    ld a, a
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld c, a
    or [hl]
    and a
    and h
    or c
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
    ld d, c
    and [hl]
    and b
    or e
    and a
    and h
    or c
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    add sp, $57
    nop
    adc [hl]
    or h
    or c
    ld a, a
    and d
    xor b
    or e
    cp b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and l
    and h
    and b
    or e
    or h
    or c
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld d, l
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    add sp, $51
    adc b
    or e
    call nc, $ad7f
    xor b
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    and b
    or c
    ld c, a
    xor a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    and d
    xor b
    or e
    cp b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $a07f
    ld c, a
    and c
    xor b
    or e
    ld a, a
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
    ld d, l
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, c
    sub d
    and a
    xor b
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    add [hl]
    xor [hl]
    xor e
    and e
    and h
    xor l
    ld c, a
    adc e
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    add d
    xor [hl]
    xor h
    xor h
    and h
    or c
    and d
    and h
    ld d, a
    nop
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
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
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld c, a
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld a, a
    add e
    adc [hl]
    adc c
    adc [hl]
    ld d, a
    nop
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, $4f
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld a, a
    add c
    sub h
    adc b
    adc e
    add e
    adc b
    adc l
    add [hl]
    ld d, a
    nop
    adc h
    sub c
    add sp, -$71
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    ldh [$92], a
    ld c, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld d, l
    sub d
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, a
    nop
    nop
    rrca
    inc bc
    ld a, [de]
    ld bc, $0319
    inc bc
    ld [hl+], a
    ld bc, $0419
    dec bc
    add hl, de
    ld [bc], a
    add hl, de
    dec b
    dec e
    add hl, bc
    ld bc, $0619
    dec e
    dec de
    ld bc, $0819
    inc bc
    ld [$1902], sp
    add hl, bc
    dec d
    ld [de], a
    ld bc, $0a19
    dec bc
    add hl, bc
    ld bc, $0b19
    inc bc
    ld [de], a
    inc bc
    add hl, de
    ld c, $18
    nop
    inc bc
    dec d
    add hl, de
    add hl, de
    nop
    inc b
    dec d
    add hl, de
    ld hl, $0110
    inc c
    inc c
    ld hl, $0211
    inc c
    inc c
    ld d, $27
    ld bc, $0d12
    rla
    daa
    ld [bc], a
    ld [de], a
    dec c
    nop
    ld [$1505], sp
    nop
    ld [hl], l
    ld d, e
    dec b
    ld hl, $7800
    ld d, e
    dec b
    add hl, de
    nop
    ld a, e
    ld d, e
    dec d
    rrca
    nop
    ld a, [hl]
    ld d, e
    dec e
    add hl, de
    nop
    add c
    ld d, e
    dec b
    dec bc
    nop
    add h
    ld d, e
    dec e
    ld a, [bc]
    nop
    add a
    ld d, e
    dec bc
    ld a, [de]
    nop
    adc d
    ld d, e
    ld [$1228], sp
    dec bc
    dec b
    ld [bc], a
    rst $38
    rst $38
    add b
    nop
    ld a, [hl+]
    ld d, e
    rst $38
    rst $38
    dec l
    ld [hl+], a
    rla
    dec b
    ld [bc], a
    rst $38
    rst $38
    or b
    nop
    ld a, $53
    rst $38
    rst $38
    inc hl
    dec bc
    inc h
    dec b
    ld bc, $ffff
    and b
    nop
    ld d, d
    ld d, e
    rst $38
    rst $38
    inc h
    inc e
    jr jr_066_5945

    ld [bc], a
    rst $38
    rst $38
    add b
    nop

jr_066_5945:
    ld d, l
    ld d, e
    rst $38
    rst $38
    ld a, [hl-]
    db $10
    rra
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld e, b
    ld d, e
    rst $38
    rst $38
    daa
    rla
    inc de
    inc b
    db $10
    rst $38
    rst $38
    sub b
    nop
    ld l, h
    ld d, e
    rst $38
    rst $38
    daa
    ld a, [de]
    daa
    ld [bc], a
    ld de, $ffff
    add b
    nop
    ld l, a
    ld d, e
    rst $38
    rst $38
    jr z, jr_066_5983

    ld [de], a
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld [hl], d
    ld d, e
    rst $38
    rst $38
    nop
    nop
    ld d, c
    sbc h
    ld e, c
    ld l, e

jr_066_5983:
    ld b, a
    inc [hl]
    inc de
    nop
    add hl, bc
    sub b
    ld e, c
    ld c, h
    ld c, $5a
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec a
    ld e, d
    ld d, h
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    inc c
    inc bc
    nop
    nop
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
    and b
    ld a, a
    or c
    and h
    and e
    ld c, a
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld d, l
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    add b
    adc d
    add h
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $ae7f
    and e
    and e
    db $f4
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld c, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor [hl]
    or c
    and e
    xor b
    xor l
    and b
    or c
    cp b
    ld d, c
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or c
    and b
    or c
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    and b
    xor d
    and h
    ld [hl], l
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld c, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    and $7f
    adc b
    ret nc

    ld a, a
    or d
    and b
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    sub h
    sub d
    adc b
    add d
    add sp, $57
    nop
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    and a
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    xor e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    or c
    and b
    and e
    xor b
    xor [hl]
    ld [hl], l
    ld c, a
    adc b
    or e
    call nc, $a27f
    or c
    and h
    and h
    xor a
    cp b
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc bc
    ld [bc], a
    ld [bc], a
    rlca
    nop
    nop
    ld [bc], a
    ld b, c
    rlca
    ld b, $09
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, a
    ld e, c
    rst $38
    rst $38
    add hl, hl
    add hl, bc
    ld a, [bc]
    inc b
    db $10
    rst $38
    rst $38
    sub b
    nop
    add d
    ld e, c
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $04c3
    add hl, bc
    ret z

    ld e, d
    ld c, h
    adc l
    ld e, e
    ld d, h
    ld c, c
    ld h, h
    or e
    ld e, h
    nop
    nop
    ld e, [hl]
    dec b
    ld bc, $605f
    inc sp
    jp Jump_066_4704


    ld c, h
    dec sp
    ld e, l
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $21
    nop
    inc e
    rlca
    nop
    or $5a
    ld sp, $000e
    add hl, bc
    ldh a, [$5a]
    inc sp
    sub d
    dec b
    inc sp
    sub e
    dec b
    inc sp
    ld c, $04
    inc sp
    rrca
    inc b
    inc sp
    db $10
    inc b
    ld c, h
    ld d, l
    ld e, l
    ld d, l
    sbc [hl]
    rst $08
    ld bc, $f408
    ld e, d
    inc sp
    ld c, $00
    ld c, h
    rst $28
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld e, c
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld b, $07
    ld [bc], a
    ld e, e
    ld b, $06
    rst $38
    ld e, d
    sub c
    inc c
    ld [de], a
    nop
    inc c
    inc de
    nop
    sub d
    dec b
    ld hl, $ae01
    ld h, b
    db $f4
    ld h, b
    nop
    nop
    ld de, $665b
    ld b, a
    ld c, h
    ld d, $61
    ld d, h
    ld c, c
    sub c
    sub e
    dec b
    ld hl, $5702
    ld h, c
    ld [hl], h
    ld h, c
    nop
    nop
    dec h
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    adc a
    ld h, c
    ld d, h
    ld c, c
    sub c
    ld c, $04
    ld a, [hl-]
    ld bc, $5ee1
    db $10
    ld e, a
    nop
    nop
    add hl, sp
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    dec l
    ld e, a
    ld d, h
    ld c, c
    sub c
    rrca
    inc b
    ld a, [hl-]
    ld [bc], a
    ld h, l
    ld e, a
    cp l
    ld e, a
    nop
    nop
    ld c, l
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    db $dd
    ld e, a
    ld d, h
    ld c, c
    sub c
    db $10
    inc b
    ld a, [hl-]
    inc bc
    rrca
    ld h, b
    ld h, $60
    nop
    nop
    ld h, c
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    ld b, a
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04c3
    add hl, bc
    ld [hl], a
    ld e, e
    ld c, h
    cp a
    ld h, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], l
    ld h, d
    ld d, h
    ld c, c
    sub c
    inc [hl]
    ld hl, $0900
    add [hl]
    ld e, e
    inc c
    dec l
    nop
    ld b, e
    dec b
    ld bc, $0c01
    ld l, $00
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    and h
    or a
    xor a
    and h
    or c
    xor b
    and h
    xor l
    and d
    and h
    or d
    ld a, a
    xor b
    xor l
    ld d, c
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or [hl]
    and h
    ld a, a
    and e
    xor [hl]
    add sp, $7f
    ld d, c
    adc b
    db $f4
    ld a, a
    or e
    xor [hl]
    xor [hl]
    db $f4
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or d
    or h
    and l
    and l
    and h
    or c
    and h
    and e
    ld a, a
    xor h
    or h
    and d
    and a
    ld d, l
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    xor e
    xor b
    and l
    and h
    add sp, $51
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and h
    xor e
    and e
    and h
    or c
    db $f4
    ld a, a
    xor e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    xor h
    and h
    and b
    xor l
    add sp, $51
    adc b
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
    or [hl]
    xor b
    or e
    and a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld d, c
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, a
    and c
    xor [hl]
    or c
    xor l
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld c, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    add sp, $51
    adc b
    db $f4
    ld a, a
    adc a
    sub c
    sbc b
    add d
    add h
    db $e3
    db $e3
    or e
    and a
    and h
    ld c, a
    or [hl]
    xor b
    xor l
    or e
    and h
    or c
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    db $e3
    db $e3
    ld d, c
    or d
    and a
    and b
    xor e
    xor e
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
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    add b
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    xor b
    xor h
    xor a
    or c
    and h
    or d
    or d
    and h
    and e
    ld c, a
    and c
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    or c
    xor [hl]
    or [hl]
    and h
    or d
    or d
    add sp, $51
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    xor e
    xor b
    and l
    and h
    call nc, $ae7f
    and c
    or d
    or e
    and b
    and d
    xor e
    and h
    or d
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    cp b
    ld a, a
    xor [hl]
    and l
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
    add [hl]
    adc e
    add b
    add d
    adc b
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
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
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, l
    or d
    or e
    and b
    or e
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
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor e
    and h
    or e
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    or d
    and h
    ld a, a
    sub [hl]
    add a
    adc b
    sub c
    adc e
    db $e3
    ld d, l
    adc a
    adc [hl]
    adc [hl]
    adc e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld d, l
    or c
    and h
    and b
    xor e
    ld a, a
    or [hl]
    and a
    xor b
    or c
    xor e
    xor a
    xor [hl]
    xor [hl]
    xor e
    or d
    add sp, $51
    add b
    xor l
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld [hl], l
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    and b
    ld a, a
    and [hl]
    xor b
    and l
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    sub e
    adc h
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
    adc b
    add d
    sbc b
    ld a, a
    sub [hl]
    adc b
    adc l
    add e
    add sp, $51
    adc b
    or e
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    or d
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    add sp, $51
    adc b
    or e
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
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and a
    and b
    or c
    or d
    and a
    xor l
    and h
    or d
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    or [hl]
    xor b
    xor l
    or e
    and h
    or c
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor b
    and d
    and h
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    xor e
    or e
    db $f4
    ld a, a
    or d
    xor a
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    and b
    or c
    or c
    xor b
    or l
    and h
    or d
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or e
    xor [hl]
    db $e3
    ld d, c
    and [hl]
    and h
    or e
    and a
    and h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    add sp, $51
    add d
    and a
    and h
    or c
    xor b
    or d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    pop de
    xor e
    ld a, a
    and l
    or c
    and h
    and h
    cp c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and d
    and b
    xor l
    push de
    ld a, a
    and e
    xor [hl]
    ld a, a
    and b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
    add sp, $7f
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld c, a
    and e
    xor [hl]
    ld a, a
    and b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
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
    or c
    and h
    call nc, $a07f
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    and d
    and b
    xor l
    ld a, a
    or h
    or d
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor b
    or e
    call nc, $a54f
    or c
    xor [hl]
    cp c
    and h
    xor l
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld c, a
    or d
    xor e
    xor b
    xor a
    xor a
    and h
    or c
    cp b
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    add sp, $51
    adc b
    or e
    call nc, $a57f
    or h
    xor l
    db $f4
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    xor b
    or e
    and $51
    add c
    or h
    or e
    ld a, a
    and a
    and h
    cp b
    db $e3
    db $e3
    or [hl]
    and h
    db $d3
    and h
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor a
    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    and b
    xor h
    and h
    or d
    ld d, l
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    or [hl]
    and h
    ld a, a
    and b
    or c
    and h
    and $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor b
    or d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    add sp, $4f
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
    xor b
    xor l
    and [hl]
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    adc a
    sub c
    sbc b
    add d
    add h
    call nc, $b24f
    and h
    and d
    or c
    and h
    or e
    add sp, $57
    nop
    adc [hl]
    adc d
    add sp, $7f
    adc b
    pop de
    xor e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    adc a
    sub c
    sbc b
    add d
    add h
    call nc, $b27f
    and h
    and d
    or c
    and h
    or e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    and c
    and h
    and a
    xor b
    xor l
    and e
    ld c, a
    adc a
    sub c
    sbc b
    add d
    add h
    call nc, $af7f
    xor [hl]
    or [hl]
    and h
    or c
    ld [hl], l
    ld d, c
    add a
    and h
    ld a, a
    xor h
    and h
    and e
    xor b
    or e
    and b
    or e
    and h
    or d
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld c, a
    and b
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    and l
    and b
    xor e
    xor e
    ld a, a
    and e
    and b
    xor b
    xor e
    cp b
    ld d, c
    or e
    xor [hl]
    ld a, a
    or d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    and h
    xor l
    ld a, a
    and a
    xor b
    or d
    ld c, a
    xor h
    xor b
    xor l
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $57
    nop
    sub e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc a
    sub c
    sbc b
    add d
    add h
    db $f4
    ld c, a
    xor [hl]
    or h
    or c
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
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor d
    and b
    or e
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
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
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    xor d
    xor b
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
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
    or d
    xor d
    and b
    or e
    and h
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    or c
    and h
    and d
    xor b
    or d
    xor b
    xor [hl]
    xor l
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and l
    and b
    or c
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $57
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld c, a
    xor a
    and b
    or c
    and b
    xor e
    xor e
    and h
    xor e
    ld a, a
    or e
    or h
    or c
    xor l
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor h
    and h
    ld c, a
    or [hl]
    xor b
    xor a
    and h
    ld a, a
    xor [hl]
    or h
    or e
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
    xor l
    push de
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and c
    and h
    and h
    xor l
    ld a, a
    and c
    or c
    and b
    and [hl]
    and [hl]
    xor b
    xor l
    and [hl]
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    xor d
    xor b
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    adc a
    sub c
    sbc b
    add d
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or l
    and h
    or e
    and h
    or c
    and b
    xor l
    ld c, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    and e
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    ei
    or $7f
    cp b
    and h
    and b
    or c
    or d
    add sp, $51
    add a
    and h
    call nc, $b27f
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld a, a
    and l
    or c
    and h
    and h
    cp c
    xor b
    xor l
    and [hl]
    ld d, c
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor b
    and d
    and h
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
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    and h
    and b
    xor l
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor h
    and h
    xor e
    or e
    ld a, a
    and a
    xor b
    xor h
    ld d, c
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
    and c
    or h
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor h
    and c
    xor b
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    adc a
    sub c
    sbc b
    add d
    add h
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld d, l
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
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor [hl]
    or e
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    and c
    or c
    xor b
    and e
    and [hl]
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and h
    xor l
    db $e3
    ld c, a
    and h
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and [hl]
    and b
    xor a
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    ld de, $0304
    ld [bc], a
    rlca
    ld de, $0305
    ld [bc], a
    rlca
    nop
    ld [bc], a
    rrca
    inc bc
    nop
    ld a, l
    ld e, e
    rrca
    ld b, $00
    ld a, l
    ld e, e
    rlca
    jr jr_066_6302

    add hl, bc
    ld b, $00
    rst $38
    rst $38
    or b
    nop

jr_066_6302:
    sbc [hl]
    ld e, d
    rst $38
    rst $38
    ld a, [hl+]
    ld [$060a], sp
    nop
    rst $38
    rst $38
    add d
    ld bc, $5b05
    rst $38
    rst $38
    inc l
    ld de, $0906
    nop
    rst $38
    rst $38
    sub d
    ld bc, $5b2d
    rst $38
    rst $38
    ld a, [hl+]
    ld de, $080b
    nop
    rst $38
    rst $38
    add d
    ld bc, $5b19
    rst $38
    rst $38
    inc l
    dec c
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub d
    ld bc, $5b41
    rst $38
    rst $38
    inc l
    ld [$0606], sp
    nop
    rst $38
    rst $38
    sub d
    ld bc, $5b55
    rst $38
    rst $38
    ld c, b
    ld [de], a
    ld [$0006], sp
    rst $38
    rst $38
    add b
    nop
    ld l, c
    ld e, e
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld d, c
    ld h, d
    ld h, e
    ld d, c
    or e
    ld h, e
    ld d, c
    jr jr_066_63c6

    nop
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    and $7f
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
    ld a, a
    and a
    and b
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld d, l
    and c
    and b
    and d
    xor d
    and $51
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    and h
    xor l
    ld a, a
    xor b
    xor l
    ld c, a
    and c
    xor e
    and b
    and d
    xor d
    ld a, a
    and b
    or e
    ld a, a
    adc e
    add b
    adc d
    add h
    ld a, a
    adc [hl]
    add l
    ld d, l
    sub c
    add b
    add [hl]
    add h
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and l
    or c
    xor [hl]

jr_066_63c6:
    xor h
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld d, l
    and h
    and b
    or c
    xor e
    cp b
    add sp, $51
    adc b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld c, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and c
    and h
    db $e3
    ld d, l
    and l
    xor [hl]
    or c
    and h
    ld a, a
    adc b
    ld a, a
    xor e
    and h
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    ld d, l
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    add sp, $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
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
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, c
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    xor e
    cp b
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    inc b
    ld [bc], a
    rlca
    rlca
    inc b
    inc b
    ld [bc], a
    rlca
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
    ld d, [hl]
    ld h, e
    rst $38
    rst $38
    dec l
    ld b, $0b
    ld [bc], a
    ld de, $ffff
    add b
    nop
    ld e, c
    ld h, e
    rst $38
    rst $38
    daa
    rlca
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld e, h
    ld h, e
    rst $38
    rst $38
    inc h
    rlca
    ld b, $08
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, a
    ld h, e
    rst $38
    rst $38
    nop
    nop
    ld d, c
    cp b
    ld h, h
    nop
    adc h
    sub e
    add sp, -$74
    adc [hl]
    sub c
    sub e
    add b
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    and b
    ld a, a
    xor h
    and b
    cp c
    and h
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    add sp, $51
    add c
    and h
    ld a, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    add sp, $7f
    add e
    xor [hl]
    xor l
    push de
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    nop
    inc b
    inc b
    nop
    ld bc, $0904
    dec b
    nop
    ld [bc], a
    inc b
    add hl, bc
    inc b
    add hl, bc
    ld bc, $0502
    dec b
    add hl, bc
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    ld bc, $0643
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    or l
    ld h, h
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0058
    add hl, bc
    ld b, d
    ld h, l
    ld c, h
    ld c, e
    ld h, l
    ld d, l
    sbc [hl]
    ret


    ld bc, $4608
    ld h, l
    inc sp
    ld e, b
    nop
    ld c, h
    sbc $65
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], e
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    inc c
    ld bc, $0000
    ld [hl], l
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
    or e
    or c
    and b
    cp b
    and h
    and e
    ld c, a
    and l
    and b
    or c
    ld [hl], l
    ld d, c
    add a
    and h
    or c
    and h
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    and e
    xor b
    db $e3
    ld c, a
    or e
    and b
    or e
    and h
    and e
    add sp, $7f
    adc b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld d, c
    and b
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and a
    and b
    or d
    ld c, a
    and c
    and h
    and h
    xor l
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    xor l
    and h
    and e
    add sp, $51
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or d
    and a
    and b
    or c
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    or [hl]
    xor b
    or e
    and a
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
    add sp, $4f
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    db $f4
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    add sp, $57
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    or e
    and $7f
    adc b
    or e
    ld c, a
    xor b
    or d
    ld a, a
    add a
    adc b
    add e
    add e
    add h
    adc l
    ld a, a
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and e
    or c
    and b
    or [hl]
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    sub c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    sbc h
    ld a, a
    xor b
    or e
    or d
    ld c, a
    or e
    cp b
    xor a
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and e
    and h
    db $e3
    ld d, l
    xor a
    and h
    xor l
    and e
    ld a, a
    xor [hl]
    xor l
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
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    xor h
    and h
    and e
    xor b
    or e
    and b
    or e
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $0609
    rlca
    inc bc
    ld bc, $0609
    nop
    ld [bc], a
    ld bc, $0000
    ld c, b
    ld h, l
    ld bc, $0001
    ld c, b
    ld h, l
    ld bc, $073a
    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop
    daa
    ld h, l
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $003a
    add hl, bc
    cp $66
    ld sp, $0039
    add hl, bc
    ldh [$66], a
    ld sp, $0022
    add hl, bc
    rst $10
    ld h, [hl]
    ld sp, $0038
    add hl, bc
    pop de
    ld h, [hl]
    ld c, h
    ld l, $67
    ld d, h
    ld c, c
    inc sp
    jr c, jr_066_66d0

jr_066_66d0:
    sub c
    ld c, h
    ld c, l
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    sub b
    ld l, b
    ld d, h
    ld c, c
    inc sp
    add hl, sp
    nop
    sub c
    dec d
    add c
    rrca
    ld b, d
    nop
    ld [$66d7], sp
    ld c, h
    ld a, $69
    ld d, h
    rrca
    add hl, de
    nop
    ld b, $00
    inc e
    ld h, a
    ld b, $01
    ld [hl+], a
    ld h, a
    ld b, $02
    ld d, $67
    inc bc
    cp $66
    ld c, h
    ld [hl], a
    ld l, c
    ld d, l
    sbc [hl]
    ld b, c
    ld bc, $1108
    ld h, a
    ld c, h
    jp Jump_066_5469


    ld c, c
    ld [hl-], a
    ld a, [hl-]
    nop
    sub c
    ld c, c
    inc sp
    ld a, [hl-]
    nop
    sub c
    ld c, h
    ld bc, $546a
    ld c, c
    sub c
    ld c, h
    ld e, h
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, c
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld d, e
    cp h
    ld l, d
    inc c
    ld bc, $0000
    adc e
    add b
    adc d
    add h
    ld a, a
    adc [hl]
    add l
    ld a, a
    sub c
    add b
    add [hl]
    add h
    ld a, a
    xor b
    or d
    ld c, a
    and b
    and d
    or e
    or h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and b
    ld a, a
    and d
    or c
    and b
    or e
    and h
    or c
    ld d, c
    xor h
    and b
    and e
    and h
    ld a, a
    and c
    cp b
    ld a, a
    or c
    and b
    xor h
    xor a
    and b
    and [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and d
    or c
    and b
    or e
    and h
    or c
    ld a, a
    and l
    xor b
    xor e
    xor e
    and h
    and e
    ld c, a
    or h
    xor a
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or c
    and b
    xor b
    xor l
    or [hl]
    and b
    or e
    and h
    or c
    ld d, c
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    add b
    adc d
    add h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and l
    xor [hl]
    or c
    xor h
    and h
    and e
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    or d
    or e
    xor [hl]
    or c
    cp b
    ld c, a
    xor a
    and b
    or d
    or d
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld d, c
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    call nc, $a67f
    or c
    and h
    and b
    or e
    db $e3
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    db $e3
    and [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    add sp, $51
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
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
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld d, c
    xor e
    xor b
    or l
    and h
    xor e
    cp b
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld c, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
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
    ld c, a
    or [hl]
    and a
    and b
    or e
    call nc, $a77f
    and b
    xor a
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    adc e
    add b
    adc d
    add h
    ld a, a
    and a
    and b
    or d
    xor l
    push de
    ld c, a
    and c
    and h
    and h
    xor l
    ld a, a
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld d, c
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor h
    and h
    xor l
    ld a, a
    or [hl]
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    and c
    xor e
    and b
    and d
    xor d
    ld a, a
    and b
    or c
    or c
    xor b
    or l
    and h
    and e
    add sp, $57
    nop
    adc e
    add b
    adc d
    add h
    ld a, a
    adc [hl]
    add l
    ld a, a
    sub c
    add b
    add [hl]
    add h
    ld a, a
    xor b
    or d
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
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
    add sp, $51
    adc b
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    cp b
    and h
    or e
    ld a, a
    or c
    and h
    and b
    xor e
    xor b
    cp c
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or d
    and h
    and h
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
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    call nc, $ab55
    and b
    or c
    and [hl]
    and h
    or d
    or e
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    add sp, $51
    add e
    xor [hl]
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
    and b
    ld a, a
    sub c
    adc [hl]
    add e
    and $4f
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    xor b
    and l
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
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
    and a
    and b

Jump_066_6949:
    or l
    and h
    ld a, a
    and b
    ld c, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    rst $20
    ld a, a
    adc e
    and h
    or e
    call nc, $b251
    and h
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    or e
    and a
    and b

Call_066_696c:
    or e
    ld c, a
    and c
    and b
    and c
    cp b
    ld a, a
    xor b
    or d
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or d
    ld c, a
    xor [hl]
    or h
    or e
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    or e
    xor b
    xor a
    ld a, a
    xor h
    cp b
    ld a, a
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
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
    and b
    or d
    ld a, a
    and b
    ld c, a
    xor h
    and h
    xor h
    and h
    xor l
    or e
    xor [hl]
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
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
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    or d
    ld c, a
    and b
    ld a, a
    and c
    xor [hl]
    xor l
    or h
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or d
    ld c, a
    xor [hl]
    or h
    or e
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    ld [hl], l
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    or d
    and b
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    sub $a4
    ld d, c
    or d
    and h
    and h
    xor l
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    and [hl]
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    sub e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    and b
    ld c, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    sub d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, c
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
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    and $4f
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    add d
    sub h
    sub c
    sub c
    add h
    adc l
    sub e
    ld a, a
    sub c
    add h
    add d
    adc [hl]
    sub c
    add e
    ld d, c
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and c
    cp b
    ld c, a
    ld d, b
    ld bc, $d0ac
    ld d, b
    ld d, b
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld b, $07
    inc bc
    ld [bc], a
    add hl, bc
    ld b, $00
    ld [bc], a
    ld bc, $0000
    dec hl
    ld h, a
    ld bc, $0001
    dec hl
    ld h, a
    ld bc, $073b
    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop
    xor [hl]
    ld h, [hl]
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0022
    add hl, bc
    add hl, de
    ld l, e
    ld c, h
    rra
    ld l, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, l
    ld l, e
    ld d, h
    ld c, c
    sub c
    nop
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and a
    and h
    and b
    and e
    and h
    and e
    ld c, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc e
    add b
    adc d
    add h
    ld a, a
    adc [hl]
    add l
    ld a, a
    sub c
    add b
    add [hl]
    add h
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
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    xor e
    and b
    or e
    and h
    xor e
    cp b
    add sp, $57
    nop
    adc l
    xor [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc e
    add b
    adc d
    add h
    ld a, a
    adc [hl]
    add l
    ld a, a
    sub c
    add b
    add [hl]
    add h
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld d, l
    and e
    and b
    cp b
    or d
    add sp, $57
    nop
    nop
    inc b
    nop
    inc b
    ld bc, $0509
    nop
    dec b
    ld [bc], a
    add hl, bc
    dec b
    rlca
    inc b
    dec b
    ld [bc], a
    rlca
    rlca
    dec b
    dec b
    ld [bc], a
    rlca
    nop
    nop
    ld bc, $0843
    inc b
    add hl, bc
    nop
    rst $38
    rst $38
    add b
    nop
    dec bc
    ld l, e
    rst $38
    rst $38
    ld [bc], a
    push bc
    ld l, e
    nop
    nop
    ret


    ld l, e
    nop
    nop
    ld bc, $ca05
    ld l, e
    adc l
    jp c, $916b

    sub c
    ld sp, $0022
    add hl, bc
    push de
    ld l, e
    ld [de], a
    add hl, bc
    dec b
    nop
    sub b
    ld [de], a
    add hl, bc
    dec b
    ld bc, $7f90
    add hl, sp
    nop
    inc e
    add hl, bc
    ld b, $00
    ld [$066b], a
    ld bc, $6c38
    inc d
    ld bc, $6991
    nop
    and d
    ld l, h
    ld [hl], l
    nop
    inc b
    rrca
    ld l, c
    inc b
    cp e
    ld l, h
    db $76
    inc bc
    ld bc, $0075
    inc bc
    rrca
    ld l, c
    inc bc
    and h
    ld l, h
    ld b, a
    ld c, h
    jp nc, Jump_066_556c

    inc h
    nop
    nop
    inc bc
    rst $20
    ld b, $00
    ld [de], a
    ld l, h
    inc bc
    dec e
    ld l, h
    inc hl
    nop
    nop
    inc bc
    add sp, $4c
    ld a, [bc]
    ld l, l
    inc bc
    jr z, @+$6e

    inc hl
    nop
    nop
    inc bc
    add sp, $4c
    jr nz, jr_066_6c92

    inc bc
    jr z, @+$6e

    ld d, l
    ld c, c
    ld l, c
    inc bc
    xor d
    ld l, h
    ld l, c
    inc b
    pop bc
    ld l, h
    inc d
    ld bc, $3d0f
    nop
    sub c
    ld [hl], l
    nop
    inc bc
    rrca
    ld l, c
    inc bc
    xor a
    ld l, h
    db $76
    inc b
    nop
    ld [hl], l
    nop
    inc b
    rrca
    ld l, c
    inc b
    rst $00
    ld l, h
    ld b, a
    ld c, h
    jp nc, Jump_066_556c

    inc h
    nop
    nop
    inc bc
    rst $20
    ld b, $00
    ld e, h
    ld l, h
    inc bc
    ld h, a
    ld l, h
    inc hl
    nop
    nop
    inc bc
    add sp, $4c
    ld a, [bc]
    ld l, l
    inc bc
    ld [hl], d
    ld l, h
    inc hl
    nop
    nop
    inc bc
    add sp, $4c
    jr nz, jr_066_6cdc

    inc bc
    ld [hl], d
    ld l, h
    ld d, l
    ld c, c
    ld l, c
    inc b
    call Call_066_696c
    inc bc
    or l
    ld l, h
    inc d
    ld bc, $3d0f
    nop
    sub c
    ld d, c
    ld b, c
    ld l, l
    ld l, e
    ld b, a
    ld sp, $0059
    add hl, bc
    sbc h
    ld l, h
    ld c, h
    sbc e
    ld l, l
    ld d, l
    sbc [hl]

jr_066_6c92:
    db $e4
    ld bc, $a008
    ld l, h
    inc sp
    ld e, c
    nop
    ld c, c
    sub c
    ld c, h
    dec l
    ld l, [hl]
    ld d, h
    ld c, c
    sub c
    inc c
    ld b, a
    ld de, $1311
    inc de
    ld bc, $1247
    ld [de], a
    db $10
    db $10
    ld b, a
    db $10
    db $10
    inc de
    inc de
    nop
    ld b, a
    ld [de], a
    ld [de], a
    ld de, $0011
    ld b, a
    ld de, $1211
    ld [de], a
    ld bc, $1347
    inc de
    db $10
    db $10
    ld bc, $1047
    db $10
    ld [de], a
    ld [de], a
    nop
    ld b, a
    inc de
    inc de
    ld de, $4711
    nop
    add a
    xor [hl]
    xor e
    and e
    ld a, a
    xor b
    or e
    ld a, a
    or e

jr_066_6cdc:
    and a
    and h
    or c
    and h
    db $f4
    ld c, a
    xor d
    xor b
    and e
    and e
    xor [hl]
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    xor e
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    ldh a, [$f7]
    or $f6
    or $4f
    or e
    xor [hl]
    ld a, a
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
    add sp, $57
    nop
    sub e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    xor h
    or h
    and d
    and a
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    xor l
    ld a, a
    xor a
    and b
    cp b
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    or l
    and h
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    add sp, $57
    nop
    add a
    and h
    db $e3
    and a
    and h
    db $e3
    and a
    and h
    add sp, $7f
    sub [hl]
    and h
    db $d3
    and h
    ld c, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    and c
    or h
    xor l
    and e
    xor e
    and h
    add sp, $51
    add h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and h
    and h
    ld a, a
    or [hl]
    and a
    and b
    or e
    call nc, $a67f
    xor [hl]
    xor b
    xor l
    and [hl]
    ld d, c
    xor [hl]
    xor l
    ld a, a
    or h
    xor a
    ld a, a
    and b
    or e
    ld a, a
    adc e
    add b
    adc d
    add h
    ld a, a
    adc [hl]
    add l
    ld c, a
    sub c
    add b
    add [hl]
    add h
    add sp, $57
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and d
    and a
    and b
    or d
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    xor h
    cp b
    ld a, a
    xor a
    xor [hl]
    or d
    or e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld d, l
    or e
    and a
    or h
    and [hl]
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and c
    and h
    and a
    xor b
    xor l
    and e
    add sp, $51
    adc b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor h
    and h
    ld a, a
    or h
    xor l
    and d
    xor [hl]
    xor h
    db $e3
    ld c, a
    and l
    xor [hl]
    or c
    or e
    and b
    and c
    xor e
    and h
    add sp, $7f
    add d
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    and $57
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
    ld sp, hl
    or $e8
    ld d, a
    nop
    sub h
    or d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and [hl]
    and b
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and b
    or l
    xor [hl]
    xor b
    and e
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    add sp, $57
    nop
    nop
    inc b
    nop
    inc b
    inc b
    add hl, bc
    dec b
    nop
    dec b
    dec b
    add hl, bc
    dec b
    rlca
    inc b
    inc bc
    add hl, bc
    dec b
    rlca
    dec b
    inc bc
    add hl, bc
    dec b
    nop
    nop
    inc bc
    ld b, e
    ld [$0904], sp
    nop
    rst $38
    rst $38
    add b
    nop
    add l
    ld l, h
    dec [hl]
    rlca
    ld [hl], $08
    ld b, $06
    nop
    rst $38
    rst $38
    nop
    nop
    add d
    ld l, h
    call c, $3506
    ld [$070b], sp
    nop
    rst $38
    rst $38
    nop
    nop
    add d
    ld l, h
    call c, $0106
    and d
    ld l, [hl]
    nop
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $00cc
    add hl, bc
    or h
    ld l, [hl]
    ld c, h
    ret nz

    ld l, [hl]
    ld d, h
    ld c, c
    inc sp
    call z, $9100
    ld c, h
    add c
    ld l, a
    ld d, h
    ld c, c
    sub c
    ld d, e
    add sp, $6f
    inc c
    ld [bc], a
    nop
    nop
    add a
    xor b
    rst $20
    ld d, c
    sub c
    add h
    add e
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
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
    add sp, $51
    add a
    and h
    ld a, a
    and a
    and b
    or d
    xor l
    push de
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld c, a
    and h
    xor b
    or e
    and a
    and h
    or c
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    xor l
    xor [hl]
    ld a, a
    xor b
    and e
    and h
    and b
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and a
    and h
    ld c, a
    xor b
    or d
    ld a, a
    xor [hl]
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and a
    and h
    call nc, $a155
    and h
    and h
    xor l
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    and b
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor l
    xor [hl]
    ld c, a
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    xor b
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
    ld d, c
    and a
    and h
    call nc, $a37f
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor b
    xor l
    and h
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    cp b
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and a
    xor b
    xor h
    add sp, $57
    nop
    adc b
    ld a, a
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
    sub c
    add h
    add e
    ld c, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    or h
    or c
    or e
    ld a, a
    xor [hl]
    or c
    ld d, c
    or d
    xor b
    and d
    xor d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    and a
    and h
    call nc, $a07f
    ld c, a
    and c
    xor [hl]
    cp b
    add sp, $7f
    adc b
    jp nc, $af7f

    or c
    xor [hl]
    or h
    and e
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    and a
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld d, c
    and e
    xor [hl]
    add sp, $57
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    or d
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    xor l
    push de
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    xor l
    ld d, l
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld [hl], l
    ld d, a
    nop
    nop
    inc bc
    rlca
    ld [bc], a
    ld bc, $020d
    rlca
    inc bc
    ld bc, $020d
    nop
    rlca
    ld bc, $040d
    nop
    inc bc
    ld bc, $0000
    cp l
    ld l, [hl]
    ld bc, $0001
    cp l
    ld l, [hl]
    ld bc, $0002
    cp d
    ld l, [hl]
    ld bc, $070e
    add hl, bc
    ld [$ff00], sp
    rst $38
    nop
    nop
    and e
    ld l, [hl]
    rst $38
    rst $38
    nop
    nop
    ld d, e
    ld d, b
    ld [hl], b
    ld d, e
    add a
    ld [hl], b
    nop
    ld d, d
    ld a, a
    xor a
    xor e
    and b
    cp b
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc l
    db $fc
    ld a, [$51e8]
    add c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    db $e3
    db $e3
    ld c, a
    xor l
    xor [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    rst $20
    ld d, a
    nop
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
    xor b
    or e
    ld c, a
    and a
    and b
    or d
    xor l
    push de
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or h
    or d
    and h
    and e
    ld d, l
    xor b
    xor l
    ld a, a
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
    ld d, a
    nop
    nop
    ld bc, $0700
    inc bc
    dec c
    inc bc
    nop
    ld [bc], a
    dec b
    inc bc
    nop
    ld c, d
    ld [hl], b
    ld bc, $0000
    ld c, l
    ld [hl], b
    nop
    nop
    nop
    ld l, e
    ld b, a
    inc e
    ld a, [bc]
    ld b, $0f
    sbc $70
    ld c, h
    jr nc, jr_066_714c

    ld d, h
    ld c, c
    sub c
    inc [hl]
    ld e, h
    nop
    add hl, bc
    ld e, $71
    ld c, h
    or [hl]
    ld [hl], c
    ld c, [hl]
    ld [$7124], sp
    ld c, h
    ld b, h
    ld [hl], d
    ld d, h
    rrca
    ld h, e
    nop
    ld b, $00
    inc h
    ld [hl], c
    ld b, $01
    ld a, [hl+]
    ld [hl], c
    ld [hl], $5c
    nop
    ld c, h
    ld h, [hl]
    ld [hl], d
    ld d, h
    ld c, c
    rrca
    ld l, $00
    ld a, a
    dec c
    nop
    adc e
    inc a
    rrca
    ld sp, $0f00
    dec a
    nop
    ld b, a
    ld c, h
    sub [hl]
    ld [hl], d
    rrca
    ld h, h
    nop
    ld d, l
    ld c, h
    xor d
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, [$5472]
    ld c, c
    sub c
    ld c, h
    inc [hl]
    ld [hl], e
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], a
    ld [hl], e
    ld d, h
    ld c, c
    sub c
    nop
    add e
    add b
    adc b
    sub d
    sbc b
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    xor d
    xor b
    and e
    ld c, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor b

jr_066_714c:
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, c
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld a, a
    xor b
    xor l
    ld a, a
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld c, a
    add d
    adc b
    sub e
    sbc b
    add sp, $51
    add c
    or h
    or e
    ld a, a
    and a
    and h
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    db $f4
    ld d, c
    xor b
    or e
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    or d
    ld c, a
    and l
    xor [hl]
    or c
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
    add e
    add b
    adc b
    sub d
    sbc b
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    or e
    xor b
    xor h
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    jp nc, $a07f

    and c
    xor [hl]
    or h
    or e
    ld d, l
    or e
    xor [hl]
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
    ld a, a
    or e
    and h
    and b
    add sp, $51
    sub [hl]
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor c
    xor [hl]
    xor b
    xor l
    ld a, a
    xor h
    and h
    and $51
    adc [hl]
    and a
    db $f4
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
    and b
    or c
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld a, a
    and e
    xor b
    or c
    or e
    cp b
    add sp, $51
    sub [hl]
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
    ld a, a
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    xor [hl]
    xor l
    and h
    and $57
    nop
    add e
    add b
    adc b
    sub d
    sbc b
    sbc h
    ld a, a
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld a, a
    and [hl]
    or c
    xor [hl]
    xor [hl]
    xor h
    and $57
    nop
    add e
    add b
    adc b
    sub d
    sbc b
    sbc h
    ld a, a
    adc [hl]
    adc d
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld d, l
    xor l
    xor b
    and d
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    ld bc, $d099
    nop
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld c, a
    and d
    xor [hl]
    xor l
    or e
    and h
    xor l
    or e
    add sp, $57
    nop
    add e
    add b
    adc b
    sub d
    sbc b
    sbc h
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and [hl]
    xor [hl]
    rst $20
    ld a, a
    add b
    xor e
    xor e
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    add sp, $51
    sub d
    and h
    and h
    and $7f
    add e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor l
    xor b
    and d
    and h
    and $51
    adc b
    or e
    call nc, $b27f
    or h
    and d
    and a
    ld a, a
    and b
    ld a, a
    and d
    or h
    or e
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add e
    add b
    adc b
    sub d
    sbc b
    sbc h
    ld a, a
    adc b
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and h
    and b
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld d, c
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $7f
    add d
    xor [hl]
    xor h
    and h
    ld c, a
    xor c
    xor [hl]
    xor b
    xor l
    ld a, a
    xor h
    and h
    add sp, $57
    nop
    add e
    add b
    adc b
    sub d
    sbc b
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld d, c
    and [hl]
    or c
    xor [hl]
    xor [hl]
    xor h
    and h
    and e
    and $7f
    adc [hl]
    adc d
    db $f4
    ld a, a
    or [hl]
    and h
    pop de
    xor e
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and h
    and b
    add sp, $57
    nop
    add e
    add b
    adc b
    sub d
    sbc b
    sbc h
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    add sp, $4f
    adc b
    ld a, a
    and a
    xor [hl]
    xor l
    and h
    or d
    or e
    xor e
    cp b
    ld a, a
    and d
    and b
    xor l
    push de
    ld d, l
    and [hl]
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    dec c
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    dec c
    ld [bc], a
    nop
    nop
    ld bc, $070f
    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop
    ret nc

    ld [hl], b
    rst $38
    rst $38
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $074f
    add hl, bc
    ld [$3173], a
    pop hl
    nop
    add hl, bc
    db $dd
    ld [hl], e
    ld c, h
    daa
    ld [hl], h
    ld d, l
    inc sp
    pop hl
    nop
    inc e
    rlca
    ld b, $10
    rst $30
    ld [hl], e
    ld b, $08
    ld bc, $0374
    ld [$4c74], sp
    and d
    ld [hl], h
    ld d, h
    rrca
    ld h, l
    nop
    ld c, h
    ret z

    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $fc
    ld [hl], h
    ld d, l
    inc sp
    ld c, a
    rlca
    inc bc
    ld [$4c73], a
    and d
    db $76
    ld d, l
    inc bc
    ld [$4c73], a
    inc a
    ld [hl], a
    ld d, l
    inc bc
    ld [$5173], a
    ei
    ld [hl], a
    ld d, c
    ld e, c
    ld a, b
    ld d, c
    and a
    ld a, b
    inc c
    ld bc, $5300
    ld [$5378], a
    add hl, bc
    ld a, c
    ld d, e
    ld b, l
    ld a, c
    ld d, e
    ld e, [hl]
    ld a, c
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add b
    and a
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    adc b
    or e
    call nc, $a67f
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $51
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
    or e
    and a
    xor b
    xor l
    xor d
    ld c, a
    xor [hl]
    and l
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
    ld d, c
    xor [hl]
    or h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    and $4f
    adc a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld a, a
    and a
    or h
    and a
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    db $e3
    ld c, a
    add e
    add h
    sub a
    ld a, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    and $51
    adc e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld [hl], l
    ld d, a
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and b
    or c
    and h
    and b
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    call nc, $a44f
    or a
    and d
    and h
    xor e
    xor e
    and h
    xor l
    or e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld a, a
    xor [hl]
    and l
    ld a, a
    add [hl]
    sbc b
    adc h
    sub d
    ld a, a
    xor b
    xor l
    ld d, l
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $7f
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
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld c, a
    and b
    or d
    or d
    and h
    or d
    or d
    xor h
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sub e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and a
    and b
    or e
    db $f4
    ld c, a
    inc d
    add sp, $7f
    adc b
    pop de
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld d, c
    and b
    or c
    or c
    and b
    xor l
    and [hl]
    and h
    xor h
    and h
    xor l
    or e
    or d
    ld a, a
    or d
    xor [hl]
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
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    adc h
    sub e
    add sp, -$6e
    adc b
    adc e
    sub l
    add h
    sub c
    add sp, $51
    adc h
    sub e
    add sp, -$6e
    adc b
    adc e
    sub l
    add h
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
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld d, c
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    or e
    call nc, $b37f
    xor [hl]
    xor [hl]
    ld a, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    xor [hl]
    or h
    or d
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    or l
    and h
    or c
    and b
    and [hl]
    and h
    ld d, c
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    call nc, $ae4f
    and l
    and l
    ld a, a
    xor e
    xor b
    xor h
    xor b
    or e
    or d
    add sp, $7f
    add c
    or h
    or e
    ld d, c
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    xor l
    ld c, a
    and h
    or a
    and d
    and h
    xor a
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    and d
    and b
    or d
    and h
    db $f4
    ld a, a
    inc d
    add sp, $51
    add [hl]
    xor [hl]
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc b
    adc l
    add e
    adc b
    add [hl]
    adc [hl]
    ld c, a
    adc a
    adc e
    add b
    sub e
    add h
    add b
    sub h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld d, c
    or c
    and h
    and b
    and d
    and a
    ld a, a
    adc h
    sub e
    add sp, -$6e
    adc b
    adc e
    sub l
    add h
    sub c
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add a
    xor h
    xor h
    and $7f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
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
    ld d, l
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    and $51
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
    sub d
    ld a, a
    xor b
    xor l
    ld c, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld d, c
    and b
    or d
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    ld c, a
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    add sp, $51
    adc b
    ld a, a
    or c
    and h
    and d
    xor [hl]
    xor h
    xor h
    and h
    xor l
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
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
    ld d, l
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    add b
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
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
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld d, l
    add [hl]
    sbc b
    adc h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    add sp, $51
    adc b
    ld a, a
    xor b
    xor h
    and b
    and [hl]
    xor b
    xor l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor b
    or e
    call nc, $a77f
    and b
    or c
    and e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld d, c
    and h
    or a
    xor a
    and h
    or c
    xor b
    and h
    xor l
    and d
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or d
    or h
    or c
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    xor e
    xor e
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    and [hl]
    xor b
    and l
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc d
    and h
    and h
    xor a
    ld a, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and b
    or c
    and e
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    call nc, Call_066_547f
    adc h
    adc [hl]
    adc l
    ld c, a
    sub e
    add b
    adc e
    adc d
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    ld d, c
    xor b
    or d
    xor l
    push de
    ld a, a
    and b
    xor b
    or c
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    or d
    and a
    and b
    xor h
    and h
    db $e3
    db $e3
    adc b
    ret nc

    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    db $e3
    ld d, l
    add e
    add h
    sub a
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    call nc, $b151
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
    ld a, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    add sp, $57
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ldh [$92], a
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    add b
    adc e
    adc d
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    and b
    ld a, a
    xor e
    xor b
    or l
    and h
    ld a, a
    and c
    or c
    xor [hl]
    and b
    and e
    and d
    and b
    or d
    or e
    add sp, $57
    nop
    adc a
    or c
    and h
    or d
    or d
    ld a, a
    sub d
    sub e
    add b
    sub c
    sub e
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add h
    adc l
    sub h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add b
    sub l
    add h
    ld a, a
    xor [hl]
    xor a
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor b
    or d
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add h
    adc l
    sub h
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    or e
    xor b
    xor h
    and h
    xor e
    cp b
    ld c, a
    xor h
    and b
    xor l
    xor l
    and h
    or c
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld c, a
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
    or c
    and h
    call nc, $a07f
    xor l
    ld a, a
    and h
    db $e3
    xor h
    and b
    xor b
    xor e
    ld c, a
    xor h
    and h
    or d
    or d
    and b
    and [hl]
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    add d
    add sp, $51
    ld [hl], l
    ld d, c
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or d
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld d, l
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    and $51
    adc b
    jp nc, $b27f

    or e
    xor b
    xor e
    xor e
    ld a, a
    xor a
    xor e
    or h
    and [hl]
    and [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    or [hl]
    and b
    cp b
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    or c
    or h
    xor h
    xor [hl]
    or c
    or d
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    inc d
    ld a, a
    xor b
    or d
    ld d, c
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    and b
    ld c, a
    or c
    and h
    xor a
    or h
    or e
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    adc b
    jp nc, $a37f

    and h
    xor e
    xor b
    and [hl]
    and a
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $51
    add h
    adc e
    adc h
    ld a, a
    xor b
    xor l
    ld a, a
    adc l
    add h
    sub [hl]
    ld a, a
    add c
    add b
    sub c
    adc d
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    cp $e3
    sbc e
    ld d, a
    nop
    nop
    ld [bc], a
    dec bc
    inc b
    inc bc
    dec c
    ld [bc], a
    dec bc
    dec b
    inc bc
    dec c
    ld [bc], a
    nop
    db $10
    ld bc, $0006
    jr jr_066_7abb

    ld bc, $0007
    jr @+$76

    ld bc, $0008
    jr jr_066_7ac5

    ld bc, $0009
    jr jr_066_7aca

    rlca
    nop
    nop
    jr jr_066_7acf

    rlca
    ld bc, $1800
    ld [hl], h
    rlca
    ld [bc], a
    nop
    jr jr_066_7ad9

    rlca
    inc bc
    nop
    jr jr_066_7ade

    rlca
    ld b, $00
    jr jr_066_7ae3

    rlca
    rlca
    nop
    jr jr_066_7ae8

    rlca
    ld [$1800], sp
    ld [hl], h
    rlca
    add hl, bc
    nop
    jr jr_066_7af2

    nop
    inc b
    nop
    dec de
    ld [hl], h
    nop
    dec b
    nop
    ld e, $74
    inc bc
    add hl, bc
    nop
    ld hl, $0174
    nop
    nop
    inc h
    ld [hl], h
    inc b
    dec b
    ld b, $08
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ret z

    ld [hl], e
    rst $38
    rst $38
    inc a
    inc c
    dec b
    dec b
    ld bc, $ffff
    sub b
    nop
    rrca
    ld [hl], h
    rst $38
    rst $38
    inc a
    dec c
    inc c
    inc b
    db $10
    rst $38
    rst $38
    sub b
    nop
    ld [de], a
    ld [hl], h
    rst $38
    rst $38
    inc a

jr_066_7abb:
    ld [$0205], sp
    ld de, $ffff
    sub b
    nop
    dec d
    ld [hl], h

jr_066_7ac5:
    rst $38
    rst $38
    nop
    nop
    nop

jr_066_7aca:
    nop
    nop
    nop
    nop
    nop

jr_066_7acf:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_066_7ad9:
    nop
    nop
    nop
    nop
    nop

jr_066_7ade:
    nop
    nop
    nop
    nop
    nop

jr_066_7ae3:
    nop
    nop
    nop
    nop
    nop

jr_066_7ae8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_066_7af2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
