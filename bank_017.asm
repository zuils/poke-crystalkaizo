; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $017", ROMX[$4000], BANK[$17]

    nop
    nop
    ld d, c
    db $d3
    ld b, c
    ld d, c
    ld l, $42
    ld l, e
    ld b, a
    ld sp, $0057
    add hl, bc
    dec e
    ld b, b
    ld c, h
    ld h, l
    ld b, d
    ld d, l
    sbc [hl]
    ld c, c
    ld bc, $2108
    ld b, b
    inc sp
    ld d, a
    nop
    ld c, h
    dec c
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld e, l
    ld b, e
    ld d, c
    adc a
    ld b, e
    ld d, c
    cp h
    ld b, e
    ld l, e
    ld b, a
    ld c, h
    ld d, $44
    add h
    dec [hl]
    nop
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld a, [hl+]
    ld b, h
    ld d, h
    ld c, c
    db $76
    ld c, $00
    sub c
    ld l, h
    inc b
    rla
    ld bc, $447e
    db $e4
    ld b, h
    nop
    nop
    ld c, [hl]
    ld b, b
    ld e, $17
    dec b
    ld h, [hl]
    ld b, a
    inc [hl]
    ld h, l
    nop
    add hl, bc
    adc b
    ld b, b
    ld a, [hl+]
    dec b
    add hl, bc
    ld [$3141], sp
    ld e, a
    ld [bc], a
    add hl, bc
    ld [hl], c
    ld b, b
    ld c, h
    di
    ld b, h
    ld d, l
    inc sp
    ld e, a
    ld [bc], a
    nop
    db $fc
    ld b, b
    inc bc
    ld [hl], h
    ld b, b
    nop
    nop
    ld b, c
    sub a
    dec b
    ld b, $01
    db $10
    ld b, c
    ld b, $02
    inc c
    ld b, c
    ld b, e
    rla
    ld bc, $0000
    inc b
    ld b, c
    inc bc
    ld [$0041], sp
    inc d
    ld b, c
    ld h, h
    db $e4
    ld b, h
    nop
    nop
    add hl, de
    ld a, [c]
    reti


    ld b, $04
    and a
    ld b, b
    ld b, $03
    xor l
    ld b, b
    ld b, $02
    or e
    ld b, b
    ld b, $01
    cp c
    ld b, b
    ld b, $00
    cp a
    ld b, b
    ld sp, $00cd
    add hl, bc
    di
    ld b, b
    ld sp, $0044
    add hl, bc
    and $40
    ld sp, $0021
    add hl, bc
    reti


    ld b, b
    inc [hl]
    ld b, a
    nop
    add hl, bc
    call z, Call_017_5e40
    rla
    ld bc, $605f
    dec de
    ld a, [c]
    reti


    ld bc, $6535
    nop
    sub c
    ld e, [hl]
    rla
    dec c
    ld e, a
    ld h, b
    dec de
    ld a, [c]
    reti


    ld [bc], a
    dec [hl]
    ld h, l
    nop
    sub c
    ld e, [hl]
    rla
    ld c, $5f
    ld h, b
    dec de
    ld a, [c]
    reti


    inc bc
    dec [hl]
    ld h, l
    nop
    sub c
    ld e, [hl]
    rla
    inc de
    ld e, a
    ld h, b
    dec de
    ld a, [c]
    reti


    inc b
    dec [hl]
    ld h, l
    nop
    sub c
    ld e, [hl]
    rla
    inc d
    ld e, a
    ld h, b
    dec [hl]
    ld h, l
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
    call $3b04
    ld bc, $45e9
    add hl, sp
    ld b, [hl]
    nop
    nop
    inc h
    ld b, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld b, l
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    reti


    inc b
    ld a, $01
    ld d, d
    ld b, l
    sbc [hl]
    ld b, l
    nop
    nop
    jr c, jr_017_4179

    ld e, $17
    ld b, $66
    ld b, a
    inc [hl]
    ld a, l
    nop
    add hl, bc
    ld [hl], a
    ld b, c
    ld a, [hl+]
    ld b, $09
    sbc e
    ld b, c
    inc l
    or a
    ld [$4189], sp
    ld sp, $0261
    add hl, bc
    ld h, b
    ld b, c
    ld c, h
    cp l
    ld b, l
    ld d, l
    inc sp
    ld h, c
    ld [bc], a
    nop
    adc a
    ld b, c
    inc bc
    ld h, e
    ld b, c
    nop
    sub e
    ld b, c
    sub a
    ld b, $06
    ld bc, $41a3
    ld b, $02
    sbc a
    ld b, c
    ld b, e
    ld a, $01
    nop
    nop
    sub a
    ld b, c
    inc bc
    sbc e
    ld b, c
    nop
    and a

jr_017_4179:
    ld b, c
    sbc [hl]
    inc h
    ld bc, $8608
    ld b, c
    dec [hl]
    ld a, l
    nop
    inc bc
    sbc e
    ld b, c
    inc bc
    xor e
    ld b, c
    ld c, h
    adc d
    ld b, [hl]
    ld d, h
    ld c, c
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
    jr z, jr_017_41a6

jr_017_41a6:
    sub c
    inc c
    ld a, [hl+]
    nop
    sub c
    inc c
    dec hl
    nop
    sub c
    jr jr_017_41b6

    add hl, de
    inc b
    db $e4
    ld b, [hl]
    dec d

