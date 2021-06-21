; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $061", ROMX[$4000], BANK[$61]

    nop
    ld bc, $0505
    ld b, b
    ld [hl], $38
    nop
    sub b
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    rla
    ld b, b
    ld c, h
    cp h
    ld b, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, h
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld d, c
    xor b
    ld b, c
    ld b, a
    ld c, h
    jp hl


    ld b, c
    add h
    ld d, b
    nop
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld a, [$5441]
    ld c, c
    db $76
    dec b
    ld [bc], a
    ld b, a
    ld c, h
    add hl, hl
    ld b, d
    ld d, h
    ld c, c
    ld b, a
    ld c, h
    jp hl


    ld b, c
    add h
    ld d, b
    nop
    ld d, h
    ld c, c
    ld b, a
    ld c, h
    ld c, e
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    ld e, b
    ld b, b
    ld sp, $00cb
    add hl, bc
    ld e, [hl]
    ld b, b
    ld c, h
    ld c, [hl]
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], l
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    xor c
    ld b, d
    ld d, h
    ld c, c
    ld sp, $00fa
    ld [$4072], sp
    sub c
    add [hl]
    add l
    ld [de], a
    nop
    add [hl]
    add l
    ld [hl+], a
    nop
    add [hl]
    add l
    ld [de], a
    nop
    add [hl]
    add l
    ld [hl+], a
    nop
    add [hl]
    add l
    ld [de], a
    nop
    add [hl]
    add l
    ld [hl+], a
    nop
    add [hl]
    add l
    ld [de], a
    nop
    add [hl]
    add l
    ld [hl+], a
    nop
    add [hl]
    ld [hl], l
    nop
    rlca
    rrca
    db $76
    rlca
    ld [bc], a
    ld b, a
    ld c, h
    xor $42
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld [de], a
    ld b, e
    ld d, e
    ld b, l
    ld b, e
    ld d, e
    add c
    ld b, e
    ld d, e
    call z, Call_061_5343
    dec sp
    ld b, h
    ld d, e
    ld d, b
    ld b, h
    inc c
    stop
    inc c
    ld de, $fa00
    nop
    sbc b
    nop
    adc d
    add b
    adc l
    sub e
    adc [hl]
    call nc, $8f7f
    adc [hl]
    sub [hl]
    add h
    sub c
    ld c, a
    adc a
    adc e
    add b
    adc l
    sub e
    and $51
    adc b
    or e
    call nc, $ad7f
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    and e
    ld c, a
    xor [hl]
    and l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $38
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, c
    or c
    xor [hl]
    and b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and a
    and h
    and b
    and e
    or d
    ld c, a
    and h
    and b
    or d
    or e
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
    and h
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and b
    xor l
    ld a, a
    and b
    and d
    and d
    xor b
    and e
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
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
    or e
    and a
    and h
    or c
    and h
    add sp, $57
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
    xor e
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    or d
    xor b
    xor l
    and [hl]
    xor e
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld d, l
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and c
    and h
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld c, a
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
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    xor b
    or e
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    or d
    ld a, a
    and l
    or h
    xor l
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
    add d
    add b
    adc a
    add h
    ld a, a
    xor b
    xor l
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
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, c
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
    and e
    and b
    or e
    and h
    or d
    add sp, $4f
    add [hl]
    xor b
    or c
    xor e
    or d
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
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    sbc h
    ld a, a
    sbc b
    and b
    or c
    and b
    and a
    and $57
    nop
    adc h
    cp b
    ld a, a
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    xor l
    ld a, a
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    ld d, l
    and d
    xor [hl]
    xor h
    and c
    xor b
    xor l
    and b
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    db $f4
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add d
    adc [hl]
    adc l
    add l
    sub h
    sub d
    adc b
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    ld [hl], l
    ld d, a
    nop
    adc b
    jp nc, $a07f

    ld a, a
    and a
    or h
    and [hl]
    and h
    ld a, a
    and l
    and b
    xor l
    ld a, a
    xor [hl]
    and l
    ld c, a
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    call nc, $8c55
    adc b
    sub d
    sub e
    sbc b
    add sp, $57
    nop
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
    ld a, a
    or d
    and a
    and b
    and e
    cp b
    ld c, a
    and [hl]
    or h
    cp b
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    or e
    xor [hl]
    or [hl]
    and b
    or c
    and e
    ld d, l
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    call nc, $827f
    add b
    adc a
    add h
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
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
    ld c, a
    and d
    and b
    or l
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and a
    and b
    and e
    ld d, c
    and a
    xor [hl]
    or c
    or c
    xor b
    and c
    xor e
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add b
    cp b
    or h
    and a
    and $51
    adc h
    cp b
    ld a, a
    adc b
    sub e
    add h
    adc h
    add l
    adc b
    adc l
    add e
    add h
    sub c
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    or d
    xor a
    xor [hl]
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, c
    add b
    ld a, a
    adc h
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
    add c
    xor e
    or h
    and h
    ld c, a
    add b
    or h
    or c
    and b
    ld a, a
    sub d
    or h
    or c
    or c
    xor [hl]
    or h
    xor l
    and e
    or d
    ld a, a
    adc b
    or e
    ld d, a
    nop
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
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
    ld d, l
    adc e
    add h
    add b
    add e
    add h
    sub c
    sbc h
    ld a, a
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub e
    xor [hl]
    xor h
    and c
    xor [hl]
    cp b
    xor b
    or d
    and a
    ld c, a
    adc h
    and h
    or c
    xor h
    and b
    xor b
    and e
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld c, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add c
    adc b
    adc d
    add h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    ld a, a
    and a
    and b
    or d
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    and e
    ld a, a
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
    ld d, l
    add d
    adc b
    sub e
    sbc b
    ld a, a
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    ld c, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    sub d
    or e
    and b
    xor h
    xor a
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    and h
    or l
    and h
    or c
    cp b
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor b
    or e
    cp b
    ld d, c
    and b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    xor e
    xor b
    and h
    or c
    db $f4
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    and d
    and a
    and h
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    rst $20
    ld d, c
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    add d
    add h
    ld d, a
    nop
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    ld a, a
    add d
    add b
    adc a
    add h
    ld c, a
    add b
    add a
    add h
    add b
    add e
    ld d, a
    nop
    adc b
    or e
    call nc, $ab7f
    xor [hl]
    and d
    xor d
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    nop
    ld b, $0f
    rlca
    ld bc, $0107
    ld de, $011c
    rlca
    ld [bc], a
    inc de
    dec c
    ld bc, $0307
    dec d
    inc de
    ld bc, $0407
    rla
    ld e, $01
    rlca
    ld b, $1d
    add hl, de
    ld [bc], a
    rlca
    rlca
    nop
    add hl, bc
    rla
    dec d
    nop
    and c
    ld b, b
    add hl, de
    dec de
    nop
    and h
    ld b, b
    rra
    rrca
    nop
    and a
    ld b, b
    ld de, $0019
    xor d
    ld b, b
    rlca
    rla
    nop
    xor l
    ld b, b
    dec e
    ld c, $00
    or b
    ld b, b
    dec d
    inc d
    nop
    or e
    ld b, b
    dec e
    ld a, [de]
    nop
    or [hl]
    ld b, b
    inc c
    ld [bc], a
    rlca
    cp c
    ld b, b
    ld b, $23
    inc e
    ld a, [bc]
    ld [bc], a
    ld [hl+], a
    rst $38
    rst $38
    sub b
    nop
    add hl, bc
    ld b, b
    rst $38
    rst $38
    dec hl
    inc d
    rla
    ld [bc], a
    ld de, $ffff
    sub b
    nop
    dec e
    ld b, b
    rst $38
    rst $38
    ld b, l
    jr jr_061_44df

    ld bc, $ff00
    rst $38
    nop
    nop
    jr nz, jr_061_4513

    rst $38
    rst $38
    inc h
    jr jr_061_44ed

    ld [$ff00], sp
    rst $38
    and b
    nop
    ld a, [hl+]

