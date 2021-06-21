; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $069", ROMX[$4000], BANK[$69]

    nop
    ld bc, $0505
    ld b, b
    ld [hl], $48
    nop
    sub b
    ld d, c
    dec b
    ld b, c
    ld d, c
    ld b, a
    ld b, c
    ld d, c
    bit 0, e
    ld d, c
    db $db
    ld b, c
    ld l, e
    ld b, a
    ld sp, $007b
    add hl, bc
    inc hl
    ld b, b
    ld c, h
    ld a, [de]
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, c
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0020
    add hl, bc
    scf
    ld b, b
    ld c, h
    xor h
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec h
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld d, c
    add [hl]
    ld b, e
    ld d, e
    pop de
    ld b, h
    ld d, e
    inc de
    ld b, l
    ld d, e
    ld c, b
    ld b, l
    ld d, e
    adc h
    ld b, l
    ld d, e
    and h
    ld b, l
    inc c
    stop
    inc c
    ld de, $b400
    nop
    stop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    add sp, $7f
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld [hl], l
    ld d, c
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
    ld c, a
    xor h
    xor b
    or d
    or d
    xor b
    xor l
    and [hl]
    add sp, $51
    adc l
    xor [hl]
    ld [hl], l
    ld a, a
    sub d
    and a
    and h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    add sp, $51
    adc b
    ld a, a
    or e
    xor [hl]
    xor e
    and e
    ld a, a
    and a
    and h
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor [hl]
    ld a, a
    xor l
    and h
    and b
    or c
    ld a, a
    xor b
    or e
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
    and h
    and h
    xor h
    ld a, a
    or e
    xor [hl]
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
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    or [hl]
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
    ld c, a
    and e
    xor [hl]
    ld [hl], l
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
    or h
    or d
    and h
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
    sbc h
    ld d, c
    xor [hl]
    xor l
    and h
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    and h
    and b
    or d
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and h
    or d
    or e
    add sp, $57
    nop
    add b
    and a
    db $f4
    ld a, a
    and d
    and a
    xor b
    xor e
    and e
    add sp, $4f
    add a
    and b
    or l
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
    and h
    and e
    ld d, c
    or e
    xor [hl]
    ld a, a
    and e
    and b
    xor l
    and d
    and h
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
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
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
    xor b
    or c
    ld c, a
    add e
    add b
    adc l
    add d
    add h
    ld a, a
    sub e
    add a
    add h
    add b
    sub e
    add h
    sub c
    db $f4
    ld a, a
    and b
    xor l
    ld d, c
    xor [hl]
    and e
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
    xor b
    xor e
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
    or d
    xor [hl]
    xor h
    and h
    or e
    and a
    xor b
    xor l
    and [hl]
    ld d, l
    xor l
    xor b
    and d
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and h
    and b
    or c
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
    xor a
    or c
    and b
    and d
    db $e3
    ld c, a
    or e
    xor b
    and d
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add e
    add b
    adc l
    add d
    add h
    ld d, c
    sub e
    add a
    add h
    add b
    sub e
    add h
    sub c
    add sp, $7f
    add d
    and b
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
    xor h
    and h
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    or [hl]
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
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
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
    xor h
    or h
    and d
    and a
    ld d, l
    or e
    and b
    xor e
    xor e
    and h
    or c
    add sp, $57
    nop
    sub e
    and a
    or c
    and h
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or c
    and b
    xor l
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    xor b
    xor l
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
    and e
    xor b
    or c
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    or d
    add sp, $55
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    and $57
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
    ld a, a
    or c
    or h
    xor h
    xor [hl]
    or c
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    ld d, l
    adc e
    adc b
    add [hl]
    add a
    sub e
    add a
    adc [hl]
    sub h
    sub d
    add h
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
    or e
    and a
    and b
    or e
    ld c, a
    or d
    and h
    or c
    or l
    and h
    or d
    ld a, a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld d, c
    and c
    and h
    and b
    and d
    xor [hl]
    xor l
    ld a, a
    and l
    and h
    xor e
    xor e
    ld a, a
    xor b
    xor e
    xor e
    add sp, $4f
    sub d
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
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, l
    and b
    or c
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
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
    adc e
    adc b
    add [hl]
    add a
    sub e
    add a
    adc [hl]
    sub h
    sub d
    add h
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
    and d
    or h
    or c
    and h
    and e
    add sp, $51
    add c
    xor [hl]
    and b
    or e
    or d
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and b
    and l
    and h
    xor e
    cp b
    ld c, a
    or d
    and b
    xor b
    xor e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and b
    ld a, a
    and b
    or e
    ld d, l
    xor l
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
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    and h
    and b
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
    and b
    xor h
    xor a
    and b
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
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
    add sp, $7f
    adc b
    ret nc

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
    or e
    and a
    and b
    or e
    add sp, $57
    nop
    adc b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    xor b
    or d
    or e
    and b
    xor l
    or e
    ld c, a
    xor a
    and b
    or d
    or e
    ld [hl], l
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    and c
    or h
    or c
    xor l
    and h
    and e
    ld c, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and l
    xor b
    or c
    and h
    add sp, $7f
    sub e
    and a
    or c
    and h
    and h
    ld d, c
    xor l
    and b
    xor h
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
    ld c, a
    xor a
    and h
    or c
    xor b
    or d
    and a
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    add sp, $51
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
    ld c, a
    or c
    and h
    or d
    or h
    or c
    or c
    and h
    and d
    or e
    and h
    and e
    ld a, a
    or e
    and a
    and h
    xor h
    ld [hl], l
    ld d, c
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
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
    and c
    and h
    and h
    xor l
    ld a, a
    xor a
    and b
    or d
    or d
    and h
    and e
    ld d, c
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and c
    cp b
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
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    sub d
    add sp, $51
    adc h
    and h
    and $51
    adc b
    ld a, a
    or [hl]
    and b
    or d
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
    ld c, a
    or [hl]
    and b
    cp b
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or [hl]
    and a
    and h
    xor l
    add sp, $55
    add a
    xor [hl]
    and a
    xor [hl]
    and a
    xor [hl]
    rst $20
    ld d, a
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
    add d
    adc b
    sub e
    sbc b
    ld c, a
    add b
    ld a, a
    add a
    xor b
    or d
    or e
    xor [hl]
    or c
    xor b
    and d
    and b
    xor e
    ld a, a
    add d
    xor b
    or e
    cp b
    ld d, c
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    and b
    or d
    or e
    ld c, a
    adc h
    and h
    and h
    or e
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc a
    or c
    and h
    or d
    and h
    xor l
    or e
    ld d, a
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
    ld d, c
    add b
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
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
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
    ld d, l
    or c
    xor [hl]
    xor [hl]
    or d
    or e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
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
    adc [hl]
    sub c
    sub e
    sbc b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc h
    cp b
    or d
    or e
    xor b
    and d
    ld a, a
    sub d
    and h
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    add l
    or h
    or e
    or h
    or c
    and h
    ld d, a
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
    add e
    add b
    adc l
    add d
    add h
    ld c, a
    sub e
    add a
    add h
    add b
    sub e
    add h
    sub c
    ld d, a
    nop
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
    ld d, c
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
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
    ld c, a
    and c
    cp b
    ld a, a
    and b
    ld a, a
    xor h
    cp b
    or d
    or e
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    ld d, l
    and l
    xor b
    or c
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
    or e
    and b
    cp b
    ld a, a
    and b
    or [hl]
    and b
    cp b
    db $f4
    ld c, a
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or h
    xor l
    or d
    and b
    and l
    and h
    add sp, $57
    nop
    nop
    rrca
    ld a, [de]
    inc hl
    ld bc, $0402
    dec de
    inc hl
    ld [bc], a
    ld [bc], a
    inc b
    dec bc
    ld [de], a
    ld bc, HeaderLogo
    ld [bc], a
    inc d
    ld bc, $0204
    inc bc
    inc d
    ld [bc], a
    inc b
    ld [bc], a
    dec de
    rla
    ld bc, $0304
    dec d
    dec b
    ld bc, $0404
    dec d
    rla
    ld bc, $0504
    dec d
    dec e
    ld [bc], a
    inc b
    ld b, $1b
    ld b, $01
    inc b
    rlca
    dec de
    dec c
    ld bc, $0804
    rlca
    dec h
    ld bc, $0403
    dec b
    dec b
    ld bc, $0d03
    ld [de], a
    nop
    inc bc
    ld bc, $1309
    nop
    inc b
    ld bc, $0009
    ld [$0f15], sp
    nop
    ld b, b
    ld b, b
    ld a, [bc]
    ld h, $00
    ld b, e
    ld b, b
    inc e
    ld [$4600], sp
    ld b, b
    dec d
    dec d
    nop
    ld c, c
    ld b, b
    ld a, [bc]
    ld [bc], a
    nop
    ld c, h
    ld b, b
    dec de
    jr jr_069_4668

jr_069_4668:
    ld c, a
    ld b, b
    dec d
    ld e, $00
    ld d, d
    ld b, b
    ld c, $17
    rlca
    ld d, l
    ld b, b
    rlca
    cpl
    inc de
    ld d, $02
    ld de, $ffff
    nop
    nop
    add hl, bc
    ld b, b
    rst $38
    rst $38
    cpl
    add hl, de
    jr jr_069_4689

    nop
    rst $38
    rst $38

jr_069_4689:
    nop
    nop
    inc c
    ld b, b
    rst $38
    rst $38
    jr z, jr_069_46b2

    add hl, de
    dec b
    ld [bc], a
    rst $38
    rst $38
    sub b
    nop
    ld [de], a
    ld b, b
    rst $38
    rst $38
    jr z, jr_069_46ab

    rlca
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    dec d
    ld b, b
    rst $38
    rst $38
    ld a, [hl-]
    ld a, [de]

jr_069_46ab:
    dec c
    dec b
    ld bc, $ffff
    and b
    nop

