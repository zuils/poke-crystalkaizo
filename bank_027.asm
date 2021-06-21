; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $027", ROMX[$4000], BANK[$27]

    nop
    nop
    inc c
    nop
    nop
    inc c
    inc sp
    nop
    ld d, c
    ld c, $40
    ld d, c
    add [hl]
    ld b, b
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add b
    adc b
    adc e
    adc [hl]
    sub c
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
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
    add b
    add l
    add h
    ld a, a
    xor l
    and h
    or a
    or e
    ld d, c
    and e
    xor [hl]
    xor [hl]
    or c
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
    ld c, a
    and [hl]
    and h
    xor l
    and h
    or c
    xor [hl]
    or h
    or d
    add sp, $51
    add a
    and h
    ld a, a
    or e
    and b
    or h
    and [hl]
    and a
    or e
    ld a, a
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld c, a
    and c
    xor b
    and [hl]
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    add sp, $57
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld c, a
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
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, l
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
    ld a, a
    or d
    and h
    and b
    add sp, $51
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    and c
    or c
    and b
    and [hl]
    db $e3
    ld c, a
    and [hl]
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
    and a
    xor b
    or d
    ld d, l
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
    nop
    inc bc
    rlca
    inc bc
    ld bc, $0e01
    rlca
    inc b
    ld bc, $0e01
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
    ld [bc], a
    ld b, b
    rst $38
    rst $38
    dec sp
    ld [$050c], sp
    ld bc, $ffff
    nop
    nop
    dec b
    ld b, b
    rst $38
    rst $38
    nop
    rlca
    ld b, $06
    nop
    rst $38
    rst $38
    and b
    nop
    ld [$ff40], sp
    rst $38
    add hl, hl
    dec b
    dec bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    dec bc
    ld b, b
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $04c1
    add hl, bc
    ld e, c
    ld b, c
    ld c, h
    cp c
    ld b, c
    ld d, h
    ld c, c
    ld h, h
    cp e
    ld b, d
    nop
    nop
    ld e, [hl]
    ld b, $01
    ld e, a
    ld h, b
    inc sp
    pop bc
    inc b
    ld b, a
    ld c, h
    ld a, [hl-]
    ld b, e
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $1f
    nop
    inc e
    rlca
    nop
    ld a, b
    ld b, c
    ld sp, $000d
    add hl, bc
    ld [hl], d
    ld b, c
    ld c, h
    ld d, h
    ld b, e
    ld d, l
    sbc [hl]
    sub $01
    ld [$4176], sp
    inc sp
    dec c
    nop
    ld c, h
    and l
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    pop de
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld b, $07
    add h
    ld b, c
    ld b, $06
    add c
    ld b, c
    sub c
    inc c
    ld [de], a
    nop
    inc c
    inc de
    nop
    ld l, e
    ld sp, $04c1
    add hl, bc
    sbc e
    ld b, c
    ld sp, $0020
    ld [$41a2], sp
    ld b, a
    ld c, h
    ld [bc], a
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    ld d, c
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    xor b
    ld b, h
    ld d, h
    ld c, c
    sub c
    inc [hl]
    rra
    nop
    add hl, bc
    or d
    ld b, c
    inc c
    dec l
    nop
    ld b, e
    ld b, $01
    ld bc, $2e0c
    nop
    nop
    ld [hl], l
    sub e
    and a
    and b
    xor l
    xor d
    ld a, a
    cp b
    xor [hl]
    or h
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
    and a
    and h
    xor e
    xor a
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
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
    ld [hl], l
    ld d, c
    add c
    or h
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and e
    xor b
    and l
    db $e3
    ld c, a
    and l
    and h
    or c
    and h
    xor l
    or e
    add sp, $7f
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld d, c
    and b
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
    xor b
    xor l
    or e
    or c
    xor [hl]
    db $e3
    ld c, a
    and e
    or h
    and d
    and h
    ld a, a
    xor h
    cp b
    or d
    and h
    xor e
    and l
    add sp, $51
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    db $f4
    ld a, a
    and b
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
    add sp, $7f
    adc b
    ld a, a
    or h
    or d
    and h
    ld d, l
    or e
    and a
    and h
    ld a, a
    or d
    or e
    and h
    and h
    xor e
    db $e3
    or e
    cp b
    xor a
    and h
    add sp, $51
    ld [hl], l
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
    or e
    and a
    and h
    ld a, a
    or d
    or e
    and h
    and h
    xor e
    db $e3
    or e
    cp b
    xor a
    and h
    and $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    or e
    cp b
    xor a
    and h
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
    xor e
    cp b
    ld a, a
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    ld d, l
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
    add sp, $51
    ld [hl], l
    sub h
    xor h
    ld [hl], l
    ld a, a
    adc h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    and c
    and h
    and [hl]
    xor b
    xor l
    and $57
    nop
    ld [hl], l
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
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
    and a
    and b
    xor l
    ld a, a
    xor h
    and h
    db $f4
    ld d, c
    xor b
    xor l
    ld a, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    ld a, a
    and b
    xor l
    and e
    ld c, a
    xor d
    xor b
    xor l
    and e
    xor l
    and h
    or d
    or d
    add sp, $51
    adc b
    xor l
    ld a, a
    and b
    and d
    and d
    xor [hl]
    or c
    and e
    and b
    xor l
    and d
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld a, a
    or c
    or h
    xor e
    and h
    or d
    db $f4
    ld a, a
    adc b
    ld d, c
    and d
    xor [hl]
    xor l
    and l
    and h
    or c
    ld a, a
    or h
    xor a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
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
    adc b
    adc l
    add h
    sub c
    add b
    adc e
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    adc h
    adc b
    adc l
    add h
    sub c
    add b
    adc e
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
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $8355
    add h
    add l
    add h
    adc l
    sub d
    add h
    add sp, $51
    ld [hl], l
    sub h
    xor h
    ld [hl], l
    ld a, a
    adc a
    xor e
    and h
    and b
    or d
    and h
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
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld [hl], l
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
    sub e
    adc h
    or $ff
    add sp, $57
    nop
    ld [hl], l
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or h
    or d
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    sub e
    adc h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld d, l
    adc b
    sub c
    adc [hl]
    adc l
    ld a, a
    sub e
    add b
    adc b
    adc e
    add sp, $57
    nop
    sub h
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
    and a
    xor [hl]
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and b
    cp b
    ld a, a
    or e
    and a
    xor b
    or d
    db $f4
    ld d, l
    and c
    or h
    or e
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor e
    or h
    and d
    xor d
    ld [hl], l
    ld d, a
    nop
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor l
    and h
    or [hl]
    xor e
    cp b
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
    ld d, l
    or d
    or e
    and h
    and h
    xor e
    db $e3
    or e
    cp b
    xor a
    and h
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
    or l
    and h
    or c
    cp b
    ld c, a
    xor h
    or h
    and d
    and a
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    add sp, $57
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
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or d
    or e
    and h
    and h
    xor e
    db $e3
    or e
    cp b
    xor a
    and h
    db $f4
    ld c, a
    and a
    or h
    and a
    and $51
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
    and d
    xor e
    xor [hl]
    or d
    and h
    ld c, a
    and h
    xor l
    and d
    xor [hl]
    or h
    xor l
    or e
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    xor l
    ld d, l
    or h
    xor l
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor d
    xor b
    xor l
    and e
    rst $20
    ld d, a
    nop
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
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
    or e
    ld a, a
    or e
    and a
    and h
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
    sub d
    and a
    and h
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    or e
    and h
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    or d
    xor b
    and d
    xor d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add b
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
    and h
    or c
    ld c, a
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    or d
    db $e3
    ld d, l
    or d
    xor b
    xor [hl]
    xor l
    and b
    or e
    and h
    add sp, $57
    nop
    nop
    ld [bc], a
    rrca
    inc b
    ld [bc], a
    ld bc, $0f0e
    dec b
    ld [bc], a
    ld bc, $000e
    ld [bc], a
    dec c
    inc bc
    nop
    xor c
    ld b, c
    dec c
    ld b, $00
    xor c
    ld b, c
    ld [bc], a
    rla
    rlca
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    cpl
    ld b, c
    db $d3
    ld b, $48
    ld de, $060b
    nop
    rst $38
    rst $38
    add b
    nop
    add a
    ld b, c
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    sub [hl]
    ld [bc], a
    ld d, h
    ld c, c
    sub c
    inc c
    inc bc
    nop
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $070e
    inc bc
    inc bc
    ld bc, $000e
    ld [bc], a
    ld bc, $0000
    ld h, e
    ld b, l
    ld bc, $0001
    ld h, e
    ld b, l
    ld bc, $073b
    ld b, $03
    nop
    rst $38
    rst $38
    add b
    nop
    ld e, h
    ld b, l
    rst $38
    rst $38
    nop
    nop
    ld d, c
    and d
    ld b, l
    ld b, a
    ld c, h
    ldh a, [rLYC]
    add h
    ld [hl], b
    nop
    ld d, h
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    inc c
    inc bc
    nop
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or d
    xor b
    and d
    xor d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc a
    add a
    add b
    sub c
    adc h
    add b
    add d
    adc b
    sub d
    sub e
    ld a, a
    xor b
    xor l
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
    xor h
    and b
    and e
    and h
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld d, l
    xor h
    and h
    and e
    xor b
    and d
    xor b
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    add sp, $57
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
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    ld bc, $070e
    inc bc
    inc b
    ld bc, $000e
    ld [bc], a
    ld bc, $0000
    sbc h
    ld b, l
    ld bc, $0001
    sbc a
    ld b, l
    ld [bc], a
    add hl, hl
    rlca
    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop
    adc a
    ld b, l
    rst $38
    rst $38
    sbc l
    rlca
    add hl, bc
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    sub d
    ld b, l
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld b, e
    ld b, [hl]
    ld d, c
    or c
    ld b, [hl]
    inc c
    ld [bc], a
    nop
    inc c
    inc bc
    nop
    nop
    add b
    xor e
    xor [hl]
    xor l
    and [hl]
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
    add d
    adc b
    add b
    adc l
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld d, c
    and b
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or h
    or c
    ld a, a
    and e
    and h
    or d
    and h
    or c
    or e
    and h
    and e
    ld c, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    or d
    add sp, $51
    add c
    and b
    and e
    ld a, a
    xor d
    xor b
    and e
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and b
    xor d
    and h
    xor l
    ld c, a
    or e
    xor [hl]
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
    ld a, a
    and b
    or d
    ld d, l
    xor a
    or h
    xor l
    xor b
    or d
    and a
    xor h
    and h
    xor l
    or e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    adc b
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    db $f4
    ld a, a
    add e
    and b
    and e
    and e
    cp b
    ld d, l
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or d
    and d
    and b
    or c
    and h
    or d
    ld a, a
    xor h
    and h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    ld bc, $070e
    inc bc
    dec b
    ld bc, $000e
    ld [bc], a
    ld bc, $0000
    ld b, b
    ld b, [hl]
    ld bc, $0001
    dec a
    ld b, [hl]
    ld [bc], a
    dec l
    ld b, $05
    inc bc
    nop

Jump_027_4704:
    rst $38
    rst $38
    nop
    nop
    scf
    ld b, [hl]
    rst $38
    rst $38
    jr z, jr_027_4717

    add hl, bc
    dec b
    ld [bc], a
    rst $38
    rst $38
    nop
    nop
    ld a, [hl-]
    ld b, [hl]

