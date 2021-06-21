; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05d", ROMX[$4000], BANK[$5d]

    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    adc [hl]
    or h
    or c
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    ld a, a
    or d
    and b
    xor e
    and h
    or d
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    and l
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    xor [hl]
    or [hl]
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor e
    xor e
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
    and e
    or l
    and h
    or c
    or e
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld d, c
    and c
    cp b
    ld a, a
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    add sp, $51
    add b
    or d
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    or d
    and b
    cp b
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld d, c
    xor d
    and h
    and h
    xor a
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    add sp, $4f
    sub e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $a84f
    xor l
    or e
    and h
    xor e
    xor e
    xor b
    and [hl]
    and h
    xor l
    and d
    and h
    ld a, a
    xor d
    and h
    and h
    xor a
    or d
    ld d, c
    or c
    xor b
    or d
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    or e
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and c
    and h
    ld a, a
    or d
    xor h
    and b
    or c
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    and b
    cp b
    db $f4
    ld a, a
    adc b
    ld c, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    and h
    and e
    ld a, a
    and b
    ld d, l
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or d
    or [hl]
    and b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor b
    xor a
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    or d
    ld d, l
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
    xor [hl]
    ld a, a
    and a
    and h
    xor e
    xor a
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    add sp, $4f
    adc b
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    and e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld d, c
    and b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and c
    cp b
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    or e
    xor b
    xor l
    cp b
    ld a, a
    and c
    xor b
    or e
    add sp, $51
    adc b
    and l
    ld a, a
    adc b
    ret nc

    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    xor l
    and l
    xor [hl]
    or c
    xor h
    and h
    and e
    db $f4
    ld a, a
    adc b
    jp nc, $b251

    or h
    or c
    and h
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    sub $a4
    ld c, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or e
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
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $7f
    adc b
    pop de
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    xor [hl]
    or [hl]
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
    xor e
    xor [hl]
    and [hl]
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $51
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
    db $d3
    and h
    ld a, a
    xor l
    and h
    and b
    or c
    and c
    cp b
    add sp, $57
    nop
    sub d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
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
    xor d
    xor l
    xor [hl]
    or [hl]
    and $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    call nc, $b17f
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    or e
    or c
    xor b
    xor d
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or h
    or d
    and h
    ld a, a
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld c, a
    add d
    sub h
    sub c
    adc e
    db $f4
    ld a, a
    sub c
    adc [hl]
    adc e
    adc e
    adc [hl]
    sub h
    sub e
    call nc, $af51
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or h
    xor a
    ld c, a
    xor a
    and b
    or d
    or e
    ld a, a
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or d
    ld c, a
    and a
    and b
    or c
    or d
    and a
    db $f4
    ld a, a
    sub d
    adc [hl]
    adc e
    add b
    sub c
    add c
    add h
    add b
    adc h
    ld d, c
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and d
    and a
    and b
    or c
    and [hl]
    and h
    and e
    ld a, a
    or h
    xor a
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld c, a
    or h
    or d
    and h
    or d
    ld a, a
    adc h
    adc b
    adc l
    adc b
    adc h
    adc b
    sbc c
    add h
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    sub d
    sub e
    adc [hl]
    adc h
    adc a
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld c, a
    xor b
    or d
    ld a, a
    add l
    adc e
    sbc b
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    add [hl]
    sub h
    sub d
    sub e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld c, a
    xor b
    or d
    ld a, a
    add l
    adc e
    sbc b
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    sub e
    sub [hl]
    adc b
    sub d
    sub e
    add h
    sub c
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld c, a
    or h
    or d
    and h
    or d
    ld a, a
    add e
    adc b
    add [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    add h
    add b
    sub c
    sub e
    add a
    sub b
    sub h
    add b
    adc d
    add h
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld c, a
    or h
    or d
    and h
    or d
    ld a, a
    add e
    adc b
    add [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    adc h
    add b
    add [hl]
    adc l
    adc b
    sub e
    sub h
    add e
    add h
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    sub e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    db $f4
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or d
    or e
    and h
    and h
    xor e
    ld a, a
    or e
    cp b
    xor a
    and h
    or d
    ld d, c
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    and a
    or h
    or c
    or e
    ld a, a
    and c
    cp b
    ld c, a
    sub d
    add b
    adc l
    add e
    sub d
    sub e
    adc [hl]
    sub c
    adc h
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or d
    ld c, a
    and a
    and b
    or c
    or d
    and a
    db $f4
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    db $e3
    or e
    cp b
    xor a
    and h
    ld d, c
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    or [hl]
    and h
    and b
    xor d
    and h
    or c
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    call nc, $b17f
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    and l
    xor b
    or c
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
    ld d, c
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    or [hl]
    and h
    and b
    xor d
    and h
    or c
    ld c, a
    or e
    and a
    and b
    xor l
    ld a, a
    or h
    or d
    or h
    and b
    xor e
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
    and a
    and h
    and b
    or c
    and e
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    or e
    xor b
    xor a
    or d
    add sp, $51
    add a
    and h
    call nc, $a67f
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    or e
    ld c, a
    xor h
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and a
    and h
    ld a, a
    or e
    and h
    xor e
    xor e
    or d
    ld a, a
    xor h
    and h
    db $f4
    ld c, a
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld d, l
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    or c
    xor [hl]
    xor h
    xor b
    or d
    and h
    and $51
    sub [hl]
    and h
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
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
    rst $20
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and b
    or e
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $57
    nop
    adc b
    ld a, a
    and l
    and b
    xor l
    and d
    xor b
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, b
    ld bc, $d0ac
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
    and h
    or l
    and h
    xor l
    ld a, a
    and d
    or h
    or e
    and h
    or c
    ld c, a
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
    ld d, a
    nop
    adc b
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
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld d, l
    sub d
    adc l
    sub h
    add c
    add c
    sub h
    adc e
    adc e
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
    adc h
    cp b
    ld a, a
    sub d
    adc l
    sub h
    add c
    add c
    sub h
    adc e
    adc e
    db $f4
    ld a, a
    adc b
    ld c, a
    and b
    or d
    or d
    or h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    and l
    and b
    or c
    ld a, a
    and d
    or h
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    adc b
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
    ld a, a
    or d
    and h
    and h
    ld c, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
    ld a, a
    or e
    and a
    and h
    ld d, c
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    and b
    cp b
    add sp, $4f
    adc [hl]
    or c
    ld a, a
    or d
    xor [hl]
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
    add sp, $51
    add b
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    or c
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    or d
    and a
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    xor h
    xor b
    and l
    and l
    and h
    and e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    ld a, a
    and b
    ld c, a
    and d
    and b
    xor e
    xor e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and a
    or h
    or d
    and c
    and b
    xor l
    and e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    adc l
    sub h
    add [hl]
    add [hl]
    add h
    sub e
    sub d
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ret nc

    ld a, a
    xor e
    xor b
    xor d
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and b
    or d
    ld d, c
    or e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and a
    and h
    xor e
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and b
    or e
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
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
    or d
    and h
    and h
    ld a, a
    xor h
    and h
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
    and d
    and b
    xor l
    add sp, $57
    nop
    add b
    or c
    and h
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
    xor b
    xor l
    ld a, a
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
    and $51
    adc e
    and h
    or e
    call nc, $a27f
    and a
    and b
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
    adc a
    and b
    or c
    and e
    xor [hl]
    xor l
    and $4f
    adc [hl]
    and a
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc l
    sub h
    add [hl]
    add [hl]
    add h
    sub e
    and $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    or h
    or c
    or c
    cp b
    add sp, $7f
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
    ld d, c
    xor b
    xor l
    ld a, a
    ld d, b
    ld bc, $d0bf
    nop
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
    and d
    and b
    xor l
    add sp, $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    adc b
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
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    xor e
    and b
    or d
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    call nc, $b64f
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    jp nc, $b67f

    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    add a
    or h
    or d
    or e
    xor e
    and h
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    xor l
    or e
    xor [hl]
    rst $20
    ld d, a
    nop
    sub d
    and h
    and h
    ld a, a
    cp b
    and b
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
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
    and b
    or e
    or e
    xor e
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
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    or e
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
    xor d
    and h
    and h
    xor a
    ld d, c
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
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    xor b
    xor e
    xor e
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor l
    add sp, $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ret nc

    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    or e
    and h
    xor l
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, c
    add a
    or h
    or d
    or e
    xor e
    and h
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    rst $20
    ld c, a
    adc b
    jp nc, $b67f

    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld c, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    and h
    or c
    ld d, l
    or e
    and a
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    xor b
    xor h
    and b
    and [hl]
    xor b
    xor l
    and h
    and e
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    or h
    and c
    or e
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a155
    and h
    or e
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor h
    xor b
    xor l
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    ld a, a
    xor h
    and b
    xor l
    and b
    and [hl]
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and b
    or c
    and h
    xor e
    cp b
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    and b
    cp b
    add sp, $51
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
    ld a, a
    and b
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    or e
    and a
    and b
    or e
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
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
    xor l
    push de
    ld a, a
    xor e
    and h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    db $f4
    ld d, c
    and h
    or l
    and h
    xor l
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld d, l
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add b
    xor l
    and e
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    db $f4
    ld c, a
    adc b
    ld a, a
    or e
    or c
    xor b
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    ld d, l
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
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
    and h
    xor e
    or h
    and e
    and h
    ld a, a
    xor h
    and h
    add sp, $51
    adc [hl]
    xor l
    and h
    ld a, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and e
    and h
    and d
    xor b
    or d
    xor b
    xor [hl]
    xor l
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor h
    and h
    and b
    xor l
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    ld d, c
    and l
    and b
    xor b
    xor e
    or h
    or c
    and h
    ld [hl], l
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
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
    ld d, c
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
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $51
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
    ld c, a
    or [hl]
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
    and d
    xor e
    xor [hl]
    or d
    and h
    add sp, $57
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or e
    and b
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor [hl]
    and c
    or d
    and h
    or d
    or d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
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
    add sp, $57
    nop
    inc d
    db $f4
    ld a, a
    or [hl]
    and a
    cp b
    ld c, a
    and b
    or c
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    or c
    and h
    and $51
    adc b
    pop de
    xor e
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, b
    ld bc, $d0bf
    nop
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
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld a, a
    xor h
    cp b
    ld c, a
    or d
    or [hl]
    and h
    and h
    or e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    and $51
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    or c
    or h
    xor l
    or d
    ld c, a
    or l
    and h
    or c
    cp b
    ld a, a
    and l
    and b
    or d
    or e
    add sp, $51
    adc b
    or e
    call nc, $a47f
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    or c
    xor b
    and e
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld d, c
    and c
    and b
    and d
    xor d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc [hl]
    and a
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
    ld a, a
    and h
    or l
    and h
    or c
    ld c, a
    or d
    and h
    and h
    xor l
    ld a, a
    and b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld d, l
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    and $51
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    ld c, a
    xor [hl]
    xor l
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
    ld c, a
    or e
    and a
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    and h
    and e
    add sp, $51
    adc b
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
    ld c, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    add sp, $51
    adc b
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    db $f4
    ld a, a
    xor [hl]
    and l
    ld c, a
    and d
    xor [hl]
    or h
    or c
    or d
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and b
    ld c, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
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
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld d, c
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    ld d, l
    add c
    add b
    adc e
    adc e
    sub d
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
    and d
    and a
    and h
    and d
    xor d
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    xor h
    and b
    cp b
    ld a, a
    or c
    or h
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    xor [hl]
    or c
    or d
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $51
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
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
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
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $7f
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
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
    rst $20
    ld d, c
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
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $4f
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    and c
    cp b
    and h
    db $e3
    and c
    cp b
    and h
    rst $20
    ld d, a
    nop
    adc e
    and h
    or e
    call nc, $a17f
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub h
    xor h
    ld [hl], l
    ld a, a
    inc d
    and $4f
    sub [hl]
    and a
    and b
    or e
    call nc, $b67f
    or c
    xor [hl]
    xor l
    and [hl]
    and $51
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    and e
    and h
    and b
    xor e
    and $51
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $b67f
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    jp nc, $b64f

    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add a
    and h
    cp b
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $b27f
    or e
    xor b
    and d
    xor d
    ld d, c
    and a
    and b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and e
    and h
    xor e
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    and b
    or c
    xor [hl]
    xor h
    and b
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    and b
    or c
    xor [hl]
    xor h
    and b
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    xor h
    cp b
    ld c, a
    and b
    xor a
    xor a
    and h
    or e
    xor b
    or e
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add b
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
    db $f4
    ld a, a
    xor h
    cp b
    ld c, a
    add l
    add b
    sub c
    add l
    add h
    sub e
    add d
    add a
    ldh [$83], a
    ld a, a
    adc d
    adc [hl]
    ret nc

    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
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
    and a
    and b
    or l
    and h
    ld c, a
    or d
    and h
    and h
    xor l
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
    ld d, c
    or [hl]
    xor b
    and h
    xor e
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    or e
    xor b
    and d
    xor d
    add sp, $4f
    add b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    or h
    and l
    and l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or c
    and b
    xor l
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
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
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld d, c
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    and l
    and b
    or d
    or e
    and h
    or c
    ld c, a
    or e
    and a
    and b
    xor l
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
    ld a, a
    xor b
    or e
    ld d, c
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    add sp, $7f
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld c, a
    and c
    xor b
    or e
    ld a, a
    and e
    xor b
    or d
    and b
    xor a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sub [hl]
    and b
    xor l
    or e
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
    and b
    and [hl]
    and b
    xor b
    xor l
    and $51
    add l
    xor [hl]
    or c
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or c
    and h
    and b
    or d
    xor [hl]
    xor l
    db $f4
    ld c, a
    xor h
    cp b
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
    ld a, a
    xor b
    or d
    ld d, c
    and b
    xor e
    xor e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or c
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    add sp, $51
    ld d, b
    ld bc, $d0bf
    nop
    call nc, $b64f
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    jp nc, $a07f

    or e
    add sp, $51
    adc d
    and h
    and h
    xor a
    ld a, a
    and b
    xor l
    ld a, a
    and h
    cp b
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    and l
    xor [hl]
    or c
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
    and h
    ld a, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc h
    cp b
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
    ld a, a
    and a
    and b
    and e
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
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld d, l
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and h
    and b
    xor d
    add sp, $51
    adc e
    xor b
    xor d
    and h
    ld a, a
    adc b
    ld a, a
    xor a
    or c
    xor [hl]
    xor h
    xor b
    or d
    and h
    and e
    db $f4
    ld c, a
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
    ld a, a
    xor b
    or e
    add sp, $51
    add d
    and b
    or e
    and d
    and a
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    db $f4
    ld d, c
    and b
    xor l
    and e
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    xor e
    and h
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
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    and [hl]
    xor [hl]
    or e
    or e
    and h
    xor l
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    xor a
    or c
    xor [hl]
    xor h
    xor b
    or d
    and h
    and e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    cp b
    and h
    or e
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or d
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    db $f4
    ld d, c
    or d
    xor [hl]
    ld a, a
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
    or [hl]
    and b
    xor b
    or e
    ld c, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    and $57
    nop
    inc d
    db $f4
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    or h
    or c
    or c
    cp b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and $51
    add l
    add b
    sub c
    add l
    add h
    sub e
    add d
    add a
    ldh [$83], a
    ld a, a
    xor b
    or d
    ld c, a
    and b
    and [hl]
    xor b
    or e
    and b
    or e
    and h
    and e
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
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld d, c
    or d
    xor h
    and b
    and d
    xor d
    ld a, a
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld c, a
    or d
    or e
    xor b
    and d
    xor d
    rst $20
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
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
    and b
    or d
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    call nc, $b67f
    or c
    xor [hl]
    xor l
    and [hl]
    and $51
    add e
    xor [hl]
    xor l
    push de
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
    and a
    xor b
    or d
    ld a, a
    and [hl]
    xor b
    and l
    or e
    and $51
    add d
    and b
    or e
    and d
    and a
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    db $f4
    ld d, c
    and b
    xor l
    and e
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    xor e
    and h
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
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    and e
    and h
    and b
    or c
    ld [hl], l
    ld d, c
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    and d
    and b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    and $51
    sbc b
    and h
    or d
    db $f4
    ld a, a
    and h
    or a
    and b
    and d
    or e
    xor e
    cp b
    add sp, $7f
    sub e
    and a
    and b
    or e
    ld c, a
    xor e
    xor [hl]
    or l
    and h
    xor e
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $51
    sub [hl]
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
    ld a, a
    and b
    and [hl]
    or c
    and h
    and h
    ld c, a
    xor b
    or e
    call nc, $a07f
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld d, l
    xor h
    and b
    or e
    and d
    and a
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    and $57
    nop
    add a
    and b
    or l
    and h
    ld a, a
    adc b
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    and l
    and b
    and d
    and h
    and e
    ld c, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    and $51
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
    and b
    or d
    xor d
    and $51
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    adc b
    sub $a4
    ld c, a
    and c
    and h
    and b
    or e
    and h
    xor l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor l
    or h
    xor h
    and h
    or c
    xor [hl]
    or h
    or d
    ld d, l
    xor [hl]
    and d
    and d
    and b
    or d
    xor b
    xor [hl]
    xor l
    or d
    rst $20
    ld d, a
    nop
    add a
    and b
    or l
    and h
    ld a, a
    adc b
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    and l
    and b
    xor b
    xor e
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
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
    and b
    or d
    xor d
    and $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and l
    and b
    xor b
    xor e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    ld [hl], l
    ld c, a
    adc [hl]
    and a
    rst $20
    ld a, a
    adc l
    and h
    or l
    and h
    or c
    ld a, a
    xor h
    xor b
    xor l
    and e
    rst $20
    ld d, a
    nop
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
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, c
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld c, a
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    or e
    and $57
    nop
    add l
    xor b
    xor l
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and [hl]
    xor [hl]
    add sp, $57
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or h
    and e
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
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
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
    xor h
    and h
    ld [hl], l
    ld a, a
    ld d, c
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    and l
    xor e
    or h
    xor d
    and h
    rst $20
    ld d, a
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
    cp b
    xor [hl]
    or h
    ld c, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    adc b
    ld a, a
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
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld c, a
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    or e
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    or h
    xor l
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $ab4f
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and a
    and b
    or c
    xor a
    and h
    or c
    ld d, l
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
    adc b
    ld a, a
    and e
    xor [hl]
    or h
    and c
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or d
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    and b
    or d
    ld d, c
    or e
    and a
    xor b
    or d
    ld a, a
    and [hl]
    or h
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    xor a
    and b
    or c
    or e
    cp b
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    and b
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld d, c
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    and b
    cp b
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    and d
    and b
    xor d
    and h
    or [hl]
    and b
    xor e
    xor d
    add sp, $4f
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    xor b
    or e
    ld d, c
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    and a
    and h
    xor e
    xor a
    and h
    and e
    db $f4
    ld c, a
    or h
    or d
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    and b
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and b
    ld c, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    rst $20
    ld d, c
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
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
    adc b
    ld a, a
    and e
    and h
    and d
    xor b
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
    db $e3
    and b
    xor l
    and e
    db $e3
    ld d, c
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    and h
    or a
    or e
    or c
    and h
    xor h
    and h
    ld a, a
    and h
    xor l
    and e
    add sp, $57
    nop
    adc e
    and h
    or e
    call nc, $a67f
    and h
    or e
    ld a, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    ld c, a
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
    rst $20
    ld d, c
    adc b
    ld a, a
    xor a
    or c
    xor [hl]
    xor h
    xor b
    or d
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
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
    rst $20
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    call nc, $b64f
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    add sp, $51
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
    and d
    xor [hl]
    xor h
    and h
    add sp, $57
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
    adc e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
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
    xor [hl]
    or h
    or e
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $ac7f
    xor [hl]
    or l
    and h
    or d
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and e
    and h
    or l
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    or d
    or e
    or c
    and b
    or e
    and h
    and [hl]
    xor b
    and h
    or d
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or h
    xor a
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    db $f4
    ld d, l
    xor e
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
    sub [hl]
    and a
    and b
    or e
    call nc, $aa7f
    and h
    and h
    xor a
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
    ld d, c
    adc e
    and h
    or e
    call nc, $a67f
    and h
    or e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    rst $20
    ld d, c
    adc b
    jp nc, $b67f

    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, a
    nop
    add b
    or c
    and h
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
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    and $51
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
    ld c, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld d, c
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    add sp, $4f
    adc b
    or e
    call nc, $ae7f
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
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $a67f
    or c
    xor [hl]
    or [hl]
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    xor e
    cp b
    ld d, c
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    add sp, $7f
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld c, a
    xor b
    or e
    pop de
    xor e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    and b
    and a
    db $f4
    ld a, a
    or [hl]
    and h
    ld a, a
    adc d
    adc [hl]
    ret nc

    ld a, a
    and b
    ld c, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    xor b
    or e
    ld a, a
    and b
    ld c, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or d
    xor [hl]
    ld c, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    and l
    and h
    xor e
    or e
    ld a, a
    and b
    ld d, c
    xor e
    xor b
    or e
    or e
    xor e
    and h
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
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    and b
    and a
    db $f4
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld d, c
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
    ld a, a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
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
    call nc, $a07f
    ld c, a
    and d
    xor [hl]
    xor h
    xor h
    xor [hl]
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld a, a
    and b
    xor l
    xor l
    xor [hl]
    cp b
    ld c, a
    xor h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld d, c
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld c, a
    and a
    and b
    and e
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $51
    adc b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    xor e
    and b
    or d
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    call nc, $b64f
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    add sp, $51
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    or c
    and h
    add sp, $57
    nop
    sub d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
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
    xor b
    or d
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    add b
    adc e
    ld a, a
    adc a
    add b
    sub c
    adc d
    ld c, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $51
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
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
    xor h
    and b
    xor d
    and h
    ld c, a
    or h
    xor a
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    xor b
    xor l
    and e
    add sp, $57
    nop
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    add sp, $7f
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    or [hl]
    and b
    xor l
    or e
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
    ld c, a
    or d
    xor [hl]
    xor h
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
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $57
    nop
    add a
    or h
    and a
    and $7f
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    and $51
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
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
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    cp b
    and h
    or e
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld c, a
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    xor l
    cp b
    add sp, $7f
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
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
    and $57
    nop
    adc e
    and h
    or e
    call nc, $a17f
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    rst $20
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    ld a, a
    xor b
    or d
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or d
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    cp b
    and h
    or e
    and $51
    ld d, b
    ld bc, $d0bf
    nop
    ld a, a
    xor b
    or d
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or d
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    rst $20
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
    or d
    xor a
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    adc b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    xor d
    xor b
    and e
    or d
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    and c
    xor b
    or e
    ld a, a
    or d
    and b
    and e
    db $f4
    ld c, a
    and b
    and d
    or e
    or h
    and b
    xor e
    xor e
    cp b
    add sp, $57
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $51
    adc b
    ld a, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    xor d
    xor b
    and e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    and a
    and h
    ld a, a
    or d
    and d
    xor [hl]
    and l
    and l
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and a
    and h
    ld d, c
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    add sp, $51
    add c
    xor [hl]
    cp b
    db $f4
    ld a, a
    and a
    and b
    or d
    ld a, a
    and a
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
    or e
    and h
    xor l
    ld c, a
    and d
    xor [hl]
    and d
    xor d
    cp b
    ld [hl], l
    ld d, a
    nop
    sbc b
    and h
    or d
    or e
    and h
    or c
    and e
    and b
    cp b
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    or d
    xor e
    xor b
    xor a
    xor a
    and h
    and e
    ld d, c
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    xor b
    xor l
    ld c, a
    and l
    or c
    xor [hl]
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    xor d
    xor b
    and e
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    and a
    and h
    ld d, c
    or d
    and a
    and b
    or c
    and h
    and e
    ld a, a
    and a
    xor b
    or d
    ld a, a
    ld d, h
    ld c, a
    add c
    add b
    adc e
    adc e
    sub d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    add sp, $51
    add a
    and b
    and a
    and b
    and a
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    or h
    or c
    and h
    ld c, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    and e
    and b
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
    or d
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    and b
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
    ld a, a
    xor h
    and h
    and $51
    add [hl]
    xor [hl]
    xor [hl]
    and e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    add l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    and e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    and b
    and [hl]
    or c
    and h
    and h
    and b
    and c
    xor e
    and h
    add sp, $51
    ld d, b
    ld bc, $d0bf
    nop
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    xor a
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    adc b
    ld [hl], l
    ld a, a
    sbc b
    xor [hl]
    or [hl]
    and d
    and a
    rst $20
    ld d, c
    sub h
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld a, a
    sub d
    and h
    and h
    db $f4
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and b
    or c
    and h
    ld d, c
    and c
    xor b
    or e
    xor b
    xor l
    and [hl]
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
    ld c, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or e
    xor [hl]
    xor h
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    ld d, c
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, c
    add b
    xor b
    cp b
    and h
    and h
    rst $20
    ld a, a
    adc [hl]
    or h
    and d
    and a
    rst $20
    ld c, a
    adc [hl]
    xor l
    and h
    ld a, a
    xor c
    and b
    and c
    and c
    and h
    and e
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    add a
    and h
    and a
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    and h
    xor b
    or d
    or e
    cp b
    rst $20
    ld d, c
    inc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or c
    and b
    or c
    and h
    ld d, c
    or d
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld a, a
    add [hl]
    and h
    or e
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    or d
    and a
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or c
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
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
    and b
    xor e
    xor e
    ld a, a
    adc b
    sub $a4
    ld c, a
    and c
    and h
    and h
    xor l
    ld a, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or c
    and h
    ld d, l
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
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
    sub d
    xor [hl]
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $4f
    adc b
    jp nc, $b67f

    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
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
    xor l
    push de
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and h
    xor e
    and e
    and h
    or c
    or d
    ld a, a
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    or [hl]
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
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
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
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    or d
    and a
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    sub b
    sub [hl]
    adc b
    adc e
    add l
    adc b
    sub d
    add a
    and $51
    adc b
    jp nc, $ae7f

    xor l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    ld hl, sp-$0c
    ld c, a
    or d
    xor [hl]
    ld a, a
    and a
    or h
    or c
    or c
    cp b
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
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
    xor b
    or d
    add sp, $51
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    xor b
    or d
    ld c, a
    or d
    xor [hl]
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
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
    xor l
    or h
    cp c
    cp c
    xor e
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    add b
    xor l
    and e
    db $f4
    ld a, a
    and b
    xor l
    and e
    rst $20
    ld a, a
    sub h
    xor h
    ld [hl], l
    ld d, c
    sub [hl]
    and h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, c
    xor c
    or h
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    xor b
    or e
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
    and a
    xor b
    xor e
    and h
    ld a, a
    and b
    and [hl]
    xor [hl]
    add sp, $51
    sub [hl]
    and h
    ld a, a
    and l
    and h
    xor e
    or e
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
    xor b
    or e
    db $f4
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    add b
    xor l
    and e
    db $f4
    ld a, a
    and b
    xor l
    and e
    rst $20
    ld a, a
    sub h
    and a
    ld [hl], l
    ld d, c
    sub [hl]
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and b
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    or c
    and [hl]
    and h
    xor [hl]
    or h
    or d
    ld d, l
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld d, c
    and b
    or [hl]
    and b
    cp b
    add sp, $7f
    adc b
    or e
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    or h
    or d
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and b
    xor l
    and [hl]
    or c
    cp b
    rst $20
    ld d, a
    nop
    add a
    xor b
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
    or l
    and h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    or c
    and h
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    and $51
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or d
    xor [hl]
    or c
    or e
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $7f
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld d, c
    and l
    or c
    and h
    and h
    db $f4
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
    and c
    and b
    or e
    or e
    xor e
    and h
    and $51
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
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $51
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    sub e
    add b
    adc l
    adc b
    add b
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    adc e
    adc b
    sbc c
    add sp, $51
    adc b
    jp nc, $a57f

    xor b
    xor l
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    jp nc, $a14f

    xor [hl]
    or c
    and h
    and e
    ld a, a
    or d
    xor b
    xor e
    xor e
    cp b
    rst $20
    ld d, c
    add a
    or h
    and a
    ld [hl], l
    ld a, a
    sub [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $4f
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld d, a
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
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
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
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
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, a
    and b
    xor l
    ld a, a
    xor [hl]
    and e
    and e
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
    and d
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    or c
    and h
    and [hl]
    or h
    xor e
    and b
    or c
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
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
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld c, a
    or [hl]
    and b
    or d
    add sp, $7f
    sub d
    xor [hl]
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
    add e
    xor [hl]
    xor l
    push de
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
    add l
    add b
    adc e
    adc d
    adc l
    add h
    sub c
    ld a, a
    xor [hl]
    and l
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    ld d, c
    add [hl]
    sbc b
    adc h
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and a
    and b
    xor l
    and e
    or d
    xor [hl]
    xor h
    and h
    and $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or d
    and b
    cp b
    ld a, a
    and a
    xor b
    or d
    ld c, a
    and e
    and b
    and e
    db $f4
    ld a, a
    or [hl]
    and a
    xor [hl]
    call nc, $ae7f
    or h
    or e
    ld d, c
    or e
    or c
    and b
    xor b
    xor l
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
    or c
    xor [hl]
    and b
    and e
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld d, c
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and a
    and b
    xor l
    and e
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    or e
    and a
    and b
    xor l
    ld a, a
    add l
    add b
    adc e
    adc d
    adc l
    add h
    sub c
    add sp, $51
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
    xor h
    and h
    and h
    or e
    ld a, a
    and a
    xor b
    xor h
    rst $20
    ld d, a
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
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
    add h
    add b
    sub c
    adc e
    db $f4
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    and h
    and b
    and d
    and a
    and h
    or c
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, c
    or c
    or h
    xor l
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add b
    add d
    add b
    add e
    add h
    adc h
    sbc b
    ld a, a
    xor b
    xor l
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    and $51
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    xor b
    or c
    xor [hl]
    or h
    and h
    or e
    or e
    and h
    or d
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld d, c
    and a
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    xor e
    cp b
    ld a, a
    and l
    or h
    xor l
    xor l
    cp b
    rst $20
    ld d, a
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
    adc b
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor a
    xor e
    or h
    or d
    and a
    ld a, a
    and e
    xor [hl]
    xor e
    xor e
    or d
    add sp, $51
    add c
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
    or d
    and h
    and h
    xor h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld d, c
    sub d
    sub h
    sub c
    add l
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    add sp, $4f
    adc l
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    add sp, $7f
    adc b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, a
    and c
    and h
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld a, a
    or c
    and b
    or c
    and h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and c
    or c
    and b
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    and l
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
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
    adc h
    adc [hl]
    adc [hl]
    adc h
    adc [hl]
    adc [hl]
    ld a, a
    adc h
    adc b
    adc e
    adc d
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    or h
    cp b
    ld a, a
    xor b
    or e
    ld a, a
    and b
    or e
    ld c, a
    adc h
    adc [hl]
    adc [hl]
    adc h
    adc [hl]
    adc [hl]
    ld a, a
    add l
    add b
    sub c
    adc h
    add sp, $51
    adc b
    or e
    call nc, $b27f
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
    ld c, a
    and c
    and h
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
    and a
    and h
    and b
    xor e
    or e
    and a
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and c
    and h
    and b
    or h
    or e
    cp b
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
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld d, c
    or e
    or c
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    add sp, $7f
    adc b
    ld a, a
    and c
    and h
    or e
    ld c, a
    xor b
    or e
    call nc, $a37f
    and h
    xor e
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    rst $20
    ld d, a
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub d
    add b
    adc e
    adc [hl]
    adc l
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
    or e
    and a
    and b
    or e
    call nc, $b17f
    or h
    xor l
    ld a, a
    and c
    cp b
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld c, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
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
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    xor b
    or d
    xor l
    push de
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld a, a
    and b
    ld d, c
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor c
    xor [hl]
    and c
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, a
    and a
    xor b
    or d
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    add sp, $51
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
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    adc b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld d, c
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
    and h
    and d
    xor b
    and e
    and h
    ld c, a
    or [hl]
    and a
    xor [hl]
    xor h
    ld a, a
    adc b
    ld a, a
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
    ld [hl], l
    ld d, a
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
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
    add [hl]
    sbc b
    adc h
    call nc, $964f
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    ld a, a
    and c
    and h
    and [hl]
    and b
    xor l
    ld d, c
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
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
    and a
    xor b
    xor e
    and h
    ld a, a
    and b
    and [hl]
    xor [hl]
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld a, a
    and d
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and a
    and h
    or c
    ld d, l
    and b
    or d
    ld a, a
    and b
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
    rst $20
    ld d, c
    adc b
    ld a, a
    and c
    and h
    or e
    ld a, a
    or d
    and a
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
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld a, a
    or e
    and b
    xor e
    and h
    xor l
    or e
    and h
    and e
    add sp, $57
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and h
    or l
    and h
    or c
    ld c, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld d, c
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
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    add b
    adc e
    ld a, a
    adc a
    add b
    sub c
    adc d
    and $51
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    adc b
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
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    add d
    add b
    sub e
    add h
    sub c
    adc a
    adc b
    add h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    add d
    add b
    sub e
    add h
    sub c
    adc a
    adc b
    add h
    add sp, $7f
    adc b
    or d
    xor l
    push de
    ld d, l
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
    and $57
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and b
    ld a, a
    and c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    rst $20
    ld d, c
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
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    ld a, a
    and c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    ld d, l
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
    sub h
    and a
    ld [hl], l
    ld a, a
    sub h
    xor h
    ld [hl], l
    ld a, a
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld d, c
    adc b
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld [hl], l
    ld c, a
    xor b
    or e
    ld [hl], l
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld [hl], l
    ld d, c
    and b
    xor l
    and e
    ld [hl], l
    ld a, a
    and [hl]
    xor b
    and [hl]
    and [hl]
    xor e
    and h
    ld [hl], l
    ld a, a
    or d
    xor [hl]
    ld c, a
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    ld [hl], l
    ld a, a
    cp b
    and h
    or d
    ld [hl], l
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, c
    or l
    and h
    or c
    cp b
    ld a, a
    xor h
    or h
    and d
    and a
    ld [hl], l
    ld a, a
    and h
    and h
    and h
    xor d
    rst $20
    ld c, a
    add b
    xor l
    and e
    ld [hl], l
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    xor e
    cp b
    ld [hl], l
    ld d, c
    adc c
    or h
    or d
    or e
    ld a, a
    or c
    and b
    or l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld c, a
    adc [hl]
    and a
    db $f4
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    rst $20
    ld d, c
    ld [hl], l
    add a
    or h
    and [hl]
    ld a, a
    xor b
    or e
    ld [hl], l
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $b17f
    xor b
    and [hl]
    and a
    or e
    ld [hl], l
    ld d, c
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld [hl], l
    ld a, a
    or d
    xor b
    and [hl]
    and a
    ld [hl], l
    ld a, a
    sub d
    xor [hl]
    ld c, a
    xor l
    xor b
    and d
    and h
    ld [hl], l
    ld a, a
    add d
    or h
    or e
    and h
    ld [hl], l
    ld d, c
    ld [hl], l
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    adc e
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
    ld c, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld a, a
    adc b
    ld a, a
    and d
    and a
    and b
    or e
    or e
    and h
    and e
    ld d, l
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    ld a, a
    adc b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    or d
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    or e
    xor b
    xor h
    and h
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and d
    and a
    and b
    or e
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and a
    and b
    xor l
    and e
    or d
    rst $20
    ld d, c
    adc e
    and h
    or e
    call nc, $a17f
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, c
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
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    and b
    cp b
    db $f4
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
    or d
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
    xor h
    cp b
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and h
    and b
    or e
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    add sp, $51
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld d, c
    xor h
    and h
    and b
    xor e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and e
    and h
    and d
    xor b
    and e
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    add sp, $51
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    xor b
    and l
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and h
    and b
    or e
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    or d
    or e
    or h
    and l
    and l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and e
    and h
    xor e
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
    rst $20
    ld d, a
    nop
    adc e
    and b
    or e
    and h
    xor e
    cp b
    db $f4
    ld a, a
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld d, c
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld c, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    add sp, $51
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld c, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    add sp, $57
    nop
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    and b
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and e
    and b
    cp b
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
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
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and e
    xor b
    or d
    or e
    or c
    and b
    and d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld d, l
    and b
    ld a, a
    xor a
    and b
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    add c
    add h
    add b
    sub h
    sub e
    sbc b
    add sp, $51
    adc e
    and h
    and b
    or c
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld c, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    db $e3
    db $e3
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld d, c
    or d
    or e
    and b
    cp b
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
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor c
    xor [hl]
    and c
    ld a, a
    and b
    or e
    ld a, a
    and a
    and b
    xor l
    and e
    rst $20
    ld d, a
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
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
    rst $20
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    ld a, a
    xor b
    or d
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    add sp, $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
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
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld c, a
    add c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, a
    nop
    ld d, d
    rst $20
    ld a, a
    adc b
    or e
    call nc, $ac4f
    xor b
    xor l
    and e
    db $e3
    and c
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    ld a, a
    and a
    xor b
    xor d
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    ld d, l
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
    and h
    and h
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, a
    or e
    xor [hl]
    xor l
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld d, c
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
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
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld d, c
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    or e
    xor b
    xor h
    xor b
    and e
    add sp, $4f
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    xor l
    cp b
    ld d, c
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld c, a
    or d
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
    add sp, $57
    nop
    sub c
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    add a
    and h
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or e
    xor [hl]
    xor [hl]
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
    xor l
    ld a, a
    xor h
    cp b
    ld d, c
    and a
    xor b
    xor d
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    xor l
    push de
    ld c, a
    xor a
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    or e
    and h
    xor l
    or e
    xor b
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
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld c, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    or e
    and h
    xor l
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, c
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    and $51
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld c, a
    adc b
    jp nc, $b67f

    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    sub [hl]
    and a
    and b
    or e
    and $7f
    sub [hl]
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    or d
    ld a, a
    add e
    sub h
    adc l
    sub d
    adc a
    add b
    sub c
    add d
    add h
    and $51
    add e
    add b
    sub c
    adc d
    ld a, a
    add d
    add b
    sub l
    add h
    rst $20
    ld a, a
    add a
    or h
    or c
    or c
    cp b
    rst $20
    ld d, c
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    sub $a4
    ld a, a
    or d
    and b
    xor b
    and e
    ld c, a
    xor b
    or e
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
    add e
    sub h
    adc l
    sub d
    adc a
    add b
    sub c
    add d
    add h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
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
    or c
    and h
    ld d, c
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
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    xor b
    or d
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, c
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor h
    and h
    add sp, $7f
    adc b
    or e
    call nc, $a64f
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    or h
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    add b
    xor l
    and e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    and $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    adc d
    adc [hl]
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    add sp, $51
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
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    ld c, a
    or e
    and a
    and h
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
    add [hl]
    sbc b
    adc h
    add sp, $57
    nop
    add b
    xor l
    and e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    and $4f
    sub [hl]
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and l
    and b
    xor b
    xor e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, c
    and c
    and h
    and b
    or e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and c
    cp b
    ld c, a
    and b
    ld a, a
    or e
    xor b
    xor l
    cp b
    ld a, a
    xor h
    and b
    or c
    and [hl]
    xor b
    xor l
    add sp, $51
    adc b
    jp nc, $a67f

    or h
    and h
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $ab7f
    and h
    or l
    and h
    xor e
    or d
    ld d, c
    and b
    or c
    and h
    xor l
    push de
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    cp b
    and h
    or e
    ld [hl], l
    ld d, a
    nop
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
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    and a
    or h
    and a
    and $51
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
    or d
    and a
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    and h
    and d
    and a
    xor l
    xor b
    or b
    or h
    and h
    ld d, c
    xor b
    xor l
    ld a, a
    and b
    ld a, a
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
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    and $51
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
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $57
    nop
    sub d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
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
    xor b
    or e
    db $e3
    db $e3
    or e
    and a
    and h
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    and h
    sub $a4
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and c
    and h
    and h
    xor l
    ld d, l
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
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
    add e
    add h
    adc a
    sub e
    add sp, $4f
    sub d
    sub e
    adc [hl]
    sub c
    add h
    call nc, $a17f
    and b
    or c
    and [hl]
    and b
    xor b
    xor l
    ld d, l
    or d
    and b
    xor e
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and a
    and h
    and b
    xor a
    and $4f
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    and $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    xor h
    xor b
    or d
    or d
    ld a, a
    or e
    and a
    xor b
    or d
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
    and d
    and a
    and b
    xor l
    and d
    and h
    rst $20
    ld d, c
    add a
    or h
    and a
    and $7f
    adc b
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    and b
    ld a, a
    and a
    or h
    and d
    xor d
    or d
    or e
    and h
    or c
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    cp b
    and h
    and b
    and a
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
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
    or e
    and a
    and h
    xor h
    ld [hl], l
    ld d, c
    add b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or d
    ld d, l
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b27f

    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    and c
    and b
    or c
    and [hl]
    and b
    xor b
    xor l
    ld d, c
    or d
    and b
    xor e
    and h
    add sp, $7f
    sub [hl]
    and a
    and h
    xor l
    call nc, $b37f
    and a
    and h
    ld c, a
    xor l
    and h
    or a
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    and $57
    nop
    sub [hl]
    and a
    and h
    or c
    and h
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
    call nc, $a77f
    and b
    or l
    and h
    ld a, a
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
    or d
    xor [hl]
    xor [hl]
    xor l
    rst $20
    ld d, c
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
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $57
    nop
    add a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    ld c, a
    or e
    xor [hl]
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
    add e
    add h
    adc a
    sub e
    add sp, $51
    sub d
    sub e
    adc [hl]
    sub c
    add h
    and $7f
    adc b
    sub $a4
    ld a, a
    or d
    and d
    xor [hl]
    xor a
    and h
    and e
    ld c, a
    xor b
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
    ld a, a
    and a
    and b
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    ld c, a
    and c
    and b
    or c
    and [hl]
    and b
    xor b
    xor l
    or d
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
    and h
    or e
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and b
    xor l
    and e
    ld c, a
    adc b
    ld a, a
    and b
    or c
    and h
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld d, c
    xor b
    xor l
    ld a, a
    or d
    cp b
    xor l
    and d
    ld a, a
    or [hl]
    xor b
    or e
    and a
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
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and b
    xor l
    and e
    ld d, c
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
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    ld a, a
    xor b
    or e
    ld c, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    add sp, $51
    sub [hl]
    and h
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
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    xor [hl]
    or l
    and h
    rst $20
    ld d, a
    nop
    add c
    or h
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    and $51
    adc b
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld c, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $51
    adc b
    or e
    call nc, $a67f
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    and b
    or d
    or e
    ld c, a
    and l
    or c
    or h
    or d
    or e
    or c
    and b
    or e
    xor b
    xor l
    and [hl]
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
    and c
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
    and h
    ld a, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    ld d, l
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
    and $51
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
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $51
    ld [hl], l
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
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld c, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and h
    and b
    or d
    xor b
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    ld d, l
    xor h
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
    and $57
    nop
    add c
    cp b
    and h
    rst $20
    ld a, a
    adc e
    and h
    or e
    call nc, $a27f
    and a
    and b
    or e
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
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
    and a
    and h
    and b
    or c
    and e
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
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
    and $51
    sub e
    and a
    and h
    cp b
    sub $a4
    ld a, a
    or e
    and b
    xor d
    and h
    xor l
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
    ld d, l
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    add sp, $51
    add b
    or c
    and h
    ld a, a
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
    ld c, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    or d
    and b
    and l
    and h
    and $57
    nop
    adc b
    ld a, a
    xor a
    xor b
    and d
    xor d
    and h
    and e
    ld a, a
    or h
    xor a
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
    xor l
    xor b
    and d
    and h
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $51
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    ld d, b
    ld bc, $d0bf
    nop
    ld a, a
    xor b
    or d
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    add sp, $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
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
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld d, c
    or h
    or d
    and h
    and l
    or h
    xor e
    ld a, a
    cp b
    and h
    or e
    ld [hl], l
    ld c, a
    adc b
    ld a, a
    xor a
    or c
    xor [hl]
    xor h
    xor b
    or d
    and h
    db $f4
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld d, c
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
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
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and d
    and b
    xor l
    ld a, a
    adc b
    ld d, c
    and h
    or a
    xor a
    and h
    and d
    or e
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
    and l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    db $f4
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $a67f

    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    xor b
    xor h
    xor a
    and b
    or e
    xor b
    and h
    xor l
    or e
    db $f4
    ld a, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld d, c
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
    xor h
    cp b
    ld c, a
    xor a
    or c
    and h
    or d
    and h
    xor l
    or e
    rst $20
    ld d, c
    add a
    or h
    or c
    or c
    cp b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
