; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $068", ROMX[$4000], BANK[$68]

    ld [bc], a
    dec c
    ld b, b
    nop
    nop
    ld c, $40
    nop
    nop
    ld bc, $0f05
    ld b, b
    sub c
    sub c
    ld [hl], $45
    nop
    inc sp
    xor d
    rlca
    ld sp, $0333
    ld [$401d], sp
    ld l, [hl]
    inc c
    sub b
    halt
    ld bc, $0075
    nop
    rrca
    adc e
    rrca
    add l
    inc d
    nop
    ld l, c
    dec c
    jp c, Jump_068_7640

    nop
    nop
    adc e
    rrca
    add l
    inc d
    nop
    ld l, c
    dec c
    ldh [rLCDC], a
    ld l, [hl]
    dec c
    adc e
    ld a, [bc]
    inc d
    nop
    ld [hl-], a
    xor a
    rlca
    ld [de], a
    ld [bc], a
    dec b
    ld bc, $3331
    inc bc
    add hl, bc
    add e
    ld b, b
    inc sp
    inc sp
    inc bc
    ld a, a
    ld h, c
    nop
    ld l, a
    inc c
    ld l, c
    inc c
    rst $20
    ld b, b
    ld b, a
    ld c, h
    inc sp
    ld b, h
    ld d, h
    ld c, c
    ld h, h
    and c
    ld b, l
    nop
    nop
    ld l, b
    inc c
    ld e, [hl]
    ld b, e
    ld bc, $835f
    ld h, b
    ld a, a
    ld h, c
    nop
    ld b, a
    ld c, h
    jp Jump_068_5445


    ld c, c
    ld l, c
    inc c
    db $ec
    ld b, b
    ld l, [hl]
    inc c
    adc e
    inc d
    rrca
    ld l, d
    nop
    add d
    adc e
    ld a, [bc]
    sub c
    ld l, e
    ld b, a
    ld sp, $0011
    add hl, bc
    xor l
    ld b, b
    ld c, h
    pop af
    ld b, b
    ld d, l
    ld sp, $04c2
    add hl, bc
    sbc h
    ld b, b
    ld c, h
    ld h, e
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $e3
    ld b, c
    ld d, l
    sbc [hl]
    db $f4
    ld bc, $b108
    ld b, b
    inc sp
    ld de, $4c00
    dec e
    ld b, d
    ld d, l
    ld c, h
    ld [hl], a
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld d, c
    rst $18
    ld b, d
    ld d, c
    add hl, de
    ld b, e
    ld d, c
    sub h
    ld b, e
    ld d, c
    call z, Call_068_5343
    ld h, b
    ld b, [hl]
    ld d, e
    adc a
    ld b, [hl]
    ld d, e
    sub $46
    ld d, e
    dec h
    ld b, a
    ld d, e
    ld h, b
    ld b, a
    inc c
    stop
    inc c
    rrca
    nop
    or d
    nop
    daa
    or e
    nop
    ld b, b
    add hl, sp
    inc [hl]
    inc [hl]
    scf
    jr c, jr_068_4127

    add hl, sp
    scf
    dec [hl]
    scf
    scf
    jr c, jr_068_412e

    dec c
    dec c
    dec c
    dec c
    ld b, a
    inc c
    inc c
    inc c
    inc c
    ld b, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    or c
    xor [hl]
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and h
    and b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    and $51
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

jr_068_4127:
    and a
    and b
    or c
    and e
    add sp, $51
    adc b

jr_068_412e:
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
    xor h
    or h
    and d
    and a
    ld c, a
    and h
    and b
    or d
    xor b
    and h
    or c
    ld a, a
    xor b
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
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    add l
    adc e
    sbc b
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
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    or h
    or d
    and h
    ld c, a
    add l
    adc e
    sbc b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, l
    and d
    xor b
    or e
    cp b
    call nc, $867f
    sbc b
    adc h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    ld a, a
    and a
    and h
    or c
    and h
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
    and b
    ld a, a
    xor l
    xor b
    and d
    and h
    ld c, a
    and [hl]
    xor b
    and l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    call nc, $827f
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    call nc, $864f
    sbc b
    adc h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    rst $20
    ld d, c
    sub e
    and a
    and h
    xor l
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
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    add a
    adc h
    add sp, $57
    nop
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    add l
    adc e
    sbc b
    ld a, a
    or e
    xor [hl]
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
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and b
    and c
    xor e
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    add l
    adc e
    sbc b
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
    ld d, c
    or e
    xor [hl]
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
    cp b
    xor [hl]
    or h
    ld a, a
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    and h
    and e
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
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    and a
    and h
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld d, l
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    and a
    and b
    or c
    and e
    and h
    or c
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $a67f
    xor [hl]
    xor [hl]
    and e
    db $f4
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld c, a
    and a
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
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
    and d
    and a
    or h
    and c
    and c
    cp b
    add sp, $57
    nop
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
    add l
    adc e
    sbc b
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
    and [hl]
    and h
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld d, c
    or e
    xor [hl]
    ld a, a
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    ld a, a
    xor b
    xor l
    db $e3
    ld c, a
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    add sp, $57
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
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor l
    xor [hl]
    or c
    or e
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and c
    and h
    ld a, a
    and d
    or c
    or h
    or d
    and a
    and h
    and e
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    and a
    xor b
    and e
    xor b
    xor l
    and [hl]
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
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    or h
    or d
    and h
    ld a, a
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
    ld a, a
    or e
    xor [hl]
    ld d, l
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    add d
    add a
    sub h
    add d
    adc d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    ld c, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    db $f4
    ld a, a
    or d
    xor a
    and b
    or c
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, c
    and a
    xor b
    or d
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    add sp, $57
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
    or d
    and h
    or l
    and h
    or c
    and b
    xor e
    ld c, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    or d
    ld a, a
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
    ld d, l
    and a
    and h
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    add sp, $51
    add b
    ld a, a
    xor h
    cp b
    or e
    and a
    xor b
    and d
    and b
    xor e
    ld a, a
    or d
    and h
    and b
    ld c, a
    and d
    or c
    and h
    and b
    or e
    or h
    or c
    and h
    ld a, a
    or d
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    and e
    db $e3
    ld d, l
    xor e
    cp b
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add h
    sub h
    sub d
    adc b
    adc l
    add h
    sbc h
    ld a, a
    sbc b
    xor [hl]
    db $f4
    ld c, a
    ld d, d
    add sp, $51
    sub [hl]
    and b
    or d
    xor l
    push de
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and $51
    adc b
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
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
    or b
    or h
    xor b
    and d
    xor d
    ld a, a
    and [hl]
    xor e
    xor b
    xor h
    xor a
    or d
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
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
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld c, a
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    add sp, $51
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and c
    and h
    and b
    or h
    db $e3
    ld c, a
    or e
    xor b
    and l
    or h
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    add sp, $51
    add b
    xor l
    and e
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and b
    and d
    and h
    or d
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    or d
    ld a, a
    and b
    xor l
    and e
    ld d, c
    or c
    xor [hl]
    and b
    and e
    or d
    ld a, a
    and b
    or e
    ld a, a
    or d
    xor b
    xor h
    xor a
    xor e
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
    or d
    xor a
    and h
    and h
    and e
    or d
    add sp, $51
    adc b
    or e
    call nc, $b67f
    xor [hl]
    xor l
    and e
    and h
    or c
    and l
    or h
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
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    ld a, a
    or h
    xor a
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    ld [hl], l
    ld d, c
    adc b
    sub $a4
    ld a, a
    and e
    and h
    and d
    xor b
    and e
    and h
    and e
    add sp, $51
    adc b
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
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or d
    ld c, a
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
    or e
    xor [hl]
    ld a, a
    and h
    and b
    or c
    xor l
    ld d, l
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    call nc, $b17f
    and h
    or d
    xor a
    and h
    and d
    or e
    rst $20
    ld d, c
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    db $f4
    ld a, a
    ld d, d
    add sp, $4f
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
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    and e
    xor h
    xor b
    or e
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor l
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    ld d, d
    rst $20
    ld d, c
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and [hl]
    or c
    and b
    or l
    xor b
    or e
    and b
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
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
    xor d
    and h
    and h
    xor a
    ld c, a
    or d
    and h
    and b
    or c
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    add sp, $51
    adc b
    jp nc, $b27f

    or h
    or c
    and h
    ld a, a
    or [hl]
    and h
    pop de
    xor e
    ld a, a
    or d
    and h
    and h
    ld c, a
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
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $51
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
    rst $20
    ld d, a
    nop
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, c
    add b
    ld a, a
    adc a
    xor [hl]
    or c
    or e
    ld a, a
    sub d
    or h
    or c
    or c
    xor [hl]
    or h
    xor l
    and e
    and h
    and e
    ld c, a
    and c
    cp b
    ld a, a
    sub c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    sub d
    and h
    and b
    or d
    ld d, a
    nop
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, c
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    add d
    add a
    sub h
    add d
    adc d
    ld d, c
    add a
    xor b
    or d
    ld a, a
    sub c
    xor [hl]
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    add l
    xor b
    or d
    or e
    or d
    ld c, a
    add e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld d, a
    nop
    ei
    or $f6
    ld a, a
    sbc b
    and h
    and b
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    sub e
    or c
    and b
    and e
    xor b
    or e
    xor b
    xor [hl]
    xor l
    ld d, c
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    adc a
    add a
    add b
    sub c
    adc h
    add b
    add d
    sbc b
    ld d, c
    sub [hl]
    and h
    ld a, a
    add b
    or [hl]
    and b
    xor b
    or e
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld c, a
    adc h
    and h
    and e
    xor b
    and d
    xor b
    xor l
    and b
    xor e
    ld a, a
    sub b
    or h
    and h
    or c
    xor b
    and h
    or d
    ld d, a
    nop
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld c, a
    adc a
    add a
    adc [hl]
    sub e
    adc [hl]
    ld a, a
    sub d
    sub e
    sub h
    add e
    adc b
    adc [hl]
    ld d, c
    sub e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    sub d
    xor l
    and b
    xor a
    or d
    and a
    xor [hl]
    or e
    ld a, a
    and b
    or d
    ld c, a
    and b
    ld a, a
    adc d
    and h
    and h
    xor a
    or d
    and b
    xor d
    and h
    rst $20
    ld d, a
    nop
    sub e
    add a
    add h
    ld a, a
    ld d, h
    ld a, a
    sub d
    add h
    add h
    sub c
    ld c, a
    add b
    add a
    add h
    add b
    add e
    ld d, a
    nop
    nop
    rlca
    add hl, hl
    ld de, $1601
    inc b
    dec hl
    ld [$1601], sp
    dec b
    dec hl
    rla
    ld bc, $0616
    cpl
    rrca
    ld bc, $0716
    rlca
    add hl, bc
    ld bc, $0701
    dec h
    rrca
    ld bc, $0916
    ld de, $0105
    ld d, $0a
    ld bc, $1001
    dec bc
    nop
    ld e, $40
    nop
    nop
    ld [$1422], sp
    nop
    cp a
    ld b, b
    dec l
    rlca
    nop
    jp nz, $2b40

    jr jr_068_47af