jr_027_4717:
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0018
    add hl, bc
    ld b, b
    ld b, a
    ld c, h
    ld c, c
    ld b, a
    ld c, [hl]
    ld [$473a], sp
    ld c, h
    db $db
    ld b, a
    ld d, l
    sbc [hl]
    dec sp
    ld bc, $074c
    ld c, b
    ld d, h
    ld c, c
    inc sp
    jr jr_027_4739

jr_027_4739:
    sub c
    ld c, h
    ld c, h
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, a
    ld c, b
    ld d, h
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    nop
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and h
    and b
    rst $20
    ld d, c
    add b
    xor l
    and e
    ld a, a
    xor b
    and l
    ld a, a
    xor b
    or e
    call nc, $ae7f
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and h
    and b
    db $f4
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
    ld d, l
    and c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    rst $20
    ld d, c
    adc b
    sub $a4
    ld a, a
    and l
    xor b
    or d
    and a
    and h
    and e
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
    ld sp, hl
    or $7f
    cp b
    and h
    and b
    or c
    or d
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
    and l
    and b
    and d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and l
    xor b
    or d
    and a
    and $57
    nop
    add b
    and a
    db $f4
    ld a, a
    and a
    and b
    and a
    and b
    and a
    rst $20
    ld c, a
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    xor [hl]
    or h
    or c
    or d
    and h
    xor e
    or l
    and h
    or d
    ld d, l
    and b
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    and b
    xor l
    and [hl]
    xor e
    and h
    or c
    rst $20
    ld d, a
    nop
    add l
    xor b
    or d
    and a
    ld a, a
    and b
    or c
    and h
    xor l
    push de
    ld a, a
    and l
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
    or d
    and h
    and b
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    or l
    and h
    or c
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    and b
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
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    or d
    and a
    rst $20
    and $55
    adc b
    xor l
    and d
    xor [hl]
    xor h
    xor a
    or c
    and h
    and a
    and h
    xor l
    or d
    xor b
    and c
    xor e
    and h
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    and $4f
    adc e
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    and $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $01
    ld c, $07
    inc bc
    ld b, $01
    ld c, $00
    nop
    ld bc, $073b
    ld b, $06
    nop
    rst $38
    rst $38
    and b
    nop
    dec de
    ld b, a
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0013
    add hl, bc
    db $d3
    ld c, b
    ld c, h
    rst $18
    ld c, b
    ld d, l
    sbc [hl]
    or $01
    inc sp
    inc de
    nop
    ld c, h
    ld h, l
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld d, c
    push bc
    ld c, c
    ld d, c
    add hl, bc
    ld c, d
    nop
    add a
    and b
    and a
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or d
    or h
    or c
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld d, l
    xor e
    xor b
    and [hl]
    and a
    or e
    or [hl]
    and h
    xor b
    and [hl]
    and a
    or e
    or d
    rst $20
    ld d, c
    sub e
    and a
    and h
    cp b
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
    or e
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld d, l
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    ld a, a
    and b
    or d
    xor b
    and e
    and h
    add sp, $51
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    or h
    or d
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld a, a
    or e
    and a
    and h
    xor h
    ld d, l
    sub d
    sub e
    sub c
    add h
    adc l
    add [hl]
    sub e
    add a
    rst $20
    ld d, a
    nop
    adc [hl]
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
    or e
    and a
    and h
    ld c, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld d, c
    and d
    xor [hl]
    or h
    xor l
    or e
    ld a, a
    xor [hl]
    xor l
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
    or [hl]
    xor l
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or d
    and h
    xor e
    and l
    rst $20
    ld d, c
    adc b
    jp nc, $b27f

    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or h
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld c, a
    and c
    or h
    and l
    and l
    ld a, a
    and c
    xor [hl]
    and e
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
    add b
    add l
    add h
    call nc, $ac4f
    and h
    xor l
    or h
    ld a, a
    xor b
    or d
    ld a, a
    and d
    and a
    xor [hl]
    and d
    xor d
    and l
    or h
    xor e
    xor e
    ld d, c
    xor [hl]
    and l
    ld a, a
    and a
    and h
    and b
    or c
    or e
    cp b
    ld a, a
    and l
    and b
    or c
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and c
    and h
    and h
    and l
    cp b
    ld a, a
    sub d
    add b
    adc b
    adc e
    adc [hl]
    sub c
    sub d
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    adc b
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    db $f4
    ld a, a
    adc b
    ld d, c
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    add d
    add b
    add l
    add h
    add sp, $7f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor h
    and h
    xor l
    or h
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
    ld d, c
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    add sp, $7f
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    ld d, $03
    rlca
    inc bc
    dec b
    ld d, $03
    nop
    nop
    inc bc
    ld c, c
    rlca
    ld [$0008], sp
    rst $38
    rst $38
    nop
    nop
    pop bc
    ld c, b
    rst $38
    rst $38
    dec sp
    rlca
    dec bc
    inc b
    db $10
    rst $38
    rst $38
    nop
    nop
    reti


    ld c, b
    rst $38
    rst $38
    ld c, c
    ld a, [bc]
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    call c, $ff48
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    dec c
    nop
    ld c, c
    sub c
    ld d, c
    call nc, Call_027_514a
    ld d, $4b
    nop
    add e
    xor [hl]
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
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld d, c
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and d
    and b
    or c
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    and $57
    nop
    adc h
    cp b
    ld a, a
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
    ld a, a
    and d
    and b
    xor h
    and h
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    xor [hl]
    cp b
    and l
    or c
    xor b
    and h
    xor l
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
    adc b
    or e
    ld a, a
    and d
    and b
    or c
    or c
    xor b
    and h
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld c, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and a
    xor b
    xor h
    add sp, $51
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
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
    xor b
    or e
    ld a, a
    or d
    and b
    cp b
    or d
    and $51
    adc e
    and h
    or e
    call nc, $b27f
    and h
    and h
    ld [hl], l
    ld a, a
    adc l
    xor [hl]
    xor a
    and h
    rst $20
    ld c, a
    adc b
    or e
    call nc, $a07f
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
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [$0e01], sp
    rlca
    inc bc
    ld [$0e01], sp
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
    rst $00
    ld c, d
    rst $38
    rst $38
    inc h
    ld b, $0a
    dec b
    ld [bc], a
    rst $38
    rst $38
    and b
    nop
    adc $4a
    rst $38
    rst $38
    jr z, jr_027_4bd4

    dec b
    ld [$ff00], sp
    rst $38
    nop
    nop
    pop de
    ld c, d
    rst $38

jr_027_4bd4:
    rst $38
    nop
    nop
    ld d, c
    jp c, $004b

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
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and b
    cp b
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    and $51
    adc l
    add h
    sub [hl]
    ld a, a
    add c
    add b
    sub c
    adc d
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    and $51
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld c, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
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
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    nop
    inc b
    inc b
    nop
    ld bc, $0c01
    dec b
    nop
    ld [bc], a
    ld bc, $040c
    add hl, bc
    ld c, $04
    add hl, bc
    dec b
    add hl, bc
    rrca
    inc b
    add hl, bc
    nop
    nop
    ld bc, $0643
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    rst $10
    ld c, e
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $003d
    add hl, bc
    add a
    ld c, h
    ld c, h
    ld l, $4d
    ld d, h

jr_027_4c82:
    ld c, c
    db $76
    ld [bc], a
    inc bc
    sub c
    ld c, h
    ld e, d
    ld c, l
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    inc bc
    sub c
    ld l, e
    ld b, a
    ld sp, $003d
    add hl, bc
    and c
    ld c, h
    ld c, h
    ld l, $4d
    ld d, h
    ld c, c
    db $76
    inc bc
    ld [bc], a
    sub c
    ld c, h
    ld e, d
    ld c, l
    ld d, h
    ld c, c
    db $76
    inc bc
    ld [bc], a
    sub c
    ld b, a
    ld sp, $003d
    add hl, bc
    dec h
    ld c, l
    ld c, h
    ld [hl], b
    ld c, l
    dec d
    pop af
    rrca
    ld e, a
    nop
    ld d, l
    ld c, h
    add b
    ld c, l
    ld sp, $003f
    add hl, bc
    add $4c
    ld d, h
    ld c, c
    sub c
    ld d, l
    ld c, h
    and d
    ld c, l
    ld c, [hl]
    ld [$4d1f], sp
    ld hl, $08ad
    add hl, de
    ld c, l
    jr nz, jr_027_4c82

    ld bc, $6219
    reti


    ld d, $01
    ld a, [de]
    ld h, d
    reti


    ld b, $03
    ldh a, [$4c]
    ld b, $05
    ld a, [$064c]
    rlca
    inc b
    ld c, l
    ld c, h
    cp h
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    cp h
    ld c, l
    ld d, l
    ld c, h
    ret c

    ld c, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    cp h
    ld c, l
    ld d, l
    ld c, h
    db $fc
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld a, a
    dec c
    nop
    ld c, h
    cp h
    ld c, l
    adc e
    inc a
    ld d, l
    rrca
    dec a
    nop
    ld c, h
    dec de
    ld c, [hl]
    ld d, h
    ld c, c
    inc sp
    dec a
    nop
    sub c
    ld c, h
    inc a
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, a
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    sub d
    ld c, l
    add h
    pop af
    nop
    ld d, h
    ld c, c
    sub c
    nop
    adc h
    adc [hl]
    adc [hl]
    adc h
    adc [hl]
    adc [hl]
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor b
    and d
    xor d
    ld [hl], l
    ld d, c
    sub d
    and a
    and h
    ld a, a
    xor l
    and h
    and h
    and e
    or d
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    add sp, $57
    nop
    sub [hl]
    and h
    db $d3
    and h
    ld a, a
    and l
    and h
    and h
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    adc h
    adc [hl]
    adc [hl]
    adc h
    adc [hl]
    adc [hl]
    rst $20
    ld d, a
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
    ld [hl], l
    adc h
    xor [hl]
    xor [hl]
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    or d
    ld a, a
    and d
    or c
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld [hl], l
    ld d, a
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
    add [hl]
    xor b
    or l
    and h
    ld a, a
    and b
    ld a, a
    add c
    add h
    sub c
    sub c
    sbc b
    ld a, a
    or e
    xor [hl]
    ld c, a
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    and $57
    nop
    ld d, d
    ld a, a
    and [hl]
    and b
    or l
    and h
    ld a, a
    and b
    ld c, a
    add c
    add h
    sub c
    sub c
    sbc b
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    add sp, $57
    nop
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    ld a, a
    and c
    and h
    and d
    and b
    xor h
    and h
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
    and a
    and h
    and b
    xor e
    or e
    and a
    xor b
    and h
    or c
    rst $20
    ld d, a
    nop
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    ld a, a
    and c
    and h
    and d
    and b
    xor h
    and h
    ld c, a
    or b
    or h
    xor b
    or e
    and h
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    rst $20
    ld d, a
    nop
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    ld a, a
    and c
    and h
    and d
    and b
    xor h
    and h
    ld c, a
    or e
    xor [hl]
    or e
    and b
    xor e
    xor e
    cp b
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    cp b
    rst $20
    ld d, a
    nop
    ld d, d
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld c, a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    ld [hl], l
    ld d, a
    nop
    ld d, d
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld c, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    and b
    ld a, a
    add c
    add h
    sub c
    sub c
    sbc b
    add sp, $51
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    or d
    and b
    and e
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    inc bc
    ld bc, $0d01
    rlca
    inc b
    ld bc, $0d01
    nop
    nop
    inc bc
    ld h, $07
    ld b, $09
    nop
    rst $38
    rst $38
    nop
    nop
    db $76
    ld c, h
    rst $38
    rst $38
    ld h, $07
    ld [$0008], sp
    rst $38
    rst $38
    and b
    nop
    sub b
    ld c, h
    rst $38
    rst $38
    sbc c
    rlca
    rlca
    ld d, $00
    rst $38
    rst $38
    nop
    nop
    xor d
    ld c, h
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $003d
    add hl, bc
    push bc
    ld c, [hl]
    ld c, h
    jr c, jr_027_4f0e

    ld d, h
    ld c, c
    inc sp
    ccf
    nop
    sub c
    ld hl, $0948
    ld [$4c4f], sp
    pop hl
    ld c, a
    rrca
    ld d, c
    nop
    ld c, [hl]
    ld [$4f02], sp
    inc h
    nop
    nop
    ld bc, $06f4
    ld [bc], a
    or $4e
    rra
    ld c, b
    ld bc, $fc08
    ld c, [hl]
    inc hl
    nop
    nop
    ld bc, $0ff4
    ld d, c
    nop
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, h
    ld e, l
    ld d, b
    ld d, l
    ld b, l
    ld c, c
    sub c
    ld c, h
    ld a, h
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc l
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    or a
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    call c, Call_027_5450
    ld c, c
    sub c

