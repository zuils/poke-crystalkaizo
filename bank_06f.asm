; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06f", ROMX[$4000], BANK[$6f]

    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    and l
    or c
    or h
    xor b
    or e
    db $e3
    ld c, a
    and c
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    or c
    and h
    and h
    add sp, $57
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    adc b
    or e
    call nc, Call_06f_504f
    ld bc, $d099
    nop
    rst $20
    ld d, a
    nop
    adc [hl]
    and c
    or e
    and b
    xor b
    xor l
    and h
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
    or e
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
    ld c, a
    and l
    or h
    xor e
    xor e
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
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    add b
    adc a
    sub c
    adc b
    add d
    adc [hl]
    sub c
    adc l
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
    or h
    or d
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
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld c, a
    xor h
    and b
    xor d
    and h
    and $57
    ld bc, $d073
    nop
    ld c, a
    or c
    and h
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld a, a
    ld d, b
    add hl, bc
    di
    pop de
    inc hl
    nop
    add a
    adc a
    rst $20
    ld d, a
    ld bc, $d073
    nop
    call nc, $a24f
    or h
    or c
    and h
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    add sp, $57
    ld bc, $d073
    nop
    call nc, $b14f
    xor b
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    add sp, $57
    ld bc, $d073
    nop
    call nc, $a14f
    or h
    or c
    xor l
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    and h
    and b
    xor e
    and h
    and e
    add sp, $57
    ld bc, $d073
    nop
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and e
    and h
    and l
    or c
    xor [hl]
    or d
    or e
    and h
    and e
    add sp, $57
    ld bc, $d073
    nop
    ld c, a
    or [hl]
    xor [hl]
    xor d
    and h
    ld a, a
    or h
    xor a
    add sp, $57
    ld bc, $d073
    nop
    call nc, $a74f
    and h
    and b
    xor e
    or e
    and a
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    add sp, $57
    ld bc, $d073
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or c
    and h
    or l
    xor b
    or e
    and b
    xor e
    xor b
    cp c
    and h
    and e
    add sp, $57
    ld bc, $d073
    nop
    ld a, a
    and [hl]
    or c
    and h
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    ld d, b
    add hl, bc
    ld b, e
    pop de
    inc de
    nop
    rst $20
    ld d, b
    dec bc
    ld b, $50
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    and h
    xor l
    or d
    and h
    or d
    add sp, $57
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
    and b
    xor l
    cp b
    ld c, a
    and l
    xor [hl]
    or h
    or c
    db $e3
    and e
    xor b
    and [hl]
    xor b
    or e
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
    add h
    xor l
    or e
    and h
    or c
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    xor b
    or c
    xor h
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
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
    or c
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
    and a
    and b
    or d
    ld c, a
    and c
    and h
    and h
    xor l
    ld a, a
    or d
    and h
    or e
    add sp, $51
    add h
    xor l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    ld d, l
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
    add sp, $51
    ld d, a
    nop
    or $f6
    or $f6
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    or l
    and b
    xor e
    xor b
    and e
    rst $20
    ld d, c
    ld d, a
    nop
    add h
    xor l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    add d
    add b
    sub c
    add e
    ld c, [hl]
    add l
    adc [hl]
    adc e
    add e
    add h
    sub c
    ld a, a
    adc a
    add b
    sub d
    sub d
    add d
    adc [hl]
    add e
    add h
    add sp, $57
    nop
    adc b
    xor l
    and d
    xor [hl]
    or c
    or c
    and h
    and d
    or e
    ld c, a
    adc a
    add b
    sub d
    sub d
    add d
    adc [hl]
    add e
    add h
    rst $20
    ld d, c
    ld d, a
    nop
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
    xor [hl]
    xor a
    and h
    xor l
    add sp, $50
    ld d, b
    nop
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld c, a
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, c
    sbc c
    cp c
    cp c
    ld [hl], l
    ld a, a
    add a
    xor h
    and $7f
    sub [hl]
    and a
    and b
    ld [hl], l
    and $4f
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor d
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld d, c
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
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
    and d
    xor e
    xor [hl]
    and d
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    and $58
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    and $57
    nop
    sub [hl]
    and a
    and b
    or e
    and $50
    ld d, b
    nop
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
    xor h
    xor b
    xor l
    or h
    or e
    and h
    or d
    and $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld d, b
    ld d, b
    nop
    and $57
    nop
    rst $20
    ld c, a
    adc b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    or d
    xor e
    and h
    xor a
    or e
    rst $20
    ld d, a
    nop
    rst $20
    ld c, a
    sbc b
    xor b
    xor d
    and h
    or d
    rst $20
    ld a, a
    adc b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    db $e3
    ld d, l
    or d
    xor e
    and h
    xor a
    or e
    rst $20
    ld d, a
    nop
    rst $20
    ld c, a
    adc l
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    xor b
    or e
    call nc, $b27f
    xor [hl]
    ld d, l
    and e
    and b
    or c
    xor d
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    and b
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    and $57
    nop
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    xor b
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
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and d
    xor [hl]
    xor l
    xor l
    and h
    and d
    or e
    and h
    and e
    add sp, $57
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    and d
    and h
    xor e
    xor e
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld c, a
    and b
    and e
    and b
    xor a
    or e
    and h
    or c
    add sp, $57
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    add d
    add e
    adc h
    add b
    ld c, a
    and b
    and e
    and b
    xor a
    or e
    and h
    or c
    add sp, $57
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    add e
    adc [hl]
    add d
    adc [hl]
    adc h
    adc [hl]
    ld a, a
    adc a
    add a
    sub d
    ld c, a
    and b
    and e
    and b
    xor a
    or e
    and h
    or c
    add sp, $57
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    add e
    add e
    adc b
    ld a, a
    adc a
    add a
    sub d
    ld c, a
    and b
    and e
    and b
    xor a
    or e
    and h
    or c
    add sp, $57
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or h
    xor l
    xor e
    xor b
    xor h
    xor b
    or e
    and h
    and e
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor h
    xor [hl]
    and c
    xor b
    xor e
    and h
    ld d, l
    and b
    and e
    and b
    xor a
    or e
    and h
    or c
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    xor b
    or d
    sbc h
    ld c, a
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
    add h
    xor l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc b
    add e
    ld a, a
    xor l
    xor [hl]
    add sp, $57
    nop
    add h
    xor l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld c, a
    and b
    xor h
    xor [hl]
    or h
    xor l
    or e
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
    or e
    xor [hl]
    ld c, a
    and d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    add sp, $58
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or d
    xor b
    and e
    and h
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
    xor a
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    and $57
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or d
    xor b
    and e
    and h
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
    xor a
    or h
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    and $57
    nop
    adc a
    or h
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $d099
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
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    sub d
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
    ld d, b
    ld bc, $d099
    nop
    add sp, $58
    nop
    adc a
    or h
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld d, c
    and b
    xor l
    and e
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
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $58
    nop
    sub e
    and a
    and b
    or e
    call nc, $a07f
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or d
    and h
    or e
    ld c, a
    or h
    xor a
    add sp, $58
    nop
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    adc h
    add b
    adc a
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld c, a
    and d
    or h
    or e
    and h
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld c, a
    and d
    or h
    or e
    and h
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
    or e
    call nc, $a07f
    ld a, a
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld c, a
    and d
    or h
    or e
    and h
    ld a, a
    adc c
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    adc a
    sub h
    add l
    add l
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    xor l
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $57
    nop
    add b
    ld a, a
    and [hl]
    xor b
    and b
    xor l
    or e
    ld a, a
    and e
    xor [hl]
    xor e
    xor e
    rst $20
    ld a, a
    adc b
    or e
    call nc, $a54f
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
    and d
    or h
    and e
    and e
    xor e
    cp b
    add sp, $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
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
    and $58
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
    ld a, a
    or h
    or d
    and h
    and l
    or h
    xor e
    ld c, a
    xor b
    or e
    and h
    xor h
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or d
    xor [hl]
    ld e, b
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
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
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
    add sp, $7f
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld e, b
    nop
    adc b
    or e
    call nc, $a87f
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add d
    add sp, $4f
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    and e
    and b
    cp b
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
    ld d, l
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    ld a, a
    and e
    xor [hl]
    xor e
    xor e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld e, b
    nop
    adc b
    or e
    call nc, $a87f
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    add sp, $4f
    sbc b
    xor [hl]
    or h
    pop de
    xor e
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
    ld bc, $c6d1
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
    ld d, b
    ld bc, $c719
    nop
    add sp, $57
    nop
    ld d, a
    ld bc, $c719
    nop
    ld a, a
    and c
    xor b
    and e
    or d
    ld c, a
    and l
    and b
    or c
    and h
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    or e
    xor [hl]
    ld d, a
    ld bc, $c703
    nop
    add sp, $57
    nop
    sub e
    and b
    xor d
    and h
    ld a, a
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
    ld c, a
    ld d, b
    ld bc, $c703
    nop
    add sp, $57
    nop
    add l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $c6e7
    nop
    call nc, Call_06f_504f
    ld bc, $c6d1
    nop
    db $f4
    ld d, a
    ld bc, $c719
    nop
    ld a, a
    or d
    and h
    xor l
    and e
    or d
    ld c, a
    ld d, b
    ld bc, $c703
    nop
    add sp, $57
    ld bc, $c719
    nop
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    ld d, b
    ld bc, $c703
    ld d, b
    ld d, b
    nop
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $c6e7
    nop
    call nc, Call_06f_504f
    ld bc, $c6d1
    nop
    add sp, $57
    ld bc, $c6e7
    nop
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    ld d, b
    ld bc, $c6d1
    ld d, b
    ld d, b
    nop
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $c719
    nop
    call nc, Call_06f_504f
    ld bc, $c703
    nop
    add sp, $57
    ld bc, $c6e7
    nop
    call nc, Call_06f_504f
    ld bc, $c6d1
    nop
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld [hl], l
    ld d, a
    nop
    sub e
    and b
    xor d
    and h
    ld a, a
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
    ld c, a
    ld d, b
    ld bc, $c703
    nop
    add sp, $57
    ld bc, $c6e7
    nop
    call nc, Call_06f_504f
    ld bc, $c6d1
    nop
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld [hl], l
    ld d, a
    nop
    sub e
    and b
    xor d
    and h
    ld a, a
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
    ld c, a
    ld d, b
    ld bc, $c703
    nop
    add sp, $57
    ld bc, $c703
    nop
    ld a, a
    and d
    and b
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
    ld c, a
    adc h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ldh [$92], a
    ld d, a
    nop
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    add b
    adc e
    adc d
    rst $20
    ld d, a
    nop
    ld c, a
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    adc h
    add b
    sub c
    sbc b
    rst $20
    ld d, a
    nop
    ld c, a
    adc [hl]
    add b
    adc d
    sbc h
    ld a, a
    ld d, b
    ld bc, $d050
    ld d, b
    ld d, b
    nop
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld d, a
    nop
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $57
    nop
    ld c, a
    adc h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    call nc, $0057
    ld c, a
    or d
    or [hl]
    and h
    and h
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    or [hl]
    xor b
    and [hl]
    and [hl]
    xor e
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor e
    xor b
    and d
    xor d
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    and b
    xor a
    or e
    xor e
    cp b
    ld a, a
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld d, a
    nop
    ld c, a
    or h
    xor l
    and e
    and h
    xor l
    xor b
    and b
    and c
    xor e
    cp b
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld d, a
    nop
    ld c, a
    or d
    xor [hl]
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or h
    xor l
    and c
    and h
    and b
    or c
    and b
    and c
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    or [hl]
    xor [hl]
    or [hl]
    db $f4
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
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    xor [hl]
    xor [hl]
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    and h
    xor l
    or d
    or h
    and b
    xor e
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    or d
    xor [hl]
    ld a, a
    xor h
    xor b
    or d
    and d
    and a
    xor b
    and h
    or l
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    or d
    xor [hl]
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    xor a
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    or d
    or h
    or c
    and h
    ld a, a
    and b
    and e
    and e
    xor b
    and d
    or e
    xor b
    or l
    and h
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld d, a
    nop
    ld c, a
    and h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld d, a
    nop
    ld c, a
    xor a
    or c
    xor [hl]
    or l
    xor [hl]
    and d
    and b
    or e
    xor b
    or l
    and h
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    or d
    xor [hl]
    ld a, a
    and l
    xor e
    xor b
    xor a
    xor a
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
    ld d, a
    nop
    ld c, a
    and a
    and h
    and b
    or c
    or e
    db $e3
    xor h
    and h
    xor e
    or e
    xor b
    xor l
    and [hl]
    xor e
    cp b
    ld d, a
    nop
    ld c, a
    and d
    or h
    or e
    and h
    add sp, $57
    nop
    ld c, a
    or [hl]
    and h
    xor b
    or c
    and e
    add sp, $57
    nop
    ld c, a
    xor a
    xor e
    and h
    and b
    or d
    and b
    xor l
    or e
    add sp, $57
    nop
    ld c, a
    and c
    xor [hl]
    xor e
    and e
    db $f4
    ld a, a
    or d
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    add sp, $57
    nop
    ld c, a
    and l
    or c
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    ld c, a
    or d
    or h
    and b
    or l
    and h
    ld a, a
    jp hl


    ld a, a
    and e
    and h
    and c
    xor [hl]
    xor l
    and b
    xor b
    or c
    rst $20
    ld d, a
    nop
    ld c, a
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
    ld c, a
    and h
    or a
    and d
    xor b
    or e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    ld c, a
    and [hl]
    or c
    xor [hl]
    xor [hl]
    or l
    cp b
    rst $20
    ld d, a
    nop
    ld c, a
    xor b
    xor l
    or d
    xor a
    xor b
    or c
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    xor e
    cp b
    add sp, $57
    nop
    ld c, a
    and a
    xor [hl]
    or e
    db $f4
    ld a, a
    and a
    xor [hl]
    or e
    db $f4
    ld a, a
    and a
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    ld c, a
    or d
    or e
    xor b
    xor h
    or h
    xor e
    and b
    or e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    ld c, a
    and [hl]
    or h
    and b
    or c
    and e
    and h
    and e
    add sp, $57
    nop
    ld c, a
    xor e
    xor [hl]
    or l
    and h
    xor e
    cp b
    add sp, $57
    nop
    ld c, a
    or d
    xor a
    and h
    and h
    and e
    cp b
    add sp, $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, a
    nop
    ld c, a
    ld d, b
    ld bc, $d073
    ld d, b
    ld d, b
    nop
    ld c, a
    add c
    add h
    adc l
    sbc h
    ld a, a
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
    ld d, a
    nop
    ld c, a
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    rst $20
    ld d, a
    nop
    ld c, a
    adc b
    or e
    call nc, $ac7f
    and h
    db $f4
    ld a, a
    add e
    adc c
    ld a, a
    add c
    add h
    adc l
    rst $20
    ld d, a
    nop
    ld c, a
    add l
    add h
    sub c
    adc l
    sbc h
    ld a, a
    ld d, h
    adc h
    sub h
    sub d
    adc b
    add d
    rst $20
    ld d, a
    nop
    ld c, a
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    add e
    adc c
    ld a, a
    add l
    add h
    sub c
    adc l
    rst $20
    ld d, a
    nop
    ld c, a
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, Call_06f_507f
    dec d
    nop
    db $f4
    ld d, a
    nop
    ld c, a
    or d
    xor [hl]
    ld a, a
    xor e
    and h
    or e
    ld a, a
    or h
    or d
    ld a, a
    xor c
    and b
    xor h
    ld a, a
    or e
    xor [hl]
    ld d, a
    nop
    ld c, a
    or d
    xor [hl]
    ld a, a
    and d
    and a
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld d, a
    nop
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    and b
    or c
    and d
    and a
    rst $20
    ld d, a
    nop
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    or h
    xor e
    xor e
    and b
    and c
    cp b
    rst $20
    ld d, a
    nop
    ld c, a
    sub c
    add h
    add h
    add e
    sbc h
    ld a, a
    sbc b
    and h
    and h
    and a
    and b
    or [hl]
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    ld d, a
    nop
    ld c, a
    cp b
    ldh [$a0], a
    xor e
    xor e
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    ldh [$7f], a
    xor l
    xor [hl]
    or [hl]
    and $57
    nop
    ld c, a
    sub [hl]
    and a
    and h
    or e
    and a
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or h
    xor a
    ld d, a
    nop
    ld c, a
    xor [hl]
    or c
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor e
    xor [hl]
    or [hl]
    db $f4
    ld d, a
    nop
    ld c, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    or d
    or d
    ld a, a
    or e
    and a
    and h
    ld d, a
    nop
    ld c, a
    adc e
    sub h
    add d
    adc d
    sbc b
    ld a, a
    adc l
    sub h
    adc h
    add c
    add h
    sub c
    ld a, a
    sub d
    add a
    adc [hl]
    sub [hl]
    rst $20
    ld d, a
    nop
    ld c, a
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and h
    and h
    xor d
    call nc, $8b7f
    or h
    and d
    xor d
    cp b
    ld d, a
    nop
    ld c, a
    adc l
    or h
    xor h
    and c
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld a, [bc]
    ld bc, $d073
    nop
    rst $20
    ld d, a
    nop
    ld c, a
    adc b
    pop de
    xor e
    ld a, a
    or c
    and h
    xor a
    and h
    and b
    or e
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, a
    nop
    ld c, a
    adc h
    and b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld d, a
    nop
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
    rst $20
    ld d, a
    nop
    ld c, a
    ld [hl], l
    sub c
    and h
    xor a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    ld d, a
    nop
    ld c, a
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
    ld a, a
    and e
    or c
    and b
    and [hl]
    ld [hl], l
    ld d, a
    nop
    ld c, a
    adc a
    adc e
    add b
    add d
    add h
    sub d
    ld a, a
    add b
    adc l
    add e
    ld a, a
    adc a
    add h
    adc [hl]
    adc a
    adc e
    add h
    rst $20
    ld d, a
    nop
    ld c, a
    add c
    or c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    cp b
    ld d, a
    nop
    ld c, a
    xor h
    and h
    db $f4
    ld a, a
    add e
    adc c
    ld a, a
    adc e
    adc b
    adc e
    sbc b
    rst $20
    ld d, a
    nop
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    ld a, a
    ld d, b
    ld bc, $d073
    ld d, b
    ld d, b
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and d
    or h
    or e
    and h
    add sp, $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    and b
    cp c
    cp b
    add sp, $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    xor l
    xor [hl]
    xor b
    or d
    cp b
    add sp, $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    xor a
    or c
    and h
    and d
    xor [hl]
    and d
    xor b
    xor [hl]
    or h
    or d
    add sp, $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and b
    or e
    ld a, a
    and c
    xor [hl]
    xor e
    and e
    add sp, $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor a
    xor b
    and d
    xor d
    cp b
    rst $20
    ld d, a
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    adc [hl]
    adc d
    add sp, $57
    nop
    ld c, a
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
    db $e3
    or d
    xor [hl]
    add sp, $57
    nop
    ld c, a
    xor b
    or d
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
    and [hl]
    or c
    and h
    and b
    or e
    add sp, $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    cp b
    xor a
    and h
    add sp, $57
    nop
    ld c, a
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
    db $f4
    ld a, a
    xor l
    xor [hl]
    and $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    or d
    xor a
    xor b
    or c
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    ld c, a
    xor b
    or d
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    and h
    xor b
    or c
    and e
    add sp, $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    and $57
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and e
    and h
    and l
    xor b
    xor l
    xor b
    or e
    and h
    xor e
    cp b
    ld a, a
    xor [hl]
    and e
    and e
    rst $20
    ld d, a
    nop
    ld c, a
    ld d, b
    ld bc, $d073
    ld d, b
    ld d, b
    nop
    ld c, a
    ld [hl], l
    ld a, a
    ld [hl], l
    add b
    and a
    and h
    xor h
    db $f4
    ld a, a
    or [hl]
    and h
    ld a, a
    and b
    or c
    and h
    ld d, a
    nop
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
    rst $20
    ld d, a
    nop
    ld c, a
    add b
    and l
    or e
    and h
    or c
    ld a, a
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
    ld d, a
    nop
    ld c, a
    xor [hl]
    and l
    ld a, a
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
    db $f4
    ld a, a
    or [hl]
    and h
    ld d, a
    nop
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or c
    xor b
    or d
    and h
    xor l
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld d, a
    nop
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
    and b
    or d
    and a
    and h
    or d
    rst $20
    ld d, a
    nop
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
    ld a, a
    ld d, b
    ld a, [bc]
    nop
    add d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, a
    nop
    ld c, a
    and a
    and h
    and b
    or c
    and $50
    ld a, [bc]
    nop
    ld a, a
    sub [hl]
    and h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    ld c, a
    ld d, b
    ld a, [bc]
    nop
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and c
    xor [hl]
    or d
    or d
    and $57
    nop
    ld c, a
    ld d, b
    ld a, [bc]
    nop
    adc b
    or d
    ld a, a
    and a
    and h
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
    and $57
    nop
    ld c, a
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    add c
    sub h
    add h
    adc l
    add b
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    ld c, a
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, $af7f
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    rst $20
    ld d, a
    nop
    ld c, a
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld [hl], l
    ld a, a
    adc b
    or e
    call nc, $0057
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld d, a
    nop
    ld c, a
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
    xor b
    or e
    rst $20
    ld d, a
    nop
    ld c, a
    adc b
    jp nc, $a87f

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
    call nc, $0057
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
    rst $20
    ld d, a
    nop
    ld c, a
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    adc [hl]
    and a
    ld a, a
    xor h
    cp b
    ld [hl], l
    ld d, a
    nop
    ld c, a
    adc b
    or e
    call nc, $ac7f
    xor b
    and e
    xor l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld a, a
    adc b
    ld d, a
    nop
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    or h
    or e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld d, a
    nop
    ld c, a
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
    or h
    xor l
    xor b
    xor l
    and [hl]
    ld d, a
    nop
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    and e
    rst $20
    ld a, a
    add c
    or h
    or e
    ld d, a
    nop
    ld c, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or d
    or e
    and b
    cp b
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld d, a
    nop
    ld c, a
    xor e
    and b
    or e
    and h
    rst $20
    ld a, a
    adc a
    or c
    and h
    or d
    and h
    xor l
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, a
    nop
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    cp b
    ld a, a
    add e
    adc c
    ld a, a
    add c
    sub h
    add h
    adc l
    add b
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $ae7f

    or h
    or e
    or e
    and b
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    ld [hl], l
    ld d, a
    nop
    ld c, a
    ld d, a
    nop
    ccf
    ld c, a
    or [hl]
    xor b
    or e
    and a
    and e
    or c
    and h
    or [hl]
    ld d, l
    ld d, b
    ld bc, $c616
    nop
    rst $20
    ld e, b
    nop
    ccf
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    ld d, b
    ld bc, $d050
    nop
    ld d, l
    xor [hl]
    xor l
    ld a, a
    ld d, b
    ld bc, $c616
    nop
    rst $20
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
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $58
    nop
    sub e
    and a
    and b
    or e
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
    xor a
    or h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    add b
    add d
    adc d
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    xor a
    or h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc a
    add b
    add d
    adc d
    add sp, $57
    nop
    sub c
    and h
    xor h
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    sub e
    xor b
    xor h
    and h
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
    call nc, $877f
    adc a
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    and h
    and b