jr_068_47af:
    adc $40
    cpl
    inc de
    nop
    push bc
    ld b, b
    dec b
    inc bc
    nop
    ret z

    ld b, b
    jr @+$0a

    nop
    bit 0, b
    inc de
    inc b
    rlca
    call nc, $1d40
    dec b
    rlca
    rst $10
    ld b, b
    inc c
    ld h, [hl]
    add hl, hl
    add hl, de
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    or e
    ld b, b
    rst $38
    rst $38
    dec l
    dec h
    dec d
    dec b
    ld bc, $ffff
    nop
    nop
    or [hl]
    ld b, b
    rst $38
    rst $38
    jr z, jr_068_4815

    ld [de], a
    inc b
    jr nz, @+$01

    rst $38
    nop
    nop
    cp c
    ld b, b
    rst $38
    rst $38
    ld e, c
    inc d
    inc c
    jr jr_068_47f7

jr_068_47f7:
    rst $38
    rst $38
    nop
    nop
    pop de
    ld b, b
    rst $38
    rst $38
    ld e, c
    dec d
    dec c
    jr jr_068_4804

jr_068_4804:
    rst $38
    rst $38
    nop
    nop
    pop de
    ld b, b
    rst $38
    rst $38
    ld e, c
    dec e
    ld [$0018], sp
    rst $38
    rst $38
    nop
    nop

jr_068_4815:
    pop de
    ld b, b
    rst $38
    rst $38
    ld e, c
    ld hl, $1809
    nop
    rst $38
    rst $38
    nop
    nop
    pop de
    ld b, b
    rst $38
    rst $38
    ld e, c
    rra
    ld c, $18
    nop
    rst $38
    rst $38
    nop
    nop
    pop de
    ld b, b
    rst $38
    rst $38
    ld e, c
    rla
    ld [$0018], sp
    rst $38
    rst $38
    nop
    nop
    pop de
    ld b, b
    rst $38
    rst $38
    ld l, $32
    ld c, $05
    ld bc, $ffff
    nop
    nop
    add h
    ld b, b
    rst $38
    rst $38
    dec hl
    add hl, de
    rrca
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    rst $28
    ld h, $ad
    rlca
    ld h, e
    ld [de], a
    ld c, $01
    nop
    rst $38
    rst $38
    sub b
    nop
    rst $28
    ld h, $ae
    rlca
    ld [bc], a
    ld [hl], c
    ld c, b
    nop
    nop
    ld [hl], d
    ld c, b
    nop
    nop
    nop
    sub c
    sub c
    db $76
    ld a, [bc]
    ld [bc], a
    ld [hl], l
    nop
    ld a, [bc]
    rrca
    ld l, c
    ld a, [bc]
    ld h, [hl]
    ld c, d
    inc bc
    adc h
    ld c, b
    db $76
    ld a, [bc]
    ld [bc], a
    ld [hl], l
    nop
    ld a, [bc]
    rrca
    ld l, c
    ld a, [bc]
    ld l, c
    ld c, d
    halt
    inc bc
    ld b, a
    ld c, h
    ld l, e
    ld c, d
    ld d, l
    ld c, h
    ld [hl], c
    ld c, d
    ld d, h
    ld c, c
    inc d
    ld bc, $5191
    ld [hl], c
    ld c, d
    ld b, e
    inc b
    inc [hl]
    ld a, [bc]
    ld d, l
    ld c, l
    pop bc
    ld c, l
    nop
    nop
    xor e
    ld c, b
    ld h, [hl]
    ld b, a
    ld c, h
    jp nc, Jump_068_544d

    ld c, c
    sub c
    ld [$1804], sp
    ld c, $22
    ld c, [hl]
    ld a, [hl-]
    ld c, [hl]
    nop
    nop
    cp a
    ld c, b
    ld e, $17
    dec c
    ld h, [hl]
    ld b, a
    inc [hl]
    ld l, c
    nop
    add hl, bc
    rst $38
    ld c, b
    inc [hl]
    ld a, [hl]
    nop
    add hl, bc
    ld b, l
    ld c, c
    ld a, [hl+]
    dec c
    add hl, bc
    ld h, e
    ld c, c
    ld sp, $026f
    add hl, bc
    add sp, $48
    ld c, h
    ld b, d
    ld c, [hl]
    ld d, l
    inc sp
    ld l, a
    ld [bc], a
    nop
    ld d, a
    ld c, c
    inc bc
    db $eb
    ld c, b
    nop
    ld e, e
    ld c, c
    sub a
    dec c
    ld b, $01
    ld l, e
    ld c, c
    ld b, $02
    ld h, a
    ld c, c
    ld b, e
    jr jr_068_4906

    nop
    nop
    ld e, a
    ld c, c
    inc bc
    ld h, e
    ld c, c
    nop
    ld l, a
    ld c, c
    ld h, h
    ld a, [hl-]
    ld c, [hl]
    nop

jr_068_4906:
    nop
    add hl, de
    rst $30
    reti


    ld b, $02
    ld d, $49
    ld b, $01
    inc e
    ld c, c
    ld b, $00
    ld [hl+], a
    ld c, c
    ld sp, $00cd
    add hl, bc
    inc a
    ld c, c
    ld sp, $0044
    add hl, bc
    cpl
    ld c, c
    ld e, [hl]
    jr jr_068_4933

    ld e, a
    ld h, b
    dec de
    rst $30
    reti


    ld bc, $6935
    nop
    sub c
    ld e, [hl]
    jr @+$0e

    ld e, a

jr_068_4933:
    ld h, b
    dec de
    rst $30
    reti


    ld [bc], a
    dec [hl]
    ld l, c
    nop
    sub c
    ld e, [hl]
    jr jr_068_4950

    ld e, a
    ld h, b
    dec [hl]
    ld l, c
    nop
    sub c
    nop
    ld [hl], e
    ld c, c
    sbc [hl]
    add h
    ld bc, $5408
    ld c, c
    dec [hl]
    ld a, [hl]

jr_068_4950:
    nop
    inc bc
    ld h, e
    ld c, c
    inc bc
    ld [hl], a
    ld c, c
    inc c
    add hl, de
    nop
    sub c
    inc c
    ld a, [de]
    nop
    sub c
    inc c
    dec de
    nop
    sub c
    inc c
    inc e
    nop
    sub c
    inc c
    dec e
    nop
    sub c
    inc c
    ld e, $00
    sub c
    inc c
    rra
    nop
    sub c
    inc c
    jr nz, jr_068_4976

jr_068_4976:
    sub c
    inc c
    ld hl, $9100
    ld d, d
    dec b
    dec de
    dec bc
    reti


    ld c, d
    dec b
    ld c, e
    nop
    nop
    add a
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    dec bc
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld d, e
    dec b
    dec de
    inc c
    ld a, h
    ld c, e
    sbc b
    ld c, e
    nop
    nop
    sbc e
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    xor h
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld h, h
    dec b
    inc e
    ld a, [bc]
    rst $18
    ld c, e
    add hl, de
    ld c, h
    nop
    nop
    xor a
    ld c, c
    ld e, $17
    ld c, $66
    ld b, a
    inc [hl]
    ld l, d
    nop
    add hl, bc
    jp hl


    ld c, c
    ld a, [hl+]
    ld c, $09
    dec sp
    ld c, d
    ld sp, $0271
    add hl, bc
    jp nc, Jump_068_4c49

    dec [hl]
    ld c, h
    ld d, l
    inc sp
    ld [hl], c
    ld [bc], a
    nop
    cpl
    ld c, d
    inc bc
    push de
    ld c, c
    nop
    inc sp
    ld c, d
    sub a
    ld c, $06
    ld bc, $4a43
    ld b, $02
    ccf
    ld c, d
    ld b, e
    inc e
    ld a, [bc]
    nop
    nop
    scf
    ld c, d
    inc bc
    dec sp
    ld c, d
    nop
    ld b, a
    ld c, d
    ld h, h
    add hl, de
    ld c, h
    nop
    nop
    add hl, de
    ld hl, sp-$27
    ld b, $02
    nop
    ld c, d
    ld b, $01
    ld b, $4a
    ld b, $00
    inc c
    ld c, d
    ld sp, $00cd
    add hl, bc
    ld h, $4a
    ld sp, $0044
    add hl, bc
    add hl, de
    ld c, d
    ld e, [hl]
    inc e
    ld a, [bc]
    ld e, a
    ld h, b
    dec de
    ld hl, sp-$27
    ld bc, $6a35
    nop
    sub c
    ld e, [hl]
    inc e
    inc de
    ld e, a
    ld h, b
    dec de
    ld hl, sp-$27
    ld [bc], a
    dec [hl]
    ld l, d
    nop
    sub c
    ld e, [hl]
    inc e
    inc d
    ld e, a
    ld h, b
    dec [hl]
    ld l, d
    nop
    sub c
    inc c
    inc hl
    nop
    sub c
    inc c
    inc h
    nop
    sub c
    inc c
    dec h
    nop
    sub c
    inc c
    ld h, $00
    sub c
    inc c
    daa
    nop
    sub c
    inc c
    jr z, jr_068_4a46

