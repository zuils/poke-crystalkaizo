; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06b", ROMX[$4000], BANK[$6b]

    nop
    nop
    ld d, c
    rst $20
    ld b, c
    jr z, @+$07

    inc l
    dec b
    db $ec
    ld b, b
    jr nc, jr_06b_404e

    nop
    nop
    ld de, $1e40
    rla
    inc de
    ld h, [hl]
    ld b, a
    inc [hl]
    ld l, a
    nop
    add hl, bc
    ld d, c
    ld b, b
    inc [hl]
    and b
    nop
    add hl, bc
    push bc
    ld b, b
    ld a, [hl+]
    inc de
    add hl, bc
    rst $10
    ld b, b
    ld sp, $027b
    add hl, bc
    ld a, [hl-]
    ld b, b
    ld c, h
    ld d, e
    ld b, c
    ld d, l
    inc sp
    ld a, e
    ld [bc], a
    nop
    bit 0, b
    inc bc
    dec a
    ld b, b
    nop
    rst $08
    ld b, b
    sub a
    inc de
    ld b, $01
    rst $18
    ld b, b
    ld b, $02
    db $db
    ld b, b
    ld b, e
    inc l
    dec b
    nop
    nop
    db $d3
    ld b, b

jr_06b_404e:
    inc bc
    rst $10
    ld b, b
    nop
    db $e3
    ld b, b
    ld h, h
    jr nc, @+$43

    nop
    nop
    add hl, de
    db $fd
    reti


    ld b, $04
    ld [hl], b
    ld b, b
    ld b, $03
    db $76
    ld b, b
    ld b, $02
    ld a, h
    ld b, b
    ld b, $01
    add d
    ld b, b
    ld b, $00
    adc b
    ld b, b
    ld sp, $00cd
    add hl, bc
    cp h
    ld b, b
    ld sp, $0044
    add hl, bc
    xor a
    ld b, b
    ld sp, $0021
    add hl, bc
    and d
    ld b, b
    inc [hl]
    ld b, a
    nop
    add hl, bc
    sub l
    ld b, b
    ld e, [hl]
    inc l
    dec b
    ld e, a
    ld h, b
    dec de
    db $fd
    reti


    ld bc, $6f35
    nop
    sub c
    ld e, [hl]
    inc l
    ld bc, $605f
    dec de
    db $fd
    reti


    ld [bc], a
    dec [hl]
    ld l, a
    nop
    sub c
    ld e, [hl]
    inc l
    inc c
    ld e, a
    ld h, b
    dec de
    db $fd
    reti


    inc bc
    dec [hl]
    ld l, a
    nop
    sub c
    ld e, [hl]
    inc l
    dec d
    ld e, a
    ld h, b
    dec de
    db $fd
    reti


    inc b
    dec [hl]
    ld l, a
    nop
    sub c
    ld e, [hl]
    inc l
    ld d, $5f
    ld h, b
    dec [hl]
    ld l, a
    nop
    sub c
    ld c, h
    add b
    ld b, c
    ld d, h
    ld c, c
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
    ld d, e
    ld a, c
    ld b, d
    sbc e
    ld b, $00
    adc b
    ld a, a
    and d
    and b
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
    or e
    and a
    and h
    ld c, a
    or e
    or h
    xor l
    xor l
    and h
    xor e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld d, c
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
    xor a
    xor e
    and h
    xor l
    or e
    cp b
    ld c, a
    xor [hl]
    and l
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld a, a
    xor e
    and h
    and l
    or e
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
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
    xor [hl]
    or c
    and h
    ld a, a
    cp c
    xor b
    xor a
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    add a
    adc b
    adc d
    add h
    sub c
    sub d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    or e
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    add sp, $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    and e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    ld c, a
    add e
    sub h
    adc l
    sub d
    adc a
    add b
    sub c
    add d
    add h
    and $51
    adc b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    sub e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld a, a
    xor b
    or e
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    add sp, $7f
    adc b
    or e
    call nc, $a655
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    and l
    or h
    xor l
    xor l
    cp b
    ld a, a
    and l
    and b
    and d
    and h
    rst $20
    ld d, a
    nop
    adc a
    and b
    xor l
    or e
    db $f4
    ld a, a
    xor a
    and b
    xor l
    or e
    ld [hl], l
    ld d, c
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
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    and b
    or l
    and h
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and c
    xor b
    and [hl]
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
    ret nc

    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    and h
    and e
    add sp, $51
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld d, c
    or e
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
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
    ld sp, hl
    ld d, a
    nop
    nop
    ld bc, $0b09
    inc bc
    inc bc
    dec h
    nop
    ld bc, $0b0b
    nop
    rst $20
    ld b, b
    inc bc
    dec l
    ld de, $060a
    nop
    rst $38
    rst $38
    or d
    ld [bc], a
    dec b
    ld b, b
    rst $38
    rst $38
    jr z, jr_06b_42b6

    ld de, $1102
    rst $38
    rst $38
    sub b
    nop
    ld [bc], a
    ld b, b
    rst $38
    rst $38
    ld e, l
    inc d
    ld [de], a
    ld bc, $ff00
    rst $38
    nop
    nop

