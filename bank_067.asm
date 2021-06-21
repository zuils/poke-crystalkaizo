; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $067", ROMX[$4000], BANK[$67]

    ld [bc], a
    dec c
    ld b, b
    nop
    nop
    ld c, $40
    nop
    nop
    ld bc, $0f05
    ld b, b
    sub c
    sub c
    ld [hl], $42
    nop
    sub b
    ld l, e
    ld b, a
    ld c, h
    db $e3
    ld b, c
    ld c, [hl]
    ld [$40a4], sp
    inc bc
    rra
    ld b, b
    ld c, h
    ld l, a
    ld b, d
    ld d, h
    ld c, c
    ld a, a
    ld de, $7000
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    sub l
    ld b, c
    ld b, a
    ld c, h
    add l
    ld b, d
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    sbc e
    ld b, c
    halt
    ld bc, $4c47
    inc b
    ld b, e
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    and e
    ld b, c
    halt
    ld bc, $4c47
    ld e, c
    ld b, e
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    xor h
    ld b, c
    halt
    ld [bc], a
    ld b, a
    ld c, h
    and a
    ld b, e
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    or [hl]
    ld b, c
    halt
    ld bc, $3c8b
    db $76
    ld [bc], a
    ld [bc], a
    halt
    inc bc
    ld b, a
    ld c, h
    db $ec
    ld b, e
    ld d, l
    ld b, h
    sbc e
    ld b, b
    ld bc, $9700
    ld b, b
    ld [hl], $01
    nop
    ld c, h
    jr c, jr_067_40c0

    ld d, l
    ld c, h
    ld d, c
    ld b, h
    ld d, h
    ld c, c
    ld [hl], c
    rrca
    dec a
    nop
    halt
    ld bc, $0269
    bit 0, c
    add l
    rra
    nop
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    rst $38
    ld b, $86
    sub c
    inc c
    cpl
    nop
    sub c
    adc h
    add b
    adc a
    ld a, a
    add d
    add b
    sub c
    add e
    ld d, b
    ld c, h
    sbc a
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld [hl], d
    inc bc
    daa
    rlca
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
    ld l, a
    inc bc
    ld l, c
    inc bc
    adc $41

jr_067_40c0:
    halt
    inc bc
    ld a, a
    rra
    nop
    ld b, a
    ld c, h
    ld [c], a
    ld b, h
    ld d, h
    ld c, c
    ld sp, $001c
    add hl, bc
    xor $40
    ld sp, $001d
    add hl, bc
    inc b
    ld b, c
    ld h, h
    ld a, a
    ld b, l
    and $45
    ld l, b
    inc bc
    ld e, [hl]
    add hl, bc
    inc bc
    ld e, $03
    ld bc, $835f
    ld a, e
    add hl, bc
    ld a, [de]
    ld b, c
    inc bc
    ld h, $41
    ld h, h
    ld a, a
    ld b, l
    and $45
    ld l, b
    inc bc
    ld e, [hl]
    add hl, bc
    ld bc, $031e
    ld bc, $835f
    ld a, e
    add hl, bc
    ld a, [de]
    ld b, c
    inc bc
    ld h, $41
    ld h, h
    ld a, a
    ld b, l
    and $45
    ld l, b
    inc bc
    ld e, [hl]
    add hl, bc
    ld [bc], a
    ld e, $03
    ld bc, $835f
    ld a, e
    add hl, bc
    ld a, [de]
    ld b, c
    inc bc
    ld h, $41
    ld a, a
    jr nz, jr_067_411d

jr_067_411d:
    ld b, a
    ld c, h
    ld [$5446], sp
    ld c, c
    inc bc
    cpl
    ld b, c
    ld a, a
    jr nz, jr_067_4129

jr_067_4129:
    ld b, a
    ld c, h
    sbc [hl]
    ld b, l
    ld d, h
    ld c, c
    add l
    ld b, c
    nop
    ld l, c
    nop
    call nc, Call_067_7641
    nop
    ld [bc], a
    ld l, c
    inc bc
    jp c, $6e41

    inc bc
    inc d
    nop
    rrca
    dec de
    nop
    add d
    sub c
    ld l, e
    ld b, a
    inc [hl]
    ld bc, $0900
    ld d, h
    ld b, c
    ld c, h
    ld d, b
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    xor b
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    inc [hl]
    dec bc
    nop
    add hl, bc
    ld l, b
    ld b, c
    ld c, h
    sub $46
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld bc, $5447
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $004d
    add hl, bc
    add e
    ld b, c
    ld c, h
    ld h, [hl]
    ld b, a
    ld d, l
    sbc [hl]
    ld e, a
    ld bc, $8708
    ld b, c
    inc sp
    ld c, l
    nop
    ld c, h
    pop bc
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld d, e
    ldh [rBGP], a
    ld d, e
    dec d
    ld c, b
    inc c
    stop
    inc c
    ld de, $0e00
    ld c, $0d
    ld c, $01
    ld b, a
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld bc, $0e47
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld bc, $0e47
    ld c, $0e
    inc c
    ld c, $0e
    ld c, $0c
    ld [bc], a
    ld b, a
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    ld bc, $0d47
    dec c
    ld b, a
    ld c, $0e
    ld c, $0e
    ld c, $47
    db $10
    ld bc, $0e47
    nop
    ld b, a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld de, $1211
    ld [de], a
    ld b, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor d
    xor b
    and h
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    db $f4
    ld a, a
    and b
    or c
    and h
    xor l
    push de
    ld d, l
    cp b
    xor [hl]
    or h
    and $7f
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    and h
    xor e
    xor e
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    call nc, $8e7f
    adc d
    rst $20
    ld a, a
    add h
    or l
    and h
    or c
    cp b
    db $e3
    ld c, a
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor d
    xor b
    and h
    ld d, l
    and b
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    rst $20
    ld d, c
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ret nc

    ld a, a
    xor e
    xor b
    xor d
    and h
    db $f4
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor l
    ld a, a
    or e
    and h
    and b
    and d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld d, l
    and l
    and h
    or [hl]
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    add sp, $57
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    rst $20
    ld c, a
    add l
    xor [hl]
    xor e
    xor e
    xor [hl]
    or [hl]
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
    xor b
    or d
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $7f
    sub e
    and a
    and h
    cp b
    ld a, a
    and a
    and h
    and b
    xor e
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
    add sp, $51
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
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    ld a, a
    xor e
    xor [hl]
    or e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    xor e
    and h
    and b
    or c
    xor l
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
    xor h
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    adc h
    add b
    sub c
    sub e
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    and h
    xor e
    xor e
    ld a, a
    add c
    add b
    adc e
    adc e
    sub d
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld c, a
    or h
    or d
    and h
    and l
    or h
    xor e
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h

Call_067_435d:
    sub e
    add h
    ld a, a
    ld sp, hl
    or $7f
    xor b
    or d
    ld a, a
    xor [hl]
    or h
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    and b
    cp b
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
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
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
    or e
    and a
    and h
    xor b
    or c
    ld d, c
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
    ld c, a
    or e
    and a
    and h
    or c
    and h
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
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    db $f4
    ld c, a
    and b
    or d
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
    add sp, $51
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
    and b
    or c
    and h
    ld c, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor b
    xor l
    ld d, l
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $57
    nop
    add a
    and h
    or c
    and h
    ld [hl], l
    ld d, c
    adc b
    or e
    call nc, $ac7f
    cp b
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    rst $20
    ld c, a
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
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    and d
    xor [hl]
    xor h
    xor a
    and b
    xor l
    cp b
    add sp, $51
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
    ld c, a
    or d
    xor h
    and b
    xor e
    xor e
    ld a, a
    and [hl]
    xor b
    and l
    or e
    add sp, $57
    nop
    ld d, d
    call nc, Call_067_547f
    add [hl]
    add h
    add b
    sub c
    ld c, a
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    adc h
    add b
    adc a
    rst $20
    ld d, a
    nop
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or h
    or d
    and h
    and l
    or h
    xor e
    ld a, a
    and b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and b
    and e
    and e
    ld a, a
    add d
    add b
    sub c
    add e
    sub d
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    or h
    and d
    xor d
    ld a, a
    xor [hl]
    xor l
    ld c, a
    cp b
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
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    adc b
    or e
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
    and h
    xor l
    xor c
    xor [hl]
    cp b
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    add l
    xor b
    xor l
    and h
    add sp, $7f
    add d
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
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    xor d
    and h
    add sp, $57
    nop
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    add b
    add c
    add sp, $51
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld a, a
    or [hl]
    and b
    or d
    or e
    and h
    add sp, $4f
    add b
    ld a, a
    or [hl]
    xor b
    xor h
    xor a
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
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
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
    or [hl]
    and a
    and b
    or e
    ld c, a
    adc b
    jp nc, $b27f

    and b
    cp b
    xor b
    xor l
    and [hl]
    and $51
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    adc b
    ld a, a
    or e
    xor [hl]
    xor [hl]
    db $f4
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    and b
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
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
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    xor h
    and h
    and b
    xor l
    rst $20
    ld d, a
    nop
    add a
    or h
    xor h
    xor a
    and a
    add sp, $7f
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    xor a
    xor a
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    and $57
    nop
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
    adc h
    cp b
    ld a, a
    xor l
    and b
    xor h
    and h
    call nc, $e67f
    and $e6
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
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    call nc, $a67f
    or c
    and h
    and b
    or e
    db $e3
    ld d, l
    and h
    or d
    or e
    ld a, a
    ld d, h
    adc h
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
    add sp, $57
    nop
    add a
    or h
    xor h
    xor a
    and a
    add sp, $7f
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
    ld c, a
    or [hl]
    and b
    or d
    or e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, [hl]
    ld d, c
    adc h
    cp b
    ld a, a
    xor l
    and b
    xor h
    and h
    call nc, $e67f
    and $e6
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
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    call nc, $a67f
    or c
    and h
    and b
    or e
    db $e3
    ld d, l
    and h
    or d
    or e
    ld a, a
    ld d, h
    adc h
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
    add sp, $57
    nop
    add e
    xor b
    and e
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
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    and $51
    add a
    and h
    pop de
    xor e
    ld a, a
    xor a
    or h
    or e
    ld a, a
    and b
    ld a, a
    adc h
    add b
    adc a
    ld a, a
    xor [hl]
    and l
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    ld d, h
    add [hl]
    add h
    add b
    sub c
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
    db $d3
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld d, l
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor l
    add sp, $57
    nop
    adc h
    sub c
    add sp, $54
    adc h
    adc [hl]
    adc l
    call nc, $a77f
    xor [hl]
    or h
    or d
    and h
    ld c, a
    xor b
    or d
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and l
    and b
    or c
    or e
    and a
    and h
    or c
    ld d, l
    or h
    xor a
    ld a, a
    and b
    and a
    and h
    and b
    and e
    add sp, $57
    nop
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
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    or c
    xor [hl]
    and b
    and e
    add sp, $51
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
    add sp, $4f
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    and b
    ld a, a
    xor h
    and h
    or d
    or d
    rst $20
    ld a, a
    adc b
    ld d, c
    xor h
    or h
    or d
    or e
    ld a, a
    or e
    and b
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
    ld c, a
    and b
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
    add sp, $57
    nop
    add b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    ld c, a
    and a
    and b
    and e
    ld a, a
    and b
    xor l
    ld a, a
    xor b
    or e
    and h
    xor h
    add sp, $51
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
    call nc, $8c4f
    sbc b
    sub d
    sub e
    adc b
    add d
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
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
    xor b
    or e
    db $f4
    ld c, a
    or d
    xor [hl]
    ld a, a
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
    xor b
    or e
    and $57
    nop
    add c
    and b
    and d
    xor d
    ld a, a
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
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $57
    nop
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
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add d
    xor b
    or e
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    add d
    or h
    or e
    and h
    db $f4
    ld c, a
    add l
    or c
    and b
    and [hl]
    or c
    and b
    xor l
    or e
    ld a, a
    add l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld d, a
    nop
    add [hl]
    sub h
    adc b
    add e
    add h
    ld a, a
    add [hl]
    add h
    adc l
    sub e
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
    dec b
    inc bc
    rla
    ld [bc], a
    ld a, [de]
    inc b
    inc bc
    dec e
    ld bc, $051a
    rlca
    ld de, $1a01
    ld b, $09
    add hl, de
    ld bc, $071a
    dec bc
    rra
    ld bc, $081a
    ld [bc], a
    ld bc, $2106
    nop
    xor [hl]
    ld b, b
    nop
    nop
    ld bc, $2107
    nop
    xor d
    ld b, b
    nop
    nop
    inc b
    ld [$001e], sp
    adc c
    ld b, c
    add hl, bc
    rla
    nop
    adc h
    ld b, c
    inc bc
    jr jr_067_4864