jr_069_46b2:
    add hl, hl
    ld b, b
    rst $38
    rst $38
    daa
    ld [de], a
    ld c, $02
    ld de, $ffff
    add b
    nop
    dec a
    ld b, b
    rst $38
    rst $38
    cpl
    dec bc
    rlca
    ld [bc], a
    ld de, $ffff
    and b
    nop
    rrca
    ld b, b
    xor c
    rlca
    nop
    ld [bc], a
    dec b
    ret c

    ld b, [hl]
    ld [bc], a
    call c, $3646
    ld c, e
    nop
    sub b
    inc e
    dec bc
    ld b, $06
    push hl
    ld b, [hl]
    ld l, [hl]
    add hl, bc
    sub b
    ld l, a
    add hl, bc
    sub b
    ld l, e
    ld b, a
    ld sp, $04c4
    add hl, bc
    ld [bc], a
    ld b, a
    ld sp, $0021
    add hl, bc
    db $fc
    ld b, [hl]
    ld c, h
    ld a, d
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    di
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, l
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld d, c
    jp Jump_069_5148


    ei
    ld c, b
    ld l, e
    ld b, a
    ld sp, $0021
    add hl, bc
    inc e
    ld b, a
    ld c, h
    ld c, d
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    add e
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld d, c
    cp l
    ld c, c
    ld d, c
    pop af
    ld c, c
    ld d, c
    ld e, $4b
    ld l, e
    ld b, a
    ld sp, $006d
    add hl, bc
    ld e, c
    ld b, a
    inc e
    dec bc
    rlca
    ld b, $5f
    ld b, a
    ld sp, $006c
    add hl, bc
    ld b, [hl]
    ld b, a
    ld c, h
    daa
    ld c, d
    ld d, l
    inc sp
    ld l, h
    nop
    ld c, h
    ld d, a
    ld c, d
    ld d, l
    sbc [hl]
    ld [hl], c
    ld bc, $5d08
    ld b, a
    inc sp
    ld l, l
    nop
    ld c, h
    ld l, e
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    or [hl]
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    nop
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld h, a
    ld c, e
    ld d, e
    sub c
    ld c, e
    ld d, e
    reti


    ld c, e
    ld d, e
    rst $28
    ld c, e
    ld d, e
    inc bc
    ld c, h
    inc c
    stop
    inc c
    ld de, $0000
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    add sp, $51
    add d
    adc e
    add b
    adc b
    sub c
    db $f4
    ld a, a
    xor [hl]
    or h
    or c
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
    and h
    xor l
    or e
    and h
    or c
    and h
    and e
    ld d, c
    or e
    and a
    and h
    ld a, a
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ldh [$92], a
    ld a, a
    add e
    add h
    adc l
    ld c, a
    and c
    and h
    and a
    xor b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $51
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor b
    and e
    and h
    and b
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, l
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or c
    and h
    or e
    or h
    or c
    xor l
    add sp, $57
    nop
    add d
    adc e
    add b
    adc b
    sub c
    db $f4
    ld a, a
    xor [hl]
    or h
    or c
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
    or [hl]
    and b
    xor b
    or e
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
    or e
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    and c
    and h
    ld a, a
    xor b
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
    and l
    xor [hl]
    or c
    ld d, c
    and b
    ld a, a
    or c
    or h
    xor l
    db $e3
    xor [hl]
    and l
    db $e3
    or e
    and a
    and h
    db $e3
    xor h
    xor b
    xor e
    xor e
    ld c, a
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
    or [hl]
    xor b
    xor l
    add sp, $57
    nop
    sbc b
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
    ld c, a
    add d
    adc e
    add b
    adc b
    sub c
    and $51
    sub e
    and a
    and b
    or e
    call nc, $a07f
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
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
    xor [hl]
    and l
    ld a, a
    and a
    and h
    or c
    ld a, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, c
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, a
    adc e
    add b
    adc l
    add d
    add h
    add sp, $57
    nop
    adc l
    xor [hl]
    add sp, $7f
    adc [hl]
    xor l
    xor e
    cp b
    ld a, a
    and d
    and a
    xor [hl]
    or d
    and h
    xor l
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
    xor h
    and b
    cp b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld d, c
    and a
    and h
    or c
    and h
    add sp, $4f
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    add d
    adc e
    add b
    adc b
    sub c
    ld a, a

Jump_069_4905:
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    and a
    and h
    or c
    ld a, a
    and [hl]
    or c
    and b
    xor l
    and e
    db $e3
    ld d, l
    and l
    and b
    or e
    and a
    and h
    or c
    db $e3
    db $e3
    xor [hl]
    or h
    or c
    ld a, a
    adc h
    add b
    sub d
    sub e
    add h
    sub c
    ld d, l
    db $e3
    db $e3
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and h
    xor l
    or e
    and h
    or c
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    call nc, $a17f
    or h
    or d
    or e
    and h
    and e
    and $4f
    adc e
    and b
    or e
    and h
    xor e
    cp b
    db $f4
    ld a, a
    adc b
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and [hl]
    and h
    or e
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and h
    xor b
    or c
    and e
    ld a, a
    or d
    xor b
    and [hl]
    xor l
    and b
    xor e
    add sp, $57
    nop
    add b
    or c
    xor [hl]
    xor [hl]
    xor [hl]
    rst $20
    ld a, a
    sub l
    xor [hl]
    xor b
    and d
    and h
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    cp b
    ld a, a
    and a
    and h
    and b
    and e
    rst $20
    ld d, c
    add a
    or h
    and a
    and $7f
    adc b
    jp nc, $ab7f

    xor b
    or d
    or e
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
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
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    and $57
    nop
    add e
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
    or d
    ld a, a
    and b
    xor e
    xor e
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
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor b
    or e
    cp b
    ld d, l
    xor [hl]
    and l
    ld a, a
    add c
    adc e
    add b
    add d
    adc d
    sub e
    add a
    adc [hl]
    sub c
    adc l
    add sp, $57
    nop
    sub d
    add b
    adc l
    sub e
    adc [hl]
    sub d
    sbc h
    ld a, a
    ld [hl], l
    ld d, c
    adc b
    or e
    call nc, $927f
    and b
    or e
    or h
    or c
    and e
    and b
    cp b
    ld [hl], l
    ld d, c
    adc b
    jp nc, $927f

    add b
    adc l
    sub e
    adc [hl]
    sub d
    ld a, a
    xor [hl]
    and l
    ld c, a
    sub d
    and b
    or e
    or h
    or c
    and e
    and b
    cp b
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
    and a
    and b
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld [hl], l
    ld d, a
    nop
    sub d
    add b
    adc l
    sub e
    adc [hl]
    sub d
    sbc h
    ld a, a
    ld [hl], l
    ld d, c
    sub d
    adc a
    add h
    adc e
    adc e
    ld a, a
    sub e
    add b
    add [hl]
    ld [hl], l
    ld d, c
    add [hl]
    and a
    xor [hl]
    or d
    or e
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
    ld c, a
    and [hl]
    and h
    or e
    ld a, a
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
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and l
    or c
    xor b
    and [hl]
    and a
    or e
    and h
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    ld [hl], l
    ld d, a
    nop
    sub d
    add b
    adc l
    sub e
    adc [hl]
    sub d
    sbc h
    ld a, a
    ld [hl], l
    ld d, c
    sub d
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
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and b
    xor l
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    sub d
    and b
    or e
    or h
    or c
    and e
    and b
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
    and a
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and [hl]
    xor b
    and l
    or e
    or d
    ld [hl], l
    ld d, a
    nop
    sub d
    add b
    adc l
    sub e
    adc [hl]
    sub d
    sbc h
    ld a, a
    sub e
    xor [hl]
    and e
    and b
    cp b
    call nc, $ad4f
    xor [hl]
    or e
    ld a, a
    sub d
    and b
    or e
    or h
    or c
    and e
    and b
    cp b
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
    and d
    and b
    xor h
    and h
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
    and h
    ld a, a
    adc b
    add d
    add h
    ld d, l
    adc a
    add b
    sub e
    add a
    and $51
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
    ld a, a
    or c
    and h
    and b
    xor e
    ld c, a
    and a
    xor [hl]
    or e
    or d
    and a
    xor [hl]
    or e
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
    add c
    adc e
    add b
    add d
    adc d
    sub e
    add a
    adc [hl]
    sub c
    adc l
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, c
    add b
    ld a, a
    sub b
    or h
    xor b
    and h
    or e
    ld a, a
    adc h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    ld c, a
    sub c
    and h
    or e
    or c
    and h
    and b
    or e
    ld d, a
    nop
    add c
    adc e
    add b
    add d
    adc d
    sub e
    add a
    adc [hl]
    sub c
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
    add d
    adc e
    add b
    adc b
    sub c
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add c
    xor e
    and h
    or d
    or d
    and h
    and e
    ld a, a
    sub h
    or d
    and h
    or c
    ld c, a
    xor [hl]
    and l
    ld a, a
    add e
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
    ld d, a
    nop
    adc h
    adc [hl]
    sub l
    add h
    ld a, a
    add e
    add h
    adc e
    add h
    sub e
    add h
    sub c
    ldh [$92], a
    ld c, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ldh [$92], a
    ld a, a
    add e
    add h
    adc l
    ld c, a
    add b
    add a
    add h
    add b
    add e
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
    adc h
    adc b
    sub c
    add b
    add d
    adc e
    add h
    add c
    add h
    sub c
    sub c
    sbc b
    ld d, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    or h
    or c
    and h
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld c, a
    xor [hl]
    and l
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    or d
    or e
    and b
    or e
    or h
    or d
    ld d, l
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    add sp, $57
    nop
    nop
    ld [$120b], sp
    ld bc, $0105
    dec d
    dec c
    ld bc, $0305
    rla
    dec e
    ld bc, $0405
    dec e
    dec de
    ld [bc], a
    dec b
    dec b
    dec e
    dec d
    ld bc, $0605
    rla
    dec d
    ld bc, $0705
    add hl, bc
    inc h
    ld [bc], a
    inc bc
    dec a
    ld bc, $0114
    inc bc
    ld d, b
    nop
    rlca
    jr jr_069_4ca8

    nop
    ld h, l
    ld b, a
    dec c
    ld de, $6800
    ld b, a
    rla
    inc de
    nop
    ld l, e
    ld b, a
    add hl, de
    rrca
    nop
    ld l, [hl]
    ld b, a
    ld hl, $0011
    ld [hl], c
    ld b, a
    dec e
    inc e
    nop
    ld [hl], a
    ld b, a
    dec e
    ld d, $00
    ld [hl], h
    ld b, a
    add hl, bc