jr_068_4a46:
    sub c
    inc c
    add hl, hl
    nop
    sub c
    ld h, l
    dec b
    inc e
    dec bc
    ld [hl], e
    ld c, h
    or h
    ld c, h
    nop
    nop
    ld d, a
    ld c, d
    ld h, [hl]
    ld b, a
    ld c, h
    adc $4c
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld a, a
    ld c, [hl]
    push de
    ld bc, $0120
    ld c, $0e
    ld b, a
    ld c, $47
    nop
    add a
    and h
    cp b
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
    or [hl]
    and a
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and e
    xor b
    and e
    and $51
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    or d
    or e
    and h
    xor a
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, l
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $51
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    db $e3
    ld c, a
    add [hl]
    add h
    add b
    sub c
    ld a, a
    adc h
    add b
    adc a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    and h
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $55
    adc e
    and h
    or e
    ld a, a
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
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or [hl]
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
    xor a
    or c
    and h
    or l
    and b
    xor b
    xor e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and a
    and b
    or c
    or d
    and a
    ld a, a
    or e
    or c
    and h
    xor d
    db $f4
    ld d, c
    or e
    and a
    and h
    ld a, a
    or e
    or c
    or h
    or e
    and a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld c, a
    or c
    and h
    or l
    and h
    and b
    xor e
    and h
    and e
    rst $20
    ld d, c
    add a
    and h
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
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
    or d
    and b
    cp b
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
    and d
    xor [hl]
    xor [hl]
    xor e
    add sp, $57
    nop
    add a
    xor h
    and $7f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    db $f4
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
    and $57
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    and b
    or d
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
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and d
    and b
    xor l
    ld c, a
    or c
    and h
    and d
    xor [hl]
    and [hl]
    xor l
    xor b
    cp c
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $57
    nop
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
    ld c, a
    or h
    xor l
    and e
    and h
    or c
    and h
    or d
    or e
    xor b
    xor h
    and b
    or e
    and h
    ld a, a
    or e
    and a
    and h
    ld d, c
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    xor a
    and b
    or c
    or e
    or d
    add sp, $57
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    and e
    db $f4
    ld c, a
    and c

Jump_068_4c49:
    or h
    or e
    ld a, a
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
    or e
    xor [hl]
    ld d, c
    and c
    and h
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    and h
    or d
    or e
    xor b
    xor h
    and b
    or e
    and h
    and e
    ld c, a
    and h
    xor b
    or e
    and a
    and h
    or c
    add sp, $57
    nop
    adc b
    or e
    call nc, $b17f
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
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
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
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    or [hl]
    xor l
    and $57
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
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
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
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
    xor a
    or c
    and h
    db $e3
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor a
    xor [hl]
    or d
    or e
    db $e3
    ld d, l
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
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and e
    xor [hl]
    and h
    or d
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
    ld d, l
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    add sp, $51
    add c
    or h
    or e
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    xor h
    or d
    ld c, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld d, l
    xor e
    and b
    or e
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    add sp, $57
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    or d
    and b
    cp b
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
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
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
    ld c, a
    cp b
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
    add sp, $51
    adc h
    xor h
    xor h
    xor h
    xor h
    xor h
    xor h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
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
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    rst $20
    ld d, a
    nop
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    or d
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and e
    xor [hl]
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    and b
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $b67f
    and a
    and b
    or e
    ld a, a
    xor h
    cp b
    ld c, a
    xor a
    or c
    and h
    xor h
    xor [hl]
    xor l
    xor b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    or d
    and b
    cp b
    or d
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
    or e
    rst $20
    ld c, a
    sub e
    and h
    or e
    or [hl]
    and h
    and h
    or e
    rst $20
    ld d, a
    nop
    sub e
    or [hl]
    and h
    and h
    or e
    rst $20
    ld d, a
    nop
    add c
    adc b
    sub c
    add e
    ld a, a
    adc d
    add h
    add h
    adc a
    add h
    sub c
    sub d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    xor h
    and h
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    ld a, a
    and c
    xor b
    or c
    and e
    ld d, c
    or [hl]
    and a
    xor b
    or d
    or e
    xor e
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    db $e3
    ld c, a
    xor h
    and b
    xor l
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    adc [hl]
    add a
    adc c
    adc [hl]
    ld a, a
    add l
    add b
    adc e
    adc e
    sub d
    ld d, c
    sub e
    add a
    add h
    ld a, a
    adc e
    adc b
    adc l
    adc d
    ld a, a
    add c
    add h
    sub e
    sub [hl]
    add h
    add h
    adc l
    ld c, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld a, a
    add b
    adc l
    add e
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld d, a
    nop
    nop
    inc bc
    rlca
    ld hl, $1801
    inc c
    dec b
    ld a, [de]
    ld bc, $5303
    dec b
    inc h
    ld [bc], a
    inc bc
    ld d, e
    ld [bc], a
    nop
    ld a, [bc]
    ld [de], a
    nop
    ld [hl], e
    ld c, b
    nop
    nop
    nop
    ld a, [bc]
    inc de
    nop
    add c
    ld c, b
    nop
    nop
    ld bc, $1907
    nop
    ld e, a
    ld c, d
    add hl, bc
    inc hl
    dec bc
    dec [hl]
    ld b, $00
    rst $38
    rst $38
    add d
    inc bc
    ld a, e
    ld c, c
    rst $38
    rst $38
    inc hl
    dec bc
    ld b, d
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc b
    adc a
    ld c, c
    rst $38
    rst $38
    inc h
    ld c, $35
    rlca
    nop
    rst $38
    rst $38
    add d
    inc b
    and e
    ld c, c
    rst $38
    rst $38
    inc h
    ld a, [bc]
    add hl, hl
    ld [$ff00], sp
    rst $38
    add d
    ld [bc], a
    ld c, e
    ld c, d
    rst $38
    rst $38
    daa
    dec bc
    ld b, l
    ld [$ff00], sp
    rst $38
    sub d
    inc bc
    sbc a
    ld c, b
    rst $38
    rst $38
    daa
    ld a, [bc]
    ld h, $09
    nop
    rst $38
    rst $38
    sub d
    inc bc
    or e
    ld c, b
    rst $38
    rst $38
    ld d, h
    ld [de], a
    add hl, sp
    ld bc, $ff00
    rst $38
    ld bc, $6200
    ld c, d
    xor e
    ld b, $54
    ld a, [bc]
    dec hl
    ld bc, $ff00
    rst $38
    ld bc, $6400
    ld c, d
    xor h
    ld b, $3a
    ld c, $19
    inc bc
    nop
    rst $38
    rst $38
    nop
    inc bc
    sbc h
    ld c, b
    rst $38
    rst $38
    ld [bc], a
    ld e, c
    ld c, a
    nop
    nop
    ld e, d
    ld c, a
    nop
    nop
    ld bc, $5b02
    ld c, a
    sub c
    sub c
    inc [hl]
    dec de
    nop
    add hl, bc
    ld h, h
    ld c, a
    ld l, [hl]
    ld [$1c90], sp
    dec bc
    rlca
    ld [bc], a
    ld h, c
    ld c, a
    ld l, a
    ld [$7690], sp
    ld [bc], a
    ld bc, $0075
    ld [bc], a
    rrca
    ld l, c
    ld [bc], a
    adc l
    ld d, b
    halt
    ld [bc], a
    inc sp
    ld b, c
    nop
    ld b, a
    ld c, h
    rst $18
    ld d, b
    ld c, [hl]
    ld [$4fd9], sp
    ld c, c
    ld [hl], b
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    sbc d
    ld d, b
    ld [hl], c
    ld e, l
    inc de
    dec b
    ld h, c
    inc bc
    db $76
    ld [bc], a
    ld bc, $4c47
    ld c, l
    ld d, c
    ld d, h
    ld c, c
    inc d
    nop
    inc sp
    ld b, d
    nop
    sub c
    db $76
    ld [bc], a
    ld bc, $0075
    ld [bc], a
    rrca
    ld l, c
    ld [bc], a
    sub h
    ld d, b
    halt
    ld [bc], a
    inc sp
    ld b, c
    nop
    ld b, a
    ld c, h
    rst $18
    ld d, b
    ld c, [hl]
    ld [$4fe5], sp
    ld c, c
    ld [hl], b
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    and c
    ld d, b
    ld [hl], c
    ld e, l
    inc de
    dec b
    ld h, c
    inc bc
    db $76
    ld [bc], a
    ld bc, $4c47
    ld c, l
    ld d, c
    ld d, h
    ld c, c
    inc d
    nop
    inc sp
    ld b, d
    nop
    sub c
    ld c, h
    sub a
    ld d, c
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    sbc d
    ld d, b
    inc d
    nop
    sub c
    ld c, h
    sub a
    ld d, c
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    and c
    ld d, b
    inc d
    nop
    sub c
    ld l, e
    ld b, a
    inc e
    db $10
    ld b, $00
    inc e
    ld d, b
    ld sp, $0042
    add hl, bc
    inc e
    ld d, b
    ld sp, $001f
    ld [$501c], sp
    ld c, h
    db $e3
    ld d, c
    ld c, [hl]
    ld [$5022], sp
    ld c, c
    ld e, l
    inc de
    dec b
    ld h, c
    inc bc
    ld b, a
    ld c, h
    ld c, l
    ld d, c
    ld d, h
    ld c, c
    inc sp
    ld b, d
    nop
    sub c
    ld c, h
    and a
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    sub a
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld d, c
    inc d
    ld d, d
    ld d, c
    ld l, h
    ld d, d
    ld d, c
    reti


    ld d, d
    ld l, e
    ld b, a
    dec hl
    ld [bc], a
    add hl, bc
    dec a
    ld d, b
    dec hl
    inc b
    add hl, bc
    ld b, e
    ld d, b
    ld c, h
    ld c, h
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, h
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0065
    add hl, bc
    ld [hl], a
    ld d, b
    inc e
    dec bc
    rlca
    ld [bc], a
    ld a, l
    ld d, b
    ld sp, $0064
    add hl, bc
    ld h, h
    ld d, b
    ld c, h
    or d
    ld d, e
    ld d, l
    inc sp
    ld h, h
    nop
    ld c, h
    cpl
    ld d, h
    ld d, l
    sbc [hl]
    ld l, b
    ld bc, $7b08
    ld d, b
    inc sp
    ld h, l
    nop
    ld c, h
    ld l, a
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    rst $20
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld e, c
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld d, e
    adc [hl]
    ld d, l
    ld d, e
    cp c
    ld d, l
    sbc e
    ld bc, $0112
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld b, a
    dec c
    dec c
    dec c
    rrca
    rrca
    ld b, a
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    ld b, a
    ld c, $0e
    inc c
    inc c
    inc c
    ld b, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    xor b
    and e
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    add sp, $7f
    sub [hl]
    and a
    xor [hl]
    ld d, c
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
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
    pop de
    xor e
    ld c, a
    xor a
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    or h
    or e
    ld [hl], l
    ld d, a
    nop
    adc b
    sub $a4
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld c, a
    and d
    xor [hl]
    or h
    xor a
    xor e
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    ld d, c
    xor h
    and b
    xor l
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
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
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
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
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
    ld d, l
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
    and $57
    nop
    sub e
    and a
    and b
    or e
    call nc, $a77f
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    ld c, a
    xor b
    or e
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    and b
    xor d
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, a
    and l
    xor b
    or c
    or d
    or e
    db $f4
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld d, l
    and h
    and b
    or d
    xor b
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
    add sp, $57
    nop
    adc [hl]
    and a
    add sp, $7f
    add l
    xor b
    xor l
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $51
    add b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    xor b
    and l
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
    and d
    and b
    or e
    and d
    and a
    ld d, c
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
    and a
    and b
    or l
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    add sp, $57
    nop
    add a
    or h
    and a
    and $7f
    sbc b
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
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
    ld d, l
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
    and $57
    nop
    sbc b
    xor [hl]
    add sp, $7f
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
    and $51
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld c, a
    and b
    xor l
    and e
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
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    xor d
    and h
    and h
    xor a
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
    and [hl]
    or c
    and b
    or d
    or d
    add sp, $57
    nop
    sub d
    and h
    and h
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor e
    and h
    and e
    and [hl]
    and h
    or d
    and $4f
    adc b
    or e
    call nc, $b27f
    and d
    and b
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor c
    or h
    xor h
    xor a
    ld d, l
    xor [hl]
    and l
    and l
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc l
    add h
    sub [hl]
    ld a, a
    add c
    add b
    sub c
    adc d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld d, c
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
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
    and [hl]
    or c
    and b
    or d
    or d
    add sp, $57
    nop
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
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld c, a
    and c
    or c
    and h
    and b
    xor d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld d, c
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and h
    or d
    or d
    add sp, $57
    nop
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a

