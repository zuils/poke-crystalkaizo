; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    nop
    nop
    inc sp
    inc b
    dec l
    inc bc
    ld l, [hl]
    ld b, b
    cp [hl]
    ld b, b
    nop
    nop
    ld c, $40
    ld h, [hl]
    ld b, a
    ld c, h
    ret z

    ld b, b
    ld d, h
    ld c, c
    sub c
    inc [hl]
    inc b
    dec l
    inc b
    db $f4
    ld b, b
    inc [hl]
    ld b, c
    nop
    nop
    ld [hl+], a
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld b, e
    ld b, c
    ld d, h
    ld c, c
    sub c
    dec [hl]
    inc b
    dec l
    dec b
    ld h, a
    ld b, c
    sub h
    ld b, c
    nop
    nop
    ld [hl], $40
    ld h, [hl]
    ld b, a
    ld c, h
    and e
    ld b, c
    ld d, h
    ld c, c
    sub c
    add [hl]
    dec b
    add hl, hl
    ld b, $d0
    ld b, c
    di
    ld b, c
    nop
    nop
    ld c, d
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    add hl, de
    ld b, d
    ld d, h
    ld c, c
    sub c
    add a
    dec b
    add hl, hl
    rlca
    dec a
    ld b, d
    ld e, l
    ld b, d
    nop
    nop
    ld e, [hl]
    ld b, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [hl]
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld d, e
    xor d
    ld b, d
    ld d, e
    or a
    ld b, d
    sbc e
    dec de
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add l
    add h
    add e
    add h
    sub c
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld d, l
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
    or h
    xor a
    add sp, $51
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    and e
    or c
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    and a
    and h
    and h
    xor e
    or d
    rst $20
    ld d, a
    nop
    sub d
    db $e3
    or d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add l
    add h
    add e
    add h
    sub c
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and l
    and b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor a
    or d
    ld a, a
    or d
    and a
    or h
    or e
    ld a, a
    and e
    xor [hl]
    or [hl]

Jump_01b_4106:
    xor l
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
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
    ld d, c
    adc a
    add b
    sub e
    add a
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    and l
    or c
    xor b
    and h
    or d
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    add l
    db $e3
    and l
    xor [hl]
    or c
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    xor b
    xor a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and c
    cp b
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    xor a
    or h
    xor l
    xor d
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
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add l
    add h
    add e
    add h
    sub c
    add b
    db $e3
    ld d, l
    sub e
    adc b
    adc [hl]
    adc l
    rst $20
    ld d, l
    sub c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sbc b
    xor b
    xor d
    and h
    or d
    rst $20
    ld a, a
    sub d
    xor [hl]
    or c
    or c
    cp b
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    or e
    or c
    cp b
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and e
    xor b
    or d
    or e
    or h
    or c
    and c
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    xor l
    ld [hl], l
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    db $e3
    ld c, a
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
    or [hl]
    xor [hl]
    or c
    xor d
    and $57
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
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
    xor h
    and b
    and [hl]
    db $e3
    ld c, a
    xor l
    and h
    or e
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    add a
    xor h
    ld [hl], l
    ld a, a
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    xor h
    and b
    xor l
    cp b
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
    add sp, $57
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
    ld [hl], l
    ld c, a
    sbc b
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
    ld d, a
    nop
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
    and [hl]
    xor b
    or l
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    and e
    or l
    and b
    xor l
    or e
    and b
    and [hl]
    and h
    or d
    ld a, a
    xor b
    xor l
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
    sub e
    and a
    and h
    ld a, a
    and l
    xor e
    cp b
    and h
    or c
    call nc, $b37f
    xor [hl]
    or c
    xor l
    add sp, $51
    adc b
    or e
    call nc, $a87f
    xor h
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
    ld c, a
    or c
    and h
    and b
    and e
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc bc
    ld [de], a
    dec c
    dec b
    inc b
    inc b
    ld [de], a
    dec c
    nop
    ld [bc], a
    rlca
    dec bc
    nop
    ld l, c
    ld b, b
    dec b
    ld a, [bc]
    nop
    ld h, [hl]
    ld b, b
    ld b, $4a
    add hl, bc
    dec bc
    ld [$ff00], sp
    rst $38
    add d
    dec b
    ld [bc], a
    ld b, b
    rst $38
    rst $38
    ld c, d
    ld a, [bc]
    inc c
    ld [$ff00], sp
    rst $38
    and d
    dec b
    ld d, $40
    rst $38
    rst $38
    ld c, d
    dec bc
    ld c, $08
    nop
    rst $38
    rst $38
    sub d
    dec b
    ld a, [hl+]
    ld b, b
    rst $38
    rst $38
    dec hl
    ld b, $1b
    ld b, $00
    rst $38
    rst $38
    or d
    inc bc
    ld a, $40
    rst $38
    rst $38
    dec hl
    db $10
    inc hl
    ld [$ff00], sp
    rst $38
    or d
    inc b
    ld d, d
    ld b, b
    rst $38
    rst $38
    ld e, l
    add hl, bc
    dec h
    ld bc, $ff00
    rst $38
    nop
    nop
    ld l, h
    ld b, b
    rst $38
    rst $38
    ld [bc], a
    ld d, [hl]
    ld b, e
    nop
    nop
    ld d, a
    ld b, e
    nop
    nop
    ld bc, $5b01
    ld b, e
    sub c
    adc l
    adc a
    ld b, e
    sub c
    ld sp, $02e2
    add hl, bc
    ld h, d
    ld b, e
    sub b
    ld a, d
    ld b, $02
    ld e, $90
    ld l, e
    ld b, a
    ld sp, $0060
    add hl, bc
    ld [hl], l
    ld b, e
    sub h
    nop
    rrca
    nop
    ld c, c
    sub c
    ld c, h
    ld l, e
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0060
    add hl, bc
    adc c
    ld b, e
    ld c, h
    sub h
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld bc, $5445
    ld c, c
    sub c
    adc e
    rrca
    ld b, a
    ld c, h
    ld a, [hl+]
    ld b, l
    adc e
    rrca
    ld c, c
    add l
    ld b, c
    nop
    ld l, c
    dec b
    or $43
    ld l, c
    inc bc
    ei
    ld b, e
    adc e
    rrca
    ld l, [hl]
    dec b
    adc e
    rrca
    ld l, c
    inc b
    rlca
    ld b, h
    ld b, a
    ld c, h
    ld c, c
    ld b, l
    ld d, h
    ld c, c
    ld [hl], b
    inc b
    nop
    ld l, c
    inc b
    ld a, [bc]
    ld b, h
    ld l, c
    ld [bc], a
    inc bc
    ld b, h
    ld l, c
    inc b
    ld c, $44
    ld [hl], c
    ld b, a
    ld c, h
    sbc [hl]
    ld b, l
    ld d, h
    ld [hl], l
    nop
    ld [bc], a
    ld a, [bc]
    add l
    ld a, [hl+]
    nop
    ld a, d
    ld b, $02
    ld e, $7c
    ld c, c
    inc sp
    ld [c], a
    ld [bc], a
    db $76
    inc b
    ld [bc], a
    ld b, a
    ld c, h
    cp d
    ld b, l
    ld d, h
    ld c, c
    ld l, c
    inc b
    ld [de], a
    ld b, h
    add l
    inc hl
    nop
    ld l, [hl]
    inc b
    inc d
    nop
    add [hl]
    sub c
    ld l, e
    ld b, a
    sub h
    nop
    stop
    ld c, c
    sub c
    dec sp
    ld [de], a
    inc de
    ld a, [hl-]
    ld b, a
    dec sp
    ld [de], a
    ld a, [hl-]
    nop
    ld [bc], a
    ld bc, $4703
    dec sp
    ld [de], a
    ld a, [hl-]
    ld b, a
    ld a, [bc]
    nop
    ld b, a
    dec bc
    add hl, bc
    add hl, bc
    ld b, a
    add hl, bc
    dec bc
    dec bc
    ld b, a
    dec bc
    ld b, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    xor d
    xor b
    and e
    and e
    xor [hl]
    rst $20
    ld d, c
    add a
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
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
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    sub c
    add b
    add [hl]
    add h
    add d
    add b
    adc l
    add e
    sbc b
    add c
    add b
    sub c
    and $51
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    and h
    and b
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    adc h
    add b
    add a
    adc [hl]
    add [hl]
    add b
    adc l
    sbc b
    rst $20
    ld d, a
    nop
    add b
    or c
    or c
    and [hl]
    and a
    ld [hl], l
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld c, a
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
    or d
    or e
    and b
    xor b
    or c
    db $e3
    ld d, l
    or [hl]
    and b
    cp b
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    and a
    and h
    and a
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    xor b
    db $e3
    ld c, a
    xor h
    and h
    xor l
    or e
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    and h
    and e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and b
    ld d, l
    and d
    and a
    and b
    or c
    xor h
    add sp, $51
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    xor e
    and h
    or d
    or d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    xor h
    and b
    xor d
    and h
    or c
    or d
    add sp, $57
    nop
    sub h
    or c
    or c
    and [hl]
    and a
    ld [hl], l
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    and [hl]
    or h
    cp b
    call nc, $a37f
    or c
    and b
    and [hl]
    xor [hl]
    xor l
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
    ld [hl], l
    ld d, a
    nop
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    adc b
    sub e
    add h
    db $f4
    ld c, a
    add a
    sbc b
    adc a
    add h
    sub c
    ld a, a
    add c
    add h
    add b
    adc h
    add sp, $57
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
    db $f4
    ld c, a
    inc d
    and $51
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
    db $f4
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld d, c
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    or e
    and b
    xor b
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    inc d
    db $f4
    ld a, a
    or [hl]
    and h
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or d
    xor a
    xor e
    xor b
    or e
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld d, c
    and d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    add sp, $4f
    adc b
    pop de
    xor e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    ld bc, $0702
    rlca
    inc b
    ld bc, $0702
    inc bc
    rlca
    ld bc, $3103
    nop
    nop
    dec b
    ld c, e
    rlca
    ld [$0006], sp
    rst $38
    rst $38
    nop
    nop
    ld h, a
    ld b, e
    jp c, Jump_01b_4106

    ld a, [bc]
    dec b
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, e
    ld b, e
    jp c, $1e06

    ld a, [bc]
    ld [$0008], sp
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $d5
    ld b, $4f
    ld a, [bc]
    rlca
    ld [$ff00], sp
    rst $38
    nop
    nop
    rst $28
    ld h, $d5
    ld b, $30
    rlca
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    xor $43
    ld [hl], $07
    ld bc, $465a
    nop
    nop
    ld bc, $5b02
    ld b, [hl]
    sub c
    ld l, [hl]
    ld [bc], a
    sub b
    ld sp, $02e4
    add hl, bc
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld sp, $06da
    add hl, bc
    cp b
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    inc de
    ld [bc], a
    ld l, a
    ld [bc], a
    halt
    ld [bc], a
    ld l, c
    ld [bc], a
    call $004a
    cp c
    ld c, b
    ld b, $01
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    inc de
    ld [bc], a
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    call $004a
    adc $48
    ld b, $01
    cp b
    ld c, b
    inc sp
    db $e4
    ld [bc], a
    sub c
    ld sp, $02e4
    add hl, bc
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld sp, $06da
    add hl, bc
    cp b
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    inc de
    inc bc
    ld l, a
    ld [bc], a
    halt
    ld [bc], a
    ld l, c
    ld [bc], a
    call $004a
    cp c
    ld c, b
    ld b, $01
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    inc de
    inc bc
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    call $004a
    adc $48
    ld b, $01
    cp b
    ld c, b
    inc sp
    db $e4
    ld [bc], a
    sub c
    ld sp, $02e5
    add hl, bc
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld sp, $06da
    add hl, bc
    cp b
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    inc b
    rlca
    ld l, a
    ld [bc], a
    halt
    ld [bc], a
    ld l, c
    ld [bc], a
    jp nc, $004a

    cp c
    ld c, b
    ld b, $01
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    halt
    inc bc
    ld [hl], d
    ld [bc], a
    inc c
    dec b
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    jp c, $004a

    adc $48
    ld b, $01
    cp b
    ld c, b
    inc sp
    push hl
    ld [bc], a
    sub c
    ld sp, $02e5
    add hl, bc
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld sp, $06da
    add hl, bc
    cp b
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    inc b
    ld [$026f], sp
    halt
    ld [bc], a
    ld l, c
    ld [bc], a
    db $e3
    ld c, d
    nop
    cp c
    ld c, b
    ld b, $01
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    halt
    inc bc
    ld [hl], d
    ld [bc], a
    inc c
    dec b
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    ld [$004a], a
    adc $48
    ld b, $01
    cp b
    ld c, b
    inc sp
    push hl
    ld [bc], a
    sub c
    ld sp, $02e6
    add hl, bc
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld sp, $06da
    add hl, bc
    cp b
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    inc de
    ld b, $6f
    ld [bc], a
    halt
    ld [bc], a
    ld l, c
    ld [bc], a
    call $004a
    cp c
    ld c, b
    ld b, $01
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    halt
    inc bc
    ld [hl], d
    ld [bc], a
    add hl, de
    dec bc
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    ld a, [c]
    ld c, d
    nop
    adc $48
    ld b, $01
    cp b
    ld c, b
    inc sp
    and $02
    sub c
    ld sp, $02e6
    add hl, bc
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld sp, $06da
    add hl, bc
    cp b
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    inc de
    rlca
    ld l, a
    ld [bc], a
    halt
    ld [bc], a
    ld l, c
    ld [bc], a
    call $004a
    cp c
    ld c, b
    ld b, $01
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    halt
    inc bc
    ld [hl], d
    ld [bc], a
    add hl, de
    inc c
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    ld a, [$004a]
    adc $48
    ld b, $01
    cp b
    ld c, b
    inc sp
    and $02
    sub c
    ld sp, $02e7
    add hl, bc
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld sp, $06da
    add hl, bc
    cp b
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    ld de, $6f10
    ld [bc], a
    halt
    ld [bc], a
    ld l, c
    ld [bc], a
    call $004a
    cp c
    ld c, b
    ld b, $01
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    halt
    inc bc
    ld [hl], d
    ld [bc], a
    add hl, de
    dec bc
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    ld [bc], a
    ld c, e
    nop
    adc $48
    ld b, $01
    cp b
    ld c, b
    inc sp
    rst $20
    ld [bc], a
    sub c
    ld sp, $02e8
    add hl, bc
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld sp, $06da
    add hl, bc
    cp b
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    ld [hl], d
    ld [bc], a
    inc bc
    db $10
    ld l, a
    ld [bc], a
    halt
    ld [bc], a
    ld l, c
    ld [bc], a
    call $004a
    cp c
    ld c, b
    ld b, $01
    cp b
    ld c, b
    nop
    db $e3
    ld c, b
    ld [hl], l
    nop
    nop
    rrca
    ld a, a
    add hl, sp
    nop
    halt
    inc bc
    ld [hl], d
    ld [bc], a
    ld c, $10
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    inc c
    ld c, e
    nop
    adc $48
    ld b, $01
    cp b
    ld c, b
    inc sp
    add sp, $02
    sub c
    sub c
    ld b, a
    ld c, h
    ld [de], a
    ld c, e
    ld d, h
    ld c, c
    ld h, h
    jr z, jr_01b_490d

    nop
    nop
    ld l, b
    ld [bc], a
    ld e, [hl]
    rra
    inc d
    ld e, a
    ld l, [hl]
    ld [bc], a
    ld h, b
    sub c
    ld b, a
    ld c, h
    add hl, sp
    ld c, e
    ld d, h
    ld c, c
    ld h, h
    ld e, c
    ld c, e
    nop
    nop
    ld l, b
    ld [bc], a
    ld e, [hl]
    rra
    dec d
    ld e, a
    ld l, [hl]
    ld [bc], a
    ld h, b
    sub c
    add l
    jr nc, jr_01b_48e6

