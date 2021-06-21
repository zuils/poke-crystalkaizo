; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $062", ROMX[$4000], BANK[$62]

    nop
    nop
    ld d, c
    dec b
    ld b, b
    nop
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
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
    adc d
    add b
    adc l
    sub e
    adc [hl]
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
    and $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $1107
    rlca
    inc bc
    ld bc, $1107
    nop
    nop
    ld bc, $072d
    ld b, $09
    nop
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    ld b, b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld e, d
    ld b, b
    ld d, c
    jp Jump_062_4740


    ld c, h
    rst $20
    ld b, b
    add h
    ld [hl-], a
    nop
    ld d, h
    ld c, c
    sub c
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
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    or d
    and a
    and b
    and e
    cp b
    ld a, a
    and d
    and a
    and b
    or c
    and b
    and d
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld d, l
    or d
    xor d
    or h
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor b
    or e
    ld a, a
    xor b
    and l
    ld a, a
    and a
    and h
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld d, l
    or e
    xor [hl]
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
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and a
    and h
    xor e
    and e
    ld a, a
    or h
    xor a
    ld a, a
    and c
    cp b
    ld c, a
    or c
    xor [hl]
    and c
    and c
    and h
    or c
    or d
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, $57
    nop
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    sbc h
    ld a, a
    add e
    or h
    and [hl]
    ld a, a
    and e
    or h
    and [hl]
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    ld de, $0307
    ld [bc], a
    rlca
    ld de, $0000
    inc bc
    dec sp
    dec b
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    ld c, d
    ld b, b
    rst $38
    rst $38
    ld l, $08
    add hl, bc
    ld [$ff00], sp
    rst $38
    sub b
    nop
    ld c, l
    ld b, b
    rst $38
    rst $38
    adc h
    add hl, bc
    rlca
    ld d, $00
    rst $38
    rst $38
    or b
    nop
    ld d, b
    ld b, b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld c, l
    ld b, c
    ld d, c
    adc d
    ld b, c
    ld b, a
    ld c, h
    sbc h
    ld b, c
    add h
    ld [hl], e
    nop
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    or l
    ld b, c
    add h
    add hl, hl
    nop
    ld d, h
    ld c, c
    sub c
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
    xor b
    or l
    and h
    or d
    ld c, a
    and a
    and b
    xor a
    xor a
    xor b
    xor e
    cp b
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and h
    ld a, a
    and [hl]
    xor [hl]
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
    or e
    or c
    and b
    and e
    and h
    or d
    add sp, $57
    nop
    add b
    and a
    ld [hl], l
    ld a, a
    adc b
    jp nc, $b27f

    xor [hl]
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    ld [hl], l
    ld d, a
    nop
    adc d
    add b
    adc l
    add [hl]
    add b
    sub d
    adc d
    add a
    add b
    adc l
    sbc h
    ld a, a
    add [hl]
    and b
    or c
    or h
    ld c, a
    and [hl]
    and b
    or c
    or h
    or h
    add sp, $57
    nop
    sbc c
    sub h
    add c
    add b
    sub e
    sbc h
    ld a, a
    sbc c
    or h
    and c
    and b
    ld a, a
    cp c
    or h
    and c
    and b
    and b
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    rlca
    ld de, $0307
    inc bc
    rlca
    ld de, $0000
    inc b
    jr nc, jr_062_41e3

    ld b, $09
    nop
    rst $38
    rst $38
    sub b
    nop
    inc sp

jr_062_41e3:
    ld b, c
    rst $38
    rst $38
    cpl
    ld b, $05
    ld [bc], a
    nop
    rst $38
    rst $38
    and b
    nop
    ld [hl], $41
    rst $38
    rst $38
    sbc l
    ld b, $09
    ld d, $00
    rst $38
    rst $38
    or b
    nop
    add hl, sp
    ld b, c
    rst $38
    rst $38
    add a
    ld a, [bc]
    add hl, bc
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    ld b, e
    ld b, c
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    rrca
    and b
    nop
    add hl, bc
    dec de
    ld b, d
    ld d, c
    ld hl, $5142
    adc h
    ld b, d
    ld d, c
    rst $38
    ld b, d
    nop
    add l
    xor [hl]
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
    adc b
    ret nc

    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    or c
    and b
    or e
    and a
    and h
    or c
    ld a, a
    or h
    or d
    and h
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    or c
    and b
    xor b
    or d
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
    xor b
    and l
    ld d, c
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
    and h
    or c
    ld c, a
    or e
    and a
    and b
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor l
    and h
    or [hl]
    xor e
    cp b
    ld d, l
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add e
    xor [hl]
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
    ld a, a
    and c
    cp b
    ld c, a
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
    and $51
    adc b
    and l
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or c
    or h
    xor l
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
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
    ld d, c
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
    or d
    and h
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld c, a
    or [hl]
    xor [hl]
    xor l
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
    xor l
    and h
    or c
    or l
    and h
    ld a, a
    or [hl]
    or c
    and b
    and d
    xor d
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld c, a
    or e
    or c
    and b
    or l
    and h
    xor e
    or d
    ld a, a
    and b
    or e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, c
    ld sp, hl
    ld a, [$7ff6]
    xor h
    xor a
    and a
    add sp, $7f
    adc b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld c, a
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, c
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    xor l
    xor [hl]
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    add sp, $51
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
    xor d
    and h
    or d
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    and b
    and d
    and d
    and h
    or d
    or d
    xor b
    and c
    xor e
    and h
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    inc b
    rlca
    ld de, $0407
    inc b
    rlca
    ld de, $0007
    ld bc, $0114
    nop
    nop
    inc bc
    scf
    dec b
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    rrca
    ld b, d
    rst $38
    rst $38
    dec hl
    ld [$050c], sp
    ld bc, $ffff
    nop
    nop
    ld [de], a
    ld b, d
    rst $38
    rst $38
    ld c, b
    add hl, bc
    dec b
    ld [bc], a
    ld de, $ffff
    and b
    nop
    ld e, $42
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0007
    ld bc, $0407
    nop
    nop
    nop
    ld [bc], a
    reti


    ld b, e
    nop
    nop
    jp c, $0043

    nop
    nop
    sub c
    adc l
    sbc $43
    sub c
    ld l, c
    ld [bc], a
    db $e3
    ld b, h
    add l
    ld b, c
    nop
    ld l, c
    ld [bc], a
    db $eb
    ld b, h
    ld a, a
    add hl, sp
    nop
    ld b, a
    ld c, h
    ei
    ld b, h
    ld d, h
    ld c, c
    ld [hl], l
    nop
    ld [bc], a
    rrca
    ld l, c
    ld [bc], a
    rst $30
    ld b, h
    ld b, a
    ld c, h
    ld [hl], h
    ld b, l
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    push af
    ld b, h
    ld b, a
    ld c, h
    and l
    ld b, l
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    add sp, $44
    add l
    inc hl
    nop
    ld l, [hl]
    ld [bc], a
    inc sp
    rlc b
    ld [hl-], a
    ld l, h
    rlca
    ld [hl-], a
    ld l, [hl]
    rlca
    inc d
    nop
    ld [de], a
    rlca
    db $10
    ld bc, $0712
    ld a, [bc]
    nop
    add [hl]
    rrca
    dec a
    nop
    adc e
    rrca
    halt
    nop
    adc e
    rrca
    sub c
    ld l, e
    ld b, a
    inc [hl]
    inc h
    nop
    add hl, bc
    ld h, b
    ld b, h
    ld c, h
    ld [hl], h
    ld b, [hl]
    ld d, h
    ld c, c
    ld h, h
    inc c
    ld b, a
    nop
    nop
    ld e, [hl]
    ld [de], a
    ld bc, $605f
    inc sp
    add $04
    inc sp
    ld sp, hl
    inc bc
    inc sp
    ld a, [$3303]
    xor b
    dec b
    ld b, a
    ld c, h
    ld l, b
    ld b, a
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $24
    nop
    ld c, h
    add d
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld sp, hl
    inc bc
    daa
    ld [de], a
    ld a, [bc]
    ld c, b
    jr c, jr_062_44b6

    nop
    nop
    ld [hl], d
    ld b, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, [hl]
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld a, [$2703]
    inc de
    ld [hl], b
    ld c, b
    sbc a
    ld c, b
    nop
    nop
    add [hl]
    ld b, h
    ld h, [hl]
    ld b, a
    ld c, h
    ret nz

    ld c, b
    ld d, h
    ld c, c
    sub c
    xor b
    dec b
    ld h, $15
    ld [de], a
    ld c, c
    inc [hl]
    ld c, c
    nop
    nop
    sbc d
    ld b, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld b, e
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04c6
    add hl, bc
    or b
    ld b, h
    ld c, h
    and a
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, [$5449]
    ld c, c
    sub c