jr_061_44df:
    ld b, b
    rst $38
    rst $38
    ld a, [hl-]
    dec e
    inc e
    dec b
    ld bc, $ffff
    add b
    nop
    ld c, d
    ld b, b

jr_061_44ed:
    rst $38
    rst $38
    daa
    db $10
    ld a, [bc]
    inc bc
    ld bc, $ffff
    add b
    nop
    ld h, h
    ld b, b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ret c

    ld b, l
    ld d, c
    ld a, [bc]
    ld b, [hl]
    ld d, c
    ld c, c
    ld b, [hl]
    ld d, c
    sbc l
    ld b, [hl]
    ld de, $3804
    ld bc, $4523
    ld [hl], h
    ld b, l
    nop

jr_061_4513:
    nop
    ld d, $45
    ld h, [hl]
    ld b, a
    ld c, h
    add e
    ld b, l
    ld d, h
    ld c, c
    sub c
    dec c
    ld bc, $d653
    ld b, [hl]
    nop
    sub [hl]
    and h
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $51
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    or [hl]
    and h
    ld a, a
    and h
    or a
    xor a
    or c
    and h
    or d
    or d
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    and [hl]
    or c
    and b
    or e
    xor b
    or e
    or h
    and e
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    and a
    db $e3
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
    add b
    xor e
    xor e
    ld a, a
    xor e
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    and d
    xor [hl]
    and h
    or a
    xor b
    or d
    or e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld d, l
    and d
    xor [hl]
    xor [hl]
    xor a
    and h
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    sub [hl]
    and h
    ld a, a
    xor h
    or h
    or d
    or e
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
    or e
    and a
    and b
    xor l
    xor d
    and l
    or h
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    and b
    and d
    and a
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    xor a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    xor [hl]
    and c
    or e
    and b
    xor b
    xor l
    ld a, a
    and b
    xor l
    ld a, a
    add a
    adc h
    add sp, $57
    nop
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and c
    or h
    xor b
    xor e
    or e
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    and [hl]
    xor [hl]
    ld d, c
    and b
    or d
    ld a, a
    and b
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
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add b
    ld a, a
    add c
    add h
    adc e
    adc e
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    rst $30
    or $f6
    ld a, a
    and l
    and h
    and h
    or e
    ld a, a
    or e
    and b
    xor e
    xor e
    ld [hl], l
    ld d, c
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or d
    and b
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld c, a
    and c
    and h
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    and h
    xor l
    or e
    and h
    or c
    ld d, l
    xor a
    xor b
    xor e
    xor e
    and b
    or c
    ld a, a
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
    or e
    and a
    and h
    ld a, a
    xor a
    xor b
    xor e
    xor e
    and b
    or c
    ld c, a
    or d
    and a
    and b
    xor d
    xor b
    xor l
    and [hl]
    and $51
    adc a
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
    or c
    and b
    xor b
    xor l
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    or d
    or e
    and b
    xor b
    or c
    or d
    add sp, $57
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    and b
    or e
    or h
    and h
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    and e
    xor b
    or d
    or e
    xor b
    xor l
    and [hl]
    or h
    xor b
    or d
    and a
    and h
    and e
    add sp, $57
    nop
    nop
    dec b
    rrca
    add hl, bc
    rlca
    ld a, [bc]
    dec b
    rrca
    ld a, [bc]
    rlca
    ld a, [bc]
    dec b
    dec bc
    inc bc
    ld bc, $0203
    rrca
    rrca
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0303
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    rrca
    dec b
    nop
    jr nz, jr_061_476b

    rrca
    ld [de], a
    nop
    jr nz, jr_061_4770

    ld b, $3e
    ld c, $17
    ld b, $00
    rst $38
    rst $38
    sub b
    inc b
    cp $44
    rst $38
    rst $38
    ld a, $08
    dec b
    ld [$ff00], sp
    rst $38
    sub b
    nop
    ld bc, $ff45
    rst $38
    ld a, $07
    dec c
    ld [$ff00], sp
    rst $38
    sub b
    nop
    inc b
    ld b, l
    rst $38
    rst $38
    ld a, $0d
    ld c, $09
    nop
    rst $38
    rst $38
    sub b
    nop
    rlca
    ld b, l
    rst $38
    rst $38
    ld a, $0b
    ld d, $09
    nop
    rst $38
    rst $38
    sub d
    inc b
    ld a, [bc]
    ld b, l

jr_061_476b:
    rst $38
    rst $38
    ld d, h
    dec bc
    inc c

jr_061_4770:
    ld bc, $ff00
    rst $38
    ld bc, $1e00
    ld b, l
    ld b, a
    ld b, $00
    nop
    ld [de], a
    inc b
    jr c, jr_061_4782

    xor c
    ld b, a

jr_061_4782:
    rst $18
    ld b, a
    nop
    nop
    adc b
    ld b, a
    ld h, [hl]
    ld b, a
    ld c, h
    rst $38
    ld b, a
    ld d, h
    ld c, c
    sub c
    rla
    inc b
    jr c, jr_061_479b

    ld b, c
    ld c, b
    ld h, c
    ld c, b
    nop
    nop
    sbc h

jr_061_479b:
    ld b, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, a
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld d, e
    ret z

    ld c, b
    ld hl, $0001
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or [hl]
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
    or e
    and a
    and h
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, l
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
    jp nc, $b37f

    xor [hl]
    xor [hl]
    ld a, a
    or [hl]
    and h
    and b
    xor d
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    xor e
    and h
    or a
    xor b
    and c
    xor e
    and h
    ld a, a
    xor a
    xor b
    xor e
    db $e3
    ld c, a
    xor e
    and b
    or c
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld d, c
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    and h
    and b
    or c
    or e
    and a
    or b
    or h
    and b
    xor d
    and h
    or d
    add sp, $57
    nop
    ld [hl], l
    sub d
    or [hl]
    and b
    cp b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    or d
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor l
    and e
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    jp nc, $b67f

    and h
    and b
    xor d
    rst $20
    ld d, a
    nop
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
    xor [hl]
    xor a
    cp b
    ld c, a
    add c
    add h
    adc e
    adc e
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    call nc, $a651
    and h
    xor l
    or e
    xor e
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    xor h
    and h
    xor l
    or e
    or d
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
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld c, a
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    and b
    or e
    or h
    and h
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    and e
    xor b
    or d
    or e
    xor b
    xor l
    and [hl]
    or h
    xor b
    or d
    and a
    and h
    and e
    add sp, $57
    nop
    nop
    inc b
    dec bc
    inc bc
    inc bc
    inc bc
    ld bc, $0d0f
    inc b
    inc bc
    ld bc, $0301
    dec b
    inc bc
    ld bc, $090f
    ld bc, $0303
    nop
    ld bc, $090d
    nop
    and h
    ld b, a
    inc bc
    ld a, $09
    ld d, $09
    nop
    rst $38
    rst $38
    sub d
    inc b
    ld a, h
    ld b, a
    rst $38
    rst $38
    ld a, $0a
    dec b
    ld [$ff00], sp
    rst $38
    sub d
    dec b
    sub b
    ld b, a
    rst $38
    rst $38
    ld d, h
    dec bc
    rrca
    ld bc, $ff00
    rst $38
    ld bc, $a700
    ld b, a
    ld c, b
    ld b, $02
    ld b, l
    ld c, c
    nop
    nop
    ld b, [hl]
    ld c, c
    nop
    nop
    nop
    sub c
    sub c
    halt
    ld bc, $0075
    nop
    rrca
    rrca
    ld l, d
    nop
    add l
    ld b, c
    nop
    add l
    ld l, [hl]
    nop
    ld a, b
    ld c, a
    adc e
    rrca
    add l
    ld b, c
    nop
    add l
    ld l, [hl]
    nop
    ld a, b
    ld c, a
    ld l, c
    nop
    dec e
    ld c, d
    ld l, c
    ld [$4a22], sp
    ld b, a
    ld c, h
    daa
    ld c, d
    ld d, h
    ld c, c
    ld [hl], l
    nop
    ld [$760f], sp
    ld [$8b00], sp
    rrca
    ld l, c
    ld [$4a24], sp
    ld a, a
    rra
    nop
    ld b, a
    ld c, h
    db $ec
    ld c, d
    ld d, h
    ld c, c
    db $76
    ld [$4701], sp
    ld c, h
    ret z

    ld c, e
    adc e
    rrca
    ld c, c
    add l
    inc de
    nop
    rrca
    jr nc, jr_061_4997

