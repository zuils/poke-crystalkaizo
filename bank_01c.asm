; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    ld [bc], a
    db $10
    ld b, b
    nop
    nop
    ld de, $0040
    nop
    ld [bc], a
    dec b
    ld [de], a
    ld b, b
    ld [bc], a
    ld d, $40
    sub c
    sub c
    ld [hl], $4a
    nop
    sub b
    inc e
    dec bc
    ld b, $03
    rra
    ld b, b
    ld l, [hl]
    dec bc
    sub b
    ld l, a
    dec bc
    sub b
    ld sp, $0026
    add hl, bc
    ld d, a
    ld b, b
    ld b, a
    ld c, h
    ld d, a
    ld b, c
    ld d, l
    ld l, e
    ld c, h
    or h
    ld b, c
    ld c, [hl]
    ld [$404e], sp
    ld c, h
    add $42
    ld d, h
    ld c, c
    add l
    inc de
    nop
    ld l, c
    ld [bc], a
    ld d, l
    ld b, c
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    push de
    ld b, $33
    ld h, b
    nop
    ld [de], a
    inc bc
    jr nc, jr_01c_404e

    sub c

jr_01c_404e:
    ld c, h
    ld [hl], c
    ld b, e
    ld d, h
    ld c, c
    inc sp
    ld h, $00
    sub c
    ld l, e
    ld b, a
    ld c, h
    and l
    ld b, e
    ld c, [hl]
    ld [$404e], sp
    inc bc
    dec [hl]
    ld b, b
    ld b, a
    ld c, h
    bit 0, e
    adc e
    rrca
    add h
    add d
    nop
    ld c, c
    ld e, l
    add d
    ld b, b
    ld e, $03
    rlca
    ld e, a
    ld b, $01
    ld a, d
    ld b, b
    ld l, [hl]
    ld a, [bc]
    ld h, b
    ld b, a
    rra
    ld b, d
    ld bc, $4c86
    rst $18
    ld b, e
    add l
    ld bc, $8600
    ld b, l
    ld c, c
    inc d
    nop
    ld l, a
    ld [bc], a
    sub c
    ld l, e
    ld b, a
    ld sp, $0022
    add hl, bc
    sbc h
    ld b, b
    ld c, h
    ld hl, sp+$43
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld hl, $5444
    ld c, c
    sub c
    ld d, c
    ld b, h
    ld b, h
    ld d, c
    cp e
    ld b, h
    ld d, e
    rst $10
    ld c, b
    ld b, a
    ld c, h
    inc bc
    ld c, c
    ld sp, $0022
    add hl, bc
    cp b
    ld b, b
    ld d, h
    ld c, c
    sub c
    ld d, l
    rrca
    ld a, [de]
    nop
    ld c, c
    sub c
    ld d, l
    inc b
    dec h
    ld [$4522], sp
    ld c, [hl]
    ld b, l
    nop
    nop
    jp z, Jump_01c_6640

    ld b, a
    ld c, h
    adc a
    ld b, l
    ld d, h
    ld c, c
    sub c
    ld d, [hl]
    inc b
    dec h
    add hl, bc
    ret nz

    ld b, l
    rst $30
    ld b, l
    nop
    nop
    sbc $40
    ld h, [hl]
    ld b, a
    ld c, h
    ld de, $5446
    ld c, c
    sub c
    ld c, c
    dec b
    dec de
    ld [bc], a
    ld [hl-], a
    ld b, [hl]
    adc b
    ld b, [hl]
    nop
    nop
    ld a, [c]
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    sbc h
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld e, h
    dec b
    inc e
    ld [bc], a
    rst $18
    ld b, [hl]
    ld b, l
    ld b, a
    nop
    nop
    ld b, $41
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, d

jr_01c_410a:
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $006b
    add hl, bc
    inc a
    ld b, c
    inc e
    dec bc
    rlca
    inc bc
    ld b, d
    ld b, c
    ld sp, $006a
    add hl, bc
    add hl, hl
    ld b, c
    ld c, h
    add h
    ld b, a
    ld d, l
    inc sp
    ld l, d
    nop
    ld c, h
    db $dd
    ld b, a
    ld d, l
    sbc [hl]
    ld h, d
    ld bc, $4008
    ld b, c
    inc sp
    ld l, e
    nop
    ld c, h
    dec bc
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, h
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor c
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld b, c
    ld bc, $01eb
    or l
    nop
    ld c, $b6
    nop
    jr nz, jr_01c_410a

    nop
    rrca
    ld c, h
    ld b, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor e
    and b
    xor d
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    ld c, a
    xor [hl]
    and l
    ld a, a
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld a, a
    and c
    or h
    or e
    ld d, l
    xor l
    xor [hl]
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
    ld [hl], l
    ld d, c
    sub d
    xor [hl]
    ld a, a
    or e
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
    ld c, a
    and b
    or c
    and h
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    and d
    and h
    and e
    ld d, l
    or e
    xor [hl]
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld [hl], l
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
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
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
    ld a, a
    or e
    and a
    and h
    ld d, l
    or c
    or h
    xor h
    xor [hl]
    or c
    or d
    and $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    ld d, d
    and $4f
    adc b
    jp nc, $8b7f

    add b
    adc l
    add d
    add h
    db $f4
    ld a, a
    and b
    ld d, l
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
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or c
    or h
    db $e3
    ld c, a
    xor h
    xor [hl]
    or c
    or d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
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
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    ld a, a
    and h
    and b
    or c
    xor e
    xor b
    and h
    or c
    db $f4
    ld d, l
    inc d
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    and h
    xor e
    xor e
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
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    and b
    and c
    xor e
    and h
    ld c, a
    or d
    xor d
    xor b
    xor e
    xor e
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
    xor l
    and e
    db $f4
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    ld d, l
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
    and $57
    nop
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    add h
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
    adc b
    or e
    ld a, a
    or d
    and h
    and h
    xor h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc e
    add b
    adc d
    add h
    call nc, $8c7f
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld d, c
    and b
    or c
    and h
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    and d
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    add sp, $51
    add b
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
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld c, a
    and c
    or c
    xor [hl]
    and b
    and e
    and d
    and b
    or d
    or e
    ld a, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld d, c
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc h
    add b
    add a
    adc [hl]
    add [hl]
    add b
    adc l
    sbc b
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    and b
    or h
    or d
    and h
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or [hl]
    and b
    xor b
    or e
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
    db $f4
    ld a, a
    inc d
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
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor b
    xor l
    and e
    db $f4
    ld d, l
    xor a
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
    add sp, $57
    nop
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    add a
    xor h
    and $7f
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
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
    and a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    and $57
    nop
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    sbc h
    ld a, a
    add [hl]
    cp b
    and b
    or d
    and a
    and b
    and b
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    xor [hl]
    and c
    or e
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    and b
    ld c, a
    sub c
    add h
    add e
    ld a, a
    sub d
    add d
    add b
    adc e
    add h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
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
    ld c, a
    and b
    xor l
    and [hl]
    or c
    cp b
    rst $20
    ld d, c
    adc b
    or e
    call nc, $a07f
    ld a, a
    and c
    and b
    and e
    ld a, a
    xor [hl]
    xor h
    and h
    xor l
    rst $20
    ld d, a
    nop
    add a
    and b
    and a
    and b
    and a
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    db $e3
    ld c, a
    adc d
    add b
    sub c
    adc a
    ld a, a
    and b
    or c
    and h
    ld a, a
    and c
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
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
    xor b
    or d
    ld a, a
    xor e
    and b
    xor d
    and h
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
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
    db $e3
    ld d, l
    xor a
    and b
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
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
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    or d
    ld a, a
    and b
    xor l
    cp b
    ld a, a
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
    ld d, c
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor h
    and b
    or d
    or d
    ld a, a
    xor [hl]
    or h
    or e
    db $e3
    ld c, a
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and $57
    nop
    add e
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and h
    cp b
    and h
    or d
    ld a, a
    and e
    and h
    db $e3
    ld c, a
    and d
    and h
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    and $7f
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and b
    ld d, c
    or c
    and h
    and e
    ld a, a
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc e
    add b
    adc d
    add h
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
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
    or [hl]
    and h
    or c
    and h
    ld d, l
    or h
    or d
    or h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and c
    xor e
    or h
    and h
    and $57
    nop
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
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
    ld c, a
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
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and h
    ld a, a
    and b
    xor l
    ld a, a
    and h
    or a
    db $e3
    ld c, a
    xor a
    and h
    or c
    or e
    ld a, a
    and b
    xor l
    and [hl]
    xor e
    and h
    or c
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
    adc b
    ld a, a
    or d
    or e
    xor b
    xor l
    xor d
    ld a, a
    and b
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
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    and b
    or d
    ld a, a
    and b
    xor l
    ld c, a
    and b
    xor l
    and [hl]
    xor e
    and h
    or c
    rst $20
    ld a, a
    adc b
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and e
    and b
    cp b
    add sp, $57
    nop
    adc l
    xor [hl]
    ld a, a
    xor h
    and b
    or e
    or e
    and h
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld c, a
    and e
    xor [hl]
    db $f4
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    adc b
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld d, c
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
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
    adc h
    cp b
    ld a, a
    xor e
    xor b
    xor l
    and h
    call nc, $a07f
    xor e
    xor e
    ld c, a
    or e
    and b
    xor l
    and [hl]
    xor e
    and h
    and e
    ld a, a
    or h
    xor a
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    adc b
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc b
    and l
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
    or d
    xor a
    xor [hl]
    or e
    or d
    ld c, a
    and b
    xor l
    xor [hl]
    or e
    and a
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
    db $f4
    ld d, c
    and a
    and h
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    and e
    and h
    or d
    or e
    xor b
    xor l
    cp b
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    or [hl]
    ld [hl], l
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld d, c
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    and d
    xor [hl]
    xor l
    or d
    or e
    and b
    xor l
    or e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    and e
    ld a, a
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    and $51
    adc b
    or e
    call nc, $a67f
    xor [hl]
    xor l
    and h
    and $51
    adc [hl]
    and a
    db $f4
    ld a, a
    and e
    and b
    or c
    xor l
    add sp, $7f
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    and $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    db $e3
    db $e3
    xor e
    and h
    or e
    call nc, $a14f
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor [hl]
    and l
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    adc b
    sub $a4
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    and b
    ld d, l
    xor a
    xor b
    xor l
    xor d
    ld a, a
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
    add sp, $57
    nop
    sub [hl]
    add h
    sub d
    adc e
    add h
    sbc b
    sbc h
    ld a, a
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    and $51
    sub d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or d
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    call nc, $964f
    and h
    and e
    xor l
    and h
    or d
    and e
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    db $f4
    ld d, c
    adc b
    jp nc, $967f

    add h
    sub d
    adc e
    add h
    sbc b
    ld a, a
    xor [hl]
    and l
    ld c, a
    sub [hl]
    and h
    and e
    xor l
    and h
    or d
    and e
    and b
    cp b
    add sp, $57
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    and h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $7f
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
    and b
    ld d, l
    or d
    xor [hl]
    or h
    or l
    and h
    xor l
    xor b
    or c
    add sp, $57
    nop
    sub [hl]
    add h
    sub d
    adc e
    add h
    sbc b
    sbc h
    ld a, a
    add c
    adc e
    add b
    add d
    adc d
    add c
    add h
    adc e
    sub e
    ld c, a
    and c
    and h
    and h
    and l
    or d
    ld a, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld d, l
    xor [hl]
    and l
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
    sub [hl]
    add h
    sub d
    adc e
    add h
    sbc b
    sbc h
    ld a, a
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    db $e3
    ld c, a
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    or d
    add sp, $51
    adc [hl]
    or c
    ld a, a
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    xor e
    or h
    and d
    xor d
    cp b
    and $57
    nop
    sub [hl]
    add h
    sub d
    adc e
    add h
    sbc b
    sbc h
    ld a, a
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, $ad4f
    xor [hl]
    or e
    ld a, a
    sub [hl]
    and h
    and e
    xor l
    and h
    or d
    and e
    and b
    cp b
    add sp, $55
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
    db $f4
    ld c, a
    and b
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
    ld d, l
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld a, a
    adc e
    add b
    adc d
    add h
    add sp, $57
    nop
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld a, a
    add [hl]
    sub h
    sub c
    sub h
    ldh [$92], a
    ld c, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    nop
    ld [bc], a
    inc bc
    rlca
    ld bc, $0109
    rra
    dec de
    ld bc, $0209
    nop
    dec b
    dec de
    dec d
    nop
    xor b
    ld b, b
    rra
    add hl, de
    nop
    xor e
    ld b, b
    ld [bc], a
    inc hl
    rlca
    ld c, h
    ld b, c
    inc b
    inc b
    rlca
    ld c, a
    ld b, c
    ld a, [bc]
    rlca
    rlca
    ld d, d
    ld b, c
    inc c
    ld e, $20
    add hl, de
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    ld [hl+], a
    ld b, b
    call nc, $2f06
    ld e, $18
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    adc [hl]
    ld b, b
    rst $38
    rst $38
    dec hl
    ld de, $0828
    nop
    rst $38
    rst $38
    nop
    nop
    and d
    ld b, b
    rst $38
    rst $38
    inc h
    ld hl, $051d
    ld bc, $ffff
    nop
    nop
    and l
    ld b, b
    rst $38
    rst $38
    ld a, [hl-]
    dec de
    ld [hl+], a
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    cp [hl]
    ld b, b
    dec [hl]
    rlca
    ld a, [hl-]
    dec de
    dec h
    ld [$ff00], sp
    rst $38
    sub d
    ld bc, $40d2
    dec [hl]
    rlca
    inc hl
    ld hl, $0918
    nop
    rst $38
    rst $38
    add d
    ld bc, $40e6
    dec [hl]
    rlca
    inc h
    ld a, [bc]
    jr z, jr_01c_49a9

    nop
    rst $38
    rst $38
    add d
    ld bc, $40fa
    dec [hl]

