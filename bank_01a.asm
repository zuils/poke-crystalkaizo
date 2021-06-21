; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    nop
    nop
    or e
    dec b
    ld d, $0b
    ld e, d
    ld b, b
    sub a
    ld b, b
    nop
    nop
    ld c, $40
    ld h, [hl]
    ld b, a
    ld c, h
    or d
    ld b, b
    ld d, h
    ld c, c
    sub c
    or h
    dec b
    ld d, $0c
    di
    ld b, b
    ld sp, $0041
    nop
    ld [hl+], a
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, d
    ld b, c
    ld d, h
    ld c, c
    sub c
    inc a
    inc b
    inc [hl]
    inc bc
    ld [hl], l
    ld b, c
    ld a, b
    ld b, c
    nop
    nop
    ld [hl], $40
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, e
    ld b, c
    ld d, h
    ld c, c
    sub c
    dec a
    inc b
    inc [hl]
    inc b
    and c
    ld b, c
    call $0041
    nop
    ld c, d
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h

jr_01a_404d:
    db $ec
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld d, e
    jr c, jr_01a_4097

    sbc e
    jr jr_01a_404d

    nop
    daa
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    and d
    and a
    and h
    and b
    or e
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc e
    and h
    or e
    call nc, $aa7f
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    ld a, a
    and l
    and b
    xor b
    or c
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or d
    or b
    or h
    and b
    or c
    and h
    rst $20
    ld d, a

jr_01a_4097:
    nop
    add a
    or h
    and a
    and $7f
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor b
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    and $57
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
    and l
    and b
    xor b
    or c
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or d
    or b
    or h
    and b
    or c
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or c
    and h
    and [hl]
    or c
    and h
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    add sp, $57
    nop
    adc b
    or e
    ld a, a
    xor b
    or e
    and d
    and a
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or e
    xor b
    and d
    xor d
    xor e
    and h
    or d
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld d, c
    adc b
    ld a, a
    or [hl]
    and h
    and b
    or c
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    or d
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
    add sp, $57
    nop
    add b
    xor b
    cp b
    and b
    and b
    and b
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or d
    or e
    xor [hl]
    xor h
    xor a
    and h
    and e
    rst $20
    ld d, a
    nop
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
    ld a, a
    xor b
    xor l
    ld d, l
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
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld c, a
    xor h
    cp b
    ld a, a
    and h
    cp b
    and h
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld [hl], l
    ld d, a
    nop
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
    or e
    ld [hl], l
    ld d, c
    add h
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
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld [hl], l
    ld d, a
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
    and l
    xor [hl]
    or c
    and h
    or d
    and h
    and h
    ld c, a
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
    ld [hl], l
    ld d, a
    nop
    sub d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    ld a, a
    xor b
    xor l
    ld a, a
    and d
    xor [hl]
    xor l
    db $e3
    ld c, a
    or l
    xor b
    and d
    or e
    xor b
    xor [hl]
    xor l
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
    ld a, a
    and c
    and h
    db $e3
    ld c, a
    and d
    and b
    or h
    or d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld d, l
    xor b
    xor l
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
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    rst $30
    ld d, a
    nop
    nop
    nop
    nop
    ld [bc], a
    add hl, bc
    inc bc
    nop
    ld d, d
    ld b, b
    ld [bc], a
    ld hl, $5707
    ld b, b
    dec b
    daa
    inc de
    dec de
    ld b, $00
    rst $38
    rst $38
    sub d
    inc bc
    ld [bc], a
    ld b, b
    rst $38
    rst $38
    daa
    dec bc
    ld hl, $0006
    rst $38
    rst $38
    sub d
    inc bc
    ld d, $40
    rst $38
    rst $38
    daa
    dec bc
    db $10
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    ld bc, $402a
    rst $38
    rst $38
    daa
    dec c
    ld de, $0006
    rst $38
    rst $38
    sub d
    inc bc
    ld a, $40
    rst $38
    rst $38
    ld e, l
    inc b
    daa
    ld bc, $ff00
    rst $38
    nop
    nop
    ld d, l
    ld b, b
    rst $38
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    ld [bc], a
    nop
    ld c, c
    sub c
    ld d, c
    and d
    ld b, d
    ld d, c
    inc hl
    ld b, e
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
    and l
    xor b
    or c
    or d
    or e
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld d, l
    xor b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld a, a
    or [hl]
    and h
    and b
    xor d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and h
    or l
    and h
    xor l
    db $e3
    ld c, a
    or e
    or h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld d, l
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
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
    or e
    or c
    and h
    and b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    add sp, $57
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld d, l
    and b
    xor l
    and e
    ld a, a
    add b
    adc l
    sub e
    adc b
    add e
    adc [hl]
    sub e
    add h
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
    and e
    xor [hl]
    xor l
    push de
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld d, c
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor h
    and b
    xor l
    xor h
    and b
    and e
    and h
    ld c, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $050a
    rlca
    inc bc
    ld bc, $050a
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
    sub l
    ld b, d
    rst $38
    rst $38
    jr nc, jr_01a_43b2

    dec bc
    dec b
    ld bc, $ffff
    nop
    nop
    sbc h
    ld b, d
    rst $38

jr_01a_43b2:
    rst $38
    inc hl
    ld b, $09
    inc bc
    nop
    rst $38
    rst $38
    add b
    nop
    sbc a
    ld b, d
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $04bd
    add hl, bc
    db $ec
    ld b, e
    ld c, h
    ld [hl], e
    ld b, h
    ld d, h
    ld c, c
    ld h, h
    ld c, d
    ld b, l
    nop
    nop
    ld e, [hl]
    ld bc, $5f01
    ld h, b
    inc sp
    cp l
    inc b
    ld b, a
    ld c, h
    xor a
    ld b, l
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $1b
    nop
    inc e
    rlca
    nop
    jr jr_01a_4430

    ld sp, $0008
    add hl, bc
    ld [de], a
    ld b, h
    inc sp
    ei
    inc bc
    inc sp
    db $fc
    inc bc
    ld [de], a
    jr jr_01a_4400

    ld [bc], a
    sbc h
    inc bc
    nop
    ld c, h

jr_01a_4400:
    ret z

    ld b, l
    ld d, l
    sbc [hl]
    rst $18
    ld bc, $1608
    ld b, h
    inc sp
    ld [$4c00], sp
    ld c, b
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec [hl]
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld b, $07
    inc h
    ld b, h
    ld b, $06
    ld hl, $9144
    inc c
    ld [de], a
    nop
    inc c
    inc de
    nop
    ei
    inc bc
    jr @+$03

    call $2f47
    ld c, b
    nop

jr_01a_4430:
    nop
    inc sp
    ld b, h
    ld h, [hl]
    ld b, a
    ld c, h
    scf
    ld c, b
    ld d, h
    ld c, c
    sub c
    db $fc
    inc bc
    jr jr_01a_4441

    ld a, a
    ld c, b

jr_01a_4441:
    or e
    ld c, b
    nop
    nop
    ld b, a
    ld b, h
    ld h, [hl]
    ld b, a
    ld c, h
    rst $00
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04bd
    add hl, bc
    ld e, l
    ld b, h
    ld c, h
    ld sp, hl
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ret z

    ld c, c
    ld d, h
    ld c, c
    sub c
    inc [hl]
    dec de
    nop
    add hl, bc
    ld l, h
    ld b, h
    inc c
    dec l
    nop
    ld b, e
    ld bc, $0101
    inc c
    ld l, $00
    nop
    adc b
    jp nc, $857f

    add b
    adc e
    adc d
    adc l
    add h
    sub c
    db $f4
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    xor e
    and h
    and b
    and e
    and h
    or c
    rst $20
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
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and d
    xor e
    xor b
    xor a
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    db $e3
    or e
    cp b
    xor a
    and h
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $b67f
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    xor c
    xor [hl]
    xor e
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
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    or d
    or h
    and d
    and a
    ld c, a
    xor b
    xor l
    or d
    or h
    xor e
    or e
    or d
    ld a, a
    or e
    xor [hl]
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
    rst $20
    ld d, c
    adc b
    pop de
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
    or e
    and a
    and h
    ld c, a
    or c
    and h
    and b
    xor e
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
    or e
    and a
    and h
    ld d, c
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
    ld [hl], l
    add e
    and b
    or c
    xor l
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    and e
    and b
    and e
    call nc, $a24f
    and a
    and h
    or c
    xor b
    or d
    and a
    and h
    and e
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
    add sp, $4f
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $51
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    xor [hl]
    and l
    and l
    xor b
    and d
    xor b
    and b
    xor e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld d, l
    sbc c
    add h
    adc a
    add a
    sbc b
    sub c
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
    sbc c
    add h
    adc a
    add a
    sbc b
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    sbc c
    add h
    adc a
    add a
    sbc b
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    ld c, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld d, l
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and h
    xor l
    and b
    and c
    xor e
    and h
    or d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld d, c
    add l
    adc e
    add b
    sub d
    add a
    db $f4
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    add sp, $51
    add a
    and h
    or c
    and h
    db $e3
    db $e3
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    add c
    cp b
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    sub e
    adc h
    db $f4
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    xor e

