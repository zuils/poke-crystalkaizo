; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $015", ROMX[$4000], BANK[$15]

    ld [bc], a
    ld a, [bc]
    ld b, b
    nop
    nop
    dec bc
    ld b, b
    nop
    nop
    nop
    sub c
    sub c
    ld l, e
    ld sp, $04bf
    add hl, bc
    scf
    ld b, b
    ld b, a
    ld c, h
    ld [hl+], a
    ld b, c
    ld d, h
    ld c, c
    ld h, h
    and l
    ld b, c
    nop
    nop
    ld e, [hl]
    ld [bc], a
    ld bc, $605f
    inc sp
    cp a
    inc b
    inc sp
    jr z, jr_015_4029

jr_015_4029:
    inc d
    ld bc, $ad33
    inc b
    inc sp
    xor [hl]
    inc b
    inc sp
    dec d
    dec b
    inc sp
    ld d, $05
    ld b, a
    ld sp, $0028
    ld [$4044], sp
    ld c, h
    db $f4
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld sp, $000b
    add hl, bc
    ld [hl], a
    ld b, b
    inc [hl]
    dec e
    nop
    add hl, bc
    ld h, h
    ld b, b
    ld c, h
    ld [hl+], a
    ld b, d
    ld d, l
    add [hl]
    ld c, h
    ld [hl], e
    ld b, d
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $1d
    nop
    inc e
    rlca
    nop
    ld a, l
    ld b, b
    ld c, h
    adc e
    ld b, d
    ld d, l
    sbc [hl]
    db $ed
    ld bc, $7b08
    ld b, b
    inc sp
    dec bc
    nop
    ld c, h
    ld [bc], a
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, b
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld b, $07
    adc c
    ld b, b
    ld b, $06
    add [hl]
    ld b, b
    sub c
    inc c
    ld [de], a
    nop
    inc c
    inc de
    nop
    dec d
    dec b
    add hl, de
    ld bc, $439b
    sub $43
    nop
    nop
    sbc b
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    or $43
    ld d, h
    ld c, c
    sub c
    ld [hl], l
    nop
    inc b
    rrca
    ld l, c
    inc b
    inc e
    ld b, c
    halt
    nop
    ld b, a
    ld c, h
    call nc, Call_015_5444
    ld c, c
    ld l, c
    inc b
    rra
    ld b, c
    inc d
    nop
    ld [hl-], a
    jr z, jr_015_40ba