jr_01c_49a9:
    rlca
    and b
    ld a, [de]
    ld d, $16
    nop
    rst $38
    rst $38
    add b
    nop
    ld h, e
    ld b, b
    ld d, c
    rlca
    dec hl
    rla
    ld a, [de]
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld c, $41
    ld e, h
    rlca
    ld d, h
    ld d, $1b
    ld bc, $ff00
    rst $38
    ld bc, $4800
    ld b, c
    ld b, l
    ld b, $54
    rla
    dec de
    ld bc, $ff00
    rst $38
    ld bc, $4a00
    ld b, c
    ld b, [hl]
    ld b, $00
    nop
    ld d, c
    rst $28
    ld c, c
    ld d, c
    dec [hl]
    ld c, d
    ld d, c
    xor c
    ld c, d
    ld d, e
    ld [$0c4a], a
    inc d
    nop
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
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, $55
    sub d
    sub e
    adc [hl]
    sub c
    add h
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and e
    xor b
    or c
    and h
    and d
    or e
    xor [hl]
    or c
    cp b
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
    or [hl]
    and b
    xor e
    xor e
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, -$6e
    sub e
    adc [hl]
    sub c
    add h
    ld a, a
    xor b
    or d
    ld c, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld d, c
    and d
    and a
    and b
    xor b
    xor l
    ld a, a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
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
    and c
    xor [hl]
    or e
    and a
    ld c, a
    or c
    and h
    xor l
    xor [hl]
    or l
    and b
    or e
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    or d
    and b
    xor h
    and h
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
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    and c
    xor b
    and [hl]
    ld [hl], l
    ld d, c
    adc b
    jp nc, $a07f

    and l
    or c
    and b
    xor b
    and e
    ld a, a
    adc b
    pop de
    xor e
    ld c, a
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
    rst $30
    add l
    sbc h
    ld a, a
    sub d
    add h
    sub c
    sub l
    adc b
    add d
    add h
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add d
    adc [hl]
    sub h
    adc l
    sub e
    add h
    sub c
    ld d, c
    ld hl, sp-$7b
    sbc h
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ldh [$92], a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    add b
    sub c
    adc d
    add h
    sub e
    ld d, c
    ld sp, hl
    add l
    sbc h
    ld a, a
    sub e
    adc h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld d, c
    ld a, [$9c85]
    ld a, a
    sub [hl]
    adc b
    sub d
    add h
    adc h
    add b
    adc l
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    sub d
    ld d, c
    ei
    add l
    sbc h
    ld a, a
    add e
    sub c
    sub h
    add [hl]
    ld a, a
    sub d
    sub e
    adc [hl]
    sub c
    add h
    ld d, c
    db $fc
    add l
    sbc h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    add l
    sub e
    adc [hl]
    adc a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub d
    sub b
    sub h
    add b
    sub c
    add h
    ld d, a
    nop
    nop
    inc b
    rlca
    rlca
    ld bc, $0415
    rlca
    ld [$1501], sp
    inc b
    nop
    rrca
    ld [bc], a
    dec d
    ld b, $00
    ld [bc], a
    ld bc, $0b15
    nop
    ld [bc], a
    nop
    ld c, $00
    jp hl


    ld c, c
    nop
    inc bc
    nop
    db $ec
    ld c, c
    inc bc
    ld b, d
    dec b
    ld c, $06
    nop
    rst $38
    rst $38
    add b
    nop
    ldh [rOBP1], a
    rst $38
    rst $38
    ld b, b
    ld [$020f], sp
    ld de, $ffff
    nop
    nop
    db $e3
    ld c, c
    rst $38
    rst $38
    add hl, hl
    rlca
    add hl, bc
    dec b
    ld bc, $ffff
    and b
    nop
    and $49
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    sub h
    nop
    rla
    nop
    ld c, c
    sub c
    ld l, e
    ld b, a
    sub h
    nop
    jr jr_01c_4bbb

jr_01c_4bbb:
    ld c, c
    sub c
    ld d, c
    ret


    ld c, e
    ld d, c
    ld a, $4c
    ld d, e
    sbc h
    ld c, h
    inc c
    inc d
    nop
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    ld c, a
    and c
    and h
    and d
    and b
    xor h
    and h
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
    add sp, $51
    adc h
    cp b
    ld a, a
    or d
    xor [hl]
    xor l
    ld a, a
    and h
    xor l
    and d
    xor [hl]
    or h
    or c
    and b
    and [hl]
    and h
    and e
    ld c, a
    xor h
    and h

Call_01c_4c00:
Jump_01c_4c00:
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor b
    or e
    add sp, $51
    adc b
    jp nc, $a87f

    xor h
    xor a
    or c
    and h
    or d
    or d
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
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
    ld d, l
    and d
    xor [hl]
    xor l
    or l
    and h
    xor l
    xor b
    and h
    xor l
    or e
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and e
    and b
    and e
    call nc, $a77f
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld d, c
    or e
    and a
    and h
    ld a, a
    xor l
    and b
    xor h
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld d, c
    or d
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    and e
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
    xor [hl]
    xor a
    ld a, a
    add [hl]
    or c
    and b
    and e
    and h
    ld a, a
    adc b
    or e
    and h
    xor h
    or d
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, c
    ld hl, sp-$7b
    sbc h
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ldh [$92], a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    add b
    sub c
    adc d
    add h
    sub e
    ld d, a
    nop
    nop
    inc bc
    nop
    inc c
    ld bc, $0715
    nop
    rrca
    inc bc
    dec d
    dec b
    nop
    ld [bc], a
    ld bc, $0b15
    nop
    ld [bc], a
    nop
    ld c, $00
    jp $004b


    inc bc
    nop
    add $4b
    inc b
    add hl, sp
    add hl, bc
    ld de, $0007
    rst $38
    rst $38
    sub b
    nop
    xor l
    ld c, e
    rst $38
    rst $38
    add hl, sp
    add hl, bc
    ld [de], a
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    or l
    ld c, e
    rst $38
    rst $38
    dec l
    ld b, $09
    rlca
    nop
    rst $38
    rst $38
    add b
    nop
    cp l
    ld c, e
    rst $38
    rst $38
    daa
    ld b, $0a
    ld [$ff00], sp
    rst $38
    and b
    nop
    ret nz

    ld c, e
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    sub h
    nop
    add hl, de
    nop
    ld c, c
    sub c
    ld d, c
    ld d, e
    ld c, l
    ld l, e
    ld b, a
    ld c, h
    add [hl]
    ld c, l
    ld d, h
    ld c, c
    db $76
    inc b
    nop
    sub c
    ld l, e
    ld b, a
    ld c, h
    rst $00
    ld c, l
    ld d, h
    ld c, c
    db $76
    dec b
    nop
    sub c
    ld d, c
    ld h, c
    ld c, [hl]
    inc c
    inc d
    nop
    ld d, e
    add l
    ld c, [hl]
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and e
    and h
    and d
    xor b
    and e
    and h
    ld c, a
    or [hl]
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
    adc b
    ld d, c
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    sub e
    adc h
    ld c, a
    xor [hl]
    xor l
    ld [hl], l
    ld d, a
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    or e
    or c
    and b
    and e
    and h
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
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld d, c
    or c
    and h
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub h
    adc a
    db $e3
    ld c, a
    add [hl]
    sub c
    add b
    add e
    add h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sbc b
    and h
    and b
    and a
    rst $20
    ld a, a
    adc b
    jp nc, $a57f

    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld c, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc b
    jp nc, $ad7f

    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    xor e
    xor [hl]
    or e
    or d
    db $f4
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
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld [hl], l
    ld d, c
    ld [hl], l
    add a
    or h
    and a
    and $51
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    ld c, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and e
    xor b
    and l
    db $e3
    ld d, l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    sub e
    adc h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld a, a
    or d
    and h
    xor e
    xor e
    or d
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or c
    and b
    or c
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
    ld sp, hl
    add l
    sbc h
    ld a, a
    sub e
    adc h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld d, c
    adc h
    and b
    xor d
    and h
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
    sub d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    nop
    inc bc
    nop
    inc c
    ld bc, $0615
    nop
    rrca
    ld [bc], a
    dec d
    ld [$0200], sp
    ld bc, $0b15
    nop
    ld [bc], a
    nop
    ld c, $00
    ld d, b
    ld c, l
    nop
    inc bc
    nop
    ld c, l
    ld c, l
    dec b
    add hl, sp
    dec b
    dec bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    add hl, hl
    ld c, l
    rst $38
    rst $38
    daa
    ld [$040a], sp
    db $10
    rst $38
    rst $38
    and b
    nop
    ld sp, $ff4d
    rst $38
    inc bc
    dec b
    dec c
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    inc [hl]
    ld c, l
    rst $38
    rst $38
    inc bc
    dec b
    ld c, $06
    nop
    rst $38
    rst $38
    sub b
    nop
    ccf
    ld c, l
    rst $38
    rst $38
    dec hl
    ld [$0211], sp
    ld de, $ffff
    add b
    nop
    ld c, d
    ld c, l
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    sub h
    nop
    ld a, [de]
    nop
    ld c, c
    sub c
    ld d, c
    ld hl, $514f
    ld d, l
    ld c, a
    ld d, e
    adc h
    ld c, a
    inc c
    inc d
    nop
    nop
    adc b
    jp nc, $a77f

    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or h
    cp b
    ld c, a
    sub d
    sub h
    sub c
    add l
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    xor l
    and e
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    and l
    or c
    xor b
    and h
    xor l
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
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and d
    and b
    xor l
    ld a, a
    and c
    or h
    cp b
    ld a, a
    adc e
    adc [hl]
    sub l
    add h
    adc e
    sbc b
    ld c, a
    adc h
    add b
    adc b
    adc e
    add sp, $57
    nop
    add h
    or a
    xor a
    or c
    and h
    or d
    or d
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
    ld c, a
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    add [hl]
    xor b
    and l
    or e
    or d
    rst $20
    ld d, c
    ld a, [$9c85]
    ld a, a
    sub [hl]
    adc b
    sub d
    add h
    adc h
    add b
    adc l
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    sub d
    ld d, a
    nop
    nop
    inc bc
    nop
    inc c
    ld bc, $0915
    nop
    rrca
    ld [bc], a
    dec d
    rlca
    nop
    ld [bc], a
    ld bc, $0b15
    nop
    ld [bc], a
    nop
    ld c, $00
    dec de
    ld c, a
    nop
    inc bc
    nop
    ld e, $4f
    inc bc
    add hl, sp
    add hl, bc
    ld de, $0007
    rst $38
    rst $38
    sub b
    nop
    dec c
    ld c, a
    rst $38
    rst $38
    dec hl
    ld a, [bc]
    dec bc
    dec b
    ld bc, $ffff
    and b
    nop
    dec d
    ld c, a
    rst $38
    rst $38
    daa
    ld b, $0c
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    jr jr_01c_504f

    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    sub h
    nop
    dec de
    nop
    ld c, c
    sub c
    ld l, e
    ld b, a
    sub h
    nop
    inc e
    nop
    ld c, c
    sub c
    ld d, c
    inc hl
    ld d, b
    ld d, c
    ld [hl], d
    ld d, b
    ld d, c
    or [hl]
    ld d, b
    ld d, e
    nop
    ld d, c
    inc c
    inc d
    nop
    nop
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
    and c
    or h
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e