Call_068_5343:
    and e
    and b
    cp b
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
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

Call_068_535a:
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    or e
    ld c, a
    xor l
    xor b
    and [hl]
    and a
    or e
    add sp, $57
    nop
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sub e
    sub h
    sub d
    add d
    add b
    adc l
    sbc b
    sbc h
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    ld a, a
    and c
    and h
    db $e3
    ld c, a
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
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
    ld d, c
    or e
    and a
    and h
    ld a, a
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
    ld c, a
    or [hl]
    and h
    sub $a4
    ld a, a
    xor h
    and h
    or e
    and $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
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
    ld a, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    add sp, $51
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    sub e
    sub h
    sub d
    add d
    add b
    adc l
    sbc b
    ld a, a
    xor [hl]
    and l
    ld c, a
    sub e
    or h
    and h
    or d
    and e
    and b
    cp b
    add sp, $57
    nop
    add c
    cp b
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    xor l
    or e
    or c
    xor [hl]
    db $e3
    ld c, a
    and e
    or h
    and d
    or e

Jump_068_5445:
    xor b
    xor [hl]
    xor l
    db $f4
    ld a, a
    xor a
    xor e
    and h

Jump_068_544d:
    and b
    or d
    and h
    ld d, c
    and b
    and d
    and d
    and h
    xor a
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and [hl]
    xor b
    and l
    or e
    db $f4
    ld c, a
    and b
    ld a, a
    adc a

Jump_068_5466:
    adc b
    adc l
    adc d
    ld a, a

Jump_068_546a:
    add c
    adc [hl]
    sub [hl]
    add sp, $57
    nop
    sub e
    sub h
    sub d
    add d
    add b
    adc l
    sbc b
    sbc h
    ld a, a
    sub [hl]
    xor [hl]
    or h
    xor e
    and e
    xor l

Call_068_547f:
    push de
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    and [hl]
    or c
    and h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld d, l
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    and $51
    adc b
    or e
    ld a, a
    or d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    and h
    xor l
    or d
    ld c, a
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
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
    add sp, $51
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
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
    xor [hl]
    and l
    ld a, a
    or h
    or d
    and h
    add sp, $57
    nop
    sub e
    sub h
    sub d
    add d
    add b
    adc l
    sbc b
    sbc h
    ld a, a
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor h
    and h
    or e
    ld a, a
    adc h
    adc [hl]
    adc l
    adc b
    add d
    add b
    db $f4
    ld a, a
    xor h
    cp b
    ld d, l
    xor [hl]
    xor e
    and e
    and h
    or c
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    and $51
    adc [hl]
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    ld c, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    db $f4
    ld a, a
    sub [hl]
    add h
    sub d
    adc e
    add h
    sbc b
    and $51
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or d
    and h
    or l
    and h
    xor l
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    or c
    and h
    xor l
    add sp, $57
    nop
    sub e
    sub h
    sub d
    add d
    add b
    adc l
    sbc b
    sbc h
    ld a, a
    sub e
    xor [hl]
    and e
    and b
    cp b
    ld a, a
    xor b
    or d
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    sub e
    or h
    and h
    or d
    and e
    and b
    cp b
    add sp, $7f
    sub e
    and a
    and b
    or e
    ld d, l
    xor b
    or d
    ld a, a
    or h
    xor l
    and l
    xor [hl]
    or c
    or e
    or h
    xor l
    and b
    or e
    and h
    ld [hl], l
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$01
    ld d, c
    add d
    add a
    add h
    sub c
    sub c
    sbc b
    add [hl]
    sub c
    adc [hl]
    sub l
    add h
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld c, a
    adc l
    add h
    sub [hl]
    ld a, a
    add c
    add b
    sub c
    adc d
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$01
    ld d, c
    add d
    add a
    add h
    sub c
    sub c
    sbc b
    add [hl]
    sub c
    adc [hl]
    sub l
    add h
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld c, a
    adc l
    add h
    sub [hl]
    ld a, a
    add c
    add b
    sub c
    adc d
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, a
    nop
    nop
    ld bc, $1b01
    inc bc
    jr jr_068_55f9

    ld [bc], a
    ld bc, $3508
    nop
    ld l, l
    ld c, a
    nop
    nop
    ld bc, $3509
    nop

jr_068_55f9:
    and e
    ld c, a
    nop
    nop
    ld [bc], a
    rlca
    inc sp
    nop
    add e
    ld d, b
    dec b
    inc bc
    nop
    add [hl]
    ld d, b
    ld [$1023], sp
    ld [hl], $03
    nop
    rst $38
    rst $38
    add b
    nop
    pop af
    ld c, a
    rst $38
    rst $38
    daa
    inc d
    rra
    inc b
    db $10
    rst $38
    rst $38
    and b
    nop
    jr z, @+$52

    rst $38
    rst $38
    add hl, hl
    rrca
    inc de
    dec b
    ld bc, $ffff
    and b
    nop
    dec hl
    ld d, b
    rst $38
    rst $38
    ld e, l
    ld b, $10
    ld bc, $ff00
    rst $38
    nop
    nop
    adc c
    ld d, b
    rst $38
    rst $38
    ld a, [hl-]
    rlca
    dec e
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    ld l, $50
    rst $38
    rst $38
    inc hl
    ld [$0611], sp
    nop
    rst $38
    rst $38
    add b
    nop
    ld sp, $ff50
    rst $38
    add hl, hl
    db $10
    ld hl, $0003
    rst $38
    rst $38
    nop
    nop
    ld c, c
    ld d, b
    ld e, c
    rlca
    ld d, h
    ld b, $34
    ld bc, $ff00
    rst $38
    ld bc, $8b00
    ld d, b
    xor l
    ld b, $00
    nop
    add [hl]
    ld a, a
    ld a, [hl+]
    nop
    ld b, a
    ld c, h
    ld b, $58
    adc e
    ld e, $49
    add l
    ld b, c
    nop
    ld l, c
    ld [$57fe], sp
    ld b, a
    ld l, e
    ld c, h
    inc e
    ld e, b
    ld d, h
    db $76
    ld [bc], a
    ld bc, $8549
    ld b, c
    nop
    ld l, c
    rlca
    ld [bc], a
    ld e, b
    rrca
    dec a
    nop
    sub c
    xor c
    dec b
    ld d, $01
    ld c, c
    ld e, b
    and d
    ld e, b
    nop
    nop
    and [hl]
    ld d, [hl]
    ld e, $17
    rrca
    ld h, [hl]
    ld b, a
    inc [hl]
    ld l, e
    nop
    add hl, bc
    ldh [rRP], a
    ld a, [hl+]
    rrca
    add hl, bc
    adc a
    ld d, a
    ld sp, $0273
    add hl, bc
    ret


    ld d, [hl]
    ld c, h
    jp nz, $5558

    inc sp
    ld [hl], e
    ld [bc], a
    nop
    add e
    ld d, a
    inc bc
    call z, $0056
    add a
    ld d, a
    sub a
    rrca
    ld b, $01
    sub a
    ld d, a
    ld b, $02
    sub e
    ld d, a
    ld b, e
    ld d, $01
    nop
    nop
    adc e
    ld d, a
    inc bc
    adc a
    ld d, a
    nop
    sbc e
    ld d, a
    ld h, h
    and d
    ld e, b
    nop
    nop
    add hl, de
    ld sp, hl
    reti


    ld b, $04
    rst $38
    ld d, [hl]
    ld b, $03
    dec b
    ld d, a
    ld b, $02
    dec bc
    ld d, a
    ld b, $01
    ld de, $0657
    nop
    rla
    ld d, a
    ld sp, $0044
    add hl, bc
    ld c, e
    ld d, a
    ld sp, $0021
    add hl, bc
    ld a, $57
    inc [hl]
    ld b, a
    nop
    add hl, bc
    ld sp, $3457
    ld b, [hl]
    nop
    add hl, bc
    inc h
    ld d, a
    ld e, [hl]
    ld d, $01
    ld e, a
    ld h, b
    dec de
    ld sp, hl
    reti


    ld bc, $6b35
    nop
    sub c
    ld e, [hl]
    ld d, $07
    ld e, a
    ld h, b
    dec de
    ld sp, hl
    reti


    ld [bc], a
    dec [hl]
    ld l, e
    nop
    sub c
    ld e, [hl]
    ld d, $08
    ld e, a
    ld h, b
    dec de
    ld sp, hl
    reti


    inc bc
    dec [hl]
    ld l, e
    nop
    sub c
    ld e, [hl]
    ld d, $0d
    ld e, a
    ld h, b
    dec de
    ld sp, hl
    reti


    inc b
    dec [hl]
    ld l, e
    nop
    sub c
    ld e, [hl]
    ld d, $0e
    ld e, a
    ld h, b
    dec [hl]
    ld l, e
    nop
    ld sp, $0338
    add hl, bc
    ld l, a
    ld d, a
    ld sp, $0266
    add hl, bc
    ld l, [hl]
    ld d, a
    nop
    and [hl]
    ld d, a
    sbc [hl]
    ld a, [de]
    ld bc, $9f08
    ld d, a
    inc sp
    ld h, [hl]
    ld [bc], a
    inc bc
    adc a
    ld d, a
    sub c
    ld b, a
    ld c, h
    ret nz

    ld e, e
    ld d, h
    sbc [hl]
    ld a, [de]
    ld bc, $9f08
    ld d, a
    ld [hl-], a
    jr c, jr_068_5780

    inc sp
    ld h, [hl]
    ld [bc], a