jr_069_4ca8:
    dec hl
    dec d
    dec e
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    add sp, $46
    db $e3
    ld b, $2b
    db $10
    rla
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    add sp, $46
    db $e4
    ld b, $2f
    dec e
    ld [de], a
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld [$4c47], sp
    rlca
    cpl
    ld b, $19
    ld [$ff00], sp
    rst $38
    nop
    nop
    dec bc
    ld b, a
    ld c, l
    rlca
    ld b, c
    dec e
    inc hl
    dec b
    ld bc, $ffff
    sub b
    nop
    ld c, $47
    rst $38
    rst $38
    inc h
    jr jr_069_4d03

    dec b
    ld [bc], a
    rst $38
    rst $38
    add b
    nop
    ld [hl+], a
    ld b, a
    rst $38
    rst $38
    daa
    rla
    ld h, $05
    ld bc, $ffff
    nop
    nop
    dec h
    ld b, a
    rst $38
    rst $38

jr_069_4d03:
    daa
    inc c
    inc e
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    dec hl
    ld b, a
    ld e, l
    rlca
    inc h
    rrca
    jr z, jr_069_4d1b

    nop
    rst $38
    rst $38
    and b
    nop
    jr z, jr_069_4d62

jr_069_4d1b:
    rst $38
    rst $38
    nop
    nop
    ld d, b
    dec b
    dec de
    add hl, bc
    add $4e
    db $fc
    ld c, [hl]
    nop
    nop
    dec hl
    ld c, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld [$544f], sp
    ld c, c
    sub c
    ld d, c
    dec b
    dec de
    ld a, [bc]
    sub a
    ld c, a
    rst $00
    ld c, a
    nop
    nop
    ccf
    ld c, l
    ld e, $17
    dec bc
    ld h, [hl]
    ld b, a
    inc [hl]
    ld h, a
    nop
    add hl, bc
    ld a, c
    ld c, l
    ld a, [hl+]
    dec bc
    add hl, bc
    bit 1, l
    ld sp, $026b
    add hl, bc
    ld h, d
    ld c, l
    ld c, h
    db $e4
    ld c, a
    ld d, l
    inc sp
    ld l, e
    ld [bc], a
    nop
    cp a
    ld c, l
    inc bc
    ld h, l
    ld c, l

jr_069_4d62:
    nop
    jp $974d


    dec bc
    ld b, $01
    db $d3
    ld c, l
    ld b, $02
    rst $08
    ld c, l
    ld b, e
    dec de
    ld a, [bc]
    nop
    nop
    rst $00
    ld c, l
    inc bc
    bit 1, l
    nop
    rst $10
    ld c, l
    ld h, h
    rst $00
    ld c, a
    nop
    nop
    add hl, de
    push af
    reti


    ld b, $02
    sub b
    ld c, l
    ld b, $01
    sub [hl]
    ld c, l
    ld b, $00
    sbc h
    ld c, l
    ld sp, $00cd
    add hl, bc
    or [hl]
    ld c, l
    ld sp, $0044
    add hl, bc
    xor c
    ld c, l
    ld e, [hl]
    dec de
    ld a, [bc]
    ld e, a
    ld h, b
    dec de
    push af
    reti


    ld bc, $6735
    nop
    sub c
    ld e, [hl]
    dec de
    ld b, $5f
    ld h, b
    dec de
    push af
    reti


    ld [bc], a
    dec [hl]
    ld h, a
    nop
    sub c
    ld e, [hl]
    dec de
    rlca
    ld e, a
    ld h, b
    dec [hl]
    ld h, a
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
    ld h, d
    dec b
    inc e
    ld [$505c], sp
    cp l
    ld d, b
    nop
    nop
    rst $20
    ld c, l
    ld h, [hl]
    ld b, a
    ld c, h
    rst $10
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld h, e
    dec b
    inc e
    add hl, bc
    ld [hl], $51
    cp a
    ld d, c
    nop
    nop
    ei
    ld c, l
    ld e, $17
    inc c
    ld h, [hl]
    ld b, a
    inc [hl]
    ld l, b
    nop
    add hl, bc
    dec [hl]
    ld c, [hl]
    ld a, [hl+]
    inc c
    add hl, bc
    add a
    ld c, [hl]
    ld sp, $026d
    add hl, bc
    ld e, $4e
    ld c, h
    reti


    ld d, c
    ld d, l
    inc sp
    ld l, l
    ld [bc], a
    nop
    ld a, e
    ld c, [hl]
    inc bc
    ld hl, $004e
    ld a, a
    ld c, [hl]
    sub a
    inc c
    ld b, $01
    adc a
    ld c, [hl]
    ld b, $02
    adc e
    ld c, [hl]
    ld b, e
    inc e
    add hl, bc
    nop
    nop
    add e
    ld c, [hl]
    inc bc
    add a
    ld c, [hl]
    nop
    sub e
    ld c, [hl]
    ld h, h
    cp a
    ld d, c
    nop
    nop
    add hl, de
    or $d9
    ld b, $02
    ld c, h
    ld c, [hl]
    ld b, $01
    ld d, d
    ld c, [hl]
    ld b, $00
    ld e, b
    ld c, [hl]
    ld sp, $00cd
    add hl, bc
    ld [hl], d
    ld c, [hl]
    ld sp, $0044
    add hl, bc
    ld h, l
    ld c, [hl]
    ld e, [hl]
    inc e
    add hl, bc
    ld e, a
    ld h, b
    dec de
    or $d9
    ld bc, $6835
    nop
    sub c
    ld e, [hl]
    inc e
    inc c
    ld e, a
    ld h, b
    dec de
    or $d9
    ld [bc], a
    dec [hl]
    ld l, b
    nop
    sub c
    ld e, [hl]
    inc e
    ld [de], a
    ld e, a
    ld h, b
    dec [hl]
    ld l, b
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
    jr z, jr_069_4e92

jr_069_4e92:
    sub c
    inc c
    add hl, hl
    nop
    sub c
    ld b, d
    inc b
    inc [hl]
    add hl, bc
    inc b
    ld d, d
    ld l, d
    ld d, d
    nop
    nop
    and e
    ld c, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, b
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld h, d
    inc b
    dec h
    dec d
    call nz, $0d52
    ld d, e
    nop
    nop
    or a
    ld c, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    ld h, $53
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld h, h
    ld d, e
    sbc e
    ld c, $15
    ld bc, $8800
    jp nc, $ac7f

    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    and l
    xor b
    xor l
    and b
    xor e
    ld a, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld d, c
    and l
    xor [hl]
    or c
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
    add sp, $57
    nop
    adc b
    ld a, a
    and c
    xor e
    and h
    or [hl]
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a67f
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
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
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
    adc b
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    xor h
    xor [hl]
    or c
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
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    call nc, $847f
    adc e
    adc b
    sub e
    add h
    ld d, c
    add l
    adc [hl]
    sub h
    sub c
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
    and h
    or c
    ld c, a
    or e
    and a
    and b
    xor l
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
    add sp, $57
    nop
    add c
    cp b
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
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
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
    cp b
    xor [hl]
    or h
    ld d, l
    and [hl]
    and b
    xor b
    xor l
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    add sp, $57
    nop
    add [hl]
    and b
    and b
    and a
    rst $20
    ld a, a
    adc e
    xor b
    and l
    and h
    ld a, a
    xor b
    or d
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
    rst $20
    ld d, a
    nop
    sub e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    xor [hl]
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
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld c, a
    sub l
    adc b
    add d
    sub e
    adc [hl]
    sub c
    sbc b
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    sub l
    adc b
    add d
    sub e
    adc [hl]
    sub c
    sbc b
    ld a, a
    sub c
    adc [hl]
    add b
    add e
    ld c, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
    adc a
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
    ld a, a
    xor l
    xor [hl]
    and c
    xor [hl]
    and e
    cp b
    ld c, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    or e
    and a
    and h
    or c
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
    sub $a4
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and l
    and b
    or c
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
    ld d, l
    and c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
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
    and [hl]
    xor b
    or l
    and h
    ld c, a
    or e
    and a
    xor b
    or d
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
    or c
    cp b
    db $e3
    ld d, l
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
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
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    adc b
    sub $a4
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    and h
    and e
    ld c, a
    and h
    xor b
    and [hl]
    and a
    or e
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
    db $f4
    ld d, c
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    and d
    xor [hl]
    xor l
    and l
    xor b
    and e
    and h
    xor l
    or e
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
    or e
    xor [hl]
    ld a, a
    or e
    or c
    cp b
    ld c, a
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
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    adc b
    ld a, a
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
    or e
    or c
    and b
    xor b
    xor l