jr_027_4f0e:
    ld l, e
    ld b, a
    ld sp, $003e
    add hl, bc
    cpl
    ld c, a
    ld sp, $003d
    add hl, bc
    ld [hl+], a
    ld c, a
    ld c, h
    or $50
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld d, [hl]
    ld d, c
    ld d, l
    sbc [hl]
    call z, $0801
    inc sp
    ld c, a
    inc sp
    ld a, $00
    ld c, h
    rst $00
    ld d, c
    ld d, h
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    nop
    adc h
    cp b
    ld a, a
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    ld a, a
    and b
    xor b
    xor l
    push de
    ld c, a
    and [hl]
    xor b
    or l
    xor b
    xor l
    ldh [$7f], a
    xor h
    and h
    ld a, a
    xor h
    xor b
    xor e
    xor d
    ld d, l
    xor l
    jp nc, $b1ae

    and h
    add sp, $51
    sub e
    and a
    xor b
    or d
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    add l
    add b
    sub c
    adc h
    call nc, $a64f
    xor [hl]
    or e
    ld a, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    xor h
    xor b
    xor e
    xor d
    add sp, $51
    adc h
    xor [hl]
    or d
    or e
    ld a, a
    and h
    or l
    and h
    or c
    cp b
    xor [hl]
    xor l
    and h
    ld c, a
    or [hl]
    and b
    xor l
    or e
    or d
    ld a, a
    and b
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
    add sp, $51
    adc b
    or e
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
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld c, a
    xor [hl]
    ldh [$7f], a
    xor h
    xor b
    xor e
    xor d
    ld a, a
    xor b
    and l
    ldh [$ad], a
    ld a, a
    adc b
    ld d, c
    and l
    and h
    and h
    and e
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    xor [hl]
    or e
    or d
    ld a, a
    xor [hl]
    ldh [rVBK], a
    add c
    add h
    sub c
    sub c
    adc b
    add h
    sub d
    db $f4
    ld a, a
    adc b
    ld a, a
    or c
    and h
    and d
    xor d
    xor [hl]
    xor l
    add sp, $57
    nop
    add a
    xor [hl]
    or [hl]
    ret nc

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
    adc h
    adc [hl]
    adc [hl]
    adc h
    adc [hl]
    adc [hl]
    ld a, a
    adc h
    adc b
    adc e
    adc d
    and $51
    adc b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    xor a
    or c
    xor b
    and e
    and h
    ld a, a
    and b
    xor l
    and e
    ld c, a
    xor c
    xor [hl]
    cp b
    db $f4
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $51
    add [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
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
    or e
    xor [hl]
    ld a, a
    or c
    and h
    or d
    or e
    xor [hl]
    or c
    and h
    ld a, a
    add a
    adc a
    rst $20
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    and b
    ld c, a
    and l
    and h
    or c
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    ldh a, [$fb]
    or $f6
    add sp, $57
    nop
    add a
    and h
    or c
    and h
    ld a, a
    cp b
    and b
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld c, a
    add e
    or c
    xor b
    xor l
    xor d
    ld a, a
    or h
    xor a
    ldh [$ad], a
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
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
    or e
    and a
    and h
    or c
    and h
    add sp, $4f
    adc l
    xor [hl]
    ld a, a
    and d
    and b
    or d
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or d
    and b
    xor e
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or c
    and h
    and d
    xor d
    xor [hl]
    xor l
    ld a, a
    cp b
    and h
    or c
    ld c, a
    adc a
    add b
    add d
    adc d
    call nc, $a57f
    or h
    xor e
    xor e
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
    or [hl]
    and b
    xor l
    or e
    ld a, a
    xor b
    or e
    and $4f
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    db $f4
    ld a, a
    and a
    and h
    and b
    or c
    and $57
    nop
    adc b
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    xor h
    xor b
    xor e
    xor d
    xor b
    xor l
    ldh [$e8], a
    ld d, a
    nop
    adc [hl]
    or h
    or c
    ld a, a
    xor h
    xor b
    xor e
    xor d
    ld a, a
    and h
    or l
    and h
    xor l
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    add sp, $51
    sub d
    xor [hl]
    ld a, a
    xor b
    and l
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld c, a
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and [hl]
    xor b
    or l
    and h
    ld d, c
    or h
    or d
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor h
    xor b
    xor e
    xor d
    db $f4
    ld a, a
    or [hl]
    and h
    db $d3
    and h
    ld c, a

Call_027_514a:
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
    sbc b
    xor [hl]
    or h
    ld a, a
    and l
    xor b
    or a
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or c
    ld c, a
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    db $f4
    ld a, a
    and a
    xor [hl]
    xor l
    add sp, $7f
    adc l
    xor [hl]
    or [hl]
    ld d, c
    xor b
    or e
    ld a, a
    and [hl]
    xor b
    or l
    and h
    or d
    ld a, a
    adc h
    adc [hl]
    adc [hl]
    adc h
    adc [hl]
    adc [hl]
    ld c, a
    adc h
    adc b
    adc e
    adc d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $51
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
    ldh [rVBK], a
    and l
    and h
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
    sub e
    adc h
    rst $30
    ld sp, hl
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    call nc, $924f
    adc l
    adc [hl]
    sub c
    add h
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and b
    or c
    and h
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
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    or d
    ld d, c
    or [hl]
    and a
    xor b
    xor e
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
    xor b
    or d
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    or d
    or e
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    cp b
    xor [hl]
    or h
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
    ld d, l
    xor b
    or e
    db $f4
    ld a, a
    and a
    xor [hl]
    xor l
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld bc, $070d
    inc bc
    ld [bc], a
    ld bc, $000d
    ld [bc], a
    ld bc, $0000
    dec [hl]
    ld c, a
    ld bc, $0001
    dec [hl]
    ld c, a
    ld [bc], a
    dec l
    ld b, $07
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    or h
    ld c, [hl]
    rst $38
    rst $38
    ld l, $08
    add hl, bc
    ld [$ff00], sp
    rst $38
    or b
    nop
    ld c, $4f
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0046
    add hl, bc
    ld a, [$3152]
    ld b, l
    nop
    add hl, bc
    and h
    ld d, d
    ld c, h
    inc bc
    ld d, e
    ld c, [hl]
    ld [$52b6], sp
    rrca
    ld c, e
    nop
    ld [$52b0], sp
    ld c, h
    db $ed
    ld d, e
    ld d, l
    add [hl]
    ld c, h
    dec de
    ld d, h
    add l
    sub c
    nop
    add [hl]
    ld c, c
    inc sp
    ld b, l
    nop
    sub c
    inc [hl]
    ld d, l
    nop
    ld [$52bc], sp
    ld c, h
    db $ed
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    cpl
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, c
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], b
    ld d, h
    ld c, [hl]
    ld [$52ee], sp
    rrca
    ld c, h
    nop
    ld b, $00
    rst $18
    ld d, d
    ld b, $01
    xor $52
    ld b, $03
    push hl
    ld d, d
    ld b, $04
    ld a, [$4c52]
    or c
    ld d, h
    ld d, h
    ld c, c
    inc sp
    ld b, [hl]
    nop
    sub c
    ld c, h
    cp l
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $e3
    ld d, h
    ld d, h
    ld c, c
    inc sp
    ld b, [hl]
    nop
    sub c
    ld c, h
    ccf
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    or b
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, h
    ld d, l
    ld d, h
    ld c, c
    sub c
    inc c
    ld [bc], a
    nop
    nop
    adc b
    db $f4
    ld a, a
    adc b
    jp nc, $a87f

    xor l
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    rst $20
    ld d, c
    add b
    ld a, a
    and [hl]
    or h
    cp b
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and b
    and [hl]
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    xor b
    and h
    or c
    and d
    xor b
    xor l
    and [hl]
    ld d, c
    and h
    cp b
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and a
    and b
    xor b
    or c
    ld c, a
    and d
    and b
    xor h
    and h
    ld a, a
    xor b
    xor l
    add sp, $51
    add a
    and h
    ld a, a
    or d
    and d
    and b
    or c
    and h
    and e
    ld a, a
    xor h
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    xor b
    xor h
    ld a, a
    xor h
    cp b
    ld d, l
    xor a
    or c
    xor b
    cp c
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc b
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
    xor [hl]
    xor l
    and h
    ld c, a
    xor e
    and h
    and l
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    and l
    ld d, l
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    and $51
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
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $4f
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld d, c
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and $57
    nop
    adc [hl]
    and a
    db $f4
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
    rst $20
    ld d, c
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
    db $f4
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
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
    add sp, $57
    nop
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
    xor a
    and b
    or c
    or e
    cp b
    ld c, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]

Call_027_5450:
    ld [hl], l
    ld a, a
    sub [hl]
    and a
    and b
    or e
    pop de
    xor e

Jump_027_5458:
    ld c, a
    adc b
    ld a, a
    and e
    xor [hl]
    ld a, a
    xor b
    and l
    ld a, a
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld d, l
    and c
    and b
    and d
    xor d
    and $57
    nop
    add a
    xor b
    rst $20
    ld a, a
    add a
    xor [hl]
    or [hl]
    call nc, $ac7f
    cp b
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    and $51
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    adc b
    jp nc, $b27f

    and b
    and l
    and h
    ld c, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    xor b
    or e
    ld a, a
    and c
    and b
    and d
    xor d
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
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
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
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    xor [hl]
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
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
    cp b
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
    xor d
    and h
    and h
    xor a
    ld a, a
    xor b
    or e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor a
    or c
    xor [hl]
    xor h
    xor b
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
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
    ld [hl], l
    ld a, a
    sub e
    and a
    and b
    or e
    call nc, $b34f
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    ld a, a
    and b
    or d
    ld a, a
    and c