Jump_01a_4662:
    xor e
    ld d, c
    xor b
    xor l
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    ld a, a
    and b
    ld c, a
    xor l
    and h
    or [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $51
    sub e
    and a
    xor b
    xor l
    xor d
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    and d
    or e
    db $e3
    db $e3
    and b
    ld a, a
    sub e
    adc h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld d, l
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
    xor [hl]
    xor l
    and d
    and h
    add sp, $51
    sub e
    adc h
    ld sp, hl
    rst $30
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    adc h
    sub h
    add e
    db $e3
    sub d
    adc e
    add b
    adc a
    add sp, $51
    adc b
    or e
    ld a, a
    or c
    and h
    and e
    or h
    and d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    and h
    xor l
    and h
    xor h
    cp b
    call nc, $a07f
    and d
    and d
    or h
    or c
    and b
    and d
    cp b
    ld d, c
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld c, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    add sp, $51
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
    db $f4
    ld a, a
    xor b
    or e
    ld c, a
    xor b
    or d
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    and e
    and h
    and l
    and h
    xor l
    or d
    xor b
    or l
    and h
    ld d, l
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    and l
    and h
    xor l
    or d
    xor b
    or l
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add [hl]
    sbc b
    adc h
    sub d
    ld a, a
    xor b
    xor l
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
    ld d, l
    or e
    xor [hl]
    or [hl]
    xor l
    or d
    ld a, a
    and b
    and a
    and h
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
    or e
    and h
    or d
    or e
    ld c, a
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
    ld a, a
    and b
    or e
    ld d, l
    or e
    and a
    and h
    or d
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    sub d
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
    xor b
    xor l
    ld c, a
    and a
    and b
    or c
    and e
    and h
    or c
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
    ld d, c
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    and h
    or d
    or e
    ld a, a
    and c
    xor b
    or c
    and e
    ld c, a
    xor h
    and b
    or d
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    xor d
    and h
    cp b
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    xor b
    or d
    ld c, a
    and [hl]
    or h
    or e
    or d
    rst $20
    ld d, c
    sub e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    xor l
    and e
    ld d, c
    and e
    and b
    cp b
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
    xor h
    and b
    or d
    or e
    and h
    or c
    or d
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
    add [hl]
    and b
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    add l
    add b
    adc e
    adc d
    adc l
    add h
    sub c
    call nc, $b27f
    xor d
    xor b
    xor e
    xor e
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or c
    and h
    and b
    xor e
    rst $20
    ld d, c
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and d
    xor [hl]
    and d
    xor d
    cp b
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and c
    and h
    and b
    or e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
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
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    ld d, l
    and l
    and b
    and d
    and h
    ld a, a
    add l
    add b
    adc e
    adc d
    adc l
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
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld c, a
    or e
    or c
    or h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor a
    and b
    or e
    and a
    and h
    or e
    xor b
    and d
    db $f4
    ld c, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, l
    or c
    xor [hl]
    xor [hl]
    xor d
    xor b
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    adc b
    jp nc, $ad7f

    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    db $e3
    ld c, a
    and h
    or c
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
    ld a, a
    and [hl]
    xor b
    or l
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
    rst $20
    ld d, c
    add c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld c, a
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    db $f4
    ld a, a
    and b
    ld d, c
    and d

Jump_01a_494a:
    and a
    and b
    xor h
    xor a
    xor b
    xor [hl]
    xor l
    or d
    and a
    xor b
    xor a
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    ld c, a
    and d
    and b
    xor l
    ld a, a
    and d
    xor [hl]
    xor h
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
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    and $4f
    sub e
    and a
    and h
    xor l
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    db $e3
    or e
    cp b
    xor a
    and h
    ld a, a
    xor b
    or d
    ld c, a
    or [hl]
    and h
    and b
    xor d
    ld a, a
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
    ld d, c
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    db $e3
    or e
    cp b
    xor a
    and h
    add sp, $7f
    adc d
    and h
    and h
    xor a
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    xor b
    xor l
    and e
    add sp, $57
    nop
    adc l
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
    rst $20
    ld a, a
    adc d
    and h
    and h
    xor a
    ld c, a
    xor b
    or e
    ld a, a
    or h
    xor a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld d, c
    and c
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
    ld a, a
    xor b
    xor l
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
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rrca
    inc b
    ld [bc], a
    ld a, [bc]
    dec b
    rrca
    dec b
    ld [bc], a
    ld a, [bc]
    dec b
    nop
    ld [bc], a
    dec c
    inc bc
    nop
    ld h, e
    ld b, h
    dec c
    ld b, $00
    ld h, e
    ld b, h
    inc b
    ld [de], a
    dec b
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    inc bc
    jp nz, $ff43

    rst $38
    daa
    ld a, [bc]
    ld a, [bc]
    ld [$ff02], sp
    rst $38
    sub d
    inc bc
    daa
    ld b, h
    rst $38
    rst $38
    daa
    inc c
    ld b, $09
    ld [bc], a
    rst $38
    rst $38
    sub d
    inc bc
    dec sp
    ld b, h
    rst $38
    rst $38
    ld c, b
    db $10
    dec bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    ld c, a
    ld b, h
    rst $38
    rst $38
    nop
    nop
    ld l, c
    ld [bc], a
    dec l
    ld c, e
    ld l, e
    ld b, a
    ld c, h
    dec sp
    ld c, e
    ld c, [hl]
    ld [$4a70], sp
    ld c, h
    cp l
    ld c, e
    ld c, [hl]
    ld [$4a7d], sp
    ld c, h
    ld d, c
    ld c, h
    ld c, [hl]
    ld [$4a7d], sp
    ld c, h
    ld a, e
    ld c, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld sp, $544d
    ld c, c
    sub c
    ld d, c
    add b
    ld c, l
    ld l, e
    ld b, a
    ld c, h
    jp c, Jump_01a_544d

    ld c, c
    db $76
    inc b
    nop
    sub c
    ld l, e
    ld b, a
    ld c, h
    rlca
    ld c, [hl]
    ld d, h
    ld c, c
    db $76
    dec b
    nop
    sub c
    ld d, c
    add hl, sp
    ld c, [hl]
    ld b, a
    ld c, h
    or d
    ld c, [hl]
    ld c, a
    pop hl
    ld c, d
    ld e, b
    ld d, b
    ld b, $01
    cp [hl]
    ld c, d
    ld b, $02
    push bc
    ld c, d
    ld b, $03
    call z, $064a
    inc b
    db $d3
    ld c, d
    ld b, $05
    jp c, Jump_01a_494a

    sub c
    ld c, h
    cp $4e
    ld d, h
    inc bc
    and e
    ld c, d
    ld c, h
    add b
    ld c, a
    ld d, h
    inc bc
    and e
    ld c, d
    ld c, h
    ld [c], a
    ld c, a
    ld d, h
    inc bc
    and e
    ld c, d
    ld c, h
    ld d, l
    ld d, b
    ld d, h
    inc bc
    and e
    ld c, d
    ld c, h
    bit 2, b
    ld d, h
    inc bc
    and e
    ld c, d
    ld b, b
    nop
    nop
    ld [$e90b], sp
    ld c, d
    ld bc, $3280
    dec b
    ld a, [de]
    ld a, [c]
    ld c, d
    ld a, [de]
    nop
    nop
    adc a
    sub d
    adc l
    ld d, b
    adc a
    add b
    sub c
    ld d, b
    sub d
    adc e
    adc a
    ld d, b
    add c
    sub c
    adc l
    ld d, b
    add l
    sub c
    sbc c
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b
    ld b, a
    ld c, h
    ld [hl], $51
    ld c, [hl]
    ld [$4b25], sp
    ld c, h
    sub a
    ld d, c
    ld c, [hl]
    ld [$4b25], sp
    ld c, h
    rlca
    ld d, d
    ld c, [hl]
    ld [$4b25], sp
    ld c, h
    add a
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld b, h
    ld d, e
    inc c
    ld bc, $0000
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    ld b, a
    nop
    add h
    add b
    sub c
    adc e
    db $f4
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    rst $20
    ld d, c
    sub [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    and b
    or c
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    cp b
    and h
    or d
    rst $20
    ld d, c
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, c
    sub [hl]
    and a
    and b
    or e
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
    xor l
    xor [hl]
    or [hl]
    and $7f
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld d, l
    and b
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    and h
    or c
    ld a, a
    xor b
    or d
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
    rst $20
    ld a, a
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    rst $20
    ld d, c
    adc b
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor e
    xor b
    or d
    or e
    ld a, a
    xor c
    or h
    xor h
    xor a
    ld d, l
    xor [hl]
    or h
    or e
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    rst $20
    ld d, c
    add d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    xor b
    xor l
    ld c, a
    xor e
    xor b
    or d
    or e
    db $f4
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld d, l
    and h
    and b
    or d
    cp b
    db $f4
    ld a, a
    xor h
    and b
    cp b
    and c
    and h
    rst $20
    ld d, c
    adc h
    xor [hl]
    or c
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    and h
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
    and a
    and h
    and b
    or c
    and $57
    nop
    sub d
    xor [hl]
    db $f4
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]

Call_01a_4c5d:
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and b

Call_01a_4c6c:
    xor b
    or d
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    and $57
    nop
    add l
    xor b
    xor l
    and h
    rst $20
    ld a, a
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    xor [hl]
    or h
    or e
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
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, c
    and c
    or c
    xor b
    and h
    and l
    xor e
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    add h
    sub a
    adc a
    add sp, $4f
    adc a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and [hl]
    and h
    or e
    or d
    add sp, $51
    add b
    or e
    ld a, a
    or e
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor e
    xor b
    or d
    or e
    ld a, a
    xor a
    or h
    or e
    ld c, a
    or [hl]
    and h
    and b
    xor d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub d
    or [hl]
    xor b
    or e
    and d
    and a
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
    ld c, a
    or b
    or h
    xor b
    and d
    xor d
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld d, l
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    sub d
    xor h
    and b
    or c
    or e
    ld a, a
    or d
    or e
    or h
    and e
    and h
    xor l
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    rst $20
    ld a, a
    adc l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld d, l
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    ld a, a
    or e
    and h
    and b
    and d
    and a
    rst $20
    ld d, c
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
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
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b37f

    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    xor [hl]
    or e
    and h
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    and h
    and b
    and d
    and a
    and h
    or c
    call nc, $ab55
    and h
    and d
    or e
    or h
    or c
    and h
    add sp, $51
    adc b
    ret nc

    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and d
    xor [hl]
    xor a
    cp b
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or h
    and l
    and l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    and c
    xor e
    and b
    and d
    xor d
    and c
    xor [hl]
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
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
    or e
    and a
    and h
    ld d, l
    and [hl]
    or h
    cp b
    ld a, a
    and c
    and h
    or d
    xor b
    and e
    and h
    ld a, a
    xor h
    and h
    add sp, $57
    nop
    add a
    or h
    and a
    and $7f
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc b
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
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
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    add c
    add h
    sub c
    sub c
    sbc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and a
    and h
    and b
    xor e
    ld d, l
    xor b
    or e
    or d
    and h
    xor e
    and l
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
    add sp, $51
    adc h
    and b
    xor l
    cp b
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld c, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    ld a, a
    and a
    and h
    xor e
    and e
    ld a, a
    and c
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    xor [hl]
    or e
    and h
    or d
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    and c
    xor [hl]
    and b
    or c
    and e
    ld c, a
    and e
    and h
    or d
    and d
    or c
    xor b
    and c
    and h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or d
    or e
    and b
    or e
    or h
    or d
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    or d
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
    add sp, $57
    nop
    sub c
    and h
    and b
    and e
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or e
    xor [hl]
    xor a
    xor b
    and d
    and $57
    nop
    adc b
    and l
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    db $f4
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or e
    and h
    and b
    and e
    xor b
    xor e
    cp b
    ld d, l
    xor e
    xor [hl]
    or d
    and h
    or d
    ld a, a
    add a
    adc a
    add sp, $51
    adc a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    xor e
    xor b
    xor l
    and [hl]
    and h
    or c
    or d
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld d, c
    and b
    xor l
    and e
    ld a, a
    add a
    adc a
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    and b
    or d
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    add sp, $51
    sub e
    xor [hl]
    ld a, a
    and d
    or h
    or c
    and h
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    or h
    or d
    and h
    ld a, a
    and b
    xor l
    ld c, a
    add b
    adc l
    sub e
    adc b
    add e
    adc [hl]
    sub e
    add h
    add sp, $57
    nop
    adc a
    and b
    or c
    and b
    xor e
    cp b
    or d
    xor b
    or d
    ld a, a
    or c
    and h
    and e
    or h
    and d
    and h
    or d
    ld c, a
    or d
    xor a
    and h
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    and b
    cp b
    ld d, l
    xor a
    or c
    and h
    or l
    and h
    xor l
    or e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    xor h
    and h
    xor l
    or e
    add sp, $51
    adc b
    or e
    ld a, a
    or c
    and h
    xor h
    and b
    xor b
    xor l
    or d
    ld a, a
    and b
    and l
    or e
    and h
    or c
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
    or h
    or d
    and h
    ld d, l
    and b
    ld a, a
    adc a
    add b
    sub c
    adc e
    sbc b
    sbc c
    ld a, a
    add a
    add h
    add b
    adc e
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
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
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor h
    and b
    xor d
    and h
    ld d, l
    and b
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    add sp, $51
    add b
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    or [hl]
    and b
    xor d
    and h
    ld a, a
    or h
    xor a
    ld d, l
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
    sub [hl]
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    and b
    xor l
    ld a, a
    add b
    sub [hl]
    add b
    adc d
    add h
    adc l
    adc b
    adc l
    add [hl]
    add sp, $57
    nop
    add b
    ld a, a
    and c
    or h
    or c
    xor l
    ld a, a
    or d
    or e
    and h
    and b
    and e
    xor b
    xor e
    cp b
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
    add a
    adc a
    add sp, $51
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    or c
    and h
    and e
    or h

Call_01a_507f:
    and d
    and h
    or d
    ld c, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $51
    add b
    ld a, a
    and c
    or h
    or c
    xor l
    ld a, a
    xor e
    xor b
    xor l
    and [hl]
    and h
    or c
    or d
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    and b
    ld a, a
    add c
    sub h
    sub c
    adc l
    ld a, a
    add a
    add h
    add b
    adc e
    ld a, a
    and b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    or h
    or c
    and h
    add sp, $57
    nop
    adc b
    and l
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
    ld a, a
    xor b
    or d
    ld c, a
    and l
    or c
    xor [hl]
    cp c
    and h
    xor l
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld d, l
    and e
    xor [hl]
    ld a, a
    and b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $51
    adc b
    or e
    ld a, a
    or c
    and h
    xor h
    and b
    xor b
    xor l
    or d
    ld a, a
    and l
    or c
    xor [hl]
    cp c
    and h
    xor l
    ld c, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
    sub e
    and a
    and b
    or [hl]
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    and b
    xor l
    ld a, a
    adc b
    add d
    add h
    ld a, a
    add a
    add h
    add b
    adc e
    add sp, $57
    nop
    adc b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    ld a, a
    xor d
    xor b
    and e
    call nc, $ad4f
    xor [hl]
    or e
    and h
    and c
    xor [hl]
    xor [hl]
    xor d
    ld [hl], l
    ld d, c
    add d
    and b
    or e
    and d
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    add sp, $51
    sub h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor b
    or a
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
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
    add sp, $51
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
    add c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    ld d, h
    ld a, a
    add c
    add b
    adc e
    adc e
    db $f4
    ld a, a
    or [hl]
    and h
    and b
    xor d
    and h
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    or e
    and b
    or c
    and [hl]
    and h
    or e
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    add sp, $51
    add b
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    or c
    ld c, a
    and c
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
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
    add sp, $51
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
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor h
    and b
    cp b
    ld c, a
    and d
    and b
    or h
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    add sp, $51
    add d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld d, l
    xor b
    or e
    or d
    and h
    xor e
    and l
    add sp, $51
    adc e
    and h
    and b
    or l
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
    ld c, a
    and d
    xor e
    and h
    and b
    or c
    or d
    ld a, a
    or h
    xor a
    ld a, a
    and b
    xor l
    cp b
    ld d, l
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    add sp, $51
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
    adc a
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
    and d
    and b
    or e
    and d
    and a
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or h
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    xor b
    xor l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and b
    or c
    and h
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
    or d
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    add [hl]
    sbc b
    adc h
    sub d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    ld c, a
    xor [hl]
    or e
    and a
    and h
    or c
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
    sub e
    and a
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    xor a
    and b
    and [hl]
    and h
    ld c, a
    xor b
    or d
    ld [hl], l
    ld a, a
    add c
    xor e
    and b
    xor l
    xor d
    rst $20
    ld d, c
    add c
    xor [hl]
    cp b
    sbc h
    ld a, a
    add h
    db $e3
    and a
    and h
    db $e3
    and a
    and h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    or [hl]
    or c
    xor b
    or e
    or e
    and h
    xor l
    ld c, a
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
    sub e
    and a
    xor b
    or d
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld c, a
    xor a
    or c
    xor b
    xor l
    or e
    or d
    ld a, a
    and e
    and b
    or e
    and b
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    or d
    ld d, c
    or d
    or e
    xor b
    and d
    xor d
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rrca
    inc bc
    inc bc
    ld a, [bc]
    dec b
    rrca
    inc b
    inc bc
    ld a, [bc]
    dec b
    nop
    inc b
    ld bc, $0000
    ld a, [hl+]
    ld c, e
    ld bc, $0001
    ld a, [hl+]
    ld c, e
    nop
    inc bc
    nop
    sbc a
    ld c, d
    nop
    inc b
    nop
    sbc a
    ld c, d
    ld b, $3a
    ld b, $08
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld e, h
    ld c, d
    rlc [hl]
    daa
    add hl, bc
    ld b, $07
    nop
    rst $38
    rst $38
    add b
    nop
    add e
    ld c, d
    rst $38
    rst $38
    inc bc
    rrca
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    add [hl]
    ld c, d
    rst $38
    rst $38
    inc bc
    rrca
    ld [$0008], sp
    rst $38
    rst $38
    add b
    nop
    sub c
    ld c, d
    rst $38
    rst $38
    daa
    dec bc
    ld [$0007], sp
    rst $38
    rst $38
    nop
    nop
    sbc h
    ld c, d
    rst $38
    rst $38
    ld d, l
    ld [$0106], sp
    nop
    rst $38
    rst $38
    nop
    nop
    dec bc
    ld c, e
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld a, [$5153]
    ld e, [hl]
    ld d, h
    ld l, e
    ld b, a
    ld c, h
    ld a, h
    ld d, h
    add h
    stop
    ld d, h
    ld c, c
    sub c
    nop
    sub d
    and a
    and h
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
    xor l
    and b
    xor h
    and h
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    and a
    and h
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
    ld d, l
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    and b
    or e
    add sp, $51
    add l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    xor b
    and d
    xor d
    xor l
    and b
    xor h
    and h
    or d
    ld c, a
    or d
    and a
    and h
    ld a, a
    and [hl]
    xor b
    or l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a

Jump_01a_544d:
    and h
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    adc b
    ld a, a
    xor h
    and h
    and b
    xor l
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor e
    xor e

Call_01a_5465:
    ld a, a
    xor h
    cp b
    ld a, a
    adc a
    adc b
    add e
    add [hl]
    add h

Call_01a_546e:
    sbc b
    ld c, a
    sub d
    sub e
    sub c

Call_01a_5473:
    add b

Jump_01a_5474:
    sub [hl]
    add c
    add h
    sub c
    sub c
    sbc b
    rst $20
    ld d, a
    nop
    sub d
    sub e

Call_01a_547f:
    sub c
    add b
    sub [hl]
    add c
    add h
    sub c
    sub c
    sbc b
    sbc h
    ld a, a
    adc a
    xor b
    xor c
    xor c
    xor b
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    inc bc
    inc b
    ld a, [bc]
    dec b
    rlca
    inc b
    inc b
    ld a, [bc]
    dec b
    nop
    nop
    inc bc
    add hl, hl
    rlca
    ld b, $09
    nop
    rst $38
    rst $38
    nop
    nop
    jp hl


    ld d, e
    rst $38
    rst $38
    jr z, jr_01a_54b7

    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    db $ec

jr_01a_54b7:
    ld d, e
    rst $38
    rst $38
    ld c, [hl]
    ld b, $09
    dec b
    ld bc, $ffff
    or b
    nop
    rst $28
    ld d, e
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $002c
    add hl, bc
    ld a, [hl-]
    ld d, l
    ld c, h
    ld d, l
    ld d, l
    ld c, [hl]
    ld [$5531], sp
    inc e
    ld bc, $0606
    dec hl
    ld d, l
    ld l, $af
    dec b
    ld b, h
    inc hl
    ld d, l
    ld bc, $2700
    ld d, l
    inc sp
    dec l
    nop
    ld [hl-], a
    ld bc, $3207
    ld d, h
    nop
    ld [de], a
    ld a, [bc]
    ld bc, $4c01
    push bc
    ld d, l
    ld d, h
    ld c, c
    inc e
    add hl, bc
    ld b, $01
    ld de, $7655
    nop
    nop
    ld l, c
    ld b, $49
    ld d, l
    add l
    inc hl
    nop
    ld l, [hl]
    ld b, $86
    sub c
    ld l, c
    ld b, $4e
    ld d, l
    halt
    nop
    ld l, c
    ld b, $51
    ld d, l
    add l
    inc hl
    nop
    ld l, [hl]
    ld b, $86
    sub c
    add h
    add [hl]
    add [hl]
    ld d, b
    inc c
    jr nc, jr_01a_552a

jr_01a_552a:
    sub c
    ld c, h
    sub e
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, [c]
    ld d, [hl]
    ld d, h
    ld c, c
    inc sp
    inc l
    nop
    sub c
    ld c, h
    ld [de], a
    ld d, a
    inc bc
    rst $10
    ld d, h
    ld d, c
    add hl, bc
    ld e, b
    ld d, c
    inc a
    ld e, b
    ld d, c
    cp b
    ld e, b
    inc c
    inc c
    inc c
    inc c
    ld b, a
    ld c, $0c
    ld b, a
    inc c
    inc c
    inc c
    ld b, a
    nop
    inc d
    db $f4
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or d
    and h
    and h
    add sp, $51
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld a, a
    and b
    or d
    xor d
    and h
    and e
    ld a, a
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    add a
    and h
    ld a, a
    and a
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
    or l
    xor [hl]
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    or d
    xor d
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
    and b
    xor d
    and h
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
    add h
    add [hl]
    add [hl]
    and $57
    nop
    sub [hl]
    and h
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
    or e
    and a
    and b
    or e
    ld c, a
    and b
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
    ld a, a
    xor l
    xor [hl]
    or e
    ld d, c
    and a
    and b
    or e
    and d
    and a
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    xor b
    or e
    ld c, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    add sp, $51
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
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
    ld a, a
    and b
    and d
    or e
    xor b
    or l
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or e
    and d
    and a
    add sp, $51
    inc d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
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
    ld d, l
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or c
    and h
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    add sp, $51
    adc a
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
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $4f
    add h
    adc e
    adc h
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    add h
    add [hl]
    add [hl]
    ld d, l
    and a
    and b
    or e
    and d
    and a
    and h
    or d
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
    ld d, l
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
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    or [hl]
    and b
    xor b
    or e
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    xor d
    and h
    ld d, l
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    add sp, $57
    nop
    add c
    db $e3
    and c
    or h
    or e
    ld [hl], l
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld c, a
    and b
    or d
    xor d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    ld [hl], l
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    add [hl]
    add [hl]
    and $57
    nop
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    xor b
    or e
    ret nc

    ld a, a
    and c
    and h
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld d, c
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
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or h
    xor a
    ld c, a
    and b
    xor l
    and e
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
    ld a, a
    xor h
    cp b
    ld d, c
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    xor e
    xor b
    or l
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
    add sp, $57
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    ld a, a
    and b
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
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    ld d, l
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    xor l
    xor d
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor l
    xor l
    and h
    and d
    or e
    ld a, a
    and b
    ld c, a
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    add b
    add e
    add b
    adc a
    sub e
    add h
    sub c
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    and b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    and l
    and b
    or c
    ld a, a
    and b
    or [hl]
    and b
    cp b
    add sp, $57
    nop
    add b
    ld a, a
    and [hl]
    or h
    cp b
    ld a, a
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    add c
    adc b
    adc e
    adc e
    ld c, a
    xor h
    and b
    and e
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
    ld d, l
    adc a
    add d
    ld a, a
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
    add sp, $57
    nop
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
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
    or [hl]
    and b
    or d
    ld a, a
    or h
    xor a
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    xor b
    and d
    and h
    ld a, a
    xor a
    or c
    and h
    db $e3
    ld c, a
    or l
    and b
    xor b
    xor e
    and h
    and e
    db $e3
    db $e3
    and b
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld d, l
    xor d
    xor b
    and e
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    ld a, a
    ldh [$a4], a
    xor h
    ld a, a
    or h
    xor a
    add sp, $57
    nop
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
    xor h
    and b
    or c
    or e
    add sp, $4f
    sub e
    and a
    and h
    cp b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    xor [hl]
    and c
    and h
    cp b
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
    or e
    and a
    and h
    cp b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    or c
    and h
    or d
    xor a
    and h
    and d
    or e
    add sp, $51
    sub [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
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
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and e
    xor [hl]
    ld a, a
    and b
    or d
    ld c, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    dec b
    ld a, [bc]
    dec b
    rlca
    inc b
    dec b
    ld a, [bc]
    dec b
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
    ret


    ld d, h
    rst $38
    rst $38
    inc bc
    ld a, [bc]
    dec bc
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld b, b
    ld d, l
    rst $38
    rst $38
    ld b, b
    ld [$0305], sp
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, e
    ld d, l
    rst $38
    rst $38
    daa
    dec b
    inc c
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    ld b, [hl]
    ld d, l
    rst $38
    rst $38
    inc a
    rlca
    ld [$0006], sp
    rst $38
    rst $38
    sub b
    nop
    call z, $0054
    rlca
    nop
    nop
    ld d, c
    sub a
    ld e, c
    ld l, e
    ld b, a
    sub [hl]
    ld bc, $4954
    sub c
    nop
    add b
    ld a, a
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
    ld c, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld d, l
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
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
    add [hl]
    sbc b
    adc h
    ld d, c
    add c
    add b
    add e
    add [hl]
    add h
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor h
    and b
    cp b
    ld c, a
    and e
    xor b
    or d
    xor [hl]
    and c
    and h
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    inc bc
    ld b, $0a
    dec b
    rlca
    inc b
    ld b, $0a
    dec b
    nop
    nop
    ld [bc], a
    dec l
    rlca
    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop
    adc l
    ld e, c
    rst $38
    rst $38
    daa
    add hl, bc
    ld a, [bc]
    inc b
    jr nz, @+$01

    rst $38
    add b
    nop
    sub b
    ld e, c
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld [hl], $5a
    ld d, c
    add c
    ld e, d
    ld d, c
    cp l
    ld e, d
    nop
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    adc [hl]
    add l
    ld a, a
    add b
    adc e
    adc a
    add a
    ld d, c
    add b
    ld a, a
    adc e
    xor [hl]
    xor [hl]
    xor d
    db $e3
    and b
    xor l
    and e
    db $e3
    sub e
    xor [hl]
    or h
    and d
    and a
    ld c, a
    sub e
    xor [hl]
    or h
    or c
    xor b
    or d
    or e
    ld a, a
    sub d
    xor b
    or e
    and h
    ld d, c
    sub e
    or c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor e
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    or d
    or e
    xor [hl]
    xor l
    and h
    ld a, a
    xor a
    and b
    xor l
    and h
    xor e
    or d
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
    or e
    or h
    and e
    cp b
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    and $51
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    ld a, a
    or d
    and d
    xor b
    and h
    xor l
    or e
    xor b
    or d
    or e
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
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
    and e
    or c
    and b
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or d
    or e
    xor [hl]
    xor l
    and h
    ld a, a
    xor a
    and b
    xor l
    and h
    xor e
    or d
    add sp, $51
    adc b
    ld a, a
    or e
    or c
    xor b
    and h
    and e
    ld a, a
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and a
    and h
    xor h
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld d, l
    or [hl]
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    add sp, $57
    nop
    nop
    inc b
    inc b
    nop
    ld a, [bc]
    inc bc
    ld d, $05
    nop
    dec bc
    inc bc
    ld d, $04
    add hl, bc
    ld [bc], a
    ld a, [bc]
    ld bc, $0905
    inc bc
    ld a, [bc]
    ld bc, $0000
    inc bc
    ld b, e
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    dec l
    ld e, d
    rst $38
    rst $38
    dec l
    ld b, $0c
    inc b
    db $10
    rst $38
    rst $38
    or b
    nop
    jr nc, jr_01a_5b9b

    rst $38
    rst $38
    daa
    ld a, [bc]
    dec b
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    inc sp
    ld e, d
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0017
    add hl, bc
    ld a, d
    ld e, e
    ld c, h
    add e
    ld e, e
    ld c, [hl]
    ld [$5b74], sp
    ld c, h
    add sp, $5b
    ld d, l
    sbc [hl]
    ld a, [hl-]
    ld bc, $1b4c
    ld e, h
    ld d, h
    ld c, c
    inc sp
    rla
    nop
    sub c
    ld c, h
    ld l, h
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    adc l
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld d, c
    xor h
    ld e, h
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
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]

jr_01a_5b9b:
    ld a, a
    or d
    xor a
    xor [hl]
    or e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    or [hl]
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
    xor b
    xor l
    and [hl]
    and $7f
    add a
    xor [hl]
    or [hl]
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
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
    xor [hl]
    xor l
    and h
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    sub c
    adc [hl]
    add e
    sub d
    and $57
    nop
    add a
    and h
    and a
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a67f
    xor [hl]
    xor [hl]
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and a
    and h
    and b
    or c
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    xor l
    ld c, a
    and b
    xor l
    and [hl]
    xor e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $b67f
    and b
    or e
    and h
    or c
    db $f4
    ld c, a
    and c
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    xor [hl]
    or c
    ld a, a
    and b
    ld d, c
    or d
    or e
    or c
    and h
    and b
    xor h
    db $f4
    ld a, a
    or e
    or c
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    sub c
    adc [hl]
    add e
    add sp, $57
    nop
    adc [hl]
    and a
    add sp, $7f
    sub e
    and a
    and b
    or e
    call nc, $b17f
    and b
    or e
    and a
    and h
    or c
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
    db $f4
    ld a, a
    xor d
    xor b
    and e
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    or c
    and h
    ld c, a
    or e
    and a
    and h
    cp b
    ld a, a
    and c
    xor b
    or e
    xor b
    xor l
    and [hl]
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
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    and $51
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    xor b
    xor l
    and d
    or c
    and h
    and b
    or d
    and h
    or d
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld d, l
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld [hl], l
    ld d, a
    nop
    nop
    inc bc
    rlca
    inc bc
    ld bc, $010a
    rlca
    inc b
    ld bc, $010a
    rlca
    nop
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
    ld d, d
    ld e, e
    rst $38
    rst $38
    dec sp
    ld [$0605], sp
    nop
    rst $38
    rst $38
    and b
    nop
    ld d, l
    ld e, e
    rst $38
    rst $38
    inc h
    ld b, $0a
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    add b
    ld e, e
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0052
    add hl, bc
    sub d
    ld e, l
    ld sp, $0051
    add hl, bc
    add l
    ld e, l
    ld sp, $0050
    add hl, bc
    ld [hl], e
    ld e, l
    ld c, h
    db $dd
    ld e, l
    ld c, [hl]
    ld [$5d7f], sp
    ld c, h
    ld c, b
    ld e, [hl]
    ld d, l
    add [hl]
    inc e
    ld bc, $0606
    ld a, c
    ld e, l
    ld c, h
    cp b
    ld e, [hl]
    add l
    sub c
    nop
    add [hl]
    dec l
    dec d
    ld a, [bc]
    nop
    ld bc, $5db9
    cp a
    ld e, l
    cpl
    sbc b
    ld e, l
    inc sp
    ld d, b
    nop
    ld c, h
    sub $5e
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld d, [hl]
    ld e, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], h
    ld e, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    adc e
    ld e, a
    ld d, l
    sbc [hl]
    ld a, [de]
    ld bc, $9608
    ld e, l
    inc sp
    ld d, d
    nop
    ld c, h
    reti


    ld e, a
    ld d, h
    ld c, c
    sub c
    sbc [hl]
    add e
    add b
    sub c
    adc d
    ld a, a
    add d
    add b
    sub l
    add h
    ld a, a
    xor e
    and h
    and b
    and e
    or d
    ld c, [hl]
    or e
    xor [hl]
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
    xor [hl]
    and b
    and e
    ld d, b
    adc d
    add h
    adc l
    sbc b
    add b
    ld d, b
    sub c
    add b
    adc l
    add e
    sbc b
    ld d, b
    nop
    ld l, e
    ld b, a
    ld sp, $002a
    add hl, bc
    call nc, Call_01a_4c5d
    ld a, [bc]
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc d
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld d, c
    bit 4, b
    nop
    add h
    or a
    and d
    or h
    or d
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld c, a
    add d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and [hl]
    or h
    cp b
    ld d, l
    and b
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    and $51
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
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
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
    adc h
    add b
    adc b
    adc e
    ld d, l
    or e
    xor [hl]
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
    and $51
    add a
    and h
    call nc, $ae7f
    xor l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    rst $30
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    and $7f
    adc a
    and h
    or c
    and l
    and h
    and d
    or e
    rst $20
    ld c, a
    sub e
    and a
    and b
    xor l
    xor d
    or d
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    xor a
    and b
    xor e
    call nc, $a07f
    ld a, a
    and d
    and a
    or h
    and c
    and c
    cp b
    ld c, a
    and [hl]
    or h
    cp b
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or d
    xor l
    xor [hl]
    xor [hl]
    cp c
    and h
    or d
    ld d, l
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
    add sp, $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    or c
    and h
    and d
    xor [hl]
    and [hl]
    xor l
    xor b
    cp c
    and h
    ld c, a
    and a
    xor b
    xor h
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
    ld a, a
    and b
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
    adc h
    add b
    adc b
    adc e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or c
    and h
    and b
    and e
    ld a, a
    xor b
    or e
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, l
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    rst $30
    rst $20
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    and h
    and b
    and a
    add sp, $7f
    sub e
    and a
    and h
    or c
    and h
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    or [hl]
    and h
    xor b
    or c
    and e
    ld a, a
    or e
    or c
    and h
    and h
    ld d, l
    and c
    xor e
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and b
    and e
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
    ld a, a
    xor b
    or e
    call nc, $a14f
    and h
    and h
    xor l
    ld a, a
    and d
    xor e
    and h
    and b
    or c
    and h
    and e
    and $57
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
    and d
    and b
    or c
    or c
    cp b
    ld c, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    adc l
    and h
    or l
    and h
    or c
    ld a, a
    xor h
    xor b
    xor l
    and e
    db $f4
    ld c, a
    or e
    and a
    and h
    xor l
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and b
    xor l
    xor d
    or d
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    xor h
    and b
    and e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and h
    xor e
    xor b
    or l
    and h
    or c
    cp b
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    add a
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
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    xor a
    and b
    xor e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    xor l
    xor [hl]
    xor [hl]
    cp c
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $7f
    add a
    and h
    and a
    db $f4
    ld d, l
    or [hl]
    and a
    and b
    or e
    ret nc

    ld a, a
    adc b
    ld a, a
    or d
    and b
    cp b
    and $57
    nop
    add b
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    xor b
    or d
    ld c, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and b
    and e
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    or c
    xor b
    and [hl]
    and [hl]
    xor e
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
    xor b
    and l
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
    ld a, a
    xor b
    or e
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    xor b
    or e
    ld a, a
    and c
    and h
    and d
    and b
    xor h
    and h
    ld c, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld d, c
    or [hl]
    and b
    or e
    and h
    or c
    and h
    and e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld c, a
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
    add sp, $57
    nop
    adc b
    ld a, a
    xor e
    xor b
    xor d
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
    ld c, a
    adc e
    or h
    xor e
    xor e
    and b
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld d, l
    xor [hl]
    xor l
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
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    xor d
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
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
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    add sp, $51
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
    db $f4
    ld c, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
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
    ld d, c
    or e
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    rst $30
    ei
    or $4f
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
    xor d
    xor b
    xor l
    and e
    or d
    add sp, $57
    nop
    nop
    inc b
    nop
    inc b
    ld bc, $020a
    nop
    dec b
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    rlca
    inc b
    inc c
    dec bc
    ld [bc], a
    rlca
    dec b
    inc c
    dec bc
    ld [bc], a
    nop
    nop
    inc bc
    ld b, e
    ld [$0904], sp
    nop
    rst $38
    rst $38
    add b
    nop
    scf
    ld e, l
    rst $38
    rst $38
    ld l, $08
    ld a, [bc]
    inc b
    db $10
    rst $38
    rst $38
    sub b
    nop
    add $5d
    rst $38
    rst $38
    ld a, [hl-]
    ld b, $07
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    jp c, $ff5d

    rst $38
    inc bc
    sbc l
    ld h, c
    nop
    nop
    sbc [hl]
    ld h, c
    nop
    nop
    sbc a
    ld h, c
    nop
    nop
    ld [bc], a
    dec b
    and e
    ld h, c
    ld [bc], a
    xor a
    ld h, c
    sub c
    sub c
    adc l
    pop de
    ld h, c
    sub c
    inc [hl]
    ld de, $0900
    xor h
    ld h, c
    inc d
    nop
    sub b
    inc d
    ld [bc], a
    sub b
    inc e
    dec bc
    ld b, $02
    jp z, $0661

    inc b
    jp z, $0661

    ld b, $ca
    ld h, c
    inc [hl]
    ld de, $0900
    xor h
    ld h, c
    ld l, [hl]
    ld [bc], a
    ld l, a
    inc bc
    ld l, a
    inc b
    sub b
    ld l, a
    ld [bc], a
    ld l, [hl]
    inc bc
    ld l, [hl]
    inc b
    sub b
    ld l, c
    nop
    ld [c], a
    ld h, d
    db $76
    ld [bc], a
    inc bc
    ld b, a
    inc e
    ld de, $0116
    ccf
    nop
    ld c, h
    sbc d
    ld h, a
    ld c, [hl]
    ld [$61ee], sp
    ld c, h
    db $db
    ld h, a
    ld d, h
    ld c, c
    inc c
    ld d, $00
    ld c, h
    inc hl
    ld l, b
    ld d, h
    ld c, c
    nop
    ld h, c
    ld h, d
    add l
    rra
    nop
    rrca
    ld l, $00
    add [hl]
    and e
    ld bc, $1003
    ld a, [bc]
    cpl
    sub c
    inc e
    dec bc
    ld b, $00
    rst $00
    ld h, d
    ld b, $01
    rst $00
    ld h, d
    ld b, $03
    rst $00
    ld h, d
    ld b, $05
    rst $00
    ld h, d
    ld l, e
    ld b, a
    inc [hl]
    ld d, c
    nop
    add hl, bc
    pop bc
    ld h, d
    nop
    sbc $62
    ld c, h
    db $eb
    ld h, d
    ld c, [hl]
    ld [$62a3], sp
    inc e
    ld bc, $010a
    ld [hl], c
    ld h, d
    rrca
    ld d, $00
    ld [hl-], a
    ld [$3603], sp
    ld de, $0f00
    inc a
    nop
    ld c, h
    sbc l
    ld h, e
    ld d, l
    ld c, h
    rst $00
    ld h, e
    add l
    ld bc, $8600
    ld c, h
    ld [c], a
    ld h, e
    ld d, h
    ld c, c
    rrca
    jr jr_01a_624d