jr_015_40ba:
    sub c
    ld d, $05
    add hl, de
    ld [bc], a
    ld de, $5f44
    ld b, h
    nop
    nop
    rst $00
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld [hl], b
    ld b, h
    ld d, h
    ld c, c
    sub c
    xor l
    inc b
    dec e
    ld bc, $452d
    ld [hl], h
    ld b, l
    nop
    nop
    db $db
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    adc a
    ld b, l
    ld d, h
    ld c, c
    sub c
    xor [hl]
    inc b
    dec e
    ld [bc], a
    cp [hl]
    ld b, l
    db $ed
    ld b, l
    nop
    nop
    rst $28
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    dec bc
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld sp, $04bf
    add hl, bc
    dec b
    ld b, c
    ld b, a
    ld c, h
    ld a, [hl-]
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    and a
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    inc [hl]
    dec e
    nop
    add hl, bc
    dec d
    ld b, c
    inc c
    dec l
    nop
    ld b, e
    ld [bc], a
    ld bc, $0c01
    ld l, $00
    ld c, $01
    ld b, a
    rrca
    ld [bc], a
    ld b, a
    nop
    add a
    xor b
    rst $20
    ld a, a
    adc b
    jp nc, $967f

    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    rst $20
    ld d, c
    add h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld d, l
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld c, a
    or d
    or h
    xor a
    and h
    or c
    db $e3
    and d
    or h
    or e
    and h
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
    and $7f
    adc b
    jp nc, $b67f

    and b
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    db $e3
    db $e3
    adc b
    jp nc, $a67f

    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    and c
    ld [hl], l
    ld d, c
    ld [hl], l
    sub [hl]
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and a
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor h
    and h
    and b
    xor l
    rst $20
    ld d, c
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
    ld a, a
    and c
    and h
    ld c, a
    or d
    xor [hl]
    ld a, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld [hl], l
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    and b
    and b
    and b
    and b
    and a
    rst $20
    ld d, c
    sub [hl]
    and b
    and b
    and b
    and b
    and b
    and a
    rst $20
    ld d, c
    ld [hl], l
    sub d
    xor l
    xor b
    or l
    and h
    xor e
    db $f4
    ld a, a
    and a
    xor b
    and d
    ld [hl], l
    ld c, a
    ld [hl], l
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and h
    and b
    xor l
    xor b
    and h
    rst $20
    ld d, a
    nop
    ld [hl], l
    sub d
    xor l
    xor b
    and l
    and l
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and b
    or e
    and $7f
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
    ld c, a
    or [hl]
    and b
    xor l
    or e
    and $7f
    add b
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    and $51
    adc [hl]
    and a
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    add sp, $4f
    adc b
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    add sp, $7f
    add a
    and h
    or c
    and h
    call nc, $8f55
    adc e
    add b
    adc b
    adc l
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
    adc a
    adc e
    add b
    adc b
    adc l
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    adc a
    adc e
    add b
    adc b
    adc l
    add c
    add b
    add e
    add [hl]
    add h
    ld a, a
    xor e
    and h
    or e
    or d
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
    or h
    or d
    and h
    ld d, c
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
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
    add sp, $51
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and c
    xor [hl]
    xor [hl]
    or d
    or e
    or d
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
    call nc, $9255
    adc a
    add h
    add h
    add e
    add sp, $51
    adc [hl]
    and a
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
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $807f
    sub e
    sub e
    sub c
    add b
    add d
    sub e
    rst $20
    ld c, a
    adc b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    or h
    or d
    and h
    ld d, c
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a24f
    and a
    and b
    or c
    xor h
    add sp, $51
    adc b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor a
    and h
    or c
    db $e3
    ld c, a
    and l
    and h
    and d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    and d
    or h
    or e
    xor b
    and h
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor h
    and h
    and $57
    nop
    add b
    and a
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and d
    or c
    cp b
    rst $20
    ld d, c
    add d
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
    or l
    xor b
    or d
    xor b
    or e
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld a, a
    add c
    cp b
    and h
    db $e3
    and c
    cp b
    and h
    rst $20
    ld d, a
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a27f
    or h
    or e
    and h
    ld d, c
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    and l
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $4f
    sub e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or [hl]
    and a
    xor b
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
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
    or [hl]
    and h
    and b
    xor d
    ld [hl], l
    ld d, a
    nop
    add e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc b
    jp nc, $a27f

    or h
    or e
    and h
    and $57
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and d
    or h
    or e
    and h
    ld a, a
    ld d, h
    db $e3
    ld c, a
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
    ld a, a
    or e
    and a
    and b
    xor l
    ld d, l
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
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    and b
    xor l
    and e
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
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    db $f4
    ld a, a
    xor l
    xor [hl]
    db $f4
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld d, a
    nop
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
    and c
    and h
    and b
    or e
    ld c, a
    sub [hl]
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, l
    adc b
    or e
    call nc, $a37f
    and h
    xor a
    or c
    and h
    or d
    or d
    xor b
    xor l
    and [hl]
    add sp, $51
    adc b
    jp nc, $ae7f

    xor d
    and b
    cp b
    rst $20
    ld a, a
    adc b
    and l
    ld a, a
    adc b
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, c
    or e
    or c
    cp b
    ld a, a
    and a
    and b
    or c
    and e
    and h
    or c
    ld a, a
    xor l
    and h
    or a
    or e
    ld c, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    and e
    and h
    ld c, a
    sub [hl]
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    ld a, a
    and d
    or c
    cp b
    add sp, $51
    adc b
    or e
    call nc, $8e7f
    adc d
    add sp, $7f
    sub d
    and a
    and h
    pop de
    xor e
    ld c, a
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    add sp, $7f
    sub d
    and a
    and h
    ld d, c
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and d
    or c
    xor b
    and h
    or d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, a
    or d
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    or d
    add sp, $57
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
    and b
    ld a, a
    and d
    or h
    or e
    and h
    ld c, a
    xor e
    xor b
    or e
    or e
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
    rst $20
    ld a, a
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
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld c, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld [hl], l
    ld a, a
    adc [hl]
    xor [hl]
    xor a
    or d
    db $f4
    ld c, a
    xor b
    or e
    call nc, $ae7f
    or l
    and h
    or c
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
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, l
    adc d
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    nop
    add [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and h
    or d
    or e
    ld c, a
    or d
    and a
    xor [hl]
    or e
    db $f4
    ld a, a
    xor [hl]
    or c
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or e
    and b
    xor d
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    db $f4
    ld c, a
    adc b
    jp nc, $b27f

    xor [hl]
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or e
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    ld c, a
    xor h
    xor [hl]
    or l
    and h
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
    ld d, l
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or e
    cp b
    xor a
    and h
    ld [hl], l
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
    sub e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor b
    or d
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld c, a
    or e
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
    ld d, l
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
    or d
    add sp, $51
    adc b
    ld a, a
    or c
    and h
    and d
    xor [hl]
    xor h
    xor h
    and h
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or h
    or d
    and h
    ld a, a
    and l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
    db $e3
    or e
    cp b
    xor a
    and h
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
    or [hl]
    xor [hl]
    xor l
    and $7f
    add [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and c
    or h
    or d
    cp b
    ld a, a
    and b
    and e
    xor h
    xor b
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    and e
    xor b
    and h
    or d
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    nop
    ld [bc], a
    ld de, $0102
    dec bc
    ld [bc], a
    ld de, $0103
    dec bc
    ld [bc], a
    ld bc, $0501
    ld [$a000], sp
    ld b, b
    nop
    nop
    ld [bc], a
    rrca
    ld bc, $0c00
    ld b, c
    rrca
    inc b
    nop
    inc c
    ld b, c
    ld b, $13
    rlca
    inc c
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    inc c
    ld b, b
    rst $38
    rst $38
    jr z, jr_015_471f

    dec c
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc b
    adc h
    ld b, b
    rst $38
    rst $38
    jr z, jr_015_4725

    dec c
    ld [$ff00], sp

jr_015_471f:
    rst $38
    sub d
    ld bc, $40bb
    rst $38

jr_015_4725:
    rst $38
    ld a, [hl+]
    ld [$0616], sp
    nop
    rst $38
    rst $38
    sub d
    inc bc
    rst $08
    ld b, b
    rst $38
    rst $38
    ld a, [hl+]
    ld [$0611], sp
    nop
    rst $38
    rst $38
    sub d
    inc bc
    db $e3
    ld b, b
    rst $38
    rst $38
    ld c, b
    inc de
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    rst $30
    ld b, b
    rst $38
    rst $38
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $005b
    add hl, bc
    ld [hl], l
    ld b, a
    ld c, h
    add a
    ld b, a
    ld c, [hl]
    ld [$477b], sp
    ld c, h
    ld hl, sp+$47
    ld d, l
    add [hl]
    rra
    rlca
    ld bc, $484c
    ld c, b
    add l
    sub c
    nop
    add [hl]
    ld b, l
    ld [hl], $14
    nop
    inc sp
    ld e, e
    nop
    ld c, h
    ld e, a
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc b
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld d, e
    ret nz

    ld c, b
    ld d, e
    db $ed
    ld c, b
    nop
    ld [hl], l
    or d
    xor b
    and [hl]
    and a
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    and e
    ld c, a
    and a
    and h
    or c
    and h
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
    ld d, c
    or d
    and h
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    sub d
    add sp, $4f
    sub [hl]
    and a
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    and $51
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
    or c
    xor b
    and e
    and h
    ld a, a
    and b
    ld c, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    and e
    or l
    and h
    or c
    db $e3
    ld d, l
    or e
    xor b
    or d
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    and $57
    nop
    sub c
    and h
    and b
    xor e
    xor e
    cp b
    and $7f
    add [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, c
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
    xor l
    and b
    xor h
    and h
    ld c, a
    and b
    xor l
    and e
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
    db $f4
    ld d, c
    and b
    xor l
    and e
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    xor e
    xor [hl]
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    add sp, $57
    nop
    ld d, d
    ld a, a
    and c
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    and b
    ld c, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    sub d
    ld a, a
    and b
    or c
    and h
    ld c, a
    and l
    xor b
    or c
    or d
    or e
    db $e3
    or c
    and b
    or e
    and h
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld d, c
    and d
    and b
    xor l
    ld a, a
    or c
    xor b
    and e
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    ld [hl], l
    or d
    xor b
    and [hl]
    and a
    ld [hl], l
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    xor l
    and h
    or d
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld [hl], l
    ld d, a
    nop
    adc c
    or h
    or d
    or e
    ld a, a
    or c
    and h
    xor e
    and h
    and b
    or d
    and h
    and e
    rst $20
    ld d, c
    add l
    xor b
    or c
    or d
    or e
    db $e3
    or c
    and b
    or e
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    and d
    or e
    ld c, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    sub d
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or d
    and a
    xor b
    xor l
    cp b
    ld a, a
    xor l
    and h
    or [hl]
    ld c, a
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    dec bc
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    dec bc
    ld [bc], a
    nop
    add hl, bc
    ld [bc], a
    ld bc, $8400
    ld b, a
    inc bc
    nop
    nop
    add h
    ld b, a
    inc bc
    ld bc, $8400
    ld b, a
    dec b
    nop
    nop
    add h
    ld b, a
    dec b
    ld bc, $8400
    ld b, a
    ld b, $00
    nop
    add h
    ld b, a
    ld b, $01
    nop
    add h
    ld b, a
    ld b, $06
    nop
    add h
    ld b, a
    ld b, $07
    nop
    add h
    ld b, a
    ld bc, $0639
    dec bc
    ld [$ff00], sp
    rst $38
    add b
    nop
    ld d, b
    ld b, a
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    rrca
    ld e, c
    nop
    ld c, h
    and e
    ld c, c
    ld d, l
    ld a, [bc]
    ld sp, hl
    ld [hl], e
    ld c, c
    ld a, [bc]
    rst $00
    ld a, c
    ld c, c
    ld a, [bc]
    sub l
    ld a, a
    ld c, c
    ld a, [bc]
    ld h, e
    add l
    ld c, c
    ld a, [bc]
    ld sp, $498b
    inc bc
    sub c
    ld c, c
    ld c, h
    db $fc
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc l
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld e, d
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    adc [hl]
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc a
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    pop de
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld d, c
    inc b
    ld c, e
    ld d, c
    ld h, a
    ld c, e
    inc c
    ld bc, $0c00
    inc c
    nop
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
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
    xor l
    xor b
    and d
    and h
    xor e
    cp b
    db $f4
    ld d, c
    or e
    and a
    and h
    cp b
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
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor b
    xor l
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    add sp, $51
    adc [hl]
    and a
    and $7f
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
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and a
    and b
    xor a
    xor a
    cp b
    rst $20
    ld a, a
    adc b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld d, l
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld d, l
    or e
    or c
    or h
    or d
    or e
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc b
    or e
    call nc, $a57f
    or c
    xor b
    and h
    xor l
    and e
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    db $e3
    ld c, a
    or [hl]
    and b
    or c
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld d, l
    or d
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $57
    nop
    adc b
    or e
    call nc, $b07f
    or h
    xor b
    or e
    and h
    ld a, a
    and d
    or h
    or e
    and h
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
    ld a, a
    or e
    or c
    and h
    and b
    or e
    ld c, a
    xor b
    or e
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    add sp, $7f
    adc b
    or e
    call nc, $ad55
    xor [hl]
    or e
    ld a, a
    or h
    or d
    and h
    and e
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
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    add sp, $55
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    xor h
    and h
    and b
    xor l
    add sp, $57
    nop
    adc b
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld c, a
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
    and e
    ld a, a
    xor h
    cp b
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and h
    xor l
    and e
    ld a, a
    or h
    xor a
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $b67f
    and a
    cp b
    ld c, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld a, a
    xor h
    or h
    and d
    and a
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or h
    or d
    and h
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    ld c, a
    xor [hl]
    xor l
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
    xor b
    or e
    ld d, l
    and b
    and d
    or e
    or d
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    xor e
    and b
    and e
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    dec bc
    ld [bc], a
    rlca
    inc bc
    inc bc
    dec bc
    ld [bc], a
    nop
    inc bc
    ld bc, $0000
    sbc l
    ld c, c
    ld bc, $0001
    sbc l
    ld c, c
    ld bc, $0007
    and b
    ld c, c
    inc bc
    add hl, hl
    ld [$0606], sp
    nop
    rst $38
    rst $38
    sub b
    nop
    ld d, e
    ld c, c
    rst $38
    rst $38
    dec l
    rlca
    add hl, bc
    ld [$ff00], sp
    rst $38
    nop
    nop
    sub a
    ld c, c
    rst $38
    rst $38
    ld h, $0a
    add hl, bc
    dec b
    ld bc, $ffff
    and b
    nop
    sbc d
    ld c, c
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $004f
    add hl, bc
    rra
    ld c, h
    ld c, h
    ld [hl], h
    ld c, h
    ld c, [hl]
    ld [$4c19], sp
    ld c, h
    ccf
    ld c, l
    ld d, l
    add [hl]
    inc e
    ld bc, $0606
    inc de
    ld c, h
    ld c, h
    xor [hl]
    ld c, l
    add l
    ld [bc], a
    nop
    add [hl]
    dec l
    add l
    inc d
    nop
    nop
    inc sp
    ld c, a
    nop
    ld c, h
    pop bc
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [bc], a
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec l
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, d
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0712
    ld [$4c33], sp
    ld c, h
    xor b
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, [hl]
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld a, [hl+]
    inc bc
    add hl, bc
    ld e, b
    ld c, h
    ld c, h
    sbc [hl]
    ld c, a
    sub a
    inc bc
    ld b, $01
    ld h, h
    ld c, h
    ld b, $02
    ld e, [hl]
    ld c, h
    add [hl]
    jr z, jr_015_4c53

    ld c, h
    reti


    ld c, a

jr_015_4c53:
    add l
    sub e
    nop
    add [hl]
    ld d, l
    ld c, h
    ld l, c
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    di
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, [hl]
    ld d, b
    ld d, l
    inc bc
    ld e, [hl]
    ld c, h
    inc c

Jump_015_4c6c:
    ld [bc], a
    nop
    inc c
    inc bc
    nop
    inc c
    inc c
    nop
    nop
    add c
    adc b
    adc e
    adc e
    sbc h
    ld a, a
    add a
    xor b
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld c, a
    add e
    xor [hl]
    ld a, a
    or h
    or d
    ld a, a
    and b
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    ld a, a
    and b
    xor l
    and e
    ld d, l
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
    add h
    add h
    sub l
    add h
    add h
    add sp, $51
    adc b
    or e
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    xor [hl]
    or l
    and h
    or c
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
    and b
    and e
    xor c
    or h
    or d
    or e
    xor b
    xor l
    and [hl]
    ld d, l
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
    sub d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    db $f4
    ld d, c
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
    xor e
    xor b
    xor d
    and h
    ld c, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    add sp, $51
    add d
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor l
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    xor [hl]
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
    ld a, a
    xor b
    or e
    db $f4
    ld d, l
    ld d, d
    and $57
    nop
    add c
    adc b
    adc e
    adc e
    sbc h
    ld a, a
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
    rst $20
    ld d, c
    sub [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
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
    or c
    and h
    and b
    xor e
    ld a, a
    and e
    and h
    and b
    xor e
    rst $20
    ld d, c
    adc [hl]
    adc d
    db $f4
    ld a, a
    adc b
    jp nc, $a27f

    xor [hl]
    or h
    xor l
    or e
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
    add sp, $51
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
    add h
    add h
    sub l
    add h
    add h
    rst $20
    ld d, a
    nop
    add c
    adc b
    adc e
    adc e
    sbc h
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld c, a
    and d
    xor e
    and b
    xor b
    xor h
    or d
    ld a, a
    add h
    add h
    sub l
    add h
    add h
    ld a, a
    xor h
    and b
    cp b
    ld d, c
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or h
    xor l
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or [hl]
    and b
    cp b
    or d
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    db $f4
    ld a, a
    or [hl]
    and b
    xor b
    or e
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld c, a
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
    ld a, a
    and b
    xor l
    cp b
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
    add sp, $57
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    adc l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and e
    xor [hl]
    and $57
    nop
    add c
    adc b
    adc e
    adc e
    sbc h
    ld a, a
    adc h
    cp b
    ld a, a
    xor a
    xor [hl]
    xor a
    db $f4
    ld a, a
    and a
    and h
    ld c, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    add sp, $7f
    add b
    xor e
    xor e
    ld a, a
    and a
    and h
    ld d, c
    and e
    xor [hl]
    and h
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and l
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and e
    and b
    cp b
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    add a
    and h
    call nc, $a67f
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    and b
    ld a, a
    or c
    and h
    and b
    xor e
    ld a, a
    and a
    and h
    and b
    and e
    and b
    and d
    and a
    and h
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $7f
    adc h
    cp b
    ld a, a
    or d
    xor [hl]
    xor l
    ld d, l
    add c
    adc b
    adc e
    adc e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor l
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    or e
    add sp, $51
    add a
    and h
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
    and d
    and b
    xor e
    xor e
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
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
    ld c, a
    add d
    adc b
    sub e
    sbc b
    add sp, $51
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
    or [hl]
    and h
    xor l
    or e
    ld c, a
    xor [hl]
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
    add [hl]
    add b
    adc h
    add h
    ld d, c
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld c, a
    and c
    and h
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
    ld [hl], l
    ld d, a
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
    or [hl]
    and b
    or d
    ld c, a
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld d, c
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    add sp, $4f
    add c
    adc b
    adc e
    adc e
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
    ld d, c
    or e
    and b
    xor d
    and h
    xor l
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and a
    xor b
    or d
    ld c, a
    and l
    and b
    or e
    and a
    and h
    or c
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
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    and $51
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
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
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    ld d, d
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    and h
    and e
    ld c, a
    add c
    adc b
    adc e
    adc e
    call nc, $ad7f
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor h
    and b
    and e
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc a
    add d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld a, a
    or d
    cp b
    or d
    or e
    and h
    xor h
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
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
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    add c
    adc b
    adc e
    adc e
    call nc, $ad55
    or h
    xor h
    and c
    and h
    or c
    ld [hl], l
    ld d, a
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
    and d
    xor [hl]
    or c
    and e
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
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    add c
    adc b
    adc e
    adc e
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    add d
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and b
    and [hl]
    and h
    ld c, a
    or d
    cp b
    or d
    or e
    and h
    xor h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    dec bc
    ld [bc], a
    rlca
    inc bc
    inc b
    dec bc
    ld [bc], a
    nop
    inc bc
    ld bc, $0000
    ld l, [hl]
    ld c, h
    ld bc, $0001
    ld l, e
    ld c, h
    ld bc, $0007
    ld [hl], c
    ld c, h
    inc bc
    ld [$0607], sp
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    db $e4
    ld c, e
    ld [de], a
    rlca
    ld l, $07
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    dec h
    ld c, h
    rst $38
    rst $38
    ld h, $08
    add hl, bc
    ld [bc], a
    ld de, $ffff
    and b
    nop
    add hl, sp
    ld c, h
    rst $38
    rst $38
    ld bc, $50eb
    nop
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $00cd
    add hl, bc
    ld a, [$4c50]
    ld h, b
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    or a
    ld d, c
    ld c, [hl]
    ld [$512a], sp
    ld hl, $0886
    inc h
    ld d, c
    ld c, h
    db $ed
    ld d, c
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    ld b, [hl]
    ld d, c
    ld l, c
    nop
    ld c, a
    ld d, c
    dec d
    nop
    rrca
    inc hl
    nop
    adc [hl]
    adc d
    ld sp, hl
    ld l, c
    nop
    ld [hl+], a
    ld d, c
    xor b
    inc d
    sub c
    nop
    ld b, a
    ld c, h
    inc l
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, a
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld l, c
    ld [bc], a
    ld b, [hl]
    ld d, c
    ld l, c
    nop
    ld e, b
    ld d, c
    ld l, c
    ld [bc], a
    ld c, e
    ld d, c
    ld b, a
    ld c, h
    ld l, d
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld d, c
    and e
    ld d, d
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

Call_015_515d:
    inc c
    ld bc, $0047
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    and a
    and b
    or d
    xor l
    push de
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor b
    xor l
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
    adc b
    pop de
    xor e
    ld a, a
    and d
    and b
    or c
    or c
    cp b
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or d
    and h
    xor l
    and [hl]
    and h
    or c
    or d
    ld a, a
    xor [hl]
    xor l
    ld d, l
    xor h
    cp b
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
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
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
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
    ld c, a
    and b
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
    add sp, $7f
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
    rst $20
    ld d, a
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
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
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
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    adc a
    sub c
    add h
    sub d
    adc b
    add e
    add h
    adc l
    sub e
    add sp, $51
    adc h
    cp b
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    or h
    xor b
    xor e
    and e
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    xor b
    or d
    ld a, a
    and l
    and b
    or d
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
    xor l
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and c
    or c
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    or c
    ld d, l
    or e
    xor [hl]
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $57
    nop
    nop
    inc b
    ld de, $0508
    dec bc
    ld [bc], a
    ld de, $0509
    dec bc
    ld [bc], a
    dec b
    ld b, $04
    add hl, de
    add hl, bc
    dec b
    dec bc
    inc bc
    add hl, de
    add hl, bc
    ld bc, $0600
    dec bc
    nop
    jr nc, jr_015_538e

    nop
    nop
    nop
    ld [bc], a
    ld b, e
    dec c
    dec c
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    db $ec
    ld d, b
    rst $38
    rst $38
    ld b, b
    ld [de], a
    rrca
    ld [bc], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    nop
    ld b, e
    ld d, c
    ld c, c
    rlca
    nop
    nop
    ld sp, $002a
    add hl, bc
    adc a
    ld d, e
    ld sp, $005c
    add hl, bc
    sbc c
    ld d, e

Jump_015_5369:
    ld sp, $00b9
    ld [$539f], sp
    ld sp, $00ba
    ld [$538f], sp
    inc [hl]
    dec e
    nop
    ld [$539c], sp
    ld l, e
    ld b, a
    ld c, h
    jp nz, Jump_015_5554

    sbc [hl]
    xor a
    ld bc, $5c33
    nop
    ld c, c
    inc sp
    ld l, c
    rlca
    ld [hl-], a
    ld l, b
    rlca

jr_015_538e:
    sub c
    db $76
    ld [bc], a
    ld [bc], a
    ld b, a
    ld c, h
    ld l, $55
    ld d, h
    ld c, c
    sub c
    ld d, c
    dec c
    ld d, l
    ld d, c
    ld h, e
    ld d, h
    ld d, c
    call nc, Call_015_6b53
    ld b, a
    ld sp, $002a
    add hl, bc
    push bc
    ld d, e
    ld sp, $005c
    add hl, bc
    cp a
    ld d, e
    ld c, h
    ld h, c
    ld d, l
    ld d, h
    ld c, c
    inc sp
    cp d
    nop
    inc sp
    ld l, b
    rlca
    ld [hl-], a
    ld l, c
    rlca
    sub c
    ld c, h
    and $55
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc b
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    inc c
    inc bc
    nop
    inc c
    inc c
    nop
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
    or d
    and h
    and h
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or [hl]
    xor b
    and [hl]
    and [hl]
    xor e
    cp b
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a651
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld c, a
    ld sp, hl
    db $fc
    and $51
    adc h
    cp b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and h
    or a
    and d
    xor b
    or e
    and h
    and e
    ld d, c
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and h
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
    xor b
    or e
    ld [hl], l
    ld d, c

Call_015_5444:
    adc b
    jp nc, $b67f

    xor [hl]
    or c
    or c
    xor b
    and h
    and e
    ld [hl], l
    ld a, a
    adc b
    or d
    xor l
    push de
    ld c, a
    xor b
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
    and $57
    nop
    add e
    xor [hl]
    ld a, a

Jump_015_5467:
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
    and c
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld d, c
    and c
    xor [hl]
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $4f
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
    cp b
    xor [hl]
    or h
    ld d, c
    and e
    xor [hl]
    xor b
    xor l
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
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    xor [hl]
    or h
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
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
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    or e
    and a
    and b
    xor l
    ld a, a
    sub [hl]
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    adc [hl]
    adc d
    db $f4
    ld c, a
    or e
    and a
    and h
    xor l
    add sp, $7f
    add a
    and h
    or c
    and h
    call nc, $b37f
    and a
    and h
    ld d, l
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    add c
    adc [hl]
    sub e
    sub e
    adc e
    add h
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
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
    ld c, a
    or e
    xor [hl]
    xor [hl]
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
    ld d, a
    nop
    adc e
    and b
    xor e
    and b
    xor e
    and b
    ld a, a
    xor e
    and b
    xor e
    and b
    xor e
    and b
    xor e
    and b
    add sp, $4f
    add a
    and b
    or l
    and h
    ld a, a
    xor a
    xor e
    and h
    xor l
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld d, l
    or [hl]
    and b
    or e
    and h
    or c

Jump_015_5554:
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    xor e
    cp b
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
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    xor b
    or d
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor c
    xor b
    and [hl]
    and [hl]
    xor e
    cp b
    ld d, c
    or e
    or c
    and h
    and h
    db $f4
    ld a, a
    or d
    and a
    and h
    ld a, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and h
    ld c, a
    xor b
    or e
    call nc, $a37f
    and b
    xor l
    and [hl]
    and h
    or c
    xor [hl]
    or h
    or d
    add sp, $51
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    sub [hl]
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    db $f4
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    xor b
    and l
    ld a, a
    or d
    and a
    and h
    pop de
    xor e
    ld d, c
    xor e
    and h
    xor l
    and e
    ld a, a
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld c, a
    and c
    xor [hl]
    or e
    or e
    xor e
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
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
    sub [hl]
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    and $7f
    add d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $0b
    ld [bc], a
    rlca
    inc bc
    ld b, $0b
    ld [bc], a
    nop
    nop
    ld [bc], a
    add hl, hl
    ld [$0906], sp
    nop
    rst $38
    rst $38
    nop
    nop
    ld e, l
    ld d, e
    rst $38
    rst $38
    jr z, jr_015_5647

    add hl, bc
    ld [bc], a
    ld de, $ffff
    sub b
    nop
    and d
    ld d, e
    ld l, b

jr_015_5647:
    rlca
    nop
    nop
    ld d, c
    ld e, c
    ld d, [hl]
    ld d, c
    jp z, $0c56

    ld bc, $0c00
    inc bc
    nop
    inc c
    inc c
    nop
    nop
    adc [hl]
    xor l
    and d
    and h
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
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor h
    cp b
    ld d, c
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
    xor l
    push de
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $51
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
    adc [hl]
    adc b
    adc l
    sub e
    sub d
    db $f4
    ld c, a
    xor [hl]
    or c
    ld a, a
    adc a
    adc a
    db $f4
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld d, c
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    and [hl]
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    sub d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    db $f4
    ld a, a
    and b
    ld c, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    or h
    xor l
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $51
    adc b
    and l
    ld a, a
    or e
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
    or d
    db $f4
    ld c, a
    and a
    and h
    and b
    xor e
    ld a, a
    xor b
    or e
    ld a, a
    and b
    or e
    ld a, a
    and b
    ld a, a
    ld d, h
    db $e3
    ld d, l
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
    xor [hl]
    or c
    ld a, a
    or h
    or d
    and h
    ld d, l
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    dec bc
    ld [bc], a
    rlca
    inc bc
    rlca
    dec bc
    ld [bc], a
    nop
    inc bc
    ld bc, $0000
    ld d, e
    ld d, [hl]
    ld bc, $0001
    ld d, b
    ld d, [hl]
    ld bc, $0007
    ld d, [hl]
    ld d, [hl]
    ld [bc], a
    ld a, [hl-]
    ld [$0406], sp
    db $10
    rst $38
    rst $38
    and b
    nop
    ld c, d
    ld d, [hl]
    rst $38
    rst $38
    jr z, jr_015_5776

    add hl, bc
    ld [$ff10], sp
    rst $38
    nop
    nop

jr_015_5776:
    ld c, l
    ld d, [hl]
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    rrca
    ld d, a
    nop
    ld d, h
    ld c, c
    sub c
    inc c
    ld bc, $0c00
    inc c
    nop
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor l
    ld c, a
    and h
    or a
    xor a
    and h
    or c
    or e
    ld a, a
    and b
    or e
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    ld a, a
    sub d
    sub [hl]
    add h
    add h
    sub e
    ld a, a
    add a
    adc [hl]
    adc l
    add h
    sbc b
    add sp, $51
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
    ld c, a
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
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    sub d
    sub [hl]
    add h
    add h
    sub e
    ld a, a
    add a
    adc [hl]
    adc l
    add h
    sbc b
    db $f4
    ld d, c
    and c
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
    ld a, a
    xor l
    xor [hl]
    ld c, a
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
    ld a, a
    add a
    and b
    or l
    and h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    sub d
    sub [hl]
    add h
    add h
    sub e
    ld a, a
    add a
    adc [hl]
    adc l
    add h
    sbc b
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
    sub d
    sub [hl]
    add h
    add h
    sub e
    ld a, a
    add a
    adc [hl]
    adc l
    add h
    sbc b
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    sub d
    sub [hl]
    add h
    add h
    sub e
    ld a, a
    add a
    adc [hl]
    adc l
    add h
    sbc b
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
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
    and a
    and h
    call nc, $b44f
    xor a
    ld a, a
    or e
    xor [hl]
    and $57
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    or h
    or e
    ld a, a
    sub d
    sub [hl]
    add h
    add h
    sub e
    ld c, a
    add a
    adc [hl]
    adc l
    add h
    sbc b
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and h
    and h
    and $51
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor b
    or e
    and $57
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    or h
    or e
    ld a, a
    sub d
    sub [hl]
    add h
    add h
    sub e
    ld c, a
    add a
    adc [hl]
    adc l
    add h
    sbc b
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and h
    and h
    and $51
    adc b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld c, a
    and e
    and b
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld d, l
    and c
    and h
    ld a, a
    and e
    or c
    and b
    or [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add c
    sub h
    sub e
    sub e
    add h
    sub c
    add l
    sub c
    add h
    add h
    sbc h
    ld a, a
    add l
    or c
    and h
    and h
    and a
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [$020b], sp
    rlca
    inc bc
    ld [$020b], sp
    nop
    inc bc
    ld bc, $0000
    add h
    ld d, a
    ld bc, $0001
    add h
    ld d, a
    ld bc, $0007
    add a
    ld d, a
    ld bc, $0840
    ld b, $06
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    ld a, h
    ld d, a
    rst $38
    rst $38
    nop
    nop
    ld d, c
    sub e
    ld e, c
    ld d, c
    or a
    ld e, c
    ld d, c
    ld a, [de]
    ld e, d
    ld d, c
    ld a, [hl-]
    ld e, d
    ld d, e
    add b
    ld e, d
    inc c
    inc d
    nop
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
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    db $e3
    ld c, a
    sub c
    adc [hl]
    add e
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, -$6e
    sub e
    adc [hl]
    sub c
    add h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, -$6e
    sub e
    adc [hl]
    sub c
    add h
    ld c, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and e
    and h
    and d
    and h
    xor l
    or e
    ld a, a
    or d
    and h
    db $e3
    ld d, l
    xor e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or d
    xor [hl]
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
    or c
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    or l
    and b
    xor b
    xor e
    and b
    and c
    xor e
    and h
    ld d, c
    and b
    or d
    ld a, a
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
    ld c, a
    xor a
    or c
    xor b
    cp c
    and h
    or d
    add sp, $57
    nop
    adc b
    jp nc, $b17f

    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc h
    xor [hl]
    xor h
    call nc, $a67f
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld c, a
    and c
    and b
    or c
    and [hl]
    and b
    xor b
    xor l
    ld a, a
    and a
    or h
    xor l
    or e
    xor b
    xor l
    and [hl]
    add sp, $51
    sub d
    and a
    and h
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and c
    or h
    cp b
    or d
    ld c, a
    or d
    or e
    or h
    and l
    and l
    ld a, a
    and b
    or e
    ld a, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld d, l
    xor a
    or c
    xor b
    and d
    and h
    or d
    add sp, $57
    nop
    rst $30
    add l
    ld a, a
    sub d
    add h
    sub c
    sub l
    adc b
    add d
    add h
    ld a, a
    add d
    adc [hl]
    sub h
    adc l
    sub e
    add h
    sub c
    ld d, c
    ld hl, sp-$7b
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ldh [$92], a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    add b
    sub c
    adc d
    add h
    sub e
    ld d, c
    ld sp, hl
    add l
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    add d
    adc [hl]
    adc e
    adc e
    add h
    add d
    sub e
    adc b
    adc [hl]
    adc l
    ld d, c
    ld a, [$7f85]
    adc h
    add h
    add e
    adc b
    add d
    adc b
    adc l
    add h
    ld a, a
    add c
    adc [hl]
    sub a
    ld d, c
    ei
    add l
    ld a, a
    sub e
    adc h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld d, c
    db $fc
    add l
    ld a, a
    sub e
    sub c
    add b
    adc l
    sub b
    sub h
    adc b
    adc e
    ld a, a
    sub d
    sub b
    sub h
    add b
    sub c
    add h
    ld d, c
    sub c
    adc [hl]
    adc [hl]
    add l
    sub e
    adc [hl]
    adc a
    ld a, a
    adc e
    adc [hl]
    adc [hl]
    adc d
    adc [hl]
    sub h
    sub e
    ld d, a
    nop
    nop
    inc b
    rlca
    rlca
    add hl, bc
    dec bc
    ld [bc], a
    rlca
    ld [$0b09], sp
    ld [bc], a
    nop
    rrca
    ld [bc], a
    dec bc
    inc c
    nop
    ld [bc], a
    ld bc, $110b
    nop
    ld [bc], a
    nop
    ld c, $00
    adc l
    ld e, c
    nop
    inc bc
    nop
    sub b
    ld e, c
    inc b
    ld b, d
    dec b
    ld c, $06
    nop
    rst $38
    rst $38
    nop
    nop
    add c
    ld e, c
    rst $38
    rst $38
    ld l, $08
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    add a
    ld e, c
    rst $38
    rst $38
    dec h
    add hl, bc
    add hl, bc
    dec b
    ld bc, $ffff
    and b
    nop
    adc d
    ld e, c
    rst $38
    rst $38
    ld b, b
    add hl, bc
    rrca
    ld [bc], a
    ld de, $ffff
    nop
    nop
    add h
    ld e, c
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    sub h
    nop
    dec b
    nop
    ld c, c
    sub c
    ld l, e
    ld b, a
    sub h
    nop
    ld b, $00
    ld c, c
    sub c
    ld d, c
    dec h
    ld e, h
    ld d, c
    ld a, e
    ld e, h
    ld d, c
    or a
    ld e, h
    ld d, e
    jr z, jr_015_5bd6

    inc c
    inc d
    nop
    nop
    sub [hl]
    and h
    ld a, a
    xor b
    xor l
    or e
    and h
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    xor e
    xor e
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or e
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    add sp, $51
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
    and l
    or c
    and h
    and h
    ld c, a
    and [hl]
    xor b
    and l
    or e
    add sp, $7f
    add a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add c
    cp b

jr_015_5bd6:
    ld a, a
    and [hl]
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and a
    xor [hl]
    xor e
    and e
    db $f4
    ld a, a
    adc b
    ld d, c
    and c
    and h
    or e
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
    xor b
    xor e
    xor e
    ld c, a
    and e
    and h
    or l
    and h
    xor e
    xor [hl]
    xor a
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld d, l
    or e
    and h
    and d
    and a
    xor l
    xor b
    or b
    or h
    and h
    or d
    add sp, $57
    nop
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    ld c, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and h
    xor l
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld d, l
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    add sp, $51
    adc b
    or e
    call nc, $a77f
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    and h
    db $e3
    ld c, a
    and d
    xor b
    and e
    and h
    ld a, a
    or [hl]
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
    or d
    ld d, l
    or e
    xor [hl]
    ld a, a
    xor d
    and h
    and h
    xor a
    add sp, $57
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    add b
    add c
    sub c
    add b
    ld a, a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
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
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    ld c, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, -$6e
    sub e
    adc [hl]
    sub c
    add h
    ld c, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    xor h
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor b
    cp c
    and h
    ld d, c
    or e
    and a
    and b
    or e
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
    ld a, a
    xor b
    or d
    ld c, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and d
    xor b
    or e
    cp b
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or d
    and h
    xor e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    or d
    ld a, a
    or h
    xor l
    xor h
    and b
    or e
    and d
    and a
    and h
    and e
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld d, l
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and h
    xor e
    or d
    and h
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    sub e
    or c
    and b
    or l
    and h
    xor e
    ld c, a
    add d
    xor [hl]
    xor h
    xor a
    and b
    xor l
    xor b
    xor [hl]
    xor l
    ld d, c
    ld hl, sp-$7b
    ld a, a
    sub e
    sub c
    add b
    adc b
    adc l
    add h
    sub c
    ldh [$92], a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    adc h
    add b
    sub c
    adc d
    add h
    sub e
    ld d, a
    nop
    nop
    inc bc
    nop
    inc c
    ld bc, $0d0b
    nop
    rrca
    inc bc
    dec bc
    dec bc
    nop
    ld [bc], a
    ld bc, $110b
    nop
    ld [bc], a
    nop
    ld c, $00
    db $76
    ld e, e
    nop
    inc bc
    nop
    ld a, c
    ld e, e
    dec b
    add hl, sp
    add hl, bc
    ld de, $0007
    rst $38
    rst $38
    nop
    nop
    ld e, l
    ld e, e
    rst $38
    rst $38
    add hl, sp
    ld a, [bc]
    ld de, $0008
    rst $38
    rst $38
    nop
    nop
    ld h, l
    ld e, e
    rst $38
    rst $38
    daa
    ld a, [bc]
    dec c
    inc b
    db $10
    rst $38
    rst $38
    nop
    nop
    ld l, l
    ld e, e
    rst $38
    rst $38
    inc h
    ld b, $0a
    dec b
    ld [bc], a
    rst $38
    rst $38
    add b
    nop
    ld [hl], b
    ld e, e
    rst $38
    rst $38
    ld b, b
    ld a, [bc]
    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop
    ld [hl], e
    ld e, e
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    sub h
    nop
    rlca
    nop
    ld c, c
    sub c
    ld d, c
    call z, Call_015_515d
    dec d
    ld e, [hl]
    ld d, e
    ld [hl], h
    ld e, [hl]
    inc c
    inc d
    nop
    nop
    adc b
    db $f4
    ld a, a
    adc b
    db $f4
    ld a, a
    adc b
    jp nc, $b17f

    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    xor b
    xor h
    xor a
    and b
    or e
    xor b
    and h
    xor l
    or e
    rst $20
    ld d, c
    adc b
    ld a, a
    or h
    or d
    and h
    ld a, a
    sub a
    ld a, a
    sub d
    adc a
    add h
    add h
    add e
    ld a, a
    xor b
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
    xor [hl]
    ld a, a
    or d
    xor a
    and h
    and h
    and e
    ld a, a
    or h
    xor a
    ld d, l
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub [hl]
    and a
    and h
    xor l
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
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or h
    or d
    and h
    ld a, a
    sub a
    ld d, l
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    and $51
    adc b
    or e
    call nc, $a07f
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    add sp, $7f
    adc b
    or e
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    xor c
    and b
    and d
    xor d
    or d
    ld a, a
    or h
    xor a
    ld d, l
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    rst $20
    ld d, a
    nop
    add l
    xor [hl]
    or c
    ld a, a
    sub l
    xor b
    and d
    or e
    xor [hl]
    or c
    cp b
    ld c, a
    sub d
    and h
    and h
    xor d
    and h
    or c
    or d
    ld d, c
    ld sp, hl
    add l
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    add d
    adc [hl]
    adc e
    adc e
    add h
    add d
    sub e
    adc b
    adc [hl]
    adc l
    ld d, a
    nop
    nop
    inc bc
    nop
    inc c
    ld bc, $0c0b
    nop
    rrca
    ld [bc], a
    dec bc
    ld c, $00
    ld [bc], a
    ld bc, $110b
    nop
    ld [bc], a
    nop
    ld c, $00
    add $5d
    nop
    inc bc
    nop
    ret


    ld e, l
    inc bc
    add hl, sp
    dec b
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    cp b
    ld e, l
    rst $38
    rst $38
    dec hl
    add hl, bc
    db $10
    ld a, [bc]
    db $10
    rst $38
    rst $38
    add b
    nop
    ret nz

    ld e, l
    rst $38
    rst $38
    inc l
    add hl, bc
    ld b, $04
    db $10
    rst $38
    rst $38
    nop
    nop
    jp $ff5d


    rst $38
    nop
    nop
    ld l, e
    ld b, a
    sub h
    nop
    ld [$4900], sp
    sub c
    ld d, c
    ld [$515f], sp
    ld d, d
    ld e, a
    ld l, e
    ld b, a
    ld c, h
    ld [hl], h
    ld e, a
    ld d, h
    ld c, c
    db $76
    dec b
    nop
    sub c
    ld d, e
    dec c
    ld h, b
    inc c
    inc d
    nop
    nop
    add a
    and h
    cp b
    add sp, $7f
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    ld a, a
    and l
    and h
    and h
    and e
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    adc a
    sub c
    adc [hl]
    db $e3
    ld c, a
    sub e
    add h
    adc b
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    or c
    and b
    xor l
    xor d
    ld a, a
    or h
    xor a
    ld d, l
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    add sp, $57
    nop
    adc b
    sub c
    adc [hl]
    adc l
    ld a, a
    and b
    and e
    and e
    or d
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
    call nc, $837f
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $57
    nop
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and c
    cp b
    ld d, c
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    or l
    xor b
    and b
    ld a, a
    and b
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
    and d
    and b
    and c
    xor e
    and h
    add sp, $51
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    xor [hl]
    or h
    or c
    sbc h
    ld c, a
    adc h
    add b
    add d
    add a
    adc [hl]
    adc d
    add h
    db $f4
    ld a, a
    adc d
    add b
    add e
    add b
    add c
    sub c
    add b
    db $f4
    ld d, c
    add a
    add b
    sub h
    adc l
    sub e
    add h
    sub c
    ld a, a
    and b
    xor l
    and e
    db $f4
    ld a, a
    or h
    xor h
    db $f4
    ld c, a
    add [hl]
    sub c
    add b
    sub l
    add h
    adc e
    add h
    sub c
    add sp, $51
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
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc e
    and h
    or e
    ld a, a
    sub h
    or d
    ld a, a
    adc a
    or h
    xor h
    xor a
    ld a, a
    sub h
    xor a
    ld c, a
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
    ld d, c
    ld a, [$7f85]
    adc h
    add h
    add e
    adc b
    add d
    adc b
    adc l
    add h
    ld a, a
    add c
    adc [hl]
    sub a
    ld d, a
    nop
    nop
    inc bc
    nop
    inc c
    ld bc, $0f0b
    nop
    rrca
    ld [bc], a
    dec bc
    dec c
    nop
    ld [bc], a
    ld bc, $110b
    nop
    ld [bc], a
    nop
    ld c, $00
    ld [bc], a
    ld e, a
    nop
    inc bc
    nop
    dec b
    ld e, a
    inc b
    add hl, sp
    add hl, bc
    ld de, $0007
    rst $38
    rst $38
    nop
    nop
    jp hl


    ld e, [hl]
    rst $38
    rst $38
    inc hl
    dec bc
    rrca
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    pop af
    ld e, [hl]
    rst $38
    rst $38
    dec h
    ld b, $0b
    dec b
    ld bc, $ffff
    nop
    nop
    db $f4
    ld e, [hl]
    rst $38
    rst $38
    inc bc
    dec b
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    rst $30
    ld e, [hl]
    rst $38
    rst $38
    nop
    ld bc, $9002
    ld h, b
    inc e
    dec bc
    ld b, $00
    sbc c
    ld h, b
    ld l, [hl]
    rlca
    sub b
    ld l, a
    rlca
    sub b
    ld l, e
    ld b, a
    ld sp, $005f
    add hl, bc
    xor l
    ld h, b
    ld sp, $004b
    add hl, bc
    jp nz, $0360

    or [hl]
    ld h, b
    ld sp, $004b
    add hl, bc
    ret z

    ld h, b
    inc bc
    cp h
    ld h, b
    sub h
    nop
    add hl, bc
    nop
    ld c, c
    sub c
    sub h
    nop
    ld a, [bc]
    nop
    ld c, c
    sub c
    sub h
    nop
    dec bc
    nop
    ld c, c
    sub c
    sub h
    nop
    inc c
    nop
    ld c, c
    sub c
    ld l, e
    ld b, a
    inc e
    dec bc
    rlca
    nop
    ld [de], a
    ld h, c
    inc [hl]
    ld e, e
    nop
    add hl, bc
    ld [de], a
    ld h, c
    rrca
    ld e, c
    nop
    ld c, h
    ld b, e
    ld h, c
    ld d, l
    ld a, [bc]
    sub l
    xor $60
    ld a, [bc]
    ld sp, $60fd
    inc bc
    inc bc
    ld h, c
    ld c, h
    ld e, d
    ld h, c
    ld d, l
    sbc [hl]
    jp c, $0801

    ld d, $61
    ld [hl], $5b
    nop
    ld c, c
    sub c
    ld c, h
    and [hl]
    ld h, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ret c

    ld h, c
    ld d, l
    sbc [hl]
    call nc, $0801
    ld d, $61
    ld [hl], $5b
    nop
    ld c, c
    sub c
    ld c, h
    ld [bc], a
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    rrca
    ld h, [hl]
    nop
    rlca
    ld [bc], a
    ld a, [hl+]
    ld h, c
    ld c, h
    ld b, c
    ld h, d
    ld d, h
    ld c, c
    rrca
    inc de
    nop
    sub c
    ld c, h
    ld a, c
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld d, c
    xor l
    ld h, d
    ld l, e
    ld b, a
    sub [hl]
    nop
    ld d, h
    ld c, c
    sub c
    ld d, c
    di
    ld h, d
    ld d, e
    ld h, h
    ld h, e
    inc c
    inc d
    nop
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    add sp, $7f
    adc [hl]
    and a
    db $f4
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
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $b57f
    and h
    or c
    cp b
    ld a, a
    and b
    or e
    or e
    and b
    and d
    and a
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and c
    and h
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld d, l
    xor a
    and b
    xor b
    or c
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
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
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld c, a
    xor b
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    sub e
    adc h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    add sp, $57
    nop
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
    xor b
    xor e
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    sub e
    adc h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
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
    and b
    or c
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
    and c
    and h
    ld a, a
    sub e
    adc h
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
    ld d, c
    xor c
    or h
    or d
    or e
    ld a, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
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
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc h
    sbc b
    sub d
    sub e
    add h
    sub c
    sbc b
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    add sp, $51
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    and c
    and h
    and h
    xor a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and [hl]
    and h
    or e
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
    adc h
    sbc b
    sub d
    sub e
    add h
    sub c
    sbc b
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    ld c, a
    xor [hl]
    xor a
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    or c
    and h
    or b
    or h
    xor b
    or c
    and h
    or d
    ld a, a
    and b
    ld d, l
    add [hl]
    and b
    xor h
    and h
    ld a, a
    add c
    xor [hl]
    cp b
    ld a, a
    add d
    xor [hl]
    xor e
    xor [hl]
    or c
    add sp, $57
    nop
    adc [hl]
    xor l
    ld a, a
    sub d
    or h
    xor l
    and e
    and b
    cp b
    or d
    db $f4
    ld a, a
    and b
    ld a, a
    xor e
    and b
    and e
    cp b
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or e
    xor [hl]
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub d
    and a
    and h
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and [hl]
    xor b
    or l
    and h
    or d
    ld c, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    sub e
    adc h
    or d
    rst $20
    ld d, a
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
    xor l
    and b
    xor h
    and h
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    ld d, l
    and b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    xor l
    and b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or c
    and h
    db $e3
    ld c, a
    and l
    xor e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld d, c
    xor [hl]
    or c
    xor b
    and [hl]
    xor b
    xor l
    and b
    xor e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    call nc, $a54f
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add d
    or h
    or d
    or e
    xor [hl]
    xor h
    xor b
    cp c
    and h
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
    ld d, c
    ei
    add l
    ld a, a
    sub e
    adc h
    ld a, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    ld d, a
    nop
    nop
    inc bc
    nop
    inc c
    ld bc, $0e0b
    nop
    rrca
    ld bc, $100b
    nop
    ld [bc], a
    ld bc, $110b
    nop
    ld [bc], a
    nop
    ld c, $00
    dec a
    ld h, c
    nop
    inc bc
    nop
    ld b, b
    ld h, c
    ld b, $39
    add hl, bc
    inc c
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    sbc h
    ld h, b
    rst $38
    rst $38
    jr z, jr_015_63be

    rlca
    ld [bc], a
    ld de, $ffff
    nop
    nop
    jr nc, jr_015_641e

    rst $38

jr_015_63be:
    rst $38
    inc hl
    rlca
    ld a, [bc]
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    inc sp
    ld h, c
    rst $38
    rst $38
    dec l
    add hl, bc
    ld de, $2202
    rst $38
    rst $38
    nop
    nop
    ld a, [hl-]
    ld h, c
    rst $38
    rst $38
    ld h, $05
    dec c
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    jr jr_015_6445

    rst $38
    rst $38
    ld b, d
    add hl, bc
    dec bc
    rlca
    nop
    rst $38
    rst $38
    add b
    nop
    adc $60
    ld h, e
    rlca
    nop
    nop
    ld b, a
    ld c, h
    bit 4, h
    rrca
    ld d, c
    nop
    ld c, a
    ld a, b
    ld h, h
    ld e, c
    ld d, b
    ld b, $01
    rrca
    ld h, h
    ld b, $02
    add hl, hl
    ld h, h
    ld b, $03
    ld b, e
    ld h, h
    ld c, c
    sub c
    inc h
    nop
    nop
    nop
    ret z

    ld b, $02
    ld l, d
    ld h, h
    rra
    ld l, $01
    ld [$6471], sp

jr_015_641e:
    inc hl
    nop
    nop
    nop
    ret z

    ld b, c
    ld l, $00
    inc bc
    ld e, l
    ld h, h
    inc h
    nop
    nop
    ld bc, $062c
    ld [bc], a
    ld l, d
    ld h, h
    rra
    cpl
    ld bc, $7108
    ld h, h
    inc hl
    nop
    nop
    ld bc, $412c
    cpl
    nop
    inc bc
    ld e, l
    ld h, h
    inc h
    nop

jr_015_6445:
    nop
    ld bc, $065e
    ld [bc], a
    ld l, d
    ld h, h
    rra
    jr nc, @+$03

    ld [$6471], sp
    inc hl
    nop
    nop
    ld bc, $415e
    jr nc, jr_015_645a

jr_015_645a:
    inc bc
    ld e, l
    ld h, h
    adc e
    ld a, [bc]
    add l
    rra
    nop
    ld c, h
    rst $28
    ld h, h
    ld d, l
    ld b, l
    inc bc
    ld sp, hl
    ld h, e
    ld c, h
    ld [de], a
    ld h, l
    ld d, h
    inc bc
    ld sp, hl
    ld h, e
    ld c, h
    dec hl
    ld h, l
    ld d, h
    inc bc
    ld sp, hl
    ld h, e
    ld b, b
    ld [bc], a
    nop
    dec bc
    inc de
    add b
    ld h, h
    ld bc, $0480
    add l
    sub c
    add h
    sub d
    add a
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    ld a, a
    ldh a, [$f8]
    or $f6
    ld d, b
    sub d
    adc [hl]
    add e
    add b
    ld a, a
    adc a
    adc [hl]
    adc a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh a, [$f9]
    or $f6
    ld d, b
    adc e
    add h
    adc h
    adc [hl]
    adc l
    add b
    add e
    add h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ldh a, [$f9]
    ei
    or $50
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld d, c
    ld c, e
    ld h, l
    ld d, c
    jp z, $5365

    ld a, [de]
    ld h, [hl]
    inc c
    inc d
    nop
    nop
    add b
    ld a, a
    or l
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    rst $20
    ld c, a
    add a
    and h
    or c
    and h
    call nc, $b37f
    and a
    and h
    ld a, a
    xor h
    and h
    xor l
    or h
    add sp, $57
    nop
    add d
    xor e
    and b
    xor l
    and [hl]
    rst $20
    ld a, a
    add b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    ld d, l
    xor a
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or e
    or h
    and l
    and l
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
    or d
    or e
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc e
    sub h
    add d
    adc d
    sbc b
    ld a, a
    add d
    add a
    add b
    adc l
    adc l
    add h
    adc e
    and $51
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
    or e
    xor [hl]
    ld c, a
    or [hl]
    xor b
    xor l
    db $f4
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    or d
    ld a, a
    xor h
    and b
    xor l
    cp b
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
    ld a, a
    or e
    xor [hl]
    ld d, c
    and [hl]
    and h
    or e
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
    ld a, a
    adc b
    add e
    ld c, a
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
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    db $f4
    ld c, a
    or e
    or c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or l
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld d, l
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    call nc, $a37f
    or c
    xor b
    xor l
    xor d
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
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    sub e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    add c
    or c
    and h
    and b
    xor d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    sub d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    db $fc
    add l
    ld a, a
    sub e
    sub c
    add b
    adc l
    sub b
    sub h
    adc b
    adc e
    ld a, a
    sub d
    sub b
    sub h
    add b
    sub c
    add h
    ld d, a
    nop
    nop
    inc bc
    nop
    rrca
    ld [bc], a
    dec bc
    rrca
    nop
    ld [bc], a
    ld bc, $110b
    nop
    dec c
    ld bc, $120b
    nop
    ld b, $00
    ld c, $00
    push bc
    ld h, h
    nop
    inc bc
    nop
    ret z

    ld h, h
    ld bc, $0108
    push af
    ld h, e
    ld bc, $0109
    push af
    ld h, e
    ld bc, $010a
    push af
    ld h, e
    ld bc, $010b
    push af
    ld h, e
    ld [bc], a
    jr z, jr_015_6685

    ld c, $05
    ld bc, $ffff
    and b

jr_015_6685:
    nop
    cp a
    ld h, h
    rst $38
    rst $38
    dec hl
    ld b, $0c
    rlca
    nop
    rst $38
    rst $38
    add b
    nop
    jp nz, $ff64

    rst $38
    nop
    nop
    ld b, a
    sub l
    ldh [$66], a
    ld c, c
    ld [$66df], sp
    adc e
    dec b
    add l
    ld l, [hl]
    nop
    ld a, b
    inc a
    add [hl]
    ld sp, $0307
    add hl, bc
    rst $18
    ld h, [hl]
    ld sp, $0304
    add hl, bc
    bit 4, [hl]
    ld sp, $0305
    add hl, bc
    push de
    ld h, [hl]
    ld sp, $0306
    add hl, bc
    pop bc
    ld h, [hl]
    inc sp
    inc b
    inc bc
    ld [hl-], a
    dec b
    inc bc
    ld [hl-], a
    ld b, $03
    sub c
    ld [hl-], a
    inc b
    inc bc
    inc sp
    dec b
    inc bc
    ld [hl-], a
    ld b, $03
    sub c
    ld [hl-], a
    inc b
    inc bc
    ld [hl-], a
    dec b
    inc bc
    inc sp
    ld b, $03
    sub c
    sub c
    rlca
    inc bc
    ld [bc], a
    inc bc
    scf
    inc b
    inc b
    dec bc
    dec bc
    dec b
    inc bc
    dec bc
    inc c
    ld b, $03
    dec bc
    dec c
    rlca
    inc bc
    dec bc
    ld c, $08
    inc bc
    dec bc
    rrca
    add hl, bc
    ld [bc], a
    dec bc
    db $10
    rst $38
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $0bff
    dec bc
    inc bc
    ld [bc], a
    rst $38
    dec bc
    dec bc
    nop
    ld bc, $0300
    nop
    sbc c
    ld h, [hl]
    nop
    nop
    ld [bc], a
    ld bc, $671b
    ld [bc], a
    dec hl
    ld h, a
    inc [hl]
    ld h, c
    nop
    add hl, bc
    ld [hl+], a
    ld h, a
    sub b
    ld a, d
    nop
    ld [bc], a
    ccf
    ld a, d
    nop
    inc b
    rrca
    sub b
    inc [hl]
    ld h, c
    nop
    add hl, bc
    jr c, jr_015_6798

    inc sp
    ldh a, [rTMA]
    ld [hl-], a
    pop af
    ld b, $90
    ld [hl-], a
    ldh a, [rTMA]
    inc sp
    pop af
    ld b, $90
    ld b, a
    sub h
    inc b
    nop
    nop
    ld c, c
    sub c
    ld d, c
    ld a, a
    ld h, a
    ld l, e
    ld b, a
    ld c, h
    jp nc, Jump_015_5467

    ld c, c
    db $76
    inc b
    ld bc, $5191
    add hl, sp
    ld l, b
    ld b, a
    ld c, h
    ld h, a
    ld l, b
    ld d, h
    ld c, c
    db $76
    ld b, $01
    ld b, a
    ld c, h
    ld [hl], c
    ld l, b
    ld d, h
    ld c, c
    db $76
    ld b, $03
    sub c
    ld d, c
    adc [hl]
    ld l, b
    ld d, c
    ld bc, $5169
    ld b, d
    ld l, c
    ld d, e
    jp Jump_015_5369


    dec hl
    ld l, d
    ld d, e
    and [hl]
    ld l, d
    ld d, e
    ld de, $006b
    sub [hl]
    and a
    and h
    or [hl]
    db $f4
    ld a, a
    adc b
    jp nc, $b37f

    xor b
    or c
    and h
    and e
    add sp, $51
    adc b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    or e
    xor b

jr_015_6798:
    xor h
    and h
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
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
    ld d, c
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    ld c, a
    and l
    or c
    xor [hl]
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
    add sp, $57
    nop
    adc a
    and b
    or c
    and e
    xor [hl]
    xor l
    and $7f
    sub [hl]
    and a
    xor [hl]
    ld a, a
    or d
    and b
    cp b
    or d
    ld c, a
    and b
    xor l
    ld a, a
    and b
    and e
    or h
    xor e
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    or d
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
    and c
    and h
    ld c, a
    and c
    and b
    and d
    xor d
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
    ld a, a
    or e
    xor [hl]
    ld d, c
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld c, a
    and e
    xor [hl]
    xor e
    xor e
    or d
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    cp b
    ld a, a
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
    ld c, a
    or d
    and b
    xor e
    and h
    or d
    ld a, a
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
    ld d, l
    or d
    xor [hl]
    ld a, a
    xor [hl]
    and l
    or e
    and h
    xor l
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or [hl]
    rst $20
    ld d, a
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
    or b
    or h
    xor b
    or e
    ld c, a
    and c
    xor [hl]
    or e
    and a
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
    and $57
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $b27f
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    adc b
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
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
    or e
    and a
    and h
    ld c, a
    xor l
    and h
    and d
    and h
    or d
    or d
    and b
    or c
    cp b
    ld a, a
    and d
    and b
    or d
    and a
    ld [hl], l
    ld d, c
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or d
    and h
    xor e
    xor e
    ld c, a
    xor [hl]
    and l
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    ld d, l
    adc b
    sub $a4
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
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
    ld a, a
    xor b
    or d
    ld c, a
    or d
    xor [hl]
    ld a, a
    and d
    and a
    and h
    and b
    xor a
    rst $20
    ld d, c
    adc b
    ld a, a
    and c
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    db $f4
    ld c, a
    xor h
    cp b
    ld a, a
    adc a
    add b
    add d
    adc d
    call nc, $a27f
    or c
    and b
    xor h
    xor h
    and h
    and e
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    cp c
    and h
    and e
    ld a, a
    xor [hl]
    or c
    ld d, c
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and d
    and a
    xor b
    xor a
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld [hl], l
    ld d, c
    sub d
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
    and c
    or h
    cp b
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    add l
    sub h
    adc e
    adc e
    ld a, a
    add a
    add h
    add b
    adc e
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
    xor b
    and l
    ld c, a
    or e
    and a
    and h
    or c
    and h
    call nc, $a07f
    xor l
    cp b
    ld a, a
    xor e
    and h
    and l
    or e
    and $57
    nop
    sub e
    and a
    and h
    or d
    and h
    ld a, a
    and c
    xor b
    xor l
    xor [hl]
    and d
    or h
    xor e
    and b
    or c
    or d
    ld c, a
    xor e
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
    and l
    and b
    or c
    ld d, c
    and b
    or [hl]
    and b
    cp b
    add sp, $7f
    adc h
    and b
    cp b
    and c
    and h
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
    xor h
    cp b
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    add sp, $51
    adc b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor l
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
    ld a, a
    and [hl]
    or c
    and h
    and h
    xor l
    ld a, a
    or c
    xor [hl]
    xor [hl]
    and l
    and $57
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub d
    xor [hl]
    xor h
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
    ld c, a
    and b
    or c
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
    xor [hl]
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and b
    and e
    rst $20
    ld d, c
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor b
    or c
    and h
    and e
    ld a, a
    and b
    ld c, a
    and l
    xor e
    or h
    or c
    or c
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    or d
    rst $20
    ld d, c
    sub e
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
    xor h
    and h
    ld a, a
    and l
    and h
    and h
    xor e
    ld c, a
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
    ld d, l
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    add l
    adc b
    sub d
    add a
    add h
    sub c
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
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    sub d
    adc a
    adc e
    add b
    sub d
    add a
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    rst $20
    ld d, c
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld c, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    or l
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    xor [hl]
    xor e
    xor e
    or d
    and $51
    adc b
    xor l
    or d
    and h
    or c
    or e
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld c, a
    or e
    or h
    or c
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    or c
    and b

Call_015_6b53:
    xor l
    xor d
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $a07f
    xor e
    xor h
    xor [hl]
    or d
    or e
    ld c, a
    and h
    xor h
    xor a
    or e
    cp b
    ld [hl], l
    ld d, a
    nop
    nop
    ld bc, $0d01
    inc bc
    dec bc
    stop
    inc b
    inc bc
    rrca
    inc bc
    ld [hl], e
    ld h, a
    dec b
    rrca
    inc bc
    db $76
    ld h, a
    ld b, $0f
    inc bc
    ld a, c
    ld h, a
    nop
    inc bc
    ld bc, $677c
    ld [$0839], sp
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    ccf
    ld h, a
    ldh a, [rTMA]
    ld l, $07
    ld c, $05
    ld bc, $ffff
    add b
    nop
    ld b, [hl]
    ld h, a
    rst $38
    rst $38
    ld a, [hl-]
    dec b
    ld b, $07
    nop
    rst $38
    rst $38
    sub b
    nop
    ld c, c
    ld h, a
    rst $38
    rst $38
    ld h, $08
    rlca
    ld [bc], a
    ld de, $ffff
    and b
    nop
    ld d, h
    ld h, a
    pop af
    ld b, $2b
    ld a, [bc]
    ld [de], a
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld d, a
    ld h, a
    pop af
    ld b, $2d
    inc b
    dec bc
    dec b
    ld bc, $ffff
    nop
    nop
    ld l, d
    ld h, a
    ldh a, [rTMA]
    add hl, hl
    rlca
    add hl, bc
    ld [bc], a
    ld de, $ffff
    and b
    nop
    ld l, l
    ld h, a
    ldh a, [rTMA]
    dec h
    ld a, [bc]
    dec b
    rlca
    nop
    rst $38
    rst $38
    add b
    nop
    ld [hl], b
    ld h, a
    ldh a, [rTMA]
    nop
    ld bc, $f902
    ld l, e
    ld sp, $0044
    ld [$6c19], sp
    ld hl, $0836
    ld c, $6c
    inc e
    dec bc
    ld b, $03
    ld de, $066c
    ld b, $11
    ld l, h
    ld l, a
    dec c
    sub b
    inc [hl]
    ld e, [hl]
    nop
    add hl, bc
    add hl, de
    ld l, h
    ld l, [hl]
    dec c
    sub b
    ld l, e
    ld b, a
    ld c, h
    adc d
    ld [hl], c
    ld d, h
    ld c, c
    db $76
    dec c
    inc bc
    sub c
    inc c
    ld [hl-], a
    nop
    ld l, e
    ld b, a
    ld c, h
    ld d, b
    ld l, [hl]
    ld d, h
    ld hl, $0836
    jp Jump_015_4c6c


    adc e
    ld l, [hl]
    rrca
    ld c, a
    nop
    ld c, a
    ret


    ld l, h
    ld e, c
    ld d, b
    ld b, $01
    ld c, l
    ld l, h
    ld b, $02
    ld l, c
    ld l, h
    ld b, $03
    add l
    ld l, h
    inc bc
    cp l
    ld l, h
    daa
    ld a, h
    dec d
    ld b, $02
    or c
    ld l, h
    ld b, c
    ret c

    nop
    nop
    and c
    ld l, h
    ld [$6cbd], sp
    rra
    ret c

    ld bc, $b708
    ld l, h
    ld h, $7c
    dec d
    inc bc
    and [hl]
    ld l, h
    daa
    ld a, h
    dec d
    ld b, $02
    or c
    ld l, h
    ld b, c
    call RST_00
    and c
    ld l, h
    ld [$6cbd], sp
    rra
    call $0801
    or a
    ld l, h
    ld h, $7c
    dec d
    inc bc
    and [hl]
    ld l, h
    daa
    ld a, h
    dec d
    ld b, $02
    or c
    ld l, h
    ld b, c
    and $00
    nop
    and c
    ld l, h
    ld [$6cbd], sp
    rra
    and $01
    ld [$6cb7], sp
    ld h, $7c
    dec d
    inc bc
    and [hl]
    ld l, h
    ld c, h
    xor b
    ld l, [hl]
    ld c, [hl]
    sub c
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, h
    cp l
    ld l, [hl]
    ld d, h
    inc bc
    ld [hl], $6c
    ld c, h
    bit 5, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    add sp, $6e
    ld d, h
    ld c, c
    sub c
    ld c, h
    add hl, bc
    ld l, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec [hl]
    ld l, a
    ld d, h
    ld c, c
    sub c
    ld b, b
    ld [bc], a
    nop
    dec bc
    rrca
    pop de
    ld l, h
    ld bc, $0480
    sub e
    adc h
    ld hl, sp-$05
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ei
    ei
    or $f6
    ld d, b
    sub e
    adc h
    rst $30
    ld a, [$7f7f]
    ld a, a
    ld a, a
    ei
    ei
    or $f6
    ld d, b
    sub e
    adc h
    ld sp, hl
    cp $7f
    ld a, a
    ld a, a
    ld a, a
    ei
    ei
    or $f6
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld l, e
    ld b, a
    ld c, h
    ld d, b
    ld l, [hl]
    ld d, h
    ld hl, $0836
    jp Jump_015_4c6c


    adc e
    ld l, [hl]
    rrca
    ld c, a
    nop
    ld c, a
    or b
    ld l, l
    ld e, c
    ld d, b
    ld b, $01
    ld h, $6d
    ld b, $02
    ld d, h
    ld l, l
    ld b, $03
    add d
    ld l, l
    inc bc
    cp l
    ld l, h
    daa
    ld h, h
    nop
    ld b, $02
    or c
    ld l, h
    inc e
    ld bc, $0606
    or a
    ld l, h
    ld b, b
    ccf
    nop
    nop
    and c
    ld l, h
    ld [$6cbd], sp
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, h
    cp l
    ld l, [hl]
    ld d, h
    dec d
    ccf
    rrca
    add hl, sp
    nop
    dec l
    ccf
    dec b
    nop
    nop
    ld h, $64
    nop
    inc bc
    inc c
    ld l, l
    daa
    jr nz, jr_015_6d5a

    ld b, $02
    or c

jr_015_6d5a:
    ld l, h
    inc e
    ld bc, $0606
    or a
    ld l, h
    ld b, b
    ld l, b
    nop
    nop
    and c
    ld l, h
    ld [$6cbd], sp
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, h
    cp l
    ld l, [hl]
    ld d, h
    dec d
    ld l, b
    rrca
    add hl, sp
    nop
    dec l
    ld l, b
    rrca
    nop
    nop
    ld h, $20
    inc bc
    inc bc
    inc c
    ld l, l
    daa
    call c, $0605
    ld [bc], a
    or c
    ld l, h
    inc e
    ld bc, $0606
    or a
    ld l, h
    ld b, b
    jp z, RST_00

    and c
    ld l, h
    ld [$6cbd], sp
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, h
    cp l
    ld l, [hl]
    ld d, h
    dec d
    jp z, $390f

    nop
    dec l
    jp z, $000f

    nop
    ld h, $dc
    dec b
    inc bc
    inc c
    ld l, l
    ld b, b
    ld [bc], a
    nop
    dec bc
    ld de, $6db8
    ld bc, $0480
    add b
    add c
    sub c
    add b
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $30
    or $f6
    ld d, b
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cp $f6
    or $50
    sub [hl]
    adc [hl]
    add c
    add c
    sub h
    add l
    add l
    add h
    sub e
    ld a, a
    ld a, a
    rst $30
    ei
    or $f6
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld l, e
    ld b, a
    ld c, h
    ld d, l
    ld l, a
    ld d, h
    ld c, c
    db $76
    cp $02
    sub c
    ld l, e
    ld b, a
    ld c, h
    sbc [hl]
    ld l, a
    ld d, h
    ld c, c
    db $76
    rlca
    inc bc
    sub c
    ld l, e
    ld b, a
    ld c, h
    db $f4
    ld l, a
    ld d, h
    ld c, c
    db $76
    ld [$9102], sp
    ld l, e
    ld b, a
    ld c, h
    dec hl
    ld [hl], b
    ld d, h
    ld c, c
    db $76
    add hl, bc
    inc bc
    sub c
    ld d, c
    sub a
    ld [hl], b
    ld l, e
    ld b, a
    ld c, h
    or c
    ld [hl], b
    ld d, h
    ld c, c
    db $76
    dec bc
    inc bc
    sub c
    ld d, c
    dec c
    ld [hl], c
    ld d, e
    xor a
    ld [hl], c
    rla
    ld b, $06
    nop
    ld b, b
    ld l, [hl]
    ld c, b
    nop
    dec d
    nop
    rrca
    ld a, [hl+]
    nop
    ld c, c
    sub c
    ld c, b
    nop
    dec d
    ld bc, $2a0f
    nop
    ld c, c
    sub c
    ld c, b
    nop
    rrca
    dec hl
    nop
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
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    and h
    or a
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
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and l
    and b
    and c
    or h
    xor e
    xor [hl]
    or h
    or d
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    or [hl]
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
    and $57
    ld bc, $d099
    nop
    add sp, $4f
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
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
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    add sp, $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and d
    and b
    or c
    or c
    cp b
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    add sp, $57
    nop
    adc [hl]
    adc d
    add sp, $7f
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and d
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
    xor a
    xor e
    and b
    cp b
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or d
    xor e
    xor [hl]
    or e
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    add sp, $7f
    adc b
    or e
    ld d, c
    xor a
    and b
    cp b
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    db $f4
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    add sp, $57
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
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    add sp, $51
    adc b
    or e
    call nc, $ac7f
    xor [hl]
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
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
    or e
    and a
    and b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor [hl]
    xor l
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    add sp, $57
    nop
    adc e
    xor b
    and l
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and [hl]
    and b
    xor h
    and c
    xor e
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
    and l
    xor e
    xor b
    xor a
    ld d, l
    and d
    and b
    or c
    and e
    or d
    ld a, a
    or e
    xor b
    xor e
    xor e
    ld a, a
    adc b
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    rst $20
    ld d, a
    nop
    add d
    and b
    or c
    and e
    ld a, a
    and l
    xor e
    xor b
    xor a
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    xor a
    or c
    and h
    and l
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld d, c
    xor b
    or e
    call nc, $a47f
    and b
    or d
    xor b
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld c, a
    and l
    xor b
    and [hl]
    or h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    and e
    and e
    or d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    cp b
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or d
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    or b
    or h
    xor b
    or e
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or e
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    add c
    adc e
    adc b
    sbc c
    sbc c
    add b
    sub c
    add e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
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
    ld d, c
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    or d
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    ld d, c
    and c
    xor e
    and h
    or [hl]
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and d
    and b
    or c
    and e
    ld c, a
    and l
    xor e
    xor b
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or d
    xor [hl]
    ld a, a
    and l
    or h
    or c
    xor b
    xor [hl]
    or h
    or d
    db $f4
    ld c, a
    adc b
    ld a, a
    or e
    xor [hl]
    or d
    or d
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld d, c
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
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub h
    adc l
    add e
    add h
    sub c
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    add sp, $57
    nop
    sub [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor b
    xor l
    or d
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld c, a
    and e
    or c
    xor b
    xor l
    xor d
    add sp, $51
    adc b
    or e
    ld a, a
    or d
    xor h
    and h
    xor e
    xor e
    or d
    ld a, a
    or d
    or [hl]
    and h
    and h
    or e
    add sp, $57
    nop
    nop
    ld [bc], a
    dec c
    ld [bc], a
    ld a, [bc]
    dec bc
    ld [bc], a
    dec c
    inc bc
    ld a, [bc]
    dec bc
    ld [bc], a
    nop
    rra
    ld b, $06
    nop
    ld sp, $076e
    ld b, $00
    ld sp, $086e
    ld b, $00
    ld sp, $096e
    ld b, $00
    ld sp, $0a6e
    ld b, $00
    ld sp, $0b6e
    ld b, $03
    ld sp, $066e
    rlca
    nop
    ld sp, $076e
    rlca
    nop
    ld b, b
    ld l, [hl]
    ld [$0007], sp
    ld sp, $096e
    rlca
    nop
    ld sp, $0a6e
    rlca
    nop
    ld sp, $0b6e
    rlca
    inc b
    ld sp, $066e
    inc c
    nop
    ld sp, $076e
    inc c
    nop
    ld sp, $086e
    inc c
    nop
    ld sp, $096e
    inc c
    nop
    ld sp, $0a6e
    inc c
    nop
    ld sp, $0b6e
    inc c
    inc bc
    ld sp, $066e
    dec c
    nop
    ld c, c
    ld l, [hl]
    rlca
    dec c
    nop
    ld c, c
    ld l, [hl]
    ld [$000d], sp
    ld c, c
    ld l, [hl]
    add hl, bc
    dec c
    nop
    ld c, c
    ld l, [hl]
    ld a, [bc]
    dec c
    nop
    ld c, c
    ld l, [hl]
    dec bc
    dec c
    inc b
    ld c, c
    ld l, [hl]
    ld b, $12
    nop
    ld c, c
    ld l, [hl]
    rlca
    ld [de], a
    nop
    ld c, c
    ld l, [hl]
    ld [$0012], sp
    ld c, c
    ld l, [hl]
    add hl, bc
    ld [de], a
    nop
    ld c, c
    ld l, [hl]
    ld a, [bc]
    ld [de], a
    nop
    ld c, c
    ld l, [hl]
    dec bc
    ld [de], a
    inc bc
    ld c, c
    ld l, [hl]
    ld bc, $040c
    ld l, $6e
    inc c
    add hl, sp
    ld b, $07
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    dec h
    ld l, h
    rst $38
    rst $38
    ld b, d
    ld b, $14
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    jr z, jr_015_730a

    rst $38
    rst $38
    ld b, d
    ld b, $16
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    ld bc, $ff6d
    rst $38
    ld c, e
    dec bc
    inc c
    ld [$ff00], sp
    ld [bc], a
    sub b
    nop
    pop af
    ld l, l
    rst $38
    rst $38
    ld c, e
    dec bc
    inc c
    ld [$ff00], sp
    inc b
    sub b
    nop
    pop af
    ld l, l
    rst $38
    rst $38
    dec l
    ld c, $0f
    add hl, bc
    nop
    rst $38
    rst $38
    or b
    nop
    db $fc
    ld l, l
    rst $38
    rst $38
    inc hl
    inc c
    ld [de], a
    ld [$ff00], sp
    rst $38
    sub b
    nop
    rlca
    ld l, [hl]
    rst $38
    rst $38
    ld l, $0a
    dec d
    add hl, bc
    nop
    rst $38
    rst $38
    add b
    nop
    ld [de], a
    ld l, [hl]
    rst $38
    rst $38
    inc h
    rlca
    ld c, $02
    ld [de], a
    rst $38
    rst $38
    and b
    nop
    dec e
    ld l, [hl]
    rst $38
    rst $38
    ld b, b
    ld c, $09
    add hl, bc
    nop
    rst $38
    rst $38
    sub b
    nop
    jr nz, jr_015_7374

    rst $38
    rst $38
    dec l
    dec c

jr_015_730a:
    ld b, $02
    ld de, $ffff
    or b
    nop
    dec hl
    ld l, [hl]
    rst $38
    rst $38
    dec l
    ld c, $15
    add hl, bc
    nop
    rst $38
    rst $38
    add b
    nop
    ld a, [de]
    ld l, h
    ld l, e
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

jr_015_7374:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
