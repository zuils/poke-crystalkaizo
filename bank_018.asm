; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    inc bc
    ld c, $40
    nop
    nop
    rrca
    ld b, b
    nop
    nop
    db $10
    ld b, b
    nop
    nop
    nop
    sub c
    sub c
    sub c
    db $76
    ld [bc], a
    ld bc, $0075
    ld [bc], a
    rrca
    ld b, a
    ld c, h
    jr z, jr_018_405d

    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    add hl, bc
    ld b, c
    ld a, a
    add hl, sp
    nop
    ld b, a
    ld c, h
    ld b, a
    ld b, c
    ld d, h
    ld c, c
    ld h, h
    inc hl
    ld b, d
    nop
    nop
    ld l, b
    ld [bc], a
    ld e, [hl]
    inc sp
    inc bc
    ld e, a
    ld h, b
    ld b, a
    ld c, h
    ld b, [hl]
    ld b, d
    ld d, l
    sbc [hl]
    add l
    ld bc, $1449
    ld bc, $7333
    dec b
    sub c
    ld l, e
    ld b, a
    ld sp, $0021
    add hl, bc
    ld d, h
    ld b, b
    ld c, h
    ld b, [hl]
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc h
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld l, a
    dec b
    scf

jr_018_405d:
    ld bc, $42cb
    ld e, $43
    nop
    nop
    ld h, [hl]
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, b
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld l, c
    nop
    dec h
    ld b, c
    ld a, a
    add hl, sp
    nop
    db $76
    inc bc
    inc bc
    ld b, a
    ld c, h
    pop de
    ld b, e
    ld d, h
    ld c, c
    ld h, h
    di
    ld b, h
    nop
    nop
    ld l, b
    inc bc
    ld e, [hl]
    inc sp
    ld bc, $605f
    ld b, a
    ld c, h
    ld c, $45
    ld d, h
    ld c, c
    rrca
    jr nc, jr_018_4093