jr_068_5780:
    inc bc
    adc a
    ld d, a
    inc c
    add hl, de
    nop
    sub c
    inc c
    ld a, [de]
    nop
    sub c
    inc c
    dec de
    nop
    sub c
    inc c
    inc e
    nop
    sub c
    inc c
    dec e
    nop
    sub c
    inc c
    ld e, $00
    sub c
    inc c
    rra
    nop
    sub c
    inc sp
    jr c, @+$05

    inc c
    ld hl, $9100
    inc c
    ld [hl+], a
    nop
    sub c
    xor d
    dec b
    ld d, $02
    jr z, jr_068_5809

    ld e, a
    ld e, c
    nop
    nop
    or [hl]
    ld d, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, l
    ld e, c
    ld d, h
    ld c, c
    sub c
    jr c, jr_068_57c5

    inc h
    ld bc, $59d8
    inc bc

jr_068_57c5:
    ld e, d
    nop
    nop
    jp z, Jump_068_6657

    ld b, a
    ld c, h
    inc e
    ld e, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $001f
    add hl, bc
    ldh [$57], a
    ld c, h
    ld l, d
    ld e, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    sub h
    ld e, d
    ld d, h
    ld c, c
    sub c
    ld d, c
    call nz, Call_068_535a
    dec bc
    ld e, e
    ld d, e
    inc [hl]
    ld e, e
    ld d, e
    ld d, l
    ld e, e
    ld d, e
    ld h, [hl]
    ld e, e
    add hl, bc
    ld bc, $029b
    sbc e
    dec b
    and h
    nop
    ld [de], a
    dec sp
    ld de, $4710
    dec sp
    db $10
    ld de, $0047
    add [hl]
    xor [hl]