Jump_069_5148:
    db $e3
    ld c, a
    and h
    or c
    ld a, a
    xor l
    and b
    xor h
    and h
    and e
    ld a, a
    ld d, e
    add sp, $51
    add a
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
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, c
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    or d
    ld a, a
    xor b
    and l
    ld a, a
    and a
    and h
    ld c, a
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
    ld a, a
    and a
    and b
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    and d
    xor [hl]
    or d
    or e
    add sp, $51
    adc b
    ld a, a
    and l
    and h
    xor e
    or e
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    xor l
    push de
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
    xor b
    xor l
    db $e3
    ld c, a
    or l
    and b
    xor e
    or h
    and b
    and c
    xor e
    and h
    db $f4
    ld a, a
    xor e
    xor b
    and l
    and h
    xor e
    xor [hl]
    xor l
    and [hl]
    ld d, l
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    or d
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
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
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    rst $20
    ld d, l
    adc b
    jp nc, $a87f

    xor h
    xor a
    or c
    and h
    or d
    or d
    and h
    and e
    add sp, $51
    add c
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
    ld c, a
    or d
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
    cp b
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, c
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
    or e
    and a
    and h
    xor h
    db $f4
    ld c, a
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
    or e
    and a
    and h
    xor b
    or c
    ld d, l
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
    or d
    add sp, $51
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor e
    and b
    cp c
    cp b
    ld a, a
    and b
    xor l
    and e
    ld c, a
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
    adc b
    jp nc, $a57f

    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    or e
    xor [hl]
    and e
    and b
    cp b
    rst $20
    ld d, c
    adc b
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
    ld a, a
    adc b
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    xor [hl]
    xor [hl]
    or e
    ld a, a
    and h
    or l
    and h
    xor l
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
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    adc l
    xor [hl]
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
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
    or d
    and a
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    call nc, $a07f
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld d, c
    xor b
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    and l
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
    or h
    xor a
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$04
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
    ld c, a
    sub c
    add h
    add d
    add h
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    add [hl]
    add b
    sub e
    add h
    ld d, a
    nop
    nop
    inc bc
    dec b
    rlca
    inc bc
    rla
    dec c
    add hl, sp
    rrca
    ld bc, $0a18
    ld b, a
    dec b
    ld bc, $0b18
    nop
    ld bc, $0608
    nop
    cp a
    ld c, [hl]
    ld [$5a23], sp
    dec c
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    ld [bc], a
    rra
    ld c, l
    rst $38
    rst $38
    inc hl
    dec bc
    dec c
    ld [$ff00], sp
    rst $38
    add d
    inc bc
    inc sp
    ld c, l
    rst $38
    rst $38
    inc h
    inc [hl]
    db $10
    ld [$ff00], sp
    rst $38
    add d
    inc bc
    db $db
    ld c, l
    rst $38
    rst $38
    inc h
    dec bc
    ld a, [bc]
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc b
    rst $28
    ld c, l
    rst $38
    rst $38
    daa
    inc [hl]
    dec c
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    ld [bc], a
    sub a
    ld c, [hl]
    rst $38
    rst $38
    ld a, [hl-]
    ld e, d
    ld de, $0008
    rst $38
    rst $38
    and d
    inc bc
    xor e
    ld c, [hl]
    rst $38
    rst $38
    ld e, l
    inc [hl]
    inc de
    ld bc, $ff00
    rst $38
    nop
    nop
    jp nz, $ff4e

    rst $38
    ld d, h
    inc de
    dec c
    ld bc, $ff00
    rst $38
    ld bc, $c400
    ld c, [hl]
    xor d
    ld b, $00
    nop
    ld d, e
    inc de
    ld d, h
    and e
    nop
    jr nz, jr_069_5414

jr_069_5414:
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld hl, sp-$02
    ld d, a
    nop
    nop
    ld [bc], a
    inc bc
    ld [$1301], sp
    inc b
    dec b
    ld hl, $1707
    dec c
    nop
    ld [bc], a
    dec b
    rra
    nop
    dec c
    ld d, h
    ld [bc], a
    rra
    rlca
    db $10
    ld d, h
    nop
    nop
    ld bc, $3c05
    ld d, h
    ld sp, $0040
    ld [$5443], sp
    sub b
    sbc h
    rlca
    nop
    sub b
    dec sp
    dec b
    inc h
    inc b
    dec [hl]
    ld d, [hl]
    ld l, b
    ld d, [hl]
    nop
    nop
    ld d, e
    ld d, h
    ld e, $17
    db $10
    ld h, [hl]
    ld b, a
    inc [hl]
    ld l, h
    nop
    add hl, bc
    sub e
    ld d, h

Call_069_545e:
    inc [hl]
    ld a, a
    nop
    add hl, bc
    rlca
    ld d, l
    ld a, [hl+]
    db $10

Call_069_5466:
    add hl, bc
    ld e, b
    ld d, l

Call_069_5469:
    ld sp, $0275
    add hl, bc
    ld a, h

Jump_069_546e:
    ld d, h
    ld c, h

Call_069_5470:
    ld [hl], c
    ld d, [hl]
    ld d, h
    inc sp
    ld [hl], l
    ld [bc], a
    nop
    ld c, h
    ld d, l
    inc bc
    ld a, a
    ld d, h
    nop
    ld d, b
    ld d, l
    sub a
    db $10
    ld b, $01
    ld h, b
    ld d, l
    ld b, $02
    ld e, h
    ld d, l
    ld b, e
    inc h
    inc b
    nop
    nop
    ld d, h
    ld d, l
    inc bc
    ld e, b
    ld d, l
    nop
    ld h, h
    ld d, l
    ld h, h
    ld l, b
    ld d, [hl]
    nop
    nop
    add hl, de
    ld a, [$06d9]
    inc b
    or d
    ld d, h
    ld b, $03
    cp b
    ld d, h
    ld b, $02
    cp [hl]
    ld d, h
    ld b, $01
    call nz, $0654
    nop
    jp z, $3154

    ld b, h
    nop
    add hl, bc
    cp $54
    ld sp, $0021
    add hl, bc
    pop af
    ld d, h
    inc [hl]
    ld c, c
    nop
    add hl, bc
    db $e4
    ld d, h
    inc [hl]
    ld b, [hl]
    nop
    add hl, bc
    rst $10
    ld d, h
    ld e, [hl]
    inc h
    inc b
    ld e, a
    ld h, b
    dec de
    ld a, [$01d9]
    dec [hl]
    ld l, h
    nop
    sub c
    ld e, [hl]
    inc h
    ld a, [bc]
    ld e, a
    ld h, b
    dec de
    ld a, [$02d9]
    dec [hl]
    ld l, h
    nop
    sub c
    ld e, [hl]
    inc h
    dec bc
    ld e, a
    ld h, b
    dec de
    ld a, [$03d9]
    dec [hl]
    ld l, h
    nop
    sub c
    ld e, [hl]
    inc h
    rrca
    ld e, a
    ld h, b
    dec de
    ld a, [$04d9]
    dec [hl]
    ld l, h
    nop
    sub c
    ld e, [hl]
    inc h
    db $10
    ld e, a
    ld h, b
    dec [hl]
    ld l, h
    nop
    sub c
    nop
    ld l, b
    ld d, l
    ld sp, $032b
    add hl, bc
    ld [hl+], a
    ld d, l
    ld sp, $032c
    add hl, bc
    dec hl
    ld d, l
    ld sp, $032d
    add hl, bc
    inc [hl]
    ld d, l
    ld sp, $032e
    add hl, bc
    dec a
    ld d, l
    sbc [hl]
    xor l
    ld bc, $4908
    ld d, l
    inc bc
    ld b, e
    ld d, l
    sbc [hl]
    ld c, d
    ld bc, $4908
    ld d, l
    inc bc
    ld b, e
    ld d, l
    sbc [hl]
    ld c, [hl]
    ld bc, $4908
    ld d, l
    inc bc
    ld b, e
    ld d, l
    sbc [hl]
    ld d, e
    ld bc, $4908
    ld d, l
    dec [hl]
    ld a, a
    nop
    inc bc
    ld e, b
    ld d, l
    inc bc
    ld l, h
    ld d, l
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

jr_069_5557:
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
    jr nz, jr_069_556b