jr_01b_48e6:
    adc e
    ld a, [bc]
    add l
    jr nc, jr_01b_48eb

jr_01b_48eb:
    adc e
    ld a, [bc]
    add l
    jr nc, jr_01b_48f0

jr_01b_48f0:
    adc e
    ld a, [bc]
    add l
    jr nc, jr_01b_48f5

jr_01b_48f5:
    adc e
    ld a, [bc]
    add l
    jr nc, jr_01b_48fa

jr_01b_48fa:
    adc e
    ld a, [bc]
    add l
    jr nc, jr_01b_48ff

jr_01b_48ff:
    sub c
    ld sp, $02e9
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld e, d
    ld c, d
    ld h, b
    inc sp
    jp hl


    ld [bc], a

jr_01b_490d:
    sub c
    ld sp, $02ea
    add hl, bc
    ld l, l
    ld c, d
    nop
    inc [hl]
    ld c, d
    ld h, b
    inc sp
    ld [$9102], a
    ld sp, $02eb
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld b, a
    ld c, d
    ld h, b
    inc sp
    db $eb
    ld [bc], a
    sub c
    ld sp, $02ec
    add hl, bc
    ld l, l
    ld c, d
    nop
    inc [hl]
    ld c, d
    ld h, b
    inc sp
    db $ec
    ld [bc], a
    sub c
    ld sp, $02ed
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld b, a
    ld c, d
    ld h, b
    inc sp
    db $ed
    ld [bc], a
    sub c
    ld sp, $02ee
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld e, d
    ld c, d
    ld h, b
    inc sp
    xor $02
    sub c
    ld sp, $02ef
    add hl, bc
    ld l, l
    ld c, d
    nop
    inc [hl]
    ld c, d
    ld h, b
    inc sp
    rst $28
    ld [bc], a
    sub c
    ld sp, $02f0
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld e, d
    ld c, d
    ld h, b
    inc sp
    ldh a, [rSC]
    sub c
    ld sp, $02f1
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld e, d
    ld c, d
    ld h, b
    inc sp
    pop af
    ld [bc], a
    sub c
    ld sp, $02f2
    add hl, bc
    ld l, l
    ld c, d
    nop
    inc [hl]
    ld c, d
    ld h, b
    inc sp
    ld a, [c]
    ld [bc], a
    sub c
    ld sp, $02f3
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld b, a
    ld c, d
    ld h, b
    inc sp
    di
    ld [bc], a
    sub c
    ld sp, $02f4
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld b, a
    ld c, d
    ld h, b
    inc sp
    db $f4
    ld [bc], a
    sub c
    ld sp, $02f5
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld b, a
    ld c, d
    ld h, b
    inc sp
    push af
    ld [bc], a
    sub c
    ld sp, $02f6
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld e, d
    ld c, d
    ld h, b
    inc sp
    or $02
    sub c
    ld sp, $02f7
    add hl, bc
    ld l, l
    ld c, d
    nop
    inc [hl]
    ld c, d
    ld h, b
    inc sp
    rst $30
    ld [bc], a
    sub c
    ld sp, $02f8
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld e, d
    ld c, d
    ld h, b
    inc sp
    ld hl, sp+$02
    sub c
    ld sp, $02f9
    add hl, bc
    ld l, l
    ld c, d
    nop
    inc [hl]
    ld c, d
    ld h, b
    inc sp
    ld sp, hl
    ld [bc], a
    sub c
    ld sp, $02fa
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld b, a
    ld c, d
    ld h, b
    inc sp
    ld a, [$9102]
    ld sp, $02fb
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld b, a
    ld c, d
    ld h, b
    inc sp
    ei
    ld [bc], a
    sub c
    ld sp, $02fc
    add hl, bc
    ld l, l
    ld c, d
    nop
    inc [hl]
    ld c, d
    ld h, b
    inc sp
    db $fc
    ld [bc], a
    sub c
    ld sp, $02fd
    add hl, bc
    ld l, l
    ld c, d
    nop
    ld e, d
    ld c, d
    ld h, b
    inc sp
    db $fd
    ld [bc], a
    sub c
    ld sp, $02fe
    add hl, bc
    ld l, l
    ld c, d
    nop
    inc [hl]
    ld c, d
    ld h, b
    inc sp
    cp $02
    sub c
    rrca
    ld l, $00
    add h
    ld h, l
    nop
    rrca
    ld sp, $6800
    rst $38
    ld e, $03
    add hl, bc
    ld e, l
    ld h, l
    ld a, $5f
    sub c
    rrca
    ld l, $00
    add h
    jp z, $0f00

    ld sp, $6800
    rst $38
    ld e, $03
    add hl, bc
    ld e, l
    jp z, Jump_01b_5f3e

    sub c
    rrca
    ld l, $00
    add h
    add h
    nop
    rrca
    ld sp, $6800
    rst $38
    ld e, $03
    add hl, bc
    ld e, l
    add h
    ld a, $5f
    sub c
    sub c
    and c
    inc b
    inc d
    inc bc
    cp e
    ld c, e
    dec bc
    ld c, h
    nop
    nop
    ld a, d
    ld c, d
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, $4c
    ld d, h
    ld c, c
    sub c
    nop
    dec b
    rra
    db $10
    or a
    ld c, h
    ld [de], a
    ld c, l
    nop
    nop
    adc [hl]
    ld c, d
    ld h, [hl]
    ld b, a
    ld c, h
    dec de
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld a, h
    ld c, l
    inc c
    inc b
    nop
    ld b, a
    ld sp, $02e3
    add hl, bc
    cp [hl]
    ld c, d
    ld c, h
    xor l
    ld c, l
    add l
    ld hl, $5400
    ld c, c
    inc sp
    db $e3
    ld [bc], a
    inc sp
    db $e4
    ld [bc], a
    inc sp
    push hl
    ld [bc], a
    inc sp
    and $02
    inc sp
    rst $20
    ld [bc], a
    inc sp
    add sp, $02
    sub c
    ld c, h
    ret nc

    ld c, l
    ld d, h
    ld c, c
    sub c
    db $10
    ld bc, $0124
    ld a, [hl]
    ld bc, $0086
    daa
    inc de
    inc de
    inc de
    inc de
    ld b, a
    ld de, $1113
    ld de, $1111
    inc bc
    ld b, a
    ld [de], a
    ld [de], a
    ld [de], a
    ld de, $1111
    ld [de], a
    ld [de], a
    ld b, a
    ld sp, $1113
    ld de, $0311
    ld b, a
    ld [de], a
    ld [de], a
    ld [de], a
    ld de, $1211
    ld [de], a
    ld b, a
    ld de, $1311
    ld de, $1111
    ld [de], a
    ld b, a
    ld de, $1111
    inc de
    ld de, $1211
    ld b, a
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, a
    nop
    add a
    and h
    cp b
    rst $20
    ld c, a
    adc b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    ld a, a
    and b
    xor e
    and h
    or c
    or e
    rst $20
    ld d, a
    nop
    add e
    and b
    xor l
    and [hl]
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    and l
    and b
    xor b
    xor e
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    or e
    or h
    or c
    xor l
    rst $20
    ld c, a
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    rst $20
    ld d, a
    nop
    sub d
    or h
    or c
    or l
    and h
    xor b
    xor e
    xor e
    and b
    xor l
    and d
    and h
    ld a, a
    and d
    and b
    xor h
    or d
    ld c, a
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
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or d
    or e
    and b
    or e
    or h
    and h
    or d
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
    and b
    xor a
    xor a
    and h
    and b
    or c
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    xor b
    xor a
    ld d, l
    and b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    and b
    ld c, a
    xor l
    xor b
    xor l
    xor c
    and b
    ld a, a
    and a
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
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
    or e
    or c
    and b
    xor a
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    xor [hl]
    xor l
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    or d
    ld d, l
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
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    ld [hl], l
    ld d, a
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
    add sp, $7f
    adc b
    pop de
    xor e
    ld c, a
    and e
    xor b
    or l
    or h
    xor e
    and [hl]
    and h
    ld a, a
    and b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld d, l
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and a
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    or h
    xor a
    ld a, a
    and b
    and a
    and h
    and b
    and e
    ld a, a
    xor b
    or d
    ld d, l
    and b
    ld a, a
    or [hl]
    and b
    or c
    xor a
    ld a, a
    xor a
    and b
    xor l
    and h
    xor e
    add sp, $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    and h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or [hl]
    and b
    or c
    xor a
    and h
    and e
    ld d, c
    and c
    and b
    and d
    xor d
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
    db $e3
    ld c, a
    or e
    or c
    and b
    xor l
    and d
    and h
    add sp, $57
    nop
    add a
    and h
    and a
    and h
    and a
    add sp, $7f
    add l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    xor e
    or h
    and d
    xor d
    cp b
    db $f4
    ld a, a
    xor a
    or h
    xor l
    xor d
    and $51
    add [hl]
    xor [hl]
    ld a, a
    and b
    and a
    and h
    and b
    and e
    db $f4
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or d
    or e
    and h
    xor a
    add sp, $51
    sub [hl]
    and h
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    or c
    and b
    xor a
    or d
    ld c, a
    or d
    and h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    adc d
    and b
    and c
    xor [hl]
    xor [hl]
    xor h
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
    and h
    or l
    and h
    xor l
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    xor a
    or d
    ld d, l
    and b
    or c
    and h
    ld a, a
    xor a
    xor e
    and b
    xor l
    or e
    and h
    and e
    add sp, $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    and d
    xor [hl]
    or h
    or c
    and b
    and [hl]
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    adc a
    add h
    sub c
    sub d
    adc b
    add b
    adc l
    ld c, a
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
    or d
    ld a, a
    and h
    cp b
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and e
    and e
    xor e
    cp b
    ld c, a
    or d
    and a
    xor b
    xor l
    cp b
    add sp, $57
    nop
    add b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    rst $20
    ld c, a
    add c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor a
    or c
    and h
    or d
    or d
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sub e
    and a
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
    or d
    ld c, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    and l
    and l
    add sp, $57
    nop
    nop
    inc b
    ld [bc], a
    dec de
    inc bc
    inc bc
    jr nc, jr_01b_4e00

    inc bc
    ld bc, $3203
    inc bc
    add hl, bc
    inc b
    inc bc
    ld sp, $1902
    inc bc