jr_067_4864:
    sub d
    ld b, c
    inc bc
    ld e, $00
    adc a
    ld b, c
    dec b
    cpl
    ld a, [bc]
    inc h
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    inc de
    ld b, b
    cp $06
    inc b
    ld a, [bc]
    dec hl
    inc bc
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $be
    ld b, $29
    db $10
    rra
    dec b
    ld bc, $ffff
    sub b
    nop
    ld b, [hl]
    ld b, c
    rst $38
    rst $38
    daa
    dec bc
    dec de
    dec b
    ld bc, $ffff
    add b
    nop
    ld e, d
    ld b, c
    rst $38
    rst $38
    ld a, [hl-]
    db $10
    dec bc
    add hl, bc
    nop
    rst $38
    rst $38
    and b
    nop
    ld l, [hl]
    ld b, c
    rst $38
    rst $38
    nop
    nop
    db $fd
    inc bc
    jr jr_067_48b6

    ld c, l
    ld c, h
    ld l, [hl]

jr_067_48b6:
    ld c, h
    nop
    nop
    cp e
    ld c, b
    ld h, [hl]
    ld b, a
    ld c, h
    add a
    ld c, h
    ld d, h
    ld c, c
    sub c
    sub l
    inc b
    ld sp, $1e01
    ld c, l
    ld b, d
    ld c, l
    nop
    nop
    rst $08
    ld c, b
    ld e, $17
    ld d, $66
    ld b, a
    ld a, [hl+]
    ld d, $09
    rrca
    ld c, c
    ld sp, $0281
    add hl, bc
    db $ec
    ld c, b
    ld c, h
    ld e, d
    ld c, l
    ld d, l
    inc sp
    add c
    ld [bc], a
    nop
    inc bc
    ld c, c
    inc bc
    rst $28
    ld c, b
    nop
    rlca
    ld c, c
    sub a
    ld d, $06
    ld bc, $4917
    ld b, $02
    inc de
    ld c, c
    ld b, e
    ld sp, $0001
    nop
    dec bc
    ld c, c
    inc bc
    rrca
    ld c, c
    inc c
    add hl, de

Jump_067_4905:
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
    inc e
    inc b
    ld [hl], $03
    add b
    ld c, d
    cp e
    ld c, d
    nop
    nop
    dec hl
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    call nz, Call_067_544a
    ld c, c
    sub c
    dec e
    inc b
    ld [hl], $04
    ld hl, sp+$4a
    inc hl
    ld c, e
    nop
    nop
    ccf
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld b, a
    ld c, e
    ld d, h
    ld c, c
    sub c
    add b
    inc b
    dec [hl]
    inc bc
    ld [hl], h
    ld c, e
    and b
    ld c, e
    nop
    nop
    ld d, e
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    cp d
    ld c, e
    ld d, h
    ld c, c
    sub c
    add c
    inc b
    dec [hl]
    inc b
    ld [$0d4b], a
    ld c, h
    nop
    nop
    ld h, a
    ld c, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld hl, $544c
    ld c, c
    sub c
    ccf
    dec b
    inc h
    ld [$4daa], sp
    push de
    ld c, l
    nop
    nop
    ld a, e
    ld c, c
    ld e, $17
    rla
    ld h, [hl]
    ld b, a
    inc [hl]
    ld [hl], d
    nop
    add hl, bc
    cp e
    ld c, c
    inc [hl]
    and c
    nop
    add hl, bc
    cpl
    ld c, d
    ld a, [hl+]
    rla
    add hl, bc
    rrca
    ld c, c
    ld sp, $0283
    add hl, bc
    and h
    ld c, c
    ld c, h
    or $4d
    ld d, l
    inc sp
    add e
    ld [bc], a
    nop
    inc bc
    ld c, c
    inc bc
    and a
    ld c, c
    nop
    rlca
    ld c, c
    sub a
    rla
    ld b, $01
    rla
    ld c, c
    ld b, $02
    inc de
    ld c, c
    ld b, e
    inc h
    ld [$0000], sp
    dec bc
    ld c, c
    inc bc
    rrca
    ld c, c
    nop
    dec de
    ld c, c
    ld h, h
    push de
    ld c, l
    nop
    nop
    add hl, de
    ld bc, $06da
    inc b
    jp c, $0649

    inc bc
    ldh [rOBP1], a
    ld b, $02
    and $49
    ld b, $01
    db $ec
    ld c, c
    ld b, $00
    ld a, [c]
    ld c, c
    ld sp, $00cd
    add hl, bc
    ld h, $4a
    ld sp, $0044
    add hl, bc
    add hl, de
    ld c, d
    inc [hl]
    ld c, e
    nop
    add hl, bc
    inc c
    ld c, d
    inc [hl]
    ld c, d
    nop
    add hl, bc
    rst $38
    ld c, c
    ld e, [hl]
    inc h
    ld [$605f], sp
    dec de
    ld bc, $01da
    dec [hl]
    ld [hl], d
    nop
    sub c
    ld e, [hl]
    inc h
    dec c
    ld e, a
    ld h, b
    dec de
    ld bc, $02da
    dec [hl]
    ld [hl], d
    nop
    sub c
    ld e, [hl]
    inc h
    ld c, $5f
    ld h, b
    dec de
    ld bc, $03da
    dec [hl]
    ld [hl], d
    nop
    sub c
    ld e, [hl]
    inc h
    ld de, $605f
    dec de
    ld bc, $04da
    dec [hl]
    ld [hl], d
    nop
    sub c
    ld e, [hl]
    inc h
    ld [de], a
    ld e, a
    ld h, b
    dec [hl]
    ld [hl], d
    nop
    sub c
    ld c, h
    jr c, jr_067_4a80

    ld d, h
    ld c, c
    sub c
    ld c, e
    inc b
    jr nc, jr_067_4a3f

    db $76
    ld c, [hl]
    sbc b
    ld c, [hl]
    nop
    nop

jr_067_4a3f:
    ld b, c
    ld c, d
    ld h, [hl]
    ld b, a
    ld c, h
    cp h
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    dec hl
    inc b
    ld [$4a73], sp
    ld sp, $0547
    add hl, bc
    ld l, l
    ld c, d
    ld a, a
    inc c
    nop
    ld c, h
    ld [$544e], a
    ld c, c
    ld h, h
    ld b, $4f
    nop
    nop
    ld e, [hl]
    ld b, c
    ld [bc], a
    ld e, a
    ld h, b
    inc sp
    ld b, a
    dec b
    ld c, c
    sub c
    ld c, h
    rrca
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld d, [hl]
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld d, e
    sub h
    ld c, a
    jp nz, $9b01

    dec bc