Call_027_555f:
    and h
    xor b
    xor l
    and [hl]
    ld d, l
    or c
    xor [hl]
    and c
    and c
    and h
    and e
    add sp, $57
    nop
    add l
    xor [hl]
    or c
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and a
    and b
    xor a
    db $e3
    ld c, a
    xor a
    xor b
    xor l
    and h
    or d
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
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
    or e
    or c
    and h
    and b
    or e
    or d
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    or [hl]
    and h
    xor e
    xor e
    add sp, $57
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
    xor h
    cp b
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    ld a, a
    and c
    and b
    and d
    xor d
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and b
    or c
    and h
    ld d, c
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
    ld a, a
    or h
    or d
    and h
    ld c, a
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
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $0316
    rlca
    inc bc
    ld bc, $0316
    nop
    nop
    ld bc, $082c
    ld b, $03
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, b
    ld d, d
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $04c2
    add hl, bc
    ld d, [hl]
    ld d, [hl]
    ld c, h
    ld sp, hl
    ld d, [hl]
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    inc bc
    ld b, a
    ld c, h
    ld l, a
    ld d, a
    ld d, h
    ld c, c
    ld l, c
    rlca
    di
    ld d, [hl]
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld l, [hl]
    rlca
    adc e
    ld e, $6b
    ld b, a
    ld c, h
    adc d
    ld d, a
    ld d, h
    ld c, c
    ld h, h
    or $57
    nop
    nop
    ld e, [hl]
    rlca
    ld bc, $605f
    inc sp
    jp nz, Jump_027_4704

    ld c, h
    dec [hl]
    ld e, b
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $20
    nop
    inc e
    rlca
    nop
    add c
    ld d, [hl]
    ld sp, $000a
    add hl, bc
    ld a, e
    ld d, [hl]
    inc sp
    and l
    inc b
    inc sp
    and a
    inc b
    inc sp
    xor b
    inc b
    inc sp
    xor d
    inc b
    ld c, h
    ld c, l
    ld e, b
    ld d, l
    sbc [hl]
    cp a
    ld bc, $7f08
    ld d, [hl]
    inc sp
    ld a, [bc]
    nop
    ld c, h
    jp c, Jump_027_5458

    ld c, c
    sub c
    ld c, h
    jr nc, jr_027_56d7

    ld d, h
    ld c, c
    sub c
    ld b, $07
    adc l
    ld d, [hl]
    ld b, $06
    adc d
    ld d, [hl]
    sub c
    inc c
    ld [de], a
    nop
    inc c
    inc de
    nop
    and l
    inc b
    ld [hl-], a
    ld [bc], a
    sub a
    ld e, c
    jp hl


    ld e, c
    nop
    nop
    sbc h
    ld d, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [$5459]
    ld c, c
    sub c
    and a
    inc b
    ld [hl-], a
    inc b
    ld l, $5a
    ld d, b
    ld e, d
    nop
    nop
    or b
    ld d, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    ld h, c
    ld e, d
    ld d, h
    ld c, c
    sub c
    xor b
    inc b
    ld [hl-], a
    dec b
    adc d
    ld e, d
    cp l
    ld e, d
    nop
    nop
    call nz, Call_027_6656
    ld b, a
    ld c, h
    ret nz

    ld e, d
    ld d, h
    ld c, c
    sub c
    xor d
    inc b
    ld [hl-], a
    rlca
    reti


    ld e, d
    ld [bc], a
    ld e, e
    nop
    nop
    ret c

jr_027_56d7:
    ld d, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    inc d
    ld e, e
    ld d, h
    ld c, c
    sub c
    inc c
    ld c, $00
    inc [hl]
    jr nz, jr_027_56e6

