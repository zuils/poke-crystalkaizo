; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $071", ROMX[$4000], BANK[$71]

    nop
    adc l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    and b
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    and b
    xor h
    and h
    ld a, a
    or [hl]
    and b
    or d
    and $58
    nop
    ld d, d
    db $f4
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    and $51
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    xor [hl]
    or c
    cp b
    ld a, a
    xor b
    or d
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    xor l
    and l
    xor [hl]
    xor e
    and e
    add sp, $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and l
    and b
    and d
    and h
    ld a, a
    and l
    or h
    xor l
    ld c, a
    or e
    xor b
    xor h
    and h
    or d
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
    ld d, l
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    or d
    add sp, $51
    add b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    or d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and b
    and e
    or l
    and h
    xor l
    or e
    or h
    or c
    and h
    or d
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    or [hl]
    and b
    xor b
    or e
    or d
    rst $20
    ld a, a
    adc e
    and h
    or e
    call nc, $a67f
    xor [hl]
    rst $20
    ld d, c
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
    sub e
    and a
    and h
    ld a, a
    and d
    xor e
    xor [hl]
    and d
    xor d
    call nc, $b37f
    xor b
    xor h
    and h
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or c
    and h
    or d
    and h
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
    add sp, $58
    nop
    sub d
    and h
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld c, a
    add d
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
    ld a, a
    adc a
    and b
    and e
    add sp, $51
    add d
    xor [hl]
    xor l
    and l
    xor b
    or c
    xor h
    sbc h
    ld a, a
    add b
    ld a, a
    add c
    or h
    or e
    or e
    xor [hl]
    xor l
    ld c, a
    add d
    and b
    xor l
    and d
    and h
    xor e
    sbc h
    ld a, a
    ld a, a
    add c
    ld a, a
    add c
    or h
    or e
    or e
    xor [hl]
    xor l
    ld d, a
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    xor e
    xor [hl]
    and d
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
    or c
    and h
    or d
    and h
    or e
    add sp, $57
    nop
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and a
    and b
    or d
    ld c, a
    and h
    xor e
    and b
    xor a
    or d
    and h
    and e
    add sp, $7f
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld d, l
    or e
    or c
    cp b
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $58
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    and b
    and e
    and h
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
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld d, l
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
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
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
    call nc, Call_071_504f
    ld bc, $d073
    nop
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld d, l
    or e
    xor [hl]
    ld a, a
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
    rst $20
    ld e, b
    nop
    sub e
    or c
    and b
    and e
    and h
    ld a, a
    ld d, b
    ld bc, $d004
    nop
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    and $57
    nop
    sub e
    xor [hl]
    ld a, a
    and h
    xor l
    or e
    and h
    or c
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    and c
    xor b
    xor e
    and h
    ld c, a
    and c
    and b
    or e
    or e
    xor e
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
    xor a
    xor b
    and d
    xor d
    ld a, a
    and b
    ld a, a
    or e
    and h
    and b
    xor h
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    adc l
    and h
    and h
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    xor l
    and l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    xor h
    xor [hl]
    and c
    xor b
    xor e
    and h
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
    add l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    and c
    xor b
    xor e
    and h
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    and d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld d, l
    or e
    and a
    or c
    and h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    xor h
    and b
    or a
    xor b
    xor h
    or h
    xor h
    ld a, a
    and e
    and b
    xor b
    xor e
    cp b
    ld c, a
    xor a
    xor e
    and b
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and h
    xor l
    ld d, c
    xor h
    xor b
    xor l
    or h
    or e
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and h
    and b
    and d
    and a
    ld c, a
    xor e
    xor b
    xor l
    xor d
    and h
    and e
    ld a, a
    xor a
    xor e
    and b
    cp b
    and h
    or c
    add sp, $51
    adc b
    and l
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor b
    xor l
    ld d, c
    or e
    and a
    and h
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
    db $f4
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    cp b
    and h
    or c
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, c
    or e
    and a
    and h
    ld a, a
    and l
    and h
    or [hl]
    and h
    or d
    or e
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    xor l
    or d
    add sp, $51
    adc b
    and l
    ld a, a
    or e
    xor b
    and h
    and e
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and h
    and b
    xor h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or e
    and a
    and h
    ld d, c
    xor e
    and h
    and b
    or d
    or e
    ld a, a
    and b
    xor h
    xor [hl]
    or h
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    add a
    adc a
    ld c, a
    or [hl]
    xor b
    xor l
    or d
    add sp, $57
    nop
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, $b17f
    and h
    xor h
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    add hl, bc
    add [hl]
    ret nc

    ld [de], a
    nop
    ld a, a
    xor h
    xor b
    xor l
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
    and c
    and b
    or e
    or e
    xor e
    and h
    and $57
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
    xor l
    xor e
    cp b
    ld a, a
    ld d, b
    add hl, bc
    add [hl]
    ret nc

    ld [de], a
    nop
    ld c, a
    xor h
    xor b
    xor l
    add sp, $7f
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    and b
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
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
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    rst $30
    ld a, a
    xor h
    xor b
    xor l
    add sp, $7f
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
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
    or c
    or h
    or d
    and a
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
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
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
    xor e
    and h
    or d
    or d
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, a
    rst $30
    ld a, a
    xor h
    xor b
    xor l
    add sp, $7f
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    rst $20
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    or c
    cp b
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld c, a
    or e
    xor [hl]
    xor h
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    add sp, $57
    nop
    sub e
    or c
    cp b
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld a, a
    or d
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    or d
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
    xor e
    and h
    or d
    or d
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, a
    rst $30
    ld a, a
    xor h
    xor b
    xor l
    add sp, $7f
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor e
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $57
    nop
    adc a
    xor b
    and d
    xor d
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
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
    add sp, $57
    nop
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, $b17f
    and h
    xor h
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    add hl, bc
    add [hl]
    ret nc

    ld [de], a
    nop
    ld a, a
    xor h
    xor b
    xor l
    add sp, $57
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
    or d
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
    and $57
    nop
    sub d
    add b
    sub l
    adc b
    adc l
    add [hl]
    ld [hl], l
    ld a, a
    add e
    adc [hl]
    adc l
    ldh [$93], a
    ld a, a
    sub e
    sub h
    sub c
    adc l
    ld c, a
    adc [hl]
    add l
    add l
    ld a, a
    sub e
    add a
    add h
    ld a, a
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $57
    nop
    ld d, d
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    xor h
    and h
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
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and b
    ld c, a
    or d
    and b
    or l
    and h
    ld a, a
    and l
    xor b
    xor e
    and h
    add sp, $7f
    adc b
    or d
    ld a, a
    xor b
    or e
    ld d, l
    adc [hl]
    adc d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or l
    and h
    or c
    or [hl]
    or c
    xor b
    or e
    and h
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
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    or d
    and b
    or l
    and h
    ld a, a
    and l
    xor b
    xor e
    and h
    add sp, $7f
    adc b
    or d
    ld a, a
    xor b
    or e
    ld d, l
    adc [hl]
    adc d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or l
    and h
    or c
    or [hl]
    or c
    xor b
    or e
    and h
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    and b
    or l
    and h
    ld a, a
    and l
    xor b
    xor e
    and h
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
    rst $20
    ld e, b
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
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add c
    adc [hl]
    sub a
    db $f4
    ld a, a
    and e
    and b
    or e
    and b
    ld d, l
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    add sp, $7f
    adc [hl]
    adc d
    and $57
    nop
    add h
    and b
    and d
    and a
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld c, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and e
    and b
    or e
    and b
    ld d, l
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    add sp, $7f
    adc [hl]
    adc d
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    xor [hl]
    or [hl]
    ld a, a
    or d
    and b
    or l
    and h
    ld c, a
    and b
    or c
    and h
    and b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and h
    or a
    and d
    and h
    and h
    and e
    and h
    and e
    add sp, $57
    nop
    adc l
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    xor [hl]
    or [hl]
    or d
    ld a, a
    and b
    or l
    and b
    xor b
    xor e
    db $e3
    ld c, a
    and b
    and c
    xor e
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add d
    xor [hl]
    or c
    or c
    or h
    xor a
    or e
    and h
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    or e
    rst $20
    ld e, b
    nop
    adc [hl]
    and c
    xor c
    and h
    and d
    or e
    ld a, a
    and h
    or l
    and h
    xor l
    or e
    ld d, a
    nop
    add c
    add [hl]
    ld a, a
    and h
    or l
    and h
    xor l
    or e
    ld d, a
    nop
    add d
    xor [hl]
    xor [hl]
    or c
    and e
    xor b
    xor l
    and b
    or e
    and h
    or d
    ld a, a
    and h
    or l
    and h
    xor l
    or e
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
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $57
    nop
    ld d, d
    ld a, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    ld [hl], l
    ld e, b
    nop
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    xor e
    xor e
    add sp, $4f
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor e
    xor e
    ld [hl], l
    ld d, c
    add d
    and h
    or c
    or e
    and b
    xor b
    xor l
    xor e
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    xor [hl]
    and l
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
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    and b
    and b
    and b
    or e
    and $7f
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    or e
    and h
    xor e
    xor e
    ld a, a
    and b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
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
    adc b
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    add a
    xor h
    ld [hl], l
    ld a, a
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
    xor h
    and h
    or e
    ld c, a
    ld d, b
    ld bc, $d003
    nop
    ld a, a
    and a
    and h
    or c
    and h
    sbc h
    ld d, l
    ld d, b
    ld bc, $d00e
    nop
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    ld d, b
    ld bc, $d01f
    nop
    rst $20
    ld d, c
    adc b
    or e
    or d
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    ld d, b
    ld bc, $d036
    nop
    rst $20
    ld d, c
    add b
    xor h
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $58
    nop
    add a
    xor h
    ld [hl], l
    ld a, a
    ld d, b
    ld bc, $d003
    nop
    ld c, a
    and d
    and b
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    ld d, b
    ld bc, $d02a
    nop
    ld d, l
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
    and $51
    ld d, b
    ld bc, $d00e
    nop
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    ld d, b
    ld bc, $d02a
    nop
    ld d, l
    xor h
    and h
    or e
    ld a, a
    ld d, b
    ld bc, $d003
    nop
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and b
    or e
    rst $20
    and $7f
    adc b
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
    and a
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld d, c
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
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    add sp, $51
    adc b
    ld a, a
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
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and h
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
    xor b
    or e
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    and b
    or e
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    ld d, b
    ld bc, $d036
    nop
    add sp, $51
    add b
    xor h
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $58
    nop
    add a
    and h
    cp b
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    call nc, $a07f
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
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
    or d
    and b
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    xor h
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    cp b
    and h
    or e
    ld [hl], l
    ld d, a
    nop
    add l
    or h
    and l
    or h
    and l
    or h
    rst $20
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ret nc

    ld a, a
    and e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    xor l
    and d
    xor b
    and e
    and h
    xor l
    or e
    and b
    xor e
    xor e
    cp b
    ld [hl], l
    ld d, c
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
    or [hl]
    xor b
    or d
    and h
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
    or [hl]
    xor b
    or e
    and a
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
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and d
    and b
    or c
    and h
    add sp, $57
    nop
    adc b
    xor l
    and d
    xor b
    and e
    and h
    xor l
    or e
    and b
    xor e
    xor e
    cp b
    ld [hl], l
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
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    add sp, $51
    ld d, b
    ld bc, $d003
    nop
    ld a, a
    or d
    and h
    and h
    xor h
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    xor b
    and e
    and h
    xor l
    or e
    add sp, $57
    nop
    adc b
    xor l
    and d
    xor b
    and e
    and h
    xor l
    or e
    and b
    xor e
    xor e
    cp b
    ld [hl], l
    ld d, c
    ld d, b
    ld bc, $d003
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
    add sp, $7f
    adc b
    or e
    call nc, $a67f
    and b
    xor b
    xor l
    and h
    and e
    ld d, l
    xor h
    or h
    and d
    and a
    ld a, a
    or d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    add sp, $57
    nop
    adc b
    xor l
    and d
    xor b
    and e
    and h
    xor l
    or e
    and b
    xor e
    xor e
    cp b
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    xor e
    cp b
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
    xor h
    xor b
    and [hl]
    and a
    or e
    cp b
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d003
    nop
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld d, c
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor l
    or h
    xor h
    and h
    or c
    xor [hl]
    or h
    or d
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
    or d
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
    and c
    or c
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    xor b
    and e
    and h
    xor l
    and d
    and h
    add sp, $57
    nop
    adc b
    xor l
    and d
    xor b
    and e
    and h
    xor l
    or e
    and b
    xor e
    xor e
    cp b
    ld [hl], l
    ld d, c
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
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and e
    and h
    and e
    xor b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    adc b
    or e
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or d
    ld c, a
    xor h
    xor b
    and [hl]
    and a
    or e
    cp b
    ld a, a
    and b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, l
    ld d, b
    ld bc, $d003
    nop
    add sp, $51
    adc b
    jp nc, $b27f

    or h
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, b
    ld bc, $d003
    nop
    ld d, c
    xor b
    xor l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and h
    or a
    and d
    xor b
    or e
    and h
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    add sp, $57
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
    ld c, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, b
    ld bc, $d086
    ld d, b
    ld d, b
    nop
    ld d, c
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld d, a
    nop
    add a
    or h
    and a
    and $7f
    ld d, b
    ld bc, $d086
    nop
    ld c, a
    or d
    or e
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    ld d, b
    ld bc, $d086
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
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
    xor h
    and b
    xor l
    cp b
    and $57
    add hl, bc
    inc c
    pop de
    ld [de], a
    nop
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    ldh a, [$50]
    add hl, bc
    jp $36ff


    nop
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    and e
    and h
    and b
    or c
    add sp, $51
    adc b
    ld a, a
    or d
    and h
    xor e
    xor e
    ld a, a
    xor b
    xor l
    and h
    or a
    xor a
    and h
    xor l
    or d
    xor b
    or l
    and h
    ld c, a
    and a
    and h
    or c
    and c
    and b
    xor e
    ld a, a
    xor h
    and h
    and e
    xor b
    and d
    xor b
    xor l
    and h
    add sp, $51
    sub e
    and a
    and h
    cp b
    db $d3
    and h
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
    ld c, a
    and b
    ld a, a
    or e
    or c
    xor b
    and l
    xor e
    and h
    ld a, a
    and c
    xor b
    or e
    or e
    and h
    or c
    add sp, $51
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
    xor h
    and b
    cp b
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $51
    add a
    and h
    and a
    and h
    and a
    and h
    and a
    and h
    ld [hl], l
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    and $57
    add hl, bc
    inc c
    pop de
    ld [de], a
    nop
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    ldh a, [$50]
    add hl, bc
    jp $36ff


    nop
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
    db $f4
    ld a, a
    and e
    and h
    and b
    or c
    add sp, $4f
    add a
    and h
    and a
    and h
    and a
    and h
    and a
    and h
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add b
    add d
    adc d
    ld a, a
    xor b
    or d
    ld c, a
    and l
    or h
    xor e
    xor e
    db $f4
    ld a, a
    and e
    and h
    and b
    or c
    add sp, $57
    nop
    add a
    and h
    and a
    and h
    and a
    and h
    ld [hl], l
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
    and a
    and b
    or l
    and h
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
    and e
    and h
    and b
    or c
    add sp, $4f
    add a
    and h
    and a
    and h
    and a
    and h
    and a
    and h
    ld [hl], l
    ld d, a
    nop
    add a
    xor b
    cp b
    and b
    rst $20
    ld a, a
    add d
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    or c
    and [hl]
    and b
    xor b
    xor l
    or d
    and $51
    adc b
    ld a, a
    or d
    and h
    xor e
    xor e
    ld a, a
    or c
    and b
    or c
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor l
    xor [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and h
    xor e
    or d
    and h
    ld d, c
    and d
    and b
    or c
    or c
    xor b
    and h
    or d
    db $e3
    db $e3
    and c
    or h
    or e
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
    xor [hl]
    and l
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    xor b
    or e
    and h
    xor h
    add sp, $57
    ld bc, $d086
    nop
    ld a, a
    and d
    xor [hl]
    or d
    or e
    or d
    ld c, a
    ldh a, [$50]
    add hl, bc
    jp $36ff


    nop
    add sp, $7f
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    xor b
    or e
    and $57
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add b
    add d
    adc d
    ld c, a
    xor b
    or d
    ld a, a
    and d
    and a
    xor [hl]
    and d
    xor d
    db $e3
    and l
    or h
    xor e
    xor e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    add sp, $7f
    adc b
    jp nc, $a07f

    xor e
    xor e
    ld d, l
    or d
    xor [hl]
    xor e
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    or d
    and a
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and l
    or h
    xor l
    and e
    or d
    add sp, $57
    nop
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    cp b
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
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    and $7f
    adc l
    and h
    and h
    and e
    ld c, a
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
    and $57
    add hl, bc
    inc c
    pop de
    ld [de], a
    nop
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    ld c, a
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
    ldh a, [$50]
    add hl, bc
    jp $36ff


    nop
    add sp, $57
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    xor h
    or h
    and d
    and a
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
    or d
    xor a
    and b
    and d
    and h
    add sp, $57
    nop
    add a
    or h
    and a
    and $7f
    sub e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld c, a
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
    add sp, $4f
    sub d
    and h
    and h
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
    add sp, $57
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
    ld a, a
    or d
    and h
    xor e
    xor e
    add sp, $58
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    and $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor a
    and b
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    ldh a, [$50]
    add hl, bc
    jp $36ff


    nop
    add sp, $51
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    adc b
    ld c, a
    and a
    and h
    xor e
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
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
    and b
    or c
    and h
    add sp, $4f
    sub e
    and a
    and b
    xor l
    xor d
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
    xor h
    xor [hl]
    xor l
    and h
    cp b
    add sp, $57
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
    and d
    and b
    or c
    or c
    cp b
    ld c, a
    and b
    xor l
    cp b
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
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    or h
    cp b
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $58
    nop
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
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add d
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and h
    xor e
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
    and $57
    nop
    add [hl]
    xor [hl]
    or e
    ld a, a
    ldh a, [$50]
    add hl, bc
    jp $36ff


    nop
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    sbc d
    sub d
    sbc e
    add sp, $57
    nop
    add c
    and h
    or e
    ld a, a
    and a

Call_071_504f:
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    and $57
    nop
    sub d
    or e
    and b
    or c
    or e
    rst $20
    ld d, a
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
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    add sp, $58
    nop
    add e
    and b
    or c
    xor l
    ld [hl], l
    ld a, a
    sub c
    and b
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld [hl], l
    ld d, a
    nop
    adc a
    xor e
    and b
    cp b
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $57
    nop
    xor e
    xor b
    xor l
    and h
    and e
    ld a, a
    or h
    xor a
    rst $20
    ld c, a
    sub [hl]
    xor [hl]
    xor l
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld d, a
    nop
    add e
    and b
    or e
    and b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    xor l
    ld c, a
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
    ld a, a
    sub d
    sub e
    add b
    add e
    adc b
    sub h
    adc h
    ld d, c
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc l
    db $fc
    ld a, [$547f]
    adc h
    adc [hl]
    adc l
    ld c, a
    sub d
    sub e
    add b
    add e
    adc b
    sub h
    adc h
    ld a, a
    ld hl, sp+$7f
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld d, l
    or c
    and h
    and b
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub c
    and h
    and b
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    or e
    and b
    and $57
    nop
    add e
    and b
    or e
    and b
    ld a, a
    or e
    or c
    and b
    xor l
    or d
    and l
    and h
    or c
    ld a, a
    xor b
    or d
    ld c, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
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
    cp b
    xor [hl]
    or h
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
    ld c, a
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    sub d
    sub e
    add b
    add e
    adc b
    sub h
    adc h
    ld d, c
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc l
    db $fc
    ld a, [$544f]
    adc h
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    add b
    add e
    adc b
    sub h
    adc h
    ld a, a
    ld hl, sp-$18
    ld d, c
    ld d, a
    nop
    add d
    xor e
    xor [hl]
    and d
    xor d
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or h
    xor l
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld d, a
    nop
    add e
    and h
    xor e
    and h
    or e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld c, a
    adc e
    adc [hl]
    add [hl]
    db $e3
    adc b
    adc l
    ld a, a
    adc a
    add b
    sub d
    sub d
    sub [hl]
    adc [hl]
    sub c
    add e
    and $57
    nop
    add e
    and h
    xor e
    and h
    or e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    adc [hl]
    add [hl]
    db $e3
    adc b
    adc l
    ld c, a
    adc a
    add b
    sub d
    sub d
    sub [hl]
    adc [hl]
    sub c
    add e
    add sp, $57
    nop
    adc a
    xor b
    and d
    xor d
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
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
    add sp, $58
    ld bc, $d006
    nop
    db $f4
    ld c, a
    ld d, b
    ld bc, $d00c
    nop
    ld a, a
    and b
    xor l
    and e
    ld d, l
    ld d, b
    ld bc, $d012
    nop
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    or e
    and a
    or c
    and h
    and h
    and $57
    nop
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    and h
    xor l
    or e
    and h
    or c
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
    add l
    adc [hl]
    adc e
    add e
    add h
    sub c
    ld c, a
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    xor l
    and e
    ld d, c
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
    or d
    ldh [rVBK], a
    add d
    add b
    sub c
    add e
    sub d
    add sp, $51
    add b
    ld a, a
    add d
    add b
    sub c
    add e
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
    xor b
    xor l
    and l
    xor [hl]
    or c
    xor h
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, c
    or e
    and a
    and h
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    call nc, $ad7f
    and b
    xor h
    and h
    db $f4
    ld c, a
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
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor a
    or c
    xor [hl]
    and l
    xor b
    xor e
    and h
    add sp, $51
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
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add d
    add b
    sub c
    add e
    add sp, $51
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld c, a
    and h
    xor l
    or e
    and h
    or c
    and h
    and e
    ld a, a
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
    ld d, c
    xor l
    or h
    xor h
    and c
    and h
    or c
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
    or e
    or c
    and b
    and e
    and h
    ld a, a
    add d
    add b
    sub c
    add e
    sub d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
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
    or d
    add sp, $51
    ld d, a
    nop
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
    call nc, $827f
    add b
    sub c
    add e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and d
    and b
    xor l
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    and b
    ld a, a
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
    and b
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
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    ld hl, sp-$53
    and e
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld d, l
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
    add sp, $51
    ld d, a
    nop
    sub e
    xor [hl]
    ld a, a
    or d
    and b
    and l
    and h
    xor e
    cp b
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    xor e
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
    ld d, c
    add d
    add b
    sub c
    add e
    sub d
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
    ld c, a
    or d
    and h
    or e
    ld a, a
    and b
    ld a, a
    adc a
    add b
    sub d
    sub d
    add d
    adc [hl]
    add e
    add h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    add l
    adc [hl]
    adc e
    add e
    add h
    sub c
    add sp, $51
    ld d, a
    nop
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    add l
    adc [hl]
    adc e
    add e
    add h
    sub c
    ld c, a
    xor b
    or d
    ld a, a
    and e
    and h
    xor e
    and h
    or e
    and h
    and e
    db $f4
    ld a, a
    and b
    xor e
    xor e
    ld d, c
    xor b
    or e
    or d
    ld a, a
    add d
    add b
    sub c
    add e
    sub d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc a
    add b
    sub d
    sub d
    add d
    adc [hl]
    add e
    add h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld d, l
    and c
    and h
    ld a, a
    and e
    and h
    xor e
    and h
    or e
    and h
    and e
    add sp, $51
    add c
    and h
    or [hl]
    and b
    or c
    and h
    db $e3
    db $e3
    and b
    ld a, a
    and e
    and h
    xor e
    and h
    or e
    and h
    and e
    ld c, a
    add d
    add b
    sub c
    add e
    ld a, a
    add l
    adc [hl]
    adc e
    add e
    add h
    sub c
    ld a, a
    and d
    and b
    xor l
    push de
    ld d, l
    and c
    and h
    ld a, a
    or c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    add sp, $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    and h
    xor e
    and h
    or e
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    add l
    adc [hl]
    adc e
    add e
    add h
    sub c
    and $57
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
    or h
    or c
    and h
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
    xor e
    and h
    or e
    and h
    ld a, a
    xor b
    or e
    and $57
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
    add l
    adc [hl]
    adc e
    add e
    add h
    sub c
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
    and e
    and h
    xor e
    and h
    or e
    and h
    and e
    add sp, $51
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
    and b
    xor l
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    ld c, a
    add d
    add b
    sub c
    add e
    ld a, a
    add l
    adc [hl]
    adc e
    add e
    add h
    sub c
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld d, l
    xor a
    or c
    and h
    or l
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
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
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    xor b
    or e
    and $57
    nop
    add e
    and h
    xor e
    and h
    or e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor e
    and e
    ld c, a
    add d
    add b
    sub c
    add e
    ld a, a
    add l
    adc [hl]
    adc e
    add e
    add h
    sub c
    and $57
    nop
    add l
    xor b
    xor l
    xor b
    or d
    and a
    ld a, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    add d
    add b
    sub c
    add e
    sub d
    and $57
    nop
    add a
    or h
    and a
    and $7f
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    rst $20
    ld d, a
    nop
    add d
    xor e
    xor b
    and d
    xor d
    rst $20
    ld d, a
    nop
    ld d, [hl]
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld a, a
    xor b
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
    and a
    and h
    ld a, a
    and b
    or c
    and h
    and b
    add sp, $57
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    and b
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    rst $20
    ld d, a
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
    rst $20
    ld d, a
    nop
    ld a, a
    ld a, a
    sbc h
    ld d, a
    nop
    adc a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    adc [hl]
    adc d
    add sp, $4f
    sub d
    and h
    xor e
    and h
    and d
    or e
    ld a, a
    add d
    adc [hl]
    adc l
    sub e
    adc b
    adc l
    sub h
    add h
    ld a, a
    jp hl


    ld d, l
    or c
    and h
    or d
    and h
    or e
    ld a, a
    or d
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    or d
    add sp, $58
    nop
    sub [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    rst $20
    ld e, b
    nop
    sub c
    and h
    or d
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor e
    xor [hl]
    and d
    xor d
    and $57
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
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    add sp, $57
    nop
    add d
    xor e
    and h
    and b
    or c
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or d
    and b
    or l
    and h
    ld c, a
    and e
    and b
    or e
    and b
    and $57
    ld bc, $d050
    nop
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    rst $20
    ld d, b
    dec bc
    ld b, $50
    ld d, b
    nop
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
    ld c, [hl]
    and c
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
    and $57
    nop
    sub d
    or e
    xor [hl]
    xor a
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
    ld d, b
    ld bc, $d086
    nop
    and $57
    ld bc, $d050
    nop
    ld c, a
    and e
    xor b
    and e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld d, l
    ld d, b
    ld bc, $d086
    nop
    add sp, $58
    ld bc, $d050
    nop
    ld a, a
    xor b
    or d
    ld c, a
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
    xor e
    and h
    and b
    or c
    xor l
    ld d, l
    ld d, b
    ld bc, $d086
    nop
    add sp, $51
    add c
    or h
    or e
    ld a, a
    ld d, b
    ld bc, $d050
    nop
    ld c, a
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
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld d, l
    or e
    and a
    and b
    xor l
    ld a, a
    and l
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $51
    add e
    and h
    xor e
    and h
    or e
    and h
    ld a, a
    and b
    xor l
    ld a, a
    xor [hl]
    xor e
    and e
    and h
    or c
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    and $57
    nop
    rst $30
    db $f4
    ld a, a
    ld hl, sp+$7f
    and b
    xor l
    and e
    ld [hl], l
    ld d, b
    ld a, [bc]
    ld d, b
    ld d, b
    nop
    ld a, a
    adc a
    xor [hl]
    xor [hl]
    and l
    rst $20
    ld d, b
    ld a, [bc]
    nop
    ld d, c
    ld d, b
    ld bc, $d050
    nop
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $51
    add b
    xor l
    and e
    ld [hl], l
    ld e, b
    nop
    add a
    adc h
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
    push de
    ld a, a
    and c
    and h
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
    xor l
    xor [hl]
    or [hl]
    add sp, $58
    nop
    adc a
    xor e
    and b
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    and $57
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
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld [hl], l
    ld e, b
    nop
    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld a, a
    and d
    and b
    or c
    and e
    add sp, $57
    nop
    adc a
    xor e
    and b
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and h
    or e
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
    xor a
    xor e
    and b
    cp b
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    and b
    or c
    and e
    or d
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
    or d
    and a
    or h
    and l
    and l
    xor e
    and h
    and e
    add sp, $58
    nop
    sbc b
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
    dec d
    ld d, b
    ld d, b
    nop
    ld d, [hl]
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
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
    or d
    and h
    or c
    or l
    xor b
    and d
    and h
    ld a, a
    and b
    or c
    and h
    and b
    add sp, $58
    nop
    sub [hl]
    and a
    xor [hl]
    xor h
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
    and d
    and b
    xor e
    xor e
    and $57
    nop
    adc a
    or c
    and h
    or d
    or d
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    and c
    or h
    or e
    or e
    xor [hl]
    xor l
    ld c, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    xor b
    or e
    add sp, $57
    nop
    add e
    and h
    xor e
    and h
    or e
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    ld c, a
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
    and $57
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
    ld bc, $d073
    nop
    and $4f
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
    ld d, c
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
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    add sp, $51
    ld d, a
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
    add sp, $51
    ld d, a
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
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    add h
    or a
    and d
    or h
    or d
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    ld d, a
    nop
    add h
    or a
    and d
    or h
    or d
    and h
    ld a, a
    xor h
    and h
    add sp, $4f
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
    or c
    and h
    and b
    and e
    cp b
    add sp, $51
    ld d, a
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
    or e
    or h
    or c
    xor l
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or c
    and h
    and b
    and e
    cp b
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
    and b
    or e
    ld a, a
    xor e
    and h
    and b
    or d
    or e
    ld c, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    ld d, a
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    ld c, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    or b
    or h
    and b
    xor e
    xor b
    and l
    cp b
    add sp, $51
    ld d, a
    nop
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    and h
    xor l
    or e
    and h
    or c
    and h
    and e
    add sp, $51
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld d, l
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    add sp, $51
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
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
    xor b
    or e
    and h
    xor h
    or d
    add sp, $51
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
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    xor l
    ld c, a
    add h
    add [hl]
    add [hl]
    rst $20
    ld d, c
    ld d, a
    nop
    adc b
    or e
    ld a, a
    and e
    xor [hl]
    and e
    and [hl]
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    add c
    add b
    adc e
    adc e
    rst $20
    ld d, c
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
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld e, b
    nop
    adc [hl]
    and a
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    or c
    xor [hl]
    xor d
    and h
    ld a, a
    and l
    or c
    and h
    and h
    rst $20
    ld e, b
    nop
    add b
    or [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    or e
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
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    add b
    and b
    or c
    and [hl]
    and a
    rst $20
    ld c, a
    add b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop
    sub d
    and a
    xor [hl]
    xor [hl]
    or e
    rst $20
    ld a, a
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    xor [hl]
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld e, b
    nop
    add [hl]
    xor [hl]
    or e
    and d
    and a
    and b
    rst $20
    ld a, a
    ld d, b
    ld bc, $c616
    nop
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld d, b
    db $10
    ld d, b
    ld d, b
    ld b, $50
    ld d, b
    ld bc, $d050
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
    ld bc, $c616
    nop
    call nc, $a37f
    and b
    or e
    and b
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    xor l
    and h
    or [hl]
    xor e
    cp b
    ld a, a
    and b
    and e
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    ld d, h
    add e
    add h
    sub a
    add sp, $50
    inc de
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
    ld bc, $d073
    nop
    call nc, Call_071_504f
    ld bc, $d086
    nop
    ld a, a
    or c
    xor [hl]
    or d
    and h
    add sp, $58
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
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    xor [hl]
    xor l
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
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    sub c
    add h
    adc a
    add h
    adc e
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    and h
    and b
    or c
    xor e
    xor b
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld d, l
    xor b
    xor l
    ld a, a
    and h
    and l
    and l
    and h
    and d
    or e
    add sp, $58
    nop
    adc a
    xor e
    and b
    cp b
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    ld c, a
    add l
    adc e
    sub h
    sub e
    add h
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a07f
    ld c, a
    and d
    and b
    or e
    and d
    and a
    cp b
    ld a, a
    or e
    or h
    xor l
    and h
    rst $20
    ld e, b
    nop
    add b
    xor e
    xor e
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
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
    xor [hl]
    xor d
    and h
    ld a, a
    or h
    xor a
    add sp, $58
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
    ld d, h
    ld a, a
    add l
    adc e
    sub h
    sub e
    add h
    add sp, $50
    ld b, $50
    ld d, b
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    ld d, b
    add hl, bc
    ld c, e
    call c, $0012
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    add sp, $57
    nop
    add d
    xor [hl]
    xor b
    xor l
    or d
    sbc h
    ld c, a
    ld d, b
    add hl, bc
    ld d, l
    ret c

    inc h
    ld d, b
    ld d, b
    nop
    sub c
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
    ld a, a
    xor [hl]
    and l
    ld c, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    and $57
    nop
    sub c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    adc a
    ld a, a
    xor [hl]
    and l
    ld c, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    and $57
    ld bc, $d086
    nop
    call nc, $8f7f
    adc a
    ld c, a
    xor b
    or d
    ld a, a
    xor h
    and b
    or a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $58
    ld bc, $d086
    nop
    call nc, $8f7f
    adc a
    ld c, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    and e
    add sp, $58
    nop
    adc a
    adc a
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    add sp, $58
    nop
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
    ld a, a
    or e
    or c
    xor [hl]
    xor a
    and a
    cp b
    ld c, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    rst $20
    ld d, b
    dec bc
    nop
    ld d, c
    ld d, b
    ld bc, $d47d
    nop
    ld a, a
    or d
    and h
    xor l
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    or c
    xor [hl]
    xor a
    and a
    cp b
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    add sp, $58
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
    and c
    xor b
    or e
    or e
    and h
    or c
    ld [hl], l
    ld e, b
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
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
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
    sub e
    and a
    and b
    or e
    ld a, a
    and c
    and h
    xor e
    xor [hl]
    xor l
    and [hl]
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a
    or [hl]
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
    xor l
    cp b
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    add sp, $58
    nop
    sub e
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
    and c
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add c
    add b
    adc e
    adc e
    rst $20
    ld e, b
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    or e
    and a
    xor b
    and h
    and l
    rst $20
    ld e, b
    nop
    add d
    cp b
    and d
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    add d
    and b
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
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
    add sp, $7f
    sub e
    and a
    and b
    or e
    ld d, l
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
    xor l
    xor [hl]
    or [hl]
    add sp, $58
    nop
    ld d, d
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld d, b
    dec b
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
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, b
    dec b
    ld bc, $d086
    nop
    add sp, $58
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
    ld d, b
    dec b
    nop
    or e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $58
    ld bc, $d073
    nop
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $58
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    and $57
    nop
    add e
    xor [hl]
    xor l
    and h
    rst $20
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
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $57
    nop
    add b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    and $7f
    add d
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
    xor h
    and h
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
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
    xor b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    and $58
    nop
    sub h
    xor h
    ld [hl], l
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    and h
    or d
    db $f4
    ld a, a
    adc b
    jp nc, $b34f

    and a
    and h
    ld a, a
    adc h
    adc [hl]
    sub l
    add h
    ld a, a
    add e
    add h
    adc e
    add h
    sub e
    add h
    sub c
    add sp, $51
    adc b
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $51
    sub d
    and a
    and b
    xor e
    xor e
    ld a, a
    adc b
    ld a, a
    xor h
    and b
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
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
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
    and $58
    nop
    ld a, a
    add e
    sub d
    sub e
    db $f4
    ld c, a
    xor b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    db $f4
    ld c, a
    xor b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc [hl]
    adc d
    and $57
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
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    add e
    and b
    cp b
    xor e
    xor b
    and [hl]
    and a
    or e
    ld d, l
    sub d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    sub e
    xor b
    xor h
    and h
    and $57
    nop
    adc b
    ld a, a
    or d
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor e
    xor [hl]
    and d
    xor d
    ld c, a
    and l
    xor [hl]
    or c
    or [hl]
    and b
    or c
    and e
    ld a, a
    and c
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
    ld d, l
    and a
    xor [hl]
    or h
    or c
    add sp, $58
    nop
    adc b
    or d
    ld a, a
    add e
    and b
    cp b
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    sub d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    sub e
    xor b
    xor h
    and h
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and $57
    nop
    adc b
    ld a, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor e
    xor [hl]
    and d
    xor d
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    xor [hl]
    or h
    or c
    add sp, $58
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
    and b
    and e
    xor c
    or h
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor e
    xor [hl]
    and d
    xor d
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    add e
    and b
    cp b
    xor e
    xor b
    and [hl]
    and a
    or e
    ld c, a
    sub d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    sub e
    xor b
    xor h
    and h
    and $57
    nop
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
    ld a, a
    xor b
    xor l
    db $e3
    ld c, a
    or d
    or e
    or c
    or h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and c
    xor [hl]
    xor [hl]
    xor d
    xor e
    and h
    or e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
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
    and [hl]
    and b
    xor b
    xor l
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
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
