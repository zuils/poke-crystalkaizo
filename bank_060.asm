; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $060", ROMX[$4000], BANK[$60]

    ld bc, $4009
    nop
    nop
    ld bc, $0a05
    ld b, b
    sub c
    ld [de], a
    db $10
    inc bc
    nop
    ld [de], a
    db $10
    inc b
    nop
    ld [de], a
    db $10
    dec b
    nop
    ld [de], a
    db $10
    ld b, $00
    ld [de], a
    db $10
    rlca
    nop
    ld [de], a
    db $10
    ld [$3200], sp
    add hl, bc
    inc bc
    ld [hl-], a
    ld a, [bc]
    inc bc
    ld [hl-], a
    dec bc
    inc bc
    ld [hl-], a
    inc c
    inc bc
    ld [hl-], a
    dec c
    inc bc
    ld [hl-], a
    ld c, $03
    ld [hl-], a
    rrca
    inc bc
    ld [hl-], a
    db $10
    inc bc
    ld [hl-], a
    ld de, $3203
    ld [de], a
    inc bc
    ld [hl-], a
    cp b
    dec b
    ld [hl-], a
    cp c
    dec b
    ld [hl-], a
    cp d
    dec b
    ld [hl-], a
    cp e
    dec b
    ld [hl-], a
    cp h
    dec b
    inc sp
    ld e, a
    rlca
    sub b
    ld sp, $0319
    ld [$412b], sp
    inc [hl]
    ld e, l
    nop
    add hl, bc
    dec hl
    ld b, c
    inc e
    dec bc
    ld b, $00
    dec hl
    ld b, c
    ld b, $02
    dec hl
    ld b, c
    ld b, $04
    dec hl
    ld b, c
    ld b, $05
    dec hl
    ld b, c
    ld b, $06
    dec hl
    ld b, c
    ld [hl], d
    dec b
    ld de, $6f09
    dec b
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
    ld l, c
    dec b
    ld h, h
    ld b, c
    ld a, a
    rra
    nop
    halt
    inc bc
    inc bc
    adc $40
    ld sp, $0319
    ld [$412b], sp
    inc [hl]
    ld e, l
    nop
    add hl, bc
    dec hl
    ld b, c
    inc e
    dec bc
    ld b, $00
    dec hl
    ld b, c
    ld b, $02
    dec hl
    ld b, c
    ld b, $04
    dec hl
    ld b, c
    ld b, $05
    dec hl
    ld b, c
    ld b, $06
    dec hl
    ld b, c
    ld l, a
    dec b
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
    ld l, c
    dec b
    ld l, e
    ld b, c
    ld a, a
    rra
    nop
    halt
    ld [bc], a
    ld b, a
    ld c, h
    push af
    ld b, c
    ld d, h
    ld c, c
    inc sp
    ld a, e
    rlca
    ld sp, $001c
    add hl, bc
    di
    ld b, b
    ld sp, $001d
    add hl, bc
    inc bc
    ld b, c
    ld h, h
    sub l
    ld b, d
    db $fd
    ld b, d
    ld l, b
    dec b
    ld e, [hl]
    ld a, [hl+]
    ld b, $5f
    add e
    ld h, b
    inc bc
    inc de
    ld b, c
    ld h, h
    sub l
    ld b, d
    db $fd
    ld b, d
    ld l, b
    dec b
    ld e, [hl]
    ld a, [hl+]
    inc b
    ld e, a
    add e
    ld h, b
    inc bc
    inc de
    ld b, c
    ld h, h
    sub l
    ld b, d
    db $fd
    ld b, d
    ld l, b
    dec b
    ld e, [hl]
    ld a, [hl+]
    dec b
    ld e, a
    add e
    ld h, b
    inc bc
    inc de
    ld b, c
    ld a, a
    jr nz, jr_060_4116

jr_060_4116:
    ld b, a
    ld c, h
    and h
    ld b, d
    ld d, h
    ld c, c
    halt
    nop
    ld l, c
    dec b
    ld [hl], d
    ld b, c
    ld l, [hl]
    dec b
    inc d
    nop
    add d
    ld [hl], $5d
    nop
    sub c
    inc c
    nop
    nop
    ld b, a
    sub h
    nop
    jr nz, jr_060_4134

jr_060_4134:
    ld c, c
    sub c
    ld d, c
    ld a, b
    ld b, c
    ld l, e
    ld b, a
    ld c, h
    dec [hl]
    ld b, e
    ld c, [hl]
    ld [$4154], sp
    ld c, h
    rst $20
    ld b, e
    ld d, h
    ld c, c
    add l
    inc de
    nop
    rrca
    ld l, $00
    add [hl]
    inc a
    jr jr_060_4155

    dec c
    ld b, $91
    ld c, h