jr_061_4997:
    rrca
    inc sp
    nop
    ld l, [hl]
    ld [$0f86], sp
    ld [hl-], a
    nop
    inc d
    ld bc, $3d0f
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $0014
    add hl, bc
    pop de
    ld c, c
    ld c, h
    ldh [rWX], a
    ld d, h
    ld c, c
    ld h, h
    or d
    ld c, h
    nop
    nop
    ld e, [hl]
    jr c, jr_061_49c4

    ld e, a
    ld h, b
    ld b, a
    ld c, h
    jp nz, Jump_061_554c

    sbc [hl]
    rst $30

jr_061_49c4:
    ld bc, $1433
    nop
    inc sp
    add hl, de
    inc b
    ld c, h
    inc de
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    adc b
    ld c, l
    ld d, h
    ld c, c
    sub c
    inc de
    inc b
    jr c, @+$05

    or [hl]
    ld c, l
    sbc $4d
    nop
    nop
    db $e3
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [$544d]
    ld c, c
    sub c
    inc d
    inc b
    jr c, jr_061_49f3

    ld h, b
    ld c, [hl]
    adc d
    ld c, [hl]

jr_061_49f3:
    nop
    nop
    rst $30
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    and h
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    jr jr_061_4a05

    jr c, jr_061_4a0b

    pop bc
    ld c, [hl]

jr_061_4a05:
    di
    ld c, [hl]
    nop
    nop
    dec bc
    ld c, d

