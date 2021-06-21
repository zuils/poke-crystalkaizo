; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06e", ROMX[$4000], BANK[$6e]

    adc a
    sub d
    adc b
    ld d, b
    sbc e
    ld bc, $0424
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    xor l
    ld a, a
    adc b
    sub b
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    ei
    or $f6
    or $e8
    ld a, a
    adc b
    or e
    ld a, a
    and d
    and b
    xor e
    and d
    or h
    db $e3
    ld c, [hl]
    xor e
    and b
    or e
    and h
    or d
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld d, b
    xor b
    xor l
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and b
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and h
    and e
    and [hl]
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld c, [hl]
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $50
    sub d
    sub h
    adc a
    add h
    sub c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    rst $08
    nop
    xor [hl]
    ld bc, $b388
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    or d
    ld a, a
    and c
    cp b
    ld c, [hl]
    xor e
    xor b
    and l
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
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
    add sp, $7f
    adc b
    or e
    ld d, b
    and d
    and b
    xor l
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor a
    xor b
    and d
    xor d
    ld a, a
    or h
    xor a
    ld a, a
    and b
    ld c, [hl]
    add [hl]
    sub c
    add b
    sub l
    add h
    adc e
    add h
    sub c
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    and h
    and b
    or d
    and h
    add sp, $50
    sub d
    sub h
    adc a
    add h
    sub c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    sbc e
    ld bc, $060e
    sub e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, [hl]
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or d
    or e
    and b
    cp b
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    cp c
    xor [hl]
    xor l
    and h
    add sp, $7f
    adc b
    or e
    or d
    ld d, b
    xor h
    or h
    or d
    and d
    xor e
    and h
    or d
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld c, [hl]
    or e
    and a
    xor b
    and d
    xor d
    and h
    or c
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld c, [hl]
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $50
    sub d
    sub h
    adc a
    add h
    sub c
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    rst $30
    ld bc, $0b36
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    and l
    xor [hl]
    or h
    or c
    ld a, a
    and b
    or c
    xor h
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    or c
    and h
    and b
    and d
    or e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, [hl]
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor b
    or e
    ld d, b
    and d
    and b
    xor l
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    and h
    or a
    and h
    and d
    or h
    or e
    and h
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, [hl]
    xor a
    or h
    xor l
    and d
    and a
    and h
    or d
    ld a, a
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    add sp, $50
    add l
    adc e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    call z, Call_06e_5a00
    nop
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    or d
    ld c, [hl]
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
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld d, b
    xor b
    xor h
    xor h
    and h
    and e
    xor b
    and b
    or e
    and h
    xor e
    cp b
    ld a, a
    and l
    xor e
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or l
    xor b
    xor l
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    add sp, $50
    add l
    adc e
    sbc b
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    cpl
    ld bc, $008c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    call nc, $a77f
    or h
    xor l
    and [hl]
    or c
    cp b
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or c
    and b
    cp c
    xor [hl]
    or c
    db $e3
    or d
    and a
    and b
    or c
    xor a
    ld d, b
    xor e
    and h
    and b
    or l
    and h
    or d
    db $f4
    ld a, a
    or d
    xor e
    xor b
    and d
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld c, [hl]
    and b
    xor l
    cp b
    ld a, a
    or h
    xor l
    xor e
    or h
    and d
    xor d
    cp b
    ld a, a
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    ld c, [hl]
    xor l
    and h
    and b
    or c
    and c
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    add sp, $50
    add l
    adc e
    sbc b
    add d
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    ei
    ld bc, $0154
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    xor b
    xor l
    and [hl]
    and h
    or d
    or e
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a14e
    xor [hl]
    and e
    cp b
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, b
    and a
    and b
    or c
    and e
    and h
    or d
    or e
    ld a, a
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    ld c, [hl]
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor h
    and h
    xor e
    or e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, [hl]
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $50
    adc c
    add h
    adc e
    adc e
    sbc b
    add l
    adc b
    sub d
    add a
    ld d, b
    db $d3
    nop
    add sp, $03
    add b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and l
    xor e
    xor [hl]
    and b
    or e
    or d
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    or a
    xor b
    and d
    ld d, b
    and l
    and h
    and h
    xor e
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    and c
    ld c, [hl]
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
    or e
    xor [hl]
    or h
    and d
    and a
    and h
    or d
    add sp, $50
    adc c
    add h
    adc e
    adc e
    sbc b
    add l
    adc b
    sub d
    add a
    ld d, b
    rst $30
    ld bc, $04ba
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    cp $f6
    ld a, a
    and l
    and h
    and h
    xor e
    db $e3
    ld c, [hl]
    and h
    or c
    or d
    ld a, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or d
    or e
    or c
    and h
    or e
    and d
    and a
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld d, b
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor l
    and h
    or e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and h
    xor l
    or e
    and b
    xor l
    and [hl]
    xor e
    and h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor a
    or c
    and h
    cp b
    add sp, $50
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    ld l, b
    nop
    cp b
    ld bc, $b18f
    xor [hl]
    or h
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, [hl]
    or d
    or e
    or h
    or c
    and e
    cp b
    ld a, a
    and c
    xor [hl]
    and e
    xor b
    and h
    or d
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    cp b
    ld a, a
    and c
    and b
    or d
    and a
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld d, b
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
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    and h
    ld c, [hl]
    or [hl]
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and a
    and b
    or c
    and e
    and h
    or c
    add sp, $50
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    cpl
    ld bc, $0910
    adc b
    or e
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    or d
    ld a, a
    and c
    cp b
    ld a, a
    or c
    xor [hl]
    xor e
    db $e3
    ld c, [hl]
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    ld c, [hl]
    xor a
    and b
    or e
    and a
    or d
    add sp, $7f
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and b
    xor b
    xor l
    or d
    ld d, b
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    or e
    xor [hl]
    xor a
    or d
    ld a, a
    and c
    cp b
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and a
    or h
    and [hl]
    and h
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    or d
    add sp, $50
    adc h
    add h
    add [hl]
    add b
    sub e
    adc [hl]
    adc l
    ld d, b
    sub a
    ld bc, $19dc
    adc b
    or e
    or d
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    db $e3
    xor e
    xor b
    xor d
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and e
    or h
    or c
    and b
    and c
    xor e
    and h
    db $f4
    ld c, [hl]
    and h
    or l
    and h
    xor l
    ld a, a
    and a
    xor b
    and [hl]
    and a
    db $e3
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and h
    and e
    ld d, b
    and e
    cp b
    xor l
    and b
    xor h
    xor b
    or e
    and h
    ld a, a
    and c
    xor e
    and b
    or d
    or e
    or d
    ld c, [hl]
    and l
    and b
    xor b
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and d
    or c
    and b
    or e
    and d
    and a
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or c
    or h
    and [hl]
    and [hl]
    and h
    and e
    ld a, a
    and a
    xor b
    and e
    and h
    add sp, $50
    add l
    adc b
    sub c
    add h
    ld a, a
    add a
    adc [hl]
    sub c
    sub d
    add h
    ld d, b
    cpl
    ld bc, $0294
    sub e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    cp b
    ld c, [hl]
    xor c
    or h
    xor h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld d, b
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    and e
    and b
    cp b
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor h
    and b
    and e
    and h
    ld c, [hl]
    xor b
    or e
    ld a, a
    and b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    db $e3
    and d
    xor e
    and b
    or d
    or d
    ld c, [hl]
    xor c
    or h
    xor h
    xor a
    and h
    or c
    add sp, $50
    add l
    adc b
    sub c
    add h
    ld a, a
    add a
    adc [hl]
    sub c
    sub d
    add h
    ld d, b
    ei
    ld bc, $082a
    adc b
    or e
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
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and [hl]
    and b
    xor e
    xor e
    xor [hl]
    xor a
    add sp, $7f
    sub e
    and a
    and h
    ld a, a
    and l
    and b
    or d
    or e
    and h
    or c
    ld c, [hl]
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    db $e3
    ld d, b
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or [hl]
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and l
    xor e
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
    or d
    ld a, a
    xor h
    and b
    xor l
    and h
    ld c, [hl]
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    add sp, $50
    add e
    adc [hl]
    adc a
    add h
    sbc b
    ld d, b
    scf
    ld bc, $0316
    adc b
    or e
    ld a, a
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
    or d
    xor [hl]
    ld c, [hl]
    and b
    and c
    or d
    and h
    xor l
    or e
    db $e3
    xor h
    xor b
    xor l
    and e
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    or c
    and h
    and b
    and d
    or e
    db $f4
    ld d, b
    and h
    or l
    and h
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    xor e
    and b
    or l
    xor [hl]
    or c
    and l
    or h
    xor e
    ld a, a
    or e
    and b
    xor b
    xor e
    ld a, a
    xor b
    or d
    ld c, [hl]
    and c
    xor b
    or e
    or e
    and h
    xor l
    add sp, $50
    add a
    add h
    sub c
    adc h
    adc b
    sub e
    add d
    sub c
    add b
    add c
    ld d, b
    rst $30
    ld bc, $06c2
    add b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    and a
    and h
    and e
    ld c, [hl]
    sub d
    add a
    add h
    adc e
    adc e
    add e
    add h
    sub c
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    and h
    or e
    ld c, [hl]
    and [hl]
    xor [hl]
    ld a, a
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
    ld d, b
    or e
    and b
    or d
    or e
    cp b
    ld a, a
    and l
    xor e
    and b
    or l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor [hl]
    xor [hl]
    cp c
    and h
    or d
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
    or d
    ld c, [hl]
    or e
    and b
    xor b
    xor e
    add sp, $50
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld d, b
    ld h, h
    nop
    add d
    nop
    sub e
    and a
    and h
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    xor b
    or e
    cp b
    ld c, [hl]
    and h
    xor h
    xor b
    or e
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or h
    xor l
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    or d
    xor b
    and e
    and h
    ld d, b
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and d
    and b
    or h
    or d
    and h
    ld c, [hl]
    xor b
    or e
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
    ld c, [hl]
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    and [hl]
    xor l
    and h
    or e
    add sp, $50
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld d, b
    cpl
    ld bc, $0528
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, [hl]
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    adc [hl]
    adc l
    ld a, a
    and [hl]
    and b
    or e
    and a
    and h
    or c
    ld c, [hl]
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, b
    or c
    and h
    or d
    or h
    xor e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    and [hl]
    xor l
    and h
    or e
    xor b
    and d
    ld c, [hl]
    or d
    or e
    xor [hl]
    or c
    xor h
    ld a, a
    and e
    xor b
    or d
    or c
    or h
    xor a
    or e
    or d
    ld c, [hl]
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    add sp, $50
    sub [hl]
    adc b
    adc e
    add e
    ld a, a
    add e
    sub h
    add d
    adc d
    ld d, b
    rst $08
    nop
    ld c, d
    ld bc, $ad88
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    and h
    db $e3
    ld c, [hl]
    or l
    and h
    xor l
    or e
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, [hl]
    and h
    or a
    or e
    xor b
    xor l
    and d
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld d, b
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor h
    and b
    and e
    and h
    ld c, [hl]
    and b
    xor l
    ld a, a
    and h
    and l
    and l
    xor [hl]
    or c
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or c
    and h
    and h
    and e
    ld c, [hl]
    or e
    and a
    and h
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $50
    sub e
    sub [hl]
    adc b
    adc l
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    sub a
    ld bc, $035c
    adc b
    or e
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld c, [hl]
    and [hl]
    or c
    and b
    or d
    or d
    cp b
    ld a, a
    xor a
    xor e
    and b
    xor b
    xor l
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld c, [hl]
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld d, b
    or [hl]
    and b
    cp b
    add sp, $7f
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    or d
    and h
    and h
    or d
    ld a, a
    and b
    xor l
    ld c, [hl]
    and h
    xor l
    and h
    xor h
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or c
    or h
    xor l
    or d
    ld c, [hl]
    and b
    or [hl]
    and b
    cp b
    ld a, a
    and b
    or e
    ld a, a
    db $fc
    or $7f
    xor h
    xor a
    and a
    add sp, $50
    sub e
    sub c
    adc b
    adc a
    adc e
    add h
    add c
    adc b
    sub c
    add e
    ld d, b
    rst $38
    ld bc, $0758
    add b
    xor l
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and h
    cp b
    and h
    or d
    ld a, a
    xor [hl]
    and l
    and l
    ld c, [hl]
    and b
    xor l
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld d, b
    and a
    and h
    and b
    and e
    or d
    db $e3
    db $e3
    and h
    or l
    and h
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, [hl]
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    db $e3
    db $e3
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and [hl]
    and h
    or e
    ld c, [hl]
    xor a
    and h
    and d
    xor d
    and h
    and e
    ld a, a
    or d
    and h
    or l
    and h
    or c
    and h
    xor e
    cp b
    add sp, $50
    sub d
    add h
    add b
    ld a, a
    adc e
    adc b
    adc [hl]
    adc l
    ld d, b
    inc sp
    ld bc, $07bc
    sub e
    and a
    and h
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    xor e
    or h
    and h
    ld a, a
    and l
    or h
    or c
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor d
    and h
    and h
    xor a
    or d
    ld a, a
    xor b
    or e
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    and h
    and e
    ld d, b
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    and e
    add sp, $4e
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor b
    and d
    and h
    and c
    and h
    or c
    and [hl]
    db $e3
    ld c, [hl]
    and l
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    xor [hl]
    and d
    and h
    and b
    xor l
    or d
    add sp, $50
    sub d
    add h
    add b
    ld a, a
    adc e
    adc b
    adc [hl]
    adc l
    ld d, b
    ei
    ld bc, $0a5a
    adc b
    or e
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    or d
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld c, [hl]
    or d
    and a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    and d
    and h
    and b
    xor l
    ld c, [hl]
    or [hl]
    and b
    or e
    and h
    or c
    or d
    ld a, a
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
    ld d, b
    and e
    and b
    cp b
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    call nc, $a27f
    xor [hl]
    xor e
    and e
    add sp, $50
    sub d
    adc e
    sub h
    add e
    add [hl]
    add h
    ld d, b
    db $d3
    nop
    sub h
    ld [bc], a
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a17f
    xor [hl]
    and e
    xor b
    and h
    or d
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and c
    xor b
    xor l
    and h
    and e
    ld d, b
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    db $f4
    ld a, a
    xor l
    and h
    or [hl]
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    or d
    ld a, a
    and b
    or c
    and h
    ld c, [hl]
    and d
    or c
    and h
    and b
    or e
    and h
    and e
    add sp, $50
    sub d
    adc e
    sub h
    add e
    add [hl]
    add h
    ld d, b
    scf
    ld bc, $0294
    add b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    db $f4
    ld a, a
    and b
    ld c, [hl]
    or l
    and h
    or c
    cp b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld c, [hl]
    xor e
    and h
    and b
    xor d
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    db $f4
    ld d, b
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
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
    ld c, [hl]
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and c
    and b
    or c
    or c
    and h
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    ld c, [hl]
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
    add sp, $50
    add c
    adc b
    sub l
    add b
    adc e
    sub l
    add h
    ld d, b
    ld h, h
    nop
    ld e, d
    nop
    add d
    xor e
    and b
    xor h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    ld c, [hl]
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld a, a
    or c
    and h
    or l
    and h
    and b
    xor e
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or l
    or h
    xor e
    xor l
    and h
    or c
    and b
    and c
    xor e
    and h
    ld d, b
    xor a
    and b
    or c
    or e
    or d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    or d
    ld c, [hl]
    and b
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    or c
    and h
    or d
    xor [hl]
    or c
    or e
    add sp, $50
    add c
    adc b
    sub l
    add b
    adc e
    sub l
    add h
    ld d, b
    sbc e
    ld bc, $0b68
    add h
    or l
    and h
    xor l
    ld a, a
    and b
    ld a, a
    xor h
    xor b
    or d
    or d
    xor b
    xor e
    and h
    ld c, [hl]
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    xor a
    xor b
    xor d
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld d, b
    or d
    or e
    and b
    and c
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    or d
    add sp, $4e
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and a
    and b
    or c
    and e
    db $e3
    ld c, [hl]
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    add sp, $50
    add [hl]
    add b
    sub d
    ld d, b
    sub e
    ld bc, $0002
    adc b
    or e
    ld a, a
    or [hl]
    or c
    and b
    xor a
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    xor a
    db $e3
    ld c, [hl]
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and [hl]
    and b
    or d
    db $e3
    ld c, [hl]
    xor e
    xor b
    xor d
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    db $f4
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    xor e
    cp b
    ld d, b
    or [hl]
    and h
    and b
    xor d
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor a
    or c
    and h
    cp b
    ld c, [hl]
    and c
    cp b
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor d
    xor b
    xor l
    add sp, $50
    add [hl]
    add b
    sub d
    ld d, b
    rst $30
    ld bc, $0002
    adc b
    or e
    ld a, a
    and a
    xor b
    and e
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and e
    and b
    or c
    xor d
    db $f4
    ld a, a
    xor a
    xor e
    and b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor b
    and l
    and h
    ld a, a
    xor [hl]
    and l
    ld d, b
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    xor e
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld c, [hl]
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
    or [hl]
    and b
    xor l
    and e
    and h
    or c
    or d
    ld c, [hl]
    and d
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    and c
    cp b
    add sp, $50
    sub d
    add a
    add b
    add e
    adc [hl]
    sub [hl]
    ld d, b
    sbc e
    ld bc, $037a
    add a
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    call nc, $b24e
    and a
    and b
    and e
    xor [hl]
    or [hl]
    or d
    ld a, a
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    or d
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld d, b
    and a
    and h
    and b
    or e
    add sp, $7f
    sub e
    and a
    and h
    ld a, a
    and d
    and a
    xor b
    xor e
    xor e
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    or d
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or l
    xor b
    and d
    or e
    xor b
    xor h
    or d
    ld a, a
    or d
    and a
    and b
    xor d
    and h
    add sp, $50
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub d
    adc l
    add b
    adc d
    add h
    ld d, b
    ld a, [$160a]
    ld [de], a
    add b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and e
    xor b
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
    ld c, [hl]
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
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    or d
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    and a
    and b
    or c
    and e
    ld d, b
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    or d
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, [hl]
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    xor [hl]
    xor e
    xor b
    and e
    add sp, $50
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    sub d
    adc b
    sub d
    ld d, b
    cpl
    ld bc, $02c6
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    or e
    or [hl]
    xor b
    or e
    and d
    and a
    and h
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor l
    xor [hl]
    or d
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
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
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld d, b
    xor b
    or d
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or [hl]
    and a
    and b
    or e
    ld a, a
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
    ld c, [hl]
    xor b
    or d
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    add sp, $50
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    sub d
    adc b
    sub d
    ld d, b
    rst $30
    ld bc, $0686
    sub e
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor a
    and h
    xor l
    and e
    or h
    xor e
    or h
    xor h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, b
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    and l
    and l
    and h
    and d
    or e
    or d
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    cp b
    xor a
    xor l
    xor [hl]
    or d
    xor b
    or d
    ld c, [hl]
    xor e
    and b
    or d
    or e
    add sp, $50
    sub c
    adc b
    sub l
    add h
    sub c
    ld a, a
    add d
    sub c
    add b
    add c
    ld d, b
    ld l, b
    nop
    adc h
    nop
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or h
    xor l
    and b
    and c
    xor e
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    ld d, b
    xor l
    or h
    or e
    or c
    xor b
    and h
    xor l
    or e
    or d
    ld a, a
    and c
    cp b
    ld c, [hl]
    or d
    or [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, [hl]
    xor h
    xor [hl]
    or h
    or e
    and a
    and l
    or h
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or d
    and b
    xor l
    and e
    add sp, $50
    adc a
    adc b
    adc l
    add d
    add h
    sub c
    ld d, b
    sub e
    ld bc, $0528
    adc b
    or e
    or d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    or d
    xor b
    cp c
    and h
    and e
    ld a, a
    and d
    xor e
    and b
    or [hl]
    ld c, [hl]
    xor b
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    db $f4
    ld c, [hl]
    and c
    or h
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld d, b
    xor b
    xor l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and d
    xor e
    and b
    or [hl]
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    add sp, $50
    add c
    add b
    adc e
    adc e
    ld d, b
    ld l, h
    nop
    and $00
    add e
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
    or d
    or e
    or h
    and e
    cp b
    ld c, [hl]
    xor [hl]
    and l
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
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
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
    ld d, b
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor [hl]
    db $e3
    ld c, [hl]
    xor l
    and h
    xor l
    or e
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, [hl]
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor l
    and b
    or e
    or h
    or c
    and h
    add sp, $50
    add c
    add b
    adc e
    adc e
    ld d, b
    scf
    ld bc, $05be
    sub e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    and a
    and b
    or c
    and [hl]
    and h
    or d
    ld a, a
    or h
    xor a
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and l
    and b
    or d
    or e
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    add sp, $50
    add c
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld c, [hl]
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, [hl]
    xor e
    xor b
    xor d
    and h
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    and e
    and h
    add sp, $50
    add h
    add [hl]
    add [hl]
    ld d, b
    ld l, b
    nop
    inc a
    nop
    adc b
    and l
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or d
    ld c, [hl]
    or d
    and h
    xor a
    and b
    or c
    and b
    or e
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or h
    xor a
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld d, b
    and c
    xor [hl]
    xor l
    and e
    ld a, a
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    xor b
    or a
    ld a, a
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
    or e
    and a
    and h
    xor h
    ld c, [hl]
    or c
    and h
    xor c
    xor [hl]
    xor b
    xor l
    ld a, a
    xor b
    xor l
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    add sp, $50
    add d
    adc [hl]
    add d
    adc [hl]
    adc l
    sub h
    sub e
    ld d, b
    ld e, a
    ld [bc], a
    ld e, d
    ld a, [bc]
    adc e
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, [hl]
    and h
    xor l
    or l
    xor b
    or c
    xor [hl]
    xor l
    xor h
    and h
    xor l
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld d, b
    and a
    and h
    and b
    and e
    or d
    add sp, $7f
    add b
    ld a, a
    and a
    and h
    and b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and e
    or c
    xor [hl]
    xor a
    or d
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, [hl]
    and b
    xor l
    ld a, a
    add h
    sub a
    add h
    add [hl]
    add [hl]
    add d
    sub h
    sub e
    add h
    add sp, $50
    adc e
    adc [hl]
    adc l
    add h
    adc e
    sbc b
    ld d, b
    ld l, b
    nop
    adc h
    nop
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, [hl]
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor b
    or c
    or e
    and a
    add sp, $4e
    adc b
    or e
    ld a, a
    or [hl]
    and h
    and b
    or c
    or d
    ld a, a
    xor b
    or e
    or d
    ld d, b
    xor h
    xor [hl]
    or e
    and a
    and h
    or c
    call nc, $b27f
    xor d
    or h
    xor e
    xor e
    db $f4
    ld c, [hl]
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    or c
    and h
    or l
    and h
    and b
    xor e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or e
    or c
    or h
    and h
    ld a, a
    and l
    and b
    and d
    and h
    add sp, $50
    add c
    adc [hl]
    adc l
    add h
    adc d
    add h
    add h
    adc a
    add h
    sub c
    ld d, b
    cpl
    ld bc, $03de
    sub d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and d
    and h
    xor h
    and h
    db $e3
    ld c, [hl]
    or e
    and h
    or c
    cp b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, b
    adc h
    add b
    sub c
    adc [hl]
    sub [hl]
    add b
    adc d
    add sp, $7f
    adc b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    xor l
    and h
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and [hl]
    or c
    and b
    or l
    and h
    or d
    add sp, $50
    adc d
    adc b
    add d
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    sbc e
    ld bc, $044c
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    adc d
    xor b
    and d
    xor d
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    add sp, $4e
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld d, b
    and h
    xor e
    and b
    or d
    or e
    xor b
    and d
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and h
    or a
    and h
    and d
    or h
    or e
    and h
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld c, [hl]
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor d
    xor b
    and d
    xor d
    add sp, $50
    adc a
    sub h
    adc l
    add d
    add a
    adc b
    adc l
    add [hl]
    ld d, b
    sub a
    ld bc, $0456
    sub e
    xor [hl]
    ld a, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    xor e
    xor e
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor a
    or h
    xor l
    and d
    and a
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    db $f4
    ld d, b
    xor b
    or e
    ld a, a
    or d
    xor a
    xor b
    xor l
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and b
    or c
    xor h
    or d
    ld c, [hl]
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or e
    and b
    and d
    or e
    add sp, $50
    adc e
    adc b
    add d
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    scf
    ld bc, $05a0
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or e
    xor [hl]
    xor l
    and [hl]
    or h
    and h
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    db $fc
    ldh [$fc], a
    ldh [$e0], a
    ld c, [hl]
    xor e
    xor [hl]
    xor l
    and [hl]
    add sp, $7f
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    xor l
    and [hl]
    or h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor e
    xor b
    and d
    xor d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld c, [hl]
    and d
    xor e
    and h
    and b
    xor l
    add sp, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    add [hl]
    add b
    sub d
    ld d, b
    ret z

    nop
    inc d
    nop
    adc b
    and l
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld c, [hl]
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
    xor b
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, [hl]
    xor b
    or e
    ld a, a
    and h
    or a
    xor a
    and h
    xor e
    or d
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    db $e3
    ld d, b
    xor [hl]
    or h
    or d
    ld a, a
    and [hl]
    and b
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and b
    or d
    ld c, [hl]
    or d
    or [hl]
    xor b
    or c
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    add sp, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    add [hl]
    add b
    sub d
    ld d, b
    scf
    ld bc, $00d2
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    and a
    and b
    xor e
    and h
    or d
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    ld a, a
    and [hl]
    and b
    or d
    and h
    or d
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and [hl]
    and b
    or c
    and c
    and b
    and [hl]
    and h
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld d, b
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and h
    or a
    xor a
    and b
    xor l
    and e
    or d
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    or d
    ld a, a
    or d
    xor h
    and h
    xor e
    xor e
    ld c, [hl]
    xor h
    or h
    and d
    and a
    ld a, a
    or [hl]
    xor [hl]
    or c
    or d
    and h
    add sp, $50
    sub d
    adc a
    adc b
    adc d
    add h
    sub d
    ld d, b
    cpl
    ld bc, $09ec
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld c, [hl]
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
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
    ld c, [hl]
    and b
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $7f
    adc [hl]
    xor l
    and d
    and h
    ld a, a
    xor b
    or e
    ld d, b
    or d
    or e
    and b
    or c
    or e
    or d
    ld a, a
    or c
    or h
    or d
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    or d
    ld a, a
    or [hl]
    and a
    cp b
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    or e
    and b
    or c
    or e
    and h
    and e
    add sp, $50
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    ld e, e
    ld [bc], a
    ld e, d
    ld a, [bc]
    add c
    cp b
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    xor e
    cp b
    ld a, a
    or d
    xor a
    xor b
    xor l
    db $e3
    ld c, [hl]
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and e
    or c
    xor b
    xor e
    xor e
    db $e3
    ld c, [hl]
    xor e
    xor b
    xor d
    and h
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld d, b
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld a, a
    or d
    and a
    and b
    or e
    or e
    and h
    or c
    ld c, [hl]
    and h
    or l
    and h
    xor l
    ld a, a
    and b
    ld a, a
    and e
    xor b
    and b
    xor h
    xor [hl]
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $50
    add h
    add [hl]
    add [hl]
    ld d, b
    inc sp
    ld bc, $02f8
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or e
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and d
    and b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and h
    or a
    or e
    or c
    and h
    xor h
    and h
    xor e
    cp b
    ld d, b
    xor l
    or h
    or e
    or c
    xor b
    or e
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    and h
    and [hl]
    and [hl]
    or d
    db $f4
    ld c, [hl]
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and b
    or c
    and h
    xor e
    cp b
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    and c
    and h
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    add sp, $50
    sub l
    adc b
    adc l
    add h
    ld d, b
    cpl
    ld bc, $0302
    add e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or l
    xor b
    xor l
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld d, b
    and d
    xor [hl]
    or l
    and h
    or c
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor b
    xor l
    ld c, [hl]
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    xor l
    xor [hl]
    cp b
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    add sp, $50
    adc a
    add b
    sub c
    add h
    adc l
    sub e
    ld d, b
    cp a
    ld [bc], a
    ldh [rTMA], a
    sub e
    xor [hl]
    ld a, a
    and b
    or l
    xor [hl]
    xor b
    and e
    ld c, [hl]
    and d
    or c
    or h
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and c
    and b
    and c
    cp b
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    or c
    or c
    xor b
    and h
    or d
    ld a, a
    xor b
    xor l
    ld d, b
    xor b
    or e
    or d
    ld a, a
    xor a
    xor [hl]
    or h
    and d
    and a
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
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
    or d
    ld c, [hl]
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    add sp, $50
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld l, b
    nop
    or h
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, [hl]
    or d
    and b
    and l
    and h
    ld a, a
    xor e
    xor [hl]
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    ld d, b
    xor a
    xor e
    and b
    cp b
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    or e
    and b
    xor l
    and [hl]
    xor e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or e
    and b
    xor b
    xor e
    or d
    ld c, [hl]
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    add sp, $50
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    scf
    ld bc, $0226
    sub e
    and a
    and h
    ld a, a
    xor h
    and b
    xor e
    and h
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    add sp, $7f
    adc b
    and l
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    and b
    xor a
    xor a
    or c
    xor [hl]
    and b
    and d
    and a
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld d, b
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    or a
    xor b
    and d
    ld c, [hl]
    or d
    xor a
    xor b
    xor d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    and h
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    and l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    add sp, $50
    add [hl]
    adc [hl]
    adc e
    add e
    add l
    adc b
    sub d
    add a
    ld d, b
    ret z

    nop
    ld c, d
    ld bc, $b483
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor a
    and b
    or [hl]
    xor l
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or d
    and h
    and b
    or d
    xor [hl]
    xor l
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    ld c, [hl]
    and [hl]
    or c
    and b
    and d
    and h
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, b
    or [hl]
    and b
    or e
    and h
    or c
    db $f4
    ld a, a
    or d
    and h
    and b
    or c
    and d
    and a
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld c, [hl]
    xor h
    and b
    or e
    and h
    add sp, $50
    add [hl]
    adc [hl]
    adc e
    add e
    add l
    adc b
    sub d
    add a
    ld d, b
    sub e
    ld bc, $035c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and b
    or h
    or e
    or h
    xor h
    xor l
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor h
    and b
    xor e
    and h
    or d
    ld a, a
    xor a
    and b
    or e
    or c
    xor [hl]
    xor e
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and b
    or c
    and h
    and b
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld d, b
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor l
    and h
    or d
    or e
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld c, [hl]
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor [hl]
    and l
    and l
    or d
    xor a
    or c
    xor b
    xor l
    and [hl]
    add sp, $50
    sub d
    sub e
    add b
    sub c
    sub d
    add a
    add b
    adc a
    add h
    ld d, b
    rst $08
    nop
    ld hl, sp+$02
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    and b
    or c
    or d
    ld c, [hl]
    or e
    or [hl]
    xor b
    xor l
    xor d
    xor e
    and h
    ld a, a
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and l
    xor e
    xor [hl]
    and b
    or e
    or d
    ld a, a
    or h
    xor a
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, b
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    call nc, $a27f
    and h
    xor l
    or e
    and h
    or c
    ld c, [hl]
    and d
    xor [hl]
    or c
    and h
    ld a, a
    and l
    xor e
    xor b
    and d
    xor d
    and h
    or c
    or d
    add sp, $50
    adc h
    sbc b
    sub d
    sub e
    add h
    sub c
    adc b
    adc [hl]
    sub h
    sub d
    ld d, b
    inc sp
    ld bc, $06e0
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld c, [hl]
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    or l
    and h
    xor l
    db $e3
    ld c, [hl]
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    and h
    and e
    ld a, a
    and d
    xor [hl]
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld d, b
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    xor l
    and e
    ld c, [hl]
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    ld c, [hl]
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    and h
    or c
    ld a, a
    or d
    xor a
    and b
    and d
    and h
    add sp, $50
    add c
    add b
    sub c
    sub c
    adc b
    add h
    sub c
    ld d, b
    sub e
    ld bc, $04b0
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
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
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor b
    xor l
    ld d, b
    xor b
    or e
    or d
    ld a, a
    and l
    xor b
    xor l
    and [hl]
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    xor [hl]
    xor e
    xor b
    and e
    xor b
    and l
    cp b
    ld a, a
    and b
    xor b
    or c
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, [hl]
    and b
    xor l
    ld a, a
    xor b
    xor l
    or l
    xor b
    or d
    xor b
    and c
    xor e
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    add sp, $50
    adc h
    add b
    adc l
    sub e
    adc b
    sub d
    ld d, b
    sbc e
    ld bc, $04ce
    adc b
    or e
    call nc, $b57f
    and h
    or c
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
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and l
    and b
    or d
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld d, b
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld c, [hl]
    xor l
    xor [hl]
    or e
    ld a, a
    and h
    or l
    and h
    xor l
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
    ld c, [hl]
    xor d
    xor l
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    xor b
    or e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    add sp, $50
    add a
    sub h
    adc h
    add b
    adc l
    sub d
    add a
    add b
    adc a
    add h
    ld d, b
    sub a
    ld bc, $0384
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    or d
    and h
    or l
    and h
    or c
    and b
    xor e
    ld c, [hl]
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
    and d
    or c
    cp b
    ld a, a
    xor a
    and b
    or e
    db $e3
    ld c, [hl]
    or e
    and h
    or c
    xor l
    or d
    db $f4
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld d, b
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or d
    and h
    and h
    xor h
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and a
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld c, [hl]
    xor h
    and h
    and b
    xor l
    xor b
    xor l
    and [hl]
    add sp, $50
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc b
    add d
    ld d, b
    inc sp
    ld bc, $0294
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld c, [hl]
    add h
    adc e
    add h
    add d
    sub e
    add b
    add c
    sub h
    sbc c
    sbc c
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
    ld a, a
    or e
    and a
    and h
    ld d, b
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld a, a
    and d
    or h
    or c
    or c
    and h
    xor l
    or e
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    xor h
    or h
    xor l
    xor b
    and d
    and b
    or e
    and h
    ld c, [hl]
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    or d
    add sp, $50
    sub d
    adc a
    adc b
    sub e
    add l
    adc b
    sub c
    add h
    ld d, b
    sub e
    ld bc, $03d4
    adc b
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, [hl]
    and l
    or c
    and h
    or b
    or h
    and h
    xor l
    or e
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    and a
    xor [hl]
    or e
    ld c, [hl]
    and b
    or c
    and h
    and b
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    and h
    and b
    xor e
    ld d, b
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    and c
    cp b
    ld a, a
    and e
    xor b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, [hl]
    xor e
    and b
    or l
    and b
    add sp, $50
    sub d
    sub e
    add b
    add [hl]
    add c

Call_06e_5a00:
    add h
    add h
    sub e
    adc e
    add h
    ld d, b
    sbc e
    ld bc, $04ba
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and h
    xor h
    xor a
    and h
    or c
    and b
    db $e3
    ld c, [hl]
    or e
    or h
    or c
    and h
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    or d
    ld a, a
    and b
    or e
    ld c, [hl]
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    or d
    ld d, b
    xor [hl]
    xor l
    ld a, a
    or e
    or c
    and h
    and h
    or e
    xor [hl]
    xor a
    or d
    ld a, a
    xor [hl]
    or c
    ld c, [hl]
    and b
    xor h
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    or e
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    and a
    xor b
    and e
    and e
    and h
    xor l
    add sp, $50
    sub [hl]
    adc b
    adc e
    add e
    ld a, a
    add c
    sub h
    adc e
    adc e
    ld d, b
    sub a
    ld bc, $079e
    sub e
    and a
    and h
    or d
    and h
    ld a, a
    or l
    xor b
    xor [hl]
    xor e
    and h
    xor l
    or e
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor h
    and h
    xor h
    db $e3
    ld d, b
    and c
    and h
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and a
    and h
    or c
    and e
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    and h
    ld c, [hl]
    or e
    and a
    and h
    xor b
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
    add sp, $50
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