jr_017_41b6:
    ld b, a
    nop
    nop
    cp e
    ld b, c
    ld h, [hl]
    ld b, a
    ld c, h
    dec e
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld d, b
    ld b, a
    ld d, e
    ld [hl], c
    ld b, a
    ld d, e
    add $47
    dec c
    ld bc, $01db
    add h
    nop
    ld h, $00
    adc e
    xor [hl]
    xor [hl]
    xor d
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
    and c
    and b
    and [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    xor a
    or c
    xor b
    xor l
    or e
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor h
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
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld d, c
    ld d, h
    add e
    add h
    sub a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    or e
    or h
    and d
    xor d
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and b
    and [hl]
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
    adc h
    add b
    adc b
    adc e
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
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
    add sp, $55
    adc b
    or e
    ld a, a
    and d
    and a
    and h
    and h
    or c
    or d
    ld a, a
    xor h
    and h
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    adc a
    and b
    cp b
    ld a, a
    and b
    or e
    or e
    and h
    xor l
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld c, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    rst $20
    ld d, c
    ld [hl], l
    adc [hl]
    xor [hl]
    xor a
    or d
    db $f4
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
    or b
    or h
    xor b
    or e
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, c
    and b
    ld a, a
    or e
    and h
    and b
    and d
    and a
    and h
    or c
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    xor b
    xor h
    and h
    add sp, $51
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
    and b
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
    db $d3
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor [hl]
    ld a, a
    and a
    and b
    or c
    and e
    db $f4
    ld a, a
    adc b
    ld d, c
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
    add sp, $57
    nop
    adc e
    and h
    or e
    ld a, a
    and b
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
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    sub b
    sub h
    adc b
    add d
    adc d
    ld a, a
    add d
    adc e
    add b
    sub [hl]
    add sp, $51
    sub d
    xor [hl]
    xor h
    and h
    or e
    xor b
    xor h
    and h
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    or d
    or e
    or c
    xor b
    xor d
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    ld d, l
    and e
    or h
    or c
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
    add sp, $57
    nop
    adc b
    jp nc, $af7f

    xor e
    and b
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    or d
    or e
    xor b
    and d
    xor d
    and h
    or c
    or d
    ld a, a
    adc b
    ld a, a
    xor a
    or c
    xor b
    xor l
    or e
    and h
    and e
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    add e
    add h
    sub a
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
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    and [hl]
    or h
    cp b
    call nc, Call_017_547f
    add e
    add h
    sub a
    ld d, l
    or d
    or e
    xor b
    and d
    xor d
    and h
    or c
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor l
    add sp, $57
    nop
    adc b
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    adc a
    add b
    sub c
    adc d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld d, c
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and [hl]
    xor [hl]
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
    add sp, $51
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, a
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
    ld [hl], l
    ld d, a
    nop
    adc a
    add h
    sub c
    sub d
    adc b
    add b
    adc l
    sbc h
    ld a, a
    add l
    or h
    and l
    or h
    or d
    and a
    and b
    and b
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $af7f

    or c
    xor b
    xor l
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    xor h
    cp b
    ld a, a
    ld d, h
    add e
    add h
    sub a
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor a
    or c
    xor b
    xor l
    or e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    or d
    or e
    or h
    and l
    and l
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, c
    adc h
    add b
    adc b
    adc e
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
    adc a
    add d
    ld c, a
    add c
    adc [hl]
    sub a
    add h
    sub d
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
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
    or d
    ld a, a
    and e
    and h
    and h
    xor a
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
    or e
    xor b
    xor e
    xor e
    ld c, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    or [hl]
    and h
    ld d, l
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    add c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
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
    and e
    xor [hl]
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
    db $e3
    or [hl]
    and a
    and b
    or e
    and $57
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
    add sp, $51
    add l
    xor [hl]
    or c
    ld a, a
    and h
    or a
    and b
    xor h
    xor a
    xor e
    and h
    ld [hl], l
    ld d, c
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
    ei
    or $7f
    xor d
    xor b
    xor l
    and e
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    sub e
    adc h
    or d
    add sp, $51
    sub e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    or h
    xor a
    ld a, a
    and l
    and b
    or d
    or e
    and h
    or c
    add sp, $57
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
    or c
    and h
    ld c, a
    or d
    xor b
    xor h
    xor a
    xor e
    cp b
    ld a, a
    and e
    and b
    or c
    xor e
    xor b
    xor l
    and [hl]
    add sp, $51
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
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or h
    and e
    ld a, a
    xor h
    cp b
    ld d, l
    and e
    and b
    or c
    xor e
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor h
    and h
    add sp, $57
    nop
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
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    ld c, a
    xor a
    or c
    xor b
    and e
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    or d
    and b
    cp b
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
    and b
    or c
    and h
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld d, l
    and d
    or h
    or e
    and h
    db $f4
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and h
    ld a, a
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
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, l
    and e
    xor b
    or d
    xor e
    xor b
    xor d
    and h
    ld a, a
    or h
    or d
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
    and c
    and h
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    ld a, a
    add l
    add b
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    add sp, $57
    nop
    adc h
    db $e3
    xor h
    cp b
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
    ld c, a
    and c
    or h
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
    or [hl]
    xor b
    xor l
    ld d, c
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    xor e
    cp b
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    xor d
    and h
    and h
    xor a
    or d
    ld a, a
    and b
    ld c, a
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
    rst $20
    ld d, c
    adc b
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    and h
    xor l
    and e
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, a
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld [hl], l
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    and $7f
    sub [hl]
    and a
    cp b
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    or e
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    ld a, a
    xor h
    and h
    and $51
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $57
    nop
    ld [hl], l
    add a
    xor h
    xor h
    xor h
    ld [hl], l
    ld d, a
    nop
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
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld c, a
    or d
    or e
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    ld a, a
    xor h
    and h
    ld d, l
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    adc b
    jp nc, $a27f

    or h
    or e
    and h
    rst $20
    ld d, a
    nop
    sub c
    add h
    adc e
    add b
    sub a
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    sub d
    sub b
    sub h
    add b
    sub c
    add h
    ld c, a
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    add b
    adc e
    ld a, a
    adc a
    add b
    sub c
    adc d
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
    xor b
    or d
    ld c, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    and $51
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    ld c, a
    xor b
    xor l
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
    add sp, $51
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    add b
    adc e
    ld a, a
    adc a
    add b
    sub c
    adc d
    ld c, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    ldh [$92], a
    ld a, a
    adc [hl]
    add l
    add l
    adc b
    add d
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
    adc a
    or c
    xor b
    xor l
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    and c
    cp b
    ld c, a
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
    ld a, a
    or e
    and a
    and h
    xor l
    ld d, l
    xor a
    or c
    and h
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    sub d
    sub e
    add b
    sub c
    sub e
    add sp, $57
    nop
    nop
    inc b
    ld [de], a
    ld hl, $0a01
    ld de, $2113
    ld [bc], a
    ld a, [bc]
    ld de, $0a2f
    ld bc, $0f0a
    cpl
    dec bc
    ld [bc], a
    ld a, [bc]
    rrca
    nop
    inc b
    inc l
    ld c, $00
    jp $1f41


    dec de
    nop
    add $41
    ld d, $14
    rlca
    ret nc

    ld b, c
    inc b
    inc c
    nop
    ret


    ld b, c
    ld c, $28
    inc e
    inc de
    dec b
    ld bc, $ffff
    and b
    nop
    ld [bc], a
    ld b, b
    rst $38
    rst $38
    ld l, $08
    ld [de], a
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    dec b
    ld b, b
    rst $38
    rst $38
    nop
    inc l
    rra
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld [$ff40], sp
    rst $38
    daa
    dec l
    rrca
    ld [$ff00], sp
    rst $38
    nop
    nop
    inc hl
    ld b, b
    rst $38
    rst $38
    daa
    dec l
    ld c, $06
    nop
    rst $38
    rst $38
    add b
    nop
    ld h, $40
    rst $38
    rst $38
    add hl, hl
    dec l
    dec d
    ld [bc], a
    ld hl, $ffff
    nop
    nop
    add hl, hl
    ld b, b
    rst $38
    rst $38
    add d
    inc l
    ld e, $16
    nop
    rst $38
    rst $38
    nop
    nop
    inc l
    ld b, b
    rst $38
    rst $38
    daa
    ld b, $0a
    ld [$ff00], sp
    rst $38
    sub d
    inc bc
    ld b, d
    ld b, b
    rst $38
    rst $38
    ld l, $26
    ld b, $06
    nop
    rst $38
    rst $38
    add d
    ld [bc], a
    inc l
    ld b, c
    rst $38
    rst $38
    dec l
    inc c
    ld a, [hl+]
    ld [$ff00], sp
    rst $38
    add d
    ld [bc], a
    jr jr_017_48f5

    rst $38
    rst $38
    jr z, jr_017_48bd

    inc hl
    ld [$ff00], sp
    rst $38

jr_017_48bd:
    sub d
    inc bc
    xor a
    ld b, c
    rst $38
    rst $38
    ld d, h
    ld d, $06
    ld bc, $ff00
    rst $38
    ld bc, $cc00
    ld b, c
    ld e, b
    ld b, $03
    ld a, [bc]
    ld e, $06
    nop
    rst $38
    rst $38
    nop
    nop
    scf
    ld b, b
    rst $38
    rst $38
    ld d, h
    dec e
    daa
    ld bc, $ff00
    rst $38
    ld bc, $ce00
    ld b, c
    ld e, c
    ld b, $00
    nop
    ld l, e
    ld b, a
    ld c, h
    ld c, h
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld l, e

jr_017_48f5:
    ld b, a
    ld c, h
    ld [hl], e
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    and e
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    call z, Call_017_5449
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    dec d
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld d, d
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    adc a
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ret z

    ld c, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    dec h
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld h, h
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld d, e
    and a
    ld c, e
    ld d, e
    ret z

    ld c, e
    ld d, e
    dec e
    ld c, h
    dec c
    ld bc, $01db
    add h
    nop
    ld h, $00
    add e
    adc [hl]
    adc l
    sbc h
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
    or [hl]
    xor b
    xor l
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, l
    xor h
    and h
    add sp, $57
    nop
    add h
    add e
    sbc h
    ld a, a
    adc h
    cp b
    ld a, a
    adc a
    add b
    sub c
    add b
    sub d
    add h
    add d
    sub e
    ld c, a
    xor a
    or h
    or e
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    sub d
    adc a
    adc [hl]
    sub c
    add h
    add sp, $57
    nop
    adc l
    adc b
    add d
    adc d
    sbc h
    ld a, a
    adc b
    jp nc, $b17f

    and b
    xor b
    or d
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    and b
    or d
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor [hl]
    or c
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
    sub [hl]
    adc b
    adc e
    adc e
    adc b
    add b
    adc h
    sbc h
    ld a, a
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld c, a
    and d
    xor [hl]
    xor l
    and d
    and h
    or c
    xor l
    and h
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    or [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    add sp, $51
    adc b
    jp nc, $a97f

    or h
    or d
    or e
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
    or c
    and b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add c
    add h
    adc l
    adc l
    sbc b
    sbc h
    ld a, a
    sub d
    or d
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld c, a
    or d
    and d
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    sub d
    add d
    sbc b
    sub e
    add a
    add h
    sub c
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    or e
    and b
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor e
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    add c
    add b
    sub c
    sub c
    sbc b
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
    ld c, a
    or [hl]
    and h
    and b
    xor d
    and h
    xor l
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    or e
    and a
    or c
    xor [hl]
    or [hl]
    ld c, a
    and b
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $57
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
    xor e
    xor [hl]
    or l
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
    add sp, $51
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
    xor h
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
    xor h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    adc c
    adc [hl]
    sub d
    add a
    sbc h
    ld a, a
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
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
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    ld a, a
    and c
    and b
    and c
    cp b
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    adc b
    jp nc, $a64f

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
    or d
    and h
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
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld c, a
    and [hl]
    xor [hl]
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
    ld a, a
    or e
    xor [hl]
    ld d, c
    and d
    and a
    and b
    or e
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc d
    adc b
    adc a
    adc a
    sbc h
    ld a, a
    adc b
    sub $a4
    ld a, a
    or d
    or e
    or h
    and e
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
    and c
    or h
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    ld a, a
    xor e
    xor [hl]
    or e
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
    or [hl]
    xor b
    xor l
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or h
    or c
    and h
    add sp, $57
    nop
    sub c
    add h
    adc e
    add b
    sub a
    add b
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    sub d
    sub b
    sub h
    add b
    sub c
    add h
    ld c, a
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    add b
    adc e
    ld a, a
    adc a
    add b
    sub c
    adc d
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
    xor b
    or d
    ld c, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    and $51
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    ld c, a
    xor b
    xor l
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
    add sp, $51
    adc l
    add b
    sub e
    adc b
    adc [hl]
    adc l
    add b
    adc e
    ld a, a
    adc a
    add b
    sub c
    adc d
    ld c, a
    sub [hl]
    add b
    sub c
    add e
    add h
    adc l
    ldh [$92], a
    ld a, a
    adc [hl]
    add l
    add l
    adc b
    add d
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
    adc a
    or c
    xor b
    xor l
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    and c
    cp b
    ld c, a
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
    ld a, a
    or e
    and a
    and h
    xor l
    ld d, l
    xor a
    or c
    and h
    or d
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    sub d
    sub e
    add b
    sub c
    sub e
    add sp, $57
    nop
    nop
    inc b
    ld [de], a
    ld hl, $0a01
    ld de, $2113
    ld bc, $110a
    cpl
    ld a, [bc]
    ld bc, $0f0a
    cpl
    dec bc
    ld bc, $0f0a
    nop
    inc b
    inc l
    ld c, $00
    inc a
    ld c, c
    rra
    dec de
    nop
    ccf
    ld c, c
    cpl
    ld b, $07
    ld c, c
    ld c, c
    inc b
    inc c
    nop
    ld b, d
    ld c, c
    inc c
    daa
    ld hl, $0217
    ld [hl+], a
    rst $38
    rst $38
    add b
    nop
    db $ec
    ld c, b
    ld d, $07
    daa
    ld a, [de]
    jr nz, jr_017_4c9e

    ld [hl+], a
    rst $38

jr_017_4c9e:
    rst $38
    and b
    nop
    db $f4
    ld c, b
    rla
    rlca
    inc l
    ld d, $0d
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    db $fc
    ld c, b
    jr jr_017_4cb9

    dec l
    ld de, $040b
    ld bc, $ffff

jr_017_4cb9:
    or b
    nop
    inc b
    ld c, c
    add hl, de
    rlca
    daa
    dec c
    dec de
    inc bc
    nop
    rst $38
    rst $38
    add b
    nop
    inc c
    ld c, c
    ld a, [de]
    rlca
    daa
    ld de, $021f
    inc sp
    rst $38
    rst $38
    and b
    nop
    inc d
    ld c, c
    dec de
    rlca
    jr z, jr_017_4cf6

    dec bc
    dec b
    ld [bc], a
    rst $38
    rst $38
    sub b
    nop
    inc e
    ld c, c
    inc e
    rlca
    daa
    rra
    rrca
    ld [bc], a
    ld de, $ffff
    add b
    nop
    inc h
    ld c, c
    dec e
    rlca
    daa
    inc c
    inc d

jr_017_4cf6:
    ld [bc], a
    ld de, $ffff
    and b
    nop
    inc l
    ld c, c
    ld e, $07
    daa
    ld h, $15
    ld [bc], a
    inc sp
    rst $38
    rst $38
    sub b
    nop
    inc [hl]
    ld c, c
    rra
    rlca
    ld d, h
    db $10
    daa
    ld bc, $ff00
    rst $38
    ld bc, $4500
    ld c, c
    ld e, b
    ld b, $54
    cpl
    dec b
    ld bc, $ff00
    rst $38
    ld bc, $4700
    ld c, c
    ld e, c
    ld b, $00
    nop
    ld l, e
    ld b, a
    inc [hl]
    inc de
    nop
    add hl, bc
    scf
    ld c, l
    ld c, h
    ld [hl], a
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    add c
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    cp d
    ld c, [hl]
    ld d, l
    rrca
    ld d, e
    nop
    ld [$4d4c], sp
    rrca
    ld d, h
    nop
    rrca
    ld d, l
    nop
    inc [hl]
    ld c, [hl]
    nop
    add hl, bc
    add h
    ld c, l
    ld c, h
    ld a, [hl-]
    ld c, a
    ld d, l
    ld c, c
    ld l, c
    ld b, $71
    ld c, [hl]
    ld b, a
    ld c, h
    ld e, d
    ld c, a
    ld d, l
    add [hl]
    ld c, h
    ld a, c
    ld c, a
    add l
    add hl, bc
    nop
    add [hl]
    ld d, l
    rrca
    ld d, d
    nop
    ld c, c
    ld l, c
    ld b, $74
    ld c, [hl]
    ld b, a
    ld b, $01
    adc d
    ld c, l
    ld b, $02
    sbc a
    ld c, l
    ld b, $03
    or h
    ld c, l
    inc bc
    ret


    ld c, l
    ld c, h
    ld a, [hl]
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    or l
    ld c, a
    add l
    sbc c
    nop
    add [hl]
    ld d, l
    rra
    ld bc, $0801
    rst $08
    ld c, l
    ld b, l
    ld [hl], $4e
    nop
    inc bc
    add h
    ld c, l
    ld c, h
    inc hl
    ld d, b
    add l
    sbc b
    nop
    add [hl]
    ld d, l
    rra
    add hl, sp
    ld bc, $cf08
    ld c, l
    ld b, l
    ld [hl], $4e
    nop
    inc bc
    add h
    ld c, l
    ld c, h
    db $76
    ld d, b
    add l
    sub h
    nop
    add [hl]
    ld d, l
    rra
    ld a, $01
    ld [$4dcf], sp
    ld b, l
    ld [hl], $4e
    nop
    inc bc
    add h
    ld c, l
    ld c, h
    ret nz

    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    and $50
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    inc [hl]
    nop
    nop
    add hl, bc
    dec l
    ld c, [hl]
    ld c, h
    dec l
    ld d, c
    ld c, [hl]
    ld [$4e4b], sp
    ld c, h
    ld a, [c]
    ld d, c
    ld c, [hl]
    ld [$4e42], sp
    add l
    daa
    nop
    add [hl]
    ld c, h
    ld sp, $4e52
    ld [$4e42], sp
    add l
    daa
    nop
    add [hl]
    ld c, h
    add d
    ld d, d
    ld c, [hl]
    add hl, bc
    ld b, d
    ld c, [hl]
    add l
    daa
    nop
    add [hl]
    ld c, h
    cp h
    ld d, d
    ld c, [hl]
    ld [$4e42], sp
    add l
    daa
    nop
    add [hl]
    ld c, h
    ld c, $53
    ld c, [hl]
    add hl, bc
    ld b, d
    ld c, [hl]
    add l
    daa
    nop
    add [hl]
    ld c, h
    ld a, e
    ld d, e
    ld d, l
    ld b, h
    inc sp
    ld c, [hl]
    ld bc, $3e00
    ld c, [hl]
    ld c, h
    ret nz

    ld d, e
    ld d, l
    ld [hl], $00
    nop
    ld c, h
    push hl
    ld d, e
    ld d, h
    ld c, c
    sub c
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    add d
    add b
    sub c
    add e
    ld d, b
    inc c
    cpl
    nop
    sub c
    add l
    add hl, de
    nop
    ld c, h
    add hl, bc
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, e
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld d, c
    db $76
    ld d, h
    ld d, c
    xor h
    ld d, h
    di
    inc b
    rra
    inc bc
    db $f4
    ld d, h
    add d
    ld d, l
    nop
    nop
    ld h, e
    ld c, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    and d
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld d, e
    rst $20
    ld d, l
    ld d, e
    ld sp, $0f56
    ld bc, $0e47
    ld bc, $0047
    sub [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    add sp, $7f
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    or [hl]
    and h
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld d, l
    xor [hl]
    and l
    and l
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    or c
    or d
    ld d, l
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $57
    nop
    add a
    xor b
    db $f4
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    sub h
    add d
    adc d
    sbc b
    ld a, a
    adc l
    sub h
    adc h
    db $e3
    ld d, l
    add c
    add h
    sub c
    ld a, a
    sub d
    add a
    adc [hl]
    sub [hl]
    and $51
    sub [hl]
    and b
    xor l
    or e
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
    adc b
    add e
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    ld a, a
    xor [hl]
    and l
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
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor e
    or h
    and d
    xor d
    cp b
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and h
    and h
    xor d
    call nc, $887f
    add e
    ld c, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    ld bc, $d099
    nop
    add sp, $57
    nop
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
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    add sp, $57
    nop
    ld d, [hl]
    ld c, a
    ld d, [hl]
    ld d, a
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    xor l
    and h
    or a
    or e
    ld a, a
    or [hl]
    and h
    and h
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor l
    and h
    or a
    or e
    ld a, a
    adc e
    sub h
    add d
    adc d
    sbc b
    ld a, a
    adc l
    sub h
    adc h
    add c
    add h
    sub c
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
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
    ld c, a
    xor a
    and h
    or c
    and l
    and h
    and d
    or e
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld d, l
    and b
    xor e
    xor e
    ld a, a
    and l
    xor b
    or l
    and h
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    ld c, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    and h
    or c
    rst $20
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
    or [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    ld c, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld a, a
    add c
    add b
    adc e
    adc e
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    sub $a4
    ld c, a
    xor h
    and b
    or e
    and d
    and a
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld d, l
    or e
    and a
    or c
    and h
    and h
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    ld c, a
    xor a
    or c
    xor b
    cp c
    and h
    db $f4
    ld a, a
    and b
    xor l
    ld a, a
    add h
    sub a
    adc a
    add sp, $55
    sub d
    add a
    add b
    sub c
    add h
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and a
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    sub $a4
    ld c, a
    xor h
    and b
    or e
    and d
    and a
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld d, l
    or e
    or [hl]
    xor [hl]
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    add sp, $51
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor b
    or c
    and e
    ld c, a
    xor a
    or c
    xor b
    cp c
    and h
    db $f4
    ld a, a
    and b
    ld a, a
    adc a
    adc a
    ld a, a
    sub h
    adc a
    add sp, $57
    nop
    adc l
    xor [hl]
    xor a
    and h
    db $f4
    ld a, a
    xor l
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
    adc b
    add e
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    ld a, a
    xor h
    and b
    or e
    and d
    and a
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
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
    xor a
    or c
    xor b
    cp c
    and h
    add sp, $51
    adc h
    and b
    xor d
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    and c
    and b
    and d
    xor d
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
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld c, a
    or b
    or h
    xor b
    cp c
    ld a, a
    and d
    and b
    xor h
    xor a
    and b
    xor b
    and [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
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
    add sp, $51
    add b
    xor l
    or d
    or [hl]
    and h
    or c
    ld a, a
    and l
    xor b
    or l
    and h
    ld a, a
    or b
    or h
    and h
    or d
    db $e3
    ld c, a
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    and d
    xor [hl]
    or c
    or c
    and h
    and d
    or e
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, l
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    add d
    add b
    sub c
    add e
    add sp, $51
    sub d
    xor e
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
    ld d, c
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
    and b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    db $f4
    ld c, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
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
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or b
    or h
    xor b
    cp c
    and $57
    nop
    sub b
    or h
    and h
    or d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    rst $30
    sbc h
    ld d, c
    adc b
    or d
    ld a, a
    or e
    and a
    and h
    or c
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
    and a
    and b
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
    xor [hl]
    xor l
    xor e
    cp b
    ld d, l
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    xor l
    xor b
    xor l
    and [hl]
    and $57
    nop
    add d
    xor [hl]
    or c
    or c
    and h
    and d
    or e
    rst $20
    ld c, a
    sub b
    or h
    and h
    or d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    ld hl, sp-$64
    ld d, c
    adc b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or d
    or e
    and b
    or e
    and h
    xor h
    and h
    xor l
    or e
    ld c, a
    and d
    xor [hl]
    or c
    or c
    and h
    and d
    or e
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    or h
    cp b
    ld a, a
    and b
    ld c, a
    add c
    add h
    sub c
    sub c
    sbc b
    ld a, a
    and b
    or e
    ld a, a
    and b
    ld a, a
    adc h
    add b
    sub c
    sub e
    add sp, $57
    nop
    add c
    or h
    xor e
    xor e
    call nc, $a4e3
    cp b
    and h
    rst $20
    ld c, a
    sub b
    or h
    and h
    or d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    ld sp, hl
    sbc h
    ld d, c
    add e
    xor [hl]
    and h
    or d
    ld a, a
    add a
    adc h
    or $f7
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    add l
    adc e
    add b
    sub d
    add a
    and $57
    nop
    sub d
    xor [hl]
    ld a, a
    and l
    and b
    or c
    ld a, a
    or d
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld c, a
    sub b
    or h
    and h
    or d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    ld a, [$519c]
    adc b
    or d
    ld a, a
    add l
    add b
    adc e
    adc d
    adc l
    add h
    sub c
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
    ld d, c
    or [hl]
    and a
    xor [hl]
    ld a, a
    or h
    or d
    and h
    or d
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
    and $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    rst $20
    ld a, a
    sub c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
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
    and l
    xor b
    xor l
    and b
    xor e
    ld d, l
    or b
    or h
    and h
    or d
    or e
    xor b
    xor [hl]
    xor l
    sbc h
    ld d, c
    add e
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
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld c, a
    add d
    adc [hl]
    sub c
    adc l
    add h
    sub c
    call nc, $b27f
    xor e
    xor [hl]
    or e
    or d
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    add d
    add a
    add b
    sub c
    adc h
    add b
    adc l
    add e
    add h
    sub c
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or c
    and h
    and h
    xor e
    or d
    and $57
    nop
    add c
    xor b
    xor l
    and [hl]
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld c, a
    add d
    xor [hl]
    xor l
    and [hl]
    or c
    and b
    or e
    or h
    xor e
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    rst $20
    ld d, c
    add a
    and h
    or c
    and h
    call nc, $b87f
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
    ld c, a
    and b
    ld a, a
    sub c
    add b
    add e
    adc b
    adc [hl]
    ld a, a
    add d
    add b
    sub c
    add e
    rst $20
    ld d, a
    nop
    ld d, d
    call nc, Call_017_547f
    add [hl]
    add h
    add b
    sub c
    ld c, a
    and d
    and b
    xor l
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
    ld a, a
    and b
    or d
    ld d, l
    and b
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    rst $20
    ld d, a
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor [hl]
    or h
    or c
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
    adc [hl]
    and a
    db $f4
    ld a, a
    and e
    and h
    and b
    or c
    add sp, $4f
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
    ld d, c
    and [hl]
    xor [hl]
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $4f
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    or c
    cp b
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
    add sp, $7f
    adc b

Call_017_5449:
    ld a, a
    or d
    and h
    and h
    add sp, $7f
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld c, a
    or d
    and h
    and h
    ld a, a
    xor h
    and h
    ld a, a
    xor b
    and l
    ld a, a

Jump_017_5460:
    cp b
    xor [hl]
    or h
    ld d, l
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
    ld a, a
    xor h
    xor b
    xor l
    and e
    add sp, $57
    nop
    add c
    add h
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    and b

Call_017_547f:
    ld a, a
    and l
    and b
    and c
    or h
    xor e
    xor [hl]
    or h
    or d
    ld c, a
    add e
    adc c
    add sp, $51
    add a
    xor b
    or d
    ld a, a
    or d
    or [hl]
    and h
    and h
    or e
    ld a, a
    or l
    xor [hl]
    xor b
    and d
    and h
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
    xor h
    and h
    xor e
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    adc h
    add b
    sub c
    sbc b
    db $f4
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    add b
    adc e
    adc d
    add sp, $51
    adc b
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
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
    or d
    and a
    and h
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
    db $f4
    ld d, l
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    sub [hl]
    and h
    sub $a4
    ld a, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld c, a
    or e
    and b
    xor d
    and h
    xor l
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
    rst $20
    ld d, c
    adc l
    xor [hl]
    or [hl]
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
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
    ld d, c
    or e
    and a
    and h
    ld a, a
    or e
    or c
    or h
    and h
    ld a, a
    or e
    and h
    or c
    or c
    xor [hl]
    or c
    ld a, a
    xor [hl]
    and l
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
    rst $20
    ld d, c
    sub [hl]
    and h
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
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or d
    and d
    and b
    or c
    cp b
    ld a, a
    or [hl]
    and h
    ld a, a
    and b
    or c
    and h
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
    ld a, a
    sub [hl]
    and h
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    or [hl]
    and b
    or e
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld [hl], l
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
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    adc [hl]
    or h
    or c
    ld a, a
    xor a
    xor e
    and b
    xor l
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld c, a
    or c
    or h
    xor b
    xor l
    and h
    and e
    add sp, $7f
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld d, l
    or [hl]
    and b
    or c
    xor l
    ld a, a
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
    rst $30
    add l
    ld a, a
    sub c
    add h
    add d
    add h
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld c, a
    ld hl, sp-$7b
    ld a, a
    sub d
    add b
    adc e
    add h
    sub d
    ld d, c
    ld sp, hl
    add l
    ld a, a
    adc a
    add h
    sub c
    sub d
    adc [hl]
    adc l
    adc l
    add h
    adc e
    ld c, a
    ld a, [$7f85]
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    sub e
    adc b
    adc [hl]
    adc l
    ld d, c
    ei
    add l
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ldh [$92], a
    ld c, a
    ld a, a
    ld a, a
    ld a, a
    adc [hl]
    add l
    add l
    adc b
    add d
    add h
    ld d, a
    nop
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
    rst $20
    ld d, c
    sub [hl]
    xor b
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    adc b
    add e
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    rst $20
    ld d, c
    sub e
    or c
    and b
    and e
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
    and e
    xor b
    and l
    and l
    and h
    or c
    db $e3
    ld d, l
    and h
    xor l
    or e
    ld a, a
    adc b
    add e
    ld a, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    nop
    inc bc
    rlca
    ld [bc], a
    dec bc
    dec bc
    ld [bc], a
    rlca
    inc bc
    dec bc
    dec bc
    ld [bc], a
    nop
    rrca
    ld [bc], a
    inc bc
    ld [de], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld l, e
    ld c, [hl]
    nop
    dec c
    nop
    ld l, [hl]
    ld c, [hl]
    ld b, $42
    ld a, [bc]
    add hl, bc
    ld [$ff00], sp
    rst $38
    add b
    nop
    add hl, hl
    ld c, l
    rst $38
    rst $38
    jr z, jr_017_56c4

    inc d
    ld [$ff00], sp
    rst $38
    add b
    nop
    ld d, c

jr_017_56c4:
    ld c, [hl]
    rst $08
    ld b, $27
    ld [$0913], sp
    nop
    rst $38
    rst $38
    sub b
    nop
    ld d, h
    ld c, [hl]
    rst $08
    ld b, $35
    add hl, bc
    ld b, $06
    nop
    rst $38
    rst $38
    ld [bc], a
    inc bc
    ld d, a
    ld c, [hl]
    adc $06
    ld b, b
    ld a, [bc]
    inc c
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    dec a
    ld c, l
    rst $08
    ld b, $24
    ld a, [bc]
    db $10
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    push de
    ld c, l
    rst $08
    ld b, $00
    nop
    sub c
    ld d, c
    inc h
    ld e, c
    ld l, e
    ld b, a
    inc [hl]
    inc de
    nop
    add hl, bc
    rrca
    ld d, a
    ld c, h
    ld d, [hl]
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    add e
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    or [hl]
    ld e, c
    add h
    daa
    nop
    ld d, h
    ld c, c
    sub c
    ld d, c
    bit 3, c
    ld d, c
    ld b, h
    ld e, d
    db $f4
    inc b
    rra
    inc b
    sbc e
    ld e, d
    pop af
    ld e, d
    nop
    nop
    ld sp, $6657
    ld b, a
    ld c, h
    rlca
    ld e, e
    ld d, h
    ld c, c
    sub c
    push af
    inc b
    rra
    dec b
    add hl, sp
    ld e, e
    add b
    ld e, e
    nop
    nop
    ld b, l
    ld d, a
    ld h, [hl]
    ld b, a
    ld c, h
    sbc c
    ld e, e
    ld d, h
    ld c, c
    sub c
    or $04
    rra
    ld b, $cd
    ld e, e
    db $ed
    ld e, e
    nop
    nop
    ld e, c
    ld d, a
    ld h, [hl]
    ld b, a
    ld c, h
    nop
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld de, $4205
    ld [bc], a
    ld h, h
    ld e, h
    cp a
    ld e, h
    nop
    nop
    ld l, l
    ld d, a
    ld h, [hl]
    ld b, a
    ld c, h
    ret nc

    ld e, h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    inc [hl]
    inc de
    nop
    add hl, bc
    ld h, l
    ld e, b
    ld sp, $033d
    ld [$5800], sp
    inc [hl]
    ld h, b
    nop
    add hl, bc
    cpl
    ld e, b
    inc e
    ld a, [bc]
    dec bc
    ld [de], a
    sub e
    ld e, b
    inc [hl]
    ld e, a
    nop
    ld [$580a], sp
    ld hl, $0874
    ld l, e
    ld e, b
    inc e
    jr jr_017_57a3

    ld e, $7f
    ld e, b
    ld a, a
    ld h, b
    nop

jr_017_57a3:
    ld c, h
    dec [hl]
    ld e, [hl]
    rrca
    and e
    nop
    ld [$581e], sp
    ld c, h
    add h
    ld e, [hl]
    ld d, h
    ld c, c
    db $76
    dec bc
    inc bc
    inc e
    add hl, bc
    rlca
    inc bc
    cp [hl]
    ld d, a
    ld l, c
    nop
    ld hl, $7659
    nop
    inc bc
    ld b, a
    ld c, h
    db $dd
    ld e, [hl]
    ld d, h
    ld c, c
    db $76
    dec bc
    nop
    ld c, b
    nop
    rrca
    sub d
    nop
    ld c, c
    ld [$5845], sp
    ld b, a
    ld c, h
    pop bc
    ld e, a
    ld d, h
    ld c, c
    inc e
    jr jr_017_57f2

    ld bc, $181d
    add [hl]
    add l
    ld [hl+], a
    nop
    ld [hl], $60
    nop
    adc e
    inc d
    db $76
    dec bc
    inc bc
    ld b, a
    ld c, h
    ld d, h
    ld h, b
    ld d, h
    ld c, c
    rrca

jr_017_57f2:
    ld l, d
    nop
    adc e
    inc d
    rrca
    dec a
    nop
    inc e
    jr jr_017_5802

    ld e, $a4
    ld e, b
    sub c
    ld c, h
    db $f4

jr_017_5802:
    ld e, h
    ld d, l
    inc sp
    dec a
    inc bc
    sbc [hl]
    ld [hl], h
    ld bc, $104c
    ld e, [hl]
    ld d, h
    ld c, c
    ld a, [hl+]
    dec h
    add hl, bc
    ld a, [de]
    ld e, b
    ld sp, $033c
    add hl, bc
    call z, Call_017_7658
    dec bc
    inc bc
    sub c
    ld c, h
    add hl, hl
    ld e, a
    ld d, h
    ld c, c
    db $76
    dec bc
    inc bc
    rrca
    ld l, d
    nop
    adc e
    inc d
    rrca
    dec a
    nop
    sub c
    ld c, h
    ld l, h
    ld e, a
    ld d, h
    ld c, c
    ld a, [hl+]
    dec h
    add hl, bc
    ccf
    ld e, b
    ld sp, $033c
    add hl, bc
    call z, Call_017_7658
    dec bc
    inc bc
    adc e
    ld a, [bc]
    sub c
    ld [hl], $60
    nop
    ld b, a
    ld c, h
    inc e
    ld h, b
    ld d, h
    ld c, c
    db $76
    dec bc
    inc bc
    adc e
    inc d
    ld b, a
    ld c, h
    ld d, h
    ld h, b
    ld d, h
    ld c, c
    db $76
    dec bc
    inc bc
    rrca
    ld l, d
    nop
    adc e
    inc d
    rrca
    dec a
    nop
    sub c
    ld c, h
    jp nz, Jump_017_5460

    ld c, c
    sub c
    ld c, h
    sub d
    ld h, c
    ld d, h
    ld c, c
    ld a, [hl+]
    dec h
    add hl, bc
    ld a, e
    ld e, b
    ld sp, $029e
    add hl, bc
    call z, Call_017_7658
    dec bc
    inc bc
    sub c
    ld c, h
    pop af
    ld h, b
    ld d, h
    ld c, c
    ld a, [hl+]
    dec h
    add hl, bc
    adc a
    ld e, b
    ld sp, $029e
    add hl, bc
    call z, Call_017_7658
    dec bc
    inc bc
    sub c
    ld c, h
    ld sp, $5461
    ld c, c
    ld a, [hl+]
    dec h
    add hl, bc
    and e
    ld e, b
    ld sp, $033c
    add hl, bc
    call z, $9158
    ld a, [hl+]
    dec h
    add hl, bc
    cp $58
    adc e
    inc d
    db $76
    dec bc
    nop
    adc e
    rrca
    halt
    ld bc, $0f8b
    ld sp, $029e
    add hl, bc
    call z, Call_017_7558
    nop
    dec bc
    rrca
    inc sp
    sbc [hl]
    ld [bc], a
    inc sp
    inc a
    inc bc
    ld b, a
    ld c, h
    xor $61
    inc bc
    ret nc

    ld e, b
    ld b, a
    ld c, h
    cp a
    ld h, d
    sub a
    dec h
    ld b, $01
    or $58
    ld b, $02
    db $ed
    ld e, b
    ld c, h
    di
    ld h, d
    add l
    sub e
    nop
    add [hl]
    ld d, l
    ld c, h
    db $10
    ld h, e
    ld d, h
    ld c, c
    db $76
    dec bc
    inc bc
    jr z, jr_017_5911

    sub c
    ld c, h
    inc a
    ld h, e
    ld d, h
    ld c, c
    db $76
    dec bc
    inc bc
    sub c
    ld c, h
    ld e, [hl]
    ld h, e
    ld d, h
    ld c, c
    db $76
    dec bc
    inc bc
    sub c
    ld l, e
    ld b, a
    ld hl, $0874
    rrca
    ld e, c
    ld c, h
    sub d
    ld h, e
    ld d, l
    rrca
    sub e
    nop
    ld c, c
    sub c
    ld c, h
    ret c

jr_017_5911:
    ld h, e
    ld d, l
    ld c, c
    sub c
    ld d, e
    ld h, $64
    ld d, e
    jr nc, jr_017_597f

    ld d, e
    ld h, e
    ld h, h
    inc c
    inc bc
    nop
    ld [$470b], sp
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
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
    add sp, $7f
    sub e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc e
    or h
    xor e
    xor e
    and b
    and c
    xor b
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    xor e
    and h

jr_017_597f:
    and h
    xor a
    add sp, $57
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
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
    ld a, a
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
    and $57
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
    ld c, a
    adc c
    xor b
    and [hl]
    and [hl]
    xor e
    cp b
    ld [hl], l
    ld d, a
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    add sp, $7f
    add b
    or h
    or e
    and a
    xor [hl]
    or c
    xor b
    cp c
    and h
    and e
    ld c, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    xor l
    and h
    xor e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld d, l
    and c
    and h
    cp b
    xor [hl]
    xor l
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    add sp, $51
    adc b
    or e
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
    ld a, a
    or [hl]
    and b
    cp b
    ld c, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    add sp, $51
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
    or [hl]
    or c
    xor [hl]
    xor l
    and [hl]
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
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld [hl], l
    ld d, a
    nop
    add l
    and h
    and h
    xor e
    ld a, a
    and l
    or c
    and h
    and h
    ld a, a
    or e
    xor [hl]
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
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld a, a
    xor b
    or d
    ld c, a
    xor l
    xor b
    and d
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    and b
    or d
    ld a, a
    and a
    and h
    ld a, a
    or [hl]
    and b
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
    ld d, l
    and l
    xor [hl]
    or c
    and d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor b
    or d
    and c
    and b
    xor l
    and e
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
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    and c
    and b
    and d
    xor d
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add [hl]
    or [hl]
    and b
    and a
    rst $20
    ld a, a
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    and d
    or h
    or e
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
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
    cp b
    xor [hl]
    or h
    ld c, a
    or c
    or h
    xor b
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    xor e
    and b
    xor l
    or d
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    and c
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
    ld c, a
    or e
    and a
    and h
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    xor b
    or e
    and h
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld c, a
    and h
    or l
    xor b
    xor e
    rst $20
    ld a, a
    sub d
    and d
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
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    ld c, a
    and a
    and h
    or c
    xor [hl]
    and $57
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, a
    and h
    or l
    xor b
    xor e
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and e
    xor [hl]
    ld d, l
    or [hl]
    and a
    and b
    or e
    and h
    or l
    and h
    or c
    ld a, a
    or [hl]
    and h
    ld a, a
    xor e
    xor b
    xor d
    and h
    add sp, $57
    nop
    add a
    and h
    cp b
    db $f4
    ld a, a
    and a
    and h
    cp b
    rst $20
    ld a, a
    adc d
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
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    and b
    cp b
    rst $20
    ld d, a
    nop
    add b
    or c
    and [hl]
    and [hl]
    and a
    add sp, $7f
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    adc [hl]
    or h
    or c
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
    sub d
    ld a, a
    and b
    or c
    and h
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
    or e
    and b
    xor d
    and h
    ld d, l
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
    ld a, a
    xor [hl]
    or l
    and h
    or c
    add sp, $51
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
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld c, a
    xor a
    xor e
    and b
    xor l
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
    and b
    or e
    ld a, a
    xor b
    or d
    and $57
    nop
    add a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, c
    add a
    xor [hl]
    or [hl]
    ld a, a
    and c
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    add sp, $4f
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and l
    and b
    or c
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld d, c
    and h
    and b
    or d
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
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
    xor d
    and h
    and h
    xor a
    ld a, a
    xor h
    and h
    ld c, a
    and b
    xor h
    or h
    or d
    and h
    and e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    db $e3
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
    and $57
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
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld c, a
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
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld a, a
    adc b
    jp nc, $814f

    sub h
    add h
    adc l
    add b
    rst $20
    ld d, c
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
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    and b
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    ld d, l
    and d
    and b
    xor e
    xor e
    and h
    and e
    ld a, a
    adc a
    add b
    sub d
    sub d
    sub [hl]
    adc [hl]
    sub c
    add e
    and $51
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
    or e
    and h
    xor e
    xor e
    ld a, a
    xor h
    and h
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
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, c
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and h
    and b
    or c
    xor l
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    add sp, $51
    sub d
    and b
    or l
    and h
    ld a, a
    or h
    xor a
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld c, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld d, c
    or e
    and a
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    or [hl]
    and h
    and h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    xor e
    and b
    and e
    cp b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, c
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    and d
    and a
    xor [hl]
    xor b
    and d
    and h
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    or d
    rst $20
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
    rst $20
    ld d, c
    adc b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld c, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    ld a, a
    and d
    and b
    or c
    and e
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    sub e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor h
    cp b
    ld a, a
    adc a
    add b
    sub d
    sub d
    sub [hl]
    adc [hl]
    sub c
    add e
    ld a, a
    sub d
    add a
    adc [hl]
    sub [hl]
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    add a
    xor b
    rst $20

Call_017_5e40:
    ld c, a
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld d, l
    xor h
    cp b
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
    and $51
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    ld c, a
    or e
    xor [hl]
    and e
    and b
    cp b
    call nc, $af7f
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    and $57
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    or [hl]
    xor [hl]
    or [hl]
    rst $20
    ld c, a
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
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
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
    and [hl]
    and b
    xor b
    xor l
    and $51
    ld [hl], l
    inc d
    db $f4
    ld a, a
    adc [hl]
    adc d
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
    inc d
    add sp, $4f
    adc c
    xor [hl]
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    add sp, $57
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    add h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld c, a
    or c
    and h
    and b
    and e
    cp b
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
    and a
    and h
    and b
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or d
    and a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    call nc, $af51
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    inc d
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, a
    and b
    and l
    or e
    and h
    or c
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
    ld d, c
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $4f
    add d
    and b
    or e
    and d
    and a
    ld a, a
    cp b
    and b
    ld a, a
    xor e
    and b
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    sub d
    xor [hl]
    or c
    or c
    cp b
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    and d
    and a
    and b
    xor l
    and d
    and h
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    and e
    and b
    cp b
    add sp, $51
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    xor h
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or e
    or c
    cp b
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    sbc b
    adc b
    adc a
    adc a
    add h
    add h
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $b17f
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    ld a, a
    or e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    rst $20
    ld c, a
    adc b
    jp nc, $b27f

    xor [hl]
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    rst $20
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
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    add b
    or [hl]
    or [hl]
    ld [hl], l
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    xor b
    or e
    ld [hl], l
    ld d, c
    add e
    xor b
    and e
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
    and $57
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    sbc b
    or h
    xor a
    rst $20
    ld a, a
    adc [hl]
    or h
    or c
    ld c, a
    and d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    and b
    xor l
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld d, c
    inc d
    add sp, $4f
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
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    and h
    or c
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld d, c
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld c, a
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    add a
    or h
    and a
    and $4f
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, $af7f
    and b
    or d
    or d
    or [hl]
    xor [hl]
    or c
    and e
    and $51
    add a
    add h
    adc e
    adc a
    db $f4
    ld a, a
    xor [hl]
    and l
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or d
    and h
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc e
    sub h
    add h
    ld c, a
    add d
    add b
    sub c
    add e
    call nc, $a57f
    or h
    xor e
    xor e
    add sp, $51
    sub e
    or c
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, a
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
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    sub e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc a
    add b
    sub d
    sub d
    sub [hl]
    adc [hl]
    sub c
    add e
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    ld d, c
    xor l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or d
    xor b
    or a
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor h
    xor b
    and e
    xor l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, c
    sub e
    or h
    xor l
    and h
    ld a, a
    xor b
    xor l
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    ld c, a
    xor b
    xor l
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
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    adc [hl]
    and a
    and $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc e
    sub h
    add h
    ld a, a
    add d
    add b
    sub c
    add e
    and $51
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
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
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
    add sp, $57
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    adc [hl]
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld c, a
    add c
    adc e
    sub h
    add h
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    or c
    and h
    and b
    and d
    and a
    and h
    and e
    ld d, c
    ld sp, hl
    or $7f
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    rst $20
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    rst $20
    ld d, c
    add a
    xor h
    xor h
    ld [hl], l
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    and b
    ld c, a
    xor a
    or c
    xor b
    cp c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and a
    xor b
    or e
    or e
    xor b
    xor l
    and [hl]
    ld d, l
    ld sp, hl
    or $7f
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    and c
    cp b
    ld a, a
    or d
    xor [hl]
    ld c, a
    xor [hl]
    and l
    or e
    and h
    xor l
    db $f4
    ld a, a
    inc d
    add sp, $51
    adc b
    pop de
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
    ld a, a
    and b
    ld c, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld a, a
    and e
    and h
    and b
    xor e
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
    xor h
    cp b
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
    and $57
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    inc d
    db $f4
    ld c, a
    and e
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
    ld d, c
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld c, a
    xor l
    or h
    xor h
    and c
    and h
    or c
    and $57
    nop
    ld d, d
    ld a, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    and h
    and e
    ld c, a
    add c
    sub h
    add h
    adc l
    add b
    call nc, $ad7f
    or h
    xor h
    and c
    and h
    or c
    add sp, $57
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
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
    ld a, a
    and a
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    add b
    or [hl]
    or [hl]
    ld [hl], l
    ld a, a
    adc b
    or e
    call nc, $a07f
    ld c, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    ld [hl], l
    ld d, a
    nop
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld a, a
    inc d
    db $f4
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    xor e
    xor b
    or d
    or e
    ld d, c
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    xor e
    and h
    and l
    or e
    ld c, a
    and l
    xor [hl]
    or c
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
    and d
    and b
    xor l
    ld a, a
    and d
    and b
    or d
    and a
    ld a, a
    xor b
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld d, c
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    xor e
    cp b
    ld a, a
    xor a
    or c
    xor b
    cp c
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
    and d
    and a
    xor [hl]
    xor b
    and d
    and h
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
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    adc e
    sub h
    add h
    ld a, a
    add d
    add b
    sub c
    add e
    add sp, $51
    add e
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
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    add c
    adc e
    sub h
    add h
    ld a, a
    add d
    add b
    sub c
    add e
    rst $20
    ld d, a
    nop
    ld hl, sp-$7b
    ld a, a
    sub d
    add b
    adc e
    add h
    sub d
    ld d, a
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    ldh [$92], a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    sub e
    add b
    adc e
    adc d
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add a
    xor [hl]
    or e
    or e
    and h
    or d
    or e
    ld a, a
    sub d
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add b
    xor b
    or c
    rst $20
    ld d, a
    nop
    add b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    add b
    xor l
    cp b
    or e
    xor b
    xor h
    and h
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub c
    and b
    and e
    xor b
    xor [hl]
    ld d, a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $1303
    nop
    rrca
    inc bc
    inc bc
    ld de, $0600
    nop
    inc bc
    nop
    dec d
    ld e, c
    nop
    dec b
    nop
    jr jr_017_64f3

    ld bc, $0009
    ld e, $59
    ld bc, $000a
    ld e, $59
    ld bc, $000b
    ld e, $59
    nop
    dec c
    nop
    dec de
    ld e, c
    dec bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld [$ff00], sp
    rst $38
    and b
    nop
    cp $56
    rst $08
    ld b, $29
    ld [$050d], sp
    ld bc, $ffff
    add b
    nop
    ld bc, $ff57
    rst $38
    dec [hl]
    add hl, bc
    ld de, $0007
    rst $38
    rst $38
    ld [bc], a
    inc bc
    dec h
    ld d, a
    adc $06
    dec [hl]
    ld a, [bc]
    dec b
    rlca
    nop
    rst $38
    rst $38
    ld [bc], a
    ld b, $39
    ld d, a
    adc $06
    dec [hl]
    dec b
    ld [de], a
    add hl, bc
    nop
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    ld c, l
    ld d, a
    adc $06
    ld [hl], $05
    inc d

jr_017_64f3:
    ld [$ff00], sp
    rst $38
    add d
    inc bc
    ld h, c
    ld d, a
    adc $06
    ld b, c
    dec b
    inc b
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    rra
    ld d, a
    pop de
    ld b, $41
    dec b
    dec b
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld [hl+], a
    ld d, a
    ret nc

    ld b, $94
    dec b
    db $10
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    dec d
    ld d, a
    rst $38
    rst $38
    ld a, [hl+]
    add hl, bc
    ld [de], a
    add hl, bc
    nop
    rst $38
    rst $38
    add b
    nop
    ld [hl], l
    ld d, a
    rst $38
    rst $38
    ld b, d
    dec bc
    db $10
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    rst $38
    ld e, b
    rst $08
    ld b, $00
    ld bc, $4301
    ld h, l
    ld sp, $0025
    add hl, bc
    ld c, d
    ld h, l
    sub b
    ld a, d
    ld c, $02
    ld a, [hl+]
    ld a, d
    ld c, $04
    ld bc, $5190
    ld hl, $6b66
    ld b, a
    ld sp, $0021
    add hl, bc
    ld h, h
    ld h, l
    ld c, h
    add d
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $eb
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0047
    add hl, bc
    sbc l
    ld h, l
    ld sp, $0021
    add hl, bc
    adc d
    ld h, l
    ld sp, $0025
    add hl, bc
    add h
    ld h, l
    ld c, h
    ld d, h
    ld h, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    bit 4, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [c], a
    ld h, a
    ld d, l
    sbc [hl]
    jp z, $0801

    and c
    ld h, l
    ld c, h
    ld hl, $5468
    ld c, c
    inc sp
    ld b, a
    nop
    sub c
    ld c, h
    ld e, h
    ld l, b
    ld d, h
    ld c, c
    sub c
    rst $30
    inc b
    rra
    rlca
    ld a, b
    ld l, b
    ret z

    ld l, b
    nop
    nop
    xor a
    ld h, l
    ld h, [hl]
    ld b, a
    ld c, h
    ret nc

    ld l, b
    ld d, h
    ld c, c
    sub c
    ld hl, sp+$04
    rra
    ld [$6904], sp
    inc [hl]
    ld l, c
    nop
    nop
    jp Jump_017_6665


    ld b, a
    ld c, h
    ld b, h
    ld l, c
    ld d, h
    ld c, c
    sub c
    ld sp, hl
    inc b
    rra
    add hl, bc
    ld a, l
    ld l, c
    jp nz, $0069

    nop
    rst $10
    ld h, l
    ld h, [hl]
    ld b, a
    ld c, h
    ret nc

    ld l, c
    ld d, h
    ld c, c
    sub c
    and d
    inc b
    inc d
    inc b
    inc d
    ld l, d
    ld b, e
    ld l, d
    nop
    nop
    db $eb
    ld h, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld h, c
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    and h
    ld l, d
    ld d, h
    ld sp, $0025
    add hl, bc
    inc bc
    ld h, [hl]
    ld hl, $097f
    dec b
    ld h, [hl]
    ld c, c
    sub c
    ld c, h
    cp h
    ld l, d
    ld d, h
    inc sp
    dec h
    nop
    add l
    rra
    nop
    ld a, d
    ld c, $02
    ld a, [hl+]
    ld a, d
    ld c, $04
    ld bc, $497c
    add [hl]
    sub c
    ld d, e
    sub $6a
    ld d, e
    db $e4
    ld l, d
    nop
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    xor b
    xor l
    and [hl]
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    or c
    xor b
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld d, c
    and b
    xor e
    xor e
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
    or l
    and h
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    add sp, $51
    sub [hl]

Jump_017_6665:
    and h
    ld a, a
    xor h
    or h
    or d
    or e

Call_017_666b:
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    ld hl, sp-$0a
    or $7f
    xor d
    xor b
    xor l
    and e
    or d
    add sp, $57
    nop
    sub e
    xor [hl]
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
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld d, l
    and c
    and h
    xor e
    xor [hl]
    or l
    and h
    and e
    ld a, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    or d
    add sp, $51
    adc b
    or e
    call nc, $b37f
    and h
    or c
    or c
    xor b
    and c
    xor e
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
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
    xor b
    or d
    ld d, c
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
    and d
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    or c
    or h
    xor l
    ld a, a
    ld hl, sp-$06
    ld a, a
    and a
    xor [hl]
    or h
    or c
    or d
    ld a, a
    and b
    ld c, a
    and e
    and b
    cp b
    ld a, a
    or e
    xor [hl]
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
    ld d, c
    and h
    xor l
    or e
    and h
    or c
    or e
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    db $e3
    ld c, a
    and [hl]
    or c
    and b
    xor h
    or d
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    or h
    xor l
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
    ld d, l
    and d
    xor e
    xor [hl]
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
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
    and c
    xor [hl]
    or d
    or d
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    ld d, l
    and a
    xor b
    xor h
    or d
    and h
    xor e
    and l
    ld a, a
    xor b
    xor l
    add sp, $51
    add c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld c, a
    and d
    and b
    xor l
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    ld a, a
    xor b
    or e
    add sp, $51
    add a
    and h
    call nc, $b47f
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and l
    xor b
    and l
    or e
    and a
    ld a, a
    and l
    xor e
    xor [hl]
    xor [hl]
    or c
    add sp, $51
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
    ld a, a
    and a
    xor b
    xor h
    rst $20
    ld d, a
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    ld c, a
    or d
    and b
    and l
    and h
    and $57
    nop
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
    ld c, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    and a
    and h
    or c
    xor [hl]
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
    adc b
    or e
    call nc, $927f
    sub h
    adc l
    adc l
    sbc b
    ld a, a
    add e
    add b
    sbc b
    add sp, $4f
    adc b
    or e
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    or h
    xor a
    ld a, a
    and l
    xor b
    or c
    and h
    db $e3
    ld d, l
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
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld d, l
    or [hl]
    and a
    xor b
    xor e
    and h
    add sp, $57
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
    or d
    xor b
    xor h
    xor a
    xor e
    cp b
    ld c, a
    xor h
    and b
    or c
    or l
    and h
    xor e
    xor [hl]
    or h
    or d
    rst $20
    ld d, a
    nop
    adc b
    sub $a4
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
    ld c, a
    or d
    or e
    or c
    xor b
    and d
    or e
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    or d
    add sp, $51
    adc b
    jp nc, $b37f

    xor [hl]
    ld a, a
    and d
    or c
    or h
    or d
    and a
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
    and a
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
    or d
    ld d, l
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
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    and $e7
    ld d, a
    nop
    adc b
    ld a, a
    and l
    and b
    xor b
    xor e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld c, a
    and e
    or h
    or e
    xor b
    and h
    or d
    ld [hl], l
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and e
    xor [hl]
    and d
    xor d
    and h
    and e
    ld a, a
    xor a
    and b
    cp b
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    ld a, a
    and l
    and h
    and h
    xor e
    or d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    xor [hl]
    or c
    and e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    xor h
    xor b
    or e
    ld a, a
    and d
    or c
    xor b
    xor h
    and h
    or d
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    xor d
    xor b
    and e
    and e
    xor b
    xor l
    and [hl]
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
    xor [hl]
    or h
    or d
    cp b
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    add e
    and b
    or c
    xor l
    ld a, a
    xor b
    or e
    rst $20
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or e
    and h
    ld c, a
    or h
    or d
    and h
    xor e
    and h
    or d
    or d
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
    cp b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and a
    or h
    or e
    db $e3
    ld c, a
    or e
    and h
    or c
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    and $7f
    add e
    xor b
    and e
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
    xor [hl]
    ld c, a
    and e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    xor b
    or d
    and $57
    nop
    adc b
    jp nc, $a37f

    xor [hl]
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    and $e7
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor b
    or e
    ld c, a
    xor a
    and b
    or d
    or e
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor h
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
    and $51
    add a
    xor [hl]
    or [hl]
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
    nop
    add b
    xor l
    ld a, a
    or h
    xor l
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    ld c, a
    or [hl]
    and b
    xor l
    and e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    and $51
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
    and $57
    nop
    sub e
    and d
    and a
    rst $20
    ld a, a
    adc b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
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
    rst $20
    ld d, a
    nop
    add c
    or [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    or c
    and b
    xor l
    or d
    xor h
    xor b
    or e
    ld a, a
    and b
    or d
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    ld a, a
    and b
    or d
    ld d, l
    adc b
    ld a, a
    xor l
    and h
    and h
    and e
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
    add sp, $57
    nop
    adc b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    adc d
    add h
    sbc b
    ld c, a
    or d
    xor e
    xor [hl]
    or e
    add sp, $57
    nop
    ld d, d
    ld a, a
    xor b
    xor l
    or d
    and h
    or c
    or e
    and h
    and e
    ld c, a
    or e
    and a
    and h
    ld a, a
    add d
    add b
    sub c
    add e
    ld a, a
    adc d
    add h
    sbc b
    add sp, $57
    nop
    ld sp, hl
    add l
    ld a, a
    adc a
    add h
    sub c
    sub d
    adc [hl]
    adc l
    adc l
    add h
    adc e
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    sub h
    sub d
    adc b
    add d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    add a
    xor [hl]
    or d
    or e
    ld a, a
    add e
    adc c
    ld a, a
    add c
    add h
    adc l
    ld d, a
    nop
    nop
    inc bc
    nop
    ld bc, $0301
    ld [de], a
    nop
    rlca
    ld [bc], a
    inc bc
    inc d
    nop
    ld de, $0304
    inc d
    nop
    inc bc
    nop
    inc bc
    nop
    dec de
    ld h, [hl]
    nop
    add hl, bc
    nop
    ld e, $66
    ld [bc], a
    ld c, $01
    di
    ld h, l
    rlca
    dec hl
    ld [$070b], sp
    nop
    rst $38
    rst $38
    sub b
    nop
    ld d, e
    ld h, l
    ret nc

    ld b, $48
    ld [$0a07], sp
    nop
    rst $38
    rst $38
    add b
    nop
    ld d, [hl]
    ld h, l
    rst $38
    rst $38
    nop
    rlca
    rrca
    ld [bc], a
    ld de, $ffff
    and b
    nop
    ld l, d
    ld h, l
    rst $38
    rst $38
    dec [hl]
    dec b
    inc b
    add hl, bc
    nop
    rst $38
    rst $38
    ld [bc], a
    ld [bc], a
    and e
    ld h, l
    adc $06
    dec [hl]
    ld a, [bc]
    dec b
    rlca
    nop
    rst $38
    rst $38
    ld [bc], a
    ld b, $b7
    ld h, l
    adc $06
    dec [hl]
    dec bc
    inc d
    rlca
    nop
    rst $38
    rst $38
    ld [bc], a
    ld b, $cb
    ld h, l
    adc $06
    inc a
    dec b
    inc d
    ld b, $00
    rst $38
    rst $38
    sub d
    ld b, $df
    ld h, l
    adc $06
    nop
    nop
    ld d, c
    ld [de], a
    ld l, h
    ld l, e
    ld b, a
    ld sp, $0048
    add hl, bc
    xor h
    ld l, e
    ld sp, $0021
    add hl, bc
    sbc c
    ld l, e
    ld c, h
    ld l, b
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor e
    ld l, h
    ld d, l
    sbc [hl]
    ld l, b
    ld bc, $b008
    ld l, e
    ld c, h
    rst $28
    ld l, h
    ld d, h
    ld c, c
    inc sp
    ld c, b
    nop
    sub c
    ld c, h
    inc l
    ld l, l
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld h, [hl]
    ld l, l
    add h
    inc [hl]
    nop
    ld d, h
    ld c, c
    sub c
    ld a, [$1f04]
    ld a, [bc]
    ld [hl], a
    ld l, l
    rst $08
    ld l, l
    nop
    nop
    ret z

    ld l, e
    ld h, [hl]
    ld b, a
    ld c, h
    ld [c], a
    ld l, l
    ld d, h
    ld c, c
    sub c
    ld [hl], d
    dec b
    inc sp
    ld [bc], a
    inc b
    ld l, [hl]
    ld d, b
    ld l, [hl]
    nop
    nop
    call c, Call_017_666b
    ld b, a
    ld c, h
    ld l, c
    ld l, [hl]
    ld d, h
    ld c, c
    sub c
    inc de
    dec b
    ld b, d
    inc b
    call nz, $156e
    ld l, a
    nop
    nop
    ldh a, [rOCPD]
    ld h, [hl]
    ld b, a
    ld c, h
    ld sp, $546f
    ld c, c
    sub c
    and e
    inc b
    inc d
    dec b
    ld h, d
    ld l, a
    and e
    ld l, a
    nop
    nop
    inc b
    ld l, h
    ld h, [hl]
    ld b, a
    ld c, h
    bit 5, a
    ld d, h
    ld c, c
    sub c
    ld d, e
    cp $6f
    ld d, e
    dec c
    ld [hl], b
    nop
    adc b
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    or c
    and b
    and e
    xor b
    xor [hl]
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
    and b
    or e
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
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    and b
    ld a, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
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
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    sub [hl]
    and a
    cp b
    and $7f
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
    ld c, a
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
    or d
    or h
    and l
    and l
    and h
    or c
    ld d, l
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
    xor b
    or d
    and $51
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    db $f4
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    adc [hl]
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    xor h
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
    and b
    or l
    xor b
    xor [hl]
    or c
    rst $20
    ld d, c
    sub [hl]
    xor b
    xor e
    xor e
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
    and b
    or d
    ld a, a
    xor h
    cp b
    ld a, a
    or e
    and a
    and b
    xor l
    xor d
    or d
    and $57
    nop
    adc h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    adc b
    or e
    call nc, $a97f
    or h
    or d
    or e
    ld c, a
    or c
    xor b
    and [hl]
    and a
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
    ld d, c
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
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
    db $e3
    ld c, a
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
    add sp, $57
    nop
    adc h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or e
    or h
    xor l
    and h
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, $51
    adc [hl]
    add b
    adc d
    ldh [$92], a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub e
    add b
    adc e
    adc d
    ld c, a
    or d
    and a
    xor [hl]
    or [hl]
    add sp, $57
    nop
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    sbc h
    ld a, a
    adc h
    and h
    xor [hl]
    or [hl]
    or e
    and a
    ld [hl], l
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor a
    xor e
    and b
    xor l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    or d
    and d
    or h
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    add e
    adc b
    sub c
    add h
    add d
    sub e
    adc [hl]
    sub c
    and $51
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
    and c
    and h
    ld a, a
    xor a
    xor [hl]
    or d
    db $e3
    ld c, a
    or d
    xor b
    and c
    xor e
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
    adc b
    jp nc, $a655

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
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
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
    ld d, a
    nop
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld c, a
    xor b
    or e
    rst $20
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and c
    and h
    and b
    or e
    and h
    xor l
    rst $20
    ld d, a
    nop
    sub d
    or e
    xor [hl]
    xor a
    rst $20
    ld a, a
    adc b
    jp nc, $aa7f

    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    or d
    ld c, a
    or e
    and a
    and h
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
    ld d, l
    and l
    xor [hl]
    or c
    or e
    or c
    and h
    or d
    or d
    rst $20
    ld d, c
    sbc b
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
    and b
    xor d
    xor b
    xor l
    and [hl]
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
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    xor [hl]
    or c
    or e
    or c
    and h
    or d
    or d
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    and e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    sub $a4
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
    ld c, a
    or c
    and h
    or d
    xor a
    and h
    and d
    or e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    and a
    and h
    or c
    and h
    call nc, $b255
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
    add sp, $51
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor e
    and b
    or e
    and h
    add sp, $4f
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or e
    or h
    or c
    xor l
    ld d, l
    and c
    and b
    and d
    xor d
    add sp, $57
    nop
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
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
    and d
    or h
    or e
    and h
    and $51
    adc b
    pop de
    xor e
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
    or c
    and h
    ld a, a
    and d
    or h
    or e
    and h
    db $e3
    db $e3
    ld d, c
    and b
    and l
    or e
    and h
    or c
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
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
    rst $20
    ld a, a
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or d
    xor [hl]
    ld c, a
    or h
    or d
    and h
    xor e
    and h
    or d
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    xor h
    cp b
    ld c, a
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
    or d
    and h
    xor e
    and l
    rst $20
    ld d, c
    sub [hl]
    and a
    xor [hl]
    ld a, a
    and d
    and b
    or c
    and h
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    adc h
    xor [hl]
    or d
    or e
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
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
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
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and l
    or h
    xor e
    and l
    xor b
    xor e
    xor e
    ld a, a
    xor [hl]
    or h
    or c
    ld d, l
    and [hl]
    or c
    and b
    xor l
    and e
    ld a, a
    and e
    and h
    or d
    xor b
    and [hl]
    xor l
    add sp, $57
    nop
    add a
    xor h
    xor h
    xor h
    ld [hl], l
    ld d, c
    add b
    xor e
    xor e
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    ld a, a
    xor a
    xor e
    and b
    xor l
    or d
    ld c, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or d
    xor l
    and b
    and [hl]
    or d
    add sp, $57
    nop
    add e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    xor [hl]
    xor l
    and h
    or d
    or e
    xor e
    cp b
    ld c, a
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
    and d
    and b
    xor l
    ld d, l
    or d
    or e
    xor [hl]
    xor a
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
    and $57
    nop
    ld a, [$7f85]
    adc a
    sub c
    adc [hl]
    add e
    sub h
    add d
    sub e
    adc b
    adc [hl]
    adc l
    ld d, a
    nop
    ld a, [$7f85]
    sub d
    sub e
    sub h
    add e
    adc b
    adc [hl]
    ld a, a
    ld hl, sp+$57
    nop
    nop
    inc b
    nop
    nop
    ld bc, $1503
    nop
    add hl, bc
    ld [bc], a
    inc bc
    inc de
    nop
    inc c
    ld [bc], a
    inc bc
    dec d
    nop
    ld de, $0303
    inc de
    nop
    ld [bc], a
    nop
    rlca
    nop
    inc c
    ld l, h
    nop
    rrca
    nop
    rrca
    ld l, h
    rlca
    ld a, [hl-]
    ld [$070a], sp
    nop
    rst $38
    rst $38
    add b
    nop
    add d
    ld l, e
    ret nc

    ld b, $29
    ld a, [bc]
    ld [de], a
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    add l
    ld l, e
    rst $38
    rst $38
    add d
    ld a, [bc]
    dec d
    ld d, $00
    rst $38
    rst $38
    add b
    nop
    or d
    ld l, e
    rst $38
    rst $38
    dec [hl]
    dec b
    ld b, $08
    nop
    rst $38
    rst $38
    ld [bc], a
    inc bc
    cp h
    ld l, e
    adc $06
    dec [hl]
    ld a, [bc]
    db $10
    rlca
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    ld b, $d0
    ld l, e
    adc $06
    ld [hl], $05
    inc d
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    ld bc, $6be4
    adc $06
    inc a
    ld a, [bc]
    dec c
    rlca
    nop
    rst $38
    rst $38
    sub d
    ld b, $f8
    ld l, e
    adc $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_017_7558:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_017_7658:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