jr_061_4a0b:
    ld h, [hl]
    ld b, a
    ld c, h
    ld [de], a
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld d, e
    scf
    ld c, a
    ld d, e
    ld h, c
    ld c, a
    ld [de], a
    ld bc, $0113
    dec c
    dec c
    dec c
    dec c
    ld b, a
    dec c
    ld b, a
    rrca
    inc c
    ld b, a
    nop
    add h
    adc e
    add e
    add h
    sub c
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor b
    xor l
    db $e3
    ld c, a
    and e
    and h
    and h
    and e
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
    or d
    ld a, a
    and b
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $51
    add b
    or d
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
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add a
    adc h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or d
    and b
    cp b
    ld c, a
    or e
    and a
    xor b
    or d
    sbc h
    ld a, a
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
    ld d, c
    or e
    or c
    and h
    and b
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
    and h
    or e
    or e
    and h
    or c
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
    and c
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    xor b
    or d
    ld a, a
    and l
    and b
    or c
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and a
    and b
    or c
    or d
    and a
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
    xor l
    xor [hl]
    or e
    ld c, a
    or e
    xor [hl]
    xor [hl]
    xor e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    and b
    or c
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    ld c, a
    ld [hl], l
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    and d
    xor e
    and b
    xor b
    xor h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    add h
    adc e
    add e
    add h
    sub c
    ld a, a
    and c
    or h
    or e
    ld d, l
    and a
    and h
    call nc, $b67f
    and h
    and b
    xor d
    add sp, $51
    adc b
    or e
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and h
    and b
    or d
    xor [hl]
    xor l
    add sp, $51
    adc b
    ret nc

    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and l
    xor [hl]
    xor [hl]
    xor e
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and c
    and b
    and c
    and c
    xor e
    and h
    ld d, c
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    xor b
    and d
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
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
    ld d, l
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or [hl]
    xor b
    xor l
    add sp, $51
    adc b
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld c, a
    and d
    and b
    or c
    and h
    ld a, a
    xor e
    and h
    or d
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    or [hl]
    and h
    and b
    xor d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    ld d, e
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    and b
    xor l
    ld c, a
    add h
    sub d
    add d
    add b
    adc a
    add h
    ld a, a
    sub c
    adc [hl]
    adc a
    add h
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    xor [hl]
    and l
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
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    and h
    or d
    or e
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and c
    xor [hl]
    xor l
    and e
    or d
    ld d, c
    or e
    xor [hl]
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    ld a, a
    and b
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and l
    or h
    or e
    or h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    add sp, $51
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    ld c, a
    or e
    and h
    or d
    or e
    add sp, $51
    add b
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
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    and h
    or d
    ld a, a
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
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
    and b
    xor l
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add b
    and a
    db $f4
    ld a, a
    and h
    or a
    and d
    and h
    xor e
    xor e
    and h
    xor l
    or e
    rst $20
    ld d, a
    nop
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
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
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
    ld d, c
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
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $51
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    add l
    adc e
    add b
    sub d
    add a
    ld c, a
    add a
    adc h
    add sp, $57
    nop
    add l
    adc e
    add b
    sub d
    add a
    ld a, a
    xor b
    xor e
    xor e
    or h
    xor h
    xor b
    xor l
    and b
    or e
    and h
    or d
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
    and e
    and b
    or c
    xor d
    and h
    or d
    or e
    ld d, l
    xor [hl]
    and l
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
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
    ld d, c
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    call nc, $867f
    sbc b
    adc h
    add sp, $57
    nop
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
    and b
    xor l
    and e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    add sp, $57
    nop
    adc b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    and h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    xor h
    and h
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
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
    xor b
    or d
    ld c, a
    xor b
    xor l
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    ld [hl], l
    ld d, a
    nop
    add b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld d, l
    or e
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
    add sp, $51
    adc l
    xor [hl]
    db $f4
    ld a, a
    or [hl]
    and b
    xor b
    or e
    add sp, $7f
    add b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld d, c
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    and e
    xor [hl]
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
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or d
    and h
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    or h
    or d
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sbc b
    and h
    or d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    or c
    or h
    or d
    or e
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    and b
    xor e
    rst $20
    ld d, a
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and l
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    add h
    adc e
    add e
    add h
    sub c
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add h
    adc e
    add e
    add h
    sub c
    call nc, $877f
    adc h
    ld c, a
    xor e
    xor b
    and [hl]
    and a
    or e
    or d
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor a
    xor b
    or e
    and d
    and a
    db $e3
    ld d, l
    and c
    xor e
    and b
    and d
    xor d
    ld a, a
    and e
    and b
    or c
    xor d
    xor l
    and h
    or d
    or d
    add sp, $57
    nop
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
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
    ld c, a
    xor b
    or d
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    adc e
    and h
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and c
    and h
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld c, a
    xor [hl]
    xor l
    ld a, a
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
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld c, a
    xor a
    and b
    xor b
    xor l
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld d, l
    add c
    add h
    adc e
    adc e
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    add sp, $57
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    and b
    or e
    or h
    and h
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    and e
    xor b
    or d
    or e
    xor b
    xor l
    and [hl]
    or h
    xor b
    or d
    and a
    and h
    and e
    add sp, $57
    nop
    nop
    ld bc, $0a0e
    inc b
    inc bc
    ld [bc], a
    ld bc, $0900
    dec bc
    nop
    ld b, a
    ld c, c
    nop
    nop
    ld b, $01
    ld [$1600], sp
    ld c, d
    ld bc, $000b
    ld d, $4a
    nop
    add hl, bc
    nop
    inc de
    ld c, d
    nop
    ld a, [bc]
    nop
    inc de
    ld c, d
    rrca
    dec b
    nop
    ld d, $4a
    rrca
    ld c, $00
    ld d, $4a
    rlca
    ld a, $11
    inc c
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc bc
    rst $10
    ld c, c
    rst $38
    rst $38
    ld a, $12
    rrca
    ld [$ff00], sp
    rst $38
    sub d
    ld [bc], a
    db $eb
    ld c, c
    rst $38
    rst $38
    ld a, $06
    ld c, $06
    nop
    rst $38
    rst $38
    sub b
    nop
    and [hl]
    ld c, c
    rst $38
    rst $38
    ld a, $0f
    rrca
    ld [$ff00], sp
    rst $38
    sub d
    inc bc
    rst $38
    ld c, c
    rst $38
    rst $38
    ld d, h
    dec bc
    inc de
    ld bc, $ff00
    rst $38
    ld bc, $1900
    ld c, d
    ld c, c
    ld b, $54
    dec bc
    ld [$0001], sp
    rst $38
    rst $38
    ld bc, $1b00
    ld c, d
    ld c, d
    ld b, $04
    ld [$070e], sp
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $c4
    ld b, $02
    ld a, [hl+]
    ld d, b
    nop
    nop
    ld l, $50
    nop
    nop
    ld [bc], a
    ld [bc], a
    cpl
    ld d, b
    ld bc, $5084
    adc l
    adc a
    ld d, b
    sub c
    sub c
    ld sp, $0336
    add hl, bc
    ld b, a
    ld d, b
    ld sp, $0044
    ld [$5050], sp
    rrca
    sub [hl]
    nop
    ld [$5050], sp
    ld [hl-], a
    push bc
    rlca
    inc sp
    or [hl]
    rlca
    ld sp, $0317
    ld [$504f], sp
    ld l, a
    dec b
    sub b
    ld sp, $0335
    add hl, bc
    ld [hl], a
    ld d, b
    ld l, a
    ld [bc], a
    dec d
    di
    rrca
    sub a
    nop
    add hl, bc
    ld h, l
    ld d, b
    ld l, a
    inc bc
    inc bc
    ld h, a
    ld d, b
    ld l, [hl]
    inc bc
    dec d
    db $f4
    rrca
    sub a
    nop
    add hl, bc
    ld [hl], h
    ld d, b
    ld l, a
    inc b
    inc bc
    db $76
    ld d, b
    ld l, [hl]
    inc b
    sub b
    ld l, [hl]
    ld [bc], a
    ld l, [hl]
    inc bc
    ld l, [hl]
    inc b
    ld [hl-], a
    or [hl]
    rlca
    inc sp
    push bc
    rlca
    sub b
    ld sp, $0336
    add hl, bc
    adc [hl]
    ld d, b
    ld a, d
    ld a, [bc]
    ld [bc], a
    add hl, bc
    sub b
    ld l, c
    nop
    bit 2, c
    adc e
    rrca
    dec d
    di
    rrca
    sub a
    nop
    add hl, bc
    or [hl]
    ld d, b
    ld l, c
    inc bc
    ret nc

    ld d, c
    halt
    ld [bc], a
    add h
    di
    nop
    adc e
    ld a, [bc]
    add l
    inc d
    nop
    ld l, c
    inc bc
    call nc, Call_061_6e51
    inc bc
    add l
    inc hl
    nop
    add [hl]
    dec d
    db $f4
    rrca
    sub a
    nop
    add hl, bc
    rst $10
    ld d, b
    ld l, c
    inc b
    jp c, Jump_061_7651

    nop
    inc bc
    add h
    db $f4
    nop
    adc e
    ld a, [bc]
    add l
    inc d
    nop
    ld l, c
    inc b
    sbc $51
    ld l, [hl]
    inc b
    add l
    inc hl
    nop
    add [hl]
    halt
    ld bc, $0a8b
    ld l, c
    nop
    add sp, $51
    ld l, c
    ld [bc], a
    db $e4
    ld d, c
    add h
    push af
    nop
    adc e
    inc d
    ld e, l
    push af
    ld e, d
    ld e, $03
    inc c
    ld e, a
    add e
    ld l, [hl]
    ld [bc], a
    inc sp
    dec [hl]
    inc bc
    inc sp
    xor a
    rlca
    ld [de], a
    ld [bc], a
    dec b
    nop
    inc sp
    or b
    rlca
    ld [de], a
    ld a, [bc]
    inc bc
    nop
    inc sp
    xor [hl]
    rlca
    ld [de], a
    ld d, $03
    nop
    inc d
    ld bc, $b732
    rlca
    ld h, b
    adc e
    inc d
    halt
    nop
    ld a, a
    ld h, c
    nop
    add l
    rra
    nop
    ld [hl], d
    dec b
    ld a, [bc]
    rrca
    ld l, a
    dec b
    ld l, c
    dec b
    db $ec
    ld d, c
    add l
    rra
    nop
    ld [hl], d
    ld b, $09
    rrca
    ld l, a
    ld b, $69
    ld b, $f5
    ld d, c
    add l
    rra
    nop
    ld [hl], d
    rlca
    add hl, bc
    rrca
    ld l, a
    rlca
    ld l, c
    rlca
    ei
    ld d, c
    add l
    rra
    nop
    ld [hl], d
    ld [$0f09], sp
    ld l, a
    ld [$0869], sp
    cp $51
    ld [hl], d
    ld b, $07
    dec c
    ld [hl], d
    rlca
    add hl, bc
    dec c
    ld [hl], d
    ld [$0d0b], sp
    halt
    inc bc
    ld b, a
    ld c, h
    inc bc
    ld d, d
    ld d, h
    ld c, c
    ld l, c
    dec b
    pop af
    ld d, c
    add l
    inc hl
    nop
    ld l, [hl]
    dec b
    add [hl]
    rrca
    ld l, d
    nop
    adc e
    inc d
    add d
    sub c
    ld d, c
    add [hl]
    ld d, e
    ld d, c
    inc sp
    ld d, h
    ld d, c
    ld b, h
    ld d, l
    ld sp, $0317
    add hl, bc
    add l
    ld d, c
    ld d, c
    xor $55
    ld d, c
    ld h, l
    ld d, a
    ld l, e
    ld b, a
    ld sp, $0317
    add hl, bc
    or [hl]
    ld d, c
    ld sp, $0336
    add hl, bc
    or b
    ld d, c
    ld c, h
    add hl, hl
    ld d, [hl]
    ld d, l
    sbc [hl]
    or d
    ld bc, $4849
    nop
    ld a, b
    ld c, b
    add [hl]
    add l
    dec de
    nop
    ld a, d
    ld a, [bc]
    ld [bc], a
    jr nz, jr_061_5227

    inc sp
    ld [hl], $03
    ld c, c
    ld b, a
    ld c, h
    ld c, d
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc bc
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld sp, $0317
    add hl, bc
    push bc
    ld d, c
    ld d, c
    ld d, h
    ld d, [hl]
    ld d, c
    ret nc

    ld e, b
    ld d, c
    and e
    ld d, [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, a
    add hl, sp
    inc [hl]
    jr c, jr_061_521b

    add hl, sp
    inc [hl]
    scf
    inc [hl]
    jr c, jr_061_5221

    add hl, sp
    inc [hl]
    jr c, jr_061_5225

    add hl, sp
    inc [hl]
    ld [hl], $34
    jr c, jr_061_522b

    add hl, sp
    inc [hl]
    jr c, jr_061_522f

    dec sp
    db $10
    ld a, [hl-]
    ld b, a
    dec c
    dec c
    dec c
    ld [bc], a
    ld b, a
    inc c
    inc c
    inc c
    ld b, a
    dec c
    dec c
    ld c, $0e
    ld bc, $0d47
    dec c
    ld b, a
    dec c
    rrca
    rrca
    dec c
    ld b, a
    nop
    add h
    sub h
    sub d
    adc b
    adc l
    add h
    sbc h
    ld a, a
    add b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    rst $20
    ld c, a
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and b
    or [hl]

jr_061_521b:
    and h
    or d
    xor [hl]
    xor h
    and h
    db $f4

jr_061_5221:
    ld a, a
    and h
    or l
    and h

jr_061_5225:
    xor l
    rst $20

jr_061_5227:
    ld d, c
    adc b
    sub $a4

jr_061_522b:
    ld a, a
    xor l
    and h
    or l

jr_061_522f:
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
    and [hl]
    or c
    and h
    and b
    or e
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    or c
    or h
    xor e
    cp b
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    add sp, $51
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, c
    xor h
    xor [hl]
    or c
    and h
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
    db $f4
    ld c, a
    ld d, d
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    call nc, $ac4f
    cp b
    or d
    or e
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld d, c
    or d
    or h
    xor h
    xor h
    xor [hl]
    xor l
    or d
    ld a, a
    and b
    ld a, a
    or c
    and b
    xor b
    xor l
    and c
    xor [hl]
    or [hl]
    db $e3
    ld c, a
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    and h
    and e
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
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor h
    and b
    cp b
    and c
    and h
    db $f4
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    ld d, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    and b
    or h
    or d
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
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
    or d
    or e
    or h
    and e
    cp b
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    and h

Call_061_5343:
    and [hl]
    and h
    xor l
    and e
    or d
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    add sp, $51
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
    or e
    and a
    and b
    or e
    ld a, a
    and l
    and b
    xor l
    or e
    and b
    or d
    or e
    xor b
    and d
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
    adc e
    and b
    or e
    and h
    or c
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, a
    nop
    add b
    and d
    and d
    xor [hl]
    or c
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    ld [hl], l
    ld d, c
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
    xor [hl]
    or h
    xor e
    or d
    ld a, a
    xor [hl]
    and l
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
    and a
    or h
    xor h
    and b
    xor l
    or d
    ld d, c
    and d
    xor [hl]
    xor h
    xor h
    or h
    xor l
    and h
    db $f4
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld c, a
    and a
    and h
    and b
    or l
    and h
    xor l
    or d
    ld a, a
    and e
    and h
    or d
    and d
    and h
    xor l
    and e
    or d
    ld a, a
    and b
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or c
    and b
    xor b
    xor l
    and c
    xor [hl]
    or [hl]
    ld c, a
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    or d
    ld [hl], l
    ld d, c
    add d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    and h
    and b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    and b
    or c
    and h
    ld a, a
    or e
    and h
    or d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    or d
    ld c, a
    and a
    or h
    xor h
    and b
    xor l
    or d
    and $57
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add c
    sub c
    add b
    sub d
    sub d
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    and c
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    db $f4
    ld d, c
    or e
    and a
    or c
    and h
    and h
    ld a, a
    xor l
    and b

Call_061_545e:
    xor h
    and h
    xor e
    and h
    or d
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or d
    and b
    xor b
    and e
    ld d, c
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor a
    and h
    or c
    xor b
    or d
    and a
    and h
    and e
    add sp, $4f
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    or c
    and b
    and [hl]
    xor b
    and d
    add sp, $51
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    ld [hl], l
    ld d, c
    add b
    ld a, a
    or c
    and b
    xor b
    xor l
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, c
    adc b
    xor l
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    or d
    ld [hl], l
    ld d, c
    add a
    adc [hl]
    db $e3
    adc [hl]
    add a
    ld a, a
    and e
    and h
    or d
    and d
    and h
    xor l
    and e
    and h
    and e
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
    or d
    xor d
    cp b
    ld a, a
    and b
    xor l
    and e
    ld d, c
    and [hl]
    and b
    or l
    and h
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    xor e
    xor b
    and l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
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
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld [hl], l
    ld d, c
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    db $f4
    ld a, a
    add h
    adc l
    sub e
    add h
    adc b
    ld a, a
    and b
    xor l
    and e
    ld c, a
    sub c
    add b
    adc b
    adc d
    adc [hl]
    sub h
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    or d
    and b
    cp b
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]