jr_01b_4e00:
    inc bc
    ld sp, $001e
    ld [bc], a
    jr jr_01b_4e07

jr_01b_4e07:
    ld e, [hl]
    ld b, [hl]
    nop
    nop
    nop
    inc bc
    jr jr_01b_4e0f

jr_01b_4e0f:
    and a
    ld b, [hl]
    nop
    nop
    nop
    ld [bc], a
    ld b, $00
    ldh a, [rDMA]
    nop
    nop
    nop
    inc bc
    ld b, $00
    inc a
    ld b, a
    nop
    nop
    nop
    ld b, $18
    nop
    adc b
    ld b, a
    nop
    nop
    nop
    rlca
    jr jr_01b_4e2f

jr_01b_4e2f:
    call nc, $0047
    nop
    nop
    db $10
    ld d, $00
    jr nz, jr_01b_4e81

    nop
    nop
    nop
    db $10
    ld [$6c00], sp
    ld c, b
    nop
    nop
    nop
    ld [bc], a
    stop
    nop
    ld c, c
    nop
    nop
    nop
    inc c
    inc de
    nop
    ld c, $49
    nop
    nop
    nop
    inc c
    dec de
    nop
    inc e
    ld c, c
    nop
    nop
    nop
    inc bc
    dec c
    nop
    ld a, [hl+]
    ld c, c
    nop
    nop
    nop
    db $10
    ld b, $00
    jr c, jr_01b_4eb2

    nop
    nop
    nop
    dec c
    ld a, [de]
    nop
    ld b, [hl]
    ld c, c
    nop
    nop
    nop
    rlca
    ld c, $00
    ld d, h
    ld c, c
    nop
    nop
    nop
    dec c
    inc bc
    nop
    ld h, d
    ld c, c

jr_01b_4e81:
    nop
    nop
    nop
    dec b
    rrca
    nop
    ld [hl], b
    ld c, c
    nop
    nop
    nop
    ld a, [bc]
    add hl, de
    nop
    ld a, [hl]
    ld c, c
    nop
    nop
    nop
    ld c, $01
    nop
    adc h
    ld c, c
    nop
    nop
    nop
    inc c
    ld [bc], a
    nop
    sbc d
    ld c, c
    nop
    nop
    nop
    dec c
    rrca
    nop
    xor b
    ld c, c
    nop
    nop
    nop
    rrca
    inc b
    nop
    or [hl]
    ld c, c
    nop

jr_01b_4eb2:
    nop
    nop
    ld c, $1c
    nop
    call nz, $0049
    nop
    nop
    db $10
    jr jr_01b_4ebf

jr_01b_4ebf:
    jp nc, $0049

    nop
    nop
    rlca
    inc d
    nop
    ldh [rOBP1], a
    nop
    nop
    nop
    ld b, $16
    nop
    xor $49
    nop
    nop
    nop
    db $10
    ld de, $fc00
    ld c, c
    nop
    nop
    nop
    inc c
    inc b
    nop
    ld a, [bc]
    ld c, d
    nop
    nop
    nop
    inc c
    ld [$1800], sp
    ld c, d
    nop
    nop
    nop
    dec c
    ld a, [bc]
    nop
    ld h, $4a
    nop
    nop
    add hl, bc
    dec bc
    inc de
    nop
    sbc h
    ld c, d
    ld bc, $0118
    sub [hl]
    ld c, d
    ld bc, $0106
    sub [hl]
    ld c, d
    rrca
    ld [$9601], sp
    ld c, d
    rrca
    ld d, $01
    sub [hl]
    ld c, d
    dec b
    jr jr_01b_4f11

    sub [hl]

jr_01b_4f11:
    ld c, d
    dec bc
    inc d
    nop
    sbc c
    ld c, d
    dec bc
    dec d
    nop
    sbc c
    ld c, d
    dec bc
    ld d, $07
    jp z, $064a

    dec [hl]
    inc b
    inc b
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $d9
    ld b, $35
    ld b, $1e
    add hl, bc
    nop
    rst $38
    rst $38
    ld [bc], a
    inc bc
    add d
    ld c, d
    jp c, $3c06

    db $10
    ld d, $08
    nop
    rst $38
    rst $38
    sub d
    inc bc
    ld l, [hl]
    ld c, d
    jp c, Jump_01b_5406

    inc d
    jr nz, jr_01b_4f4e

    nop

jr_01b_4f4e:
    rst $38
    rst $38
    ld bc, $c400
    ld c, d
    ld l, c
    ld b, $54
    ld a, [bc]
    dec de
    ld bc, $ff00
    rst $38
    ld bc, $c600
    ld c, d
    ld l, d
    ld b, $54
    ld de, $011c
    nop
    rst $38
    rst $38
    ld bc, $c800
    ld c, d
    ld l, e
    ld b, $04
    add l
    ld c, a
    nop
    nop
    add [hl]
    ld c, a
    nop
    nop
    add a
    ld c, a
    nop
    nop
    adc b
    ld c, a
    nop
    nop
    ld bc, $8901
    ld c, a
    sub c
    sub c
    sub c
    sub c
    ld sp, $0300
    add hl, bc
    sub b
    ld c, a
    sub b
    ld a, d
    ld c, $0c
    rlca
    sub b
    ld [hl], d
    inc b
    add hl, bc
    dec c
    inc bc
    xor h
    ld c, a
    ld [hl], d
    inc bc
    dec d
    db $10
    ld [hl], d
    ld [bc], a
    dec d
    db $10
    ld [hl], d
    dec b
    ld a, [bc]
    dec c
    ld [hl], d
    inc b
    ld a, [bc]
    dec c
    ld l, a
    inc bc
    ld l, a
    ld [bc], a
    ld b, a
    ld c, h
    xor l
    ld d, d
    ld d, h
    ld c, c
    halt
    nop
    ld [hl], l
    nop
    nop
    rrca
    ld l, c
    nop
    rra
    ld d, d
    ld a, a
    add hl, sp
    nop
    ld l, c
    inc bc
    inc h
    ld d, d
    halt
    ld bc, $0269
    cpl
    ld d, d
    ld b, a
    ld c, h
    jp Jump_01b_5452


    ld c, c
    add h
    sub l
    nop
    db $76
    inc bc
    ld [bc], a
    halt
    ld [bc], a
    ld l, a
    dec b
    ld l, c
    dec b
    ld [hl], $52
    ld l, c
    inc bc
    dec sp
    ld d, d
    ld l, c
    ld [bc], a
    ld c, h
    ld d, d
    ld l, a
    inc b
    ld l, c
    inc b
    ld b, h
    ld d, d
    ld b, a
    ld c, h
    adc h
    ld d, e
    ld d, h
    ld c, c
    halt
    inc bc
    ld l, c
    inc bc
    ld b, c
    ld d, d
    ld b, a
    ld c, h
    cp l
    ld d, e
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    ld c, d
    ld d, d
    ld l, c
    inc bc
    ld c, b
    ld d, d
    ld h, h
    ld e, h
    ld d, h
    nop
    nop
    ld l, b
    inc bc
    ld e, [hl]
    scf
    ld [bc], a
    ld e, a
    ld l, [hl]
    dec b
    inc sp
    db $dd
    ld b, $33
    sbc $06
    inc sp
    sub $06
    ld h, b
    inc sp
    ld [hl], b
    dec b
    ld b, a
    ld c, h
    add $54
    ld d, h
    ld c, c
    rrca
    jr nc, jr_01b_5030

