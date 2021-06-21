; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    ld [bc], a
    dec c
    ld b, b
    nop
    nop
    ld c, $40
    nop
    nop
    ld bc, $0f02
    ld b, b
    sub c
    sub c
    ld sp, $0335
    add hl, bc
    inc sp
    ld b, b
    ld sp, $0334
    add hl, bc
    inc sp
    ld b, b
    ld sp, $0021
    add hl, bc
    ld [hl+], a
    ld b, b
    sub b
    ld [hl-], a
    ld h, [hl]
    rlca
    inc sp
    ld h, a
    rlca
    inc sp
    or c
    rlca
    ld hl, $0946
    ld [hl-], a
    ld b, b
    inc d
    nop
    sub b
    ld [hl-], a
    or c
    rlca
    sub b
    ld sp, $0767
    add hl, bc
    ld h, c
    ld b, b
    ld l, c
    inc bc
    rst $00
    ld b, b
    ld [hl], d
    ld [bc], a
    inc b
    ld b, $6f
    ld [bc], a
    adc e
    dec b
    ld l, [hl]
    inc bc
    sub c
    ld sp, $0766
    add hl, bc
    ld h, c
    ld b, b
    ld l, c
    ld [bc], a
    call z, Call_026_7240
    inc bc
    dec b
    ld b, $6f
    inc bc
    adc e
    dec b
    ld l, [hl]
    ld [bc], a
    sub c
    sub c
    ld l, e
    ld b, a
    ld sp, $0021
    add hl, bc
    ld a, h
    ld b, b
    inc [hl]
    ld e, $00
    add hl, bc
    db $76
    ld b, b
    ld c, h
    pop de
    ld b, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld sp, $5441
    ld c, c
    sub c
    ld sp, $0334
    add hl, bc
    and h
    ld b, b
    ld sp, $0000
    add hl, bc
    xor d
    ld b, b
    ld hl, $0946
    sub e
    ld b, b
    ld c, h
    and h
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld d, b
    ld b, d
    ld d, h
    ld c, c
    inc d
    ld bc, $6733
    rlca
    ld [hl-], a
    ld h, [hl]
    rlca
    inc sp
    nop
    nop
    sub c
    ld c, h
    ld a, [hl]
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    sub c
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0078
    add hl, bc
    cp [hl]
    ld b, b
    ld c, h
    dec bc
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, a
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld d, c
    xor e
    ld b, h
    dec sp
    ld [de], a
    ld a, [hl-]
    nop
    ld b, a
    dec sp
    inc de
    ld a, [hl-]
    nop
    ld b, a
    nop
    sub e
    adc b
    adc l
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
    xor [hl]
    and l
    and l
    ld c, a
    xor e
    xor b
    xor h
    xor b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld d, c
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    ld c, a
    add [hl]
    sbc b
    adc h
    call nc, $817f
    add b
    add e
    add [hl]
    add h
    add sp, $51
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
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    add sp, $57
    nop
    sub e
    adc b
    adc l
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
    xor [hl]
    and l
    and l
    ld c, a
    xor e
    xor b
    xor h
    xor b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld d, c
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    ld c, a
    add [hl]
    sbc b
    adc h
    call nc, $817f
    add b
    add e
    add [hl]
    add h
    add sp, $51
    add b
    and a
    rst $20
    ld d, c
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    call nc, $867f
    sbc b
    adc h
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
    rst $20
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    add b
    ld a, a
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
    xor [hl]
    or h
    or d
    ld a, a
    and h
    or l
    and h
    xor l
    or e
    ld c, a
    and a
    and b
    or d
    ld a, a
    xor [hl]
    and d
    and d
    or h
    or c
    or c
    and h
    and e
    add sp, $51
    adc b
    ld a, a
    and c
    and h
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    or c
    and e
    xor [hl]
    xor l
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and b
    or d
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    add sp, $51
    ld [hl], l
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or d
    xor [hl]
    xor [hl]
    or e
    and a
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    xor [hl]
    or h
    xor e
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub [hl]
    adc b
    sub d
    add h
    ld a, a
    sub e
    sub c
    adc b
    adc [hl]
    ld a, a
    or d
    and b
    cp b
    ld c, a
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
    and b
    or c
    and h
    ld a, a
    or d
    xor [hl]
    ld d, c
    or l
    and h
    or c
    cp b
    ld a, a
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
    or e
    xor [hl]
    ld c, a
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
    ld d, a
    nop
    add b
    ld a, a
    xor h
    xor [hl]
    xor h
    and h
    xor l
    or e
    xor [hl]
    or h
    or d
    ld a, a
    and h
    or l
    and h
    xor l
    or e
    ld c, a
    and a
    and b
    or d
    ld a, a
    xor [hl]
    and d
    and d
    or h
    or c
    or c
    and h
    and e
    add sp, $51
    adc b
    ld a, a
    and c
    and h
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and b
    or c
    and e
    xor [hl]
    xor l
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and b
    or d
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    add sp, $51
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, c
    add b
    and a
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    add d
    adc e
    add h
    add b
    sub c
    ld a, a
    add c
    add h
    adc e
    adc e
    rst $20
    ld d, c
    adc b
    or e
    ld [hl], l
    ld a, a
    adc b
    or e
    call nc, $b27f
    or h
    and c
    xor e
    xor b
    xor h
    and h
    rst $20
    ld d, c
    adc b
    sub $a4
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld c, a
    or d
    xor [hl]
    ld a, a
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
    and b
    ld d, l
    or d
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    and c
    and h
    xor e
    xor e
    call nc, $a27f
    and a
    xor b
    xor h
    and h
    ld c, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    and e
    xor b
    and d
    and b
    or e
    xor b
    or l
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and c
    and h
    and b
    or c
    and h
    or c
    call nc, $b27f
    xor [hl]
    or h
    xor e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
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
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor b
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
    sub e
    adc b
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    add sp, $57
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    and c
    and h
    xor e
    xor e
    call nc, $a27f
    and a
    xor b
    xor h
    and h
    ld c, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    and e
    xor b
    and d
    and b
    or e
    xor b
    or l
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    ld a, a
    and c
    and h
    and b
    or c
    and h
    or c
    call nc, $b27f
    xor [hl]
    or h
    xor e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
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
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor b
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
    sub e
    adc b
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub e
    adc b
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld c, a
    and b
    and a
    and h
    and b
    and e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor l
    xor b
    xor l
    and h
    db $e3
    ld d, c
    or e
    xor b
    and h
    or c
    ld a, a
    or e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
    and e
    xor b
    or l
    xor b
    xor l
    and h
    ld a, a
    and c
    and h
    and b
    or h
    or e
    cp b
    add sp, $51
    adc b
    or e
    ld a, a
    or d
    xor [hl]
    xor [hl]
    or e
    and a
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    xor [hl]
    or h
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, l
    or d
    and h
    and h
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    sub e
    adc b
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld c, a
    or d
    and a
    xor [hl]
    xor [hl]
    xor d
    rst $20
    ld a, a
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
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
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    xor a
    rst $20
    ld d, a
    nop
    sub e
    or [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld [hl], l
    ld c, a
    sub e
    or [hl]
    xor [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
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
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor e
    and h
    or [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    db $f4
    ld c, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    add sp, $57
    nop
    nop
    dec b
    ld de, $0304
    inc b
    add hl, bc
    ld de, $0305
    inc b
    add hl, bc
    inc bc
    dec b
    inc b
    inc b
    ld bc, $110f
    inc bc
    inc b
    ld bc, $1103
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    nop
    rlca
    inc b
    nop
    scf
    ld b, b
    nop
    nop
    nop
    rlca
    dec b
    nop
    ld c, h
    ld b, b
    nop
    nop
    nop
    inc b
    ld a, $0a
    ld [$0006], sp
    rst $38
    rst $38
    nop
    nop
    ld h, d
    ld b, b
    ld h, [hl]
    rlca
    ld a, $0a
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld h, d
    ld b, b
    ld h, a
    rlca
    ld a, $0d
    ld a, [bc]
    ld [bc], a
    ld de, $ffff
    nop
    nop
    or b
    ld b, b
    or c
    rlca
    cpl
    rrca
    rlca
    ld [bc], a
    ld de, $ffff
    nop
    nop
    call nz, $b140
    rlca
    ld [bc], a
    ld [hl], d
    ld b, l
    nop
    nop
    ld [hl], e
    ld b, l
    nop
    nop
    ld bc, $7402
    ld b, l
    sub c
    sub c
    ld sp, $0335
    add hl, bc
    sub e
    ld b, l
    ld sp, $0334
    add hl, bc
    adc h
    ld b, l
    ld hl, $0946
    adc h
    ld b, l
    ld [hl-], a
    xor e
    rlca
    inc sp
    xor h
    rlca
    sub b
    inc sp
    xor e
    rlca
    ld [hl-], a
    xor h
    rlca
    sub b
    inc sp
    xor e
    rlca
    inc sp
    xor h
    rlca
    sub b
    ld d, c
    dec hl
    ld b, [hl]
    ld d, c
    adc e
    ld b, [hl]
    ld d, c
    xor a
    ld b, a
    db $76
    inc b
    ld bc, $0076
    nop
    ld [hl], l
    nop
    inc b
    inc d
    ld [hl], b
    nop
    inc b
    ld l, c
    nop
    ld [hl+], a
    ld b, [hl]
    ld [hl], c
    halt
    inc bc
    ld b, a
    ld c, h
    ld [de], a
    ld b, a
    ld d, h
    ld c, c
    ld l, c
    inc b
    dec h
    ld b, [hl]
    db $76
    inc b
    ld [bc], a
    sub c
    ret


    dec b
    jr c, jr_026_45d4

    db $ed
    ld b, a
    inc d
    ld c, c
    nop
    nop
    jp nc, Jump_026_4745

    ld c, h

jr_026_45d4:
    jr c, jr_026_461f

    ld d, h
    ld c, c
    sub c
    jp z, $3805

    dec bc
    jp nc, $1849

    ld c, d
    nop
    nop
    push hl
    ld b, l
    ld b, a
    ld c, h
    dec [hl]
    ld c, d
    ld d, h
    ld c, c
    sub c
    rlc l
    jr c, jr_026_45fc

    ld b, d
    ld c, h
    ld e, d
    ld c, h
    nop
    nop
    ld hl, sp+$45
    ld sp, $0334
    add hl, bc

jr_026_45fc:
    dec de
    ld b, [hl]
    adc e
    ld a, [bc]
    ld [hl], l
    nop
    rlca
    inc d
    ld b, a
    ld c, h
    ld l, h
    ld c, h
    ld d, l
    ld c, h
    xor h
    ld c, h
    ld d, h
    ld c, c
    ld l, c
    rlca
    jr z, jr_026_4658

    db $76
    rlca
    ld bc, $3433
    inc bc
    inc d
    ld bc, $4791
    ld c, h
    or l
    ld c, l

jr_026_461f:
    ld d, h
    ld c, c
    sub c
    ld c, $0e
    ld b, a
    rrca
    inc c
    ld b, a
    rrca
    inc c
    ld b, a
    nop
    add b
    or d
    or e
    xor [hl]
    or h
    xor l
    and e
    xor b
    xor l
    and [hl]
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
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b

jr_026_4658:
    or c
    xor b
    or d
    and h
    xor l
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    ld [hl], l
    ld d, c
    adc b
    or d
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
    ld c, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    or c
    or h
    and h
    and $57
    nop
    sub [hl]
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    ld a, a
    and c
    or h
    or e
    ld d, c
    or [hl]
    and h
    sub $a4
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld c, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld d, c
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, $4f
    adc b
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
    ld a, a
    and c
    and h
    and h
    xor l
    ld d, c
    and e
    and h
    xor e
    xor b
    and c
    and h
    or c
    and b
    or e
    and h
    xor e
    cp b
    ld a, a
    xor h
    and b
    and e

Call_026_4704:
    and h
    ld c, a
    and c
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    sub e
    adc b
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
    and h
    xor l
    or e
    and h
    or c
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld d, c
    and c
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d

Jump_026_4745:
    call nc, $864f
    sbc b
    adc h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $51
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    xor l
    xor [hl]
    or [hl]
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
    db $f4
    ld a, a
    sub c
    add b
    adc b
    adc d
    adc [hl]
    sub h
    ld d, c
    and b
    xor l
    and e
    ld a, a
    add h
    adc l
    sub e
    add h
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    or c
    xor b
    or d
    and h
    xor l
    db $f4
    ld a, a
    adc b
    ld a, a
    and b
    or d
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and l
    or c
    and b
    xor b
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    and h
    xor l
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub [hl]
    adc b
    sub d
    add h
    ld a, a
    sub e
    sub c
    adc b
    adc [hl]
    db $f4
    ld c, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor [hl]
    or c
    or d
    ld d, c
    xor [hl]
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
    add sp, $57
    nop
    adc e
    and h
    and [hl]
    and h
    xor l
    and e
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or h
    xor a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor h
    and h
    or c
    and [hl]
    and h
    xor l
    and d
    and h
    ld d, c
    xor [hl]
    and l
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
    or [hl]
    and a
    xor [hl]
    ld c, a
    and a
    and b
    or d
    ld a, a
    or e
    and a
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
    ld d, c
    or e
    xor [hl]
    or h
    and d
    and a
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
    db $f4
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    or e
    and a
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld d, c
    or e
    xor [hl]
    ld a, a
    or e
    and h
    or d
    or e
    ld a, a
    and b
    or e
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
    ld a, a
    and a
    and b
    or d
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    or c
    or h
    and h
    rst $20
    ld d, c
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
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    ld d, l
    and a
    and b
    or d
    ld a, a
    and b
    or c
    or c
    xor b
    or l
    and h
    and e
    rst $20
    ld d, c
    sub [hl]
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub [hl]
    adc b
    sub d
    add h
    ld a, a
    sub e
    sub c
    adc b
    adc [hl]
    db $f4
    ld c, a
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    or e
    and h
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    or [hl]
    xor [hl]
    or c
    or e
    and a
    xor b
    xor l
    and h
    or d
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    rst $20
    ld d, a
    nop
    sub d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    or [hl]
    and h
    ld c, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    and $7f
    adc a
    and h
    or c
    and a
    and b
    xor a
    or d
    ld [hl], l
    ld d, a
    nop
    add b
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and d
    xor e
    and b
    xor b
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    or d
    and h
    and h
    xor l
    ld a, a
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    db $f4
    ld c, a
    add h
    adc l
    sub e
    add h
    adc b
    ld a, a
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
    ld d, l
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or d
    xor e
    and h
    xor a
    or e
    and $51
    sub h
    xor l
    and c
    and h
    xor e
    xor b
    and h
    or l
    and b
    and c
    xor e
    and h
    rst $20
    ld d, c
    adc e
    and h
    and [hl]
    and h
    xor l
    and e
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    or d
    and h
    and h
    xor l
    ld d, l
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    ld [hl], l
    ld d, a
    nop
    add d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    ld a, a
    or e
    or c
    or h
    or d
    or e
    and h
    and e
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
    or e
    or c
    or h
    or e
    and a
    and $51
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and b
    or d
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    xor b
    xor l
    and h
    or d
    or d
    add sp, $57
    nop
    ld [hl], l
    adc b
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
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    or h
    or e
    and a
    ld [hl], l
    ld d, a
    nop
    adc b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    xor l
    xor b
    xor l
    and h
    db $e3
    or e
    xor b
    and h
    or c
    ld d, l
    or e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    add c
    sub c
    add b
    sub d
    sub d
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    db $f4
    ld c, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld d, c
    and b
    or [hl]
    and b
    xor d
    and h
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub e
    adc b
    adc l
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    db $f4
    ld d, c
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and h
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
    or c
    and h
    or d
    or e
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or l
    xor b
    and h
    or [hl]
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
    or e
    xor [hl]
    xor a
    or d
    ld a, a
    xor [hl]
    and l
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
    sub d
    ld d, c
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
    and c
    and h
    and h
    xor l
    ld c, a
    xor h
    and b
    and [hl]
    xor l
    xor b
    and l
    xor b
    and d
    and h
    xor l
    or e
    add sp, $51
    add b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    and b
    xor l
    ld c, a
    xor b
    xor h
    xor h
    and h
    xor l
    or d
    and h
    db $f4
    ld a, a
    or d
    xor b
    xor e
    or l
    and h
    or c
    db $e3
    ld d, c
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
    ld c, a
    or [hl]
    and b
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
    xor h
    and b
    xor d
    and h
    ld d, c
    xor b
    or e
    or d
    ld a, a
    or c
    xor [hl]
    xor [hl]
    or d
    or e
    ld a, a
    and b
    or e
    xor [hl]
    xor a
    ld a, a
    or e
    and a
    and h
    ld c, a
    add c
    sub c
    add b
    sub d
    sub d
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
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
    and c
    xor [hl]
    or h
    or e
    ld a, a
    rst $30
    ei
    or $7f
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
    and b
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
    ld d, c
    and c
    xor [hl]
    xor e
    or e
    ld a, a
    or d
    or e
    or c
    or h
    and d
    xor d
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    sub d
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and h
    xor l
    and [hl]
    or h
    xor e
    and l
    and h
    and e
    ld a, a
    xor b
    xor l
    ld c, a
    and l
    xor e
    and b
    xor h
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or c
    and b
    and [hl]
    and h
    and e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    and e
    and b
    cp b
    or d
    add sp, $51
    add b
    ld a, a
    or d
    or h
    and e
    and e
    and h
    xor l
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    xor a
    xor [hl]
    or h
    or c
    ld c, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor a
    or h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    and c
    xor e
    and b
    cp c
    and h
    add sp, $51
    add b
    xor l
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    or e
    and a
    and h
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
    ld d, l
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
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
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    sub e
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
    ld c, a
    sub [hl]
    and a
    cp b
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld [hl], l
    ld a, a
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
    and a
    xor [hl]
    ld a, a
    xor b
    or d
    ld d, c
    and b
    or [hl]
    and b
    xor b
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
    and $57
    nop
    adc b
    ld a, a
    or d
    and h
    and h
    ld [hl], l
    ld d, c
    sub [hl]
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub [hl]
    adc b
    sub d
    add h
    ld a, a
    sub e
    sub c
    adc b
    adc [hl]
    db $f4
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    and [hl]
    xor b
    or l
    and h
    xor l
    ld a, a
    ld d, c
    or e
    and a
    and h
    ld a, a
    or c
    and h
    or d
    xor a
    xor [hl]
    xor l
    or d
    xor b
    and c
    xor b
    xor e
    xor b
    or e
    cp b
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
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
    add sp, $4f
    sub [hl]
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld d, c
    xor a
    and b
    or d
    or d
    and b
    and [hl]
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, c
    xor a
    xor [hl]
    or d
    or d
    and h
    or d
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
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    or c
    or h
    or e
    and a
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and b
    xor l
    and e
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
    ld a, a
    sub e
    adc b
    adc l
    ld d, l
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    and b
    and a
    and h
    and b
    and e
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
    xor b
    xor e
    xor e
    ld a, a
    xor a
    or h
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
    and a
    and h
    ld a, a
    or e
    and h
    or d
    or e
    add sp, $57
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
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
    xor b
    xor e
    xor e
    ld a, a
    xor a
    or h
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
    and a
    and h
    ld a, a
    or e
    and h
    or d
    or e
    add sp, $57
    nop
    nop
    inc bc
    inc b
    rlca
    inc b
    inc b
    add hl, bc
    dec b
    rlca
    dec b
    inc b
    add hl, bc
    inc b
    ld bc, $0405
    ld bc, $0001
    inc b
    rlca
    nop
    and e
    ld b, l
    nop
    nop
    nop
    ld b, $3e
    ld b, $0a
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    sbc d
    ld b, l
    xor e
    rlca
    ld a, $0b
    ld a, [bc]
    dec b
    ld bc, $ffff
    nop
    nop
    sbc l
    ld b, l
    xor e
    rlca
    ld a, $09
    dec bc
    ld [$ff00], sp
    rst $38
    nop
    nop
    and b
    ld b, l
    xor e
    rlca
    ld a, $06
    ld [$0006], sp
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    add $45
    xor h
    rlca
    ld a, $0a
    ld [$0007], sp
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    reti


    ld b, l
    xor h
    rlca
    ld a, $08
    ld a, [bc]
    ld [$ff00], sp
    rst $38
    ld [bc], a
    ld [bc], a
    db $ec
    ld b, l
    xor h
    rlca
    ld [bc], a
    ld e, a
    ld c, [hl]
    nop
    nop
    ld h, e
    ld c, [hl]
    nop
    nop
    nop
    adc l
    ld h, h
    ld c, [hl]
    sub c
    sub c
    adc e
    ld e, $85
    inc hl
    nop
    ld l, a
    ld b, $86
    ld l, c
    ld b, $c5
    ld c, [hl]
    ld l, c
    nop
    call nc, Call_026_764e
    ld [bc], a
    ld bc, $0a8b
    db $76
    ld [bc], a
    nop
    adc e
    ld e, $76
    ld [bc], a
    ld bc, $0a8b
    db $76
    ld [bc], a
    nop
    adc e
    inc d
    db $76
    ld b, $00
    adc e
    ld a, [bc]
    ld b, a
    ld c, h
    ret c

    ld c, [hl]
    ld d, l
    inc bc
    sub l
    ld c, [hl]
    ld c, h
    ld [hl+], a
    ld c, a
    ld d, h
    ld c, c
    halt
    nop
    ld l, c
    ld b, $ce
    ld c, [hl]
    add l
    inc hl
    nop
    ld l, [hl]
    ld b, $32
    ld [de], a
    rlca
    ld [hl], $53
    nop
    inc d
    ld bc, $9186
    inc c
    nop
    nop
    rrca
    and b
    nop
    add hl, bc
    cp h
    ld c, [hl]
    ld d, c
    ld d, l
    ld d, c
    ld d, c
    xor d
    ld d, c
    ld d, c
    ld b, b
    ld d, d
    ld d, c
    add [hl]
    ld d, d
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    rrca
    ld bc, $0f47
    inc c
    inc c
    inc c
    inc c
    ld b, a
    dec c
    dec c
    dec c
    ld b, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    adc b
    jp nc, $817f

    adc b
    adc e
    adc e
    add sp, $7f
    add b
    xor l
    and e
    ld c, a
    or [hl]
    and a
    xor [hl]
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
    xor h
    xor h
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld a, a
    and a
    or h
    and a
    and $4f
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    and e
    ld c, a
    and b
    and e
    xor c
    or h
    or d
    or e
    xor h
    and h
    xor l
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld d, l
    sub e
    adc b
    adc h
    add h
    ld a, a
    add d
    add b
    adc a
    sub d
    sub h
    adc e
    add h
    add sp, $51
    sbc b
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld d, l
    or e
    or c
    and b
    and e
    and h
    and e
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    adc h
    cp b
    ld a, a
    sub e
    adc b
    adc h
    add h
    ld a, a
    add d
    add b
    adc a
    sub d
    sub h
    adc e
    add h
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and e
    and h
    or l
    and h
    xor e
    xor [hl]
    xor a
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, c
    and h
    xor l
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
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
    xor a
    and b
    or d
    or e
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
    push de
    ld a, a
    or d
    and h
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
    or e
    and a
    and b
    or e
    ld d, c
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    and h
    or a
    xor b
    or d
    or e
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or e
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    add d
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or e
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    and e
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    sub d
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
    or e
    xor [hl]
    ld c, a
    or c
    and h
    xor h
    xor [hl]
    or l
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
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    xor l
    push de
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or e
    add sp, $51
    adc a
    or h
    or e
    ld a, a
    or d
    xor b
    xor h
    xor a
    xor e
    cp b
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld c, a
    or d
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld d, c
    xor [hl]
    or c
    ld a, a
    xor l
    and h
    or [hl]
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
    ld a, a
    sub e
    adc b
    adc h
    add h
    ld a, a
    add d
    add b
    adc a
    sub d
    sub h
    adc e
    add h
    add sp, $51
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
    xor [hl]
    or c
    or c
    cp b
    add sp, $4f
    adc b
    jp nc, $a37f

    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld d, l
    and b
    and e
    xor c
    or h
    or d
    or e
    xor h
    and h
    xor l
    or e
    or d
    add sp, $51
    sub e
    xor [hl]
    xor h
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    sub e
    adc b
    adc h
    add h
    ld c, a
    add d
    add b
    adc a
    sub d
    sub h
    adc e
    add h
    sub d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld d, c
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
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
    sub d
    add sp, $51
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
    or h
    or c
    or c
    cp b
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and c
    and b
    and d
    xor d
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
    and b
    xor l
    and e
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    xor [hl]
    xor e
    xor d
    or d
    add sp, $51
    add c
    or h
    and a
    db $e3
    and c
    cp b
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc d
    adc b
    adc h
    adc [hl]
    adc l
    adc [hl]
    ld c, a
    add [hl]
    adc b
    sub c
    adc e
    sub d
    ld a, a
    and e
    and b
    xor l
    and d
    and h
    ld a, a
    xor b
    or d
    ld d, c
    xor h
    and b
    or c
    or l
    and h
    xor e
    xor [hl]
    or h
    or d
    add sp, $7f
    adc c
    or h
    or d
    or e
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, l
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
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
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    and a
    xor [hl]
    xor a
    xor b
    xor l
    and [hl]
    ld c, a
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
    xor [hl]
    or c
    and h
    ld d, c
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $4f
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    xor a
    xor a
    and b
    or c
    and h
    xor l
    or e
    xor e
    cp b
    ld d, c
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
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
    and [hl]
    and b
    or e
    and a
    and h
    or c
    add sp, $51
    sub [hl]
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or d
    xor d
    and $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    xor a
    and b
    or d
    or e
    ld c, a
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
    add sp, $57
    nop
    adc h
    adc [hl]
    sub c
    sub e
    sbc b
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
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    ld d, l
    and d
    xor [hl]
    xor [hl]
    xor e
    add sp, $51
    add a
    xor b
    or d
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
    and b
    xor e
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
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
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and b
    xor l
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    ld a, a
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld a, a
    or d
    or [hl]
    and b
    or c
    xor h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or d
    xor h
    and h
    xor e
    xor e
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    xor a
    xor b
    or c
    db $e3
    ld c, a
    and b
    and d
    cp b
    add sp, $7f
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    nop
    inc bc
    rlca
    inc bc
    ld b, $04
    add hl, bc
    rlca
    inc b
    ld b, $04
    add hl, bc
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
    or b
    ld c, [hl]
    rst $38
    rst $38
    dec l
    ld a, [bc]
    dec bc
    ld a, [bc]
    nop
    rst $38
    rst $38
    nop
    nop
    or e
    ld c, [hl]
    rst $38
    rst $38
    inc h
    ld [$0305], sp
    nop
    rst $38
    rst $38
    nop
    nop
    cp a
    ld c, [hl]
    rst $38
    rst $38
    ld c, b
    dec b
    dec bc
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    jp nz, $ff4e

    rst $38
    ld [$040b], sp
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $13
    rlca
    nop
    nop
    ld d, c
    dec a
    ld d, e
    ld d, c
    db $ec
    ld d, e
    inc c
    inc c
    nop
    nop
    sub e
    and a
    xor b
    or d
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
    or [hl]
    and a
    and h
    xor l
    ld c, a
    adc b
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
    sub e
    and a
    and h
    ld a, a
    or d
    xor d
    cp b
    ld a, a
    or d
    or h
    and e
    and e
    and h
    xor l
    xor e
    cp b
    ld c, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    add sp, $7f
    add b
    ld d, c
    and [hl]
    xor b
    and b
    xor l
    or e
    ld a, a
    and l
    xor e
    cp b
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
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
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
    or [hl]
    and b
    or d
    and $7f
    ld d, c
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and b
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    add sp, $57
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and b
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
    ld a, a
    and c
    xor b
    and [hl]
    and $51
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    and h
    or a
    xor b
    or d
    or e
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
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
    nop
    ld [bc], a
    rlca
    inc bc
    rlca
    inc b
    add hl, bc
    rlca
    inc b
    rlca
    inc b
    add hl, bc
    nop
    ld bc, $0201
    nop
    ld a, [hl-]
    ld d, e
    ld [bc], a
    cpl
    rlca
    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop
    inc [hl]
    ld d, e
    rst $38
    rst $38
    daa
    ld [$0809], sp
    nop

Call_026_5458:
    rst $38
    rst $38
    nop
    nop
    scf
    ld d, e
    rst $38
    rst $38
    nop
    nop
    rst $18
    inc b
    inc a
    ld [bc], a
    ld l, $55
    ld e, a
    ld d, l
    nop
    nop
    ld l, [hl]
    ld d, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, c
    ld d, l
    ld d, h
    ld c, c
    sub c
    ldh [rDIV], a
    inc a
    inc bc
    xor [hl]
    ld d, l
    ld [$0055], a
    nop
    add d
    ld d, h
    ld h, [hl]
    ld b, a
    ld c, h
    dec bc
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    pop hl
    inc b
    inc a
    inc b
    ccf
    ld d, [hl]
    ld l, h
    ld d, [hl]
    nop
    nop
    sub [hl]
    ld d, h
    ld h, [hl]
    ld b, a
    ld c, h
    adc b
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld [c], a
    inc b
    inc a
    dec b
    ret nz

    ld d, [hl]
    push af
    ld d, [hl]
    nop
    nop
    xor d
    ld d, h
    ld h, [hl]
    ld b, a
    ld c, h
    inc d
    ld d, a
    ld d, h
    ld c, c
    sub c
    db $e3
    inc b
    inc a
    ld b, $5c
    ld d, a
    adc d
    ld d, a
    nop
    nop
    cp [hl]
    ld d, h
    ld h, [hl]
    ld b, a
    ld c, h
    xor b
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld a, [bc]
    ld e, b
    ld d, l
    ld sp, $0012
    add hl, bc
    dec d
    ld d, l
    ld sp, $04df
    ld [$54f3], sp
    ld sp, $04e0
    ld [$54f3], sp
    ld sp, $04e1
    ld [$54f3], sp
    ld sp, $04e2
    ld [$54f3], sp
    ld sp, $04e3
    ld [$54f3], sp
    inc bc
    dec b
    ld d, l
    inc [hl]
    ld h, e
    nop
    add hl, bc
    rst $38
    ld d, h
    ld c, h
    sub c
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    call nc, Call_026_5458
    ld c, c
    sub c
    ld c, h
    ld a, [de]
    ld e, c
    ld d, l
    sbc [hl]
    push af
    ld bc, $1233
    nop
    ld c, h
    sbc e
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    push de
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld a, [bc]
    ld e, d
    add h
    ld [hl], b
    nop
    ld d, h
    ld c, c
    sub c
    ld d, c
    inc h
    ld e, d
    ld d, c
    xor d
    ld e, d
    ld d, e
    ld a, c
    ld e, e
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
    xor e
    xor [hl]
    or l
    and h
    xor e
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld d, l
    or e
    and a
    and h
    xor h
    ld a, a
    xor b
    xor l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
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
    and h
    xor l
    xor c
    xor [hl]
    cp b
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and c
    xor [hl]
    or h
    or e
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
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
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
    adc b
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and e
    and b
    xor l
    and d
    and h
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc [hl]
    and l
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or d
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
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
    adc b
    ld a, a
    and b
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
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    sub c
    and a
    cp b
    or e
    and a
    xor h
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor h
    xor a
    xor [hl]
    or c
    db $e3
    ld c, a
    or e
    and b
    xor l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld d, c
    and e
    and b
    xor l
    and d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc b
    or d
    xor l
    push de
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and b
    or c
    or c
    and h
    or e
    or e
    and h
    ld c, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    and $51
    adc [hl]
    and a
    add sp, $7f
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $57
    nop
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
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    xor a
    or h
    or e
    ld a, a
    and b
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
    ld c, a
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and b
    or c
    db $e3
    ld d, l
    or c
    and h
    or e
    or e
    and h
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    xor h
    xor [hl]
    xor l
    or e
    and a
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    ld a, a
    and d
    or h
    or e
    and h
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $7f
    sub [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
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
    and $57
    nop
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
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    add sp, $57
    nop
    adc b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    db $f4
    ld c, a
    or d
    xor [hl]
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
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    and b
    ld a, a
    and d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $4f
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    add sp, $57
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
    xor h
    cp b
    ld c, a
    and e
    and b
    xor l
    and d
    xor b
    xor l
    and [hl]
    and $7f
    adc b
    jp nc, $a67f

    xor [hl]
    xor [hl]
    and e
    ld d, l
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc [hl]
    xor [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
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
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    and e
    and b
    xor l
    and d
    xor b
    xor l
    and [hl]
    ld c, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld d, c
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    add sp, $51
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor h
    cp b
    ld c, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    or d
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc l
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    sub d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld d, c
    and e
    and b
    xor l
    and d
    and h
    or c
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld c, a
    and b
    xor e
    or d
    xor [hl]
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
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
    ld c, a
    or e
    and a
    and h
    xor h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    sub $a4
    ld d, c
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    and b
    ld c, a
    or d
    and d
    or c
    and b
    or e
    and d
    and a
    ld [hl], l
    ld d, a
    nop
    adc e
    and b
    and e
    rst $20
    ld a, a
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and e
    and h
    and l
    and h
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld d, c
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
    sub d
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
    and [hl]
    xor b
    and l
    or e
    add sp, $57
    nop
    adc e
    and b
    or d
    or d
    xor b
    and h
    db $f4
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and e
    and h
    and l
    and h
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld d, c
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
    sub d
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
    and [hl]
    xor b
    and l
    or e
    add sp, $57
    nop
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
    db $e3
    ld c, a
    or e
    xor e
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    or [hl]
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    and e
    and b
    xor l
    and d
    and h
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and b
    or c
    and h
    ld c, a
    or e
    or c
    and h
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    rst $20
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
    add sp, $7f
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
    ld d, l
    db $e3
    db $e3
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    call nc, $927f
    sub h
    sub c
    add l
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor e
    and h
    or e
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    ld d, l
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    xor b
    or d
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
    or [hl]
    and h
    or c
    and h
    ld a, a
    and b
    or d
    ld a, a
    and h
    xor e
    and h
    and [hl]
    and b
    xor l
    or e
    ld a, a
    and b
    or d
    ld d, l
    or e
    and a
    and h
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
    sub d
    ld [hl], l
    ld d, a
    nop
    sub c
    add a
    sbc b
    add e
    adc [hl]
    adc l
    sbc h
    ld a, a
    add [hl]
    or h
    and [hl]
    xor [hl]
    xor [hl]
    and a
    ld c, a
    and [hl]
    or h
    and [hl]
    xor [hl]
    and [hl]
    xor [hl]
    xor [hl]
    and a
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    xor l
    call nc, $a07f
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and a
    xor b
    or d
    ld a, a
    sub c
    add a
    sbc b
    add e
    adc [hl]
    adc l
    add sp, $51
    sub d
    and b
    cp b
    or d
    ld a, a
    and a
    and h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    or d
    ld a, a
    and b
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
    ld a, a
    and d
    and b
    xor l
    ld d, l
    sub d
    sub h
    sub c
    add l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and e
    and b
    xor l
    and d
    and h
    add sp, $51
    adc b
    or d
    ld a, a
    and a
    and h
    ld a, a
    or e
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    or d
    cp b
    xor l
    and d
    and a
    or c
    xor [hl]
    db $e3
    ld d, l
    xor l
    xor b
    cp c
    and h
    and e
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sub e
    and a
    and h
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
    sub d
    ld c, a
    and b
    or c
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    and c
    and h
    and b
    or h
    or e
    xor b
    and l
    or h
    xor e
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
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
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or c
    xor b
    and [hl]
    xor [hl]
    or c
    db $e3
    ld d, l
    xor [hl]
    or h
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
    add sp, $51
    add b
    xor l
    and e
    ld a, a
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
    or e
    xor [hl]
    ld c, a
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor [hl]
    xor e
    xor e
    xor [hl]
    or [hl]
    ld d, c
    and d
    or h
    or d
    or e
    xor [hl]
    xor h
    or d
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and b
    xor a
    db $e3
    ld c, a
    xor a
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    xor a
    or h
    and c
    xor e
    xor b
    and d
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
    or l
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
    db $f4
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld d, l
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    xor a
    xor [hl]
    or d
    or d
    xor b
    and c
    xor e
    and h
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    and l
    and b
    xor l
    and d
    cp b
    ld a, a
    xor a
    and b
    xor l
    and h
    xor e
    ld c, a
    or e
    and a
    and b
    or e
    call nc, $a37f
    and h
    and d
    xor [hl]
    or c
    and b
    or e
    and h
    and e
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    dec c
    dec b
    ld [$0904], sp
    dec c
    ld b, $08
    inc b
    add hl, bc
    nop
    ld [bc], a
    ld b, $05
    ld bc, $552b
    ld b, $06
    ld bc, $552b
    add hl, bc
    dec a
    ld b, $04
    ld e, $00
    rst $38
    rst $38
    and d
    nop
    ld h, d
    ld d, h
    rst $38
    rst $38
    dec a
    dec b
    ld b, $0a
    nop
    rst $38
    rst $38
    sub d
    nop
    db $76
    ld d, h
    rst $38
    rst $38
    dec a
    ld b, $0a
    inc bc
    nop
    rst $38
    rst $38
    add d
    nop
    adc d
    ld d, h
    rst $38
    rst $38
    dec a
    dec b
    dec c
    ld a, [bc]
    nop
    rst $38
    rst $38
    sub d
    nop
    sbc [hl]
    ld d, h
    rst $38
    rst $38
    dec a
    ld b, $0f
    rra
    nop
    rst $38
    rst $38
    and d
    nop
    or d
    ld d, h
    rst $38
    rst $38
    ld b, b
    ld c, $0b
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    add $54
    rst $38
    rst $38
    sbc l
    inc c
    ld a, [bc]
    ld d, $00
    rst $38
    rst $38
    sub b
    nop
    dec de
    ld d, l
    rst $38
    rst $38
    inc hl
    ld c, $0e
    ld [$ff00], sp
    rst $38
    add b
    nop
    dec h
    ld d, l
    rst $38
    rst $38
    jr nc, jr_026_5c38

    rlca
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    jr z, jr_026_5c8c

    rst $38

jr_026_5c38:
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    ld c, $00
    ld c, c
    sub c
    ld d, c
    ld c, b
    ld e, h
    ld d, c
    push de
    ld e, h
    nop
    adc h
    cp b
    ld a, a
    add h
    add h
    sub l
    add h
    add h
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    ld a, a
    add h
    sub d
    adc a
    add h
    adc [hl]
    adc l
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    call nc, $844f
    add h
    sub l
    add h
    add h
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, l
    and b

jr_026_5c8c:
    xor l
    ld a, a
    sub h
    adc h
    add c
    sub c
    add h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    or [hl]
    and a
    cp b
    and $7f
    sub [hl]
    and h
    ld c, a
    and c
    xor [hl]
    or e
    and a
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
    ld d, c
    xor [hl]
    or h
    or c
    ld a, a
    add h
    add h
    sub l
    add h
    add h
    ld a, a
    xor b
    xor l
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
    or [hl]
    and b
    cp b
    ld [hl], l
    ld d, a
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
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    db $f4
    ld c, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a551
    and b
    xor b
    xor l
    or e
    and h
    and e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or [hl]
    and b
    xor d
    and h
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    add hl, bc
    inc b
    add hl, bc
    rlca
    inc bc
    add hl, bc
    inc b
    add hl, bc
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
    dec sp
    ld e, h
    rst $38
    rst $38
    dec hl
    ld b, $09
    dec b
    ld bc, $ffff
    and b
    nop
    ld b, d
    ld e, h
    rst $38
    rst $38
    jr nc, jr_026_5d48

    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, l
    ld e, h
    rst $38

jr_026_5d48:
    rst $38
    ld [bc], a
    ld d, e
    ld e, l
    nop
    nop
    ld d, a
    ld e, l
    nop
    nop
    nop
    adc l
    add $5d
    sub c
    sub c
    ld l, e
    ld b, a
    ld sp, $04c0
    add hl, bc
    adc h
    ld e, l
    ld c, h
    ld h, l
    ld e, [hl]
    ld d, h
    ld c, c
    ld h, h
    ld a, [bc]
    ld h, b
    nop
    nop
    ld e, [hl]
    inc b
    ld bc, $605f
    inc sp
    ret nz

    inc b
    ld b, a
    ld c, h
    ld b, e
    ld h, b
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $1e
    nop
    inc e
    rlca
    nop
    or a
    ld e, l
    ld [de], a
    inc b
    ld bc, $3301
    ld h, [hl]
    rlca
    inc sp
    ld h, a
    rlca
    ld sp, $000c
    add hl, bc
    or c
    ld e, l
    inc sp
    dec d
    inc b
    inc sp
    ld d, $04
    inc sp
    adc e
    dec b
    inc sp
    adc h
    dec b
    ld c, h
    ld e, c
    ld h, b
    ld d, l
    sbc [hl]
    sbc $01
    ld [$5db5], sp
    inc sp
    inc c
    nop
    ld c, h
    db $ec
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, l
    ld h, c
    ld d, h
    ld c, c
    sub c
    ld b, $07
    jp $065d


    ld b, $c0
    ld e, l
    sub c
    inc c
    ld [de], a
    nop
    inc c
    inc de
    nop
    ld l, c
    nop
    ld e, l
    ld e, [hl]
    ld l, c
    ld [$5e63], sp
    ld b, a
    ld c, h
    sbc h
    ld h, h
    ld d, h
    ld c, c
    ld [hl], b
    nop
    ld [$0069], sp
    ld e, a
    ld e, [hl]
    ld [hl], c
    rrca
    ld l, $00
    add l
    rra
    nop
    add [hl]
    inc a
    inc b
    add hl, bc
    ld b, $1b
    sub c
    dec d
    inc b
    jr c, jr_026_5df2

    cp l
    ld h, c
    dec a
    ld h, d
    nop

jr_026_5df2:
    nop
    push af
    ld e, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld h, e
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld d, $04
    jr c, jr_026_5e07

    ld a, [hl]
    ld h, d
    and a
    ld h, d
    nop
    nop

jr_026_5e07:
    add hl, bc
    ld e, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    or a
    ld h, d
    ld d, h
    ld c, c
    sub c
    adc e
    dec b
    add hl, sp
    ld bc, $62fb
    add hl, bc
    ld h, e
    nop
    nop
    dec e
    ld e, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    jr jr_026_5e85

    ld d, h
    ld c, c
    sub c
    adc h
    dec b
    add hl, sp
    ld [bc], a
    ld a, $63
    ld a, a
    ld h, e
    nop
    nop
    ld sp, $665e
    ld b, a
    ld c, h
    adc d
    ld h, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04c0
    add hl, bc
    ld b, a
    ld e, [hl]
    ld c, h
    add sp, $63
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld d, d
    ld h, h
    ld d, h
    ld c, c
    sub c
    inc [hl]
    ld e, $00
    add hl, bc
    ld d, [hl]
    ld e, [hl]
    inc c
    dec l
    nop
    ld b, e
    inc b
    ld bc, $0c01
    ld l, $00
    dec c
    ld b, a
    dec sp
    ld [$473a], sp
    ld [$0047], sp
    add [hl]
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
    and a
    and b
    or l
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    add sp, $51
    add a
    and h
    or c
    and h
    ld a, a

jr_026_5e85:
    xor b
    xor l
    ld a, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    db $f4
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
    and c
    and h
    and h
    xor l
    ld d, l
    or c
    and h
    or l
    and h
    or c
    and h
    and e
    add sp, $51
    adc b
    or e
    call nc, $b27f
    and b
    xor b
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    ld c, a
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
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
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
    ld d, c
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and b
    ld a, a
    or e
    or c
    or h
    xor e
    cp b
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $51
    adc b
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or e
    and b
    xor e
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    or d
    and h
    and d
    or c
    and h
    or e
    xor e
    cp b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    and e
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld a, a
    xor e
    xor b
    and l
    and h
    add sp, $51
    add b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and h
    or d
    or h
    xor e
    or e
    db $f4
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld c, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld d, l
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    and d
    and b
    xor l
    xor l
    xor [hl]
    or e
    add sp, $51
    adc c
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld [hl], l
    ld d, c
    sub [hl]
    xor b
    or e
    and a
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
    db $f4
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or d
    and h
    and h
    ld d, c
    and b
    ld a, a
    and l
    or h
    or e
    or h
    or c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld c, a
    adc b
    ld a, a
    xor h
    and h
    and h
    or e
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
    and a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    or c
    and h
    and b
    and d
    and a
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    xor e
    and h
    or l
    and h
    xor e
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    cp b
    and h
    or e
    ld [hl], l
    ld d, c
    add b
    xor e
    xor e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
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
    add l
    adc [hl]
    add [hl]
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    add c
    cp b
    ld a, a
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    add l
    adc [hl]
    add [hl]
    db $e3
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
    db $f4
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    xor a
    ld d, c
    or e
    xor [hl]
    ld a, a
    adc e
    ei
    or $7f
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    and c
    and h
    cp b
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $51
    add b
    xor e
    or d
    xor [hl]
    db $f4
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    sub d
    sub h
    sub c
    add l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
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
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    add sp, $51
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
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc b
    or e
    call nc, $927f
    add a
    add b
    add e
    adc [hl]
    sub [hl]
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $4f
    adc b
    or e
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld d, c
    and b
    xor l
    and e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    or c
    and h
    and e
    or h
    and d
    and h
    ld c, a
    sub d
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    xor e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc b
    ld a, a
    or d
    and h
    and h
    ld [hl], l
    ld d, c
    sbc b
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
    ld a, a
    and a
    and b
    or d
    ld c, a
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    and b
    or c
    db $e3
    ld d, l
    and b
    or [hl]
    and b
    cp b
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    add sp, $51
    add b
    xor l
    and e
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
    or [hl]
    xor b
    or e
    db $e3
    ld c, a
    xor l
    and h
    or d
    or d
    and h
    and e
    ld a, a
    xor h
    or h
    and d
    and a
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
    adc b
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
    and a
    and b
    or e
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    or d
    xor a
    and h
    xor l
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor a
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub e
    and a
    and h
    xor l
    ld a, a
    or d
    or h
    xor h
    xor h
    and h
    or c
    db $f4
    ld a, a
    and l
    and b
    xor e
    xor e
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    xor b
    xor l
    or e
    and h
    or c
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    xor l
    ld a, a
    or d
    xor a
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    xor e
    xor b
    or l
    and h
    and e
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
    and l
    xor [hl]
    or c
    ld a, a
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
    add sp, $57
    nop
    sub [hl]
    xor b
    xor l
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor [hl]
    or d
    or d
    and h
    or d
    db $f4
    ld a, a
    adc b
    ld c, a
    and h
    or a
    xor a
    and h
    or c
    xor b
    and h
    xor l
    and d
    and h
    and e
    ld a, a
    and c
    xor [hl]
    or e
    and a
    add sp, $57
    nop
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    and $57
    nop
    add d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    and l
    xor e
    xor b
    and d
    or e
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
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add b
    and a
    rst $20
    ld a, a
    sub [hl]
    and h
    xor e
    xor e
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    ldh [$b2], a
    ld a, a
    and l
    and h
    or [hl]
    ld a, a
    and [hl]
    and a
    xor [hl]
    or d
    or e
    db $e3
    ld c, a
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
    adc l
    xor [hl]
    ld a, a
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
    ld c, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    and b
    or c
    xor h
    ld d, l
    or e
    and a
    and h
    xor h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc b
    db $f4
    ld a, a
    adc b
    db $f4
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or [hl]
    and b
    xor l
    or e
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    db $e3
    db $e3
    or [hl]
    xor b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    sub d
    or e
    or h
    xor h
    xor a
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor b
    xor l
    db $e3
    ld c, a
    or l
    xor b
    or d
    xor b
    and c
    xor e
    and h
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    and $51
    add e
    and h
    and l
    and h
    and b
    or e
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
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    and b
    ld a, a
    and a
    xor b
    xor l
    or e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    db $e3
    or [hl]
    and a
    and b
    or e
    and $57
    nop
    add l
    xor b
    xor l
    and h
    add sp, $7f
    adc b
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
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
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    xor [hl]
    and l
    ld d, c
    or e
    and a
    and h
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
    ld c, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    xor a
    and b
    or e
    and a
    ld a, a
    xor b
    or d
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and h
    cp b
    and h
    or d
    rst $20
    ld d, a
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
    and a
    and h
    or c
    and h
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    xor h
    xor [hl]
    db $e3
    ld d, l
    or e
    xor b
    or l
    and h
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
    xor b
    xor l
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, c
    and e
    and h
    and h
    xor a
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    or [hl]
    db $f4
    ld a, a
    ld d, d
    add sp, $4f
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and d
    xor [hl]
    or [hl]
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    or c
    xor l
    and h
    or c
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor a
    or h
    or c
    and h
    ld a, a
    or e
    and h
    or c
    or c
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    adc h
    adc [hl]
    sub c
    sub e
    sbc b
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
    xor b
    or d
    ld a, a
    and b
    and c
    or d
    and h
    xor l
    or e
    add sp, $51
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
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    add sp, $51
    add a
    xor [hl]
    and a
    xor [hl]
    and a
    xor [hl]
    and a
    xor [hl]
    add sp, $57
    nop
    nop
    ld hl, $0411
    ld a, [bc]
    inc b
    add hl, bc
    ld de, $0a05
    inc b
    add hl, bc
    ld c, $04
    inc b
    inc b
    rlca
    ld [bc], a
    inc b
    inc bc
    inc b
    rlca
    ld bc, $0306
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    ld bc, $0305
    inc b
    rlca
    ld [$0303], sp
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc b
    rlca
    ld bc, $0303
    inc b
    rlca
    inc b
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    inc bc
    inc bc
    inc b
    rlca
    dec b
    dec b
    inc bc
    inc b
    rlca
    inc bc
    rlca
    inc bc
    inc b
    rlca
    nop
    ld b, $03
    inc b
    rlca
    ld [$0304], sp
    inc b
    rlca
    ld [$0305], sp
    inc b
    rlca
    ld a, [bc]
    ld b, $03
    inc b
    rlca
    inc bc
    dec b
    inc bc
    inc b
    rlca
    ld [$0302], sp
    inc b
    rlca
    add hl, bc
    ld [bc], a
    inc bc
    inc b
    rlca
    ld a, [bc]
    ld [bc], a
    inc bc
    inc b
    rlca
    dec bc
    ld [bc], a
    inc bc
    inc b
    rlca
    ld a, [bc]
    inc b
    inc bc
    inc b
    rlca
    ld a, [bc]
    dec b
    inc bc
    inc b
    rlca
    add hl, bc
    rlca
    inc bc
    inc b
    rlca
    inc c
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    dec b
    inc bc
    inc b
    rlca
    inc c
    dec b
    inc bc
    inc b
    rlca
    ld a, [bc]
    rlca
    inc bc
    inc b
    rlca
    ld b, $04
    inc bc
    inc b
    rlca
    inc c
    rlca
    inc bc
    inc b
    rlca
    dec c
    rlca
    inc bc
    inc b
    rlca
    nop
    ld [bc], a
    rrca
    inc bc
    nop
    ld c, l
    ld e, [hl]
    rrca
    ld b, $00
    ld c, l
    ld e, [hl]
    rlca
    dec d
    inc b
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    or b
    nop
    ld e, b
    ld e, l
    rst $38
    rst $38
    ld a, $0b
    ld b, $09
    nop
    rst $38
    rst $38
    sub d
    ld bc, $5de9
    rst $38
    rst $38
    ld a, $11
    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc bc
    db $fd
    ld e, l
    rst $38
    rst $38
    jr nc, jr_026_65d0

    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    or d
    ld bc, $5e11

jr_026_65d0:
    rst $38
    rst $38
    jr nc, jr_026_65df

    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    or d
    ld bc, $5e25
    rst $38
    rst $38

jr_026_65df:
    ld c, b
    inc de
    dec bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    add hl, sp
    ld e, [hl]
    rst $38
    rst $38
    cpl
    ld [de], a
    ld [$0006], sp
    rst $38
    rst $38
    and b
    nop
    rst $28
    ld h, $a8
    rlca
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $005a
    add hl, bc
    inc d
    ld h, [hl]
    ld c, h
    inc a
    ld h, [hl]
    ld c, [hl]
    ld [$661a], sp
    ld c, h
    or l
    ld h, [hl]
    ld d, l
    sbc [hl]
    scf
    ld bc, $5a33
    nop
    ld c, h
    ld c, $67
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec b
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld h, $68
    ld c, [hl]
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld c, c
    sub c
    ld c, h
    ld c, h
    ld l, b
    ld c, [hl]
    add hl, bc
    inc sp
    ld h, [hl]
    ld c, c
    sub c
    ld c, h
    ld [bc], a
    ld l, c
    ld d, h
    ld c, c
    sub c
    inc c
    inc c
    nop
    nop
    add b
    and a
    add sp, $7f
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
    xor l
    ld c, a
    and b
    and e
    or l
    and h
    xor l
    or e
    or h
    or c
    and h
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
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    call nc, $a07f
    xor l
    ld c, a
    and b
    and e
    or l
    and h
    xor l
    or e
    or h
    or c
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld d, l
    or e
    or c
    and h
    and b
    or d
    or h
    or c
    and h
    ld a, a
    and a
    or h
    xor l
    or e
    xor b
    xor l
    and [hl]
    and $51
    add b
    xor h
    ld a, a
    adc b
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    xor [hl]
    or c
    ld a, a
    and b
    xor h
    ld c, a
    adc b
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    db $e3
    ld c, a
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    or h
    and h
    ld d, c
    or d
    xor a
    xor b
    or c
    xor b
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    and e
    or l
    and h
    xor l
    db $e3
    ld c, a
    or e
    or h
    or c
    and h
    add sp, $51
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
    ld a, a
    sub e
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    xor b
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
    xor h
    and b
    xor l
    cp b
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    xor l
    push de
    ld a, a
    xor [hl]
    and c
    db $e3
    ld c, a
    or l
    xor b
    xor [hl]
    or h
    or d
    add sp, $51
    sub h
    or d
    and h
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
    or e
    xor [hl]
    ld c, a
    and d
    and a
    and h
    and d
    xor d
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld d, c
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor l
    and h
    and b
    or c
    ld a, a
    cp b
    xor [hl]
    or h
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
    and a
    xor [hl]
    or [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    and h
    or a
    and b
    and d
    or e
    ld a, a
    or d
    xor a
    xor [hl]
    or e
    db $f4
    ld d, c
    or d
    xor [hl]
    ld a, a
    cp b
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
    add sp, $51
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    and b
    and a
    db $e3
    db $e3
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
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld d, c
    xor b
    xor l
    ld a, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    call nc, $814f
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
    add sp, $57
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    sub e
    xor [hl]
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    and a
    xor b
    or d
    ld c, a
    xor [hl]
    or [hl]
    xor l
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    ld [hl], l
    ld d, a
    nop
    add a
    adc b
    sub d
    sub e
    adc [hl]
    sub c
    sbc b
    ld a, a
    adc [hl]
    add l
    ld c, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
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
    and h
    and b
    and e
    ld a, a
    xor b
    or e
    and $57
    nop
    adc b
    xor l
    ld a, a
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    add sp, $51
    add h
    and b
    and d
    and a
    ld a, a
    or e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    xor [hl]
    xor [hl]
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld d, l
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    and c
    or h
    or c
    xor l
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
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or d
    and h
    and h
    xor l
    ld d, l
    or d
    xor b
    xor l
    and d
    and h
    ld [hl], l
    ld d, c
    adc d
    and h
    and h
    xor a
    ld a, a
    or c
    and h
    and b
    and e
    xor b
    xor l
    and [hl]
    and $57
    nop
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    or c
    and h
    and h
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
    or c
    and b
    and d
    and h
    and e
    ld c, a
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
    or e
    xor [hl]
    or [hl]
    xor l
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
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    and c
    xor [hl]
    or c
    xor l
    ld a, a
    xor [hl]
    and l
    ld d, c
    or [hl]
    and b
    or e
    and h
    or c
    db $f4
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
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and l
    xor b
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
    cp b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld d, l
    and h
    or a
    and d
    and h
    or d
    or d
    xor b
    or l
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or d
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    or c
    and b
    xor l
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld d, c
    or [hl]
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
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
    xor e
    and b
    xor l
    and e
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    inc bc
    dec bc
    inc b
    add hl, bc
    rlca
    inc b
    dec bc
    inc b
    add hl, bc
    nop
    ld bc, $0201
    nop
    add hl, sp
    ld h, [hl]
    ld [bc], a
    inc hl
    rlca
    ld b, $06
    nop
    rst $38
    rst $38
    add b
    nop
    ei
    ld h, l
    rst $38
    rst $38
    ld d, l
    rlca
    rlca
    ld bc, $ff00
    rst $38
    nop
    nop
    jr nz, jr_026_6a88

    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    inc [hl]
    ld a, [hl+]
    nop
    add hl, bc
    ld d, c
    ld l, d
    ld c, h
    ld a, e
    ld l, d
    ld d, h
    ld c, c
    ld h, h
    xor [hl]
    ld l, e
    nop
    nop
    ld e, [hl]
    ld b, b
    ld bc, $605f
    inc sp
    call z, Call_026_4704
    ld c, h
    rrca
    ld l, h
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $2a
    nop
    ld c, h
    daa
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor e
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04cc
    add hl, bc
    ld h, l
    ld l, d
    ld c, h
    xor $6c
    ld d, h
    ld c, c
    sub c
    ld c, h
    and b
    ld l, l
    ld d, h
    ld c, c
    sub c
    inc [hl]
    ld a, [hl+]
    nop
    add hl, bc
    ld [hl], h
    ld l, d
    inc c
    dec l
    nop
    ld b, e
    ld b, b
    ld bc, $0c01
    ld l, $00
    nop
    add c
    adc e
    sub h
    add h
    sbc h
    ld a, a
    sbc b
    xor [hl]
    rst $20
    ld a, a
    add l
    xor b

jr_026_6a88:
    xor l
    and b
    xor e
    xor e
    cp b
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and a
    or h
    and a
    and $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    xor l
    push de
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
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld a, a
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    jp nc, $b17f

    and h
    and b
    and e
    cp b
    ld c, a
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
    cp b
    xor [hl]
    or h
    add sp, $51
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    and h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor l
    or b
    or h
    and h
    or c
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
    add [hl]
    sbc b
    adc h
    sub d
    ld a, a
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    and $51
    add a
    and h
    and a
    rst $20
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    call nc, $867f
    sbc b
    adc h
    sub d
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld d, l
    xor a
    and b
    or e
    and a
    and h
    or e
    xor b
    and d
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $51
    add a
    and h
    cp b
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    cp b
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    add sp, $51
    adc b
    pop de
    xor e
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
    and b
    or c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor [hl]
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and c
    cp b
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
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    sub c
    and h
    and b
    and e
    cp b
    db $f4
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld c, a
    add d
    add a
    add b
    adc h
    adc a
    and $57
    nop
    add c
    adc e
    sub h
    add h
    sbc h
    ld a, a
    sub [hl]
    and a
    and b
    or e
    and $51
    add a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    and h
    and d
    xor d
    ld a, a
    and e
    xor b
    and e
    ld a, a
    adc b
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    ld [hl], l
    ld d, c
    sub e
    and d
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
    ld c, a
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
    db $e3
    db $e3
    ld d, l
    xor b
    or e
    call nc, $847f
    add b
    sub c
    sub e
    add a
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
    add h
    add b
    sub c
    sub e
    add a
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    add c
    adc e
    sub h
    add h
    sbc h
    ld a, a
    ld [hl], l
    ld d, c
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
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $7f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    and a
    and h
    ld d, c
    or c
    and h
    and b
    xor e
    ld a, a
    and e
    and h
    and b
    xor e
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld c, a
    and b
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
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    jp nc, $a67f

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
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    and e
    and b
    cp b
    add sp, $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld c, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add c
    adc e
    sub h
    add h
    sbc h
    ld a, a
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ret nc

    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    adc b
    ld a, a
    and c
    and h
    and b
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    add sp, $7f
    add [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    or e
    and $57
    nop
    sbc b
    xor [hl]
    db $f4
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
    and $4f
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
    ld d, l
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    add sp, $51
    sub e
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
    ld a, a
    xor b
    or d
    ld c, a
    and b
    ld a, a
    and [hl]
    or h
    cp b
    ld a, a
    or [hl]
    and a
    xor [hl]
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
    and h
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld c, a
    cp b
    and h
    and b
    or c
    or d
    ld a, a
    and b
    and [hl]
    xor [hl]
    add sp, $51
    add a
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    xor a
    or h
    or d
    and a
    xor [hl]
    or l
    and h
    or c
    add sp, $51
    add [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
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
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    adc h
    and b
    xor l
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    or c
    or h
    xor e
    cp b
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld [hl], l
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
    and b
    ld a, a
    and a
    and h
    and d
    xor d
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    xor b
    xor l
    or d
    xor a
    xor b
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    and b
    xor e
    ld d, c
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    and c
    or c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld c, a
    or e
    and h
    and b
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    and h
    cp b
    and h
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    ld de, HeaderLogo
    rla
    inc bc
    ld de, $0105
    rla
    inc bc
    nop
    ld [bc], a
    dec c
    inc bc
    nop
    ld l, e
    ld l, d
    dec c
    ld b, $00
    ld l, e
    ld l, d
    ld [bc], a
    rlca
    rlca
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld h, $6a
    db $76
    rlca
    ld c, b
    ld de, $060b
    nop
    rst $38
    rst $38
    sub b
    nop
    ld d, a
    ld l, d
    db $76
    rlca
    nop
    nop
    ld d, c
    ld d, h
    ld l, [hl]
    ld d, c
    bit 5, [hl]
    ld b, a
    ld c, h
    cp $6e
    add h
    dec d
    nop
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    db $10
    ld l, a
    add h
    inc de
    nop
    ld d, h
    ld c, c
    sub c
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    or h
    or e
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld c, a
    xor [hl]
    and l
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
    xor l
    or e
    xor [hl]
    ld d, c
    xor l
    and b
    xor h
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
    and $51
    add [hl]
    xor b
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    or d
    ld a, a
    and b
    and e
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld d, c
    or e
    and a
    and h
    ld a, a
    and l
    or h
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    or c
    and b
    and e
    xor b
    xor l
    and [hl]
    ld c, a
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
    or d
    add sp, $57
    nop
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    sub d
    adc a
    add h
    add b
    sub c
    sbc b
    db $e3
    db $e3
    ld c, a
    and b
    ld a, a
    sub d
    adc a
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    db $e3
    db $e3
    and b
    xor l
    and e
    ld d, l
    sub c
    add b
    sub e
    sub e
    add h
    sbc b
    db $e3
    db $e3
    and b
    ld a, a
    sub c
    add b
    sub e
    sub e
    add b
    sub e
    add b
    add sp, $57
    nop
    sub d
    adc a
    add h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    add d
    and a
    db $e3
    and d
    and a
    or h
    xor l
    rst $20
    ld d, a
    nop
    sub c
    add b
    sub e
    sub e
    add h
    sbc b
    sbc h
    ld a, a
    adc d
    xor b
    xor d
    xor b
    xor b
    xor b
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rla
    inc bc
    rlca
    inc bc
    ld [bc], a
    rla
    inc bc
    nop
    nop
    inc b
    dec l
    ld [$0906], sp
    nop
    rst $38
    rst $38
    add b
    nop
    ld a, [hl-]
    ld l, [hl]
    rst $38
    rst $38
    jr z, jr_026_6f48

    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    dec a

jr_026_6f48:
    ld l, [hl]
    rst $38
    rst $38
    sbc [hl]
    ld b, $09
    ld d, $02
    rst $38
    rst $38
    or b
    nop
    ld b, b
    ld l, [hl]
    rst $38
    rst $38
    add d
    rlca
    ld a, [bc]
    ld d, $02
    rst $38
    rst $38
    sub b
    nop
    ld c, d
    ld l, [hl]
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld a, a
    ld l, a
    ld d, c
    dec h
    ld [hl], b
    ld d, c
    or l
    ld [hl], b
    ld d, c
    dec e
    ld [hl], c
    ld d, c
    ret


    ld [hl], c
    ld d, e
    db $f4
    ld [hl], c
    ld d, e
    ld e, l
    ld [hl], d
    ld d, e
    pop bc
    ld [hl], d
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
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ld c, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or [hl]
    and h
    or d
    or e
    ld d, c
    and b
    xor l
    and e
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    add sp, $51
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    or e
    xor [hl]
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
    xor [hl]
    xor l
    xor e
    cp b
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
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
    or d
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    ld d, c
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    or d
    or e
    and b
    xor b
    or c
    or d
    add sp, $57
    nop
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    xor [hl]
    or [hl]
    xor l
    ld a, a
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
    ld d, l
    adc b
    adc l
    add e
    adc b
    add [hl]
    adc [hl]
    ld a, a
    adc a
    adc e
    add b
    sub e
    add h
    add b
    sub h
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and c
    or h
    xor b
    xor e
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    or d
    xor [hl]
    ld d, c
    xor h
    and b
    xor l
    cp b
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
    xor a
    and b
    or d
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
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld d, c
    or [hl]
    and b
    cp b
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc b
    adc l
    add e
    adc b
    add [hl]
    adc [hl]
    ld c, a
    adc a
    adc e
    add b
    sub e
    add h
    add b
    sub h
    add sp, $57
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
    and h
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    or d
    or e
    and b
    xor b
    or c
    or d
    ld d, l
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and h
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    and b
    ld d, c
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
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
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $57
    nop
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
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    ld d, c
    or h
    xor l
    xor e
    and h
    or d
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, c
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor d
    xor b
    xor l
    and e
    or d
    ld c, a
    xor [hl]
    and l
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
    and h
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    adc a
    add b
    adc e
    adc e
    add h
    sub e
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, c
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor b
    or e
    xor b
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or e
    xor [hl]
    or [hl]
    xor l
    or d
    ld a, a
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
    sub [hl]
    and a
    and h
    or [hl]
    ld [hl], l
    ld a, a
    adc b
    jp nc, $b37f

    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    or c
    and h
    or d
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $57
    nop
    adc a
    or c
    and b
    and d
    or e
    xor b
    and d
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    and a
    and h
    xor e
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    sub e
    sub c
    add b
    adc b
    adc l
    adc b
    adc l
    add [hl]
    ld a, a
    add a
    add b
    adc e
    adc e
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    or d
    or e
    and b
    xor b
    or c
    or d
    add sp, $51
    sub d
    xor d
    xor b
    xor e
    xor e
    and h
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

Call_026_7240:
    ld c, a
    and b
    or c
    and h
    ld a, a
    xor b
    xor l
    or l
    xor b
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
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
    xor l
    xor [hl]
    ld a, a
    or c
    or h
    xor e
    and h
    or d
    ld c, a
    xor [hl]
    or c
    ld a, a
    or c
    and h
    and [hl]
    or h
    xor e
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
    and h
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    and h
    or d
    add sp, $4f
    adc c
    or h
    or d
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    xor b
    and h
    xor e
    and e
    ld d, c
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    db $f4
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
    and h
    or d
    rst $20
    ld d, a
    nop
    ld [hl], l
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    and $4f
    add b
    ld a, a
    or d
    or e
    or c
    and b
    or e
    and h
    and [hl]
    cp b
    ld a, a
    xor h
    and h
    xor h
    xor [hl]
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    or c
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc [hl]
    adc l
    adc b
    sub a
    ld a, a
    or e
    or c
    and b
    and d
    xor d
    or d
    ld [hl], l
    ld d, c
    adc b
    or e
    call nc, $a27f
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    xor e
    cp b
    ld c, a
    xor b
    xor e
    xor e
    and h
    and [hl]
    xor b
    and c
    xor e
    and h
    ld [hl], l
    ld d, a
    nop
    nop
    inc bc
    dec c
    ld [bc], a
    inc bc
    rla
    inc bc
    dec c
    inc bc
    inc bc
    rla
    inc bc
    ld [bc], a
    ld [$1701], sp
    rlca
    nop
    inc bc
    nop
    dec b
    nop
    db $76
    ld l, a
    nop
    rlca
    nop
    ld a, c
    ld l, a
    ld a, [bc]
    rlca
    nop
    ld a, h
    ld l, a
    dec b
    ld b, d
    rrca
    inc b
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld h, a
    ld l, a
    rst $38
    rst $38
    inc hl
    rrca
    dec bc
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    ld l, d
    ld l, a
    rst $38
    rst $38
    inc h
    ld b, $0a
    ld b, $02
    rst $38
    rst $38
    add b
    nop
    ld l, l
    ld l, a
    rst $38
    rst $38
    daa
    inc c
    ld [$0205], sp
    rst $38
    rst $38
    add b
    nop
    ld [hl], b
    ld l, a
    rst $38
    rst $38
    ld b, b
    ld [$0906], sp
    nop
    rst $38
    rst $38
    nop
    nop
    ld [hl], e
    ld l, a
    rst $38
    rst $38
    ld bc, $738a
    nop
    nop
    nop
    sub c
    halt
    ld bc, $3447
    ld d, a
    nop
    add hl, bc
    rst $30
    ld [hl], e
    ld c, h
    jr nz, jr_026_740c

    ld d, l
    rrca
    ld h, a
    nop
    ld [$73a6], sp
    ld b, e
    inc c
    ld [bc], a
    nop
    inc bc
    xor d
    ld [hl], e
    ld b, e
    inc c
    inc bc
    nop
    ld c, h
    ld l, d
    ld [hl], h
    ld d, l
    ld c, h
    add a
    ld [hl], h
    ld c, [hl]
    ld [$73ed], sp
    ld [hl], $57
    nop
    ld c, h
    and d
    ld [hl], h
    ld d, h
    ld c, c
    ld l, c
    nop
    ld bc, $4774
    ld c, h
    add a
    ld [hl], l
    ld d, h
    ld c, c
    rrca
    ld h, a
    nop
    ld [$73dc], sp
    ld h, h
    ld a, b
    ld [hl], l
    nop
    nop
    ld l, b
    inc bc
    ld e, [hl]
    inc c
    ld [bc], a
    ld e, a
    ld h, b
    ld [$73e8], sp
    ld h, h
    ld a, b
    ld [hl], l
    nop
    nop
    ld l, b
    inc bc
    ld e, [hl]
    inc c
    inc bc
    ld e, a
    ld h, b
    ld l, c
    nop
    rrca
    ld [hl], h
    sub c
    ld c, h
    sub $74
    ld d, h
    ld c, c
    ld l, c
    nop
    dec e
    ld [hl], h
    sub c
    ld c, h
    dec e
    ld [hl], l
    ld d, h
    ld c, c
    ld l, c
    nop
    dec e
    ld [hl], h
    sub c
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c

jr_026_740c:
    ld c, $03
    ld b, a
    dec c
    dec c
    dec c
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    rrca
    rrca
    ld b, a
    rrca
    ld [bc], a
    ld b, a
    nop
    add a
    xor b
    add sp, $7f
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
    sub e
    sub c
    add b
    adc b
    adc l
    adc b
    adc l
    add [hl]
    ld a, a
    add a
    add b
    adc e
    adc e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and b
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    xor a
    and h
    or c
    ld d, l
    and e
    and b
    cp b
    add sp, $57
    ld bc, $d099
    nop
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
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
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    and [hl]
    xor b
    xor l
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
    add sp, $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    add sp, $7f
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
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
    or [hl]
    and a
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, c
    and c
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
    ld a, a
    and b
    or c
    and h
    ld c, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor b
    xor l
    add sp, $57
    nop
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    add sp, $4f
    sub e
    and a
    xor b
    or d
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
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $4f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor a
    and h
    or c
    xor h
    xor b
    or e
    or e
    and h
    and e
    ld d, c
    or e
    xor [hl]
    ld a, a
    and h
    xor l
    or e
    and h
    or c
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    ld c, a
    and b
    ld a, a
    and e
    and b
    cp b
    add sp, $57
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld c, a
    add e
    and b
    or c
    xor l
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld d, l
    and d
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
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    nop
    ld bc, $0904
    inc bc
    rla
    ld b, $01
    nop
    inc bc
    rlca
    nop
    adc e
    ld [hl], e
    nop
    nop
    nop
    ld [bc], a
    ld b, d
    dec b
    dec bc
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    rst $28
    ld h, $ff
    rst $38
    ld bc, $0a0f
    ld [$ff00], sp
    rst $38
    add b
    nop
    rst $28
    ld h, $ff
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    ld [de], a
    nop
    ld c, c
    sub c
    ld d, c
    db $f4
    ld [hl], l
    ld d, c
    ld a, [de]
    halt
    sub e
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
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld d, l
    and d
    xor [hl]
    xor [hl]
    xor e
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
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    and $51
    adc b
    or e
    call nc, $a07f
    xor l
    ld a, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and b
    cp b
    ld c, a
    or d
    xor [hl]
    or h
    or e
    and a
    ld a, a

Call_026_764e:
    xor [hl]
    and l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    rla
    inc bc
    rlca
    inc bc
    inc b
    rla
    inc bc
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
    rst $20
    ld [hl], l
    rst $38
    rst $38
    jr z, jr_026_767c

    dec bc
    dec b
    ld [bc], a
    rst $38
    rst $38
    nop

jr_026_767c:
    nop
    xor $75
    rst $38
    rst $38
    inc hl
    ld a, [bc]
    dec b
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    pop af
    ld [hl], l
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0775
    add hl, bc
    and c
    db $76
    ld c, h
    xor l
    db $76
    ld d, h
    ld c, c
    sub c
    ld c, h
    push af
    db $76
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld l, e
    ld [hl], a
    ld d, c
    ret z

    ld [hl], a
    nop
    sub [hl]
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
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    call nc, $867f
    sbc b
    adc h
    ld d, c
    adc e
    add h
    add b
    add e
    add h
    sub c
    and $7f
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld c, a
    or e
    xor [hl]
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
    ld a, a
    and a
    xor b
    xor h
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
    xor l
    xor [hl]
    ld a, a
    add [hl]
    sbc b
    adc h
    ld c, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    sub d
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld a, a
    and d
    xor e
    and b
    xor b
    xor h
    or d
    ld c, a
    and a
    xor b
    or d
    ld a, a
    xor a
    xor [hl]
    xor e
    xor b
    and d
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld d, c
    or [hl]
    xor b
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    xor e
    xor b
    xor l
    and [hl]
    or d
    add sp, $57
    nop
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
    ld a, a
    xor b
    or d
    ld d, l
    and [hl]
    xor [hl]
    xor l
    and h
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and c
    and h
    db $e3
    ld c, a
    and d
    and b
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    add c
    adc e
    add b
    adc b
    adc l
    add h
    db $f4
    ld d, l
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
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    db $e3
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
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
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    dec b
    rla
    inc bc
    rlca
    inc b
    dec b
    rla
    inc bc
    rlca
    nop
    ld bc, $0114
    nop
    nop
    inc b
    scf
    dec b
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    sub b
    db $76
    rst $38
    rst $38
    inc hl
    ld [$050c], sp
    ld bc, $ffff
    add b
    nop
    sub e
    db $76
    rst $38
    rst $38
    inc h
    rlca
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    and a
    db $76
    rst $38
    rst $38
    dec h
    ld a, [bc]
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    xor d
    db $76
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0007
    inc bc
    rla
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $00c8
    add hl, bc
    ld e, h
    ld a, b
    ld c, h
    ld h, l
    ld a, b
    ld d, l
    sbc [hl]
    inc h
    ld bc, $6008
    ld a, b
    inc sp
    ret z

    nop
    ld c, h
    push hl
    ld a, b
    ld d, h
    ld c, c
    sub c
    inc c
    ld bc, $0000
    add a
    xor b
    rst $20
    ld a, a
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    adc b
    jp nc, $a67f

    xor e
    and b
    and e
    ld c, a
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
    add sp, $51
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
    and l
    xor b
    or c
    or d
    or e
    ld c, a
    or l
    xor b
    or d
    xor b
    or e
    xor [hl]
    or c
    ld a, a
    adc b
    sub $a4
    ld a, a
    and a
    and b
    and e
    ld d, l
    xor b
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
    xor b
    xor h
    and h
    add sp, $51
    adc b
    jp nc, $b27f

    or h
    xor a
    and h
    or c
    db $e3
    and a
    and b
    xor a
    xor a
    cp b
    rst $20
    ld c, a
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
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
    and b
    ld d, l
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    xor a
    or c
    and h
    or d
    and h
    xor l
    or e
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    adc l
    sub h
    add [hl]
    add [hl]
    add h
    sub e
    add sp, $51
    adc b
    ld a, a
    and d
    and b
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
    and b
    xor l
    cp b
    ld a, a
    xor l
    or h
    and [hl]
    and [hl]
    and h
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld d, c
    or [hl]
    xor b
    or d
    and e
    xor [hl]
    xor h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or e
    and a
    and b
    or e
    pop de
    xor e
    ld c, a
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
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $0117
    rlca
    inc bc
    ld bc, $0117
    nop
    nop
    ld bc, $083a
    ld b, $04
    jr nz, @+$01

    rst $38
    sub b
    nop
    ld b, a
    ld a, b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld d, l
    ld a, c
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    inc d
    and $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and b
    or d
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    adc [hl]
    add b
    adc d
    call nc, $807f
    adc b
    add e
    add h
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor b
    and e
    and h
    and b
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
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    call nc, $8b7f
    add b
    add c
    ld a, a
    xor b
    or d
    ld c, a
    xor l
    and h
    and b
    or c
    and c
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    adc a
    add b
    adc e
    adc e
    add h
    sub e
    ld d, l
    sub e
    adc [hl]
    sub [hl]
    adc l
    add sp, $57
    nop
    nop
    inc b
    nop
    inc b
    inc bc
    rla
    ld bc, $0500
    inc b
    rla
    ld bc, $0407
    ld [bc], a
    rla
    ld bc, $0507
    ld [bc], a
    rla
    ld bc, $0000
    ld bc, $083c
    ld a, [bc]
    inc b
    jr nz, @+$01

    rst $38
    sub b
    nop
    ld d, d
    ld a, c
    rst $38
    rst $38
    ld [bc], a
    ei
    ld a, c
    nop
    nop
    db $fc
    ld a, c
    nop
    nop
    nop
    sub c
    sub c
    halt
    ld [bc], a
    inc bc
    inc b
    ld a, d
    ld l, e
    ld b, a
    ld c, h
    add hl, hl
    ld a, d
    ld d, l
    inc e
    rlca
    ld a, [bc]
    rlca
    add hl, de
    ld a, d
    ld c, h
    ld e, a
    ld a, d
    ld d, h
    ld c, c
    ld l, c
    nop
    daa
    ld a, d
    sub c
    ld c, h
    or h
    ld a, d
    ld d, h
    ld c, c
    inc d
    ld bc, $5191
    pop af
    ld a, d
    ld d, c
    scf
    ld a, e
    inc c
    ld b, a
    nop
    adc [hl]
    xor l
    xor e
    cp b
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
    or [hl]
    and a
    xor [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    xor h
    db $e3
    ld d, l
    or d
    and h
    xor e
    or l
    and h
    or d
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor a
    and b
    or d
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
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld a, a
    xor [hl]
    and l
    ld d, l
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    add sp, $51
    adc b
    jp nc, $b27f

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
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    and h
    xor b
    and [hl]
    and a
    or e
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld a, a
    xor [hl]
    and l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    rst $20
    ld d, c
    adc a
    xor e
    and h
    and b
    or d
    and h
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    xor e
    and h
    and b
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc h
    sub e
    add sp, -$6e
    adc b
    adc e
    sub l
    add h
    sub c
    add sp, $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    or d
    and h
    and h
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    db $e3
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
    ld a, a
    xor [hl]
    or h
    or e
    ld d, l
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc [hl]
    and l
    and l
    ld a, a
    or e
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
    ld c, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    db $f4
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    sub e
    and a
    and h
    ld a, a
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    ld a, a
    and b
    or c
    and h
    ld c, a
    or d
    xor [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    call nc, $b251
    and d
    and b
    or c
    cp b
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
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
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    nop
    ld [$1107], sp
    ld bc, $0217
    rlca
    ld [de], a
    ld bc, $0217
    ld de, $0109
    jr @+$03

    ld de, $010a
    jr jr_026_7bb3

    nop

jr_026_7bb3:
    add hl, bc
    ld bc, $5b03
    nop
    ld a, [bc]
    ld bc, $5b03
    rlca
    ld bc, $1302
    ld bc, $0207
    ld [bc], a
    inc de
    ld bc, $0001
    dec bc
    ld a, [bc]
    nop
    db $fd
    ld a, c
    nop
    nop
    nop
    inc bc
    ld b, e
    rrca
    inc c
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    inc bc
    ld a, d
    rst $38
    rst $38
    ld b, c
    add hl, bc
    dec bc
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld hl, $4f7a
    rlca
    ld b, c
    add hl, bc
    db $10
    ld [$ff00], sp
    rst $38
    nop
    nop
    inc h
    ld a, d
    ld d, b
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
