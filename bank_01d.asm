; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    nop
    nop
    ld d, c
    ld [$e440], sp
    nop
    jr z, jr_01d_4009

jr_01d_4009:
    add b
    ld a, a
    and c
    or h
    xor l
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    ld c, a
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
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld d, c
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or d
    and a
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    nop
    ld b, $21
    inc bc
    ld a, [bc]
    inc c
    inc bc
    rra
    dec b
    dec b
    inc bc
    ld d, h
    dec b
    rrca
    dec b
    rla
    ld bc, $1103
    ld b, $03
    ld d, h
    ld hl, $0211
    inc bc
    ld d, h
    inc bc
    inc bc
    inc b
    inc bc
    ld d, h
    nop
    ld bc, $060b
    rlca
    dec b
    ld b, b
    ld bc, $232d
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    ld b, b
    rst $38
    rst $38
    ld [bc], a
    adc c
    ld b, b
    nop
    nop
    adc l
    ld b, b
    nop
    nop
    nop
    adc l
    adc [hl]
    ld b, b
    sub c
    sub c
    halt
    inc bc
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    ld l, c
    ld [bc], a
    ld sp, hl
    ld b, b
    ld a, a
    rra
    nop
    ld b, a
    ld c, h
    dec b
    ld b, c
    ld d, h
    ld c, c
    ld sp, $001c
    add hl, bc
    jp $3140


    dec e
    nop
    add hl, bc
    db $d3
    ld b, b
    ld h, h
    sbc l
    ld b, c
    ldh [rSCY], a
    ld l, b
    ld [bc], a
    ld e, [hl]
    ld a, [hl+]
    inc bc
    ld e, a
    add e
    ld h, b
    inc bc
    db $e3
    ld b, b
    ld h, h
    sbc l
    ld b, c
    ldh [rSCY], a
    ld l, b
    ld [bc], a
    ld e, [hl]
    ld a, [hl+]
    ld bc, $835f
    ld h, b
    inc bc
    db $e3
    ld b, b
    ld h, h
    sbc l
    ld b, c
    ldh [rSCY], a
    ld l, b
    ld [bc], a
    ld e, [hl]
    ld a, [hl+]
    ld [bc], a
    ld e, a
    add e
    ld h, b
    inc bc
    db $e3
    ld b, b
    ld a, a
    jr nz, jr_01d_40e6