jr_01b_5030:
    rrca
    inc sp
    nop
    ld l, [hl]
    ld [bc], a
    ld l, [hl]
    inc bc
    ld l, [hl]
    inc c
    ld l, [hl]
    dec c
    ld l, [hl]
    ld c, $8b
    rrca
    rrca
    ld [hl-], a
    nop
    inc d
    ld [bc], a
    ld [hl-], a
    sub $06
    db $76
    inc b
    nop
    ld b, a
    ld c, h
    ret c

    ld d, l
    ld d, h
    ld c, c
    ld l, c
    inc b
    ld d, b
    ld d, d
    halt
    ld bc, $4c47
    ld c, [hl]
    ld d, [hl]
    ld d, h
    ld c, c
    ld [hl], b
    inc b
    nop
    ld l, c
    inc b
    ld d, h
    ld d, d
    ld [hl], c
    ld l, c
    inc b
    ld e, b
    ld d, d
    ld b, a
    ld c, h
    rst $08
    ld d, [hl]
    ld d, h
    ld c, c
    ld l, c
    inc b
    ld h, a
    ld d, d
    ld l, [hl]
    inc b
    ld l, c
    nop
    ld [hl], c
    ld d, d
    sub c
    ld b, a
    ld c, h
    ld [$5457], a
    ld c, c
    ld l, c
    nop
    ld a, b
    ld d, d
    sub c
    halt
    ld bc, $9103
    ld d, b
    halt
    inc bc
    db $76
    inc b
    ld [bc], a
    ld b, a
    ld c, h
    sub a
    ld e, d
    ld d, h
    ld c, c
    rrca
    ld l, $00
    rrca
    sbc l
    nop
    add l
    dec b
    nop
    rrca
    dec de
    nop
    rrca
    ld sp, $4700
    ld c, h
    rst $30
    ld e, d
    ld d, h
    ld c, c
    inc d
    ld bc, $4c33
    nop
    inc e
    add hl, bc
    ld b, $03
    cp [hl]
    ld d, b
    ld l, c
    inc b
    ld [de], a
    ld d, d
    ld l, [hl]
    inc b
    sub c
    ld l, c
    inc b
    add hl, de
    ld d, d
    ld l, [hl]
    inc b
    sub c
    ld bc, $1f05
    ld de, $5b22
    ld a, c
    ld e, e
    nop
    nop
    pop de
    ld d, b
    ld h, [hl]
    ld b, a
    ld c, h
    adc b
    ld e, e
    ld d, h
    ld c, c
    sub c
    ld [bc], a
    dec b
    rra
    ld [de], a
    jp z, $095b

    ld e, h
    nop
    nop
    push hl
    ld d, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [de]
    ld e, h
    ld d, h
    ld c, c
    sub c
    inc bc
    dec b
    rra
    inc de
    or b
    ld e, h
    ret


    ld e, h
    nop
    nop
    ld sp, hl
    ld d, b
    ld h, [hl]
    ld b, a
    ld c, h
    pop de
    ld e, h
    ld d, h
    ld c, c
    sub c
    add h
    ld h, l
    nop
    ld e, l
    ld h, l
    ld b, [hl]
    ld e, a
    add hl, bc
    add d
    ld d, c
    ld l, [hl]
    ld b, $6e
    add hl, bc
    ld sp, $06e0
    ld [$5182], sp
    ld sp, $06e1
    ld [$5182], sp
    ld sp, $06e2
    ld [$5182], sp
    ld h, b
    rrca
    inc a
    nop
    ld l, c
    nop
    adc h
    ld d, d
    inc bc
    add h
    ld d, c
    add h
    ld h, l
    nop
    ld e, l
    ld h, l
    ld b, [hl]
    ld e, a
    add hl, bc
    add d
    ld d, c
    ld l, [hl]
    rlca
    ld l, [hl]
    ld a, [bc]
    ld sp, $06e0
    ld [$5182], sp
    ld sp, $06e1
    ld [$5182], sp
    ld sp, $06e2
    ld [$5182], sp
    ld h, b
    rrca
    inc a
    nop
    ld l, c
    nop
    sbc c
    ld d, d
    inc bc
    add h
    ld d, c
    add h
    ld h, l
    nop
    ld e, l
    add h
    ld b, [hl]
    ld e, a
    add hl, bc
    add d
    ld d, c
    ld l, [hl]
    ld [$0b6e], sp
    ld sp, $06e0
    ld [$5182], sp
    ld sp, $06e1
    ld [$5182], sp
    ld sp, $06e2
    ld [$5182], sp
    ld h, b
    rrca
    inc a
    nop
    ld l, c
    nop
    and h
    ld d, d
    inc bc
    add h
    ld d, c
    ld h, b
    sub c
    ld [hl], d
    inc b
    ld [de], a
    ld b, $6f
    inc b
    ld l, c
    inc b
    ld a, d
    ld d, d
    halt
    inc bc
    ld b, a
    ld c, h
    add hl, bc
    ld e, b
    ld d, l
    sbc [hl]
    ld hl, sp+$01
    inc sp
    dec d
    nop
    ld c, h
    ld hl, sp+$58
    ld d, h
    ld c, c
    db $76
    inc b
    nop
    ld b, a
    ld c, h
    sub h
    ld e, c
    ld d, h
    ld c, c
    halt
    nop
    ld l, c
    inc b
    add e
    ld d, d
    ld l, [hl]
    inc b
    inc sp
    ld [hl+], a
    nop
    dec [hl]
    ld c, $00
    inc sp
    call c, $3306
    ld d, a
    rlca
    inc d
    inc bc
    ld [hl-], a
    dec [hl]
    rlca
    inc sp
    db $e3
    ld [bc], a
    inc sp
    db $e4
    ld [bc], a
    inc sp
    push hl
    ld [bc], a
    inc sp
    and $02
    inc sp
    rst $20
    ld [bc], a
    inc sp
    add sp, $02
    sub c
    nop
    inc bc
    db $db
    ld d, c
    ld b, a
    ld sp, $02ff
    add hl, bc
    add sp, $51
    ld c, h
    add hl, sp
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, e
    ld e, l
    ld d, h
    add l
    rra
    nop
    ld a, d
    ld c, $0c
    rlca
    ld a, h
    ld c, c
    inc sp
    nop
    inc bc
    add [hl]
    sub c
    ld b, a
    ld sp, $0022
    add hl, bc
    rlca
    ld d, d
    ld c, h
    and a
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc bc
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld a, [hl]
    ld bc, $0087
    ld a, [hl]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, a
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, a
    inc c
    inc c
    inc c
    inc bc
    ld b, a
    ld [de], a
    ld [de], a
    ld de, $1111
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    nop
    ld b, a
    ld [de], a
    ld [de], a
    ld de, $1211
    ld [de], a
    ld b, a
    inc de
    inc de
    inc de
    inc de
    ld b, a
    dec sp
    add hl, sp
    inc sp
    jr c, jr_01b_527a

    ld b, a
    ld [$4702], sp
    rrca
    rrca
    rrca
    ld b, a
    ld [de], a
    ld b, a
    ld [de], a
    ld b, a
    ld [de], a
    ld de, $4702
    rrca
    rrca
    nop
    ld b, a
    dec c
    dec c
    dec c
    ld b, a
    ld b, l
    ld c, $0e
    ld bc, $0f45
    rrca
    rrca
    rrca
    ld bc, $0e45
    ld c, $00
    ld b, a
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    dec c
    ld c, $0e
    ld c, $0e
    ld bc, $0e47
    ld b, a