jr_067_4a80:
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
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and e
    and b
    or e
    and b
    ld a, a
    xor [hl]
    and l
    and l
    ld d, c
    xor h
    cp b
    ld a, a
    or c
    and b
    and e
    xor b
    xor [hl]
    add sp, $7f
    adc b
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld c, a
    adc b
    jp nc, $a67f

    xor [hl]
    xor [hl]
    and e
    add sp, $57
    nop
    adc b
    ld a, a
    and [hl]
    xor b
    or l
    and h
    rst $20
    ld d, a
    nop
    adc h
    or h
    or d
    xor b
    and d
    ld a, a
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
    ld c, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    and e
    or d
    ld d, l
    xor [hl]
    and l
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc b
    jp nc, $a67f

    xor [hl]
    xor l
    xor l
    and b
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    and [hl]
    xor b
    or c
    xor e
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    adc b
    jp nc, $a77f

    xor [hl]
    or e
    ld d, l
    or d
    or e
    or h
    and l
    and l
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
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
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    xor e
    xor [hl]
    or d
    or e
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
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    or h
    xor h
    xor b
    xor e
    xor b
    and b
    or e
    and h
    and e
    ld c, a
    xor b
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld d, l
    and [hl]
    xor b
    or c
    xor e
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld [hl], l
    ld d, a
    nop
    adc h
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
    call nc, $b64f
    and h
    and b
    xor d
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
    push de
    ld d, l
    or c
    and h
    xor e
    cp b
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and a
    xor b
    xor h
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor h
    cp b
    rst $20
    ld a, a
    sbc b
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
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
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
    xor h
    cp b
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld d, l
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
    add [hl]
    sbc b
    adc h
    and $7f
    adc h
    and h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    add sp, $7f
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    xor l
    push de
    ld c, a
    or [hl]
    xor b
    xor l
    ld [hl], l
    ld d, a
    nop
    sub e
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
    and b
    or c
    and h
    ld c, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    add sp, $7f
    adc b
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    ld d, l
    or e
    and a
    and h
    xor h
    add sp, $57
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
    or h
    or d
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
    adc l
    xor [hl]
    or e
    ld a, a
    and l
    and b
    or d
    or e
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
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
    and l
    xor e
    and h
    and h
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
    add sp, $51
    sub e
    or c
    cp b
    ld a, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    adc d
    sub h
    sub c
    sub e
    call nc, $857f
    add b
    sub d
    sub e
    ld d, l
    add c
    add b
    adc e
    adc e
    add sp, $51
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
    and l
    xor b
    xor l
    and e
    ld a, a
    and b
    ld c, a
    sub [hl]
    add a
    sub e
    ld a, a
    add b
    adc a
    sub c
    adc b
    add d
    adc [hl]
    sub c
    adc l
    db $f4
    ld a, a
    adc b
    ld d, l
    or e
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc d
    sub h
    sub c
    sub e
    add sp, $51
    add a
    and h
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld c, a
    and d
    or h
    or d
    or e
    xor [hl]
    xor h
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $57
    nop
    add c
    and h
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    or c
    and b
    and d
    and h
    and l
    or h
    xor e
    ld c, a
    add c
    add b
    adc e
    adc e
    ld a, a
    and e
    and h
    or a
    or e
    and h
    or c
    xor b
    or e
    cp b
    rst $20
    ld d, a
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
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and b
    ld c, a
    xor c
    xor [hl]
    xor e
    or e
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
    and e
    and b
    cp c
    cp c
    xor e
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld d, l
    xor a
    or c
    xor b
    cp c
    and h
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
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    or c
    xor [hl]
    or [hl]
    and h
    or d
    or d
    ld c, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and l
    xor b
    and h
    and e
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    adc b
    pop de
    xor e
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    xor b
    and l
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
    add sp, $57
    nop
    add a
    or h
    and a
    and $7f
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
    ld c, a
    and a
    and b
    or l
    and h
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
    ld [hl], l
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    sub [hl]
    add h
    add h
    add e
    adc e
    add h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    xor h
    and h
    ld a, a
    ld c, a
    or e
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
    ld d, c
    add d
    xor [hl]
    xor l
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
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    ld [hl], l
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
    sbc b
    add b
    adc l
    adc h
    add b
    rst $20
    ld d, c
    adc b
    jp nc, $b27f

    xor [hl]
    ld a, a
    and c
    xor e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    or [hl]
    and b
    cp b
    db $f4
    ld c, a
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
    add sp, $57
    nop
    adc b
    jp nc, $af7f

    or c
    and b
    and d
    or e
    xor b
    and d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    and l
    xor b
    or c
    and h
    ld a, a
    and c
    or c
    and h
    and b
    or e
    and a
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc [hl]
    or [hl]
    rst $20
    ld a, a
    adc b
    ld a, a
    or d
    and d
    xor [hl]
    or c
    and d
    and a
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld c, a
    or e
    xor b
    xor a
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    xor l
    xor [hl]
    or d
    and h
    rst $20
    ld d, a
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
    adc h
    and b
    or c
    and d
    and a
    ld c, a
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
    ld a, a
    xor e
    or h
    or c
    and h
    or d
    ld d, l
    or [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    add e
    and b
    xor l
    and [hl]
    and h
    or c
    ld a, a
    xor e
    or h
    or c
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
    xor l
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    xor a
    or d
    rst $20
    ld d, a
    nop
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
    xor l
    xor b
    and [hl]
    and a
    or e
    db $e3
    ld c, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor l
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld d, l
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or [hl]
    and b
    cp b
    or d
    add sp, $51
    add c
    or h
    or e
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    xor [hl]
    or l
    and h
    or c
    and e
    xor [hl]
    ld c, a
    xor b
    or e
    db $f4
    ld a, a
    adc [hl]
    adc d
    and $57
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
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $51
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
    and [hl]
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    db $e3
    ld c, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or d
    and b
    and l
    and h
    xor e
    cp b
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    ei
    ld d, a
    nop
    nop
    inc bc
    ld hl, $0109
    ld a, [bc]
    ld c, $21
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld c, $05
    inc bc
    inc bc
    ld a, [bc]
    rrca
    nop
    ld [bc], a
    rlca
    ld bc, $7900
    ld c, d
    rra
    dec bc
    nop
    ld a, c
    ld c, d
    dec bc
    daa
    ld de, $080f
    nop
    rst $38
    rst $38
    and d
    ld [bc], a
    rra
    ld c, c
    rst $38
    rst $38
    daa
    rla
    dec bc
    ld b, $00
    rst $38
    rst $38
    and d
    inc bc
    inc sp
    ld c, c
    rst $38
    rst $38
    jr z, jr_067_4ff0

    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    and d
    inc bc
    ld b, a
    ld c, c
    rst $38
    rst $38
    jr z, jr_067_5002

    ld c, $09
    nop
    rst $38
    rst $38
    and d
    ld bc, $495b
    rst $38

jr_067_4ff0:
    rst $38
    daa
    rrca
    dec bc
    ld b, $00
    rst $38
    rst $38
    sub d
    nop
    xor a
    ld c, b
    rst $38
    rst $38
    ld a, [hl-]
    dec c
    rlca
    add hl, bc

jr_067_5002:
    nop
    rst $38
    rst $38
    add d
    ld [bc], a
    dec [hl]
    ld c, d
    rst $38
    rst $38
    dec h
    dec bc
    rlca
    rlca
    ld [bc], a
    rst $38
    rst $38
    or d
    inc bc
    ld l, a
    ld c, c
    rst $38
    rst $38
    dec hl
    ld e, $13
    ld [$ff00], sp
    rst $38
    sub d
    ld [bc], a
    jp $ff48


    rst $38
    ld b, e
    ld a, [bc]
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld c, c
    ld c, d
    rst $38
    rst $38
    ld e, l
    dec e
    ld b, $01
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [hl]
    ld c, d
    rst $38
    rst $38
    ld d, h
    inc e
    inc c
    ld bc, $ff00
    rst $38
    ld bc, $7c00
    ld c, d
    or d
    ld b, $00
    ld bc, $5105
    ld d, b
    ld sp, $0022
    add hl, bc
    ld e, h
    ld d, b
    ld [de], a
    add hl, bc
    inc b
    nop
    sub b
    ld [de], a
    add hl, bc
    inc b
    ld bc, $2c90
    inc b
    ld [hl], $13
    dec [hl]
    ld d, l
    ld h, l
    ld d, l
    nop
    nop
    ld l, l
    ld d, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [hl]
    ld d, l
    ld d, h
    ld c, c
    sub c
    add sp, $04
    ld e, $05
    ld l, d
    ld d, d
    or h
    ld d, d
    nop
    nop
    add c
    ld d, b
    ld h, [hl]
    ld b, a
    ld c, h
    jp nc, Jump_067_5452

    ld c, c
    sub c
    jp hl


    inc b
    ld e, $06
    add hl, de
    ld d, e
    ld a, [hl-]
    ld d, e
    nop
    nop
    sub l
    ld d, b
    ld e, $17
    ld e, $66
    ld b, a
    inc [hl]
    ld [hl], a
    nop
    add hl, bc
    rst $08
    ld d, b
    ld a, [hl+]
    ld e, $09
    jr c, jr_067_50f6

    ld sp, $0291
    add hl, bc
    cp b
    ld d, b
    ld c, h
    ld e, c
    ld d, e
    ld d, l
    inc sp
    sub c
    ld [bc], a
    nop
    inc l
    ld d, c
    inc bc
    cp e
    ld d, b
    nop
    jr nc, jr_067_510c

    sub a
    ld e, $06
    ld bc, $5140
    ld b, $02
    inc a
    ld d, c
    ld b, e
    ld e, $06
    nop
    nop
    inc [hl]
    ld d, c
    inc bc
    jr c, jr_067_5120

    nop
    ld b, h
    ld d, c
    ld h, h
    ld a, [hl-]
    ld d, e
    nop
    nop
    add hl, de
    rlca
    jp c, $0306

    ld [$0650], a
    ld [bc], a
    ldh a, [$50]
    ld b, $01
    or $50
    ld b, $00
    db $fc
    ld d, b
    ld sp, $00cd
    add hl, bc
    inc hl
    ld d, c
    ld sp, $0044
    add hl, bc
    ld d, $51

jr_067_50f6:
    ld sp, $0022
    add hl, bc
    add hl, bc
    ld d, c
    ld e, [hl]
    ld e, $06
    ld e, a
    ld h, b
    dec de
    rlca
    jp c, $3501

    ld [hl], a
    nop
    sub c
    ld e, [hl]
    ld e, $09

jr_067_510c:
    ld e, a
    ld h, b
    dec de
    rlca
    jp c, $3502

    ld [hl], a
    nop
    sub c
    ld e, [hl]
    ld e, $0a
    ld e, a
    ld h, b
    dec de
    rlca
    jp c, $3503

jr_067_5120:
    ld [hl], a
    nop
    sub c
    ld e, [hl]
    ld e, $0e
    ld e, a
    ld h, b
    dec [hl]
    ld [hl], a
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
    ld [$1e04], a
    rlca
    add [hl]
    ld d, e
    sub $53
    nop
    nop
    ld d, h
    ld d, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld hl, sp+$53
    ld d, h
    ld c, c
    sub c
    ld d, e
    inc b
    dec h
    ld b, $61
    ld d, h
    or b
    ld d, h
    nop
    nop
    ld l, b
    ld d, c
    ld h, [hl]
    ld b, a
    ld c, h
    db $d3
    ld d, h
    ld d, h
    ld c, c
    sub c
    sub c
    inc b
    dec [hl]
    inc d
    pop bc
    ld d, l
    inc b
    ld d, [hl]
    nop
    nop
    ld a, h
    ld d, c
    ld e, $17
    rra
    ld h, [hl]
    ld b, a
    inc [hl]
    ld a, b
    nop
    add hl, bc
    pop bc
    ld d, c
    inc [hl]
    add l
    nop
    add hl, bc
    ld e, $52
    ld a, [hl+]
    rra
    add hl, bc
    ld b, l
    ld d, d
    inc l
    inc hl
    ld [$5233], sp
    ld sp, $0293
    add hl, bc
    xor d
    ld d, c
    ld c, h
    jr @+$58

    ld d, l
    inc sp
    sub e
    ld [bc], a
    nop
    add hl, sp
    ld d, d
    inc bc
    xor l
    ld d, c
    nop
    dec a
    ld d, d
    sub a
    rra
    ld b, $01
    ld c, l
    ld d, d
    ld b, $02
    ld c, c
    ld d, d
    ld b, e
    dec [hl]
    inc d
    nop
    nop
    ld b, c
    ld d, d
    inc bc
    ld b, l
    ld d, d
    nop
    ld d, c
    ld d, d
    ld h, h
    inc b
    ld d, [hl]
    nop
    nop
    add hl, de
    ld [$06da], sp
    inc bc
    call c, $0651
    ld [bc], a
    ld [c], a
    ld d, c
    ld b, $01
    add sp, $51
    ld b, $00
    xor $51
    ld sp, $00cd
    add hl, bc
    dec d
    ld d, d
    ld sp, $0044
    add hl, bc
    ld [$3152], sp
    ld hl, $0900
    ei
    ld d, c
    ld e, [hl]
    dec [hl]
    inc d
    ld e, a
    ld h, b
    dec de
    ld [$01da], sp
    dec [hl]
    ld a, b
    nop
    sub c
    ld e, [hl]
    dec [hl]
    db $10
    ld e, a
    ld h, b
    dec de
    ld [$02da], sp
    dec [hl]
    ld a, b
    nop
    sub c
    ld e, [hl]
    dec [hl]
    ld de, $605f
    dec de
    ld [$03da], sp
    dec [hl]
    ld a, b
    nop
    sub c
    ld e, [hl]
    dec [hl]
    ld a, [de]
    ld e, a
    ld h, b
    dec [hl]
    ld a, b
    nop
    sub c
    nop
    ld d, l
    ld d, d
    sbc [hl]
    ld l, b
    ld bc, $3008
    ld d, d
    dec [hl]
    add l
    nop
    inc sp
    inc b
    ld bc, $4503
    ld d, d
    inc bc
    ld e, c
    ld d, d
    ld c, h
    ld c, e
    ld d, [hl]
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
    jr z, jr_067_5250

jr_067_5250:
    sub c
    inc c
    add hl, hl
    nop
    sub c
    inc c
    ld a, [hl+]
    nop
    sub c
    inc c
    dec hl
    nop
    sub c
    ld d, e
    ld a, e
    ld d, [hl]
    ld d, e
    and d
    ld d, [hl]
    ld d, e
    ret


    ld d, [hl]
    sbc e
    ld [$0140], sp
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    call nc, $b67f
    and a
    cp b
    ld a, a
    adc b
    ld c, a
    or d
    or e
    and b
    or c
    or e
    and h
    and e
    db $e3
    db $e3
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and a
    cp b
    ld d, c
    adc b
    pop de
    xor e
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    xor [hl]
    xor l
    ld a, a
    and d
    xor [hl]
    xor e
    db $e3
    ld c, a
    xor e
    and h
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
    rst $20
    ld d, a
    nop
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
    ld a, a
    and e
    xor [hl]
    ld c, a
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
    and $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and h
    xor e
    or d
    and h
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    and c
    and h
    or d
    xor b
    and e
    and h
    or d
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
    adc h
    add b
    sub c
    sbc b
    ld a, a
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
    add sp, $4f
    adc b
    ld a, a
    and c
    and h
    or e
    ld a, a
    or d
    and a
    and h
    call nc, $a27f
    or h
    or e
    and h
    rst $20
    ld d, a
    nop
    add a
    and h
    cp b
    rst $20
    ld a, a
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
    ld c, a
    and b
    xor l
    cp b
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
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    xor [hl]
    xor [hl]
    or c
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    rst $20
    ld a, a
    add e
    and b
    or c
    xor e
    xor b
    xor l
    and [hl]
    or d
    rst $20
    ld d, a
    nop
    adc b
    ret nc

    ld a, a
    and c
    and h
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    and b
    ld a, a
    or d
    xor b
    xor l
    and [hl]
    xor e
    and h
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
    and [hl]
    and h
    or e
    ld c, a
    or e
    and a
    xor b
    or d
    and $51
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    ld d, e
    ld a, a
    and [hl]
    or h
    cp b
    ld c, a
    xor h
    and b
    and e
    and h
    ld a, a
    and l
    or h
    xor l
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
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
    adc h
    cp b
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    call nc, $a67f
    or c
    and h
    and b
    or e
    rst $20
    ld d, a
    nop
    adc h
    cp b
    ld a, a
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    adc a
    sub d
    ld a, a
    and e
    xor b
    and e
    ld c, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    or c
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
    adc b
    or e
    call nc, $ae7f
    xor d
    and b
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor b
    xor d
    and h
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
    or e
    cp b
    xor a
    and h
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and b
    and c
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
    ld a, a

Call_067_544a:
    or e
    and a
    and h
    ld d, l
    xor h
    xor [hl]
    or d
    or e

Jump_067_5452:
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $57
    nop
    adc b
    jp nc, $a87f

    xor l
    ld a, a
    and b
    ld a, a
    or d
    xor e
    or h
    xor h
    xor a
    add sp, $51
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    xor b
    or e
    call nc, $b37f
    and a
    and h
    ld c, a

Call_067_547f:
    and [hl]
    and h
    and b
    or c
    ld a, a
    adc b
    jp nc, $b47f

    or d
    xor b
    xor l
    and [hl]
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
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    and b
    and d
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and l
    and h
    and h
    xor e
    ld c, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and b
    cp b
    add sp, $57
    nop
    adc d
    sub h
    sub c
    sub e
    call nc, $8b7f
    sub h
    sub c
    add h
    ld a, a
    add c
    add b
    adc e
    adc e
    ld c, a
    xor b
    or d
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
    and l
    xor [hl]
    or c
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
    and a
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    or e
    call nc, $ac7f
    or h
    and d
    and a
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    and h
    and l
    and l
    and h
    and d
    or e
    xor b
    or l
    and h
    ld a, a
    or e
    and a
    and b
    xor l
    ld a, a
    and b
    ld d, l
    sub h
    adc e
    sub e
    sub c
    add b
    ld a, a
    add c
    add b
    adc e
    adc e
    add sp, $57
    nop
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and e
    xor [hl]
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
    db $e3
    db $e3
    ld d, l
    xor b
    or e
    call nc, $b27f
    or h
    xor a
    and h
    or c
    db $e3
    and l
    or h
    xor l
    rst $20
    ld d, a
    nop
    adc e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    and l
    or h
    xor l
    ld c, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
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
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and b
    or e
    ld a, a
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
    and $51
    sub [hl]
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor a
    xor e
    and b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    xor h
    xor a
    ld a, a
    or e
    and a
    and h
    or c
    and h
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
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $51
    adc e
    and h
    or e
    call nc, $af7f
    xor e
    and b
    cp b
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor a
    xor e
    and b
    cp b
    and h
    and e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $a77f

    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    xor a
    xor b
    and d
    db $e3
    ld c, a
    xor l
    xor b
    and d
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
    add sp, $51
    sub [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor c
    xor [hl]
    xor b
    xor l
    ld a, a
    or h
    or d
    and $57
    nop
    adc b
    or d
    xor l
    push de
    ld a, a
    xor h
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
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or d
    or e
    ld d, l
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    and $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$51f9]
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
    ld a, a
    db $e3
    ld c, a
    adc h
    add b
    add a
    adc [hl]
    add [hl]
    add b
    adc l
    sbc b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$51f9]
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
    ld a, a
    db $e3
    ld c, a
    adc h
    add b
    add a
    adc [hl]
    add [hl]
    add b
    adc l
    sbc b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
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
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    xor a
    or c
    xor [hl]
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    ld d, c
    and e
    and h
    xor a
    and h
    xor l
    and e
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
    xor b
    or c
    ld c, a
    or e
    cp b
    xor a
    and h
    or d
    add sp, $51
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    xor b
    or c
    ld a, a
    or e
    cp b
    xor a
    and h
    or d
    ld c, a
    and e
    xor b
    and l
    and l
    and h
    or c
    db $f4
    ld a, a
    and b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    and h
    or c
    db $e3
    ld d, c
    xor e
    and h
    or l
    and h
    xor e
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
    xor e
    xor [hl]
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
    add sp, $51
    adc e
    and h
    and b
    or c
    xor l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    or e
    cp b
    xor a
    and h
    or d
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
    ld a, a
    and b
    xor l
    and e
    ld d, c
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
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $b37f
    cp b
    xor a
    and h
    add sp, $57
    nop
    nop
    dec b
    inc sp
    add hl, bc
    ld bc, $0309
    inc sp
    ld a, [bc]
    ld [bc], a
    add hl, bc
    inc bc
    inc hl
    ld de, $0903
    inc b
    rra
    ld de, $0901
    inc b
    rra
    ld [de], a
    ld [bc], a
    add hl, bc
    inc b
    nop
    inc bc
    inc bc
    dec c
    nop
    ld e, l
    ld d, d
    ld sp, $000b
    ld h, b
    ld d, d
    ld h, $10
    nop
    ld h, e
    ld d, d
    ld [$222b], sp
    rla
    ld [$ff00], sp
    rst $38
    sub d
    ld [bc], a
    ld [hl], l
    ld d, b
    rst $38
    rst $38
    dec hl
    ld [hl+], a
    inc d
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc bc
    adc c
    ld d, b
    rst $38
    rst $38
    dec hl
    dec e
    dec c
    ld b, $00
    rst $38
    rst $38
    sub d
    ld [bc], a
    ld c, b
    ld d, c
    rst $38
    rst $38
    ld a, [hl-]
    ld [hl+], a
    ld [$0008], sp
    rst $38
    rst $38
    and d
    inc b
    ld e, h
    ld d, c
    rst $38
    rst $38
    jr z, jr_067_57fa

    inc b
    ld b, $00
    rst $38
    rst $38
    and d
    ld [bc], a
    ld [hl], b
    ld d, c
    rst $38