Jump_061_554c:
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    sub d
    ld a, a
    and b
    or c
    and h
    ld c, a
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
    ld d, c
    and c
    or h
    xor b
    xor e
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or d
    or e
    and h
    or c
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    and a
    xor b
    xor a
    ld a, a
    and b
    xor l
    and e
    ld d, c
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    db $fd
    or $f6
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    ld c, a
    and b
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor b
    and e
    and h
    and b
    xor e
    ld d, c
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or c
    and h
    xor h
    and b
    xor b
    xor l
    or d
    ld c, a
    xor b
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
    and e
    and b
    cp b
    add sp, $57
    nop
    add a
    adc [hl]
    db $e3
    adc [hl]
    add a
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
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and e
    and h
    or d
    and d
    and h
    xor l
    and e
    and h
    and e
    ld d, c
    or h
    xor a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    adc b
    adc l
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    sub e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    add sp, $57
    nop
    adc b
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld c, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and h
    or d
    or e
    and h
    and e
    add sp, $51
    add l
    or c
    and h
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
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or h
    xor l
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    or e
    cp b
    db $f4
    ld d, l
    and b
    xor l
    and e
    ld a, a
    and b
    and e
    or l
    and b
    xor l
    and d
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    xor b
    or e
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ret nc

    ld a, a
    and [hl]
    and h
    or e
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
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    xor [hl]
    and l
    ld a, a
    or c
    and b
    xor b
    xor l
    and c
    xor [hl]
    or [hl]
    ld a, a
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    or d
    db $f4
    ld c, a
    ld d, d
    add sp, $51
    adc b
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
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and b
    or d
    ld a, a
    adc b
    ld a, a
    and h
    xor l
    or l
    xor b
    or d
    xor b
    xor [hl]
    xor l
    and h
    and e
    add sp, $51
    adc h
    cp b
    ld a, a
    or c
    and h
    or d
    and h
    and b
    or c
    and d
    and a
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
    adc b
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or d
    and b
    cp b
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
    or e
    or h
    and e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld c, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    rst $20
    ld d, a
    nop
    sub e
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
    or d
    and b
    xor b
    and e
    ld d, c
    or e
    xor [hl]
    ld a, a
    and h
    xor h
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or d
    or e
    or c
    or h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and c
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    add b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and b
    xor b
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor a
    or h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    or e
    or c
    or h
    and d
    xor d
    ld a, a
    or e
    and h
    or c
    or c
    xor [hl]
    or c
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or d
    and b
    or [hl]
    ld d, l
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or c
    xor b
    or d
    and h
    add sp, $51
    add b
    xor l
    and e
    ld [hl], l
    ld d, c
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and l
    or h
    or e
    xor b
    xor e
    and h
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    add sp, $51
    sub e
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld d, c
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    db $f4
    ld c, a
    and l
    xor e
    and h
    and e
    db $f4
    ld a, a
    xor b
    and [hl]
    xor l
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $57
    nop
    adc [hl]
    and l
    ld a, a
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    ld d, c
    xor b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
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
    ld c, a
    and d
    xor e
    xor [hl]
    or d
    and h
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    add a
    adc [hl]
    db $e3
    adc [hl]
    add a
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor h
    and b
    cp b
    ld c, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or e
    xor [hl]
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    or d
    ld c, a
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    or d
    and a
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld d, c
    and d
    xor [hl]
    xor [hl]
    xor a
    and h
    or c
    and b
    or e
    xor b
    or l
    and h
    ld a, a
    and c
    xor [hl]
    xor l
    and e
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    add sp, $57
    nop
    nop
    inc bc
    rrca
    add hl, bc
    inc c
    inc b
    add hl, bc
    rrca
    ld a, [bc]
    inc c
    inc b
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    inc bc
    dec b
    nop
    nop
    ld a, [bc]
    ld h, e
    dec c
    dec c
    ld bc, $ff00
    rst $38
    sub b
    nop
    rst $28
    ld h, $b2
    rlca
    ld h, l
    dec c
    dec bc
    ld bc, $ff00
    rst $38
    or b
    nop
    rst $28
    ld h, $b4
    rlca
    ld h, h
    dec c
    db $10
    ld bc, $ff00
    rst $38
    add b
    nop
    rst $28
    ld h, $b3
    rlca
    dec hl
    rlca
    inc c
    inc bc
    nop
    rst $38
    rst $38
    sub b
    nop
    ret z

    ld d, c
    or l
    rlca
    ld a, $0d
    add hl, bc
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld [hl], e
    ld d, c
    or [hl]
    rlca
    ld a, $0f
    rrca
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    db $76
    ld d, c
    or [hl]
    rlca
    ld a, $0a
    ld [de], a
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, c
    ld d, c
    or [hl]
    rlca
    ld a, $06
    ld [$1004], sp
    rst $38
    rst $38
    nop
    nop
    ld a, h
    ld d, c
    push bc
    rlca
    ld a, $05
    dec c
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    adc b
    ld d, c
    push bc
    rlca
    ld a, $06
    ld [de], a
    dec b
    ld bc, $ffff
    nop
    nop
    cp h
    ld d, c
    push bc
    rlca
    nop
    nop
    nop
    nop
    ld [bc], a
    rrca
    ld a, [bc]
    ld bc, $0603
    ld [bc], a
    ld a, [bc]
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld h, $01
    nop
    nop
    ld [bc], a
    ld de, $010a
    inc bc
    dec b
    ld bc, $0212
    inc bc
    rlca
    nop
    nop
    ld bc, $1154
    rla
    ld bc, $ff00
    rst $38
    ld bc, $3700
    ld e, d
    ld c, e
    ld b, $00
    nop
    ld [bc], a
    ld bc, $013e
    inc de
    ld bc, $007d
    rrca
    nop
    nop
    inc b
    rrca
    db $10
    ld [bc], a
    inc bc
    ld [$1201], sp
    ld [bc], a
    inc bc
    ld b, $07
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $0f
    ld [bc], a
    ld bc, $0603
    nop
    ld bc, $0306
    rlca
    ld e, [hl]
    ld e, d
    inc bc
    ld d, h
    inc c
    ld c, $01
    nop
    rst $38
    rst $38
    ld bc, $5800
    ld e, d
    ld c, h
    ld b, $54
    dec d
    rla
    ld bc, $ff00
    rst $38
    ld bc, $5a00
    ld e, d
    ld c, l
    ld b, $54
    inc c
    dec bc
    ld bc, $ff00
    rst $38
    ld bc, $5c00
    ld e, d
    ld c, [hl]
    ld b, $00
    nop
    jr nz, jr_061_5aac

    ld a, [hl]