jr_01c_504f:
    and b
    or e
    or d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
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
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    adc a
    adc a
    ld a, a
    sub h
    adc a
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor l
    ld a, a
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
    adc a
    adc a
    ld d, c
    xor [hl]
    and l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $7f
    add c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    or h
    cp b
    ld a, a
    xor b
    or e
    ld [hl], l
    ld d, a
    nop
    sub h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    db $f4
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld [hl], l
    ld d, a
    nop
    ei
    add l
    sbc h
    ld a, a
    add e
    sub c
    sub h
    add [hl]
    ld a, a
    sub d
    sub e
    adc [hl]
    sub c
    add h
    ld d, a
    nop
    nop
    inc bc
    nop
    inc c
    ld bc, $0815
    nop
    rrca
    ld bc, $0a15
    nop
    ld [bc], a
    ld bc, $0b15
    nop
    ld [bc], a
    nop
    ld c, $00
    dec e
    ld d, b
    nop
    inc bc
    nop
    jr nz, jr_01c_517e

    dec b
    add hl, sp
    add hl, bc
    dec bc
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    inc b
    ld d, b
    rst $38
    rst $38
    add hl, sp
    add hl, bc
    inc c
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    inc c
    ld d, b
    rst $38
    rst $38
    ld b, b
    add hl, bc
    ld de, $1102
    rst $38
    rst $38
    add b
    nop
    inc d
    ld d, b
    rst $38
    rst $38
    ld c, c
    ld [$0207], sp
    ld de, $ffff
    sub b
    nop
    rla
    ld d, b
    rst $38
    rst $38
    add hl, hl
    dec bc
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld a, [de]
    ld d, b
    rst $38
    rst $38
    nop
    ld bc, $7501
    ld d, c
    ld a, d
    inc c
    nop
    inc bc
    sub b
    ld d, c
    rst $00
    ld d, d
    ld d, c

jr_01c_517e:
    db $10
    ld d, e
    ld b, a
    ld c, h
    ld d, b
    ld d, d
    rrca
    ld d, c
    nop
    ld c, a
    inc bc
    ld d, d
    ld e, c
    ld d, b
    ld b, $01
    sbc d
    ld d, c
    ld b, $02
    or h
    ld d, c
    ld b, $03
    adc $51
    ld c, c
    sub c
    inc h
    nop
    nop
    nop
    ret z

    ld b, $02
    push af
    ld d, c
    rra
    ld l, $01
    ld [$51fc], sp
    inc hl
    nop
    nop
    nop
    ret z

    ld b, c
    ld l, $00
    inc bc
    add sp, $51
    inc h
    nop
    nop
    ld bc, $062c
    ld [bc], a
    push af
    ld d, c
    rra
    cpl
    ld bc, $fc08
    ld d, c
    inc hl
    nop
    nop
    ld bc, $412c
    cpl
    nop
    inc bc
    add sp, $51
    inc h
    nop
    nop
    ld bc, $065e
    ld [bc], a
    push af
    ld d, c
    rra
    jr nc, @+$03

    ld [$51fc], sp
    inc hl
    nop
    nop
    ld bc, $415e
    jr nc, jr_01c_51e5

jr_01c_51e5:
    inc bc
    add sp, $51
    adc e
    ld a, [bc]
    add l
    rra
    nop
    ld c, h
    ld [hl], h
    ld d, d
    ld d, l
    ld b, l
    inc bc
    add h
    ld d, c
    ld c, h
    adc [hl]
    ld d, d
    ld d, h
    inc bc
    add h
    ld d, c
    ld c, h
    and a
    ld d, d
    ld d, h
    inc bc
    add h
    ld d, c
    ld b, b
    ld [bc], a
    nop
    dec bc
    inc de
    dec bc
    ld d, d
    ld bc, $0480
    add l
    sub c
    add h
    sub d
    add a
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    ld a, a
    ldh a, [$f8]
    or $f6
    ld d, b
    sub d
    adc [hl]
    add e
    add b
    ld a, a
    adc a
    adc [hl]
    adc a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh a, [$f9]
    or $f6
    ld d, b
    adc e
    add h
    adc h
    adc [hl]
    adc l
    add b
    add e
    add h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh a, [$f9]
    ei
    or $50
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld d, e
    ld a, $53
    inc c
    inc d
    nop
    nop
    add b
    ld a, a
    or l
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    rst $20
    ld c, a
    add a
    and h
    or c
    and h
    call nc, $b37f
    and a
    and h
    ld a, a
    xor h
    and h
    xor l
    or h
    add sp, $57
    nop
    add d
    xor e
    and b
    xor l
    and [hl]
    rst $20
    ld d, c
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    xor a
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $57
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or e
    or h
    and l
    and l
    ld [hl], l
    ld d, a
    nop
    add b
    ld a, a
    or l
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    or c
    xor [hl]
    or h
    db $e3
    ld d, l
    xor e
    and h
    or e
    or e
    and h
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
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
    ld c, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and b
    xor l
    cp b
    xor h
    xor [hl]
    or c
    and h
    add sp, $57
    nop
    add b
    or [hl]
    or [hl]
    rst $20
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld c, a
    and [hl]
    and b
    xor h
    and h
    or d
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
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
    xor a
    xor e
    and b
    cp b
    ld [hl], l
    ld d, a
    nop
    db $fc
    add l
    sbc h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    add l
    sub e
    adc [hl]
    adc a
    ld a, a
    sub d
    sub b
    sub h
    add b
    sub c
    add h
    ld c, a
    sub l
    add h
    adc l
    add e
    adc b
    adc l

Jump_01c_5358:
    add [hl]
    ld a, a
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    sub d
    ld d, a
    nop
    nop
    ld [bc], a
    nop
    rrca
    ld [bc], a
    dec d
    add hl, bc
    nop
    ld [bc], a
    ld bc, $0b15
    nop
    ld b, $00
    ld c, $00
    ld c, d
    ld d, d
    nop
    inc bc
    nop
    db $ec
    ld c, c
    ld bc, $0108
    add b
    ld d, c
    ld bc, $0109
    add b
    ld d, c
    ld bc, $010a
    add b
    ld d, c
    ld bc, $010b
    add b
    ld d, c
    ld [bc], a
    dec hl
    ld b, $0d
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, d
    ld d, c
    rst $38
    rst $38
    daa
    add hl, bc
    db $10
    ld [bc], a
    ld [de], a
    rst $38
    rst $38
    add b
    nop
    ld a, l
    ld d, c
    rst $38
    rst $38
    nop
    nop
    ld b, a
    sub l
    cp [hl]
    ld d, e
    ld c, c
    ld [$53bd], sp
    adc e
    dec b
    add l
    ld l, [hl]
    nop
    ld a, b
    inc a
    add [hl]
    sub c
    ld b, $04
    inc b
    dec d
    dec b
    dec b
    inc bc
    dec d
    ld b, $06
    inc bc
    dec d
    rlca
    rlca
    inc bc
    dec d
    ld [$0308], sp
    dec d
    add hl, bc
    add hl, bc
    ld [bc], a
    dec d
    ld a, [bc]
    rst $38
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $15ff
    dec b
    inc bc
    ld [bc], a
    rst $38
    dec d
    dec b
    nop
    ld bc, $0300
    nop
    xor l
    ld d, e
    nop
    nop
    nop
    ld d, c
    ld d, $54
    ld b, a
    ld c, h
    ld [hl], b
    ld d, h
    add h
    inc [hl]
    nop
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld a, a
    ld d, h
    add h
    inc hl
    nop
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    sub [hl]
    ld d, h
    add h
    dec e
    nop
    ld d, h
    ld c, c
    sub c
    ld d, e
    xor e
    ld d, h
    inc c
    ld [bc], a
    nop
    nop
    adc h
    cp b
    ld a, a
    and e
    and h
    and b
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    xor l
    cp b
    db $f4
    ld d, c
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and h
    or l
    and h
    or c
    ld c, a
    and l
    and h
    and h
    xor e
    ld a, a
    xor e
    xor [hl]
    xor l
    and h
    xor e
    cp b
    add sp, $51
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    add sp, $57
    nop
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    sbc h
    ld a, a
    adc h
    and h
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    sbc h
    ld a, a
    add d
    xor e
    and h
    and l
    ld c, a
    and d
    xor e
    and h
    and l
    and l
    rst $20
    ld d, a
    nop
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    sbc h
    ld a, a
    adc d
    cp b
    and b
    ld c, a
    xor d
    cp b
    and b
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    adc l
    sub d
    adc b
    adc [hl]
    adc l
    ld c, a
    adc h
    add b
    adc l
    add b
    add [hl]
    add h
    sub c
    ldh [$92], a
    ld a, a
    sub d
    sub h
    adc b
    sub e
    add h
    ld d, a
    nop
    nop
    dec b
    add hl, bc
    ld b, $02
    dec d
    inc b
    add hl, bc
    rlca
    ld [bc], a
    dec d
    inc b
    nop
    inc bc
    inc bc
    dec d
    inc b
    nop
    nop
    ld bc, $0d15
    nop
    rlca
    inc b
    dec d
    dec c
    nop
    inc bc
    ld [$0105], sp
    db $10
    ld d, h
    inc bc
    nop
    nop
    inc de
    ld d, h
    inc bc
    ld [bc], a
    nop
    inc de
    ld d, h
    inc b
    jr nc, jr_01c_5505

    dec b
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld d, e