jr_060_4155:
    ld de, $5444
    ld c, c
    sub c
    ld b, a
    ld c, h
    inc sp
    ld b, h
    add h
    ccf
    nop
    ld d, h
    ld c, c
    sub c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [bc], a
    ld b, a
    dec c
    dec c
    dec c
    dec c
    dec c
    inc bc
    ld b, a
    inc c
    inc c
    inc c
    inc c
    inc c
    ld b, a
    nop
    add b
    or e
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
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and [hl]
    and h
    or e
    ld d, c
    or e
    and h
    or d
    or e
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
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
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
    or e
    xor [hl]
    ld a, a
    and c
    and h
    and b
    or e
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    xor e
    xor e
    add sp, $7f
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    xor e
    xor [hl]
    or d
    and h
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    or e
    and b
    or c
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    rst $20
    ld d, a
    nop
    add a
    xor [hl]
    xor e
    and e
    ld a, a
    xor b
    or e
    add sp, $51
    sbc b
    xor [hl]
    or h
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
    ld d, c
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
    ld c, a
    xor l
    xor [hl]
    or [hl]
    and $51
    sub e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
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
    and a
    and b
    xor a
    xor a
    and h
    xor l
    add sp, $51
    adc h
    cp b
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    db $e3
    or [hl]
    and h
    xor e
    xor e
    db $e3
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    and b
    or c
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
    ld a, a
    xor a
    xor [hl]
    or h
    xor l
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $51
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
    ld d, c
    adc [hl]
    adc d
    db $e3
    db $e3
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
    add e
    and b
    or c
    xor l
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    or [hl]
    xor b
    xor l
    ld [hl], l
    ld d, c
    adc b
    ld [hl], l
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
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
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
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld a, a
    sub e
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
    xor e
    xor [hl]
    or d
    and h
    rst $20
    ld d, a
    nop
    ld [hl], l
    ld d, c
    sub [hl]
    and a
    and h
    or [hl]
    ld [hl], l
    ld c, a
    sub [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    or d
    db $f4
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
    and c
    and h
    ld c, a
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
    rst $20
    ld d, a
    nop
    add b
    and a
    rst $20
    ld a, a
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
    db $e3
    ld c, a
    xor e
    and h
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    adc e
    adc b
    sub e
    add h
    ld d, c
    add l
    adc [hl]
    sub h
    sub c
    and $7f
    add b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or h
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or c
    and h
    and b
    and e
    cp b
    and $51
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
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    db $f4
    ld d, c
    xor h
    cp b
    ld a, a
    add b
    add c
    sub c
    add b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and a
    and h
    xor e
    xor a
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $51
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    sub e
    add h
    adc e
    add h
    adc a
    adc [hl]
    sub c
    sub e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and a
    xor [hl]
    xor h
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
    and [hl]
    xor [hl]
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    and $57
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    adc [hl]
    adc d
    add sp, $7f
    adc a
    xor b
    and d
    or e
    or h
    or c
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and a
    xor [hl]
    or h
    or d
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, l
    xor h
    xor b
    xor l
    and e
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    adc d
    db $f4
    ld a, a
    adc [hl]
    adc d
    add sp, $7f
    sub e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor e
    or h
    and d
    xor d
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
    add b
    add c
    sub c
    add b
    sbc h
    ld a, a
    add b
    and b
    and c
    or c
    and b
    ld [hl], l
    ld d, a
    nop
    nop
    inc b
    dec c
    dec b
    ld bc, $0110
    dec c
    ld b, $02
    db $10
    ld bc, $000d
    ld bc, $0114
    nop
    ld de, $1001
    inc bc
    ld [bc], a
    nop
    inc b
    stop
    ld d, e
    ld b, b
    nop
    nop
    nop
    inc b
    ld de, $9400
    ld b, b
    nop
    nop
    nop
    ld b, $37
    dec bc
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    inc l
    ld b, c
    rst $38
    rst $38
    add hl, sp
    dec bc
    rrca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    cpl
    ld b, c
    rst $38
    rst $38
    inc hl
    rrca
    rrca
    ld [bc], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    nop
    ld [hl], $41
    rst $38
    rst $38
    inc b
    dec c
    inc d
    rlca
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $7b
    rlca
    cpl
    dec c
    dec b
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    add hl, sp
    ld b, c
    ld a, h
    rlca
    sub c
    dec c
    inc b
    ld d, $00
    rst $38
    rst $38
    or b
    nop
    ld e, d
    ld b, c
    ld a, h
    rlca
    ld [bc], a
    add $44
    nop
    nop
    jp z, $0044

    nop
    ld bc, $cb01
    ld b, h
    adc l
    ldh [rLY], a
    sub c
    sub c
    ld sp, $0309
    ld [$44d5], sp
    ld a, d
    inc b
    ld c, $2a
    ld sp, $030a
    ld [$44df], sp
    ld a, d
    inc b
    ld [bc], a
    ld d, $90
    ld l, c
    nop
    inc l
    ld b, l
    ld c, b
    add [hl]
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld a, d
    inc b
    ld c, $2a
    ld a, h
    ld c, c
    inc d
    ld bc, $0933
    inc bc
    add [hl]
    sub c
    ld l, e
    ld b, a
    ld sp, $05b8
    add hl, bc
    ld h, $45
    ld c, h
    ld sp, $5445
    ld c, c
    ld h, h
    inc l
    ld b, [hl]
    nop
    nop
    ld e, [hl]
    dec bc
    ld bc, $605f
    inc sp
    cp b
    dec b
    ld b, a
    ld c, h
    ld b, h
    ld b, [hl]
    ld d, h
    ld c, c
    add l
    rra
    nop
    ld a, d
    inc b
    ld [bc], a
    ld d, $7c
    ld c, c
    inc sp
    ld a, [bc]
    inc bc
    add [hl]
    sub c
    ld c, h
    ld b, h
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    dec c
    dec c
    dec c
    dec c
    ld b, a
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
    ld d, d
    add sp, $51
    add b
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
    add sp, $7f
    adc b
    ld a, a
    and b
    xor h
    ld d, l
    sub [hl]
    adc b
    adc e
    adc e
    add sp, $51
    adc b
    ld a, a
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
    and b
    xor e
    xor e
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
    db $f4
    ld d, c
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    xor a
    or d
    cp b
    and d
    and a
    xor b
    and d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    add sp, $51
    add b
    xor l
    and e
    db $f4
    ld a, a
    and b
    or e
    ld a, a
    xor e
    and b
    or d
    or e
    db $f4
    ld a, a
    adc b
    sub $a4
    ld c, a
    and c
    and h
    and h
    xor l
    ld a, a
    and b
    and d
    and d
    and h
    xor a
    or e
    and h
    and e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    add sp, $51
    adc b
    ld a, a
    and d
    and b
    xor l
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    xor d
    and h
    and h
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
    and h
    or e
    or e
    and h
    or c
    rst $20
    ld d, c
    adc e
    xor [hl]
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and b
    xor l
    ld c, a
    xor [hl]
    xor a
    or e
    xor b
    xor [hl]
    xor l
    rst $20
    ld d, a
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
    ld [hl], l
    ld c, a
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
    ld [hl], l
    ld d, a
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
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    and e
    and h
    and l
    and h
    and b
    or e
    and h
    and e
    db $f4
    ld a, a
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld d, l
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    and d
    xor [hl]
    or h
    or c
    or d
    and h
    add sp, $51
    adc b
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    xor b
    xor l
    or h
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
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    adc b
    ld d, c
    or d
    or e
    and b
    xor l
    and e
    ld a, a
    and b
    and c
    xor [hl]
    or l
    and h
    ld a, a
    and b
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
    or d
    rst $20
    ld d, c
    adc l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    ld d, d
    db $f4
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld c, a
    xor [hl]
    xor l
    ld a, a
    and b
    xor l
    and e
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
    and l
    and h
    or c
    xor [hl]
    and d
    xor b
    or e
    cp b
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    add sp, $57
    nop
    nop
    inc bc
    ld de, $0405
    db $10
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0410
    ld [bc], a
    dec b
    ld [bc], a
    db $10
    inc b
    nop
    nop
    ld bc, $0b11
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    ld hl, sp+$44
    rst $38
    rst $38
    ld [bc], a
    jr z, jr_060_4765

    nop
    nop
    inc l
    ld b, a
    nop
    nop
    ld bc, $2d01
    ld b, a
    adc l
    ld b, d
    ld b, a
    sub c
    sub c
    ld sp, $030b
    ld [$4737], sp
    ld a, d
    inc b
    ld c, $2a
    ld sp, $030c
    ld [$4741], sp
    ld a, d
    inc b
    ld [bc], a
    ld d, $90
    ld l, c
    nop
    adc [hl]
    ld b, a
    ld c, b
    add [hl]
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld a, d
    inc b
    ld c, $2a
    ld a, h
    ld c, c
    inc d
    ld bc, $0b33
    inc bc
    add [hl]
    sub c
    ld l, e
    ld b, a
    ld sp, $05b9
    add hl, bc
    adc b
    ld b, a
    ld c, h
    sub e
    ld b, a

jr_060_4765:
    ld d, h
    ld c, c
    ld h, h
    xor c
    ld c, b
    nop
    nop
    ld e, [hl]
    rrca
    ld bc, $605f
    inc sp
    cp c
    dec b
    ld b, a
    ld c, h
    jp z, Jump_060_5448

    ld c, c
    add l
    rra
    nop
    ld a, d
    inc b
    ld [bc], a
    ld d, $7c
    ld c, c
    inc sp
    inc c
    inc bc
    add [hl]
    sub c
    ld c, h
    jp z, Jump_060_5448

    ld c, c
    sub c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    nop
    add l
    or [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, c
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    adc d
    adc [hl]
    add [hl]
    add b
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    add sp, $51
    adc b
    ld a, a
    xor e
    xor b
    or l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or d
    and a
    and b
    and e
    xor [hl]
    or [hl]
    or d
    db $f4
    ld c, a
    and b
    ld a, a
    xor l
    xor b
    xor l
    xor c
    and b
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    xor b
    xor l
    or e
    or c
    xor b
    and d
    and b
    or e
    and h
    ld a, a
    or d
    or e
    cp b
    xor e
    and h
    ld c, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and e
    and h
    or d
    or e
    or c
    xor [hl]
    cp b
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, c
    add h
    or l
    and b
    or d
    xor b
    xor [hl]
    xor l
    db $f4
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    db $f4
    ld a, a
    ld a, a
    ld c, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld [hl], l
    ld d, c
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
    ld a, a
    and c
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    or l
    xor b
    and d
    or e
    xor b
    xor h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    xor b
    xor l
    db $e3
    ld d, l
    xor b
    or d
    or e
    and h
    or c
    ld a, a
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
    add l
    or [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    rst $20
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    xor h
    and h
    or c
    and h
    xor e
    cp b
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and c
    or c
    or h
    or e
    and h
    ld d, c
    and l
    xor [hl]
    or c
    and d
    and h
    db $e3
    db $e3
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    ld c, a
    or d
    and h
    and h
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
    rst $20
    ld d, a
    nop
    add b
    and a
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
    xor a
    or c
    xor [hl]
    or l
    and h
    xor l
    ld d, l
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    or [hl]
    xor [hl]
    or c
    or e
    and a
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    or h
    and c
    xor c
    and h
    and d
    or e
    and h
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld d, l
    xor h
    or h
    or d
    or e
    and h
    or c
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and h
    and l
    and l
    xor [hl]
    or c
    or e
    or d
    ld c, a
    and l
    and b
    xor b
    xor e
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
    and a
    xor [hl]
    xor l
    and h
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
    add sp, $51
    add [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
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
    or c
    xor [hl]
    xor [hl]
    xor h
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor a
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
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
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and h
    or d
    or e
    rst $20
    ld d, a
    nop
    nop
    inc b
    ld de, $0204
    db $10
    inc bc
    ld de, $0305
    db $10
    inc bc
    ld [bc], a
    inc b
    ld bc, $0510
    ld [bc], a
    dec b
    ld [bc], a
    db $10
    dec b
    nop
    nop
    ld bc, $0b21
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld e, d
    ld b, a
    rst $38
    rst $38
    ld [bc], a
    sub e
    ld c, c
    nop
    nop
    sub a
    ld c, c
    nop
    nop
    ld bc, $9801
    ld c, c
    adc l
    xor l
    ld c, c
    sub c
    sub c
    ld sp, $030d
    ld [$49a2], sp
    ld a, d
    inc b
    ld c, $2a
    ld sp, $030e
    ld [$49ac], sp
    ld a, d
    inc b
    ld [bc], a
    ld d, $90
    ld l, c
    nop
    ld sp, hl
    ld c, c
    ld c, b
    add [hl]
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld a, d
    inc b
    ld c, $2a
    ld a, h
    ld c, c
    inc d
    ld bc, $0d33
    inc bc
    add [hl]
    sub c
    ld l, e
    ld b, a
    ld sp, $05ba
    add hl, bc
    di
    ld c, c
    ld c, h
    cp $49
    ld d, h
    ld c, c
    ld h, h
    inc hl
    ld c, e
    nop
    nop
    ld e, [hl]
    dec c
    ld bc, $605f
    inc sp
    cp d
    dec b
    ld b, a
    ld c, h
    inc a
    ld c, e
    ld d, h
    ld c, c
    add l
    rra
    nop
    ld a, d
    inc b
    ld [bc], a
    ld d, $7c
    ld c, c
    inc sp
    ld c, $03
    add [hl]
    sub c
    ld c, h
    inc a
    ld c, e
    ld d, h
    ld c, c
    sub c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    add c
    sub c
    sub h
    adc l
    adc [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    add sp, $51
    adc b
    ld a, a
    and b
    xor e
    or [hl]
    and b
    cp b
    or d
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    and h
    or a
    or e
    or c
    and h
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
    and c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor b
    xor l
    ld d, l
    xor [hl]
    or h
    or c
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
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and h
    ld c, a
    and c
    and h
    and d
    and b
    xor h
    and h
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    add d
    and b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    or d
    or e
    and b
    xor l
    and e
    ld c, a
    xor [hl]
    or h
    or c
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and $51
    add a
    xor h
    and $7f
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    and l
    and h
    and b
    or c
    ld c, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld d, c
    and e
    and h
    or e
    and h
    or c
    xor h
    xor b
    xor l
    and h
    and e
    add sp, $7f
    adc a
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
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld d, c
    sub c
    and h
    and b
    and e
    cp b
    db $f4
    ld a, a
    ld d, d
    and $4f
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
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld d, c
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or c
    ld a, a
    xor [hl]
    or l
    and h
    or c
    or [hl]
    and a
    and h
    xor e
    xor h
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    rst $20
    ld d, c
    add a
    xor [hl]
    xor [hl]
    ld a, a
    and a
    and b
    and a
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    cp b
    and $7f
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
    or [hl]
    and h
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    and $57
    nop
    add a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    db $f4
    ld a, a
    adc b
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    or e
    xor [hl]
    ld d, l
    or d
    and b
    cp b
    ld a, a
    and b
    xor l
    cp b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    add [hl]
    xor [hl]
    ld a, a
    and l
    and b
    and d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor l
    and h
    or a
    or e
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
    rst $20
    ld d, a
    nop
    nop
    inc b
    ld de, $0304
    db $10
    inc b
    ld de, $0405
    db $10
    inc b
    ld [bc], a
    inc b
    ld bc, $0610
    ld [bc], a
    dec b
    ld [bc], a
    db $10
    ld b, $00
    nop
    ld bc, $0b1c
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    or b
    nop
    push bc
    ld c, c
    rst $38
    rst $38
    ld [bc], a
    cp h
    ld c, e
    nop
    nop
    ret nz

    ld c, e
    nop
    nop
    ld bc, $c101
    ld c, e
    adc l
    sub $4b
    sub c
    sub c
    ld sp, $030f
    ld [$4bcb], sp
    ld a, d
    inc b
    ld c, $2a
    ld sp, $0310
    ld [$4bd5], sp
    ld a, d
    inc b
    ld [bc], a
    ld d, $90
    ld l, c
    nop
    ld [hl+], a
    ld c, h
    ld c, b
    add [hl]
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld a, d
    inc b
    ld c, $2a
    ld a, h
    ld c, c
    inc d
    ld bc, $0f33
    inc bc
    add [hl]
    sub c
    ld l, e
    ld b, a
    ld sp, $05bb
    add hl, bc
    inc e
    ld c, h
    ld c, h
    daa
    ld c, h
    ld d, h
    ld c, c
    ld h, h
    ld hl, sp+$4c
    nop
    nop
    ld e, [hl]
    ld c, $01
    ld e, a
    ld h, b
    inc sp
    cp e
    dec b
    ld b, a
    ld c, h
    add hl, hl
    ld c, l
    ld d, h
    ld c, c
    add l
    rra
    nop
    ld a, d
    inc b
    ld [bc], a
    ld d, $7c
    ld c, c
    inc sp
    db $10
    inc bc
    add [hl]
    sub c
    ld c, h
    add hl, hl
    ld c, l
    ld d, h
    ld c, c
    sub c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    adc d
    add b
    sub c
    add h
    adc l
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld c, a
    add h
    adc e
    adc b
    sub e
    add h
    ld a, a
    add l
    adc [hl]
    sub h
    sub c
    add sp, $51
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    ld d, d
    and $4f
    add a
    xor [hl]
    or [hl]
    ld a, a
    and b
    xor h
    or h
    or d
    xor b
    xor l
    and [hl]
    add sp, $51
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and e
    and b
    or c
    xor d
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
    add sp, $51
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
    xor b
    or c
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    db $f4
    ld c, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld d, c
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
    add sp, $7f
    add b
    xor l
    and e
    ld c, a
    or e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
    sub e
    and a
    xor b
    xor l
    xor d
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
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    and h
    xor h
    and $7f
    adc c
    or h
    or d
    or e
    ld a, a
    or e
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld d, l
    and h
    xor l
    or e
    and h
    or c
    or e
    and b
    xor b
    xor l
    ld a, a
    xor h
    and h
    add sp, $51
    adc e
    and h
    or e
    call nc, $a67f
    xor [hl]
    add sp, $57
    nop
    sub [hl]
    and h
    xor e
    xor e
    db $f4
    ld a, a
    and b
    or c
    and h
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    add sp, $7f
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
    ld d, l
    xor b
    xor l
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
    add sp, $57
    nop
    sub d
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
    sub [hl]
    and h
    and b
    xor d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    and a
    and h
    ld c, a
    or d
    and h
    xor e
    and l
    xor b
    or d
    and a
    ld a, a
    xor a
    and h
    or c
    and d
    and h
    xor a
    or e
    xor b
    xor [hl]
    xor l
    ld d, l
    xor [hl]
    and l
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $51
    sub e
    or c
    or h
    xor e
    cp b
    ld a, a
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
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
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld d, c
    or e
    or c
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    or e
    and a
    and h
    xor b
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
    or d
    add sp, $51
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
    or c
    ld a, a
    or d
    or e
    cp b
    xor e
    and h
    add sp, $4f
    sbc b
    xor [hl]
    or h
    ld a, a
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
    ld d, l
    or [hl]
    and a
    and b
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
    add sp, $51
    add [hl]
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    db $e3
    db $e3
    or e
    and a
    and h
    ld a, a
    add d
    add a
    add b
    adc h
    db $e3
    ld c, a
    adc a
    adc b
    adc [hl]
    adc l
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
    add sp, $57
    nop
    nop
    inc b
    ld de, $0304
    db $10
    dec b
    ld de, $0405
    db $10
    dec b
    ld [bc], a
    inc b
    ld bc, $0710
    ld [bc], a
    dec b
    ld [bc], a
    db $10
    rlca
    nop
    nop
    ld bc, $0b1b
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    xor $4b
    rst $38
    rst $38
    ld [bc], a
    add hl, sp
    ld c, [hl]
    nop
    nop
    dec a
    ld c, [hl]
    nop
    nop
    ld bc, $3e01
    ld c, [hl]
    adc l
    ld d, e
    ld c, [hl]
    sub c
    sub c
    ld sp, $0311
    ld [$4e48], sp
    ld a, d
    inc b
    ld d, $34
    ld sp, $0312
    ld [$4e52], sp
    ld a, d
    inc b
    nop
    dec bc
    sub b
    ld l, c
    nop
    inc sp
    ld c, a
    ld c, b
    add [hl]
    add l
    dec de
    nop
    ld a, b
    ld d, b
    ld a, d
    inc b
    ld d, $34
    ld a, h
    ld c, c
    inc d
    ld bc, $1133
    inc bc
    sub c
    rrca
    ld l, d
    nop
    ld l, c
    nop
    jr c, jr_060_4ec0

    inc bc
    ld a, e
    ld c, [hl]
    rrca
    ld l, d
    nop
    ld l, c
    nop
    inc a
    ld c, a
    db $76
    ld [bc], a
    ld [bc], a
    ld b, a
    ld c, h
    ld h, a
    ld c, a
    ld d, h
    ld c, c
    ld h, h
    and h
    ld d, b
    nop
    nop
    ld l, b
    ld [bc], a
    ld e, [hl]
    db $10
    ld bc, $835f
    ld h, b
    inc sp
    cp h
    dec b
    ld b, a
    ld c, h
    ld [hl-], a
    ld d, c
    ld d, h
    ld c, c
    add l
    rra
    nop
    ld a, d
    inc b
    nop
    dec bc
    ld a, h
    ld c, c
    inc sp
    ld de, $8103
    jr c, jr_060_4ea9

jr_060_4ea9:
    db $10
    adc e
    ld e, $75
    nop
    ld [bc], a
    rrca
    db $76
    ld [bc], a
    nop
    adc e
    ld a, [bc]
    halt
    nop
    ld l, a
    inc bc
    ld l, c
    inc bc
    ld b, c
    ld c, a
    ld b, a
    ld c, h

jr_060_4ec0:
    db $dd
    ld d, c
    ld d, h
    ld c, c
    ld l, a
    inc b
    ld l, c
    inc b
    ld b, [hl]
    ld c, a
    ld [hl], b
    inc bc
    inc b
    ld l, c
    inc bc
    ld c, c
    ld c, a
    ld [hl], c
    db $76
    inc b
    ld bc, $0276
    ld [bc], a
    ld b, a
    ld c, h
    dec de
    ld d, d
    ld d, h
    ld c, c
    ld l, c
    inc bc
    ld c, h
    ld c, a
    halt
    ld [bc], a
    ld b, a
    ld c, h
    ld c, e
    ld d, e
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    ld c, a
    ld c, a
    halt
    ld bc, $4c47
    ld a, e
    ld d, e
    ld d, h
    ld c, c
    ld [hl], b
    ld [bc], a
    nop
    db $76
    inc bc
    ld bc, $0476
    ld bc, $0269
    ld d, e
    ld c, a
    ld [hl], c
    add l
    inc hl
    nop
    ld l, [hl]
    ld [bc], a
    ld l, c
    nop
    ld d, l
    ld c, a
    add l
    inc hl
    nop
    ld l, [hl]
    nop
    ld l, c
    inc bc
    ld d, a
    ld c, a
    ld [hl], l
    nop
    inc bc
    rrca
    ld b, a
    ld c, h
    push bc
    ld d, e
    adc e
    ld e, $49
    ld l, c
    inc bc
    ld e, e
    ld c, a
    rrca
    ld l, $00
    adc e
    rrca
    and e
    ld bc, $0810
    inc b
    dec c
    sub c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    dec c
    dec c
    inc bc
    ld b, a
    dec c
    ld c, $0d
    inc bc
    ld b, a
    ld de, $1111
    nop
    ld b, a
    dec c
    dec c
    ld b, a
    ld c, $03
    ld b, a
    ld de, $4703
    dec c
    ld c, $00
    ld b, a
    dec c
    ld b, a
    dec c
    ld b, a
    dec c
    rrca
    ld bc, $1347
    inc de
    ld [de], a
    ld [de], a
    ld [de], a
    inc de
    inc de
    inc de
    ld [de], a
    ld [de], a
    ld bc, $0047
    adc e
    add b
    adc l
    add d
    add h
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
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
    inc d
    rst $20
    ld d, c
    adc b
    ld a, a
    xor d
    xor l
    and h
    or [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    db $f4
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
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
    db $f4
    ld d, c
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and h
    or l
    and h
    xor l
    or e
    or h
    and b
    xor e
    xor e
    cp b
    ld c, a
    or c
    and h
    and b
    and d
    and a
    ld a, a
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    xor l
    and h
    and h
    and e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or [hl]
    xor [hl]
    or c
    and e
    or d
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    sub [hl]
    and h
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and e
    and h
    or e
    and h
    or c
    xor h
    xor b
    xor l
    and h
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    xor b
    or d
    ld d, c
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
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and h
    ld a, a
    or e
    or [hl]
    xor [hl]
    ld a, a
    xor [hl]
    and l
    ld a, a
    or h
    or d
    add sp, $51
    add b
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
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    db $e3
    ld c, a
    and l
    or h
    xor e
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
    xor l
    and e
    ld a, a
    and b
    or d
    ld d, c
    or e
    and a
    and h
    ld a, a
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
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    ld [hl], l
    ld d, c
    adc b
    db $f4
    ld a, a
    adc e
    add b
    adc l
    add d
    add h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    or c
    and b
    and [hl]
    db $e3
    ld c, a
    xor [hl]
    xor l
    ld a, a
    xor h
    and b
    or d
    or e
    and h
    or c
    db $f4
    ld a, a
    and b
    and d
    and d
    and h
    xor a
    or e
    ld d, l
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
    rst $20
    ld d, a
    nop
    ld [hl], l
    adc b
    or e
    call nc, $ae7f
    or l
    and h
    or c
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    call nc, $a07f
    xor l
    ld a, a
    xor [hl]
    and e
    and e
    ld c, a
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    add sp, $51
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    and b
    xor l
    and [hl]
    or c
    cp b
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
    xor l
    ld a, a
    and l
    and b
    and d
    or e
    db $f4
    ld a, a
    adc b
    ld d, l
    and l
    and h
    and h
    xor e
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $51
    add a
    and b
    xor a
    xor a
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld c, a
    or [hl]
    xor b
    or e
    xor l
    and h
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    xor b
    or d
    and h
    ld d, c
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    xor l
    and h
    or [hl]
    ld c, a
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
    ld [hl], l
    sub [hl]
    and a
    and h
    or [hl]
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
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld c, a
    or e
    or c
    or h
    xor e
    cp b
    ld a, a
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and l
    or h
    xor e
    db $f4
    ld d, l
    inc d
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
    and a
    and b
    or l
    and h
    ld c, a
    or c
    and h
    or d
    xor a
    xor [hl]
    xor l
    and e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
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
    ld a, a
    or h
    xor a
    db $e3
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
    xor l
    and b
    or e
    or h
    or c
    and h
    add sp, $51
    add b
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
    and d
    xor [hl]
    xor l
    or e
    xor b
    xor l
    or h
    and h
    ld a, a
    or e
    xor [hl]
    ld d, c
    and [hl]
    or c
    xor [hl]
    or [hl]
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
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
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    xor l
    xor [hl]
    rst $20
    ld c, a
    adc b
    or e
    call nc, $a07f
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    rst $20
    ld d, c
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    db $f4
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    and h
    or c
    and h
    xor l
    push de
    ld a, a
    or d
    xor [hl]
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    ld [hl], l
    ld d, a
    nop
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$72
    add b
    adc d
    sbc h
    ld a, a
    add b
    and a
    db $f4
    ld c, a
    inc d
    rst $20
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
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, a
    or [hl]
    and a
    xor b
    xor e
    and h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and h
    or c
    or e
    and b
    xor b
    xor l
    xor e
    cp b
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    xor h
    xor [hl]
    or c
    and h
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
    add sp, $51
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and d
    xor [hl]
    xor l
    or b
    or h
    and h
    or d
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
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
    xor b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    and l
    and b
    xor l
    or e
    and b
    or d
    or e
    xor b
    and d
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and e
    and h
    and e
    xor b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    db $f4
    ld c, a
    or e
    or c
    or h
    or d
    or e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    and l
    xor [hl]
    or c
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
    xor h
    and b
    and e
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
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
    and h
    or c
    and h
    ld c, a
    xor [hl]
    or h
    or e
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    xor [hl]
    xor [hl]
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
    cp b
    ld a, a
    and c
    and h
    db $e3
    ld c, a
    xor e
    xor b
    and h
    or l
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    or d
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
    db $f4
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    xor a
    and h
    or c
    db $e3
    ld c, a
    or d
    and h
    or l
    and h
    or c
    and h
    and e
    add sp, $51
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
    db $f4
    ld c, a
    inc d
    rst $20
    ld d, a
    nop
    adc h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    adc e
    and h
    or e
    call nc, $a87f
    xor l
    or e
    and h
    or c
    db $e3
    ld c, a
    or l
    xor b
    and h
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or c
    and b
    xor l
    and e
    ld a, a
    xor l
    and h
    or [hl]
    ld d, l
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
    adc e
    add b
    adc l
    add d
    add h
    sbc h
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld c, a
    and [hl]
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
    ld a, a
    and b
    ld d, l
    and c
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor l
    xor [hl]
    xor b
    or d
    cp b
    ld [hl], l
    ld d, c
    inc d
    db $f4
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
    xor h
    and h
    and $57
    nop
    adc h
    add b
    sub c
    sbc b
    sbc h
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    or [hl]
    and b
    xor b
    or e
    rst $20
    ld c, a
    sub [hl]
    and h
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    and e
    xor [hl]
    xor l
    and h
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor b
    xor l
    or e
    and h
    or c
    or l
    xor b
    and h
    or [hl]
    rst $20
    ld d, a
    nop
    nop
    inc b
    rla
    inc b
    inc bc
    db $10
    ld b, $17
    dec b
    inc b
    db $10
    ld b, $01
    inc b
    ld bc, $0810
    ld bc, $0205
    db $10
    ld [$0102], sp
    dec b
    inc b
    nop
    ld l, d
    ld c, [hl]
    nop
    nop
    ld bc, $0505
    nop
    ld [hl], h
    ld c, [hl]
    nop
    nop
    nop
    inc bc
    ld e, $07
    add hl, bc
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld a, e
    ld c, [hl]
    rst $38
    rst $38
    add hl, hl
    dec bc
    ld [$0007], sp
    rst $38
    rst $38
    and b
    nop
    rst $28
    ld h, $5f
    rlca
    dec b
    dec bc
    ld [$0007], sp
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $5f
    rlca
    ld [bc], a
    ld c, a
    ld d, h

Jump_060_5448:
    nop
    nop
    ld d, e
    ld d, h
    nop
    nop
    nop
    adc l
    ld d, h
    ld d, h
    sub c
    sub c
    ld [hl], b
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    sbc c
    ld d, h
    ld [hl], c
    halt
    inc bc
    ld b, a
    ld c, h
    and [hl]
    ld d, h
    ld d, h
    ld c, c
    db $76
    ld [bc], a
    ld bc, $0069
    and h
    ld d, h
    inc d
    ld bc, $0f8b
    dec d
    ld [bc], a
    rrca
    ld a, $00
    inc sp
    ld b, h
    nop
    inc sp
    ld a, h
    rlca
    inc sp
    call nz, $3206
    ld h, d
    rlca
    inc sp
    scf
    rlca
    ld [hl-], a
    jr c, jr_060_548e

    ld [de], a
    inc bc
    inc bc
    ld bc, $1b0f
    nop

jr_060_548e:
    ld sp, $0024
    add hl, bc
    sub a
    ld d, h
    sbc h
    dec b
    nop
    and c
    sub c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    ld [bc], a
    ld b, a
    add hl, bc
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
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    and b
    ld c, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    adc b
    ld d, l
    xor e
    and b
    or d
    or e
    ld a, a
    and d
    and b
    xor h
    and h
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $51
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
    and a
    xor [hl]
    xor l
    xor [hl]
    or c
    ld a, a
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
    ld d, c
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    sub d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor e
    xor e
    ld c, a
    and h
    or e
    and h
    or c
    xor l
    xor b
    or e
    cp b
    add sp, $51
    sub e
    and a
    and h
    xor b
    or c
    ld a, a
    and d
    xor [hl]
    or h
    or c
    and b
    and [hl]
    and h
    xor [hl]
    or h
    or d
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
    and b
    xor e
    or d
    xor [hl]
    ld d, l
    xor b
    xor l
    and e
    or h
    and d
    or e
    and h
    and e
    add sp, $51
    add a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    db $f4
    ld a, a
    or [hl]
    and h
    ld c, a
    or [hl]
    xor b
    or e
    xor l
    and h
    or d
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or c
    xor b
    or d
    and h
    ld d, c
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld c, a
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    db $e3
    db $e3
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
    or [hl]
    and a
    xor [hl]
    ld a, a
    and l
    and h
    and h
    xor e
    or d
    ld c, a
    and d
    xor [hl]
    xor h
    xor a
    and b
    or d
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    db $f4
    ld d, c
    and b
    xor l
    and e
    ld a, a
    or e
    or c
    or h
    or d
    or e
    ld a, a
    or e
    xor [hl]
    or [hl]
    and b
    or c
    and e
    db $f4
    ld c, a
    and b
    xor e
    xor e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
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
    or [hl]
    and a
    xor [hl]
    ld c, a
    or d
    or h
    and d
    and d
    and h
    and h
    and e
    and h
    and e
    ld a, a
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld d, c
    xor a
    and h
    or c
    or d
    and h
    or l
    and h
    or c
    and b
    xor l
    and d
    and h
    ld a, a
    and b
    xor l
    and e
    ld c, a
    and e
    and h
    or e
    and h
    or c
    xor h
    xor b
    xor l
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    xor l
    and h
    or [hl]
    ld a, a
    adc e
    add h
    add b
    add [hl]
    sub h
    add h
    ld c, a
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    and a
    and b
    or d
    ld d, c
    and b
    xor e
    xor e
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
    or d
    ld c, a
    xor [hl]
    and l
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    xor l
    and h
    or d
    or d
    rst $20
    ld d, c
    inc d
    db $f4
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    ld a, a
    xor h
    and h
    ld c, a
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
    ld a, a
    cp b
    xor [hl]
    or h
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
    xor a
    and b
    or c
    or e
    xor l
    and h
    or c
    or d
    ld c, a
    and b
    or d
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    adc b
    adc [hl]
    adc l
    sub d
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    dec c
    inc b
    inc bc
    db $10
    rlca
    dec c
    dec b
    inc b
    db $10
    rlca
    nop
    nop
    ld bc, $101e
    ld [$0007], sp
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $ff
    rst $38
    sub d
    add h
    add h
    add e
    ld d, b
    call z, $9600
    nop
    sub [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor l
    or h
    or e
    or c
    xor b
    and h
    xor l
    or e
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
    ld d, b
    or d
    or e
    xor [hl]
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
    ld c, [hl]
    or d
    and h
    and h
    and e
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    add sp, $50
    sub d
    add h
    add h
    add e
    ld d, b
    cpl
    ld bc, $0122
    sub e
    and a
    and h
    ld a, a
    and c
    or h
    xor e
    and c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    and b
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    or d
    ld a, a
    xor l
    or h
    or e
    or c
    xor b
    and h
    xor l
    or e
    or d
    add sp, $50
    sub e
    and a
    and h
    ld a, a
    and c
    or h
    xor e
    and c
    ld a, a
    and [hl]
    xor b
    or l
    and h
    or d
    ld a, a
    xor [hl]
    and l
    and l
    ld c, [hl]
    and b
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and b
    xor l
    or e
    ld a, a
    and b
    or c
    xor [hl]
    xor h
    and b
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and c
    xor e
    xor [hl]
    xor [hl]
    xor h
    or d
    add sp, $50
    sub d
    add h
    add h
    add e
    ld d, b
    ld e, a
    ld [bc], a
    and d
    ld [$b280], sp
    ld a, a
    xor b
    or e
    ld a, a
    or [hl]
    and b
    or c
    xor h
    or d
    ld a, a
    xor b
    or e
    db $e3
    ld c, [hl]
    or d
    and h
    xor e
    and l
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and b
    and c
    or d
    xor [hl]
    or c
    and c
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld d, b
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    xor a
    and h
    or e
    and b
    xor e
    or d
    ld c, [hl]
    or c
    and h
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and b
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and b
    xor l
    or e
    ld c, [hl]
    and l
    or c
    and b
    and [hl]
    or c
    and b
    xor l
    and d
    and h
    add sp, $50
    adc e
    adc b
    sbc c
    add b
    sub c
    add e
    ld d, b
    ret z

    nop
    cp [hl]
    nop
    adc b
    and l
    ld a, a
    xor b
    or e
    call nc, $a77f
    and h
    and b
    xor e
    or e
    and a
    cp b
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or e
    xor b
    xor a
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld d, b
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    or h
    or c
    xor l
    ld a, a
    or l
    xor b
    and [hl]
    xor [hl]
    or c
    db $e3
    ld c, [hl]
    xor [hl]
    or h
    or d
    xor e
    cp b
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
    xor b
    or e
    ld c, [hl]
    and [hl]
    and h
    or e
    or d
    ld a, a
    and b
    ld a, a
    and c
    xor b
    or e
    ld a, a
    or [hl]
    and h
    or e
    add sp, $50
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    inc sp
    ld bc, $01a4
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, [hl]
    and b
    and [hl]
    xor b
    or e
    and b
    or e
    and h
    and e
    ld a, a
    and e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or d
    xor a
    xor [hl]
    or h
    or e
    or d
    ld d, b
    xor b
    xor l
    or e
    and h
    xor l
    or d
    and h
    ld a, a
    and l
    xor e
    and b
    xor h
    and h
    or d
    db $f4
    ld c, [hl]
    xor b
    xor l
    and d
    xor b
    xor l
    and h
    or c
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    or h
    or c
    or c
    xor [hl]
    or h
    xor l
    and e
    xor b
    xor l
    and [hl]
    or d
    add sp, $50
    add l
    adc e
    add b
    adc h
    add h
    ld d, b
    ei
    ld bc, $07d0
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and l
    xor e
    cp b
    ld a, a
    and a
    xor b
    and [hl]
    and a
    add sp, $7f
    sub e
    and a
    and h
    ld c, [hl]
    or e
    and h
    xor h
    xor a
    and h
    or c
    and b
    or e
    or h
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld d, b
    and l
    xor b
    or c
    and h
    ld a, a
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
    and b
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    and [hl]
    and b
    xor b
    xor l
    or d
    ld a, a
    and h
    or a
    xor a
    and h
    or c
    db $e3
    ld c, [hl]
    xor b
    and h
    xor l
    and d
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
    add sp, $50
    sub e
    adc b
    adc l
    sbc b
    sub e
    sub h
    sub c
    sub e
    adc e
    add h
    ld d, b
    ld l, h
    nop
    ret z

    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and l
    and h
    and h
    xor e
    or d
    ld c, [hl]
    or e
    and a
    or c
    and h
    and b
    or e
    and h
    xor l
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and e
    or c
    and b
    or [hl]
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld d, b
    xor b
    xor l
    or d
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    and a
    and h
    xor e
    xor e
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or d
    xor a
    or c
    and b
    cp b
    or d
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or h
    or e
    and a
    add sp, $50
    sub e
    sub h
    sub c
    sub e
    adc e
    add h
    ld d, b
    cpl
    ld bc, $01f4
    adc b
    or e
    or d
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    db $f4
    ld a, a
    and l
    or h
    or c
    or c
    cp b
    ld c, [hl]
    or e
    and b
    xor b
    xor e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    or d
    cp b
    xor h
    and c
    xor [hl]
    xor e
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    and h
    or l
    xor b
    or e
    cp b
    db $f4
    ld d, b
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    ld a, a
    or b
    or h
    xor b
    or e
    and h
    ld c, [hl]
    xor a
    xor [hl]
    xor a
    or h
    xor e
    and b
    or c
    ld a, a
    and b
    xor h
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    xor [hl]
    xor e
    and e
    and h
    or c
    ld a, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    add sp, $50
    sub d
    add a
    add h
    adc e
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    rst $30
    ld bc, $0762
    adc b
    or e
    ld a, a
    and l
    xor b
    or c
    xor h
    xor e
    cp b
    ld a, a
    xor a
    xor e
    and b
    xor l
    or e
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and l
    and h
    and h
    or e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld d, b
    or d
    and a
    xor [hl]
    xor [hl]
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor c
    and h
    or e
    or d
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    and b
    and d
    xor d
    add sp, $50
    sub [hl]
    adc [hl]
    sub c
    adc h
    ld d, b
    ld h, h
    nop
    inc a
    nop
    adc b
    or e
    ld a, a
    and d
    or c
    and b
    or [hl]
    xor e
    or d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld c, [hl]
    and l
    xor [hl]
    xor e
    xor b
    and b
    and [hl]
    and h
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    and b
    xor h
    xor [hl]
    or h
    and l
    xor e
    and b
    and [hl]
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld d, b
    and b
    xor h
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and b
    or c
    and h
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
    and d
    xor [hl]
    xor e
    xor [hl]
    or c
    ld c, [hl]
    and b
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $50
    add d
    adc [hl]
    add d
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    call z, $dc00
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor a
    or c
    and h
    db $e3
    ld c, [hl]
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    and e
    ld a, a
    and l
    xor [hl]
    or c
    xor h
    add sp, $7f
    add b
    or e
    ld c, [hl]
    or e
    and a
    xor b
    or d
    ld a, a
    or d
    or e
    and b
    and [hl]
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld d, b
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    and a
    and b
    or c
    and e
    and h
    xor l
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
    or c
    and h
    xor h
    and b
    xor b
    xor l
    or d
    ld a, a
    xor h
    xor [hl]
    or e
    xor b
    xor [hl]
    xor l
    xor e
    and h
    or d
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and b
    or l
    xor [hl]
    xor b
    and e
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    add c
    sub h
    sub e
    sub e
    add h
    sub c
    add l
    adc e
    sbc b
    ld d, b
    inc sp
    ld bc, $02c6
    adc b
    or e
    ld a, a
    and l
    xor e
    xor b
    or e
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    db $f4
    ld c, [hl]
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
    and a
    xor [hl]
    xor l
    and h
    cp b
    add sp, $50
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, [hl]
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and l
    cp b
    ld a, a
    and e
    xor b
    or d
    or e
    and b
    xor l
    or e
    ld c, [hl]
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and c
    xor e
    xor [hl]
    xor [hl]
    xor h
    add sp, $50
    add a
    add b
    adc b
    sub c
    sbc b
    ld a, a
    add c
    sub h
    add [hl]
    ld d, b
    ld h, h
    nop
    ld b, [hl]
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    and b
    or c
    and c
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    xor [hl]
    xor a
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    and h
    or d
    ld c, [hl]
    and b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    add sp, $50
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or a
    xor b
    and d
    ld c, [hl]
    and c
    and b
    or c
    and c
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld c, [hl]
    xor b
    or e
    or d
    and h
    xor e
    and l
    add sp, $50
    add d
    adc [hl]
    add d
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ret z

    nop
    call c, $8d00
    and h
    and b
    or c
    xor e
    cp b
    ld a, a
    xor b
    xor l
    and d
    and b
    xor a
    and b
    and c
    xor e
    and h
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    xor h
    and h
    xor l
    or e
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor e
    and h
    and b
    xor l
    or d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld d, b
    or d
    or e
    xor [hl]
    or h
    or e
    ld a, a
    or e
    or c
    and h
    and h
    or d
    ld a, a
    or [hl]
    and a
    xor b
    xor e
    and h
    ld c, [hl]
    or [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    add sp, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    add c
    add h
    add h
    ld d, b
    cpl
    ld bc, $028a
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    or d
    and a
    and b
    or c
    xor a
    db $f4
    ld c, [hl]
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    xor [hl]
    or h
    or d
    ld a, a
    or d
    or e
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    ld a, a
    xor a
    or c
    and h
    cp b
    db $f4
    ld d, b
    or e
    and a
    and h
    xor l
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or l
    xor b
    and d
    or e
    xor b
    xor h
    ld a, a
    and c
    and b
    and d
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor l
    and h
    or d
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and l
    xor [hl]
    xor [hl]
    and e
    add sp, $50
    sub e
    adc b
    adc l
    sbc b
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    ld h, h
    nop
    jr z, jr_060_5d08

jr_060_5d08:
    adc b
    or e
    ld a, a
    or c
    and b
    xor a
    xor b
    and e
    xor e
    cp b
    ld a, a
    and l
    xor e
    and b
    xor a
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    or [hl]
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    and [hl]
    or c
    and b
    or d
    or d
    db $f4
    ld a, a
    or d
    or e
    xor b
    or c
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    ld d, b
    and b
    ld a, a
    and e
    or h
    or d
    or e
    ld a, a
    and d
    xor e
    xor [hl]
    or h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    and e
    or c
    xor b
    or l
    and h
    or d
    ld a, a
    xor b
    xor l
    or d
    and h
    and d
    or e
    ld a, a
    xor a
    or c
    and h
    cp b
    ld c, [hl]
    xor [hl]
    or h
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
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    add sp, $50
    add c
    adc b
    sub c
    add e
    ld d, b
    inc sp
    ld bc, $0294
    adc b
    or e
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    xor e
    cp b
    ld a, a
    and l
    xor e
    xor b
    and h
    or d
    ld a, a
    xor b
    xor l
    ld c, [hl]
    and b
    ld a, a
    and d
    xor b
    or c
    and d
    or h
    xor e
    and b
    or c
    ld a, a
    xor a
    and b
    or e
    db $e3
    ld c, [hl]
    or e
    and h
    or c
    xor l
    db $f4
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    and a
    and h
    ld d, b
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    xor d
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, [hl]
    or d
    and a
    and b
    or c
    xor a
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    xor [hl]
    or h
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, [hl]
    xor a
    or c
    and h
    cp b
    add sp, $50
    add c
    adc b
    sub c
    add e
    ld d, b
    sbc e
    ld bc, $0366
    adc b
    or e
    or d
    ld a, a
    xor [hl]
    or h
    or e
    or d
    or e
    and b
    xor l
    and e
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or l
    xor b
    or d
    xor b
    xor [hl]
    xor l
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    or d
    xor a
    xor [hl]
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
    ld d, b
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, [hl]
    or [hl]
    and a
    xor b
    xor e
    and h
    ld a, a
    and l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or e
    ld c, [hl]
    ld sp, hl
    ld sp, hl
    or $f6
    ld a, a
    and l
    and h
    and h
    or e
    add sp, $50
    sub c
    add b
    sub e
    ld d, b
    ld h, h
    nop
    ld d, b
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a84e
    xor h
    xor a
    or c
    and h
    or d
    or d
    xor b
    or l
    and h
    ld a, a
    or l
    xor b
    or e
    and b
    xor e
    db $e3
    ld c, [hl]
    xor b
    or e
    cp b
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld d, b
    xor e
    xor b
    or l
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
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor h
    or h
    xor e
    or e
    xor b
    xor a
    xor e
    xor b
    and h
    or d
    ld c, [hl]
    or l
    and h
    or c
    cp b
    ld a, a
    or b
    or h
    xor b
    and d
    xor d
    xor e
    cp b
    add sp, $50
    sub c
    add b
    sub e
    ld d, b
    call z, $9a00
    ld bc, $a793
    and h
    ld a, a
    or [hl]
    and h
    and c
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and a
    xor b
    xor l
    and e
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld a, a
    and h
    xor l
    and b
    and c
    xor e
    and h
    ld c, [hl]
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    or c
    xor [hl]
    or d
    or d
    ld d, b
    or c
    xor b
    or l
    and h
    or c
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    or d
    and h
    and b
    or c
    and d
    and a
    db $e3
    ld c, [hl]
    and h
    or d
    ld a, a
    or [hl]
    xor b
    and e
    and h
    ld a, a
    and b
    or c
    and h
    and b
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld c, [hl]
    and l
    xor [hl]
    xor [hl]
    and e
    add sp, $50
    sub e
    adc b
    adc l
    sbc b
    ld a, a
    add c
    adc b
    sub c
    add e
    ld d, b
    ld h, h
    nop
    jr z, jr_060_5f11

jr_060_5f11:
    sub e
    xor [hl]
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or e
    and h
    or c
    or c
    xor b
    or e
    xor [hl]
    or c
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and l
    xor e
    xor b
    and h
    or d
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld d, b
    and d
    and h
    and b
    or d
    and h
    xor e
    and h
    or d
    or d
    xor e
    cp b
    db $f4
    ld c, [hl]
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and a
    xor b
    and [hl]
    and a
    db $e3
    ld c, [hl]
    xor a
    xor b
    or e
    and d
    and a
    and h
    and e
    ld a, a
    and d
    or c
    xor b
    and h
    or d
    add sp, $50
    add c
    add h
    add b
    adc d
    ld d, b
    scf
    ld bc, $0348
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    and c
    and h
    and b
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $7f
    adc b
    or e
    ld c, [hl]
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    or d
    or h
    or c
    xor a
    or c
    xor b
    or d
    xor b
    xor l
    and [hl]
    xor e
    cp b
    ld d, b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    or c
    and h
    and b
    and d
    and a
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld c, [hl]
    xor h
    or h
    or d
    or e
    ld a, a
    and c
    and h
    ld a, a
    or e
    or c
    and h
    and b
    or e
    and h
    and e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and d
    and b
    or h
    or e
    xor b
    xor [hl]
    xor l
    add sp, $50
    sub d
    adc l
    add b
    adc d
    add h
    ld d, b
    ld e, a
    ld [bc], a
    sub [hl]
    nop
    adc b
    or e
    ld a, a
    and l
    xor e
    or h
    or e
    or e
    and h
    or c
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or e
    xor b
    xor a
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    xor [hl]
    xor l
    and [hl]
    or h
    and h
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    xor d
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld d, b
    or d
    and d
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor a
    or c
    and h
    cp b
    db $f4
    ld c, [hl]
    or e
    and a
    and h
    xor l
    ld a, a
    or d
    or [hl]
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    or d
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    xor a
    or c
    and h
    cp b
    ld a, a
    or [hl]
    and a
    xor [hl]
    xor e
    and h
    add sp, $50
    add d
    adc [hl]
    add c
    sub c
    add b
    ld d, b
    ld d, d
    inc b
    sub [hl]
    dec b
    sub e
    xor [hl]
    ld a, a
    xor b
    xor l
    or e
    xor b
    xor h
    xor b
    and e
    and b
    or e
    and h
    ld c, [hl]
    and l
    xor [hl]
    and h
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or d
    xor a
    or c
    and h
    and b
    and e
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and d
    and a
    and h
    or d
    or e
    ld a, a
    or [hl]
    xor b
    and e
    and h
    ld a, a
    and b
    xor l
    and e
    ld d, b
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    and h
    and h
    or c
    xor b
    and h
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    or d
    ld c, [hl]
    and c
    cp b
    ld a, a
    and h
    or a
    xor a
    and h
    xor e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor b
    or c
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor h
    xor [hl]
    or h
    or e
    and a
    add sp, $50
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ld l, b
    nop
    add d
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    xor l
    and [hl]
    and h
    or c
    db $e3
    ld c, [hl]
    and h
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor h
    xor h
    and h
    and e
    xor b
    and b
    or e
    and h
    xor e
    cp b
    ld c, [hl]
    and e
    xor b
    or d
    and d
    and a
    and b
    or c
    and [hl]
    and h
    or d
    ld a, a
    or e
    and a
    and h
    ld d, b
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld a, a
    or d
    or e
    xor [hl]
    or c
    and h
    and e
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    or h
    and d
    and a
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and d
    and a
    and h
    and h
    xor d
    or d
    add sp, $50
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    rst $08
    nop
    sub h
    ld [bc], a
    adc b
    and l
    ld a, a
    xor b
    or e
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
    ld c, [hl]
    xor a
    xor [hl]
    or h
    and d
    and a
    and h
    or d
    ld a, a
    or c
    or h
    xor l
    ld a, a
    and h
    xor h
    xor a
    or e
    cp b
    db $f4
    ld c, [hl]
    xor b
    or e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and b
    xor b
    xor e
    ld d, b
    or e
    xor [hl]
    ld a, a
    and [hl]
    and b
    or e
    and a
    and h
    or c
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    db $e3
    ld c, [hl]
    and d
    xor b
    or e
    cp b
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
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
    add sp, $50
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    ret z

    nop
    inc b
    ld bc, $b388
    ld a, a
    xor a
    or c
    and h
    and l
    and h
    or c
    or d
    ld a, a
    and e
    or c
    cp b
    db $f4
    ld c, [hl]
    or d
    and b
    xor l
    and e
    cp b
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    or d
    ld c, [hl]
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld d, b
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld c, [hl]
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    or c
    and h
    and b
    or e
    and h
    xor l
    and h
    and e
    add sp, $50
    adc h
    adc [hl]
    sub h
    sub d
    add h
    ld d, b
    cpl
    ld bc, $028a
    add b
    and e
    and h
    xor a
    or e
    ld a, a
    and b
    or e
    ld a, a
    and d
    xor e
    xor b
    xor h
    and c
    xor b
    xor l
    and [hl]
    ld c, [hl]
    or e
    or c
    and h
    and h
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    or d
    ld c, [hl]
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    or d
    xor a
    xor b
    xor l
    cp b
    ld a, a
    and c
    and b
    xor e
    xor e
    db $f4
    ld d, b
    or e
    and a
    and h
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    and b
    and c
    xor [hl]
    or l
    and h
    add sp, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld l, b
    nop
    sub [hl]
    nop
    sub d
    xor h
    and b
    xor e
    xor e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, [hl]
    and e
    xor [hl]
    and d
    xor b
    xor e
    and h
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor a
    or c
    xor [hl]
    db $e3
    ld c, [hl]
    or e
    and h
    and d
    or e
    or d
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, b
    xor b
    or e
    or d
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    db $f4
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    db $e3
    ld c, [hl]
    xor [hl]
    or h
    or d
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    add sp, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    rst $08
    nop
    cp b
    ld bc, $b388
    ld a, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and e
    xor [hl]
    and d
    xor b
    xor e
    and h
    ld c, [hl]
    xor l
    and b
    or e
    or h
    or c
    and h
    add sp, $7f
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    or e
    and a
    or c
    and h
    and b
    or e
    and h
    xor l
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, b
    and b
    or e
    or e
    and b
    and d
    xor d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    or d
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    and c
    and b
    or c
    and c
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
    ld c, [hl]
    and b
    xor e
    xor e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    add sp, $50
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    sub e
    ld bc, $0528
    sub e
    and a
    and h
    ld a, a
    and a
    and b
    or c
    and e
    ld a, a
    or d
    and d
    and b
    xor e
    and h
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    or d
    and h
    or c
    or l
    and h
    ld d, b
    and b
    or d
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
    ld c, [hl]
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    and b
    xor l
    cp b
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    add sp, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    ld l, h
    nop
    ret z

    nop
    adc b
    or e
    ld a, a
    and d
    xor [hl]
    xor l
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor e
    and b
    or c
    and [hl]
    and h
    ld c, [hl]
    and h
    and b
    or c
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld d, b
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
    ld a, a
    xor b
    xor l
    ld c, [hl]
    xor [hl]
    or c
    and e
    and h
    or c
    ld a, a
    or e
    xor [hl]
    ld a, a
    and e
    and h
    or e
    and h
    and d
    or e
    ld c, [hl]
    and e
    and b
    xor l
    and [hl]
    and h
    or c
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
    add sp, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    adc a
    adc b
    adc l
    ld d, b
    db $d3
    nop
    xor [hl]
    ld bc, $b388
    ld a, a
    xor b
    or d
    ld a, a
    and h
    and b
    or d
    xor b
    xor e
    cp b
    ld c, [hl]
    and b
    and [hl]
    xor b
    or e
    and b
    or e
    and h
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or h
    or d
    and h
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and a
    xor [hl]
    or c
    xor l
    ld a, a
    and l
    xor [hl]
    or c
    ld d, b
    xor [hl]
    and l
    and l
    and h
    xor l
    or d
    and h
    ld a, a
    and b
    or d
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    ld a, a
    and b
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    xor b
    and d
    and h
    or d
    ld a, a
    and b
    xor l
    ld c, [hl]
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    or c
    add sp, $50
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    sub a
    ld bc, $055a
    adc b
    or e
    ld a, a
    or h
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or e
    and a
    xor b
    and d
    xor d
    ld c, [hl]
    and b
    or c
    xor h
    or d
    db $f4
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld a, a
    and b
    xor l
    and e
    ld c, [hl]
    or e
    and b
    xor b
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    ld d, b
    and l
    xor [hl]
    or c
    and d
    and h
    and l
    or h
    xor e
    xor e
    cp b
    add sp, $7f
    adc h
    and h
    xor e
    and h
    and h
    ld c, [hl]
    and d
    xor [hl]
    xor h
    and c
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or d
    xor a
    and h
    and d
    xor b
    and b
    xor e
    or e
    cp b
    add sp, $50
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    ret z

    nop
    xor d
    nop
    sub e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    or c
    and b
    or c
    and h
    xor e
    cp b
    ld c, [hl]
    or d
    and h
    and h
    xor l
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld c, [hl]
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
    or d
    xor a
    xor [hl]
    or e
    db $f4
    ld d, b
    and l
    xor [hl]
    or c
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or c
    and h
    and b
    or d
    xor [hl]
    xor l
    db $f4
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    ld c, [hl]
    and l
    or h
    xor e
    xor e
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    xor l
    add sp, $50
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    sub e
    ld bc, $0370
    sub d
    and b
    xor b
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor e
    xor b
    or l
    and h
    ld a, a
    xor b
    xor l
    ld c, [hl]
    or b
    or h
    xor b
    and h
    or e
    db $f4
    ld a, a
    or c
    and h
    xor h
    xor [hl]
    or e
    and h
    ld c, [hl]
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    or d
    db $f4
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, b
    or e
    cp b
    xor a
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    and b
    xor b
    or c
    cp b
    ld a, a
    and a
    and b
    or d
    ld c, [hl]
    and b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    or l
    and h
    or c
    or d
    xor b
    xor [hl]
    xor l
    ld c, [hl]
    or e
    xor [hl]
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and h
    and h
    xor l
    add sp, $50
    add l
    adc [hl]
    sub a
    ld d, b
    ret z

    nop
    call c, $8000
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld c, [hl]
    xor e
    and b
    or c
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    xor b
    or e
    or d
    ld a, a
    or d
    xor b
    or a
    ld c, [hl]
    or [hl]
    and b
    or c
    xor h
    ld a, a
    or e
    and b
    xor b
    xor e
    or d
    ld a, a
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    ld d, b
    xor h
    xor [hl]
    or c
    and h
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
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    xor e
    or h
    or a
    or h
    or c
    db $e3
    ld c, [hl]
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    and d
    xor [hl]
    and b
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    or h
    or c
    add sp, $50
    add l
    adc [hl]
    sub a
    ld d, b
    inc sp
    ld bc, $01b8
    adc b
    or e
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
    ld a, a
    xor e
    xor b
    or l
    and h
    ld c, [hl]
    and b
    ld a, a
    or e
    and a
    xor [hl]
    or h
    or d
    and b
    xor l
    and e
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    db $f4
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and h
    and b
    and d
    and a
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld d, b
    or e
    and b
    xor b
    xor e
    or d
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    xor [hl]
    and b
    and e
    and h
    and e
    ld c, [hl]
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or d
    or h
    xor a
    and h
    or c
    xor l
    and b
    or e
    or h
    or c
    and b
    xor e
    ld c, [hl]
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    or d
    add sp, $50
    add c
    add b
    adc e
    adc e
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    ld l, h
    nop
    ld a, b
    nop
    adc b
    or e
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    or d
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and d
    or h
    or e
    and h
    ld c, [hl]
    and h
    cp b
    and h
    or d
    ld a, a
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or d
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and b
    ld c, [hl]
    or d
    xor [hl]
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    or h
    xor e
    xor e
    and b
    and c
    cp b
    add sp, $50
    adc b
    or e
    or d
    ld a, a
    and [hl]
    and h
    xor l
    or e
    xor e
    and h
    ld a, a
    or d
    xor [hl]
    xor l
    and [hl]
    ld c, [hl]
    xor a
    or h
    or e
    or d
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
    ld c, [hl]
    and a
    and h
    and b
    or c
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    xor e
    and h
    and h
    xor a
    add sp, $50
    add c
    add b
    adc e
    adc e
    adc [hl]
    adc [hl]
    adc l
    ld d, b
    cpl
    ld bc, HeaderLogo
    sub e
    and a
    and h
    ld a, a
    or c
    xor b
    and d
    and a
    db $f4
    ld a, a
    and l
    xor e
    or h
    and l
    and l
    cp b
    ld c, [hl]
    and l
    or h
    or c
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and d
    xor [hl]
    or l
    and h
    or c
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and c
    xor [hl]
    and e
    cp b
    ld a, a
    and l
    and h
    and h
    xor e
    or d
    ld a, a
    or d
    xor [hl]
    ld d, b
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld c, [hl]
    or [hl]
    and a
    xor [hl]
    ld a, a
    and l
    and h
    and h
    xor e
    or d
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, [hl]
    or d
    or e
    xor [hl]
    xor a
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    add sp, $50
    add c
    add b
    sub e
    ld d, b
    rst $08
    nop
    xor d
    nop
    add e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and [hl]
    and b
    or e
    and a
    and h
    or c
    or d
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, [hl]
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and a
    and b
    xor l
    and [hl]
    or d
    ld d, b
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
    and h
    xor b
    xor e
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or l
    and h
    or d
    add sp, $50
    add c
    add b
    sub e
    ld d, b
    rst $30
    ld bc, $04ba
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    xor a
    xor e
    or h
    xor l
    and [hl]
    and h
    or d
    ld c, [hl]
    xor b
    or e
    or d
    ld a, a
    and l
    and b
    xor l
    and [hl]
    or d
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor a
    or c
    and h
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    xor l
    or d
    or e
    and b
    xor l
    or e
    xor e
    cp b
    ld d, b
    and e
    or c
    and b
    or [hl]
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and [hl]
    or h
    xor e
    xor a
    or d
    ld c, [hl]
    and e
    xor [hl]
    or [hl]
    xor l
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
    ld a, a
    or e
    and h
    xor l
    ld c, [hl]
    xor [hl]
    or h
    xor l
    and d
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and c
    xor e
    xor [hl]
    xor [hl]
    and e
    add sp, $50
    sub [hl]
    add h
    add h
    add e
    ld d, b
    ld l, h
    nop
    ld a, b
    nop
    add e
    or h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and e
    and b
    cp b
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    or e
    and b
    cp b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor e
    and e
    ld c, [hl]
    or h
    xor l
    and e
    and h
    or c
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or e
    xor [hl]
    ld d, b
    and b
    or l
    xor [hl]
    xor b
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    add sp, $4e
    adc b
    or e
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    or d
    ld a, a
    and c
    cp b
    ld a, a
    and c
    and b
    or e
    and a
    db $e3
    ld c, [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    xor [hl]
    xor [hl]
    xor l
    xor e
    xor b
    and [hl]
    and a
    or e
    add sp, $50
    sub [hl]
    add h
    add h
    add e
    ld d, b
    rst $08
    nop
    cp [hl]
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    xor h
    and h
    xor e
    xor e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and e
    or c
    xor [hl]
    xor [hl]
    xor e
    db $e3
    xor e
    xor b
    xor d
    and h
    ld a, a
    or d
    cp b
    or c
    or h
    xor a
    ld c, [hl]
    and b
    xor l
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor [hl]
    xor e
    xor e
    and h
    xor l
    ld a, a
    xor [hl]
    xor l
    ld d, b
    xor b
    or e
    or d
    ld a, a
    xor a
    and h
    or e
    and b
    xor e
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld c, [hl]
    and c
    and b
    and e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, [hl]
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    or d
    ld a, a
    and l
    and b
    xor b
    xor l
    or e
    add sp, $50
    add l
    adc e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, b
    scf
    ld bc, $019a
    add c
    cp b
    ld a, a
    or d
    and a
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    xor b
    and [hl]
    ld c, [hl]
    xor a
    and h
    or e
    and b
    xor e
    or d
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or d
    and d
    and b
    or e
    db $e3
    ld c, [hl]
    or e
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    or a
    xor b
    and d
    ld a, a
    xor a
    xor [hl]
    xor e
    xor e
    and h
    xor l
    ld d, b
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    xor b
    or c
    db $f4
    ld c, [hl]
    or e
    or h
    or c
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    xor b
    or c
    ld c, [hl]
    cp b
    and h
    xor e
    xor e
    xor [hl]
    or [hl]
    add sp, $50
    adc h
    sub h
    sub d
    add a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    ld h, h
    nop
    ld a, b
    nop
    sub e
    and a
    and h
    ld a, a
    or e
    xor [hl]
    and d
    and a
    or h
    xor d
    and b
    or d
    xor [hl]
    ld c, [hl]
    and [hl]
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
    or e
    and a
    xor b
    or d
    ld c, [hl]
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $a17f
    and b
    and d
    xor d
    ld d, b
    xor [hl]
    or c
    and e
    and h
    or c
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or e
    xor [hl]
    ld c, [hl]
    and h
    or a
    or e
    or c
    and b
    and d
    or e
    ld a, a
    xor c
    or h
    xor b
    and d
    and h
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, [hl]
    or e
    or c
    and h
    and h
    ld a, a
    or e
    or c
    or h
    xor l
    xor d
    or d
    add sp, $50
    adc h
    sub h
    sub d
    add a
    sub c
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    cpl
    ld bc, $028a
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    call nc, $ab4e
    and h
    and l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and h
    or a
    or e
    or c
    and b
    and d
    or e
    ld c, [hl]
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    and [hl]
    db $f4
    ld a, a
    or e
    and a
    and h
    ld d, b
    xor h
    or h
    or d
    and a
    or c
    xor [hl]
    xor [hl]
    xor h
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and b
    and d
    xor d
    ld a, a
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    or d
    xor a
    xor [hl]
    or c
    and h
    or d
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    or h
    and [hl]
    call nc, $a47f
    and [hl]
    and [hl]
    add sp, $50
    adc b
    adc l
    sub d
    add h
    add d
    sub e
    ld d, b
    cpl
    ld bc, $0294
    sub e
    and a
    and h
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    ld a, a
    and c
    or h
    and [hl]
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    and h
    and b
    or e
    or d
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld c, [hl]
    and b
    or e
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor b
    or e
    ld d, b
    or d
    xor e
    and h
    and h
    xor a
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    and a
    xor [hl]
    xor e
    and h
    ld c, [hl]
    xor b
    xor l
    ld a, a
    and b
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    or h
    xor l
    or e
    xor b
    xor e
    ld c, [hl]
    xor l
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and l
    and b
    xor e
    xor e
    or d
    add sp, $50
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    adc h
    adc [hl]
    sub e
    add a
    ld d, b
    sbc e
    ld bc, $0118
    sub e
    and a
    and h
    ld a, a
    or d
    and d
    and b
    xor e
    and h
    or d
    ld a, a
    xor b
    or e
    ld c, [hl]
    or d
    and d
    and b
    or e
    or e
    and h
    or c
    or d
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld c, [hl]
    xor a
    and b
    or c
    and b
    xor e
    cp b
    cp c
    and h
    ld a, a
    and b
    xor l
    cp b
    xor [hl]
    xor l
    and h
    ld d, b
    or [hl]
    and a
    xor [hl]
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    and h
    or d
    ld a, a
    or e
    and a
    and h
    xor h
    db $f4
    ld c, [hl]
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor a
    and h
    or c
    or d
    xor [hl]
    xor l
    ld c, [hl]
    or h
    xor l
    and b
    and c
    xor e
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    xor l
    and e
    add sp, $50
    adc h
    adc [hl]
    adc e
    add h
    ld d, b
    ld [$1400], sp
    nop
    adc b
    or e
    ld a, a
    and e
    xor b
    and [hl]
    or d
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    db $e3
    ld c, [hl]
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and a
    and h
    or [hl]
    or d
    ld c, [hl]
    xor [hl]
    xor l
    ld a, a
    or e
    or c
    and h
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    or e
    or d
    db $f4
    ld d, b
    or d
    or e
    xor b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and a
    and h
    and b
    and e
    ld c, [hl]
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or d
    or h
    xor l
    ld a, a
    xor b
    or d
    xor l
    push de
    ld a, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    add sp, $50
    adc h
    adc [hl]
    adc e
    add h
    ld d, b
    call z, $da00
    ld [bc], a
    sub e
    and a
    and h
    or d
    and h
    ld a, a
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    ld c, [hl]
    or e
    or c
    xor b
    xor a
    xor e
    and h
    or e
    or d
    ld a, a
    and e
    xor b
    and [hl]
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, [hl]
    db $fc
    or $7f
    xor h
    xor b
    xor e
    and h
    or d
    ld a, a
    and c
    and h
    xor e
    xor [hl]
    or [hl]
    ld a, a
    or d
    and h
    and b
    ld d, b
    xor e
    and h
    or l
    and h
    xor e
    add sp, $7f
    adc l
    xor [hl]
    ld a, a
    xor [hl]
    xor l
    and h
    ld c, [hl]
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor b
    or e
    call nc, $ab4e
    xor b
    xor d
    and h
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $50
    sub d
    add d
    sub c
    add b
    sub e
    add d
    add a
    add d
    add b
    sub e
    ld d, b
    ld l, b
    nop
    ld e, d
    nop
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld c, [hl]
    or e
    and a
    and b
    or e
    ld a, a
    or d
    xor a
    and b
    or c
    xor d
    xor e
    and h
    add sp, $7f
    sub [hl]
    and a
    and h
    xor l
    ld c, [hl]
    xor b
    or e
    ld a, a
    or d
    and h
    and h
    or d
    ld a, a
    and b
    ld a, a
    or d
    and a
    xor b
    xor l
    cp b
    ld d, b
    xor [hl]
    and c
    xor c
    and h
    and d
    or e
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor e
    and e
    ld c, [hl]
    and d
    xor [hl]
    xor b
    xor l
    ld a, a
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
    ld c, [hl]
    or d
    and a
    xor b
    xor l
    and h
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $50
    add d
    adc e
    add b
    sub d
    sub d
    sbc b
    ld a, a
    add d
    add b
    sub e
    ld d, b
    cpl
    ld bc, $02c6
    add c
    and h
    and a
    xor b
    xor l
    and e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor e
    xor b
    or e
    and a
    and h
    db $f4
    ld c, [hl]
    and h
    xor e
    and h
    and [hl]
    and b
    xor l
    or e
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and b
    xor l
    and d
    and h
    ld c, [hl]
    xor e
    xor b
    and h
    or d
    ld a, a
    and b
    ld a, a
    and c
    and b
    or c
    and c
    and b
    or c
    xor b
    and d
    ld d, b
    or d
    xor b
    and e
    and h
    add sp, $7f
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    or e
    and h
    and b
    or c
    ld c, [hl]
    and b
    xor a
    and b
    or c
    or e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor a
    or c
    and h
    cp b
    ld a, a
    xor [hl]
    xor l
    ld c, [hl]
    and b
    ld a, a
    xor h
    and h
    or c
    and h
    ld a, a
    or [hl]
    and a
    xor b
    xor h
    add sp, $50
    add e
    sub h
    add d
    adc d
    ld d, b
    rst $08
    nop
    xor [hl]
    ld bc, $a793
    and h
    ld a, a
    xor [hl]
    xor l
    xor e
    cp b
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    xor b
    or e
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor a
    or d
    cp b
    db $e3
    ld c, [hl]
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
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld d, b
    xor b
    or e
    or d
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
    and c
    or c
    and b
    xor b
    xor l
    ld c, [hl]
    and d
    and h
    xor e
    xor e
    or d
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
    ld c, [hl]
    or [hl]
    and b
    xor d
    and h
    add sp, $50
    add e
    sub h
    add d
    adc d
    ld d, b
    ei
    ld bc, $069a
    adc b
    or e
    ld a, a
    or d
    or [hl]
    xor b
    xor h
    or d
    ld a, a
    and [hl]
    or c
    and b
    and d
    and h
    db $e3
    ld c, [hl]
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld c, [hl]
    or b
    or h
    xor b
    and h
    or e
    db $f4
    ld a, a
    or d
    xor e
    xor [hl]
    or [hl]
    db $e3
    xor h
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld d, b
    or c
    xor b
    or l
    and h
    or c
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    and b
    xor d
    and h
    or d
    ld c, [hl]
    xor [hl]
    and l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld c, [hl]
    and l
    xor [hl]
    xor l
    and e
    add sp, $50
    adc a
    adc b
    add [hl]
    ld a, a
    adc h
    adc [hl]
    adc l
    adc d
    add h
    sbc b
    ld d, b
    ld l, h
    nop
    ld l, h
    ld [bc], a
    adc b
    or e
    ld a, a
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor a
    or d
    ld c, [hl]
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or e
    or c
    and h
    and h
    or e
    xor [hl]
    xor a
    or d
    add sp, $4e
    adc b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    or d
    ld a, a
    or d
    xor b
    and [hl]
    and a
    or e
    ld d, b
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor a
    db $f4
    ld a, a
    xor b
    or e
    ld c, [hl]
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    xor b
    xor l
    and l
    or h
    or c
    xor b
    and b
    or e
    and h
    and e
    ld c, [hl]
    and c
    cp b
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor e
    xor [hl]
    xor l
    and h
    xor e
    xor b
    xor l
    and h
    or d
    or d
    add sp, $50
    adc a
    adc b
    add [hl]
    ld a, a
    adc h
    adc [hl]
    adc l
    adc d
    add h
    sbc b
    ld d, b
    cpl
    ld bc, $02c6
    adc b
    or e
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    or h
    xor a
    ld c, [hl]
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
    xor h
    and b
    xor d
    and h
    or d
    ld c, [hl]
    xor b
    or e
    ld a, a
    xor h
    and b
    and e
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
    xor b
    or e
    ld d, b
    and a
    and b
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    or d
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld c, [hl]
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
    and h
    xor l
    and e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor e
    and e
    add sp, $50
    adc a
    sub h
    adc a
    adc a
    sbc b
    ld d, b
    call z, $a400
    ld bc, $b388
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    or c
    xor [hl]
    xor e
    or d
    ld a, a
    and b
    ld a, a
    and c
    xor b
    and [hl]
    ld c, [hl]
    or e
    and h
    or c
    or c
    xor b
    or e
    xor [hl]
    or c
    cp b
    add sp, $7f
    adc b
    and l
    ld a, a
    xor b
    or e
    ld c, [hl]
    and e
    and h
    or e
    and h
    and d
    or e
    or d
    ld a, a
    and b
    xor l
    ld a, a
    or h
    xor l
    xor d
    xor l
    xor [hl]
    or [hl]
    xor l
    ld d, b
    or d
    xor h
    and h
    xor e
    xor e
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    or c
    xor [hl]
    and b
    or c
    or d
    ld c, [hl]
    xor e
    xor [hl]
    or h
    and e
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor [hl]
    or c
    and d
    and h
    ld c, [hl]
    xor [hl]
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor b
    xor l
    or e
    or c
    or h
    and e
    and h
    or c
    add sp, $50
    adc e
    add h
    add [hl]
    add h
    adc l
    add e
    add b
    sub c
    sbc b
    ld d, b
    ld e, e
    ld [bc], a
    ld e, h
    dec c
    add b
    xor l
    ld a, a
    and b
    xor l
    and d
    xor b
    and h
    xor l
    or e
    ld a, a
    xor a
    xor b
    and d
    or e
    or h
    or c
    and h
    ld c, [hl]
    or d
    and d
    or c
    xor [hl]
    xor e
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld c, [hl]
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld d, b
    and b
    or e
    or e
    or c
    and b
    and d
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor h
    xor [hl]
    or l
    and h
    xor h
    and h
    xor l
    or e
    ld a, a
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    or c
    and b
    xor l
    ld c, [hl]
    or e
    and a
    or c
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor a
    or c
    and b
    xor b
    or c
    xor b
    and h
    or d
    add sp, $50
    sub e
    add b
    add e
    adc a
    adc [hl]
    adc e
    add h
    ld d, b
    ret z

    nop
    ld c, $01
    sub e
    and a
    and h
    ld a, a
    or d
    or [hl]
    xor b
    or c
    xor e
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    and h
    xor e
    xor e
    cp b
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    xor b
    xor l
    or d
    xor b
    and e
    and h
    or d
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    xor b
    xor l
    and [hl]
    ld d, b
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
    or d
    xor d
    xor b
    xor l
    add sp, $4e
    adc b
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    or d
    ld a, a
    and d
    xor e
    and h
    and b
    or c
    and h
    or c
    ld c, [hl]
    and b
    and l
    or e
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    and h
    and b
    or e
    or d
    add sp, $50
    sub e
    add b
    add e
    adc a
    adc [hl]
    adc e
    add h
    ld d, b
    cpl
    ld bc, $01b8
    sub e
    and a
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld c, [hl]
    or d
    xor d
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    db $e3
    ld c, [hl]
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    xor a
    or c
    and h
    and l
    and h
    or c
    or d
    ld a, a
    or e
    xor [hl]
    ld d, b
    xor e
    xor b
    or l
    and h
    ld a, a
    or h
    xor l
    and e
    and h
    or c
    or [hl]
    and b
    or e
    and h
    or c
    ld c, [hl]
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld c, [hl]
    xor e
    and h
    or d
    or d
    ld a, a
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    add sp, $50
    sub e
    add b
    add e
    adc a
    adc [hl]
    adc e
    add h
    ld d, b
    sub e
    ld bc, $04a6
    adc b
    or e
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or h
    or d
    and h
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    or [hl]
    and h
    xor e
    xor e
    db $e3
    and e
    and h
    or l
    and h
    xor e
    xor [hl]
    xor a
    and h
    and e
    ld c, [hl]
    and b
    or c
    xor h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    xor e
    and h
    and [hl]
    or d
    ld a, a
    or e
    xor [hl]
    ld d, b
    or c
    or h
    xor l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    or c
    and l
    and b
    and d
    and h
    ld c, [hl]
    xor [hl]
    and l
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
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    ld c, [hl]
    or d
    xor a
    xor e
    xor b
    or e
    ld a, a
    or d
    and h
    and d
    xor [hl]
    xor l
    and e
    add sp, $50
    adc a
    sub d
    adc b
    ld d, b
    db $d3
    nop
    xor [hl]
    ld bc, $b388
    ld a, a
    and a
    cp b
    xor a
    xor l
    xor [hl]
    or e
    xor b
    cp c
    and h
    or d
    ld c, [hl]
    xor b
    or e
    or d
    and h
    xor e
    and l
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
    or e
    ld c, [hl]
    and d
    and b
    xor l
    ld a, a
    or e
    and h
    xor e
    and h
    xor a
    xor [hl]
    or c
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld d, b
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    or d
    and h
    xor l
    or d
    and h
    or d
    ld c, [hl]
    and e
    and b
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, [hl]
    xor b
    and l
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    add sp, $50
    adc a
    sub d
    adc b
    ld d, b
    sub e
    ld bc, $04e2
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld a, a
    and d
    xor e
    xor [hl]
    or d
    and h
    or d
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and h
    cp b
    and h
    or d
    db $f4
    ld a, a
    or e
    or [hl]
    xor b
    and d
    and h
    ld a, a
    and b
    or d
    ld c, [hl]
    xor h
    and b
    xor l
    cp b
    ld a, a
    and b
    xor e
    xor a
    and a
    and b
    ld a, a
    xor a
    and b
    or c
    or e
    xor b
    db $e3
    ld d, b
    and d
    xor e
    and h
    or d
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    xor [hl]
    and l
    ld c, [hl]
    or e
    and a
    and h
    ld a, a
    or d
    or h
    or c
    and l
    and b
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld c, [hl]
    and c
    xor [hl]
    and e
    cp b
    add sp, $50
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
