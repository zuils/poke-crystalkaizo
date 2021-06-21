; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    nop
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    add d
    and b
    xor e
    xor e
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
    inc d
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
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    call nc, $917f
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
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld d, c
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
    ld a, a
    and c
    cp b
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
    rst $20
    ld d, c
    ld [hl], l
    sub h
    xor h
    ld [hl], l
    ld a, a
    sub [hl]
    and a
    and b
    or e
    call nc, $937f
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
    and $57
    nop
    inc d
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
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
    or e
    and a
    and b
    or e
    ld c, a
    sub [hl]
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    and $51
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
    xor a
    or c
    xor [hl]
    or h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    cp b
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
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
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
    or e
    and a
    and b
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, c
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
    db $f4
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld c, a
    cp b
    xor [hl]
    or h
    and $51
    inc d
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld c, a
    cp b
    xor [hl]
    or h
    ret nc

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
    ld d, c
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    jp nc, $b27f

    xor b
    and d
    xor d
    ld a, a
    xor b
    xor l
    ld c, a
    and c
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor e
    and e
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
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    db $f4
    ld c, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    xor h
    and b
    or d
    and a
    and h
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
    call nc, $a77f
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    xor h
    xor [hl]
    or l
    xor b
    and h
    ld a, a
    and a
    and h
    or c
    xor [hl]
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    or h
    xor h
    ld [hl], l
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
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
    and $57
    nop
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    db $f4
    ld c, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    rst $20
    ld d, c
    add b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and a
    and h
    or c
    xor [hl]
    xor b
    and d
    ld c, a
    xor e
    xor b
    and c
    and h
    or c
    and b
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
    ld d, c
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
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    or c
    xor [hl]
    and d
    xor d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and a
    and b
    or c
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
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
    rst $20
    ld d, c
    adc b
    jp nc, $a27f

    and h
    or c
    or e
    and b
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor a
    and b
    or d
    or d
    and h
    and e
    rst $20
    ld a, a
    add b
    or [hl]
    or [hl]
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld d, c
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
    ld a, a
    xor h
    xor [hl]
    and e
    and h
    or d
    or e
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and l
    and b
    xor b
    xor e
    rst $20
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
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc l
    add h
    sub [hl]
    ld a, a
    add c
    add b
    sub c
    adc d
    ld d, c
    sub e
    adc [hl]
    sub [hl]
    adc l
    add sp, $7f
    ld a, a
    sub e
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
    ld c, a
    xor e
    and b
    and e
    cp b
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    and b
    ld d, c
    xor e
    xor [hl]
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
    db $f4
    ld c, a
    inc d
    add sp, $51
    sub [hl]
    and a
    and b
    or e
    and $7f
    sub e
    and a
    and b
    or e
    ld a, a
    xor e
    and b
    and e
    cp b
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    and $51
    add b
    or [hl]
    or [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    sub $a4
    ld c, a
    xor b
    xor l
    or e
    or c
    xor [hl]
    and e
    or h
    and d
    and h
    and e
    ld a, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    rst $20
    ld d, c
    adc b
    ld a, a
    and c
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    call nc, $b14f
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor a
    or c
    xor [hl]
    or h
    and e
    ld a, a
    xor [hl]
    and l
    ld d, c
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld c, a
    and b
    and d
    and d
    xor [hl]
    xor h
    xor a
    xor e
    xor b
    or d
    and a
    and h
    and e
    add sp, $51
    add a
    and h
    and a
    db $f4
    ld a, a
    xor a
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or [hl]
    and b
    cp b
    add sp, $7f
    adc b
    ret nc

    ld a, a
    and c
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    or h
    and e
    ld d, c
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    xor h
    xor [hl]
    xor h
    db $f4
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
    db $f4
    ld c, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    or e
    xor [hl]
    ld c, a
    and b
    ld a, a
    or d
    and a
    xor b
    xor a
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
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
    xor [hl]
    or l
    and h
    or c
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld d, c
    or [hl]
    xor b
    or e
    and a
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
    or d
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and b
    and d
    xor d
    and e
    or c
    xor [hl]
    xor a
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
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld c, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld a, a
    adc a
    add b
    sub d
    sub d
    rst $20
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and e
    and h
    xor a
    and b
    or c
    or e
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
    ld d, c
    or d
    and a
    xor b
    xor a
    db $f4
    ld a, a
    adc b
    ld a, a
    and l
    and h
    xor e
    or e
    ld a, a
    or d
    and b
    and e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
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
    and c
    and h
    ld d, c
    and b
    and c
    xor e
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
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
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
    and a
    and b
    or e
    ld a, a
    adc a
    add b
    sub d
    sub d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld d, c
    cp c
    xor b
    xor a
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $b17f
    and h
    and b
    or d
    or d
    or h
    or c
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    sub [hl]
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    add l
    adc e
    sbc b
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    and $51
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
    xor h
    and h
    and b
    xor l
    ld c, a
    and c
    cp b
    ld a, a
    add l
    adc e
    sbc b
    and $57
    nop
    adc b
    ld a, a
    or d
    and b
    or [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld c, a
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    rst $20
    ld d, c
    adc b
    ld a, a
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
    cp b
    xor [hl]
    or h
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    and l
    and b
    or c
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld d, c
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    and h
    or a
    and b
    and d
    or e
    xor e
    cp b
    add sp, $51
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld a, a
    and b
    ld c, a
    and l
    xor e
    or h
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    and $51
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    call nc, $ab7f
    xor b
    xor d
    and h
    ld c, a
    xor h
    and b
    and [hl]
    xor b
    and d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    or c
    or h
    xor h
    xor [hl]
    or c
    or d
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    add sp, $51
    adc b
    or e
    ld a, a
    xor c
    or h
    or d
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
    ld c, a
    or d
    xor b
    and [hl]
    and a
    db $f4
    ld a, a
    inc d
    add sp, $51
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or d
    xor [hl]
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and $51
    add [hl]
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
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
    and d
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    or d
    and a
    xor b
    xor a
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and c
    and h
    ld c, a
    and d
    and a
    and h
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    add a
    and h
    and a
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld c, a
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
    rst $20
    ld d, c
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
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
    adc b
    ld a, a
    or d
    and b
    or [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    adc h
    adc [hl]
    sub c
    sub e
    sbc b
    ld a, a
    xor [hl]
    and l
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
    add [hl]
    sbc b
    adc h
    rst $20
    ld d, c
    sub e
    and a
    db $e3
    or e
    and a
    and b
    or e
    call nc, $a97f
    or h
    or d
    or e
    ld c, a
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
    rst $20
    ld d, c
    adc b
    ld a, a
    and b
    and d
    or e
    or h
    and b
    xor e
    xor e
    cp b
    ld a, a
    or [hl]
    and h
    xor l
    or e
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
    call nc, $a47f
    xor l
    or e
    or c
    and b
    xor l
    and d
    and h
    ld d, c
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and h
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    add sp, $4f
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
    ld a, a
    or e
    and a
    and b
    or e
    and $51
    add c
    or h
    or e
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
    or [hl]
    and b
    or d
    ld c, a
    and l
    xor e
    xor [hl]
    and b
    or e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld d, c
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
    ld a, a
    and [hl]
    and a
    xor [hl]
    or d
    or e
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    rst $20
    ld a, a
    sub d
    xor [hl]
    ld a, a
    adc b
    ld d, c
    and d
    and a
    xor b
    and d
    xor d
    and h
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    xor l
    and e
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
    and l
    xor [hl]
    or c
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld [hl], l
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor d
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld c, a
    and b
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    cp b
    ld a, a
    or c
    or h
    and d
    xor d
    or h
    or d
    ld d, c
    xor [hl]
    or l
    and h
    or c
    ld a, a
    xor b
    xor l
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    rst $20
    ld c, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld a, a
    and [hl]
    xor e
    xor [hl]
    or c
    xor b
    xor [hl]
    or h
    or d
    ld d, c
    or c
    and b
    xor h
    xor a
    and b
    and [hl]
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, a
    and c
    and h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    rst $20
    ld d, a
    nop
    add a
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
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
    or c
    ld c, a
    and h
    or d
    and d
    and b
    xor a
    and b
    and e
    and h
    or d
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    xor h
    cp b
    ld d, c
    or d
    xor [hl]
    or h
    xor e
    rst $20
    ld c, a
    adc b
    or e
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    and e
    xor [hl]
    and h
    or d
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b27f

    xor [hl]
    ld a, a
    and [hl]
    xor e
    and b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
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
    ld c, a
    or e
    xor [hl]
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
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    or [hl]
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
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    rst $20
    ld d, a
    nop
    add a
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
    and $51
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
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
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
    or [hl]
    and $51
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    and $51
    add a
    xor [hl]
    or [hl]
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    and $51
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
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    adc b
    or d
    ld a, a
    xor b
    or e
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
    and c
    and h
    ld c, a
    or d
    or h
    xor l
    xor l
    cp b
    ld a, a
    or e
    xor [hl]
    xor h
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    and $51
    add b
    or c
    or c
    and [hl]
    and a
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $b27f
    xor [hl]
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld d, c
    and d
    and a
    and b
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $a07f

    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    rst $20
    ld d, c
    adc b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    and d
    or h
    or e
    and h
    rst $20
    ld c, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add d
    and a
    and b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    xor a
    xor b
    and d
    ld c, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
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
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and h
    and b
    or d
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    and b
    or e
    db $f4
    ld a, a
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
    or [hl]
    and b
    or d
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    and e
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
    ld a, a
    or e
    xor [hl]
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    and $51
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
    xor [hl]
    xor l
    and h
    add sp, $7f
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld d, c
    xor b
    or e
    or d
    ld a, a
    or [hl]
    and h
    and b
    xor d
    xor l
    and h
    or d
    or d
    db $f4
    ld a, a
    adc b
    ld c, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    add sp, $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor e
    and h
    or e
    call nc, $a17f
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
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
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
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
    or c
    ld a, a
    xor b
    xor l
    ld d, c
    or e
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
    rst $20
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
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
    ld d, a
    nop
    adc e
    and h
    or e
    call nc, $b37f
    and b
    xor e
    xor d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    db $f4
    ld c, a
    and a
    or h
    and a
    and $57
    nop
    add c
    xor [hl]
    cp b
    db $f4
    ld a, a
    and b
    xor h
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor e
    and b
    and e
    ld a, a
    adc b
    ld c, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    add b
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    and c
    or h
    xor l
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, c
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
    or d
    and h
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
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
    and a
    and b
    and e
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    xor e
    or h
    and d
    xor d
    ld a, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    or c
    and b
    or c
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor e
    and b
    or e
    and h
    xor e
    cp b
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
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
    cp b
    db $d3
    and h
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
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
    ld c, a
    xor l
    xor [hl]
    or [hl]
    and $51
    adc e
    and h
    or e
    call nc, $a17f
    and b
    or e
    or e
    xor e
    and h
    add sp, $7f
    adc b
    pop de
    xor e
    ld c, a
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
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    xor [hl]
    xor l
    ld a, a
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor h
    xor b
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    sbc b
    add b
    adc l
    adc h
    add b
    rst $20
    ld d, c
    add [hl]
    and h
    or e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld c, a
    ld sp, hl
    ei
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
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $a64f
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld d, c
    and h
    or a
    and b
    and d
    or e
    xor e
    cp b
    ld a, a
    and b
    or d
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor e
    and d
    or h
    xor e
    and b
    or e
    and h
    and e
    rst $20
    ld d, a
    nop
    add c
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
    ld a, a
    or [hl]
    and h
    ld c, a
    xor d
    xor l
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
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
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    or e
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
    add sp, $51
    sub d
    or e
    or h
    and e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    and e
    or l
    and b
    xor l
    and d
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    and h
    and e
    rst $20
    ld d, a
    nop
    add c
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
    and h
    or d
    and d
    and b
    xor a
    and h
    and e
    ld d, l
    xor [hl]
    xor l
    ld a, a
    xor h
    and h
    ld a, a
    cp b
    and h
    or d
    or e
    and h
    or c
    and e
    and b
    cp b
    add sp, $51
    add b
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    or h
    or e
    and b
    or e
    xor b
    xor [hl]
    xor l
    and b
    xor e
    ld c, a
    and h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    and b
    or c
    or e
    ld [hl], l
    ld d, a
    nop
    adc b
    sub $a4
    ld a, a
    or d
    or e
    or h
    and e
    xor b
    and h
    and e
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld c, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and h
    xor l
    db $f4
    ld d, c
    and b
    xor l
    and e
    ld a, a
    adc b
    sub $a4
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
    xor e
    xor [hl]
    or e
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    rst $20
    ld d, c
    adc b
    jp nc, $a77f

    and b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $51
    add d
    and b
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
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $57
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
    add a
    and h
    and a
    and h
    and a
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    xor a
    xor b
    and d
    xor d
    and h
    and e
    ld c, a
    or h
    xor a
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
    xor l
    xor b
    and d
    and h
    rst $20
    ld d, c
    sbc b
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
    rst $20
    ld c, a
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
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
    and h
    ld d, c
    or e
    xor [hl]
    ld a, a
    ld d, b
    ld bc, $d0bf
    nop
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor a
    xor b
    and d
    xor d
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    and $57
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
    xor a
    xor b
    and d
    xor d
    and h
    and e
    ld c, a
    or h
    xor a
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
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    or [hl]
    and h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
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
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld d, l
    xor h
    cp b
    ld a, a
    or d
    or e
    or c
    and b
    or e
    and h
    and [hl]
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
    and e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    or [hl]
    xor [hl]
    or c
    xor d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    and d
    and b
    xor l
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
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
    and [hl]
    xor b
    and l
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
    and $51
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
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    xor b
    and h
    or c
    rst $20
    ld d, c
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    and a
    xor [hl]
    or e
    xor [hl]
    or d
    ld a, a
    and [hl]
    and b
    xor e
    xor [hl]
    or c
    and h
    rst $20
    ld d, a
    nop
    adc b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    xor l
    ld c, a
    xor b
    xor l
    or d
    or e
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc d
    adc [hl]
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
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
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
    or e
    xor b
    xor a
    or d
    ld a, a
    xor e
    and b
    or d
    or e
    ld c, a
    or e
    xor b
    xor h
    and h
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
    or [hl]
    and a
    and b
    or e
    and $4f
    add b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld d, c
    and [hl]
    xor [hl]
    or e
    ld a, a
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
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    rst $20
    ld c, a
    sub c
    and h
    and b
    xor e
    xor e
    cp b
    db $f4
    ld a, a
    xor c
    or h
    or d
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
    and c
    xor b
    or e
    ld a, a
    xor h
    xor [hl]
    or c

Call_019_507f:
    and h
    db $f4
    ld c, a
    and b
    xor l
    and e
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    sub $a4
    ld [hl], l
    ld d, a
    nop
    sub c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    adc b
    jp nc, $ae7f

    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
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
    and d
    xor e
    xor [hl]
    or d
    and h
    ld c, a
    and c
    cp b
    db $f4
    ld a, a
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
    rst $20
    ld d, a
    nop
    sub d
    and h
    and h
    ld a, a
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $4f
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and [hl]
    xor b
    and l
    or e
    rst $20
    ld d, c
    add b
    or d
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
    xor b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    or d
    rst $20
    ld d, c
    adc b
    jp nc, $b27f

    or h
    or c
    and h
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
    ld a, a
    xor b
    or e
    add sp, $7f
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and [hl]
    and h
    or e
    ld d, c
    xor b
    or e
    rst $20
    ld a, a
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
    adc [hl]
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld a, a
    and b
    ld c, a
    and [hl]
    xor b
    and l
    or e
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $51
    add d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld c, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    and $57
    nop
    add a
    xor b
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
    ld a, a
    xor h
    and h
    and $51
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
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $51
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
    and [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    or c
    and h
    or d
    and h
    xor l
    or e
    ld d, c
    or d
    xor [hl]
    xor [hl]
    xor l
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    and h
    xor e
    or d
    and h
    add sp, $51
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
    adc b
    ld a, a
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    ld a, a
    and c
    and h
    and [hl]
    and b
    xor l
    ld c, a
    xor [hl]
    and c
    or d
    and h
    or c
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld d, l
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $51
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or d
    xor [hl]
    or c
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor l
    and h
    or [hl]
    ld d, c
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor h
    cp b
    ld c, a
    xor [hl]
    and c
    or d
    and h
    or c
    or l
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
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
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    and h
    or c
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    add sp, $57
    nop
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    or d
    db $f4
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
    xor d
    xor l
    xor [hl]
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld d, c
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
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
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    adc b
    ld d, c
    and e
    xor [hl]
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
    db $f4
    ld a, a
    xor b
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    xor l
    and h
    or l
    xor b
    or e
    and b
    and c
    xor e
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
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
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    add sp, $51
    add l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or d
    or e
    ld c, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld d, c
    or [hl]
    and b
    xor l
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    and c
    or d
    and h
    or c
    or l
    and h
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $7f
    sub c
    and b
    or e
    or d
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
    and c
    and b
    or e
    or e
    xor e
    and h
    and $4f
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
    and b
    or e
    or e
    xor e
    and h
    ld d, c
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
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
    or c
    or h
    or d
    or e
    xor b
    xor l
    and [hl]
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
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld d, a
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
    add c
    adc e
    sub h
    add h
    and $51
    add a
    and h
    call nc, $8f7f
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    call nc, $a64f
    or c
    and b
    xor l
    and e
    or d
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    ld d, c
    and l
    xor [hl]
    or c
    xor h
    and h
    or c
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
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    rst $20
    ld d, c
    add a
    and h
    call nc, $ae7f
    xor l
    and h
    ld a, a
    or d
    or h
    xor a
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
    rst $20
    ld d, a
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
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
    ld d, l
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    add e
    add b
    adc b
    sub d
    sbc b
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or d
    and a
    and h
    call nc, $a07f
    or c
    xor [hl]
    or h
    xor l
    and e
    db $f4
    ld c, a
    and h
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld d, c
    and l
    and h
    or c
    xor [hl]
    and d
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and d
    and b
    xor e
    xor h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    add sp, $57
    nop
    add h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    call nc, $b37f
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    add sp, $51
    add a
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
    xor l
    ld c, a
    and b
    or d
    or d
    xor b
    or d
    or e
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld c, a
    adc b
    ld a, a
    and h
    xor l
    or l
    cp b
    ld a, a
    and a
    xor b
    xor h
    rst $20
    ld d, a
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    call nc, $a37f
    or c
    and h
    and b
    xor h
    ld c, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor b
    xor e
    and h
    ld a, a
    and b
    ld d, c
    and d
    xor [hl]
    xor h
    xor a
    or c
    and h
    and a
    and h
    xor l
    or d
    xor b
    or l
    and h
    ld c, a
    ld d, h
    add e
    add h
    sub a
    add sp, $51
    adc b
    ld a, a
    and h
    xor l
    or l
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and b
    or e
    ld a, a
    xor a
    or c
    xor [hl]
    xor c
    and h
    and d
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    adc d
    sub h
    sub c
    sub e
    db $f4
    ld c, a
    or e
    and a
    and h
    ld a, a
    add c
    add b
    adc e
    adc e
    ld a, a
    and d
    or c
    and h
    and b
    or e
    xor [hl]
    or c
    and $51
    add a
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or [hl]
    and b
    cp b
    add sp, $51
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    or e
    or e
    or c
    and b
    and d
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld d, l
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
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
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    and [hl]
    and b
    or e
    and a
    and h
    or c
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    ld a, a
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
    and b
    xor e
    xor e
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
    or [hl]
    and a
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld c, a
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
    add d
    add a
    add b
    adc h
    adc a
    add sp, $51
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    and b
    and d
    or e
    or d
    ld a, a
    and b
    or d
    ld c, a
    and b
    xor l
    ld a, a
    and b
    and e
    or l
    xor b
    or d
    xor [hl]
    or c
    ld a, a
    or e
    xor [hl]
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
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    call nc, $a74f
    and h
    and b
    and e
    or b
    or h
    and b
    or c
    or e
    and h
    or c
    or d
    add sp, $51
    add a
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    xor h
    and b
    xor l
    add sp, $57
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ldh [$92], a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub e
    add b
    adc e
    adc d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor a
    xor [hl]
    xor a
    or h
    xor e
    and b
    or c
    ld d, l
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
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
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and a
    and h
    ld a, a
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
    ld d, c
    or e
    or h
    or c
    xor l
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld c, a
    and b
    or e
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    and $51
    add c
    or h
    or e
    ld a, a
    adc h
    add b
    sub c
    sbc b
    call nc, $a47f
    xor l
    and h
    or c
    and [hl]
    cp b
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor a
    and h
    or c
    or d
    xor b
    or d
    or e
    and h
    xor l
    and d
    and h
    ld d, l
    or [hl]
    xor [hl]
    or c
    and h
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    or [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    adc h
    add b
    sub c
    sbc b
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and b
    xor l
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    or h
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
    ld d, l
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and b
    and [hl]
    xor [hl]
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or c
    and b
    or e
    and a
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and a
    and h
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and h
    xor h
    or d
    and h
    xor e
    or l
    and h
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    and h
    or d
    or e
    xor b
    xor l
    and [hl]
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    and a
    and h
    ld a, a
    and b
    and c
    and b
    xor l
    and e
    xor [hl]
    xor l
    and h
    and e
    ld c, a
    and a
    xor b
    or d
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, c
    and l
    xor [hl]
    and d
    or h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
    and h
    or c
    add sp, $57
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
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
    ld d, l
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    add e
    add b
    adc b
    sub d
    sbc b
    add sp, $51
    sub d
    and a
    and h
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    and h
    and b
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld c, a
    and e
    and b
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor l
    ld a, a
    and a
    xor [hl]
    or h
    or c
    ld d, c
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    or c
    and h
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
    and l
    or e
    and h
    or c
    xor l
    xor [hl]
    xor [hl]
    xor l
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
    xor c
    xor [hl]
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and h
    and b
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and d
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
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
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
    and $4f
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    and h
    and e
    ld d, c
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
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
    or [hl]
    and a
    and h
    xor l
    ld a, a
    and a
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    add sp, $51
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    and a
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    sub $a4
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld d, c
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor l
    and b
    or e
    or h
    or c
    and b
    xor e
    xor e
    cp b
    add sp, $51
    adc b
    ld a, a
    and h
    xor l
    or l
    cp b
    ld a, a
    and a
    xor b
    xor h
    ld [hl], l
    ld c, a
    adc b
    ret nc

    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    ld d, c
    and b
    xor l
    and e
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld [hl], l
    ld d, a
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
    or d
    or e
    or h
    and e
    cp b
    ld c, a
    and a
    and b
    or c
    and e
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld d, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and a
    xor b
    or d
    ld c, a
    and b
    or d
    or d
    xor b
    or d
    or e
    and b
    xor l
    or e
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
    ld c, a
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
    and $51
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
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $51
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
    db $e3
    db $e3
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
    adc e
    xor b
    or d
    or e
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $4f
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld d, c
    and [hl]
    or c
    xor b
    xor l
    or d
    ld a, a
    and a
    and b
    xor a
    xor a
    xor b
    xor e
    cp b
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, a
    adc b
    ld a, a
    xor a
    xor b
    xor l
    and d
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and d
    and a
    and h
    and h
    xor d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and [hl]
    or c
    xor b
    xor l
    or d
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and h
    xor e
    or d
    and h
    add sp, $51
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
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
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    db $f4
    ld c, a
    xor h
    cp b
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    and c
    and h
    and b
    or e
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
    rst $20
    ld d, c
    add b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    db $f4
    ld c, a
    adc b
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
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
    or e
    and a
    and b
    or e
    call nc, $a07f
    or d
    or e
    xor [hl]
    or h
    xor l
    and e
    xor b
    xor l
    and [hl]
    and $51
    adc h
    cp b
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    xor b
    or d
    ld c, a
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    and h
    or d
    or e
    rst $20
    ld d, a
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
    xor l
    push de
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    and d
    or h
    or e
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor e
    and h
    and l
    or e
    ld d, c
    xor b
    or e
    ld [hl], l
    ld c, a
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
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld d, c
    and d
    or h
    or e
    and h
    add sp, $7f
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    or [hl]
    xor b
    or d
    and h
    add sp, $57
    nop
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    xor e
    and h
    or e
    call nc, $b37f
    and b
    xor e
    xor d
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
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
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    and $4f
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
    ld d, l
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
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $51
    sbc b
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    and b
    or c
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
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
    ld c, a
    xor a
    and b
    or c
    or e
    xor b
    and d
    xor b
    xor a
    and b
    or e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, c
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor [hl]
    and l
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and d
    or h
    or e
    and h
    xor l
    and h
    or d
    or d
    add sp, $57
    nop
    adc b
    ret nc

    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    adc l
    sub h
    add [hl]
    add [hl]
    add h
    sub e
    add sp, $51
    adc h
    cp b
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor b
    or e
    add sp, $51
    adc b
    jp nc, $a27f

    and h
    or c
    or e
    and b
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld d, l
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
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
    ld c, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
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
    xor [hl]
    or h
    or c
    ld d, l
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
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
    add sp, $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor a
    xor b
    and d
    xor d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or h
    xor a
    ld c, a
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and a
    and b
    or d
    ld c, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    or d
    xor [hl]
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld d, c
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld c, a
    xor b
    or e
    call nc, $b67f
    and b
    cp b
    ld a, a
    and c
    xor b
    and [hl]
    and [hl]
    and h
    or c
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
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    db $f4
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and h
    or l
    and h
    xor l
    add sp, $51
    add a
    and h
    and a
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
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld [hl], l
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
    xor e
    xor [hl]
    or d
    or e
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
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    db $f4
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and h
    or l
    and h
    xor l
    add sp, $51
    add a
    and h
    and a
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
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and h
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
    ld a, a
    and b
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
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and l
    xor b
    or d
    and a
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
    sub d
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    cp b
    ld a, a
    xor b
    and l
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
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld c, a
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
    add sp, $57
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
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    and a
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
    xor b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    or d
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
    and b
    or l
    and h
    ld a, a
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    and $51
    adc l
    xor [hl]
    xor a
    and h
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    cp b
    and h
    or e
    add sp, $51
    adc b
    or e
    call nc, $ab7f
    xor b
    xor d
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    xor a
    and b
    or e
    xor b
    and h
    xor l
    and d
    and h
    add sp, $57
    nop
    sbc b
    or h
    xor a
    db $f4
    ld a, a
    sub e
    sub h
    adc e
    adc e
    sbc b
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    inc d
    and $7f
    sub [hl]
    and a
    and b
    or e
    and $4f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    and $51
    adc [hl]
    or h
    or c
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
    xor e
    xor e
    ld a, a
    and c
    and h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $57
    nop
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
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
    or e
    xor [hl]
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
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
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    xor l
    ld c, a
    and h
    or a
    or e
    or c
    and h
    xor h
    and h
    xor e
    cp b
    ld a, a
    or c
    and b
    or c
    and h
    ld d, c
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
    or e
    or c
    and b
    and e
    and h
    ld c, a
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
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    and $51
    add a
    and h
    and a
    and h
    db $f4
    ld a, a
    adc b
    jp nc, $aa7f

    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    xor b
    or e
    ld a, a
    and b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
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
    or e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $4f
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    xor l
    push de
    ld a, a
    or c
    and b
    or c
    and h
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
    and c
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    and d
    and b
    or e
    and d
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
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and b
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
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    and b
    xor l
    ld a, a
    and a
    xor [hl]
    or h
    or c
    ld a, a
    and b
    and [hl]
    xor [hl]
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
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
    or d
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    add sp, $7f
    add c
    or h
    or e
    ld a, a
    adc b
    ld d, c
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld [hl], l
    ld d, c
    sub [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    add c
    adc b
    adc e
    adc e
    ld a, a
    xor e
    and b
    or h
    and [hl]
    and a
    ld c, a
    and b
    or e
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
    or d
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
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or h
    or d
    or h
    and b
    xor e
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    add l
    and h
    and h
    xor e
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
    ld a, a
    and b
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $51
    adc b
    or e
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    and d
    and a
    and b
    xor l
    and d
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    or c
    and b
    or c
    and h
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc b
    or e
    pop de
    xor e
    ld a, a
    and c
    and h
    ld c, a
    or [hl]
    xor [hl]
    or c
    or e
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
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    db $e3
    db $e3
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $57
    nop
    sub d
    xor [hl]
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a87f
    or e
    ld a, a
    or e
    and a
    and h
    xor l
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
    and $4f
    add c
    adc b
    adc e
    adc e
    call nc, $a57f
    and b
    or e
    and a
    and h
    or c
    ld a, a
    xor b
    or d
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
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
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
    and $4f
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
    ld a, a
    add c
    adc b
    adc e
    adc e
    call nc, $a651
    or c
    and b
    xor l
    and e
    xor a
    and b
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
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
    and $4f
    add c
    adc b
    adc e
    adc e
    call nc, $ae7f
    or c
    xor b
    and [hl]
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld d, l
    and l
    or c
    xor [hl]
    xor h
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
    and $4f
    add c
    adc b
    adc e
    adc e
    ld a, a
    and h
    or l
    xor b
    and e
    and h
    xor l
    or e
    xor e
    cp b
    ld d, c
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$05
    ld c, a
    xor b
    xor l
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
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
    and $4f
    add b
    add c
    sub c
    add b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
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
    add c
    adc b
    adc e
    adc e
    ld c, a
    xor [hl]
    or d
    or e
    and h
    xor l
    or d
    xor b
    and c
    xor e
    cp b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
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
    and $4f
    add c
    adc b
    adc e
    adc e
    call nc, $b87f
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    ld d, c
    or d
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    and b
    xor a
    xor a
    and b
    or c
    and h
    xor l
    or e
    xor e
    cp b
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    or [hl]
    xor b
    xor l
    xor d
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
    and $4f
    add c
    adc b
    adc e
    adc e
    ld a, a
    or d
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    and e
    xor e
    cp b
    ld d, c
    and a
    and b
    or e
    and h
    or d
    ld a, a
    xor h
    xor b
    xor e
    xor d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
    ld a, a
    xor b
    or e
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
    and $4f
    add h
    or l
    xor b
    and e
    and h
    xor l
    or e
    xor e
    cp b
    db $f4
    ld a, a
    add c
    adc b
    adc e
    adc e
    ld d, c
    xor b
    or d
    xor l
    push de
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld c, a
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
    and $4f
    add c
    adc b
    adc e
    adc e
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
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    and e
    cp b
    ld a, a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
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
    and $4f
    add c
    adc b
    adc e
    adc e
    call nc, $ac7f
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor b
    or d
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
    and c
    and h
    and h
    xor l
    ld c, a
    and b
    ld a, a
    adc d
    adc b
    adc h
    adc [hl]
    adc l
    adc [hl]
    ld a, a
    add [hl]
    adc b
    sub c
    adc e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
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
    and a
    and h
    and b
    or c
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    add c
    adc b
    adc e
    adc e
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
    adc b
    jp nc, $b37f

    xor [hl]
    xor [hl]
    ld c, a
    and c
    or h
    or d
    cp b
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
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
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
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor h
    cp b
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
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $a04f
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, c
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
    or d
    xor [hl]
    and $4f
    adc b
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    db $e3
    db $e3
    xor b
    or e
    call nc, $b27f
    xor [hl]
    ld c, a
    and l
    xor e
    or h
    and l
    and l
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and b
    or c
    xor h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and h
    ld a, a
    and a
    and b
    and e
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
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, a
    and b
    and [hl]
    xor [hl]
    ld [hl], l
    ld d, c
    adc h
    cp b
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
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
    and b
    or [hl]
    and l
    or h
    xor e
    and $51
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor l
    and b
    or d
    or e
    cp b
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and h
    ld a, a
    and a
    and b
    and e
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
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, a
    and b
    and [hl]
    xor [hl]
    ld [hl], l
    ld d, c
    adc h
    cp b
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    and l
    or c
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    and h
    and e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or [hl]
    and h
    ld d, c
    or c
    and b
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and b
    or d
    ld a, a
    and l
    and b
    or d
    or e
    ld c, a
    and b
    or d
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    rst $20
    ld d, c
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and a
    and h
    xor e
    xor a
    ld c, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor b
    or l
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
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
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld c, a
    or d
    or h
    or c
    xor a
    or c
    xor b
    or d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
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
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    xor [hl]
    xor l
    ld d, l
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $57
    ld bc, $d0ac
    nop
    rst $20
    ld d, c
    adc b
    or e
    call nc, $a07f
    or [hl]
    and l
    or h
    xor e
    add sp, $4f
    adc h
    cp b
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld [hl], l
    ld d, c
    add a
    or h
    and a
    and $7f
    inc d
    and $51
    adc [hl]
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
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and a
    or h
    or c
    or c
    cp b
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    ld [hl], l
    ld d, c
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
    and [hl]
    xor [hl]
    rst $20
    ld c, a
    add c
    cp b
    and h
    db $e3
    and c
    cp b
    and h
    rst $20
    ld d, a
    nop
    add c
    cp b
    and h
    db $e3
    and c
    cp b
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    adc a
    adc b
    adc l
    adc d
    ld c, a
    add c
    adc [hl]
    sub [hl]
    sub d
    ld a, a
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
    ld d, c
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
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld c, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    add sp, $51
    adc b
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
    and b
    xor l
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    ld c, a
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
    xor [hl]
    xor l
    and h
    rst $20
    ld d, c
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    add sp, $57
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and e
    or c
    and h
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld c, a
    xor h
    cp b
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
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
    and $4f
    add d
    and b
    xor l
    push de
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
    and $51
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and l
    and h
    xor e
    xor e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
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
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor l
    ld a, a
    or [hl]
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    ld [hl], l
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and a
    or h
    or c
    or c
    cp b
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
    sub [hl]
    and a
    and b
    or e
    call nc, $b67f
    or c
    xor [hl]
    xor l
    and [hl]
    and $4f
    add d
    and b
    xor l
    push de
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
    and $51
    adc b
    jp nc, $b27f

    or h
    or c
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and a
    or h
    or c
    or c
    cp b
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
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $a14f
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or c
    add sp, $51
    sub [hl]
    and h
    sub $a4
    ld a, a
    and b
    and d
    and a
    xor b
    and h
    or l
    and h
    and e
    ld c, a
    xor e
    xor b
    and l
    or e
    xor [hl]
    and l
    and l
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    rst $20
    ld d, c
    ld [hl], l
    add a
    or h
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $4f
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
    and $57
    nop
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
    xor b
    or d
    db $f4
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
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    and b
    or c
    and h
    xor e
    cp b
    ld a, a
    and h
    xor e
    or h
    and e
    and h
    and e
    ld c, a
    or h
    or d
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
    add l
    adc e
    sbc b
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor b
    or e
    ld [hl], l
    ld d, a
    nop
    sub c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    adc b
    jp nc, $ae7f

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
    xor d
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld c, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    xor h
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
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
    and $4f
    adc b
    pop de
    xor e
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    and c
    cp b
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
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
    or [hl]
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    xor l
    and h
    or a
    or e
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
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add a
    or h
    or c
    or c
    cp b
    db $f4
    ld a, a
    and a
    or h
    or c
    or c
    cp b
    rst $20
    ld d, c
    ld d, b
    ld bc, $d0bf
    nop
    rst $20
    ld c, a
    add l
    adc e
    sbc b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $a64f
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor b
    xor h
    xor a
    or c
    and h
    or d
    or d
    xor b
    or l
    and h
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    or d
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    xor b
    xor h
    xor a
    or c
    xor [hl]
    or l
    and h
    and e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
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
    ld [hl], l
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
    and a
    and b
    or l
    and h
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and l
    or h
    xor l
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld d, c
    or e
    and a
    and b
    xor l
    ld a, a
    and c
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
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
    add sp, $57
    nop
    add c
    or h
    or e
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
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld d, c
    or e
    xor [hl]
    ld a, a
    xor e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
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
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and a
    or h
    and [hl]
    and h
    add sp, $7f
    add c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor h
    and h
    add sp, $57
    nop
    adc b
    jp nc, $a57f

    xor b
    or d
    and a
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
    db $f4
    ld d, c
    and c
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
    call nc, $a14f
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $51
    add a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld d, l
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
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
    db $f4
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    adc b
    ld a, a
    or d
    xor l
    and b
    and [hl]
    and [hl]
    and h
    and e
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    ld c, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    add sp, $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor a
    xor b
    and d
    xor d
    ld a, a
    xor b
    or e
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
    add sp, $57
    nop
    adc l
    and b
    and a
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
    or e
    and a
    and b
    or e
    call nc, $b67f
    xor [hl]
    or c
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or e
    xor b
    xor h
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
    ld c, a
    xor a
    and b
    or e
    xor b
    and h
    xor l
    and d
    and h
    add sp, $57
    nop
    sub d
    xor b
    and [hl]
    and a
    ld [hl], l
    ld c, a
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and c
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld d, c
    xor e
    xor b
    xor d
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
    xor l
    ld c, a
    ld d, b
    ld bc, $d0bf
    nop
    ld [hl], l
    ld d, c
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
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and l
    xor [hl]
    or c
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
    ld d, a
    nop
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
    xor b
    or e
    and h
    xor h
    and $51
    add a
    and b
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
    and $51
    ld d, b
    ld bc, $d0bf
    nop
    ld [hl], l
    ld c, a
    adc c
    or h
    or d
    or e
    ld a, a
    and a
    and h
    and b
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, c
    adc h
    add b
    add a
    adc [hl]
    add [hl]
    add b
    adc l
    sbc b
    ld a, a
    or e
    xor [hl]
    or [hl]
    and b
    or c
    and e
    ld c, a
    add c
    adc e
    add b
    add d
    adc d
    sub e
    add a
    adc [hl]
    sub c
    adc l
    rst $20
    ld d, a
    nop
    add b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    or [hl]
    and h
    pop de
    xor e
    ld a, a
    and d
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
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    and $51
    adc b
    ld a, a
    or c
    and h
    xor h
    and b
    xor b
    xor l
    ld a, a
    and e
    and h
    and e
    xor b
    and d
    and b
    or e
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    add sp, $51
    adc [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    and b
    and b
    and b
    or c
    or c
    or c
    and [hl]
    and a
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
    ld c, a
    xor l
    xor [hl]
    or [hl]
    add sp, $7f
    adc b
    ld a, a
    and b
    xor a
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    xor b
    cp c
    and h
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
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
    xor b
    xor h
    and h
    add sp, $51
    adc [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    and b
    and b
    and b
    or c
    or c
    or c
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and b
    xor a
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    xor b
    cp c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld c, a
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
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld d, c
    and d
    and a
    and b
    or e
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
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
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    xor h
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    sbc b
    xor b
    xor b
    xor b
    and a
    and b
    and a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor a
    xor e
    and b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    xor e
    or h
    xor l
    and d
    and a
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, c
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
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld c, a
    add b
    cp b
    xor b
    xor b
    xor b
    cp b
    and b
    and a
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b37f

    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    ld c, a
    xor [hl]
    xor l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$e7fb]
    ld d, c
    sub [hl]
    and a
    cp b
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    ld a, a
    and c
    cp b
    ld a, a
    xor b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and l
    or c
    and h
    and h
    and $57
    nop
    adc b
    ld a, a
    or c
    and h
    or d
    or e
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    xor h
    cp b
    ld a, a
    xor e
    or h
    xor l
    and d
    and a
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    call nc, $b37f
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and h
    or d
    or h
    xor h
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc [hl]
    xor [hl]
    xor [hl]
    or c
    cp b
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld c, a
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    sbc b
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
    adc [hl]
    adc d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld c, a
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
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    ld [hl], l
    ld d, a
    nop
    add b
    xor l
    and e
    ld a, a
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
    or [hl]
    and h
    ld c, a
    or d
    xor a
    xor [hl]
    or e
    or e
    and h
    and e
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
    add sp, $4f
    sub [hl]
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and e
    and h
    and c
    and b
    or e
    xor b
    xor l
    and [hl]
    ld d, c
    or [hl]
    and a
    and h
    or e
    and a
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    xor b
    or e
    ld a, a
    xor [hl]
    or c
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    xor b
    or e
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    and [hl]
    or h
    cp b
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, c
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld c, a
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
    or e
    and a
    and b
    or e
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
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
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
    ld a, a
    or e
    xor [hl]
    ld d, c
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor h
    and h
    add sp, $7f
    add b
    xor h
    ld a, a
    adc b
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $51
    sbc b
    and h
    xor a
    rst $20
    ld a, a
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    xor h
    and h
    and h
    or e
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
    adc [hl]
    adc d
    db $f4
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and b
    ld a, a
    and d
    and b
    xor e
    xor e
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    pop de
    xor e
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
    or c
    xor b
    and [hl]
    and a
    or e
    and $57
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
    or e
    or e
    and h
    xor l
    ld c, a
    or e
    xor [hl]
    ld a, a
    ld d, b
    ld bc, $d0bf
    nop
    and $51
    sub [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    and c
    and b
    and e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ret nc

    ld a, a
    or d
    or h
    or c
    and h
    ld d, l
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
    rst $20
    ld d, a
    ld bc, $d099
    nop
    call nc, Call_019_507f
    ld bc, $d0ac
    nop
    ld c, a
    xor b
    or d
    ld a, a
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
    ld [hl], l
    ld c, a
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
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and c
    and h
    and b
    or e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    rst $20
    ld d, c
    adc b
    sub $a4
    ld a, a
    or c
    and b
    xor b
    or d
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
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    xor e
    cp b
    rst $20
    ld d, a
    nop
    add c
    or h
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, c
    add b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
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
    ld d, c
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $7f
    adc b
    or e
    call nc, $a97f
    or h
    or d
    or e
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    and l
    and b
    xor b
    or c
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $847f

    sub c
    adc b
    adc l
    add sp, $7f
    sub [hl]
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
    ld a, a
    xor h
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $51
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
    or e
    and a
    xor b
    or d
    ld c, a
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
    sub d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    add c
    cp b
    and h
    db $e3
    and c
    cp b
    and h
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b67f

    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and b
    or c
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
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
    and l
    xor [hl]
    or c
    ld c, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
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
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add d
    xor [hl]
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
    add h
    sub c
    adc b
    adc l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