jr_067_57fa:
    rst $38
    daa
    dec c
    rlca
    rlca
    nop
    rst $38
    rst $38
    and d
    inc bc
    ld h, c
    ld d, b
    rst $38
    rst $38
    ld e, l
    ld d, $17
    ld bc, $ff00
    rst $38
    nop
    nop
    ld h, [hl]
    ld d, d
    rst $38
    rst $38
    ld d, h
    ld [de], a
    inc de
    ld bc, $ff00
    rst $38
    ld bc, $6800
    ld d, d
    or l
    ld b, $00
    nop
    ld bc, $1804
    rlca
    xor a
    ld e, e
    db $db
    ld e, e
    nop
    nop
    jr nc, @+$5a

    ld e, $17
    jr nz, jr_067_589a

    ld b, a
    inc [hl]
    ld a, c
    nop
    add hl, bc
    ld l, d
    ld e, b
    ld a, [hl+]
    jr nz, jr_067_5847

    db $eb
    ld e, b
    ld sp, $0295
    add hl, bc
    ld d, e
    ld e, b
    ld c, h

jr_067_5847:
    di
    ld e, e
    ld d, l
    inc sp
    sub l
    ld [bc], a
    nop
    rst $18
    ld e, b
    inc bc
    ld d, [hl]
    ld e, b
    nop
    db $e3
    ld e, b
    sub a
    jr nz, jr_067_585f

    ld bc, $58f3
    ld b, $02
    rst $28

jr_067_585f:
    ld e, b
    ld b, e
    jr jr_067_586a

    nop
    nop
    rst $20
    ld e, b
    inc bc
    db $eb
    ld e, b

jr_067_586a:
    nop
    rst $30
    ld e, b
    ld h, h
    db $db
    ld e, e
    nop
    nop
    add hl, de
    add hl, bc
    jp c, $0206

    add c
    ld e, b
    ld b, $01
    add a
    ld e, b
    ld b, $00
    adc l
    ld e, b
    ld sp, $00cd
    add hl, bc
    and a
    ld e, b
    ld sp, $0044
    add hl, bc
    sbc d
    ld e, b
    ld e, [hl]
    jr jr_067_5897

    ld e, a
    ld h, b
    dec de
    add hl, bc
    jp c, $3501

jr_067_5897:
    ld a, c
    nop
    sub c

jr_067_589a:
    ld e, [hl]
    jr jr_067_58af

    ld e, a
    ld h, b
    dec de
    add hl, bc
    jp c, $3502

    ld a, c
    nop
    sub c
    ld e, [hl]
    jr jr_067_58bd

    ld e, a
    ld h, b
    dec [hl]
    ld a, c
    nop

jr_067_58af:
    ld sp, $0339
    add hl, bc
    bit 3, b
    ld sp, $0267
    add hl, bc
    jp z, SerialTransferCompleteInterrupt

    ld a, [bc]

jr_067_58bd:
    ld e, c
    sbc [hl]
    dec e
    ld bc, $0308
    ld e, c
    inc sp
    ld h, a
    ld [bc], a
    inc bc
    db $eb
    ld e, b
    sub c
    ld b, a
    ld c, h
    ld h, a
    ld e, h
    ld d, h
    sbc [hl]
    dec e
    ld bc, $0308
    ld e, c
    ld [hl-], a
    add hl, sp
    inc bc
    inc sp
    ld h, a
    ld [bc], a
    inc bc
    db $eb
    ld e, b
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
    inc c
    jr nz, jr_067_58fe

jr_067_58fe:
    sub c
    inc c
    ld hl, $9100
    inc sp
    add hl, sp
    inc bc
    inc c
    ld hl, $9100
    inc c
    ld [hl+], a
    nop
    sub c
    ld b, c
    inc b
    inc [hl]
    ld [$5cc4], sp
    db $dd
    ld e, h
    nop
    nop
    ld a, [de]
    ld e, c
    ld h, [hl]
    ld b, a
    ld c, h
    db $fc
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld d, a
    inc b
    dec h
    ld a, [bc]
    ld c, e
    ld e, d
    sub c
    ld e, d
    nop
    nop
    ld l, $59
    ld e, $17
    ld hl, $4766
    inc [hl]
    ld a, d
    nop
    add hl, bc
    ld l, [hl]
    ld e, c
    inc [hl]
    add [hl]
    nop
    add hl, bc
    or h
    ld e, c
    ld a, [hl+]
    ld hl, $eb09
    ld e, b
    ld sp, $0297
    add hl, bc
    ld d, a
    ld e, c
    ld c, h
    xor b
    ld e, d
    ld d, l
    inc sp
    sub a
    ld [bc], a
    nop
    rst $18
    ld e, b
    inc bc
    ld e, d
    ld e, c
    nop
    db $e3
    ld e, b
    sub a
    ld hl, $0106
    di
    ld e, b
    ld b, $02
    rst $28
    ld e, b
    ld b, e
    dec h
    ld a, [bc]
    nop
    nop
    rst $20
    ld e, b
    inc bc
    db $eb
    ld e, b
    nop
    rst $30
    ld e, b
    ld h, h
    sub c
    ld e, d
    nop
    nop
    add hl, de
    ld a, [bc]
    jp c, $0206

    add l
    ld e, c
    ld b, $01
    adc e
    ld e, c
    ld b, $00
    sub c
    ld e, c
    ld sp, $00cd
    add hl, bc
    xor e
    ld e, c
    ld sp, $0044
    add hl, bc
    sbc [hl]
    ld e, c
    ld e, [hl]
    dec h
    ld a, [bc]
    ld e, a
    ld h, b
    dec de
    ld a, [bc]
    jp c, $3501

    ld a, d
    nop
    sub c
    ld e, [hl]
    dec h
    inc d
    ld e, a
    ld h, b
    dec de
    ld a, [bc]
    jp c, $3502

    ld a, d
    nop
    sub c
    ld e, [hl]
    dec h
    ld d, $5f
    ld h, b
    dec [hl]
    ld a, d
    nop
    sub c
    nop
    ei
    ld e, b
    ld sp, $032f
    add hl, bc
    ret


    ld e, c
    ld sp, $0330
    add hl, bc
    jp nc, $3159

    ld sp, $0903
    db $db
    ld e, c
    sbc [hl]
    ld [bc], a
    ld bc, $e708
    ld e, c
    inc bc
    pop hl
    ld e, c
    sbc [hl]
    inc b
    ld bc, $e708
    ld e, c
    inc bc
    pop hl
    ld e, c
    sbc [hl]
    dec b
    ld bc, $e708
    ld e, c
    dec [hl]
    add [hl]
    nop
    inc bc
    db $eb
    ld e, b
    inc bc
    rst $38
    ld e, b
    ld e, b
    inc b
    dec h
    dec bc
    rst $30
    ld e, d
    ld d, l
    ld e, e
    nop
    nop
    or $59
    ld h, [hl]
    ld b, a
    ld c, h
    ld l, a
    ld e, e
    ld d, h
    ld c, c
    sub c
    ld l, d
    dec b
    inc e
    db $10
    db $ed
    ld e, [hl]
    ld sp, $005f
    nop
    ld a, [bc]
    ld e, d
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, l
    ld e, a
    ld d, h
    ld c, c
    sub c
    ldh a, [rDIV]
    ld e, $0d
    inc l
    ld e, l
    ld e, e
    ld e, l
    nop
    nop
    ld e, $5a
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [hl]
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld e, d
    dec b
    dec de
    inc de
    call c, Call_067_435d
    ld e, [hl]
    nop
    nop
    ld [hl-], a
    ld e, d
    ld h, [hl]
    ld b, a
    ld c, h
    ld h, [hl]
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld d, e
    or e
    ld e, a
    ld d, e
    call z, $9b5f
    db $10
    jr z, jr_067_5a45

    ld [bc], a