jr_061_5aac:
    nop
    ld c, $7f
    nop
    dec e
    nop
    nop
    inc b
    inc bc
    ld c, $02
    inc bc
    add hl, bc
    rlca
    ld a, [bc]
    ld [bc], a
    inc bc
    rlca
    ld de, $0312
    inc bc
    rlca
    inc bc
    inc b
    inc b
    inc bc
    rlca
    nop
    ld [bc], a
    ld [$070e], sp
    xor e
    ld e, d
    ld a, [bc]
    dec b
    rlca
    xor [hl]
    ld e, d
    ld bc, $0754
    dec b
    ld bc, $ff00
    rst $38
    ld bc, $a900
    ld e, d
    ld c, a
    ld b, $00
    nop
    rrca
    ld bc, $0000
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld bc, $0a03
    rrca
    ld a, [bc]
    ld bc, $0803
    nop
    nop
    ld bc, $0954
    dec c
    ld bc, $ff00
    rst $38
    ld bc, $e400
    ld e, d
    add $07
    nop
    nop
    jr z, jr_061_5b08

    nop

jr_061_5b08:
    nop
    dec b
    ld de, $0100
    inc bc
    add hl, bc
    add hl, bc
    inc c
    ld bc, $0b03
    inc bc
    db $10
    inc b
    inc bc
    ld a, [bc]
    inc bc
    ld [$0303], sp
    ld a, [bc]
    rlca
    inc c
    dec b
    inc bc
    inc c
    nop
    nop
    ld bc, $0a54
    ld a, [bc]
    ld bc, $ff00
    rst $38
    ld bc, $0500
    ld e, e
    ld d, b
    ld b, $00
    nop
    inc h
    ld bc, $0115
    ld c, $01
    nop
    nop
    ld b, $01
    nop
    ld [bc], a
    inc bc
    ld a, [bc]
    ld bc, $0112
    inc bc
    inc c
    rlca
    ld c, $02
    inc bc
    inc c
    rlca
    inc b
    inc bc
    inc bc
    inc c
    rrca
    inc c
    ld [bc], a
    inc bc
    ld b, $09
    ld b, $02
    inc bc
    ld b, $00
    nop
    inc bc
    ld d, h
    ld de, $010b
    nop
    rst $38
    rst $38
    ld bc, $3500
    ld e, e
    ld d, c
    ld b, $54
    ld a, [bc]
    rrca
    ld bc, $ff00
    rst $38
    ld bc, $3700
    ld e, e
    ld d, d
    ld b, $54
    rrca
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $3900
    ld e, e
    ld d, e
    ld b, $00
    nop
    ld a, [de]
    ld bc, $8700
    adc [hl]
    db $e3
    adc [hl]
    add a
    sbc h
    ld a, a
    sub d
    and a
    and b
    xor [hl]
    xor [hl]
    xor [hl]
    and a
    rst $20
    ld d, a
    nop
    adc e
    sub h
    add [hl]
    adc b
    add b
    sbc h
    ld a, a
    add [hl]
    cp b
    and b
    and b
    and b
    xor l
    rst $20
    ld d, a
    nop
    nop
    rlca
    ld bc, $020a
    inc bc
    dec bc
    rlca
    inc b
    inc bc
    inc bc
    dec bc
    dec c
    ld b, $04
    inc bc
    dec bc
    ld de, $0100
    rrca
    inc c
    rlca
    ld c, $02
    inc bc
    ld b, $11
    ld [de], a
    ld [bc], a
    inc bc
    ld b, $05
    ld a, [bc]
    ld b, $03
    dec bc
    nop
    nop
    ld bc, $0d54
    rla
    ld bc, $ff00
    rst $38
    ld bc, $8800
    ld e, e
    rst $00
    rlca
    inc bc
    ld a, [c]
    ld e, e
    nop
    nop
    or $5b
    nop
    nop
    rst $30
    ld e, e
    nop
    nop
    ld bc, $f801
    ld e, e
    adc l
    dec c
    ld e, h
    sub c
    sub c
    sub c
    ld sp, $0332
    add hl, bc
    ld [bc], a
    ld e, h
    ld a, d
    ld a, [bc]
    ld [$3132], sp
    ld a, e
    nop
    add hl, bc
    inc c
    ld e, h
    ld a, d
    ld b, $0e
    add hl, bc
    sub b
    db $76
    inc bc
    nop
    ld [hl], l
    nop
    inc bc
    rrca
    ld l, c
    inc bc
    db $d3
    ld e, h
    ld b, a
    ld c, h
    call z, Call_061_545e
    ld c, c
    ld [hl], d
    inc bc
    add hl, bc
    ld c, $14
    ld bc, $7591
    nop
    inc b
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    db $76
    inc b
    inc bc
    adc e
    rrca
    ld l, c
    nop
    call Call_061_695c
    inc b
    rst $08
    ld e, h
    ld a, a
    rra
    nop
    ld b, a
    ld c, h
    reti


    ld e, h
    ld d, h
    ld c, c
    ld sp, $001c
    add hl, bc
    ld h, b
    ld e, h
    ld sp, $001d
    add hl, bc
    ld [hl], b
    ld e, h
    ld h, h
    sbc e
    ld e, l
    inc l
    ld e, [hl]
    ld l, b
    inc b
    ld e, [hl]
    add hl, bc
    add hl, bc
    ld e, a
    add e
    ld h, b
    inc bc
    add b
    ld e, h
    ld h, h
    sbc e
    ld e, l
    inc l
    ld e, [hl]
    ld l, b
    inc b
    ld e, [hl]
    add hl, bc
    rlca
    ld e, a
    add e
    ld h, b
    inc bc
    add b
    ld e, h
    ld h, h
    sbc e
    ld e, l
    inc l
    ld e, [hl]
    ld l, b
    inc b
    ld e, [hl]
    add hl, bc
    ld [$835f], sp
    ld h, b
    inc bc
    add b
    ld e, h
    ld a, a
    jr nz, jr_061_5c83