jr_01a_624d:
    nop
    ld h, c
    ld h, d
    add l
    rra
    nop
    rrca
    ld l, $00
    add [hl]
    rrca
    ld b, a
    nop
    and e
    ld bc, $1003
    ld a, [bc]
    cpl
    sub c
    inc e
    add hl, bc
    ld b, $02
    ld l, h
    ld h, d
    ld l, c
    nop
    push hl
    ld h, d
    sub c
    ld l, c
    nop
    jp hl


    ld h, d
    sub c
    inc e
    ld bc, $060b
    ld a, l
    ld h, d
    inc e
    db $10
    ld b, $00
    or l
    ld h, d
    rrca
    ld e, d
    nop
    ld b, $01
    cp e
    ld h, d
    ld c, h
    add $64
    ld c, [hl]
    ld [$62a9], sp
    rrca
    ld d, $00
    add hl, bc
    xor a
    ld h, d
    inc sp
    ld [$4c03], sp
    scf
    ld h, l
    ld d, l
    ld c, h
    ld l, e
    ld h, l
    add l
    inc c
    nop
    add [hl]
    ld d, l
    inc bc
    inc [hl]
    ld h, d
    ld c, h
    call c, Call_01a_5465
    ld c, c
    sub c
    ld c, h
    sub a
    ld h, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [$5466], sp
    ld c, c
    sub c
    ld c, h
    ld a, h
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    rra
    ld h, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, a
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld d, c
    sub h
    ld l, b
    ld l, e
    ld b, a
    inc [hl]
    ld d, c
    nop
    add hl, bc
    pop bc
    ld h, d
    ld c, h
    sub h
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld d, c
    ret c

    ld l, b
    ld d, e
    ld c, $69
    inc c
    dec d
    nop
    sub c
    inc c
    ld [bc], a
    ld b, a
    rrca
    dec c
    dec c
    ld b, a
    dec c
    ld b, a
    nop
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, Call_01a_507f
    ld bc, $d099
    nop
    add sp, $4f
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    and h
    and b
    xor l
    or d
    ld a, a
    or e
    and a
    and h
    ld d, c
    add c
    or h
    and [hl]
    db $e3
    add d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    add d
    xor [hl]
    xor l
    db $e3
    ld c, a
    or e
    and h
    or d
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or c
    or h
    xor e
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    xor b
    xor h
    db $e3
    ld c, a
    xor a
    xor e
    and h
    add sp, $51
    sub h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
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
    db $f4
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    ld d, c
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    xor c
    or h
    and e
    and [hl]
    and h
    and e
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
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and b
    ld a, a
    or e
    or c
    cp b
    and $57
    nop
    add a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    add b
    sub c
    adc d
    ld c, a
    add c
    add b
    adc e
    adc e
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
    add d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
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
    ld hl, sp-$0a
    ld a, a
    adc a
    add b
    sub c
    adc d
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    add sp, $57
    nop
    sub e
    and a
    and h
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
    ld c, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    or e
    and a
    and h
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
    or d
    or e
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor b
    or d
    ld a, a
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
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    ld hl, sp-$0a
    ld c, a
    xor h
    xor b
    xor l
    or h
    or e
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
    or c
    or h
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc a
    add b
    sub c
    adc d
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld d, l
    and e
    xor [hl]
    xor l
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
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
    or e
    and a
    and h
    ld c, a
    xor e
    and b
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    add [hl]
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or d
    or e
    ld a, a
    and c
    or h
    and [hl]
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and l
    xor b
    xor l
    and e
    rst $20
    ld d, a
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
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
    xor l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld a, a
    or h
    or d
    and h
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, c
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld c, a
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
    add sp, $51
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc [hl]
    adc d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    add l
    xor b
    xor l
    and h
    db $f4
    ld a, a
    or [hl]
    and h
    pop de
    xor e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and h
    or e
    and h
    add sp, $57
    nop
    ld d, d
    call nc, Call_01a_547f
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor e
    and h
    and l
    or e
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
    add d
    adc [hl]
    adc l
    sub e
    add h
    sub d
    sub e
    ld a, a
    add a
    add h
    adc e
    adc a
    add h
    sub c
    add sp, $57
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
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
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld d, c
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    db $f4
    ld c, a
    or e
    and a
    and h
    xor l
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
    add sp, $57
    nop
    adc [hl]
    adc d
    add sp, $7f
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
    pop de
    xor e
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    and l
    or h
    or e
    or h
    or c
    and h
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    ld [hl], l
    ld c, a
    sub e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
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
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
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
    ld d, h
    adc h
    adc [hl]
    adc l
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
    or h
    or d
    and h
    db $f4
    ld c, a
    or e
    and a
    and h
    xor l
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
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    ld [hl], l
    ld c, a
    add c
    xor [hl]
    or e
    and a
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
    ld d, c
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add d
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, a
    and b
    or c
    and h
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
    or e
    xor [hl]
    ld a, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    and [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or e
    and d
    and a
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    xor h
    and b
    xor d
    and h
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
    ld a, a
    xor [hl]
    or c
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add d
    ld a, a
    add c
    adc [hl]
    sub a
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld c, a
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
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    ld [hl], l
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and b
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
    ld d, h
    adc h
    adc [hl]
    adc l
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
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
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
    ld d, h
    adc h
    adc [hl]
    adc l
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
    or h
    or d
    and h
    db $f4
    ld c, a
    or e
    and a
    and h
    xor l
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
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
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
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    xor h
    xor b
    xor l
    or h
    or e
    and h
    sbc d
    or d
    sbc e
    ld a, a
    xor e
    and h
    and l
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
    or e
    xor [hl]
    ld c, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and $57
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
    or [hl]
    and b
    xor b
    or e
    ld a, a
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc l
    xor [hl]
    or c
    or e
    and a
    ld a, a
    add [hl]
    and b
    or e
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    or e
    and a
    and h
    ld a, a
    and b
    xor l
    xor l
    xor [hl]
    or h
    xor l
    and d
    and h
    xor h
    and h
    xor l
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
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
    or d
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
    and [hl]
    and h
    or e
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and l
    xor b
    xor l
    xor b
    or d
    and a
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, $827f
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    ld a, a
    xor b
    or d
    ld c, a
    xor [hl]
    or l
    and h
    or c
    add sp, $7f
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
    ld d, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
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
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    or h
    or e
    or h
    or c
    and h
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    add d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    or d
    ld c, a
    or c
    and h
    and [hl]
    or h
    xor e
    and b
    or c
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc a
    add b
    sub c
    adc d
    add sp, $7f
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
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and b
    ld a, a
    or d
    and a
    xor [hl]
    or e
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld c, a
    add c
    or h
    and [hl]
    db $e3
    add d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    add d
    xor [hl]
    xor l
    db $e3
    ld d, l
    or e
    and h
    or d
    or e
    ld a, a
    and [hl]
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
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
    add c
    or h
    and [hl]
    db $e3
    add d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
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
    and a
    and h
    xor e
    and e
    ld a, a
    xor [hl]
    xor l
    ld d, c
    sub e
    or h
    and h
    or d
    and e
    and b
    cp b
    db $f4
    ld a, a
    sub e
    and a
    or h
    or c
    or d
    and e
    and b
    cp b
    ld c, a
    and b
    xor l
    and e
    ld a, a
    sub d
    and b
    or e
    or h
    or c
    and e
    and b
    cp b
    add sp, $51
    adc l
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and h
    and b
    or c
    xor l
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
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
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld d, c
    xor d
    and h
    and h
    xor a
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    and [hl]
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
    xor h
    and b
    cp b
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    add sp, $57
    nop
    nop
    inc b
    nop
    inc bc
    inc bc
    inc bc
    rrca
    nop
    inc b
    inc b
    inc bc
    rrca
    rlca
    inc bc
    inc bc
    ld a, [bc]
    ld [bc], a
    rlca
    inc b
    inc bc
    ld a, [bc]
    ld [bc], a
    nop
    ld bc, $0500
    nop
    db $db
    ld h, d
    inc bc
    ld b, e
    dec b
    ld b, $06
    nop
    rst $38
    rst $38
    and b
    nop
    inc b
    ld h, d
    ld b, l
    rlca
    daa
    add hl, bc
    ld a, [bc]
    ld [bc], a
    ld de, $ffff
    add b
    nop
    ret c

    ld h, d
    inc [hl]
    rlca
    ld b, e
    rlca
    inc b
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    jp z, Jump_01a_4662

    rlca
    nop
    nop
    ld d, c
    jr nz, jr_01a_6a87

    ld d, c
    ld e, e
    ld l, d
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
    or [hl]
    xor [hl]
    xor l
    and e
    and h
    or c
    ld c, a
    or [hl]
    and a
    xor [hl]
    ret nc

    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld d, l
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    and $55
    add b
    xor l
    and e
    ld a, a
    or [hl]
    and a
    cp b
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
    or d
    and h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    xor b
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
    and $51

jr_01a_6a87:
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and h
    or a
    xor a
    xor e
    and b
    xor b
    xor l
    ld c, a
    or [hl]
    and a
    cp b
    ld a, a
    and l
    and h
    or [hl]
    and h
    or c
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld d, c
    and b
    or c
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub c
    sub h
    adc b
    adc l
    sub d
    ld a, a
    adc [hl]
    add l
    ld a, a
    add b
    adc e
    adc a
    add a
    add sp, $57
    nop
    nop
    inc b
    nop
    inc b
    inc bc
    ld a, [bc]
    inc bc
    nop
    dec b
    inc b
    ld a, [bc]
    inc bc
    rlca
    inc b
    add hl, bc
    inc bc
    ld d, $07
    dec b
    add hl, bc
    inc bc
    ld d, $00
    nop
    ld [bc], a
    ld b, e
    ld [$0904], sp
    nop
    rst $38
    rst $38
    add b
    nop
    ld a, [de]
    ld l, d
    rst $38
    rst $38
    cpl
    add hl, bc
    dec bc
    ld [bc], a
    ld hl, $ffff
    or b
    nop
    dec e
    ld l, d
    rst $38
    rst $38
    inc bc
    ld de, $006b
    nop
    ld [de], a
    ld l, e
    nop
    nop
    inc de
    ld l, e
    nop
    nop
    ld [bc], a
    dec b
    rla
    ld l, e
    ld [bc], a
    inc hl
    ld l, e
    sub c
    sub c
    adc l
    ld b, a
    ld l, e
    sub c
    inc [hl]
    ld de, $0900
    jr nz, jr_01a_6b88

    inc d
    nop
    sub b
    inc d
    ld [bc], a
    sub b
    ld sp, $02d2
    add hl, bc
    ld b, [hl]
    ld l, e
    inc e
    dec bc
    ld b, $02
    ld b, d
    ld l, e
    ld b, $04
    ld b, d
    ld l, e
    ld b, $06
    ld b, d
    ld l, e
    inc [hl]
    ld de, $0900
    ld b, d
    ld l, e
    ld l, [hl]
    ld [bc], a
    ld l, a
    dec c
    sub b
    ld l, a
    ld [bc], a
    ld l, [hl]
    dec c
    sub b
    halt
    ld bc, $1c47
    ld de, $0116
    ccf
    nop
    ld c, h
    add h
    ld [hl], d
    ld c, [hl]
    ld [$6b76], sp
    ld c, h
    push bc
    ld [hl], d
    ld d, h
    ld c, c
    rrca
    jr nc, jr_01a_6b60

jr_01a_6b60:
    rrca
    inc sp
    nop
    nop
    adc h
    ld l, e
    ld l, [hl]
    ld [bc], a
    ld l, a
    dec c
    ld l, c
    nop
    pop de
    ld l, l
    adc e
    rrca
    rrca
    ld [hl-], a
    nop
    inc c
    rla
    nop
    ld c, h
    nop
    ld [hl], e
    ld d, h
    ld c, c
    halt
    ld [bc], a
    add l
    inc hl
    nop
    rrca
    ld l, $00
    add [hl]
    and e
    ld [bc], a
    inc bc

jr_01a_6b88:
    db $10
    ld hl, $9112
    ld sp, $0716
    add hl, bc
    sub h
    ld l, e
    ld l, a
    inc bc
    ld sp, $0717
    add hl, bc
    sbc h
    ld l, e
    ld l, a
    inc b
    ld sp, $0718
    add hl, bc
    and h
    ld l, e
    ld l, a
    dec b
    ld sp, $0719
    add hl, bc
    xor h
    ld l, e
    ld l, a
    ld b, $31
    ld a, [de]
    rlca
    add hl, bc
    or h
    ld l, e
    ld l, a
    rlca
    ld sp, $071b
    add hl, bc
    cp h
    ld l, e
    ld l, a
    ld [$1c31], sp
    rlca
    add hl, bc
    call nz, Call_01a_6f6b
    add hl, bc
    ld sp, $071d
    add hl, bc
    call z, Call_01a_6f6b
    ld a, [bc]
    ld sp, $071e
    add hl, bc
    call nc, Call_01a_6f6b
    dec bc
    ld sp, $071f
    add hl, bc
    call c, Call_01a_6f6b
    inc c
    rrca
    scf
    nop
    sub c
    inc e
    dec bc
    ld b, $00
    pop af
    ld l, h
    ld b, $01
    pop af
    ld l, h
    ld b, $03
    pop af
    ld l, h
    ld b, $05
    pop af
    ld l, h
    ld l, e
    ld b, a
    inc [hl]
    ld d, c
    nop
    add hl, bc
    sub c
    ld l, h
    nop
    ld [bc], a
    ld l, l
    ld c, h
    push de
    ld l, l
    ld c, [hl]
    ld [$6c73], sp
    inc e
    ld bc, $010a
    ld b, c
    ld l, h
    rrca
    ld d, $00
    ld [hl-], a
    ld [$3603], sp
    ld de, $0f00
    inc a
    nop
    ld c, h
    add a
    ld l, [hl]
    ld d, l
    add [hl]
    ld c, h
    or c
    ld l, [hl]
    add l
    ld bc, $8600
    ld c, h
    call z, Call_01a_546e
    ld c, c
    ld [hl], $11
    nop
    rrca
    jr jr_01a_6c2d

jr_01a_6c2d:
    halt
    ld [bc], a
    add l
    inc hl
    nop
    rrca
    ld l, $00
    add [hl]
    rrca
    ld b, a
    nop
    and e
    ld [bc], a
    inc bc
    db $10
    ld hl, $9112
    inc e
    ld bc, $060b
    ld c, l
    ld l, h
    inc e
    db $10
    ld b, $00
    add l
    ld l, h
    rrca
    ld e, d
    nop
    ld b, $01
    adc e
    ld l, h
    ld c, h
    or b
    ld l, a
    ld c, [hl]
    ld [$6c79], sp
    rrca
    ld d, $00
    add hl, bc
    ld a, a
    ld l, h
    inc sp
    ld [$4c03], sp
    ld hl, $5570
    ld c, h
    ld d, l
    ld [hl], b
    add l
    inc c
    nop
    add [hl]
    ld d, l
    inc bc
    db $10
    ld l, h
    ld c, h
    add $70
    ld d, h
    ld c, c
    sub c
    ld c, h
    add c
    ld [hl], b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, [c]
    ld [hl], b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, [hl]
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld c, h
    add hl, bc
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    ld sp, $0313
    add hl, bc
    xor a
    ld l, h
    ld sp, $0314
    add hl, bc
    cp [hl]
    ld l, h
    ld sp, $0315
    add hl, bc
    call $316c
    ld d, $03
    add hl, bc
    call c, Call_01a_4c6c
    dec hl
    ld [hl], e
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, a
    ld a, c
    ld d, l
    sbc [hl]
    xor c
    ld bc, $eb08
    ld l, h
    ld [hl-], a
    inc de
    inc bc
    ld c, c
    sub c
    ld c, h
    ld a, a
    ld a, c
    ld d, l
    sbc [hl]
    ld [hl], b
    ld bc, $eb08
    ld l, h
    ld [hl-], a
    inc d
    inc bc
    ld c, c
    sub c
    ld c, h
    ld a, a
    ld a, c
    ld d, l
    sbc [hl]
    xor [hl]
    ld bc, $eb08
    ld l, h
    ld [hl-], a
    dec d
    inc bc
    ld c, c
    sub c
    ld c, h
    ld a, a
    ld a, c
    ld d, l
    sbc [hl]
    xor l
    ld bc, $eb08
    ld l, h
    ld [hl-], a
    ld d, $03
    ld c, c
    sub c
    ld c, h
    db $10
    ld a, c
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld [hl], b
    ld [hl], e
    ld l, e
    ld b, a
    inc [hl]
    ld d, c
    nop
    add hl, bc
    sub c
    ld l, h
    ld c, h
    ld [hl], b
    ld [hl], e
    ld d, h
    ld c, c
    sub c
    inc c
    dec d
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6d14], sp
    ld c, h
    sbc c
    ld [hl], e
    ld d, h
    ld c, c
    sub c
    ld c, h
    call nz, Call_01a_5473
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6d28], sp
    ld c, h
    rrca
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, b
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6d3c], sp
    ld c, h
    ld h, d
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld c, h
    sub [hl]
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6d50], sp
    ld c, h
    jp c, Jump_01a_5474

    ld c, c
    sub c
    ld c, h
    ld a, [bc]
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6d64], sp
    ld c, h
    ld c, [hl]
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, h
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6d78], sp
    ld c, h
    or b
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $dd
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6d8c], sp
    ld c, h
    ld c, e
    db $76
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc b
    db $76
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6da0], sp
    ld c, h
    cp b
    db $76
    ld d, h
    ld c, c
    sub c
    ld c, h
    jp hl


    db $76
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6db4], sp
    ld c, h
    dec de
    ld [hl], a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, b
    ld [hl], a
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    ld [$6dc8], sp
    ld c, h
    ld l, a
    ld [hl], a
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor a
    ld [hl], a
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld c, h
    ld a, b
    db $10
    inc de
    ld bc, $0047
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, Call_01a_507f
    ld bc, $d099
    nop
    add sp, $4f
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    and h
    and b
    xor l
    or d
    ld a, a
    or e
    and a
    and h
    ld d, c
    add c
    or h
    and [hl]
    db $e3
    add d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    add d
    xor [hl]
    xor l
    db $e3
    ld c, a
    or e
    and h
    or d
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or c
    or h
    xor e
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    xor b
    xor h
    db $e3
    ld c, a
    xor a
    xor e
    and h
    add sp, $51
    sub h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
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
    db $f4
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    ld d, c
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld c, a
    xor c
    or h
    and e
    and [hl]
    and h
    and e
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
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and b
    ld a, a
    or e
    or c
    cp b
    and $57
    nop
    add a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    add b
    sub c
    adc d
    ld c, a
    add c
    add b
    adc e
    adc e
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
    add d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
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
    ld hl, sp-$0a
    ld a, a
    adc a
    add b
    sub c
    adc d
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    add sp, $57
    nop
    sub e
    and a
    and h
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
    ld c, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    or e
    and a
    and h
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
    or d
    or e
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    xor b
    or d
    ld a, a
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
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    ld hl, sp-$0a
    ld c, a
    xor h
    xor b
    xor l
    or h
    or e
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
    or c
    or h
    xor l
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc a
    add b
    sub c
    adc d
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld d, l
    and e
    xor [hl]
    xor l
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
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
    or e
    and a
    and h
    ld c, a
    xor e
    and b
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and d
    and b
    or e
    and d

