; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

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
    adc b
    jp nc, $a07f

    ld c, a
    add a
    adc b
    adc d
    add h
    sub c
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld d, c
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or l
    and h
    or d
    add sp, $51
    adc b
    ld a, a
    xor [hl]
    and d
    and d
    and b
    or d
    xor b
    xor [hl]
    xor l
    and b
    xor e
    xor e
    cp b
    ld a, a
    or d
    and h
    and h
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
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
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
    or e
    xor b
    xor h
    and h
    ld a, a
    adc b
    ld d, l
    or d
    and h
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $51
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
    or d
    or [hl]
    and b
    xor a
    xor a
    xor b
    xor l
    and [hl]
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
    or d
    and $57
    nop
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
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, l
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
    or d
    or [hl]
    and b
    xor a
    xor a
    xor b
    xor l
    and [hl]
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
    or d
    and $57
    nop
    add c
    and h
    ld a, a
    xor a
    and b
    or e
    xor b
    and h
    xor l
    or e
    add sp, $7f
    adc b
    pop de
    xor e
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
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    and e
    add sp, $7f
    adc b
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
    and h
    and b
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld [hl], l
    ld d, a
    nop
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
    call nc, $a57f
    or h
    xor e
    xor e
    add sp, $51
    adc b
    or e
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
    xor h
    cp b
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
    cp b
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
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
    xor l
    and e
    ld a, a
    adc b
    ld c, a
    and b
    or c
    and h
    ld a, a
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
    rst $20
    ld d, a
    nop
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
    adc b
    ld a, a
    and d
    and b
    xor l
    ld c, a
    or d
    and h
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
    call nc, $8351
    add h
    adc a
    sub e
    add sp, -$6e
    sub e
    adc [hl]
    sub c
    add h
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and c
    and b
    or c
    and [hl]
    and b
    xor b
    xor l
    ld a, a
    or d
    and b
    xor e
    and h
    or d
    ld d, c
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    and l
    or e
    xor [hl]
    xor a
    ld c, a
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
    add sp, $51
    add d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
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
    and $51
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
    or [hl]
    and a
    and h
    xor l
    ld c, a
    or e
    and a
    and h
    cp b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    or d
    and b
    xor e
    and h
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld d, c
    and d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
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
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    or d
    and b
    xor e
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and a
    and h
    and d
    xor d
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
    and h
    or l
    and h
    or c
    cp b
    ld d, c
    and e
    and b
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
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
    call nc, $a07f
    ld d, l
    or d
    and b
    xor e
    and h
    add sp, $57
    nop
    add b
    xor l
    cp b
    or [hl]
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
    db $d3
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    db $f4
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld d, l
    xor h
    cp b
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
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
    or [hl]
    and a
    and h
    xor l
    ld c, a
    or e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    or d
    and b
    xor e
    and h
    add sp, $57
    nop
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
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor h
    and h
    xor h
    xor [hl]
    or c
    cp b
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    xor b
    or e
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld c, a
    adc b
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and d
    or h
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor h
    cp b
    ld d, c
    or d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    sub d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    xor d
    cp b
    rst $20
    ld d, c
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
    ld a, a
    xor l
    xor b
    and d
    and h
    ld c, a
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    xor [hl]
    and l
    or e
    xor [hl]
    xor a
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    db $f4
    ld a, a
    adc b
    ld d, c
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, a
    and d
    and a
    and h
    and h
    or c
    xor e
    and h
    and b
    and e
    and h
    or c
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    jp nc, $ae7f

    xor l
    ld a, a
    xor h
    cp b
    ld c, a
    or [hl]
    and b
    xor e
    xor d
    db $f4
    ld a, a
    adc b
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
    ld d, l
    xor a
    xor b
    and d
    xor d
    ld a, a
    or h
    xor a
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $51
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and [hl]
    and h
    or e
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
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $51
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    and b
    or d
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld c, a
    and b
    or d
    ld a, a
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    xor l
    cp b
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
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
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
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $57
    nop
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    and b
    or d
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld c, a
    and b
    or d
    ld a, a
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    xor [hl]
    and $7f
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld c, a
    adc b
    pop de
    xor e
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld d, l
    or c
    xor [hl]
    xor [hl]
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
    rst $20
    ld d, a
    nop
    add c
    or h
    or e
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
    ld a, a
    xor b
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and l
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    or h
    xor a
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
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
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
    ld a, a
    and c
    xor b
    or e
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld c, a
    and a
    and h
    or c
    and h
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
    xor h
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $57
    nop
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
    xor e
    xor [hl]
    xor [hl]
    xor d
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
    xor e
    cp b
    ld a, a
    and l
    or h
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
    or e
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
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
    and c
    and h
    or d
    or e
    ld c, a
    adc b
    sub $a4
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    rst $20
    ld d, c
    add a
    or h
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
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
    ld d, l
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
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    adc b
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    sub [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor b
    or e
    ld a, a
    and c
    and h
    ld a, a
    adc [hl]
    adc d
    ld a, a
    or e
    xor [hl]
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $51
    adc b
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor h
    xor b
    or d
    or d
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
    xor [hl]
    or h
    ld d, l
    and e
    xor [hl]
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    xor h
    and h
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add [hl]
    and h
    and h
    db $f4
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    rst $20
    ld c, a
    adc l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    or [hl]
    and a
    and h
    or e
    and a
    and h
    or c
    ld c, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    call nc, $b47f
    xor a
    ld a, a
    xor [hl]
    or c
    ld d, c
    xor l
    xor [hl]
    or e
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld c, a
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
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
    rst $20
    ld d, c
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    and b
    xor e
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and a
    and b
    or e
    ld d, c
    and b
    and c
    xor [hl]
    or h
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
    and b
    xor l
    and e
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
    xor e
    xor b
    or d
    or e
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
    and l
    or h
    xor e
    xor e
    ld [hl], l
    ld d, c
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
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    xor a
    xor [hl]
    xor a
    or h
    xor e
    and b
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
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or c
    and b
    or c
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    and $51
    adc b
    jp nc, $af7f

    xor [hl]
    or d
    xor b
    or e
    xor b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    and b
    or c
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $51
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    db $f4
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
    or d
    and a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld d, c
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor l
    and h
    or [hl]
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    and h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
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
    xor e
    and h
    or e
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld d, l
    or d
    and h
    and h
    ld a, a
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
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    or d
    xor a
    xor [hl]
    or e
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    or e
    xor [hl]
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
    and d
    and b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    add b
    or [hl]
    or [hl]
    rst $20
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
    ld c, a
    or e
    and h
    xor e
    xor e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    xor h
    cp b
    ld a, a
    and e
    xor b
    or d
    and d
    xor [hl]
    or l
    and h
    or c
    xor b
    and h
    or d
    rst $20
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
    xor h
    cp b
    ld a, a
    xor l
    or h
    xor h
    and c
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
    xor h
    and b
    xor d
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    db $f4
    ld c, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    or e
    or h
    or c
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    or [hl]
    xor b
    xor l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    adc b
    sub $a4
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
    xor e
    and h
    and b
    and l
    rst $20
    ld d, a
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
    and h
    or a
    or e
    and c
    xor [hl]
    xor [hl]
    xor d
    or d
    ld c, a
    xor b
    or d
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld d, l
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
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    jp nc, $b17f

    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    adc b
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $51
    adc l
    and h
    or a
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
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
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld d, l
    and [hl]
    xor b
    or l
    and h
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
    add sp, $51
    adc h
    and b
    cp b
    ld a, a
    adc b
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
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
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
    xor b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    or d
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    adc b
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
    and l
    xor b
    xor l
    and e
    ld d, c
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and d
    xor [hl]
    or h
    xor l
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld [hl], l
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
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, c
    and c
    or c
    and h
    and b
    xor d
    ld a, a
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
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    jp nc, $b27f

    or e
    or h
    and e
    cp b
    xor b
    xor l
    and [hl]
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
    cp b
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    xor b
    or e
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
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    adc b
    jp nc, $b37f

    and a
    xor [hl]
    or c
    xor [hl]
    or h
    and [hl]
    and a
    xor e
    cp b
    ld c, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    and h
    and e
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
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
    cp b
    xor [hl]
    or h
    or c
    or d
    rst $20
    ld a, a
    sub e
    and b
    db $e3
    and e
    and b
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    xor a
    or d
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
    rst $20
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld c, a
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
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    add c
    xor [hl]
    cp b
    or d
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
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
    cp b
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    add sp, $51
    adc l
    and h
    or a
    or e
    ld a, a
    or e
    xor b
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
    or d
    and a
    and b
    or c
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor b
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
    add sp, $7f
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and [hl]
    and h
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
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
    ld c, a
    and [hl]
    xor b
    and l
    or e
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
    add sp, $51
    adc e
    and h
    or e
    ld a, a
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
    add sp, $57
    nop
    adc l
    and h
    or a
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor [hl]
    cp b
    ld c, a
    and [hl]
    xor b
    or l
    and h
    or d
    ld a, a
    xor h
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
    ld d, c
    and b
    and l
    or e
    and h
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
    db $f4
    ld c, a
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
    or d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, c
    add e
    xor [hl]
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld c, a
    and c
    and b
    and e
    and $57
    nop
    add b
    or [hl]
    or [hl]
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
    or [hl]
    and b
    xor l
    or e
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    and $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $a07f
    xor e
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and l
    or c
    and h
    and h
    ld [hl], l
    ld d, a
    nop
    add c
    or h
    or e
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
    call nc, $ae4f
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    and h
    xor h
    xor [hl]
    or c
    cp b
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    xor e
    and b
    or e
    and h
    rst $20
    ld d, c
    adc b
    jp nc, $a47f

    and b
    and [hl]
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
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
    ld a, a
    and a
    and h
    or c
    and h
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
    and [hl]
    xor b
    and l
    or e
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    or d
    and a
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
    xor h
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and e
    and b
    cp b
    rst $20
    ld d, a
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
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    and $51
    adc b
    pop de
    xor e
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
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
    or h
    and a
    and $7f
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    ld d, h
    add e
    add h
    sub a
    and $7f
    add a
    and b
    or l
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and h
    or e
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    and $51
    add a
    or h
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
    and $7f
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $b67f
    and b
    cp b
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    ld a, a
    xor [hl]
    and l
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
    add sp, $51
    adc h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and a
    and b
    or l
    and h
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $51
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
    and d
    and a
    and b
    or e
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
    add sp, -$72
    add b
    adc d
    add sp, $51
    adc b
    jp nc, $b27f

    or h
    or c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    xor e
    xor [hl]
    and b
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    or h
    xor l
    rst $20
    ld d, a
    nop
    adc h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and a
    and b
    or l
    and h
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $51
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
    and d
    and a
    and b
    or e
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
    add sp, -$72
    add b
    adc d
    add sp, $51
    adc b
    jp nc, $b27f

    or h
    or c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    xor e
    xor [hl]
    and b
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    or h
    xor l
    rst $20
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
    xor e
    xor b
    or d
    or e
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    ld d, l
    sub e
    add b
    adc e
    adc d
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $57
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld c, a
    and d
    and a
    and b
    xor l
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    and h
    or e
    ld d, l
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ld [hl], l
    ld d, a
    nop
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
    xor e
    xor b
    or d
    or e
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
    xor e
    cp b
    ld a, a
    and l
    or h
    xor e
    xor e
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
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld c, a
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
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    rst $20
    ld c, a
    adc b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    or d
    xor [hl]
    and l
    or e
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and l
    or h
    or c
    or c
    cp b
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    and d
    or h
    or e
    and h
    rst $20
    ld d, c
    adc e
    and h
    or e
    call nc, $a17f
    and h
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    rst $20
    ld c, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    db $e3
    xor e
    xor [hl]
    or l
    and h
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld d, l
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and c
    and b
    and e
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    rst $20
    ld d, c
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
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    rst $20
    ld d, c
    add d
    and b
    xor l
    ld a, a
    adc b
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
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    rst $20
    ld d, c
    add d
    and b
    xor l
    ld a, a
    adc b
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
    xor [hl]
    xor l
    and h
    rst $20
    ld a, a
    adc b
    and l
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
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or h
    xor a
    db $f4
    ld a, a
    adc b
    pop de
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
    xor c
    xor b
    xor l
    and [hl]
    xor e
    and h
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld [hl], l
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
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and b
    xor b
    or e
    ld a, a
    and b
    ld a, a
    or d
    and h
    and d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld c, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    xor e
    xor b
    or d
    or e
    call nc, $a57f
    or h
    xor e
    xor e
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
    rst $20
    ld a, a
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    or d
    and h
    and h
    ld d, l
    or e
    and a
    xor b
    or d
    and $7f
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
    xor h
    cp b
    ld a, a
    and [hl]
    xor b
    and l
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    db $f4
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    add sp, $4f
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
    ld d, c
    or c
    xor [hl]
    xor [hl]
    xor h
    add sp, $7f
    add c
    and h
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
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
    add a
    and h
    cp b
    db $f4
    ld a, a
    cp b
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or h
    xor e
    or e
    xor b
    xor h
    and b
    or e
    and h
    ld d, c
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $7f
    sub e
    and a
    and h
    xor l
    ld c, a
    or [hl]
    and h
    db $d3
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    or c
    and b
    and e
    and h
    or d
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld d, c
    or [hl]
    and b
    or e
    and h
    or c
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
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    add sp, $51
    adc c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
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
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld d, c
    or [hl]
    and b
    or e
    and h
    or c
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
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    add sp, $51
    adc c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
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
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and a
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
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
    or d
    xor [hl]
    and $7f
    sub e
    and a
    and h
    xor l
    ld c, a
    adc b
    pop de
    xor e
    ld a, a
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
    xor [hl]
    ld d, l
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    add sp, $57
    nop
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
    xor e
    xor b
    or d
    or e
    ld a, a
    xor b
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and l
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    or h
    xor a
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
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor h
    and b
    xor d
    and h
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
    xor h
    and h
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
    and e
    xor [hl]
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
    and a
    and b
    xor l
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, c
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    or [hl]
    and h
    ld c, a
    xor e
    and b
    or d
    or e
    ld a, a
    xor h
    and h
    or e
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
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
    and c
    xor b
    and [hl]
    ld a, a
    or d
    or h
    or c
    xor a
    or c
    xor b
    or d
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    or c
    and h
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    and [hl]
    xor b
    and l
    or e
    db $f4
    ld a, a
    and b
    or d
    ld c, a
    xor a
    or c
    xor [hl]
    xor h
    xor b
    or d
    and h
    and e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add b
    add d
    adc d
    call nc, $a57f
    or h
    xor e
    xor e
    and $51
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
    xor e
    and b
    or e
    and h
    or c
    db $e3
    db $e3
    ld c, a
    or e
    and a
    and b
    or e
    pop de
    xor e
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor b
    or e
    add sp, $57
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
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    and b
    ld a, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    ld [hl], l
    ld d, c
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
    add sp, $4f
    sbc b
    and h
    or d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
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
    ld c, a
    xor b
    or d
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
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
    add c
    adc b
    adc e
    adc e
    and $4f
    add a
    and h
    call nc, $a07f
    xor l
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
    ld d, c
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    add sp, $4f
    adc b
    ld a, a
    or c
    and h
    or l
    and h
    or c
    and h
    ld a, a
    and a
    xor b
    xor h
    add sp, $51
    adc b
    pop de
    xor e
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
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    adc b
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
    ld a, a
    add c
    adc b
    adc e
    adc e
    db $f4
    ld d, c
    or d
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
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
    add sp, $57
    nop
    adc b
    pop de
    xor e
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
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    adc b
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
    ld a, a
    add c
    adc b
    adc e
    adc e
    db $f4
    ld d, c
    or d
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
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
    add sp, $57
    nop
    add c
    adc b
    adc e
    adc e
    db $e3
    db $e3
    and a
    and h
    call nc, $ac7f
    xor [hl]
    or c
    and h
    ld c, a
    or e
    and a
    and b
    xor l
    ld a, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    sub e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    and e
    and b
    cp b
    ld [hl], l
    ld d, c
    sub e
    and a
    and b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    add sp, $57
    nop
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
    or c
    and h
    and [hl]
    or c
    and h
    or e
    ld a, a
    xor b
    or e
    ld [hl], l
    ld d, c
    add b
    xor l
    and e
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and d
    and b
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    add a
    or h
    and a
    and $7f
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
    ld c, a
    xor e
    xor b
    or d
    or e
    call nc, $a57f
    or h
    xor e
    xor e
    add sp, $51
    add b
    ld a, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    ld a, a
    and a
    and b
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    xor b
    and e
    cp b
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
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    add sp, $51
    adc e
    xor [hl]
    xor [hl]
    xor d
    db $f4
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
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add a
    xor b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $51
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
    and b
    or c
    and h
    xor l
    push de
    ld a, a
    or e
    and a
    and h
    cp b
    and $51
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
    ld d, c
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
    xor d
    xor l
    xor [hl]
    or [hl]
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    rst $20
    ld d, c
    adc e
    and h
    or e
    call nc, $b37f
    and b
    xor e
    xor d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
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
    xor d
    xor l
    xor [hl]
    or [hl]
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    rst $20
    ld d, c
    adc e
    and h
    or e
    call nc, $b37f
    and b
    xor e
    xor d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
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
    adc b
    or d
    xor l
    push de
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
    ld c, a
    or d
    or h
    xor a
    and h
    or c
    db $e3
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    and $57
    nop
    add b
    or [hl]
    or [hl]
    ld [hl], l
    ld a, a
    adc [hl]
    and a
    ld a, a
    or [hl]
    and h
    xor e
    xor e
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
    ld a, a
    xor b
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor e
    xor d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
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
    adc [hl]
    and a
    and $7f
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
    ld c, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    or c
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
    sub e
    and a
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
    rst $20
    ld d, c
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    db $f4
    ld a, a
    adc b
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
    or e
    or c
    cp b
    ld a, a
    and a
    and b
    or c
    and e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
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
    add sp, $7f
    sub d
    and h
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    and $51
    adc b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    ld a, a
    and d
    or h
    or e
    and h
    and $4f
    adc b
    or e
    call nc, $a07f
    ld a, a
    adc a
    adc b
    adc l
    adc d
    ld a, a
    add c
    adc [hl]
    sub [hl]
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
    adc a
    add b
    add d
    adc d
    ld c, a
    xor b
    or d
    ld a, a
    and d
    or c
    and b
    xor h
    xor h
    and h
    and e
    ld a, a
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
    xor d
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
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
    or [hl]
    and b
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or d
    xor e
    xor b
    xor l
    xor d
    ld a, a
    xor [hl]
    and l
    and l
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $51
    adc e
    and h
    or e
    call nc, $ac7f
    and h
    and h
    or e
    ld a, a
    or h
    xor a
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    rst $20
    ld d, a
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
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
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
    and b
    or d
    ld d, l
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    and b
    or d
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    rst $20
    ld d, c
    add d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $51
    adc e
    and h
    or e
    call nc, $ac7f
    and h
    and h
    or e
    ld a, a
    or h
    xor a
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    rst $20
    ld d, a
    nop
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
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
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
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    and c
    xor b
    or c
    and e
    db $e3
    or h
    or d
    and h
    or c
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld c, a
    xor b
    or d
    xor l
    push de
    ld a, a
    and b
    ld a, a
    and c
    and b
    and e
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld [hl], l
    ld d, c
    sub [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or c
    and h
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    and $57
    nop
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
    call nc, $ae7f
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor h
    and h
    xor h
    xor [hl]
    or c
    cp b
    add sp, $7f
    add e
    and h
    xor e
    and h
    or e
    and h
    ld d, l
    and b
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    add b
    xor h
    ld a, a
    adc b
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
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
    rst $20
    ld a, a
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
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
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
    sbc b
    xor [hl]
    or h
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
    or c
    xor [hl]
    xor [hl]
    xor h
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
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
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
    rst $20
    ld d, a
    nop
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
    and b
    xor e
    xor e
    cp b
    db $f4
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
    ld d, c
    sub e
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
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    and h
    ld a, a
    xor [hl]
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
    db $e3
    db $e3
    adc b
    ld d, c
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld c, a
    xor e
    xor [hl]
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
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and e
    xor [hl]
    ld a, a
    and b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    rst $20
    ld d, a
    nop
    add h
    and a
    db $f4
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
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and l
    or h
    xor l
    db $f4
    ld a, a
    adc b
    ret nc

    ld a, a
    or d
    and b
    cp b
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    jp nc, $a57f

    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    adc b
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
    or d
    xor l
    and b
    and [hl]
    ld d, c
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
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    xor a
    and h
    and e
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
    and a
    and h
    xor h
    and $4f
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
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
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    or d
    xor l
    and b
    and [hl]
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
    adc b
    jp nc, $a57f

    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld d, c
    xor b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    or d
    add sp, $7f
    sub [hl]
    and a
    and b
    or e
    call nc, $b84f
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $57
    nop
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    or d
    xor l
    and b
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
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or d
    or h
    or c
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    ld [hl], l
    ld a, a
    add d
    xor [hl]
    xor h
    and h
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor b
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
    and b
    ld d, l
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and a
    and h
    and b
    or c
    or e
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
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
    add b
    or c
    and [hl]
    and a
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
    ld c, a
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add b
    add [hl]
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, l
    and l
    xor e
    and h
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    ld a, a
    and a
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
    add sp, $51
    sub d
    and h
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    and $4f
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
    xor b
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, c
    and b
    ld a, a
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
    ld c, a
    and b
    and [hl]
    xor [hl]
    add sp, $7f
    adc b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    or d
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add b
    add d
    adc d
    call nc, $a57f
    or h
    xor e
    xor e
    and $51
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $57
    nop
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
    and b
    or d
    ld c, a
    or c
    and h
    xor h
    and b
    or c
    xor d
    and b
    and c
    xor e
    and h
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    and l
    xor [hl]
    or c
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
    or e
    xor [hl]
    ld a, a
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    cp b
    rst $20
    ld d, c
    adc a
    and h
    or c
    and a
    and b
    xor a
    or d
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
    ld c, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and e
    xor [hl]
    and $51
    adc h
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
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, a
    xor b
    or e
    ld a, a
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
    ld d, l
    and d
    and a
    and b
    or e
    ld a, a
    xor h
    or h
    and d
    and a
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, a
    nop
    adc h
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
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, a
    and d
    and a
    and b
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $57
    nop
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld c, a
    and a
    and b
    or c
    and e
    and h
    or c
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
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    xor b
    and h
    or d
    or e
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
    and h
    and d
    xor b
    and e
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
    xor h
    cp b
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    db $f4
    ld d, l
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
    add sp, $57
    nop
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
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and l
    or h
    xor e
    xor e
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
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    ld d, d
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
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    and b
    xor a
    xor a
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
    ld a, a
    and d
    and b
    or c
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    xor e
    xor e
    ld [hl], l
    ld d, c
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
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or c
    or c
    cp b
    ld d, c
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, c
    or e
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add b
    add d
    adc d
    rst $20
    ld d, a
    nop
    sub d
    and a
    and h
    and h
    or d
    and a
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld d, c
    or [hl]
    and b
    or d
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
    rst $20
    ld a, a
    sub [hl]
    and h
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
    and h
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, c
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
    and [hl]
    xor b
    or l
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $57
    nop
    sub d
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
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    xor h
    cp b
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
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or c
    and h
    db $e3
    ld c, a
    xor h
    and b
    or e
    and d
    and a
    db $f4
    ld a, a
    and a
    or h
    and a
    and $57
    nop
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
    or [hl]
    and a
    and h
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    and $7f
    sub e
    and a
    and b
    or e
    call nc, $a57f
    xor b
    xor l
    and h
    add sp, $51
    add b
    ld a, a
    and e
    and h
    and l
    xor b
    xor l
    xor b
    or e
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor b
    or d
    ld c, a
    and h
    and b
    or d
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
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
    or c
    and h
    and b
    and e
    cp b
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or c
    and h
    xor h
    and b
    or e
    and d
    and a
    add sp, $57
    nop
    adc [hl]
    and a
    and $7f
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld c, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    ld d, l
    xor h
    cp b
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
    add sp, $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld a, a
    adc e
    and h
    or e
    call nc, $a67f
    xor [hl]
    rst $20
    ld d, c
    sub c
    and h
    and b
    and e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    or h
    or d
    or h
    and b
    xor e
    ld c, a
    xor l
    xor [hl]
    db $e3
    and c
    or c
    and b
    xor b
    xor l
    and h
    or c
    db $f4
    ld a, a
    and b
    xor e
    xor e
    db $e3
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    and h
    xor l
    or d
    and h
    and $57
    nop
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld c, a
    or d
    or e
    or h
    and l
    and l
    and h
    and e
    ld a, a
    and l
    or h
    xor e
    xor e
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
    and a
    and b
    or l
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    add sp, $51
    adc b
    and l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    adc b
    ret nc

    ld a, a
    and c
    and h
    and [hl]
    or h
    xor l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    and b
    ld a, a
    or e
    and b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    ld [hl], l
    ld d, c
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
    or [hl]
    xor [hl]
    or c
    xor d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or d
    or h
    and d
    and d
    and h
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    or e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or h
    or d
    add sp, $4f
    sub d
    xor [hl]
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
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    adc b
    or e
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor h
    and h
    ld c, a
    and b
    xor l
    and [hl]
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    and h
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
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    and a
    and b
    or c
    and e
    and h
    or c
    ld [hl], l
    ld d, c
    add a
    and h
    or c
    and h
    call nc, $ac7f
    cp b
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    add sp, $4f
    adc b
    jp nc, $847f

    sub c
    adc b
    adc l
    db $e3
    db $e3
    and e
    xor [hl]
    xor l
    push de
    ld d, c
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    rst $20
    ld a, a
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
    and $57
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
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
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
    and h
    or a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    and $57
    nop
    adc b
    pop de
    xor e
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
    or e
    xor [hl]
    ld c, a
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
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld d, l
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
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    adc b
    jp nc, $b27f

    and b
    and e
    ld [hl], l
    ld c, a
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    ld a, a
    or [hl]
    and b
    xor l
    or e
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
    db $f4
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or d
    and h
    and h
    ld c, a
    add h
    sub c
    adc b
    adc l
    db $e3
    db $e3
    or e
    and a
    and b
    or e
    call nc, $ac7f
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld a, a
    xor l
    xor [hl]
    add sp, $7f
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
    ld c, a
    xor b
    or d
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and l
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    sbc b
    and b
    cp b
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    xor b
    or e
    and h
    and e
    rst $20
    ld c, a
    adc e
    and h
    or e
    call nc, $b27f
    or e
    and b
    or c
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
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
    rst $20
    ld c, a
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
    ld [hl], l
    ld d, c
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
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
    add sp, $57
    nop
    add b
    or [hl]
    or [hl]
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, c
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
    xor h
    and b
    xor l
    cp b
    ld c, a
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld [hl], l
    ld d, c
    sub e
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
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    rst $20
    ld c, a
    add a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor a
    or c
    and h
    or d
    and h
    xor l
    or e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