jr_069_556b:
    sub c
    inc c
    ld hl, $9100
    ld l, e
    ld b, a
    ld sp, $0053
    add hl, bc
    xor a
    ld d, l
    ld sp, $0050
    add hl, bc
    add h
    ld d, l
    ld c, h
    reti


    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld h, c
    ld d, a
    ld d, l
    jr nc, jr_069_5557

    ld d, l
    ld b, $00
    or l
    ld d, l
    ld b, $02
    pop bc
    ld d, l
    ld b, $03
    cp e
    ld d, l
    ld b, $04
    rst $00
    ld d, l
    ld c, h
    sub b
    ld d, a
    ld d, l
    ld c, h
    cp d
    ld d, a
    ld d, l
    inc sp
    ld d, c
    nop
    sbc [hl]
    ld a, [c]
    ld bc, $b308
    ld d, l
    inc sp
    ld d, e
    nop
    ld c, h
    sub [hl]
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld hl, $5459
    ld c, c
    sub c
    ld c, h
    add hl, sp
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], d
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    sub c
    ld e, c
    ld d, h
    ld c, c
    sub c
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
    ld d, c
    push de
    ld e, c
    ld d, e
    ld b, l
    ld e, d
    ld d, e
    ld l, [hl]
    ld e, d
    ld d, c
    rst $38
    ld d, l
    sbc e
    rlca
    ld [de], a
    ld bc, $0105
    nop
    add e
    add b
    sub c
    adc d
    ld a, a
    add d
    add b
    sub l
    add h
    ld [hl], l
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
    or h
    xor e
    and e
    ld c, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    db $f4
    ld a, a
    adc b
    ret nc

    ld d, l
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and h
    ld a, a
    xor b
    or e
    add sp, $57
    nop
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
    and c
    or h
    xor l
    and d
    and a
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $7f
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
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
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add b
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
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
    or e
    and d
    and a
    ld c, a
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
    xor b
    and l
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or d
    xor b
    or a
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    and l
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
    ld a, a
    xor [hl]
    xor l
    and h
    db $f4
    ld c, a
    xor b
    or e
    pop de
    xor e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    add c
    adc [hl]
    sub a
    ld a, a
    and b
    or h
    or e
    xor [hl]
    xor h
    and b
    or e
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    add sp, $57
    nop
    ld [hl], l
    ld a, a
    add a
    xor l
    or h
    or h
    or c
    and [hl]
    ld [hl], l
    ld a, a
    add a
    or h
    and a
    and $51
    adc b
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and l
    and b
    or c
    ld c, a
    or e
    xor [hl]
    and e
    and b
    cp b
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc h
    cp b
    ld a, a
    and l
    and h
    and h
    or e
    ld a, a
    and a
    or h
    or c
    or e
    ld a, a
    and b
    xor l
    and e
    ld c, a
    adc b
    jp nc, $b27f

    xor e
    and h
    and h
    xor a
    cp b
    ld [hl], l
    ld d, c
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    adc b
    ret nc

    ld a, a
    and c
    and h
    ld d, l
    and h
    and b
    or d
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld [hl], l
    ld d, c
    ld [hl], l
    sbc c
    cp c
    cp c
    cp c
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    sbc c
    cp c
    cp c
    cp c
    ld [hl], l
    ld a, a
    add a
    or h
    and a
    and $51
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    and $57
    nop
    ld d, d
    ld a, a
    and a
    and b
    xor l
    and e
    and h
    and e
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    adc b
    adc e
    add sp, $57
    nop
    adc e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld [hl], l
    ld d, c
    ld [hl], l
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
    ld c, a
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
    ld [hl], l
    ld d, c
    sub e
    and a
    and b
    or e
    call nc, $a67f
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    and c
    or c
    xor b
    xor l
    and [hl]
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    add sp, $51
    adc h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    call nc, $a07f
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and [hl]
    or h
    cp b
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld d, l
    or d
    or [hl]
    and h
    xor e
    xor e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, c
    adc b
    ret nc

    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    xor [hl]
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor b
    xor l
    ld d, l
    or c
    and h
    or e
    or h
    or c
    xor l
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
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
    sub e
    adc h
    ei
    or $7f
    xor b
    or d
    ld a, a
    adc l
    adc b
    add [hl]
    add a
    sub e
    adc h
    add b
    sub c
    add h
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    or [hl]
    xor b
    and d
    xor d
    and h
    and e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    or e
    and h
    and b
    and e
    xor b
    xor e
    cp b
    ld a, a
    and d
    or h
    or e
    or d
    ld d, c
    or e
    and a
    and h
    ld a, a
    add a
    adc a
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor l
    and h
    xor h
    cp b
    add sp, $51
    adc [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    and a
    ld [hl], l
    ld c, a
    sub e
    and a
    and b
    or e
    call nc, $b27f
    and d
    and b
    or c
    cp b
    ld [hl], l
    ld d, c
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
    or e
    xor [hl]
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and c
    and b
    and e
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    or d
    add sp, $57
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    xor b
    or d
    xor l
    push de
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    add sp, $57
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    and $51
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
    and a
    and b
    or l
    and h
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    adc h
    add b
    adc b
    adc e
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
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    and $57
    nop
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    or e
    and b
    xor d
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
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld d, c
    or [hl]
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
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    xor l
    ld a, a
    add e
    add b
    sub c
    adc d
    ld d, l
    add d
    add b
    sub l
    add h
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
    or c
    and b
    xor b
    or d
    and h
    ld c, a
    xor b
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
    xor l
    ld d, l
    add l
    add b
    adc e
    adc d
    adc l
    add h
    sub c
    add sp, $51
    add a
    and h
    call nc, $b37f
    and a
    and h
    ld a, a
    xor e
    and h
    and b
    and e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    call nc, $867f
    sbc b
    adc h
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    rst $30
    ld d, c
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
    add e
    add b
    sub c
    adc d
    ld a, a
    add d
    add b
    sub l
    add h
    ld d, a
    nop
    nop
    inc bc
    ld b, $04
    inc bc
    ld a, [de]
    dec bc
    rlca
    inc b
    inc b
    ld a, [de]
    dec bc
    dec b
    ld [hl+], a
    ld bc, $4e03
    nop
    ld [bc], a
    dec b
    rlca
    nop
    ldh a, [rHDMA5]
    dec b
    rra
    nop
    di
    ld d, l
    rlca
    ld a, [hl-]
    dec bc
    dec d
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld [hl], b
    ld d, l
    rst $38
    rst $38
    daa
    add hl, bc
    dec c
    ld [bc], a
    ld de, $ffff
    nop
    nop
    db $ed
    ld d, l
    rst $38
    rst $38
    dec h
    ld de, $0819
    nop
    rst $38
    rst $38
    or d
    dec b
    ld b, a
    ld d, h
    rst $38
    rst $38
    inc hl
    ld c, $28
    ld [bc], a
    ld de, $ffff
    nop
    nop
    or $55
    rst $38
    rst $38
    ld e, l
    dec bc
    inc d
    ld bc, $ff00
    rst $38
    nop
    nop
    ld sp, hl
    ld d, l
    rst $38
    rst $38
    ld d, h
    add hl, bc
    ld hl, $0001
    rst $38
    rst $38
    ld bc, $fb00
    ld d, l
    xor [hl]
    ld b, $54
    inc de
    rla
    ld bc, $ff00
    rst $38
    ld bc, $fd00
    ld d, l
    xor a
    ld b, $00
    nop
    ld b, a
    ld c, h
    ld sp, hl
    ld e, e
    add h
    pop af
    nop
    ld d, h
    ld c, c
    sub c
    adc $04
    dec sp
    ld [bc], a
    and l
    ld e, h
    call nc, $005c
    nop
    dec bc
    ld e, e
    ld e, $17
    inc e
    ld h, [hl]
    ld b, a
    inc [hl]
    add e
    nop
    add hl, bc
    ld c, d
    ld e, e
    ld a, [hl+]
    inc e
    add hl, bc
    ld l, [hl]
    ld e, e
    inc l
    add hl, de
    ld [$5b5c], sp
    ld sp, $028d
    add hl, bc
    inc sp
    ld e, e
    ld c, h
    ld hl, sp+$5c
    ld d, l
    inc sp
    adc l
    ld [bc], a
    nop
    ld h, d
    ld e, e
    inc bc
    ld [hl], $5b
    nop
    ld h, [hl]
    ld e, e
    sub a
    inc e
    ld b, $01
    db $76
    ld e, e
    ld b, $02
    ld [hl], d
    ld e, e
    ld b, e
    dec sp
    ld [bc], a
    nop
    nop
    ld l, d
    ld e, e
    inc bc
    ld l, [hl]
    ld e, e
    nop
    ld a, d
    ld e, e
    sbc [hl]
    inc h
    ld bc, $5908
    ld e, e
    dec [hl]
    add e
    nop
    inc bc
    ld l, [hl]
    ld e, e
    inc bc
    ld a, [hl]
    ld e, e
    ld c, h
    db $ec
    ld e, l
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
    jr nz, jr_069_5b7d

jr_069_5b7d:
    sub c
    inc c
    ld hl, $9100
    jp c, $3e04

    ld [bc], a
    ld e, e
    ld e, l
    sbc l
    ld e, l
    nop
    nop
    adc [hl]
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    or d
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld [hl], l
    dec b
    jr z, jr_069_5b9b

    add hl, bc

jr_069_5b9b:
    ld e, h
    ld b, d
    ld e, h
    nop
    nop
    and d
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, l
    ld e, h
    ld d, h
    ld c, c
    sub c
    ccf
    inc b
    inc [hl]
    ld b, $0c
    ld e, [hl]
    scf
    ld e, [hl]
    nop
    nop
    or [hl]
    ld e, e
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, a
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    dec hl
    inc b
    ld [$5be5], sp
    ld sp, $05c2
    add hl, bc
    rst $18
    ld e, e
    ld c, h
    add sp, $5e
    ld d, h
    ld c, c
    ld h, h
    rla
    ld e, a
    nop
    nop
    ld e, [hl]
    ld a, $06
    ld e, a
    ld h, b
    inc sp
    jp nz, Jump_069_4905

    sub c
    ld c, h
    ld sp, $545f
    ld c, c
    sub c
    ld c, h
    call nz, Call_069_545e
    ld c, c
    sub c
    ld d, e
    db $e3
    ld e, a
    ld d, e
    ld a, [bc]
    ld h, b
    ld d, e
    ld [hl], $60
    sbc e
    rrca
    xor d
    nop
    inc h
    nop
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    sbc h
    ld a, a
    adc h
    xor [hl]
    xor [hl]
    xor [hl]
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
    ld c, a
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    and $57
    nop
    add b
    or [hl]
    and b
    and b
    and b
    or c
    and [hl]
    and a
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
    or [hl]
    and h
    or c
    and h
    ld c, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    and e
    ld d, l
    xor [hl]
    or l
    and h
    or c
    or d
    and h
    and b
    or d
    add sp, $51
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    xor l
    db $e3
    ld c, a
    xor b
    xor [hl]
    xor l
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld d, l
    or l
    xor [hl]
    cp b
    and b
    and [hl]
    and h
    or d
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
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    or c
    and b
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, l
    xor h
    cp b
    ld a, a
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
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld [hl], l
    ld d, a
    nop
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and c
    or c
    and b
    and [hl]
    and [hl]
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    sub [hl]
    and h
    ld a, a
    ld d, h
    ld a, a
    add l
    add b
    adc l
    sub d
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    ld a, a
    xor a
    xor [hl]
    xor e
    xor b
    and d
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor l
    xor [hl]
    or e
    ld d, c
    xor e
    xor b
    or d
    or e
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
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
    ld a, a
    and c
    or c
    and b
    and [hl]
    rst $20
    ld d, a
    nop
    sub d
    or h
    and d
    and a
    ld a, a
    and e
    and b
    or c
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc e
    and h
    or e
    call nc, $b27f
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    and h
    or c
    ld d, l
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
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor h
    xor b
    xor l
    and e
    ld c, a
    xor e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
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
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    and c
    and b
    and c
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    adc b
    ld a, a
    and c
    and h
    or e
    ld a, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    rst $20
    ld d, a
    nop
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
    ld a, a
    xor b
    or e
    rst $20
    ld c, a
    add e
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
    or [hl]
    and a
    and b
    or e
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
    and b
    or c
    and h
    ld d, l
    and d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    and l
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
    or c
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
    ld a, a
    xor a
    xor [hl]
    or e
    and h
    xor l
    or e
    xor b
    and b
    xor e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and b
    or l
    and h
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
    and b
    and c
    xor b
    xor e
    xor b
    or e
    xor b
    and h
    or d
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
    xor e
    xor b
    xor d
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $7f
    add h
    or l
    and h
    or c
    cp b
    db $e3
    ld d, l
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and b
    or d
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
    xor a
    xor [hl]
    or e
    and h
    xor l
    or e
    xor b
    and b
    xor e
    add sp, $57
    nop
    sub h
    and l
    or h
    and l
    or h
    and l
    or h
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    and a
    xor [hl]
    xor a
    and h
    ld a, a
    xor b
    or e
    ld c, a
    and [hl]
    and h
    or e
    or d
    ld a, a
    and e
    and b
    or c
    xor d
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
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
    and b
    or e
    ld a, a
    xor c
    or h
    or d
    or e
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
    or e
    xor b
    xor h
    and h
    add sp, $51
    adc e
    and h
    or e
    call nc, $a17f
    and b
    or e
    or e
    xor e
    and h
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor b
    or d
    and b
    xor a
    db $e3
    ld c, a
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
    adc b
    ld a, a
    xor h
    and h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    ld a, a
    and b
    or e
    ld c, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
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
    ld d, l
    xor [hl]
    xor l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    rst $38
    add sp, $51
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    or [hl]
    and a
    cp b
    db $f4
    ld c, a
    and c
    or h
    or e
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
    ld d, c
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
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
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld c, a
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
    ld a, a
    and c
    cp b
    ld d, c
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and b
    xor l
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
    and h
    xor e
    or d
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
    rst $38
    ld d, c
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
    ld d, c
    add h
    xor l
    xor c
    xor [hl]
    cp b
    ld a, a
    adc [hl]
    or h
    or c
    ld a, a
    add l
    or c
    and h
    or d
    and a
    ld c, a
    and b
    xor l
    and e
    ld a, a
    sub e
    and b
    or d
    or e
    cp b
    ld a, a
    adc h
    xor b
    xor e
    xor d
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
    sub h
    or d
    and h
    ld a, a
    add a
    add h
    add b
    add e
    add c
    sub h
    sub e
    sub e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    or c
    and h
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    and b
    xor d
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $51
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
    xor d
    xor b
    xor l
    and e
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
    and e
    or c
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    or h
    or e
    ld d, l
    xor [hl]
    and l
    ld a, a
    or e
    or c
    and h
    and h
    or d
    add sp, $51
    sub h
    or d
    and h
    ld a, a
    add a
    add h
    add b
    add e
    add c
    sub h
    sub e
    sub e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $0101
    ld a, [bc]
    inc bc
    dec b
    ld bc, $0b01
    nop
    inc b
    rra
    dec b
    nop
    pop af
    ld e, e
    dec b
    add hl, bc
    nop
    xor $5b
    rlca
    rrca
    nop
    db $eb
    ld e, e
    dec c
    dec b
    rlca
    or $5b
    ld a, [bc]
    ld c, c
    jr nz, jr_069_60eb

    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc b
    sub [hl]
    ld e, e
    rst $38
    rst $38

jr_069_60eb:
    dec l
    ld a, [de]
    db $10
    ld [$ff00], sp
    rst $38
    add d
    inc b
    rst $38
    ld e, d
    rst $38
    rst $38
    ld l, $1c
    inc de
    ld b, $00
    rst $38
    rst $38
    add d
    inc b
    add d
    ld e, e
    rst $38
    rst $38
    sbc c
    db $10
    rlca
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    push af
    ld e, d
    rst $38
    rst $38
    sbc c
    rrca
    ld a, [bc]
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    push af
    ld e, d
    rst $38
    rst $38
    sbc c
    inc de
    ld [$0016], sp
    rst $38
    rst $38
    nop
    nop
    push af
    ld e, d
    rst $38
    rst $38
    sbc c
    ld de, $160c
    nop
    rst $38
    rst $38
    nop
    nop
    push af
    ld e, d
    rst $38
    rst $38
    ld h, [hl]
    dec e
    ld a, [bc]
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    ld bc, $5baa
    rst $38
    rst $38
    ld e, l
    rlca
    dec c
    ld bc, $ff00
    rst $38
    nop
    nop
    db $f4
    ld e, e
    rst $38
    rst $38
    ld l, $08
    ld [de], a
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    cp [hl]
    ld e, e
    rst $38
    rst $38
    nop
    ld bc, $6502
    ld h, c
    ld [hl-], a
    rst $08
    rlca
    inc e
    dec bc
    ld b, $01
    ld [hl], c
    ld h, c
    ld l, [hl]
    ld a, [bc]
    sub b
    ld l, a
    ld a, [bc]
    sub b
    add sp, $03
    daa
    ld bc, $632d
    ld l, c
    ld h, e
    nop
    nop
    add b
    ld h, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, e
    ld h, e
    ld d, h
    ld c, c
    sub c
    jp hl


    inc bc
    daa
    ld [bc], a
    xor c
    ld h, e
    db $dd
    ld h, e
    nop
    nop
    sub h
    ld h, c
    ld h, [hl]
    ld b, a
    ld c, h
    push af
    ld h, e
    ld d, h
    ld c, c
    sub c
    sub l
    dec b
    ld h, $02
    cpl
    ld h, d
    ld l, [hl]
    ld h, d
    nop
    nop
    xor b
    ld h, c
    ld h, [hl]
    ld b, a
    ld c, h
    add d
    ld h, d
    ld d, h
    ld c, c
    sub c
    sub [hl]
    dec b
    ld h, $03
    or h
    ld h, d
    ld [$0062], a
    nop
    cp h
    ld h, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [$5462]
    ld c, c
    sub c
    ld d, c
    add hl, hl
    ld h, h
    rrca
    and b
    nop
    add hl, bc
    ret nc

    ld h, c
    ld d, c
    ld l, d
    ld h, h
    ld d, c
    sbc e
    ld h, h
    ld d, c
    and $64
    ld d, c
    ld h, h
    ld h, l
    ld l, e
    ld b, a
    ld sp, $006f
    add hl, bc
    rlca
    ld h, d
    inc e
    dec bc
    rlca
    ld bc, $620d
    ld sp, $006e
    add hl, bc
    db $f4
    ld h, c
    ld c, h
    ld b, $66
    ld d, l
    inc sp
    ld l, [hl]
    nop
    ld c, h
    ld [hl], $66
    ld d, l
    sbc [hl]
    ld c, l
    ld bc, $0b08
    ld h, d
    inc sp
    ld l, a
    nop
    ld c, h
    ld l, h
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    call c, Call_069_5466
    ld c, c
    sub c
    ld c, h
    scf
    ld h, a
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld h, a
    ld h, a
    inc c
    rrca
    nop
    xor e
    nop
    db $10
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    dec c
    dec c
    dec c
    dec c
    ld b, a
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
    or e
    xor [hl]
    ld a, a
    or [hl]
    and b
    or c
    xor h
    ld c, a
    or h
    xor a
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld d, l
    xor b
    xor l
    or e
    xor [hl]
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
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $a17f
    and b
    or d
    xor b
    and d
    add sp, $57
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    sub h
    xor l
    and d
    xor e
    and h
    rst $20
    ld a, a
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
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
    ld a, a
    xor b
    or d
    ld c, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    and e
    xor b
    or d
    or e
    and b
    xor l
    and d
    and h
    ld d, l
    and b
    or [hl]
    and b
    cp b
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
    add a
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and l
    xor b
    or e
    rst $20
    ld d, c
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    or c
    xor b
    and e
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
    rst $20
    ld a, a
    sub d
    or [hl]
    xor b
    xor h
    rst $20
    ld d, a
    nop
    sub h
    and a
    db $e3
    xor [hl]
    and a
    add sp, $7f
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
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
    and h
    xor l
    or e
    xor b
    or c
    and h
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $55
    adc b
    or e
    call nc, $a77f
    and h
    and b
    xor e
    or e
    and a
    cp b
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
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    and $51
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    and $57
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
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    adc b
    ret nc

    ld a, a
    or d
    and b
    cp b
    ld a, a
    adc b
    jp nc, $a07f

    ld a, a
    and c
    and h
    or e
    db $e3
    ld c, a
    or e
    and h
    or c
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    and h
    or c
    ld a, a
    or e
    and a
    and b
    xor l
    ld d, l
    cp b
    xor [hl]
    or h
    add sp, $7f
    sbc b
    and h
    and b
    and a
    rst $20
    ld d, a
    nop
    adc l
    xor [hl]
    ld a, a
    xor b
    xor l
    xor l
    and h
    or c
    ld a, a
    or e
    or h
    and c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor h
    and h
    add sp, $51
    adc b
    jp nc, $a77f

    and b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    and b
    ld a, a
    or d
    and h
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
    and a
    db $f4
    ld a, a
    adc b
    jp nc, $a57f

    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    and e
    xor b
    cp c
    cp c
    cp b
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    adc b
    ld a, a
    and l
    xor e
    xor [hl]
    and b
    or e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
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
    or [hl]
    and b
    or l
    and h
    or d
    ld d, l
    and d
    and b
    or c
    or c
    cp b
    ld a, a
    xor h
    and h
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    add sp, $57
    nop
    add b
    xor e
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
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
    or d
    and h
    and h
    ld a, a
    xor b
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
    db $f4
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
    xor b
    or d
    ld a, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld c, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    add sp, $57
    nop
    add a
    xor h
    rst $20
    ld a, a
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
    and c
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
    and b
    and a
    and h
    and b
    and e
    rst $20
    ld d, c
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    and $57
    nop
    add a
    xor h
    rst $20
    ld a, a
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
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
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    db $e3
    ld d, l
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld d, l
    or d
    or e
    or c
    and h
    and b
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    add sp, $51
    sub [hl]
    and a
    and b
    or e
    and $7f
    sub [hl]
    and a
    and b
    or e
    and $57
    nop
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
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    ld c, a
    and c
    cp b
    ld a, a
    or d
    and a
    xor b
    xor a
    ld a, a
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
    ld d, c
    or d
    xor b
    and [hl]
    and a
    or e
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor [hl]
    and b
    xor d
    ld a, a
    or h
    xor a
    ld c, a
    or e
    and a
    and h
    ld a, a
    and b
    or e
    xor h
    xor [hl]
    or d
    xor a
    and a
    and h
    or c
    and h
    add sp, $51
    add c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    xor a
    xor [hl]
    or c
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld c, a
    and l
    and h
    and h
    xor e
    or d
    ld a, a
    or d
    xor [hl]
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
    and l
    or c
    xor [hl]
    xor h
    ld a, a
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
    and [hl]
    xor [hl]
    xor l
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    and $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
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
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    and [hl]
    and b
    or e
    and a
    and h
    or c
    and h
    and e
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
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
    and a
    and b
    or l
    and h
    ld c, a
    or d
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    db $f4
    ld d, c
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
    xor l
    push de
    ld a, a
    and e
    xor [hl]
    ld c, a
    and c
    and b
    and e
    xor e
    cp b
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    add sp, $57
    nop
    adc h
    adc [hl]
    adc l
    adc b
    add d
    add b
    sbc h
    ld a, a
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
    add sp, $7f
    adc b
    jp nc, $8c51

    adc [hl]
    adc l
    adc b
    add d
    add b
    ld a, a
    xor [hl]
    and l
    ld a, a
    adc h
    xor [hl]
    xor l
    and e
    and b
    cp b
    add sp, $57
    nop
    add b
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
    ld a, a
    xor [hl]
    or h
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
    db $f4
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    and b
    ld a, a
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
    rst $20
    ld d, a
    nop
    adc h
    adc [hl]
    adc l
    adc b
    add d
    add b
    sbc h
    ld a, a
    adc b
    or e
    call nc, $a07f
    xor l
    ld c, a
    xor b
    or e
    and h
    xor h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld d, c
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
    and l
    xor e
    cp b
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
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
    and h
    or b
    or h
    xor b
    xor a
    ld a, a
    and b
    ld c, a
    and c
    xor b
    or c
    and e
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
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    and h
    xor h
    add sp, $57
    nop
    adc h
    adc [hl]
    adc l
    adc b
    add d
    add b
    sbc h
    ld a, a
    adc h
    cp b
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    db $e3
    ld c, a
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    or d
    ld d, c
    and b
    or c
    and h
    ld a, a
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
    and a
    and h
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
    add sp, $51
    sub d
    and h
    and h
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, a
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
    and b
    xor e
    xor e
    rst $20
    ld d, a
    nop
    adc h
    adc [hl]
    adc l
    adc b
    add d
    add b
    sbc h
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    ld a, a
    xor b
    or d
    ld d, l
    adc h
    xor [hl]
    xor l
    and e
    and b
    cp b
    add sp, $7f
    add a
    xor [hl]
    or [hl]
    ld a, a
    or d
    and b
    and e
    ld [hl], l
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$51f6]
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
    db $e3
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
    ld d, a
    nop
    nop
    ld bc, $0905
    ld bc, $0f16
    nop
    ld [bc], a
    ld a, [bc]
    ld c, $00
    inc de
    ld h, d
    ld [$0707], sp
    add hl, de
    ld h, d
    inc c
    push af
    jr nz, jr_069_67ac

    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc b