Call_01a_6f6b:
    and a
    ld a, a
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    add [hl]
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or d
    or e
    ld a, a
    and c
    or h
    and [hl]
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and l
    xor b
    xor l
    and e
    rst $20
    ld d, a
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
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
    xor l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld a, a
    or h
    or d
    and h
    ld c, a
    ld d, b
    ld bc, $d099
    nop
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, c
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld c, a
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
    add sp, $51
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc [hl]
    adc d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    add l
    xor b
    xor l
    and h
    db $f4
    ld a, a
    or [hl]
    and h
    pop de
    xor e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and h
    or e
    and h
    add sp, $57
    nop
    ld d, d
    call nc, Call_01a_547f
    adc h
    adc [hl]
    adc l
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor e
    and h
    and l
    or e
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
    add d
    adc [hl]
    adc l
    sub e
    add h
    sub d
    sub e
    ld a, a
    add a
    add h
    adc e
    adc a
    add h
    sub c
    add sp, $57
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
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
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld d, c
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    db $f4
    ld c, a
    or e
    and a
    and h
    xor l
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
    add sp, $57
    nop
    adc [hl]
    adc d
    add sp, $7f
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
    pop de
    xor e
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    and l
    or h
    or e
    or h
    or c
    and h
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    ld [hl], l
    ld c, a
    sub e
    and a
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
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
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
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
    ld d, h
    adc h
    adc [hl]
    adc l
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
    or h
    or d
    and h
    db $f4
    ld c, a
    or e
    and a
    and h
    xor l
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
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    ld [hl], l
    ld c, a
    add c
    xor [hl]
    or e
    and a
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
    ld d, c
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add d
    ld a, a
    add c
    adc [hl]
    sub a
    ld c, a
    and b
    or c
    and h
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
    or e
    xor [hl]
    ld a, a
    xor a
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    and [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or e
    and d
    and a
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    xor h
    and b
    xor d
    and h
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
    ld a, a
    xor [hl]
    or c
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add d
    ld a, a
    add c
    adc [hl]
    sub a
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld c, a
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
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    ld [hl], l
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and b
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
    ld d, h
    adc h
    adc [hl]
    adc l
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
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor b
    or e
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
    ld d, h
    adc h
    adc [hl]
    adc l
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
    or h
    or d
    and h
    db $f4
    ld c, a
    or e
    and a
    and h
    xor l
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
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
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
    ld d, b
    ld bc, $d099
    nop
    ld c, a
    xor h
    xor b
    xor l
    or h
    or e
    and h
    sbc d
    or d
    sbc e
    ld a, a
    xor e
    and h
    and l
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
    or e
    xor [hl]
    ld c, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and $57
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
    or [hl]
    and b
    xor b
    or e
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
    or e
    and a
    and h
    ld d, c
    and b
    xor l
    xor l
    xor [hl]
    or h
    xor l
    and d
    and h
    xor h
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    and l
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
    or d
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
    and [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    ld d, l
    or h
    xor a
    add sp, $57
    nop
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, $827f
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    ld a, a
    xor b
    or d
    ld c, a
    xor [hl]
    or l
    and h
    or c
    add sp, $7f
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
    ld d, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
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
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    or h
    or e
    or h
    or c
    and h
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
    ld a, a
    and d
    and b
    xor l
    ld c, a
    xor [hl]
    xor l
    xor e
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
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    adc a
    add b
    sub c
    adc d
    add sp, $57
    nop
    add e
    adc [hl]
    adc l
    sbc h
    ld a, a
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
    xor h
    and h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    add sp, $57
    nop
    add e
    adc [hl]
    adc l
    sbc h
    ld a, a
    adc e
    or h
    and d
    xor d
    ld a, a
    xor a
    xor e
    and b
    cp b
    or d
    ld a, a
    and b
    ld c, a
    and c
    xor b
    and [hl]
    ld a, a
    xor a
    and b
    or c
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    or [hl]
    and a
    and b
    or e
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
    ld d, l
    and b
    xor a
    xor a
    and h
    and b
    or c
    add sp, $57
    nop
    add h
    add e
    sbc h
    ld a, a
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
    add sp, $4f
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld d, l
    and e
    xor [hl]
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    add h
    add e
    sbc h
    ld a, a
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
    or [hl]
    xor b
    xor l
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc l
    adc b
    add d
    adc d
    sbc h
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
    ld c, a
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
    or c
    and b
    xor b
    or d
    and h
    ld d, l
    xor h
    cp b
    ld a, a
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
    add sp, $57
    nop
    adc l
    adc b
    add d
    adc d
    sbc h
    ld a, a
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    and h
    or c
    ld a, a
    or d
    and d
    xor [hl]
    or c
    and h
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    and l
    ld c, a
    and b
    xor l
    ld a, a
    or h
    xor l
    or h
    or d
    or h
    and b
    xor e
    ld a, a
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    add sp, $57
    nop
    sub [hl]
    adc b
    adc e
    adc e
    adc b
    add b
    adc h
    sbc h
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
    and $7f
    sub [hl]
    and a
    and b
    or e
    ld d, l
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    or e
    and d
    and a
    and $57
    nop
    sub [hl]
    adc b
    adc e
    adc e
    adc b
    add b
    adc h
    sbc h
    ld a, a
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    jp nc, $b24f

    and b
    or e
    xor b
    or d
    and l
    xor b
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
    ld d, c
    adc b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and h
    and e
    add sp, $57
    nop
    add c
    add h
    adc l
    adc l
    sbc b
    sbc h
    ld a, a
    add d
    xor [hl]
    xor l
    and [hl]
    or c
    and b
    or e
    or d
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    xor h
    cp b
    ld d, l
    or c
    and h
    or d
    xor a
    and h
    and d
    or e
    rst $20
    ld d, a
    nop
    add c
    add h
    adc l
    adc l
    sbc b
    sbc h
    ld a, a
    adc b
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
    sub d
    add d
    sbc b
    sub e
    add a
    add h
    sub c
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    db $f4
    ld d, l
    and c
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
    or [hl]
    xor b
    xor l
    add sp, $57
    nop
    add c
    add b
    sub c
    sub c
    sbc b
    sbc h
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
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
    ld [hl], l
    ld d, l
    xor b
    or e
    call nc, $a07f
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    add c
    add b
    sub c
    sub c
    sbc b
    sbc h
    ld a, a
    adc b
    or e
    call nc, $a47f
    and b
    or d
    xor b
    and h
    or c
    ld c, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
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
    ld d, c
    and b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    db $e3
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    and c
    or h
    and [hl]
    ld c, a
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
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    add sp, $57
    nop
    add d
    adc b
    adc l
    add e
    sbc b
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and $4f
    sub e
    and a
    and b
    or e
    call nc, $a67f
    or c
    and h
    and b
    or e
    rst $20
    ld d, c
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
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
    ld a, a
    and c
    or h
    and [hl]
    ld d, l
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
    and h
    and $57
    nop
    add d
    adc b
    adc l
    add e
    sbc b
    sbc h
    ld a, a
    adc b
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc c
    adc [hl]
    sub d
    add a
    sbc h
    ld a, a
    adc b
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    and b
    or e
    ld d, l
    and c
    or h
    and [hl]
    db $e3
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    adc c
    adc [hl]
    sub d
    add a
    sbc h
    ld a, a
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
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    and b
    ld a, a
    add d
    add b
    sub e
    add h
    sub c
    adc a
    adc b
    add h
    rst $20
    ld d, a
    nop
    sub d
    add b
    adc h
    sub h
    add h
    adc e
    sbc h
    ld a, a
    adc l
    and h
    or a
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld c, a
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
    or [hl]
    xor b
    xor l
    add sp, $57
    nop
    sub d
    add b
    adc h
    sub h
    add h
    adc e
    sbc h
    ld a, a
    add e
    and b
    or c
    xor l
    add sp, $4f
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
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    or d
    and d
    xor [hl]
    or c
    and h
    ld a, a
    and a
    xor b
    and [hl]
    and a
    and h
    or c
    ld [hl], l
    ld d, a
    nop
    adc d
    adc b
    adc a
    adc a
    sbc h
    ld a, a
    add d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor b
    xor a
    or d
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
    or d
    or e
    or h
    and e
    cp b
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    or e
    cp b
    xor e
    and h
    add sp, $57
    nop
    adc d
    adc b
    adc a
    adc a
    sbc h
    ld a, a
    adc b
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $ad51
    xor [hl]
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    ld c, a
    or [hl]
    xor b
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
    or e
    and a
    and h
    or c
    and h
    call nc, $a07f
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld d, l
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
    and b
    ld a, a
    or e
    or c
    and h
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
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
    ld c, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    or e
    cp b
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld d, l
    sub d
    adc b
    adc e
    adc a
    add a
    sub d
    add d
    adc [hl]
    adc a
    add h
    ld a, a
    ld hl, sp-$18
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    add c
    or h
    and [hl]
    db $e3
    add d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
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
    and a
    and h
    xor e
    and e
    ld a, a
    xor [hl]
    xor l
    ld d, c
    sub e
    or h
    and h
    or d
    and e
    and b
    cp b
    db $f4
    ld a, a
    sub e
    and a
    or h
    or c
    or d
    and e
    and b
    cp b
    ld c, a
    and b
    xor l
    and e
    ld a, a
    sub d
    and b
    or e
    or h
    or c
    and e
    and b
    cp b
    add sp, $51
    adc l
    xor [hl]
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and h
    and b
    or c
    xor l
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
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
    xor b
    xor l
    and [hl]
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld d, c
    xor d
    and h
    and h
    xor a
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    and [hl]
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
    xor h
    and b
    cp b
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    add sp, $57
    nop
    sub h
    and a
    db $e3
    xor [hl]
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
    ld c, a
    xor b
    or d
    ld a, a
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
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    db $f4
    ld c, a
    or e
    and a
    and h
    xor l
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
    add sp, $57
    nop
    ld d, d
    and $51
    add a
    and h
    or c
    and h
    call nc, $b37f
    and a
    and h
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld c, a
    or [hl]
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and a
    xor [hl]
    xor e
    and e
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
    add sp, $57
    nop
    nop
    inc b
    inc b
    nop
    ld bc, $0f03
    dec b
    nop
    ld [bc], a
    inc bc
    rrca
    inc b
    add hl, bc
    ld bc, $030a
    dec b
    add hl, bc
    ld [bc], a
    ld a, [bc]
    inc bc
    nop
    ld bc, $0600
    nop
    db $db
    ld h, d
    inc c
    ld b, e
    rlca
    inc b
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ldh [rOCPD], a
    ld b, a
    rlca
    daa
    add hl, bc
    ld b, $07
    nop
    rst $38
    rst $38
    add b
    nop
    ld b, $6d
    jr nz, jr_01a_79ec

    daa
    add hl, bc
    ld [$0007], sp
    rst $38
    rst $38

jr_01a_79ec:
    and b
    nop
    ld a, [de]
    ld l, l
    ld hl, $2c07
    ld a, [bc]
    ld b, $07
    nop
    rst $38
    rst $38
    sub b
    nop
    ld l, $6d
    ld [hl+], a
    rlca
    dec l
    add hl, bc
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    or b
    nop
    ld b, d
    ld l, l
    inc hl
    rlca
    daa
    dec bc
    ld b, $07
    nop
    rst $38
    rst $38
    add b
    nop
    ld d, [hl]
    ld l, l
    inc h
    rlca
    daa
    ld a, [bc]
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    ld l, d
    ld l, l
    dec h
    rlca
    jr z, @+$0c

    rlca
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    ld a, [hl]
    ld l, l
    ld h, $07
    daa
    dec bc
    ld [$0007], sp
    rst $38
    rst $38
    add b
    nop
    sub d
    ld l, l
    daa
    rlca
    daa
    dec bc
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    and [hl]
    ld l, l
    jr z, jr_01a_7a54

    daa
    ld a, [bc]
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38

jr_01a_7a54:
    sub b
    nop
    cp d
    ld l, l
    add hl, hl
    rlca
    ld b, e
    ld b, $07
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    db $f4
    ld l, h
    ld c, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