jr_067_5a45:
    ld bc, $012b
    xor [hl]
    nop
    ld b, c
    nop
    add b
    and b
    and d
    xor d
    rst $20
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
    xor h
    and h
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add b
    add [hl]
    rst $20
    ld d, c
    sub [hl]
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
    and e
    xor [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    and $57
    nop
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
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    xor b
    or e
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add b
    add [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld [hl], l
    ld d, l
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    or h
    and [hl]
    and h
    add sp, $51
    adc b
    ld a, a
    or d
    or [hl]
    and h
    and b
    or c
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    or h
    or d
    or e
    sub $a4
    ld c, a
    and c
    and h
    and h
    xor l
    ld a, a
    rst $30
    db $fc
    ld a, a
    and l
    and h
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and l
    xor b
    or d
    and a
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    adc b
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and b
    xor l
    cp b
    xor h
    xor [hl]
    or c
    and h
    add sp, $51
    adc b
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    adc b
    ld a, a
    and e
    or c
    xor [hl]
    xor a
    add sp, $51
    sub e
    and a
    and b
    or e
    call nc, $ac7f
    cp b
    ld c, a
    or c
    and h
    xor e
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    and a
    xor b
    xor a
    ld d, l
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
    add sp, $57
    nop
    add a
    xor h
    xor h
    xor h
    xor h
    ld [hl], l
    ld a, a
    ld c, a
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
    xor b
    and [hl]
    and a
    or e
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    call nc, $f77f
    or $f6
    ld a, a
    or [hl]
    xor b
    xor l
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    rst $30
    or $f7
    ld a, a
    xor e
    xor [hl]
    or d
    or d
    and h
    or d
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
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
    ld a, a
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
    and $57
    nop
    sub [hl]
    and a
    and h
    or [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and a
    xor [hl]
    or e
    ld c, a
    or d
    or e
    or h
    and l
    and l
    add sp, $57
    nop
    add b
    sub c
    sub e
    adc b
    add d
    sub h
    adc l
    adc [hl]
    db $f4
    ld a, a
    sbc c
    add b
    adc a
    add e
    adc [hl]
    sub d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    adc h
    adc [hl]
    adc e
    sub e
    sub c
    add h
    sub d
    ld a, a
    and b
    or c
    and h
    ld d, c
    or e
    and a
    and h
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld a, a
    xor e
    and h
    and [hl]
    and h
    xor l
    and e
    db $e3
    ld c, a
    and b
    or c
    cp b
    ld a, a
    and c
    xor b
    or c
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    ld d, l
    and c
    xor b
    or c
    and e
    or d
    db $f4
    ld a, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    adc b
    ld a, a
    and h
    or l
    and h
    or c
    ld c, a
    and c
    and h
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    adc [hl]
    and a
    ld a, a
    cp b
    and h
    and b
    and a
    db $f4
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and [hl]
    xor [hl]
    add sp, $7f
    adc b
    or e
    call nc, $b37f
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor b
    and l
    or e
    ld d, c
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
    and [hl]
    xor b
    or l
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
    nop
    adc b
    jp nc, $a67f

    xor [hl]
    xor l
    xor l
    and b
    ld a, a
    or [hl]
    xor b
    xor l
    db $f4
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or d
    or h
    or c
    and h
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
    sub e
    and a
    and b
    or e
    call nc, $a07f
    ld c, a
    or d
    and a
    xor [hl]
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    or d
    ld [hl], l
    ld d, a
    nop
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
    and a
    and b
    or l
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or l
    xor b
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld d, l
    xor [hl]
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or d
    xor b
    and e
    and h
    add sp, $57
    nop
    adc b
    pop de
    xor e
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
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and a
    and b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    xor l
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
    rst $20
    ld d, a
    nop
    adc [hl]
    xor [hl]
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
    and b
    or c
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    xor e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    and b
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
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    or d
    ld d, c
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or h
    or d
    or h
    and b
    xor e
    db $f4
    ld a, a
    xor b
    or e
    call nc, $ac4f
    xor [hl]
    or c
    and h
    ld a, a
    or l
    and b
    xor e
    or h
    and b
    and c
    xor e
    and h
    add sp, $51
    sub [hl]
    and a
    and b
    or e
    and $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and h
    and b
    xor l
    ld c, a
    or e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    or e
    or c
    or h
    and h
    and $57
    nop
    adc b
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
    cp b
    xor [hl]
    or h
    db $d3
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
    add sp, $51
    adc b
    jp nc, $a67f

    xor [hl]
    xor [hl]
    and e
    ld a, a
    and b
    or e
    ld a, a
    ld d, h
    db $e3
    ld c, a
    adc h
    adc [hl]
    adc l
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and h
    and h
    ld d, l
    or e
    and a
    and b
    or e
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
    add sp, $57
    nop
    sub e
    and d
    and a
    rst $20
    ld a, a
    adc b
    or e
    call nc, $a07f
    ld a, a
    or e
    xor [hl]
    or e
    and b
    xor e
    ld c, a
    xor e
    xor [hl]
    or d
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    and b
    or c
    or e
    add sp, $57
    nop
    sub [hl]
    xor [hl]
    or [hl]
    add sp, $7f
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
    xor e
    xor [hl]
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
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
    or e
    xor [hl]
    or h
    and [hl]
    and a
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
    add h
    add d
    sub c
    sub h
    sub e
    add h
    add b
    adc d
    ld a, a
    add [hl]
    sbc b
    adc h
    call nc, $8c51
    adc [hl]
    sub c
    sub e
    sbc b
    ld a, a
    xor b
    or d
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    xor b
    xor l
    and [hl]
    and $51
    add a
    and h
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld a, a
    and a
    and b
    xor h
    xor h
    and h
    or c
    and h
    and e
    ld c, a
    xor h
    and h
    add sp, $57
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
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    add [hl]
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
    or d
    ld a, a
    or d
    and h
    and h
    xor d
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    or d
    ld d, l
    xor b
    xor l
    or d
    or e
    xor b
    xor l
    and d
    or e
    xor b
    or l
    and h
    xor e
    cp b
    add sp, $57
    nop
    adc l
    xor [hl]
    xor a
    and h
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld c, a
    and e
    xor [hl]
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    and c
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
    ld d, l
    xor h
    and b
    xor l
    cp b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or d
    add sp, $51
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
    and b
    ld a, a
    xor e
    xor [hl]
    or e
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
    or [hl]
    and a
    and b
    or e
    ld a, a
    adc b
    ld a, a
    and b
    xor h
    ld d, l
    or e
    xor [hl]
    and e
    and b
    cp b
    db $e3
    db $e3
    and b
    xor l
    ld a, a
    and h
    xor e
    xor b
    or e
    and h
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$4ffa]
    adc b
    add d
    add h
    ld a, a
    adc a
    add b
    sub e
    add a
    ld a, a
    add b
    add a
    add h
    add b
    add e
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$51fa]
    adc h
    add b
    add a
    adc [hl]
    add [hl]
    add b
    adc l
    sbc b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    db $e3
    ld c, a
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
    ld d, a
    nop
    nop
    ld bc, $3807
    ld bc, $3d03
    nop
    inc bc
    rlca
    dec [hl]
    nop
    ld a, [hl-]
    ld e, d
    ld a, [bc]
    ld b, $00
    dec a
    ld e, d
    ld b, $29
    rlca
    ld c, b
    ld e, d
    dec bc
    ld a, [hl-]
    ld [de], a
    ld [de], a
    ld [$ff00], sp
    rst $38
    and d
    ld bc, $5922
    rst $38
    rst $38
    ld a, [hl-]
    rrca
    jr @+$08

    nop
    rst $38
    rst $38
    and d
    ld bc, $59ea
    rst $38
    rst $38
    daa
    add hl, bc
    dec c
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc bc
    ld c, $59
    rst $38
    rst $38
    dec hl
    ld [de], a
    ld hl, $0008
    rst $38
    rst $38
    and d
    inc bc
    ld [de], a
    ld e, d
    rst $38
    rst $38
    daa
    inc c
    dec h
    ld b, $00
    rst $38
    rst $38
    and d
    ld [bc], a
    inc h
    ld e, b
    rst $38
    rst $38
    inc hl
    ld [$0935], sp
    nop
    rst $38
    rst $38
    add d
    dec b
    ld h, $5a
    rst $38
    rst $38
    inc h
    dec c
    ld [hl], $07
    nop
    rst $38
    rst $38
    add d
    dec b
    cp $59
    rst $38
    rst $38
    ld e, l
    rlca
    inc l
    ld bc, $ff00
    rst $38
    nop
    nop
    ld b, b
    ld e, d
    rst $38
    rst $38
    ld d, h
    ld a, [bc]
    ld hl, $0001
    rst $38
    rst $38
    ld bc, $4200
    ld e, d
    or [hl]
    ld b, $54
    add hl, bc
    ld [hl-], a
    ld bc, $ff00
    rst $38
    ld bc, $4400
    ld e, d
    or a
    ld b, $54
    ld c, $36
    ld bc, $ff00
    rst $38
    ld bc, $4600
    ld e, d
    cp l
    rlca
    nop
    nop
    xor e
    inc b
    ld [hl-], a
    ld [$659c], sp
    rst $10
    ld h, l
    nop
    nop
    xor l
    ld h, b
    ld e, $17
    ld [hl+], a
    ld h, [hl]
    ld b, a
    ld a, [hl+]
    ld [hl+], a
    add hl, bc
    db $e4
    ld h, b
    ld sp, $0299
    add hl, bc
    call $0f60
    sub l
    nop
    ld c, h
    ld [c], a
    ld h, l
    ld d, h
    inc sp
    sbc c
    ld [bc], a
    nop
    dec de
    ld h, c
    inc bc
    ret nc

    ld h, b
    nop
    rra
    ld h, c
    sub a
    ld [hl+], a
    ld b, $01
    cpl
    ld h, c
    ld b, $02
    dec hl
    ld h, c
    ld b, e
    ld [hl-], a
    ld [$0000], sp
    inc hl
    ld h, c
    inc bc
    daa
    ld h, c
    inc e
    ld a, [de]
    rlca
    ld bc, $6127
    dec hl
    ld bc, $0c09
    ld h, c
    dec hl
    inc b
    add hl, bc
    ld [de], a
    ld h, c
    ld sp, $026a
    ld [$6127], sp
    nop
    scf
    ld h, c
    sbc [hl]
    ld a, $01
    ld [$6118], sp
    ld [hl-], a
    ld l, d
    ld [bc], a
    rrca
    sub l
    nop
    inc bc
    daa
    ld h, c
    ld c, h
    inc [hl]
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, h
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    inc bc
    dec sp
    ld h, c
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
    inc c
    jr nz, jr_067_613a

jr_067_613a:
    sub c
    inc c
    ld hl, $9100
    inc sp
    ld a, [hl-]
    inc bc
    inc c
    ld hl, $9100
    inc c
    ld [hl+], a
    nop
    sub c
    ld a, [hl+]
    dec b
    inc l
    rlca
    and c
    ld h, d
    rst $28
    ld h, d
    nop
    nop
    ld d, [hl]
    ld h, c
    ld h, [hl]
    ld b, a
    ld c, h
    ld bc, $5463
    ld c, c
    sub c
    dec hl
    dec b
    inc l
    ld [$633d], sp
    sub d
    ld h, e
    nop
    nop
    ld l, d
    ld h, c
    ld h, [hl]
    ld b, a
    ld c, h
    or c
    ld h, e
    ld d, h
    ld c, c
    sub c
    inc l
    dec b
    inc l
    inc d
    db $fd
    ld h, e
    jr jr_067_61de

    nop
    nop
    ld a, [hl]
    ld h, c
    ld e, $17
    inc hl
    ld h, [hl]
    ld b, a
    inc [hl]
    ld a, e
    nop
    add hl, bc
    cp b
    ld h, c
    ld a, [hl+]
    inc hl
    add hl, bc
    daa
    ld h, c
    ld sp, $029b
    add hl, bc
    and c
    ld h, c
    ld c, h
    inc [hl]
    ld h, h
    ld d, l
    inc sp
    sbc e
    ld [bc], a
    nop
    dec de
    ld h, c
    inc bc
    and h
    ld h, c
    nop
    rra
    ld h, c
    sub a
    inc hl
    ld b, $01
    cpl
    ld h, c
    ld b, $02
    dec hl
    ld h, c
    ld b, e
    inc l
    add hl, bc
    nop
    nop
    inc hl
    ld h, c
    inc bc
    daa
    ld h, c
    nop
    inc sp
    ld h, c
    ld h, h
    jr @+$66

    nop
    nop
    add hl, de
    inc c
    jp c, $0206

    rst $08
    ld h, c
    ld b, $01
    push de
    ld h, c
    ld b, $00
    db $db
    ld h, c
    ld sp, $00cd
    add hl, bc
    push af
    ld h, c
    ld sp, $0044
    add hl, bc
    add sp, $61
    ld e, [hl]
    inc l
    inc d

jr_067_61de:
    ld e, a
    ld h, b
    dec de
    inc c
    jp c, $3501

    ld a, e
    nop
    sub c
    ld e, [hl]
    inc l
    add hl, bc
    ld e, a
    ld h, b
    dec de
    inc c
    jp c, $3502

    ld a, e
    nop
    sub c
    ld e, [hl]
    inc l
    inc de
    ld e, a
    ld h, b
    dec [hl]
    ld a, e
    nop
    ld sp, $033a
    add hl, bc
    add hl, de
    ld h, d
    ld sp, $0268
    add hl, bc
    jr jr_067_626b

    nop
    ld b, [hl]
    ld h, c
    sbc [hl]
    inc e
    ld bc, $3f08
    ld h, c
    inc sp
    ld l, b
    ld [bc], a
    inc bc
    daa
    ld h, c
    sub c
    ld b, a
    ld c, h
    inc l
    ld h, l
    ld d, h
    sbc [hl]
    inc e
    ld bc, $3f08
    ld h, c
    ld [hl-], a
    ld a, [hl-]
    inc bc
    inc sp
    ld l, b
    ld [bc], a
    inc bc
    daa
    ld h, c
    dec l
    dec b
    inc l
    ld a, [bc]
    ld a, d
    ld h, h
    sub $64
    nop
    nop
    add hl, sp
    ld h, d
    ld h, [hl]
    ld b, a
    ld c, h
    pop af
    ld h, h
    ld d, h
    ld c, c
    sub c
    ld c, a
    dec b
    dec de
    ld [$66cb], sp
    or $66
    nop
    nop
    ld c, l
    ld h, d
    ld h, [hl]
    ld b, a
    ld c, h
    dec c
    ld h, a
    ld d, h
    ld c, c
    sub c
    ld h, c
    dec b
    inc e
    rlca
    ld l, a
    ld h, a
    jp nz, $0067

    nop
    ld h, c
    ld h, d
    ld h, [hl]
    ld b, a
    ld c, h
    pop de
    ld h, a
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a

jr_067_626b:
    ld sp, $05c3
    add hl, bc
    add l
    ld h, d
    ld c, h
    ld a, a
    ld l, b
    ld d, h
    ld c, c
    ld h, h
    sbc c
    ld l, b
    nop
    nop
    ld e, [hl]
    ld [hl], $16
    ld e, a
    ld h, b
    inc sp
    jp Jump_067_4905


    sub c
    ld c, h
    cp e
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    jr nc, jr_067_62f6

    ld d, h
    ld c, c
    sub c
    ld d, e
    cp $68
    sbc e
    inc c
    inc h
    ld bc, $0127
    ld b, c
    ld bc, $010f
    xor a
    nop
    ld a, $00
    add c
    and h
    ld a, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
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
    or c
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
    and b
    xor b
    or d
    and h
    and e
    ld a, a
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    xor e
    cp b
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    ld a, a

jr_067_62f6:
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or e
    and a
    and b
    or e
    rst $20
    ld d, a
    nop
    adc b
    pop de
    xor e
    ld a, a
    and a
    and h
    and b
    and e
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    call nc, $887f
    add d
    add h
    ld d, c
    adc a
    add b
    sub e
    add a
    ld a, a
    and b
    xor l
    and e
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
    add sp, $57
    nop
    sbc b
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or d
    xor a
    or h
    xor l
    xor d
    cp b
    rst $20
    ld c, a
    add c
    or h
    or e
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
    or [hl]
    and a
    and b
    or e
    and $51
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
    or e
    xor [hl]
    ld c, a
    or d
    and a
    and h
    and h
    or c
    ld a, a
    or d
    xor a
    or h
    xor l
    xor d
    xor b
    xor l
    and h
    or d
    or d
    db $f4
    ld d, l
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    xor h
    and b
    xor l
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
    xor l
    push de
    ld c, a
    or d
    xor a
    or h
    xor l
    xor d
    cp b
    ld a, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    add c
    xor [hl]
    cp b
    db $f4
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld c, a
    add a
    adc a
    ld a, a
    sub h
    adc a
    rst $20
    ld a, a
    adc h
    xor h
    xor h
    xor h
    db $f4
    ld a, a
    cp b
    or h
    xor h
    rst $20
    ld d, c
    adc b
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    and e
    or c
    xor b
    xor l
    xor d
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
    call nc, $51e7
    adc b
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and a
    and h
    xor e
    xor a
    ld a, a
    xor b
    or e
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
    or c
    and h
    ld c, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor a
    and b
    and d
    xor d
    and h
    and e
    rst $20
    ld d, a
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
    adc b
    jp nc, $b37f

    and a
    and h
    ld c, a
    and c
    xor b
    and [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld c, a
    and b
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
    db $f4
    ld a, a
    or d
    and h
    and h
    and $51
    sub d
    xor [hl]
    db $f4
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor a
    xor e
    xor [hl]
    or [hl]
    ld c, a
    and b
    and a
    and h
    and b
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and d
    xor e
    xor b
    xor h
    and c
    ld c, a
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    and $51
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
    cp b
    db $d3
    and h
    ld c, a
    or e
    and a
    and h
    or c
    and h
    add sp, $51
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
    ld a, a
    adc b
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $51
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
    cp b
    db $d3
    and h
    ld c, a
    or e
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    adc e
    xor [hl]
    or d
    or d
    and h
    or d
    ld [hl], l
    ld c, a
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
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
    and c
    and h
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
    ld c, a
    and h
    or l
    and h
    or c
    ld a, a
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
    xor h
    and h
    ld d, c
    or [hl]
    and b
    or d
    ld a, a
    and e
    xor b
    or d
    and d
    xor [hl]
    or l
    and h
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
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
    and b
    ld a, a
    or [hl]
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    rst $20
    ld d, c
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
    ld d, c
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    xor l
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
    ld c, a
    db $e3
    db $e3
    xor b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    and [hl]
    xor b
    and l
    or e
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
    xor l
    push de
    ld a, a
    or e
    and b
    xor d
    and h
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or [hl]
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    xor h
    and h
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
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
    ld c, a
    and a
    and h
    or c
    and h
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    add sp, $51
    add c
    and h
    and a
    xor [hl]
    xor e
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and l
    or c
    or h
    xor b
    or e
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    xor e
    and b
    and c
    xor [hl]
    or c
    rst $20
    ld d, a
    nop
    sub [hl]
    and b
    and b
    and b
    and b
    or c
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
    and d
    and b
    xor e
    xor e
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    and h
    or a
    or e
    or c
    and h
    xor h
    and h
    ld a, a
    xor h
    and h
    and b
    or d
    or h
    or c
    and h
    or d
    add sp, $51
    adc b
    ld a, a
    xor h
    or h
    or d
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    and a
    xor b
    xor e
    xor e
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    xor b
    xor l
    ld d, l
    or d
    xor [hl]
    xor e
    xor b
    or e
    or h
    and e
    and h
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
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld d, l
    adc b
    ld a, a
    and c
    or c
    and h
    and b
    xor d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor e
    or h
    xor l
    and d
    and a
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    and a
    and b
    and e
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
    ld c, a
    or c
    and h
    or d
    or e
    ld a, a
    and b
    or e
    ld a, a
    xor e
    or h
    xor l
    and d
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    ld d, c
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and h
    db $d3
    and h
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    rst $20
    ld d, c
    sub [hl]
    and h
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
    or e
    or c
    and b
    xor b
    xor l
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
    or c
    ld c, a
    or e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or c
    and b
    xor b
    or d
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    or [hl]
    xor [hl]
    xor l
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
    add sp, $57
    nop
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or c
    and b
    xor b
    or d
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
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
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and d
    and b
    or c
    and h
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    and c
    xor [hl]
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or d
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    ld d, l
    or e
    xor [hl]
    or h
    and [hl]
    and a
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
    or d
    add sp, $57
    nop
    sub [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or d
    or e
    or c
    and b
    or e
    and h
    and [hl]
    cp b
    and $51
    adc b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and l
    xor [hl]
    xor [hl]
    xor e
    xor b
    or d
    and a
    ld a, a
    or e
    xor [hl]
    ld c, a
    or h
    or d
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld d, l
    xor b
    xor l
    and e
    xor b
    or d
    and d
    or c
    xor b
    xor h
    xor b
    xor l
    and b
    or e
    and h
    xor e
    cp b
    add sp, $57
    nop
    add l
    xor b
    xor l
    and h
    add sp, $7f
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $57
    nop
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor [hl]
    or l
    and h
    or c
    xor e
    cp b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    db $e3
    ld d, l
    and l
    or h
    xor e
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
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
    or [hl]
    xor b
    xor l
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    adc b
    ld a, a
    and b
    xor e
    or d
    xor [hl]
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
    ld d, l
    or e
    xor [hl]
    ld a, a
    and a
    and b
    or c
    xor h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc b
    jp nc, $b17f

    and h
    and b
    xor e
    xor e
    cp b
    db $f4
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
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
    xor l
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    ld c, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor a
    or c
    xor [hl]
    or l
    and h
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld d, l
    or e
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
    xor e
    xor e
    cp b
    ld a, a
    and b
    xor h
    and $57
    nop
    adc b
    jp nc, $b17f

    and h
    and b
    xor e
    xor e
    cp b
    db $f4
    ld a, a
    or c
    and h
    and b
    xor e
    xor e
    cp b
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    and c
    and h
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
    xor l
    and h
    or l
    and h
    or c
    db $f4
    ld a, a
    and h
    or l
    and h
    or c
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld c, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld [hl], l
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$4ffb]
    adc h
    adc [hl]
    sub h
    adc l
    sub e
    add b
    adc b
    adc l
    ld a, a
    sub c
    add e
    add sp, $7f
    add b
    add a
    add h
    add b
    add e
    ld d, a
    nop
    nop
    ld bc, $0405
    ld bc, $4f03
    nop
    ld [bc], a
    dec b
    dec c
    nop
    sub c
    ld h, d
    ld d, b
    dec c
    rlca
    sbc [hl]
    ld h, d
    dec c
    dec l
    dec d
    db $10
    add hl, bc
    nop
    rst $38
    rst $38
    or d
    ld bc, $614a
    rst $38
    rst $38
    dec l
    ld a, [bc]
    add hl, bc
    ld [$ff00], sp
    rst $38
    or d
    ld [bc], a
    ld e, [hl]
    ld h, c
    rst $38
    rst $38
    dec l
    inc h
    ld a, [bc]
    ld [$ff00], sp
    rst $38
    or d
    ld [bc], a
    ld [hl], d
    ld h, c
    rst $38
    rst $38
    dec l
    ld d, [hl]
    dec d
    ld [$ff00], sp
    rst $38
    or d
    ld bc, $622d
    rst $38
    rst $38
    ld b, c
    inc h
    ld [$0009], sp
    rst $38
    rst $38
    or d
    ld [bc], a
    and c
    ld h, b
    rst $38
    rst $38
    inc hl
    rrca
    rlca
    ld [$ff00], sp
    rst $38
    add d
    ld bc, $6241
    rst $38
    rst $38
    inc h
    ld a, [bc]
    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    ld d, l
    ld h, d
    rst $38
    rst $38
    ld e, l
    ld d, d
    dec d
    ld bc, $ff00
    rst $38
    nop
    nop
    sub h
    ld h, d
    rst $38
    rst $38
    ld d, h
    ld b, a
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $9600
    ld h, d
    cp b
    ld b, $54
    ld b, a
    inc c
    ld bc, $ff00
    rst $38
    ld bc, $9800
    ld h, d
    cp c
    ld b, $54
    scf
    ld de, $0001
    rst $38
    rst $38
    ld bc, $9a00
    ld h, d
    cp d
    ld b, $54
    dec h
    ld b, $01
    nop
    rst $38
    rst $38
    ld bc, $9c00
    ld h, d
    cp e
    ld b, $27
    ld a, [hl+]
    ld c, $09
    nop
    rst $38
    rst $38
    and b
    ld [bc], a
    ld l, c
    ld h, d
    rst $38
    rst $38
    nop
    ld bc, $de01
    ld l, c
    ld sp, $00d7
    add hl, bc
    db $fc
    ld l, c
    ld a, d
    ld b, $06
    ld a, d
    ld a, d
    ld [$7a06], sp
    ld a, d
    ld a, [bc]
    ld b, $7a
    ld a, d
    inc c
    ld [$7a7a], sp
    inc b
    ld [$7a7a], sp
    ld a, [bc]
    ld a, [bc]
    ld a, d
    sub b
    di
    inc bc
    daa
    inc c
    ld l, a
    ld l, e
    adc [hl]
    ld l, e
    nop
    nop
    add hl, bc
    ld l, d
    ld h, [hl]
    ld b, a
    ld c, h
    xor l
    ld l, e
    ld d, h
    ld c, c
    sub c
    sub h
    dec b
    ld h, $01
    ld a, e
    ld l, d
    xor l
    ld l, d
    nop
    nop
    dec e
    ld l, d
    ld h, [hl]
    ld b, a
    ld c, h
    or h
    ld l, d
    ld d, h
    ld c, c
    sub c
    and c
    dec b
    ld h, $0e
    add hl, de
    ld l, h
    ld h, [hl]
    ld l, h
    nop
    nop
    ld sp, $666a
    ld b, a
    ld c, h
    ld a, [hl]
    ld l, h
    ld d, h
    ld c, c
    sub c
    and d
    dec b
    ld h, $0f
    ld a, [$2d6a]
    ld l, e
    nop
    nop
    ld b, l
    ld l, d
    ld h, [hl]
    ld b, a
    ld c, h
    dec sp
    ld l, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00d7
    add hl, bc
    ld e, e
    ld l, d
    ld c, h
    xor a
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc h
    ld l, l
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00d7
    add hl, bc
    ld l, a
    ld l, d
    ld c, h
    ld b, l
    ld l, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, l
    ld l, l
    ld d, h
    ld c, c
    sub c
    ld d, e
    cp h
    ld l, l
    ld d, e
    push hl
    ld l, l
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
    and h
    or l
    and h
    or c
    ld a, a
    and [hl]
    xor [hl]
    xor l
    and h
    ld c, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld d, l
    or d
    and h
    and b
    ld a, a
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    and $57
    nop
    add [hl]
    xor e
    or h
    and c
    ld [hl], l
    ld d, a
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
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld c, a
    or e
    or h
    or c
    xor l
    or d
    ld a, a
    and c
    xor e
    and b
    and d
    xor d
    add sp, $7f
    adc b
    or e
    ld d, c
    and l
    and h
    and h
    xor e
    or d
    ld a, a
    xor e
    xor b
    xor d
    and h
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
    or [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or h
    xor a
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
    ld c, a
    adc c
    or h
    or d
    or e
    ld [hl], l
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld [hl], l
    ld d, c
    and l
    and b
    or c
    or e
    and a
    and h
    or c
    ld [hl], l
    ld a, a
    or e
    xor [hl]
    ld [hl], l
    ld c, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld [hl], l
    ld d, a
    nop
    adc b
    jp nc, $a37f

    or c
    xor [hl]
    or [hl]
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    adc b
    ld [hl], l
    ld a, a
    and b
    or d
    xor d
    and h
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    db $e3
    ld c, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    ld a, a
    or e
    xor [hl]
    ld d, l
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld [hl], l
    ld a, a
    add [hl]
    and b
    or d
    xor a
    ld [hl], l
    ld d, a
    nop
    adc b
    jp nc, $a37f

    xor b
    or d
    and [hl]
    or h
    or d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, a
    or [hl]
    xor b
    xor h
    xor a
    cp b
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
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
    and b
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
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    ld c, a
    and c
    and h
    or e
    or [hl]
    and h
    and h
    xor l
    ld a, a
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld d, c
    and b
    xor l
    and e
    ld a, a
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld a, a
    adc b
    sub d
    db $e3
    ld c, a
    adc e
    add b
    adc l
    add e
    sub d
    ld [hl], l
    ld d, c
    sub d
    and a
    and h
    and h
    or d
    and a
    db $f4
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
    xor h
    and b
    xor l
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
    ld d, c
    xor b
    or d
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    xor h
    xor a
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
    and $4f
    adc b
    jp nc, $ab7f

    xor [hl]
    or h
    or d
    cp b
    ld a, a
    and b
    or e
    ld a, a
    xor b
    or e
    add sp, $51
    adc b
    jp nc, $a97f

    or h
    or d
    or e
    ld a, a
    or d
    xor a
    xor e
    and b
    or d
    and a
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
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or d
    and h
    ld d, l
    or d
    and a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    or d
    add sp, $57
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
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld c, a
    or [hl]
    xor b
    xor l
    add sp, $57
    nop
    adc b
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and h
    ld a, a
    and c
    and b
    and e
    ld a, a
    and b
    or e
    ld c, a
    or d
    or [hl]
    xor b
    xor h
    xor h
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld d, l
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    add sp, $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    or c
    xor [hl]
    and b
    and e
    ld c, a
    xor b
    or d
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and d
    xor [hl]
    xor l
    or d
    or e
    or c
    or h
    and d
    or e
    xor b
    xor [hl]
    xor l
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
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    or e
    xor [hl]
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
    ld a, a
    cp b
    xor [hl]
    or h
    ret nc

    ld d, c
    and c
    and h
    or e
    or e
    and h
    or c
    ld a, a
    and [hl]
    xor [hl]
    ld a, a
    or d
    xor [hl]
    or h
    or e
    and a
    ld c, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
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
    add sp, $57
    nop
    adc b
    jp nc, $a07f

    xor e
    xor e
    ld a, a
    or d
    or [hl]
    and h
    and b
    or e
    cp b
    add sp, $4f
    sub e
    xor b
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    xor b
    or e
    ld a, a
    or [hl]
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
    xor [hl]
    ld d, l
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and c
    xor [hl]
    or h
    xor e
    and e
    and h
    or c
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    or c
    xor [hl]
    and b
    and e
    or [hl]
    xor [hl]
    or c
    xor d
    ld a, a
    xor b
    or d
    ld c, a
    and l
    xor b
    xor l
    and b
    xor e
    xor e
    cp b
    ld a, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    and e
    add sp, $51
    adc l
    xor [hl]
    or [hl]
    ld a, a
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    and l
    xor b
    or d
    and a
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
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    rst $38
    ld d, c
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
    ld a, a
    db $e3
    ld c, a
    sub d
    add h
    add b
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
    ld d, a
    nop
    adc a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and c
    and h
    ld a, a
    and d
    and b
    or c
    and h
    and l
    or h
    xor e
    ld c, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    db $e3
    ld d, l
    xor h
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    ld a, a
    sub d
    add h
    add b
    add l
    adc [hl]
    add b
    adc h
    ld d, l
    adc b
    sub d
    adc e
    add b
    adc l
    add e
    sub d
    add sp, $51
    add l
    sub h
    add d
    add a
    sub d
    adc b
    add b
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    add d
    add h
    ld d, a
    nop
    nop
    ld bc, $0703
    inc bc
    ld b, $03
    nop
    ld [bc], a
    dec c
    dec bc
    nop
    ld [hl], l
    ld l, d
    ld bc, $000b
    ld a, b
    ld l, d
    ld b, $32
    ld e, $0e
    ld b, $00
    rst $38
    rst $38
    and d
    ld b, $fd
    ld l, c
    rst $38
    rst $38
    ld sp, $1423
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    inc bc
    ld de, $ff6a
    rst $38
    ld sp, $161b
    ld [$ff00], sp
    rst $38
    add d
    inc bc
    dec h
    ld l, d
    rst $38
    rst $38
    ld sp, $0e24
    add hl, bc
    nop
    rst $38
    rst $38
    add d
    ld b, $39
    ld l, d
    rst $38
    rst $38
    ld a, [hl-]
    add hl, bc
    dec c
    ld b, $00
    rst $38
    rst $38
    add b
    ld bc, $6a4d
    rst $38
    rst $38
    ld a, [hl-]
    add hl, bc
    rrca
    dec b
    ld bc, $ffff
    sub b
    ld bc, $6a61
    rst $38
    rst $38
    ld [bc], a
    sbc [hl]
    ld l, [hl]
    nop
    nop
    sbc a
    ld l, [hl]
    nop
    nop
    nop
    sub c
    sub c
    ld [hl], l
    inc b
    ld [bc], a
    rrca
    adc e
    ld e, $75
    nop
    inc bc
    ld a, [bc]
    db $76
    ld [bc], a
    nop
    ld l, c
    inc bc
    add sp, $6f
    ld l, [hl]
    inc bc
    adc e
    rrca
    ld a, a
    jr c, jr_067_6eb8

jr_067_6eb8:
    db $76
    ld [bc], a
    ld bc, $0a8b
    ld l, c
    ld [bc], a
    db $ed
    ld l, a
    ld b, a
    ld c, h
    ld b, $70
    ld d, h
    ld c, c
    halt
    nop
    ld l, c
    ld [bc], a
    ld a, [$766f]
    nop
    ld [bc], a
    ld l, c
    ld [bc], a
    nop
    ld [hl], b
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    ld l, a
    rlca
    inc d
    nop
    rrca
    dec a
    nop
    sub c
    ld [hl], l
    inc b
    ld [bc], a
    rrca
    adc e
    ld e, $75
    nop
    inc bc
    ld a, [bc]
    db $76
    ld [bc], a
    nop
    ld l, c
    inc bc
    ld [$6e6f], a
    inc bc
    adc e
    rrca
    ld a, a
    jr c, jr_067_6ef8

jr_067_6ef8:
    db $76
    ld [bc], a
    ld bc, $0a8b
    ld l, c
    ld [bc], a
    db $f4
    ld l, a
    ld b, a
    ld c, h
    ld b, $70
    ld d, h
    ld c, c
    halt
    ld bc, $0269
    db $fd
    ld l, a
    halt
    ld [bc], a
    ld l, c
    ld [bc], a
    nop
    ld [hl], b
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    ld l, a
    rlca
    inc d
    nop
    rrca
    dec a
    nop
    sub c
    ld [hl], d
    inc b
    rla
    rlca
    ld c, l
    ld [hl], c
    and d
    ld [hl], c
    nop
    nop
    inc l
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    or l
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    rra
    dec b
    add hl, de
    dec bc
    ret c

    ld [hl], c
    push af
    ld [hl], c
    nop
    nop
    ld b, b
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld [$5472], sp
    ld c, c
    sub c
    ld [hl], e
    inc b
    rla
    ld [$722b], sp
    ld c, c
    ld [hl], d
    nop
    nop
    ld d, h
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, h
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    dec de
    dec b
    add hl, de
    rlca
    ld a, a
    ld [hl], d
    sbc c
    ld [hl], d
    nop
    nop
    ld l, b
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    and [hl]
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    rra
    inc b
    ld [hl], $06
    ret


    ld [hl], d
    rst $20
    ld [hl], d
    nop
    nop
    ld a, h
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld hl, sp+$72
    ld d, h
    ld c, c
    sub c
    inc e
    dec b
    add hl, de
    ld [$731b], sp
    ld c, e
    ld [hl], e
    nop
    nop
    sub b
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, e
    ld [hl], e
    ld d, h
    ld c, c
    sub c
    adc b
    dec b
    add hl, hl
    ld [$737e], sp
    ld bc, $0074
    nop
    and h
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [de]
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0558
    add hl, bc
    jp c, $316f

    ret c

    nop
    add hl, bc
    rst $00
    ld l, a
    ld c, h
    dec sp
    ld [hl], h
    ld d, l
    sbc [hl]
    inc h
    ld bc, $de08
    ld l, a
    inc sp
    ret c

    nop
    ld c, h
    sbc l
    ld [hl], h
    ld d, h
    ld c, c
    ld h, h
    db $fd
    ld [hl], h
    nop
    nop
    ld e, [hl]
    dec de
    ld de, $605f
    inc sp
    ld e, b
    dec b
    ld b, a
    ld c, h
    jr nz, jr_067_7052

    ld d, h
    ld c, c
    sub c
    ld d, e
    ld h, a
    ld [hl], l
    dec de
    ld bc, $00f8
    ld [de], a
    db $10
    ld b, a
    db $10
    db $10
    ld b, a
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $47
    dec c
    dec c
    ld c, $0e
    ld c, $47
    inc c
    ld c, $47
    dec c
    ld c, $47
    ld c, $0e
    ld c, $0e
    ld c, $47
    nop
    adc h
    adc b
    sub d
    sub e
    sbc b
    sbc h
    ld a, a
    add b
    or [hl]
    or [hl]
    rst $20
    ld a, a
    sub [hl]
    and a
    cp b
    ld c, a
    and e
    xor b
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
    or e
    xor [hl]
    ld d, c
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    or h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and c
    or h
    and [hl]
    ld a, a
    or h
    or d
    ld c, a
    xor l
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
    or e
    and a

jr_067_7052:
    and h
    cp b
    ld a, a
    and d
    and b
    xor e
    xor e
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld d, l
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $51
    adc a
    and h
    or d
    or e
    or d
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and a
    and h
    and b
    or c
    and e
    ld c, a
    xor h
    and h
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    xor a
    and h
    or d
    or e
    rst $20
    ld d, c
    ld [hl], l
    ld d, c
    ld [hl], l
    adc [hl]
    and a
    and $7f
    sub e
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
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    and b
    or l
    and h
    ld [hl], l
    ld a, a
    add b
    or c
    and h
    ld a, a
    or e
    and a
    and h
    cp b
    ld d, l
    adc c
    adc [hl]
    add a
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
    and $51
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
    and h
    xor b
    and [hl]
    and a
    or e
    db $f4
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
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    add sp, $51
    adc [hl]
    adc d
    db $f4
    ld a, a
    or e
    and a
    and h
    xor l
    add sp, $7f
    add d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    add d
    add h
    sub c
    sub h
    adc e
    add h
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
    and c
    and h
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
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
    add sp, $51
    adc b
    jp nc, $8c7f

    adc b
    sub d
    sub e
    sbc b
    db $f4
    ld a, a
    or e
    and a
    and h
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
    ld a, a
    xor b
    xor l
    ld d, l
    add d
    add h
    sub c
    sub h
    adc e
    add h
    add b
    adc l
    add sp, $57
    nop
    add c
    and h
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor b
    or a
    ld a, a
    xor [hl]
    and l
    ld a, a
    or h
    or d
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
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    ld a, a
    and b
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
    rst $20
    ld d, c
    sub e
    and a
    xor b
    xor l
    xor d
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
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    and $57
    nop
    sub [hl]
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or d
    or e
    or h
    and l
    and l
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    add sp, $4f
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
    or c
    and h
    and [hl]
    or c
    and h
    or e
    or d
    add sp, $57
    nop
    adc b
    jp nc, $b27f

    and h
    and d
    xor [hl]
    xor l
    and e
    add sp, $4f
    adc l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    or e
    call nc, $b27f
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    rst $20
    ld d, a
    nop
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
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    and $57
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    add sp, $4f
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
    or c
    and h
    and [hl]
    or c
    and h
    or e
    or d
    add sp, $57
    nop
    add a
    and h
    or c
    and h
    call nc, $8d7f
    xor [hl]
    add sp, $7f
    ld sp, hl
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    and h
    and b
    or d
    cp b
    add sp, $57
    nop
    adc [hl]
    or [hl]
    rst $20
    ld a, a
    sub d
    or e
    xor [hl]
    xor h
    xor a
    and h
    and e
    ld a, a
    and l
    xor e
    and b
    or e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    add sp, $4f
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
    or c
    and h
    and [hl]
    or c
    and h
    or e
    or d
    add sp, $57
    nop
    adc b
    jp nc, $8d7f

    xor [hl]
    add sp, $7f
    ld a, [$4fe7]
    add [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor b
    or c
    and h
    and e
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
    xor [hl]
    xor [hl]
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    add sp, $4f
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
    or c
    and h
    and [hl]
    or c
    and h
    or e
    or d
    add sp, $57
    nop
    adc [hl]
    adc d
    rst $20
    ld a, a
    adc b
    jp nc, $8d7f

    xor [hl]
    add sp, $7f
    ei
    add sp, $4f
    adc b
    pop de
    xor e
    ld a, a
    or d
    or e
    xor [hl]
    xor h
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld a, a
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    add sp, $4f
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
    or c
    and h
    and [hl]
    or c
    and h
    or e
    or d
    add sp, $57
    nop
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    xor b
    xor l
    ld c, a
    xor e
    xor b
    xor l
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    or e
    and h
    xor e
    xor e
    ld d, l
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    adc b
    jp nc, $b37f

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
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld a, a
    and c
    and h
    or d
    or e
    add sp, $4f
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
    or c
    and h
    and [hl]
    or c
    and h
    or e
    or d
    add sp, $57
    nop
    adc h
    or h
    and l
    or h
    and l
    or h
    and l
    or h
    ld [hl], l
    ld d, c
    adc b
    ld a, a
    and a
    and b
    or l
    and h
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
    and h
    ld a, a
    or d
    xor b
    or a
    db $e3
    ld d, l
    xor a
    and b
    and d
    xor d
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
    or [hl]
    and b
    xor b
    or e
    and h
    and e
    ld a, a
    and a
    and h
    or c
    and h
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
    or [hl]
    and a
    and h
    xor l
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
    or e
    xor b
    or c
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    and c
    cp b
    ld c, a
    and b
    xor e
    xor e
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
    or d
    add sp, $57
    nop
    add b
    or c
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor b
    or c
    and h
    and e
    ld c, a
    and b
    or e
    ld a, a
    and b
    xor e
    xor e
    and $57
    nop
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld c, a
    and d
    and a
    and h
    and b
    or e
    ld a, a
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
    sbc b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    and a
    and b
    xor l
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    and h
    and e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    cp b
    or [hl]
    and b
    cp b
    add sp, $51
    add b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    xor h
    xor b
    or d
    and h
    and e
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
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
    add sp, $57
    nop
    add c
    or h
    or e
    ld a, a
    and b
    and l
    or e
    and h
    or c
    ld a, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    xor [hl]
    or [hl]
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
    db $f4
    ld a, a
    adc b
    ld d, c
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
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    adc b
    pop de
    xor e
    ld a, a
    and l
    and b
    or c
    and h
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
    xor b
    or e
    and $7f
    adc e
    and h
    or e
    ld c, a
    xor h
    and h
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
    add sp, $57
    nop
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
    and b
    and e
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
    or e
    and a
    xor b
    or d
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
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
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
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
    or c
    or h
    xor e
    cp b
    ld a, a
    xor [hl]
    or h
    or e
    db $e3
    ld d, l
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    sub d
    add h
    add b
    ld a, a
    add d
    adc [hl]
    sub e
    sub e
    add b
    add [hl]
    add h
    ld c, a
    add c
    adc b
    adc e
    adc e
    ldh [$92], a
    ld a, a
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, a
    nop
    add c
    adc b
    adc e
    adc e
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
    ld bc, $2f05
    ld bc, $0b07
    ld [bc], a
    ld bc, $2a06
    nop
    and b
    ld l, [hl]
    nop
    nop
    ld bc, $2a07
    nop
    ldh [$6e], a
    nop
    nop
    ld [bc], a
    dec b
    dec l
    nop
    ldh [$6f], a
    dec b
    inc b
    rlca
    push hl
    ld l, a
    dec bc
    dec e
    dec c
    ld [hl-], a
    ld [$ff00], sp
    rst $38
    add b
    nop
    rst $28
    ld h, $6e
    rlca
    inc hl
    ld c, $32
    ld [$ff00], sp
    rst $38
    and b
    nop
    rst $28
    ld h, $6e
    rlca
    daa
    inc c
    db $10
    ld b, $00
    rst $38
    rst $38
    sub d
    inc bc
    jr nz, jr_067_7648

    rst $38
    rst $38
    jr z, @+$11

    inc d
    rlca
    nop
    rst $38
    rst $38
    sub d
    inc bc
    inc [hl]
    ld l, a
    rst $38
    rst $38
    daa
    inc c
    add hl, de
    ld b, $00
    rst $38
    rst $38
    sub d
    ld bc, $6f48
    rst $38
    rst $38
    jr z, jr_067_7601

    ld a, [de]
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc bc
    ld e, h
    ld l, a
    rst $38

jr_067_7601:
    rst $38
    daa
    ld [$061d], sp
    nop
    rst $38
    rst $38
    and d
    ld [bc], a
    ld [hl], b
    ld l, a
    rst $38
    rst $38
    jr z, @+$11

    jr nz, jr_067_761a

    nop
    rst $38
    rst $38
    sub d
    ld bc, $6f84

jr_067_761a:
    rst $38
    rst $38
    dec hl
    dec bc
    inc hl
    ld b, $00
    rst $38
    rst $38
    or d
    ld bc, $6f98
    rst $38
    rst $38
    inc hl
    inc c
    add hl, hl
    ld [$ff00], sp
    rst $38
    add b
    nop
    xor h
    ld l, a
    rst $38
    rst $38
    ld d, h
    ld [$0124], sp
    nop
    rst $38
    rst $38
    ld bc, $e300
    ld l, a

Call_067_7641:
    adc e
    rlca
    nop
    nop
    nop
    nop
    nop

jr_067_7648:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