jr_069_67ac:
    sbc h
    ld h, c
    rst $38
    rst $38
    push af
    ld [hl+], a
    ld d, $08
    nop
    rst $38
    rst $38
    add d
    dec b
    or b
    ld h, c
    rst $38
    rst $38
    ld [hl-], a
    ld [hl+], a
    inc d
    add hl, bc
    nop
    rst $38
    rst $38
    and d
    inc b
    ld [hl], h
    ld h, c
    rst $38
    rst $38
    ld [hl-], a
    jr nz, jr_069_67d5

    ld [$ff00], sp
    rst $38
    and d
    inc bc
    adc b
    ld h, c

jr_069_67d5:
    rst $38
    rst $38
    ld e, c
    rrca
    dec bc
    jr jr_069_67dc

jr_069_67dc:
    rst $38
    rst $38
    nop
    nop
    ld d, $62
    rst $38
    rst $38
    ld e, c
    dec c
    ld a, [bc]
    jr jr_069_67e9

jr_069_67e9:
    rst $38
    rst $38
    nop
    nop
    ld d, $62
    rst $38
    rst $38
    ld e, c
    inc c
    dec bc
    jr jr_069_67f6

jr_069_67f6:
    rst $38
    rst $38
    nop
    nop
    ld d, $62
    rst $38
    rst $38
    jr z, jr_069_6811

    rrca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    call nz, $ff61
    rst $38
    ld a, [hl+]
    ld c, $0c
    inc bc
    nop
    rst $38