jr_06b_42b6:
    ld_long $ff40, a
    rst $38
    nop
    nop
    add hl, sp
    dec b
    inc h
    ld [bc], a
    inc d
    ld b, e
    dec a
    ld b, e
    nop
    nop
    ret z

    ld b, d
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, l
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld a, [hl-]
    dec b
    inc h
    inc bc
    db $76
    ld b, e
    cp h
    ld b, e
    nop
    nop
    call c, Call_06b_6642
    ld b, a
    ld c, h
    rst $08
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld b, e
    dec b
    inc h
    inc c
    ld a, [$1943]
    ld b, h
    nop
    nop
    ldh a, [rSCY]
    ld h, [hl]
    ld b, a
    ld c, h
    inc hl
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld a, d
    ld b, h
    ld d, e
    sbc a
    ld b, h
    inc l
    ld bc, $010f
    dec e
    ld bc, $0141
    sbc e
    add hl, de
    db $ed
    nop
    ld b, b
    xor $00
    ld h, $ef
    nop
    ld c, $f0
    nop
    daa
    nop
    adc h
    cp b
    ld a, a
    and c
    or h
    and [hl]
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
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $7f
    adc a
    or c
    and h
    xor a
    and b
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    xor e
    xor [hl]
    or d
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or [hl]
    and a
    xor b
    xor a
    xor a
    and h
    and e
    ld [hl], l
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
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
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and b
    xor e
    xor e
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    ld a, a
    or [hl]
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld d, c
    or d
    and a
    xor [hl]
    or c
    or e
    or d
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    xor l
    xor b
    and d
    xor d
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    or h
    or e
    or d
    and $57
    nop
    adc [hl]
    or h
    and d
    and a
    db $f4
    ld a, a
    xor [hl]
    or h
    and d
    and a
    db $f4
    ld a, a
    xor [hl]
    or h
    and d
    and a
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    cp b
    pop de
    xor e
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
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    and a
    add sp, $57
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    or d
    ld c, a
    xor e
    xor b
    xor d
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
    and $57
    nop
    adc l
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld d, a
    nop
    add c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    or b
    or h
    xor b
    or d
    and a
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor a
    xor e
    or h
    or d
    and a
    ld a, a
    or e
    xor [hl]
    cp b
    or d
    ld d, c
    or [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or b
    or h
    and h
    and h
    cp c
    and h
    ld c, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    and c
    and h
    xor e
    xor e
    xor b
    and h
    or d
    add sp, $51
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and l
    and h
    and h
    xor e
    rst $20
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp+$51
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld c, a
    adc a
    add h
    sub [hl]
    sub e
    add h
    sub c
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    ldh [$92], a
    ld a, a
    add d
    add b
    sub l
    add h
    ld d, a
    nop
    nop
    dec b
    rrca
    rrca
    ld bc, $0b17
    inc sp
    add hl, bc
    inc bc
    rla
    inc c
    cpl
    ld [$1701], sp
    inc c
    cpl
    add hl, bc
    ld [bc], a
    rla
    inc c
    rlca
    inc c
    inc bc
    inc bc
    ld d, h
    nop
    ld b, $2d
    add hl, bc
    nop
    ld hl, sp+$42
    add hl, bc
    dec bc
    nop
    ei
    ld b, d
    rla
    rlca
    rlca
    ld [$0e43], sp
    inc b
    rlca
    dec bc
    ld b, e
    dec de
    inc b
    rlca
    ld c, $43
    ld e, $0b
    rlca
    ld de, $0843
    dec h
    ld h, $0a
    ld [$ff00], sp
    rst $38
    or d
    dec b
    cp h
    ld b, d
    rst $38
    rst $38
    dec h
    inc c
    rrca
    add hl, bc
    nop
    rst $38
    rst $38
    or d
    inc bc
    ret nc

    ld b, d
    rst $38
    rst $38
    dec h
    inc l
    ld [$0009], sp
    rst $38
    rst $38
    or d
    inc bc
    db $e4
    ld b, d
    rst $38
    rst $38
    ld d, h
    ld hl, HeaderLogo
    nop
    rst $38
    rst $38
    ld bc, $fe00
    ld b, d
    add e
    rlca
    ld d, h
    dec de
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $0000
    ld b, e
    add h
    rlca
    ld d, h
    ld b, $17
    ld bc, $ff00
    rst $38
    ld bc, $0200
    ld b, e
    add l
    rlca
    ld d, h
    ld l, $17
    ld bc, $ff00
    rst $38
    ld bc, $0400
    ld b, e
    add [hl]
    rlca
    ld e, l
    ld [de], a
    ld c, $01
    nop
    rst $38
    rst $38
    nop
    nop
    ld b, $43
    rst $38
    rst $38
    nop
    nop
    ld [hl], b
    inc b
    rla
    dec b
    add e
    ld b, l
    or a
    ld b, l
    nop
    nop
    ld h, d
    ld b, l
    ld h, [hl]
    ld b, a
    ld c, h
    rst $10
    ld b, l
    ld d, h
    ld c, c
    sub c
    ld l, b
    dec b
    inc e
    ld c, $15
    ld b, [hl]
    ld sp, $0046
    nop
    db $76
    ld b, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld b, b
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld [hl], l
    ld b, [hl]
    sbc e
    ld a, [de]
    nop
    adc b
    and l
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
    xor h
    and h
    and h
    or e
    db $f4
    ld c, a
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
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, l
    and e
    xor [hl]
    ld a, a
    xor b
    or d
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $57
    nop
    add b
    or [hl]
    or [hl]
    or [hl]
    ld [hl], l
    ld a, a
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld [hl], l
    ld d, a
    nop
    add l
    xor [hl]
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
    db $f4
    ld a, a
    xor b
    or e
    call nc, $a04f
    ld a, a
    and [hl]
    xor b
    or l
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
    pop de
    xor e
    ld d, c
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
    and h
    or l
    and h
    or c
    ld a, a
    or [hl]
    and h
    ld c, a
    xor h
    and h
    and h
    or e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld c, a
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
    add e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld [hl], l
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
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    and c
    or l
    xor b
    xor [hl]
    or h
    or d
    xor e
    cp b
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    and a
    and b
    or c
    and e
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ld d, c
    adc a
    add b
    adc e
    adc e
    add h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    db $e3
    ld c, a
    sub l
    adc b
    sub c
    adc b
    add e
    adc b
    add b
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    nop
    nop
    nop
    ld bc, $071b
    nop
    ld a, [hl]
    ld b, l
    inc bc
    daa
    dec de
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    sub d
    inc b
    ld d, [hl]
    ld b, l
    rst $38
    rst $38
    inc h
    ld [hl+], a
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    add d
    ld [bc], a
    ld l, d
    ld b, l
    rst $38
    rst $38
    ld e, l
    dec d
    dec c
    ld bc, $ff00
    rst $38
    nop
    nop
    add c
    ld b, l
    rst $38
    rst $38
    nop
    ld bc, $d105
    ld b, [hl]
    ld [hl], $35
    nop
    sub b
    ld d, c
    rst $20
    ld b, [hl]
    ld d, c
    jr nz, jr_06b_4722

    ld d, e
    ld l, e
    ld b, a
    ld d, e
    sbc l
    ld b, a
    ld d, e
    xor d
    ld b, a
    ld d, e
    pop bc
    ld b, a
    nop
    adc b
    jp nc, $b17f

    and b
    xor b
    or d
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
    or e
    xor [hl]
    xor [hl]
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    and h
    or c
    or l
    and h
    ld a, a
    and b
    or d
    ld a, a
    xor h
    cp b
    ld c, a
    xor a
    or c
    xor b
    or l
    and b
    or e
    and h
    ld a, a
    and [hl]
    or h
    and b
    or c
    and e
    or d
    add sp, $57
    nop
    sub e

jr_06b_4722:
    and h
    and d
    and a
    xor l
    xor [hl]
    xor e
    xor [hl]
    and [hl]
    cp b
    ld a, a
    xor b
    or d
    ld c, a
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
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld d, l
    or e
    xor b
    xor h
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and h
    db $e3
    xor h
    and b
    xor b
    xor e
    add sp, $57
    nop
    adc a
    add b
    adc e
    adc e
    add h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, c
    add b
    ld a, a
    sub e
    or c
    and b
    xor l
    or b
    or h
    xor b
    xor e
    ld a, a
    sub d
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    and l
    ld a, a
    adc a
    and h
    and b
    and d
    and h
    ld a, a
    jp hl


    ld a, a
    adc a
    or h
    or c
    xor b
    or e
    cp b
    ld d, a
    nop
    sub c
    add h
    add e
    ldh [$92], a
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    adc [hl]
    add b
    adc d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub c
    add h
    sub d
    add h
    add b
    sub c
    add d
    add a
    ld a, a
    adc e
    add b
    add c
    ld d, a
    nop
    add c
    adc e
    sub h
    add h
    ldh [$92], a
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    nop
    inc bc
    dec b
    dec b
    ld bc, $030d
    dec b
    dec c
    ld bc, $050d
    dec bc
    inc c
    ld bc, $060d
    nop
    inc b
    add hl, bc
    rlca
    nop
    db $db
    ld b, [hl]
    dec b
    inc bc
    nop
    sbc $46
    dec c
    dec c
    nop
    pop hl
    ld b, [hl]
    dec b
    dec bc
    nop
    db $e4
    ld b, [hl]
    ld [bc], a
    add hl, hl
    inc c
    rlca
    ld [bc], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    nop
    push de
    ld b, [hl]
    rst $38
    rst $38
    ld a, [hl-]
    ld [de], a
    rrca
    dec b
    ld [bc], a
    rst $38
    rst $38
    and b
    nop
    ret c

    ld b, [hl]
    rst $38
    rst $38
    nop
    nop
    and l
    dec b
    ld h, $12
    ld d, b
    ld c, b
    ld l, h
    ld c, b
    nop
    nop
    jr nz, jr_06b_4868

    ld h, [hl]
    ld b, a
    ld c, h
    ld [hl], e
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld hl, sp+$03
    daa
    ld de, $48a0
    sub $48
    nop
    nop
    inc [hl]
    ld c, b
    ld h, [hl]
    ld b, a
    ld c, h
    pop af
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld d, b
    inc b
    dec h
    inc bc
    daa
    ld c, c
    ld c, h
    ld c, c
    nop
    nop
    ld c, b
    ld c, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, h
    ld c, c
    ld d, h
    ld c, c
    sub c
    nop
    adc e
    and b
    xor l
    and e
    ld a, a
    and a
    xor [hl]
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    or e
    or e
    and b
    ld c, a
    xor d
    and h
    and h
    xor a
    ld a, a
    and [hl]
    xor [hl]
    xor b

jr_06b_4868:
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add [hl]
    xor e
    or h
    and [hl]
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    and b
    or c
    or c
    xor [hl]
    and [hl]
    and b
    xor l
    or e
    ld a, a
    and [hl]
    or h
    cp b
    ld c, a
    or [hl]
    and b
    or d
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
    call nc, $b555
    xor [hl]
    xor e
    and d
    and b
    xor l
    xor [hl]
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor l
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
    and a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld d, l
    or d
    or h
    xor l
    or e
    and b
    xor l
    ld a, a
    xor e
    xor [hl]
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b67f

    xor [hl]
    or c
    or c
    xor b
    and h
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    or d
    or h
    xor l
    and c
    or h
    or c
    xor l
    ld [hl], l
    ld d, a
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
    and b
    or e
    and d
    and a
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and c
    xor e
    and h
    xor h
    xor b
    or d
    and a
    and h
    or d
    ld d, l
    and d
    and b
    or h
    or d
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    add sp, $57
    nop
    adc b
    jp nc, $a17f

    xor [hl]
    or c
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    and l
    xor b
    or d
    and a
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    add sp, $7f
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
    sub h
    or e
    or e
    and h
    or c
    ld a, a
    and l
    and b
    xor b
    xor e
    or h
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    adc b
    pop de
    xor e
    ld a, a
    xor c
    or h
    or d
    or e
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
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [hl-], a
    dec d
    inc d
    add hl, bc
    nop
    rst $38
    rst $38
    and d
    inc bc
    jr z, jr_06b_49d3

    rst $38
    rst $38
    ld sp, $071a
    ld b, $00
    rst $38
    rst $38
    add d
    inc b
    inc d
    ld c, b
    rst $38
    rst $38
    ld a, [hl-]
    inc e
    rlca
    rlca
    nop
    rst $38
    rst $38
    and d
    ld bc, $483c
    rst $38
    rst $38
    nop
    ld bc, $ac05
    ld c, c
    ld [hl], $3f
    nop
    sub b
    ld l, e
    ld b, a
    ld c, h
    jp nc, Jump_06b_5449

    ld c, c
    add l
    inc de
    nop
    ld l, c
    ld [bc], a
    ret nc

    ld c, c
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    db $76
    rlca
    sub c
    ld d, e
    ld [hl], e
    ld c, h
    ld d, e
    jp nz, $0c4c

    stop
    cp $00
    jr nz, jr_06b_4a1d

    ld b, a
    nop

jr_06b_49d3:
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
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    xor b
    or e
    call nc, $af7f
    xor e
    and b
    xor b
    xor l
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
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
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
    ld [hl], l
    ld d, c
    adc h
    cp b
    ld a, a
    xor l
    and b
    xor h
    and h
    call nc, $817f
    adc e
    sub h
    add h
    add sp, $51
    adc b

jr_06b_4a1d:
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
    or e
    and a
    and h
    ld c, a
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    db $f4
    ld a, a
    and b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld d, c
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and b
    ld c, a
    or d
    and a
    xor [hl]
    or c
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld [hl], l
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    xor h
    and h
    and e
    and e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    sub c
    add h
    add e
    ld c, a
    and e
    xor b
    and e
    ld a, a
    xor h
    and h
    ld a, a
    xor b
    xor l
    ld [hl], l
    ld d, c
    add b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld d, c
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
    xor h
    and h
    ld a, a
    xor [hl]
    or c
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
    and $51
    ld [hl], l
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
    or d
    and b
    cp b
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    xor b
    xor l
    ld d, c
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and l
    xor [hl]
    or c
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
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    sub e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld [hl], l
    ld d, c
    add b
    ld a, a
    or l
    xor [hl]
    xor e
    and d
    and b
    xor l
    xor [hl]
    ld a, a
    and h
    or c
    or h
    xor a
    or e
    or d
    db $f4
    ld c, a
    and b
    xor l
    and e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, c
    or e
    and a
    and b
    or e
    db $f4
    ld a, a
    and b
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
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
    or d
    add sp, $51
    sub [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    xor l
    db $e3
    ld c, a
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
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
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    add c
    or h
    or e
    ld a, a
    xor b
    and l
    ld c, a
    xor l
    and b
    or e
    or h
    or c
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and b
    or d
    ld d, c
    or e
    or [hl]
    xor b
    or e
    and d
    and a
    and h
    or d
    db $f4
    ld a, a
    or [hl]
    and h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    add sp, $51
    ld [hl], l
    ld d, c
    sub e
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    xor b
    or e
    ld c, a
    xor b
    or d
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    db $f4
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    adc b
    jp nc, $b24f

    or e
    xor b
    xor e
    xor e
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
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    and b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld c, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld d, l
    xor h
    and h
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
    or e
    xor e
    and h
    add sp, $51
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
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
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
    adc b
    pop de
    xor e
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    and h
    xor l
    add sp, $57
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
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    and a
    and b
    or d
    ld c, a
    or c
    and h
    xor e
    xor [hl]
    and d
    and b
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub d
    add h
    add b
    db $e3
    ld d, l
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    add sp, $51
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, a
    nop
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add l
    xor b
    and h
    or c
    cp b
    ld a, a
    sub e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor [hl]
    and l
    ld c, a
    add c
    or h
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    add e
    and h
    or d
    xor b
    or c
    and h
    ld d, a
    nop
    nop
    ld bc, $0b0b
    ld bc, $0106
    nop
    inc b
    dec bc
    add hl, bc
    nop
    jp z, $0d49

    dec c
    nop
    call nz, $0b49
    dec b
    nop
    rst $00
    ld c, c
    db $10
    ld bc, $cd07
    ld c, c
    ld bc, $0607
    dec bc
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    or b
    ld c, c
    ld [hl], l
    rlca
    nop
    ld bc, $2505
    ld c, l
    inc sp
    rst $10
    nop
    sub b
    push af
    inc bc
    daa
    ld c, $68
    ld c, l
    adc d
    ld c, l
    nop
    nop
    dec [hl]
    ld c, l
    ld h, [hl]
    ld b, a
    ld c, h
    sub e
    ld c, l
    ld d, h
    ld c, c
    sub c
    or $03
    daa
    rrca
    ret nc

    ld c, l
    db $10
    ld c, [hl]
    nop
    nop
    ld c, c
    ld c, l
    ld h, [hl]
    ld b, a
    ld c, h
    dec d
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    and h
    dec b
    ld h, $11
    ld c, e
    ld c, [hl]
    add e
    ld c, [hl]
    nop
    nop
    ld e, l
    ld c, l
    ld h, [hl]
    ld b, a
    ld c, h
    adc e
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld d, e
    jp nz, $004e

    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    xor e
    xor b
    and [hl]
    and a
    or e
    and h
    or c
    ld a, a
    xor b
    xor l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld d, a
    nop
    sub d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or a
    and h
    or c
    and d
    xor b
    or d
    and h
    or d
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    or h
    xor e
    xor e
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $51
    adc b
    or e
    call nc, $b17f
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    xor h
    xor a
    or c
    and h
    or d
    or d
    xor b
    or l
    and h
    ld c, a
    and d
    xor [hl]
    xor e
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
    add sp, $7f
    sub [hl]
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
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    ld d, a
    nop
    sub d
    sub h
    sub c
    add l
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or c
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
    add a
    adc h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    xor l
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
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    xor b
    or e
    call nc, $a87f
    xor h
    db $e3
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
    or d
    or [hl]
    xor b
    xor h
    ld d, c
    and b
    xor e
    xor e
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
    xor [hl]
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    add sp, $57
    nop
    add b
    xor b
    cp b
    and b
    and a
    rst $20
    ld d, a
    nop
    add c
    and h
    or d
    xor b
    and e
    and h
    or d
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
    ld c, a
    and d
    and b
    xor l
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    ld a, a
    xor b
    xor l
    ld d, l
    xor a
    xor [hl]
    xor l
    and e
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or c
    xor b
    or l
    and h
    or c
    or d
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or d
    xor b
    and [hl]
    xor l
    ld a, a
    or d
    and b
    cp b
    and $51
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
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
    sbc h
    ld a, a
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, a
    nop
    nop
    ld bc, $2607
    ld bc, $0406
    nop
    ld bc, $250b
    nop
    ld h, l
    ld c, l
    inc bc
    ld [hl-], a
    ld b, $1d
    ld b, $00
    rst $38
    rst $38
    and d
    inc bc
    add hl, hl
    ld c, l
    rst $38
    rst $38
    ld [hl-], a
    inc de
    jr nc, jr_06b_4f1f

    nop
    rst $38
    rst $38
    and d
    inc bc
    dec a

jr_06b_4f1f:
    ld c, l
    rst $38
    rst $38
    ld sp, $2414
    rlca
    nop
    rst $38
    rst $38
    add d
    inc bc
    ld d, c
    ld c, l
    rst $38
    rst $38
    nop
    nop
    inc b
    inc b
    jr jr_06b_4f3f

    ld e, h
    ld c, a
    sbc h
    ld c, a
    nop
    nop
    dec a
    ld c, a
    ld h, [hl]
    ld b, a

jr_06b_4f3f:
    ld c, h
    and l
    ld c, a
    ld d, h
    ld c, c
    sub c
    dec b
    inc b
    jr jr_06b_4f54

    rst $10
    ld c, a
    dec b
    ld d, b
    nop
    nop
    ld d, c
    ld c, a
    ld h, [hl]
    ld b, a
    ld c, h

jr_06b_4f54:
    dec c
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld d, c
    ld d, b
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
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    and b
    xor e
    xor e
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    add sp, $57
    nop
    add b
    cp b
    xor b
    and h
    and h
    and h
    rst $20
    ld d, a
    nop
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    xor [hl]
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld d, l
    and l
    or h
    xor l
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
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    or b
    or h
    xor b
    and d
    xor d
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    and d
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    add sp, $57
    nop
    ld [hl], l
    sub [hl]
    and a
    and h
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
    add c
    adc b
    add d
    sbc b
    add d
    adc e
    add h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld d, c
    xor l
    xor [hl]
    or e
    ld a, a
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
    or h
    or d
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    and d
    or h
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
    cp $51
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
    ld c, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    nop
    ld [bc], a
    ld b, $02
    inc bc
    dec d
    ld a, [de]
    rlca
    ld [bc], a
    inc b
    dec d
    ld a, [de]
    nop
    ld bc, $0905
    nop
    ld e, c
    ld c, a
    ld [bc], a
    daa
    ld c, $11
    rlca
    nop
    rst $38
    rst $38
    sub d
    inc bc
    ld sp, $ff4f
    rst $38
    daa
    ld a, [bc]
    ld de, $0006
    rst $38
    rst $38
    sub d
    inc bc
    ld b, l
    ld c, a
    rst $38
    rst $38
    nop
    ld bc, $ab05
    ld d, b
    ld [hl], $19
    nop
    ld [hl], $1a
    nop
    sub b
    ld [hl], $04
    dec l
    ld b, $5c
    ld d, d
    ld a, d
    ld d, d
    nop
    nop
    cp [hl]
    ld d, b
    ld h, [hl]
    ld b, a
    ld c, h
    sub e
    ld d, d
    ld d, h
    ld c, c
    sub c
    scf
    inc b
    dec l
    rlca
    ld [$2a51], sp
    ld d, c
    nop
    nop
    jp nc, Jump_06b_6650

    ld b, a
    ld c, h
    dec sp
    ld d, c
    ld d, h
    ld c, c
    sub c
    jr c, jr_06b_50e0

    dec l
    ld [$515c], sp

jr_06b_50e0:
    ld a, b
    ld d, c
    nop
    nop
    and $50
    ld h, [hl]
    ld b, a
    ld c, h
    sub [hl]
    ld d, c
    ld d, h
    ld c, c
    sub c
    add hl, sp
    inc b
    dec l
    add hl, bc
    ldh [rHDMA1], a
    inc bc
    ld d, d
    nop
    nop
    ld a, [$6650]
    ld b, a
    ld c, h
    dec h
    ld d, d
    ld d, h
    ld c, c
    sub c
    or $00
    ld b, b
    rst $30
    nop
    dec d
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
    sbc b
    xor [hl]
    or h
    db $d3
    and h
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
    db $f4
    ld a, a
    and a
    or h
    and a
    and $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor b
    and d
    xor d
    rst $20
    ld d, a
    nop
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
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    xor a
    or h
    xor l
    xor d
    rst $20
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    add sp, $7f
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
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
    add c
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
    jp nc, $b67f

    and h
    and b
    xor d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    jp nc, $ad55

    xor [hl]
    or e
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
    xor [hl]
    xor e
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
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    ld a, a
    or d
    xor a
    and h
    and h
    and e
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
    xor b
    xor d
    and h
    or d
    rst $20
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
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    or c
    or b
    or h
    and h
    rst $20
    ld d, a
    nop
    add a
    and b
    xor l
    and e
    or d
    db $e3
    and l
    or c
    and h
    and h
    ld a, a
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    and h
    and e
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld d, l
    xor [hl]
    xor l
    ld a, a
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    add sp, $57
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    and l
    and h
    and b
    or c
    xor e
    and h
    or d
    or d
    ld c, a
    and a
    xor b
    and [hl]
    and a
    or [hl]
    and b
    cp b
    ld a, a
    or d
    or e
    and b
    or c
    or d
    rst $20
    ld d, a
    nop
    add b
    or c
    or c
    or c
    and [hl]
    and a
    rst $20
    ld a, a
    add d
    or c
    and b
    or d
    and a
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and c
    or h
    or c
    xor l
    rst $20
    ld d, a
    nop
    sub c
    and h
    and d
    xor d
    xor e
    and h
    or d
    or d
    ld a, a
    and e
    or c
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    and d
    and b
    or h
    or d
    and h
    or d
    ld a, a
    and b
    and d
    and d
    xor b
    and e
    and h
    xor l
    or e
    or d
    rst $20
    ld d, l
    sub e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and h
    and b
    or d
    cp b
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    ld d, d
    ld de, $1501
    ld a, [de]
    ld d, e
    ld de, $1502
    ld a, [de]
    nop
    ld [bc], a
    ld [hl], $09
    rlca
    ld [bc], a
    ld d, c
    ld c, [hl]
    ld [$0507], sp
    ld d, c
    inc b
    ld c, d
    ld d, a
    ld [de], a
    add hl, bc
    nop
    rst $38
    rst $38
    or d
    inc b
    add $50
    rst $38
    rst $38
    ld c, d
    ld d, l
    ld b, $09
    nop
    rst $38
    rst $38
    or d
    ld bc, $50da
    rst $38
    rst $38
    ld c, d
    ld hl, $0815
    nop
    rst $38
    rst $38
    or d
    inc bc
    xor $50
    rst $38
    rst $38
    ld c, d
    ld d, l
    ld [$0008], sp
    rst $38
    rst $38
    or d
    inc b
    or d
    ld d, b
    rst $38
    rst $38
    nop
    ld bc, $1805
    ld d, e
    inc e
    inc de
    dec bc
    dec b
    jr z, @+$55

    inc e
    ld [de], a
    ld a, [bc]
    dec c
    jr z, jr_06b_5377

    ld [hl], $19
    nop
    sub b
    dec [hl]
    add hl, de
    nop
    sub b
    ld d, e
    cpl
    ld d, e
    nop
    add d
    sbc b
    add d
    adc e
    adc b
    adc l
    add [hl]
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld d, c
    add e
    adc [hl]
    sub [hl]
    adc l
    add a
    adc b
    adc e
    adc e
    ld a, a
    add d
    adc [hl]
    add b
    sub d
    sub e
    adc b
    adc l
    add [hl]
    ld c, a
    add b
    adc e
    adc e
    ld a, a
    sub e
    add a
    add h
    ld a, a
    sub [hl]
    add b
    sbc b
    rst $20
    ld d, a
    nop
    nop
    dec b
    ld bc, $0103
    dec d
    rla
    ld b, $0e
    inc bc
    dec d
    jr @+$09

    ld c, $04
    dec d
    jr jr_06b_5375

    add hl, bc
    ld bc, $1815
    rlca
    add hl, bc

jr_06b_5375:
    ld [bc], a
    dec d

jr_06b_5377:
    jr jr_06b_5379

jr_06b_5379:
    ld bc, $0505
    nop
    inc l
    ld d, e
    nop
    nop
    nop
    ld d, e
    adc b
    ld d, e
    ld d, e
    ld d, [hl]
    ld d, h
    nop
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    ld a, a
    and l
    xor e
    cp b
    and h
    or c
    and $51
    ld [hl], l
    ld a, a
    sub h
    xor l
    and d
    xor [hl]
    or h
    or e
    and a
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
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld d, c
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
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
    ld a, a
    adc a
    add b
    sub e
    add a
    add sp, $51
    add c
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
    or c
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and b
    xor b
    xor l
    or e
    or d
    ld a, a
    and c
    cp b
    ld a, a
    xor e
    xor [hl]
    db $e3
    ld d, l
    and d
    and b
    xor e
    ld a, a
    or c
    and h
    or d
    xor b
    and e
    and h
    xor l
    or e
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    ld a, a
    adc a
    add b
    sub e
    add a
    ld d, l
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or d
    and h
    and b
    xor e
    and h
    and e
    ld d, l
    xor b
    xor l
    and e
    and h
    and l
    xor b
    xor l
    xor b
    or e
    and h
    xor e
    cp b
    add sp, $51
    add d
    add h

Jump_06b_5449:
    adc e
    add b
    add e
    adc [hl]
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
    ld [bc], a
    ld b, $0f
    ld bc, $1915
    rlca
    rrca
    ld [bc], a
    dec d
    add hl, de
    nop
    ld [bc], a
    dec bc
    dec b
    nop
    add d
    ld d, e
    add hl, bc
    ld b, $00
    add l
    ld d, e
    nop
    nop
    nop
    ld l, e
    ld b, a
    sub [hl]
    dec b
    ld d, h
    ld c, c
    sub c
    pop de
    inc b
    dec sp
    dec b
    jp nz, $ff54

    ld d, h
    nop
    nop
    sub d
    ld d, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld [$5455], sp
    ld c, c
    sub c
    inc bc
    inc b
    jr jr_06b_54a7

    ld d, d
    ld d, l
    add c
    ld d, l
    nop
    nop
    and [hl]
    ld d, h
    ld h, [hl]

jr_06b_54a7:
    ld b, a
    ld c, h
    and h
    ld d, l
    ld d, h
    ld c, c
    sub c
    jp nc, $3b04

    ld b, $e4
    ld d, l
    ld b, b
    ld d, [hl]
    nop
    nop
    cp d
    ld d, h
    ld h, [hl]
    ld b, a
    ld c, h
    ld h, b
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    nop
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld c, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld d, c
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add b
    or [hl]
    and b
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    adc e
    add h
    db $f4
    ld a, a
    add d
    add a
    add b
    sub c
    adc h
    add b
    adc l
    db $e3
    ld c, a
    add e
    add h
    sub c
    ld a, a
    and b
    xor l
    and e
    ld a, a
    add c
    sub h
    adc e
    add c
    add b
    sub d
    add b
    sub h
    sub c
    ld [hl], l
    ld d, c
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
    and b
    or e
    call nc, $a07f
    ld c, a
    or [hl]
    and h
    xor e
    xor e
    db $e3
    and c
    and b
    xor e
    and b
    xor l
    and d
    and h
    and e
    ld a, a
    xor h
    xor b
    or a
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
    and l
    xor e
    cp b
    ld c, a
    or [hl]
    xor b
    or e
    and a
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
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and e
    or c
    and h
    and b
    xor h
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
    and h
    or l
    and h
    or c
    ld a, a
    and l
    xor e
    cp b
    ld [hl], l
    ld d, a
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    add a
    adc h
    ld d, c
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    add l
    adc e
    sbc b
    db $f4
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    cp b
    xor [hl]
    or h
    and $7f
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
    add sp, $57
    nop
    add a
    xor b
    add sp, $7f
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    and $51
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    xor e
    cp b
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
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
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
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
    ld d, l
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
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
    adc b
    ld a, a
    xor h
    and h
    and h
    or e
    ld c, a
    xor h
    cp b
    ld a, a
    sub l
    adc b
    adc e
    add h
    adc a
    adc e
    sub h
    adc h
    add h
    and $57
    nop
    adc b
    and l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
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
    ld c, a
    and b
    xor l
    ld a, a
    and h
    and b
    or d
    cp b
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, c
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and l
    cp b
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, a
    nop
    nop
    nop
    nop
    nop
    inc b
    dec l
    ld de, $090f
    nop
    rst $38
    rst $38
    add d
    inc bc
    add [hl]
    ld d, h
    rst $38
    rst $38
    daa
    inc e
    db $10
    rlca
    nop
    rst $38
    rst $38
    sub d
    inc bc
    sbc d
    ld d, h
    rst $38
    rst $38
    dec l
    rrca
    dec c
    ld b, $00
    rst $38
    rst $38
    add d
    inc bc
    xor [hl]
    ld d, h
    rst $38
    rst $38
    add hl, hl
    add hl, bc
    dec bc
    dec b
    ld bc, $ffff
    and b
    inc b
    ld a, a
    ld d, h
    rst $38
    rst $38
    nop
    ld bc, $e005
    ld d, [hl]
    ld [hl], $3b
    nop
    sub b
    ld d, c
    ld [bc], a
    ld d, a
    ld d, c
    ld a, [hl-]
    ld d, a
    ld d, c
    ld e, h
    ld d, a
    ld d, c
    xor h
    ld d, a
    ld d, e
    rst $30
    ld d, a
    ld d, e
    inc e
    ld e, b
    ld d, e
    ld h, c
    ld e, b
    ld d, e
    add b
    ld e, b
    inc c
    stop
    inc c
    ld de, $0000
    sub e
    and a
    and b
    or e
    call nc, $b07f
    or h
    xor b
    or e
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and h
    and a
    and $51
    adc b
    or e
    call nc, $8a7f
    add b
    adc l
    sub e
    adc [hl]
    call nc, $917f
    add b
    add e
    adc b
    adc [hl]
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $57
    nop
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    or d
    add sp, $57
    nop
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    and b
    cp b
    ld d, c
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or c
    and h
    or d
    xor a
    and h
    and d
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    and e
    and h
    xor a
    and b
    or c
    or e
    and h
    and e
    ld a, a
    or d
    xor [hl]
    or h
    xor e
    or d
    ld d, l
    xor [hl]
    and l
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
    xor l
    and h
    and h
    and e
    ld a, a
    and b
    ld a, a
    ld d, h
    ld c, a
    add l
    adc e
    sub h
    sub e
    add h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    and b
    xor d
    and h
    ld d, l
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
    add sp, $51
    add h
    or l
    and h
    or c
    cp b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and a
    and b
    or d
    ld c, a
    or e
    xor [hl]
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
    rst $20
    ld d, a
    nop
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc l
    xor [hl]
    and c
    xor e
    and h
    ld a, a
    adc a
    or h
    or c
    xor a
    xor e
    and h
    ld c, a
    sub e
    xor [hl]
    or [hl]
    xor l
    ld d, a
    nop
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld a, a
    sub c
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
    ld d, c
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    add l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld c, a
    adc a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    or d
    ld a, a
    adc [hl]
    xor l
    db $e3
    add b
    xor b
    or c
    ld d, l
    add b
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
    add d
    xor e
    xor [hl]
    and d
    xor d
    rst $20
    ld d, a
    nop
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub l
    adc [hl]
    adc e
    sub h
    adc l
    sub e
    add h
    add h
    sub c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    sub d
    adc [hl]
    sub h
    adc e
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, c
    adc h
    and b
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub d
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
    sub c
    and h
    or d
    or e
    ld a, a
    add h
    and b
    or d
    cp b
    ld d, a
    nop
    nop
    rlca
    dec b
    dec b
    ld bc, $0512
    add hl, bc
    dec b
    ld bc, $0712
    dec c
    inc bc
    ld bc, $0812
    dec c
    rlca
    ld bc, $0912
    dec b
    ld bc, $1202
    ld a, [bc]
    dec bc
    dec c
    ld bc, $0b12
    dec b
    ld c, $01
    ld [de], a
    inc c
    nop
    ld b, $03
    dec bc
    nop
    ldh a, [rRP]
    rlca
    rrca
    nop
    di
    ld d, [hl]
    add hl, bc
    inc bc
    nop
    or $56
    dec c
    rrca
    nop
    ld sp, hl
    ld d, [hl]
    dec b
    ld b, $00
    db $fc
    ld d, [hl]
    dec b
    ld [bc], a
    nop
    rst $38
    ld d, [hl]
    inc b
    dec l
    dec bc
    db $10
    dec b
    ld bc, $ffff
    add b
    nop
    db $e4
    ld d, [hl]
    rst $38
    rst $38
    add hl, hl
    inc de
    ld b, $05
    ld bc, $ffff
    sub b
    nop
    rst $20
    ld d, [hl]
    rst $38
    rst $38
    cpl
    db $10
    ld [de], a
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    ld_long $ff56, a
    rst $38
    daa
    rrca
    ld a, [bc]
    dec b
    ld bc, $ffff
    and b
    ld bc, $56ed
    rst $38
    rst $38
    nop
    nop
    rst $00
    dec b
    dec sp
    dec c
    call z, $f359
    ld e, c
    nop
    nop
    dec [hl]
    ld e, c
    ld h, [hl]
    ld b, a
    ld c, h
    rst $38
    ld e, c
    ld d, h
    ld c, c
    sub c
    ret z

    dec b
    dec sp
    ld c, $4f
    ld e, d
    ld a, c
    ld e, d
    nop
    nop
    ld c, c
    ld e, c
    ld h, [hl]
    ld b, a
    ld c, h
    adc b
    ld e, d
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld d, a
    ld e, c
    ld d, e
    sbc e
    ld e, c
    nop
    sub e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and b
    and e
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld c, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
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
    ld d, c
    and b
    or e
    ld a, a
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
    ld c, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    xor e
    or l
    and h
    and e
    add sp, $57
    nop
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
    ld a, a
    adc a
    add b
    sub e
    add a
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
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
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
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    adc a
    add a
    add b
    adc l
    adc a
    sbc b
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    and d
    or h
    or e
    and h
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    adc a
    add a
    add b
    adc l
    adc a
    sbc b
    rst $20
    ld d, a
    nop
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    adc a
    add a
    add b
    adc l
    adc a
    sbc b
    ld a, a
    and b
    and d
    or e
    or d
    rst $20
    ld d, c
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
    ld c, a
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
    xor h
    and b
    xor d
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and a
    and h
    and b
    or c
    or e
    ld a, a
    xor h
    and h
    xor e
    or e
    and $57
    nop
    adc h
    cp b
    ld a, a
    sub e
    add h
    add e
    add e
    adc b
    sub h
    sub c
    sub d
    add b
    ld a, a
    xor b
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    and d
    or h
    or e
    and h
    or d
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    sub e
    add h
    add e
    add e
    adc b
    sub h
    sub c
    sub d
    add b
    rst $20
    ld d, a
    nop
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    ld c, a
    xor h
    cp b
    ld a, a
    sub e
    add h
    add e
    add e
    adc b
    sub h
    sub c
    sub d
    add b
    ld a, a
    and b
    and d
    or e
    or d
    rst $20
    ld d, c
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
    ld c, a
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
    xor h
    and b
    xor d
    and h
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and a
    and h
    and b
    or c
    or e
    ld a, a
    xor h
    and h
    xor e
    or e
    and $57
    nop
    nop
    ld [bc], a
    inc bc
    ld de, $0c01
    dec c
    ld bc, $0306
    inc c
    inc c
    nop
    ld bc, $1305
    nop
    ld d, h
    ld e, c
    inc bc
    dec l
    ld [$0615], sp
    nop
    rst $38
    rst $38
    or b
    ld [bc], a
    ld d, c
    ld e, c
    ld [hl], c
    rlca
    dec l
    db $10
    inc c
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    nop
    add hl, hl
    ld e, c
    rst $38
    rst $38
    dec l
    db $10
    dec c
    ld [$ff00], sp
    rst $38
    add d
    nop
    dec a
    ld e, c
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld [hl+], a
    ld e, e
    ld d, e
    ld h, [hl]
    ld e, e
    ld d, e
    sub a
    ld e, e
    nop
    sub e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and b
    and e
    ld a, a
    xor b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld c, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
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
    ld d, c
    and b
    or e
    ld a, a
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
    ld c, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    xor e
    or l
    and h
    and e
    add sp, $57
    nop
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
    ld a, a
    adc a
    add b
    sub e
    add a
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
    add d
    adc b
    sub e
    sbc b
    ld a, a
    db $e3
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
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    and $51
    add a
    xor [hl]
    or h
    or d
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    sub d
    and b
    xor e
    and h
    ld [hl], l
    ld c, a
    adc l
    xor [hl]
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    xor e
    xor b
    or l
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
    inc b
    rrca
    ld de, $1901
    dec c
    ld de, $0108
    add hl, de
    ld c, $11
    add hl, bc
    ld [bc], a
    add hl, de
    ld c, $0b
    ld a, [bc]
    ld bc, $0f19
    nop
    ld [bc], a
    ld de, $0011
    inc e
    ld e, e
    dec bc
    ld a, [bc]
    nop
    rra
    ld e, e
    ld bc, $142d
    dec d
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    add hl, de
    ld e, e
    ld [hl], c
    rlca
    nop
    nop
    ld l, e
    ld a, a
    add hl, sp
    nop
    ld b, a
    ld c, h
    ld l, $5c
    ld d, h
    ld c, c
    ld h, h
    ld h, a
    ld e, l
    rst $38
    rst $38
    ld e, [hl]
    rra
    rra
    ld e, a
    add e
    ld h, b
    ld a, a
    add hl, sp
    nop
    ld b, a
    ld c, h
    ret nz

    ld e, l
    ld d, l
    rrca
    ld l, d
    nop
    ld c, h
    pop hl
    ld e, [hl]
    ld d, h
    ld c, c
    rrca
    jr nc, jr_06b_5c22

jr_06b_5c22:
    rrca
    inc sp
    nop
    ld l, [hl]
    ld [bc], a
    adc e
    add hl, de
    rrca
    ld [hl-], a
    nop
    add d
    sub c
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
    adc h
    and h
    ld a, a
    and b
    xor h
    ld a, a
    and b
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
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld d, l
    xor d
    xor b
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and [hl]
    or h
    cp b
    rst $20
    ld d, c
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    and d
    xor [hl]
    or h
    xor l
    or e
    or c
    cp b
    db $f4
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
    ld d, l
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    xor h
    and h
    rst $20
    ld d, c
    sub e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc b
    ld a, a
    and e
    xor b
    and e
    db $f4
    ld a, a
    xor b
    and l
    ld c, a
    or d
    or e
    xor [hl]
    xor a
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
    db $f4
    ld d, c
    and c
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    xor a
    and b
    xor l
    xor b
    and d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    rst $20
    ld d, c
    sub d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor h
    cp b
    ld c, a
    xor h
    xor b
    or d
    or d
    xor b
    xor [hl]
    xor l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    or e
    and h
    xor e
    xor e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    adc b
    ld a, a
    xor l
    xor [hl]
    or e
    rst $20
    ld d, c
    add c
    or h
    or e
    rst $20
    ld a, a
    adc b
    and l
    ld a, a
    or [hl]
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    ld c, a
    or l
    and h
    or c
    or d
    or h
    or d
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    and b
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    adc b
    ld d, c
    and c
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor h
    xor b
    xor l
    and h
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    adc b
    ld a, a
    or e
    and h
    xor e
    xor e
    add sp, $51
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
    add c
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    and c
    and h
    and [hl]
    xor b
    xor l
    ld a, a
    or [hl]
    and h
    ld a, a
    and e
    xor [hl]
    rst $20
    ld d, a
    nop
    add b
    cp b
    xor b
    and h
    and h
    and h
    and a
    rst $20
    ld a, a
    adc l
    xor [hl]
    db $f4
    ld a, a
    xor l
    xor [hl]
    db $f4
    ld c, a
    xor l
    xor [hl]
    db $f4
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    adc b
    ld d, l
    and d
    and b
    xor l
    push de
    rst $20
    ld d, c
    sub d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor h
    or h
    and d
    and a
    ld c, a
    and c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld a, a
    adc h
    and b
    or e
    and d
    and a
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld d, l
    xor l
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc [hl]
    adc d
    add sp, $7f
    sub e
    and h
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    xor l
    and h
    ld c, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    adc b
    add sp, $51
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    ld a, a
    adc a
    add b
    sub c
    sub e
    ld a, a
    or d
    or e
    and h
    and b
    xor e
    ld c, a
    and c
    cp b
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    and a
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    adc b
    ld d, c
    and e
    xor b
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    xor a
    or h
    or e
    ld c, a
    xor b
    or e
    ld a, a
    adc b
    ld a, a
    and e
    xor b
    and e
    add sp, $7f
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld d, c
    xor b
    xor l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld a, a
    and d
    and h
    xor l
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
    add [hl]
    sbc b
    adc h
    ld a, a
    and b
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
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    xor h
    and h
    ld c, a
    xor l
    xor [hl]
    or e
    rst $20
    ld d, c
    add c
    and h
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or h
    or c
    and h
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
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
    add sp, $51
    add d
    xor [hl]
    xor h
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
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    cp b
    db $f4
    ld a, a
    xor h
    xor b
    xor l
    and h
    ld d, c
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    db $f4
    ld a, a
    cp b
    and h
    or d
    add sp, $7f
    sub [hl]
    xor b
    xor e
    xor e
    ld c, a
    or c
    and h
    or l
    and h
    xor l
    and [hl]
    and h
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
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    cp b
    ld a, a
    or [hl]
    and a
    and b
    or e
    and $7f
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
    ld a, a
    and c
    cp b
    and h
    db $e3
    and c
    cp b
    and h
    ld a, a
    and b
    ld d, c
    and [hl]
    xor [hl]
    db $e3
    and [hl]
    xor [hl]
    and $7f
    add c
    or c
    xor [hl]
    xor d
    and h
    xor l
    ld a, a
    xor b
    or e
    ld c, a
    xor b
    or d
    ld a, a
    or d
    and b
    cp b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld a, a
    sub d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    adc b
    ld c, a
    and e
    xor [hl]
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    xor l
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    db $f4
    ld a, a
    xor h
    and h
    and $57
    nop
    nop
    nop
    nop
    nop
    ld bc, $0b35
    inc c
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [$6c5b]
    rlca
    nop
    nop
    ld b, [hl]
    inc b
    jr nc, jr_06b_5f6a

    cp b

jr_06b_5f6a:
    ld e, a
    db $db
    ld e, a
    nop
    nop
    ld [hl], c
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    rst $30
    ld e, a
    ld d, h
    ld c, c
    sub c
    or c
    dec b
    ld d, $09
    ld hl, $4060
    ld h, b
    nop
    nop
    add l
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, c
    ld h, b
    ld d, h
    ld c, c
    sub c
    or d
    dec b
    ld d, $0a
    add d
    ld h, b
    sbc h
    ld h, b
    nop
    nop
    sbc c
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    xor c
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld c, c
    inc b
    jr nc, jr_06b_5fa9

    rst $20
    ld h, b
    rlca
    ld h, c

jr_06b_5fa9:
    nop
    nop
    xor l
    ld e, a
    ld h, [hl]
    ld b, a
    ld c, h
    jr jr_06b_6013

    ld d, h
    ld c, c
    sub c
    ld d, e
    ld h, e
    ld h, c
    nop
    add b
    and a
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and h
    and b
    or e
    and a
    and h
    or c
    call nc, $a04f
    or d
    ld a, a
    and l
    xor b
    xor l
    and h
    ld a, a
    and b
    or d
    ld a, a
    and h
    or l
    and h
    or c
    add sp, $57
    nop
    adc b
    or e
    call nc, $b27f
    or h
    xor l
    xor l
    cp b
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
    jp nc, $a07f

    xor e
    xor e
    ld a, a
    or [hl]
    and h
    or e
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and b
    xor b
    xor l
    or d
    db $f4
    ld c, a
    xor b
    or e
    call nc, $a77f
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a

jr_06b_6013:
    and [hl]
    and h
    or e
    ld d, l
    xor b
    and [hl]
    xor l
    xor b
    or e
    xor b
    xor [hl]
    xor l
    ld [hl], l
    ld d, a
    nop
    add a
    xor h
    xor h
    xor h
    ld [hl], l
    ld a, a
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
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld [hl], l
    ld d, a
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
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    and l
    or c
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    xor l
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or c
    or h
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
    ld c, a
    or [hl]
    xor b
    xor l
    and e
    rst $20
    ld d, a
    nop
    add c
    xor e
    xor [hl]
    or [hl]
    xor l
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
    or e
    and a
    and h
    ld c, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    cp b
    and h
    and b
    or c
    ld a, a
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    and l
    and b
    or d
    and a
    xor b
    xor [hl]
    xor l
    ld c, a
    xor a
    xor [hl]
    xor e
    xor b
    and d
    cp b
    add sp, $57
    nop
    sub d
    or e
    and h
    xor a
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or e
    and b
    xor d
    and h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sub e
    and a
    and b
    or e
    call nc, $a77f
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    sub e
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
    and l
    xor b
    or c
    and h
    db $e3
    ld c, a
    and c
    or c
    and h
    and b
    or e
    and a
    and h
    or c
    ld a, a
    xor b
    xor l
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    db $f4
    ld d, l
    or e
    and a
    and b
    or e
    call nc, $ac7f
    and h
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
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
    ld c, a
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
    add h
    ld d, c
    adc c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    or e
    and b
    xor b
    or c
    or d
    add sp, $57
    nop
    nop
    ld bc, $3401
    ld bc, $5503
    nop
    ld bc, $310d
    nop
    or l
    ld e, a
    inc b
    ld a, [hl-]
    ld c, $32
    rlca
    nop
    rst $38
    rst $38
    add d
    ld [bc], a
    ld h, l
    ld e, a
    rst $38
    rst $38
    daa
    dec bc
    db $10
    ld [$ff00], sp
    rst $38
    sub d
    inc bc
    ld a, c
    ld e, a
    rst $38
    rst $38
    daa
    ld a, [bc]
    add hl, hl
    ld b, $00
    rst $38
    rst $38
    sub d
    ld bc, $5f8d
    rst $38
    rst $38
    ld a, [hl-]
    rrca
    rra
    rlca
    nop
    rst $38
    rst $38
    add d
    inc bc
    and c
    ld e, a
    rst $38
    rst $38
    nop
    nop
    ld [bc], a
    inc b
    jr @+$0a

    inc d
    ld h, d
    ld b, c
    ld h, d
    nop
    nop
    call c, Call_06b_6661
    ld b, a
    ld c, h
    ld e, b
    ld h, d
    ld d, h
    ld c, c
    sub c
    add e
    inc b
    dec [hl]
    ld b, $ce
    ld h, d
    ld b, $63
    nop
    nop
    ldh a, [$61]
    ld h, [hl]
    ld b, a
    ld c, h
    jr nz, jr_06b_6258

    ld d, h
    ld c, c
    sub c
    add h
    inc b
    dec [hl]
    rlca
    ld e, [hl]
    ld h, e
    ld h, [hl]
    ld h, e
    nop
    nop
    inc b
    ld h, d
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, c
    ld h, e
    ld d, h
    ld c, c
    sub c
    ld d, e
    add h
    ld h, e
    ld a, [de]
    ld bc, $00f1
    ld [bc], a
    nop
    adc b
    jp nc, $b17f

    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
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
    or e
    and a
    and b
    or e
    ld c, a
    xor [hl]
    xor l
    and h
    ld [hl], l
    ld d, a

jr_06b_6258:
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
    and b
    ld c, a
    or d
    xor a
    and h
    and d
    xor b
    and l
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    or e
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
    or c
    and b
    xor b
    or d
    and h
    db $f4
    ld a, a
    xor a
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld d, c
    and l
    xor b
    or c
    or d
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld a, a
    or d
    or [hl]
    xor b
    or e
    and d
    and a
    ld c, a
    xor b
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
    sub e
    and a
    and b
    or e
    call nc, $a77f
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld c, a
    xor b
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
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
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or [hl]
    xor b
    xor l
    add sp, $51
    adc e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    jp nc, $b14f

    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    add b
    or [hl]
    or [hl]
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
    xor [hl]
    xor [hl]
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
    and a
    and h
    and b
    or c
    and e
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    and b
    or e
    ld a, a
    adc h
    sub e
    add sp, -$74
    adc [hl]
    adc [hl]
    adc l
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
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    or e
    and a
    and h
    cp b
    ld a, a
    and c
    and h
    and $57
    nop
    sub h
    xor h
    ld [hl], l
    ld c, a
    adc b
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    ld [hl], l
    adc b
    pop de
    xor e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
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
    add h
    ld d, c
    adc c
    or h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or h
    xor a
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    or e
    and b
    xor b
    or c
    or d
    add sp, $57
    nop
    nop
    ld bc, $0205
    ld [bc], a
    inc bc
    ld d, l
    nop
    ld [bc], a
    rlca
    inc bc
    nop
    inc c
    ld h, d
    inc bc
    ld b, $07
    ld de, $0462
    daa
    ld b, $10
    ld b, $00
    rst $38
    rst $38
    sub d
    inc bc
    ret nc

    ld h, c
    rst $38
    rst $38
    jr z, jr_06b_63d9

    ld [$0008], sp
    rst $38
    rst $38
    and d
    inc b
    db $e4
    ld h, c
    rst $38

jr_06b_63d9:
    rst $38
    jr z, jr_06b_63e5

    ld h, $09
    nop
    rst $38
    rst $38
    and d
    inc b
    ld hl, sp+$61

jr_06b_63e5:
    rst $38
    rst $38
    ld d, h
    inc c
    dec e
    ld bc, $ff00
    rst $38
    ld bc, $0f00
    ld h, d
    add a
    rlca
    nop
    nop
    inc [hl]
    dec b
    inc l
    ld de, $6421
    dec hl
    ld h, h
    nop
    nop
    ld [bc], a
    ld h, h
    ld h, [hl]
    ld b, a
    ld c, h
    dec sp
    ld h, h
    ld d, h
    ld c, c
    sub c
    rst $08
    inc b
    dec sp
    inc bc
    ld l, b
    ld h, h
    adc d
    ld h, h
    nop
    nop
    ld d, $64
    ld h, [hl]
    ld b, a
    ld c, h
    xor c
    ld h, h
    ld d, h
    ld c, c
    sub c
    ld d, e
    call c, $0064
    add a
    and b
    and a
    and b
    and a
    and b
    and a
    rst $20
    ld d, a
    nop
    add a
    and b
    and a
    and b
    and a
    and b
    db $e3
    and a
    and b
    and d
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    add a
    and b
    cp b
    ld a, a
    and l
    and h
    or l
    and h
    or c
    ld a, a
    xor b
    or d
    ld c, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
    ld a, a
    or d
    xor l
    and h
    and h
    cp c
    and h
    rst $20
    ld d, l
    add b
    and a
    and b
    and a
    and b
    and a
    db $e3
    add d
    add a
    adc [hl]
    adc [hl]
    rst $20
    ld d, a
    nop
    sbc b
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
    db $f4
    ld c, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    adc h
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc b
    ret nc

    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and b
    cp b
    ld c, a
    or e
    and a
    and b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    xor e
    xor [hl]
    or d
    or d
    add sp, $57
    nop
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
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
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld [hl], l
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    or $51
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
    ld a, a
    db $e3
    ld c, a
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, a
    nop
    nop
    ld bc, $0601
    ld [bc], a
    inc bc
    ld d, a
    nop
    ld bc, $0503
    nop
    ld e, $64
    ld [bc], a
    dec l
    ld b, $0b
    ld [$ff00], sp
    rst $38
    or d
    inc bc
    or $63
    rst $38
    rst $38
    dec l
    inc c
    dec d
    ld [$ff00], sp
    rst $38
    add d
    inc bc
    ld a, [bc]
    ld h, h
    rst $38
    rst $38
    nop
    ld bc, $3305
    ld h, l
    ld [hl], $40
    nop
    sub b
    ld d, e
    ld a, [hl-]
    ld h, l
    nop
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
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub h
    xor e
    or e
    xor b
    xor h
    and b
    or e
    and h
    ld a, a
    add [hl]
    xor [hl]
    and b
    xor e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, c
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
    ld a, a
    add a
    sub b
    ld d, a
    nop
    nop
    inc b
    dec b
    add hl, bc
    ld bc, $0210
    dec b
    ld a, [bc]
    ld [bc], a
    db $10
    ld [bc], a
    dec c
    add hl, bc
    ld a, [bc]
    inc bc
    ld e, e
    dec c
    ld a, [bc]
    ld a, [bc]
    inc bc
    ld e, e
    nop
    ld bc, $0b07
    nop
    scf
    ld h, l
    nop
    nop
    nop
    inc c
    nop
    nop
    ld d, c
    and b
    ld h, l
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
    or [hl]
    and a
    xor [hl]
    ld a, a
    or d
    and h
    and h
    xor d
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and d
    xor e
    xor b
    xor h
    and c
    ld a, a
    adc h
    sub e
    add sp, $51
    sub d
    adc b
    adc e
    sub l
    add h
    sub c
    ld a, a
    and e
    and h
    or d
    xor a
    xor b
    or e
    and h
    ld a, a
    xor b
    or e
    or d
    ld c, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    or d
    ld [hl], l
    ld d, c
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or e
    or c
    or h
    or d
    or e
    and h
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
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
    ld d, c
    and l
    and h
    and h
    xor e
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, a
    nop
    nop
    inc bc
    rlca
    inc bc
    ld bc, $0213
    rlca
    inc b
    ld bc, $0213
    rlca
    nop
    ld bc, $0114
    nop
    nop
    ld [bc], a
    scf
    dec b
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    sbc d
    ld h, l

Call_06b_6642:
    rst $38
    rst $38
    jr nc, jr_06b_664f

    dec b
    ld [$ff12], sp
    rst $38
    nop
    nop
    sbc l
    ld h, l

jr_06b_664f:
    rst $38

Jump_06b_6650:
    rst $38
    ld bc, $6657
    nop
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $0074
    add hl, bc
    ld l, a
    ld h, [hl]
    ld c, h

Call_06b_6661:
    add d
    ld h, [hl]
    ld d, l
    sbc [hl]
    rst $28
    ld bc, $6d08
    ld h, [hl]
    inc sp
    ld [hl], h
    nop
    ld c, c
    sub c
    ld c, h
    ldh a, [$66]
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld d, d
    ld h, a
    add h
    ld d, $00
    ld d, h
    ld c, c
    sub c
    inc c
    inc bc
    nop
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and e
    and h
    and b
    or c
    add sp, $4f
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor h
    and h
    add sp, $51
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    or e
    and h
    xor e
    xor e
    ld c, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    and h
    add sp, $51
    adc b
    pop de
    xor e
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
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor d
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld d, l
    or d
    and h
    and d
    or c
    and h
    or e
    add sp, $7f
    adc a
    xor e
    and h
    and b
    or d
    and h
    and $57
    nop
    adc b
    or e
    call nc, $b37f
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    or e
    xor [hl]
    xor a
    ld a, a
    and d
    and h
    xor e
    and h
    and c
    or c
    xor b
    or e
    cp b
    add sp, $51
    add h
    or l
    and h
    or c
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    db $f4
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and d
    and a
    and b
    or d
    and h
    ld a, a
    xor h
    and h
    add sp, $51
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
    and c
    and h
    ld c, a
    xor e
    and h
    and l
    or e
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld [hl], l
    ld d, a
    nop
    add l
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    sbc h
    ld a, a
    add l
    and h
    and h
    or c
    xor [hl]
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $0113
    rlca
    inc bc
    ld bc, $0113
    nop
    ld [bc], a
    ld bc, $0000
    ld a, a
    ld h, [hl]
    ld bc, $0001
    ld a, a
    ld h, [hl]
    ld [bc], a
    inc h
    rlca
    ld b, $06
    nop
    rst $38
    rst $38
    and b
    nop
    ld e, b
    ld h, [hl]
    rst $38
    rst $38
    sbc [hl]
    add hl, bc
    ld a, [bc]
    ld d, $00
    rst $38
    rst $38
    or b
    nop
    ld [hl], l
    ld h, [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