jr_062_44b6:
    ei
    nop
    add b
    ld sp, $076f
    ld [$44d3], sp
    ld b, a
    ld c, h
    db $10
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld sp, $076f
    ld [$44d3], sp
    ld b, a
    ld c, h
    ld b, d
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    inc [hl]
    inc h
    nop
    add hl, bc
    call c, $0c44
    dec l
    nop
    ld b, e
    ld [de], a
    ld bc, $0c01
    ld l, $00
    db $10
    db $10
    db $10
    db $10
    ld b, a
    inc de
    db $10
    ld b, a
    dec sp
    add hl, sp
    ld sp, $3a38
    ld b, l
    ld b, l
    inc c
    inc c
    ld b, a
    db $10
    ld b, a
    dec sp
    add hl, bc
    ld a, [hl-]
    ld b, a
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld a, a
    adc b
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and a
    or h
    or c
    or e
    db $f4
    ld d, l
    xor [hl]
    xor d
    and b
    cp b
    and $51
    adc b
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    and c
    or h
    or d
    cp b
    add sp, $4f
    adc l
    xor [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and b
    xor e
    xor d
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    adc l
    xor [hl]
    or e
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
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
    ld d, l
    or d
    and h
    and h
    xor l
    ld a, a
    and c
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    and c
    xor [hl]
    and e
    cp b
    add sp, $57
    nop
    adc [hl]
    and a
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    xor l
    ld c, a
    xor h
    and h
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    rst $20
    ld a, a
    adc b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld d, l
    and c
    xor b
    and [hl]
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    rst $20
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
    add l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    xor [hl]
    xor d
    and b
    cp b
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    db $f4
    ld a, a
    and a
    and h
    and b
    or c
    db $f4
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld d, c
    xor [hl]
    xor d
    and b
    cp b
    and $4f
    add c
    cp b
    and h
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld a, a
    adc l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    add c
    cp b
    and h
    db $e3
    and c
    cp b
    and h
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    db $e3
    and [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
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
    add sp, $55
    adc h
    adc b
    sub d
    sub e
    sbc b
    db $f4
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
    ld d, a
    nop
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc h
    adc b
    sub d
    sub e
    sbc b
    call nc, $ae7f
    or h
    or e
    db $f4
    ld c, a
    or [hl]
    and h
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $55
    add [hl]
    sbc b
    adc h
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    sub d
    ld d, a
    nop
    adc h
    adc b
    sub d
    sub e
    sbc b
    sbc h
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and h
    or a
    db $e3
    ld c, a
    xor a
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    xor a
    and h
    or d
    or e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, c
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ret nc

    ld c, a
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
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld d, l
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    xor e
    cp b
    add sp, $51
    adc h
    cp b
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    db $e3
    or e
    cp b
    xor a
    and h
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
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    adc h
    adc b
    sub d
    sub e
    sbc b
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and b
    or c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld [hl], l
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    and b
    and e
    xor h
    xor b
    or e
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
    and b
    or c
    and h
    ld a, a

Jump_062_4740:
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld [hl], l
    ld d, c
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
    add sp, $7f
    adc b
    or e
    call nc, $824f
    add b
    sub d
    add d
    add b
    add e
    add h
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
    add d
    add b
    sub d
    add d
    add b
    add e
    add h
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    adc h
    adc b
    sub d
    sub e
    sbc b
    sbc h
    ld a, a
    add b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
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
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    db $e3
    ld d, l
    and h
    or c
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    and $7f
    adc e
    xor b
    xor d
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    adc b
    ld a, a
    xor h
    and h
    and b
    xor l
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
    ld c, a
    or e
    or c
    and b
    or l
    and h
    xor e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and e
    and b
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, c
    adc b
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
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    or d
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
    add sp, $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
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
    ld c, a
    and b
    or [hl]
    and b
    cp b
    add sp, $7f
    adc e
    and h
    or e
    call nc, $a67f
    and h
    or e
    ld a, a
    xor [hl]
    xor l
    ld d, l
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
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld c, a
    or b
    or h
    xor b
    and h
    or e
    xor e
    cp b
    add sp, $57
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    and h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and h
    xor e
    and h
    db $e3
    ld c, a
    and [hl]
    and b
    xor l
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor l
    db $e3
    ld d, l
    xor l
    and h
    or c
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
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
    ld a, a
    and d
    and b
    xor e
    xor h
    xor e
    cp b
    ld c, a
    and e
    xor b
    or d
    xor a
    xor [hl]
    or d
    and h
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    and h
    ld [hl], l
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
    or d
    xor h
    or h
    and [hl]
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
    add sp, $51
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and e
    and h
    or d
    or e
    or c
    xor [hl]
    cp b
    ld c, a
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
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and b
    and d
    and h
    xor l
    or e
    add sp, $57
    nop
    add [hl]
    xor e
    or h
    and c
    ld [hl], l
    ld d, c
    adc b
    jp nc, $a57f

    xor b
    or c
    or d
    or e
    rst $20
    ld a, a
    add d
    xor [hl]
    xor h
    and h
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld [hl], l
    ld d, a
    nop
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld a, a
    and a
    and b
    or d
    ld a, a
    and [hl]
    xor [hl]
    or e
    or e
    and h
    xor l
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor a
    and b
    or d
    or e
    ld a, a
    and l
    and h
    or [hl]
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    add sp, $51
    add e
    xor [hl]
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
    or c
    ld c, a
    and [hl]
    or h
    and b
    or c
    and e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    db $f4
    ld a, a
    xor [hl]
    or c
    ld d, l
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
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
    rst $20
    ld d, a
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
    ld d, c
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    or h
    xor l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $4f
    add a
    and h
    db $e3
    and a
    and h
    db $e3
    and a
    and h
    add sp, $57
    nop
    add a
    xor [hl]
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    xor h
    and h
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    add sp, $51
    add b
    or d
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and h
    and d
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld d, l
    and [hl]
    or c
    and h
    and b
    or e
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
    nop
    ld [bc], a
    rrca
    inc b
    dec b
    rlca
    ld de, $050f
    dec b
    rlca
    ld de, $0300
    ld b, $06
    rlca
    or [hl]
    ld b, h
    dec c
    ld [bc], a
    nop
    cp c
    ld b, h
    dec c
    ld b, $00
    add $44
    ld b, $35
    ld c, $08
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $6d
    rlca
    dec e
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    ld [hl-], a
    ld b, h
    ld l, a
    rlca
    ld [hl-], a
    ld [$0907], sp
    nop
    rst $38
    rst $38
    and d
    inc bc
    ld h, [hl]
    ld b, h
    ld l, a
    rlca
    ld [hl-], a
    ld [$080a], sp
    nop
    rst $38
    rst $38
    and d
    ld bc, $447a
    ld l, a
    rlca
    ld sp, $0713
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    adc [hl]
    ld b, h
    ld l, a
    rlca
    ld c, b
    ld de, $060b
    nop
    rst $38
    rst $38
    sub b
    nop
    and d
    ld b, h
    ld l, a
    rlca
    nop
    nop
    ld b, a
    sub h
    nop
    inc d
    nop
    ld c, c
    sub c
    ld d, c
    call Call_062_514a
    ld b, [hl]
    ld c, e
    nop
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    or c
    or h
    xor l
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
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
    xor [hl]
    xor l
    ld d, c
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    add d
    add h
    sub c
    sub h
    db $e3
    ld c, a
    adc e
    add h
    add b
    adc l
    call nc, $827f
    add b
    adc a
    add h
    add sp, $51
    sub e
    and a
    and h
    cp b
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
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or d
    or e
    and b
    and d
    xor d
    ld d, c
    or h
    xor a
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
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
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld a, a
    xor b
    or d
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
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld a, a
    xor b
    xor l
    ld d, c
    or e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
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
    or d
    ld a, a
    and b
    or e
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
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $07
    ld de, $0307
    ld b, $07
    ld de, $0000
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
    ret nz

    ld c, d
    rst $38
    rst $38
    inc hl
    ld a, [bc]
    dec b
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    rst $00
    ld c, d
    rst $38
    rst $38
    inc h
    ld b, $0b
    dec b
    ld [bc], a
    rst $38
    rst $38
    add b
    nop
    jp z, $ff4a

    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld d, c
    pop af
    ld c, e
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    add sp, $4b
    ld c, h
    ld h, $4c
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc [hl]
    ld c, h
    ld d, h
    ld c, c
    sub c
    ld d, c
    inc c
    ld c, l
    nop
    add b
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
    xor l
    and h
    and b
    or c
    ld a, a
    and b
    ld a, a
    and d
    and b
    or l
    and h
    and $51
    sub e
    and a
    and b
    or e
    call nc, $ac7f
    xor b
    and [hl]
    and a
    or e
    cp b
    ld c, a
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
    add sp, $57
    nop
    sub e
    and a
    and h
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
    call nc, $8c4f
    add b
    adc l
    add b
    add [hl]
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or d
    or e
    or c
    xor [hl]
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
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $51
    add a
    and h
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    and a
    and h
    xor e
    xor a
    ld c, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
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
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    or e
    xor [hl]
    xor e
    and h
    xor l
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    and h
    and b
    or c
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
    and [hl]
    xor [hl]
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    ld d, c
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    and c
    or h
    or e
    ld a, a
    and l
    and h
    xor e
    xor e
    ld c, a
    and b
    xor a
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
    add sp, $51
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld c, a
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
    and b
    or e
    add sp, $57
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
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    db $e3
    ld c, a
    or d
    xor b
    and e
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    and h
    ld d, c
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    and l
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld c, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    adc a
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
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    ld bc, $0e07
    rlca
    inc b
    ld bc, $0e07
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
    call nc, $ff4b
    rst $38
    ld b, b
    ld a, [bc]
    dec bc
    dec b
    ld bc, $ffff
    add b
    nop
    rst $10
    ld c, e
    rst $38
    rst $38
    ld c, b
    ld b, $0b
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    jp c, $ff4b

    rst $38
    inc h
    rlca
    dec b
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    xor $4b
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0007
    inc bc
    rlca
    ld [$0000], sp
    nop
    ld [bc], a
    jp $004d


    nop
    call nz, $004d
    nop
    nop
    sub c
    sub c
    add l
    ld l, d
    nop
    ld [hl], l
    nop
    ld [bc], a
    rrca
    add [hl]
    adc e
    ld e, $69
    ld [bc], a
    push de
    ld c, [hl]
    db $76
    inc bc
    nop
    db $76
    inc b
    nop
    ld b, a
    ld c, h
    ld [hl+], a
    ld c, a
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    ld [bc], a
    halt
    inc bc
    ld b, a
    ld c, h
    ld a, a
    ld c, a
    ld d, h
    ld c, c
    halt
    nop
    ld l, c
    ld [bc], a
    jp c, $144e

    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    rrca
    ld c, [hl]
    ld sp, $00ca
    add hl, bc
    add hl, bc
    ld c, [hl]
    ld c, h
    ldh [$4e], a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, a
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    and d
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    inc hl
    ld c, [hl]
    ld c, h
    rst $08
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    jr c, jr_062_4e76

    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    scf
    ld c, [hl]
    ld c, h
    ld a, c
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    rst $28
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    ld c, e
    ld c, [hl]
    ld c, h
    ld c, $51
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, a
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    ld e, a
    ld c, [hl]
    ld c, h
    jp nz, Jump_062_5451

    ld c, c
    sub c
    ld c, h
    dec h
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    xor h
    ld c, [hl]
    ld hl, $0980
    sub e
    ld c, [hl]
    ld sp, $00ca
    add hl, bc

jr_062_4e76:
    adc l
    ld c, [hl]
    ld c, h
    ld h, h
    ld d, d
    ld d, h
    ld c, c
    inc sp
    jp z, $3200

    ld l, l
    rlca
    ld [hl-], a
    ei
    nop
    ld [de], a
    rlca
    ld b, $01
    inc d
    ld bc, $4c91
    ld [$5453], sp
    ld c, c
    sub c
    ld c, h
    ld l, [hl]
    ld d, e
    ld d, l
    jr nz, @-$7e

    ld bc, $c933
    nop
    ld [hl-], a
    ld [hl], d
    rlca
    inc sp
    ld [hl], c
    rlca
    inc sp
    ld l, h
    rlca
    inc sp
    call $3200
    ld c, c
    rlca
    ld sp, $00df
    add hl, bc
    push bc
    ld c, [hl]
    ld c, h
    call nz, Call_062_5553
    sbc [hl]
    add $01
    ld [$4ec3], sp
    inc sp
    rst $18
    nop
    ld c, h
    db $f4
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], l
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    sub [hl]
    ld b, $54
    ld c, c
    sub c
    inc c
    ld bc, $0f00
    rrca
    dec c
    dec c
    ld b, a
    inc c
    inc c
    ld c, $0e
    nop
    ld b, a
    nop
    add b
    ld a, a
    or e
    and a
    xor b
    and h
    and l
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
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
    ld [hl], l
    ld d, c
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
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
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
    xor [hl]
    and $57
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    add sp, $51
    adc b
    or e
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
    and a
    and b
    or e
    ld a, a
    and b
    ld c, a
    or d
    and a
    and b
    and e
    cp b
    ld a, a
    and d
    and a
    and b
    or c
    and b
    and d
    or e
    and h
    or c
    ld d, c
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    xor e
    xor [hl]
    xor b
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
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
    and b
    or d
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
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
    and $57
    nop
    sub [hl]
    and h
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
    and c
    and h
    and h
    and l
    ld c, a
    or h
    xor a
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    or d
    and h
    and d
    or h
    or c
    xor b
    or e
    cp b
    ld d, l
    xor a
    or c
    and h
    or d
    and h
    xor l
    and d
    and h
    add sp, $57
    nop
    sub d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a451
    or d
    or d
    and h
    xor l
    or e
    xor b
    and b
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld c, a
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor [hl]
    or c
    add sp, $51
    sub [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor [hl]
    or c
    call nc, $b455
    or d
    and h
    xor e
    and h
    or d
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor [hl]
    or c
    call nc, $b47f
    xor a
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    or e
    call nc, $ac51
    and b
    xor d
    xor b
    xor l
    and [hl]
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    xor a
    and b
    or c
    and h
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
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
    ld c, a
    and a
    and b
    and e
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    and b
    and c
    and b
    xor l
    and e
    xor [hl]
    xor l
    and h
    and e
    ld d, l
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
    sub [hl]
    and h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or h
    xor a
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, c
    xor a
    or c
    xor [hl]
    or l
    xor b
    and e
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
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor [hl]
    or c
    call nc, $b14f
    or h
    xor l
    xor l
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
    sub e
    and a
    and h
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
    call nc, $8c4f
    add b
    adc l
    add b
    add [hl]
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    or h
    xor a
    ld d, l
    and b
    and a
    and h
    and b
    and e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld c, a
    or [hl]
    or c
    and h

Call_062_514a:
    and d
    xor d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or c
    db $e3
    ld d, l
    and b
    or e
    xor [hl]
    or c
    db $f4
    ld a, a
    and a
    and h
    call nc, $a17f
    and h
    and h
    xor l
    ld d, l
    and c
    xor [hl]
    or e
    and a
    ld a, a
    or d
    and b
    and e
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and l
    or h
    or c
    xor b
    xor [hl]
    or h
    or d
    ld [hl], l
    ld d, a
    nop
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or c
    db $e3
    ld c, a
    and b
    or e
    xor [hl]
    or c
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    and l
    xor b
    or a
    and h
    and e
    db $f4
    ld d, c
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    adc l
    add b
    add [hl]
    add h
    sub c
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
    and d
    and a
    and h
    and h
    or c
    and l
    or h
    xor e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld c, a
    and d
    xor [hl]
    xor l
    or d
    or h
    xor h
    and h
    or d
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
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
    add sp, $51
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    xor b
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor [hl]
    or c
    ld d, l
    xor b
    or d
    xor l
    push de
    ld a, a
    xor [hl]
    xor a
    and h
    or c
    and b
    or e
    xor b
    xor l
    and [hl]
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
    rst $20
    ld a, a
    sub [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld c, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $57
    nop
    adc h
    add b
    adc l
    add b
    add [hl]
    add h
    sub c
    sbc h
    ld a, a
    adc b
    db $f4
    ld a, a
    adc b
    db $f4
    ld a, a
    adc b
    jp nc, $b14f

    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    xor e
    and b
    or d
    or e
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    rst $20
    ld d, c
    sub [hl]
    and a
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and e
    and b
    or c
    and h
    ld c, a
    or c
    or h
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor [hl]
    or c
    and $51
    adc b
    ld a, a
    or d
    xor a
    and h
    xor l
    or e
    ld a, a
    or d
    xor [hl]
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
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and a
    xor b
    xor h
    db $f4
    ld c, a
    and a
    and h
    call nc, $a67f
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
    ld d, c
    and b
    ld a, a
    or e
    and b
    or d
    or e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    sbc c
    add b
    adc a
    ld c, a
    add d
    add b
    adc l
    adc l
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc h
    add b
    adc l
    add b
    add [hl]
    add h
    sub c
    sbc h
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld c, a
    and l
    xor [hl]
    or c
    and [hl]
    xor b
    or l
    and h
    ld a, a
    and a
    xor b
    xor h
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and d
    or h
    xor e
    xor a
    or c
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and d
    or c
    cp b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    xor a
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    xor b
    cp c
    and h
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld c, a
    and a
    and b
    xor h
    xor h
    and h
    or c
    ld a, a
    and a
    xor b
    xor h
    rst $20
    ld d, c
    add [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    and a
    rst $20
    ld d, a
    nop
    adc h
    add b
    adc l
    add b
    add [hl]
    add h
    sub c
    sbc h
    ld a, a
    add b
    and a
    rst $20
    ld a, a
    sbc b
    and h
    and b
    and a
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    xor h
    xor b
    or d
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    adc a
    add b
    sub c
    sub e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    db $e3
    ld d, l
    xor e
    xor [hl]
    or l
    and h
    and e
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor [hl]
    or c
    rst $20
    ld d, l
    sbc b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    or e
    and $57
    nop
    sub [hl]
    and b
    and a
    and b
    and a
    rst $20
    ld a, a
    sub e
    and a
    and b
    xor l
    xor d
    or d
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    rst $20
    ld a, a
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
    sub e
    adc h
    ld c, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and h
    or [hl]
    and b
    or c
    and e
    rst $20
    ld d, a
    nop
    adc h
    add b
    adc l
    add b
    add [hl]
    add h
    sub c
    sbc h
    ld a, a
    sub e
    adc h
    or $fd
    ld a, a
    xor b
    or d
    ld c, a
    xor h
    cp b
    ld a, a
    sbc c
    add b
    adc a
    ld a, a
    add d
    add b
    adc l
    adc l
    adc [hl]
    adc l
    add sp, $51
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
    or e
    and h
    and d
    and a
    xor l
    xor b
    or b
    or h
    and h
    rst $20
    ld d, c
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and d
    xor [hl]
    xor l
    or d

Call_062_544f:
    xor b
    and e

Jump_062_5451:
    and h
    or c
    ld d, c
    and b
    and d
    and d
    or h
    or c
    and b
    or e
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld c, a
    xor a
    and b
    and d
    xor d

Jump_062_5469:
    or d
    ld a, a
    and b
    ld a, a
    or [hl]
    and b
    xor e
    xor e
    xor [hl]
    xor a
    rst $20
    ld d, a
    nop
    adc h
    add b
    adc l
    add b
    add [hl]
    add h
    sub c
    sbc h
    ld a, a
    adc h
    cp b
    ld a, a
    and c
    and h
    db $e3
    ld c, a
    xor e
    xor [hl]
    or l
    and h
    and e
    ld a, a
    and [hl]
    and h
    xor l
    and h
    or c
    and b
    or e
    xor [hl]
    or c
    rst $20
    ld d, c
    adc d
    and h
    and h
    xor a
    ld a, a
    xor a
    or h
    xor h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    ld de, $0202
    rlca
    ld c, $11
    inc bc
    ld [bc], a
    rlca
    ld c, $01
    ld bc, $050c
    nop
    push bc
    ld c, l
    nop
    nop
    ld [bc], a
    ld bc, $0000
    jp nc, HeaderGlobalChecksum

    ld bc, $d200
    ld c, [hl]
    rlca
    ld b, e
    ld [de], a
    ld [$0006], sp
    rst $38
    rst $38
    and b
    nop
    push af
    ld c, l
    rst $38
    rst $38
    ld c, b
    dec c
    ld b, $03
    nop
    rst $38
    rst $38
    sub b
    nop
    dec d
    ld c, [hl]
    rst $38
    rst $38
    ld c, b
    rrca
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    add hl, hl
    ld c, [hl]
    rst $38
    rst $38
    ld b, e
    rlca
    dec c
    ld [$ff00], sp
    rst $38
    and b
    nop
    dec a
    ld c, [hl]
    rst $38
    rst $38
    ld c, b
    ld b, $0b
    dec b
    ld bc, $ffff
    sub b
    nop
    ld d, c
    ld c, [hl]
    rst $38
    rst $38
    ld a, [hl-]
    ld c, $12
    rlca
    nop
    rst $38
    rst $38
    add b
    nop
    ld h, l
    ld c, [hl]
    rst $38
    rst $38
    ld c, b
    add hl, bc
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    bit 1, [hl]
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0000
    add hl, bc
    cp d
    ld d, [hl]
    ld sp, $0324
    add hl, bc
    ret nz

    ld d, [hl]
    ld sp, $031a
    add hl, bc
    ld d, e
    ld d, l
    ld c, h
    adc $56
    ld d, l
    inc sp
    ld a, [de]
    inc bc

Call_062_5553:
    ld sp, $031f
    add hl, bc
    sub a
    ld d, [hl]
    ld sp, $031e
    add hl, bc
    add b
    ld d, [hl]
    ld sp, $031d
    add hl, bc
    ld l, c
    ld d, [hl]
    ld sp, $031c
    add hl, bc
    ld d, d
    ld d, [hl]
    ld sp, $031b
    add hl, bc
    dec sp
    ld d, [hl]
    ld c, h
    ret nz

    ld e, b
    ld d, l
    ld c, h
    ld [hl-], a
    ld d, a
    ld c, [hl]
    ld [$56aa], sp
    nop
    and l
    ld d, [hl]
    rrca
    ld c, l
    nop
    ld [$56aa], sp
    rlca
    ld l, h
    add $56
    nop
    or b
    ld d, [hl]
    inc sp
    dec de
    inc bc
    inc bc
    dec sp
    ld d, [hl]
    ld c, h
    rst $38
    ld e, b
    ld d, l
    ld c, h
    ld [hl-], a
    ld d, a
    ld c, [hl]
    ld [$56aa], sp
    nop
    and l
    ld d, [hl]
    rrca
    ld c, l
    nop
    ld [$56aa], sp
    rlca
    dec hl
    add $56
    nop
    or b
    ld d, [hl]
    inc sp
    inc e
    inc bc
    inc bc
    ld d, d
    ld d, [hl]
    ld c, h
    ld d, e
    ld e, c
    ld d, l
    ld c, h
    ld [hl-], a
    ld d, a
    ld c, [hl]
    ld [$56aa], sp
    nop
    and l
    ld d, [hl]
    rrca
    ld c, l
    nop
    ld [$56aa], sp
    rlca
    ld a, b
    add $56
    nop
    or b
    ld d, [hl]
    inc sp
    dec e
    inc bc
    inc bc
    ld l, c
    ld d, [hl]
    jr jr_062_55df

    ld sp, hl
    ld d, l
    ld c, h
    cp $59
    ld d, l
    ld c, h
    ld [hl-], a
    ld d, a

jr_062_55df:
    ld c, [hl]
    ld [$56aa], sp
    nop
    and l
    ld d, [hl]
    rrca
    ld c, l
    nop
    ld [$56aa], sp
    rlca
    ld a, [hl-]
    add $56
    nop
    or b
    ld d, [hl]
    inc sp
    ld e, $03
    inc bc
    add b
    ld d, [hl]
    ld c, h
    ld d, a
    ld e, d
    ld d, l
    ld c, h
    ld [hl-], a
    ld d, a
    ld c, [hl]
    ld [$56aa], sp
    nop
    and l
    ld d, [hl]
    rrca
    ld c, l
    nop
    ld [$56aa], sp
    rlca
    dec h
    add $56
    nop
    or b
    ld d, [hl]
    inc sp
    ld e, $03
    inc bc
    add b
    ld d, [hl]
    ld c, h
    or c
    ld e, d
    ld d, l
    ld c, h
    ld [hl-], a
    ld d, a
    ld c, [hl]
    ld [$56aa], sp
    nop
    and l
    ld d, [hl]
    rrca
    ld c, l
    nop
    ld [$56aa], sp
    rlca
    xor h
    add $56
    nop
    or b
    ld d, [hl]
    inc sp
    rra
    inc bc
    inc bc
    sub a
    ld d, [hl]
    ld sp, $0320
    add hl, bc
    sub d
    ld d, l
    nop
    or l
    ld d, [hl]
    sbc [hl]
    ld [hl], b
    ld bc, $cc08
    ld d, [hl]
    inc sp
    jr nz, jr_062_5650

    inc sp
    nop
    nop

jr_062_5650:
    ld c, c
    sub c
    ld sp, $0321
    add hl, bc
    or e
    ld d, l
    nop
    or l
    ld d, [hl]
    sbc [hl]
    ld [hl+], a
    ld bc, $cc08
    ld d, [hl]
    inc sp
    ld hl, $3303
    nop
    nop
    ld c, c
    sub c
    ld sp, $0322
    add hl, bc
    call nc, $0055
    or l
    ld d, [hl]
    sbc [hl]
    jr @+$03

    ld [$56cc], sp
    inc sp
    ld [hl+], a
    inc bc
    inc sp
    nop
    nop
    ld c, c
    sub c
    ld sp, $0323
    add hl, bc
    ld a, [de]
    ld d, [hl]
    nop
    or l
    ld d, [hl]
    sbc [hl]
    ld d, $01
    ld [$56cc], sp
    inc sp
    inc hl
    inc bc
    inc sp
    nop
    nop
    ld c, c
    sub c
    nop
    or l
    ld d, [hl]
    sbc [hl]
    rla
    ld bc, $cc08
    ld d, [hl]
    inc sp
    inc h
    inc bc
    ld c, c
    sub c
    ld c, h
    ld h, b
    ld d, a
    ld d, l
    sub c
    ld c, h
    add h
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    and [hl]
    ld d, a
    ld d, l
    sub c
    ld c, h
    pop hl
    ld d, a
    ld d, l
    sub c
    ld c, h
    ld c, $58
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, [hl+]
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    sub c
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld c, c
    sub c
    nop
    add a
    xor h
    and $7f
    sbc b
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
    call nc, $ac7f
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    or d
    xor [hl]
    xor l
    add sp, $51
    add a
    and h
    call nc, $a87f
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    add sp, $7f
    add a
    and h
    ld c, a
    and e
    xor [hl]
    and h
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
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    adc a
    add d
    or d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    jp nc, $a74f

    xor [hl]
    or h
    or d
    and h
    db $e3
    or d
    xor b
    or e
    or e
    xor b
    xor l
    and [hl]
    add sp, $57
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
    xor h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld d, l
    xor b
    or e
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    and $57
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
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    and $4f
    add a
    xor [hl]
    or [hl]
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
    xor b
    or e
    and $4f
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
    ld d, a
    nop
    add b
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld c, a
    ld d, b
    ld bc, $d099
    nop
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
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld d, l
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
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
    and b
    ld a, a
    or e
    xor [hl]
    xor d
    and h
    xor l
    ld a, a
    xor [hl]
    and l
    ld c, a
    xor h
    cp b
    ld a, a
    and b
    xor a
    xor a
    or c
    and h
    and d
    xor b
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
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
    or d
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    and d
    or h
    or e
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and h
    xor l
    xor c
    xor [hl]
    cp b
    and h
    and e
    ld c, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    add sp, $7f
    adc b
    jp nc, $a67f

    xor e
    and b
    and e
    ld d, c
    adc b
    sub $a4
    ld a, a
    xor e
    xor b
    or l
    and h
    and e
    ld a, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor e
    xor b
    and l
    and h
    add sp, $57
    nop
    add a
    xor h
    and $51
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
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    or d
    xor [hl]
    xor l
    ld a, a
    add c
    adc b
    adc e
    adc e
    ld c, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
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
    and a
    and b
    or d
    ld a, a
    and b
    ld c, a
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
    add sp, $57
    nop
    add b
    and a
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    or d
    xor [hl]
    xor l
    ld c, a
    xor h
    and h
    xor l
    or e
    xor b
    xor [hl]
    xor l
    and h
    and e
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    or h
    xor l
    and e
    db $f4
    ld d, c
    and [hl]
    or c
    and h
    and h
    xor l
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
    and a
    and b
    or d
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    or d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld d, l
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    add sp, $57
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
    xor [hl]
    and l
    ld a, a
    and b
    ld c, a
    or d
    and h
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
    ld d, c
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and h
    and e
    ld a, a
    or d
    xor a
    and a
    and h
    or c
    and h
    ld c, a
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
    and $51
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
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    or e
    and a
    and b
    or e
    call nc, $b27f
    and a
    and b
    xor a
    and h
    and e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    and b
    ld a, a
    or d
    or e
    and b
    or c
    and $51
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
    xor b
    or e
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
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
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or d
    or h
    or c
    and h
    xor e
    cp b
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add c
    adc b
    adc e
    adc e
    ld a, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
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
    ld a, a
    xor b
    or d
    ld d, c
    or l
    and h
    or c
    cp b
    ld a, a
    xor e
    xor [hl]
    cp b
    and b
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    or d
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $51
    adc b
    or e
    call nc, $b27f
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    sub c
    adc [hl]
    add b
    sub c
    ld a, a
    or [hl]
    and h
    xor e
    xor e
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
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld c, a
    and d
    or h
    or e
    and h
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
    ld d, l
    and a
    and b
    or d
    ld a, a
    or d
    xor b
    or a
    ld a, a
    or e
    and b
    xor b
    xor e
    or d
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
    and a
    or h
    and [hl]
    ld a, a
    and b
    ld a, a
    and d
    or h
    or e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    and b
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
    and a
    or h
    and [hl]
    and h
    xor e
    cp b
    ld a, a
    xor a
    xor [hl]
    xor a
    or h
    xor e
    and b
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    sub e
    and a
    and h
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
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    cp b
    and h
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld d, l
    and b
    xor l
    and e
    ld a, a
    or c
    and h
    and e
    ld a, a
    and d
    and a
    and h
    and h
    xor d
    or d
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
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld d, c
    xor e
    xor b
    xor d
    and h
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    or e
    ld c, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $1007
    rlca
    inc bc
    ld bc, $1007
    nop
    nop
    ld bc, $072f
    ld b, $07
    jr nz, @+$01

    rst $38
    sub b
    nop
    jr c, jr_062_5bb2

    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld l, h
    ld e, e
    ld d, e
    ret nz

    ld e, e
    ld d, e
    ldh [$5b], a
    ld [hl], a
    ld bc, $8700
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld d, c
    adc d
    add b
    sub c
    add b
    sub e
    add h
    ld a, a
    adc d
    adc b
    adc l
    add [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, a
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld a, a
    add e
    adc [hl]
    adc c
    adc [hl]
    call nc, $ac51
    and b
    or d
    or e
    and h
    or c
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, a
    and d
    and b
    or l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a

jr_062_5bb2:
    and l
    xor [hl]
    or c
    ld d, l
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
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    or d
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
    add h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld c, a
    or d
    xor b
    and e
    and h
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    dec bc
    inc b
    ld bc, $0219
    dec bc
    dec b
    ld bc, $0219
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld h, h
    ld e, e
    nop
    dec b
    nop
    ld h, a
    ld e, e
    ld [bc], a
    ld b, c
    ld [$0608], sp
    nop
    rst $38
    rst $38
    sub b
    nop
    ld h, c
    ld e, e
    rst $38
    rst $38
    nop
    dec b
    rlca
    ld bc, $ff00
    rst $38
    ld bc, $6a00
    ld e, e
    ld a, l
    rlca
    nop
    nop
    ld l, e
    ld b, a
    inc [hl]
    jr z, jr_062_5c33

jr_062_5c33:
    add hl, bc
    ld h, l
    ld e, h
    ld c, h
    rst $18
    ld e, h
    ld d, h
    ld c, c
    ld h, h
    db $f4
    ld e, l
    nop
    nop
    ld e, [hl]
    inc hl
    ld bc, $605f
    inc sp
    jp z, $3304

    sub b
    dec b
    inc sp
    sub c
    dec b
    inc sp
    dec sp
    inc b
    inc sp
    ld b, h
    inc b
    ld b, a
    ld c, h
    sub l
    ld e, [hl]
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $28
    nop
    ld c, h
    xor l
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, h
    ld e, a
    ld d, h
    ld c, c
    sub c
    sub b
    dec b
    add hl, sp
    ld b, $e9
    ld e, a
    dec de
    ld h, b
    nop
    nop
    ld [hl], a
    ld e, h
    ld h, [hl]
    ld b, a
    ld c, h
    inc [hl]
    ld h, b
    ld d, h
    ld c, c
    sub c
    dec sp
    inc b
    inc [hl]
    ld [bc], a
    ld d, a
    ld h, b
    add c
    ld h, b
    nop
    nop
    adc e
    ld e, h
    ld h, [hl]
    ld b, a
    ld c, h
    and [hl]
    ld h, b
    ld d, h
    ld c, c
    sub c
    sub c
    dec b
    add hl, sp
    rlca
    db $dd
    ld h, b
    inc d
    ld h, c
    nop
    nop
    sbc a
    ld e, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld [hl], $61
    ld d, h
    ld c, c
    sub c
    ld b, h
    inc b
    inc [hl]
    dec bc
    ld l, h
    ld h, c
    and d
    ld h, c
    nop
    nop
    or e
    ld e, h
    ld h, [hl]
    ld b, a
    ld c, h
    or e
    ld h, c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04ca
    add hl, bc
    ret


    ld e, h
    ld c, h
    ld bc, $5462
    ld c, c
    sub c
    ld c, h
    and b
    ld h, d
    ld d, h
    ld c, c
    sub c
    inc [hl]
    jr z, jr_062_5cd2

jr_062_5cd2:
    add hl, bc
    ret c

    ld e, h
    inc c
    dec l
    nop
    ld b, e
    inc hl
    ld bc, $0c01
    ld l, $00
    nop
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    sbc h
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
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
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    sub e
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
    ld a, a
    and b
    and [hl]
    xor [hl]
    ld a, a
    adc b
    ld c, a
    and a
    and b
    and e
    ld a, a
    and b
    ld a, a
    or l
    xor b
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    or c
    or c
    xor b
    or l
    and b
    xor e
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor h
    cp b
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
    ld a, a
    and c
    and b
    or e
    db $e3
    ld c, a
    or e
    xor e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $ac7f
    cp b
    ld d, c
    and e
    or h
    or e
    cp b
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    and h
    or c
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld d, c
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and a
    and b
    or d
    ld c, a
    xor a
    or c
    xor [hl]
    or l
    and h
    xor l
    ld a, a
    and a
    xor b
    xor h
    db $e3
    ld a, a
    xor [hl]
    or c
    ld d, l
    and a
    and h
    or c
    or d
    and h
    xor e
    and l
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    cp b
    add sp, $51
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    xor b
    or e
    db $f4
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
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
    xor h
    cp b
    ld d, l
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    and l
    and b
    or c
    ld a, a
    and h
    or a
    and d
    and h
    and h
    and e
    or d
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or d
    and b
    or [hl]
    ld [hl], l
    ld d, c
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
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
    ld a, a
    and l
    or h
    xor e
    xor e
    cp b
    ld d, c
    xor a
    or c
    and h
    and e
    xor b
    and d
    or e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    and l
    or h
    or e
    or h
    or c
    and h
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    or d
    ld [hl], l
    ld d, c
    adc [hl]
    adc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor l
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
    ld d, l
    adc h
    add b
    sub c
    sub d
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
    adc h
    add b
    sub c
    sub d
    add a
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    sbc h
    ld a, a
    adc h
    add b
    sub c
    sub d
    add a
    db $e3
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
    ld a, a
    and e
    or c
    and b
    or [hl]
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    or h
    and c
    xor e
    xor b
    xor h
    xor b
    xor l
    and b
    xor e
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld [hl], l
    ld d, c
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    adc b
    ld a, a
    and l
    and b
    xor b
    xor e
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    and d
    and d
    or h
    or c
    and b
    or e
    and h
    xor e
    cp b
    ld a, a
    xor a
    or c
    and h
    db $e3
    ld d, l
    and e
    xor b
    and d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    db $f4
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld d, l
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or e
    or c
    or h
    and h
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
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    ld c, a
    and d
    and h
    xor e
    and h
    and c
    or c
    and b
    or e
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and c
    and h
    xor e
    xor [hl]
    or l
    and h
    and e
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    xor e
    xor [hl]
    or l
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    xor [hl]
    or l
    and h
    or c
    or [hl]
    and a
    and h
    xor e
    xor h
    and h
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    db $f4
    ld c, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and b
    ld d, c
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    and h
    and e
    ld d, l
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
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
    ld [hl], l
    ld c, a
    add l
    and b
    or c
    ld a, a
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
    ld [hl], l
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
    and h
    ld a, a
    or d
    xor [hl]
    or h
    or c
    and d
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
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and $57
    nop
    adc a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor b
    or d
    ld c, a
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
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    or d
    xor [hl]
    or h
    xor e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    ld a, a
    and a
    and b
    or d
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
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor h
    xor b
    xor l
    and h
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    xor [hl]
    or h
    xor e
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
    xor l
    xor [hl]
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and b
    and c
    xor b
    xor e
    xor b
    or e
    xor b
    and h
    or d
    add sp, $57
    nop
    add l
    or h
    and l
    or h
    and l
    or h
    and l
    or h
    ld [hl], l
    ld c, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor e
    and h
    and b
    or c
    xor e
    cp b
    add sp, $51
    adc b
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
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    adc b
    ld a, a
    or c
    and h
    and b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld c, a
    adc b
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld d, a
    nop
    add e
    and b
    or c
    xor l
    rst $20
    ld a, a
    adc b
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    xor a
    or c
    and h
    and e
    xor b
    and d
    or e
    and h
    and e
    ld a, a
    adc b
    ld d, l
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
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
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld a, a
    add e
    adc [hl]
    adc c
    adc [hl]
    ld c, a
    xor l
    and h
    or a
    or e
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    and d
    xor b
    or e
    cp b
    call nc, $867f
    sbc b
    adc h
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld [hl], l
    ld d, a
    nop
    adc d
    add b
    sub c
    add b
    sub e
    add h
    ld a, a
    adc d
    adc b
    adc l
    add [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor h
    and b
    or d
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld d, c
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld a, a
    add e
    adc [hl]
    adc c
    adc [hl]
    db $f4
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and e
    and h
    or d
    or e
    or c
    xor [hl]
    cp b
    and h
    and e
    ld a, a
    and c
    cp b
    ld d, l
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    add sp, $57
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
    add b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and b
    or d
    ld c, a
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
    cp b
    xor [hl]
    or h
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
    and c
    and h
    ld c, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    and h
    and b
    xor e
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    db $e3
    or e
    cp b
    xor a
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    adc b
    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor e
    or h
    and d
    xor d
    rst $20
    ld d, a
    nop
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
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
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
    nop
    jr nz, jr_062_62d9

    ld [$1902], sp
    ld [bc], a
    ld de, $0209
    add hl, de
    ld [bc], a
    rrca
    dec bc
    ld [de], a
    add hl, de
    inc b
    ld de, $130f

jr_062_62d9:
    add hl, de
    inc b
    dec bc
    inc de
    inc d
    add hl, de
    inc b
    rrca
    rrca
    dec d
    add hl, de
    inc b
    inc bc
    dec b
    ld d, $19
    inc b
    dec b
    dec bc
    rla
    add hl, de
    inc b
    rrca
    ld bc, $1918
    inc b
    inc bc
    inc de
    add hl, de
    add hl, de
    inc b
    dec bc
    ld bc, $191a
    inc b
    ld de, $1b01
    add hl, de
    inc b
    add hl, bc
    dec b
    inc e
    add hl, de
    inc b
    dec b
    inc de
    dec e
    add hl, de
    inc b
    add hl, bc
    rrca
    ld e, $19
    inc b
    dec b
    rrca
    rra
    add hl, de
    inc b
    ld de, $2005
    add hl, de
    inc b
    ld de, $0313
    add hl, de
    inc b
    add hl, bc
    inc de
    inc b
    add hl, de
    inc b
    add hl, bc
    ld bc, $1905
    inc b
    dec b
    dec b
    ld b, $19
    inc b
    inc bc
    dec bc
    rlca
    add hl, de
    inc b
    dec b
    ld bc, $1908
    inc b
    inc bc
    add hl, bc
    add hl, bc
    add hl, de
    inc b
    rrca
    inc de
    ld a, [bc]
    add hl, de
    inc b
    rrca
    dec b
    dec bc
    add hl, de
    inc b
    dec bc
    dec b
    inc c
    add hl, de
    inc b
    dec b
    add hl, bc
    dec c
    add hl, de
    inc b
    dec bc
    rrca
    ld c, $19
    inc b
    inc bc
    rrca
    rrca
    add hl, de
    inc b
    inc bc
    ld bc, $1910
    inc b
    add hl, bc
    dec bc
    ld de, $0419
    nop
    ld bc, $080f
    nop
    rst $08
    ld e, h
    ld b, $22
    inc c
    dec c
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    ld l, $5c
    rst $38
    rst $38
    jr nc, jr_062_638a

    rrca
    ld b, $00
    rst $38
    rst $38
    or d
    inc bc
    ld l, e
    ld e, h
    rst $38
    rst $38
    daa

jr_062_638a:
    ld c, $0f
    rlca
    nop
    rst $38
    rst $38
    sub d
    inc bc
    ld a, a
    ld e, h
    rst $38
    rst $38
    jr nc, jr_062_63ac

    inc c
    ld b, $00
    rst $38
    rst $38
    or d
    ld [bc], a
    sub e
    ld e, h
    rst $38
    rst $38
    daa
    inc d
    rla
    ld b, $00
    rst $38
    rst $38
    sub d
    ld [bc], a

jr_062_63ac:
    and a
    ld e, h
    rst $38
    rst $38
    ld c, b
    ld [de], a
    dec c
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    cp e
    ld e, h
    rst $38
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    ld e, $00
    ld c, c
    sub c
    ld d, c
    call z, $5163
    di
    ld h, e
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    and c
    xor b
    and [hl]
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
    ld a, a
    xor b
    xor l
    ld d, l
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
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
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
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
    and c
    or h
    or e
    ld a, a
    adc b
    jp nc, $ad55

    xor [hl]
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    cp b
    and h
    or e
    ld [hl], l
    ld d, c
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
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    and $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    add hl, de
    ld [bc], a
    rlca
    inc bc
    inc bc
    add hl, de
    ld [bc], a
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
    cp a
    ld h, e
    rst $38
    rst $38
    inc hl
    ld b, $0b
    inc bc
    nop
    rst $38
    rst $38
    or b
    nop
    add $63
    rst $38
    rst $38
    inc h
    ld a, [bc]
    dec bc
    dec b
    ld bc, $ffff
    and b
    nop
    ret


    ld h, e
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    rrca
    and b
    nop
    add hl, bc
    adc c
    ld h, h
    ld d, c
    and e
    ld h, h
    ld d, c
    ld [hl-], a
    ld h, l
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    sbc d
    ld h, h
    ld c, h
    db $d3
    ld h, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, $66
    ld d, h
    ld c, c
    sub c
    ld d, c
    push bc
    ld h, [hl]
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    call nc, Call_062_544f
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
    xor e
    xor b
    xor d
    and h
    and $51
    ld [hl], l
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    add sp, $7f
    sub d
    xor [hl]
    ld c, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor h
    or h
    and d
    and a
    ld d, c
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
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor [hl]
    xor l
    and h
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
    add sp, $51
    adc b
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
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld c, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    cp b
    xor b
    xor l
    and [hl]
    db $f4
    ld d, l
    or e
    and a
    and h
    xor l
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    call nc, Call_062_544f
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
    xor e
    xor b
    xor d
    and h
    and $51
    ld [hl], l
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    add sp, $4f
    sub d
    xor [hl]
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld c, a
    and l
    and b
    or c
    ld a, a
    and b
    or [hl]
    and b
    cp b
    and $51
    sub e
    and a
    and h
    xor l
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor h
    cp b
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    or e
    xor [hl]
    ld d, c
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    ld a, a
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
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
    and a
    and b
    xor a
    xor a
    and h
    xor l
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld d, c
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
    add sp, $7f
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor h
    xor [hl]
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and b
    or e
    ld d, l
    or e
    and a
    and h
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
    add sp, $57
    nop
    add d
    and b
    or l
    and h
    or d
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and b
    xor a
    or d
    and h
    ld c, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    add sp, $51
    sub d
    and h
    or l
    and h
    or c
    and b
    xor e
    ld a, a
    and d
    and b
    or l
    and h
    or d
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and e
    xor b
    or d
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    xor a
    and b
    or d
    or e
    ld a, a
    and l
    and h
    or [hl]
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    db $f4
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
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    or h
    or e
    db $e3
    ld d, l
    or d
    xor b
    and e
    and h
    ld a, a
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    add sp, $51
    add b
    or d
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor [hl]
    ld a, a
    add a
    adc b
    adc d
    add h
    sub c
    db $f4
    ld c, a
    or e
    and a
    and b
    or e
    call nc, $a27f
    xor [hl]
    xor h
    xor h
    xor [hl]
    xor l
    ld d, l
    xor d
    xor l
    xor [hl]
    or [hl]
    xor e
    and h
    and e
    and [hl]
    and h
    add sp, $57
    nop
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, -$2c
    ld a, a
    add a
    add h
    add b
    add e
    ld c, a
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld a, a
    sub d
    sub e
    add b
    db $e3
    ld c, a
    sub e
    adc b
    adc [hl]
    adc l
    db $e3
    db $e3
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or e
    and a
    and h
    ld d, c
    xor a
    xor e
    and b
    and d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    inc b
    add hl, de
    ld [bc], a
    rlca
    inc b
    inc b
    add hl, de
    ld [bc], a
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
    ld a, l
    ld h, h
    rst $38
    rst $38
    add hl, hl
    ld b, $0b
    ld [bc], a
    ld de, $ffff
    and b
    nop
    add b
    ld h, h
    rst $38
    rst $38
    ld a, [hl-]
    ld a, [bc]
    inc c
    ld [$ff00], sp
    rst $38
    add b
    nop
    adc h
    ld h, h
    rst $38
    rst $38
    daa
    ld [$0305], sp
    nop
    rst $38
    rst $38
    sub b
    nop
    and b
    ld h, h
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0007
    inc bc
    add hl, de
    ld b, $00
    nop
    nop
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $00e3
    add hl, bc
    adc a
    ld h, a
    ld c, h
    sbc b
    ld h, a
    ld d, l
    sbc [hl]
    db $dd
    ld bc, $9308
    ld h, a
    inc sp
    db $e3
    nop
    ld c, h
    cp e
    ld h, a
    ld d, h
    ld c, c
    sub c
    inc c
    ld bc, $0000
    ld [hl], l
    ld d, c
    ld [hl], l
    ld d, c
    ld [hl], l
    ld d, c
    ld [hl], l
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sub e
    adc h
    ld hl, sp-$01
    ld a, a
    xor b
    or d
    ld a, a
    adc a
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    add sp, $51
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    call nc, $927f
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    add hl, de
    ld [bc], a
    rlca
    inc bc
    dec b
    add hl, de
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0000
    sub l
    ld h, a
    ld bc, $0001
    sub l
    ld h, a
    ld bc, $073b
    add hl, bc
    ld [$ff00], sp
    rst $38
    and b
    nop
    ld a, d
    ld h, a
    rst $38
    rst $38
    ld bc, $681d
    nop
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $00cd
    add hl, bc
    inc l
    ld l, b
    ld c, h
    xor c
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $dd
    ld l, b
    ld c, [hl]
    ld [$685c], sp
    ld hl, $0886
    ld d, [hl]
    ld l, b
    ld c, h
    rla
    ld l, c
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    adc a
    ld l, b
    ld l, c
    nop
    sbc b
    ld l, b
    dec d
    ld bc, $230f
    nop
    adc [hl]
    adc d
    ld sp, hl
    ld l, c
    nop
    ld d, h
    ld l, b
    xor b
    inc d
    sub c
    nop
    ld b, a
    ld c, h
    ld d, [hl]
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, b
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld l, c
    ld [bc], a
    adc a
    ld l, b
    ld l, c
    nop
    and c
    ld l, b
    ld l, c
    ld [bc], a
    sub h
    ld l, b
    ld b, a
    ld c, h
    sub e
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    add e
    ld l, b
    ld c, h
    jp z, Jump_062_5469

    ld c, c
    sub c
    ld c, h
    ld h, c
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld d, c
    xor e
    ld l, d
    ld d, c
    jr nz, jr_062_68fa

    dec c
    dec c
    rrca
    ld [bc], a
    ld b, a
    ld c, $0c
    inc c
    ld b, a
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0d
    dec c
    ld b, a
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    ld bc, $0047
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
    or e
    and a
    and h
    ld c, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld a, a
    xor b
    or d
    xor l
    push de
    ld d, l
    xor [hl]
    xor a
    and h
    or c
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and e
    and h
    xor a
    and b
    or c
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c

jr_062_68fa:
    adc [hl]
    add e
    add sp, $51
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and c
    xor [hl]
    and b
    or c
    and e
    and $57
    nop
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
    or c
    and b
    xor b
    xor e
    ld a, a
    adc a
    add b
    sub d
    sub d
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    and $51
    adc [hl]
    adc d
    add sp, $7f
    sub c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    add sp, $57
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
    cp b
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

Call_062_696e:
    and h
    ld a, a
    and b
    ld a, a
    adc a
    add b
    sub d
    sub d
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
    and b
    or l
    and h
    ld a, a
    and b
    or c
    or c
    xor b
    or l
    and h
    and e
    ld a, a
    xor b
    xor l
    ld c, a
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    add sp, $51
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
    sub e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld c, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    db $e3
    xor h
    xor [hl]
    and e
    and h
    or c
    xor l
    ld d, c
    or c
    and b
    xor b
    xor e
    ld a, a
    xor e
    xor b
    xor l
    and h
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or h
    or d
    and h
    or d
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
    ld d, c
    and b
    xor l
    and e
    ld a, a
    xor h
    and b
    and [hl]
    xor l
    and h
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and b
    or e
    or e
    and b
    xor b
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
    ld d, l
    or d
    xor a
    and h
    and h
    and e
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
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    or d
    xor l
    push de
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    and h
    xor e
    and h
    and d
    db $e3
    ld d, l
    or e
    or c
    xor b
    and d
    xor b
    or e
    cp b
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    and h
    or [hl]
    ld [hl], l
    ld d, c
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and l
    xor [hl]
    or c
    or e
    and a
    ld a, a
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
    ld c, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    and $57
    nop
    add c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld c, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld a, a
    sub d
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    and c
    or h
    xor b
    xor e
    or e
    db $f4
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
    ld a, a
    and b
    ld c, a
    and a
    xor [hl]
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $51
    add b
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
    or c
    xor e
    ld c, a
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    ld a, a
    or h
    or d
    and h
    and e
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor e
    xor b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add a
    xor b
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
    ld a, a
    and b
    ld c, a
    or c
    and b
    xor b
    xor e
    ld a, a
    adc a
    add b
    sub d
    sub d
    and $7f
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    xor [hl]
    xor l
    and h
    add sp, $7f
    add b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
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
    xor b
    xor l
    ld a, a
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld d, c
    or c
    xor b
    and e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld c, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    adc a
    add b
    sub d
    sub d
    add h
    sub d
    add sp, $57
    nop
    nop
    inc b
    ld de, $0608
    add hl, de
    ld [bc], a
    ld de, $0609
    add hl, de
    ld [bc], a
    dec b
    ld b, $04
    dec bc
    rlca
    dec b
    dec bc
    inc bc
    dec bc
    rlca
    ld bc, $0600
    dec bc
    nop
    ld h, d
    ld l, b
    nop
    nop
    nop
    inc b
    ld b, e
    dec c
    dec c
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld e, $68
    rst $38
    rst $38
    ld c, b
    ld [de], a
    ld c, $02
    ld de, $ffff
    nop
    nop
    ld [hl], l
    ld l, b
    rst $38
    rst $38
    add hl, hl
    rrca
    ld a, [bc]
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    adc c
    ld l, b
    ld [hl], d
    rlca
    jr z, jr_062_6be6

    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    adc h
    ld l, b
    ld [hl], d
    rlca
    nop
    nop
    ld d, c

jr_062_6be6:
    inc bc
    ld l, h
    ld l, e
    ld b, a
    ld sp, $00de
    add hl, bc
    db $fd
    ld l, e
    ld c, h
    ld [hl], $6c
    ld d, l
    sbc [hl]
    xor h
    ld bc, $0108
    ld l, h
    inc sp
    sbc $00
    ld c, h
    xor b
    ld l, h
    ld d, h
    ld c, c
    sub c
    nop
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    sub d
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, -$2c
    ld a, a
    add a
    add h
    add b
    add e
    ld d, l
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld a, a
    add c
    sub h
    adc b
    adc e
    add e
    adc b
    adc l
    add [hl]
    add sp, $57
    nop
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    and h
    xor h
    xor a
    xor e
    xor [hl]
    cp b
    and h
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    xor a
    and h
    or c
    xor h
    xor b
    or e
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld d, l
    or h
    xor a
    or d
    or e
    and b
    xor b
    or c
    or d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or [hl]
    and b
    cp b
    db $f4
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor l
    and h
    and b
    or e
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or d
    xor [hl]
    or h
    or l
    and h
    xor l
    xor b
    or c
    add sp, $57
    nop
    adc b
    or e
    call nc, $927f
    adc b
    adc e
    adc a
    add a
    ld a, a
    add d
    adc [hl]
    add sp, -$2c
    ld c, a
    xor e
    and b
    or e
    and h
    or d
    or e
    ld a, a
    xor a
    or c
    xor [hl]
    and e
    or h
    and d
    or e
    add sp, $51
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    and b
    xor e
    and h
    ld c, a
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
    and h
    or e
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    add hl, de
    ld [bc], a
    rlca
    inc bc
    rlca
    add hl, de
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, d
    ld b, $08
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    push hl
    ld l, e
    rst $38
    rst $38
    ld b, e
    dec b
    ld de, $0006
    rst $38
    rst $38
    sub b
    nop
    add sp, $6b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    inc [hl]
    ld l, l
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    inc h
    ld l, l
    ld c, h
    sub l
    ld l, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $d3
    ld l, l
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld c, e
    ld l, [hl]
    add h
    ld a, [c]
    nop
    ld d, h
    ld c, c
    sub c
    nop
    adc h
    cp b
    ld a, a
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor e
    xor b
    xor d
    and h
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $51
    add a
    and h
    or c
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    or c
    cp b
    ld a, a
    and a
    and b
    or d
    ld c, a
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    and a
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld d, c
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    ld a, a
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    ld c, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld c, a
    or d
    and h
    xor e
    and l
    db $e3
    and d
    and h
    xor l
    or e
    and h
    or c
    and h
    and e
    ld [hl], l
    ld d, c
    sub d
    and a
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and l
    and h
    or [hl]
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    add sp, $57
    nop
    sub d
    and a
    and h
    ld a, a
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    and b
    ld a, a
    and c
    xor [hl]
    cp b
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    and a
    and h
    or c
    ld c, a
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
    ld a, a
    and b
    and [hl]
    xor [hl]
    add sp, $51
    add h
    or l
    and h
    or c
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and h
    xor l
    db $f4
    ld c, a
    or d
    and a
    and h
    call nc, $a67f
    xor [hl]
    or e
    or e
    and h
    xor l
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, l
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
    xor h
    xor b
    xor h
    xor b
    and d
    or c
    cp b
    ld [hl], l
    ld d, a
    nop
    add c
    adc e
    adc b
    sub d
    sub d
    add h
    sbc b
    sbc h
    ld a, a
    add c
    xor e
    xor b
    xor b
    or d
    xor b
    xor b
    rst $20
    ld d, a
    nop
    nop
    inc bc
    rlca
    ld [bc], a
    ld [$0219], sp
    rlca
    inc bc
    ld [$0219], sp
    nop
    ld [bc], a
    ld bc, $0c19
    nop
    nop
    inc bc
    dec l
    rlca
    ld b, $06
    nop
    rst $38
    rst $38
    nop
    nop
    inc de
    ld l, l
    rst $38
    rst $38
    ld l, $08
    add hl, bc
    ld [$ff00], sp
    rst $38
    and b
    nop
    ld d, $6d
    rst $38
    rst $38
    adc a
    ld a, [bc]
    ld a, [bc]
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    ld a, [hl+]
    ld l, l
    rst $38
    rst $38
    nop
    ld bc, $9f02
    ld l, [hl]
    inc [hl]
    ld h, e
    nop
    add hl, bc
    xor h
    ld l, [hl]
    ld l, [hl]
    rlca
    ld l, a
    ld [bc], a
    inc bc
    or b
    ld l, [hl]
    ld l, [hl]
    ld [bc], a
    ld l, a
    rlca
    sub b
    ld l, e
    ld sp, $00d1
    add hl, bc
    ld l, a
    ld l, a
    ld sp, $00d0
    add hl, bc
    ld e, e
    ld l, a
    ld hl, $0982
    ld c, d
    ld l, a
    inc [hl]
    ld h, e
    nop
    add hl, bc
    call nc, Call_062_696e
    ld [bc], a
    ret nc

    ld l, a
    ld l, e
    ld l, l
    dec bc
    ld bc, $dc03

jr_062_6ed3:
    ld l, [hl]
    ld l, c
    rlca
    ret nc

    ld l, a
    ld l, e
    ld l, l
    dec bc
    ld h, b
    rrca
    ld e, [hl]
    nop
    ld sp, $00c9
    add hl, bc
    ld d, $6f
    ld b, a
    inc [hl]
    ld h, e
    nop
    add hl, bc
    ld a, [c]
    ld l, [hl]
    ld c, h
    jp c, $036f

    push af
    ld l, [hl]
    ld c, h
    ld d, $73
    ld d, h
    ld c, c
    inc [hl]
    ld h, e
    nop
    add hl, bc
    inc b
    ld l, a
    ld l, c
    ld [bc], a
    ret nc

    ld l, a
    inc bc
    ld [$696f], sp
    rlca
    ret nc

    ld l, a
    ld l, e
    ld l, l
    dec bc
    jr z, jr_062_6f1c

    ld e, [hl]
    nop
    ld b, a
    ld c, h
    jr z, jr_062_6f83

    ld d, h
    ld c, c
    sub c
    ld b, a
    inc [hl]
    ld h, e
    nop
    add hl, bc
    inc hl

jr_062_6f1c:
    ld l, a
    ld c, h
    ld h, h
    ld [hl], b
    inc bc
    ld h, $6f
    ld c, h
    ld h, [hl]
    ld [hl], e
    ld d, h
    ld c, c
    inc [hl]
    ld h, e
    nop
    add hl, bc
    dec [hl]
    ld l, a
    ld l, c
    ld [bc], a
    ret nc

    ld l, a
    inc bc
    add hl, sp
    ld l, a
    ld l, c
    rlca
    ret nc

    ld l, a
    ld l, e
    ld l, l
    dec bc
    jr z, jr_062_6f4d

    ld e, [hl]
    nop
    ld b, a
    ld c, h
    ld d, $71
    ld d, h
    ld c, c
    inc sp
    rst $08
    nop
    sub c
    ld b, a
    ld c, h
    ld a, a

jr_062_6f4d:
    ld [hl], c
    ld d, l
    jr nz, jr_062_6ed3

    ld bc, $d033
    nop
    ld [hl-], a
    ld [hl], e
    rlca
    inc bc
    ld e, h
    ld l, a
    ld b, a
    ld c, h
    ld [c], a
    ld [hl], c
    ld d, l
    sbc [hl]
    add [hl]
    ld bc, $ba08
    ld l, a
    inc sp
    pop de
    nop
    ld c, h
    inc d
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    inc [hl]
    ld h, e
    nop
    add hl, bc
    add b
    ld l, a
    ld l, c
    ld [bc], a
    ret nc

    ld l, a
    ld l, e
    ld l, l
    dec bc
    ld bc, $8803
    ld l, a
    ld l, c
    rlca
    ret nc

jr_062_6f83:
    ld l, a
    ld l, e
    ld l, l
    dec bc
    ld h, b
    rrca
    ld e, [hl]
    nop
    ld b, a
    inc [hl]
    ld h, e
    nop
    add hl, bc
    sbc b
    ld l, a
    ld c, h
    sbc b
    ld [hl], d
    inc bc
    sbc e
    ld l, a
    ld c, h
    dec d
    ld [hl], h
    ld d, h
    ld c, c
    inc [hl]
    ld h, e
    nop
    add hl, bc
    xor d
    ld l, a
    ld l, c
    ld [bc], a
    ret nc

    ld l, a
    inc bc
    xor [hl]
    ld l, a
    ld l, c
    rlca
    ret nc

    ld l, a
    ld l, e
    ld l, l
    dec bc
    jr z, jr_062_6fc2

    ld e, [hl]
    nop
    ld b, a
    ld c, h
    push af
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    db $76
    ld [hl], h
    add h
    ld d, l

jr_062_6fc2:
    nop
    ld d, l
    ld c, h
    adc c
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld d, e
    call nz, $0c74
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    ld b, a
    nop
    ld d, d
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld a, a
    add e
    xor [hl]
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
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    ld d, d
    sbc h
    ld a, a
    sub h
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    db $f4
    ld a, a
    adc b
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    or d
    xor d
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    ld d, d
    sbc h
    ld a, a
    add a
    or h
    and a
    and $4f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    sbc h
    ld a, a
    add a
    xor h
    xor h
    and $4f
    sub b
    or h
    xor b
    or e
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    and $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $ac7f
    cp b
    ld c, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    and a
    xor [hl]
    and c
    and c
    cp b
    rst $20
    ld d, a
    nop
    ld d, d
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld c, a
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
    cp b
    xor [hl]
    or h
    ld d, c
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld c, a
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    add sp, $51
    ld d, d
    sbc h
    ld a, a
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld d, l
    and b
    ld a, a
    or c
    and b
    xor b
    xor e
    ld a, a
    adc a
    add b
    sub d
    sub d
    and $51
    ld d, d
    sbc h
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    and l
    xor b
    xor l
    and e
    ld a, a
    xor b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
    xor b
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld d, l
    or e
    xor [hl]
    ld a, a
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    and $57
    nop
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    sbc h
    ld a, a
    adc a
    and b
    or c
    and e
    xor [hl]
    xor l
    and $51
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
    and e
    and h
    and d
    xor b
    and e
    and h
    ld c, a
    or [hl]
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
    ld d, l
    and e
    xor [hl]
    and $51
    add c
    or h
    or e
    ld a, a
    adc b
    jp nc, $b17f

    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    or [hl]
    xor [hl]
    or c
    or c
    xor b
    and h
    and e
    ld [hl], l
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    and l
    ld d, l
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor b
    xor l
    and e
    or d
    ld a, a
    xor b
    or e
    and $57
    nop
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    sbc h
    ld a, a
    sbc b
    and b
    cp b
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $ac7f
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
    ld d, l
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    rst $20
    ld d, c
    sub d
    and h
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and h
    and b
    or c
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor e
    and h
    and [hl]
    ld a, a
    xor b
    or d
    ld d, c
    or d
    and h
    or [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
    and $7f
    sub e
    and a
    and b
    or e
    call nc, $af4f
    or c
    xor [hl]
    xor [hl]
    and l
    rst $20
    ld d, a
    nop
    adc [hl]
    adc d
    add sp, $7f
    add a
    and h
    or c
    and h
    call nc, $b37f
    and a
    and h
    ld c, a
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    ld a, a
    adc a
    add b
    sub d
    sub d
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc b
    ld a, a
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
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    sbc h
    ld a, a
    sub e
    and a
    and b
    or e
    call nc, $b34f
    and a
    and h
    ld a, a
    adc a
    add b
    sub d
    sub d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or c
    and b
    xor b
    xor e
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    xor l
    cp b
    ld c, a
    xor h
    and b
    xor l
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    or e
    xor [hl]
    or c
    and h
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    add sp, $57
    nop
    ld d, d
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld c, a
    sub e
    and a
    and b
    xor l
    xor d
    or d
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    or e
    and a
    and h
    ld a, a
    or c
    and b
    xor b
    xor e
    ld a, a
    adc a
    add b
    sub d
    sub d
    rst $20
    ld d, c
    ld d, d
    sbc h
    ld a, a
    adc a
    and b
    or c
    and e
    xor [hl]
    xor l
    and $51
    ld d, d
    sbc h
    ld a, a
    adc b
    or d
    ld a, a
    xor b
    or e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    or h
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    xor b
    xor h
    xor b
    and d
    ld d, l
    xor h
    cp b
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    and $57
    nop
    add d
    adc [hl]
    adc a
    sbc b
    add d
    add b
    sub e
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    or e
    rst $20
    ld c, a
    adc b
    or e
    call nc, $a07f
    ld a, a
    or d
    and d
    or c
    and h
    and b
    xor h
    rst $20
    ld d, a
    nop
    ld d, d
    sbc h
    ld a, a
    add a
    xor b
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    ld d, d
    sbc h
    ld a, a
    adc l
    xor [hl]
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    xor h
    and h
    add sp, $7f
    adc b
    ld a, a
    and b
    or d
    xor d
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    ld d, d
    sbc h
    ld a, a
    adc a
    and b
    or c
    and e
    xor [hl]
    xor l
    and $4f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or [hl]
    and h
    xor b
    or c
    and e
    rst $20
    ld d, a
    nop
    ld d, d
    sbc h
    ld a, a
    add a
    xor b
    add sp, $7f
    add e

Jump_062_736f:
    xor b
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    and $51
    ld d, d
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    and b
    ld d, c
    or c
    and b
    xor b
    xor e
    ld a, a
    adc a
    add b
    sub d
    sub d
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld c, a
    and l
    xor b
    xor l
    and e
    ld a, a
    xor b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    ld d, d
    sbc h
    ld a, a
    sub d
    or h
    or c
    and h
    db $f4
    ld c, a
    adc b
    pop de
    xor e
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
    xor b
    or e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld c, a
    xor b
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld d, l
    xor b
    xor l
    ld a, a
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    and $57
    nop
    ld d, d
    sbc h
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
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    and b
    xor b
    xor e
    ld a, a
    adc a
    add b
    sub d
    sub d
    rst $20
    ld d, c
    ld d, d
    sbc h
    ld a, a
    ld [hl], l
    adc a
    and b
    or c
    and e
    xor [hl]
    xor l
    and $51
    ld d, d
    sbc h
    ld a, a
    adc b
    or d
    ld a, a
    xor b
    or e
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    or h
    xor l
    ld a, a
    or e
    xor [hl]
    ld d, c
    and d
    xor [hl]
    xor a
    cp b
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    or d
    and b
    cp b
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and e
    xor [hl]
    and $57
    nop
    add e
    adc [hl]
    add e
    sub c
    adc b
    adc [hl]
    sbc h
    ld a, a
    add [hl]
    xor b
    xor b
    ld a, a
    and [hl]
    xor b
    xor b
    xor b
    rst $20
    ld d, a
    nop
    adc h
    adc b
    sub c
    sub c
    adc [hl]
    sub c
    db $f4
    ld a, a
    adc h
    adc b
    sub c
    sub c
    adc [hl]
    sub c
    ld a, a
    adc [hl]
    adc l
    ld c, a
    sub e
    add a
    add h
    ld a, a
    sub [hl]
    add b
    adc e
    adc e
    db $f4
    ld a, a
    sub [hl]
    add a
    adc [hl]
    ldh [$92], a
    ld d, c
    sub e
    add a
    add h
    ld a, a
    add l
    add b
    adc b
    sub c
    add h
    sub d
    sub e
    ld a, a
    adc [hl]
    adc l
    add h
    ld a, a
    adc [hl]
    add l
    ld c, a
    add b
    adc e
    adc e
    and $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
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
    rst $20
    ld a, a
    add a
    or h
    and a
    and $51
    adc b
    or e
    call nc, $ae7f
    xor l
    xor e
    cp b
    ld a, a
    and b
    ld a, a
    and e
    xor [hl]
    xor e
    xor e
    ld [hl], l
    ld d, a
    nop
    nop
    ld bc, $0300
    inc bc
    add hl, de
    dec bc
    nop
    ld [bc], a
    ld bc, $0000
    call $016f
    ld bc, $cd00
    ld l, a
    ld b, $fb
    rlca
    ld [$0008], sp
    rst $38
    rst $38
    add b
    nop
    or c
    ld l, [hl]
    xor $06
    sbc [hl]
    ld [$160a], sp
    nop
    rst $38
    rst $38
    or b
    nop
    cp h
    ld l, a
    rst $38
    rst $38
    ld c, l
    dec b
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    jp z, Jump_062_736f

    rlca
    ld c, h
    dec b
    ld b, $06
    nop
    rst $38
    rst $38
    and b
    nop
    jp z, $ff6f

    rst $38
    ld c, [hl]
    dec b
    dec bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    jp z, $ff6f

    rst $38
    ei
    rlca
    ld [$0008], sp
    rst $38
    rst $38
    sub b
    nop
    or c
    ld l, [hl]
    rst $28
    ld b, $00
    nop
    ld d, c
    ld e, b
    ld [hl], l
    nop
    adc h
    and b
    xor l
    cp b
    ld a, a
    and d
    xor b
    or e
    xor b
    and h
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld d, c
    and a
    xor b
    or d
    or e
    xor [hl]
    or c
    xor b
    and h
    or d
    add sp, $7f
    adc b
    ret nc

    ld c, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    rst $20
    ld d, a
    nop
    nop
    inc bc
    rlca
    inc bc
    ld bc, $0119
    rlca
    inc b
    ld bc, $0119
    inc bc
    inc b
    ld bc, $5603
    nop
    nop
    ld bc, $0629
    ld b, $02
    ld de, $ffff
    and b
    nop
    ld d, l
    ld [hl], l
    rst $38
    rst $38
    nop
    nop
    ld d, c
    cp h
    ld [hl], l
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
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
    and $51
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
    xor e
    xor b
    xor d
    and h
    ld c, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    and $7f
    adc b
    or e
    call nc, $ad7f
    xor b
    and d
    and h
    db $f4
    ld d, l
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    and [hl]
    or c
    and h
    and h
    and $57
    nop
    nop
    inc b
    nop
    inc b
    ld [bc], a
    add hl, de
    ld bc, $0500
    inc bc
    add hl, de
    ld bc, $0407
    add hl, bc
    add hl, de
    ld [bc], a
    rlca
    dec b
    add hl, bc
    add hl, de
    ld [bc], a
    nop
    nop
    ld bc, $0843
    inc b
    add hl, bc
    nop
    rst $38
    rst $38
    sub b
    nop
    cp c
    ld [hl], l
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $00db
    add hl, bc
    ld c, c
    db $76
    ld c, h
    ld d, l
    db $76
    ld d, l
    sbc [hl]
    ld e, [hl]
    ld bc, $4d08
    db $76
    inc sp
    db $db
    nop
    ld c, h
    and a
    db $76
    ld d, h
    ld c, c
    sub c
    ld d, c
    sbc $76
    inc c
    ld bc, $0000
    add h
    and h
    cp b
    and b
    and b
    and b
    and b
    and a
    rst $20
    ld d, c
    adc b
    ld a, a
    or d
    and h
    xor l
    or d
    and h
    ld a, a
    and b
    ld a, a
    or d
    xor b
    xor l
    xor b
    or d
    or e
    and h
    or c
    ld c, a
    or d
    and a
    and b
    and e
    xor [hl]
    or [hl]
    ld a, a
    and a
    xor [hl]
    or l
    and h
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    xor [hl]
    or l
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
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
    or e
    xor [hl]
    ld a, a
    or [hl]
    and b
    or c
    and e
    ld c, a
    xor b
    or e
    ld a, a
    xor [hl]
    and l
    and l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    xor [hl]
    or c
    or e
    and b
    xor e
    ld c, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and b
    or c
    and h
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
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    xor h
    and b
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    or [hl]
    and b
    or c
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld d, c
    or d
    and a
    and h
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and h
    or l
    xor b
    xor e
    ld a, a
    or d
    xor a
    xor b
    or c
    xor b
    or e
    or d
    add sp, $51
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    and a
    and h
    ld c, a
    or d
    or e
    and b
    or c
    or e
    xor e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    add hl, de
    ld bc, $0307
    inc b
    add hl, de
    ld bc, $0200
    ld bc, $0000
    ld d, d
    db $76
    ld bc, $0001
    ld d, d
    db $76
    ld [bc], a
    jr nc, jr_062_7769

    ld b, $1f
    nop
    rst $38
    rst $38
    or b
    nop
    inc [hl]
    db $76

jr_062_7769:
    rst $38
    rst $38
    add hl, hl
    rlca
    add hl, bc
    ld [$ff00], sp
    rst $38
    add b
    nop
    ld c, a
    db $76
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