jr_069_6811:
    rst $38
    nop
    nop
    reti


    ld h, c
    ld e, [hl]
    rlca
    dec l
    ld a, [bc]
    dec bc
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    rst $00
    ld h, c
    rst $38
    rst $38
    jr z, jr_069_682f

    ld de, $0003
    rst $38
    rst $38
    and b
    nop
    db $d3

jr_069_682f:
    ld h, c
    rst $38
    rst $38
    ld h, [hl]
    dec c
    inc d
    inc bc
    nop
    rst $38
    rst $38
    sub b
    nop
    sub $61
    rst $08
    rlca
    nop
    nop
    ld [$2703], a
    inc bc
    inc h
    ld l, h
    ld h, a
    ld l, h
    nop
    nop
    ld c, l
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, a
    ld l, h
    ld d, h
    ld c, c
    sub c
    db $eb
    inc bc
    daa
    inc b
    jp c, $046c

    ld l, l
    nop
    nop
    ld h, c
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld de, $546d
    ld c, c
    sub c
    db $ec
    inc bc
    daa
    dec b
    ld b, [hl]
    ld l, l
    ld [hl], d
    ld l, l
    nop
    nop
    ld [hl], l
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, c
    ld l, l
    ld d, h
    ld c, c
    sub c
    db $ed
    inc bc
    daa
    ld b, $d0
    ld l, l
    inc sp
    ld l, [hl]
    nop
    nop
    adc c
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, b
    ld l, [hl]
    ld d, h
    ld c, c
    sub c
    xor $03
    daa
    rlca
    add l
    ld l, [hl]
    or a
    ld l, [hl]
    nop
    nop
    sbc l
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    jp nz, Jump_069_546e

    ld c, c
    sub c
    sub a
    dec b
    ld h, $04
    rrca
    ld l, c
    ld d, d
    ld l, c
    nop
    nop
    or c
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, [hl]
    ld l, c
    ld d, h
    ld c, c
    sub c
    sbc b
    dec b
    ld h, $05
    sbc c
    ld l, c
    rst $00
    ld l, c
    nop
    nop
    push bc
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    call nc, Call_069_5469
    ld c, c
    sub c
    sbc c
    dec b
    ld h, $06
    ld l, $6a
    add b
    ld l, d
    nop
    nop
    reti


    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    and h
    ld l, d
    ld d, h
    ld c, c
    sub c
    sbc d
    dec b
    ld h, $07
    ld h, $6b
    ld h, d
    ld l, e
    nop
    nop
    db $ed
    ld l, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, h
    ld l, e
    ld d, h
    ld c, c
    sub c
    sbc e
    dec b
    ld h, $08
    sbc l
    ld l, e
    call z, $006b
    nop
    ld bc, $6669
    ld b, a
    ld c, h
    db $ed
    ld l, e
    ld d, h
    ld c, c
    sub c
    inc c
    rrca
    nop
    xor h
    nop
    ld b, b
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    call nc, $b67f
    and b
    or c
    xor h
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $7f
    adc b
    jp nc, $ab7f

    xor [hl]
    xor [hl]
    or d
    and h
    ld d, l
    and b
    xor l
    and e
    ld a, a
    xor e
    xor b
    xor h
    and c
    and h
    or c
    add sp, $51
    sub d
    or h
    or c
    and h
    db $f4
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
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
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    xor a
    or c
    or h
    xor l
    and h
    ld a, a
    or d
    xor d
    xor b
    xor l
    rst $20
    ld d, a
    nop
    adc b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and h
    xor e
    and b
    or a
    xor b
    xor l
    and [hl]
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    and l
    xor e
    xor [hl]
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    or e
    and a
    xor b
    or d
    and $57
    nop
    adc b
    jp nc, $a07f

    ld a, a
    and c
    xor b
    or e
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    add sp, $4f
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
    xor e
    and h
    xor l
    and e
    ld a, a
    xor h
    and h
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
    ld d, a
    nop
    adc b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    and l
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld c, a
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $ad7f
    xor [hl]
    ld a, a
    and h
    and b
    or d
    cp b
    ld c, a
    or c
    and h
    or e
    or h
    or c
    xor l
    ld a, a
    or e
    or c
    xor b
    xor a
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
    and h
    xor b
    or e
    and a
    and h
    or c
    add sp, $51
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
    and e
    xor [hl]
    and $57
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
    xor b
    or d
    xor e
    and b
    xor l
    and e
    or d
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld a, a
    and c
    xor e
    xor [hl]
    and d
    xor d
    and h
    and e
    ld d, l
    and c
    cp b
    ld a, a
    or [hl]
    and a
    xor b
    or c
    xor e
    xor a
    xor [hl]
    xor [hl]
    xor e
    or d
    and $51
    sub e
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
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
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
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
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
    or c
    ld a, a
    or d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    and $57
    nop
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld a, a
    and e
    and b
    or c
    xor d
    ld a, a
    and b
    xor l
    and e
    ld c, a
    or d
    or e
    xor [hl]
    or c
    xor h
    cp b
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    ld [hl], l
    ld d, c
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
    and [hl]
    xor b
    and b
    xor l
    or e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    or d
    add sp, $51
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    and d
    and b
    or e
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    and l
    and h
    and b
    or e
    and a
    and h
    or c
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld d, l
    or d
    xor b
    xor e
    or l
    and h
    or c
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or l
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    or e
    xor b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    or h
    or e
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
    or d
    or [hl]
    xor b
    xor h
    add sp, $57
    nop
    adc b
    jp nc, $a17f

    and h
    and b
    or e
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    or h
    or c
    or c
    and h
    xor l
    or e
    or d
    ld a, a
    xor d
    and h
    and h
    xor a
    ld c, a
    xor h
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or c
    and h
    and b
    and d
    and a
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
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
    or d
    and h
    and h
    xor d
    xor b
    xor l
    and [hl]
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
    or d
    ld a, a
    xor [hl]
    and l
    ld d, l
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    and $57
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
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    and h
    xor l
    and e
    or h
    or c
    and b
    xor l
    and d
    and h
    rst $20
    ld d, a
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
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    ld [hl], l
    ld d, c
    adc b
    or e
    call nc, $af7f
    xor b
    or e
    and d
    and a
    db $e3
    and c
    xor e
    and b
    and d
    xor d
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
    adc b
    jp nc, $ae7f

    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    add sp, $51
    adc b
    jp nc, $a67f

    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    add sp, $57
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and a
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
    and $57
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $b27f
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    and e
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
    xor b
    and [hl]
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    and h
    and h
    xor a
    ld a, a
    and c
    and h
    xor l
    and h
    and b
    or e
    and a
    ld d, l
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld a, a
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
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
    xor b
    or e
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    and $57
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
    or d
    xor [hl]
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
    db $f4
    ld a, a
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc b
    jp nc, $a27f

    or c
    or h
    or d
    and a
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    and b
    or d
    xor l
    push de
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    and b
    ld a, a
    and a
    xor b
    or e
    ld c, a
    or d
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    and c
    xor [hl]
    cp b
    ld d, l
    or c
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    adc e
    add b
    adc a
    sub c
    add b
    sub d
    and $57
    nop
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
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
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
    db $f4
    ld a, a
    adc b
    jp nc, $a87f

    xor l
    ld d, l
    and b
    ld a, a
    and e
    and b
    cp c
    and h
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    and a
    and a
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    or d
    or h
    xor l
    and c
    or h
    or c
    xor l
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    or [hl]
    xor [hl]
    or c
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    xor d
    xor b
    xor l
    add sp, $51
    add c
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
    or h
    or d
    and h
    ld a, a
    and b
    ld c, a
    or d
    or h
    xor l
    and c
    xor e
    xor [hl]
    and d
    xor d
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    xor a
    xor [hl]
    xor e
    xor e
    or h
    or e
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and h
    or d
    or e
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or e
    or c
    and h
    and b
    and e
    ld d, l
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $51
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or [hl]
    xor b
    xor l
    and e
    ld a, a
    and c
    and b
    and d
    xor d
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and d
    and b
    xor l
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and [hl]
    xor [hl]
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
    add sp, $57
    nop
    adc [hl]
    and a
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
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    adc b
    ld a, a
    and e
    xor [hl]
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
    or c
    xor [hl]
    and b
    or c
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    and e
    and h
    and h
    xor a
    ld a, a
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
    ld d, l
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    add sp, $57
    nop
    add b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    sub d
    sub e
    add b
    sub c
    sbc b
    sub h
    ld c, a
    and [hl]
    and b
    or e
    and a
    and h
    or c
    ld a, a
    xor l
    and h
    and b
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    or [hl]
    and b
    or e
    and h
    or c
    call nc, $b27f
    or h
    or c
    and l
    and b
    and d
    and h
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
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    and d
    xor e
    or h
    or d
    or e
    and h
    or c
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    sub d
    sub e
    add b
    sub c
    sbc b
    sub h
    ld a, a
    xor e
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or h
    xor a
    ld d, l
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
    add sp, $51
    adc b
    or e
    call nc, $b27f
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
    db $f4
    ld c, a
    xor b
    or e
    call nc, $b27f
    and d
    and b
    or c
    cp b
    add sp, $57
    nop
    nop
    inc b
    ld de, $010c
    inc bc
    ld b, d
    inc de
    inc h
    ld bc, $4303
    dec h
    inc c
    ld bc, $4403
    dec l
    inc h
    ld bc, $4603
    nop
    ld bc, $0923
    rlca
    inc c
    ld l, c
    ld a, [bc]
    push af
    db $10
    ld [hl-], a
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    and l
    ld l, b
    rst $38
    rst $38
    push af
    dec h
    jr nz, jr_069_6f48

    nop
    rst $38
    rst $38
    add d
    inc bc
    cp c