jr_01b_527a:
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0e
    ld c, $47
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld b, a
    rrca
    rrca
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    ld b, a
    rrca
    rrca
    inc c
    inc c
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    ld b, a
    rrca
    rrca
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    ld b, a
    nop
    add a
    xor [hl]
    xor e
    and e
    ld a, a
    xor b
    or e
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld c, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    and d
    and b
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
    and c
    or c
    and b
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    or d
    and h
    add sp, $51
    adc b
    or e
    call nc, $a77f
    and b
    or c
    xor h
    and l
    or h
    xor e
    ld a, a
    or e
    xor [hl]
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
    call nc, $af55
    or c
    xor b
    and e
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
    add a
    xor [hl]
    or [hl]
    and h
    or l
    and h
    or c
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    and c
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
    push de
    ld d, c
    or e
    and b
    xor d
    and h
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or h
    or d
    ld a, a
    and b
    or e
    ld c, a
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
    add sp, $51
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    and c
    and b
    and c
    cp b
    add sp, $7f
    adc l
    xor [hl]
    or [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld d, l
    or e
    and a
    or c
    and b
    or d
    and a
    and h
    and e
    add sp, $57
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    or d
    xor [hl]
    ld c, a
    or d
    and h
    xor e
    and l
    xor b
    or d
    and a
    add sp, $7f
    sub d
    xor a
    or c
    and h
    and b
    and e
    ld d, l
    or e
    and a
    and h
    ld a, a
    and l
    or h
    xor l
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    xor l
    ld c, a
    and b
    and d
    and d
    xor [hl]
    xor h
    xor a
    xor e
    xor b
    and d
    and h
    and $51
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or d
    and h
    xor l
    or d
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    and $51
    add b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    xor b

Jump_01b_5406:
    xor h
    ld c, a
    and c
    xor [hl]
    or d
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld d, c
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld c, a
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
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    ld d, c
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    and e
    and e
    xor e
    and h
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    sub e
    add h
    add b

Jump_01b_5452:
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
    sub e
    and d
    and a
    db $f4
    ld a, a
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
    ld c, a
    and b
    or c
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    adc b
    or e
    call nc, $b37f
    xor [hl]

Call_01b_547f:
    xor [hl]
    ld a, a
    and c
    and b
    and e
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
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor c
    xor [hl]
    xor b
    xor l
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
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and b
    xor l
    ld a, a
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    add sp, $57
    nop
    ld [hl], l
    sub e
    and a
    xor b
    or d
    ld a, a
    and a
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or d
    ld c, a
    and e
    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $a57f
    xor b
    xor l
    and h
    add sp, $4f
    sub e
    and a
    and h
    ld a, a
    and c
    or c
    xor [hl]
    and b
    and e
    and d
    and b
    or d
    or e
    ld a, a
    and h
    or a
    db $e3
    ld d, l
    xor a
    and h
    or c
    xor b
    xor h
    and h
    xor l
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld d, l
    or e
    xor [hl]
    or e
    and b
    xor e
    ld a, a
    or d
    or h
    and d
    and d
    and h
    or d
    or d
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
    xor h
    and b
    or e
    or e
    and h
    or c
    ld c, a
    or [hl]
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
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    and a
    xor b
    and e
    and h
    xor [hl]
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    sub [hl]
    and h
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
    ld a, a
    and c
    xor b
    and [hl]
    db $e3
    ld c, a
    and [hl]
    and h
    or c
    ld a, a
    xor a
    xor e
    and b
    xor l
    or d
    add sp, $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and b
    xor a
    xor a
    or c
    and h
    and d
    xor b
    and b
    or e
    and h
    ld a, a
    sub e
    add h
    add b
    adc h
    ld d, c
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    call nc, $b37f
    or c
    or h
    and h
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    add h
    xor l
    xor c
    xor [hl]
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
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
    and d
    and b
    xor l
    ld [hl], l
    ld d, c
    add l
    or h
    and l
    or h
    and l
    or h
    and l
    or h
    ld [hl], l
    ld d, a
    nop
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    and e
    xor b
    and e
    ld c, a
    xor b
    or e
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    and h
    and e
    ld d, c
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    sub d
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    jp nc, $a27f

    xor [hl]
    xor l
    and d
    and h
    or c
    xor l
    and h
    and e
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
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld d, c
    and [hl]
    or h
    cp b
    ld a, a
    adc b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    and d
    and h
    or d
    or d
    ld [hl], l
    ld d, a
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    inc d
    add sp, $4f
    adc b
    ld a, a
    or d
    and b
    or [hl]
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
    cp b
    xor [hl]
    or h
    ld d, c
    or [hl]
    and h
    or c
    and h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and a
    or h
    xor l
    and [hl]
    ld a, a
    and c
    and b
    and d
    xor d
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld c, a
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld d, c
    or e
    or h
    or c
    xor l
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    and e
    and e
    ld c, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    add sp, $57
    nop
    adc b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld c, a
    or e
    and a
    and b
    or e
    call nc, $a27f
    and b
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    or d
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    ld c, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    ld [hl], l
    ld d, c
    sub [hl]
    and h
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
    and a
    xor [hl]
    xor b
    and d
    and h
    add sp, $4f
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
    xor h
    and b
    xor d
    and h
    ld d, c
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    add sp, $51
    sub e
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
    or d
    or e
    xor [hl]
    xor a
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, c
    or e
    or c
    and b
    xor l
    or d
    xor h
    xor b
    or e
    or e
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
    and b
    xor l
    and [hl]
    and h
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    add sp, $51
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    ld a, a
    and l
    and b
    or h
    xor e
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld d, c
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
    and [hl]
    or h
    xor b
    xor e
    or e
    cp b
    add sp, $51
    inc d
    db $f4
    ld a, a
    xor e
    and h
    or e
    call nc, $b24f
    xor a
    xor e
    xor b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor c
    xor [hl]
    and c
    add sp, $57
    nop
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    adc e
    and h
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or d
    xor b
    and e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    add sp, $57
    nop
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    and e
    and e
    ld c, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    ld a, a
    and a
    and b
    or d
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld d, l
    or d
    or e
    xor [hl]
    xor a
    xor a
    and h
    and e
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    adc e
    add b
    adc d
    add h
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
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
    and a
    and h
    or c
    xor [hl]
    rst $20
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
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    xor [hl]
    xor l
    ld a, a
    and c
    and h
    and a
    and b
    xor e
    and l
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
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    and h
    or d
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
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
    add sp, $51
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    or e
    ld a, a
    and a
    and h
    or c
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
    ld d, l
    and b
    xor l
    cp b
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
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
    add a
    adc h
    or $fc
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    call nc, $967f
    add a
    adc b
    sub c
    adc e
    adc a
    adc [hl]
    adc [hl]
    adc e
    add sp, $4f
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $51
    add c
    or h
    or e
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
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    xor b
    xor l
    and e
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
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
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld d, c
    or [hl]
    xor b
    or e
    and a
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
    adc h
    add b
    add a
    adc [hl]
    add [hl]
    add b
    adc l
    sbc b
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $57
    nop
    inc d
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
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
    and c
    and h
    db $e3
    ld c, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
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
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
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
    add sp, $51
    adc d
    xor l
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    db $f4
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or d
    and h
    and h
    add sp, $7f
    adc l
    xor [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    or c
    xor b
    and [hl]
    and a
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
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld c, a
    or h
    xor a
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and d
    and a
    and b
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    and e
    or c
    and h
    and b
    xor h
    ld a, a
    xor b
    xor l
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
    xor a
    xor e
    and b
    and d
    and h
    add sp, $51
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
    or [hl]
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
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
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
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
    or h
    or c
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    add sp, $51
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    and h
    and e
    xor b
    db $e3
    ld d, l
    and d
    xor b
    xor l
    and h
    add sp, $57
    nop
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    inc d
    db $f4
    ld c, a
    xor e
    and h
    or e
    call nc, $a67f
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    and c
    and h
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    and e
    or h
    and a
    add sp, $4f
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld d, c
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
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
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    and $57
    nop
    add a
    and h
    and a
    db $f4
    ld a, a
    adc b
    jp nc, $a97f

    or h
    or d
    or e
    ld a, a
    and b
    ld c, a
    add [hl]
    sub c
    sub h
    adc l
    sub e
    add sp, $51
    adc b
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
    or e
    and a
    and h
    ld c, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    add sp, $7f
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
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
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    and e
    and $7f
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
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
    db $f4
    ld d, c
    and c
    or h
    or e
    ld a, a
    and h
    xor e
    xor b
    xor h
    xor b
    xor l
    and b
    or e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    adc b
    ret nc

    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or [hl]
    xor b
    xor a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    xor h
    xor b
    or d
    or d
    xor b
    xor [hl]
    xor l
    ld d, l
    and c
    cp b
    ld a, a
    and b
    ld a, a
    xor d
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    or [hl]
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and b
    and c
    db $e3
    ld c, a
    and e
    or h
    and d
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld d, c
    or e
    and a
    xor b
    or d
    ld a, a
    xor d
    xor b
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or c
    and h
    and e
    ld a, a
    and a
    and b
    xor b
    or c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    and h
    and b
    xor l
    db $e3
    ld d, c
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    cp b
    and h
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and d
    or c
    and h
    and b
    xor h
    and h
    and e
    ld a, a
    xor h
    and h
    ld [hl], l
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or c
    xor [hl]
    or e
    or e
    and h
    xor l
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld c, a
    xor a
    and h
    or d
    or e
    rst $20
    ld d, a
    nop
    add [hl]
    or c
    or c
    or c
    or c
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    and a
    db $f4
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    or d
    or d
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    ld a, a
    or e
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
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    add sp, $51
    sub [hl]
    and a
    and h
    or c
    and h
    call nc, $b37f
    and a
    and h
    ld a, a
    and c
    xor [hl]
    or d
    or d
    and $4f
    sub [hl]
    and a
    xor [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    and $7f
    add [hl]
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    and l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    call nc, $a27f
    xor e
    xor [hl]
    or d
    and h
    and e
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    and b
    ld a, a
    xor a
    and b
    or d
    or d
    db $e3
    ld c, a
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    call nc, $a27f
    xor e
    xor [hl]
    or d
    and h
    and e
    ld [hl], l
    ld d, c
    ld d, d
    ld a, a
    and h
    xor l
    or e
    and h
    or c
    and h
    and e
    ld c, a
    or e
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
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld c, a
    or e
    or c
    and b
    xor l
    or d
    xor h
    xor b
    or e
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $b251
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    xor b
    xor l
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    add sp, $51
    adc b
    or e
    call nc, $b67f
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    ld c, a
    and l
    or h
    xor e
    xor e
    ld a, a
    and d
    and b
    xor a
    and b
    and d
    xor b
    or e
    cp b
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor l
    or d
    db $e3
    ld c, a
    xor h
    xor b
    or e
    or e
    and h
    or c
    ld a, a
    and a
    and b
    or d
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld d, c
    or d
    or e
    xor [hl]
    xor a
    xor a
    and h
    and e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and h
    or l
    xor b
    xor e
    ld c, a
    and c
    or c
    xor [hl]
    and b
    and e
    and d
    and b
    or d
    or e
    add sp, $57
    nop
    nop
    dec b
    ld c, $03
    ld [bc], a
    inc bc
    ld sp, $0302
    ld bc, $3303
    ld [bc], a
    dec de
    ld [bc], a
    inc bc
    inc sp
    ld b, $03
    inc bc
    inc bc
    inc sp
    ld c, $1b
    inc b
    inc bc
    inc sp
    add hl, bc
    nop
    ld c, $05
    nop
    add l
    ld d, b
    nop
    nop
    nop
    dec c
    inc b
    nop
    adc e
    ld d, b
    nop
    nop
    ld bc, $0e0b
    nop
    sub l
    ld c, a
    nop
    nop
    ld bc, $0f0b
    nop
    sbc h
    ld c, a
    nop
    nop
    ld [bc], a
    inc c
    ld c, $00
    ld [hl], l
    ld d, b
    nop
    nop
    ld [bc], a
    inc c
    rrca
    nop
    ld [hl], l
    ld d, b
    nop
    nop
    ld [bc], a
    inc bc
    inc c
    nop
    ld a, d
    ld d, b
    nop
    nop
    ld [bc], a
    ld a, [bc]
    inc c
    nop
    ld a, d
    ld d, b
    nop
    nop
    ld [bc], a
    dec bc
    inc c
    nop
    ld a, d
    ld d, b
    nop
    nop
    rla
    inc c
    ld c, $06
    rst $10
    ld d, c
    inc c
    rrca
    ld b, $d7
    ld d, c
    add hl, bc
    ld de, $fa00
    ld d, c
    add hl, bc
    stop
    ld a, [$0951]
    rrca
    nop
    ld a, [$0951]
    ld c, $00
    ld a, [$0951]
    dec c
    nop
    ld a, [$0951]
    inc c
    nop
    ld a, [$0851]
    inc c
    nop
    ld a, [$0751]
    inc c
    nop
    ld a, [$0651]
    inc c
    nop
    ld a, [$0551]
    inc c
    nop
    ld a, [$0451]
    inc c
    nop
    ld a, [$0451]
    dec c
    nop
    ld a, [$0451]
    ld c, $00
    ld a, [$0451]
    rrca
    nop
    ld a, [$0451]
    stop
    ld a, [$0451]
    ld de, $fa00
    ld d, c
    dec b
    ld de, $fa00
    ld d, c
    ld b, $11
    nop
    ld a, [$0751]
    ld de, $fa00
    ld d, c
    ld [$0011], sp
    ld a, [$0751]
    ld a, [de]
    rlca
    rrca
    ld d, d
    ld c, $35
    inc d
    jr @+$09

    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $de
    ld b, $36
    inc d
    jr @+$09

    nop
    rst $38
    rst $38
    add b
    nop
    rst $28
    ld h, $dd
    ld b, $1e
    ld de, $0609
    nop
    rst $38

Jump_01b_5f3e:
    rst $38
    nop
    nop
    rst $28
    ld h, $d6
    ld b, $4f
    ld de, $090d
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $df
    ld b, $9b
    add hl, bc
    dec bc
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    ld bc, $e051
    ld b, $9b
    dec bc
    dec bc
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    inc l
    ld d, c
    pop hl
    ld b, $9b
    dec c
    dec bc
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    ld d, a
    ld d, c
    ld [c], a
    ld b, $9b
    add hl, bc
    ld a, [de]
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $e0
    ld b, $9b
    dec bc
    ld a, [de]
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $e1
    ld b, $9b
    dec c
    ld a, [de]
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $e2
    ld b, $35
    rrca
    inc e
    ld b, $00
    rst $38
    rst $38
    ld [bc], a
    ld b, $c5
    ld d, b
    jp c, $3506

    dec b
    rra
    ld b, $00
    rst $38
    rst $38
    ld [bc], a
    ld bc, $50d9
    jp c, $3506

    ld [de], a
    add hl, de
    ld [$ff00], sp
    rst $38
    ld [bc], a
    ld [$50ed], sp
    jp c, Jump_01b_5406

    inc c
    rlca
    ld bc, $ff00
    rst $38
    ld bc, $0d00
    ld d, d
    ld l, h
    ld b, $04
    jp hl


    ld e, a
    nop
    nop
    db $ed
    ld e, a
    nop
    nop
    xor $5f
    nop
    nop
    rst $28
    ld e, a
    nop
    nop
    ld bc, $f001
    ld e, a
    adc l
    db $fc
    ld e, a
    sub c
    sub c
    sub c
    sub c
    ld sp, $0303
    add hl, bc
    rst $30
    ld e, a
    sub b
    ld a, d
    ld a, [bc]
    ld [$9007], sp
    halt
    ld [bc], a
    adc e
    dec b
    db $76
    inc b
    inc bc
    adc e
    inc d
    ld l, c
    ld [bc], a
    ld a, [hl+]
    ld h, c
    ld b, a
    ld c, h
    ld a, c
    ld h, c
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    inc l
    ld h, c
    ld l, [hl]
    ld [bc], a
    inc d
    ld bc, $7691
    nop
    ld [bc], a
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    ld l, a
    ld a, [bc]
    ld l, c
    ld a, [bc]
    ld h, h
    ld h, c
    halt
    ld [bc], a
    ld a, a
    rra
    nop
    ld b, a
    ld c, h
    ld h, a
    ld h, d
    ld d, h
    ld c, c
    add l
    ld b, c
    nop
    ld l, c
    nop
    ld [hl], l
    ld h, c
    ld l, c
    ld a, [bc]
    ld l, l
    ld h, c
    ld l, [hl]
    ld a, [bc]
    inc d
    ld [bc], a
    rrca
    dec a
    nop
    sub c
    ld d, c
    dec [hl]
    ld h, d
    ld l, c
    nop
    inc sp
    ld h, c
    inc bc
    ld d, [hl]
    ld h, b
    ld l, c
    nop
    ld a, [hl-]
    ld h, c
    adc e
    ld e, $75
    nop
    inc bc
    rrca
    ld a, a
    add hl, sp
    nop
    db $76
    inc bc
    nop
    ld b, a
    ld c, h
    nop
    ld h, h
    ld d, h
    ld c, c
    ld l, c
    inc bc
    ld b, d
    ld h, c
    ld h, h
    ld de, $0065
    nop
    ld l, b
    inc bc
    ld e, [hl]
    inc sp
    inc b
    ld e, a
    ld h, b
    inc sp
    ld [hl], h
    dec b
    ld b, a
    ld c, h
    ld c, b
    ld h, l
    ld d, h
    ld c, c
    ld l, c
    inc bc
    ld b, h
    ld h, c
    add l
    ld b, c
    nop
    ld l, c
    inc bc
    ld b, a
    ld h, c
    ld l, [hl]
    inc bc
    inc d
    inc bc
    sub c
    ld b, a
    ld c, h
    add l
    ld h, l
    ld d, h
    ld c, c
    inc sp
    rst $38
    ld [bc], a
    sub c
    inc d
    dec b
    ld b, d
    dec b
    xor a
    ld h, l
    pop af
    ld h, l
    nop
    nop
    and a
    ld h, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld de, $5466
    ld c, c
    inc sp
    ld bc, $9103
    inc c
    dec b
    rra
    inc e
    ld [hl], c
    ld h, [hl]
    rla
    ld h, a
    nop
    nop
    cp [hl]
    ld h, b
    ld h, [hl]
    ld b, a
    ld c, h
    scf
    ld h, a
    ld d, h
    ld c, c
    inc sp
    ld [bc], a
    inc bc
    sub c
    sbc a
    inc b
    inc d
    ld bc, $678d
    ld [bc], a
    ld l, b
    nop
    nop
    push de
    ld h, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld [hl+], a
    ld l, b
    ld d, h
    ld c, c
    sub c
    and b
    inc b
    inc d
    ld [bc], a
    xor h
    ld l, b
    rst $18
    ld l, b
    nop
    nop
    jp hl


    ld h, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [bc]
    ld l, c
    ld d, h
    ld c, c
    sub c
    inc bc
    inc bc
    push af
    ld h, b
    ld b, a
    ld sp, $0301
    ld [$6105], sp
    ld sp, $0302
    ld [$6105], sp
    inc bc
    dec bc
    ld h, c
    ld c, h
    ld [hl], b
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    and e
    ld l, c
    ld d, h
    add l
    rra
    nop
    ld a, d
    ld a, [bc]
    ld [$7c07], sp
    ld c, c
    inc sp
    inc bc
    inc bc
    add [hl]
    sub c
    inc c
    inc b
    nop
    dec de
    ld bc, $0167
    ld a, [hl]
    ld bc, $010b
    ld [bc], a
    ld bc, $470f
    inc c
    ld c, $0e
    ld c, $0e
    ld c, $47
    dec c
    dec c
    dec c
    ld c, $0e
    ld bc, $0d47
    dec c
    ld c, $0d
    ld c, $0e
    ld bc, $0c47
    ld b, a
    inc de
    inc de
    ld b, a
    dec sp
    ld [hl], $3a
    ld b, l
    ld b, l
    dec bc
    db $10
    db $10
    db $10
    inc de
    db $10
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld de, $1111
    ld de, $1111
    ld de, $1211
    ld [de], a
    ld b, a
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    rrca
    rrca
    ld b, a
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    dec sp
    inc de
    ld a, [hl-]
    ld b, a
    nop
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    adc b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld c, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld d, c
    and [hl]
    and h
    or e
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
    and c
    xor [hl]
    or d
    or d
    call nc, $b07f
    or h
    and b
    or c
    or e
    and h
    or c
    or d
    add sp, $51
    sub e
    and a
    xor [hl]
    or d
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
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, l
    and b
    ld a, a
    and l
    and h
    or [hl]
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    sub d
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    or l
    and h
    or c
    cp b
    ld a, a
    and [hl]
    or c
    and b
    and d
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld d, l
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    add sp, $51
    inc d
    db $f4
    ld a, a
    xor e
    and h
    or e
    call nc, $a67f
    xor [hl]
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or e
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
    or d
    add sp, $57
    nop
    sub h
    or c
    or c
    and [hl]
    and [hl]
    and a
    ld [hl], l
    ld a, a
    sub e
    and a
    and h
    ld a, a
    and [hl]
    or h
    cp b
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    and b
    xor a
    and h
    ld a, a
    xor b
    or d
    ld d, l
    xor b
    xor l
    and d
    or c
    and h
    and e
    xor b
    and c
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    ld d, c
    add e
    xor b
    and e
    xor l
    push de
    ld a, a
    adc b
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
    and b
    or e
    ld a, a
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
    ld d, c
    or e
    xor [hl]
    ld a, a
    and e
    and h
    or d
    or e
    or c
    xor [hl]
    cp b
    ld a, a
    sub e
    add h
    add b
    adc h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    add h
    sub e
    and $51
    ld [hl], l
    sub e
    and h
    xor e
    xor e
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or h
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, c
    and d
    and b
    xor a
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    adc h
    cp b
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
    ld a, a
    xor l
    xor [hl]
    ld c, a
    xor h
    and b
    or e
    and d
    and a
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and d
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $7f
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and c
    and h
    and b
    or e
    ld d, c
    and a
    xor b
    xor h
    ld a, a
    and c
    cp b
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    or e
    call nc, $b67f
    and a
    and b
    or e
    ld a, a
    and a
    and h
    ld a, a
    or d
    and b
    xor b
    and e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    xor h
    and h
    ld [hl], l
    ld d, c
    add a
    and h
    ld a, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, c
    or e
    or c
    or h
    or d
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    adc b
    jp nc, $a57f

    or h
    or c
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld c, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and c
    xor e
    and h
    and h
    and e
    xor b
    xor l
    and [hl]
    ld d, l
    and a
    and h
    and b
    or c
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and a
    xor b
    xor h
    add sp, $51
    ld [hl], l
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld a, a
    adc b
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
    or e
    xor b
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    or d
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
    sub [hl]
    and a
    and b
    or e
    and $7f
    sub [hl]
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
    and $4f
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
    xor [hl]
    and l
    and l
    xor b
    and d
    and h
    ld d, c
    xor [hl]
    and l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor e
    and h
    and b
    and e
    and h
    or c
    db $f4
    ld c, a
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    add sp, $51
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    and e
    xor b
    or d
    and c
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
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
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld d, c
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
    ld a, a
    and a
    and h
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
    xor b
    xor l
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
    add c
    or h
    or e
    ld a, a
    or [hl]
    and h
    db $d3
    and h
    ld a, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld c, a
    and a
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
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
    ld a, a
    and e
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    or d
    or d
    or h
    xor h
    and h
    ld c, a
    and d
    xor [hl]
    xor h
    xor h
    and b
    xor l
    and e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $b67f
    and a
    cp b
    ld a, a
    or [hl]
    and h
    db $d3
    and h
    ld c, a
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    and h
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
    and e
    xor b
    or d
    or e
    or h
    or c
    and c
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, l
    xor a
    xor e
    and b
    and d
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld [hl], l
    ld a, a
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
    and e
    xor [hl]
    ld a, a
    and b
    ld c, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld c, a
    and l
    xor [hl]
    or c
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor h
    and h
    ld [hl], l
    ld d, a
    nop
    adc l
    xor [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    xor e
    and h
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and b
    and l
    and l
    and h
    and d
    or e
    ld a, a
    xor h
    and h
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
    xor b
    xor l
    and l
    xor [hl]
    or c
    xor h
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld [hl], l
    ld d, a
    nop
    adc h
    sub h
    sub c
    adc d
    sub c
    adc [hl]
    sub [hl]
    sbc h
    ld a, a
    sub e
    and a
    and h
    ld c, a
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
    ld [hl], l
    ld d, c
    add a
    add b
    adc b
    adc e
    ld a, a
    add [hl]
    adc b
    adc [hl]
    sub l
    add b
    adc l
    adc l
    adc b
    add sp, $57
    nop
    add e
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    and $51
    adc h
    and b
    cp b
    and c
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or [hl]
    and h
    and b
    xor d
    xor e
    xor b
    xor l
    and [hl]
    call nc, $a64f
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
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
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
    add sp, $7f
    sub d
    or e
    xor [hl]
    xor a
    add sp, $4f
    adc b
    pop de
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
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    or d
    or d
    call nc, $b17f
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    xor b
    or d
    ld d, c
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    sub e
    add b
    adc b
    adc e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $b47f
    or d
    and h
    xor e
    and h
    or d
    or d
    ld c, a
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
    and a
    and b
    or l
    and h
    ld d, l
    or e
    or [hl]
    xor [hl]
    ld a, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    or d
    add sp, $57
    nop
    add a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    db $d3
    and h
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
    ld c, a
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $51
    add a
    and b
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor l
    or h
    or e
    or d
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
    and a
    and b
    or l
    and h
    ld a, a
    and [hl]
    or h
    or e
    or d
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
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
    xor h
    and h
    db $f4
    ld a, a
    adc b
    pop de
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
    ld d, c
    and b
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
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    and c
    xor [hl]
    or d
    or d
    call nc, $b17f
    xor [hl]
    xor [hl]
    xor h
    rst $20
    ld d, a
    nop
    add a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    rst $20
    ld c, a
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
    rst $20
    ld d, a
    nop
    add a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    db $e3
    and a
    cp b
    or h
    and d
    xor d
    rst $20
    ld d, c
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
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    or d
    or d
    call nc, $b17f
    xor [hl]
    xor [hl]
    xor h
    ld [hl], l
    ld d, c
    sub h
    and a
    ld [hl], l
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
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, a
    sub c
    add b
    sub e
    adc b
    add d
    add b
    sub e
    add h
    ld a, a
    sub e
    add b
    adc b
    adc e
    add sp, $57
    nop
    adc b
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    sub d
    adc b
    adc e
    adc a
    add a
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    ld d, c
    or c
    or h
    xor l
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
    and l
    xor [hl]
    or c
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
    add sp, $51
    add b
    ld a, a
    xor h
    and h
    and e
    and e
    xor e
    and h
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
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
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld d, l
    and c
    and h
    ld a, a
    xor a
    or h
    xor l
    xor b
    or d
    and a
    and h
    and e
    add sp, $57
    nop
    add b
    ld a, a
    xor h
    and h
    or c
    and h
    ld a, a
    or e
    and b
    and d
    or e
    xor b
    and d
    and b
    xor e
    ld c, a
    and h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    and d
    xor [hl]
    or d
    or e
    ld a, a
    xor h
    and h
    ld [hl], l
    ld d, a
    nop
    add b
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and e
    or c
    xor b
    or l
    and h
    or d
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    and b
    and e
    ld [hl], l
    ld d, c
    adc h
    cp b
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    xor b
    xor h
    and h
    xor l
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    ld a, a
    or d
    or h
    and d
    and d
    and h
    or d
    or d
    add sp, $51
    adc h
    cp b
    ld a, a
    xor a
    or c
    xor [hl]
    xor h
    xor [hl]
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor b
    or d
    ld c, a
    and b
    or d
    or d
    or h
    or c
    and h
    and e
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    or d
    or d
    ld d, c
    xor h
    and h
    and b
    xor l
    or d
    ld a, a
    and b
    and c
    or d
    xor [hl]
    xor e
    or h
    or e
    and h
    xor e
    cp b
    ld c, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and d
    and b
    or c
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
    and b
    or c
    and h
    ld a, a
    and a
    or h
    or c
    or e
    ld d, l
    and c
    cp b
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    xor b
    xor h
    and h
    xor l
    or e
    add sp, $57
    nop
    sub e
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or d
    or h
    xor b
    or e
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    or [hl]
    and h
    ld a, a
    or e
    or h
    or c
    xor l
    ld a, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld d, c
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    or c
    xor [hl]
    and b
    and e
    db $e3
    ld c, a
    and d
    and b
    or d
    or e
    ld a, a
    xor l
    and b
    or e
    xor b
    xor [hl]
    xor l
    or [hl]
    xor b
    and e
    and h
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld c, a
    and h
    or a
    and d
    xor b
    or e
    and h
    or d
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    call nc, $a27f
    xor e
    xor [hl]
    or d
    and h
    and e
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld c, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    call nc, $a27f
    xor e
    xor [hl]
    or d
    and h
    and e
    ld [hl], l
    ld d, c
    ld d, d
    ld a, a
    and h
    xor l
    or e
    and h
    or c
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    xor a
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    or d
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and e
    xor [hl]
    xor [hl]
    or c
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
    rst $20
    ld d, a
    nop
    nop
    inc b
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [hl-], a
    ld [bc], a
    dec de
    inc bc
    inc bc
    ld [hl-], a
    ld b, $03
    inc b
    inc bc
    ld [hl-], a
    ld c, $1b
    dec b
    inc bc
    ld [hl-], a
    inc bc
    ld [bc], a
    ld [$000a], sp
    ld c, e
    ld h, b
    nop
    nop
    ld [bc], a
    ld [$000b], sp
    ld d, d
    ld h, b
    nop
    nop
    ld bc, $080a
    nop
    add hl, de
    ld h, b
    nop
    nop
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld b, $f1
    ld h, b
    add hl, bc
    dec bc
    ld b, $f1
    ld h, b
    ld bc, $000a
    dec e
    ld h, c
    ld bc, $000b
    dec e
    ld h, c
    ld bc, $000c
    dec e
    ld h, c
    ld bc, $000d
    dec e
    ld h, c
    dec c
    inc b
    nop
    dec e
    ld h, c
    dec c
    dec b
    nop
    dec e
    ld h, c
    dec c
    ld b, $00
    dec e
    ld h, c
    dec c
    rlca
    nop
    dec e
    ld h, c
    ld c, $1e
    ld [de], a
    dec e
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    db $fc
    ld e, a
    rst $10
    ld b, $35
    rlca
    inc c
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $db
    ld b, $9e
    ld b, $0b
    ld d, $00
    rst $38
    rst $38
    sub b
    nop
    sub c
    ld h, b
    jp c, $3606

    ld de, $0707
    nop
    rst $38
    rst $38
    add d
    nop
    sbc e
    ld h, b
    jp c, $3506

    dec bc
    add hl, de
    rlca
    nop
    rst $38
    rst $38
    ld [bc], a
    nop
    or d
    ld h, b
    jp c, $3c06

    ld b, $05
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc bc
    ret


    ld h, b
    jp c, $3c06

    db $10
    ld e, $08
    nop
    rst $38
    rst $38
    sub d
    ld b, $dd
    ld h, b
    jp c, $3506

    ld [de], a
    inc e
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld c, b
    ld h, b
    jp c, $0406

    add hl, bc
    ld [$0006], sp
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $c0
    ld b, $54
    db $10
    dec b
    ld bc, $ff00
    rst $38
    ld bc, $2000
    ld h, c
    ld l, l
    ld b, $54
    inc de
    dec b
    ld bc, $ff00
    rst $38
    ld bc, $2200
    ld h, c
    ld l, [hl]
    ld b, $54
    dec c
    jr nz, jr_01b_6adc

    nop

jr_01b_6adc:
    rst $38
    rst $38
    ld bc, $2400
    ld h, c
    ld l, a
    ld b, $54
    ld b, $15
    ld bc, $ff00
    rst $38
    ld bc, $2600
    ld h, c
    ld [hl], b
    ld b, $54
    ld c, $12
    ld bc, $ff00
    rst $38
    ld bc, $2800
    ld h, c
    ld d, h
    ld b, $00
    ld bc, $0302
    ld l, e
    ld sp, $0010
    add hl, bc
    inc [hl]
    ld l, e
    add hl, de
    ld h, h
    reti


    ld b, $01
    dec [hl]
    ld l, e
    ld b, $02
    inc a
    ld l, e
    ld b, $03
    ld b, e
    ld l, e
    ld b, $04
    ld c, d
    ld l, e
    ld b, $05
    ld d, c
    ld l, e
    ld b, $06
    ld e, b
    ld l, e
    ld b, $07
    ld e, a
    ld l, e
    ld b, $08
    ld h, [hl]
    ld l, e
    ld b, $09
    ld l, l
    ld l, e
    ld b, $0a
    ld [hl], h
    ld l, e
    sub b
    ld [hl], d
    ld [bc], a
    ld c, $1f
    ld l, a
    ld [bc], a
    sub b
    ld [hl], d
    ld [bc], a
    rrca
    add hl, de
    ld l, a
    ld [bc], a
    sub b
    ld [hl], d
    ld [bc], a
    inc d
    jr @+$71

    ld [bc], a
    sub b
    ld [hl], d
    ld [bc], a
    dec e
    ld d, $6f
    ld [bc], a
    sub b
    ld [hl], d
    ld [bc], a
    inc e
    rra
    ld l, a
    ld [bc], a
    sub b
    ld [hl], d
    ld [bc], a
    jr @+$25

    ld l, a
    ld [bc], a
    sub b
    ld [hl], d
    ld [bc], a
    ld d, $1f
    ld l, a
    ld [bc], a
    sub b
    ld [hl], d
    ld [bc], a
    rrca
    dec e
    ld l, a
    ld [bc], a
    sub b
    ld [hl], d
    ld [bc], a
    ld a, [bc]
    inc hl
    ld l, a
    ld [bc], a
    sub b
    ld [hl], d
    ld [bc], a
    ld b, $1c
    ld l, a
    ld [bc], a
    sub b
    ld l, e
    ld b, a
    ld sp, $0029
    add hl, bc
    adc c
    ld l, e
    ld c, h
    ld e, h
    ld l, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    add hl, de
    ld [hl], b
    ld d, h
    ld c, c
    sub c
    add hl, de
    ld h, h
    reti


    ld b, $01
    cp d
    ld l, e
    ld b, $02
    reti


    ld l, e
    ld b, $03
    ld [bc], a
    ld l, h
    ld b, $04
    dec hl
    ld l, h
    ld b, $05
    ld d, h
    ld l, h
    ld b, $06
    and a
    ld l, h
    ld b, $07
    ret nc

    ld l, h
    ld b, $08
    ld c, $6d
    ld b, $09
    ld d, b
    ld l, l
    ld b, $0a
    sub [hl]
    ld l, l
    ld l, e
    ld b, a
    ld c, h
    ld l, a
    ld [hl], b
    ld d, l
    ld c, h
    add [hl]
    ld [hl], b
    add h
    ld d, e
    nop
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    adc a
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    rrca
    add hl, de
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld [bc], a
    sub c
    nop
    and c
    ld l, l
    ld b, $00
    pop af
    ld l, e
    ld l, c
    ld [bc], a
    sub l
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    inc d
    jr jr_01b_6c57

    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    inc bc
    sub c
    ld l, c
    ld [bc], a
    sbc [hl]
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    rrca
    dec e
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld [$0091], sp
    and c
    ld l, l
    ld b, $02
    ld a, [de]
    ld l, h
    ld l, c
    ld [bc], a
    and h
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    dec e
    ld d, $6e
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    inc b
    sub c
    ld l, c
    ld [bc], a
    xor e
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    rrca
    add hl, de
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld [bc], a
    sub c
    nop
    and c
    ld l, l
    ld b, $01
    ld b, e
    ld l, h
    ld l, c
    ld [bc], a
    or c
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    inc e
    rra
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    dec b
    sub c
    ld l, c
    ld [bc], a
    cp b
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    inc d
    jr jr_01b_6cba

    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    inc bc
    sub c
    nop
    and c
    ld l, l

jr_01b_6c57:
    ld b, $01
    add l
    ld l, h
    ld b, $02
    ld [hl], h
    ld l, h
    ld b, $03
    sub [hl]
    ld l, h
    ld l, c
    ld [bc], a
    cp l
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    jr jr_01b_6c8e

    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld b, $91
    ld l, c
    ld [bc], a
    rst $00
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    ld d, $1f
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    rlca
    sub c
    ld l, c
    ld [bc], a
    call z, Call_01b_726e
    ld [bc], a
    dec e
    ld d, $6e

jr_01b_6c8e:
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    inc b
    sub c
    ld l, c
    ld [bc], a
    jp nc, Jump_01b_726e

    ld [bc], a
    dec e
    ld d, $6e
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    inc b
    sub c
    nop
    and c
    ld l, l
    ld b, $03
    cp a
    ld l, h
    ld l, c
    ld [bc], a
    and $6e
    ld [hl], d
    ld [bc], a
    ld d, $1f
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a

jr_01b_6cba:
    dec de
    ld h, h
    reti


    rlca
    sub c
    ld l, c
    ld [bc], a
    rst $28
    ld l, [hl]
    ld [hl], d
    ld [bc], a
    inc e
    rra
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    dec b
    sub c
    nop
    and c
    ld l, l
    ld b, $00
    db $fd
    ld l, h
    ld b, $02
    db $ec
    ld l, h
    ld l, c
    ld [bc], a
    ld hl, sp+$6e
    ld [hl], d
    ld [bc], a
    rrca
    dec e
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld [$6991], sp
    ld [bc], a
    nop
    ld l, a
    ld [hl], d
    ld [bc], a
    jr jr_01b_6d17

    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld b, $91
    ld l, c
    ld [bc], a
    add hl, bc
    ld l, a
    ld [hl], d
    ld [bc], a
    inc e
    rra
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    dec b
    sub c
    nop
    and c
    ld l, l
    ld b, $01
    ccf
    ld l, l
    ld b, $02

jr_01b_6d17:
    ccf
    ld l, l
    ld b, $03
    ld l, $6d
    ld l, c
    ld [bc], a
    db $10
    ld l, a
    ld [hl], d
    ld [bc], a
    ld a, [bc]
    inc hl
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    add hl, bc
    sub c
    ld l, c
    ld [bc], a
    jr jr_01b_6da1

    ld [hl], d
    ld [bc], a
    ld d, $1f
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    rlca
    sub c
    ld l, c
    ld [bc], a
    ld e, $6f
    ld [hl], d
    ld [bc], a
    rrca
    add hl, de
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld [bc], a
    sub c
    nop
    and c
    ld l, l
    ld b, $00
    add l
    ld l, l
    ld b, $03
    ld [hl], h
    ld l, l
    ld l, c
    ld [bc], a
    inc hl
    ld l, a
    ld [hl], d
    ld [bc], a
    ld b, $1c
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld a, [bc]
    ld l, a
    inc b
    inc sp
    rst $30
    ld b, $33
    add hl, hl
    nop
    sub c
    ld l, c
    ld [bc], a
    inc sp
    ld l, a
    ld [hl], d
    ld [bc], a
    rrca
    dec e
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld [$6991], sp
    ld [bc], a
    dec a
    ld l, a
    ld [hl], d
    ld [bc], a
    rrca
    dec e
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld [bc], a
    dec de
    ld h, h
    reti


    ld [$6b91], sp
    ld b, a
    ld c, h
    add [hl]
    ld [hl], b
    add h
    ld d, e
    nop
    ld d, h
    ld c, c
    sub c

jr_01b_6da1:
    ld l, e
    ld b, a
    ld c, h
    add [hl]
    ld [hl], b
    add h
    ld d, e
    nop
    ld d, h
    ld c, c
    inc e
    add hl, bc
    sub c
    ld l, e
    ld b, a
    ld sp, $0010
    add hl, bc
    ret c

    ld l, l
    ld c, h
    sbc c
    ld [hl], b
    ld d, l
    sbc [hl]
    di
    ld bc, $1033
    nop
    ld c, h
    ld b, c
    ld [hl], c
    ld d, h
    ld c, c
    inc sp
    jp hl


    ld b, $33
    di
    ld b, $33
    db $f4
    ld b, $32
    push af
    ld b, $32
    or $06
    ld [hl-], a
    rst $30
    ld b, $91
    ld c, h
    ret nz

    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $005f
    add hl, bc
    di
    ld l, l
    ld c, h
    dec de
    ld [hl], d
    ld d, l
    sbc [hl]
    ret nz

    ld bc, $f708
    ld l, l
    inc sp
    ld e, a
    nop
    ld c, h
    ld l, l
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    ret nz

    dec b
    inc h
    inc de
    dec d
    ld [hl], l
    ld d, c
    ld [hl], l
    nop
    nop
    dec b
    ld l, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    ld [hl], c
    ld [hl], l
    ld d, h
    ld c, c
    sub c
    ld d, c
    xor a
    ld [hl], d
    daa
    ld bc, $0131
    add hl, bc
    ld bc, HeaderManufacturerCode
    adc b
    nop
    ccf
    adc c
    nop
    ld de, $008a
    ld h, $0c
    ld c, $00
    ld d, e
    sbc $72
    ld sp, $00c0
    add hl, bc
    jr nc, jr_01b_6e9b

    inc bc
    dec [hl]
    ld l, [hl]
    ld hl, $0973
    jr c, jr_01b_6ea3

    ld d, e
    ld e, b
    ld [hl], e
    ld b, a
    ld c, h
    sub h
    ld [hl], e
    ld c, [hl]
    add hl, bc
    ld b, d
    ld l, [hl]
    ld c, c
    sub c
    jr nz, jr_01b_6eb7

    ld bc, $c032
    nop
    inc sp
    and h
    rlca
    ld l, [hl]
    ld [$eb32], sp
    ld b, $4c
    dec sp
    ld [hl], h
    ld d, h
    ld c, c
    adc e
    inc d
    ld [hl], l
    nop
    nop
    inc d
    rrca
    ld l, d
    nop
    ld l, c
    nop
    ld e, b
    ld l, a
    adc e
    ld e, $76
    nop
    nop
    adc e
    inc d
    dec [hl]
    ld h, h
    nop
    rrca
    adc a
    nop
    ld e, l
    ei
    ld e, $5f
    ld h, b
    adc e
    inc d
    rrca
    sub b
    nop
    ld [$6e8e], sp
    ld l, a
    rlca
    ld l, c
    rlca
    ld c, [hl]
    ld l, a
    ld b, a
    ld c, h
    ld d, d
    ld [hl], h
    ld d, h
    ld c, c
    ld l, c
    rlca
    ld d, e
    ld l, a
    ld l, [hl]
    rlca
    sub c
    ld de, $1111
    ld de, $4711
    ld de, $1311
    inc de
    inc de
    inc de

jr_01b_6e9b:
    inc de
    db $10
    ld b, a
    db $10
    db $10
    db $10
    db $10
    db $10

jr_01b_6ea3:
    ld b, a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, a
    ld de, $1212
    ld [de], a
    ld [de], a
    ld b, a
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10

jr_01b_6eb7:
    ld b, a
    ld [de], a
    ld [hl-], a
    ld [de], a
    ld [de], a
    ld b, a
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, a
    ld de, $1111
    inc de
    ld de, $1347
    ld bc, $003e
    ld a, $01
    ld a, $10
    db $10
    dec sp
    ld sp, $4545
    ld a, [hl-]
    ld de, $1111
    ld de, $4711
    ld [de], a
    ld [de], a
    ld [de], a
    ld de, $1311
    ld de, $4711
    inc de
    inc de
    inc de
    inc de
    ld de, $1111
    ld de, $1147
    ld de, $1212
    ld [de], a
    ld [de], a
    ld [de], a
    ld b, a
    db $10
    db $10
    ld [de], a
    db $10
    db $10
    inc de
    inc de
    inc de
    ld b, a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, a
    db $10
    ld [de], a
    db $10
    db $10
    db $10
    db $10
    db $10
    ld b, a
    inc de
    inc de
    inc de
    inc de
    inc de
    ld b, a
    ld de, $1111
    ld de, $1247
    ld [de], a
    dec sp
    inc sp
    ld b, l
    ld b, l
    ld a, [hl-]
    ld [de], a
    ld [de], a
    ld de, $1111
    ld de, $1111
    ld b, a
    inc de
    inc de
    inc de
    inc de
    ld de, $1111
    ld de, $4711
    ld [de], a
    ld [de], a
    dec sp
    inc sp
    ld b, l
    ld b, l
    ld a, [hl-]
    inc de
    inc de
    inc de
    inc de
    ld de, $1111
    ld de, $4711
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
    dec sp
    ld [$473a], sp
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor h
    and b
    xor l
    ld [hl], l
    ld a, a
    adc h
    cp b
    ld a, a
    and c
    xor [hl]
    or d
    or d
    ld c, a
    xor b
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
    ld a, a
    and c
    and h
    ld d, l
    or d
    or e
    and h
    and b
    xor h
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
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
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    add d
    sub h
    sub e
    sub d
    ld a, a
    or e
    or c
    and h
    and h
    or d
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    and d
    and a
    and b
    or c
    and d
    xor [hl]
    and b
    xor e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    xor [hl]
    and l
    and l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    and h
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor e
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
    xor b
    or e
    ld a, a
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
    ld d, l
    adc b
    adc e
    add h
    sub a
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    add sp, $51
    adc b
    or e
    call nc, $b37f
    xor [hl]
    xor [hl]
    ld a, a
    and c
    xor b
    and [hl]
    db $f4
    ld a, a
    and e
    and b
    or c
    xor d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    ld [hl], l
    ld d, a
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
    or d
    ld a, a
    and b
    ld c, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    and c
    or h
    xor l
    and d
    and a
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    and c
    xor [hl]
    or d
    or d
    call nc, Call_01b_547f
    adc h
    adc [hl]
    adc l
    ld c, a
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
    xor h
    and h
    ld a, a
    and c
    and h
    db $e3
    ld d, l
    and d
    and b
    or h
    or d
    and h
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
    ld d, l
    and b
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    adc b
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
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    add l
    add b
    sub c
    add l
    add h
    sub e
    add d
    add a
    ldh [$83], a
    sbc h
    ld a, a
    adc d
    or [hl]
    and b
    and b
    rst $20
    ld d, a
    nop
    add b
    and a
    rst $20
    ld a, a
    adc h
    cp b
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
    ld d, c
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
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or h
    or d
    db $f4
    ld a, a
    xor d
    xor b
    and e
    and $51
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
    or [hl]
    and h
    ld c, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    and b
    and c
    xor e
    and h
    ld d, c
    or e
    xor [hl]
    ld a, a
    add d
    sub h
    sub e
    ld a, a
    or e
    or c
    and h
    and h
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and d
    and a
    and b
    or c
    and d
    xor [hl]
    and b
    xor e
    add sp, $51
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
    adc l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and d
    and b
    xor l
    ld a, a
    adc b
    ld c, a
    or e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
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
    ld c, a
    or e
    and a
    xor b
    or d
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    add d
    sub h
    sub e
    ld a, a
    add a
    adc h
    add sp, $4f
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor e
    and h
    and b
    or c
    ld c, a
    or d
    xor h
    and b
    xor e
    xor e
    ld a, a
    or e
    or c
    and h
    and h
    or d
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
    cp b
    xor [hl]
    or h
    ld c, a
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
    ld a, a
    or e
    and a
    and h
    ld d, c
    add [hl]
    sbc b
    adc h
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    add b
    sbc c
    add b
    adc e
    add h
    add b
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
    add sp, $57
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
    and b
    xor a
    xor a
    or c
    and h
    xor l
    or e
    xor b
    and d
    and h
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld d, c
    and d
    and a
    and b
    or c
    and d
    xor [hl]
    and b
    xor e
    ld a, a
    xor h
    and b
    xor d
    and h
    or c
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    and $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    db $e3
    ld c, a
    or c
    and b
    or e
    and h
    ld a, a
    xor b
    xor l
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
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    xor h
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $51
    adc b
    jp nc, $b27f

    and a
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    or c
    and h
    and h
    or d
    ld c, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    add a
    add h
    add b
    add e
    add c
    sub h
    sub e
    sub e
    add sp, $51
    adc b
    or e
    call nc, $a57f
    or h
    xor l
    add sp, $7f
    add a
    and h
    or c
    and h
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or c
    cp b
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop

Call_01b_726e:
Jump_01b_726e:
    sub c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    or c
    and h
    and h
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    add a
    add h
    add b
    add e
    add c
    sub h
    sub e
    sub e
    add sp, $7f
    sub d
    xor [hl]
    xor h
    and h
    db $e3
    ld d, l
    or e
    xor b
    xor h
    and h
    or d
    db $f4
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $57
    nop
    add e
    xor b
    and e
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
    and a
    and b
    xor a
    xor a
    and h
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    call nc, $a67f
    or h
    and b
    or c
    and e
    xor b
    and b
    xor l
    and $57
    nop
    adc b
    adc e
    add h
    sub a
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    ld a, a
    xor b
    or d
    ld c, a
    or d
    xor [hl]
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, c
    or e
    or c
    and h
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    or d
    and h
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor d
    cp b
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or [hl]
    and b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld d, l
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
    and e
    or c
    xor [hl]
    xor a
    xor a
    and h
    and e
    add sp, $57
    nop
    adc b
    adc e
    add h
    sub a
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    ld c, a
    sub d
    add a
    sub c
    adc b
    adc l
    add h
    ld [hl], l
    ld d, c
    adc b
    or e
    call nc, $a87f
    xor l
    ld a, a
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    call nc, $af55
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor [hl]
    or c
    ld [hl], l
    ld d, a
    nop
    adc b
    adc e
    add h
    sub a
    ld a, a
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    ld c, a
    sub d
    add a
    sub c
    adc b
    adc l
    add h
    ld [hl], l
    ld d, c
    adc b
    or e
    call nc, $a87f
    xor l
    ld a, a
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    or c
    and h
    or d
    or e
    call nc, $af55
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor [hl]
    or c
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    and $7f
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
    adc b
    or e
    call nc, $a07f
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    add sp, $4f
    adc b
    or e
    ld a, a
    xor e
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
    or e
    and a
    and h
    ld d, c
    add [hl]
    sub d
    ld a, a
    add c
    add b
    adc e
    adc e
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and l
    xor b
    or e
    ld c, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    add sp, $51
    sub [hl]
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
    or e
    and a
    and h
    ld a, a
    add [hl]
    sub d
    ld c, a
    add c
    add b
    adc e
    adc e
    ld a, a
    and a
    and h
    or c
    and h
    and $57
    nop
    ld d, d
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
    ld c, a
    add [hl]
    sub d
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $57
    nop
    sub [hl]
    and a
    and h
    or [hl]
    db $f4
    ld a, a
    or [hl]
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
    ld d, c
    ld d, d
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
    add sp, $7f
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
    and h
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    sub d
    add a
    sub c
    adc b
    adc l
    add h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld d, l
    or c
    and h
    and b
    xor e
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
    add sp, $51
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    xor b
    xor l
    or d
    xor a
    xor b
    or c
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
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
    add sp, $51
    adc b
    or e
    ld a, a
    xor h
    xor [hl]
    or e
    xor b
    or l
    and b
    or e
    and h
    or d
    ld a, a
    xor h
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
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    rst $20
    ld d, c
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    or d
    xor l
    and h
    and b
    xor d
    ld a, a
    or h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld c, a
    xor h
    and h
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
    sbc b
    xor [hl]
    or h
    ld a, a
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
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and a
    and b
    and e
    xor l
    push de
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and h
    and l
    xor [hl]
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
    adc b
    sub $a4
    ld c, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld d, c
    and l
    and h
    xor e
    xor e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    or c
    and h
    and h
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or h
    or d
    and h
    and e
    ld d, l
    add a
    add h
    add b
    add e
    add c
    sub h
    sub e
    sub e
    add sp, $51
    adc b
    ld a, a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld c, a
    add a
    add h
    add b
    add e
    add c
    sub h
    sub e
    sub e
    ld a, a
    xor b
    xor l
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, l
    xor a
    xor e
    and b
    and d
    and h
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    nop
    inc bc
    dec b
    ld bc, $0b03
    rla
    ld a, [hl+]
    inc bc
    ld bc, $160b
    dec hl
    inc bc
    ld [bc], a
    dec bc
    ld d, $00
    dec b
    ld de, $0003
    inc h
    ld l, [hl]
    rlca
    dec bc
    rlca
    jr jr_01b_7673

    ld b, $03
    rlca
    dec de
    ld l, [hl]
    inc bc
    ld [$1e07], sp
    ld l, [hl]
    ld d, $08
    ld bc, $6e27
    dec bc
    ld c, [hl]
    inc hl
    ld [de], a
    inc bc
    nop
    rst $38
    rst $38
    or b
    nop
    adc a
    ld l, e
    jp hl


    ld b, $27
    jr nz, jr_01b_7630

    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld a, e
    ld l, e
    di
    ld b, $41

jr_01b_7630:
    jr nz, jr_01b_763b

    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    xor [hl]
    ld l, l
    db $f4

jr_01b_763b:
    ld b, $2c
    ld [de], a
    inc de
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    sbc $6d
    rst $38
    rst $38
    ld d, h
    inc h
    jr jr_01b_764e

    nop

jr_01b_764e:
    rst $38
    rst $38
    ld bc, $1000
    ld l, [hl]
    ld [hl], c
    ld b, $0b
    ld hl, $070c
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $a5
    rlca
    jr z, jr_01b_767c

    dec d
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    dec c
    ld l, [hl]
    db $ed
    ld b, $27
    ld b, $0e

jr_01b_7673:
    rlca
    nop
    rst $38
    rst $38
    and d
    nop
    ld sp, hl
    ld l, l
    rst $38

jr_01b_767c:
    rst $38
    ld d, h
    rrca
    db $10
    ld bc, $ff00
    rst $38
    ld bc, $1200
    ld l, [hl]
    cp c
    rlca
    ld d, h
    ld [$0121], sp
    nop
    rst $38
    rst $38
    ld bc, $1400
    ld l, [hl]
    cp d
    rlca
    ld d, h
    rrca
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $1600
    ld l, [hl]
    cp e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