jr_01c_5505:
    rst $38
    rst $38
    add d
    ld a, [bc]
    ld b, $16
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [c]
    ld d, e
    rst $38
    rst $38
    adc a
    ld [$1607], sp
    nop
    rst $38
    rst $38
    nop
    nop
    db $fc
    ld d, e
    rst $38
    rst $38
    add d
    ld [$1608], sp
    ld [bc], a
    rst $38
    rst $38
    sub b
    nop
    ld b, $54
    rst $38
    rst $38
    nop
    nop
    ld d, e
    add hl, sp
    ld d, l
    ld d, e
    inc l
    ld d, [hl]
    inc c
    ld bc, $0000
    ld d, d
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc a
    add d
    add sp, $51
    ld [hl], l
    ld d, c
    sub d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h

Call_01c_5562:
    ld c, a
    xor h
    xor b
    and e
    and e
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor [hl]
    or d
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    ld a, a
    and h
    db $e3
    xor h
    and b
    xor b
    xor e
    add sp, $51
    ld [hl], l
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
    pop de
    xor e
    ld c, a
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
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
    and h
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
    ld a, a
    and b
    or e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld d, c
    xor h
    or h
    and d
    and a
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    xor h
    and b
    xor l
    cp b
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
    ld d, c
    and b
    or c
    and h
    xor l
    push de
    ld a, a
    xor l
    and b
    or e
    xor b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    add sp, $51
    sub e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    add h
    sub c
    ld d, c
    ld [hl], l
    ld d, a
    nop
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add l
    sub c
    add h
    add b
    adc d
    ld c, a
    adc h
    add h
    add h
    sub e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld d, a
    nop
    nop
    inc b
    nop
    nop
    inc b
    dec d
    inc c
    nop
    ld bc, $1502
    ld c, $00
    ld b, $03
    dec d
    ld c, $00
    rlca
    dec b
    dec d
    inc c
    nop
    inc bc
    inc bc
    nop
    nop
    jr nc, jr_01c_56b8

    ld [$0105], sp
    inc sp
    ld d, l
    inc bc
    ld [bc], a
    nop
    ld [hl], $55
    nop
    nop
    nop
    ld l, e
    ld b, a
    ld c, h
    adc $56
    inc e
    dec b
    ld a, [bc]
    ld hl, sp+$7e
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld d, l
    ld c, h
    dec h
    ld d, a
    add l
    and e
    nop
    add [hl]
    ld c, h
    ld h, b
    ld d, a
    ld d, l
    rrca
    ld l, e
    nop
    ld c, h
    ld h, e
    ld d, a
    ld d, h
    ld c, c
    inc sp
    sub $00
    sub c
    ld l, e
    ld b, a
    ld sp, $00d6
    add hl, bc
    and h
    ld d, [hl]
    ld c, h
    or h
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ret c

    ld d, a
    ld c, [hl]
    ld [$56b0], sp
    rrca
    ld l, h
    nop
    ld c, c
    sub c
    ld c, h
    jr nc, jr_01c_570b

    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, e

jr_01c_56b8:
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld d, c
    sub l
    ld e, b
    ld d, c
    jp z, Jump_01c_5358

    dec bc
    ld e, c
    ld d, e
    jr z, jr_01c_5721

    ld d, e
    ld d, d
    ld e, c
    ld d, e
    sub [hl]
    ld e, c
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld c, a
    add e
    add h
    sub d
    adc b
    add [hl]
    adc l
    add h
    sub c
    rst $20
    ld d, c
    add l
    xor b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
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
    ld a, a
    xor b
    or d

jr_01c_570b:
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a