jr_068_5809:
    db $f4
    ld a, a
    sub c
    add b
    sub e
    sub e
    add b
    sub e
    add b
    rst $20
    ld d, c
    sub e
    add b
    add d
    adc d
    adc e
    add h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and c
    xor b
    and [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, l
    adc e
    and h
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld c, a
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
    and l
    xor b
    xor l
    and e
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
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    or [hl]
    and h
    and b
    xor d
    rst $20
    ld a, a
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
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
    add b
    and d
    xor d
    rst $20
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
    ld c, a
    add e
    xor [hl]
    and [hl]
    and [hl]
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    ld a, a
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld d, c
    xor [hl]
    or c
    and e
    and h
    or c
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
    and c
    and h
    or e
    or e
    and h
    or c
    and $51
    adc l
    xor [hl]
    rst $20
    ld a, a
    adc b
    jp nc, $b27f

    or e
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor l
    xor [hl]
    ld d, l
    xor h
    and b
    or e
    or e
    and h
    or c
    ld a, a
    or [hl]
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
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    sub e
    and a
    and h
    xor l
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
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    call nc, $b27f
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    add sp, $4f
    adc b
    ld a, a
    or [hl]
    xor [hl]
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
    add c
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld d, l
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
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
    and c
    and b
    or e
    db $e3
    ld c, a
    or e
    xor e
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
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
    add sp, $57
    nop
    adc b
    xor l
    or d
    or e
    and h
    and b
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    and c
    or h
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld d, l
    and b
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
    add b
    or c
    and [hl]
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or c
    and b
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
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
    and a
    xor b
    xor e
    and h
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    sub $a4
    ld a, a
    and c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    adc h
    sub c
    add sp, $54
    adc h
    adc [hl]
    adc l
    call nc, $a74f
    xor [hl]
    or h
    or d
    and h
    and $7f
    adc b
    or e
    call nc, $a07f
    ld a, a
    and c
    xor b
    or e
    ld d, l
    and l
    and b
    or c
    or e
    and a
    and h
    or c
    ld a, a
    and b
    and a
    and h
    and b
    and e
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
    call nc, $a77f
    and b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    or h
    xor l
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
    ld d, l
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
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
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
    add sp, $51
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    cp b
    and h
    or d
    db $f4
    ld d, l
    xor a
    or c
    and h
    xor a
    and b
    or c
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
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    or $51
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
    ld a, a
    db $e3
    ld c, a
    add d
    add a
    add h
    sub c
    sub c
    sbc b
    add [hl]
    sub c
    adc [hl]
    sub l
    add h
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    adc h
    sub c
    add sp, $54
    adc h
    adc [hl]
    adc l
    ldh [$92], a
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld c, a
    sub d
    sub e
    sub c
    add b
    adc b
    add [hl]
    add a
    sub e
    ld a, a
    add b
    add a
    add h
    add b
    add e
    rst $20
    ld d, a
    nop
    adc h
    sub c
    add sp, $54
    adc h
    adc [hl]
    adc l
    ldh [$92], a
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    adc l
    xor [hl]
    ld a, a
    or d
    or e
    and h
    and b
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    call nc, Call_068_547f
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    or e
    ld d, l
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
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
    ld [hl], l
    ld c, a
    add [hl]
    and h
    and h
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
    rst $20
    ld d, c
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
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
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
    and b
    or e
    ld a, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld d, l
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
    or e
    and a
    xor b
    or d
    add sp, $51
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
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    and h
    or c
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $51
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
    and [hl]
    and h
    or e
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
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    nop
    ld [bc], a
    daa
    rlca
    ld bc, $091a
    dec b
    ld de, $1a01
    ld a, [bc]
    nop
    dec b
    dec hl
    add hl, bc
    nop
    jp hl


    ld d, a
    dec e
    dec c
    nop
    db $ec
    ld d, a
    dec b
    rrca
    nop
    rst $28
    ld d, a
    dec d
    inc bc
    nop
    ld a, [c]
    ld d, a
    add hl, bc
    ld c, $07
    ei
    ld d, a
    dec bc
    daa
    ld e, $09
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    ld [hl], e
    ld d, [hl]
    inc d
    rlca
    daa
    jr nz, jr_068_5c93

    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc bc

jr_068_5c93:
    sbc d
    ld d, [hl]
    dec d
    rlca
    daa
    dec de
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub d
    ld bc, $57aa
    rst $38
    rst $38
    dec h
    inc c
    dec b
    ld b, $00
    rst $38
    rst $38
    or d
    inc bc
    cp [hl]
    ld d, a
    rst $38
    rst $38
    daa
    ld [hl+], a
    dec bc
    dec b
    ld bc, $ffff
    add b
    nop
    jp nc, $ff57

    rst $38
    ld c, h
    inc e
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    rst $28
    ld h, $14
    rlca
    ld c, h
    dec e
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    rst $28
    ld h, $14
    rlca
    ld e, l
    dec hl
    add hl, bc
    ld bc, $ff00
    rst $38
    nop
    nop
    rst $30
    ld d, a
    rst $38
    rst $38
    ld e, l
    add hl, bc
    rrca
    ld bc, $ff00
    rst $38
    nop
    nop
    ld sp, hl
    ld d, a
    rst $38
    rst $38
    inc h
    ld de, $0606
    nop
    rst $38
    rst $38
    nop
    nop
    and $57
    rst $38
    rst $38
    ld d, h
    daa
    inc c
    ld bc, $ff00
    rst $38
    ld bc, $f500
    ld d, a
    cp b
    rlca
    nop
    nop
    rst $38
    inc bc
    jr jr_068_5d17

    dec [hl]
    ld e, a
    ld h, e
    ld e, a
    nop

jr_068_5d17:
    nop
    ld a, [de]
    ld e, l
    ld h, [hl]
    ld b, a
    ld c, h
    add [hl]
    ld e, a
    ld d, h
    ld c, c
    sub c
    ld a, [hl]
    dec b
    jr z, jr_068_5d30

    or a
    ld h, c
    ldh a, [$61]
    nop
    nop
    ld l, $5d
    ld h, [hl]
    ld b, a

jr_068_5d30:
    ld c, h
    inc c
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld e, $05
    add hl, de
    ld a, [bc]
    ld a, l
    ld h, b
    ret z

    ld h, b
    nop
    nop
    ld b, d
    ld e, l
    ld e, $17
    ld a, [de]
    ld h, [hl]
    ld b, a
    inc [hl]
    ld [hl], h
    nop
    add hl, bc
    add d
    ld e, l
    inc [hl]
    add d
    nop
    add hl, bc
    or $5d
    ld a, [hl+]
    ld a, [de]
    add hl, bc
    rla
    ld e, [hl]
    ld sp, $0289
    add hl, bc
    ld l, e
    ld e, l
    ld c, h
    db $ec
    ld h, b
    ld d, l
    inc sp
    adc c
    ld [bc], a
    nop
    dec bc
    ld e, [hl]
    inc bc
    ld l, [hl]
    ld e, l
    nop
    rrca
    ld e, [hl]
    sub a
    ld a, [de]
    ld b, $01
    rra
    ld e, [hl]
    ld b, $02
    dec de
    ld e, [hl]
    ld b, e
    add hl, de
    ld a, [bc]
    nop
    nop
    inc de
    ld e, [hl]
    inc bc
    rla
    ld e, [hl]
    nop
    inc hl
    ld e, [hl]
    ld h, h
    ret z

    ld h, b
    nop
    nop
    add hl, de
    inc bc
    jp c, $0406

    and c
    ld e, l
    ld b, $03
    and a
    ld e, l
    ld b, $02
    xor l
    ld e, l
    ld b, $01
    or e
    ld e, l
    ld b, $00
    cp c
    ld e, l
    ld sp, $00cd
    add hl, bc
    db $ed
    ld e, l
    ld sp, $0044
    add hl, bc
    ldh [$5d], a
    ld sp, $0021
    add hl, bc
    db $d3
    ld e, l
    inc [hl]
    ld b, l
    nop
    add hl, bc
    add $5d
    ld e, [hl]
    add hl, de
    ld a, [bc]
    ld e, a
    ld h, b
    dec de
    inc bc
    jp c, $3501

    ld [hl], h
    nop
    sub c
    ld e, [hl]
    add hl, de
    ld c, $5f
    ld h, b
    dec de
    inc bc
    jp c, $3502

    ld [hl], h
    nop
    sub c
    ld e, [hl]
    add hl, de
    rrca
    ld e, a
    ld h, b
    dec de
    inc bc
    jp c, $3503

    ld [hl], h
    nop
    sub c
    ld e, [hl]
    add hl, de
    db $10
    ld e, a
    ld h, b
    dec de
    inc bc
    jp c, $3504

    ld [hl], h
    nop
    sub c
    ld e, [hl]
    add hl, de
    ld de, $605f
    dec [hl]
    ld [hl], h
    nop
    sub c
    nop
    daa
    ld e, [hl]
    sbc [hl]
    rla
    ld bc, $0808
    ld e, [hl]
    dec [hl]
    add d
    nop
    inc sp
    ld [bc], a
    ld bc, $1703
    ld e, [hl]
    inc bc
    dec hl
    ld e, [hl]
    inc c
    inc hl
    nop
    sub c
    inc c
    inc h
    nop
    sub c
    inc c
    dec h
    nop
    sub c
    inc c
    ld h, $00
    sub c
    inc c
    daa
    nop
    sub c
    inc c
    jr z, jr_068_5e22

jr_068_5e22:
    sub c
    inc c
    add hl, hl
    nop
    sub c
    inc c
    ld a, [hl+]
    nop
    sub c
    inc c
    dec hl
    nop
    sub c
    ld [hl], l
    inc b
    rla
    ld a, [bc]
    push bc
    ld e, a
    xor $5f
    nop
    nop
    dec sp
    ld e, [hl]
    ld e, $17
    dec de
    ld h, [hl]
    ld b, a
    inc [hl]
    ld [hl], l
    nop
    add hl, bc
    ld [hl], l
    ld e, [hl]
    ld a, [hl+]
    dec de
    add hl, bc
    push af
    ld e, [hl]
    ld sp, $028b
    add hl, bc
    ld e, [hl]
    ld e, [hl]
    ld c, h
    ld c, $60
    ld d, l
    inc sp
    adc e
    ld [bc], a
    nop
    jp hl


    ld e, [hl]
    inc bc
    ld h, c
    ld e, [hl]
    nop
    db $ed
    ld e, [hl]
    sub a
    dec de
    ld b, $01
    db $fd
    ld e, [hl]
    ld b, $02
    ld sp, hl
    ld e, [hl]
    ld b, e
    rla
    ld a, [bc]
    nop
    nop
    pop af
    ld e, [hl]
    inc bc
    push af
    ld e, [hl]
    nop
    ld bc, $645f
    xor $5f
    nop
    nop
    add hl, de
    inc b
    jp c, $0406

    sub h
    ld e, [hl]
    ld b, $03
    sbc d
    ld e, [hl]
    ld b, $02
    and b
    ld e, [hl]
    ld b, $01
    and [hl]
    ld e, [hl]
    ld b, $00
    xor h
    ld e, [hl]
    ld sp, $00cd
    add hl, bc
    ldh [$5e], a
    ld sp, $0044
    add hl, bc
    db $d3
    ld e, [hl]
    ld sp, $0021
    add hl, bc
    add $5e
    inc [hl]
    ld c, c
    nop
    add hl, bc
    cp c
    ld e, [hl]
    ld e, [hl]
    rla
    ld a, [bc]
    ld e, a
    ld h, b
    dec de
    inc b
    jp c, $3501

    ld [hl], l
    nop
    sub c
    ld e, [hl]
    rla
    ld de, $605f
    dec de
    inc b
    jp c, $3502

    ld [hl], l
    nop
    sub c
    ld e, [hl]
    rla
    ld [de], a
    ld e, a
    ld h, b
    dec de
    inc b
    jp c, $3503

    ld [hl], l
    nop
    sub c
    ld e, [hl]
    rla
    rla
    ld e, a
    ld h, b
    dec de
    inc b
    jp c, $3504

    ld [hl], l
    nop
    sub c
    ld e, [hl]
    rla
    jr jr_068_5f43

    ld h, b
    dec [hl]
    ld [hl], l
    nop
    sub c
    inc c
    add hl, de
    nop
    sub c
    inc c
    ld a, [de]
    nop
    sub c
    inc c
    dec de
    nop
    sub c
    inc c
    inc e
    nop
    sub c
    inc c
    dec e
    nop
    sub c
    inc c
    ld e, $00
    sub c
    inc c
    rra
    nop
    sub c
    cp h
    inc b
    dec e
    db $10
    jr nc, jr_068_5f6c

    ld h, h
    ld h, c
    nop
    nop
    ld de, $665f
    ld b, a
    ld c, h
    add l
    ld h, c
    ld d, h
    ld c, c
    sub c
    pop bc
    dec b
    dec e
    ld de, $624c
    ld a, c
    ld h, d
    nop
    nop
    dec h
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    sbc d
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld d, e
    db $fd
    ld h, d
    ld d, e
    inc h
    ld h, e
    sbc e
    inc bc
    nop
    add l
    xor e
    cp b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    xor b
    xor l
    or e
    xor [hl]

jr_068_5f43:
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    xor d
    cp b
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    xor e
    xor [hl]
    or l
    and h
    and e
    ld d, l
    and c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    xor e

jr_068_5f6c:
    xor b
    xor d
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
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
    or c
    and b
    xor b
    xor l
    ld a, a
    xor b
    xor l
    ld c, a
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    or e
    xor [hl]
    ld d, c
    or e
    and h
    and b
    and d
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    add l
    adc e
    sbc b
    add sp, $57
    nop
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    or c
    cp b
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
    adc b
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld d, l
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
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
    add sp, $57
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
    or e
    and b
    xor d
    and h
    ld a, a
    or d
    xor [hl]
    ld c, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or e
    and h
    or d
    or e
    or d
    db $f4
    ld a, a
    adc b
    ld d, c
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
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld d, l
    and d
    xor [hl]
    xor l
    and d
    and h
    xor l
    or e
    or c
    and b
    or e
    and h
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
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
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
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
    ld a, a
    xor h
    and h
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    and e
    or l
    xor b
    and d
    and h
    and $57
    nop
    adc b
    ld a, a
    or d
    and h
    and h
    add sp, $7f
    sub d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    cp b
    add sp, $57
    nop
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    rst $20
    ld d, c
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
    call nc, $ac7f
    xor b
    xor e
    xor d
    ld c, a
    xor b
    or d
    ld a, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    or d
    ld d, l
    and l
    xor e
    and b
    or l
    xor [hl]
    or c
    add sp, $57
    nop
    add a
    xor b
    rst $20
    ld a, a
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
    and b
    ld c, a
    and d
    or h
    or e
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, c
    adc h
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
    adc b
    jp nc, $a67f

    xor e
    and b
    and e
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and h
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
    rst $20
    ld d, a
    nop
    sub [hl]
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
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    xor b
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
    ld d, l
    or d
    xor [hl]
    xor [hl]
    or e
    and a
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    xor l
    and h
    or c
    or l
    and h
    or d
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
    xor [hl]
    or l
    and h
    or c
    db $e3
    ld c, a
    or d
    and h
    and b
    or d
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
    ld d, c
    and b
    and c
    xor [hl]
    or h
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
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    or c
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    ld a, a
    xor b
    or d
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    and d
    xor e
    and b
    or d
    or d
    rst $20
    ld d, a
    nop
    add b
    xor e
    xor e
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    and h
    xor [hl]
    db $e3
    ld c, a
    xor a
    xor e
    and h
    ld a, a
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
    ld d, c
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld a, a
    xor e
    xor b
    or l
    and h
    ld a, a
    and a
    and b
    xor a
    xor a
    xor b
    xor e
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
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    xor h
    cp b
    ld c, a
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
    ld a, a
    and b
    or c
    and h
    ld d, l
    and c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    and $57
    nop
    sub [hl]
    and h
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
    ld a, a
    adc h
    adc [hl]
    adc [hl]
    adc h
    adc [hl]
    adc [hl]
    ld c, a
    adc h
    adc b
    adc e
    adc d
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
    ld a, a
    xor b
    or d
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
    and c
    and h
    and b
    or h
    or e
    cp b
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    xor b
    xor l
    and d
    xor [hl]
    xor l
    or l
    and h
    xor l
    xor b
    and h
    xor l
    or e
    xor e
    cp b
    db $f4
    ld d, c
    or e
    and a
    and h
    cp b
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or d
    and h
    xor e
    xor e
    ld a, a
    and b
    ld c, a
    and c
    xor [hl]
    or e
    or e
    xor e
    and h
    ld a, a
    and b
    or e
    ld a, a
    and b
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    cp $51
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
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
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    adc b
    and l
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    db $f4
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    xor b
    or e
    add sp, $51
    adc a
    or c
    and h
    or d
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add c
    ld a, a
    add c
    or h
    or e
    db $e3
    ld c, a
    or e
    xor [hl]
    xor l
    ld a, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or h
    db $e3
    ld d, l
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or d
    or e
    and b
    or c
    or e
    xor e
    and h
    or d
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
    and b
    xor l
    and e
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    or d
    ld d, l
    xor b
    or e
    or d
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    nop
    ld [bc], a
    ld [$0123], sp
    ld bc, $0909
    inc hl
    ld [bc], a
    ld bc, $0009
    ld [bc], a
    rlca
    ld hl, $2d00
    ld e, a
    dec c
    dec b
    nop
    jr nc, jr_068_6433

    rlca
    ld h, [hl]
    dec b
    ld [$0009], sp
    rst $38
    rst $38
    sub d
    ld bc, $5e2f
    rst $38
    rst $38
    jr z, jr_068_63f6

    rrca
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    ld [hl], $5d
    rst $38
    rst $38
    ld h, [hl]
    rlca
    dec e
    ld [$ff00], sp
    rst $38

jr_068_63f6:
    sub d
    ld bc, $5d0e
    rst $38
    rst $38
    ld a, [hl+]
    ld [$060d], sp
    nop
    rst $38
    rst $38
    sub d
    ld bc, $5f05
    rst $38
    rst $38
    ld c, c
    dec c
    ld e, $09
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    ld [hl+], a
    ld e, l
    rst $38
    rst $38
    ld e, l
    ld b, $25
    ld bc, $ff00
    rst $38
    nop
    nop
    inc sp
    ld e, a
    rst $38
    rst $38
    ld a, [hl+]
    db $10
    ld hl, $0008
    rst $38
    rst $38
    sub d
    ld bc, $5f19
    rst $38
    rst $38
    nop
    nop
    ret c

jr_068_6433:
    inc b
    dec sp
    inc c
    and d
    ld h, h
    jp nz, $0064

    nop
    ld a, $64
    ld h, [hl]
    ld b, a
    ld c, h
    db $e3
    ld h, h
    ld d, h
    ld c, c
    sub c
    ret nc

    inc b
    dec sp
    inc b
    rrca
    ld h, l
    ld b, d
    ld h, l
    nop
    nop
    ld d, d
    ld h, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, a
    ld h, l
    ld d, h
    ld c, c
    sub c
    add hl, bc
    inc b
    jr jr_068_646d

    sub c
    ld h, l
    cp l
    ld h, l
    nop
    nop
    ld h, [hl]
    ld h, h
    ld h, [hl]
    ld b, a
    ld c, h
    db $db
    ld h, l
    ld d, h
    ld c, c

jr_068_646d:
    sub c
    ld a, [bc]
    inc b
    jr jr_068_6482

    inc b
    ld h, [hl]
    ld c, c
    ld h, [hl]
    nop
    nop
    ld a, d
    ld h, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld h, d
    ld h, [hl]
    ld d, h
    ld c, c
    sub c

jr_068_6482:
    inc sp
    dec b
    inc l
    db $10
    add [hl]
    ld h, [hl]
    cp c
    ld h, [hl]
    nop
    nop
    adc [hl]
    ld h, h
    ld h, [hl]
    ld b, a
    ld c, h
    jp nz, Jump_068_5466

    ld c, c
    sub c
    ld d, e
    inc e
    ld h, a
    ld d, e
    ld e, e
    ld h, a
    ld d, e
    ld a, l
    ld h, a
    db $f4
    nop
    rra
    nop
    add c
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor h
    cp b
    ld c, a
    or c
    and h
    and [hl]
    and b
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld [hl], l
    ld a, a
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor h
    xor [hl]
    and d
    xor d
    ld a, a
    or c
    xor [hl]
    cp b
    and b
    xor e
    or e
    cp b
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld c, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    and e
    and b
    cp b
    ld a, a
    and c
    and h
    ld d, l
    and b
    ld a, a
    xor d
    xor b
    xor l
    and [hl]
    and $57
    nop
    adc l
    xor b
    and a
    xor b
    and a
    xor b
    rst $20
    ld a, a
    sub [hl]
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
    ld a, a
    xor h
    cp b
    ld d, l
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    and [hl]
    and b
    xor l
    and [hl]
    and $57
    nop
    adc a
    adc b
    db $e3
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
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor e
    xor b
    xor d
    and h
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
    xor h
    and b
    xor l
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld d, c
    and c
    or h
    or e
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
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    add sp, $57
    nop
    add b
    and [hl]
    xor b
    xor e
    xor b
    or e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor d
    and h
    cp b
    ld c, a
    and b
    or e
    or e
    or c
    xor b
    and c
    or h
    or e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and c
    xor b
    or c
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
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
    or d
    xor a
    and h
    and h
    and e
    ld [hl], l
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
    ld a, a
    and b
    or c
    and h
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
    cp b
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    db $e3
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
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
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc c
    or h
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld d, c
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor a
    xor e
    or h
    xor h
    and b
    and [hl]
    and h
    add sp, $57
    nop
    sub d
    and a
    xor [hl]
    xor [hl]
    or e
    rst $20
    ld c, a
    adc l
    xor [hl]
    or e
    ld a, a
    and [hl]
    xor [hl]

Jump_068_6657:
    xor [hl]
    and e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
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
    and [hl]
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    xor h
    db $f4
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $57
    nop
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    xor h
    cp b
    or d
    and h
    xor e
    and l
    ld a, a
    and b
    xor l
    ld a, a
    adc [hl]
    adc l
    adc b
    sub a
    add sp, $57
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld d, a
    nop
    add [hl]
    and h
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    xor b
    and d
    and b
    xor e
    ld a, a
    and l
    and h
    and b
    db $e3
    ld c, a
    or e
    or h
    or c
    and h
    or d
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld d, l
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    and d
    or e
    or h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    db $f4
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and c
    cp b
    ld d, l
    xor e
    xor b
    or e
    or e
    xor e
    and h
    add sp, $57
    nop
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld a, a
    sub e
    adc b
    adc a
    sub d
    ld d, c
    adc e
    xor [hl]
    xor [hl]
    xor d
    rst $20
    ld a, a
    sub c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld c, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    or d
    xor b
    and e
    and h
    ld d, l
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or d
    or e
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld sp, hl
    ld d, c
    adc l
    adc [hl]
    sub c
    sub e
    add a
    ld a, a
    sub e
    adc [hl]
    ld a, a
    sub d
    adc b
    adc e
    add h
    adc l
    add d
    add h
    ld c, a
    add c
    sub c
    adc b
    add e
    add [hl]
    add h
    ld d, a
    nop
    adc l
    adc [hl]
    sub c
    sub e
    add a
    ld a, a
    sub e
    adc [hl]
    ld a, a
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, c
    sub [hl]
    add h
    sub d
    sub e
    ld a, a
    sub e
    adc [hl]
    ld a, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld c, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    nop
    nop
    nop
    inc b
    dec c
    dec e
    nop
    sub [hl]
    ld h, h
    dec bc
    add hl, hl
    nop
    sbc c
    ld h, h
    dec c
    ld de, $9c00
    ld h, h
    dec c
    ld e, $07
    sbc a
    ld h, h
    dec b
    daa
    inc c
    add hl, hl
    ld b, $00
    rst $38
    rst $38
    sub d
    ld [bc], a
    ld e, d
    ld h, h
    rst $38
    rst $38
    daa
    ld c, $27
    ld b, $00
    rst $38
    rst $38
    sub d
    ld [bc], a
    ld l, [hl]
    ld h, h
    rst $38
    rst $38
    dec l
    add hl, bc
    add hl, bc
    ld [$ff00], sp
    rst $38
    add d
    inc bc
    ld b, [hl]
    ld h, h
    rst $38
    rst $38
    dec l
    ld c, $12
    ld [$ff00], sp
    rst $38
    add d
    inc b
    add d
    ld h, h
    rst $38
    rst $38
    dec l
    ld a, [bc]
    dec h
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc b
    ld [hl-], a
    ld h, h
    rst $38
    rst $38
    nop
    nop
    ld d, c
    inc d
    ld l, b
    ld b, a
    ld c, h
    dec h
    ld l, b
    add h
    jr nz, jr_068_6811

jr_068_6811:
    ld d, h
    ld c, c
    sub c
    nop
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    db $f4
    ld a, a
    or d
    and a
    and b
    xor d
    and h
    rst $20
    ld d, a
    nop
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    sbc h
    ld a, a
    add [hl]
    and b
    or h
    ld a, a
    and [hl]
    and b
    or h
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $020e
    rlca
    inc bc
    ld bc, $020e
    nop
    nop
    ld [bc], a
    dec hl
    add hl, bc
    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    rlca
    ld l, b
    rst $38
    rst $38
    add d
    add hl, bc
    ld [$0016], sp
    rst $38
    rst $38
    sub b
    nop
    ld a, [bc]
    ld l, b
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    inc [hl]
    inc hl
    nop
    add hl, bc
    sub d
    ld l, b
    ld c, h
    ret nc

    ld l, b
    ld d, h
    ld c, c
    ld h, h
    cp e
    ld l, c
    nop
    nop
    ld e, [hl]
    ld de, $5f01
    ld h, b
    inc sp
    push bc
    inc b
    inc sp
    dec hl
    inc b
    ld b, a
    ld c, h
    dec a
    ld l, d
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $23
    nop
    ld c, h
    ld d, a
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    jp c, Jump_068_546a

    ld c, c
    sub c
    dec hl
    inc b
    ld [hl], $12
    ld h, d
    ld l, e
    pop af
    ld l, e
    nop
    nop
    and h
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    rrca
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04c5
    add hl, bc
    cp d
    ld l, b
    ld c, h
    ld l, [hl]
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    rlca
    ld l, l
    ld d, h
    ld c, c
    sub c
    inc [hl]
    inc hl
    nop
    add hl, bc
    ret


    ld l, b
    inc c
    dec l
    nop
    ld b, e
    ld de, $0101
    inc c
    ld l, $00
    nop
    add c
    sub c
    adc [hl]
    add d
    adc d
    sbc h
    ld a, a
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ad4f
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and h
    ld d, c
    and [hl]
    and h
    or e
    ld a, a
    and b
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
    or c
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    add sp, $51
    adc b
    jp nc, $817f

    sub c
    adc [hl]
    add d
    adc d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
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
    add sp, $51
    adc b
    jp nc, $a07f

    xor l
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or c
    xor [hl]
    and d
    xor d
    db $e3
    or e
    cp b
    xor a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
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
    xor b
    xor h
    db $e3
    ld c, a
    xor a
    and h
    or c
    or l
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld d, c
    xor a
    and a
    cp b
    or d
    xor b
    and d
    and b
    xor e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    add sp, $4f
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
    and b
    ld a, a
    and a
    and b
    or c
    and e
    ld d, c
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    add sp, $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    add c
    sub c
    adc [hl]
    add d
    adc d
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    call nc, $af7f
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    and b
    or e
    db $e3
    ld d, l
    or e
    and b
    and d
    xor d
    or d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and d
    and b
    xor h
    and h
    ld a, a
    xor h
    cp b
    ld d, l
    or c
    xor [hl]
    and d
    xor d
    db $e3
    and a
    and b
    or c
    and e
    ld a, a
    and e
    and h
    and l
    and h
    xor l
    or d
    and h
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
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
    ld [hl], l
    ld d, c
    add [hl]
    xor [hl]
    ld a, a
    and b
    and a
    and h
    and b
    and e
    db $e3
    db $e3
    or e
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
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
    add c
    adc [hl]
    sub h
    adc e
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    add c
    sub c
    adc [hl]
    add d
    adc d
    sbc h
    ld a, a
    inc d
    db $f4
    ld c, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    add sp, $7f
    adc b
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
    and h
    and e
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
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld d, l
    or h
    xor a
    or d
    and h
    or e
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    add c
    adc [hl]
    sub h
    adc e
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    ld c, a
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
    and h
    or l
    and h
    xor l
    ld a, a
    xor h
    xor [hl]
    or c
    and h
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
    add c
    sub c
    adc [hl]
    add d
    adc d
    sbc h
    ld a, a
    sub e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    ld c, a
    xor b
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    add sp, $7f
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld d, c
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
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
    add sp, $51
    adc c
    or h
    or d
    or e
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    and h
    add sp, $4f
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
    and c
    and h
    db $e3
    ld d, l
    and d
    xor [hl]
    xor h
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
    db $e3
    ld d, l
    and h
    or c
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
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
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    or h
    or d
    and h
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    db $e3
    ld d, l
    or e
    cp b
    xor a
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
    or c
    xor [hl]
    and d
    xor d
    db $e3
    or e
    cp b
    xor a
    and h
    ld a, a
    and a
    and b
    or d
    ld c, a
    and a
    xor b
    and [hl]
    and a
    ld a, a
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $51
    add c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and h
    xor l
    and e
    ld c, a
    or h
    xor a
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld d, c
    or e
    xor b
    xor h
    and h
    add sp, $7f
    add b
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
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    and $57
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
    or [hl]
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld a, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    rst $20
    ld a, a
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld d, c
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $7f
    add a
    and h
    pop de
    xor e
    ld c, a
    xor a
    or h
    xor l
    xor b
    or d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and a
    xor b
    xor h
    ld c, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    add sp, $57
    nop
    sbc b
    xor [hl]
    rst $20
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    and b
    xor d
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
    xor e
    xor e
    cp b
    ld a, a
    or c
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    add sp, $4f
    add b
    or c
    and h
    ld a, a
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
    ld d, c
    or e
    and a
    and h
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
    sub d
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    and $51
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and e
    and h
    and e
    xor b
    and d
    and b
    or e
    and h
    and e
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    db $f4
    ld d, c
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
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    call nc, $864f
    sbc b
    adc h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    sub d
    add sp, $57
    nop
    sbc b
    xor [hl]
    rst $20
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, c
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and d
    and a
    and b
    or c
    and [hl]
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld d, c
    xor b
    xor l
    or d
    xor a
    xor b
    or c
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    ld a, a
    xor h
    and h
    and b
    xor l
    ld c, a
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
    add sp, $57
    nop
    nop
    ld [bc], a
    dec c
    inc b
    ld [bc], a
    ld c, $02
    dec c
    dec b
    ld [bc], a
    ld c, $02
    nop
    ld [bc], a
    dec bc
    inc bc
    nop
    ret nz

    ld l, b
    dec bc
    ld b, $00
    ret nz

    ld l, b
    inc bc
    ld a, [de]
    dec b
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    or b
    nop
    ld h, h
    ld l, b
    rst $38
    rst $38
    daa
    ld de, $0907
    nop
    rst $38
    rst $38
    and d
    inc bc
    sbc b
    ld l, b
    rst $38
    rst $38
    ld c, b
    rrca
    dec bc
    ld b, $00
    rst $38
    rst $38
    sub b
    ld bc, $68ac
    rst $38
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    inc de
    nop
    ld c, c
    sub c
    ld d, c
    ret c

    ld l, l
    ld d, c
    ld a, [hl-]
    ld l, [hl]
    nop
    add a
    xor b
    rst $20
    ld a, a
    add d
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
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    rst $20
    ld d, c
    adc b
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    and e
    ld a, a
    xor b
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld c, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    add sp, $7f
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld d, c
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    xor b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and d
    xor [hl]
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
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld c, a
    or [hl]
    and h
    xor b
    or c
    and e
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, l
    or d
    xor [hl]
    xor e
    and e
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
    add a
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc e
    add b
    adc d
    add h
    ld a, a
    adc [hl]
    add l
    ld a, a
    sub c
    add b
    add [hl]
    add h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, a
    and h
    or a
    and d
    and h
    xor e
    xor e
    and h
    xor l
    or e
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld c, $02
    rlca
    inc bc
    inc bc
    ld c, $02
    nop
    nop
    inc bc
    add hl, sp
    rlca
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    bit 5, l
    rst $38
    rst $38
    daa
    ld b, $0d
    dec b
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    jp nc, $ff6d

    rst $38
    dec hl
    ld a, [bc]
    ld a, [bc]
    inc bc
    nop
    rst $38
    rst $38
    add b
    nop
    push de
    ld l, l
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld d, c
    ld bc, $476f
    ld c, h
    ld e, l
    ld l, a
    add h
    daa
    nop
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld [hl], l
    ld l, a
    ld l, e
    ld b, a
    sub [hl]
    inc b
    ld d, h
    ld c, c
    sub c
    nop
    ld [hl], l
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor b
    xor l
    ld a, a
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    call nc, $a651
    xor [hl]
    xor l
    and h
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and b
    xor h
    and b
    cp c
    and h
    and e
    add sp, $51
    ld [hl], l
    sbc b
    and h
    or d
    and $7f
    adc b
    jp nc, $ae7f

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
    add sp, $7f
    add [hl]
    xor [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
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
    sbc h
    ld a, a
    adc a
    or h
    or h
    ld c, a
    xor a
    or h
    xor a
    or h
    or h
    add sp, $57
    nop
    adc h
    xor [hl]
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    and e
    or c
    xor [hl]
    or [hl]
    or d
    cp b
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, c
    and a
    and h
    and b
    or c
    ld a, a
    and b
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
    ld c, a
    or d
    xor b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
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
    and h
    or l
    and h
    or c
    and b
    xor e
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld d, c
    or h
    or d
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and b
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
    or d
    xor e
    and h
    and h
    xor a
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    inc b
    ld c, $02
    rlca
    inc b
    inc b
    ld c, $02
    rlca
    nop
    ld bc, $0114
    nop
    nop
    dec b
    scf
    dec b
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    rst $20
    ld l, [hl]
    rst $38
    rst $38
    add hl, hl
    ld a, [bc]
    inc c
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld_long $ff6e, a
    rst $38
    sub h
    rlca
    dec b
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    db $ed
    ld l, [hl]
    rst $38
    rst $38
    dec h
    rlca
    ld b, $06
    nop
    rst $38
    rst $38
    sub b
    nop
    rst $30
    ld l, [hl]
    rst $38
    rst $38
    dec l
    ld b, $0b
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    ld_long a, $ff6e
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0007
    inc bc
    ld c, $06
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld e, a
    ld [hl], b
    inc c
    ld [bc], a
    nop
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or d
    xor l
    xor [hl]
    xor [hl]
    cp c
    xor b
    xor l
    and [hl]
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
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld [hl], l
    ld d, l
    ld [hl], l
    sbc c
    cp c
    cp c
    cp c
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    ld c, $02
    rlca
    inc bc
    dec b
    ld c, $02
    nop
    ld [bc], a
    ld bc, $0000
    ld e, h
    ld [hl], b
    ld bc, $0001
    ld e, h
    ld [hl], b
    ld bc, $072f
    add hl, bc
    ld [$ff00], sp
    rst $38
    sub b
    nop
    ld e, c
    ld [hl], b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_068_7640:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
