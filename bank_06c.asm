; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06c", ROMX[$4000], BANK[$6c]

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
    ld c, a
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
    xor [hl]
    or h
    or c
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
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld c, a
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
    xor [hl]
    or h
    or c
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
    ld c, a
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
    xor e
    and b
    or e
    and h
    add sp, $51
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
    xor [hl]
    or h
    or c
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
    add d
    adc [hl]
    adc h
    adc h
    sub h
    adc l
    adc b
    add d
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, c
    add d
    add h
    adc l
    sub e
    add h
    sub c
    db $e3
    db $e3
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
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
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
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
    add d
    adc [hl]
    adc h
    adc h
    sub h
    adc l
    adc b
    add d
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, c
    add d
    add h
    adc l
    sub e
    add h
    sub c
    db $e3
    db $e3
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
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
    add sp, $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
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
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor e
    and b
    or e
    and h
    add sp, $51
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
    add d
    adc [hl]
    adc h
    adc h
    sub h
    adc l
    adc b
    add d
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, c
    add d
    add h
    adc l
    sub e
    add h
    sub c
    db $e3
    db $e3
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
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
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    and d
    and b
    xor l
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
    or e
    xor [hl]
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld d, l
    and a
    and h
    and b
    xor e
    or e
    and a
    add sp, $51
    sub d
    and a
    and b
    xor e
    xor e
    ld a, a
    or [hl]
    and h
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
    and $57
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    xor h
    and b
    cp b
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
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
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
    and b
    or c
    and h
    ld c, a
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    and a
    and h
    and b
    xor e
    and h
    and e
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
    ld d, c
    xor b
    xor l
    and l
    and h
    and d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    xor b
    xor l
    cp b
    ld c, a
    xor e
    xor b
    and l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    xor h
    or d
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
    and b
    or c
    and h
    ld c, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    and h
    xor h
    ld d, l
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and l
    xor b
    xor l
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or [hl]
    and h
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
    ld c, a
    cp b
    xor [hl]
    or h
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
    xor h
    xor [hl]
    or c
    and h
    ld d, c
    and b
    or e
    ld a, a
    and b
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
    add sp, $57
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
    ld c, a
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
    ld d, c
    xor b
    xor l
    and l
    and h
    and d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    xor b
    xor l
    cp b
    ld c, a
    xor e
    xor b
    and l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    xor h
    or d
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
    and b
    or c
    and h
    ld c, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    and h
    xor h
    ld d, l
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and l
    xor b
    xor l
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or [hl]
    and h
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
    ld c, a
    cp b
    xor [hl]
    or h
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
    xor h
    xor [hl]
    or c
    and h
    add sp, $57
    nop
    adc b
    or e
    call nc, $a57f
    or h
    xor e
    xor e
    ld a, a
    xor [hl]
    and l
    ld c, a
    and e
    xor b
    and l
    and l
    xor b
    and d
    or h
    xor e
    or e
    ld a, a
    and c
    xor [hl]
    xor [hl]
    xor d
    or d
    add sp, $57
    nop
    add b
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
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
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor a
    xor b
    and d
    or e
    or h
    or c
    and h
    ld d, l
    and c
    xor [hl]
    xor [hl]
    xor d
    or d
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    and b
    and [hl]
    and b
    cp c
    xor b
    xor l
    and h
    or d
    ld [hl], l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc a
    add b
    adc e
    db $f4
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add a
    add b
    adc l
    add e
    add c
    adc [hl]
    adc [hl]
    adc d
    db $f4
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sub c
    add b
    adc a
    add a
    ld [hl], l
    ld d, a
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
    ld a, a
    adc [hl]
    add b
    sub e
    add a
    ld d, c
    sub d
    or e
    and h
    and b
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor a
    or c
    xor [hl]
    and l
    xor b
    or e
    rst $20
    ld d, c
    add h
    or a
    xor a
    xor e
    xor [hl]
    xor b
    or e
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
    xor a
    or c
    xor [hl]
    and l
    xor b
    or e
    rst $20
    ld d, c
    add b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    or a
    xor b
    or d
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    xor e
    xor [hl]
    or c
    cp b
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
    xor b
    or d
    and $51
    adc [hl]
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, $a07f
    xor l
    ld c, a
    xor b
    xor l
    and d
    and h
    xor l
    or d
    and h
    ld a, a
    and c
    or h
    or c
    xor l
    and h
    or c
    rst $20
    ld d, a
    nop
    adc e
    xor [hl]
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
    ld c, a
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
    rst $20
    ld d, a
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
    adc h
    cp b
    ld a, a
    or c
    and h
    and l
    xor e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld c, a
    adc e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    ldh [$7f], a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    sub e
    sub l
    add sp, $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc c
    adc [hl]
    sub h
    sub c
    adc l
    add b
    adc e
    ld c, a
    add a
    adc [hl]
    adc h
    add h
    ld a, a
    adc a
    add b
    add [hl]
    add h
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
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
    ld c, a
    or h
    xor a
    and e
    and b
    or e
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    rst $20
    ld d, c
    add d
    and b
    xor e
    xor e
    ld a, a
    xor b
    xor l
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
    ld c, a
    or c
    and h
    or b
    or h
    and h
    or d
    or e
    or d
    ld a, a
    xor l
    xor [hl]
    or [hl]
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
    add a
    and h
    and b
    xor e
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
    rst $20
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
    ld d, a
    nop
    add l
    xor [hl]
    or c
    ld a, a
    add b
    xor e
    xor e
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc l
    and h
    and h
    and e
    or d
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    sub c
    sub e
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor c
    or h
    and e
    and [hl]
    and h
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
    cp b
    xor [hl]
    or h
    sub $a4
    ld d, l
    and d
    and b
    or h
    and [hl]
    and a
    or e
    add sp, $51
    ld d, [hl]
    ld c, a
    ld d, [hl]
    ld d, c
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and d
    and a
    xor [hl]
    or d
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    xor b
    xor l
    xor l
    and h
    or c
    or d
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
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    xor b
    or d
    and $57
    nop
    ld d, d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc l
    xor [hl]
    add sp, $50
    ld bc, $d099
    nop
    ld c, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    or c
    db $f4
    ld a, a
    or [hl]
    xor b
    xor l
    or d
    ld d, l
    ld d, b
    ld bc, $d0ac
    nop
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
    ld d, b
    ld bc, $d0ac
    nop
    add sp, $57
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    xor c
    xor [hl]
    xor b
    xor l
    ld a, a
    or h
    or d
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
    add d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
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
    and h
    xor e
    or d
    and h
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld c, a
    and b
    ld a, a
    add c
    add h
    sub c
    sub c
    sbc b
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor l
    db $e3
    ld d, l
    or d
    xor [hl]
    xor e
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    rst $20
    ld d, a
    nop
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
    and e
    xor [hl]
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
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
    sub [hl]
    and h
    pop de
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
    and a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and h
    ld a, a
    xor d
    and h
    xor a
    or e
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $4f
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
    or c
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    call nc, $a57f
    or h
    xor e
    xor e
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    or d
    and h
    xor l
    or e
    ld a, a
    or e
    xor [hl]
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
    xor l
    ld a, a
    add c
    adc b
    adc e
    adc e
    call nc, $8f7f
    add d
    add sp, $57
    ld bc, $d099
    nop
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, a
    nop
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld d, c
    sub [hl]
    adc b
    adc l
    adc l
    adc b
    adc l
    add [hl]
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    sub d
    sbc h
    ld c, a
    ld d, d
    ld d, a
    nop
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
    add sp, $57
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    and [hl]
    and b
    xor h
    and h
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    and $51
    adc [hl]
    and a
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
    and d
    xor [hl]
    xor b
    xor l
    or d
    add sp, $57
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    and [hl]
    and b
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    and $51
    adc b
    or e
    ld a, a
    and d
    xor [hl]
    or d
    or e
    or d
    ld a, a
    ldh a, [$f7]
    or $f6
    or $7f
    and l
    xor [hl]
    or c
    ld c, a
    ei
    or $7f
    and d
    xor [hl]
    xor b
    xor l
    or d
    add sp, $7f
    add e
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
    or d
    xor [hl]
    xor h
    and h
    and $57
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
    ld c, a
    add a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    ei
    or $7f
    and d
    xor [hl]
    xor b
    xor l
    or d
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
    rst $20
    ld a, a
    add a
    and h
    or c
    and h
    ld c, a
    and b
    or c
    and h
    ld a, a
    ei
    or $f6
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
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    sbc b
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
    add sp, $57
    nop
    adc l
    xor [hl]
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
    cp b
    xor [hl]
    or h
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
    rst $20
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
    add sp, $51
    sub [hl]
    and h
    pop de
    xor e
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
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
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
    xor b
    or e
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld d, l
    and d
    xor e
    xor [hl]
    or d
    and h
    rst $20
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    xor e
    cp b
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    or d
    xor a
    and h
    xor l
    and e
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
    ld c, a
    or e
    and a
    and h
    xor h
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
    xor l
    push de
    ld a, a
    or e
    and b
    xor h
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
    xor l
    push de
    ld c, a
    xor l
    xor b
    and d
    and h
    db $f4
    ld a, a
    xor b
    or e
    pop de
    xor e
    ld a, a
    xor a
    xor [hl]
    or h
    or e
    add sp, $57
    nop
    ld d, d
    ld a, a
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
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    call nc, $ad7f
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
    ld d, d
    ld a, a
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
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    call nc, $ad7f
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
    xor d
    xor l
    xor [hl]
    or [hl]
    xor e
    and h
    and e
    and [hl]
    and h
    ld a, a
    xor b
    or d
    ld c, a
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
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and b
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
    or e
    or c
    and b
    and e
    and h
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    xor b
    xor a
    or d
    and $51
    adc b
    pop de
    xor e
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor b
    xor l
    and l
    xor [hl]
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $57
    nop
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
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    xor b
    xor a
    or d
    and $51
    adc b
    pop de
    xor e
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor b
    xor l
    and l
    xor [hl]
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
    xor b
    and l
    ld a, a
    adc b
    ld c, a
    and a
    and h
    and b
    or c
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
    adc [hl]
    and a
    db $f4
    ld a, a
    adc [hl]
    adc d
    add sp, $7f
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    ld [hl], l
    ld d, c
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
    ld a, a
    and h
    or l
    and h
    or c
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
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    adc [hl]
    and a
    and $4f
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
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
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    adc e
    and h
    or e
    call nc, $a67f
    and h
    or e
    ld a, a
    or d
    or e
    and b
    or c
    or e
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
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
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
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
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
    or e
    or c
    and b
    and e
    and h
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
    and $51
    adc e
    and h
    or e
    call nc, $a27f
    and a
    and b
    or e
    rst $20
    ld a, a
    adc b
    or e
    pop de
    xor e
    ld c, a
    and c
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
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
    or c
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
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
    db $f4
    ld a, a
    xor b
    or e
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and l
    or h
    xor l
    add sp, $51
    add d
    and b
    xor l
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
    sub e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and a
    xor [hl]
    xor l
    and h
    or d
    or e
    db $f4
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    and b
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor h
    cp b
    ld a, a
    and d
    or h
    or e
    and h
    ld a, a
    sub d
    adc l
    sub h
    add c
    add c
    sub h
    adc e
    adc e
    add sp, $57
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    sub e
    and a
    and b
    or e
    call nc, $a34f
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
    ld d, c
    add [hl]
    xor [hl]
    xor [hl]
    and e
    and c
    cp b
    and h
    db $f4
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
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
    xor a
    and a
    xor [hl]
    xor l
    and h
    call nc, $ac4f
    and h
    xor h
    xor [hl]
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
    adc [hl]
    and a
    and $7f
    ld d, d
    and $7f
    ld c, a
    adc b
    ld a, a
    or [hl]
    and b
    xor b
    or e
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    cp b
    xor [hl]
    or h
    add sp, $7f
    adc b
    ld a, a
    and c
    or c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    cp b
    xor [hl]
    or h
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
    and [hl]
    xor b
    and l
    or e
    add sp, $57
    nop
    adc [hl]
    and a
    and $4f
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
    and l
    xor [hl]
    or c
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
    add d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    call nc, $b37f
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
    ld a, a
    adc b
    sub $a4
    ld d, l
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    rst $20
    ld d, c
    add a
    and h
    cp b
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
    add sp, $51
    sbc b
    xor [hl]
    or h
    ret nc

    ld a, a
    and c
    and h
    ld a, a
    and l
    or h
    xor l
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
    db $f4
    ld a, a
    or d
    xor [hl]
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
    adc b
    ld c, a
    and [hl]
    and h
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
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
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
    add sp, $51
    sbc b
    xor [hl]
    or h
    ret nc

    ld a, a
    and c
    and h
    ld a, a
    and l
    or h
    xor l
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
    db $f4
    ld a, a
    or d
    xor [hl]
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
    adc b
    ld c, a
    and [hl]
    and h
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
    rst $20
    ld d, a
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
    and b
    and [hl]
    and b
    xor b
    xor l
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
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    and b
    ld a, a
    or [hl]
    xor b
    xor h
    xor a
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
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
    call nc, $a04f
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
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    adc b
    jp nc, $b37f

    xor b
    or c
    and h
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add b
    add d
    adc d
    call nc, $a54f
    or h
    xor e
    xor e
    add sp, $7f
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
    ld d, l
    or e
    xor [hl]
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
    add sp, $57
    nop
    adc h
    and b
    xor l
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    or d
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and b
    or d
    ld a, a
    and h
    or l
    and h
    or c
    rst $20
    ld d, c
    adc b
    sub $a4
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
    ld d, d
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
    or [hl]
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    add sp, $51
    adc b
    ld a, a
    and c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    xor l
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    xor l
    ld d, c
    or h
    xor a
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    ld a, a
    and b
    or l
    and b
    xor b
    xor e
    ld [hl], l
    ld d, c
    adc b
    or e
    and h
    xor h
    or d
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld a, a
    and b
    or c
    and h
    xor l
    push de
    ld c, a
    or e
    and a
    and h
    ld a, a
    and b
    xor l
    or d
    or [hl]
    and h
    or c
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
    and c
    and h
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld c, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld [hl], l
    ld d, c
    add a
    and h
    or c
    and h
    db $f4
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
    ld c, a
    ld d, d
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    xor l
    and h
    and h
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    xor b
    or e
    ld a, a
    and b
    xor l
    cp b
    xor h
    xor [hl]
    or c
    and h
    ld [hl], l
    ld d, a
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
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $4f
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    ld d, c
    or e
    and a
    and b
    or e
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
    ld a, a
    xor b
    xor l
    ld c, a
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
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    xor e
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and h
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    and h
    and b
    xor h
    add sp, $57
    nop
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
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    xor e
    ld d, c
    ld d, b
    ld bc, $d0ac
    nop
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and h
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    and h
    and b
    xor h
    add sp, $57
    nop
    add a
    xor [hl]
    or [hl]
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
    and c
    and h
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    and $7f
    adc b
    jp nc, $b37f

    xor [hl]
    or c
    xor h
    and h
    xor l
    or e
    and h
    and e
    ld d, c
    and c
    cp b
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    adc d
    ld [hl], l
    ld a, a
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
    ld [hl], l
    ld c, a
    add c
    or h
    or e
    ld a, a
    xor b
    and l
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
    ld d, c
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
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld c, a
    and b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    xor l
    cp b
    or e
    xor b
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
    call nc, $ac4f
    and h
    xor h
    xor [hl]
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
    add sp, $51
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
    add a
    xor b
    rst $20
    ld a, a
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
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
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    db $f4
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
    or [hl]
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    db $d3
    and h
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
    ld c, a
    and b
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
    add sp, $51
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
    add c
    cp b
    ld a, a
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
    and b
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
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, c
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    sub d
    xor [hl]
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
    xor b
    or e
    and $51
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
    and $57
    nop
    add c
    cp b
    ld a, a
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
    and b
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
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, c
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    sub d
    xor [hl]
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
    xor b
    or e
    and $51
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
    ld [hl], l
    ld d, c
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
    add sp, $57
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
    xor [hl]
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
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    xor d
    and h
    xor a
    or e
    ld a, a
    xor h
    and h
    ld c, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld a, a
    adc e
    and h
    or e
    call nc, $a67f
    xor [hl]
    rst $20
    ld d, a
    nop
    adc b
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $d0ac
    nop
    ld c, a
    or d
    and h
    and h
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
    ld d, c
    xor a
    or c
    and h
    or e
    or e
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    xor b
    or e
    add sp, $51
    add e
    xor [hl]
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
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    and $51
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or d
    and a
    and b
    or c
    and h
    ld a, a
    xor b
    and l
    ld c, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    add sp, $51
    sub [hl]
    and a
    and b
    or e
    call nc, $b87f
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
    and $7f
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    add sp, $51
    add e
    xor [hl]
    xor l
    push de
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
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    xor e
    xor [hl]
    or e
    db $f4
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
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    and $51
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or d
    and a
    and b
    or c
    and h
    ld a, a
    xor b
    and l
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
    and [hl]
    xor [hl]
    and h
    or d
    ld d, l
    and b
    xor l
    and e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    add sp, $51
    sub [hl]
    and a
    and b
    or e
    call nc, $b87f
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
    and $7f
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    xor e
    xor e
    add sp, $57
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
    and [hl]
    and h
    or e
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
    xor a
    or c
    and h
    or e
    or e
    cp b
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    or h
    or c
    and h
    and $7f
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld c, a
    or e
    and h
    xor e
    xor e
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
    ld d, l
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
    add sp, $57
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
    or [hl]
    and h
    and h
    or e
    rst $20
    ld a, a
    sub e
    or [hl]
    and h
    and h
    and h
    and h
    or e
    rst $20
    ld d, c
    adc d
    and h
    xor a
    or e
    ld a, a
    xor h
    and h
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
    add [hl]
    xor [hl]
    db $f4
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
    rst $20
    ld d, a
    nop
    adc d
    and h
    xor a
    or e
    ld a, a
    xor h
    and h
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
    xor [hl]
    xor [hl]
    xor d
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
    xor b
    or e
    rst $20
    ld d, c
    sub d
    and h
    and h
    and $7f
    adc b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
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
    xor a
    or c
    and h
    or e
    or e
    cp b
    and $57
    nop
    add a
    or h
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
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld d, c
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $7f
    add c
    and h
    or e
    or e
    and h
    or c
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
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    and c
    and b
    and e
    ld [hl], l
    ld c, a
    adc b
    or e
    call nc, $b27f
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, c
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and c
    cp b
    ld c, a
    and b
    xor l
    ld a, a
    or h
    xor l
    xor e
    xor b
    xor d
    and h
    xor e
    cp b
    ld a, a
    and l
    xor e
    or h
    xor d
    and h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld a, a
    add [hl]
    xor b
    or l
    and h
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
    rst $20
    ld d, a
    nop
    add [hl]
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
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
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
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
    and h
    ld d, l
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    rst $20
    ld d, a
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
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and c
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
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
    ld a, a
    and l
    xor e
    or h
    xor d
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and e
    xor [hl]
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
    ld c, a
    xor b
    or e
    rst $20
    ld a, a
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
    ld d, l
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and [hl]
    or c
    and h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
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
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    and $4f
    sub d
    or e
    and b
    or c
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
    and d
    and b
    xor l
    ld a, a
    adc b
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
    and $51
    adc b
    pop de
    xor e
    ld a, a
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or d
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
    or d
    add sp, $51
    adc b
    jp nc, $a07f

    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor d
    xor b
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    db $f4
    ld a, a
    ld c, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor b
    or e
    ret nc

    ld a, a
    and c
    and h
    ld d, l
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor h
    xor [hl]
    or e
    xor b
    or l
    and b
    or e
    xor [hl]
    or c
    add sp, $57
    nop
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
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
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
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $57
    nop
    adc b
    pop de
    xor e
    ld a, a
    or c
    xor b
    xor l
    and [hl]
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
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    or h
    or c
    and [hl]
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
    nop
    adc [hl]
    and a
    db $f4
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
    ld [hl], l
    ld d, c
    add c
    or h
    or e
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
    ld c, a
    or e
    xor [hl]
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
    rst $20
    ld d, a
    nop
    add a
    or h
    and a
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $7f
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
    call nc, $a57f
    or h
    xor e
    xor e
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
    add a
    and h
    cp b
    db $f4
    ld a, a
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld c, a
    adc a
    add b
    add d
    adc d
    ld a, a
    xor b
    or d
    ld a, a
    or d
    or e
    or h
    and l
    and l
    and h
    and e
    rst $20
    ld d, c
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    or [hl]
    and h
    pop de
    xor e
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    ld c, a
    xor b
    or e
    ld a, a
    or e
    xor b
    xor e
    xor e
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
    add b
    xor l
    and e
    ld a, a
    cp b
    and h
    or e
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    xor e
    xor [hl]
    or d
    or d
    ld [hl], l
    ld d, c
    adc l
    xor [hl]
    ld a, a
    and e
    xor [hl]
    or h
    and c
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    xor b
    or e
    db $e3
    db $e3
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    add c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and h
    and b
    or e
    and h
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    and b
    and d
    or e
    or h
    and b
    xor e
    xor e
    cp b
    ld d, l
    and l
    and h
    and h
    xor e
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    db $f4
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
    add sp, $7f
    ld c, a
    sub h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, c
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or c
    add sp, $7f
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    xor l
    ld a, a
    xor h
    and h
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    adc b
    ld a, a
    xor e
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
    and a
    and h
    or c
    and h
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
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    jp nc, $a87f

    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and [hl]
    or c
    and b
    or d
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
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
    and $57
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    jp nc, $a87f

    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and [hl]
    or c
    and b
    or d
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
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
    and $57
    nop
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    xor h
    and h
    ld a, a
    and b
    or d
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    or d
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
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    add sp, $7f
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld c, a
    or d
    and a
    cp b
    ld a, a
    xor b
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
    or e
    xor [hl]
    ld d, l
    and [hl]
    and h
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
    ld c, a
    and a
    and b
    or d
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
    ld a, a
    xor h
    cp b
    ld d, l
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
    or d
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
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $7f
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
    ld d, a
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
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
    rst $20
    ld c, a
    sub d
    and h
    and h
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld d, c
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    add sp, $4f
    adc b
    or e
    call nc, $a57f
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
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
    call nc, $a54f
    or h
    xor e
    xor e
    add sp, $7f
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
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
    and l
    xor [hl]
    or c
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
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
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
    and l
    xor b
    or d
    and a
    ld a, a
    and b
    xor l
    cp b
    xor h
    xor [hl]
    or c
    and h
    and $51
    adc b
    sub $a4
    ld a, a
    or d
    and h
    and h
    xor l
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
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    adc b
    sub $a4
    ld d, l
    and c
    and h
    and h
    xor l
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    cp b
    xor [hl]
    or h
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
    xor d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
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
    and $51
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
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    or d
    and h
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
    add sp, $57
    nop
    add a
    xor h
    and $7f
    sub d
    xor [hl]
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
    ld c, a
    xor h
    and h
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
    and $57
    nop
    sbc b
    and h
    xor a
    db $f4
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
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
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    adc b
    ld c, a
    or [hl]
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
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld [hl], l
    ld c, a
    adc h
    cp b
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor d
    xor b
    and e
    or d
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld d, c
    and h
    or l
    and h
    xor l
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and a
    and h
    xor b
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
    or d
    ld [hl], l
    ld d, c
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
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
    call nc, $ac4f
    and h
    xor h
    xor [hl]
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
    add sp, $51
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
    ld c, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    add sp, $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, c
    adc l
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and e
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    and $7f
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
    ld c, a
    and c
    xor b
    and [hl]
    ld a, a
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld d, l
    or e
    and a
    and h
    ld a, a
    or d
    xor b
    and [hl]
    and a
    or e
    or d
    and $7f
    adc l
    and h
    and b
    or e
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
    add d
    and b
    xor l
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
    ld d, l
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
    ld a, a
    or [hl]
    and b
    xor l
    or e
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
    ld d, l
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    or d
    and h
    and h
    xor l
    rst $20
    ld d, a
    nop
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
    add d
    and b
    xor l
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
    ld d, l
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
    ld a, a
    or [hl]
    and b
    xor l
    or e
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
    ld d, l
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    or d
    and h
    and h
    xor l
    rst $20
    ld d, a
    nop
    adc b
    pop de
    xor e
    ld a, a
    or e
    and h
    xor e
    and h
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
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
    add sp, $57
    nop
    add b
    or [hl]
    or [hl]
    ld [hl], l
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    and $57
    nop
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld a, a
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
    ld a, a
    xor b
    or d
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
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor e
    and b
    or e
    and h
    rst $20
    ld a, a
    adc e
    and h
    or e
    call nc, $a64f
    and h
    or e
    ld a, a
    or d
    or e
    and b
    or c
    or e
    and h
    and e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    ld bc, $4705
    ld h, b
    ld [hl], $4c
    nop
    sub b
    inc c
    stop
    ld d, e
    ld d, h
    ld h, b
    cp b
    nop
    ld c, $00
    adc h
    sub e
    add sp, -$6e
    adc b
    adc e
    sub l
    add h
    sub c
    ld d, a
    nop
    nop
    ld [bc], a
    inc de
    rla
    ld bc, $0313
    ld bc, $0102
    inc bc
    ld c, d
    nop
    inc bc
    inc de
    jr jr_06c_6071

jr_06c_6071:
    ld c, e
    ld h, b
    rlca
    dec de
    nop
    ld c, [hl]
    ld h, b
    db $10
    db $10
    rlca
    ld d, c
    ld h, b
    nop
    nop
    nop
    ld d, e
    add [hl]
    ld h, b
    inc c
    stop
    nop
    adc d
    add b
    adc l
    sub e
    adc [hl]
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
    ld d, a
    nop
    nop
    ld [bc], a
    ld bc, $010b
    rlca
    ld [$0309], sp
    ld bc, $0a07
    nop
    ld [bc], a
    dec bc
    dec b
    nop
    add b
    ld h, b
    ld bc, $000c
    add e
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
