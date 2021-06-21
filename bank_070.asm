; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $070", ROMX[$4000], BANK[$70]

    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor a
    xor b
    and d
    or e
    or h
    or c
    and h
    and $4f
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
    adc [hl]
    adc d
    and $57
    nop
    add b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    and $7f
    adc h
    cp b
    ld a, a
    or e
    and b
    xor e
    and h
    xor l
    or e
    ld c, a
    xor b
    or d
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld a, a
    adc b
    jp nc, $b34f

    and a
    and h
    ld a, a
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
    add sp, $51
    adc b
    ld a, a
    or c
    and b
    or e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and b
    xor h
    and h
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
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
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or c
    and b
    or e
    and h
    ld a, a
    xor l
    and b
    xor h
    and h
    or d
    and $57
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
    call nc, $ad4f
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld d, l
    or c
    and b
    or e
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    and $58
    nop
    add a
    xor h
    ld [hl], l
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld [hl], l
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    and l
    and b
    xor b
    or c
    xor e
    cp b
    ld d, l
    and e
    and h
    and d
    and h
    xor l
    or e
    ld a, a
    xor l
    and b
    xor h
    and h
    add sp, $51
    add c
    or h
    or e
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
    and b
    ld c, a
    or d
    xor e
    xor b
    and [hl]
    and a
    or e
    xor e
    cp b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld d, l
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
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
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld c, a
    and b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor l
    and b
    xor h
    and h
    and $57
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
    add sp, $7f
    sub [hl]
    and a
    and b
    or e
    ld c, a
    xor l
    and b
    xor h
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or [hl]
    and h
    ld d, l
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    and $58
    nop
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    xor l
    and b
    xor h
    and h
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    rst $20
    ld d, c
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
    ld d, a
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $7f
    add d
    xor [hl]
    xor h
    and h
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    add a
    xor h
    ld [hl], l
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    and $4f
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    xor l
    and b
    xor h
    and h
    rst $20
    ld d, l
    adc b
    or e
    call nc, $af7f
    and h
    or c
    and l
    and h
    and d
    or e
    add sp, $51
    sub e
    or c
    and h
    and b
    or e
    ld a, a
    ld d, b
    ld bc, $d073
    nop
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
    sub [hl]
    and a
    xor [hl]
    and b
    ld [hl], l
    ld a, a
    sub e
    and a
    and b
    or e
    call nc, $a97f
    or h
    or d
    or e
    ld c, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    add sp, $57
    nop
    adc b
    or e
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and b
    xor h
    and h
    ld a, a
    and b
    or d
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    xor l
    and b
    xor h
    and h
    ld c, a
    xor b
    or d
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    rst $20
    ld d, c
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
    add sp, $7f
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
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld d, l
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    ld bc, $d073
    nop
    ld a, a
    and [hl]
    and b
    xor b
    xor l
    and h
    and e
    ld d, b
    ld d, b
    nop
    ld c, a
    and b
    ld a, a
    and c
    xor [hl]
    xor [hl]
    or d
    or e
    and h
    and e
    ld d, l
    ld d, b
    add hl, bc
    add [hl]
    ret nc

    inc h
    nop
    ld a, a
    add h
    sub a
    adc a
    add sp, $7f
    adc a
    xor [hl]
    xor b
    xor l
    or e
    or d
    rst $20
    ld e, b
    nop
    ld c, a
    ld d, b
    add hl, bc
    add [hl]
    ret nc

    inc h
    nop
    ld a, a
    add h
    sub a
    adc a
    add sp, $7f
    adc a
    xor [hl]
    xor b
    xor l
    or e
    or d
    rst $20
    ld e, b
    nop
    add [hl]
    xor [hl]
    rst $20
    ld a, a
    ld d, b
    ld d, b
    nop
    add e
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld a, a
    ld d, b
    ld d, b
    nop
    add [hl]
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    db $f4
    ld c, a
    ld d, b
    ld d, b
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    xor [hl]
    and h
    call nc, $b67f
    and h
    and b
    xor d
    rst $20
    ld c, a
    add [hl]
    and h
    or e
    jp nc, Jump_070_7ff4

    ld d, b
    ld d, b
    ld bc, $c621
    nop
    rst $20
    ld d, a
    ld bc, $c621
    nop
    db $f4
    ld d, b
    ld d, b
    nop
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a44f
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld a, a
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, b
    ld d, b
    nop
    ld a, a
    adc [hl]
    adc d
    rst $20
    ld c, a
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, b
    ld d, b
    nop
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld c, a
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, b
    ld d, b
    nop
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
    rst $20
    ld d, a
    nop
    add c
    xor [hl]
    xor [hl]
    or e
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld a, a
    sub e
    adc h
    add sp, $58
    nop
    add c
    xor [hl]
    xor [hl]
    or e
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    and b
    xor l
    ld a, a
    add a
    adc h
    add sp, $58
    nop
    adc b
    or e
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $51
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    ld bc, $d086
    nop
    ld a, a
    xor b
    or d
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    or e
    xor b
    and c
    xor e
    and h
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $51
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $58
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
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    sub d
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
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
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    xor e
    and h
    and e
    add sp, $58
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
    add sp, $58
    nop
    adc h
    or h
    or d
    or e
    ld a, a
    or c
    and h
    or e
    or c
    xor b
    and h
    or l
    and h
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    ld c, a
    and b
    or e
    ld a, a
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
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    add sp, $58
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $e3
    db $e3
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and l
    xor b
    or l
    and h
    ld c, a
    add [hl]
    adc b
    add l
    sub e
    sub d
    ld a, a
    and b
    ld a, a
    and e
    and b
    cp b
    add sp, $58
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    add sp, $7f
    adc [hl]
    xor l
    and h
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    ld c, a
    and b
    ld a, a
    and e
    and b
    cp b
    ld a, a
    xor a
    and h
    or c
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    add sp, $58
    ld bc, $c903
    nop
    ld a, a
    or d
    and h
    xor l
    or e
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    ld bc, $c903
    nop
    ld a, a
    or d
    and h
    xor l
    or e
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    ld d, l
    or e
    xor [hl]
    ld a, a
    ld d, b
    ld bc, $c953
    nop
    call nc, $a77f
    xor [hl]
    xor h
    and h
    add sp, $58
    nop
    sub c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $c850
    nop
    call nc, $827f
    add b
    sub c
    add e
    add sp, $58
    ld bc, $c850
    nop
    call nc, $827f
    add b
    sub c
    add e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor e
    xor b
    or d
    or e
    and h
    and e
    ld a, a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    add sp, $50
    add hl, bc
    ld h, l
    jp nc, $0012

    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    and h
    and e
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    xor e
    and h
    and e
    add sp, $58
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
    add sp, $58
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld a, a
    add b
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    ld c, a
    xor b
    or d
    ld a, a
    or c
    and h
    or b
    or h
    xor b
    or c
    and h
    and e
    add sp, $58
    nop
    add d
    and b
    xor l
    push de
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $58
    ld bc, $d086
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    add d
    sub h
    sub e
    rst $20
    ld e, b
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
    or e
    xor [hl]
    ld c, a
    add d
    sub h
    sub e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    add b
    ld a, a
    and c
    xor e
    xor b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    add l
    adc e
    add b
    sub d
    add a
    ld c, a
    xor e
    xor b
    and [hl]
    and a
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or c
    and h
    and b
    rst $20
    ld d, b
    ld b, $50
    ld d, b
    ld bc, $d086
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    sub d
    sub h
    sub c
    add l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    sub d
    sub h
    sub c
    add l
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld c, a
    sub d
    sub h
    sub c
    add l
    adc b
    adc l
    add [hl]
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    and d
    and b
    xor e
    xor h
    add sp, $4f
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub d
    sub h
    sub c
    add l
    and $57
    ld bc, $d086
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    add l
    add b
    adc e
    adc e
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    xor b
    or e
    call nc, $a07f
    ld a, a
    and a
    or h
    and [hl]
    and h
    ld c, a
    or [hl]
    and b
    or e
    and h
    or c
    and l
    and b
    xor e
    xor e
    add sp, $57
    nop
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
    ld a, a
    or h
    or d
    and h
    ld c, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    add l
    add b
    adc e
    adc e
    and $57
    ld bc, $d086
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    add e
    adc b
    add [hl]
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    and b
    xor l
    ld c, a
    add h
    sub d
    add d
    add b
    adc a
    add h
    ld a, a
    sub c
    adc [hl]
    adc a
    add h
    add sp, $57
    nop
    add d
    and b
    xor l
    push de
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sub c
    and h
    or e
    or h
    or c
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld c, a
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
    add sp, $57
    nop
    add d
    and b
    xor l
    push de
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $51
    ld d, a
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    add sp, $58
    ld bc, $d086
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    rst $20
    ld d, a
    ld bc, $d073
    nop
    ld a, a
    and d
    and b
    xor l
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    add sp, $58
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld c, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    and $57
    nop
    add c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld c, a
    and c
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    and e
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $57
    ld bc, $d086
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    sub [hl]
    add a
    adc b
    sub c
    adc e
    adc a
    adc [hl]
    adc [hl]
    adc e
    rst $20
    ld e, b
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or l
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld c, a
    or [hl]
    and a
    xor b
    or c
    xor e
    xor a
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, c
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    and b
    or d
    or d
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add b
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
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    add sp, $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld c, a
    sub [hl]
    add a
    adc b
    sub c
    adc e
    adc a
    adc [hl]
    adc [hl]
    adc e
    and $57
    ld bc, $d086
    nop
    ld a, a
    and e
    xor b
    and e
    ld a, a
    and b
    ld c, a
    add a
    add h
    add b
    add e
    add c
    sub h
    sub e
    sub e
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    xor a
    and h
    add sp, $7f
    adc l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    or c
    and h
    and h
    add sp, $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    add a
    add h
    add b
    add e
    add c
    sub h
    sub e
    sub e
    ld c, a
    xor b
    or e
    and $57
    ld bc, $d086
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub d
    adc h
    add b
    sub d
    add a
    rst $20
    ld e, b
    nop
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and d
    and b
    xor l
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld c, a
    and c
    or c
    and h
    and b
    xor d
    and b
    and c
    xor e
    and h
    add sp, $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld c, a
    sub d
    adc h
    add b
    sub d
    add a
    and $57
    nop
    adc [hl]
    and a
    rst $20
    ld c, a
    add b
    ld a, a
    and c
    xor b
    or e
    and h
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and b
    ld a, a
    xor l
    xor b
    and c
    and c
    xor e
    and h
    rst $20
    ld e, b
    nop
    adc e
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
    or c
    and h
    call nc, $ad4f
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
    add sp, $58
    nop
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
    and h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $57
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld c, a
    add d
    sub h
    sub e
    rst $20
    ld d, c
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    add d
    sub h
    sub e
    and $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld c, a
    add d
    sub h
    sub e
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
    ld d, d
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or h
    or d
    and h
    and b
    and c
    xor e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    ld d, d
    ld a, a
    or [hl]
    and a
    xor b
    or e
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    sbc b
    and h
    or d
    rst $20
    ld a, a
    adc b
    sub e
    add h
    adc h
    add l
    adc b
    adc l
    add e
    add h
    sub c
    ld c, a
    xor b
    xor l
    and e
    xor b
    and d
    and b
    or e
    and h
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $a055
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    ld a, a
    xor l
    and h
    and b
    or c
    and c
    cp b
    add sp, $58
    nop
    adc l
    xor [hl]
    xor a
    and h
    rst $20
    ld a, a
    adc b
    sub e
    add h
    adc h
    add l
    adc b
    adc l
    add e
    add h
    sub c
    ld c, a
    xor b
    or d
    xor l
    push de
    ld a, a
    or c
    and h
    or d
    xor a
    xor [hl]
    xor l
    and e
    xor b
    xor l
    and [hl]
    add sp, $58
    ld bc, $d099
    nop
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or h
    or d
    and h
    and b
    and c
    xor e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    ld d, d
    ld a, a
    or [hl]
    and a
    xor b
    or e
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    ld bc, $d099
    nop
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    sub d
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
    rst $20
    ld d, a
    nop
    adc e
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
    or c
    and h
    call nc, $ad4f
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
    ld [hl], l
    ld d, a
    nop
    ld d, d
    ld a, a
    or d
    xor a
    or c
    xor b
    xor l
    xor d
    xor e
    and h
    and e
    ld c, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    ld d, d
    call nc, Call_070_547f
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and a
    and h
    and b
    xor e
    and h
    and e
    rst $20
    ld d, a
    nop
    add b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld c, a
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    add sp, $58
    nop
    adc l
    xor [hl]
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $57
    nop
    sub e
    and a
    or c
    xor [hl]
    or [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor h
    and b
    xor l
    cp b
    and $57
    nop
    sub e
    and a
    or c
    xor [hl]
    or [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    ld d, b
    add hl, bc
    inc c
    pop de
    ld [de], a
    nop
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    and $57
    nop
    sub e
    and a
    or c
    and h
    or [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    add sp, $58
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    or e
    and a
    and h
    ld d, l
    or e
    xor b
    xor h
    and h
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
    and b
    or e
    rst $20
    ld e, b
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
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    sub c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
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
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    and h
    xor h
    add sp, $58
    nop
    sub [hl]
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
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and c
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    and e
    ld a, a
    or e
    xor [hl]
    and $57
    nop
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld c, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $58
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    and c
    xor [hl]
    cp b
    and $4f
    adc [hl]
    or c
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    and $57
    nop
    ld e, d
    call nc, Call_070_504f
    ld bc, $d086
    ld d, b
    ld d, b
    ld a, [bc]
    nop
    ld c, h
    or [hl]
    and h
    xor l
    or e
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or h
    xor a
    rst $20
    ld e, b
    nop
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    or h
    xor a
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, Call_070_504f
    ld bc, $d086
    ld d, b
    ld d, b
    ld a, [bc]
    nop
    ld c, h
    or d
    and a
    and b
    or c
    xor a
    xor e
    cp b
    ld a, a
    and l
    and h
    xor e
    xor e
    rst $20
    ld e, b
    nop
    ld a, a
    and l
    and h
    xor e
    xor e
    rst $20
    ld e, b
    nop
    ld e, d
    ld d, b
    ld d, b
    nop
    ld c, a
    xor h
    and b
    and e
    and h
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    or c
    xor e
    or [hl]
    xor b
    xor l
    and e
    rst $20
    ld e, b
    nop
    ld c, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    or h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    ld c, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    and h
    and e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    rst $20
    ld e, b
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    ld c, a
    and l
    xor e
    and h
    or [hl]
    ld a, a
    or h
    xor a
    ld a, a
    and a
    xor b
    and [hl]
    and a
    rst $20
    ld e, b
    nop
    ld c, a
    and e
    or h
    and [hl]
    ld a, a
    and b
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    ld d, b
    ld d, b
    nop
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    ld d, b
    ld d, b
    nop
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    ld d, b
    ld d, b
    nop
    xor b
    xor l
    or d
    or e
    and h
    and b
    and e
    db $f4
    ld d, l
    ld d, b
    ld d, b
    ld bc, $d086
    ld d, b
    ld d, b
    nop
    rst $20
    ld d, a
    nop
    rst $20
    ld d, a
    nop
    rst $20
    ld d, a
    nop
    rst $20
    ld d, a
    nop
    rst $20
    ld d, a
    nop
    add a
    or h
    and a
    and $51
    ld d, b
    ld d, b
    nop
    ld d, a
    ld bc, $d073
    nop
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    add h
    add [hl]
    add [hl]
    rst $20
    ld d, b
    db $10
    ld b, $50
    ld d, b
    nop
    add [hl]
    xor b
    or l
    and h
    ld a, a
    and b
    ld a, a
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    and $57
    nop
    adc b
    or e
    call nc, Call_070_507f
    ld bc, $df2f
    nop
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    or e
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
    ld a, a
    adc e
    add b
    add e
    sbc b
    add sp, $57
    nop
    adc b
    or e
    call nc, Call_070_507f
    ld bc, $def6
    nop
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    or e
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
    ld a, a
    adc h
    add b
    adc l
    add sp, $57
    nop
    adc b
    or e
    call nc, $a17f
    or c
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    add sp, $58
    nop
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    and h
    or d
    or e
    ld c, a
    xor b
    xor l
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
    adc b
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
    ld a, a
    and d
    and b
    or c
    and h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
    adc b
    or e
    call nc, $a57f
    or c
    xor b
    and h
    xor l
    and e
    xor e
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
    adc b
    or e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    and h
    or d
    or e
    ld c, a
    xor b
    xor l
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    xor e
    and h
    and b
    or c
    and h
    and e
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    xor a
    or h
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    adc a
    add b
    add d
    adc d
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    adc b
    adc e
    call nc, $ac7f
    and h
    or d
    or d
    and b
    and [hl]
    and h
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $7f
    adc [hl]
    adc d
    and $57
    nop
    adc b
    or e
    call nc, $a07f
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
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    add sp, $58
    nop
    add b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    adc h
    add b
    adc b
    adc e
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    and e
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    adc b
    adc e
    add c
    adc [hl]
    sub a
    add sp, $58
    nop
    sbc b
    and h
    or d
    ld e, b
    nop
    adc l
    xor [hl]
    ld e, b
    add hl, bc
    ld h, h
    rst $08
    inc de
    nop
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld c, a
    add b
    xor l
    xor b
    xor h
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    or e
    cp b
    xor a
    and h
    ld a, a
    ld d, b
    ld bc, $d086
    ld d, b
    ld d, b
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $57
    ld bc, $d073
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or d
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    add c
    adc b
    adc e
    adc e
    call nc, $8f7f
    add d
    add sp, $58
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    or e
    or e
    and b
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    xor e
    xor e
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and b
    or e
    and $57
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    adc h
    add b
    adc b
    adc e
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d

Call_070_504f:
    and h
    ld a, a
    or c
    and h
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc h
    add b
    adc b
    adc e
    add sp, $58
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
    ld a, a
    and b
    ld c, a
    or d
    xor b
    xor l
    and [hl]
    xor e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20

Call_070_507f:
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and e
    and h
    xor a
    xor [hl]
    or d
    xor b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $58
    nop
    add d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    sub d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld c, a
    and b
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    add c
    or h
    and [hl]
    db $e3
    add d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    add d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    and h
    or c
    ld a, a
    xor b
    or d
    ld d, b
    ld a, [bc]
    nop
    ld [hl], l
    ld d, c
    ld d, b
    ld bc, $d016
    nop
    db $f4
    ld c, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    and a
    and h
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
    and d
    xor [hl]
    or c
    and h
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    ld d, b
    add hl, bc
    inc b
    ret nc

    inc hl
    nop
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    rst $20
    ld e, b
    nop
    adc a
    xor e
    and b
    and d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    ld d, b
    ld bc, $d016
    nop
    db $f4
    ld d, c
    or [hl]
    and a
    xor [hl]
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or d
    and d
    xor [hl]
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    ld d, b
    add hl, bc
    ld [$23d0], sp
    nop
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    rst $20
    ld e, b
    nop
    adc a
    xor e
    and b
    and d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    or c
    and e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    ld d, b
    ld bc, $d016
    nop
    db $f4
    ld d, c
    or [hl]
    and a
    xor [hl]
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld d, b
    ld d, b
    nop
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or d
    and d
    xor [hl]
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    ld d, b
    add hl, bc
    inc c
    ret nc

    inc hl
    nop
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    rst $20
    ld e, b
    nop
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    xor h
    and h
    and b
    or d
    or h
    or c
    and h
    ld c, a
    or e
    and a
    and b
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
    ld [hl], l
    add a
    xor h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    and h
    and b
    or d
    or h
    or c
    and h
    or d
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
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
    ld bc, $d073
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
    ld bc, $dfea
    ld b, $50
    ld d, b
    nop
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
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc b
    add e
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld d, c
    xor [hl]
    and l
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    xor b
    xor l
    ld c, a
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
    add sp, $58
    nop
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
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc b
    add e
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld d, c
    xor [hl]
    and l
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    xor b
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add d
    ld a, a
    add c
    adc [hl]
    sub a
    add sp, $58
    nop
    add [hl]
    xor b
    or l
    and h
    ld a, a
    and b
    ld a, a
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    and $57
    nop
    add c
    cp c
    cp c
    cp c
    cp c
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld d, l
    or h
    or d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld e, b
    nop
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
    add sp, $58
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
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
    or [hl]
    xor b
    or e
    and a
    and e
    or c
    and b
    or [hl]
    and $57
    nop
    sub [hl]
    xor b
    or e
    and a
    and e
    or c
    and h
    or [hl]
    ld a, a
    ld d, b
    add hl, bc
    inc c
    pop de
    ld [de], a
    nop
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    add sp, $58
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
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
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $58
    nop
    adc l
    xor [hl]
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld e, b
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
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
    and e
    and h
    xor a
    xor [hl]
    or d
    xor b
    or e
    and $57
    nop
    add e
    and h
    xor a
    xor [hl]
    or d
    xor b
    or e
    and h
    and e
    ld a, a
    ld d, b
    add hl, bc
    inc c
    pop de
    ld [de], a
    nop
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    add sp, $58
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $58
    nop
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
    add sp, $58
    nop
    add b
    and d
    and d
    and h
    or d
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
    or d
    and h
    ld a, a
    adc a
    add d
    and $57
    nop
    add c
    adc b
    adc e
    adc e
    call nc, $8f7f
    add d
    ld c, a
    and b

Call_070_547f:
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    add sp, $51
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld c, a
    sub d
    cp b
    or d
    or e
    and h
    xor h
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    add sp, $58
    nop
    add b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    adc a
    add d
    add sp, $51
    adc b
    or e
    and h
    xor h
    ld a, a
    sub d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld c, a
    sub d
    cp b
    or d
    or e
    and h
    xor h
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    add sp, $58
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    call nc, $8f7f
    add d
    ld c, a
    and b
    and d
    and d
    and h
    or d
    or d
    and h
    and e
    add sp, $51
    ld d, h
    add e
    add h
    sub a
    ld a, a
    sub c
    and b
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    sub d
    cp b
    or d
    or e
    and h
    xor h
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    add sp, $58
    nop
    ld [hl], l
    ld c, a
    adc e
    xor b
    xor l
    xor d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
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
    or c
    and b
    or e
    and h
    and e
    and $57
    nop
    add d
    or h
    or c
    or c
    and h
    xor l
    or e
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld c, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    sbc h
    ld e, b
    ld bc, $d099
    nop
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    and h
    and h
    xor l
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    or [hl]
    xor l
    and h
    and e
    ld d, c
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    call nc, $914f
    and b
    or e
    xor b
    xor l
    and [hl]
    sbc h
    ld d, a
    nop
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor b
    xor l
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    cp b
    ld a, a
    and b
    or c
    and h
    and b
    or d
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    add sp, $7f
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
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
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    or h
    or d
    and h
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld c, a
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
    xor b
    or d
    add sp, $51
    add c
    or h
    or e
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
    ld c, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    add sp, $57
    nop
    sbc b
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
    and l
    xor b
    xor e
    xor e
    ld c, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    add e
    add h
    sub a
    add sp, $51
    add d
    and b
    or e
    and d
    and a
    ld a, a
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
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
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    db $e3
    db $e3
    adc b
    ld c, a
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
    add sp, $51
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    xor b
    or d
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
    and [hl]
    and h
    or e
    and a
    and h
    or c
    add sp, $57
    nop
    sub e
    xor [hl]
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    db $f4
    ld d, c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    sub d
    sub e
    adc [hl]
    adc l
    add h
    sub d
    add sp, $57
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
    and [hl]
    xor [hl]
    or e
    or e
    and h
    xor l
    ld a, a
    and b
    ld c, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    sub c
    adc [hl]
    add e
    and $7f
    sbc b
    xor [hl]
    or h
    ld d, c
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    cp b
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
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
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    or d
    and h
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    db $e3
    ld d, l
    xor e
    and h
    and d
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
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld d, c
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    cp b
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    xor b
    or d
    ld c, a
    and l
    xor b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    add sp, $7f
    adc d
    and h
    and h
    xor a
    ld d, l
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    rst $20
    ld d, a
    nop
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
    add sp, $4f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    xor b
    xor l
    and [hl]
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $57
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
    xor h
    and h
    or e
    ld a, a
    adc d
    sub h
    sub c
    sub e
    and $4f
    add a
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
    ld d, l
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and a
    and h
    xor e
    xor a
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    add sp, $7f
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    xor h
    xor [hl]
    or c
    and h
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
    ld d, c
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld c, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    ld a, a
    xor a
    or c
    xor [hl]
    xor c
    and h
    and d
    or e
    add sp, $57
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    and b
    and e
    xor b
    xor l
    and [hl]
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
    and $51
    adc b
    or e
    call nc, $b37f
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and a
    xor b
    or e
    ld c, a
    ld hl, sp-$0a
    or $e7
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld d, l
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or d
    xor [hl]
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
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and a
    and h
    xor e
    xor a
    and h
    and e
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
    rst $20
    ld d, a
    nop
    adc h
    and b
    and [hl]
    xor l
    xor b
    and l
    xor b
    and d
    and h
    xor l
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor a
    or c
    xor [hl]
    and l
    and h
    or d
    or d
    xor [hl]
    or c
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
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    xor b
    or d
    ld c, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld d, c
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    or h
    or c
    xor l
    ld c, a
    xor a
    or c
    xor [hl]
    and l
    and h
    or d
    or d
    xor b
    xor [hl]
    xor l
    and b
    xor e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld a, a
    add b
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld c, a
    ld d, h
    add e
    add h
    sub a
    rst $20
    ld a, a
    adc b
    sub $a4
    ld d, c
    and e
    or c
    and h
    and b
    xor h
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
    xor b
    or d
    rst $20
    ld c, a
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
    sub e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    adc [hl]
    add b
    adc d
    call nc, $8f7f
    add d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    add sp, $57
    nop
    sub e
    or c
    xor b
    xor a
    xor e
    and h
    db $e3
    or e
    and a
    and h
    xor h
    and h
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    or c
    and b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
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
    cp b
    xor [hl]
    or h
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    or d
    and h
    xor l
    or e
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld d, l
    xor h
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    or d
    rst $20
    ld d, c
    ld d, a
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
    ld c, a
    or c
    and b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    and b
    or e
    and b
    add sp, $51
    adc e
    xor b
    xor l
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    and c
    or e
    and b
    xor b
    xor l
    ld c, a
    or c
    and b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    and b
    or e
    and b
    add sp, $51
    ld d, a
    nop
    ld a, a
    db $f4
    ld a, a
    cp b
    and h
    and b
    and a
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
    ld [hl], l
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
    and h
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    and $57
    nop
    sub e
    xor [hl]
    or d
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    and $57
    nop
    sub e
    and a
    or c
    xor [hl]
    or [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    ld d, b
    add hl, bc
    inc c
    pop de
    ld [de], a
    nop
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    and $57
    nop
    add e
    xor b
    or d
    and d
    and b
    or c
    and e
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    sbc d
    sub d
    sbc e
    add sp, $58
    nop
    sub e
    and a
    and b
    or e
    call nc, $b37f
    xor [hl]
    xor [hl]
    ld a, a
    xor b
    xor h
    xor a
    xor [hl]
    or c
    db $e3
    ld c, a
    or e
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or d
    or d
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    or e
    and a
    and h
    ld d, l
    or e
    xor b
    xor h
    and h
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
    and b
    or e
    rst $20
    ld d, a
    nop
    sub e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    ld d, b
    ld bc, $d050
    nop
    call nc, Call_070_504f
    ld bc, $d073
    nop
    ld a, a
    and b
    xor l
    and e
    ld d, c
    xor h
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $58
    nop
    adc h
    and b
    and e
    and h
    ld a, a
    ld d, b
    ld bc, $d050
    nop
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $58
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or c
    and h
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    add sp, $58
    ld bc, $d050
    nop
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
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
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $58
    nop
    adc b
    or e
    and h
    xor h
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld a, a
    or d
    xor a
    and b
    and d
    and h
    ld c, a
    and l
    or h
    xor e
    xor e
    add sp, $58
    nop
    sub e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    ld d, b
    ld bc, $d050
    nop
    add sp, $58
    ld bc, $d050
    nop
    ld a, a
    xor b
    or d
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
    ld d, c
    ld d, b
    ld bc, $d073
    nop
    add sp, $4f
    sub d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    and $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or e
    and h
    xor h
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
    and e
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld c, a
    xor b
    or e
    or d
    ld a, a
    xor h
    and h
    or d
    or d
    and b
    and [hl]
    and h
    add sp, $7f
    adc [hl]
    adc d
    and $57
    nop
    adc h
    add b
    adc b
    adc e
    ld a, a
    and e
    and h
    or e
    and b
    and d
    and a
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    or d
    xor a
    and b
    and d
    and h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or c
    and h
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    adc h
    add b
    adc b
    adc e
    add sp, $58
    nop
    sub d
    and h
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    xor h
    xor [hl]
    or l
    and h
    and e
    ld c, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add d
    and $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add d
    call nc, $8c7f
    add b
    adc b
    adc e
    add c
    adc [hl]
    sub a
    ld c, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    and h
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add d
    add sp, $58
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    add a
    adc a
    rst $20
    ld e, b
    nop
    add b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    ld a, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    adc a
    add b
    add d
    adc d
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld d, c
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or h
    or d
    and h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    sub d
    add h
    adc e
    add h
    add d
    sub e
    ld a, a
    add c
    or h
    or e
    or e
    xor [hl]
    xor l
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld a, a
    sub d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
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
    and a
    and h
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor [hl]
    and l
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
    xor l
    and b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    adc [hl]
    add b
    adc d
    add sp, $51
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor h
    and h
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
    adc a
    sub c
    adc [hl]
    add l
    add sp, $58
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    db $e3
    ld c, a
    and a
    and b
    and c
    xor b
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    and d
    or c
    and h
    and b
    db $e3
    ld d, l
    or e
    or h
    or c
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor e
    xor e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $50
    ld d, b
    ld b, $50
    ld d, b
    nop
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
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor e
    xor b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    ld a, a
    and c
    cp b
    ld d, c
    or d
    or h
    xor a
    xor a
    xor [hl]
    or c
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    and b
    and d
    and a
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
    add sp, $51
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    or d
    xor [hl]
    xor h
    and h
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
    or e
    and a
    and h
    xor h
    add sp, $58
    nop
    add c
    or h
    or e
    ld a, a
    or [hl]
    and h
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
    ld c, a
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
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    and h
    or e
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
    or e
    xor b
    xor e
    xor e
    ld c, a
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
    ld d, l
    or d
    xor [hl]
    xor e
    or l
    and h
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $b67f
    and a
    cp b
    ld a, a
    adc b
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    and e
    and b
    cp b
    add sp, $58
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_070_7ff4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