jr_01c_5721:
    or h
    xor a
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add h
    or a
    and d
    and h
    xor e
    xor e
    and h
    xor l
    or e
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    ld d, h
    add e
    add h
    sub a
    rst $20
    ld d, c
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
    ld d, a
    nop
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add [hl]
    sub c
    add b
    adc a
    add a
    adc b
    add d
    ld a, a
    add b
    sub c
    sub e
    adc b
    sub d
    sub e
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor a
    or c
    xor b
    xor l
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld d, l
    add e
    adc b
    adc a
    adc e
    adc [hl]
    adc h
    add b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
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
    and [hl]
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor b
    or e
    ld a, a
    xor [hl]
    and l
    and l
    add sp, $57
    nop
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    add [hl]
    sub c
    add b
    adc a
    add a
    adc b
    add d
    ld c, a
    add b
    sub c
    sub e
    adc b
    sub d
    sub e
    add sp, $51
    adc b
    ld a, a
    and e
    or c
    and h
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    add [hl]
    sub c
    add b
    adc a
    add a
    adc b
    add d
    ld c, a
    add b
    sub c
    sub e
    adc b
    sub d
    sub e
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add e
    add h
    sub a
    and $51
    sub [hl]
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
    xor a
    or c
    xor b
    xor l
    or e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add e
    adc b
    adc a
    adc e
    adc [hl]
    adc h
    add b
    and $57
    nop
    add [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    and l
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
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    add e
    adc b
    adc a
    adc e
    adc [hl]
    adc h
    add b
    ld a, a
    xor a
    or c
    xor b
    xor l
    or e
    and h
    and e
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
    add sp, $4f
    adc b
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
    and d
    and b
    xor l
    db $e3
    ld d, l
    and d
    and h
    xor e
    ld a, a
    xor a
    or c
    xor b
    xor l
    or e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    db $f4
    ld a, a
    xor h
    and h
    and $7f
    adc b
    jp nc, $b37f

    and a
    and h
    ld c, a
    adc a
    sub c
    adc [hl]
    add [hl]
    sub c
    add b
    adc h
    adc h
    add h
    sub c
    add sp, $51
    adc a
    xor e
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    ld c, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    or d
    rst $20
    ld d, a
    nop
    add b
    or c
    and h
    xor l
    push de
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    sub [hl]
    adc b
    adc l
    sub d
    ld c, a
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    and $51
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    call nc, $af7f
    or c
    and h
    or e
    or e
    cp b
    ld c, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    rst $20
    ld d, a
    nop
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add l
    sub c
    add h
    add b
    adc d
    ld c, a
    add e
    add h
    sub l
    add h
    adc e
    adc [hl]
    adc a
    adc h
    add h
    adc l
    sub e
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    and e
    and h
    or e
    and b
    xor b
    xor e
    and h
    and e
    ld c, a
    and e
    or c
    and b
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld d, l
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    add sp, $57
    nop
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
    ld c, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    add sp, $7f
    adc h
    and h
    or d
    or d
    xor b
    xor l
    and [hl]
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor a
    or h
    or e
    ld c, a
    and b
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a27f
    or c
    and b
    xor h
    xor h
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    or c
    and h
    and l
    and h
    or c
    and h
    xor l
    and d
    and h
    ld a, a
    xor h
    and b
    or e
    and h
    or c
    xor b
    db $e3
    ld d, l
    and b
    xor e
    or d
    add sp, $7f
    sub e
    and a
    and h
    or c
    and h
    call nc, $a47f
    or l
    and h
    xor l
    ld d, l
    and b
    ld a, a
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    add sp, $57
    nop
    nop
    inc b
    nop
    nop
    ld bc, $0f15
    nop
    ld bc, $1502
    dec c
    nop
    ld b, $03
    dec d
    dec c
    nop
    rlca
    ld [bc], a
    dec d
    rrca
    nop
    inc b
    ld [$0105], sp
    jp nz, $0356

    inc b
    ld bc, $56c5
    ld b, $01
    ld bc, $56c8
    inc bc
    ld bc, $cb01
    ld d, [hl]
    inc b
    inc hl
    ld a, [bc]
    rlca
    inc bc
    nop
    rst $38
    rst $38
    add b
    nop
    ld [hl], b
    ld d, [hl]
    rst $38
    rst $38
    ld c, b
    ld [$0707], sp
    nop
    rst $38
    rst $38
    sub b
    nop
    sub [hl]
    ld d, [hl]
    rst $38
    rst $38
    dec hl
    dec bc
    inc b
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    cp h
    ld d, [hl]
    rst $38
    rst $38
    ld a, [hl-]
    ld [$0704], sp
    ld [bc], a
    rst $38
    rst $38
    add b
    nop
    cp a
    ld d, [hl]
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ccf
    ld e, d
    ld d, e
    and c
    ld e, d
    nop
    add a
    xor b
    and [hl]
    and a
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    db $e3
    db $e3
    adc b
    ld a, a
    and e
    xor [hl]
    ld c, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or d
    xor [hl]
    rst $20
    ld d, c
    adc b
    ret nc

    ld a, a
    or d
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld d, c
    and a
    and h
    xor b
    and [hl]
    and a
    or e
    or d
    ld a, a
    and b
    or d
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and b
    or d
    ld c, a
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor h
    xor [hl]
    xor d
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a67f
    or c
    and b
    and l
    and l
    xor b
    or e
    xor b
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
    ld [hl], l
    ld d, c
    ld d, d
    ld a, a
    and b
    and e
    and e
    and h
    and e
    ld a, a
    and b
    ld c, a
    xor h
    xor [hl]
    or h
    or d
    or e
    and b
    and d
    and a
    and h
    rst $20
    ld d, a
    nop
    nop
    inc bc
    ld bc, $0101
    dec d
    ld c, $01
    ld b, $04
    dec d
    ld c, $05
    ld [bc], a
    ld bc, $1715
    nop
    ld bc, $0601
    inc b
    inc a
    ld e, d
    ld bc, $093a
    dec bc
    inc b
    db $10
    rst $38
    rst $38
    sub b
    nop
    add hl, sp
    ld e, d
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $00da
    add hl, bc
    ld hl, $4c5b
    daa
    ld e, e
    ld d, l
    dec hl
    inc b
    add hl, bc
    inc d
    ld e, e
    ld c, h
    ld c, d
    ld e, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    and e
    ld e, e
    ld d, l
    sbc [hl]
    pop bc
    ld bc, $2508
    ld e, e
    inc sp
    jp c, Jump_01c_4c00

    or e
    ld e, l
    ld d, h
    ld c, c
    sub c
    nop
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or h
    xor l
    or e
    ld a, a
    and b
    ld c, a
    or e
    and h
    or c
    or c
    xor b
    and l
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and b
    xor e
    and h
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    xor l
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ad4f
    xor [hl]
    or e
    ld a, a
    and b
    or d
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld d, c
    xor b
    or e
    call nc, $b27f
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld c, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    add sp, $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld c, a
    or d
    or h
    xor l
    or d
    and h
    or e
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    or h
    xor a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld d, c
    and c
    xor [hl]
    cp b
    ld a, a
    or [hl]
    and a
    xor [hl]
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
    ld c, a
    and b
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    ld [hl], l
    ld d, c
    add a
    and h
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
    or e
    or c
    cp b
    ld c, a
    xor b
    or e
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
    ld [hl], l
    ld d, c
    add a
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    and l
    or h
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and a
    and h
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
    or e
    and a
    and h
    ld c, a
    or d
    or h
    xor l
    ld a, a
    and a
    and b
    and e
    ld a, a
    or d
    and h
    or e
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor b
    or e
    and d
    and a
    db $e3
    and c
    xor e
    and b
    and d
    xor d
    ld d, c
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    xor b
    xor d
    and h
    ld c, a
    or d
    or h
    and e
    and e
    and h
    xor l
    xor e
    cp b
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    xor a
    and h
    and e
    and b
    xor e
    or d
    ld a, a
    and c
    and h
    and d
    and b
    xor h
    and h
    ld c, a
    and a
    and h
    and b
    or l
    cp b
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and a
    and h
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld c, a
    xor a
    and h
    and e
    and b
    xor e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    xor b
    xor d
    and h
    ld d, c
    and c
    and h
    and [hl]
    and b
    xor l
    ld a, a
    or d
    xor e
    xor b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    and c
    and b
    and d
    xor d
    or [hl]
    and b
    or c
    and e
    or d
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    or d
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and c
    xor b
    xor d
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and d
    or h
    or c
    or d
    and h
    and e
    ld d, c
    and b
    xor l
    and e
    ld a, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    or c
    and b
    and [hl]
    ld c, a
    and a
    xor b
    xor h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor [hl]
    and c
    xor e
    xor b
    or l
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, c
    ld [hl], l
    ld d, c
    ld [hl], l
    ld d, c
    sub d
    add a
    sub c
    adc b
    add h
    add h
    add h
    add h
    adc d
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    cp b
    ld a, a
    and a
    and b
    and e
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    and a
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
    ld d, l
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    rst $20
    ld d, c
    ld [hl], l
    ld c, a
    add c
    and b
    db $e3
    and e
    or h
    xor h
    ld a, a
    and c
    and b
    db $e3
    and e
    or h
    xor h
    rst $20
    ld d, c
    add l
    xor [hl]
    or c
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    ld c, a
    xor a
    and b
    or e
    xor b
    and h
    xor l
    or e
    xor e
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
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
    db $e3
    db $e3
    sub e
    adc h
    or $f9
    rst $20
    ld d, a
    nop
    sub e
    adc h
    or $f9
    ld a, a
    xor b
    or d
    ld a, a
    add d
    sub h
    sub c
    sub d
    add h
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    or e
    and h
    or c
    or c
    xor b
    and l
    cp b
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    xor e
    cp b
    ld d, c
    or [hl]
    and a
    xor b
    or e
    or e
    xor e
    and h
    or d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or l
    xor b
    and d
    or e
    xor b
    xor h
    call nc, $877f
    adc a
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    dec d
    rrca
    rlca
    inc bc
    inc bc
    dec d
    rrca
    nop
    nop
    ld bc, $064b
    rlca
    ld b, $20
    rst $38
    rst $38
    and b
    nop
    db $fd
    ld e, d
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    inc c
    inc sp
    nop
    ld d, c
    ld [hl], b
    ld e, [hl]
    ld d, c
    pop bc
    ld e, [hl]
    ld l, e
    ld b, a
    ld c, h
    ld [hl+], a
    ld e, a
    ld d, l
    dec d
    push af
    rrca
    sub a
    nop
    ld [$5e46], sp
    rrca
    sub [hl]
    nop
    add hl, bc
    ld c, b
    ld e, [hl]
    ld c, h
    ld a, [de]
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, l
    ld e, a
    ld d, h
    ld c, c
    inc e
    add hl, bc
    ld b, $01
    ld e, d
    ld e, [hl]
    ld l, c
    ld b, $6b
    ld e, [hl]
    inc bc
    ld e, [hl]
    ld e, [hl]
    ld l, c
    ld b, $65
    ld e, [hl]
    ld l, [hl]
    ld b, $85
    inc hl
    nop
    add [hl]
    sub c
    ld c, $0c
    inc c
    inc c
    inc c
    ld b, a
    inc c
    inc c
    inc c
    inc c
    ld b, a
    nop
    add h
    sub c
    adc b
    adc d
    add b
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
    ld c, a
    xor [hl]
    and l
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub d
    and a
    and h
    pop de
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor a
    and b
    cp b
    ld a, a
    xor b
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
    ld d, l
    or [hl]
    and b
    or e
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
    add sp, $57
    nop
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
    call nc, $a74f
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or d
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
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    or [hl]
    and b
    xor b
    or e
    add sp, $7f
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
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
    add sp, $57
    nop
    add h
    sub h
    sub d
    adc b
    adc l
    add h
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld d, c
    adc b
    jp nc, $a17f

    and b
    and d
    xor d
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    cp b
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    or e
    xor [hl]
    or [hl]
    xor l
    add sp, $51
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
    ld a, a
    and b
    ld c, a
    or [hl]
    and a
    xor b
    xor e
    and h
    add sp, $57
    nop
    ld d, d
    db $f4
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and h
    and b
    or c
    and e
    and $51
    sub e
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
    and c
    and h
    and h
    xor l
    ld c, a
    and l
    or c
    and h
    or d
    and a
    ld a, a
    or c
    or h
    xor h
    xor [hl]
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
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
    xor b
    xor l
    and [hl]
    ld d, l
    and b
    or e
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
    sub $a4
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    xor a
    and b
    or c
    or e
    cp b
    ld a, a
    and a
    and h
    and b
    xor e
    and h
    and e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, c
    xor l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    jp nc, $a77f

    and h
    and b
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    db $f4
    ld c, a
    ld d, d
    add sp, $51
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    and b
    or c
    cp b
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub c
    add b
    adc b
    adc d
    adc [hl]
    sub h
    ld a, a
    and b
    xor l
    and e
    ld c, a
    add h
    adc l
    sub e
    add h
    adc b
    and $51
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, c
    adc [hl]
    xor d
    and b
    cp b
    ld [hl], l
    ld d, c
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, a
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    xor b
    xor l
    and l
    xor [hl]
    or c
    xor h
    ld a, a
    xor h
    and h
    add sp, $51
    adc b
    jp nc, $a27f

    xor [hl]
    or h
    xor l
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, a
    nop
    nop
    inc bc
    rlca
    inc bc
    dec b
    dec d
    inc b
    rlca
    inc b
    dec b
    dec d
    inc b
    rlca
    nop
    ld bc, $0114
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
    ld [hl+], a
    ld e, [hl]
    rst $38
    rst $38
    ld b, b
    add hl, bc
    dec b
    dec b
    ld bc, $ffff
    nop
    nop
    dec h
    ld e, [hl]
    rst $38
    rst $38
    ld c, e
    rlca
    inc b
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    dec hl
    ld e, [hl]
    rst $38
    rst $38
    inc h
    ld a, [bc]
    inc c
    dec b
    ld bc, $ffff
    and b
    nop
    jr z, jr_01c_615d

    rst $38
    rst $38
    dec hl
    rlca
    ld [$0006], sp
    rst $38
    rst $38
    sub b
    nop
    ld l, $5e
    or a
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0007
    inc bc
    dec d
    ld de, $0000
    nop
    nop
    nop
    inc c
    ld [hl-], a
    nop
    ld d, c
    ret nc

    ld h, c
    ld l, e
    ld b, a
    ld c, h
    dec d
    ld h, d
    ld d, h
    ld c, c
    db $76
    inc b
    ld [bc], a
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld b, d
    ld h, d
    ld d, h
    ld c, c
    db $76
    dec b
    inc bc
    sub c
    ld l, e
    ld b, a
    ld c, h
    sub l
    ld h, d
    ld d, h
    ld c, c
    db $76
    ld b, $03
    sub c
    ld l, e
    ld b, a
    ld sp, $00ce
    add hl, bc
    ld l, c
    ld h, c
    ld c, h
    call c, Call_01c_5562
    ld hl, $0836
    ld a, e
    ld h, c
    daa
    ld c, $27
    ld b, $00
    add h
    ld h, c
    ld b, h

jr_01c_615d:
    db $76
    ld h, c
    ld bc, $7200
    ld h, c
    dec h
    ld [de], a
    nop
    inc sp
    adc $00
    ld c, h
    ld b, l
    ld h, e
    ld d, h
    ld c, c
    db $76
    cp $02
    sub c
    inc c
    cpl
    nop
    sub c
    add d
    adc [hl]
    adc b
    adc l
    ld d, b
    ld c, h
    adc d
    ld h, e
    ld d, h
    ld c, c
    db $76
    cp $02
    sub c
    ld c, h
    reti


    ld h, e
    ld d, h
    ld c, c
    db $76
    cp $02
    sub c
    ld d, c
    dec h
    ld h, h
    ld l, e
    ld b, a
    ld c, h
    xor l
    ld h, h
    ld d, h
    ld c, c
    db $76
    ld a, [bc]
    ld [bc], a
    sub c
    ld d, e
    di
    ld h, h
    ld d, e
    ld hl, $1765
    ld b, $06
    nop
    or b
    ld h, c
    ld c, b
    nop
    dec d
    nop
    rrca
    ld a, [hl+]
    nop
    ld c, c
    sub c
    ld c, b
    nop
    dec d
    ld bc, $2a0f
    nop
    ld c, c
    sub c
    ld c, b
    nop
    rrca
    dec hl
    nop
    ld c, c
    sub c
    ld d, e
    ld c, a
    ld h, l
    ld b, a
    ld c, h
    ld h, a
    ld h, l
    ld d, h
    rrca
    dec hl
    nop
    ld c, c
    sub c
    rrca
    ld [bc], a
    ld b, a
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and h
    or a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    and l
    and b
    and c
    or h
    xor e
    xor [hl]
    or h
    or d
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    or d
    ld c, a
    xor l
    and h
    or a
    or e
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or d
    or e
    and b
    or e
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and b
    or c
    or e
    add sp, $57
    nop
    adc b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld c, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    add sp, $51
    adc b
    or e
    ld a, a
    and d
    xor e
    and h
    and b
    xor l
    and h
    and e
    ld a, a
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    cp b
    and h
    or d
    or e
    and h
    or c
    and e
    and b
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld d, c
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor a
    and b
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    or e
    xor [hl]
    and e
    and b
    cp b
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
    xor b
    or d
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    ld c, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor a
    and b
    cp b
    ld d, l
    xor [hl]
    or h
    or e
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    and e
    and e
    or d
    ld a, a
    or l
    and b
    or c
    cp b
    ld c, a
    and b
    xor h
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    or d
    add sp, $57
    nop
    add [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, c
    add a
    xor h
    and $7f
    sub [hl]
    and a
    and b
    or e
    db $f4
    ld a, a
    xor d
    xor b
    and e
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
    or e
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
    and $51
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
    xor h
    cp b
    ld a, a
    xor e
    or h
    and d
    xor d
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, c
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
    and l
    and h
    and h
    xor e
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor l
    xor b
    and d
    and h
    ld d, c
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and l
    xor [hl]
    or c
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
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
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
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    add d
    adc [hl]
    adc b
    adc l
    ld a, a
    add d
    add b
    sub d
    add h
    add sp, $51
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor h
    ld a, a
    adc b
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
    xor l
    cp b
    ld d, l
    and d
    xor [hl]
    xor b
    xor l
    or d
    db $f4
    ld a, a
    xor d
    xor b
    and e
    and $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add d
    adc [hl]
    adc b
    adc l
    ld c, a
    add d
    add b
    sub d
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    db $f4
    ld a, a
    xor d
    xor b
    and e
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
    and c
    and h
    ld a, a
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    or c
    and h
    and b
    xor d
    ld d, l
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $51
    adc b
    jp nc, $b37f

    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
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
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld d, l
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
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
    cp b
    and h
    or e
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
    and h
    ld a, a
    xor [hl]
    and e
    and e
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    or d
    or h
    or c
    and h
    xor e
    cp b
    ld a, a
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
    ld d, c
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    call nc, $ab7f
    xor b
    xor l
    and h
    db $f4
    ld c, a
    and c
    or h
    or e
    ld [hl], l
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    and $57
    nop
    add a
    and h
    cp b
    rst $20
    ld d, c
    sub h
    xor l
    and e
    and h
    or c
    xor l
    and h
    and b
    or e
    and a
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    ld [hl], l
    ld d, c
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
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld d, c
    sub h
    xor l
    and e
    and h
    or c
    xor l
    and h
    and b
    or e
    and a
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    ld [hl], l
    ld d, c
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
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    and h
    or c
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or d
    xor [hl]
    and e
    and b
    ld [hl], l
    ld d, c
    sub d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
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
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld [hl], l
    ld d, c
    add a
    or h
    and a
    and $7f
    adc b
    or e
    call nc, $a47f
    xor h
    xor a
    or e
    cp b
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    dec c
    ld c, $06
    dec d
    inc b
    dec c
    rrca
    ld b, $15
    inc b
    nop
    ld h, $06
    ld bc, $b900
    ld h, c
    rlca
    ld bc, $b900
    ld h, c
    ld [$0001], sp
    cp c
    ld h, c
    add hl, bc
    ld bc, $b900
    ld h, c
    ld a, [bc]
    ld bc, $b900
    ld h, c
    dec bc
    ld bc, $b904
    ld h, c
    ld b, $06
    nop
    cp c
    ld h, c
    rlca
    ld b, $00
    cp c
    ld h, c
    ld [$0006], sp
    cp c
    ld h, c
    add hl, bc
    ld b, $00
    jp $0a61


    ld b, $00
    cp c
    ld h, c
    dec bc
    ld b, $03
    cp c
    ld h, c
    ld b, $07
    nop
    and c
    ld h, c
    rlca
    rlca
    nop
    and c
    ld h, c
    ld [$0007], sp
    and c
    ld h, c
    add hl, bc
    rlca
    nop
    and c
    ld h, c
    ld a, [bc]
    rlca
    nop
    or b
    ld h, c
    dec bc
    rlca
    inc b
    and c
    ld h, c
    ld b, $0c
    nop
    and c
    ld h, c
    rlca
    inc c
    nop
    and c
    ld h, c
    ld [$000c], sp
    and c
    ld h, c
    add hl, bc
    inc c
    nop
    and c
    ld h, c
    ld a, [bc]
    inc c
    nop
    and c
    ld h, c
    dec bc
    inc c
    inc bc
    and c
    ld h, c
    ld b, $0d
    nop
    and c
    ld h, c
    rlca
    dec c
    nop
    and c
    ld h, c
    ld [$000d], sp
    and c
    ld h, c
    add hl, bc
    dec c
    nop
    and c
    ld h, c
    ld a, [bc]

Jump_01c_6640:
    dec c
    nop
    and c
    ld h, c
    dec bc
    dec c
    inc b
    and c
    ld h, c
    ld b, $12
    nop
    and c
    ld h, c
    rlca
    ld [de], a
    nop
    and c
    ld h, c
    ld [$0012], sp
    ret nz

    ld h, c
    add hl, bc
    ld [de], a
    nop
    and c
    ld h, c
    ld a, [bc]
    ld [de], a
    nop
    and c
    ld h, c
    dec bc
    ld [de], a
    inc bc
    and c
    ld h, c
    nop
    rrca
    nop

Call_01c_666a:
    sbc e
    ld h, c
    nop
    add hl, bc
    nop
    sbc [hl]
    ld h, c
    add hl, bc
    add hl, sp
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    dec e
    ld h, c
    rst $38
    rst $38
    ld b, d
    ld b, $07
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    jr nz, jr_01c_66eb

    rst $38
    rst $38
    dec l
    ld c, $12
    ld [$ff00], sp
    rst $38
    add b
    nop
    inc hl
    ld h, c
    rst $38
    rst $38
    add hl, hl
    dec bc
    dec d
    add hl, bc
    nop
    rst $38
    rst $38
    sub b
    nop
    ld l, $61
    rst $38
    rst $38
    dec sp
    dec bc
    rrca
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    add hl, sp
    ld h, c
    rst $38
    rst $38
    ld a, [hl-]
    ld c, $0c
    ld [$ff00], sp
    ld [bc], a
    add b
    nop
    ld b, h
    ld h, c
    rst $38
    rst $38
    ld a, [hl-]
    ld c, $0c
    ld [$ff00], sp
    inc b
    add b
    nop
    ld b, h
    ld h, c
    rst $38
    rst $38
    ld c, b
    rlca
    rrca
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    adc l
    ld h, c
    rst $38
    rst $38
    cpl
    inc c
    ld b, $08
    nop
    rst $38
    rst $38
    and b
    nop
    sub b
    ld h, c
    rst $38
    rst $38
    nop
    nop
    ld d, c
    cp b

jr_01c_66eb:
    ld l, b
    ld d, c
    jp hl


    ld l, b
    ld l, e
    ld b, a
    ld c, h
    ld a, $69
    ld d, h
    ld hl, $0836
    adc d
    ld h, a
    ld c, h
    ld [hl], h
    ld l, c
    rrca
    ld c, a
    nop
    ld c, a
    sub b
    ld h, a
    ld e, c
    ld d, b
    ld b, $01
    inc d
    ld h, a
    ld b, $02
    jr nc, jr_01c_6774

    ld b, $03
    ld c, h
    ld h, a
    inc bc
    add h
    ld h, a
    daa
    call c, $0605
    ld [bc], a
    ld a, b
    ld h, a
    ld b, c
    db $db
    nop
    nop
    ld l, b
    ld h, a
    ld [$6784], sp
    rra
    db $db
    ld bc, $7e08
    ld h, a
    ld h, $dc
    dec b
    inc bc
    ld l, l
    ld h, a
    daa
    xor h
    dec c
    ld b, $02
    ld a, b
    ld h, a
    ld b, c
    db $dd
    nop
    nop
    ld l, b
    ld h, a
    ld [$6784], sp
    rra
    db $dd
    ld bc, $7e08
    ld h, a
    ld h, $ac
    dec c
    inc bc
    ld l, l
    ld h, a
    daa
    ld c, h
    dec e
    ld b, $02
    ld a, b
    ld h, a
    ld b, c
    adc $00
    nop
    ld l, b
    ld h, a
    ld [$6784], sp
    rra
    adc $01
    ld [$677e], sp
    ld h, $4c
    dec e
    inc bc
    ld l, l
    ld h, a
    ld c, h
    sub c
    ld l, c
    ld c, [hl]
    sub c
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, h
    xor l
    ld l, c

jr_01c_6774:
    ld d, h
    inc bc
    db $fd
    ld h, [hl]
    ld c, h
    cp e
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ret c

    ld l, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, [c]
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc d
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld b, b
    ld [bc], a
    nop
    dec bc
    rrca
    sbc b
    ld h, a
    ld bc, $0480
    sub e
    adc h
    ld hl, sp-$02
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $30
    ei
    or $f6
    ld d, b
    sub e
    adc h
    ld hl, sp-$01
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld sp, hl
    ei
    or $f6
    ld d, b
    sub e
    adc h
    rst $30
    ei
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $fd
    ei
    or $f6
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld l, e
    ld b, a
    ld c, h
    ld a, $69
    ld d, h
    ld hl, $0836
    adc d
    ld h, a
    ld c, h
    ld [hl], h
    ld l, c
    rrca
    ld c, a
    nop
    ld c, a
    ld [hl], a
    ld l, b
    ld e, c
    ld d, b
    ld b, $01
    db $ed
    ld h, a
    ld b, $02
    dec de
    ld l, b
    ld b, $03
    ld c, c
    ld l, b
    inc bc
    add h
    ld h, a
    daa
    xor [hl]
    ld [$0206], sp
    ld a, b
    ld h, a
    inc e
    ld bc, $0606
    ld a, [hl]
    ld h, a
    ld b, b
    add hl, de
    nop
    nop
    ld l, b
    ld h, a
    ld [$6784], sp
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, h
    xor l
    ld l, c
    ld d, h
    dec d
    add hl, de
    rrca
    add hl, sp
    nop
    dec l
    add hl, de
    add hl, de
    nop
    nop
    ld h, $ae
    ld [$d303], sp
    ld h, a
    daa
    or e
    dec d
    ld b, $02
    ld a, b
    ld h, a
    inc e
    ld bc, $0606
    ld a, [hl]
    ld h, a
    ld b, b
    adc c
    nop
    nop
    ld l, b
    ld h, a
    ld [$6784], sp
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, h
    xor l
    ld l, c
    ld d, h
    dec d
    adc c
    rrca
    add hl, sp
    nop
    dec l
    adc c
    rrca
    nop
    nop
    ld h, $b3
    dec d
    inc bc
    db $d3
    ld h, a
    daa
    cp b
    ld [hl+], a
    ld b, $02
    ld a, b
    ld h, a
    inc e
    ld bc, $0606
    ld a, [hl]
    ld h, a
    ld b, b
    or $00
    nop
    ld l, b
    ld h, a
    ld [$6784], sp
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, h
    xor l
    ld l, c
    ld d, h
    dec d
    or $0f
    add hl, sp
    nop
    dec l
    or $28
    nop
    nop
    ld h, $b8
    ld [hl+], a
    inc bc
    db $d3
    ld h, a
    ld b, b
    ld [bc], a
    nop
    dec bc
    ld de, $687f
    ld bc, $0480
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld hl, sp-$08
    ld hl, sp-$08
    ld d, b
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ei
    ei
    ei
    ei
    ld d, b
    adc e
    add b
    sub c
    sub l
    adc b
    sub e
    add b
    sub c
    ld a, a
    ld a, a
    ld a, a
    cp $fe
    cp $fe
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    nop
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld a, a
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    ld a, a
    and c
    cp b
    ld d, l
    rst $30
    or $f6
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    and h
    or [hl]
    ld [hl], l
    ld d, c
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    cp b
    ld c, a
    and d
    and b
    xor e
    xor h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    and d
    xor [hl]
    xor [hl]
    xor e
    db $f4
    ld a, a
    xor [hl]
    or c
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld d, l
    and b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    and h
    or a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and l
    and b
    and c
    or h
    xor e
    xor [hl]
    or h
    or d
    ld d, l
    xor a
    or c
    xor b
    cp c
    and h
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    and $57
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    or d
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
    and h
    and e
    ld c, a
    and b
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    and $57
    nop
    add a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
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
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc [hl]
    and a
    add sp, $7f
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
    ld c, a
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
    and d
    xor [hl]
    xor b
    xor l
    or d
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
    and b
    ld a, a
    add d
    adc [hl]
    adc b
    adc l
    ld a, a
    add d
    add b
    sub d
    add h
    add sp, $57
    nop
    nop
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    dec d
    inc b
    dec b
    inc bc
    rlca
    dec d
    inc b
    nop
    ld [bc], a
    ld bc, $0002
    rst $28
    ld h, [hl]
    ld bc, $0004
    ret z

    ld h, a
    ld [bc], a
    ld b, b
    ld b, $04
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    jp hl


    ld h, [hl]
    rst $38
    rst $38
    ld c, e
    ld [$0408], sp
    db $10
    rst $38
    rst $38
    and b
    nop
    db $ec
    ld h, [hl]
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    inc [hl]
    ld h, $00
    add hl, bc
    sbc e
    ld l, d
    ld c, h
    jr z, @+$6d

    ld d, h
    ld c, c
    ld h, h
    ld a, $6c
    nop
    nop
    ld e, [hl]
    dec d
    ld bc, $605f
    inc sp
    ret z

    inc b
    inc sp
    dec e
    dec b
    inc sp
    sub b
    inc b
    inc sp
    cp d
    inc b
    inc sp
    ld l, b
    inc b
    ld b, a
    ld c, h
    sub [hl]
    ld l, h
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $26
    nop
    ld sp, $00dc
    add hl, bc
    xor [hl]
    ld l, d
    ld c, h
    or b
    ld l, h
    ld d, l
    sbc [hl]
    jp nc, $0801

    xor [hl]
    ld l, d
    inc sp
    call c, Call_01c_4c00
    adc a
    ld l, l
    ld d, h
    ld c, c
    sub c
    dec e
    dec b
    add hl, de
    add hl, bc
    db $fc
    ld l, l
    inc h
    ld l, [hl]
    nop
    nop
    ret nz

    ld l, d
    ld h, [hl]
    ld b, a
    ld c, h
    jr nc, jr_01c_6b33

    ld d, h
    ld c, c
    sub c
    sub b
    inc b
    dec [hl]
    inc de
    ld d, e
    ld l, [hl]
    ld a, a
    ld l, [hl]
    nop
    nop
    call nc, Call_01c_666a
    ld b, a
    ld c, h
    adc [hl]
    ld l, [hl]
    ld d, h
    ld c, c
    sub c
    cp d
    inc b
    dec e
    ld c, $c5
    ld l, [hl]
    ld a, [c]
    ld l, [hl]
    nop
    nop
    add sp, $6a
    ld h, [hl]
    ld b, a
    ld c, h
    ld bc, $546f
    ld c, c
    sub c
    ld l, b
    inc b
    dec a
    dec b
    ld [hl-], a
    ld l, a
    ld h, d
    ld l, a
    nop
    nop
    db $fc
    ld l, d
    ld h, [hl]
    ld b, a
    ld c, h
    ld [hl], b
    ld l, a
    ld d, h
    ld c, c
    sub c
    ld l, b
    inc b
    dec a
    ld b, $91
    ld l, a
    xor a
    ld l, a
    nop
    nop
    db $10
    ld l, e
    ld h, [hl]
    ld b, a
    ld c, h
    ret nz

    ld l, a
    ld d, h
    ld c, c
    sub c
    inc [hl]
    ld h, $00
    add hl, bc
    ld hl, $0c6b
    dec l
    nop
    ld b, e
    dec d
    ld bc, $0c01
    ld l, $00
    nop
    add h
    sub c
    adc b
    adc d
    add b
    sbc h
    ld a, a
    add a
    and h
    xor e

jr_01c_6b33:
    xor e
    xor [hl]
    ld [hl], l
    ld c, a
    adc e
    xor [hl]
    or l
    and h
    xor e
    cp b
    ld a, a
    or [hl]
    and h
    and b
    or e
    and a
    and h
    or c
    db $f4
    ld d, c
    xor b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    and $4f
    adc b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and b
    xor l
    or e
    ld [hl], l
    ld d, c
    ld [hl], l
    adc b
    jp nc, $a07f

    and l
    or c
    and b
    xor b
    and e
    ld a, a
    adc b
    ld a, a
    xor h
    and b
    cp b
    ld c, a
    and e
    xor [hl]
    cp c
    and h
    ld a, a
    xor [hl]
    and l
    and l
    ld [hl], l
    ld d, c
    adc h
    cp b
    ld a, a
    xor l
    and b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    add h
    sub c
    adc b
    adc d
    add b
    add sp, $4f
    adc b
    ld a, a
    and b
    xor h
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
    ld a, a
    xor [hl]
    and l
    ld d, l
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $51
    ld [hl], l
    adc [hl]
    and a
    and $7f
    add b
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
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or d
    and b
    cp b
    and $7f
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor l
    xor b
    and d
    and h
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    add sp, $7f
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    adc b
    ld c, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    or c
    and h
    and b
    xor e
    xor b
    cp c
    and h
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    or d
    and a
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    ld a, a
    xor h
    and h
    add sp, $51
    sub l
    and h
    or c
    cp b
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld c, a
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    add sp, $57
    nop
    add h
    sub c
    adc b
    adc d
    add b
    sbc h
    ld a, a
    adc [hl]
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    and d
    xor [hl]
    xor l
    and d
    and h
    and e
    and h
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or c
    and h
    xor h
    and b
    or c
    xor d
    and b
    and c
    xor e
    cp b
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or d
    and a
    and b
    xor e
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
    ld c, a
    sub c
    add b
    adc b
    adc l
    add c
    adc [hl]
    sub [hl]
    add c
    add b
    add e
    add [hl]
    add h
    ld [hl], l
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
    add b
    adc b
    adc l
    add c
    adc [hl]
    sub [hl]
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    add h
    sub c
    adc b
    adc d
    add b
    sbc h
    ld a, a
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
    ld c, a
    and e
    and h
    xor e
    xor b
    and [hl]
    and a
    or e
    and l
    or h
    xor e
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    add sp, $51
    adc b
    ld a, a
    and l
    and h
    xor e
    or e
    ld a, a
    xor b
    xor l
    or d
    xor a
    xor b
    or c
    and h
    and e
    add sp, $4f
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
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
    sub e
    adc h
    add sp, $51
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    add [hl]
    adc b
    add [hl]
    add b
    ld a, a
    add e
    sub c
    add b
    adc b
    adc l
    add sp, $51
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    and l
    or h
    xor e
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and e
    or c
    and b
    xor b
    xor l
    or d
    ld d, c
    and a
    and b
    xor e
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    xor b
    or e
    ld c, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    and b
    xor e
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
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    and l
    ld c, a
    xor b
    or e
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld [hl], l
    ld d, a
    nop
    add h
    sub c
    adc b
    adc d
    add b
    sbc h
    ld a, a
    adc e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    xor e
    and h
    and b
    or l
    and h
    or d
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    or e
    and h
    or c
    ld d, l
    and b
    and l
    or e
    and h
    or c
    or e
    and b
    or d
    or e
    and h
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
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
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld d, c
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    or d
    xor a
    or h
    or c
    or d
    ld a, a
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld [hl], l
    ld d, a
    nop
    add e
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
    ld a, a
    and b
    ld c, a
    and [hl]
    xor b
    or c
    xor e
    or d
    db $e3
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    xor b
    or d
    ld a, a
    or c
    and b
    or c
    and h
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and c
    xor e
    and h
    and b
    and a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and d
    and b
    or c
    and h
    db $e3
    ld c, a
    xor e
    and h
    or d
    or d
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a07f
    xor e
    xor e
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $4f
    sub e
    and a
    and b
    or e
    call nc, $aa7f
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld d, l
    or d
    and d
    and b
    or c
    cp b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc [hl]
    adc d
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a87f
    or e
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    add sp, $7f
    adc l
    xor [hl]
    ld d, c
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
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
    or [hl]
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
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
    and b
    or e
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld d, l
    xor [hl]
    or c
    ld a, a
    and b
    or e
    ld a, a
    xor h
    and h
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor l
    xor l
    xor [hl]
    cp b
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    and c
    and h
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    and b
    and e
    cp b
    xor e
    xor b
    xor d
    and h
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    add h
    sub c
    adc b
    adc d
    add b
    and $57
    nop
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    add h
    sub c
    adc b
    adc d
    add b
    ld a, a
    or e
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    or h
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    sub [hl]
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld d, a
    nop
    add h
    sub c
    adc b
    adc d
    add b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or h
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    db $d3
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
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld a, a
    add h
    sub c
    adc b
    adc d
    add b
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
    or [hl]
    xor b
    xor l
    ld [hl], l
    ld d, a
    nop
    add h
    sub c
    adc b
    adc d
    add b
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    or h
    and d
    and a
    db $f4
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    ld de, $0804
    dec d
    inc b
    ld de, $0805
    dec d
    inc b
    nop
    ld [bc], a
    rrca
    inc bc
    nop
    jr jr_01c_705e

    rrca
    ld b, $00
    jr jr_01c_7063

    ld b, $20
    rlca
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld l, d
    ld l, d
    rst $38
    rst $38
    jr z, jr_01c_701d

    ld a, [bc]
    ld [$ff00], sp
    rst $38
    sub d
    ld [bc], a
    or h
    ld l, d
    rst $38
    rst $38
    jr z, @+$17

    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    and d
    ld [bc], a
    ret z

jr_01c_701d:
    ld l, d
    rst $38
    rst $38
    ld a, [hl+]
    add hl, bc
    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    call c, $ff6a
    rst $38
    ld h, $0e
    ld [$0006], sp
    rst $38
    rst $38
    add d
    ld bc, $6af0
    rst $38
    rst $38
    ld h, $0e
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add d
    ld bc, $6b04
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld c, h
    sbc $70
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    add hl, hl
    ld [hl], c
    ld d, h
    ld c, c
    ld l, e
    ld b, a
    ld c, h
    ld a, [hl-]
    ld [hl], c
    ld d, h
    ld c, c

jr_01c_705e:
    db $76
    inc bc
    ld [bc], a
    sub c
    ld b, a

jr_01c_7063:
    ld c, h
    ld l, d
    ld [hl], c
    ld d, h
    ld c, c
    ld l, e
    ld b, a
    ld c, h
    ld a, b
    ld [hl], c
    ld d, h
    ld c, c
    db $76
    inc b
    inc bc
    sub c
    ld b, a
    ld c, h
    xor [hl]
    ld [hl], c
    ld d, h
    ld c, c
    ld l, e
    ld b, a
    ld c, h
    cp l
    ld [hl], c
    ld d, h
    ld c, c
    db $76
    dec b
    inc bc
    sub c
    ld hl, $0936
    sbc d
    ld [hl], b
    ld b, a
    ld c, h
    ld bc, $5472
    ld c, c
    ld l, e
    ld b, a
    ld c, h
    ld [de], a
    ld [hl], d
    ld d, h
    ld c, c
    db $76
    ld b, $02
    sub c
    ld b, a
    ld c, h
    ld d, h
    ld [hl], d
    ld d, h
    ld c, c
    db $76
    ld b, $03
    ld b, a
    ld c, h
    ld a, b
    ld [hl], d
    ld d, h
    ld c, c
    db $76
    ld b, $02
    sub c
    ld d, e
    add l
    ld [hl], d
    ld sp, $00f9
    add hl, bc
    db $db
    ld [hl], b
    rra
    sub d
    ld bc, $cd08
    ld [hl], b
    ld b, a
    ld b, c
    sub d
    nop
    ld c, h
    rst $20
    ld [hl], d
    add l
    ld bc, $8600
    ld b, l
    ld c, c
    inc sp
    ld sp, hl
    nop
    sub c
    ld b, a
    ld b, c
    sub d
    nop
    ld c, h
    rst $20
    ld [hl], d
    ld d, l
    ld c, h
    rst $30
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    inc c
    dec c
    nop
    nop
    add a
    xor b
    rst $20
    ld d, c
    sub [hl]
    and h
    db $d3
    and h
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
    xor l
    ld c, a
    and h
    and b
    or e
    and b
    or e
    and a
    xor [hl]
    xor l
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    add sp, $51
    sub [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    or d
    and h
    or c
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $7f
    sub d
    xor [hl]
    or c
    or c
    cp b
    add sp, $57
    nop
    ld [hl], l
    sub d
    xor l
    and b
    or c
    and l
    xor e
    and h
    db $f4
    ld a, a
    and d
    and a
    and h
    or [hl]
    ld [hl], l
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    or e
    and b
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    xor h
    cp b
    ld c, a
    and d
    xor [hl]
    xor l
    and d
    and h
    xor l
    or e
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    ld [hl], l
    add [hl]
    or h
    xor e
    xor a
    ld [hl], l
    ld a, a
    add d
    and a
    and h
    or [hl]
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    or b
    or h
    and b
    xor l
    or e
    xor b
    or e
    cp b
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or b
    or h
    and b
    xor e
    xor b
    or e
    cp b
    rst $20
    ld d, c
    adc b
    jp nc, $a77f

    and b
    xor a
    xor a
    cp b
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    jp nc, $a54f

    or h
    xor e
    xor e
    rst $20
    ld d, a
    nop
    adc h
    or h
    xor l
    and d
    and a
    db $f4
    ld a, a
    xor h
    or h
    xor l
    and d
    and a
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
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
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    db $e3
    ld d, l
    sub c
    adc [hl]
    add e
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    ld d, l
    and l
    xor [hl]
    xor [hl]
    and e
    ld a, a
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
    add d
    or c
    or h
    xor l
    and d
    and a
    ld [hl], l
    ld a, a
    add d
    or c
    or h
    xor l
    and d
    and a
    ld [hl], l
    ld d, a
    nop
    adc l
    xor [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
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
    ld a, a
    add d
    adc [hl]
    adc b
    adc l
    ld d, c
    add d
    add b
    sub d
    add h
    add sp, $7f
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
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
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
    add d
    or c
    or h
    xor l
    and d
    and a
    ld [hl], l
    ld a, a
    add d
    or c
    or h
    xor l
    and d
    and a
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc h
    xor [hl]
    or c
    and h
    db $f4
    ld a, a
    add d
    add a
    add h
    add l
    rst $20
    ld d, a
    nop
    add h
    and b
    or e
    and b
    or e
    and a
    xor [hl]
    xor l
    ld a, a
    add d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    rst $20
    ld c, a
    adc l
    xor [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor e
    xor b
    xor h
    xor b
    or e
    rst $20
    ld d, c
    add b
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
    xor [hl]
    or h
    or e
    ld c, a
    and h
    xor l
    and e
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    and c
    xor b
    and [hl]
    and [hl]
    and h
    or d
    or e
    ld d, c
    xor h
    or h
    xor l
    and d
    and a
    and h
    or c
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    xor b
    or e
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and l
    or c
    and h
    and h
    rst $20
    ld d, a
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
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld b, $09
    dec d
    inc b
    rlca
    rlca
    add hl, bc
    dec d
    inc b
    nop
    ld [bc], a
    nop
    dec b
    nop
    xor l
    ld [hl], b
    ld bc, $0007
    or b
    ld [hl], b
    dec b
    dec hl
    rlca
    dec c
    ld [$ff00], sp
    rst $38
    or b
    nop
    ld c, c
    ld [hl], b
    rst $38
    rst $38
    ld a, [hl-]
    ld a, [bc]
    ld [$0008], sp
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld [hl], b
    rst $38
    rst $38
    ld a, [hl-]
    dec bc
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld h, d
    ld [hl], b
    rst $38
    rst $38
    ld a, [hl-]
    ld b, $05
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld [hl], e
    ld [hl], b
    rst $38
    rst $38
    add hl, hl
    rlca
    ld [$0008], sp
    rst $38
    rst $38
    nop
    nop
    add h
    ld [hl], b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld a, c
    ld [hl], e
    inc c
    ld [bc], a
    nop
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    or c
    or h
    xor b
    or d
    and h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    db $f4
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
    and h
    xor l
    and e
    ld a, a
    or h
    xor a
    ld a, a
    xor b
    xor l
    ld c, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    dec d
    rrca
    rlca
    inc bc
    inc bc
    dec d
    rrca
    nop
    ld [bc], a
    ld bc, $0000
    db $76
    ld [hl], e
    ld bc, $0001
    db $76
    ld [hl], e
    ld bc, $072b
    ld b, $06
    nop
    rst $38
    rst $38
    and b
    nop
    ld [hl], e
    ld [hl], e
    rst $38
    rst $38
    ld bc, $73e9
    nop
    nop
    nop
    sub c
    ld d, c
    ld [$2174], sp
    rlca
    ld [$73f3], sp
    sub c
    ld [hl], l
    nop
    ld [bc], a
    rrca
    halt
    ld bc, $4c47
    sub [hl]
    ld [hl], h
    ld d, h
    ld c, c
    ld l, c
    nop
    dec b
    ld [hl], h
    sub c
    rrca
    ld [bc], a
    ld b, a
    nop
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld c, a
    or d
    or e
    and b
    or c
    or e
    or d
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
    or e
    call nc, $a07f
    xor e
    xor e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    and a
    xor b
    xor e
    xor e
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    call nc, $b37f
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld d, l
    and h
    or a
    and a
    xor b
    xor e
    and b
    or c
    and b
    or e
    xor b
    xor l
    and [hl]
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    or d
    xor [hl]
    or c
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    cp b
    xor [hl]
    or h
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
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    and b
    ld a, a
    or d
    and a
    xor b
    xor a
    ld a, a
    xor [hl]
    or c
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    add sp, $57
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld a, a
    sub d
    or e
    xor [hl]
    xor a
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld d, c
    sub c
    adc [hl]
    add b
    add e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld c, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    add sp, $57
    nop
    nop
    inc b
    inc b
    nop
    inc b
    dec d
    ld [bc], a
    dec b
    nop
    dec b
    dec d
    ld [bc], a
    inc b
    add hl, bc
    ld [bc], a
    dec d
    ld [bc], a
    dec b
    add hl, bc
    inc bc
    dec d
    ld [bc], a
    ld [bc], a
    nop
    inc b
    dec b
    nop
    db $ed
    ld [hl], e
    nop
    nop
    nop
    dec b
    dec b
    nop
    db $ed
    ld [hl], e
    nop
    nop
    nop
    ld bc, $0643
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld_long $ff73, a
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    ld h, $75
    ld c, h
    inc l
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    ld c, h
    sub d
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    and b
    and d
    and d
    xor b
    and e
    and h
    xor l
    or e
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
    and $51
    adc b
    or e
    call nc, $ab7f
    xor [hl]
    and d
    and b
    or e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    add h
    and b
    or d
    or e
    db $f4
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    add sp, $57
    nop
    adc b
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    add [hl]
    sub h
    add b
    sub c
    add e
    ld c, a
    xor c
    xor [hl]
    and c
    ld a, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    add sp, $51
    add a
    and h
    cp b
    rst $20
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
    ld c, a
    ld d, h
    add e
    add h
    sub a
    add sp, $51
    adc [hl]
    adc d
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    nop
    inc b
    inc b
    nop
    ld bc, $0115
    dec b
    nop
    ld [bc], a
    dec d
    ld bc, $0904
    ld a, [bc]
    add hl, de
    ld [bc], a
    dec b
    add hl, bc
    dec bc
    add hl, de
    ld [bc], a
    nop
    nop
    ld bc, $0643
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    jr jr_01c_767a

    rst $38
    rst $38
    ld bc, $760d
    nop
    nop
    nop
    sub c
    ld d, c
    inc l
    db $76
    ld hl, $0807
    rla
    db $76
    sub c
    ld [hl], l
    nop
    ld [bc], a
    rrca
    halt
    ld bc, $4c47
    ld c, l
    db $76
    ld d, h
    ld c, c
    ld l, c
    nop
    add hl, hl
    db $76
    sub c
    rrca
    ld [bc], a
    ld b, a
    nop
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld c, a
    sub h
    xor a
    and a
    xor b
    xor e
    xor e
    ld a, a
    sub d
    or e
    and b
    or c
    or e
    or d
    ld a, a
    add a
    and h
    or c
    and h
    ld d, a
    nop
    add a
    and b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    and $51
    sub e
    and a
    and h
    ld a, a
    add d
    sbc b
    add d
    adc e
    adc b
    adc l

jr_01c_767a:
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld c, a
    xor b
    or d
    ld a, a
    and c
    and h
    cp b
    xor [hl]
    xor l
    and e
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
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld c, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    add sp, $57
    nop
    nop
    inc b
    inc b
    nop
    ld bc, $0315
    dec b
    nop
    ld [bc], a
    dec d
    inc bc
    inc b
    add hl, bc
    ld bc, $0411
    dec b
    add hl, bc
    ld [bc], a
    ld de, $0204
    nop
    inc b
    dec b
    nop
    ld de, $0076
    nop
    nop
    dec b
    dec b
    nop
    ld de, $0076
    nop
    nop
    ld bc, $0643
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld c, $76
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