jr_061_5c83:
    ld b, a
    ld c, h
    ld [c], a
    ld e, l
    ld d, h
    ld c, c
    inc d
    ld [bc], a
    inc sp
    push bc
    ld b, $0f
    ld l, d
    nop
    adc e
    rrca
    ld a, b
    ld [hl-], a
    ld [hl], l
    nop
    nop
    rrca
    add l
    rra
    nop
    add [hl]
    ld a, d
    ld a, [bc]
    ld [$7c25], sp
    adc e
    rrca
    ld l, c
    nop
    pop de
    ld e, h
    add l
    cpl
    nop
    ld [hl], l
    nop
    inc b
    inc d
    ld b, a
    ld c, h
    ld [hl], l
    ld e, [hl]
    ld d, h
    ld c, c
    inc sp
    ld [hl-], a
    inc bc
    adc e
    rrca
    adc [hl]
    sub c
    ld d, c
    sbc c
    ld e, a
    ld d, c
    ld [bc], a
    ld h, b
    inc c
    rrca
    nop
    add b
    nop
    ccf
    rst $38
    nop
    ld [bc], a
    ld a, [de]
    ld bc, $470e
    rrca
    ld b, a
    ld e, c
    ld b, a
    inc c
    ld c, $0e
    ld c, $0c
    ld b, a
    nop
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
    ld [hl], l
    adc [hl]
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, $b87f
    xor [hl]
    or h
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor h
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
    or d
    xor [hl]
    xor h
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
    or e
    and a
    and h
    cp b
    ld c, a
    or d
    and b
    cp b
    ld a, a
    or c
    xor [hl]
    xor [hl]
    or d
    or e
    or d
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $ad4f
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, c
    adc l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld d, c
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and e
    or h
    xor h
    xor a
    and $7f
    adc l
    xor [hl]
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, c
    adc b
    or e
    call nc, $a07f
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and l
    and b
    or h
    xor e
    or e
    rst $20
    ld d, a
    nop
    ld [hl], l
    add a
    or h
    xor h
    xor a
    and a
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
    or [hl]
    and a
    cp b
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or e
    and h
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
    or [hl]
    xor b
    xor h
    xor a
    or d
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld c, a
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
    xor b
    xor l
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    ld [hl], l
    add b
    or [hl]
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    and h
    or l
    and h
    or c
    add sp, $51
    sbc b
    xor [hl]
    or h
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
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    ld d, c
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    xor l
    cp b
    or [hl]
    and b
    cp b
    add sp, $57
    nop
    ld [hl], l
    add a
    or h
    xor h
    xor a
    and a
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
    or [hl]
    and a
    cp b
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or e
    and h
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
    or [hl]
    xor b
    xor h
    xor a
    or d
    add sp, $51
    adc b
    or e
    call nc, $a97f
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    or [hl]
    and b
    or d
    or e
    and h
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld d, c
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
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    and b
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld d, c
    and a
    xor [hl]
    xor e
    and h
    and $7f
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    and [hl]
    and h
    xor l
    xor b
    or h
    or d
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    rst $20
    ld d, c
    sub d
    and h
    or c
    or l
    and h
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    add h
    sub h
    sub d
    adc b
    adc l
    add h
    sbc h
    ld a, a
    adc h
    cp b
    ld a, a
    xor l
    and b
    xor h
    and h
    call nc, $844f
    sub h
    sub d
    adc b
    adc l
    add h
    add sp, $51
    adc b
    jp nc, $ae7f

    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor e
    ld c, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor l
    and b
    xor h
    and h
    and e
    ld d, l
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    add sp, $51
    add b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld [hl], l
    and $51
    ld d, d
    and $7f
    add [hl]
    xor e
    and b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor h
    and h
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    or c
    or h
    xor h
    xor [hl]
    or c
    or d
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
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
    xor b
    xor l
    ld d, c
    or e
    and a
    xor b
    or d
    ld a, a
    add c
    sub h
    sub c
    adc l
    add h
    add e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and h
    or a
    and b
    and d
    or e
    xor e
    cp b
    ld c, a
    and d
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
    and $57
    nop
    add h
    sub h
    sub d
    adc b
    adc l
    add h
    sbc h
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
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
    xor b
    xor l
    ld d, c
    or e
    and a
    xor b
    or d
    ld a, a
    add c
    sub h
    sub c
    adc l
    add h
    add e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and h
    or a
    and b
    and d
    or e
    xor e
    cp b
    ld c, a
    and d
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
    and $57
    nop
    adc h
    adc [hl]
    sub c
    sub e
    sbc b
    sbc h
    ld a, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
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
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld d, c
    or d
    or e
    or h
    and e
    cp b
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
    or d
    and b
    xor b
    and e
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
    ld d, c
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    db $e3
    db $e3
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    db $f4
    ld a, a
    add h
    adc l
    sub e
    add h
    adc b
    ld d, l
    and b
    xor l
    and e
    ld a, a
    sub c
    add b
    adc b
    adc d
    adc [hl]
    sub h
    add sp, $51
    add h
    sub h
    sub d
    adc b
    adc l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld c, a
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
    ld a, a
    or e
    xor [hl]
    ld d, c
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
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and a
    xor b
    xor h
    add sp, $57
    nop
    nop
    ld c, $0f
    add hl, bc
    dec c
    inc b
    add hl, bc
    rrca
    ld a, [bc]
    dec c
    inc b
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld bc, $0e03
    dec b
    dec b
    ld bc, $0e03
    ld b, $05
    ld bc, $0e03
    ld b, $04
    ld bc, $0e03
    inc b
    rrca
    ld [bc], a
    inc bc
    ld c, $05
    rrca
    ld [bc], a
    inc bc
    ld c, $07
    ld a, [bc]
    inc bc
    inc bc
    ld c, $0e
    dec b
    inc b
    inc bc
    ld c, $0e
    inc b
    inc b
    inc bc
    ld c, $0e
    ld c, $05
    inc bc
    ld c, $0e
    rrca
    dec b
    inc bc
    ld c, $0f
    rlca
    ld b, $03
    ld c, $01
    ld bc, $0b09
    nop
    dec h
    ld e, h
    nop
    nop
    ld [bc], a
    rlca
    ld [$c507], sp
    ld e, h
    dec bc
    dec c
    rlca
    ret z

    ld e, h
    dec b
    ld e, c
    ld [$1813], sp
    nop
    rst $38
    rst $38
    nop
    nop
    jp nz, $ff5c

    rst $38
    dec hl
    db $10
    db $10
    inc bc
    nop
    rst $38
    rst $38
    sub b
    nop
    cp h
    ld e, h
    ld h, l
    rlca
    inc b
    dec c
    inc c
    ld [$ff00], sp
    rst $38
    ld [bc], a
    inc bc
    rst $28
    ld h, $c5
    ld b, $15
    ld [de], a
    ld [de], a
    ld [bc], a
    ld de, $ffff
    or b
    nop
    cp a
    ld e, h
    ld h, h
    rlca
    ld d, h
    ld b, $12
    ld bc, $ff00
    rst $38
    ld bc, $cb00
    ld e, h
    ld d, [hl]
    ld b, $02
    ld e, [hl]
    ld h, c
    nop
    nop
    ld e, a
    ld h, c
    nop
    nop
    ld bc, $6001
    ld h, c
    sub c
    sub c
    ld sp, $007b
    add hl, bc
    ld l, d
    ld h, c
    ld a, d
    ld b, $0e
    ld [bc], a
    sub b
    ld a, a
    nop
    nop
    adc e
    ld e, $6f
    inc bc
    halt
    ld bc, $058b
    ld l, [hl]
    ld b, $8b
    rrca
    add h
    di
    nop
    ld l, a
    inc b
    halt
    ld bc, $058b
    ld l, [hl]
    rlca
    adc e
    rrca
    add h
    db $f4
    nop
    ld l, a
    dec b
    halt
    ld bc, $058b
    ld l, [hl]
    ld [$0f8b], sp
    add h
    push af
    nop
    adc e
    rrca
    add l
    inc d
    nop
    halt
    ld [bc], a
    ld l, c
    inc bc
    ld [hl], $62
    ld l, [hl]
    inc bc
    add [hl]
    add l
    inc d
    nop
    halt
    inc bc
    ld l, c
    inc b
    dec sp
    ld h, d
    ld l, [hl]
    inc b
    add [hl]
    adc e
    rrca
    add l
    inc d
    nop
    halt
    ld bc, $0569
    ld b, c
    ld h, d
    add l
    inc d
    nop
    halt
    nop
    ld l, c
    dec b
    ld c, b
    ld h, d
    halt
    ld bc, $148b
    add h
    push af
    nop
    adc e
    ld e, $85
    inc d
    nop
    ld l, c
    dec b
    ld d, e
    ld h, d
    halt
    nop
    ld l, [hl]
    dec b
    add [hl]
    rrca
    dec a
    nop
    inc d
    ld bc, $7b33
    nop
    rrca
    ld l, c
    nop
    ld [de], a
    inc b
    rlca
    ld bc, $1612
    inc bc
    ld bc, $ae32
    rlca
    inc sp
    xor b
    rlca
    ld [hl-], a
    xor c
    rlca
    inc sp
    ld h, h
    rlca
    inc sp
    ld h, l
    rlca
    ld l, a
    ld a, [bc]
    ld c, b
    nop
    ld a, d
    ld b, $0e
    dec de
    ld a, h
    ld c, c
    inc d
    ld bc, $6b91
    ld b, a
    ld c, h
    ld l, d
    ld h, d
    ld d, h
    ld c, c
    inc e
    add hl, bc
    ld b, $01
    ld h, $62
    ld l, c
    ld a, [bc]
    ld h, e
    ld h, d
    inc bc
    ld a, [hl+]
    ld h, d
    ld l, c
    ld a, [bc]
    ld e, h
    ld h, d
    ld l, [hl]
    ld a, [bc]
    add l
    inc hl
    nop
    add [hl]
    sub c
    db $d3
    ld bc, $0e0c
    nop
    add hl, sp
    inc [hl]
    ld [hl], $38
    ld b, a
    add hl, sp
    scf
    inc [hl]
    scf
    jr c, jr_061_6288

    add hl, sp
    scf
    inc [hl]
    inc [hl]
    ld [hl], $38
    ld b, a
    add hl, sp
    ld [hl], $35
    ld de, $3837
    ld b, a
    add hl, sp
    db $10
    jr c, jr_061_629a

    add hl, sp
    ld de, $3437
    inc [hl]
    inc [hl]
    inc [hl]
    jr c, jr_061_62a3

    ld c, $0e
    inc c
    inc c
    ld c, $0c
    ld b, a
    inc c
    ld c, $0e
    ld c, $0c
    inc c
    ld b, a
    nop
    add h
    sub h
    sub d
    adc b
    adc l
    add h
    sbc h
    ld a, a
    adc b
    ld a, a
    and e
    or h
    and [hl]
    ld a, a
    and b
    ld c, a
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    or e
    xor [hl]