jr_069_6f48:
    ld l, b
    rst $38
    rst $38
    push af
    ld [hl], $2a
    ld b, $00
    rst $38
    rst $38
    add d
    inc bc
    call $ff68
    rst $38
    push af
    db $10
    inc [hl]
    ld [$ff00], sp
    rst $38
    add d
    inc bc
    pop hl
    ld l, b
    rst $38
    rst $38
    push af
    ld d, $19
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    push af
    ld l, b
    rst $38
    rst $38
    ld [hl-], a
    ld l, $34
    ld [$ff00], sp
    rst $38
    and d
    inc bc
    ld b, c
    ld l, b
    rst $38
    rst $38
    ld [hl-], a
    inc sp
    db $10
    rlca
    nop
    rst $38
    rst $38
    and d
    inc bc
    ld d, l
    ld l, b
    rst $38
    rst $38
    ld [hl-], a
    ld d, $1c
    ld [$ff00], sp
    rst $38
    and d
    inc bc
    ld l, c
    ld l, b
    rst $38
    rst $38
    ld [hl-], a
    ld l, $32
    add hl, bc
    nop
    rst $38
    rst $38
    and d
    inc b
    ld a, l
    ld l, b
    rst $38
    rst $38
    ld [hl-], a
    scf
    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    and d
    ld [bc], a
    sub c
    ld l, b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    inc b
    dec h
    inc b
    inc d
    ld [hl], d
    ld h, $72
    nop
    nop
    pop bc
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    jr c, jr_069_7038

    ld d, h
    ld c, c
    sub c
    ld e, d
    inc b
    dec h
    dec c
    ld [de], a
    ld [hl], b
    ld b, e
    ld [hl], b
    nop
    nop
    push de
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, h
    ld [hl], b
    ld d, h
    ld c, c
    sub c
    ld e, e
    inc b
    dec h
    ld c, $6b
    ld [hl], b
    or h
    ld [hl], b
    nop
    nop
    jp hl


    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    call nc, Call_069_5470
    ld c, c
    sub c
    ld e, h
    inc b
    dec h
    rrca
    dec e
    ld [hl], c
    ld c, [hl]
    ld [hl], c
    nop
    nop
    db $fd
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, l
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld d, e
    and b
    ld [hl], d
    ld d, e
    pop bc
    ld [hl], d
    rra
    ld bc, $0124
    di
    nop
    ld b, c
    nop
    adc a
    and b
    or e
    xor b
    and h
    xor l
    and d
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor d
    and h
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    and l
    xor b
    or d
    and a
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]

jr_069_7038:
    ld a, a
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
    add [hl]
    or [hl]
    and b
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $b37f

    xor [hl]
    xor [hl]
    ld a, a
    xor b
    xor h
    xor a
    and b
    or e
    xor b
    and h
    xor l
    or e
    ld c, a
    and l
    xor [hl]
    or c
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
    and d
    xor [hl]
    xor l
    or e
    and h
    xor l
    or e
    db $f4
    ld c, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor e
    xor b
    or d
    db $e3
    ld d, l
    or e
    and h
    xor l
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
    or e
    or h
    xor l
    and h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    or d
    or e
    or h
    xor a
    xor b
    and e
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    ld c, a
    and e
    xor b
    or d
    or e
    or c
    and b
    and d
    or e
    and h
    and e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
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
    and d
    and a
    and h
    and d
    xor d
    and h
    and e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    call nc, $b17f
    and b
    and e
    xor b
    xor [hl]
    ld d, c
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and b
    xor h
    or d
    and $7f
    sub [hl]
    and h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or l
    and b
    or c
    xor b
    and h
    or e
    cp b
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    call nc, $ac7f
    xor [hl]
    or d
    or e
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
    xor b
    xor l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    db $e3
    ld d, l
    and e
    and b
    cp b
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
    and b
    xor l
    or d
    or [hl]
    and h
    or c
    ld a, a
    xor b
    or d
    ld c, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    xor l
    and h
    or a
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    db $e3
    ld c, a
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
    xor h
    xor [hl]
    or d
    or e
    ld d, c
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
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    and e
    and b
    xor b
    xor e
    cp b
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    add sp, $51
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and h
    or c
    and h
    xor l
    push de
    db $f4
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    ld c, a
    and l
    or h
    or d
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
    ld d, c
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
    ld a, a
    or [hl]
    and h
    xor l
    or e
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and d
    xor [hl]
    xor h
    xor h
    xor b
    or d
    or d
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
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
    and $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    ld a, a
    or c
    and h
    xor h
    and h
    xor h
    and c
    and h
    or c
    and $57
    nop
    sub e
    and a
    and h
    ld a, a
    or e
    or h
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and l
    and h
    and h
    xor e
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    sub c
    adc [hl]
    add e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
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
    and c
    and h
    or d
    or e
    ld c, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and b
    xor l
    ld a, a
    and b
    xor l
    and [hl]
    xor e
    and h
    or c
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
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
    rst $30
    ld hl, sp+$51
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
    ld d, a
    nop
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld a, a
    sub d
    adc a
    adc [hl]
    sub e
    ld d, a
    nop
    nop
    ld bc, $0b21
    ld bc, $0e12
    nop
    inc bc
    dec de
    dec bc
    nop
    dec b
    ld [hl], b
    add hl, bc
    dec c
    nop
    ld [$0d70], sp
    ld c, $07
    rrca
    ld [hl], b
    ld b, $3a
    dec e
    ld c, $06
    nop
    rst $38
    rst $38
    and d
    ld bc, $6fc9
    rst $38
    rst $38
    ld a, [hl-]
    dec h
    ld [de], a
    ld b, $00
    rst $38
    rst $38
    and d
    ld bc, $6fdd
    rst $38
    rst $38
    ld a, [hl-]
    ld h, $0c
    ld [$ff00], sp
    rst $38
    and d
    dec b
    pop af
    ld l, a
    rst $38
    rst $38
    ld a, [hl-]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    nop
    rst $38
    rst $38
    and d
    inc bc
    or l
    ld l, a
    rst $38
    rst $38
    ld d, h
    cpl
    add hl, bc
    ld bc, $ff00
    rst $38
    ld bc, $0b00
    ld [hl], b
    adc b
    rlca
    ld d, h
    scf
    add hl, bc
    ld bc, $ff00
    rst $38
    ld bc, $0d00
    ld [hl], b
    adc c
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
