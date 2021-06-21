; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06d", ROMX[$4000], BANK[$6d]

    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $51
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sub [hl]
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
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
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
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld d, c
    xor b
    or d
    and $7f
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and $57
    nop
    sub c
    and h
    and b
    xor e
    xor e
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    ld d, b
    ld bc, $d099
    nop
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
    and [hl]
    xor [hl]
    xor l
    and h
    ld c, a
    or e
    and a
    and h
    or c
    and h
    add sp, $7f
    sub e
    and a
    and b
    or e
    call nc, $aa7f
    xor b
    xor l
    and e
    ld d, l
    xor [hl]
    and l
    ld a, a
    xor l
    and h
    and b
    or e
    db $f4
    ld a, a
    ld d, d
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    and $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc h
    adc [hl]
    adc h
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
    sbc b
    xor [hl]
    or h
    db $d3
    and h
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
    ld d, b
    ld bc, $d099
    nop
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
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    and $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    and $51
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor e
    or h
    and d
    xor d
    ld a, a
    xor [hl]
    xor l
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
    or b
    or h
    and h
    or d
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    add c
    or h
    or e
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld a, a
    adc b
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    xor e
    xor e
    cp b
    ld d, c
    and e
    and h
    or e
    and h
    or c
    xor h
    xor b
    xor l
    and h
    and e
    add sp, $7f
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld c, a
    and c
    and h
    ld a, a
    adc [hl]
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
    sub $a4
    ld c, a
    or d
    and b
    or l
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    ldh a, [$50]
    ld bc, $d099
    nop
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
    and h
    and h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or d
    and b
    or l
    xor b
    xor l
    and [hl]
    and $57
    nop
    adc b
    or e
    call nc, $a87f
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
    xor [hl]
    ld c, a
    or d
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld d, c
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    add sp, $7f
    sub [hl]
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and b
    or l
    and h
    and $57
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
    sub $a4
    ld c, a
    or d
    and b
    or l
    and h
    and e
    ld a, a
    or h
    xor a
    ld a, a
    ldh a, [$50]
    ld bc, $d099
    nop
    add sp, $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    or c
    or e
    ld c, a
    or d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $57
    nop
    adc [hl]
    adc d
    add sp, $7f
    adc b
    pop de
    xor e
    ld a, a
    or d
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    add sp, $57
    nop
    adc [hl]
    adc d
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    or d
    and b
    or l
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    add sp, $57
    nop
    ld d, d
    db $f4
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    ld c, a
    or h
    xor a
    rst $20
    ld a, a
    adc b
    jp nc, $b17f

    xor [hl]
    xor [hl]
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    and c
    and b
    and c
    cp b
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $51
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sub [hl]
    and b
    or d
    xor l
    push de
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
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
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $51
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld d, c
    xor h
    xor b
    or d
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    add h
    adc e
    adc h
    and $7f
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
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $51
    add a
    xor b
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld a, a
    adc b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and h
    or c
    or c
    and b
    xor l
    and e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    and a
    xor [hl]
    xor h
    and h
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
    xor e
    xor e
    xor [hl]
    and $51
    ld [hl], l
    ld [hl], l
    ld a, a
    ld d, d
    and $4f
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $51
    add h
    adc e
    adc h
    ld a, a
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
    and h
    xor l
    or e
    ld c, a
    xor [hl]
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
    or c
    xor b
    xor a
    add sp, $51
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
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and h
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    and $4f
    sub d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
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
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc [hl]
    sub c
    add b
    add [hl]
    add h
    ld a, a
    sub d
    sbc b
    sub d
    sub e
    add h
    adc h
    ld d, c
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
    sub d
    add h
    sub c
    sub l
    adc b
    add d
    add h
    add sp, $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and e
    and b
    cp b
    rst $20
    ld d, c
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
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc [hl]
    sub c
    add b
    add [hl]
    add h
    ld a, a
    sub d
    sbc b
    sub d
    sub e
    add h
    adc h
    ld d, c
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
    sub d
    add h
    sub c
    sub l
    adc b
    add d
    add h
    add sp, $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
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
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    adc [hl]
    sub c
    add b
    add [hl]
    add h
    ld a, a
    sub d
    sbc b
    sub d
    sub e
    add h
    adc h
    ld d, c
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
    sub d
    add h
    sub c
    sub l
    adc b
    add d
    add h
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    call nc, $a27f
    and b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    and $51
    inc d
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    and $4f
    add a
    and b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or d
    and h
    and d
    ld [hl], l
    ld d, c
    ld d, [hl]
    ld c, a
    ld d, [hl]
    ld d, a
    nop
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
    ld c, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    inc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, a
    and a
    and b
    or d
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
    ld d, b
    ld bc, $d099
    nop
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add [hl]
    and h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and l
    xor b
    xor e
    xor e
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    nop
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
    ld c, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    inc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, a
    and a
    and b
    or d
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
    xor [hl]
    xor l
    xor e
    cp b
    ld d, l
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    cp b
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
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc [hl]
    sub a
    add sp, $57
    nop
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
    ld c, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    inc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
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
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
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
    ld c, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    add c
    adc [hl]
    sub a
    add h
    sub d
    ld a, a
    xor b
    and l
    ld d, c
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
    and d
    and b
    or e
    and d
    and a
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
    add sp, $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    and $4f
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    add c
    adc b
    adc e
    adc e
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
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    cp b
    ld a, a
    sub d
    sub e
    adc [hl]
    sub c
    add b
    add [hl]
    add h
    ld a, a
    sub d
    sbc b
    sub d
    sub e
    add h
    adc h
    add sp, $51
    sub e
    and a
    and b
    or e
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
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    xor l
    or e
    ld a, a
    and l
    xor b
    xor e
    xor e
    and h
    and e
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc [hl]
    sub a
    ld a, a
    or h
    xor a
    add sp, $51
    sbc b
    xor [hl]
    or h
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
    ld c, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    add c
    adc [hl]
    sub a
    add h
    sub d
    ld a, a
    xor b
    and l
    ld d, c
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
    and d
    and b
    or e
    and d
    and a
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
    add sp, $51
    add c
    cp b
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $51
    sub e
    or c
    cp b
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and e
    xor [hl]
    ld c, a
    xor b
    or e
    add sp, $51
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
    ld a, a
    and a
    and h
    and b
    xor e
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
    xor b
    and l
    ld d, l
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    and a
    or h
    or c
    or e
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $51
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and h
    and h
    or e
    ld a, a
    adc h
    sub c
    add sp, $4f
    ld d, h
    adc h
    adc [hl]
    adc l
    and $7f
    add [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, l
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
    or d
    and b
    and l
    and h
    xor e
    cp b
    rst $20
    ld d, a
    nop
    inc d
    and $7f
    adc b
    jp nc, $b57f

    and h
    or c
    cp b
    ld c, a
    or h
    xor a
    or d
    and h
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    sub [hl]
    and h
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or d
    or e
    xor [hl]
    xor e
    and h
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
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
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld c, a
    and e
    xor [hl]
    ld a, a
    or e
    and a
    and b
    or e
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $51
    sub [hl]
    and h
    db $d3
    and h
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
    or e
    and a
    and h
    ld c, a
    add h
    add [hl]
    add [hl]
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $7f
    adc b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld d, c
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
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add h
    add [hl]
    add [hl]
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $51
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
    xor h
    cp b
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
    and $7f
    add a
    and h
    call nc, $a07f
    or e
    ld d, c
    or e
    and a
    and h
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
    ld c, a
    xor b
    xor l
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $51
    add a
    xor [hl]
    or [hl]
    call nc, $b37f
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    and $7f
    add a
    and b
    or d
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
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    and e
    and $51
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
    ld a, a
    and a
    and b
    xor a
    db $e3
    ld c, a
    xor a
    and h
    xor l
    or d
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
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $4f
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    and $51
    sub [hl]
    and a
    and b
    or e
    and $7f
    adc b
    or e
    ld a, a
    and a
    and b
    or e
    and d
    and a
    and h
    and e
    and $4f
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    and $51
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
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor h
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $51
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
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
    ld c, a
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
    sub e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    or e
    xor [hl]
    ld d, c
    and a
    and b
    or e
    and d
    and a
    ld a, a
    and e
    and h
    xor a
    and h
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $51
    adc b
    or e
    call nc, $b27f
    or e
    xor b
    xor e
    xor e
    ld a, a
    and b
    ld c, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    cp b
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld d, c
    xor [hl]
    and l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and a
    and b
    or e
    and d
    and a
    and h
    and e
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
    add sp, $51
    sub [hl]
    and h
    db $d3
    and h
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
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $51
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
    and b
    xor l
    ld c, a
    xor [hl]
    and e
    and e
    ld a, a
    or e
    and a
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
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $b24f
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld d, c
    ld d, h
    sub c
    sub h
    sub d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    xor l
    db $e3
    ld c, a
    and l
    and h
    and d
    or e
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sbc b
    and h
    or d
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ab7f
    xor b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    or l
    xor b
    or c
    or h
    or d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    call nc, $a255
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    ld d, h
    sub c
    sub h
    sub d
    add sp, $51
    adc b
    or e
    ld a, a
    xor h
    or h
    xor e
    or e
    xor b
    xor a
    xor e
    xor b
    and h
    or d
    ld a, a
    and l
    and b
    or d
    or e
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor b
    xor l
    and l
    and h
    and d
    or e
    or d
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $7f
    add c
    or h
    or e
    ld c, a
    or e
    and a
    and b
    or e
    call nc, $a07f
    xor e
    xor e
    add sp, $51
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
    or d
    and h
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld d, c
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    or e
    xor b
    xor h
    and h
    add sp, $51
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
    call nc, $ad4f
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
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
    add sp, $7f
    add c
    cp b
    and h
    rst $20
    ld d, a
    nop
    add a
    db $e3
    and a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    inc d
    and $4f
    adc b
    or e
    call nc, $a07f
    ld a, a
    and e
    xor b
    or d
    and b
    or d
    or e
    and h
    or c
    rst $20
    ld d, c
    sub h
    and a
    db $f4
    ld a, a
    or h
    xor h
    db $f4
    ld a, a
    xor b
    or e
    call nc, $a97f
    or h
    or d
    or e
    ld c, a
    or e
    and h
    or c
    or c
    xor b
    and c
    xor e
    and h
    rst $20
    ld d, c
    sub [hl]
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
    adc b
    ld a, a
    and e
    xor [hl]
    and $4f
    adc b
    or e
    ld [hl], l
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld [hl], l
    ld d, c
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
    and c
    and b
    and d
    xor d
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $7f
    sub [hl]
    and h
    ld c, a
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
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld d, c
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    add h
    add [hl]
    add [hl]
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
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
    xor b
    or d
    ld a, a
    and b
    or e
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
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld d, c
    xor b
    xor l
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    add sp, $7f
    ld c, a
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
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld d, l
    and a
    xor b
    xor h
    and $57
    nop
    inc d
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and b
    or c
    and h
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    adc b
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
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
    or [hl]
    and h
    xor b
    or c
    and e
    ld a, a
    xor b
    or d
    ld d, c
    and a
    and b
    xor a
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
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
    or c
    and b
    and e
    xor b
    xor [hl]
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
    or d
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
    or e
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
    inc d
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
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
    xor b
    or e
    and $51
    adc h
    and b
    cp b
    and c
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
    ld c, a
    and a
    and b
    or d
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    add sp, $7f
    adc l
    xor [hl]
    db $f4
    ld d, c
    or e
    and a
    and b
    or e
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
    ld c, a
    and c
    and h
    ld a, a
    or e
    or c
    or h
    and h
    add sp, $51
    sub d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $4f
    sub e
    and b
    xor d
    and h
    ld a, a
    and d
    and b
    or c
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $51
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
    and a
    and h
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
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
    or d
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    cp b
    ld c, a
    xor h
    cp b
    ld a, a
    adc e
    add b
    add c
    and $51
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
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $4f
    add a
    xor [hl]
    or [hl]
    call nc, $a87f
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor [hl]
    and l
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
    xor l
    and h
    and b
    or e
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
    xor h
    cp b
    ld a, a
    adc e
    add b
    add c
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
    rst $20
    ld d, c
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
    xor e
    xor e
    xor [hl]
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add a
    xor [hl]
    or [hl]
    call nc, $a87f
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
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
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    inc d
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    and e
    cp b
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    adc b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    xor b
    and d
    and h
    ld a, a
    xor [hl]
    or h
    or e
    and $57
    nop
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    add [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    xor h
    xor b
    xor l
    or h
    or e
    and h
    and $57
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
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
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
    and d
    or h
    or c
    xor b
    xor [hl]
    or h
    or d
    db $f4
    ld a, a
    xor b
    or e
    call nc, $a07f
    ld d, c
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    add sp, $7f
    adc h
    and b
    cp b
    and c
    and h
    ld c, a
    xor b
    or e
    call nc, $ab7f
    xor b
    xor d
    and h
    ld a, a
    xor h
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
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    adc [hl]
    and a
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    ld d, d
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    adc [hl]
    and a
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and e
    and b
    cp b
    db $f4
    ld c, a
    ld d, d
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    adc [hl]
    and a
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    ld d, d
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    add sp, $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    sub [hl]
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    ld d, d
    add sp, $4f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
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
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    ld d, d
    add sp, $4f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    sub [hl]
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    and $57
    nop
    adc d
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
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
    and a
    and b
    xor a
    xor a
    cp b
    and $51
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    xor b

Call_06d_504f:
    or d
    ld c, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    add sp, $7f
    adc b
    or e
    ld a, a
    and h
    and b
    or e
    or d
    ld a, a
    and b
    ld d, l
    xor e
    xor [hl]
    or e
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
    add sp, $57
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a

Call_06d_507f:
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    add a
    or h
    and a
    and $7f
    sub [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    db $f4
    ld c, a
    ld d, d
    and $57
    nop
    sbc b
    and h
    and b
    and a
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    add a
    or h
    and a
    and $7f
    sub [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    ld c, a
    ld d, d
    and $57
    nop
    sbc b
    and h
    and b
    and a
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    add a
    or h
    and a
    and $7f
    sub [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    ld c, a
    ld d, d
    and $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    and $51
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld c, a
    add a
    xor [hl]
    or [hl]
    call nc, $a87f
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    and l
    or c
    and h
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
    and $51
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld c, a
    add a
    xor [hl]
    or [hl]
    call nc, $a87f
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
    sub [hl]
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    and $51
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld c, a
    add a
    xor [hl]
    or [hl]
    call nc, $a87f
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
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
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
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
    ld a, a
    and b
    ld c, a
    and c
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    and h
    or e
    xor b
    and d
    add sp, $51
    ld d, b
    ld bc, $d0ac
    nop
    db $f4
    ld c, a
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
    xor b
    or e
    ld c, a
    or d
    xor a
    xor [hl]
    or e
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
    db $f4
    ld d, l
    xor b
    or e
    ld a, a
    and a
    and b
    or d
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
    add sp, $51
    adc b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld c, a
    and c
    xor b
    or e
    ld a, a
    xor h
    or h
    and d
    and a
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
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or c
    ld d, l
    or e
    and a
    and b
    xor l
    ld a, a
    and h
    or l
    and h
    or c
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
    and h
    or l
    and h
    xor l
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
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
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
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
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
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
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
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
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
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
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $a34f
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    and b
    or d
    ld d, l
    and h
    or l
    and h
    or c
    add sp, $51
    adc e
    and h
    or e
    call nc, $aa7f
    and h
    and h
    xor a
    ld a, a
    and b
    or e
    ld a, a
    xor b
    or e
    ld c, a
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
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    add d
    add a
    add b
    adc h
    adc a
    sub d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    add sp, $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    add sp, $51
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    adc [hl]
    and a
    add sp, $7f
    add a
    xor b
    db $f4
    ld a, a
    inc d
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    add sp, $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    sub [hl]
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    and $57
    nop
    inc d
    db $f4
    ld a, a
    and a
    xor b
    rst $20
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
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
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    or e
    xor b
    xor h
    and h
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    add sp, $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
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
    or [hl]
    and h
    or c
    and h
    ld c, a
    and b
    or [hl]
    and b
    xor d
    and h
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
    and a
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld d, c
    or e
    xor [hl]
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
    sub d
    ld c, a
    xor [hl]
    and l
    or e
    and h
    xor l
    and $51
    adc b
    ld a, a
    and [hl]
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
    add sp, $4f
    sub [hl]
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    or e
    and a
    and h
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    ld a, a
    xor [hl]
    and l
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
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and c
    and b
    or d
    xor b
    and d
    ld d, c
    xor a
    and b
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
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
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    and $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    and $7f
    add a
    xor b
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    and $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    and $51
    sub e
    or [hl]
    and h
    and h
    or e
    rst $20
    ld a, a
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ac4f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    and $51
    sub e
    or [hl]
    and h
    and h
    or e
    rst $20
    ld a, a
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ac4f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    and $51
    sub e
    or [hl]
    and h
    and h
    or e
    rst $20
    ld a, a
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ac4f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
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
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    and $51
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
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    add sp, $51
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    xor [hl]
    and l
    and l
    db $f4
    ld c, a
    xor b
    or e
    ld a, a
    or [hl]
    xor [hl]
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
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    add sp, $7f
    add a
    xor b
    db $f4
    ld a, a
    ld d, d
    add sp, $4f
    sub [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld c, a
    or [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld c, a
    or [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    and $57
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add a
    or h
    or c
    or c
    cp b
    ld c, a
    or h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    xor l
    or d
    or [hl]
    and h
    or c
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add a
    or h
    or c
    or c
    cp b
    ld c, a
    or h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    xor l
    or d
    or [hl]
    and h
    or c
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    add a
    or h
    or c
    or c
    cp b
    ld c, a
    or h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    xor l
    or d
    or [hl]
    and h
    or c
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
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
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    sub [hl]
    and a
    and b
    or e
    and $7f
    add [hl]
    or c
    and h
    and b
    or e
    and $4f
    adc b
    ld a, a
    or d
    and h
    and h
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and b
    or e
    and $7f
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    adc [hl]
    and l
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or d
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld c, a
    and e
    xor [hl]
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
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld d, c
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    or b
    or h
    and h
    or d
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    xor b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    ld d, d
    and $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    ld d, d
    and $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    ld d, d
    and $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    and $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
    add a
    xor [hl]
    or [hl]
    db $d3
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    db $f4
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    xor h
    xor b
    xor l
    or h
    or e
    and h
    and $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    call nc, $a84f
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    add [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    xor h
    xor b
    xor l
    or h
    or e
    and h
    and $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
    add a
    xor [hl]
    or [hl]
    db $d3
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    db $f4
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    xor h
    xor b
    xor l
    or h
    or e
    and h
    and $57
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
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    call nc, $b14f
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
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    add sp, $51
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    add sp, $7f
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld d, c
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
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    adc [hl]
    and a
    add sp, $7f
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
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
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    adc b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    xor b
    and d
    and h
    ld a, a
    xor [hl]
    or h
    or e
    and $57
    nop
    inc d
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    and e
    cp b
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    adc b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    xor b
    and d
    and h
    ld a, a
    xor [hl]
    or h
    or e
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    sub [hl]
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    and $57
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
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
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
    and a
    and b
    or l
    and h
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, c
    and c
    or h
    or c
    xor l
    add sp, $7f
    adc b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    add sp, $51
    adc [hl]
    and l
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld d, l
    and a
    and b
    or c
    and e
    and h
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    xor l
    and e
    xor e
    and h
    add sp, $51
    sub [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, a
    and h
    or a
    and a
    and b
    or h
    or d
    or e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sbc b
    and h
    or d
    and $7f
    add b
    and a
    db $f4
    ld a, a
    inc d
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or e
    and h
    xor [hl]
    or h
    or d
    ld c, a
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
    or e
    and b
    or e
    and h
    ld d, c
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
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
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
    add sp, $57
    nop
    sbc b
    and h
    or d
    and $7f
    add b
    and a
    db $f4
    ld a, a
    inc d
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or e
    and h
    xor [hl]
    or h
    or d
    ld c, a
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
    or e
    and b
    or e
    and h
    ld d, c
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
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
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
    add sp, $57
    nop
    sbc b
    and h
    or d
    and $7f
    add b
    and a
    db $f4
    ld a, a
    inc d
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or e
    and h
    xor [hl]
    or h
    or d
    ld c, a
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
    or e
    and b
    or e
    and h
    ld d, c
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
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    xor l
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
    add sp, $57
    nop
    add a
    xor b
    cp b
    and b
    db $f4
    ld a, a
    xor b
    or e
    call nc, $947f
    xor l
    and d
    xor e
    and h
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $57
    nop
    add a
    xor b
    cp b
    and b
    db $f4
    ld a, a
    xor b
    or e
    call nc, $947f
    xor l
    and d
    xor e
    and h
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $57
    nop
    add a
    xor b
    cp b
    and b
    db $f4
    ld a, a
    xor b
    or e
    call nc, $947f
    xor l
    and d
    xor e
    and h
    ld c, a
    ld d, b
    ld bc, $d099
    nop
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
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
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
    and $7f
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
    and c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    add sp, $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    add sp, $4f
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
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    add sp, $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    sub [hl]
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    add sp, $4f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
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
    cp b
    xor [hl]
    or h
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $4f
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    and $57
    nop
    adc b
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
    or e
    xor b
    xor h
    and h
    db $f4
    ld c, a
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
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    and a
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
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    adc h
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
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
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    xor b
    xor l
    ld c, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
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
    ld d, c
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    call nc, $a37f
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and l
    and b
    xor l
    or e
    and b
    or d
    or e
    xor b
    and d
    rst $20
    ld d, c
    adc b
    jp nc, $a57f

    or c
    xor b
    and h
    xor l
    and e
    or d
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
    or c
    and h
    and d
    and h
    xor a
    or e
    xor b
    xor [hl]
    xor l
    xor b
    or d
    or e
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or e
    and a
    and h
    ld c, a
    add a
    adc b
    adc d
    add h
    sub c
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    add b
    and a
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or e
    and a
    and h
    ld c, a
    add a
    adc b
    adc d
    add h
    sub c
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    add b
    and a
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $57
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or e
    and a
    and h
    ld c, a
    add a
    adc b
    adc d
    add h
    sub c
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    add b
    and a
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    xor b
    or e
    and $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    or e
    and a
    and h
    ld a, a
    add a
    adc b
    adc d
    add h
    sub c
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    ld d, d
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    or e
    and a
    and h
    ld a, a
    add a
    adc b
    adc d
    add h
    sub c
    rst $20
    ld d, a
    nop
    ld d, d
    db $f4
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
    ld c, a
    and b
    or [hl]
    and b
    xor d
    and h
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    or e
    and a
    and h
    ld a, a
    add a
    adc b
    adc d
    add h
    sub c
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
    and b
    or d
    ld a, a
    and l
    and h
    xor b
    or d
    or e
    cp b
    ld a, a
    and b
    or d
    ld a, a
    and h
    or l
    and h
    or c
    and $51
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
    xor h
    and h
    db $e3
    db $e3
    or [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld d, c
    or e
    xor [hl]
    ld a, a
    and c
    or h
    or c
    xor l
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    and a
    xor b
    xor d
    and h
    ld c, a
    or h
    xor a
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    add sp, $57
    nop
    sbc b
    and h
    or d
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    add a
    and h
    cp b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
    nop
    sbc b
    and h
    or d
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld c, a
    inc d
    add sp, $57
    nop
    sbc b
    and h
    or d
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    or d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    add sp, $51
    add b
    and a
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    inc d
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
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    inc d
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    inc d
    db $f4
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor e
    and b
    or e
    and h
    add sp, $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and b
    xor b
    or d
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
    and $51
    adc b
    ld a, a
    and e
    xor [hl]
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
    and a
    xor b
    xor l
    and [hl]
    or d
    db $f4
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, c
    xor e
    and h
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor b
    xor l
    ld c, a
    add e
    add b
    sbc b
    db $e3
    add d
    add b
    sub c
    add h
    ld a, a
    and b
    xor l
    and e
    ld d, c
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or h
    xor a
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
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
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add a
    xor b
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
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    inc d
    and $51
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    add sp, $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    inc d
    and $51
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    add sp, $7f
    adc b
    or d
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and c
    and b
    and e
    ld a, a
    or e
    xor b
    xor h
    and h
    and $57
    nop
    inc d
    and $51
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    add sp, $4f
    add [hl]
    xor [hl]
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    or e
    and $57
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
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and $51
    adc b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
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
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    add a
    and h
    cp b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    sbc b
    xor b
    xor a
    xor a
    and h
    and h
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
    nop
    sub h
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    add sp, $4f
    inc d
    and $51
    adc b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    xor e
    db $f4
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    sub h
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld c, a
    inc d
    and $51
    adc b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    and c
    or h
    and e
    and e
    cp b
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    sub h
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld c, a
    inc d
    and $51
    adc b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    or d
    xor b
    and e
    and h
    xor d
    xor b
    and d
    xor d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    add sp, $4f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    ld [hl], l
    add a
    or h
    and a
    db $f4
    ld a, a
    inc d
    and $7f
    sbc b
    xor [hl]
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    ld [hl], l
    add a
    or h
    and a
    db $f4
    ld a, a
    inc d
    and $7f
    sbc b
    xor [hl]
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    ld [hl], l
    add a
    or h
    and a
    db $f4
    ld a, a
    inc d
    and $7f
    sbc b
    xor [hl]
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    and $4f
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and d
    and b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    add sp, $51
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
    ld a, a
    or h
    xor a
    ld c, a
    or e
    xor [hl]
    db $f4
    ld a, a
    inc d
    and $57
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    and $4f
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and d
    and b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    add sp, $51
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
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld c, a
    inc d
    and $57
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    and $4f
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and d
    and b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    add sp, $51
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld c, a
    inc d
    and $57
    nop
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
    xor e
    xor [hl]
    or e
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
    add sp, $57
    nop
    sbc b
    or h
    xor a
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld d, c
    adc b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    inc d
    and $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sbc b
    or h
    xor a
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld d, c
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    inc d
    and $57
    nop
    sbc b
    or h
    xor a
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld d, c
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    inc d
    and $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
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
    rst $20
    ld a, a
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld a, a
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld a, a
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    inc d
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
    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
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
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    xor e
    cp b
    and $51
    adc b
    ld a, a
    or c
    and h
    and b
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and c
    xor [hl]
    xor [hl]
    xor d
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
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld d, c
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
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
    or [hl]
    xor b
    or e
    and a
    ld d, l
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or c
    and h
    add sp, $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor e
    xor b
    xor l
    and h
    add sp, $51
    add a
    and h
    cp b
    rst $20
    ld a, a
    adc b
    or e
    call nc, $147f
    rst $20
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor e
    xor b
    xor l
    and h
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld c, a
    adc b
    or e
    call nc, $147f
    rst $20
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor e
    xor b
    xor l
    and h
    add sp, $51
    inc d
    and $4f
    sub [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    and $57
    nop
    sub h
    and a
    db $f4
    ld a, a
    inc d
    and $51
    adc b
    or e
    call nc, $ac7f
    and h
    rst $20
    ld c, a
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    sub h
    and a
    db $f4
    ld a, a
    inc d
    and $51
    adc b
    or e
    call nc, $ac7f
    and h
    rst $20
    ld c, a
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    sub h
    and a
    db $f4
    ld a, a
    inc d
    and $51
    adc b
    or e
    call nc, $ac7f
    and h
    rst $20
    ld c, a
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
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
    or d
    xor [hl]
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    db $f4
    ld d, c
    xor b
    or e
    call nc, $a07f
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld c, a
    or d
    and d
    and b
    or c
    cp b
    add sp, $51
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
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add a
    xor b
    db $f4
    ld a, a
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and e
    and b
    cp b
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add a
    xor b
    db $f4
    ld a, a
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    add sp, $4f
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
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and e
    and b
    cp b
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    add sp, $4f
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
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    add sp, $4f
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
    and $57
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
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or d
    and h
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
    and b
    or c
    and h
    ld a, a
    and l
    xor b
    xor l
    and h
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
    or c
    and h
    ld c, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    xor l
    db $f4
    ld a, a
    adc b
    ld a, a
    and b
    xor h
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
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    or e
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
    xor l
    push de
    ld d, l
    and c
    and h
    ld a, a
    and b
    ld a, a
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
    add sp, $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    and $51
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    xor b
    xor d
    and b
    add sp, $4f
    sub [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    ld a, a
    xor a
    xor b
    xor d
    and b
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    and $51
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and e
    and b
    cp b
    ld a, a
    xor a
    xor b
    xor d
    and b
    db $f4
    ld c, a
    or [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    ld a, a
    xor a
    xor b
    xor d
    and b
    and $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    and $51
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    xor b
    xor d
    and b
    db $f4
    ld c, a
    or [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    ld a, a
    xor a
    xor b
    xor d
    and b
    and $57
    nop
    inc d
    ld a, a
    xor a
    xor b
    xor d
    and b
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor a
    xor b
    xor d
    and b
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
    inc d
    ld a, a
    xor a
    xor b
    xor d
    and b
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    xor a
    xor b
    xor d
    and b
    ld a, a
    and e
    and b
    cp b
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor a
    xor b
    xor d
    and b
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
    inc d
    ld a, a
    xor a
    xor b
    xor d
    and b
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    add sp, $7f
    sub [hl]
    and h
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    xor b
    xor d
    and b
    ld a, a
    and b
    or [hl]
    and b
    xor d
    and h
    and $57
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
    or e
    xor [hl]
    ld a, a
    and a
    and h
    and b
    or c
    ld c, a
    or e
    and a
    xor b
    or d
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    xor e
    xor [hl]
    or l
    and b
    and c
    xor e
    and h
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld c, a
    and b
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    or c
    xor b
    xor l
    xor l
    and h
    and e
    rst $20
    ld d, c
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
    xor [hl]
    or h
    or c
    ld a, a
    and a
    and h
    and b
    or c
    or e
    or d
    ld a, a
    and c
    and h
    and b
    or e
    ld d, l
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    ld a, a
    and b
    or d
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    or l
    xor [hl]
    xor b
    and d
    and h
    ld [hl], l
    ld c, a
    inc d
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
    and h
    xor e
    xor e
    xor [hl]
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld c, a
    inc d
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld c, a
    or [hl]
    and h
    and b
    or e
    and a
    and h
    or c
    call nc, $a67f
    or c
    and h
    and b
    or e
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld a, a
    and e
    and b
    cp b
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and l
    xor b
    or d
    and a
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
    rst $20
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
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
    xor l
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    or e
    or c
    xor b
    xor a
    ld c, a
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
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and b
    xor b
    xor l
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sbc b
    and h
    or d
    and $7f
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    add b
    and a
    db $f4
    ld a, a
    ld d, d
    add sp, $7f
    sub [hl]
    and a
    and b
    or e
    ld c, a
    and d
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
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
    sbc b
    and h
    or d
    and $7f
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    add b
    and a
    db $f4
    ld a, a
    ld d, d
    add sp, $7f
    sub [hl]
    and a
    and b
    or e
    ld c, a
    and d
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
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
    sbc b
    and h
    or d
    and $7f
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    add b
    and a
    db $f4
    ld a, a
    ld d, d
    add sp, $7f
    sub [hl]
    and a
    and b
    or e
    ld c, a
    and d
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
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
    add a
    xor b
    cp b
    and b
    db $f4
    ld a, a
    ld d, d
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    ld c, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    add a
    and h
    cp b
    rst $20
    ld a, a
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $57
    nop
    add a
    xor b
    cp b
    and b
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $57
    nop
    add a
    xor b
    cp b
    and b
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld c, a
    ld d, b
    ld bc, $d099
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
    or d
    and b
    or [hl]
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
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
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
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    and b
    xor e
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
    or c
    and h
    and [hl]
    or h
    xor e
    and b
    or c
    xor e
    cp b
    db $f4
    ld d, c
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    and $4f
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
    add sp, $51
    add a
    and h
    and a
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld a, a
    xor b
    or e
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
    and [hl]
    xor [hl]
    ld c, a
    or e
    xor [hl]
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
    sub d
    ld d, l
    xor [hl]
    and l
    or e
    and h
    xor l
    add sp, $7f
    add a
    and h
    and a
    and h
    and a
    rst $20
    ld d, a
    nop
    sbc b
    and h
    or d
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    add sp, $4f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sbc b
    and h
    or d
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    add sp, $4f
    add a
    and h
    xor e
    xor e
    xor [hl]
    add sp, $57
    nop
    sbc b
    and h
    or d
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    inc d
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    inc d
    and $51
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld c, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $57
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    inc d
    and $51
    add a
    xor b
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    add sp, $57
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    inc d
    and $51
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld c, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
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
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    and $51
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
    or e
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    add d
    add h
    adc l
    sub e
    add h
    sub c
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
    add sp, $51
    add e
    xor [hl]
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
    and d
    or h
    or e
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor b
    or l
    and h
    xor e
    cp b
    ld d, c
    xor a
    or c
    and h
    and d
    xor b
    or d
    and h
    xor e
    cp b
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld c, a
    adc b
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
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
    ld c, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    and e
    and b
    cp b
    add sp, $57
    nop
    sbc b
    and h
    or d
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    and $4f
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    inc d
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
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sbc b
    and h
    or d
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    and $4f
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    and $57
    nop
    sbc b
    and h
    or d
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    and $4f
    ld d, b
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    add h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or d
    and h
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    and d
    or e
    xor b
    xor [hl]
    xor l
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld c, a
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
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld c, a
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    or c
    and h
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
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
    and b
    xor l
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
    xor b
    xor l
    and h
    and $51
    adc h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld c, a
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
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, c
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    or h
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
    or e
    xor [hl]
    ld a, a
    and l
    and b
    and d
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    and h
    and b
    or e
    ld d, c
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
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    or c
    and h
    and b
    and d
    and a
    and h
    and e
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add b
    and a
    db $f4
    ld a, a
    inc d
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    or c
    and h
    and b
    and d
    and a
    and h
    and e
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add b
    and a
    db $f4
    ld a, a
    inc d
    db $f4
    ld a, a
    xor b
    or d
    ld c, a
    xor b
    or e
    and $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    or c
    and h
    and b
    and d
    and a
    and h
    and e
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add b
    and a
    db $f4
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    inc d
    add sp, $57
    nop
    add b
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    ld [hl], l
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
    and [hl]
    xor [hl]
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
    and $57
    nop
    add b
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    add d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and b
    xor e
    xor d
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and $57
    nop
    add b
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    sub d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and d
    and b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    or d
    xor [hl]
    ld a, a
    xor e
    and b
    or e
    and h
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
    xor l
    ld a, a
    and b
    xor l
    cp b
    and $51
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
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    add sp, $57
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    ld d, d
    rst $20
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
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and a
    and h
    cp b
    and $57
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    ld d, d
    rst $20
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
    or [hl]
    and h
    and b
    or e
    and a
    and h
    or c
    db $f4
    ld a, a
    and a
    and h
    cp b
    and $57
    ld bc, $d099
    nop
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    ld d, d
    rst $20
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
    xor h
    xor [hl]
    xor [hl]
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    and a
    and h
    cp b
    and $57
    nop
    add a
    and h
    cp b
    db $f4
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
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
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
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
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
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    sbc b
    or h
    xor a
    db $f4
    ld a, a
    cp b
    or h
    xor a
    rst $20
    ld c, a
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld d, c
    add a
    and b
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and a
    and h
    or c
    and h
    call nc, $144f
    rst $20
    ld d, a
    nop
    sbc b
    or h
    xor a
    db $f4
    ld a, a
    cp b
    or h
    xor a
    rst $20
    ld c, a
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld d, c
    add a
    and b
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and a
    and h
    or c
    and h
    call nc, $144f
    rst $20
    ld d, a
    nop
    sbc b
    or h
    xor a
    db $f4
    ld a, a
    cp b
    or h
    xor a
    rst $20
    ld c, a
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld d, c
    add a
    and b
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and a
    and h
    or c
    and h
    call nc, $144f
    rst $20
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_504f
    ld bc, $d099
    nop
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
    and a
    and b
    and e
    ld a, a
    and b
    ld c, a
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    and l
    and b
    or d
    or e
    and $57
    nop
    inc d
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_504f
    ld bc, $d099
    nop
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
    and a
    and b
    and e
    ld a, a
    and b
    ld c, a
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    ld a, a
    xor e
    or h
    xor l
    and d
    and a
    and $57
    nop
    inc d
    db $f4
    ld a, a
    xor b
    or e
    call nc, Call_06d_504f
    ld bc, $d099
    nop
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
    and a
    and b
    and e
    ld a, a
    and b
    ld c, a
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    ld a, a
    and e
    xor b
    xor l
    xor l
    and h
    or c
    and $57
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    and $51
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
    xor h
    and h
    db $e3
    db $e3
    or [hl]
    and h
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
    ld d, c
    xor h
    xor b
    and [hl]
    and a
    or e
    cp b
    ld a, a
    and e
    and b
    xor l
    and e
    cp b
    rst $20
    ld c, a
    add a
    and b
    and a
    and b
    and a
    and b
    and a
    rst $20
    ld d, a
    nop
    sbc b
    and h
    or d
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    add sp, $7f
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sbc b
    and h
    or d
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    sbc b
    and b
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sbc b
    and h
    or d
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
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
    nop
    inc d
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld c, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    inc d
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld c, a
    sub [hl]
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
    and $57
    nop
    inc d
    rst $20
    ld d, c
    adc b
    or e
    call nc, Call_06d_507f
    ld bc, $d099
    nop
    rst $20
    ld c, a
    sub [hl]
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or h
    xor a
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
    or c
    and b
    xor b
    or d
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
    add a
    and h
    cp b
    db $f4
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    call nc, Call_06d_504f
    ld bc, $d0ac
    nop
    ld a, a
    xor b
    or d
    ld d, l
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, a
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