jr_061_6288:
    xor [hl]
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    rst $20
    ld d, c

jr_061_629a:
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    ld a, a
    or c

jr_061_62a3:
    and b
    and d
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor e
    or h
    or c
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld d, c
    xor b
    xor l
    ld a, a
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
    ld c, a
    and h
    cp b
    and h
    or d
    rst $20
    ld d, c
    add l
    xor [hl]
    or c
    ld a, a
    or e
    and h
    xor l
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    adc b
    ld c, a
    and d
    and a
    and b
    or d
    and h
    and e
    ld a, a
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    db $f4
    ld d, c
    and b
    xor l
    and e
    ld a, a
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
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    or e
    add sp, $51
    adc b
    jp nc, $a07f

    xor e
    xor e
    ld a, a
    and d
    and a
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    or h
    xor a
    rst $20
    ld d, c
    ld d, d
    db $f4
    ld a, a
    adc b
    ld a, a
    xor [hl]
    or [hl]
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
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
    and a
    and h
    and b
    or c
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    xor [hl]
    and l
    ld a, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    ld a, a
    or e
    and h
    or d
    or e
    ld c, a
    and d
    and a
    xor [hl]
    or d
    and h
    xor l
    ld a, a
    and a
    or h
    xor h
    and b
    xor l
    or d
    ld a, a
    and c
    cp b
    ld d, c
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
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
    or e
    or c
    and b
    and d
    xor d
    ld c, a
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    add sp, $51
    ld d, d
    db $f4
    ld a, a
    xor e
    and h
    or e
    call nc, $ac4f
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
    add l
    and b
    or c
    and h
    or [hl]
    and h
    xor e
    xor e
    rst $20
    ld d, a
    nop
    nop
    ld b, $09
    ld a, [bc]
    inc bc
    inc bc
    dec c
    rlca
    ld de, $0307
    dec c
    ld [$090a], sp
    inc bc
    dec c
    dec c
    inc bc
    ld a, [bc]
    inc bc
    dec c
    ld c, $11
    inc c
    inc bc
    dec c
    rrca
    rlca
    ld c, $03
    dec c
    ld bc, $0600
    ld a, [bc]
    nop
    ld l, e
    ld h, c
    nop
    nop
    nop
    add hl, bc
    ld e, d
    inc c
    dec d
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    inc sp
    ld h, d
    rst $38
    rst $38
    ld h, l
    rlca
    dec bc
    ld d, $00
    rst $38
    rst $38
    or b
    nop
    rst $28
    ld h, $4a
    rlca
    ld h, h
    rlca
    db $10
    ld d, $00
    rst $38
    rst $38
    add b
    nop
    rst $28
    ld h, $4a
    rlca
    ld h, e
    ld [$160e], sp
    nop
    rst $38
    rst $38
    sub b
    nop
    rst $28
    ld h, $4a
    rlca
    ld h, l
    rlca
    dec bc
    ld b, $00
    rst $38
    rst $38
    ret nc

    nop
    rst $28
    ld h, $4b
    rlca
    ld h, h
    rlca
    db $10
    ld b, $00
    rst $38
    rst $38
    ret nc

    nop
    rst $28
    ld h, $4b
    rlca
    ld h, e
    ld [$060e], sp
    nop
    rst $38
    rst $38
    ret nc

    nop
    rst $28
    ld h, $4b
    rlca
    ld d, h
    ld [$0114], sp
    nop
    rst $38
    rst $38
    ld bc, $3100
    ld h, d
    ld d, a
    ld b, $2b
    db $10
    ld c, $07
    nop
    rst $38
    rst $38
    sub b
    nop
    ld [de], a
    ld h, d
    xor d
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_061_695c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_061_6e51:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_061_7651:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