jr_018_4093:
    rrca
    inc sp
    nop
    ld l, [hl]
    inc bc
    ld l, [hl]
    inc b
    adc e
    rrca
    rrca
    ld [hl-], a
    nop
    inc sp
    ld [hl], c
    dec b
    inc sp
    ld hl, $3500
    inc de
    nop
    inc sp
    call z, $3306
    call $3306
    adc $06
    ld [hl-], a
    ld [hl], $07
    dec [hl]
    rla
    nop
    ld [hl-], a
    rst $08
    ld b, $32
    ret nc

    ld b, $33
    db $e3
    ld b, $32
    db $e4
    ld b, $0f
    inc a
    nop
    ld l, [hl]
    ld [bc], a
    ld [hl], d
    ld [bc], a
    inc c
    nop
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    rrca
    ld b, c
    halt
    inc bc
    ld b, a
    ld c, h
    or d
    ld b, l
    ld d, l
    sbc [hl]
    ld b, [hl]
    ld bc, $2c4c
    ld b, [hl]
    ld d, h
    ld c, c
    inc d
    ld [bc], a
    ld [de], a
    inc b
    ld bc, $3300
    ld a, b
    nop
    inc sp
    ld h, c
    rlca
    inc bc
    pop af
    ld b, b
    ld l, c
    ld [bc], a
    ld a, [de]
    ld b, c
    add l
    inc hl
    nop
    ld l, [hl]
    ld [bc], a
    sub c
    ld d, c
    cp [hl]
    ld c, b
    ld [bc], a
    ld bc, $e053
    ld c, b
    ld d, e
    ld sp, hl
    ld c, b
    inc c
    inc bc
    nop
    ld c, $0e
    ld c, $0d
    dec c
    ld b, a
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    inc c
    inc c
    inc c
    ld c, $47
    rrca
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    ld b, a
    ld c, $0e
    ld b, a
    nop
    sbc b
    db $e3
    cp b
    xor [hl]
    or h
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and h
    or d
    and d
    or h
    and h
    ld a, a
    xor h
    and h
    and $57
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
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
    or [hl]
    and h
    or c
    and h
    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
    and $51
    sub [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld c, a
    adc b
    jp nc, $a07f

    xor l
    ld a, a
    xor b
    xor h
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    rst $20
    ld d, c
    adc b
    ld a, a
    xor a
    or c
    and h
    or e
    and h
    xor l
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, c
    xor a
    or c
    and h
    xor a
    and b
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    or e
    and b
    xor d
    and h
    xor [hl]
    or l
    and h
    or c
    add sp, $51
    add e
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
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    or [hl]
    and h
    ld a, a
    and a
    xor b
    and e
    ld d, l
    or e
    and a
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    and $51
    sub d
    or h
    or c
    and h
    db $f4
    ld a, a
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
    add sp, $7f
    add c
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    and l
    ld d, l
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
    and b
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
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
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and a
    and h
    ld a, a
    xor b
    or d
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    or d
    or e
    and b
    or d
    and a
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and h
    and b
    xor e
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld a, a
    xor b
    xor l
    ld d, c
    or e
    and a
    and h
    ld a, a
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
    sub [hl]
    add b
    sub c
    add h
    add a
    adc [hl]
    sub h
    sub d
    add h
    add sp, $51
    adc b
    or e
    call nc, $a07f
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    and b
    or c
    ld c, a
    and h
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub h
    adc l
    add e
    add h
    sub c
    db $e3
    ld d, l
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    or h
    and c
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    and b
    or c
    add sp, $57
    nop
    sub c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld a, a
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    or e
    and a
    and h
    ld a, a
    add a
    adc b
    add e
    add h
    adc [hl]
    sub h
    sub e
    ld a, a
    xor b
    xor l
    ld d, l
    adc h
    add b
    add a
    adc [hl]
    add [hl]
    add b
    adc l
    sbc b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    and $51
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or e
    and a
    and h
    xor l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld c, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
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
    and b
    xor a
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    and a
    and b
    or c
    and e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld d, a
    nop
    ld d, d
    db $f4
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    and $51
    add b
    ld a, a
    and c
    or c
    and b
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and b
    xor a
    xor a
    or c
    and h
    and d
    xor b
    and b
    or e
    and h
    ld d, c
    or e
    and a
    and h
    ld a, a
    xor h
    and b
    and [hl]
    xor l
    xor b
    and l
    xor b
    and d
    and h
    xor l
    and d
    and h
    ld c, a
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
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $b37f
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    add sp, $4f
    adc b
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and b
    and e
    xor h
    xor b
    or c
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $57
    nop
    adc [hl]
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    xor l
    and b
    and [hl]
    and h
    and e
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
    xor b
    or d
    ld a, a
    and l
    and b
    or c
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld c, a
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
    add sp, $51
    sub [hl]
    and h
    ld a, a
    xor b
    xor l
    or e
    and h
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld d, c
    sub d
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    xor l
    db $e3
    ld c, a
    xor l
    xor [hl]
    or h
    xor l
    and d
    and h
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    db $e3
    ld d, l
    and c
    and b
    and d
    xor d
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    and c
    xor [hl]
    or d
    or d
    ld a, a
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    ld d, c
    and c
    and b
    and d
    xor d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    xor e
    xor [hl]
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    add sp, $51
    sub [hl]
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and h
    and [hl]
    and b
    xor b
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    xor h
    and h
    or c
    ld d, l
    and [hl]
    xor e
    xor [hl]
    or c
    cp b
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    and l
    and h
    or c
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    xor e
    and b
    xor l
    or d
    add sp, $57
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    add l
    xor [hl]
    or c
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld c, a
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and c
    and h
    and $51
    adc [hl]
    or h
    or c
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor l
    and b
    or h
    and [hl]
    and a
    or e
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    xor l
    push de
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    and b
    or d
    xor d
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    add sp, $51
    adc e
    xor b
    xor d
    and h
    ld a, a
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    ld a, a
    and e
    xor b
    and e
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, c
    and e
    xor b
    or d
    and c
    and b
    xor l
    and e
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
    and a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $51
    add l
    and b
    or c
    and h
    or [hl]
    and h
    xor e
    xor e
    add sp, $57
    nop
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    sbc h
    ld a, a
    inc d
    db $f4
    ld c, a
    or e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    or h
    or c
    and b
    and [hl]
    and h
    xor [hl]
    or h
    or d
    ld c, a
    and b
    and d
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor l
    and b
    or e
    xor b
    xor [hl]
    xor l
    db $e3
    ld c, a
    or [hl]
    xor b
    and e
    and h
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld c, a
    xor h
    or h
    and d
    and a
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld d, l
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
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
    and b
    ld c, a
    or e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and a
    and h
    or c
    and h
    ld d, l
    xor b
    xor l
    ld a, a
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
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and d
    or c
    and h
    and b
    xor d
    cp b
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    or [hl]
    and h
    ld a, a
    or c
    and h
    xor a
    xor e
    and b
    and d
    and h
    and e
    ld a, a
    xor b
    or e
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld d, l
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    sub [hl]
    and h
    ld a, a
    and e
    or h
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and c
    and h
    xor e
    xor e
    ld a, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    and d
    xor [hl]
    xor l
    or d
    or e
    or c
    or h
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
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
    xor e
    xor e
    ld c, a
    or d
    xor [hl]
    or c
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
    ld d, c
    xor e
    xor b
    or l
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    ld c, a
    xor b
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
    add sp, $51
    adc a
    and h
    or c
    and a
    and b
    xor a
    or d
    ld [hl], l
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    and c
    and h
    xor e
    xor e
    ld a, a
    and a
    and b
    or d
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    and d
    xor [hl]
    xor l
    xor l
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, c
    sub e
    adc b
    adc l
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
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld [hl], l
    ld d, c
    add b
    and a
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    or c
    and h
    xor h
    xor b
    xor l
    and e
    or d
    ld a, a
    xor h
    and h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and a
    and h
    and b
    or c
    and e
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
    and a
    xor b
    or d
    xor a
    and h
    or c
    xor b
    xor l
    and [hl]
    add sp, $51
    add b
    xor a
    xor a
    and b
    or c
    and h
    xor l
    or e
    xor e
    cp b
    db $f4
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
    ld d, l
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    adc b
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor b
    and e
    and h
    and b
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    add sp, $51
    adc [hl]
    adc d
    db $f4
    ld a, a
    adc b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor h
    cp b
    ld a, a
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    add sp, $57
    nop
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    sbc h
    ld a, a
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    and c
    or h
    xor b
    xor e
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld d, c
    and h
    or a
    xor a
    or c
    and h
    or d
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld c, a
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
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    xor l
    xor b
    and d
    and h
    ld c, a
    xor b
    and l
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
    and h
    and e
    ld d, l
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    or d
    add sp, $57
    nop
    add c
    add h
    adc l
    sbc h
    ld a, a
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    or h
    or d
    xor b
    and d
    and $57
    nop
    ei
    add l
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ldh [$92], a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld d, a
    nop
    ei
    add l
    ld a, a
    sub d
    sub e
    sub h
    add e
    adc b
    adc [hl]
    ld a, a
    rst $30
    ld d, a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $1403
    nop
    inc c
    inc bc
    inc bc
    inc d
    ld [bc], a
    nop
    inc bc
    nop
    nop
    ld de, $0040
    nop
    ld bc, $1005
    nop
    ld l, [hl]
    ld b, b
    nop
    nop
    dec b
    nop
    inc bc
    nop
    nop
    ld b, c
    nop
    dec bc
    nop
    inc bc
    ld b, c
    nop
    rrca
    nop
    inc bc
    ld b, c
    ld bc, $0010
    ld b, $41
    ld bc, $0011
    ld b, $41
    dec b
    ld b, b
    ld a, [bc]
    rlca
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, [hl]
    ld b, b
    rst $38
    rst $38
    dec [hl]
    add hl, bc
    ld de, $0008
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $ce
    ld b, $36
    ld b, $10
    rlca
    nop
    rst $38
    rst $38
    add d
    ld bc, $405a
    adc $06
    inc l
    add hl, bc
    ld de, $0008
    rst $38
    rst $38
    add b
    nop
    ei
    ld b, b
    ret nc

    ld b, $54
    add hl, bc
    inc c
    ld bc, $ff00
    rst $38
    ld bc, $fe00
    ld b, b
    call $0007
    nop
    nop
    inc b
    jr jr_018_498c

    ld [hl], h
    ld c, d
    xor a
    ld c, d
    nop
    nop

jr_018_498c:
    adc [hl]
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    jp Jump_018_544a


    ld c, c
    sub c
    ld a, c
    dec b
    jr z, jr_018_499f

    or e
    ld c, c
    cp $49
    nop

jr_018_499f:
    nop
    and d
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    rra
    ld c, d
    ld d, h
    ld c, c
    sub c
    jr nz, jr_018_49ad

    ld a, [hl+]

jr_018_49ad:
    ld bc, $01e2
    add l
    nop
    stop
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
    and c
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or d
    and a
    and h
    call nc, $ad51
    xor [hl]
    or e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $4f
    sub d
    xor [hl]
    db $f4
    ld a, a
    and a
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
    sub [hl]
    and a
    xor [hl]
    and b
    db $f4
    ld a, a
    or [hl]
    and a
    xor [hl]
    and b
    add sp, $7f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    xor [hl]
    or l
    and h
    or c
    or [hl]
    and a
    and h
    xor e
    xor h
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add b
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
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld d, c
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $7f
    add b
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld c, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld d, l
    and d
    xor [hl]
    xor h
    xor a
    and b
    or d
    or d
    xor b
    xor [hl]
    xor l
    and b
    or e
    and h
    add sp, $57
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld c, a
    or h
    xor a
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $7f
    adc h
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    xor a
    or c
    xor b
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    xor h
    add sp, $57
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    ld [hl], l
    sub e
    and a
    and h
    cp b
    ld a, a
    and d
    or c
    and b
    or d
    and a
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    add l
    adc e
    sbc b
    ld a, a
    xor b
    xor l
    ld d, l
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    add sp, $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc b
    jp nc, $a07f

    ld c, a
    xor e
    xor [hl]
    or d
    and h
    or c
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    add l
    adc e
    sbc b
    ld d, l
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld [hl], l
    ld d, a
    nop
    nop
    rlca
    rrca
    add hl, bc
    ld bc, $2f03
    dec b
    inc bc
    ld [bc], a
    inc bc
    dec l
    rlca
    add hl, bc
    inc bc
    inc bc
    dec l
    rlca
    db $10
    add hl, bc
    inc bc
    dec l
    rlca
    ld de, $030a
    dec l
    dec b
    db $10
    ld [bc], a
    inc bc
    cpl
    dec b
    ld de, $0303
    cpl
    nop
    ld bc, $030d
    rlca
    or b
    ld c, c
    dec b
    ld c, c
    inc c
    ld c, $08
    nop
    rst $38
    rst $38
    sub d
    inc bc
    sub [hl]
    ld c, c
    rst $38
    rst $38
    daa
    rlca
    inc c
    ld [$ff00], sp
    rst $38
    sub d
    inc b
    add d
    ld c, c
    rst $38
    rst $38
    ld d, h
    db $10
    inc de
    ld bc, $ff00
    rst $38
    ld bc, $aa00
    ld c, c
    ld h, l
    ld b, $54
    inc de
    ld a, [bc]
    ld bc, $ff00
    rst $38
    ld bc, $ac00
    ld c, c
    ld h, [hl]
    ld b, $54
    ld de, $0106
    nop
    rst $38
    rst $38
    ld bc, $ae00
    ld c, c
    ld h, a
    ld b, $00
    nop
    ld l, e
    ld b, a
    ld hl, $0943
    xor e
    ld c, e
    ld sp, $0037
    add hl, bc
    and l
    ld c, e
    ld c, h
    add c
    ld c, h
    ld d, l
    inc sp
    scf
    nop
    ld c, h
    ld h, h
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc c
    ld c, l
    ld c, [hl]
    ld [$4c25], sp
    ld c, h
    jp Jump_018_554d


    jr nz, jr_018_4bfb

    ld bc, $ea4c
    ld c, l
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    inc bc
    adc e
    rrca
    db $76
    inc bc
    ld [bc], a
    ld b, a
    ld a, a
    dec c
    nop
    ld c, h
    ld b, h
    ld c, [hl]
    adc e
    inc a
    ld d, l
    ld c, c
    rrca
    dec a
    nop
    add h
    or l
    nop
    rrca
    ld l, $00
    adc e
    ld a, [bc]
    rrca
    ld sp, $4700
    ld c, h
    dec a
    ld c, a
    ld d, h
    ld c, c
    db $76
    inc bc
    inc bc
    adc e
    ld a, [bc]
    db $76
    inc bc
    ld [bc], a
    adc e
    ld a, [bc]
    db $76
    inc bc
    inc bc
    adc e
    ld a, [bc]
    db $76
    inc bc
    ld [bc], a
    adc e
    ld a, [bc]
    ld l, e
    ld b, a

jr_018_4bfb:
    ld c, h
    ld l, h
    ld c, [hl]
    ld d, h
    ld c, c
    inc sp
    jr nz, jr_018_4c03

jr_018_4c03:
    ld [hl-], a
    db $d3
    ld b, $1c
    add hl, bc
    ld b, $00
    rla
    ld c, h
    ld b, $03
    ld e, $4c
    ld l, c
    ld [bc], a
    ld l, b
    ld c, h
    ld l, [hl]
    ld [bc], a
    sub c
    ld l, c
    ld [bc], a
    ld [hl], b
    ld c, h
    ld l, [hl]
    ld [bc], a
    sub c
    ld l, c
    ld [bc], a
    ld a, c
    ld c, h
    ld l, [hl]
    ld [bc], a
    sub c
    ld c, h
    rst $18
    ld c, [hl]
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    inc bc
    adc e
    rrca
    db $76
    inc bc
    ld [bc], a
    ld b, a
    ld c, h
    pop af
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    sub c
    ld l, e
    ld b, a
    ld sp, $0020
    add hl, bc
    ld d, c
    ld c, h
    ld c, h
    inc bc
    ld c, a
    dec d
    or l
    rrca
    ld e, a
    nop
    ld d, l
    ld c, h
    add hl, de
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec a
    ld c, a
    add h
    or l
    nop
    ld d, h
    ld c, c
    rrca
    ld l, $00
    rrca
    ld sp, $0f00
    ld l, $00
    rrca
    ld sp, $9100
    ld de, $0901
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    ld b, l
    ld b, l
    ld b, a
    ld [$0b0b], sp
    dec bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld b, a
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, l
    ld b, a
    nop
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    sbc h
    ld a, a
    ld [hl], l
    ld a, a
    sub e
    and a
    xor b
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld d, c
    xor d
    and h
    xor a
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    xor e
    xor b
    or e
    ld c, a
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    add sp, $51
    ld [hl], l
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or d
    or h
    and e
    and e
    and h
    xor l
    xor e
    cp b
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or d
    xor b
    and d
    xor d
    ld [hl], l
    ld a, a
    adc b
    or e
    call nc, $a655
    and b
    or d
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor b
    or c
    ld [hl], l
    ld d, c
    ld [hl], l
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
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld d, c
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    adc a
    add a
    add b
    sub c
    adc h
    add b
    add d
    sbc b
    ld c, a
    xor b
    xor l
    ld a, a
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a07f
    and d
    or c
    xor [hl]
    or d
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld [hl], l
    ld d, c
    add b
    xor l
    and e
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    ld c, a
    add b
    adc h
    adc a
    add a
    sbc b
    ld a, a
    or h
    xor l
    and b
    or e
    or e
    and h
    xor l
    and e
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    adc h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    and b
    or d
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    and h
    and e
    xor b
    and d
    xor b
    xor l
    and h
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    and $7f
    adc a
    xor e
    and h
    and b
    or d
    and h
    and $57
    nop
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    sbc h
    ld a, a
    ld [hl], l
    sub [hl]
    xor b
    xor e
    xor e
    ld c, a
    or e
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
    and d
    or h
    or c
    and h
    ld d, l
    add b
    adc h
    adc a
    add a
    sbc b
    and $57
    nop
    ld d, d
    ld a, a
    and a
    and b
    xor l
    and e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    add h
    add d
    sub c
    add h
    sub e
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld d, l
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    add sp, $57
    nop
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    sbc h
    ld a, a
    ld [hl], l
    sub h
    xor h
    db $f4
    ld c, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld d, l
    xor [hl]
    and l
    and l
    and h
    xor l
    and e
    and h
    and e
    ld [hl], l
    ld d, c
    ld [hl], l
    add b
    adc h
    adc a
    add a
    sbc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or e
    and b
    xor d
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
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor h
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
    sbc h
    ld a, a
    ld [hl], l
    ld d, c
    add b
    adc h
    adc a
    add a
    sbc b
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    and $57
    nop
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    sbc h
    ld a, a
    ld [hl], l
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    jp nc, $b24f

    xor [hl]
    ld a, a
    or c
    and h
    xor e
    xor b
    and h
    or l
    and h
    and e
    ld [hl], l
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or d
    xor [hl]
    ld c, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    and l
    or h
    xor e
    ld [hl], l
    ld d, c
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
    or d
    xor [hl]
    ld a, a
    or l
    and h
    or c
    cp b
    db $f4
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
    add sp, $51
    ld [hl], l
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
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
    sbc h
    ld a, a
    ld [hl], l
    adc b
    ld a, a
    or d
    and h
    and h
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    add b
    adc h
    adc a
    add a
    sbc b
    db $f4
    ld a, a
    and a
    and b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    add b
    adc h
    adc a
    add a
    sbc b
    sbc h
    ld a, a
    ld [hl], l
    ld c, a
    ld [hl], l
    adc a
    and b
    ld [hl], l
    ld a, a
    xor a
    and b
    xor e
    xor [hl]
    xor [hl]
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    or d
    ld a, a
    and c
    or c
    and h
    and b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and h
    or c
    or c
    xor b
    and c
    xor e
    cp b
    ld a, a
    xor e
    and b
    and c
    xor [hl]
    or c
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    add b
    adc h
    adc a
    add a
    sbc b
    sbc h
    ld a, a
    adc a
    and b
    xor e
    or h
    rst $20
    ld c, a
    adc a
    and b
    xor e
    or h
    xor e
    or h
    rst $20
    ld d, a
    nop
    nop
    inc bc
    rrca
    add hl, bc
    ld bc, $2e03
    dec b
    db $10
    ld b, $03
    ld l, $05
    ld de, $0307
    ld l, $00
    nop
    inc bc
    rla
    inc c
    inc c
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    sub c
    ld c, e
    jp nc, $4c06

    inc c
    dec c
    ld b, $00
    rst $38
    rst $38
    or b
    nop
    ld a, [hl-]
    ld c, h
    rst $38
    rst $38
    ld d, h
    ld [$0107], sp
    nop
    rst $38
    rst $38
    ld bc, $6600
    ld c, h
    ld l, b
    ld b, $00
    nop
    inc c
    nop
    nop
    dec d
    dec bc
    rrca
    add [hl]
    nop
    ld b, $0b
    sbc [hl]
    ld c, a
    sub c
    ld sp, $0340
    add hl, bc
    ret c

    ld c, a
    add l
    inc hl
    nop
    ld [hl], d
    inc bc
    nop
    rlca
    ld l, [hl]
    inc bc
    ld l, a
    inc bc
    ld a, a
    ld de, $6900
    inc bc
    ld e, d
    ld d, b
    halt
    ld bc, $4c47
    ldh a, [$62]
    ld d, h
    sbc [hl]
    ld [hl], e
    ld bc, $4033
    inc bc
    inc sp
    cp [hl]
    nop
    ld c, h
    ld e, c
    ld h, e
    ld d, h
    ld c, c
    ld l, c
    inc bc
    ld h, b
    ld d, b
    rrca
    dec a
    nop
    ld l, [hl]
    inc bc
    add l
    inc hl
    nop
    sub c
    dec d
    dec bc
    rrca
    add [hl]
    nop
    ld b, $0b
    db $e3
    ld c, a
    sub c
    ld sp, $0340
    add hl, bc
    dec e
    ld d, b
    add l
    inc hl
    nop

jr_018_4fec:
    ld [hl], d
    inc bc
    nop
    rlca
    ld l, [hl]
    inc bc
    ld l, a
    inc bc
    ld a, a
    ld de, $6900
    inc bc
    ld h, l
    ld d, b
    halt
    ld bc, $4c47
    ldh a, [$62]
    ld d, h
    sbc [hl]
    ld [hl], e
    ld bc, $4033
    inc bc
    inc sp
    cp [hl]
    nop
    ld c, h
    ld e, c
    ld h, e
    ld d, h
    ld c, c
    ld l, c
    inc bc
    ld l, h
    ld d, b
    rrca
    dec a
    nop
    ld l, [hl]
    inc bc
    add l
    inc hl
    nop
    sub c
    ld d, c
    dec b
    ld h, c
    ld d, c
    ld h, b
    ld h, d
    ld l, e
    ld b, a
    ld c, h
    ei
    ld h, e
    ld d, h
    ld c, h
    adc h
    ld h, h
    ld c, [hl]
    ld [$504b], sp
    jr nz, jr_018_4fec

    ld bc, $4b08
    ld d, b
    ld c, h
    ld c, c
    ld h, l
    ld d, h
    ld c, h
    and h
    ld h, h
    ld d, h
    sbc [hl]
    daa
    ld bc, $5108
    ld d, b
    ld c, h
    jp hl


    ld h, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    add hl, bc
    ld h, l
    ld d, h
    ld c, c
    sub c
    rra
    cp c
    ld bc, $2a4c
    ld h, l
    ld d, h
    ld c, c
    sub c
    dec c
    rrca
    rrca
    rrca
    nop
    ld b, a
    ld c, $0e
    ld c, $0c
    ld b, a
    dec c
    rrca
    rrca
    rrca
    rrca
    nop
    ld b, a
    ld c, $0e
    ld c, $0e
    inc c
    ld b, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld a, a
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
    ld d, l
    sub e
    sub c
    add b
    add e
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    or c
    and b
    and e
    and h
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

Call_018_50b7:
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, l
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and l
    and b
    or c
    ld a, a
    and b
    or [hl]
    and b
    cp b
    add sp, $57
    nop
    sub e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    db $f4
    ld c, a
    or [hl]
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
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
    or e
    or c
    and b
    and e
    and h
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and $57
    nop
    add l
    xor b
    xor l
    and h
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    or c
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $51
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and e
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
    ld d, l
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    add sp, $51
    adc a
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
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, a
    or [hl]
    and h
    ld a, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld d, l
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add l
    xor b
    xor l
    and h
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    or c
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, a
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
    cp b
    xor [hl]
    or h
    ld d, l
    and a
    and b
    or l
    and h
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
    add sp, $51
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and e
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
    ld d, l
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    add sp, $51
    adc a
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
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, a
    or [hl]
    and h
    ld a, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld d, l
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld d, c
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    add sp, $7f
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    adc [hl]
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    add sp, $7f
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    ld c, a
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    xor b
    xor l
    db $e3
    ld d, l
    and d
    or c
    and h
    and b
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor b
    cp c
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
    add d
    xor [hl]
    xor h
    xor h
    or h
    xor l
    xor b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    and h
    or c
    or c
    xor [hl]
    or c
    ld [hl], l
    ld d, a
    nop
    adc b
    and l
    ld a, a
    or [hl]
    and h
    ld a, a
    and b
    and d
    and d
    and h
    xor a
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
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
    ld a, a
    or [hl]
    xor b
    or e
    and a
    and $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and b
    and d
    and d
    and h
    xor a
    or e
    ld a, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    add sp, $57
    nop
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
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld d, c
    and c
    and h
    ld a, a
    and b
    and c
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
    add sp, $7f
    sub [hl]
    and h
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and b
    and d
    and d
    and h
    xor a
    or e
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc [hl]
    and a
    and $7f
    add b
    or c
    and h
    xor l
    push de
    ld a, a
    or [hl]
    and h
    ld c, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and $57
    nop
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    xor [hl]

Jump_018_544a:
    xor [hl]
    xor h
    or d
    add sp, $51

Call_018_544f:
    adc a
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
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c

Jump_018_546f:
    ld c, a
    xor a

Jump_018_5471:
    and b
    or e
    xor b
    and h
    xor l
    and d
    and h
    add sp, $51
    add b
    ld a, a
    or e
    or c
    and b

Call_018_547f:
    and e
    and h
    ld a, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    ld c, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    add sp, $57
    nop
    adc b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    and h
    or [hl]
    ld c, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and d
    and b
    or c
    and h
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    add sp, $51
    sub [hl]
    and h
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    add sp, $7f
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    ld c, a
    xor b
    or d
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and l
    or h
    xor e
    xor e
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    ld c, a
    or [hl]
    and a
    and h
    xor l
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
    or c
    xor [hl]
    xor [hl]
    xor h
    ld d, l
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    add sp, $57
    nop
    adc b
    or e
    call nc, $b47f
    xor l
    and l
    xor [hl]

Jump_018_554d:
    or c
    or e
    or h
    xor l
    and b
    or e
    and h
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and b
    or d
    ld d, c
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    or [hl]
    and b
    or c
    and e
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld c, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
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
    ld a, a
    and c
    and b
    and d
    xor d
    and $57
    nop
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
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
    adc b
    or e
    call nc, $b47f
    xor l
    and l
    xor [hl]
    or c
    or e
    or h
    xor l
    and b
    or e
    and h
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and b
    or d
    ld d, c
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    or [hl]
    and b
    or c
    and e
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld c, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    add sp, $51
    sub [hl]
    and h
    sub $a4
    ld a, a
    and a
    and h
    xor e
    and e
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
    ld d, c
    or e
    xor b
    xor h
    and h
    add sp, $7f
    add b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and h
    or d
    or h
    xor e
    or e
    db $f4
    ld c, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor e
    xor [hl]
    xor l
    and h
    xor e
    cp b
    add sp, $51
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
    or [hl]
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, a
    or c
    and h
    or e
    or h
    or c
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
    add l
    xor b
    xor l
    and h
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and d
    xor [hl]
    xor l
    or e
    xor b
    xor l
    or h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld d, l
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
    adc [hl]
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    and h
    and l
    or e
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
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or h
    or d
    ld d, l
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    ld c, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    sub d
    add b
    sub l
    add h
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld c, a
    and d
    xor [hl]
    xor l
    xor l
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $57
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
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
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and $57
    nop
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
    or [hl]
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    rst $20
    ld d, c
    adc b
    ld a, a
    or d
    and h
    and h
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
    xor l
    ld c, a
    add h
    add [hl]
    add [hl]
    ld a, a
    sub e
    adc b
    add d
    adc d
    add h
    sub e
    rst $20
    ld d, c
    adc b
    or e
    call nc, $a07f
    ld a, a
    and d
    xor [hl]
    or h
    xor a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and d
    and b
    xor l
    ld d, c
    or c
    and h
    and e
    and h
    and h
    xor h
    ld a, a
    and l
    xor [hl]
    or c
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
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
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
    or b
    or h
    xor b
    and d
    xor d
    ld a, a
    and c
    or c
    xor b
    and h
    and l
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    or c
    and b
    and e
    and h
    or d
    ld a, a
    and a
    and h
    xor e
    and e
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub e
    sub c
    add b
    add e
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld a, a
    and b
    or c
    and h
    ld d, c
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
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
    and h
    and b
    and d
    and a
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    call nc, $a84f
    and e
    and h
    xor l
    or e
    xor b
    or e
    cp b
    add sp, $51
    add b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and h
    or d
    or h
    xor e
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $51
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    and b
    xor l
    ld a, a
    adc [hl]
    add e
    add e
    ld c, a
    add h
    add [hl]
    add [hl]
    ld a, a
    xor b
    or d
    ld a, a
    and b
    or l
    and b
    xor b
    xor e
    and b
    and c
    xor e
    and h
    ld d, l
    xor c
    or h
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    or d
    ld a, a
    xor b
    xor l
    ld d, c
    or e
    and a
    and h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $4f
    add b
    xor l
    ld a, a
    adc [hl]
    add e
    add e
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld d, c
    or d
    and h
    xor l
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld c, a
    and d
    and a
    xor [hl]
    or d
    and h
    xor l
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    add sp, $57
    nop
    adc a
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
    ld a, a
    and b
    ld c, a
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
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
    and l
    xor [hl]
    or c
    ld c, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    add sp, $51
    sub [hl]
    and h
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    adc [hl]
    add e
    add e
    ld a, a
    add h
    add [hl]
    add [hl]
    add sp, $51
    add a
    and h
    or c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    rst $20
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    xor b
    or e
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor e
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    and b
    or c
    and h
    add sp, $57
    nop
    adc b
    jp nc, $a07f

    or [hl]
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    sub e
    adc b
    add d
    adc d
    add h
    sub e
    ld c, a
    and h
    or a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or d
    and h
    or c
    or l
    xor b
    and d
    and h
    ld d, l
    xor b
    or d
    xor l
    push de
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    adc l
    add h
    sub [hl]
    sub d
    ld a, a
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
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
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    and $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld a, a
    xor b
    or d
    ld c, a
    xor l
    and h
    or [hl]
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor b
    xor e
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, c
    or e
    and a
    and h
    ld a, a
    sub d
    add b
    sub l
    add h
    ld a, a
    and l
    xor b
    xor e
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
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
    or d
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or c
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc l
    add h
    sub [hl]
    sub d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    sub d
    add b
    sub l
    add h
    ld d, c
    and l
    xor b
    xor e
    and h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    xor l
    or e
    ld c, a
    xor [hl]
    or h
    or e
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    sub d
    add b
    sub l
    add h
    ld a, a
    and l
    xor b
    xor e
    and h
    ld a, a
    and e
    and b
    or e
    and b
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    and b
    and e
    or l
    and h
    xor l
    or e
    or h
    or c
    and h
    ld a, a
    xor e
    xor [hl]
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, a
    xor h
    xor [hl]
    and c
    xor b
    xor e
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    and l
    xor b
    xor e
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    xor l
    or e
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and h
    xor l
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or l
    and b
    or c
    cp b
    ld d, c
    and e
    and h
    xor a
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub d
    add b
    sub l
    add h
    ld a, a
    and l
    xor b
    xor e
    and h
    or d
    ld a, a
    or d
    and h
    xor l
    or e
    ld a, a
    and c
    cp b
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    ld d, h
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
    or d
    add sp, $51
    sbc b
    xor [hl]
    or h
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
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    rst $20
    ld d, a
    nop
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
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    and $57
    nop
    sub c
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or e
    and h
    or d
    or e
    ld c, a
    adc l
    add h
    sub [hl]
    sub d
    ld [hl], l
    ld a, a
    adc a
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
    add sp, $57
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
    xor l
    xor [hl]
    ld a, a
    xor [hl]
    xor e
    and e
    ld c, a
    adc l
    add h
    sub [hl]
    sub d
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld a, a
    and e
    and b
    or e
    and b
    ld a, a
    xor b
    or d
    ld c, a
    and d
    xor [hl]
    or c
    or c
    or h
    xor a
    or e
    and h
    and e
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    xor e
    xor [hl]
    and b
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    ld c, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    sub d
    add b
    sub l
    add h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and h
    or d
    or d
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld d, c
    or d
    or e
    and b
    or c
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld c, a
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    or h
    xor b
    xor e
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld d, c
    xor b
    xor l
    or d
    or e
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld a, a
    and l
    or h
    xor l
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
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
    or e
    and a
    and h
    ld d, l
    sub e
    sub c
    add b
    add e
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    rst $20
    ld d, c
    adc b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    adc h
    add b
    adc b
    adc e
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld d, c
    xor a
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, l
    xor [hl]
    xor l
    and h
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and e
    xor b
    and e
    ld c, a
    or e
    and a
    and b
    or e
    db $f4
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld d, c
    and c
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or d
    xor [hl]
    or c
    or e
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
    rst $20
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor b
    or e
    ld a, a
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    ld c, a
    adc h
    add b
    adc b
    adc e
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, a
    xor a
    xor [hl]
    xor a
    or h
    xor e
    and b
    or c
    db $f4
    ld a, a
    adc b
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld d, c
    xor h
    and b
    xor d
    and h
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor l
    and h
    or [hl]
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, c
    or e
    xor [hl]
    or e
    and b
    xor e
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    or c
    or d
    ld a, a
    or h
    xor a
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $51
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
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld c, a
    and b
    and e
    xor c
    or h
    or d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    add sp, $57
    nop
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or d
    and h
    xor l
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    ld d, c
    add a
    adc [hl]
    adc a
    adc a
    adc b
    adc a
    add sp, $4f
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
    or c
    and b
    and e
    and h
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    and b
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
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld a, a
    and b
    ld c, a
    and l
    and h
    xor h
    and b
    xor e
    and h
    ld a, a
    add a
    adc [hl]
    adc a
    adc a
    adc b
    adc a
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    xor b
    or e
    or d
    ld a, a
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    sub d
    sub e
    add b
    adc l
    adc e
    add h
    sbc b
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    and e
    and b
    and e
    call nc, $ad4f
    and b
    xor h
    and h
    rst $20
    ld d, a
    nop
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
    and h
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld c, a
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    and $51
    add e
    xor [hl]
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor l
    and h
    or [hl]
    or d
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    and e
    and h
    or c
    ld a, a
    and b
    or c
    and h
    and b
    ld d, l
    or e
    and a
    and b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
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
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor e
    xor e
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    sub d
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    ld a, a
    or [hl]
    xor b
    or c
    and h
    xor e
    and h
    or d
    or d
    ld a, a
    xor l
    and h
    or e
    add sp, $51
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
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld d, c
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or d
    xor [hl]
    or c
    or e
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
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    or d
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    cp b
    and h
    or e
    add sp, $51
    sub d
    or e
    xor b
    xor e
    xor e
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ad7f
    xor b
    and d
    and h
    ld c, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    or e
    or c
    and h
    xor l
    and e
    cp b
    ld d, c
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld d, c
    and c
    and b
    and d
    xor d
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    or d
    or h
    or c
    xor a
    or c
    xor b
    or d
    and h
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    xor l
    or a
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld c, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or e
    and h
    or d
    or e
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc l
    add h
    sub [hl]
    sub d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld d, c
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    and c
    and h
    or e
    ld a, a
    adc b
    pop de
    xor e
    ld c, a
    and c
    and h
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and h
    and e
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    adc b
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc l
    add h
    sub [hl]
    sub d
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
    add d
    adc [hl]
    adc e
    adc [hl]
    sub d
    sub d
    add h
    sub h
    adc h
    ld c, a
    or h
    xor a
    or d
    or e
    and b
    xor b
    or c
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    xor e
    xor b
    xor l
    xor d
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $51
    add c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    xor a
    xor [hl]
    or d
    or e
    and h
    and e
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
    push de
    ld c, a
    and b
    and l
    and l
    xor [hl]
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    call nc, Call_018_544f
    adc h
    adc [hl]
    adc l
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    and a
    and b
    or d
    ld d, c
    xor l
    and h
    or [hl]
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    call nc, $a47f
    or l
    and h
    or c
    ld a, a
    or d
    and h
    and h
    xor l
    ld d, l
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
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
    ld c, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and c
    or h
    or d
    cp b
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld [hl], l
    ld d, a
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld d, c
    and a
    and h
    or c
    and h
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
    and l
    and h
    and h
    xor e
    ld c, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    and h
    or c
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld d, l
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    add sp, $51
    add b
    and l
    or e
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    or e
    cp b
    xor a
    and h
    ld a, a
    and e
    xor b
    or d
    db $e3
    ld d, l
    and b
    and e
    or l
    and b
    xor l
    or e
    and b
    and [hl]
    and h
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld c, a
    or e
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
    xor b
    xor l
    and [hl]
    xor e
    and h
    ld d, c
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
    xor b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or d
    or e
    add sp, $57
    nop
    ld d, d
    db $f4
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    and $51
    add d
    xor [hl]
    xor l
    and [hl]
    or c
    and b
    or e
    or h
    xor e
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    rst $20
    ld d, c
    add b
    or d
    ld a, a
    and b
    ld a, a
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
    and b
    xor e
    db $f4
    ld c, a
    and b
    ld a, a
    add [hl]
    sub d
    ld a, a
    add c
    add b
    adc e
    adc e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld d, l
    or d
    and h
    xor l
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and b
    and d
    and d
    and h
    xor a
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
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
    ld c, a
    rst $30
    add l
    ld a, a
    adc b
    adc l
    add l
    adc [hl]
    sub c
    adc h
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, c
    adc e
    and h
    and l
    or e
    sbc h
    ld c, a
    add b
    add e
    adc h
    adc b
    adc l
    adc b
    sub d
    sub e
    sub c
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, c
    add d
    and h
    xor l
    or e
    and h
    or c
    sbc h
    ld c, a
    sub e
    sub c
    add b
    add e
    add h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld d, c
    sub c
    xor b
    and [hl]
    and a
    or e
    sbc h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    adc l
    add h
    sub [hl]
    sub d
    ld a, a
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    xor b
    xor l
    ld c, a
    xor [hl]
    xor a
    and h
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    cp b
    and h
    or e
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    xor h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    and d
    xor d
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and a
    and h
    and b
    or l
    cp b
    rst $20
    ld d, c
    adc [hl]
    and a
    rst $20
    ld a, a
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    ld c, a
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
    or e
    and a
    xor b
    xor l
    and [hl]
    ld d, l
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    add h
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    adc b
    adc e
    and $51
    adc h
    cp b
    ld a, a
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
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    add [hl]
    xor b
    or l
    and h
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and b
    xor l
    ld a, a
    add h
    adc [hl]
    adc l
    ld c, a
    adc h
    add b
    adc b
    adc e
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a67f
    or c
    and h
    and b
    or e
    rst $20
    ld c, a
    sub e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    and a
    xor [hl]
    xor l
    and h
    cp b
    rst $20
    ld d, c
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
    and l
    xor [hl]
    or c
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    and e
    and h
    xor e
    xor b
    and [hl]
    and a
    or e
    and h
    and e
    rst $20
    ld d, a
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
    xor [hl]
    xor l
    and h
    and $7f
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    add sp, $57
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $57
    nop
    ld d, d
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld c, a
    or e
    and a
    and h
    ld a, a
    add h
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    adc b
    adc e
    add sp, $57
    nop
    nop
    inc b
    rlca
    inc bc
    rrca
    dec bc
    ld [bc], a
    rlca
    inc b
    rrca
    dec bc
    ld [bc], a
    rlca
    nop
    ld bc, $150b
    dec b
    nop
    ld bc, $0114
    ld [bc], a
    nop
    rlca
    inc bc
    nop
    sub h
    ld c, a
    nop
    nop
    nop
    rlca
    inc b
    nop
    reti


    ld c, a
    nop
    nop
    nop
    dec b
    scf
    dec b
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    sub c
    ld c, a
    rst $38
    rst $38
    jr c, jr_018_65a9

    inc d
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    rst $28
    ld h, $ff
    rst $38
    inc bc

jr_018_65a9:
    dec b
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld e, $50
    rst $38
    rst $38
    jr z, @+$0a

    dec b
    dec b
    ld bc, $ffff
    nop
    nop
    ld hl, $ff50
    rst $38
    ld l, $09
    dec bc
    ld b, $00
    rst $38
    rst $38
    or b
    nop
    inc h
    ld d, b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld [hl], h
    ld h, [hl]
    ld d, c
    ld sp, hl
    ld h, [hl]
    ld d, c
    sub l
    ld h, a
    ld b, a
    ld c, h
    xor $67
    ld d, h
    ld a, h
    ld c, a
    ld [bc], a
    ld h, [hl]
    ld e, c
    ld d, b
    ld b, $01
    ldh a, [$65]
    ld b, $02
    ld hl, sp+$65
    inc bc
    nop
    ld h, [hl]
    ld b, a
    ld c, h
    jr z, @+$6a

    ld d, h
    inc bc
    rst $18
    ld h, l
    ld b, a
    ld c, h
    db $f4
    ld l, b
    ld d, h
    inc bc
    rst $18
    ld h, l
    ld c, c
    sub c
    ld b, b
    nop
    nop
    ld [$0a0f], sp
    ld h, [hl]
    ld bc, $0380
    ld d, h
    ld a, a
    jp nz, $bcb3

    sbc $7f
    add a
    and l
    dec de
    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    ld d, b
    call nc, $d9d2
    ld d, b
    ld b, a
    ld c, h
    adc c
    ld l, c
    ld d, h
    ld a, h
    ld c, a
    ld c, h
    ld h, [hl]
    ld e, c
    ld d, b
    ld b, $01
    ld a, [hl-]
    ld h, [hl]
    ld b, $02
    ld b, d
    ld h, [hl]
    inc bc
    ld c, d
    ld h, [hl]
    ld b, a
    ld c, h
    xor [hl]
    ld l, c
    ld d, h
    inc bc
    add hl, hl
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, d
    ld l, d
    ld d, h
    inc bc
    add hl, hl
    ld h, [hl]
    ld c, c
    sub c
    ld b, b
    nop
    nop
    ld [$540f], sp
    ld h, [hl]
    ld bc, $0380
    inc sp
    sbc $dc
    rra
    jp nz, $b3b6

    call nz, Call_018_50b7
    inc sp
    sbc $dc
    ld c, d
    jp nz, $26c5

    rst $10
    push bc
    or d
    call nz, Call_018_50b7
    call nc, $d9d2
    ld d, b
    ld d, e
    ld h, $6b
    nop
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
    ld a, a
    and b
    xor l
    and e
    ld c, a
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld d, c
    and c
    or h
    xor b
    xor e
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and b
    or e
    xor b
    or d
    and l
    cp b
    ld c, a
    and e
    and h
    xor h
    and b
    xor l
    and e
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    or c
    and b
    and e
    and h
    or d
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    and l
    and b
    or c
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld d, c
    and b
    xor l
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    ld c, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    or c
    or d
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    and h
    and e
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    cp b
    ld d, c
    xor h
    xor [hl]
    and c
    xor b
    xor e
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    and h
    ld a, a
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
    db $f4
    ld d, c
    or [hl]
    and h
    or c
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor b
    xor h
    xor a
    or c
    and h
    or d
    or d
    and h
    and e
    and $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    or e
    or c
    cp b
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor d
    and h
    and e
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    xor [hl]
    ld d, c
    xor b
    xor h
    xor a
    or c
    and h
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    and b
    xor d
    and h
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    or h
    xor b
    xor e
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    ld d, c
    and l
    and b
    and d
    xor b
    xor e
    xor b
    or e
    cp b
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and b
    and e
    or l
    and b
    xor l
    and d
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or [hl]
    xor b
    or c
    and h
    db $e3
    ld d, l
    xor e
    and h
    or d
    or d
    ld a, a
    or e
    and h
    and d
    and a
    xor l
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    cp b
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld d, c
    add b
    add e
    add b
    adc a
    sub e
    add h
    sub c
    sub d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    or h
    or d
    and h
    and e
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
    ld d, h
    add d
    adc [hl]
    adc h
    ld c, a
    add d
    adc e
    sub h
    add c
    ld a, a
    or h
    xor a
    or d
    or e
    and b
    xor b
    or c
    or d
    ld a, a
    xor b
    xor l
    ld d, c
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor [hl]
    or c
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    and l
    and b
    or c
    ld c, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and c
    cp b
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld d, l
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    add b
    add e
    add b
    adc a
    sub e
    add h
    sub c
    add sp, $51
    sub e
    xor [hl]
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or h
    xor a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    add b
    add e
    add b
    adc a
    sub e
    add h
    sub c
    ld a, a
    and b
    or d
    ld d, l
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    sub e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    sub c
    add b
    add e
    add h
    ld c, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld a, a
    xor [hl]
    or c
    ld a, a
    or c
    and h
    and b
    and e
    ld a, a
    or e
    and a
    and h
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc l
    add h
    sub [hl]
    sub d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    ld c, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld d, c
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld c, a
    and d
    xor [hl]
    xor l
    xor l
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld [hl], l
    ld d, a
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and h
    xor l
    or d
    or h
    or c
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
    or c
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, c
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    add b
    add e
    add b
    adc a
    sub e
    add h
    sub c
    ld a, a
    and b
    or c
    and h
    ld c, a
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    xor e
    cp b
    ld a, a
    xor e
    xor b
    xor l
    xor d
    and h
    and e
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or d
    or h
    or c
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    or c
    and h
    xor e
    and h
    or d
    or d
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld d, l
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    ld a, a
    xor [hl]
    or c
    ld c, a
    and a
    and b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld d, l
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    or c
    or l
    and h
    or c
    ld a, a
    xor b
    or d
    ld c, a
    and c
    or h
    or d
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor l
    xor [hl]
    or e
    ld d, c
    and c
    and h
    ld a, a
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
    xor e
    xor [hl]
    and [hl]
    ld c, a
    xor [hl]
    xor l
    add sp, $51
    adc b
    and l
    ld a, a
    or d
    xor [hl]
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $51
    adc b
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
    or h
    xor l
    and b
    and c
    xor e
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    or c
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, c
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    and h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    or d
    or d
    and b
    and [hl]
    and h
    or d
    db $f4
    ld d, c
    and d
    and b
    xor e
    xor e
    ld a, a
    and b
    ld a, a
    or d
    or h
    xor a
    xor a
    xor [hl]
    or c
    or e
    ld c, a
    and d
    and h
    xor l
    or e
    and h
    or c
    ld a, a
    xor [hl]
    or c
    ld a, a
    or c
    and h
    and b
    and e
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor b
    xor l
    or d
    or e
    or c
    or h
    and d
    or e
    xor b
    xor [hl]
    xor l
    or d
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add b
    add e
    adc h
    adc b
    adc l
    adc b
    sub d
    sub e
    sub c
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld c, a
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld a, a
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld a, a
    and b
    xor l
    ld d, l
    and h
    db $e3
    xor h
    and b
    xor b
    xor e
    add sp, $7f
    adc b
    or e
    ld a, a
    or d
    and b
    cp b
    or d
    ld [hl], l
    ld d, c
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
    sub e
    xor [hl]
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
    or d
    or e
    and b
    and l
    and l
    ld [hl], l
    ld d, c
    sub [hl]
    xor b
    or c
    and h
    xor e
    and h
    or d
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    xor h
    or h
    xor l
    xor b
    db $e3
    ld c, a
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and a
    and b
    or d
    ld a, a
    and h
    xor l
    and b
    and c
    xor e
    and h
    and e
    ld d, c
    ld d, h
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
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    and b
    and d
    or e
    ld a, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld d, c
    or e
    and a
    and h
    ld a, a
    xor l
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $7f
    adc e
    and h
    or e
    call nc, $aa4f
    and h
    and h
    xor a
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    or e
    and a
    and h
    ld a, a
    and e
    and b
    cp b
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    and b
    xor e
    xor e
    ld c, a
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
    ld a, a
    xor b
    xor l
    ld d, c
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld c, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and c
    and b
    or c
    or c
    xor b
    and h
    or c
    or d
    rst $20
    ld d, c
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, a
    nop
    nop
    ld [bc], a
    rrca
    nop
    inc bc
    dec bc
    inc d
    ld d, $12
    inc bc
    dec bc
    inc d
    nop
    inc bc
    ld a, [de]
    ld b, $01
    jp c, $1c65

    ld b, $01
    inc h
    ld h, [hl]
    ld a, [de]
    inc bc
    ld bc, $6671
    inc bc
    inc a
    dec de
    dec d
    inc b
    db $10
    rst $38
    rst $38
    add b
    nop
    pop de
    ld h, l
    rst $38
    rst $38
    inc a
    rra
    dec bc
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    call nc, $ff65
    rst $38
    inc a
    ld hl, $070b
    nop
    rst $38
    rst $38
    and b
    nop
    rst $10
    ld h, l
    rst $38
    rst $38
    nop
    nop
    ld d, c
    add b
    ld l, h
    ld d, c
    or b
    ld l, h
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
    and c
    xor b
    and [hl]
    add sp, $7f
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
    rst $20
    ld d, l
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $57
    nop
    sub e
    and a
    and h
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
    or [hl]
    and b
    or e
    and d
    and a
    and h
    and e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and c
    cp b
    ld d, l
    xor b
    or e
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor [hl]
    or c
    add sp, $51
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
    ld c, a
    xor h
    xor b
    or d
    and d
    and a
    xor b
    and h
    and l
    rst $20
    ld d, a
    nop
    nop
    inc b
    inc b
    nop
    ld [bc], a
    inc bc
    inc [hl]
    dec b
    nop
    inc bc
    inc bc
    inc [hl]
    inc b
    add hl, bc
    rlca
    ld [$0507], sp
    add hl, bc
    ld [$0708], sp
    nop
    nop
    ld [bc], a
    ld b, e
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    ld a, d
    ld l, h
    rst $38
    rst $38
    jr nc, jr_018_6d24

    dec b
    ld b, $00
    rst $38
    rst $38
    or b
    nop

jr_018_6d24:
    ld a, l
    ld l, h
    rst $38
    rst $38
    nop
    ld bc, $2d02
    ld l, l
    ld sp, $00c0
    ld [$6d38], sp
    ld l, [hl]
    ld [bc], a
    ld l, a
    dec b
    sub b
    ld l, [hl]
    dec b
    ld l, a
    ld [bc], a
    sub b
    ld sp, $00c0
    ld [$6d62], sp
    ld [hl], l
    nop
    dec b
    inc d
    db $76
    dec b
    ld [bc], a
    halt
    inc bc
    ld [hl], b
    nop
    dec b
    ld l, c
    nop
    sub a
    ld l, l
    ld [hl], c
    halt
    nop
    ld b, a
    ld c, h
    ld b, c
    ld l, [hl]
    ld d, h
    ld c, c
    ld l, c
    dec b
    sbc d
    ld l, l
    sub c
    ld l, e
    ld b, a
    ld sp, $00c0
    add hl, bc
    add h
    ld l, l
    ld sp, $007a
    add hl, bc
    ld a, [hl]
    ld l, l
    ld c, h
    sbc l
    ld l, l
    ld d, l
    sbc [hl]
    rlc c
    ld [$6d82], sp
    inc sp
    ld a, d
    nop
    ld c, h
    or $6d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, c
    ld l, [hl]
    ld d, l
    ld c, c
    sub c
    ld b, a
    ld c, h
    add e
    ld l, [hl]
    add h
    inc c
    nop
    ld d, h
    ld c, c
    sub c
    ld d, c
    sub a
    ld l, [hl]
    dec c
    dec c
    ld b, a
    inc c
    rrca
    ld b, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor [hl]
    xor l
    and h
    cp b
    add sp, $7f
    sbc b
    xor [hl]
    or h
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
    ld d, h
    add e
    add h
    sub a
    and $51
    adc b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    xor b
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld d, c
    and b
    xor a
    xor a
    and h
    and b
    or c
    add sp, $7f
    sub e
    or c
    cp b
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    sub e
    adc h
    add sp, $57
    nop
    adc b
    or e
    call nc, $927f
    sub [hl]
    add h
    add h
    sub e
    ld a, a
    sub d
    add d
    add h
    adc l
    sub e
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    or l
    and h
    or c
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
    add sp, $51
    ld d, h
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
    ld c, a
    and h
    xor l
    or e
    xor b
    and d
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sub d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    call nc, $b67f
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    xor b
    xor l
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
    or d
    or e
    and b
    cp b
    ld c, a
    and b
    or [hl]
    and b
    cp b
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
    add sp, $57
    nop
    add c
    sub h
    sub e
    sub e
    add h
    sub c
    add l
    sub c
    add h
    add h
    sbc h
    ld a, a
    add l
    or c
    and h
    and h
    and a
    rst $20
    ld d, a
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor [hl]
    or c
    and $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or e
    and d
    and a
    and h
    or d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    or e
    and a
    and h
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    or e
    xor b
    xor h
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
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    db $e3
    ld d, l
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
    nop
    inc b
    nop
    inc b
    ld bc, $010b
    nop
    dec b
    ld [bc], a
    dec bc
    ld bc, $0407
    ld bc, $3403
    rlca
    dec b
    ld bc, $3403
    ld bc, $0700
    inc b
    nop
    dec a
    ld l, l
    nop
    nop
    nop
    inc b
    add hl, hl
    rlca
    dec c
    ld [$ff00], sp
    rst $38
    sub b
    nop
    ld h, e
    ld l, l
    ld [$8b06], a
    ld [$160d], sp
    nop
    rst $38
    rst $38
    add b
    nop
    adc d
    ld l, l
    rst $38
    rst $38
    jr z, jr_018_6f66

    rlca
    inc b
    db $10
    rst $38
    rst $38
    and b
    nop
    sub h

jr_018_6f66:
    ld l, l
    db $eb
    ld b, $29
    dec bc
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    ld h, e
    ld l, l
    db $ec
    ld b, $00
    ld bc, $7b02
    ld l, a
    inc [hl]
    dec b
    nop
    add hl, bc
    adc b
    ld l, a
    ld [hl-], a
    push hl
    ld b, $33
    and $06
    sub b
    inc sp
    push hl
    ld b, $32
    and $06
    sub b
    ld l, e
    ld b, a
    ld sp, $033e
    add hl, bc
    cp l
    ld l, a
    ld c, h
    adc $70
    ld d, l
    ld c, c
    inc e
    ld bc, $0606
    or [hl]
    ld l, a
    rrca
    ld a, l
    nop
    ld b, a
    ld c, h
    xor [hl]
    ld [hl], c
    add l
    sub c
    nop
    add [hl]
    ld c, h
    jp Jump_018_5471


    ld c, c
    inc sp
    ld a, $03
    sub c
    ld b, a
    ld c, h
    scf
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    rrca
    ld e, $00
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    inc [hl]
    dec b
    nop
    add hl, bc
    pop de
    ld l, a
    rrca
    rra
    nop
    ld d, h
    ld c, c
    sub c
    ld c, h
    jp c, Jump_018_546f

    ld c, c
    sub c
    inc c
    ld bc, $0000
    add [hl]
    or c
    and b
    xor h
    xor a
    or d
    ld a, a
    or [hl]
    and b
    or d
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
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    add e
    add b
    sbc b
    db $e3
    add d
    add b
    sub c
    add h
    ld c, a
    adc h
    add b
    adc l
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $b27f
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    ld d, c
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    sub c
    add b
    add e
    add h
    ld c, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and [hl]
    xor b
    or l
    and h
    xor l
    ld a, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    ld c, a
    sub e
    adc b
    add d
    adc d
    add h
    sub e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld d, c
    or e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, a
    adc [hl]
    add e
    add e
    ld a, a
    add h
    add [hl]
    add [hl]
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    or [hl]
    and h
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and b
    ld c, a
    add e
    add b
    sbc b
    db $e3
    add d
    add b
    sub c
    add h
    db $f4
    ld a, a
    or [hl]
    and h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, c
    xor l
    and h
    and h
    and e
    ld a, a
    xor b
    or e
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld c, a
    and b
    or d
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    add e
    add b
    sbc b
    db $e3
    add d
    add b
    sub c
    add h
    ld c, a
    adc h
    add b
    adc l
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
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    add h
    add [hl]
    add [hl]
    sub d
    and $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and b
    xor b
    or d
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
    xor h
    cp b
    ld d, l
    or [hl]
    xor b
    and l
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    add sp, $51
    sub [hl]
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    rst $20
    ld d, c
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    and h
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and a
    and b
    or e
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    add h
    add [hl]
    add [hl]
    and $51
    sub e
    and a
    and h
    xor l
    ld a, a
    and l
    xor b
    xor l
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
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    rst $20
    ld d, a
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
    adc [hl]
    add e
    add e
    ld a, a
    add h
    add [hl]
    add [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and d
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    call nc, Call_018_547f
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, $51
    add c
    or h
    or e
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
    ld c, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    and a
    and h
    ld d, c
    add h
    add [hl]
    add [hl]
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ret nc

    ld a, a
    xor d
    and h
    xor a
    or e
    ld c, a
    xor b
    or e
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
    nop
    inc b
    dec b
    nop
    inc bc
    dec bc
    ld bc, $0006
    inc b
    dec bc
    ld bc, $0207
    dec b
    dec bc
    ld bc, $0307
    dec b
    dec bc
    ld bc, $0200
    ld bc, $0000
    rst $10
    ld l, a
    ld bc, $0001
    rst $10
    ld l, a
    ld [bc], a
    cpl
    rlca
    ld b, $09
    nop
    rst $38
    rst $38
    nop
    nop
    adc a
    ld l, a
    push hl
    ld b, $30
    rlca
    add hl, bc
    ld [$ff00], sp
    rst $38
    add b
    nop
    jp $ff6f


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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