jr_01d_40e6:
    ld b, a
    ld c, h
    ld a, [$5441]
    ld c, c
    ld l, c
    ld [bc], a
    db $fd
    ld b, b
    ld l, [hl]
    ld [bc], a
    inc d
    ld bc, $1933
    inc bc
    add d
    sub c
    ld c, $0e
    ld c, $47
    rrca
    rrca
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, a
    nop
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
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
    db $f4
    ld c, a
    ld d, d
    add sp, $51
    ld [hl], l
    sub d
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
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
    ld d, c
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor e
    and b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, c
    add b
    xor l
    and e
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    or h
    xor a
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor l
    ld a, a
    and b
    xor l
    or d
    or [hl]
    and h
    or c
    add sp, $51
    ld d, d
    db $f4
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and h
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
    rst $20
    ld d, a
    nop
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
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
    or c
    and b
    xor b
    or d
    and h
    and e
    ld c, a
    xor h
    cp b
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
    ld d, c
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld [hl], l
    ld d, c
    ld [hl], l
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    ld c, a
    or [hl]
    and b
    or d
    xor l
    push de
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld [hl], l
    ld d, a
    nop
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
    ld [hl], l
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    db $f4
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
    add sp, $51
    adc b
    ld a, a
    and b
    and e
    xor h
    xor b
    or e
    ld a, a
    xor b
    or e
    add sp, $7f
    add c
    or h
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    or e
    and a
    and h
    ld d, l
    and h
    xor l
    and e
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
    and h
    ld c, a
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
    ld d, h
    db $e3
    ld d, l
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
    ld a, a
    and h
    or l
    and h
    or c
    add sp, $51
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
    and h
    or d
    and h
    ld a, a
    and [hl]
    or h
    cp b
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    and c
    and h
    and a
    xor b
    xor l
    and e
    ld a, a
    xor h
    and h
    add sp, $51
    ld [hl], l
    adc e
    xor b
    or d
    or e
    and h
    xor l
    db $f4
    ld a, a
    ld d, d
    add sp, $51
    adc [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld a, a
    and e
    and b
    cp b
    or d
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
    xor a
    or c
    xor [hl]
    or l
    and h
    ld d, c
    and a
    xor [hl]
    or [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    and c
    cp b
    ld c, a
    and c
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
    adc b
    sub $a4
    ld a, a
    or c
    and h
    xor a
    and b
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    and e
    and h
    and c
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    sub [hl]
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
    and c
    and h
    and b
    or e
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
    and b
    xor l
    and e
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
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    call nc, $a655
    or c
    and h
    and b
    or e
    and h
    or d
    or e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    add sp, $57
    nop
    nop
    ld [$0303], sp
    ld bc, $010e
    rrca
    rrca
    ld bc, $0c07
    rrca
    inc bc
    rlca
    inc bc
    ld d, l
    inc bc
    rrca
    ld [$5503], sp
    dec b
    add hl, de
    ld bc, $0a0f
    rrca
    add hl, de
    ld [bc], a
    rrca
    ld a, [bc]
    inc bc
    add hl, de
    inc bc
    inc bc
    ld d, l
    dec c
    add hl, de
    inc b
    inc bc
    ld d, l
    nop
    nop
    ld bc, $0704
    dec bc
    ld [$ff00], sp
    rst $38
    nop
    nop
    rst $28
    ld h, $7a
    rlca
    nop
    nop
    push hl
    nop
    ld c, $e6
    nop
    dec [hl]
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    add hl, de
    dec c
    jr jr_01d_43a6

    inc bc
    inc c
    dec c

jr_01d_43a6:
    nop
    ld [bc], a
    add hl, bc
    inc bc
    rlca
    sub e
    ld b, e
    inc de
    ld bc, $9607
    ld b, e
    nop
    nop
    nop
    ld b, c
    ld bc, $01ef
    rst $20
    nop
    ld hl, $00e8
    inc sp
    nop
    nop
    ld b, $03
    rrca
    ld bc, $0d07
    add hl, de
    dec bc
    ld bc, $0312
    inc bc
    dec b
    inc bc
    inc bc
    ld e, b
    add hl, bc
    rrca
    ld [bc], a
    inc bc
    ld e, b
    inc bc
    dec de
    inc b
    inc bc
    ld e, b
    dec c
    dec de
    ld bc, $5803
    nop
    ld [bc], a
    inc b
    jr jr_01d_43ec

    cp c
    ld b, e
    rrca
    dec d
    rlca
    cp h
    ld b, e

jr_01d_43ec:
    ld [bc], a
    ld d, h
    ld e, $0b
    ld bc, $ff00
    rst $38
    ld bc, $b500
    ld b, e
    ld a, [hl]
    rlca
    ld d, h
    add hl, de
    dec de
    ld bc, $ff00
    rst $38
    ld bc, $b700
    ld b, e
    ld a, a
    rlca
    nop
    nop
    inc e
    ld bc, $013e
    daa
    ld bc, $00e9
    rrca
    nop
    nop
    inc b
    inc bc
    inc bc
    ld b, $03
    ld d, a
    add hl, bc
    ld de, $0304
    ld d, a
    inc bc
    rla
    inc bc
    inc bc
    ld d, a
    rla
    add hl, de
    dec b
    inc bc
    ld d, a
    nop
    ld bc, $040e
    rlca
    rrca
    ld b, h
    inc bc
    ld d, h
    dec d
    inc e
    ld bc, $ff00
    rst $38
    ld bc, $0900
    ld b, h
    add b
    rlca
    ld d, h
    dec bc
    add hl, de
    ld bc, $ff00
    rst $38
    ld bc, $0b00
    ld b, h
    add c
    rlca
    ld d, h
    rlca
    jr jr_01d_4450

    nop

jr_01d_4450:
    rst $38
    rst $38
    ld bc, $0d00
    ld b, h
    add d
    rlca
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    ld bc, $5a03
    nop
    dec b
    ld [bc], a
    inc bc
    ld e, d
    rlca
    inc b
    rlca
    ld de, $0705
    dec b
    rlca
    ld de, $0005
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec e
    ld a, [bc]
    ld bc, $5903
    dec e
    dec bc
    ld [bc], a
    inc bc
    ld e, c
    nop
    nop
    nop
    ld [bc], a
    sub b
    ld b, h
    nop
    nop
    sub c
    ld b, h
    nop
    nop
    nop
    sub c
    sub c
    ld [hl], d
    ld [bc], a
    ld [de], a
    dec bc
    halt
    nop
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    add hl, sp
    ld b, l
    nop
    call nc, Call_01d_6944
    ld [bc], a
    ld c, h
    ld b, l
    ld l, [hl]
    ld [bc], a
    inc d
    ld bc, $9182
    halt
    nop
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    ld l, a
    ld [bc], a
    ld l, c
    ld [bc], a
    ld b, d
    ld b, l
    nop
    call nc, Call_01d_6944
    ld [bc], a
    ld d, l
    ld b, l
    ld l, [hl]
    ld [bc], a
    inc d
    ld bc, $9182
    halt
    nop
    ld a, a
    rra
    nop
    ld b, a
    ld c, h
    ld e, a
    ld b, l
    ld d, h
    ld c, c
    inc sp
    jp nz, $3106

    inc e
    nop
    add hl, bc
    rst $38
    ld b, h
    ld sp, $001d
    add hl, bc
    rrca
    ld b, l
    ld h, h
    dec a
    ld b, [hl]
    xor d
    ld b, a
    ld l, b
    ld [bc], a
    ld e, [hl]
    add hl, bc
    rrca
    ld e, a
    add e
    ld h, b
    inc bc
    rra
    ld b, l
    ld h, h
    dec a
    ld b, [hl]
    xor d
    ld b, a
    ld l, b
    ld [bc], a
    ld e, [hl]
    add hl, bc
    dec c
    ld e, a
    add e
    ld h, b
    inc bc
    rra
    ld b, l
    ld h, h
    dec a
    ld b, [hl]
    xor d
    ld b, a
    ld l, b
    ld [bc], a
    ld e, [hl]
    add hl, bc
    ld c, $5f
    add e
    ld h, b
    inc bc
    rra
    ld b, l
    ld a, a
    jr nz, jr_01d_4522

jr_01d_4522:
    ld b, a
    ld c, h
    adc $46
    ld d, h
    ld c, c
    sub c
    reti


    ld bc, $0128
    ld c, $01
    ld h, $01
    ld a, [de]
    ld bc, $009e
    rrca
    sbc a
    nop
    ld h, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    ld b, a
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0d
    dec c
    ld b, a
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld b, a
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    inc c
    ld b, a
    nop
    add a
    xor [hl]
    xor e
    and e
    ld a, a
    xor b
    or e
    add sp, $51
    ld [hl], l
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
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
    or e
    and b
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
    and $51
    ld [hl], l
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    and h
    ld c, a
    xor e
    and b
    or h
    and [hl]
    and a
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    or [hl]
    and h
    and b
    xor d
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    add sp, $51
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, $51
    adc b
    ld a, a
    xor l
    xor [hl]
    or [hl]
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
    and c
    and h
    or d
    or e
    ld a, a
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
    and h
    or d
    or e
    ld d, c
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
    add sp, $4f
    adc b
    jp nc, $a87f

    xor l
    or l
    xor b
    xor l
    and d
    xor b
    and c
    xor e
    and h
    rst $20
    ld d, c
    ld d, d
    rst $20
    ld c, a
    adc b
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
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    ld [hl], l
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
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and [hl]
    and b
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
    and a
    and b
    and e
    ld [hl], l
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
    xor a
    xor [hl]
    or d
    or d
    and h
    or d
    or d
    db $f4
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    xor e
    and b
    and d
    xor d
    ld [hl], l
    ld d, c
    adc b
    jp nc, $a17f

    and h
    and [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
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
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    and e
    or c
    and b
    and [hl]
    xor [hl]
    xor l
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
    ld c, a
    or d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    and [hl]
    xor b
    or l
    and h
    xor l
    ld a, a
    or h
    xor a
    ld c, a
    xor [hl]
    xor l
    ld a, a
    and c
    and h
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
    ld d, l
    and [hl]
    or c
    and h
    and b
    or e
    and h
    or d
    or e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld [hl], l
    ld d, c
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
    xor b
    xor l
    and e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    and a
    cp b
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld d, c
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    xor l
    and e
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
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
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
    cp b
    xor [hl]
    or h
    add sp, $51
    add b
    xor l
    and e
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld d, l
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $51
    ld [hl], l
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    and h
    and h
    xor a
    ld c, a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    or e
    and a
    and h
    xor l
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
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    and b
    xor l
    ld d, l
    and c
    and h
    and b
    or e
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $51
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor l
    and h
    and h
    and e
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
    and h
    xor e
    or d
    and h
    add sp, $57
    nop
    nop
    ld a, [bc]
    ld b, e
    add hl, bc
    dec b
    rla
    dec c
    ld sp, $0303
    inc bc
    ld e, e
    inc hl
    ld bc, $0302
    ld e, e
    rra
    dec c
    dec b
    inc bc
    ld e, e
    ld de, $040d
    inc bc
    ld e, e
    ld hl, $0711
    inc bc
    ld e, e
    inc de
    ld de, $0306
    ld e, e
    dec bc
    nop
    add hl, bc
    inc bc
    ld e, e
    dec de
    nop
    ld [$5b03], sp
    dec b
    dec c
    inc bc
    db $10
    ld bc, $0002
    ld [$000c], sp
    sub d
    ld b, h
    nop
    nop
    nop
    ld [$000d], sp
    or l
    ld b, h
    nop
    nop
    ld [bc], a
    dec e
    inc bc
    rlca
    inc sp
    ld b, l
    ld b, c
    inc bc
    rlca
    ld [hl], $45
    ld b, $04
    ld de, $0716
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $c2
    ld b, $54
    jr nz, jr_01d_487a

    ld bc, $ff00
    rst $38
    ld bc, $2900
    ld b, l
    and e
    ld b, $00
    jr nc, jr_01d_4878

    ld bc, $ff00
    rst $38
    ld bc, $2b00

jr_01d_4878:
    ld b, l
    and h

jr_01d_487a:
    ld b, $54
    jr nz, @+$19

    ld bc, $ff00
    rst $38
    ld bc, $2d00
    ld b, l
    and l
    ld b, $00
    jr nc, jr_01d_4894

    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    cpl
    ld b, l
    and [hl]

jr_01d_4894:
    ld b, $54
    add hl, hl
    add hl, bc
    ld bc, $ff00
    rst $38
    ld bc, $3100
    ld b, l
    and a
    ld b, $02
    xor h
    ld c, b
    nop
    nop
    xor l
    ld c, b
    nop
    nop
    nop
    sub c
    adc l
    or c
    ld c, b
    sub c
    ld l, c
    nop
    ld [hl-], a
    ld c, d
    ld l, a
    ld [bc], a
    inc d
    nop
    inc sp
    nop
    nop
    dec sp
    ld bc, $910e
    ld l, e
    ld b, a
    ld sp, $0000
    add hl, bc
    add hl, de
    ld c, c
    ld c, h
    ld d, l
    ld c, d
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    nop
    adc e
    ld a, [bc]
    add l
    inc hl
    nop
    ld l, [hl]
    ld [bc], a
    add [hl]
    ld l, c
    nop
    jr nc, jr_01d_4926

    add l
    inc hl
    nop
    rrca
    ld l, $00
    add [hl]
    ld sp, $0030
    ld [$490a], sp
    ld [hl-], a
    ld a, [hl-]
    rlca
    inc sp
    dec sp
    rlca
    ld [hl-], a
    ld d, a
    dec b
    ld [hl-], a
    ld h, a
    dec b
    ld [hl-], a
    sbc e
    inc b
    ld [hl-], a
    or d
    inc b
    ld [hl-], a
    ld b, l
    inc b
    ld [hl-], a
    adc c
    dec b
    ld [hl-], a
    ld a, e
    dec b
    ld [hl-], a
    ld e, c
    inc b
    ld [hl-], a
    xor h
    inc b
    ld [hl-], a
    cpl
    nop
    ld l, a
    ld [bc], a
    ld [de], a
    rrca
    inc bc
    ld bc, $0f3c
    inc bc
    add hl, de
    ld bc, $4c91
    add b
    ld c, d
    ld d, h
    ld c, c
    sub c
    db $76
    inc b
    inc bc
    ld sp, $0000
    add hl, bc

jr_01d_4926:
    adc e
    ld c, c
    ld sp, $0001
    add hl, bc
    adc e
    ld c, c
    halt
    ld [bc], a
    ld b, a
    ld sp, $0030
    ld [$494e], sp
    inc e
    dec bc
    ld b, $00
    ld [hl], a
    ld c, c
    ld b, $06
    ld [hl], a
    ld c, c
    ld b, $02
    add c
    ld c, c
    ld b, $03
    add c
    ld c, c
    ld b, $04
    add c
    ld c, c
    ld c, h
    sbc h
    ld c, d
    ld c, [hl]
    ld [$4992], sp
    ld c, h
    jp c, Jump_01d_554a

    ld hl, $0844
    ld l, l
    ld c, c
    ld c, h
    ld de, $544b
    ld c, c
    inc sp
    ld bc, $6900
    nop
    scf
    ld c, d
    inc bc
    ret nz

    ld c, b
    ld c, h
    ld b, c
    ld c, e
    ld d, h
    ld c, c
    ld l, c
    nop
    inc [hl]
    ld c, d
    sub c
    ld c, h
    xor b
    ld c, e
    ld d, h
    ld c, c
    ld l, c
    nop
    inc [hl]
    ld c, d
    sub c
    ld c, h
    adc $4b
    ld d, h
    ld c, c
    ld l, c
    nop
    inc [hl]
    ld c, d
    sub c
    sub c
    ld c, h
    or $4a
    ld d, h
    ld c, c
    sub c
    ld c, h
    or $4a
    ld d, h
    ld c, c
    ld l, c
    nop
    inc [hl]
    ld c, d
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    add hl, bc
    add hl, de
    ld c, c
    ld sp, $0030
    ld [$49c0], sp
    inc e
    dec bc
    ld b, $00
    ld a, [c]
    ld c, c
    ld b, $06
    ld a, [c]
    ld c, c
    ld b, $02
    ld hl, sp+$49
    ld b, $03
    ld hl, sp+$49
    ld b, $04
    ld hl, sp+$49
    ld c, h
    sbc h
    ld c, d
    ld c, [hl]
    ld [$498c], sp
    ld c, h
    jp c, Jump_01d_554a

    ld hl, $0844
    db $ec
    ld c, c
    ld c, h
    ld de, $544b
    ld c, c
    inc sp
    ld bc, $1c00
    add hl, bc
    ld b, $03
    push hl
    ld c, c
    ld l, c
    nop
    ccf
    ld c, d
    inc bc
    ret nz

    ld c, b
    ld l, c
    nop
    ld c, c
    ld c, d
    inc bc
    ret nz

    ld c, b
    ld c, h
    ld b, c
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor b
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    adc $4b
    ld d, h
    ld c, c
    sub c
    ld d, c
    rst $10
    ld c, h
    ld l, e
    ld b, a
    ld c, h
    db $f4
    ld c, e
    ld d, h
    ld c, c
    db $76
    dec b
    ld bc, $6b91
    ld b, a
    ld c, h
    dec [hl]
    ld c, h
    ld d, h
    ld c, c
    db $76
    ld b, $01
    sub c
    ld l, e
    ld b, a
    ld c, h
    db $76
    ld c, h
    ld d, h
    ld c, c
    db $76
    rlca
    nop
    sub c
    ld l, e
    ld b, a
    ld c, h
    and d
    ld c, h
    ld d, h
    ld c, c
    db $76
    ld [$9100], sp
    ld [$1b00], a
    inc c
    ld b, a
    dec c
    ld b, a
    rrca
    ld [bc], a
    ld b, a
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, a
    rrca
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, a
    dec c
    rrca
    rrca
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, a
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    and e
    and h
    xor a
    and b
    or c
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
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
    ld d, l
    xor [hl]
    xor l
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
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
    and c
    xor [hl]
    and b
    or c
    and e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
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
    add l
    add b
    sub d
    sub e
    ld c, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    add sp, $51
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
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
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    and $57
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
    ld d, d
    ld a, a
    and l
    xor e
    and b
    or d
    and a
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $a87f
    or e
    add sp, $4f
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
    ld d, d
    ld a, a
    or e
    or c
    xor b
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    add sp, -$6e
    add sp, $55
    sub e
    adc b
    add d
    adc d
    add h
    sub e
    ld [hl], l
    ld d, c
    ld [hl], l
    add c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    sub e
    adc b
    add d
    adc d
    add h
    sub e
    rst $20
    ld d, c
    sub d
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
    xor h
    and b
    cp b
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld d, c
    xor b
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
    and b
    xor l
    ld c, a
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or d
    and b
    xor b
    xor e
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    adc h
    xor [hl]
    xor l
    and e
    and b
    cp b
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or d
    and b
    xor b
    xor e
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    add l
    or c
    xor b
    and e
    and b
    cp b
    add sp, $57
    nop
    sub d
    add a
    add h
    adc e
    adc e
    add e
    add h
    sub c
    ld a, a
    and b
    or c
    and h
    ld a, a
    and h
    and b
    or d
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or c
    and b
    or c
    and h
    ld a, a
    and h
    xor e
    or d
    and h
    or [hl]
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    sub c
    adc [hl]
    add e
    sub d
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b

Call_01d_4c4d:
    or l

Call_01d_4c4e:
    and h
    and $51
    add e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    ld a, a
    sub c
    adc [hl]
    add e
    sub d
    ld c, a
    and d
    and b
    or e
    and d
    and a
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor c
    and h
    or e
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    or d
    xor d
    xor b
    xor h
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    and b
    or l
    and h
    or d
    rst $20
    ld d, a
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
    xor e
    xor [hl]
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
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and [hl]
    xor [hl]
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and h
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
    ld c, a
    or e
    xor [hl]
    ld a, a
    and l
    and b
    xor e
    xor e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, c
    or d
    and h
    and b
    db $f4
    ld a, a
    or d
    xor [hl]
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
    ld c, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld a, a
    xor b
    xor l
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    dec bc
    dec b
    rrca
    ld [$0717], sp
    ld bc, $030f
    ld bc, $0f00
    rlca
    nop
    rra
    ld c, c
    nop
    nop
    ld bc, $0116
    rlca
    dec l
    ld c, d
    rlca
    ld c, c
    dec de
    dec bc
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    ret nz

    ld c, b
    ld a, [hl+]
    rlca
    ld c, c
    inc de
    dec bc
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    cp $49
    scf
    rlca
    ld c, c
    inc de
    ld a, [bc]
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    sbc h
    ld c, c
    jr c, jr_01d_4d63

    dec sp
    ld [de], a
    ld [$0007], sp
    rst $38
    rst $38

jr_01d_4d63:
    nop
    nop
    ld bc, $374a
    rlca
    dec sp
    ld [de], a
    ld de, $0007
    rst $38
    rst $38
    nop
    nop
    inc c
    ld c, d
    scf
    rlca
    daa
    inc de
    ld [$0006], sp
    rst $38
    rst $38
    nop
    nop
    rla
    ld c, d
    jr c, jr_01d_4d8a

    inc h
    inc de
    rrca
    ld b, $00
    rst $38
    rst $38

jr_01d_4d8a:
    nop
    nop
    ld [hl+], a
    ld c, d
    jr c, jr_01d_4d97

    ld [bc], a
    sbc l
    ld c, l
    nop
    nop
    sbc [hl]
    ld c, l

jr_01d_4d97:
    nop
    nop
    ld bc, $a205
    ld c, l
    sub c
    adc l
    and [hl]
    ld c, l
    sub c
    ld [hl], $3a
    nop
    sub b
    ld l, c
    nop
    di
    ld c, [hl]
    ld l, a
    ld [bc], a
    inc d
    nop
    inc sp
    ld sp, $3307
    jr nc, jr_01d_4dbb

    inc sp
    add hl, sp
    rlca
    ld [hl-], a
    inc sp
    rlca
    inc sp

jr_01d_4dbb:
    jr nc, jr_01d_4dbd

jr_01d_4dbd:
    inc sp
    nop
    nop
    dec sp
    inc c
    inc bc
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    add hl, bc
    ld a, [de]
    ld c, [hl]
    ld c, h
    ld b, $4f
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    nop
    adc e
    ld a, [bc]
    add l
    inc hl
    nop
    ld l, [hl]
    ld [bc], a
    add [hl]
    ld l, c
    nop
    pop af
    ld c, [hl]
    add l
    inc hl
    nop
    rrca
    ld l, $00
    add [hl]
    inc sp
    ld a, [hl-]
    rlca
    ld [hl-], a
    dec sp
    rlca
    ld [hl-], a
    db $eb
    inc b
    ld [hl-], a
    cpl
    inc b
    ld [hl-], a
    ld b, b
    dec b
    ld [hl-], a
    sub e
    inc b
    ld [hl-], a
    call nc, $3204
    db $dd
    inc b
    ld [hl-], a
    ld a, h
    dec b
    ld [hl-], a
    or a
    dec b
    ld [hl-], a
    db $76
    inc b
    ld [hl-], a
    ld [hl], a
    inc b
    inc sp
    cpl
    nop
    ld l, a
    ld [bc], a
    ld [de], a
    rrca
    inc bc
    ld bc, $0f3c
    inc bc
    add hl, de
    ld bc, $4c91
    ld sp, $544f
    ld c, c
    sub c
    db $76
    inc bc
    inc bc
    ld sp, $0000
    add hl, bc
    add [hl]
    ld c, [hl]
    ld sp, $0001
    add hl, bc
    add [hl]
    ld c, [hl]
    halt
    ld [bc], a
    ld b, a
    inc e
    dec bc
    ld b, $01
    ld [hl], d
    ld c, [hl]
    ld b, $02
    ld [hl], d
    ld c, [hl]
    ld b, $04
    ld a, h
    ld c, [hl]
    ld b, $05
    ld a, h
    ld c, [hl]
    ld b, $06
    ld a, h
    ld c, [hl]
    ld c, h
    ld c, l
    ld c, a
    ld c, [hl]
    ld [$4e8d], sp
    ld c, h
    adc e
    ld c, a
    ld d, l
    ld hl, $0844
    ld l, b
    ld c, [hl]
    ld c, h
    jp nz, Jump_01d_544f

    ld c, c
    inc sp
    ld bc, $6900
    nop
    ld hl, sp+$4e
    inc bc
    call nz, Call_01d_4c4d
    ld a, [c]
    ld c, a
    ld d, h
    ld c, c
    ld l, c
    nop
    push af
    ld c, [hl]
    sub c
    ld c, h
    ld e, c
    ld d, b
    ld d, h
    ld c, c
    ld l, c
    nop
    push af
    ld c, [hl]
    sub c
    ld c, h
    add b
    ld d, b
    ld d, h
    ld c, c
    ld l, c
    nop
    push af
    ld c, [hl]
    sub c
    sub c
    ld c, h
    and a
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    and a
    ld c, a
    ld d, h
    ld c, c
    ld l, c
    nop
    push af
    ld c, [hl]
    sub c
    ld l, e
    ld b, a
    ld sp, $0000
    add hl, bc
    ld a, [de]
    ld c, [hl]
    inc e
    dec bc
    ld b, $01
    jp c, $064e

    ld [bc], a
    jp c, $064e

    inc b
    ldh [$4e], a
    ld b, $05
    ldh [$4e], a
    ld b, $06
    ldh [$4e], a
    ld c, h
    ld c, l
    ld c, a
    ld c, [hl]
    ld [$4e87], sp
    ld c, h
    adc e
    ld c, a
    ld d, l
    ld hl, $0844
    call nc, Call_01d_4c4e
    jp nz, Jump_01d_544f

    ld c, c
    inc sp
    ld bc, $6900
    nop
    cp $4e
    inc bc
    call nz, Call_01d_4c4d
    ld a, [c]
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld e, c
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    add b
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    and [hl]
    ld d, b
    ld d, h
    ld c, c
    sub c
    db $eb
    nop
    inc e
    inc c
    ld b, a
    dec c
    ld b, a
    rrca
    ld [bc], a
    ld b, a
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, a
    rrca
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, a
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    and e
    and h
    xor a
    and b
    or c
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    or d
    xor [hl]
    xor [hl]
    xor l
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
    ld d, l
    xor [hl]
    xor l
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
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
    and c
    xor [hl]
    and b
    or c
    and e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
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
    add l
    add b
    sub d
    sub e
    ld c, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    add sp, $51
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
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
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    and $57
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
    ld d, d
    ld a, a
    and l
    xor e
    and b
    or d
    and a
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $a87f
    or e
    add sp, $4f
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
    ld d, d
    ld a, a
    or e
    or c
    xor b
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
    add sp, -$6e
    add sp, $55
    sub e
    adc b
    add d
    adc d
    add h
    sub e
    ld [hl], l
    ld d, c
    ld [hl], l
    add c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    sub e
    adc b
    add d
    adc d
    add h
    sub e
    rst $20
    ld d, c
    sub d
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
    xor h
    and b
    cp b
    ld a, a
    and c
    xor [hl]
    and b
    or c
    and e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld d, c
    xor b
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
    and b
    xor l
    ld c, a
    sub d
    add sp, -$6e
    add sp, -$6d
    adc b
    add d
    adc d
    add h
    sub e
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or d
    and b
    xor b
    xor e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    sub [hl]
    and h
    and e
    xor l
    and h
    or d
    and e
    and b
    cp b
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or d
    and b
    xor b
    xor e
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    sub d
    or h
    xor l
    and e
    and b
    cp b
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    and $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    xor h
    and b
    xor l
    cp b
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
    xor e
    xor b
    or l
    and h
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, l
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    nop
    ld [bc], a
    dec b
    add hl, bc
    dec b
    rrca
    add hl, bc
    ld de, $0107
    rrca
    inc bc
    ld bc, $0b00
    rlca
    nop
    jr nz, jr_01d_5145

    nop
    nop
    ld bc, $100d
    rlca
    xor $4e
    inc bc
    ld c, c
    dec d
    dec bc
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    call nz, $2b4d
    rlca
    ld c, c
    rrca
    ld a, [bc]
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    sub a
    ld c, [hl]
    rst $38
    rst $38
    dec hl
    rrca
    rrca
    dec b
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    and $4e
    rst $38
    rst $38
    inc bc
    dec [hl]
    ld d, c
    nop
    nop
    ld [hl], $51
    nop
    nop
    ld a, [hl-]
    ld d, c
    nop
    nop
    nop
    sub c
    adc l
    dec sp
    ld d, c
    sub c
    sub c
    ld l, c
    ld [bc], a
    ld c, $52
    ld l, c
    nop
    rla
    ld d, d
    ld l, c
    ld [bc], a

jr_01d_5145:
    ld de, $8b52
    ld e, $85
    inc e
    nop
    ld a, b
    ld e, $3b
    rrca
    dec b
    ld [hl-], a
    ld sp, $3100
    jr nc, jr_01d_5157

jr_01d_5157:
    add hl, bc
    ld e, l
    ld d, c
    inc d
    ld [bc], a
    sub c
    inc d
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $0031
    add hl, bc
    ld a, d
    ld d, c
    ld sp, $002f
    add hl, bc
    ld [hl], h
    ld d, c
    ld c, h
    dec sp
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc e
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld sp, $002f
    add hl, bc
    sbc h
    ld d, c
    ld c, h
    cp [hl]
    ld d, h
    ld d, h
    ld c, c
    nop
    cp b
    ld d, c
    add l
    inc hl
    nop
    rrca
    ld l, $00
    add [hl]
    inc sp
    dec hl
    rlca
    ld [de], a
    rrca
    ld [bc], a
    ld bc, $0f3c
    ld [bc], a
    rlca
    ld de, $4c91
    adc l
    ld d, h
    ld d, h
    ld c, c
    nop
    cp b
    ld d, c
    add l
    inc hl
    nop
    rrca
    ld l, $00
    add [hl]
    inc sp
    ld a, [hl+]
    rlca
    ld [de], a
    rrca
    ld bc, $3c01
    rrca
    ld bc, $1707
    sub c
    inc e
    add hl, bc
    ld b, $03
    rst $00
    ld d, c
    ld l, c
    ld [bc], a
    ld c, $52
    ld l, c
    nop
    dec [hl]
    ld d, d
    sub c
    ld l, c
    ld [bc], a
    inc d
    ld d, d
    ld l, c
    nop
    jr c, jr_01d_5221

    sub c
    ld l, e
    ld b, a
    ld sp, $0030
    add hl, bc
    sbc $51
    ld c, h
    ld sp, hl
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, a
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld d, c
    ret nz

    ld d, e
    ld [hl], d
    dec b
    inc d
    ld b, $6f
    dec b
    ld l, c
    dec b
    dec de
    ld d, d
    add l
    ld b, c
    nop
    ld l, c
    nop
    ld l, $52
    ld l, c
    dec b
    jr nz, jr_01d_524e

    ld b, a
    ld c, h
    ld [de], a
    ld d, h
    ld d, h
    ld c, c
    halt
    inc bc
    ld l, c
    dec b
    ld [hl+], a
    ld d, d
    ld l, [hl]
    dec b
    inc d
    nop
    sub c
    ld a, [bc]
    inc bc
    ld b, a
    dec bc
    nop
    ld b, a
    ld [$4701], sp
    inc c
    inc c
    nop
    ld b, a
    inc de
    inc de
    inc de
    inc de
    ld b, a
    rrca

jr_01d_5221:
    ld b, a
    db $10
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    db $10
    db $10
    db $10
    db $10
    ld b, a
    inc de
    ld [bc], a
    ld b, a
    dec c
    ld b, a
    inc c
    ld b, a
    dec c
    dec c
    ld b, a
    rrca
    dec c
    ld b, a
    nop
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b

jr_01d_524e:
    ld c, a
    xor b
    or d
    ld a, a
    and h
    xor l
    ld a, a
    or c
    xor [hl]
    or h
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
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
    add sp, $51
    sub [hl]
    and h
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
    and b
    xor l
    ld c, a
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
    or [hl]
    and a
    and h
    xor l
    ld d, l
    or [hl]
    and h
    ld a, a
    and b
    or c
    or c
    xor b
    or l
    and h
    add sp, $57
    nop
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    ld c, a
    xor b
    or d
    ld a, a
    and h
    xor l
    ld a, a
    or c
    xor [hl]
    or h
    or e
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
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
    add sp, $51
    sub [hl]
    and h
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
    and b
    xor l
    ld c, a
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
    or [hl]
    and a
    and h
    xor l
    ld d, l
    or [hl]
    and h
    ld a, a
    and b
    or c
    or c
    xor b
    or l
    and h
    add sp, $57
    nop
    add a
    and h
    or c
    and h
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    and d
    and b
    and c
    xor b
    xor l
    add sp, $51
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
    ld c, a
    and b
    or c
    and h
    ld a, a
    and a
    or h
    or c
    or e
    db $f4
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld d, l
    xor l
    and b
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    and e
    add sp, $51
    sub e
    and a
    and b
    or e
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
    ld c, a
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    add a
    and h
    or c
    and h
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    and d
    and b
    and c
    xor b
    xor l
    add sp, $51
    sbc b
    xor [hl]
    or h
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
    and c
    cp b
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld d, l
    and b
    ld a, a
    xor l
    and b
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    and e
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or d
    and a
    xor b
    xor a
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and b
    or c
    or c
    xor b
    or l
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
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
    and h
    xor l
    and [hl]
    and h
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld c, a
    and b
    xor e
    xor e
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
    db $d3
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor b
    or e
    and d
    and a
    db $e3
    ld c, a
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
    or e
    xor e
    and h
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and d
    and b
    and c
    xor b
    xor l
    or d
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld a, a
    add h
    or a
    and d
    or h
    or d
    and h
    ld a, a
    xor h
    and h
    add sp, $4f
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and a
    or h
    or c
    or c
    cp b
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    ld c, a
    xor b
    or d
    ld a, a
    xor h
    xor b
    or d
    or d
    xor b

Jump_01d_544f:
    xor l
    and [hl]
    rst $20
    ld d, c
    sub d
    and a
    and h
    call nc, $a97f
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    or [hl]
    and h
    and h
    ld c, a

Jump_01d_5463:
    and [hl]
    xor b
    or c
    xor e
    add sp, $7f
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    ld d, c
    and a
    and h
    or c
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    xor e
    and h
    or e
    ld a, a
    xor h
    and h
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    ld c, a
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
    ld a, a
    xor b
    xor l
    ld d, l
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
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    ld c, a
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
    ld a, a
    xor b
    xor l
    ld d, l
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
    add sp, $57
    nop
    nop
    inc c
    ld bc, $ff19
    rrca
    inc bc
    ld [$011b], sp
    rrca
    inc b
    ld [$0217], sp
    rrca
    inc b
    ld [$0313], sp
    rrca
    inc b
    ld [$010f], sp
    rrca
    dec b
    rrca
    rrca
    ld [bc], a
    rrca
    dec b
    rrca
    inc de
    inc b
    rrca
    dec b
    rrca
    rla
    ld bc, $060f
    rrca
    dec de
    inc bc
    rrca
    ld b, $0d
    inc bc
    dec b
    rrca
    ld b, $0c
    ld b, $01
    rrca
    rlca
    ld c, $1e
    ld [bc], a
    rrca
    rlca
    ld [bc], a
    ld [bc], a
    ld b, $18
    nop
    db $eb
    ld d, c
    nop
    nop
    ld [bc], a
    ld b, $19
    nop
    rst $20
    ld d, c
    nop
    nop
    nop
    inc b
    ld c, c
    ld b, $1d
    ld b, $00
    rst $38
    rst $38

Jump_01d_554a:
    nop
    nop
    ld h, b
    ld d, c
    rst $38
    rst $38
    ld c, c
    dec bc
    ld [de], a
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    ret nc

    ld d, c
    rst $38
    rst $38
    ld c, c
    dec d
    ld a, [de]
    dec b
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    db $e4
    ld d, c
    rst $38
    rst $38
    ld b, b
    ld a, [bc]
    rla
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $2c
    rlca
    nop
    nop
    ld d, a
    dec b
    dec de
    db $10
    ld b, e
    ld d, [hl]
    ld l, c
    ld d, [hl]
    nop
    nop
    add l
    ld d, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, e
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld h, a
    dec b
    inc e
    dec c
    or e
    ld d, [hl]
    push de
    ld d, [hl]
    nop
    nop
    sbc c
    ld d, l
    ld h, [hl]
    ld b, a
    ld c, h
    rst $30
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    db $eb
    inc b
    ld e, $08
    ld d, $57
    ld b, c
    ld d, a
    nop
    nop
    xor l
    ld d, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, e
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld sp, $2c05
    ld c, $97
    ld d, a
    cp c
    ld d, a
    nop
    nop
    pop bc
    ld d, l
    ld h, [hl]
    ld b, a
    ld c, h
    call nc, $5457
    ld c, c
    sub c
    sbc e
    inc b
    jr nz, jr_01d_55cf

    pop af
    ld e, b

jr_01d_55cf:
    inc hl
    ld e, c
    nop
    nop
    push de
    ld d, l
    ld h, [hl]
    ld b, a
    ld c, h
    scf
    ld e, c
    ld d, h
    ld c, c
    sub c
    cpl
    inc b
    cpl
    inc bc
    ld [hl], b
    ld e, c
    add b
    ld e, c
    nop
    nop
    jp hl


    ld d, l
    ld h, [hl]
    ld b, a
    ld c, h
    sub [hl]
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld a, a
    ld a, [bc]
    nop
    ld l, e
    ld b, a
    ld c, h
    ld [de], a
    ld e, b
    ld d, h
    ld c, c
    ld h, h
    sub a
    ld e, b
    nop
    nop
    ld e, [hl]
    jr z, jr_01d_560c

    ld e, a
    ld a, e
    rrca
    dec de
    nop
    inc sp
    ld a, l
    dec b
    ld b, a

jr_01d_560c:
    ld c, h
    or c
    ld e, b
    ld d, h
    ld c, c
    inc sp
    inc sp
    nop
    ld [de], a
    rrca
    rlca
    ld bc, $091c
    ld b, $03
    add hl, hl
    ld d, [hl]
    ld l, c
    ld b, $37
    ld d, [hl]
    add l
    inc hl
    nop
    ld l, [hl]
    ld b, $86
    sub c
    ld l, c
    ld b, $3c
    ld d, [hl]
    add l
    inc hl
    nop
    ld l, [hl]
    ld b, $86
    sub c
    inc c
    dec c
    nop
    ld c, $0e
    dec c
    dec c
    ld b, a
    inc c
    ld c, $0e
    dec c
    dec c
    dec c
    ld b, a
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
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    and h
    or d
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
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
    or [hl]
    xor b
    xor l
    rst $20
    ld d, a
    nop
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
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
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
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
    sub d
    add sp, $57
    nop
    adc b
    jp nc, $b37f

    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
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
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    and e
    xor b
    and l
    and l
    and h
    or c
    db $e3
    ld c, a
    and h
    xor l
    or e
    ld a, a
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
    ld a, a
    or h
    or d
    and $57
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
    and c
    and h
    and b
    or e
    ld c, a
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
    adc e
    adc b
    adc e
    sbc b
    and $4f
    sub d
    and a
    and h
    call nc, $a07f
    ld a, a
    and a
    xor [hl]
    or e
    ld a, a
    add e
    adc c
    ld a, a
    xor b
    xor l
    ld d, l
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $57
    nop
    add [hl]
    cp b
    and b
    and b
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    adc e
    adc b
    adc e
    sbc b
    call nc, $ad7f
    xor b
    and d
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc h
    add b
    sub c
    sbc b
    call nc, $b37f
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    rst $20
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
    and d
    and a
    and h
    and d
    xor d
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    call nc, $b17f
    and b
    and e
    xor b
    xor [hl]
    ld d, l
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    or d
    rst $20
    ld d, a
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
    xor e
    xor [hl]
    xor l
    and h
    and $4f
    sub e
    and a
    and h
    xor l
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
    xor h
    or h
    and d
    and a
    ld a, a
    or e
    xor [hl]
    ld c, a
    and a
    and b
    xor l
    and e
    xor e
    and h
    rst $20
    ld d, a
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
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld c, a
    and b
    or c
    and h
    ld a, a
    and b
    xor l
    cp b
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
    ld d, c
    or [hl]
    xor [hl]
    or c
    or e
    and a
    ld a, a
    and d
    xor e
    xor b
    xor h
    and c
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld c, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    and $57
    nop
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    adc b
    jp nc, $a07f

    ld a, a
    or d
    and b
    xor b
    xor e
    db $e3
    ld c, a
    xor [hl]
    or c
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
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    xor l
    push de
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and l
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    and l
    and l
    rst $20
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    and d
    and b
    and c
    xor b
    xor l
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    or l
    and b
    and d
    and b
    xor l
    or e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    ld a, a
    xor l
    and b
    xor a
    rst $20
    ld d, c
    add b
    and a
    db $f4
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
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
    adc b
    or e
    call nc, $a07f
    xor e
    xor e
    ld a, a
    xor h
    cp b
    ld c, a
    and l
    and b
    or h
    xor e
    or e
    rst $20
    ld d, a
    nop
    add c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    or d
    and b
    xor b
    xor e
    xor [hl]
    or c
    db $f4
    ld a, a
    adc b
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
    ld a, a
    xor a
    and a
    cp b
    or d
    db $e3
    ld d, l
    xor b
    and d
    and b
    xor e
    ld a, a
    xor e
    and b
    and c
    xor [hl]
    or c
    add sp, $7f
    adc b
    or e
    call nc, $a455
    or a
    and a
    and b
    or h
    or d
    or e
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
    xor l
    xor [hl]
    add sp, $7f
    adc b
    sub $a4
    ld a, a
    xor e
    xor [hl]
    or d
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
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $b555
    and h
    or c
    cp b
    ld a, a
    xor b
    xor h
    xor a
    xor [hl]
    or c
    or e
    and b
    xor l
    or e
    add sp, $57
    nop
    adc b
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    xor b
    or e
    ld [hl], l
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
    add sp, $4f
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
    or e
    xor [hl]
    ld d, c
    xor e
    xor [hl]
    xor [hl]
    xor d
    add sp, $7f
    adc c
    or h
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sbc b
    and h
    and h
    and a
    and b
    or [hl]
    rst $20
    ld c, a
    adc e
    or h
    and d
    xor d
    cp b
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    or h
    xor l
    xor e
    or h
    and d
    xor d
    cp b
    rst $20
    ld c, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld c, a
    and d
    xor [hl]
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
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
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor b
    or e
    ld [hl], l
    ld d, a
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    rrca
    inc bc
    inc c
    ld [bc], a
    inc bc
    rrca
    inc bc
    jr jr_01d_59df

    inc b
    rrca

jr_01d_59df:
    inc bc
    nop
    inc bc
    dec c
    ld b, $00
    inc [hl]
    ld d, [hl]
    inc de
    rlca
    nop
    inc [hl]
    ld d, [hl]
    rra
    rlca
    nop
    inc [hl]
    ld d, [hl]
    rlca
    inc hl
    dec b
    ld [$0008], sp
    rst $38
    rst $38
    add d
    ld [bc], a
    ld a, c
    ld d, l
    ld a, [hl-]
    rlca
    inc h
    dec b
    inc b
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    adc l
    ld d, l
    ld a, [hl-]
    rlca
    dec hl
    add hl, bc
    dec b
    rlca
    nop
    rst $38
    rst $38
    sub d
    inc bc
    and c
    ld d, l
    dec sp
    rlca
    dec l
    dec e
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    or d
    inc bc
    or l
    ld d, l
    add hl, sp
    rlca
    ld c, c
    ld e, $08
    inc bc
    nop
    rst $38
    rst $38
    sub b
    nop
    pop af
    ld d, l
    dec l
    rlca
    ld b, b
    ld [hl+], a
    dec bc
    inc bc
    nop
    rst $38
    rst $38
    sub d
    ld bc, $55c9
    ld a, [hl-]
    rlca
    ld c, e
    ld [hl+], a
    ld b, $07
    nop
    rst $38
    rst $38
    and d
    inc b
    db $dd
    ld d, l
    dec sp
    rlca
    nop
    nop
    ld c, l
    inc b
    jr nc, jr_01d_5a5b

    inc b
    ld e, e
    jr c, jr_01d_5ab2

    nop
    nop
    ld e, e
    ld e, d

jr_01d_5a5b:
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, d
    ld e, e
    ld d, h
    ld c, c
    sub c
    ld b, b
    dec b
    inc h
    add hl, bc
    adc [hl]
    ld e, e
    cp l
    ld e, e
    nop
    nop
    ld l, a
    ld e, d
    ld h, [hl]
    ld b, a
    ld c, h
    push de
    ld e, e
    ld d, h
    ld c, c
    sub c
    or d
    inc b
    dec e
    ld b, $07
    ld e, h
    ld [hl-], a
    ld e, h
    nop
    nop
    add e
    ld e, d
    ld h, [hl]
    ld b, a
    ld c, h
    ld b, e
    ld e, h
    ld d, h
    ld c, c
    sub c
    sub e
    inc b
    dec hl
    ld bc, $5ca6
    db $e4
    ld e, h
    nop
    nop
    sub a
    ld e, d
    ld h, [hl]
    rrca
    and b
    nop
    add hl, bc
    and l
    ld e, d
    ld b, a
    ld c, h
    ld h, l
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    cp $5c
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    and h
    ld e, l
    ld d, h
    ld c, c

jr_01d_5ab2:
    rrca
    jr nc, jr_01d_5ab5

jr_01d_5ab5:
    rrca
    inc sp
    nop
    rrca
    sbc l
    nop
    rrca
    dec de
    nop
    ld a, a
    dec c
    nop
    adc e
    inc a
    rrca
    dec a
    nop
    rrca
    ld [hl-], a
    nop
    ld b, a
    ld c, h
    pop bc
    ld e, l
    ld d, h
    ld c, c
    ld sp, $0031
    add hl, bc
    pop hl
    ld e, d
    ld sp, $0032
    add hl, bc
    ld [c], a
    ld e, d
    ld sp, $0030
    add hl, bc
    ld [c], a
    ld e, d
    sub c
    add l
    daa
    nop
    adc e
    ld e, $31
    cpl
    nop
    add hl, bc
    rst $30
    ld e, d
    ld b, a
    ld c, h
    rrca
    ld e, [hl]
    ld d, h
    ld c, c
    inc sp
    ld sp, $9100
    ld b, a
    ld c, h
    sbc $5d
    ld d, h
    ld c, c
    inc sp
    ld sp, $9100
    inc c
    dec c
    nop
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
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor a
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and l
    xor b
    or c
    and h
    db $e3
    ld d, l
    and c
    or c
    and h
    and b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    or d
    rst $20
    ld d, a
    nop
    add l
    xor b
    cp c
    cp c
    xor e
    and h
    ld [hl], l
    ld a, a
    sub e
    and a
    and h
    ld c, a
    and l
    xor e
    and b
    xor h
    and h
    call nc, $b37f
    xor b
    xor l
    cp b
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    and l
    xor b
    or c
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
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
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
    and $4f
    sub c
    and h
    and b
    xor e
    xor e
    cp b
    and $57
    nop
    adc b
    jp nc, $b57f

    xor b
    or d
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    and [hl]
    or c
    and b
    xor l
    and e
    xor h
    and b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld d, l
    xor h
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    or h
    and [hl]
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and a
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or [hl]
    add sp, $4f
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
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    or e
    or c
    and h
    and h
    or d
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
    ld c, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    or [hl]
    xor [hl]
    and h
    or d
    add sp, $55
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
    adc h
    cp b
    ld a, a
    and a
    and h
    and b
    or c
    or e
    ld a, a
    or [hl]
    and h
    and h
    xor a
    or d
    ld [hl], l
    ld d, a
    nop
    add b
    ld a, a
    or l
    xor [hl]
    cp b
    and b
    and [hl]
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and c
    and h
    or d
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, l
    and b
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    xor l
    ld a, a
    and a
    and h
    and b
    or c
    or e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    and b
    ld a, a
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld c, a
    or e
    or c
    xor b
    xor a
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    and [hl]
    or c
    xor b
    and h
    or l
    xor b
    xor l
    and [hl]
    add sp, $57
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
    and b
    or h
    and e
    xor b
    db $e3
    ld c, a
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    xor [hl]
    xor l
    and [hl]
    or d
    ld a, a
    and b
    or e
    ld d, c
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    call nc, $917f
    add b
    add e
    adc b
    adc [hl]
    ld c, a
    sub d
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    add sp, $57
    nop
    sbc b
    xor [hl]
    or [hl]
    cp c
    and b
    rst $20
    ld c, a
    sub e
    xor [hl]
    or e
    and b
    xor e
    ld a, a
    and e
    xor b
    or d
    or e
    xor [hl]
    or c
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
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
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    and e
    and h
    and c
    or h
    or e
    ld a, a
    and b
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld [hl], l
    ld d, c
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
    and c
    and b
    and d
    xor d
    ld c, a
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
    and b
    xor l
    and e
    ld d, l
    or c
    and h
    and e
    xor [hl]
    ld a, a
    xor h
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
    ld [hl], l
    ld d, a
    nop
    sub d
    xor a
    and h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    sub d
    sub e
    add b
    sub e
    adc b
    adc [hl]
    adc l
    db $f4
    ld d, c
    or [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and h
    and h
    xor d
    call nc, $ab4f
    or h
    and d
    xor d
    cp b
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $57
    nop
    add b
    ld a, a
    and d
    xor [hl]
    xor h
    and l
    cp b
    ld a, a
    and c
    and h
    and e
    rst $20
    ld c, a
    sub e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    ld [hl], l
    ld d, a
    nop
    add b
    and a
    db $f4
    ld a, a
    or c
    and h
    and l
    or c
    and h
    or d
    and a
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    rst $20
    ld d, a
    nop
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    ld c, a
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
    ld a, a
    xor b
    xor l
    ld d, l
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
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    ld c, a
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
    ld a, a
    xor b
    xor l
    ld d, l
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
    add sp, $57
    nop
    nop
    dec b
    nop
    ld [bc], a
    dec b
    rrca
    inc bc
    inc de
    ld [bc], a
    ld b, $0f
    inc bc
    inc de
    inc bc
    ld b, $0f
    inc bc
    rra
    ld [bc], a
    rlca
    rrca
    inc bc
    rra
    inc bc
    rlca
    rrca
    inc bc
    nop
    inc bc
    ld bc, $0007
    xor h
    ld e, d
    ld [bc], a
    rlca
    nop
    xor h
    ld e, d
    rlca
    rlca
    nop
    ld bc, $045b
    ld a, [hl-]
    dec b
    rlca
    ld [$ff00], sp
    rst $38
    add d
    ld [bc], a
    ld c, a
    ld e, d
    add hl, sp
    rlca
    dec h
    inc de
    ld a, [bc]
    ld a, [bc]
    nop
    rst $38
    rst $38
    or d
    ld [bc], a
    ld h, e
    ld e, d
    dec sp
    rlca
    ld a, [hl+]
    ld e, $05
    ld a, [bc]
    nop
    rst $38
    rst $38
    sub d
    inc bc
    ld [hl], a
    ld e, d
    ld a, [hl-]
    rlca
    inc l
    jr nz, jr_01d_5ea1

    ld e, $00
    rst $38
    rst $38
    add d
    ld [bc], a
    adc e

jr_01d_5ea1:
    ld e, d
    dec sp
    rlca
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $0030
    add hl, bc
    or l
    ld e, [hl]
    ld c, h
    ld [de], a
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, h
    ld h, b
    ld d, h
    ld c, c
    sub c
    db $76
    dec b
    inc bc
    ld b, a
    ld c, h
    ldh [$61], a
    ld d, h
    ld c, c
    ld l, e
    ld b, a
    ld c, h
    rra
    ld h, d
    ld d, h
    ld c, c
    rrca
    jr nc, jr_01d_5ece

jr_01d_5ece:
    rrca
    inc sp
    nop
    ld l, [hl]
    dec b
    ld l, c
    nop
    inc b
    ld h, b
    ld [hl], d
    inc b
    inc bc
    inc de
    ld l, a
    inc b
    halt
    ld bc, $0476
    ld bc, $320f
    nop
    db $76
    inc bc
    nop
    ld [hl], l
    nop
    inc bc
    rrca
    ld l, c
    inc b
    inc c
    ld h, b
    db $76
    inc bc
    inc bc
    inc [hl]
    ld h, e
    nop
    add hl, bc
    inc bc
    ld e, a
    ld b, a
    ld c, h
    add h
    ld h, d
    ld d, h
    ld c, c
    inc bc
    add hl, bc
    ld e, a
    ld b, a
    ld c, h
    add $62
    ld d, h
    ld c, c
    db $76
    dec b
    nop
    ld l, c
    inc bc
    db $10
    ld h, b
    ld b, a
    ld c, h
    ld b, e
    ld h, c
    ld d, l
    inc sp
    dec hl
    rlca
    ld [de], a
    rrca
    inc bc
    nop
    inc bc
    scf
    ld e, a
    ld l, e
    ld b, a
    ld sp, $0071
    add hl, bc
    ld h, a
    ld e, a
    ld sp, $0732
    add hl, bc
    ld e, b
    ld e, a
    ld c, h
    xor [hl]
    ld h, b
    ld d, h
    ld c, c
    ld [de], a
    rrca
    inc bc
    nop
    sub c
    ld c, h
    sbc e
    ld h, c
    ld d, l
    sbc [hl]
    adc a
    ld bc, $4408
    ld e, a
    inc sp
    ld [hl], c
    nop
    ld c, c
    add [hl]
    add l
    daa
    nop
    adc e
    ld e, $47
    ld c, h
    ld b, l
    ld h, [hl]
    ld d, h
    inc sp
    ld sp, $3300
    ld [hl-], a
    nop
    ld c, c
    sub c
    ld c, h
    sbc e
    ld h, c
    ld d, l
    sbc [hl]
    adc a
    ld bc, $6508
    ld e, a
    inc sp
    ld [hl], c
    nop
    ld c, c
    sub c
    ld c, h
    cp [hl]
    ld h, c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    dec c
    ld h, e
    ld d, h
    ld c, c
    sub c
    push de
    inc b
    dec sp
    add hl, bc
    add hl, hl
    ld h, e
    ld c, h
    ld h, e
    nop
    nop
    add c
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, e
    ld h, e
    ld d, h
    ld c, c
    sub c
    ld l, d
    inc b
    dec a
    rlca
    adc [hl]
    ld h, e
    or h
    ld h, e
    nop
    nop
    sub l
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    jp nz, Jump_01d_5463

    ld c, c
    sub c
    ld l, d
    inc b
    dec a
    ld [$63e9], sp
    ld a, [de]
    ld h, h
    nop
    nop
    xor c
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    jr z, jr_01d_6012

    ld d, h
    ld c, c
    sub c
    ld b, l
    inc b
    inc [hl]
    inc c
    ld d, l
    ld h, h
    add c
    ld h, h
    nop
    nop
    cp l
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    sub a
    ld h, h
    ld d, h
    ld c, c
    sub c
    call nc, $3b04
    ld [$64ce], sp
    cp $64
    nop
    nop
    pop de
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    inc e
    ld h, l
    ld d, h
    ld c, c
    sub c
    db $dd
    inc b
    ld a, $05
    ld c, a
    ld h, l
    ld a, l
    ld h, l
    nop
    nop
    push hl
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    sub [hl]
    ld h, l
    ld d, h
    ld c, c
    sub c
    adc c
    dec b
    add hl, hl
    add hl, bc
    rst $00
    ld h, l
    db $f4
    ld h, l
    nop
    nop
    ld sp, hl
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    rrca
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    inc c
    dec c
    nop
    inc de
    ld de, $1111
    ld de, $1111
    ld b, a
    dec c
    dec c
    ld [bc], a
    ld b, a
    inc c
    ld b, a

jr_01d_6012:
    nop
    sub [hl]
    and a
    and h
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
    and l
    xor [hl]
    or c
    ld c, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    adc d
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor e
    xor b
    or e
    db $e3
    ld c, a
    or e
    xor e
    and h
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    ld a, a
    and b
    xor h
    or h
    or d
    and h
    and e
    ld d, l
    or [hl]
    and b
    or d
    ld a, a
    and h
    or a
    and a
    and b
    or h
    or d
    or e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
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
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    call nc, $b17f
    xor b
    and e
    and h
    and $51
    sub d
    and a
    and h
    ld a, a
    xor a
    or c
    and b
    and d
    or e
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    ld c, a
    or d
    xor d
    and b
    or e
    and h
    or d
    ld a, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    and b
    or l
    and h
    or d
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor e
    xor [hl]
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    xor h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    add sp, $51
    adc b
    and l
    ld a, a
    or d
    and a
    and h
    call nc, $ae7f
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and a
    xor b
    xor a
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $8e7f
    adc d
    add sp, $51
    sub d
    and a
    and h
    call nc, $a07f
    xor l
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    and h
    or e
    xor b
    and d
    ld c, a
    and d
    and a
    xor b
    xor e
    and e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    and a
    and h
    ld a, a
    xor h
    and b
    cp b
    ld d, c
    and c
    and h
    ld a, a
    and c
    or h
    and [hl]
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    db $e3
    ld c, a
    xor [hl]
    xor l
    and h
    add sp, $7f
    adc b
    jp nc, $b67f

    xor [hl]
    or c
    or c
    xor b
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    inc d
    db $f4
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    or e
    and $4f
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and h
    xor l
    or e
    and h
    or c
    db $e3
    ld d, l
    or e
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    db $e3
    ld d, l
    and e
    and b
    or h
    and [hl]
    and a
    or e
    and h
    or c
    add sp, $51
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
    or e
    and a
    and b
    xor l
    xor d
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and b
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    ret nc

    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
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
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
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
    add sp, $57
    nop
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    db $f4
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
    ld c, a
    xor h
    and h
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    and $51
    adc b
    jp nc, $a17f

    xor [hl]
    or c
    and h
    and e
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld d, a
    nop
    add a
    xor b
    rst $20
    ld a, a
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    and $51
    ld [hl], l
    adc [hl]
    and a
    rst $20
    ld d, c
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    call nc, $b67f
    xor [hl]
    or c
    or c
    xor b
    and h
    and e
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    and h
    and $51
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
    and [hl]
    xor [hl]
    rst $20
    ld d, c
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
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    rst $20
    ld d, a
    nop
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    db $f4
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld c, a
    and b
    xor h
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor a
    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
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
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and [hl]
    or h
    cp b
    rst $20
    ld d, a
    nop
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    db $f4
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld c, a
    and b
    xor h
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor a
    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
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
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    or h
    xor l
    ld c, a
    xor a
    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
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
    ld a, a
    sub [hl]
    and b
    xor l
    or e
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
    or c
    and b
    or l
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    and $51
    adc b
    or d
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    ld c, a
    or [hl]
    xor [hl]
    or c
    or c
    xor b
    and h
    and e
    and $57
    nop
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
    adc b
    jp nc, $a07f

    ld c, a
    and c
    and b
    and c
    cp b
    and $55
    sub e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    and l
    and b
    xor b
    or c
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    sub [hl]
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
    nop
    add c
    and b
    and c
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or c
    or h
    and e
    and h
    ld c, a
    xor l
    and b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    or h
    or d
    ld d, l
    and [hl]
    xor b
    or c
    xor e
    or d
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
    and c
    and b
    and c
    cp b
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    xor l
    xor b
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    xor e
    and b
    and e
    cp b
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    sub [hl]
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld d, a
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
    xor d
    xor b
    and e
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    or d
    xor h
    and b
    or c
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld d, l
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor l
    db $e3
    or h
    xor a
    or d
    rst $20
    ld d, a
    nop
    sub d
    or d
    and a
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    and c
    or c
    and b
    xor b
    xor l
    ld a, a
    xor b
    or d
    ld c, a
    xor a
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld d, l
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    or d
    rst $20
    ld d, a
    nop
    ld [hl], l
    adc b
    ld a, a
    and a
    and h
    and b
    or c
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
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and a
    and h
    and b
    or c
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    call nc, $b17f
    and b
    and e
    xor b
    xor [hl]
    ld d, l
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    add sp, $57
    nop
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
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    and $4f
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
    db $f4
    ld a, a
    cp b
    and h
    or d
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld a, a
    adc h
    cp b
    ld a, a
    and c
    and h
    and b
    or h
    or e
    xor b
    db $e3
    ld c, a
    and l
    or h
    xor e
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
    xor h
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
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
    sub d
    add b
    adc e
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and l
    xor b
    or a
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or h
    xor a
    ld a, a
    xor l
    xor b
    and d
    and h
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
    or d
    and a
    xor [hl]
    xor a
    ld c, a
    and b
    or e
    ld a, a
    or e
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
    ld d, l
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    xor l
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    cp b
    and h
    or d
    rst $20
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
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    xor h
    cp b
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
    xor [hl]
    and l
    ld a, a
    add e
    add b
    sbc b
    db $e3
    add d
    add b
    sub c
    add h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
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
    ld d, h
    ld c, a
    add c
    add b
    adc e
    adc e
    sub d
    ld a, a
    and e
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
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    sub [hl]
    and b
    xor b
    or e
    rst $20
    ld a, a
    sub d
    or e
    xor [hl]
    xor a
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    push de
    rst $20
    ld c, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    rst $20
    ld d, a
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
    or h
    or d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    or d
    xor b
    or e
    or h
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    ld c, a
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
    ld a, a
    xor b
    xor l

Jump_01d_6667:
    ld d, l
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
    add sp, $57
    nop
    nop
    ld b, $07
    ld [bc], a
    ld [$030f], sp
    rlca
    inc bc
    ld [$030f], sp
    inc de
    ld [bc], a
    add hl, bc
    rrca
    inc bc
    inc de
    inc bc
    add hl, bc
    rrca
    inc bc
    ld hl, $0a02
    rrca
    inc bc
    ld hl, $0a03
    rrca
    inc bc
    nop
    ld bc, $0419
    nop
    ld bc, $0b60
    ld b, [hl]
    dec e
    rlca
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    and a
    ld e, [hl]
    rst $38
    rst $38
    ld b, b
    dec d
    ld b, $09
    nop
    rst $38
    rst $38
    sub b
    nop
    rra
    ld e, a
    jr nc, jr_01d_66c2

    ld h, $15
    rlca
    ld a, [bc]
    nop
    rst $38
    rst $38

jr_01d_66c2:
    nop
    nop
    ld l, l
    ld e, a
    ld sp, $2607
    dec e
    ld b, $0a
    nop
    rst $38
    rst $38
    nop
    nop
    cp e
    ld e, [hl]
    ld [hl-], a
    rlca
    dec l
    rla
    dec bc
    ld [$ff00], sp
    rst $38
    add d
    dec b
    ld [hl], l
    ld e, a
    add hl, sp
    rlca
    ld h, $23
    ld b, $06
    nop
    rst $38
    rst $38
    add d
    ld bc, $5f89
    add hl, sp
    rlca
    ld h, $25
    ld [$0008], sp
    rst $38
    rst $38
    add d
    ld bc, $5f9d
    add hl, sp
    rlca
    dec hl
    add hl, bc
    add hl, bc
    ld [$ff00], sp
    rst $38
    sub d
    dec b
    or c
    ld e, a
    ld a, [hl-]
    rlca
    dec l
    rlca
    ld b, $06
    nop
    rst $38
    rst $38
    add d
    inc bc
    push bc
    ld e, a
    dec sp
    rlca
    ld l, $09
    add hl, bc
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    ld bc, $5fd9
    dec sp
    rlca
    dec hl
    inc de
    dec b
    inc bc
    nop
    rst $38
    rst $38
    or d
    ld [bc], a
    db $ed
    ld e, a
    ld a, [hl-]
    rlca
    ld [bc], a
    ld a, [hl-]
    ld h, a
    nop
    nop
    dec sp
    ld h, a
    nop
    nop
    nop
    sub c
    sub c
    ld sp, $072f
    add hl, bc
    ld h, [hl]
    ld h, a
    ld l, c
    inc bc
    db $76
    ld l, b
    ld [hl], d
    ld [bc], a
    ld e, $06
    ld l, a
    ld [bc], a
    adc e
    dec b
    ld l, [hl]
    inc bc
    sub c
    ld sp, $072e
    add hl, bc
    ld h, [hl]
    ld h, a
    ld l, c
    ld [bc], a
    ld [hl], c
    ld l, b
    ld [hl], d
    inc bc
    rra
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
    ld sp, $0030
    add hl, bc
    and b
    ld h, a
    ld sp, $0033
    add hl, bc
    adc l
    ld h, a
    ld sp, $0034
    add hl, bc
    add a
    ld h, a
    ld c, h
    ld a, e
    ld l, b
    ld d, h
    ld c, c
    inc sp
    inc [hl]
    nop
    ld [hl-], a
    dec l
    rlca
    sub c
    ld c, h
    rlca
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, $69
    ld sp, $0032
    ld [$6799], sp
    ld d, h
    ld c, c
    sub c
    ld d, l
    ld c, h
    ld l, l
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc l
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld a, d
    dec b
    jr z, jr_01d_67b0

    db $ed
    ld l, c
    ld a, [de]
    ld l, d
    nop
    nop

jr_01d_67b0:
    or d
    ld h, a
    ld h, [hl]
    ld b, a
    ld c, h
    jr c, @+$6c

    ld d, h
    ld c, c
    sub c
    add l
    inc b
    dec [hl]
    ld [$6a63], sp
    add c
    ld l, d
    nop
    nop
    add $67
    ld h, [hl]
    ld b, a
    ld c, h
    sbc c
    ld l, d
    ld d, h
    ld c, c
    sub c
    sub [hl]
    inc b
    ld sp, $d702
    ld l, d
    ld [$006a], a
    nop
    jp c, Jump_01d_6667

    ld b, a
    ld c, h
    ld [bc], a
    ld l, e
    ld d, h
    ld c, c
    sub c
    ld a, e
    dec b
    jr z, @+$09

    ld b, b
    ld l, e
    ld h, b
    ld l, e
    nop
    nop
    xor $67
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, d
    ld l, e
    ld d, h
    ld c, c
    sub c
    ld e, c
    inc b
    dec h
    inc c
    cp h
    ld l, e
    ld [$006c], sp
    nop
    ld [bc], a
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld [hl+], a
    ld l, h
    ld d, h
    ld c, c
    sub c
    xor h
    inc b
    ld [hl-], a
    add hl, bc
    ld b, a
    ld l, h
    add l
    ld l, h
    nop
    nop
    ld d, $68
    ld h, [hl]
    ld b, a
    ld c, h
    sbc [hl]
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld a, h
    dec b
    jr z, jr_01d_682a

    ld sp, hl
    ld l, h
    inc a
    ld l, l
    nop
    nop
    ld a, [hl+]
    ld l, b

jr_01d_682a:
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, a
    ld l, l
    ld d, h
    ld c, c
    sub c
    or a
    dec b
    ld [hl+], a
    inc bc
    or [hl]
    ld l, l
    reti


    ld l, l
    nop
    nop
    ld a, $68
    ld h, [hl]
    ld b, a
    ld c, h
    pop hl
    ld l, l
    ld d, h
    ld c, c
    sub c
    db $76
    inc b
    rla
    dec bc
    inc d
    ld l, [hl]
    inc [hl]
    ld l, [hl]
    nop
    nop
    ld d, d
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    dec a
    ld l, [hl]
    ld d, h
    ld c, c
    sub c
    ld [hl], a
    inc b
    rla
    inc c
    ld l, a
    ld l, [hl]
    and [hl]
    ld l, [hl]
    nop
    nop
    ld h, [hl]
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    or [hl]
    ld l, [hl]
    ld d, h
    ld c, c
    sub c
    inc c
    dec c
    nop
    dec sp
    inc de
    ld a, [hl-]
    nop
    ld b, a
    dec sp
    ld [de], a
    ld a, [hl-]
    nop
    ld b, a
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor d
    xor b
    and e
    add sp, $7f
    add d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
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
    xor h
    cp b
    ld a, a
    and c
    or h
    and e
    and e
    cp b
    and $51
    add a
    and h
    call nc, $a67f
    xor [hl]
    xor [hl]
    and l
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    or [hl]
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    xor e
    and b
    cp c
    cp b
    ld a, a
    and c
    or h
    xor h
    rst $20
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
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    and a
    xor b
    xor h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    jp nc, $ae7f

    xor l
    ld d, l
    and e
    or h
    or e
    cp b
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and [hl]
    and h
    and h
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
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
    ld c, a
    adc b
    ld a, a
    and d
    and a
    and h
    or [hl]
    and h
    and e

Call_01d_6944:
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    xor [hl]
    or h
    or e
    ld d, c
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or d
    xor [hl]
    ld a, a
    and a
    and h
    pop de
    xor e
    ld a, a
    or b
    or h
    xor b
    or e
    ld c, a
    or d
    xor e
    and b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
    and l
    rst $20
    ld d, a
    nop
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
    and $51
    adc b
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
    or d
    and h
    and h
    xor l
    ld c, a
    and a
    and h
    or c
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and c
    cp b
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
    and e
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    xor b
    or d
    ld c, a
    or h
    xor a
    ld a, a
    and b
    and a
    and h
    and b
    and e
    add sp, $51
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
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    and h
    xor l
    and e
    ld a, a
    xor e
    and h
    and b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    add d
    add b
    adc a
    sub e
    add b
    adc b
    adc l
    call nc, $a27f
    and b
    and c
    xor b
    xor l
    add sp, $57
    nop
    adc l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    and h
    and b
    or e
    or d
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
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    jp nc, $ae55

    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    add sp, $57
    nop
    sub [hl]
    xor b
    xor l
    ld a, a
    xor [hl]
    or c
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    db $f4
    ld a, a
    xor h
    cp b
    ld c, a
    and c
    or c
    and h
    and b
    xor d
    call nc, $ae7f
    or l
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    or [hl]
    xor b
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    add sp, $57
    nop
    adc b
    jp nc, $b27f

    xor [hl]
    ld a, a
    and c
    xor [hl]
    or c
    and h
    and e
    add sp, $4f
    sub [hl]
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
    or e
    xor e
    and h
    and $57
    nop
    sbc b
    xor [hl]
    or [hl]
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
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    db $f4
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld [hl], l
    ld c, a
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
    and b
    or c
    and h
    ld d, c
    xor h
    and b
    xor l
    cp b
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and d
    xor b
    or e
    xor b
    and h
    or d
    ld c, a
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
    sub h
    or c
    or c
    and l
    ld [hl], l
    ld c, a
    adc b
    jp nc, $b27f

    and h
    and b
    or d
    xor b
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc b
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
    and b
    xor l
    cp b
    db $e3
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    adc l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or d
    and a
    xor b
    xor a
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor h
    and h
    add sp, $7f
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
    ld d, c
    adc b
    jp nc, $b37f

    and b
    xor d
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
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    and h
    ld c, a
    or d
    and b
    xor b
    xor e
    xor [hl]
    or c
    or d
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
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
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld c, a
    and l
    xor b
    and h
    xor e
    and e
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
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
    ld c, a
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
    and l
    or c
    xor [hl]
    xor h
    ld d, c
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
    ld a, a
    or e
    xor [hl]
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
    add h
    or l
    and h
    xor l
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or [hl]
    and h
    db $d3
    and h
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    db $f4
    ld a, a
    adc b
    ld d, l
    and d
    and b
    xor l
    push de
    ld a, a
    and l
    xor b
    or d
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
    and c
    xor [hl]
    or c
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
    rst $20
    ld d, a
    nop
    adc b
    ld [hl], l
    ld a, a
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    and c
    xor [hl]
    or c
    and h
    and e
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
    and l
    xor b
    or d
    and a
    ld a, a
    xor [hl]
    and l
    and l
    ld c, a
    sub l
    add h
    sub c
    adc h
    adc b
    adc e
    adc b
    adc [hl]
    adc l
    call nc, $af7f
    xor b
    and h
    or c
    add sp, $57
    nop
    adc b
    jp nc, $a17f

    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    xor h
    cp b
    ld c, a
    xor e
    and h
    and [hl]
    or d
    ld a, a
    and c
    cp b
    ld a, a
    and c
    or c
    and b
    and d
    xor b
    xor l
    and [hl]
    ld d, c
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
    or d
    and a
    xor b
    xor a
    call nc, $b14f
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub c
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    and h
    and e
    ld c, a
    xor [hl]
    or l
    and h
    or c
    rst $20
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
    xor b
    xor l
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
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
    ld a, a
    xor b
    xor l
    ld d, l
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    add sp, $51
    add a
    and h
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
    and c
    and h
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
    xor l
    ld a, a
    and b
    ld d, l
    and d
    and b
    or l
    and h
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
    add sp, $57
    nop
    adc b
    jp nc, $a07f

    ld a, a
    or d
    and b
    xor b
    xor e
    xor [hl]
    or c
    ld a, a
    xor h
    and b
    xor l
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    adc b
    jp nc, $b37f

    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
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
    and d
    and b
    xor l
    ld d, l
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
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    xor e
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    and l
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
    xor b
    or d
    ld a, a
    xor [hl]
    and c
    or l
    xor b
    xor [hl]
    or h
    or d
    ld [hl], l
    ld d, a
    nop
    add h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    rst $20
    ld c, a
    sub e
    and a
    and h
    cp b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    and h
    ld d, c
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and c
    and h
    and b
    or e
    and h
    xor l
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
    sub d
    add sp, $51
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
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    or d
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, a
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    and b
    cp b
    ld a, a
    and b
    ld a, a
    and l
    xor b
    xor l
    and [hl]
    and h
    or c
    ld c, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    or e
    or h
    and e
    and h
    xor l
    or e
    or d
    rst $20
    ld d, a
    nop
    add b
    and b
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and b
    ld a, a
    and l
    xor b
    and h
    xor e
    and e
    ld c, a
    or e
    or c
    xor b
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
    ld d, l
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
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
    and $57
    nop
    sbc b
    and b
    and b
    or c
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    sub c
    and b
    and e
    xor b
    xor [hl]
    or d
    ld a, a
    xor a
    xor b
    and d
    xor d
    ld a, a
    or h
    xor a
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
    or d
    ld d, l
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    sub h
    adc b
    adc l
    sub d
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
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    and e
    and e
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
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    ld a, a
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
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or c
    and h
    and b
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
    or c
    and h
    ld c, a
    and b
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld d, l
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
    add sp, $57
    nop
    nop
    ld [bc], a
    dec bc
    dec b
    dec bc
    rrca
    inc bc
    dec c
    rra
    inc c
    rrca
    inc bc
    ld [bc], a
    nop
    rlca
    ld e, $00
    inc a
    ld h, a
    nop
    nop
    nop
    rlca
    rra
    nop
    ld d, c
    ld h, a
    nop
    nop
    ld bc, $1b09
    nop
    ld l, [hl]
    ld l, b
    inc c
    ld c, c
    ld a, [bc]
    ld [hl+], a
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld h, a
    ld h, a
    ld l, $07
    ld c, c
    ld a, [bc]
    inc hl
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld h, a
    ld h, a
    cpl
    rlca
    ld c, c
    ld de, $0612
    nop
    rst $38
    rst $38
    sub d
    inc bc
    and [hl]
    ld h, a
    add hl, sp
    rlca
    jr z, jr_01d_6f43

    rrca
    ld [$ff00], sp
    rst $38
    and d
    ld bc, $67ba
    add hl, sp
    rlca
    dec hl

jr_01d_6f43:
    ld a, [bc]
    inc e
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    ld bc, $67ce
    add hl, sp
    rlca
    ld c, c
    ld de, $0922
    nop
    rst $38
    rst $38
    sub d
    inc b
    ld [c], a
    ld h, a
    ld a, [hl-]
    rlca
    ld a, [hl-]
    ld a, [bc]
    ld c, $07
    nop
    rst $38
    rst $38
    and d
    inc bc
    or $67
    ld a, [hl-]
    rlca
    ld b, c
    rrca
    inc de
    ld b, $00
    rst $38
    rst $38
    or d
    inc bc
    ld a, [bc]
    ld l, b
    ld a, [hl-]
    rlca
    ld c, c
    ld [$091b], sp
    nop
    rst $38
    rst $38
    sub d
    inc b
    ld e, $68
    dec sp
    rlca
    add hl, hl
    rrca
    dec c
    rlca
    nop
    rst $38
    rst $38
    add d
    inc bc
    ld [hl-], a
    ld l, b
    dec sp
    rlca
    daa
    dec c
    ld [de], a
    inc bc
    nop
    rst $38
    rst $38
    sub d
    ld bc, $6846
    dec sp
    rlca
    daa
    rrca
    ld [de], a
    ld a, [bc]
    nop
    rst $38
    rst $38
    sub d
    ld bc, $685a
    dec sp
    rlca
    nop
    nop
    ld d, c
    xor a
    ld l, a
    nop
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld a, a
    sub d
    add sp, -$6e
    add sp, -$80
    sub b
    sub h
    add b
    ld c, a
    or d
    and b
    xor b
    xor e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld a, a
    xor [hl]
    xor l
    ld d, c
    adc h
    xor [hl]
    xor l
    and e
    and b
    cp b
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    add l
    or c
    xor b
    db $e3
    ld c, a
    and e
    and b
    cp b
    or d
    add sp, $57
    nop
    nop
    dec b
    nop
    rrca
    ld a, [bc]
    ld bc, $000e
    db $10
    dec bc
    ld bc, $040e
    rrca
    inc b
    rrca
    ld [$0302], sp
    inc bc
    rrca
    ld [$030e], sp
    ld bc, $010f
    nop
    nop
    ld bc, $052d
    dec d
    ld [$ff00], sp
    rst $38
    nop
    nop
    xor h
    ld l, a
    inc sp
    rlca
    nop
    nop
    ld d, c
    dec e
    ld [hl], b
    nop
    sub e
    and a
    and h
    ld a, a
    add l
    add b
    sub d
    sub e
    ld a, a
    sub d
    add a
    adc b
    adc a
    ld c, a
    or d
    and b
    xor b
    xor e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    sub [hl]
    and h
    and e
    xor l
    and h
    or d
    db $e3
    ld d, l
    and e
    and b
    cp b
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    sub d
    or h
    xor l
    and e
    and b
    cp b
    or d
    ld d, l
    and h
    or l
    and h
    or c
    cp b
    ld a, a
    or [hl]
    and h
    and h
    xor d
    add sp, $57
    nop
    nop
    dec b
    nop
    rrca
    ld [$030c], sp
    nop
    db $10
    add hl, bc
    inc c
    inc bc
    inc b
    rrca
    inc b
    rrca
    add hl, bc
    ld [bc], a
    inc bc
    inc bc
    rrca
    add hl, bc
    ld c, $03
    ld bc, $020f
    nop
    nop
    ld bc, $0529
    dec d
    ld [$ff00], sp
    rst $38
    nop
    nop
    ld a, [de]
    ld [hl], b
    rst $38
    rst $38
    ld bc, $7092
    nop
    nop
    ld [bc], a
    dec b
    sub e
    ld [hl], b
    ld [bc], a
    sub a
    ld [hl], b
    sub c
    inc sp
    db $ec
    nop
    sub b
    ld l, [hl]
    inc b
    sub b
    inc [hl]
    ld e, b
    nop
    add hl, bc
    rla
    ld [hl], c
    inc e
    dec bc
    rlca
    ld bc, $7117
    dec hl
    inc b
    ld [$7117], sp
    ld l, a
    ld [bc], a
    ld l, a
    inc bc
    ld l, c
    nop
    ld hl, $8b71
    rrca
    ld l, a
    inc b
    db $76
    ld [bc], a
    inc bc
    add h
    inc hl
    nop
    add [hl]
    adc e
    ld e, $70
    ld [bc], a
    inc bc
    add h
    inc hl
    nop
    ld l, c
    ld [bc], a
    inc hl
    ld [hl], c
    add h
    inc hl
    nop
    ld l, c
    ld [bc], a
    ld h, $71
    add h
    inc hl
    nop
    ld l, c
    ld [bc], a
    jr z, jr_01d_7149

    add h
    inc hl
    nop
    ld l, c
    ld [bc], a
    dec hl
    ld [hl], c
    add h
    inc hl
    nop
    ld l, c
    ld [bc], a
    dec l
    ld [hl], c
    ld [hl], c
    ld l, c
    inc bc
    jr nc, jr_01d_715c

    ld [hl], b
    ld [bc], a
    inc bc
    ld l, c
    ld [bc], a
    ld [hl-], a
    ld [hl], c
    ld [hl], c
    db $76
    ld [bc], a
    nop
    adc e
    ld a, [bc]
    ld [hl], l
    nop
    ld [bc], a
    rrca
    db $76
    ld [bc], a
    nop
    add h
    inc hl
    nop
    adc e
    rrca
    ld [hl], b
    ld [bc], a
    inc bc
    ld l, c
    ld [bc], a
    inc [hl]
    ld [hl], c
    ld l, [hl]
    ld [bc], a
    ld l, [hl]
    inc bc
    ld [hl], c
    ld [hl-], a
    db $ec
    nop
    ld [hl], $58
    nop
    sub c
    sub c
    db $ec
    nop
    ld [$3b53], sp
    ld [hl], c
    inc c
    rrca
    nop
    dec c
    ld b, a
    ld [$472c], sp
    cpl
    ld b, a
    add hl, bc
    dec l
    ld b, a
    ld l, $47
    ld [$472c], sp
    ld [$0b47], sp
    ld b, a
    rrca
    rrca
    rrca
    inc sp
    rrca
    rrca
    ld b, a
    nop
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
    ld a, a
    sub d
    sub b
    sub h
    add b
    sub c

jr_01d_7149:
    add h
    ld c, a
    add e
    adc [hl]
    adc l
    ldh [$93], a
    ld a, a
    adc e
    adc b
    sub e
    sub e
    add h
    sub c
    ld d, a
    nop
    nop
    inc bc
    dec b

jr_01d_715c:
    inc d
    dec b
    inc bc
    ld d, l
    dec bc
    ld d, $06
    inc bc
    ld d, l
    rlca
    ld c, $01
    rrca
    dec bc
    ld bc, $0b00
    rlca
    nop
    sbc d
    ld [hl], b
    nop
    nop
    ld [bc], a
    rlca
    rlca
    rlca
    jr jr_01d_71ea

    ld b, $18
    nop
    dec de
    ld [hl], c
    inc bc
    ld c, l
    ld a, [bc]
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $79
    rlca
    ld c, l
    ld a, [bc]
    dec bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $79
    rlca
    ld e, c
    dec bc
    dec bc
    jr jr_01d_719e

jr_01d_719e:
    rst $38
    rst $38
    nop
    nop
    ld e, $71
    ld a, b
    rlca
    nop
    nop
    ld l, e
    ld b, a
    sub h
    nop
    rra
    nop
    ld c, c
    sub c
    ld d, c
    or e
    ld [hl], c
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
    or d
    or h
    xor l
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    db $f4
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
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
    add sp, $57
    nop
    nop
    ld [bc], a

jr_01d_71ea:
    rlca
    inc bc
    inc bc
    rrca
    ld a, [bc]
    rlca
    inc b
    inc bc
    rrca
    ld a, [bc]
    nop
    nop
    inc b
    cpl
    rlca
    ld [$0006], sp
    rst $38
    ld bc, $0000
    xor b
    ld [hl], c
    rst $38
    rst $38
    cpl
    ld b, $05
    add hl, bc
    nop
    rst $38
    ld [bc], a
    nop
    nop
    xor b
    ld [hl], c
    rst $38
    rst $38
    jr z, jr_01d_721d

    dec b
    dec b
    ld bc, $01ff
    nop
    nop
    or b
    ld [hl], c
    rst $38

jr_01d_721d:
    rst $38
    jr z, jr_01d_7228

    add hl, bc
    inc b
    db $10
    rst $38
    ld [bc], a
    nop
    nop
    or b

jr_01d_7228:
    ld [hl], c
    rst $38
    rst $38
    nop
    ld bc, $3002
    ld [hl], d
    ld sp, $0317
    add hl, bc
    ld b, c
    ld [hl], d
    ld hl, $09b2
    ld a, $72
    inc bc
    ld b, c
    ld [hl], d
    ld l, a
    ld [bc], a
    sub b
    ld l, [hl]
    ld [bc], a
    sub b
    ld l, e
    ld b, a
    ld c, h
    ld h, b
    ld [hl], d
    add h
    ld a, [$8b00]
    rrca
    ld c, c
    inc sp
    rla
    inc bc
    ld e, $03
    ld a, [bc]
    ld e, l
    ld a, [$5f64]
    ld l, [hl]
    ld [bc], a
    ld h, b
    inc sp
    or a
    rlca
    sub c
    nop
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
    nop
    ld bc, $080d
    ld bc, $0603
    nop
    nop
    ld bc, $09a2
    dec c
    ld d, $00
    rst $38
    rst $38
    add b
    nop
    ld b, h
    ld [hl], d
    inc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