Call_06f_504f:
    xor e
    and h
    and e
    add sp, $58
    nop
    sub [hl]
    and b
    or c
    xor a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    and e
    and $57

Call_06f_507f:
    nop
    sub [hl]
    xor b
    xor e
    xor e
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
    or [hl]
    xor b
    or e
    and a
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    and $57
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
    or [hl]
    xor [hl]
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    or c
    and h
    and h
    and e
    xor b
    xor l
    and [hl]
    add sp, $58
    nop
    add c
    or c
    and h
    and h
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    xor a
    xor [hl]
    or d
    or d
    xor b
    and c
    xor e
    and h
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    or e
    xor b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld c, a
    xor b
    or d
    ld a, a
    ld d, b
    add hl, bc
    ld h, l
    jp nc, $0013

    add sp, $55
    sub d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and c
    or c
    and h
    and h
    and e
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
    xor l
    xor [hl]
    ld a, a
    add h
    add [hl]
    add [hl]
    add sp, $4f
    ld e, b
    nop
    adc b
    or e
    call nc, $a67f
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and b
    or e
    and d
    and a
    rst $20
    ld e, b
    nop
    sub e
    and h
    or d
    or e
    ld a, a
    and h
    or l
    and h
    xor l
    or e
    ld c, a
    ld d, b
    add hl, bc
    add [hl]
    ret nc

    ld [de], a
    nop
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
    add h
    xor l
    and e
    rst $20
    ld d, a
    nop
    add l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    and c
    xor [hl]
    cp b
    rst $20
    ld d, a
    nop
    add l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    rst $20
    ld d, a
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
    ld c, a
    and d
    xor [hl]
    xor l
    and d
    and h
    or c
    xor l
    ld a, a
    and b
    ld a, a
    and c
    xor [hl]
    cp b
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add c
    adc [hl]
    sub a
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    and b
    or c
    or c
    xor b
    or l
    and h
    and e
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    add sp, $57
    nop
    adc a
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    xor b
    xor l
    ld c, a
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
    and $57
    ld bc, $d086
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
    ld [hl], e
    ret nc

    ld [de], a
    nop
    add sp, $58
    nop
    sub d
    or e
    and b
    or c
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor b
    xor l
    xor d
    add sp, $57
    nop
    adc e
    xor b
    xor l
    xor d
    ld a, a
    or e
    and h
    or c
    xor h
    xor b
    xor l
    and b
    or e
    and h
    and e
    add sp, $57
    nop
    add d
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor b
    xor l
    xor d
    add sp, $57
    nop
    add d
    xor e
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, a
    xor e
    xor b
    xor h
    xor b
    or e
    and $57
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
    xor e
    xor b
    xor h
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and d
    xor e
    and h
    and b
    or c
    and h
    and e
    add sp, $57
    nop
    adc a
    xor b
    and d
    xor d
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor a
    and b
    and d
    xor d
    and h
    or e
    ld c, a
    and b
    or d
    ld a, a
    and b
    xor l
    ld a, a
    and h
    or c
    or c
    xor [hl]
    or c
    and $57
    nop
    sub e
    or c
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    and c
    or e
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub l
    adc [hl]
    adc e
    sub e
    adc [hl]
    sub c
    add c
    add c
    add b
    add e
    add [hl]
    add h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    and $57
    nop
    add b
    adc l
    adc l
    adc [hl]
    sub h
    adc l
    add d
    add h
    sub c
    sbc h
    ld a, a
    add c
    add h
    add h
    add h
    adc a
    rst $20
    ld d, c
    sub e
    xor b
    xor h
    and h
    call nc, $b47f
    xor a
    rst $20
    ld d, a
    nop
    add b
    adc l
    adc l
    adc [hl]
    sub h
    adc l
    add d
    add h
    sub c
    sbc h
    ld a, a
    sub e
    and a
    and h
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
    xor [hl]
    or l
    and h
    or c
    rst $20
    ld d, a
    nop
    sub c
    add h
    adc a
    add h
    adc e
    call nc, $a47f
    and l
    and l
    and h
    and d
    or e
    ld c, a
    or [hl]
    xor [hl]
    or c
    and h
    ld a, a
    xor [hl]
    and l
    and l
    add sp, $57
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
    and a
    and b
    or d
    ld c, a
    xor l
    xor [hl]
    ld a, a
    or d
    xor a
    and b
    and d
    and h
    ld a, a
    xor e
    and h
    and l
    or e
    ld [hl], l
    ld d, a
    nop
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
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    or c
    and b
    or c
    and h
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    xor b
    xor l
    ld d, l
    ld d, b
    ld bc, $d086
    nop
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
    or d
    and h
    and h
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
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
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $58
    nop
    sub d
    add b
    sub l
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    add h
    add d
    adc [hl]
    sub c
    add e
    ld [hl], l
    ld c, a
    add e
    adc [hl]
    adc l
    ldh [$93], a
    ld a, a
    sub e
    sub h
    sub c
    adc l
    ld a, a
    adc [hl]
    add l
    add l
    rst $20
    ld d, a
    ld bc, $d47d
    nop
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
    ld d, b
    rrca
    ld b, $50
    ld d, b
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
    and d
    xor [hl]
    xor b
    xor l
    or d
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
    add d
    adc [hl]
    adc b
    adc l
    ld a, a
    add d
    add b
    sub d
    add h
    add sp, $58
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    and d
    xor [hl]
    xor l
    xor l
    and h
    and d
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    add [hl]
    and b
    xor h
    and h
    ld a, a
    adc e
    xor b
    xor l
    xor d
    ld a, a
    add d
    and b
    and c
    xor e
    and h
    add sp, $58
    nop
    ld d, d
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $d050
    nop
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld d, b
    ld bc, $d086
    nop
    add sp, $50
    ld d, b
    ld de, $500a
    ld d, b
    nop
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
    add sp, $4f
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
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    and $51
    sub [hl]
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
    ld a, a
    xor b
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    and $57
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
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    or c
    and b
    and e
    and h
    and $7f
    add b
    or [hl]
    or [hl]
    ld [hl], l
    ld d, a
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
    ld d, b
    ld bc, $d073
    nop
    add sp, $7f
    ld d, l
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld a, a
    xor e
    and h
    or e
    and e
    xor [hl]
    or [hl]
    xor l
    ld [hl], l
    ld d, a
    nop
    sbc b
    and b
    cp b
    rst $20
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld d, l
    sub e
    and a
    and b
    xor l
    xor d
    or d
    rst $20
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    call nc, $ac7f
    cp b
    ld a, a
    xor [hl]
    xor e
    and e
    ld c, a
    ld d, b
    ld bc, $d086
    nop
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
    adc b
    jp nc, $ab7f

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
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
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
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld d, c
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
    xor b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    and $57
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
    xor [hl]
    xor l
    and h
    ld a, a
    and h
    xor b
    or e
    and a
    and h
    or c
    and $51
    add [hl]
    and h
    and h
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $b17f
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
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
    ld [hl], l
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
    ld d, b
    ld bc, $d073
    nop
    and $7f
    sub e
    and a
    and b
    or e
    call nc, $b355
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $57
    nop
    add [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld a, a
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
    ld d, c
    adc b
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $57
    nop
    add a
    xor b
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    ld d, b
    ld bc, $d050
    nop
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    xor h
    and h
    ld a, a
    xor b
    or d
    ld d, l
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
    ld d, a
    ld bc, $d050
    nop
    call nc, $a27f
    or h
    or e
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
    xor l
    push de
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    xor b
    or e
    add sp, $7f
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
    ld d, b
    ld bc, $d073
    nop
    and $51
    sub [hl]
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
    ld a, a
    xor b
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $d086
    nop
    and $57
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
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    or c
    and b
    and e
    and h
    and $7f
    adc [hl]
    and a
    db $f4
    ld a, a
    and e
    and b
    or c
    xor l
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    or c
    and b
    and e
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
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
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
    ld c, a
    adc b
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
    and h
    and e
    ld d, l
    ld d, b
    ld bc, $d050
    nop
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
    or e
    and a
    and b
    or e
    ld c, a
    ld d, b
    ld bc, $d086
    nop
    ld a, a
    adc b
    ld d, l
    or e
    or c
    and b
    and e
    and h
    and e
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
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, b
    ld bc, $d050
    nop
    call nc, $b24f
    xor [hl]
    ld a, a
    and d
    or h
    or e
    and h
    rst $20
    ld d, a
    nop
    sub h
    and a
    and $7f
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
    and $57
    nop
    sub e
    or c
    and b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor [hl]
    and e
    and e
    ld [hl], l
    ld d, c
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
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld c, a
    or e
    xor [hl]
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
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a07f
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
    add sp, $51
    sub [hl]
    and a
    and h
    or c
    and h
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
    ld c, a
    xor b
    or e
    and $51
    ld [hl], l
    ld d, c
    sub d
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor e
    and h
    and b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
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
    ld [hl], l
    ld d, c
    adc [hl]
    adc d
    rst $20
    ld c, a
    adc b
    pop de
    xor e
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or d
    and b
    or l
    and h
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
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
    adc [hl]
    xor l
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    db $f4
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    call nc, $a87f
    xor h
    xor a
    xor [hl]
    or c
    or e
    and b
    xor l
    or e
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
    xor h
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
    and $57
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
    add sp, $51
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld e, b
    nop
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
    add sp, $51
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld d, l
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or e
    and h
    and b
    xor h
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    add a
    xor b
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
    and a
    xor [hl]
    xor h
    and h
    rst $20
    ld c, a
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
    ld a, a
    or l
    and h
    or c
    cp b
    ld d, l
    and a
    and b
    or c
    and e
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    add sp, $51
    adc b
    sub $a4
    ld a, a
    xor d
    and h
    xor a
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    or e
    xor b
    and e
    cp b
    add sp, $51
    adc [hl]
    or c
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
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
    or c
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    and $57
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
    or h
    and d
    and a
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
    or d
    and b
    or l
    and h
    and $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    or h
    and d
    and a
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
    or e
    and b
    xor d
    and h
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
    and b
    or l
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
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
    xor l
    push de
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    or h
    and d
    and a
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
    or e
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    or h
    and d
    and a
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
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    or h
    and d
    and a
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
    or d
    and b
    or l
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    or h
    and d
    and a
    add sp, $58
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
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
    add sp, $7f
    sub e
    or c
    or h
    or d
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    ld d, d
    db $f4
    ld a, a
    or d
    or e
    xor b
    and d
    xor d
    ld c, a
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
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    call nc, $b27f
    and b
    and l
    and h
    ld c, a
    and a
    and h
    or c
    and h
    rst $20
    ld a, a
    add [hl]
    and h
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    ld d, d
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    and e
    xor [hl]
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
    and d
    and b
    xor l
    add sp, $57
    nop
    ld d, a
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
    add sp, $7f
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
    ld d, l
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
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
    add sp, $7f
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
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
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
    sub d
    xor [hl]
    db $f4
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
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
    adc e
    add b
    add e
    sbc b
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
    or c
    and b
    xor b
    or d
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
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
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
    adc e
    add b
    add e
    sbc b
    add sp, $7f
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
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    add h
    add [hl]
    add [hl]
    sub d
    and $51
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
    and b
    xor l
    and e
    ld a, a
    adc b
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or c
    and b
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
    ld d, l
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
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and c
    and h
    and $51
    sub d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld a, a
    or c
    and b
    xor b
    or d
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
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
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
    ld c, a
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
    and $58
    nop
    adc [hl]
    and a
    and $7f
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
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $58
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
    adc b
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
    add sp, $58
    nop
    sub c
    and h
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
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
    add sp, $58
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
    or e
    and a
    and b
    or e
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
    and $58
    nop
    adc [hl]
    adc d
    add sp, $7f
    adc b
    pop de
    xor e
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
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
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
    ld a, a
    xor b
    or e
    ld c, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    add b
    or c
    and h
    ld a, a
    or [hl]
    and h
    ld a, a
    and [hl]
    and h
    xor l
    xor b
    or h
    or d
    and h
    or d
    ld a, a
    xor [hl]
    or c
    ld c, a
    or [hl]
    and a
    and b
    or e
    and $7f
    sub [hl]
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
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    and $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld c, a
    and a
    and b
    or d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    add sp, $51
    add c
    cp b
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    db $f4
    ld a, a
    xor b
    or e
    call nc, $a64f
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and c
    cp b
    ld a, a
    ld d, b
    add hl, bc
    add a
    ret nc

    inc de
    nop
    add sp, $51
    adc b
    and l
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
    and c
    and b
    and d
    xor d
    db $f4
    ld a, a
    xor b
    or e
    ld d, l
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
    adc b
    ret nc

    inc [hl]
    nop
    add sp, $57
    nop
    adc a
    and h
    or c
    and l
    and h
    and d
    or e
    rst $20
    ld a, a
    add a
    and h
    or c
    and h
    call nc, $b84f
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $58
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
    add a
    or h
    and a
    and $7f
    add c
    and b
    and d
    xor d
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    and $4f
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld d, c
    xor l
    and h
    and h
    and e
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
    or h
    or d
    add sp, $51
    adc b
    and l
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
    and c
    and b
    and d
    xor d
    db $f4
    ld a, a
    xor b
    or e
    ld d, l
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
    ldh a, [$f7]
    or $f6
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
    add sp, $58
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and l
    xor b
    xor l
    and h
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $58
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
    adc l
    xor [hl]
    or e
    ld a, a
    cp b
    and h
    or e
    ld [hl], l
    ld d, a
    nop
    add b
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, $b87f
    xor [hl]
    or h
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
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
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld d, c
    xor h
    cp b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    xor l
    and h
    or d
    or d
    db $f4
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, a
    or [hl]
    and h
    ld a, a
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
    ld d, c
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
    and a
    and b
    and e
    ld c, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    rst $20
    ld d, c
    sub [hl]
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
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
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
    ld d, c
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
    and a
    and b
    and e
    ld c, a
    xor b
    or e
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor b
    or e
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
    or e
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    rst $20
    ld d, a
    nop
    sub e
    and b
    xor d
    and h
    ld a, a
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
    ld c, a
    xor b
    or e
    add sp, $57
    nop
    sub [hl]
    and h
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    xor l
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    add sp, $7f
    sub e
    and a
    and b
    xor l
    xor d
    or d
    rst $20
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
    add sp, $55
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
    xor a
    and a
    xor [hl]
    or e
    xor [hl]
    db $e3
    ld d, l
    and [hl]
    or c
    and b
    xor a
    and a
    and $58
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
    add sp, $7f
    add a
    xor [hl]
    xor e
    and e
    ld c, a
    or d
    or e
    xor b
    xor e
    xor e
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
    add sp, $58
    nop
    adc a
    or c
    and h
    or d
    or e
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
    add sp, $4f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