jr_027_56e6:
    add hl, bc
    db $ec
    ld d, [hl]
    inc c
    dec l
    nop
    ld b, e
    rlca
    ld bc, $0c01
    ld l, $00
    add hl, sp
    ld [de], a
    ld de, $3837
    ld b, a
    nop
    sub [hl]
    add b
    add a
    add b
    add a
    add b
    add a
    rst $20
    ld d, c
    sub d
    xor [hl]
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
    rst $20
    ld d, c
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
    jp nc, $b37f

    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, c
    adc h
    cp b
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
    and d
    or c
    or h
    or d
    and a
    ld a, a
    or d
    or e
    xor [hl]
    xor l
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld d, l
    or d
    and a
    and b
    or e
    or e
    and h
    or c
    ld a, a
    and c
    xor [hl]
    xor l
    and h
    or d
    rst $20
    ld d, c
    sub [hl]
    and b
    or e
    and d
    and a
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    add d
    add a
    sub h
    add d
    adc d
    sbc h
    ld a, a
    sub h
    or c
    and [hl]
    and [hl]
    and a
    rst $20
    ld c, a
    ld [hl], l
    ld d, c
    adc [hl]
    xor [hl]
    xor [hl]
    and b
    or c
    or c
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    rst $20
    ld a, a
    sub d
    and d
    and b
    or c
    and h
    and e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld c, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    sub [hl]
    and a
    and b
    or e
    and $4f
    adc b
    or e
    ld a, a
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld d, c
    and e
    xor [hl]
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
    and $4f
    sub e
    and a
    and b
    or e
    call nc, $b37f
    or c
    or h
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
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    ld c, a
    and e
    xor [hl]
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
    sub [hl]
    and a
    and b
    and $7f
    add a
    or h
    and a
    and $4f
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
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
    or e
    and a
    and b
    or e
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    cp b
    ld a, a
    xor [hl]
    and l
    ld d, l
    sub d
    sub e
    adc [hl]
    sub c
    adc h
    add c
    add b
    add e
    add [hl]
    add h
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
    sub e
    adc [hl]
    sub c
    adc h
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    sub d
    sub e
    adc [hl]
    sub c
    adc h
    add c
    add b
    add e
    add [hl]
    add h
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld d, c
    adc e
    db $fd
    or $7f
    xor [hl]
    and c
    and h
    cp b
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, a
    or e
    or c
    and b
    and e
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    or d
    add sp, $51
    adc b
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor e
    and h
    or e
    or d
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
    or h
    or d
    and h
    ld a, a
    add l
    adc e
    sbc b
    ld d, c
    or [hl]
    and a
    and h
    xor l
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
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    add sp, $51
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
    ld c, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    add e
    sbc b
    adc l
    add b
    adc h
    adc b
    add d
    db $e3
    ld c, a
    adc a
    sub h
    adc l
    add d
    add a
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
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld c, a
    and a
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld d, c
    and e
    xor [hl]
    and h
    or d
    db $f4
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
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
    nop
    sub [hl]
    add b
    add a
    add b
    add a
    add b
    add a
    rst $20
    ld a, a
    adc b
    ld a, a
    and h
    xor l
    xor c
    xor [hl]
    cp b
    and h
    and e
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
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or d
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    or d
    or d
    rst $20
    ld d, c
    add l
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
    db $f4
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
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    ld hl, sp-$06
    ld d, l
    and a
    xor [hl]
    or h
    or c
    or d
    ld a, a
    and b
    ld a, a
    and e
    and b
    cp b
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
    xor l
    and e
    ld a, a
    adc b
    ld c, a
    and b
    or c
    and h
    ld a, a
    and c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    and [hl]
    and h
    or e
    and a
    db $e3
    ld d, l
    and h
    or c
    ld a, a
    and c
    cp b
    ld a, a
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
    add sp, $51
    adc [hl]
    or h
    or c
    ld a, a
    and c
    xor [hl]
    xor l
    and e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    xor l
    and h
    or l
    and h
    or c
    ld a, a
    and c
    and h
    ld a, a
    and c
    or c
    xor [hl]
    xor d
    and h
    xor l
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
    xor l
    push de
    ld a, a
    or c
    and h
    and b
    xor e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and h
    and h
    xor h
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
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and c
    xor [hl]
    xor l
    and e
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
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    xor h
    and b
    or c
    or e
    xor b
    and b
    xor e
    ld a, a
    and b
    or c
    or e
    xor b
    or d
    or e
    or d
    ld c, a
    and l
    and h
    and b
    or c
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub e
    and a
    and b
    or e
    call nc, $b27f
    and a
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add l
    xor b
    and [hl]
    and a
    or e
    xor b
    xor l
    and [hl]
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
    and b
    and l
    or c
    and b
    xor b
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    or d
    cp b
    db $e3
    ld d, l
    and d
    and a
    xor b
    and d
    or d
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    xor [hl]
    or c
    and e
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or h
    or d
    and h
    xor e
    and h
    or d
    or d
    add sp, $4f
    adc e
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    xor b
    or d
    or e
    or d
    ld a, a
    and e
    xor [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    or e
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    rst $20
    ld a, a
    ld c, a
    adc b
    jp nc, $b27f

    xor a
    and h
    and h
    and d
    and a
    xor e
    and h
    or d
    or d
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    or c
    and b
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor b
    or d
    or e
    or d
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    and a
    and b
    or e
    or e
    and h
    or c
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
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or d
    and a
    and b
    or e
    or e
    and h
    or c
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
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld c, a
    adc h
    cp b
    ld [hl], l
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    or c
    xor b
    and e
    and h
    ld a, a
    xor b
    or d
    ld d, l
    or d
    and a
    and b
    or e
    or e
    and h
    or c
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    ld de, $0204
    ld d, $03
    ld de, $0205
    ld d, $03
    nop
    ld [bc], a
    dec c
    ld [bc], a
    nop
    db $e3
    ld d, [hl]
    dec b
    dec b
    nop
    db $e3
    ld d, [hl]
    add hl, bc
    ld d, $05
    ld [$0006], sp
    rst $38
    rst $38
    or b
    nop
    rrca
    ld d, [hl]
    rst $38
    rst $38
    ld b, c
    add hl, bc
    ld [$0006], sp
    rst $38
    rst $38
    or d
    inc bc
    sub b
    ld d, [hl]
    rst $38
    rst $38
    ld b, c
    dec bc
    ld [$0007], sp
    rst $38
    rst $38
    or d
    inc bc
    and h
    ld d, [hl]
    rst $38
    rst $38
    ld b, c
    add hl, bc
    inc c
    ld b, $00
    rst $38
    rst $38
    or d
    ld [bc], a
    cp b
    ld d, [hl]
    rst $38
    rst $38
    ld b, c
    dec bc
    inc c
    rlca
    nop
    rst $38
    rst $38
    or d
    ld bc, $56cc
    rst $38
    rst $38
    ld e, d
    dec b
    add hl, bc
    add hl, de
    nop
    rst $38
    rst $38
    nop
    nop
    ldh [rRP], a
    rst $38
    rst $38
    ld e, d
    ld de, $1907
    nop
    rst $38
    rst $38
    nop
    nop
    ldh [rRP], a
    rst $38
    rst $38
    ld e, d
    ld de, $1908
    nop
    rst $38
    rst $38
    nop
    nop
    ldh [rRP], a
    rst $38
    rst $38
    ld e, d
    ld de, $1909
    nop
    rst $38
    rst $38
    nop
    nop
    ldh [rRP], a
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld d, c
    db $ed
    ld e, e
    ld l, e
    ld sp, $04c2
    add hl, bc
    db $e3
    ld e, e
    ld b, a
    ld c, h
    inc sp
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    push bc
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld d, c
    rst $10
    ld e, [hl]
    nop
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and h
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, h
    adc h
    add b
    adc l
    adc b
    add b
    add d
    and $51
    add a
    and h
    call nc, $a07f
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    and c
    or c
    and b
    and [hl]
    db $e3
    ld c, a
    and [hl]
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
    and a
    xor b
    or d
    ld d, l
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
    sub e
    and a
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
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
    and a
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
    ld d, l
    xor h
    and b
    and d
    and a
    xor [hl]
    ld a, a
    and c
    or h
    xor e
    xor e
    xor b
    and h
    or d
    add sp, $51
    adc b
    and l
    ld a, a
    adc b
    ld a, a
    or d
    or e
    xor b
    and d
    xor d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    db $f4
    ld c, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld d, l
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor h
    and h
    add sp, $51
    add a
    and h
    or c
    and h
    call nc, $b27f
    xor [hl]
    xor h
    and h
    ld a, a
    and b
    and e
    db $e3
    ld c, a
    or l
    xor b
    and d
    and h
    sbc h
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, c
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    add sp, $51
    sub d
    xor [hl]
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
    and a
    xor b
    xor h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub [hl]
    xor b
    xor a
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
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
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, c
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
    and h
    xor b
    or c
    ld c, a
    xor a
    and a
    cp b
    or d
    xor b
    and d
    and b
    xor e
    ld a, a
    or d
    or e
    or c
    and h
    xor l
    and [hl]
    or e
    and a
    add sp, $51
    add b
    xor l
    and e
    ld a, a
    or e
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    or d
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor b
    and e
    and e
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld d, l
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    and $51
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
    xor h
    xor [hl]
    or l
    and h
    ld c, a
    or e
    and a
    and h
    xor h
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
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
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
    add sp, $51
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
    or d
    or e
    or h
    and d
    xor d
    db $f4
    ld c, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    add sp, $57
    nop
    ld d, d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    rst $20
    ld c, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or e
    and h
    xor e
    xor e
    ld a, a
    and c
    cp b
    ld d, l
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
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
    and [hl]
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or h
    or c
    and [hl]
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    and l
    and l
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
    or e
    xor [hl]
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    and $51
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc b
    ld d, c
    or c
    and b
    xor b
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    and b
    xor e
    ld c, a
    xor b
    xor l
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    add sp, $57
    nop
    adc b
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    cp b
    ld a, a
    xor a
    and b
    xor e
    ld a, a
    xor b
    xor l
    ld a, a
    sub l
    adc b
    adc [hl]
    adc e
    add h
    sub e
    ld d, c
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld c, a
    add b
    add e
    add b
    adc a
    sub e
    add h
    sub c
    ld a, a
    xor e
    xor b
    xor l
    xor d
    add sp, $51
    adc b
    jp nc, $a37f

    xor [hl]
    or [hl]
    xor l
    ld a, a
    ei
    db $e3
    db $fd
    ld c, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    and a
    xor b
    xor h
    add sp, $7f
    adc b
    sub $a4
    ld d, l
    and [hl]
    xor [hl]
    or e
    or e
    and b
    ld a, a
    and d
    or c
    and b
    xor l
    xor d
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
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
    or d
    and a
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    and l
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
    ld a, a
    or e
    and a
    and b
    or e
    ld d, c
    adc b
    sub $a4
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    and e
    add sp, $4f
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
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
    and [hl]
    and h
    or e
    ld c, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and c
    or h
    xor l
    and d
    and a
    ld a, a
    xor [hl]
    and l
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
    and e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld c, a
    xor [hl]
    and l
    and l
    ld a, a
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
    nop
    inc bc
    rlca
    inc bc
    inc bc
    ld d, $03
    rlca
    inc b
    inc bc
    ld d, $03
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
    rst $08
    ld e, e
    rst $38
    rst $38
    jr z, @+$0b

    dec b
    inc b
    db $10
    rst $38
    rst $38
    and b
    nop
    jp nc, $ff5b

    rst $38
    ld c, b
    rlca
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    push de
    ld e, e
    rst $38
    rst $38
    dec hl
    ld a, [bc]
    inc c
    dec b
    ld bc, $ffff
    sub b
    nop
    ld_long $ff5b, a
    rst $38
    ld bc, $5f9d
    nop
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $0023
    add hl, bc
    call nz, $315f
    scf
    nop
    ld [$5fc4], sp
    ld c, h
    call Call_027_555f
    rra
    ld b, e
    ld bc, $564c
    ld h, b
    add l
    sub c
    nop
    add [hl]
    ld b, l
    inc sp
    inc hl
    nop
    ld c, h
    ld [hl], b
    ld h, b
    ld d, h
    ld c, c
    sub c
    sub h
    inc bc
    inc b
    nop
    ld c, c
    sub c
    inc c
    ld bc, $0000
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
    xor a
    db $e3
    ld c, a
    xor a
    and h
    and b
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    and l
    xor b
    xor l
    and h
    add sp, $51
    adc b
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
    ld a, a
    or [hl]
    xor [hl]
    or c
    db $e3
    ld a, a
    ld c, a
    or c
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
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
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    or c
    xor [hl]
    or h
    and c
    xor e
    and h
    and $51
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
    sub e
    and a
    xor b
    or d
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
    and e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    xor b
    and d
    xor d
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
    sub d
    add h
    add d
    sub c
    add h
    sub e
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    sub d
    add h
    add d
    sub c
    add h
    sub e
    adc a
    adc [hl]
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    and b
    ld a, a
    or e
    and b
    and e
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
    adc b
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor [hl]
    and l
    and l
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    ld c, a
    and b
    xor l
    ld a, a
    and h
    xor h
    and h
    or c
    and [hl]
    and h
    xor l
    and d
    cp b
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    ld d, $03
    rlca
    inc bc
    inc b
    ld d, $03
    nop
    ld [bc], a
    ld bc, $0000
    jp z, $015f

    ld bc, $ca00
    ld e, a
    ld bc, $074b
    ld b, $06
    nop
    rst $38
    rst $38
    add b
    nop
    sbc [hl]
    ld e, a
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    ld c, h
    ld sp, hl
    ld h, b
    ld c, [hl]
    ld [$60f3], sp
    ld c, h
    ld b, d
    ld h, c
    ld d, h
    rrca
    ld l, b
    nop
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld d, [hl]
    ld h, c
    ld d, h
    ld c, c
    sub c
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
    xor h
    and b
    and [hl]
    xor l
    xor b
    and l
    xor b
    db $e3
    ld c, a
    and d
    and h
    xor l
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
    cp b
    xor [hl]
    or h
    add sp, $51
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
    xor a
    and a
    xor [hl]
    or e
    xor [hl]
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or d
    xor [hl]
    or h
    or l
    and h
    xor l
    xor b
    or c
    and $57
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    add c
    xor b
    and [hl]
    ld a, a
    or d
    xor h
    xor b
    xor e
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    or e
    and a
    and b
    or e
    call nc, $b37f
    xor [hl]
    xor [hl]
    ld c, a
    and c
    and b
    and e
    add sp, $7f
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
    xor b
    or e
    ld d, c
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    and b
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    xor h
    and h
    xor h
    and h
    xor l
    or e
    xor [hl]
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld bc, $070e
    inc bc
    rlca
    ld bc, $000e
    nop
    ld bc, $073b
    ld b, $06
    nop
    rst $38
    rst $38
    add b
    nop
    ldh [$60], a
    rst $38
    rst $38
    nop
    nop
    ld d, c
    cp h
    ld h, c
    ld d, c
    ccf
    ld h, d
    ld d, c
    xor c
    ld h, d
    inc c
    ld [bc], a
    nop
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
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
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
    and a
    and h
    ld a, a
    and l
    xor [hl]
    or h
    or c
    ld a, a
    xor b
    or d
    xor e
    and b
    xor l
    and e
    or d
    ld d, l
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
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
    and b
    ld a, a
    ld c, a
    xor h
    cp b
    or e
    and a
    xor b
    and d
    and b
    xor e
    ld a, a
    or d
    and h
    and b
    ld a, a
    and d
    or c
    and h
    and b
    db $e3
    ld d, l
    or e
    or h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and a
    xor b
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    and a
    and h
    xor h
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
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    xor l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor b
    or e
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
    and b
    ld a, a
    sub d
    adc b
    adc e
    sub l
    add h
    sub c
    ld c, a
    sub [hl]
    adc b
    adc l
    add [hl]
    add sp, $51
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
    or e
    and a
    and h
    ld c, a
    or d
    and b
    xor h
    and h
    ld a, a
    or d
    and d
    and h
    xor l
    or e
    ld a, a
    and b
    or d
    ld a, a
    or e
    and a
    and h
    ld d, l
    and d
    or c
    and h
    and b
    or e
    or h
    or c
    and h
    add sp, $57
    nop
    adc b
    sub $a4
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
    or e
    and a
    and h
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
    ld d, c
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
    xor b
    or d
    xor e
    and b
    xor l
    and e
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
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
    ld d, l
    or d
    and h
    and b
    ld a, a
    and d
    or c
    and h
    and b
    or e
    or h
    or c
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    and h
    and h
    and e
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
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld d, l
    and [hl]
    and h
    or e
    ld a, a
    xor a
    and b
    or d
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $16
    inc bc
    rlca
    inc bc
    ld b, $16
    inc bc
    nop
    ld [bc], a
    ld bc, $0000
    cp c
    ld h, c
    ld bc, $0001
    cp c
    ld h, c
    inc bc
    add hl, hl
    ld [$0606], sp
    nop
    rst $38
    rst $38
    nop
    nop
    or b
    ld h, c
    rst $38
    rst $38
    jr z, jr_027_635d

    ld a, [bc]
    dec b
    ld bc, $ffff
    and b
    nop
    or e
    ld h, c

jr_027_635d:
    rst $38
    rst $38
    ld h, $06
    inc b
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    or [hl]
    ld h, c
    rst $38
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    rrca
    sub c
    nop
    ld d, h
    ld c, c
    sub c
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld d, $03
    rlca
    inc bc
    rlca
    ld d, $03
    nop
    nop
    ld bc, $0730
    ld b, $06
    nop
    rst $38
    rst $38
    add b
    nop
    ld l, [hl]
    ld h, e
    rst $38
    rst $38
    ld [bc], a
    sbc l
    ld h, e
    nop
    nop
    db $d3
    ld h, e
    nop
    nop
    nop
    dec d
    add hl, bc
    rrca
    add [hl]
    nop
    ld [$63d1], sp
    dec d
    ld [bc], a
    rrca
    add [hl]
    nop
    ld b, $00
    pop de
    ld h, e
    ld b, $02
    call nz, $0663
    inc bc
    pop de
    ld h, e
    ld b, $04
    pop de
    ld h, e
    ld b, a
    ld c, h
    scf
    ld [hl], b
    ld d, h
    ld c, c
    adc l
    ld c, [hl]
    ld h, h
    sub c
    adc l
    ld d, l
    ld h, l
    dec d
    inc b
    rrca
    add [hl]
    nop
    dec d
    ld b, $0f
    add [hl]
    nop
    inc d
    ld bc, $4791
    ld c, h
    inc a
    ld l, l
    ld c, [hl]
    ld [$63e0], sp
    ld c, h
    ld [hl], d
    ld l, l
    ld d, h
    ld c, c
    sub c
    dec d
    ld [bc], a
    rrca
    add [hl]
    nop
    ld b, $03
    db $e4
    ld [hl], h
    ld b, a
    ld c, h
    xor e
    ld h, l
    ld d, l
    dec d
    nop
    rrca
    add [hl]
    nop
    rlca
    nop
    db $fc
    ld h, e
    inc bc
    sbc [hl]
    ld h, h
    ld c, h
    ld [$1565], a
    ld bc, $880f
    nop
    ld b, $01
    rrca
    ld h, h
    ld b, $02
    and l
    ld h, h
    inc bc
    or b
    ld h, h
    dec d
    ld a, [de]
    rrca
    add [hl]
    nop
    rrca
    ld a, h
    nop
    rlca
    nop
    cp e
    ld h, h
    ld c, h
    rra
    ld l, a
    ld c, [hl]
    ld [$63fc], sp
    inc d
    nop
    rrca
    inc b
    nop
    ld [$63fc], sp
    inc d
    ld bc, $0115
    rrca
    add [hl]
    nop
    rrca
    ld [hl], h
    nop
    ld b, $0a
    db $fc
    ld h, e
    rlca
    nop
    ld d, b
    ld h, l
    dec d
    ld de, $860f
    nop
    ld c, h
    ld a, [bc]
    ld h, [hl]
    ld d, h
    ld c, c
    dec d
    ld e, $0f
    add [hl]
    nop
    inc bc
    ld d, h
    ld h, h
    ld c, c
    dec d
    ld [$860f], sp
    nop
    add c
    nop
    nop
    ld [$1612], sp
    inc c
    nop
    ld [de], a
    ld d, $0d
    nop
    ld [de], a
    ld d, $0e
    nop
    ld [hl], b
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    ld [hl], c
    ld h, l
    dec d
    ld a, [bc]
    rrca
    add [hl]
    nop
    add a
    ld l, [hl]
    ld [bc], a
    ld [hl], c
    ld l, c
    nop
    db $76
    ld h, l
    adc [hl]
    sub c
    dec d
    inc e
    rrca
    add [hl]
    nop
    dec d
    dec de
    rrca
    add [hl]
    nop
    ld b, $12
    sbc b
    ld h, h
    ld b, c
    nop
    ld bc, $ff1f
    dec b
    ld c, h
    ld a, [hl]
    ld l, e
    dec d
    dec e
    rrca
    add [hl]
    nop
    ld c, c
    sub c
    ld c, h
    sub h
    ld l, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec a
    ld l, h
    ld c, [hl]
    ld [$64a8], sp
    ld c, h
    add [hl]
    ld l, b
    dec d
    ld bc, $860f
    nop
    inc bc
    db $fc
    ld h, e
    ld c, h
    add hl, bc
    ld l, h
    ld d, h
    ld c, c
    sub c
    rrca
    adc e
    nop
    ld c, c
    sub c
    ld d, h
    ld c, c
    sub c
    ld c, h
    rra
    ld l, a
    ld c, [hl]
    ld [$63fc], sp
    rrca
    inc b
    nop
    ld [$63fc], sp
    dec d
    ld bc, $860f
    nop
    rrca
    ld [hl], l
    nop
    ld b, $0a
    db $fc
    ld h, e
    rlca
    nop
    ld d, b
    ld h, l
    ld c, h
    db $eb
    ld l, c
    db $76
    ld [bc], a
    ld [bc], a
    ld c, h
    dec de
    ld l, d
    ld d, h
    db $76
    ld [bc], a
    nop
    ld c, c
    sub c
    dec d
    jr jr_027_64fc

    add [hl]
    nop
    rlca
    nop
    ld b, d
    ld h, l
    dec d
    add hl, de
    rrca
    add [hl]
    nop
    rlca
    nop
    ld c, c
    ld h, l

jr_027_64fc:
    rrca
    ld a, h
    nop
    rlca
    nop
    cp e
    ld h, h
    dec d
    dec b
    rrca
    add [hl]
    nop
    ld b, $00
    ld [de], a
    ld h, l
    ld c, h
    or b
    ld l, h
    inc bc
    dec d
    ld h, l
    ld c, h
    ld l, l
    ld l, h
    ld c, [hl]
    ld [$63fc], sp
    ld c, h
    ld a, c
    ld l, a
    ld c, [hl]
    ld [$63fc], sp
    inc d
    nop
    rrca
    inc b
    nop
    ld [$63fc], sp
    inc d
    ld bc, $0615
    rrca
    add [hl]
    nop
    dec d
    ld [de], a
    rrca
    add [hl]
    nop
    ld c, h
    ld a, [bc]
    ld h, [hl]
    ld d, h
    inc bc
    ld c, [hl]
    ld h, h
    ld c, h
    db $76
    ld [hl], b
    ld d, h
    inc bc
    or b
    ld h, h
    ld c, h
    push hl
    ld [hl], c
    ld d, h
    inc bc
    db $fc
    ld h, e
    ld c, h
    rla
    ld [hl], d
    ld d, h
    inc bc
    db $fc
    ld h, e
    rrca
    adc e
    nop
    ld c, c
    sub c
    ld b, a
    ld c, h
    jr jr_027_65c7

    ld d, h
    inc bc
    or b
    ld h, h
    ld l, e
    ld b, a
    ld c, h
    ld h, h
    ld [hl], d
    ld d, h
    ld c, c
    db $76
    inc bc
    inc bc
    sub c
    ld d, c
    and h
    ld [hl], d
    ld d, c
    ld e, e
    ld [hl], e
    ld d, c
    db $e3
    ld [hl], d
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    inc c
    ld b, a
    rrca
    rrca
    rrca
    rrca
    dec c
    rrca
    ld [bc], a
    ld b, a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    ld c, $03
    ld b, a
    dec c
    dec c
    dec c
    dec c
    inc bc
    ld b, a
    ld [$0808], sp
    ld [bc], a
    ld b, a
    ld bc, $0909
    add hl, bc
    ld b, a
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    ld b, a
    ld [$0a08], sp
    ld a, [bc]
    inc bc
    ld b, a
    nop
    ld b, a
    inc bc
    ld b, a
    nop
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
    ld c, a
    or [hl]
    and h
    xor e
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c

jr_027_65c7:
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
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
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    add sp, $57
    nop
    sub [hl]
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
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld c, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    and $57
    nop
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
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    add sp, $57
    nop
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
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and l
    and b
    and d
    xor b
    xor e
    xor b
    or e
    cp b
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld d, h
    adc h

Call_027_6656:
    adc [hl]
    adc l
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $51
    add d
    xor [hl]
    or h
    xor l
    or e
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
    ld d, c
    and l
    or c
    xor [hl]
    xor h
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
    xor [hl]
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
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
    ld d, c
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    xor e
    cp b
    ld a, a
    and e
    and h
    or d
    xor b
    and [hl]
    xor l
    and h
    and e
    ld c, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    sub d
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
    xor h
    and b
    xor l
    cp b
    ld c, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    sub d
    ld a, a
    xor b
    xor l
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
    add sp, $51
    add h
    and b
    and d
    and a
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    or d
    ld c, a
    or d
    and h
    or l
    and h
    xor l
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
    and l
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and h
    or l
    and h
    xor l
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    db $f4
    ld d, c
    and b
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
    and b
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    call nc, $8b7f
    add h
    add b
    add e
    add h
    sub c
    add sp, $51
    add b
    xor e
    xor e
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    sub d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
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
    add a
    adc [hl]
    adc l
    adc [hl]
    sub c
    ld a, a
    sub c
    adc [hl]
    adc e
    adc e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor a
    xor [hl]
    or d
    or e
    and h
    or c
    xor b
    or e
    cp b
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
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
    xor b
    xor l
    ld a, a
    or h
    xor a
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    or l
    and h
    ld d, c
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    sub d
    ld a, a
    and h
    and b
    and d
    and a
    ld c, a
    and e
    and b
    cp b
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
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld c, a
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
    ld a, a
    xor [hl]
    xor l
    and d
    and h
    ld a, a
    and b
    ld d, c
    and e
    and b
    cp b
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    xor l
    ld c, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    add sp, $51
    sub e
    xor [hl]
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    or c
    or h
    xor a
    or e
    ld a, a
    and b
    ld c, a
    or d
    and h
    or d
    or d
    xor b
    xor [hl]
    xor l
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
    ld d, c
    sub d
    add b
    sub l
    add h
    add sp, $7f
    adc b
    and l
    ld a, a
    xor l
    xor [hl]
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    xor [hl]
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
    ld a, a
    or e
    xor [hl]
    ld d, c
    or c
    and h
    or d
    or h
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
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
    add sp, $51
    ld d, a
    nop
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
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and l
    and b
    and d
    xor b
    xor e
    xor b
    or e
    cp b
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
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
    or d
    add sp, $51
    add d
    xor [hl]
    or h
    xor l
    or e
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
    ld d, c
    and l
    or c
    xor [hl]
    xor h
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
    xor [hl]
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
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
    ld d, c
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    xor e
    cp b
    ld a, a
    and e
    and h
    or d
    xor b
    and [hl]
    xor l
    and h
    and e
    ld c, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    sub d
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
    xor h
    and b
    xor l
    cp b
    ld c, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    sub d
    ld a, a
    xor b
    xor l
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
    add sp, $51
    add h
    and b
    and d
    and a
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    or d
    ld c, a
    or d
    and h
    or l
    and h
    xor l
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
    add c
    and h
    and b
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    xor e
    xor e
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld c, a
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
    add sp, $51
    sub e
    xor [hl]
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    or c
    or h
    xor a
    or e
    ld a, a
    and b
    ld c, a
    or d
    and h
    or d
    or d
    xor b
    xor [hl]
    xor l
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
    ld d, c
    sub d
    add b
    sub l
    add h
    add sp, $7f
    adc b
    and l
    ld a, a
    xor l
    xor [hl]
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    xor [hl]
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
    ld a, a
    or e
    xor [hl]
    ld d, c
    or c
    and h
    or d
    or h
    xor h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
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
    add sp, $51
    ld d, a
    nop
    sub c
    and h
    and d
    and h
    xor b
    or l
    and h
    and e
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    sub d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    add a
    adc [hl]
    adc l
    adc [hl]
    sub c
    ld a, a
    sub c
    adc [hl]
    adc e
    adc e
    add sp, $51
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
    xor l
    and l
    xor b
    or c
    xor h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    xor l
    xor b
    or e
    xor [hl]
    or c
    add sp, $57
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
    ld d, c
    ld d, a
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
    ld c, a
    or l
    xor b
    or d
    xor b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
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
    sbc b
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
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    and h
    and b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and h
    ld c, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    ld a, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
    db $f4
    ld d, c
    ld d, d
    add sp, $7f
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    or c
    and h
    or d
    or h
    xor e
    or e
    or d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld d, c
    and c
    and h
    ld a, a
    and d
    and a
    xor [hl]
    or d
    and h
    xor l
    ld a, a
    and b
    or d
    ld a, a
    and b
    ld c, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    add sp, $51
    ld d, a
    nop
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
    sbc b
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
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
    ld d, c
    add l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and b
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    xor a
    or c
    xor b
    cp c
    and h
    rst $20
    ld d, c
    ld d, a
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
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or e
    and a
    and h
    ld c, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    and $57
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and l
    xor b
    or l
    and h
    ld c, a
    ld d, b
    ld bc, $d0ac
    nop
    rst $20
    ld d, b
    rrca
    ld b, $50
    nop
    adc [hl]
    xor [hl]
    xor a
    or d
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    adc a
    add b
    add d
    adc d
    ld a, a
    xor b
    or d
    ld c, a
    or d
    or e
    or h
    and l
    and l
    and h
    and e
    ld a, a
    and l
    or h
    xor e
    xor e
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
    and b
    xor l
    and e
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
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld c, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    add sp, $51
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
    xor [hl]
    xor a
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    or c
    or l
    and h
    ld c, a
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
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or d
    or e
    and h
    xor a
    ld a, a
    or e
    and a
    xor b
    or d
    ld c, a
    or [hl]
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
    and a
    and h
    and b
    or c
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
    ld d, l
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
    and $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    and h
    or l
    xor b
    xor [hl]
    or h
    or d
    ld d, c
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and c
    and h
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
    add sp, $7f
    adc [hl]
    adc d
    and $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    or c
    and h
    or l
    xor b
    xor [hl]
    or h
    or d
    ld d, c
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and c
    and h
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
    add sp, $51
    add b
    xor e
    or d
    xor [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    or a
    xor b
    or d
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld d, l
    and e
    and h
    xor e
    and h
    or e
    and h
    and e
    add sp, $7f
    adc [hl]
    adc d
    and $57
    nop
    add d
    and a
    and h
    and d
    xor d
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld c, a
    add a
    adc [hl]
    adc l
    adc [hl]
    sub c
    ld a, a
    sub c
    adc [hl]
    adc e
    adc e
    and $57
    nop
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
    ld a, a
    or c
    or h
    xor e
    and h
    or d
    ld c, a
    and b
    or c
    and h
    ld a, a
    or [hl]
    or c
    xor b
    or e
    or e
    and h
    xor l
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub c
    and h
    and b
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    or h
    xor e
    and h
    or d
    and $57
    nop
    sub e
    and a
    or c
    and h
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    and b
    cp b
    ld c, a
    and h
    xor l
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
    or d
    add sp, $51
    add b
    xor e
    xor e
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld c, a
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    or e
    and a
    and h
    cp b
    ld c, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and c
    and h
    ld d, l
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
    add sp, $51
    add d
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    and b
    cp b
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and a
    and b
    or l
    and h
    ld d, c
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    or c
    and h
    or d
    or e
    or c
    xor b
    and d
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    xor h
    add sp, $57
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
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    sub d
    add b
    sub l
    add h
    ld d, c
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and h
    or a
    xor b
    or e
    xor b
    xor l
    and [hl]
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
    sub c
    adc [hl]
    adc [hl]
    adc h
    add sp, $51
    adc b
    jp nc, $a07f

    or [hl]
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    or d
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
    cp b
    xor [hl]
    or h
    or c
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
    ld d, c
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and e
    and h
    and d
    xor e
    and b
    or c
    and h
    and e
    ld c, a
    xor b
    xor l
    or l
    and b
    xor e
    xor b
    and e
    add sp, $57
    nop
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
    and c
    and h
    ld a, a
    and a
    and h
    and b
    xor e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    or h
    xor e
    xor e
    ld d, l
    and a
    and h
    and b
    xor e
    or e
    and a
    add sp, $57
    nop
    adc l
    and h
    or a
    or e
    ld a, a
    or h
    xor a
    db $f4
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld c, a
    xor l
    xor [hl]
    add sp, $50
    ld bc, $d099
    nop
    add sp, $7f
    sub c
    and h
    and b
    and e
    cp b
    and $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    and h
    or d
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    sub d
    add b
    sub l
    add h
    add e
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld d, c
    and d
    xor [hl]
    xor l
    xor l
    and h
    and d
    or e
    xor b
    xor l
    and [hl]
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
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $57
    nop
    add c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and h
    xor l
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
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
    sub c
    adc [hl]
    adc [hl]
    adc h
    db $f4
    ld d, c
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    or c
    xor [hl]
    and [hl]
    or c
    and h
    or d
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    add sp, $57
    nop
    sub d
    add b
    sub l
    add h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and h
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and h
    or d
    or d
    xor b
    xor [hl]
    xor l
    and $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, a
    and c
    and h
    ld a, a
    sub d
    add b
    sub l
    add h
    add e
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and d
    xor d
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
    xor a
    or c
    and h
    or l
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    add sp, $57
    nop
    add d
    and b
    xor l
    and d
    and h
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld c, a
    sub c
    adc [hl]
    adc [hl]
    adc h
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
    and $57
    nop
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    xor a
    or c
    and h
    or l
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    xor [hl]
    xor l
    ld d, c
    and l
    xor b
    xor e
    and h
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
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    ld d, l
    xor b
    or e
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    and $57
    nop
    sub [hl]
    and h
    sub $a4
    ld a, a
    and c
    and h
    and h
    xor l
    ld a, a
    or [hl]
    and b
    xor b
    or e
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
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    cp b
    ld d, c
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    db $f4
    ld c, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    add sp, $57
    nop
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
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
    and l
    xor b
    or l
    and h
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    sub d
    ld d, l
    and h
    and b
    and d
    and a
    ld a, a
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
    or e
    xor [hl]
    xor h
    xor [hl]
    or c
    or c
    xor [hl]
    or [hl]
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
    xor b
    or e
    call nc, $ad4f
    xor [hl]
    or e
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
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and d
    or h
    or c
    or c
    and h
    xor l
    or e
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    and b
    or e
    ld d, c
    or e
    and a
    and h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and a
    and b
    or d
    ld d, c
    and h
    xor e
    and b
    xor a
    or d
    and h
    and e
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
    ld c, a
    or d
    or e
    and b
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
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
    xor b
    or e
    call nc, $ad4f
    xor [hl]
    or e
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
    or c
    and h
    and [hl]
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld c, a
    or c
    and h
    and d
    and h
    xor l
    or e
    ld a, a
    or c
    and h
    and d
    xor [hl]
    or c
    and e
    ld a, a
    and b
    or e
    ld d, c
    or e
    and a
    and h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld c, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and a
    and b
    or d
    ld d, c
    and h
    xor e
    and b
    xor a
    or d
    and h
    and e
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
    ld c, a
    or d
    or e
    and b
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    and d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    add sp, $57
    nop
    adc [hl]
    xor l
    and h
    ld a, a
    xor [hl]
    or c
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor [hl]
    and l
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
    call nc, $ab55
    and h
    or l
    and h
    xor e
    or d
    ld a, a
    and h
    or a
    and d
    and h
    and h
    and e
    or d
    ld a, a
    ld d, b
    add hl, bc
    db $dd
    jp nz, $0013

    add sp, $57
    ld bc, $cd49
    nop
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    and h
    xor l
    or e
    and h
    or c
    ld a, a
    and b
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld d, l
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    ld a, a
    adc e
    db $fd
    or $e8
    ld d, c
    sub e
    and a
    xor b
    or d
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld c, a
    xor b
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    adc e
    ld d, b
    add hl, bc
    db $dd
    jp nz, $0013

    add sp, $57
    nop
    add e
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    and l
    xor b
    or c
    or d
    or e
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld d, c
    xor l
    xor [hl]
    ld a, a
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
    ld [hl], l
    ld c, a
    adc b
    jp nc, $ad7f

    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld [hl], l
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
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld a, a
    sub c
    adc [hl]
    adc [hl]
    adc h
    sub d
    db $f4
    ld a, a
    and c
    or h
    or e
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
    or [hl]
    xor b
    xor l
    ld c, a
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
    adc b
    or e
    call nc, $a07f
    ld a, a
    and [hl]
    or c
    or h
    and h
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    and b
    or d
    xor d
    db $f4
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
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
    xor b
    or e
    and h
    xor h
    or d
    ld c, a
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
    xor d
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
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld d, c
    xor b
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor d
    and h
    cp b
    ld a, a
    or e
    xor [hl]
    ld c, a
    or [hl]
    xor b
    xor l
    xor l
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
    or d
    add sp, $57
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
    or d
    and h
    and h
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and l
    and b
    or c
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld d, c
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor c
    or h
    or d
    or e
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
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
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
    ld c, a
    and b
    xor l
    cp b
    ld a, a
    and l
    xor b
    or c
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, a
    nop
    nop
    inc bc
    add hl, bc
    rlca
    inc bc
    ld d, $10
    add hl, bc
    ld [$1604], sp
    stop
    rlca
    ld bc, $0d16
    nop
    ld bc, $0606
    nop
    call nc, $0563
    ld b, d
    ld a, [bc]
    dec bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld [c], a
    ld h, e
    rst $38
    rst $38
    daa
    dec c
    ld [de], a
    add hl, bc
    nop
    rst $38
    rst $38
    or b
    nop
    ld e, l
    ld h, l
    rst $38
    rst $38
    inc h
    dec c
    ld [$0105], sp
    rst $38
    rst $38
    add b
    nop
    ld l, b
    ld h, l
    rst $38
    rst $38
    dec h
    rlca
    dec b
    ld [bc], a
    ld de, $ffff
    sub b
    nop
    ld l, e
    ld h, l
    rst $38
    rst $38
    jr nc, jr_027_740b

    ld [de], a
    inc b
    db $10
    rst $38
    rst $38
    nop
    nop

jr_027_740b:
    ld l, [hl]
    ld h, l
    rst $38
    rst $38
    ld [bc], a
    add hl, de
    ld [hl], h
    nop
    nop
    jr nz, jr_027_748a

    nop
    nop
    nop
    ld l, [hl]
    ld [bc], a
    adc l
    ld hl, $1474
    ld bc, $6991
    nop
    adc h
    ld h, l
    dec d
    ld [bc], a
    rrca
    ld a, d
    nop
    ld l, a
    ld [bc], a
    add a
    add [hl]
    ld l, c
    ld [bc], a
    sub d
    ld h, l
    ld b, a
    and h
    ld bc, $4955
    rrca
    ld [hl], a
    nop
    rrca
    ld l, $00
    ld a, e
    rlca
    nop
    jp nz, $1974

    ld h, h
    rst $08
    ld b, $07
    reti


    ld [hl], h
    ld l, c
    ld [bc], a
    sub a
    ld h, l
    add a
    ld l, [hl]
    ld [bc], a
    ld l, c
    inc bc
    sbc h
    ld h, l
    ld l, c
    nop
    and a
    ld h, l
    ld b, a
    ld c, h
    sub d
    ld l, [hl]
    ld d, h
    ld c, c
    ld a, a
    dec c
    nop
    rrca
    ld l, $00
    rrca
    and h
    nop
    adc e
    inc a
    rrca
    ld sp, $0f00
    dec a
    nop
    ld b, a
    ld c, h
    cp h
    ld l, [hl]
    ld c, [hl]
    ld [$7483], sp
    ld c, c
    ld l, c
    nop
    xor c
    ld h, l
    ld l, c
    inc bc
    and c
    ld h, l
    inc bc
    dec h
    ld [hl], h
    ld c, h
    ld e, [hl]
    ld l, a
    ld c, [hl]
    ld [$74a3], sp

jr_027_748a:
    dec d
    rlca
    rrca
    add [hl]
    nop
    dec d
    rra
    rrca
    add [hl]
    nop
    dec d
    inc bc
    rrca
    add [hl]
    nop
    add l
    dec h
    nop
    add [hl]
    rrca
    ld l, $00
    rrca
    ld a, [hl]
    nop
    ld c, h
    cp a
    ld l, a
    ld c, [hl]
    ld [$7477], sp
    dec d
    inc b
    rrca
    add [hl]
    nop
    dec d
    ld b, $0f
    add [hl]
    nop
    ld c, c
    rrca
    ld l, $00
    and e
    ld bc, $0b16
    rlca
    rlca
    ld b, a
    inc bc
    or b
    ld h, h
    adc e
    inc a
    rrca
    cpl
    nop
    and e
    ld bc, $0b16
    rlca
    rlca
    dec d
    inc b
    rrca
    add [hl]
    nop
    ld b, a
    ld c, h
    ld c, c
    ld l, d
    ld d, h
    ld c, c
    sub c
    adc e
    inc a
    rrca
    cpl
    nop
    and e
    ld bc, $0b16
    rlca
    rlca
    ld b, a
    ld c, h
    rst $28
    ld l, d
    inc bc
    ld a, d
    ld h, h
    dec d
    inc b
    rrca
    add [hl]
    nop
    ld b, a
    ld c, h
    pop bc
    ld [hl], b
    ld d, h
    ld c, c
    sub c
    dec d
    inc b
    rrca
    add [hl]
    nop
    dec d
    ld b, $0f
    add [hl]
    nop
    ld b, a
    ld c, h
    ld c, c
    ld l, d
    ld c, h
    add hl, bc
    ld l, h
    ld d, h
    ld c, c
    sub c
    nop
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
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
    sub d
    add b
    sub l
    add h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    inc bc
    inc b
    ld d, $0e
    rlca
    inc b
    inc b
    ld d, $0e
    nop
    nop
    ld [bc], a
    daa
    inc b
    ld [$0006], sp
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $91
    rlca
    ld b, d
    ld a, [bc]
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $ff
    rst $38
    ld [bc], a
    ld h, d
    ld [hl], l
    nop
    nop
    ld h, a
    ld [hl], l
    nop
    nop
    nop
    adc l
    ld l, b
    ld [hl], l
    inc d
    ld bc, $7091
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    adc a
    ld [hl], l
    ld l, c
    nop
    sub d
    ld [hl], l
    dec d
    ld a, [bc]
    rrca
    add [hl]
    nop
    add l
    ld l, [hl]
    nop
    ld a, b
    inc a
    add [hl]
    ld [hl], b
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    ld a, b
    ld h, l
    ld [hl], c
    add a
    ld l, [hl]
    ld [bc], a
    ld l, c
    nop
    ld a, b
    ld h, l
    adc [hl]
    sub c
    rrca
    nop
    ld b, a
    nop
    ld b, a
    nop
    nop
    ld [bc], a
    inc bc
    ld bc, $1601
    ld c, $03
    ld [bc], a
    ld bc, $0e16
    nop
    nop
    ld bc, $0642
    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    adc a
    ld [hl], l
    rst $38
    rst $38
    ld [bc], a
    cp e
    ld [hl], l
    nop
    nop
    ret nz

    ld [hl], l
    nop
    nop
    nop
    adc l
    pop bc
    ld [hl], l
    inc d
    ld bc, $7091
    ld [bc], a
    nop
    ld c, $27
    bit 6, l
    inc bc
    call c, $f075
    ld [hl], b
    push af
    ld a, $03
    ldh [rSVBK], a
    ld a, [$d800]
    ld [$c2dd], a
    pop af
    ldh [rSVBK], a
    ret


    ld b, $03
    inc bc
    db $76
    ld b, $04
    inc bc
    db $76
    ld b, $05
    ld a, [bc]
    db $76
    ld b, $06
    ld a, [bc]
    db $76
    ld b, $07
    ld de, $0676
    ld [$7611], sp
    ld b, $09
    jr jr_027_766e

    ld b, $0a
    jr jr_027_7672

    ld l, c
    ld [bc], a
    ld a, d
    ld h, l
    inc bc
    rra
    db $76
    ld l, c
    ld [bc], a
    ld a, h
    ld h, l
    inc bc
    rra
    db $76
    ld l, c
    ld [bc], a
    add [hl]
    ld h, l
    inc bc
    rra
    db $76
    ld l, c
    ld [bc], a
    add h
    ld h, l
    inc bc
    rra
    db $76
    ld l, c
    ld [bc], a
    add d
    ld h, l
    inc bc
    rra
    db $76
    ld l, h
    nop
    ld [bc], a
    ld b, a
    ld c, h
    ld h, $6c
    ld d, h
    ld c, c
    ld [hl], c
    ld l, c
    nop
    db $76
    ld h, l
    adc [hl]
    sub c
    nop
    nop
    ld b, $01
    dec bc
    ld bc, $0d16
    nop
    dec b
    ld bc, $0c16
    nop
    rlca
    ld bc, $0c16
    nop
    add hl, bc
    ld bc, $0c16
    nop
    dec c
    ld bc, $0c16
    nop
    rrca
    ld bc, $0c16
    nop
    nop
    ld bc, $0642
    rrca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    cpl
    db $76
    rst $38
    rst $38
    nop
    ld bc, $6502
    db $76
    ld [hl-], a
    rst $08
    rlca
    sub b
    ld d, c
    ld d, $77
    ld d, c
    ret z

jr_027_766e:
    ld [hl], a
    nop
    add e
    xor b

jr_027_7672:
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    and h
    and h
    ld a, a
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
    ld d, l
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $51
    add c
    or h
    or e
    ld a, a
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
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    cp b
    and h
    or e
    add sp, $57
    nop
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
    ld a, a
    and a
    and b
    or d
    ld c, a
    xor [hl]
    xor a
    and h
    xor l
    and h
    and e
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
    and [hl]
    xor [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    ld d, c
    or h
    xor a
    ld a, a
    and b
    ld a, a
    and d
    xor [hl]
    xor [hl]
    xor e
    ld a, a
    xor e
    xor b
    xor l
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor b
    xor l
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
    or d
    and h
    and d
    or c
    and h
    or e
    db $f4
    ld c, a
    and c
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
    or [hl]
    xor b
    xor l
    ld a, a
    and b
    ld d, c
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    ld a, a
    xor e
    xor [hl]
    or e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    or [hl]
    xor b
    xor l
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    ld a, a
    and [hl]
    xor b
    and l
    or e
    or d
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
    or e
    or c
    and b
    xor b
    xor l
    ld c, a
    xor h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    pop de
    xor e
    ld d, c
    and c
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and l
    xor [hl]
    or c
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
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    xor e
    and h
    or l
    and h
    xor e
    or d
    ld a, a
    xor [hl]
    and l
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
    adc b
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld d, c
    or h
    or d
    and h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    and e
    xor b
    and l
    and l
    and h
    or c
    and h
    xor l
    or e
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
    and [hl]
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, a
    nop
    nop
    inc b
    rlca
    inc b
    ld bc, $0116
    rlca
    dec b
    ld bc, $0116
    nop
    inc b
    ld bc, $1016
    nop
    dec b
    ld [bc], a
    ld d, $10
    nop
    nop
    ld [bc], a
    inc l
    rlca
    rlca
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld l, c
    db $76
    rst $08
    rlca
    ld h, $09
    dec bc
    inc b
    db $10
    rst $38
    rst $38
    add b
    nop
    ld l, h
    db $76
    rst $38
    rst $38
    nop
    ld [bc], a
    ld bc, $785a
    ld [bc], a
    ld e, e
    ld a, b
    sub b
    ld [hl-], a
    rst $08
    rlca
    sub b
    ld d, c
    jr nc, jr_027_78db

    ld d, c
    db $db
    ld a, c
    ld d, c
    adc h
    ld a, d
    ld d, e
    db $fc
    ld a, d
    nop
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
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
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    rst $20
    ld a, a
    adc h
    cp b
    ld d, c
    xor l
    and h
    and d
    xor d
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld a, a
    and b
    or e
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
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
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    rst $20
    ld d, c
    sub d
    xor b
    xor l
    and d
    and h
    ld a, a
    or e
    and a

jr_027_78db:
    and h
    or c
    and h
    ld a, a
    and b
    or c
    and h
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
    ld a, a
    xor [hl]
    and l
    ld d, c
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    ld a, a
    xor b
    xor l
    or d
    xor b
    and e
    and h
    db $f4
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and c
    and h
    ld d, c
    and b
    ld a, a
    or [hl]
    xor b
    and e
    and h
    ld a, a
    or l
    and b
    or c
    xor b
    and h
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
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
    ld c, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    rst $20
    ld d, c
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
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
    ld d, l
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and h
    and b
    or c
    or e
    and a
    ld a, a
    and e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    and a
    and h
    or c
    and h
    and $51
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    and b
    xor h
    and h
    ld a, a
    or d
    and b
    cp b
    or d
    ld c, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld d, c
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
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
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
    or h
    or d
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, a
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
    adc b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and e
    and h
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
    or e
    and a
    or c
    and h
    and h
    ld d, c
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
    xor b
    xor l
    or e
    xor [hl]
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld [hl], l
    ld d, a
    nop
    add h
    and a
    and h
    and a
    and h
    and a
    and h
    ld [hl], l
    ld c, a
    adc b
    ld a, a
    or d
    xor l
    and h
    and b
    xor d
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld d, l
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
    jp nc, $ad7f

    and h
    or l
    and h
    or c
    ld a, a
    and [hl]
    xor b
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    or h
    xor a
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
    and d
    xor [hl]
    xor h
    and h
    ld d, l
    and b
    ld a, a
    adc e
    add h
    add b
    add e
    add h
    sub c
    rst $20
    ld d, a
    nop
    add a
    and h
    and a
    and h
    and a
    and h
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    xor l
    or h
    and d
    xor d
    ld c, a
    xor [hl]
    or h
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and b
    xor b
    xor e
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    adc b
    sub $a4
    ld a, a
    or [hl]
    xor [hl]
    xor l
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
    or [hl]
    xor b
    xor l
    ld a, a
    xor b
    or e
    ld c, a
    and b
    xor e
    xor e
    add sp, $7f
    sub e
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    rst $20
    ld d, a
    nop
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
    ld d, a
    nop
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
    ld d, c
    sub e
    and b
    xor d
    and h
    ld a, a
    or e
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
    ld c, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    add d
    and a
    and b
    xor e
    xor e
    and h
    xor l
    and [hl]
    and h
    rst $20
    ld d, a
    nop
    sub e
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
    call nc, $a34f
    xor [hl]
    xor [hl]
    or c
    or d
    ld a, a
    and b
    or c
    and h
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
    or e
    call nc, $ae7f
    xor a
    and h
    xor l
    rst $20
    ld d, a
    nop
    nop
    inc b
    dec d
    ld [$1603], sp
    rrca
    dec d
    add hl, bc
    inc b
    ld d, $0f
    add hl, bc
    ld [$1601], sp
    dec bc
    add hl, bc
    add hl, bc
    ld [bc], a
    ld d, $0b
    nop
    ld bc, $0a0a
    nop
    ld l, b
    ld a, b
    inc b
    ld h, [hl]
    db $10
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    add b
    nop
    ld e, a
    ld a, b
    rst $38
    rst $38
    ld a, [hl+]
    rrca
    ld de, $1102
    rst $38
    rst $38
    and b
    nop
    ld h, d
    ld a, b
    rst $38
    rst $38
    ld c, c
    ld d, $10
    dec b
    ld bc, $ffff
    nop
    nop
    ld h, l
    ld a, b
    rst $08
    rlca
    jr z, jr_027_7bc3

    db $10
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    rst $28
    ld h, $ff
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

jr_027_7bc3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
