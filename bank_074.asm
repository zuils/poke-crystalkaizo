; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $074", ROMX[$4000], BANK[$74]

    add d
    adc e
    add h
    add b
    sub c
    ld a, a
    sub [hl]
    adc b
    adc l
    add [hl]
    ld d, b
    scf
    ld bc, $0348
    adc b
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
    xor b
    xor l
    ld a, a
    and b
    xor e
    xor e
    ld c, [hl]
    and e
    xor b
    or c
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld c, [hl]
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor b
    and [hl]
    ld d, b
    and h
    cp b
    and h
    or d
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    xor a
    xor [hl]
    or e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    and l
    xor [hl]
    xor [hl]
    and e
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
    add sp, $50
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    add l
    adc b
    sub d
    add a
    ld d, b
    ld l, b
    nop
    cp [hl]
    nop
    add b
    ld a, a
    xor h
    or h
    and d
    xor [hl]
    or h
    or d
    ld c, [hl]
    xor h
    and h
    xor h
    and c
    or c
    and b
    xor l
    and h
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $7f
    sub e
    xor [hl]
    or h
    and d
    and a
    xor b
    xor l
    and [hl]
    ld d, b
    xor b
    or e
    ld a, a
    and c
    and b
    or c
    and h
    and a
    and b
    xor l
    and e
    and h
    and e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and b
    ld a, a
    or d
    and a
    xor [hl]
    xor [hl]
    or e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor a
    and b
    xor b
    xor l
    add sp, $50
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    add l
    adc b
    sub d
    add a
    ld d, b
    sub a
    ld bc, $0672
    adc b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
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
    ld c, [hl]
    or d
    xor e
    xor b
    xor h
    cp b
    add sp, $7f
    adc b
    or e
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld c, [hl]
    and c
    and b
    xor l
    and [hl]
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    ld a, a
    xor [hl]
    xor l
    ld d, b
    or e
    and a
    and h
    ld a, a
    or c
    xor b
    or l
    and h
    or c
    ld a, a
    and c
    xor [hl]
    or e
    or e
    xor [hl]
    xor h
    ld c, [hl]
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    or d
    ld a, a
    and c
    or h
    or e
    ld c, [hl]
    or d
    and h
    and h
    xor h
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or c
    and h
    add sp, $50
    sub d
    sub h
    adc l
    ld d, b
    db $d3
    nop
    ld b, h
    ld [bc], a
    sub e
    and a
    and h
    ld a, a
    or e
    xor b
    xor a
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    xor [hl]
    or c
    xor d
    and h
    and e
    ld a, a
    or e
    and b
    xor b
    xor e
    ld c, [hl]
    or b
    or h
    xor b
    or l
    and h
    or c
    or d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld d, b
    xor a
    or c
    and h
    and e
    xor b
    and d
    or e
    xor b
    xor l
    and [hl]
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
    call nc, $ad7f
    and h
    or a
    or e
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    add sp, $50
    adc h
    adc [hl]
    adc [hl]
    adc l
    adc e
    adc b
    add [hl]
    add a
    sub e
    ld d, b
    cpl
    ld bc, $0258
    adc [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld c, [hl]
    and l
    or h
    xor e
    xor e
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    xor l
    db $f4
    ld a, a
    xor [hl]
    or c
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, [hl]
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    and h
    or a
    and d
    xor b
    or e
    and h
    and e
    db $f4
    ld d, b
    or e
    and a
    and h
    ld a, a
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    and b
    or e
    or e
    and h
    or c
    xor l
    or d
    ld c, [hl]
    xor [hl]
    xor l
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
    and [hl]
    xor e
    xor [hl]
    or [hl]
    ld c, [hl]
    cp b
    and h
    xor e
    xor e
    xor [hl]
    or [hl]
    add sp, $50
    add e
    add b
    sub c
    adc d
    adc l
    add h
    sub d
    sub d
    ld d, b
    ld l, h
    nop
    ld [hl-], a
    nop
    adc b
    or e
    ld a, a
    and a
    xor b
    and e
    and h
    or d
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or d
    and a
    xor b
    xor l
    cp b
    ld c, [hl]
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and l
    xor b
    xor l
    and e
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $50
    adc h
    sub h
    sub c
    adc d
    sub c
    adc [hl]
    sub [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, [hl]
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    call nc, $b27f
    or e
    and b
    or d
    and a
    and h
    or d
    add sp, $50
    sub c
    adc [hl]
    sbc b
    add b
    adc e
    ld d, b
    ld e, a
    ld [bc], a
    sub $06
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
    ld a, a
    cp b
    and b
    db $e3
    ld c, [hl]
    or [hl]
    xor l
    or d
    db $f4
    ld a, a
    sub d
    add a
    add h
    adc e
    adc e
    add e
    add h
    sub c
    ld c, [hl]
    xor b
    xor l
    xor c
    and h
    and d
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor a
    xor [hl]
    xor b
    db $e3
    ld d, b
    or d
    xor [hl]
    xor l
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    add sp, $7f
    sub e
    and a
    and h
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    xor l
    or e
    and h
    xor e
    xor e
    xor b
    and [hl]
    and h
    xor l
    or e
    add sp, $50
    sub d
    add d
    sub c
    add h
    add h
    add d
    add a
    ld d, b
    call z, $1400
    nop
    adc b
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
    ld a, a
    or [hl]
    and b
    or e
    and d
    and a
    ld c, [hl]
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    xor b
    or e
    call nc, $b27f
    and d
    and b
    or c
    db $e3
    ld c, [hl]
    and h
    and e
    add sp, $7f
    adc b
    or e
    ld a, a
    and l
    or c
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    or d
    ld d, b
    or e
    and a
    and h
    xor h
    ld a, a
    and c
    cp b
    ld a, a
    or d
    and d
    or c
    and h
    and b
    xor h
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor e
    xor [hl]
    or h
    and e
    xor e
    cp b
    ld a, a
    xor [hl]
    or c
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    db $e3
    ld c, [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or h
    and e
    and e
    and h
    xor l
    xor e
    cp b
    add sp, $50
    sub d
    sbc b
    adc h
    add c
    adc [hl]
    adc e
    ld d, b
    ld l, h
    nop
    ld l, [hl]
    nop
    add c
    and h
    and d
    and b
    or h
    or d
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
    ld c, [hl]
    or e
    cp b
    xor a
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld c, [hl]
    and h
    or a
    xor b
    or d
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld d, b
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, [hl]
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    or l
    and b
    or c
    xor b
    and h
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    and b
    and c
    xor b
    xor e
    xor b
    or e
    xor b
    and h
    or d
    add sp, $50
    adc a
    add b
    sub e
    adc b
    add h
    adc l
    sub e
    ld d, b
    sub e
    ld bc, $0276
    adc b
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
    and d
    xor [hl]
    xor l
    db $e3
    ld c, [hl]
    and d
    and h
    and b
    xor e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    ld c, [hl]
    or e
    and b
    xor b
    xor e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    xor b
    xor l
    ld d, b
    and b
    ld a, a
    and e
    and b
    or c
    xor d
    ld a, a
    and d
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, [hl]
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    add sp, $50
    adc e
    adc [hl]
    adc l
    add [hl]
    ld a, a
    adc l
    add h
    add d
    adc d
    ld d, b
    sbc e
    ld bc, $038e
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld c, [hl]
    or h
    or d
    and h
    or d
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld d, b
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
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and e
    or c
    xor b
    or l
    and h
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and h
    xor l
    and h
    xor h
    cp b
    add sp, $50
    add c
    add b
    add [hl]
    sub [hl]
    adc [hl]
    sub c
    adc h
    ld d, b
    ret z

    nop
    and b
    nop
    adc b
    or e
    ld a, a
    or d
    xor a
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld c, [hl]
    and l
    xor e
    or h
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
    ld a, a
    or h
    or d
    and h
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor e
    or h
    and h
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    and c
    and b
    or c
    xor d
    ld d, b
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $7f
    sub e
    and a
    and h
    ld c, [hl]
    and l
    xor e
    or h
    xor b
    and e
    ld a, a
    and a
    and b
    or c
    and e
    and h
    xor l
    or d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, [hl]
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    and h
    or d
    ld a, a
    and b
    xor b
    or c
    add sp, $50
    add c
    add b
    add [hl]
    sub [hl]
    adc [hl]
    sub c
    adc h
    ld d, b
    scf
    ld bc, $0ad2
    sub h
    or d
    or h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    and a
    and b
    xor l
    and [hl]
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
    ld c, [hl]
    and l
    and b
    or e
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    or e
    or c
    or h
    xor l
    xor d
    add sp, $7f
    adc b
    or e
    ld d, b
    or d
    and a
    xor [hl]
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and c
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    and h
    and h
    or d
    ld a, a
    and b
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $50
    adc e
    add b
    adc l
    add e
    ld a, a
    sub d
    adc l
    add b
    adc d
    add h
    ld d, b
    sbc e
    ld bc, $0136
    adc b
    or e
    ld a, a
    and a
    xor b
    and e
    and h
    or d
    ld a, a
    and e
    and h
    and h
    xor a
    ld c, [hl]
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    and d
    and b
    or l
    and h
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld c, [hl]
    xor l
    xor [hl]
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and h
    or l
    and h
    or c
    ld d, b
    or c
    and h
    and b
    and d
    and a
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or c
    and h
    xor h
    and b
    xor b
    xor l
    or d
    ld a, a
    or l
    xor b
    or c
    or e
    or h
    and b
    xor e
    xor e
    cp b
    ld c, [hl]
    xor h
    xor [hl]
    or e
    xor b
    xor [hl]
    xor l
    xor e
    and h
    or d
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $50
    add l
    adc e
    sbc b
    sub d
    add d
    adc [hl]
    sub c
    adc a
    adc b
    adc [hl]
    ld d, b
    inc sp
    ld bc, $0596
    adc b
    or e
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor l
    and h
    or d
    or e
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or d
    or e
    and h
    and h
    xor a
    ld a, a
    and d
    xor e
    xor b
    and l
    and l
    add sp, $4e
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    ld d, b
    and [hl]
    xor e
    xor b
    and e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and a
    xor [hl]
    xor a
    or d
    ld c, [hl]
    and b
    xor e
    xor [hl]
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
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor l
    and h
    or d
    or e
    add sp, $50
    adc b
    sub c
    adc [hl]
    adc l
    ld a, a
    sub d
    adc l
    add b
    adc d
    add h
    ld d, b
    cp d
    dec bc
    ld [hl], h
    ld [hl+], a
    sub e
    and a
    and h
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    ld c, [hl]
    xor h
    and h
    or e
    and b
    xor e
    ld a, a
    xor a
    and b
    or c
    or e
    xor b
    and d
    xor e
    and h
    or d
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
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a17f
    xor [hl]
    and e
    cp b
    ld c, [hl]
    or c
    and h
    and l
    xor e
    and h
    and d
    or e
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, [hl]
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    add sp, $50
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    ret z

    nop
    xor d
    nop
    adc b
    xor l
    ld a, a
    or e
    or c
    or h
    or e
    and a
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, [hl]
    and d
    xor [hl]
    or [hl]
    and b
    or c
    and e
    xor e
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $4e
    adc b
    or e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor e
    or d
    ld a, a
    and h
    and b
    and [hl]
    and h
    or c
    xor e
    cp b
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
    and a
    xor b
    and e
    and h
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and l
    and h
    and b
    or c
    ld a, a
    and l
    or c
    xor [hl]
    xor h
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
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    sub a
    ld bc, $042e
    adc b
    or e
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
    xor h
    xor [hl]
    or d
    or e
    ld c, [hl]
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or c
    or h
    xor l
    ld c, [hl]
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or d
    xor b
    xor h
    xor a
    xor e
    cp b
    ld a, a
    and c
    cp b
    ld d, b
    xor [hl]
    xor a
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
    xor h
    xor [hl]
    or h
    or e
    and a
    ld c, [hl]
    or [hl]
    xor b
    and e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    or l
    and h
    and b
    xor e
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    xor b
    and [hl]
    ld a, a
    and l
    and b
    xor l
    and [hl]
    or d
    add sp, $50
    add c
    add b
    adc e
    adc e
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ld l, h
    nop
    ld e, d
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    and l
    and b
    and d
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld c, [hl]
    xor e
    and b
    or c
    and [hl]
    and h
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
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or d
    or [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    and b
    or d
    ld d, b
    xor h
    or h
    and d
    and a
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    and b
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    call nc, $b27f
    xor b
    cp c
    and h
    add sp, $50
    sub d
    add d
    adc b
    sub d
    sub d
    adc [hl]
    sub c
    sub d
    ld d, b
    rst $38
    ld bc, $0a28
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $af4e
    xor b
    xor l
    and d
    and h
    or c
    or d
    db $f4
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, [hl]
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    ld a, a
    or d
    or e
    and h
    and h
    xor e
    db $f4
    ld a, a
    and d
    and b
    xor l
    ld d, b
    and d
    or c
    or h
    or d
    and a
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    and a
    and b
    or c
    and e
    ld c, [hl]
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    and b
    ld c, [hl]
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and c
    xor b
    or e
    or d
    add sp, $50
    adc h
    adc [hl]
    adc e
    add e
    ld d, b
    ret z

    nop
    jp nz, $9301

    and a
    and h
    ld a, a
    and l
    xor e
    or h
    xor b
    and e
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    and h
    and e
    ld c, [hl]
    and c
    cp b
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    and h
    or d
    ld a, a
    and d
    and b
    or c
    or l
    and h
    or d
    ld c, [hl]
    and a
    xor [hl]
    xor e
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, b
    xor l
    and h
    or d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld c, [hl]
    xor h
    xor b
    or a
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
    add sp, $50
    sub d
    adc b
    adc l
    add [hl]
    adc e
    add h
    add a
    adc [hl]
    sub c
    adc l
    ld d, b
    sbc e
    ld bc, $04a6
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    add a
    and h
    or c
    and d
    or h
    xor e
    and h
    and b
    xor l
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
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
    and b
    or d
    xor b
    xor e
    cp b
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    ld a, a
    and b
    or c
    xor [hl]
    or h
    db $e3
    ld d, b
    xor l
    and e
    ld a, a
    and b
    xor l
    ld a, a
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor b
    or d
    ld a, a
    rst $30
    or $f6
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or [hl]
    and h
    xor b
    and [hl]
    and a
    or e
    add sp, $50
    sub d
    add a
    add b
    sub c
    adc a
    ld a, a
    add d
    adc e
    add b
    sub [hl]
    ld d, b
    db $d3
    nop
    ld l, h
    ld [bc], a
    sub e
    and a
    xor b
    or d
    ld a, a
    and d
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    xor b
    and e
    and h
    or d
    ld c, [hl]
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    ld d, b
    xor [hl]
    and l
    ld a, a
    and e
    and b
    or c
    xor d
    xor l
    and h
    or d
    or d
    db $f4
    ld c, [hl]
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor a
    or c
    and h
    cp b
    add sp, $50
    adc e
    adc b
    sub e
    sub e
    adc e
    add h
    ld a, a
    add c
    add h
    add b
    sub c
    ld d, b
    ret z

    nop
    cp [hl]
    nop
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
    xor e
    xor b
    and d
    xor d
    or d
    ld c, [hl]
    and a
    xor [hl]
    xor l
    and h
    cp b
    add sp, $7f
    adc b
    or e
    or d
    ld a, a
    xor a
    and b
    xor e
    xor h
    ld c, [hl]
    or e
    and b
    or d
    or e
    and h
    or d
    ld a, a
    or d
    or [hl]
    and h
    and h
    or e
    ld d, b
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
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and a
    xor [hl]
    xor l
    and h
    cp b
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    and h
    and e
    add sp, $50
    add a
    adc b
    add c
    add h
    sub c
    adc l
    add b
    adc l
    sub e
    ld d, b
    rst $38
    ld bc, $0ad2
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld c, [hl]
    xor e
    and b
    or c
    and [hl]
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    and b
    or e
    ld d, b
    and d
    xor e
    xor b
    xor h
    and c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    or c
    and h
    and h
    or d
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    and h
    and b
    or e
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and h
    and h
    or e
    xor [hl]
    xor a
    or d
    add sp, $50
    adc e
    add b
    sub l
    add b
    ld d, b
    call z, $0200
    inc bc
    sub e
    and a
    and h
    or d
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    db $e3
    ld c, [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    or c
    and h
    and b
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld a, a
    and a
    xor [hl]
    or e
    or e
    and h
    or c
    ld d, b
    or e
    and a
    and b
    xor l
    ld a, a
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
    add sp, $7f
    adc b
    and l
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    xor [hl]
    xor [hl]
    xor e
    or d
    ld a, a
    xor [hl]
    and l
    and l
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    xor d
    xor b
    xor l
    ld a, a
    and a
    and b
    or c
    and e
    and h
    xor l
    or d
    add sp, $50
    adc e
    add b
    sub l
    add b
    ld d, b
    rst $08
    nop
    cp d
    inc b
    adc b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    and b
    or d
    ld a, a
    and a
    xor [hl]
    or e
    ld c, [hl]
    and b
    or d
    ld a, a
    xor e
    and b
    or l
    and b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor b
    or d
    ld c, [hl]
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and c
    xor b
    xor e
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    add sp, $50
    add l
    xor e
    and b
    xor h
    and h
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
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
    and c
    or h
    or c
    or d
    or e
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
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
    adc a
    adc b
    add [hl]
    ld d, b
    ld l, b
    nop
    adc h
    nop
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
    ld a, a
    or e
    xor b
    xor a
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor l
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor b
    and [hl]
    ld c, [hl]
    and l
    xor [hl]
    or c
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    add sp, $7f
    adc b
    or e
    or d
    ld a, a
    xor l
    xor [hl]
    or d
    and h
    ld d, b
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
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and h
    or l
    and h
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    cp c
    and h
    xor l
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    xor a
    xor [hl]
    or d
    and h
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    add sp, $50
    sub d
    sub [hl]
    adc b
    adc l
    add h
    ld d, b
    inc sp
    ld bc, $04ce
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld c, [hl]
    and b
    or c
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or c
    or h
    and [hl]
    and [hl]
    and h
    and e
    ld a, a
    and a
    xor [hl]
    xor [hl]
    or l
    and h
    or d
    ld d, b
    xor a
    or c
    and h
    or l
    and h
    xor l
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    or d
    xor e
    xor b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    and d
    cp b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $50
    add d
    adc [hl]
    sub c
    add b
    adc e
    ld d, b
    ret z

    nop
    ld l, [hl]
    nop
    sub e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and a
    and h
    and b
    and e
    ld a, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    ld c, [hl]
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
    and l
    or c
    xor [hl]
    xor h
    ld d, b
    and d
    xor e
    and h
    and b
    xor l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld c, [hl]
    and d
    and b
    xor l
    xor l
    xor [hl]
    or e
    ld a, a
    or d
    or h
    or c
    or l
    xor b
    or l
    and h
    ld a, a
    xor b
    xor l
    ld c, [hl]
    xor a
    xor [hl]
    xor e
    xor e
    or h
    or e
    and h
    and e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $50
    adc c
    add h
    sub e
    ld d, b
    ret z

    nop
    inc b
    ld bc, $ae93
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    xor l
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, [hl]
    or d
    and a
    xor [hl]
    xor [hl]
    or e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld d, b
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or h
    or e
    and a
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld c, [hl]
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    or [hl]
    xor b
    xor h
    ld a, a
    and c
    and b
    and d
    xor d
    or [hl]
    and b
    or c
    and e
    add sp, $50
    adc c
    add h
    sub e
    ld d, b
    db $d3
    nop
    db $76
    ld [bc], a
    adc b
    or e
    or d
    ld a, a
    xor b
    xor l
    or d
    or e
    xor b
    xor l
    and d
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and c
    or h
    or c
    cp b
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and a
    xor [hl]
    xor e
    and h
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld d, b
    or d
    or e
    and h
    and b
    xor e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or d
    or e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and a
    xor [hl]
    xor e
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $50
    add e
    add h
    adc e
    adc b
    sub l
    add h
    sub c
    sbc b
    ld d, b
    db $d3
    nop
    ld e, [hl]
    ld bc, $b388
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and d
    and b
    or c
    or c
    xor b
    and h
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    db $f4
    ld c, [hl]
    or [hl]
    and a
    and h
    or c
    and h
    or l
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    add sp, $50
    adc b
    and l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or e
    and a
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld c, [hl]
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
    add sp, $50
    adc d
    adc b
    sub e
    add h
    ld d, b
    ld h, e
    ld [bc], a
    ld a, [c]
    ld [de], a
    adc b
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    or d
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    and l
    or c
    and h
    and h
    xor e
    cp b
    db $f4
    ld a, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    ld d, b
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or h
    or e
    and a
    add sp, $4e
    adc b
    or e
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor b
    or d
    ld c, [hl]
    or l
    and h
    or c
    cp b
    ld a, a
    and d
    xor [hl]
    and b
    or c
    or d
    and h
    add sp, $50
    add b
    sub c
    adc h
    adc [hl]
    sub c
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    ei
    ld bc, $0456
    sub e
    and a
    and h
    ld a, a
    and l
    and h
    and b
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor b
    or e
    ld a, a
    or d
    and a
    and h
    and e
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, [hl]
    or d
    and a
    and b
    or c
    xor a
    add sp, $7f
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
    ld d, b
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
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    ld c, [hl]
    or h
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    and h
    and b
    or e
    and a
    and h
    or c
    or d
    ld c, [hl]
    and b
    or d
    ld a, a
    or d
    or [hl]
    xor [hl]
    or c
    and e
    or d
    add sp, $50
    add e
    add b
    sub c
    adc d
    ld d, b
    ret z

    nop
    ldh a, [rP1]
    add b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and e
    and b
    or [hl]
    xor l
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor [hl]
    xor h
    xor b
    xor l
    xor [hl]
    or h
    or d
    ld a, a
    and a
    xor [hl]
    or [hl]
    xor e
    ld c, [hl]
    and h
    and d
    and a
    xor [hl]
    and h
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
    or e
    and a
    and h
    ld d, b
    and b
    or c
    and h
    and b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    xor l
    xor [hl]
    or h
    xor l
    and d
    and h
    ld c, [hl]
    or e
    and a
    and b
    or e
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
    or d
    ld c, [hl]
    or e
    and h
    or c
    or c
    xor b
    or e
    xor [hl]
    or c
    cp b
    add sp, $50
    add e
    add b
    sub c
    adc d
    ld d, b
    sub a
    ld bc, $0302
    sub e
    and a
    and h
    ld a, a
    xor a
    or h
    xor l
    and [hl]
    and h
    xor l
    or e
    db $e3
    ld c, [hl]
    or d
    xor h
    and h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    or d
    and a
    xor [hl]
    xor [hl]
    or e
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, b
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or h
    or e
    and a
    ld a, a
    or c
    and h
    or d
    or h
    xor e
    or e
    or d
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    xor [hl]
    or a
    xor b
    xor l
    or d
    ld a, a
    and c
    or h
    or c
    xor l
    db $e3
    ld c, [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $50
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    rst $38
    ld bc, $0d16
    adc b
    or e
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld c, [hl]
    and c
    cp b
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
    or e
    ld c, [hl]
    or h
    xor l
    and e
    and h
    or c
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    and e
    and h
    xor a
    or e
    and a
    or d
    ld d, b
    and b
    or e
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, [hl]
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
    ld a, a
    and d
    and b
    xor l
    ld c, [hl]
    or d
    or h
    or c
    or l
    xor b
    or l
    and h
    add sp, $50
    adc e
    adc [hl]
    adc l
    add [hl]
    ld a, a
    adc l
    adc [hl]
    sub d
    add h
    ld d, b
    ld l, h
    nop
    db $e4
    ld [bc], a
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
    and e
    and h
    or d
    and h
    or c
    or e
    db $e3
    ld c, [hl]
    and h
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
    and a
    xor [hl]
    or h
    or c
    or d
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    and b
    or d
    and a
    xor [hl]
    or c
    and h
    ld d, b
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and e
    and h
    and l
    or e
    xor e
    cp b
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
    or c
    or h
    xor l
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $50
    add b
    sub c
    adc h
    adc [hl]
    sub c
    ld d, b
    inc sp
    ld bc, $0a5a
    add c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $b27f
    xor d
    xor b
    xor l
    ld a, a
    xor b
    or d
    ld c, [hl]
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
    and b
    ld a, a
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
    ld d, b
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, [hl]
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    or d
    and d
    or c
    and b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    add sp, $50
    sub l
    adc b
    sub c
    sub e
    sub h
    add b
    adc e
    ld d, b
    ret z

    nop
    ret nc

    ld [bc], a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor h
    and b
    xor l
    xor h
    and b
    and e
    and h
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or e
    and h
    or d
    or e
    ld d, b
    or e
    and h
    and d
    and a
    xor l
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    cp b
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    xor h
    and b
    cp b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or h
    xor l
    xor a
    or c
    xor [hl]
    and [hl]
    db $e3
    ld c, [hl]
    or c
    and b
    xor h
    xor h
    and h
    and e
    ld a, a
    or c
    and h
    and b
    and d
    or e
    xor b
    xor [hl]
    xor l
    or d
    add sp, $50
    add c
    adc b
    add [hl]
    ld a, a
    add a
    adc [hl]
    sub c
    adc l
    ld d, b
    sub a
    ld bc, $0622
    sub e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and c
    and b
    xor e
    xor e
    or d
    ld c, [hl]
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and l
    and b
    xor e
    xor e
    and h
    xor l
    ld a, a
    and b
    xor l
    or e
    xor e
    and h
    or c
    or d
    ld a, a
    and d
    and b
    xor l
    ld d, b
    and c
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    xor b
    and e
    or d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    add sp, $50
    adc a
    add b
    adc b
    adc l
    sub e
    add h
    sub c
    ld d, b
    scf
    ld bc, $0500
    sub e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    ld a, a
    xor [hl]
    and l
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
    ld a, a
    and l
    xor e
    or h
    xor b
    and e
    ld c, [hl]
    or d
    and h
    and d
    or c
    and h
    or e
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld d, b
    or e
    and b
    xor b
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    xor a
    or c
    and h
    and e
    and h
    or e
    and h
    or c
    db $e3
    ld c, [hl]
    xor h
    xor b
    xor l
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and h
    and b
    and d
    and a
    ld c, [hl]
    sub d
    adc h
    add h
    add b
    sub c
    add [hl]
    adc e
    add h
    add sp, $50
    sub d
    add d
    sub h
    add l
    add l
    adc e
    add h
    ld d, b
    call z, $cc00
    ld bc, $ae93
    ld a, a
    and c
    or c
    or h
    or d
    and a
    ld a, a
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    xor b
    and [hl]
    and a
    or e
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
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
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
    ld d, b
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    and a
    and b
    or d
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
    and d
    xor [hl]
    xor h
    db $e3
    ld c, [hl]
    xor a
    and h
    or e
    xor b
    or e
    xor b
    or l
    and h
    ld a, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    add sp, $50
    add a
    add b
    adc l
    add e
    sub d
    sub e
    add b
    adc l
    add e
    ld d, b
    sub a
    ld bc, $0424
    add b
    and l
    or e
    and h
    or c
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, [hl]
    and a
    and b
    xor l
    and e
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or e
    and a
    or c
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    or e
    and a
    and h
    ld d, b
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    call nc, $b37f
    xor b
    xor h
    xor b
    xor l
    and [hl]
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor a
    or c
    and h
    or d
    and h
    xor l
    or e
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and l
    and b
    xor l
    and d
    cp b
    ld a, a
    xor d
    xor b
    and d
    xor d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $50
    adc d
    adc b
    sub d
    sub d
    ld d, b
    ld l, b
    nop
    add d
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    and h
    xor l
    or d
    xor b
    or e
    xor b
    or l
    xor b
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    xor e
    xor b
    xor a
    or d
    ld a, a
    and e
    and h
    or l
    and h
    xor e
    xor [hl]
    xor a
    or d
    ld c, [hl]
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    add sp, $50
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
    xor h
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    or e
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and l
    cp b
    ld c, [hl]
    or h
    xor l
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    or d
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
    ret z

    nop
    ld [$8802], sp
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or l
    xor b
    xor [hl]
    xor e
    and h
    xor l
    or e
    ld c, [hl]
    or e
    and a
    or h
    xor l
    and e
    and h
    or c
    add sp, $7f
    sub e
    and a
    and h
    ld a, a
    or d
    xor a
    and b
    and d
    and h
    ld c, [hl]
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    or d
    ld d, b
    and l
    xor e
    xor b
    and d
    xor d
    and h
    or c
    or d
    ld a, a
    and c
    xor e
    or h
    xor b
    or d
    and a
    db $e3
    ld c, [hl]
    or [hl]
    and a
    xor b
    or e
    and h
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    and d
    and a
    and b
    or c
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    add sp, $50
    adc e
    adc b
    sub l
    add h
    ld a, a
    add d
    adc [hl]
    add b
    adc e
    ld d, b
    call z, $d600
    ld bc, $b388
    ld a, a
    xor l
    and b
    or e
    or h
    or c
    and b
    xor e
    xor e
    cp b
    ld a, a
    or d
    xor a
    xor b
    or e
    or d
    ld c, [hl]
    and b
    xor l
    ld a, a
    rst $30
    rst $30
    or $f6
    db $e3
    and e
    and h
    and [hl]
    or c
    and h
    and h
    ld c, [hl]
    and l
    xor e
    and b
    xor h
    and h
    add sp, $7f
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
    ld d, b
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    and a
    and h
    or c
    and b
    xor e
    and e
    or d
    ld a, a
    and b
    ld c, [hl]
    or l
    xor [hl]
    xor e
    and d
    and b
    xor l
    xor b
    and d
    ld a, a
    and h
    or c
    or h
    xor a
    or e
    xor b
    xor [hl]
    xor l
    add sp, $50
    adc h
    adc b
    adc e
    adc d
    ld a, a
    add d
    adc [hl]
    sub [hl]
    ld d, b
    scf
    ld bc, $067c
    adc b
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
    xor h
    xor b
    xor e
    xor d
    ld a, a
    and b
    ld c, [hl]
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    db $f4
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, [hl]
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    xor d
    xor l
    and b
    and d
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, b
    or c
    and a
    cp b
    or e
    and a
    xor h
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor a
    or h
    xor e
    xor e
    db $e3
    ld c, [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or h
    and e
    and e
    and h
    or c
    or d
    add sp, $50
    add a
    add b
    adc a
    adc a
    adc b
    adc l
    add h
    sub d
    sub d
    ld d, b
    sbc e
    ld bc, $0406
    add c
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
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
    ld c, [hl]
    and h
    and [hl]
    and [hl]
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    add c
    adc e
    adc b
    sub d
    sub d
    add h
    sbc b
    ld d, b
    xor a
    or c
    xor [hl]
    or l
    xor b
    and e
    and h
    or d
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
    ld c, [hl]
    and h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, [hl]
    or d
    xor h
    xor b
    xor e
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor c
    xor [hl]
    cp b
    add sp, $50
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    ld d, b
    ld e, e
    ld [bc], a
    ld d, b
    rrca
    sub e
    and a
    xor b
    or d
    ld a, a
    or c
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
    or d
    or e
    xor [hl]
    or c
    and h
    or d
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld c, [hl]
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    db $f4
    ld d, b
    or e
    and a
    and h
    xor l
    ld a, a
    or d
    or [hl]
    and h
    and h
    xor a
    or d
    ld a, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    xor l
    and e
    db $f4
    ld a, a
    or d
    and a
    xor [hl]
    xor [hl]
    or e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor [hl]
    and l
    and l
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
    add sp, $50
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
    ld d, b
    ld e, a
    ld [bc], a
    ld [de], a
    ld de, $a793
    xor b
    or d
    ld a, a
    and c
    or c
    and b
    or [hl]
    xor l
    cp b
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or d
    and h
    or d
    ld c, [hl]
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    and b
    or c
    or e
    and a
    db $f4
    ld d, b
    or d
    xor a
    xor [hl]
    or h
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    or d
    ld c, [hl]
    and a
    xor [hl]
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
    and b
    ld c, [hl]
    or l
    xor [hl]
    xor e
    and d
    and b
    xor l
    xor [hl]
    call nc, $ac7f
    and b
    and [hl]
    xor h
    and b
    add sp, $50
    add b
    sub h
    sub c
    adc [hl]
    sub c
    add b
    ld d, b
    ld e, a
    ld [bc], a
    jr jr_074_565d

    sub e
    and a
    xor b
    or d
    ld a, a
    and e
    xor b
    or l
    xor b
    xor l
    and h
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l

jr_074_565d:
    ld a, a
    and c
    xor e
    xor [hl]
    or [hl]
    or d
    ld c, [hl]
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
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
    db $f4
    ld d, b
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    and h
    and b
    or c
    and d
    and a
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    xor a
    or h
    or c
    and h
    ld c, [hl]
    or c
    and h
    or d
    and h
    or c
    or l
    xor [hl]
    xor b
    or c
    add sp, $50
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub d
    adc d
    adc b
    adc l
    ld d, b
    ret z

    nop
    ld [hl], $06
    add c
    xor [hl]
    or c
    xor l
    ld a, a
    and e
    and h
    and h
    xor a
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    db $e3
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    and b
    ld d, b
    xor a
    or h
    xor a
    and b
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and e
    xor b
    or c
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    add sp, $50
    add a
    add b
    sub c
    add e
    ld a, a
    sub d
    add a
    add h
    adc e
    adc e
    ld d, b
    scf
    ld bc, $0d16
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or d
    or e
    and b
    cp b
    ld c, [hl]
    or d
    or e
    xor b
    xor e
    xor e
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, [hl]
    xor b
    or e
    call nc, $a07f
    ld a, a
    xor a
    or h
    xor a
    and b
    add sp, $7f
    adc b
    or e
    ld d, b
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    or c
    xor h
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    xor [hl]
    xor e
    xor b
    and e
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    add sp, $50
    add b
    sub c
    adc h
    adc [hl]
    sub c
    ld d, b
    ld e, a
    ld [bc], a
    ld h, d
    ld de, $ad88
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor h
    xor b
    and [hl]
    and a
    or e
    cp b
    ld a, a
    and a
    and b
    xor l
    and e
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and a
    and b
    or d
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
    ld a, a
    or e
    xor [hl]
    ld d, b
    xor h
    and b
    xor d
    and h
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
    or d
    and a
    and b
    xor d
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    xor [hl]
    or h
    xor l
    db $e3
    ld c, [hl]
    or e
    and b
    xor b
    xor l
    or d
    ld a, a
    and d
    or c
    or h
    xor h
    and c
    xor e
    and h
    add sp, $50
    add e
    adc b
    sub l
    adc b
    adc l
    add [hl]
    ld d, b
    and l
    ld b, $98
    ld [de], a
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
    xor b
    xor l
    and d
    or c
    and h
    and e
    db $e3
    ld c, [hl]
    xor b
    and c
    xor e
    and h
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and d
    and b
    xor e
    xor h
    ld a, a
    or c
    and b
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    or e
    xor [hl]
    db $e3
    ld d, b
    or c
    xor h
    or d
    add sp, $7f
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
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    adc e
    sub h
    add [hl]
    adc b
    add b
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or d
    or e
    xor [hl]
    or c
    xor h
    or d
    ld a, a
    or d
    or e
    and b
    or c
    or e
    add sp, $50
    sub c
    add b
    adc b
    adc l
    add c
    adc [hl]
    sub [hl]
    ld d, b
    or [hl]
    inc b
    ld h, $11
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or c
    and h
    or l
    and h
    and b
    xor e
    ld c, [hl]
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and b
    ld c, [hl]
    xor a
    or h
    or c
    and h
    db $e3
    and a
    and h
    and b
    or c
    or e
    and h
    and e
    ld d, b
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and c
    cp b
    ld a, a
    or d
    and a
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or c
    and b
    xor b
    xor l
    db $e3
    ld c, [hl]
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
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    add sp, $50
    sub e
    adc b
    adc h
    add h
    sub e
    sub c
    add b
    sub l
    add h
    adc e
    ld d, b
    ret z

    nop
    ld l, [hl]
    nop
    sub c
    and h
    or l
    and h
    or c
    and h
    and e
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld c, [hl]
    and [hl]
    or h
    and b
    or c
    and e
    xor b
    and b
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    db $f4
    ld a, a
    add d
    add h
    adc e
    add h
    add c
    adc b
    ld d, b
    and b
    xor a
    xor a
    and h
    and b
    or c
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    or l
    and h
    or c
    ld c, [hl]
    and c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    or d
    ld c, [hl]
    and h
    or a
    xor b
    or d
    or e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
