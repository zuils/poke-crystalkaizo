; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06a", ROMX[$4000], BANK[$6a]

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
    ld [hl], $41
    nop
    ld [hl-], a
    halt
    sub b
    ld a, a
    ld c, [hl]
    nop
    db $76
    ld [bc], a
    ld [bc], a
    ld b, a
    ld c, h
    inc [hl]
    ld b, c
    ld d, h
    ld c, c
    halt
    inc bc
    ld l, c
    ld [bc], a
    call nc, Call_06a_4740
    ld c, h
    ld a, $41
    ld d, h
    ld c, c
    ld [hl], b
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    ldh [rLCDC], a
    ld [hl], c
    ld b, a
    ld c, h
    ld e, [hl]
    ld b, c
    ld d, h
    ld c, c
    rrca
    dec a
    nop
    sub c
    ld a, a
    ld c, [hl]
    nop
    db $76
    ld [bc], a
    ld [bc], a
    ld b, a
    ld c, h
    inc [hl]
    ld b, c
    ld d, h
    ld c, c
    halt
    inc bc
    ld l, c
    ld [bc], a
    reti


    ld b, b
    halt
    ld bc, $4c47
    ld a, $41
    ld d, h
    ld c, c
    ld [hl], b
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    and $40
    ld [hl], c
    ld b, a
    ld c, h
    ld e, [hl]
    ld b, c
    ld d, h
    ld c, c
    rrca
    dec a
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $0040
    add hl, bc
    sub l
    ld b, b
    ld sp, $001f
    add hl, bc
    adc a
    ld b, b
    ld sp, $001a
    add hl, bc
    adc c
    ld b, b
    ld c, h
    rst $30
    ld b, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    call nz, Call_06a_5441
    ld c, c
    sub c
    ld c, h
    ld a, [c]
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld [hl], $42
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld [hl], h
    ld b, d
    ld b, a
    ld c, h
    and [hl]
    ld b, d
    ld d, h
    ld c, c
    db $76
    inc b
    ld [bc], a
    ld b, a
    ld c, h
    call Call_06a_5442
    ld c, c
    ld [hl], b
    nop
    inc b
    ld l, c
    nop
    db $ed
    ld b, b
    ld [hl], c
    adc e
    dec b
    db $76
    inc b
    nop
    adc e
    dec b
    add l
    ld b, c
    nop
    ld l, c
    nop
    ldh a, [rLCDC]
    ld l, c
    inc b
    push af
    ld b, b
    sub c
    ld d, e
    add sp, $42
    ld d, e
    jr z, jr_06a_4111

    ld d, e
    ld [hl-], a
    ld b, e
    ld d, e
    ld b, b
    ld b, e
    ld c, $0e
    ld c, $0e
    ld b, a
    ld c, $0e
    ld c, $0e
    ld c, $00
    ld b, a
    rrca
    rrca
    rrca
    rrca
    ld [bc], a
    ld b, a
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [bc], a
    ld b, a
    ld bc, $470c
    ld bc, $303b
    ld a, [hl-]
    ld b, a
    rrca
    ld b, a
    nop
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld c, a
    xor b
    or d
    ld a, a
    xor b
    xor h
    xor a
    or c
    and h
    or d

jr_06a_4111:
    or d
    xor b
    or l
    and h
    rst $20
    ld d, c
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    xor b
    or e
    ld a, a
    and l
    xor [hl]
    or c
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
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, a
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
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    and $57
    nop
    adc b
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    and [hl]
    xor [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor c
    or h
    xor h
    xor a
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
    and b
    or d
    or d
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld c, a
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
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    add sp, $57
    nop
    adc [hl]
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
    xor b
    or d
    ld a, a
    and b
    and e
    xor [hl]
    or c
    and b
    and c
    xor e
    and h
    rst $20
    ld d, l
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    rst $20
    ld d, a
    nop
    add a
    xor b
    db $f4
    ld a, a
    inc d
    rst $20
    ld c, a
    adc e
    and h
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $51
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
    xor e
    xor e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and b
    or c
    and h
    ld a, a
    xor e
    and h
    and b
    or l
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add d
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor h
    xor [hl]
    xor h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld a, a
    or e
    xor [hl]
    ld d, c
    xor e
    and h
    or e
    ld a, a
    and a
    and h
    or c
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and e
    xor [hl]
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    sbc b
    xor [hl]
    db $f4
    ld a, a
    ld d, d
    rst $20
    ld d, c
    adc b
    ld a, a
    and a
    and h
    and b
    or c
    ld a, a
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    ld c, a
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
    or d
    xor [hl]
    xor h
    and h
    ld d, l
    xor l
    and h
    or [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    ld d, [hl]
    ld d, c
    sub d
    xor [hl]
    ld a, a
    or e
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
    ld c, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld a, a
    add h
    adc e
    adc h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    adc e
    add b
    add c
    ld [hl], l
    ld d, a
    nop
    ld [hl], l
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
    and $57
    nop
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
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    sub [hl]
    xor b
    xor l
    and e
    or d
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    adc l
    and h
    or [hl]
    ld d, l
    add c
    and h
    and [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    add c
    xor e
    xor [hl]
    or [hl]
    ld d, a
    nop
    ld d, d
    call nc, $877f
    xor [hl]
    or h
    or d
    and h
    ld d, a
    nop
    add h
    adc e
    adc h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc e
    add b
    add c
    ld d, a
    nop
    add h
    adc e
    adc h
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
    inc b
    inc bc
    ld b, $01
    jr jr_06a_435a

    dec b
    dec c
    ld bc, $0618

jr_06a_435a:
    dec bc
    inc bc
    ld bc, $0818
    dec c
    dec bc
    ld bc, $0918
    ld [bc], a
    nop
    ld [$0001], sp
    ld d, $40
    nop
    nop
    nop
    add hl, bc
    ld bc, $4100
    ld b, b
    nop
    nop
    inc b
    ld [$0008], sp
    ret z

    ld b, b
    dec b
    dec bc
    nop
    bit 0, b
    inc bc
    inc bc
    nop
    adc $40
    dec c
    add hl, bc
    nop
    pop de
    ld b, b
    inc bc
    add hl, hl
    inc c
    ld a, [bc]
    inc bc
    ld bc, $ffff
    nop
    nop
    ld l, a
    ld b, b
    rst $38
    rst $38
    ld a, [hl-]
    dec c
    db $10
    inc b
    db $10
    rst $38
    rst $38
    and b
    nop
    sbc e
    ld b, b
    rst $38
    rst $38
    inc b
    ld b, $07
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    sbc [hl]
    ld b, b
    cp l
    ld b, $00
    ld bc, $b705
    ld b, e
    ld [hl], $43
    nop
    sub b
    ld l, c
    ld [bc], a
    ld h, l
    ld b, h
    ld l, e
    ld b, a
    ld c, h
    ld [hl], e
    ld b, h
    ld c, [hl]
    ld [$43d1], sp
    inc bc
    bit 0, e
    ld c, h
    xor h
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    bit 0, h
    ld d, h
    ld c, c
    ld a, a
    ld de, $7000
    ld [bc], a
    nop
    ld l, c
    ld [bc], a
    ld a, [hl+]
    ld b, h
    halt
    ld bc, $0269
    ld h, l
    ld b, h
    ld [hl], c
    rrca
    dec a
    nop
    ld b, a
    ld c, h
    ld sp, hl
    ld b, h
    ld d, h
    ld c, c
    ld l, c
    ld [bc], a
    ld h, l
    ld b, h
    ld l, c
    ld [bc], a
    ld h, e
    ld b, h
    add l
    rra
    nop
    ld l, [hl]
    ld [bc], a
    ld [hl-], a
    rlc [hl]
    add [hl]
    sub c
    ld d, c
    add hl, hl
    ld b, l
    ld d, c
    sub e
    ld b, l
    ld d, c
    rst $28
    ld b, l
    ld d, c
    ld h, l
    ld b, [hl]
    ld d, e
    or d
    ld b, [hl]
    ld d, e
    call c, Call_06a_5346
    inc h
    ld b, a
    ld d, e
    ld c, l
    ld b, a
    inc c
    stop
    inc c
    ld de, $3e00
    ld bc, $0120
    sbc e
    add hl, bc
    or b
    nop
    db $10
    db $10
    stop
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $1303
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc bc
    nop
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    stop
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $1303
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc bc
    nop
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0011
    ld b, a
    dec c
    ld b, a
    nop
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    ld b, a
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld c, a
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    or c
    and h
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    and $51
    add c
    and b
    or e
    or e
    xor e
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
    db $f4
    ld c, a
    or [hl]
    xor b
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor b
    and e
    and $57
    nop
    adc [hl]
    xor [hl]
    and a
    db $f4
    ld a, a
    xor e
    and b
    ld a, a
    xor e
    and b
    rst $20
    ld c, a
    sub l
    and h
    or c
    cp b
    ld a, a
    xor b
    xor l
    and e
    and h
    and h
    and e
    ld a, a
    xor l
    xor b
    and d
    and h
    rst $20
    ld d, a
    nop
    adc b
    or d
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or d
    xor [hl]
    and $7f
    sub e
    and a
    and h
    xor l
    ld c, a
    or d
    or e
    or h
    and e
    cp b
    ld a, a
    or d
    and a
    and b
    xor e
    xor e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, l
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
    add a
    and h
    or c
    and h
    db $f4
    ld a, a
    or e
    and h
    and b
    and d
    and a
    and h
    or c
    ld a, a
    adc b
    ld c, a
    and b
    xor h
    add sp, $7f
    add [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor b
    or e
    ld a, a
    xor b
    or d
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or d
    or e
    or h
    and e
    cp b
    ld a, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
    add [hl]
    and a
    xor [hl]
    or d
    or e
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    or c
    or h
    xor h
    xor [hl]
    or c
    and h
    and e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    ld a, a
    xor b
    xor l
    ld d, l
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    add sp, $51
    sub e
    and a
    and h
    cp b
    ld a, a
    or d
    and b
    xor b
    and e
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld d, c
    and a
    and b
    and e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    and h
    and l
    and l
    and h
    and d
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and [hl]
    and a
    xor [hl]
    or d
    or e
    or d
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
    and $51
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
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
    and a
    and h
    or c
    and h
    db $f4
    ld d, c
    cp b
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
    and b
    and e
    cp b
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    or c
    xor b
    xor h
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
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
    db $f4
    ld a, a
    and l
    or c
    xor [hl]
    xor h
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
    ld d, c
    add [hl]
    sbc b
    adc h
    db $f4
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    and l
    xor b
    xor l
    and h
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    rst $20
    ld d, c
    add a
    and h
    ld a, a
    xor b
    xor l
    and a
    and h
    or c
    xor b
    or e
    and h
    and e
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
    call nc, $a67f
    cp b
    xor h
    ld a, a
    and b
    xor l
    and e
    ld d, c
    and a
    and b
    or d
    ld a, a
    and e
    xor [hl]
    xor l
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
    xor c
    xor [hl]
    and c
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
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld a, a
    and b
    ld a, a
    or [hl]
    xor b
    and [hl]
    and [hl]
    xor e
    cp b
    ld c, a
    or e
    or c
    and h
    and h
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
    adc b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    or h
    and d
    and a
    ld a, a
    xor b
    or e
    db $f4
    ld c, a
    xor b
    or e
    ld a, a
    or d
    or b
    or h
    xor b
    or c
    xor h
    or d
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and e
    and b
    xor l
    and d
    and h
    or d
    rst $20
    ld a, a
    add d
    xor [hl]
    xor [hl]
    xor e
    rst $20
    ld d, a
    nop
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
    ld c, a
    adc l
    xor [hl]
    or d
    or e
    and b
    xor e
    and [hl]
    xor b
    and d
    ld a, a
    sub d
    and d
    and h
    xor l
    or e
    or d
    ld d, a
    nop
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
    add l
    add b
    adc e
    adc d
    adc l
    add h
    sub c
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add h
    xor e
    and h
    and [hl]
    and b
    xor l
    or e
    ld a, a
    adc h
    and b
    or d
    or e
    and h
    or c
    ld c, a
    xor [hl]
    and l
    ld a, a
    add l
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, a
    nop
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    add h
    sub c
    ld d, c
    add h
    or a
    xor a
    and h
    or c
    xor b
    and h
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and h

Call_06a_4740:
    ld c, a
    sub [hl]
    and b
    cp b
    ld a, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, a
    nop
    add h
    add b
    sub c
    adc e
    ldh [$92], a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    add b
    add d
    add b
    add e
    add h
    adc h
    sbc b
    ld d, a
    nop
    nop
    add hl, bc
    ld de, $0209
    ld a, [bc]
    ld b, $11
    ld [de], a
    ld bc, $070a
    ld de, $011e
    ld a, [bc]
    ld [$030f], sp
    ld bc, $090a
    add hl, de
    rra
    ld bc, $0a0a
    dec e
    dec d
    ld bc, $0b0a
    dec b
    rla
    ld bc, $0103
    jr @+$29

    ld bc, $0b1a
    add hl, de
    daa
    ld [bc], a
    ld a, [de]
    dec bc
    nop
    rlca
    inc d
    jr jr_06a_4797

jr_06a_4797:
    rrca
    ld b, h
    ld de, $000f
    ld [de], a
    ld b, h
    ld [$0018], sp
    dec d
    ld b, h
    ld de, $001b
    jr jr_06a_47ec

    add hl, de
    jr nz, jr_06a_47ab

jr_06a_47ab:
    dec de
    ld b, h
    ld de, $000a
    ld e, $44
    ld c, $25
    rlca
    daa
    ld b, h
    ld [$143a], sp
    ld de, $0003
    rst $38
    rst $38
    and b
    nop
    cp e
    ld b, e
    jp z, $2806

    jr nz, jr_06a_47e8

    ld [bc], a
    ld [hl+], a
    rst $38
    rst $38
    and b
    nop
    inc bc
    ld b, h
    rst $38
    rst $38
    dec hl
    ld [de], a
    inc e
    ld [bc], a
    ld hl, $ffff
    add b
    nop
    ld b, $44
    rst $38
    rst $38
    cpl
    jr jr_06a_47f7

    dec b
    ld bc, $ffff
    nop
    nop

jr_06a_47e8:
    add hl, bc
    ld b, h
    rst $38
    rst $38

jr_06a_47ec:
    daa
    ld d, $09
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    inc c
    ld b, h

jr_06a_47f7:
    rst $38
    rst $38
    ld e, l
    ld hl, $0112
    nop
    rst $38
    rst $38
    nop
    nop
    dec h
    ld b, h
    rst $38
    rst $38
    ld d, h
    dec b
    ld [$0001], sp
    rst $38
    rst $38
    ld bc, $2100
    ld b, h
    ld b, e
    ld b, $54
    add hl, bc
    daa
    ld bc, $ff00
    rst $38
    ld bc, $2300
    ld b, h
    ld b, h
    ld b, $02
    dec l
    ld c, b
    nop
    nop
    ld l, $48
    nop
    nop
    ld bc, $2f05
    ld c, b
    sub c
    sub c
    ld [hl], $47
    nop
    sub b
    halt
    ld [bc], a
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    add l
    rra
    nop
    ld l, a
    dec b
    add [hl]
    ld l, c
    dec b
    jp nc, Jump_06a_7f48

    rra
    nop
    ld b, a
    ld c, h
    ld a, [$5448]
    ld c, c
    ld l, c
    nop
    db $f4
    ld c, b
    halt
    inc bc
    ld l, c
    dec b
    db $db
    ld c, b
    inc d
    ld bc, $056e
    rrca
    dec a
    nop
    ld l, l
    dec b
    ld sp, $5e0f
    nop
    sub c
    halt
    ld [bc], a
    ld [hl], l
    nop
    nop
    rrca
    rrca
    ld l, d
    nop
    adc e
    rrca
    add l
    rra
    nop
    ld l, a
    dec b
    add [hl]
    ld l, c
    dec b
    sub $48
    ld a, a
    rra
    nop
    ld b, a
    ld c, h
    ld a, [$5448]
    ld c, c
    ld l, c
    nop
    rst $30
    ld c, b
    halt
    inc bc
    ld l, c
    dec b
    add sp, $48
    ld l, [hl]
    dec b
    inc d
    ld bc, $3d0f
    nop
    ld l, l
    dec b
    ld sp, $5e0f
    nop
    sub c
    ld d, c
    ld e, b
    ld c, d
    ld l, e
    ld b, a
    rla
    ld [bc], a
    ld b, $00
    or h
    ld c, b
    ld c, h
    inc b
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld b, c
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld [hl], c
    ld c, e
    ld d, e
    ret nc

    ld c, e
    ld d, e
    nop
    ld c, h
    ld d, e
    dec e
    ld c, h
    ld d, e
    ld h, b
    ld c, h
    ld d, e
    sbc c
    ld c, h
    inc c
    stop
    inc c
    ld de, $0c00
    rrca
    rrca
    ld b, a
    inc c
    inc c
    rrca
    rrca
    ld b, a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld b, a
    rrca
    rrca
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
    inc c
    ld bc, $0d47
    nop
    ld b, a
    nop
    ld [hl], l
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $51
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
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor a
    and b
    xor l
    xor b
    and d
    add sp, $7f
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld d, c
    and c
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or [hl]
    xor b
    xor h
    xor a
    or d
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $51
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
    or [hl]
    and h
    and b
    xor d
    db $e3
    ld c, a
    xor e
    xor b
    xor l
    and [hl]
    or d
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and d
    xor b
    or e
    cp b
    call nc, $8651
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
    or d
    xor l
    push de
    ld c, a
    and a
    and h
    or c
    and h
    add sp, $51
    sub d
    or h
    xor a
    xor a
    xor [hl]
    or d
    and h
    and e
    xor e
    cp b
    ld a, a
    or e
    and b
    xor d
    xor b
    xor l
    and [hl]
    ld c, a
    and d
    and b
    or c
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    and b
    ld a, a
    or d
    xor b
    and d
    xor d
    ld d, c
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
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
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld a, a
    add c
    xor [hl]
    xor [hl]
    db $e3
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld c, a
    adc c
    or h
    or d
    or e
    ld a, a
    xor e
    and h
    or e
    ld a, a
    or d
    xor b
    and d
    xor d
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and [hl]
    xor [hl]
    rst $20
    ld d, c
    add b
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
    ld a, a
    xor b
    or d
    ld d, l
    or [hl]
    xor [hl]
    or c
    or e
    and a
    xor e
    and h
    or d
    or d
    rst $20
    ld d, c
    sub [hl]
    and a
    cp b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    xor [hl]
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
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
    and $51
    sub [hl]
    and a
    xor [hl]
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    or d
    add sp, $7f
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld c, a
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
    ld a, a
    and c
    xor b
    or e
    ld d, l
    xor e
    and h
    or d
    or d
    ld a, a
    or [hl]
    and h
    and b
    xor d
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor d
    ld a, a
    or c
    xor [hl]
    and b
    and e
    or d
    ld a, a
    and b
    or c
    and h
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
    and b
    or e
    ld d, l
    xor l
    xor b
    and [hl]
    and a
    or e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    xor b
    or e
    and d
    and a
    db $e3
    ld c, a
    and c
    xor e
    and b
    and d
    xor d
    ld a, a
    xor [hl]
    and l
    ld a, a
    xor l
    xor b
    and [hl]
    and a
    or e
    db $f4
    ld d, c
    or e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    xor b
    or d
    ld a, a
    and h
    or l
    and h
    xor l
    ld c, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or e
    or c
    and h
    and b
    and d
    and a
    and h
    or c
    xor [hl]
    or h
    or d
    rst $20
    ld d, c
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
    and c
    and h
    and b
    and d
    xor [hl]
    xor l
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
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
    ld d, c
    or e
    xor [hl]
    ld a, a
    and [hl]
    or h
    xor b
    and e
    and h
    ld a, a
    xor b
    or e
    db $f4
    ld a, a
    xor l
    xor [hl]
    ld c, a
    or d
    and a
    xor b
    xor a
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or d
    and b
    xor b
    xor e
    add sp, $57
    nop
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
    cp b
    xor [hl]
    or h
    ld c, a
    and a
    and b
    or l
    and h
    db $e3
    db $e3
    xor b
    or e
    call nc, $a07f
    ld a, a
    ld d, h
    db $e3
    ld d, l
    add [hl]
    add h
    add b
    sub c
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $7f
    sub [hl]
    xor [hl]
    or [hl]
    db $f4
    ld d, l
    or e
    and a
    and b
    or e
    call nc, $a27f
    xor [hl]
    xor [hl]
    xor e
    add sp, $57
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
    and a
    and b
    or l
    and h
    ld a, a
    and b
    ld c, a
    ld d, h
    add e
    add h
    sub a
    rst $20
    ld d, c
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    or d
    xor [hl]
    ld c, a
    and b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    or d
    and h
    and b
    ld a, a
    xor b
    or d
    ld a, a
    or d
    or [hl]
    and h
    and h
    or e
    rst $20
    ld d, c
    sub d
    or h
    xor l
    or d
    and h
    or e
    or d
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
    ld c, a
    and b
    or c
    and h
    ld a, a
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
    ld d, c
    sub d
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
    and h
    rst $20
    ld a, a
    ld c, a
    sbc b
    xor [hl]
    db $e3
    and a
    xor [hl]
    rst $20
    ld a, a
    add c
    xor e
    xor [hl]
    or [hl]
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor h
    and b
    xor l
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld [hl], l
    ld d, a
    nop
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
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc a
    xor [hl]
    or c
    or e
    ld a, a
    add d
    xor e
    xor [hl]
    or d
    and h
    or d
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    add l
    xor [hl]
    or c
    and h
    xor b
    and [hl]
    xor l
    ld a, a
    adc e
    and b
    xor l
    and e
    or d
    ld d, a
    nop
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    adc l
    add h
    ld a, a
    adc a
    adc [hl]
    sub c
    sub e
    ld c, a
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
    adc a
    adc b
    add h
    sub c
    ld d, a
    nop
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
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub d
    or e
    and h
    and h
    xor e

Jump_06a_4c4d:
    db $e3
    add d
    xor e
    and b
    and e
    ld c, a
    add e
    and h
    and l

Jump_06a_4c56:
    and h
    xor l
    or d
    and h
    ld a, a
    add [hl]
    xor b
    or c
    xor e
    ld d, a
    nop
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
    ld c, a
    add b
    xor e
    or d
    xor [hl]
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
    or e
    and a
    and h
    ld d, l
    add [hl]
    adc e
    adc b
    sub e
    sub e
    add h
    sub c
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
    add b
    add a
    add h
    add b
    add e
    ld c, a
    adc [hl]
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    adc l
    xor [hl]
    or [hl]
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
    ld a, a
    add b
    add a
    add h
    add b
    add e
    ld d, a
    nop
    nop
    dec bc
    dec d
    dec c
    ld bc, $0101
    dec bc
    ld a, [bc]
    ld bc, $0201
    dec bc
    add hl, de
    ld bc, $0301
    add hl, bc
    rrca
    ld bc, $0401
    dec bc
    dec e
    ld bc, $0501
    rrca
    rrca
    ld bc, $0601
    dec d
    rlca
    ld bc, $0816
    ld de, $0213
    ld bc, $1b08
    dec e
    ld bc, $2a03
    dec de
    inc de
    ld bc, $080f
    dec de
    inc d
    ld [bc], a
    rrca
    ld [$0002], sp
    inc c
    dec c
    nop
    inc sp
    ld c, b
    nop
    nop
    nop
    dec c
    dec c
    nop
    ld l, e
    ld c, b
    nop
    nop
    rlca
    dec bc
    ld de, $bd00
    ld c, b
    jr @+$16

    nop
    ret nz

    ld c, b
    dec bc
    rlca
    nop
    jp $1c48


    ld e, $00
    add $48
    rla
    inc bc
    nop
    ret


    ld c, b
    dec d
    ld c, $00
    call z, $1148
    inc d
    nop
    rst $08
    ld c, b
    inc b
    ld c, c
    jr jr_06a_4d5c

    inc b
    db $10
    rst $38
    rst $38
    nop
    nop
    and e
    ld c, b
    rst $38
    rst $38
    ld h, [hl]
    ld de, $0318
    nop
    rst $38
    rst $38
    add b
    nop
    and [hl]
    ld c, b
    rst $38
    rst $38
    ld c, c
    add hl, de
    dec d
    ld [bc], a

jr_06a_4d5c:
    ld de, $ffff
    nop
    nop
    cp d
    ld c, b
    rst $38
    rst $38
    push af
    rrca
    ld c, $06
    nop
    rst $38
    rst $38
    nop
    nop
    rst $28
    ld h, $c3
    ld b, $00
    ld bc, $7702
    ld c, l
    inc e
    dec bc
    ld b, $00
    add b
    ld c, l
    ld l, [hl]
    ld b, $90
    ld l, a
    ld b, $90
    ld h, l
    inc b
    dec a
    ld [bc], a
    ld [de], a
    ld c, [hl]
    dec sp
    ld c, [hl]
    nop
    nop
    adc a
    ld c, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld h, d
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld h, l
    inc b
    dec a
    inc bc
    sbc h
    ld c, [hl]
    push bc
    ld c, [hl]
    nop
    nop
    and e
    ld c, l
    ld h, [hl]
    ld b, a
    ld c, h
    db $ec
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld a, $04
    inc [hl]
    dec b
    dec de
    ld c, a
    ld h, l
    ld c, a
    nop
    nop
    or a
    ld c, l
    ld h, [hl]
    ld b, a
    ld c, h
    add b
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0069
    add hl, bc
    ld a, [$1c4d]
    dec bc
    rlca
    nop
    nop
    ld c, [hl]
    ld sp, $0068
    add hl, bc
    jp c, Jump_06a_4c4d

    ret z

    ld c, a
    ld d, l
    inc sp
    ld l, b
    nop
    inc [hl]
    ld h, e
    nop
    add hl, bc
    rst $20
    ld c, l
    ld c, h
    inc b
    ld d, b
    ld d, l
    inc bc
    db $eb
    ld c, l
    ld c, h
    cpl
    ld d, b
    ld d, l
    sbc [hl]
    ld l, h
    ld bc, $fe08
    ld c, l
    inc sp
    ld l, c
    nop
    ld c, h
    ld e, d
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $fc
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld l, [hl]
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld d, e
    sub a
    ld d, c
    sbc e
    ld de, $129b
    sbc e
    inc de
    xor c
    nop
    ccf
    nop
    add b
    adc l
    adc l
    sbc h
    ld a, a
    add b
    adc l
    adc l
    add h
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
    xor b
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    db $e3
    ld d, l
    and [hl]
    and h
    or e
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
    add b
    adc l
    adc l
    ld a, a
    jp hl


    ld a, a
    add b
    adc l
    adc l
    add h
    sbc h
    ld a, a
    adc l
    xor l
    xor l
    ld [hl], l
    ld a, a
    add b
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
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
    add sp, $57
    nop
    add b
    adc l
    adc l
    sbc h
    ld a, a
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
    ld c, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    ld a, a
    and b
    xor l
    and e
    ld d, c
    xor h
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
    or e
    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add b
    adc l
    adc l
    add h
    sbc h
    ld a, a
    add b
    adc l
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
    xor b
    xor l
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    db $e3
    ld d, l
    and [hl]
    and h
    or e
    and a
    and h
    or c
    rst $20
    ld d, a
    nop
    add b
    adc l
    adc l
    ld a, a
    jp hl


    ld a, a
    add b
    adc l
    adc l
    add h
    sbc h
    ld a, a
    adc l
    xor l
    xor l
    ld [hl], l
    ld a, a
    add b
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
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
    add sp, $57
    nop
    add b
    adc l
    adc l
    add h
    sbc h
    ld a, a
    sub [hl]
    and h
    ld a, a
    or d
    and a
    and b
    or c
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
    and l
    and h
    and h
    xor e
    xor b
    xor l
    and [hl]
    or d
    ld a, a
    and b
    or d
    ld d, l
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
    ld a, a
    xor b
    and l
    ld a, a
    or e
    and a
    and h
    cp b
    ld a, a
    and b
    or c
    and h
    ld d, l
    and b
    or d
    xor e
    and h
    and h
    xor a
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
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld c, a
    or d
    and d
    and b
    or c
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $7f
    sub e
    and a
    and b
    or e
    call nc, $af4f
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    or d
    and b
    and e
    ld [hl], l
    ld d, a
    nop
    adc a
    or h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    xor [hl]
    or c
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    cp c
    db $e3
    ld d, l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    or c
    and h
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
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
    or d
    add sp, $57
    nop
    sub d
    sub h
    adc l
    adc l
    sbc b
    sbc h
    ld a, a
    add a
    xor b
    rst $20
    ld d, c
    adc b
    jp nc, $927f

    sub h
    adc l
    adc l
    sbc b
    ld a, a
    xor [hl]
    and l
    ld a, a
    sub d
    or h
    xor l
    db $e3
    ld c, a
    and e
    and b
    cp b
    db $f4
    ld a, a
    xor h
    and h
    and b
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or e
    call nc, $9255
    or h
    xor l
    and e
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
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
    xor e
    and e
    ld a, a
    or e
    xor [hl]
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
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld d, l
    cp b
    xor [hl]
    or h
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
    xor e
    and e
    ld a, a
    or e
    xor [hl]
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
    or e
    and a
    xor b
    or d
    ld a, a
    xor b
    and l
    ld a, a
    adc b
    ld a, a
    or d
    and b
    or [hl]
    ld d, l
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    sub d
    sub h
    adc l
    adc l
    sbc b
    sbc h
    ld a, a
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
    ld [hl], l
    ld d, c
    sub h
    xor h
    ld [hl], l
    ld d, c
    ld [hl], l
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor b
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    ld d, c
    ld [hl], l
    ld d, c
    adc [hl]
    and a
    rst $20
    ld a, a
    adc b
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
    xor l
    xor [hl]
    or [hl]
    rst $20
    ld d, c
    add b
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
    xor d
    xor l
    xor [hl]
    or [hl]
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
    ld d, c
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    ld c, a
    xor b
    or e
    add sp, $51
    adc h
    cp b
    ld a, a
    or d
    xor b
    or d
    ld a, a
    adc h
    adc [hl]
    adc l
    adc b
    add d
    add b
    ld a, a
    or d
    and b
    xor b
    and e
    ld c, a
    xor b
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
    ld d, l
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    rst $20
    ld d, a
    nop
    sub d
    sub h
    adc l
    adc l
    sbc b
    sbc h
    ld a, a
    adc h
    cp b
    ld a, a
    or d
    xor b
    or d
    or e
    and h
    or c
    or d
    ld c, a
    and b
    xor l
    and e
    ld a, a
    and c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    or d
    ld a, a
    and b
    or c
    and h
    ld d, l
    adc h
    adc [hl]
    adc l
    adc b
    add d
    add b
    db $f4
    ld a, a
    sub e
    sub h
    sub d
    add d
    add b
    adc l
    sbc b
    db $f4
    ld d, l
    sub [hl]
    add h
    sub d
    adc e
    add h
    sbc b
    db $f4
    ld a, a
    add b
    sub c
    sub e
    add a
    sub h
    sub c
    db $f4
    ld d, l
    add l
    sub c
    adc b
    add h
    add e
    add b
    ld a, a
    and b
    xor l
    and e
    ld a, a
    sub d
    add b
    adc l
    sub e
    adc [hl]
    sub d
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
    xor [hl]

Call_06a_5160:
    xor e
    and e
    and h
    or c
    ld c, a
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
    sub d
    sub h
    adc l
    adc l
    sbc b
    sbc h
    ld a, a
    adc b
    or d
    xor l
    push de
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    ld c, a
    sub d
    or h
    xor l
    and e
    and b
    cp b
    and $55
    sub h
    xor h
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    rst $20
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld sp, hl
    db $fd
    ld d, a
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    dec b
    nop
    ld b, $4e
    ld [bc], a
    inc b
    rlca
    rrca
    ld c, [hl]
    rlca
    db $f4
    ld a, [bc]
    db $10
    ld b, $00
    rst $38
    rst $38
    add d
    ld bc, $4d83
    rst $38
    rst $38
    db $f4
    ld a, [bc]
    inc d
    ld b, $00
    rst $38
    rst $38
    add d
    ld bc, $4d97
    rst $38
    rst $38
    daa
    ld b, $12
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    ld bc, $4dab
    rst $38
    rst $38
    ld e, l
    dec c
    ld c, $01
    nop
    rst $38
    rst $38
    nop
    nop
    add hl, bc
    ld c, [hl]
    rst $38
    rst $38
    dec h
    dec bc
    add hl, bc
    ld [bc], a
    ld de, $ffff
    nop
    nop
    cp a
    ld c, l
    ld e, e
    rlca
    ld e, l
    inc c
    ld a, [bc]
    ld bc, $ff00
    rst $38
    nop
    nop
    dec bc
    ld c, [hl]
    rst $38
    rst $38
    ld e, l
    dec c
    inc c
    ld bc, $ff00
    rst $38
    nop
    nop
    dec c
    ld c, [hl]
    rst $38
    rst $38
    ld [bc], a
    ld d, $52
    nop
    nop
    rla
    ld d, d
    nop
    nop
    nop
    sub c
    sub c
    ld [hl], l
    nop
    nop
    rrca
    adc e
    rrca
    add l
    inc d
    nop
    ld l, c
    ld a, [bc]
    ld d, [hl]
    ld d, e
    ld l, [hl]
    ld a, [bc]
    adc e
    ld a, [bc]
    inc d
    nop
    ld [hl-], a
    or b
    rlca
    ld [de], a
    ld a, [bc]
    inc bc
    ld bc, $5491
    inc b
    dec h
    rlca
    ld e, a
    ld d, e
    sub e
    ld d, e
    nop
    nop
    ccf
    ld d, d
    ld e, $17
    dec e
    ld h, [hl]
    ld b, a
    inc [hl]
    halt
    add hl, bc
    ld a, a
    ld d, d
    inc [hl]
    add h
    nop
    add hl, bc
    call c, $2a52
    dec e
    add hl, bc
    db $fd
    ld d, d
    ld sp, $028f
    add hl, bc
    ld l, b
    ld d, d
    ld c, h
    xor e
    ld d, e
    ld d, l
    inc sp
    adc a
    ld [bc], a
    nop
    pop af
    ld d, d
    inc bc
    ld l, e
    ld d, d
    nop
    push af
    ld d, d
    sub a
    dec e
    ld b, $01
    dec b
    ld d, e
    ld b, $02
    ld bc, $4353
    dec h
    rlca
    nop
    nop
    ld sp, hl
    ld d, d
    inc bc
    db $fd
    ld d, d
    nop
    add hl, bc
    ld d, e
    ld h, h
    sub e
    ld d, e
    nop
    nop
    add hl, de
    ld b, $da
    ld b, $03
    sbc d
    ld d, d
    ld b, $02
    and b
    ld d, d
    ld b, $01
    and [hl]
    ld d, d
    ld b, $00
    xor h
    ld d, d
    ld sp, $00cd
    add hl, bc
    db $d3
    ld d, d
    ld sp, $0044
    add hl, bc
    add $52
    ld sp, $0022
    add hl, bc
    cp c
    ld d, d
    ld e, [hl]
    dec h
    rlca
    ld e, a
    ld h, b
    dec de
    ld b, $da
    ld bc, $7635
    nop
    sub c
    ld e, [hl]
    dec h
    ld [de], a
    ld e, a
    ld h, b
    dec de
    ld b, $da
    ld [bc], a
    dec [hl]
    halt
    sub c
    ld e, [hl]
    dec h
    inc de
    ld e, a
    ld h, b
    dec de
    ld b, $da
    inc bc
    dec [hl]
    halt
    sub c
    ld e, [hl]
    dec h
    add hl, de
    ld e, a
    ld h, b
    dec [hl]
    halt
    sub c
    nop
    dec c
    ld d, e
    sbc [hl]
    jr @+$03

    ld [$52ee], sp
    dec [hl]
    add h
    nop
    inc sp
    inc bc
    ld bc, $fd03
    ld d, d
    inc bc
    ld de, $0c53
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
    jr nz, jr_06a_5310

jr_06a_5310:
    sub c
    inc c
    ld hl, $9100
    rst $20
    inc b
    ld e, $04
    ld a, h
    ld d, h
    or e
    ld d, h
    nop
    nop
    ld hl, $6653
    ld b, a
    ld c, h
    sub $54
    ld d, h
    ld c, c
    sub c
    add hl, hl
    dec b
    inc l
    ld b, $08
    ld d, h
    dec [hl]
    ld d, h
    nop
    nop
    dec [hl]
    ld d, e
    ld h, [hl]
    ld b, a
    ld c, h
    ccf
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld d, e
    scf
    ld d, l
    ld d, e
    ld e, a
    ld d, l
    ld d, e
    add b
    ld d, l

Call_06a_5346:
    ld d, e
    and c
    ld d, l
    ld [bc], a
    ld bc, $0111
    sbc e
    dec d
    sbc e
    ld d, $9b
    rla
    xor l
    nop
    rrca
    add hl, sp
    dec [hl]
    dec [hl]
    dec [hl]
    scf
    scf
    scf
    jr c, jr_06a_53a6

    nop
    adc e
    and h
    or e

Call_06a_5363:
    ld a, a
    xor h
    and h
    ld a, a
    and e
    and h
    xor h
    xor [hl]
    xor l
    or d
    or e
    or c
    and b
    or e
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
    xor [hl]
    and l
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
    adc b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and b
    or e
    and $7f
    sub e
    and a
    and b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld c, a
    or c
    xor b

jr_06a_53a6:
    and [hl]
    and a
    or e
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
    and c
    and h
    and d
    xor [hl]
    xor h
    and h
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
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    ld d, c
    or h
    or d
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
    ld c, a
    adc b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
    or e
    add sp, $51
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
    xor a
    and b
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    rst $20
    ld d, a
    nop
    add b
    and a
    db $f4
    ld a, a
    xor b
    or e
    call nc, $a67f
    xor [hl]
    xor [hl]
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and c
    and h
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    rst $20
    ld d, l
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
    and l
    or c
    and h
    and h
    rst $20
    ld d, a
    nop
    add [hl]
    and b
    and a
    and b
    and a
    and b
    and a
    rst $20
    ld d, a
    nop
    adc e

Call_06a_5441:
    xor [hl]

Call_06a_5442:
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    and h
    and h
    xor e
    or d
    ld a, a
    xor b
    xor l
    db $e3
    ld c, a
    or d
    xor b
    and [hl]
    xor l

Call_06a_5455:
    xor b
    and l
    xor b
    and d
    and b
    xor l
    or e
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    xor e
    xor [hl]

Jump_06a_5466:
    xor [hl]
    xor d
    ld a, a
    or h
    xor a
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    xor b
    and [hl]
    ld c, a
    or d
    xor d
    cp b
    rst $20
    ld d, a
    nop
    add a
    add h
    sbc b
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
    xor h
    cp b
    ld a, a
    or d
    and h
    and d
    or c
    and h
    or e
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
    rst $20
    ld a, a
    add [hl]
    and h
    or e
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    db $f4
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    xor [hl]
    or h
    or e
    or d
    xor b
    and e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and a
    and b
    or l
    and h
    ld a, a
    or h
    or d
    and h
    and e
    ld c, a
    xor h
    cp b
    ld a, a
    sub c
    add h
    sub l
    adc b
    sub l
    add h
    sub d
    add sp, -$18
    add sp, $75
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld c, a
    and b
    ld a, a
    ld d, h
    add e
    add h
    sub a
    and $51
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
    xor d
    xor l
    xor [hl]
    or [hl]
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    or c
    and b
    or c
    and h
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, c
    adc h
    and b
    cp b
    ld a, a
    adc b
    ld a, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    or d
    and h
    and h
    ld c, a
    xor b
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
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$51f8]
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

Call_06a_555c:
    sub [hl]
    adc l
    ld d, a
    nop
    adc h
    sub e
    add sp, -$74
    adc [hl]
    sub c
    sub e
    add b
    sub c
    ld d, c
    sub [hl]
    add b
    sub e
    add h
    sub c
    add l
    add b
    adc e
    adc e
    ld a, a
    add d
    add b
    sub l
    add h
    ld c, a
    adc b
    adc l
    sub d
    adc b
    add e
    add h
    ld d, a
    nop
    adc h
    sub e
    add sp, -$74
    adc [hl]
    sub c
    sub e
    add b
    sub c
    ld d, c
    sub [hl]
    add b
    sub e
    add h
    sub c
    add l
    add b
    adc e
    adc e
    ld a, a
    add d
    add b
    sub l
    add h
    ld c, a
    adc b
    adc l
    sub d
    adc b
    add e
    add h
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    ld a, [$51f8]
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
    nop
    dec b
    ld [$0300], sp
    ld [bc], a
    inc b
    add hl, bc
    nop
    inc b
    ld [bc], a
    inc b
    dec b
    ld a, [bc]
    ld bc, $3903
    add hl, bc
    inc e
    ld [bc], a
    inc bc
    add hl, sp
    rlca
    ld l, $03
    inc bc
    add hl, sp
    ld bc, $0e01
    jr jr_06a_55ea

jr_06a_55ea:
    jr jr_06a_563e

    nop
    nop
    dec b
    ld a, [bc]
    inc b
    nop
    dec a
    ld d, e
    dec b
    rlca
    nop
    ld b, b
    ld d, e
    add hl, bc
    dec l
    nop
    ld b, e
    ld d, e
    rlca
    scf
    nop
    ld b, [hl]
    ld d, e
    dec bc
    db $10
    rlca
    ld d, e
    ld d, e
    add hl, bc
    ld a, [hl-]
    ld a, [bc]
    jr c, jr_06a_5615

    nop
    rst $38
    rst $38
    and d
    ld bc, $5233
    rst $38

jr_06a_5615:
    rst $38
    dec l
    ld c, $32
    ld b, $00
    rst $38
    rst $38
    or d
    inc bc
    add hl, hl
    ld d, e
    rst $38
    rst $38
    dec hl
    ld c, $2c
    ld b, $00
    rst $38
    rst $38
    sub d
    inc bc
    dec d
    ld d, e
    rst $38
    rst $38
    ld e, l
    inc d
    rra
    ld bc, $ff00
    rst $38
    nop
    nop
    ld c, l
    ld d, e
    rst $38
    rst $38
    ld e, l

jr_06a_563e:
    inc d
    jr nz, jr_06a_5642

    nop

jr_06a_5642:
    rst $38
    rst $38
    nop
    nop
    ld c, a
    ld d, e
    rst $38
    rst $38
    ld e, l
    inc d
    ld hl, $0001
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ld d, e
    rst $38
    rst $38
    ld d, h
    ld [$010a], sp
    nop
    rst $38
    rst $38
    ld bc, $4900
    ld d, e
    or e
    ld b, $54
    inc c
    dec h
    ld bc, $ff00
    rst $38
    ld bc, $4b00
    ld d, e
    or h
    ld b, $63
    inc d
    ld e, $01
    nop
    rst $38
    rst $38
    sub b
    nop
    rst $28
    ld h, $af
    rlca
    nop
    nop
    inc h
    inc b
    ld [hl], $0b
    add hl, de
    ld e, b
    ld c, d
    ld e, b
    nop
    nop
    adc h
    ld d, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    ld d, c
    ld e, b
    ld d, h
    ld c, c
    sub c
    add a
    inc b
    dec [hl]
    ld a, [bc]
    adc a
    ld e, b
    cp e
    ld e, b
    nop
    nop
    and b
    ld d, [hl]
    ld e, $17
    inc h
    ld h, [hl]
    ld b, a
    inc [hl]
    ld a, h
    nop
    add hl, bc
    jp c, $2a56

    inc h
    add hl, bc
    ld e, e
    ld d, a
    ld sp, $029d
    add hl, bc
    jp Jump_06a_4c56


    add $58
    ld d, l
    inc sp
    sbc l
    ld [bc], a
    nop
    ld c, a
    ld d, a
    inc bc
    add $56
    nop
    ld d, e
    ld d, a
    sub a
    inc h
    ld b, $01
    ld h, e
    ld d, a
    ld b, $02
    ld e, a
    ld d, a
    ld b, e
    dec [hl]
    ld a, [bc]
    nop
    nop
    ld d, a
    ld d, a
    inc bc
    ld e, e
    ld d, a
    nop
    ld h, a
    ld d, a
    ld h, h
    cp e
    ld e, b
    nop
    nop
    add hl, de
    dec c
    jp c, $0206

    pop af
    ld d, [hl]
    ld b, $01
    rst $30
    ld d, [hl]
    ld b, $00
    db $fd
    ld d, [hl]
    ld sp, $00cd
    add hl, bc
    rla
    ld d, a
    ld sp, $0044
    add hl, bc
    ld a, [bc]
    ld d, a
    ld e, [hl]
    dec [hl]
    ld a, [bc]
    ld e, a
    ld h, b
    dec de
    dec c
    jp c, $3501

    ld a, h
    nop
    sub c
    ld e, [hl]
    dec [hl]
    ld [de], a
    ld e, a
    ld h, b
    dec de
    dec c
    jp c, $3502

    ld a, h
    nop
    sub c
    ld e, [hl]
    dec [hl]
    dec d
    ld e, a
    ld h, b
    dec [hl]
    ld a, h
    nop
    ld sp, $033b
    add hl, bc
    dec sp
    ld d, a
    ld sp, $0269
    add hl, bc
    ld a, [hl-]
    ld d, a
    nop
    ld [hl], d
    ld d, a
    sbc [hl]
    rra
    ld bc, $6b08
    ld d, a
    inc sp
    ld l, c
    ld [bc], a
    inc bc
    ld e, e
    ld d, a
    sub c
    ld b, a
    ld c, h
    daa
    ld e, c
    ld d, h
    sbc [hl]
    rra
    ld bc, $6b08
    ld d, a
    ld [hl-], a
    dec sp
    inc bc
    inc sp
    ld l, c
    ld [bc], a
    inc bc
    ld e, e
    ld d, a
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
    jr z, jr_06a_5766

jr_06a_5766:
    sub c
    inc c
    add hl, hl
    nop
    sub c
    inc sp
    dec sp
    inc bc
    inc c
    dec hl
    nop
    sub c
    inc c
    inc l
    nop
    sub c
    ld l, $05
    inc l
    dec bc
    sub e
    ld d, a
    add $57
    nop
    nop
    add d
    ld d, a
    ld h, [hl]
    ld b, a
    ld c, h
    add sp, $57
    ld d, h
    ld c, c
    sub c
    ld d, e
    cp [hl]
    ld e, c
    inc [hl]
    ld bc, $049b
    sbc e
    ld a, [bc]
    nop
    add b
    or [hl]
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld a, a
    adc b
    pop de
    xor e
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
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
    ld d, l
    xor h
    xor [hl]
    or h
    xor l
    or e
    and b
    xor b
    xor l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    rst $20
    ld d, a
    nop
    adc h
    and h
    or c
    and d
    cp b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ld a, a
    or d
    and a
    xor [hl]
    or [hl]
    and h
    and e
    ld c, a
    xor h
    and h
    ld a, a
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
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $ae7f
    or l
    and h
    or c
    add sp, $7f
    adc b
    ld a, a
    and e
    xor [hl]
    xor l
    push de
    ld c, a
    xor h
    xor b
    xor l
    and e
    add sp, $7f
    sub [hl]
    and h
    ld a, a
    add a
    adc b
    adc d
    add h
    sub c
    sub d
    ld d, l
    and b
    or c
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
    add sp, $57
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
    and c
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    and $57
    nop
    sub [hl]
    and a
    and b
    ld [hl], l
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
    ld a, a
    and c
    or h
    or e
    ld c, a
    and d
    and b
    xor h
    and h
    ld a, a
    or h
    xor a
    ld a, a
    or d
    and a
    xor [hl]
    or c
    or e
    add sp, $51
    adc l
    xor [hl]
    ld a, a
    and h
    or a
    and d
    or h
    or d
    and h
    or d
    db $e3
    db $e3
    adc b
    ld c, a
    and b
    and e
    xor h
    xor b
    or e
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    add sp, $57
    nop
    adc b
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    or e
    xor [hl]
    xor [hl]
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
    and c
    and b
    or e
    or e
    xor e
    and h
    ld c, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
    and h
    and $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    or c
    and b
    or e
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
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld c, a
    add [hl]
    sbc b
    adc h
    sub d
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, c
    xor b
    xor l
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
    add sp, $51
    adc b
    or e
    call nc, $a57f
    xor b
    xor e
    xor e
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld c, a
    xor a
    or c
    and h
    or e
    or e
    cp b
    ld a, a
    and l
    xor e
    xor [hl]
    or [hl]
    and h
    or c
    or d
    rst $20
    ld d, a
    nop
    add b
    or [hl]
    or [hl]
    ld [hl], l
    ld a, a
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
    ld c, a
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
    rst $20
    ld d, c
    adc b
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
    ld a, a
    or e
    xor [hl]
    ld c, a
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
    rst $20
    ld d, c
    add b
    xor l
    cp b
    or [hl]
    and b
    cp b
    db $f4
    ld a, a
    or e
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
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $7f
    add a
    and h
    or c
    and h
    call nc, $b34f
    and a
    and b
    or e
    ld a, a
    xor a
    or c
    and h
    or d
    and h
    xor l
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld d, l
    or e
    and a
    and h
    ld a, a
    xor [hl]
    or e
    and a
    and h
    or c
    ld a, a
    or e
    xor b
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
    ld a, [$4ffc]
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
    inc bc
    ld hl, $0107
    jr @+$0f

    ld hl, $0208
    jr @+$0f

    dec bc
    ld b, $03
    inc bc
    ld c, [hl]
    nop
    ld bc, $091b
    nop
    adc d
    ld d, a
    ld b, $2d
    db $10
    dec bc
    ld [$ff00], sp
    rst $38
    or d
    ld [bc], a
    db $76
    ld d, a
    rst $38
    rst $38
    daa
    ld d, $10
    ld [$ff00], sp
    rst $38
    and d
    ld [bc], a
    add b
    ld d, [hl]
    rst $38
    rst $38
    jr z, jr_06a_5a24

    dec b
    add hl, bc
    nop
    rst $38
    rst $38
    and d
    ld [bc], a
    sub h
    ld d, [hl]
    rst $38
    rst $38
    ld e, l
    add hl, bc
    dec bc
    ld bc, $ff00
    rst $38
    nop

jr_06a_5a24:
    nop
    adc a
    ld d, a
    rst $38
    rst $38
    ld e, l
    ld a, [bc]
    inc c
    ld bc, $ff00
    rst $38
    nop
    nop
    sub c
    ld d, a
    rst $38
    rst $38
    nop
    inc de
    inc de
    ld bc, $ff00
    rst $38
    ld bc, $8d00
    ld d, a
    cp h
    ld b, $00
    ld bc, $4805
    ld e, d
    ld [hl], $36
    nop
    sub b
    ld l, e
    ld b, a
    ld c, h
    and l
    ld e, d
    ld c, [hl]
    ld [$5a5b], sp
    ld c, h
    ld l, a
    ld e, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    or a
    ld e, e
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0775
    add hl, bc
    ld l, a
    ld e, d
    ld c, h
    ld de, $545c
    ld c, c
    sub c
    ld c, h
    ld a, [hl]
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00e0
    add hl, bc
    adc d
    ld e, d
    ld c, h
    call nz, Call_06a_555c
    sbc [hl]
    ld [$0801], a
    adc [hl]
    ld e, d
    inc sp
    ldh [rP1], a
    ld c, h
    add [hl]
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld d, c
    xor d
    ld e, l
    ld d, e
    rst $28
    ld e, l
    ld d, e
    dec de
    ld e, [hl]
    ld d, e
    ld h, b
    ld e, [hl]
    ld d, e
    sbc c
    ld e, [hl]
    inc c
    stop
    inc c
    ld de, $0000
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
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    and a
    and b
    and e
    ld a, a
    and b
    ld a, a
    and e
    xor [hl]
    or h
    and c
    xor e
    and h
    ld a, a
    or d
    and a
    xor [hl]
    or e
    ld d, c
    xor [hl]
    and l
    ld a, a
    and h
    or d
    xor a
    or c
    and h
    or d
    or d
    xor [hl]
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld c, a
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or [hl]
    xor b
    or c
    and h
    and e
    rst $20
    ld d, c
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
    or e
    and b
    xor e
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    pop de
    xor e
    ld d, l
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
    rst $20
    ld d, c
    adc b
    ld a, a
    xor h
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    xor h
    or h
    and d
    and a
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
    adc b
    ld a, a
    or [hl]
    and b
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
    ld a, a
    and b
    or e
    ld c, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add e
    xor [hl]
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
    ld a, a
    xor h
    and h
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    db $f4
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    add sp, $7f
    sbc b
    and h
    or d
    db $f4
    ld a, a
    adc b
    ld c, a
    or [hl]
    and b
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
    xor [hl]
    or h
    or e
    ld d, c
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor [hl]
    or c
    and e
    xor b
    xor l
    and b
    or c
    cp b
    db $f4
    ld c, a
    xor e
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
    rst $20
    ld d, a
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
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld c, a
    or [hl]
    and a
    and h
    xor e
    xor a
    rst $20
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
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    ld c, a
    and c
    xor b
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    adc b
    ret nc

    ld d, c
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    and b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    xor [hl]
    or c
    ld a, a
    or e
    or [hl]
    xor [hl]
    add sp, $7f
    add a
    or h
    xor h
    xor a
    and a
    rst $20
    ld d, a
    nop
    sub e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    and e
    xor b
    and e
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
    adc e
    add h
    add b
    add e
    add h
    sub c
    ld d, l
    or h
    xor l
    or e
    xor b
    xor e
    ld a, a
    or c
    and h
    and d
    and h
    xor l
    or e
    xor e
    cp b
    add sp, $51
    add b
    ld a, a
    cp b
    xor [hl]
    or h
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    adc a
    add b
    adc e
    adc e
    add h
    sub e
    ld a, a
    and c
    and h
    and d
    and b
    xor h
    and h
    ld a, a
    or e
    and a
    and h
    ld d, c
    adc e
    add h
    add b
    add e
    add h
    sub c
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    and a
    and h
    call nc, $ae4f
    and l
    or e
    and h
    xor l
    ld a, a
    and b
    or [hl]
    and b
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
    and c
    and b
    or e
    or e
    xor e
    and h
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
    and $51
    add [hl]
    xor [hl]
    xor [hl]
    and e
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
    add sp, $4f
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    sbc b
    and b
    or [hl]
    xor l
    rst $20
    ld d, c
    adc b
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
    and e
    xor [hl]
    cp c
    and h
    and e
    ld c, a
    xor [hl]
    and l
    and l
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or h
    xor l
    add sp, $51
    ld [hl], l
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    ld c, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    and b
    ld a, a
    add e
    sub c
    adc [hl]
    sub [hl]
    sbc c
    add h
    add h
    ld d, c
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    cp b
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    add sp, $4f
    sub [hl]
    and h
    xor b
    or c
    and e
    db $f4
    ld a, a
    and a
    or h
    and a
    and $51
    add a
    or h
    and a
    and $4f
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    xor b
    or d
    and $51
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
    or e
    and a
    xor b
    or d
    ld a, a
    sub e
    adc h
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
    and $51
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor a
    xor [hl]
    xor [hl]
    xor d
    cp b
    rst $20
    ld c, a
    add a
    and h
    or c
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
    ld a, a
    and a
    and b
    or l
    and h
    ld d, l
    or e
    and a
    xor b
    or d
    ld a, a
    sub e
    adc h
    add sp, $57
    nop
    sub e
    adc h
    ld a, [$7ff8]
    and d
    xor [hl]
    xor l
    or e
    and b
    xor b
    xor l
    or d
    ld c, a
    add e
    sub c
    add h
    add b
    adc h
    ld a, a
    add h
    add b
    sub e
    add h
    sub c
    ld [hl], l
    ld d, c
    ld [hl], l
    sbc c
    cp c
    cp c
    cp c
    cp c
    ld [hl], l
    ld d, a
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
    xor h
    and b
    xor l
    cp b
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    xor [hl]
    xor l
    ld d, c
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor b
    xor l
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
    add l
    adc [hl]
    sub c
    add h
    sub d
    sub e
    add sp, $57
    nop
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
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add h
    or e
    and h
    or c
    xor l
    and b
    xor e
    xor e
    cp b
    ld c, a
    add [hl]
    or c
    and h
    and h
    xor l
    ld a, a
    adc a
    and b
    or c
    and b
    and e
    xor b
    or d
    and h
    ld d, a
    nop
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
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    or c
    and h
    or d
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
    and h
    or a
    or e
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor e
    xor e
    and h
    and [hl]
    xor b
    and c
    xor e
    and h
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    add h
    adc e
    add d
    adc [hl]
    adc h
    add h
    ld a, a
    sub e
    adc [hl]
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
    db $f4
    ld d, c
    sub e
    add a
    add h
    ld a, a
    add [hl]
    add b
    sub e
    add h
    sub [hl]
    add b
    sbc b
    ld a, a
    sub e
    adc [hl]
    ld c, a
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
    add a
    adc [hl]
    sub h
    sub d
    add h
    ld d, c
    sub e
    and a
    and h
    ld a, a
    add d
    xor e
    or h
    and c
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    sub e
    xor [hl]
    xor a
    ld c, a
    sub e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    add c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld d, a
    nop
    nop
    dec b
    rlca
    jr nz, jr_06a_5ed0

    rla

jr_06a_5ed0:
    inc b
    add hl, bc
    dec d
    ld bc, $0517
    add hl, de
    ld e, $01
    rla
    ld b, $19
    inc de
    ld [bc], a
    rla
    ld [$1719], sp
    ld bc, $0917
    nop
    ld b, $11
    ld de, $9300
    ld e, d
    rlca
    dec de
    nop
    sub [hl]
    ld e, d
    ld bc, $0013
    sbc c
    ld e, d
    dec de
    rra
    nop
    sbc h
    ld e, d
    add hl, de
    jr jr_06a_5efe

jr_06a_5efe:
    sbc a
    ld e, d
    add hl, de
    inc d
    nop
    and d
    ld e, d
    inc b
    cpl
    add hl, bc
    ld d, $02
    ld [hl+], a
    rst $38
    rst $38
    nop
    nop
    ld c, h
    ld e, d
    rst $38
    rst $38
    cpl
    inc c
    ld [hl+], a
    ld b, $00
    rst $38
    rst $38
    sub b
    nop
    ld h, c
    ld e, d
    rst $38
    rst $38
    ld a, [hl-]
    ld de, $060a
    nop
    rst $38
    rst $38
    add b
    nop
    ld [hl], l
    ld e, d
    rst $38
    rst $38
    daa
    add hl, de
    dec d
    ld [bc], a
    inc sp
    rst $38
    rst $38
    and b
    nop
    sub b
    ld e, d
    rst $38
    rst $38
    nop
    ld bc, $3f05
    ld e, a
    ld [hl], $3d
    nop
    sub b
    ld d, c
    ld a, l
    ld e, a
    ld b, a
    ld c, h
    bit 3, a
    add h
    ld a, $00
    ld d, h
    ld c, c
    sub c
    ld d, c
    sbc $5f
    ld d, c
    ld b, e
    ld h, b
    ld d, c
    call c, Call_06a_5160
    dec d
    ld h, c
    ld d, c
    ld d, l
    ld h, c
    ld d, c
    cp l
    ld h, c
    ld d, c
    ld b, $63
    ld d, e
    ld b, b
    ld h, e
    ld d, e
    ld l, c
    ld h, e
    ld d, e
    xor c
    ld h, e
    ld d, e
    call nc, Call_06a_5363
    push hl
    ld h, e
    ld d, e
    jr jr_06a_5fdb

    inc c
    stop
    db $fd
    nop
    ld a, $00
    sub e
    and a
    xor b
    or d
    ld a, a
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    sub c
    add b
    sub e
    add a
    ld a, a
    xor b
    or d
    ld c, a
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
    pop de
    xor e
    ld c, a
    and h
    or l
    and h
    or c
    ld a, a
    and h
    or l
    xor [hl]
    xor e
    or l
    and h
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld a, a
    and b
    ld d, l
    and l
    or c
    xor [hl]
    and [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $57
    nop
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    sub c
    add b
    sub e
    add a
    sbc h
    ld a, a
    add d
    or c
    xor [hl]
    and b

jr_06a_5fdb:
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
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    xor e
    xor [hl]
    or e
    ld c, a
    xor h
    and b
    and d
    and a
    xor b
    xor l
    and h
    or d
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    ld [hl], l
    ld d, c
    sub [hl]
    and h
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    or d
    ld a, a
    and b
    xor e
    or d
    xor [hl]
    ld a, a
    xor a
    xor e
    and b
    cp b
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
    xor l
    xor [hl]
    or [hl]
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
    and d
    and a
    and h
    and d
    xor d
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    add [hl]
    sub c
    adc b
    adc h
    add h
    sub c
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
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    xor e
    and b
    or e
    and h
    xor e
    cp b
    add sp, $51
    sub d
    and h
    and h
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor a
    xor [hl]
    xor l
    and e
    ld a, a
    xor [hl]
    or h
    or e
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
    or e
    and a
    and h
    ld d, c
    and a
    xor [hl]
    or h
    or d
    and h
    and $7f
    add [hl]
    sub c
    adc b
    adc h
    add h
    sub c
    ld a, a
    xor e
    xor b
    or l
    and h
    ld c, a
    or e
    and a
    and h
    or c
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
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
    or e
    and a
    and h
    cp b
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
    and $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
    ld d, l
    and b
    ld a, a
    or d
    and h
    or c
    xor b
    xor [hl]
    or h
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    ld [hl], l
    ld d, a
    nop
    adc l
    xor b
    and a
    xor b
    and a
    xor b
    rst $20
    ld a, a
    sub e
    and a
    xor b
    or d
    ld a, a
    add [hl]
    sbc b
    adc h
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    or c
    and h
    and b
    or e
    rst $20
    ld a, a
    adc [hl]
    xor l
    xor e
    cp b
    ld d, c
    and [hl]
    xor b
    or c
    xor e
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    xor e
    xor e
    xor [hl]
    or [hl]
    and h
    and e
    ld c, a
    and a
    and h
    or c
    and h
    rst $20
    ld d, a
    nop
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
    and b
    ld c, a
    or d
    and h
    and d
    or c
    and h
    or e
    and $51
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    adc l
    sub d
    adc b
    adc [hl]
    adc l
    ld c, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    and a
    xor b
    and e
    and e
    and h
    xor l
    ld a, a
    and c
    and b
    and d
    xor d
    ld d, l
    and e
    xor [hl]
    xor [hl]
    or c
    add sp, $57
    nop
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    and a
    xor [hl]
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    ld c, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and h
    or d
    or e
    ld a, a
    and b
    or e
    ld d, l
    or e
    and a
    and h
    ld a, a
    or c
    and h
    or d
    or e
    and b
    or h
    or c
    and b
    xor l
    or e
    add sp, $51
    adc c
    or h
    or d
    or e
    ld a, a
    or [hl]
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
    and [hl]
    xor [hl]
    ld a, a
    and b
    or e
    ld a, a
    xor b
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
    ld d, l
    and l
    and h
    and h
    xor e
    ld a, a
    and c
    xor e
    xor [hl]
    and b
    or e
    and h
    and e
    ld [hl], l
    ld d, a
    nop
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
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
    or e
    and a
    and h
    ld a, a
    and c
    xor b
    and [hl]
    and [hl]
    and h
    or d
    or e
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and c
    and h
    or d
    or e
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
    ld c, a
    xor [hl]
    and l
    ld a, a
    xor h
    and h
    or c
    and d
    and a
    and b
    xor l
    and e
    xor b
    or d
    and h
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
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    xor b
    or e
    ld a, a
    or e
    and a
    and h
    or c
    and h
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and d
    and b
    xor l
    push de
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    xor b
    or e
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
    add sp, $51
    add [hl]
    and h
    and h
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    or d
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    xor e
    xor b
    xor d
    and h
    ld c, a
    and b
    ld a, a
    or d
    and b
    xor e
    and h
    or d
    ld a, a
    and d
    xor e
    and h
    or c
    xor d
    add sp, $57
    nop
    adc b
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
    or d
    or h
    or c
    or c
    xor [hl]
    or h
    xor l
    and e
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and b
    xor e
    xor e
    ld d, l
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
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
    or e
    or c
    or h
    and h
    ld a, a
    or e
    and a
    and b
    or e
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
    or [hl]
    and b
    or d
    ld a, a
    xor h
    and b
    and e
    and h
    ld c, a
    xor h
    or h
    and d
    and a
    db $f4
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
    and $51
    sub e
    and a
    and b
    or e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    xor l
    and h
    and b
    or e
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    xor b
    or d
    and a
    ld a, a
    or [hl]
    and h
    ld a, a
    and a
    and b
    and e
    ld a, a
    and b
    ld d, c
    xor a
    xor e
    and b
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
    and b
    or e
    ld a, a
    xor b
    xor l
    ld c, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld [hl], l
    ld d, a
    nop
    adc e
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
    or e
    and a
    and h
    ld c, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
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
    ld d, c
    or [hl]
    and b
    xor e
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor h
    and h
    ld c, a
    and e
    xor b
    cp c
    cp c
    cp b
    add sp, $57
    nop
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
    ld c, a
    sub c
    and b
    xor b
    xor l
    and c
    xor [hl]
    or [hl]
    ld a, a
    add e
    or c
    and h
    and b
    xor h
    or d
    ld d, a
    nop
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
    add h
    sub c
    adc b
    adc d
    add b
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc l
    and b
    or e
    or h
    or c
    and h
    db $e3
    adc e
    xor [hl]
    or l
    xor b
    xor l
    and [hl]
    ld c, a
    adc a
    or c
    xor b
    xor l
    and d
    and h
    or d
    or d
    ld d, a
    nop
    add l
    xor b
    xor l
    and e
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld a, a
    sbc b
    xor [hl]
    or h
    ld c, a
    adc l
    and h
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld d, l
    add e
    add h
    adc a
    sub e
    add sp, -$6e
    sub e
    adc [hl]
    sub c
    add h
    rst $20
    ld d, a
    nop
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    adc h
    add b
    adc l
    sub d
    adc b
    adc [hl]
    adc l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    adc a
    xor e
    and b
    cp b
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    add h
    or l
    and h
    or c
    cp b
    and c
    xor [hl]
    and e
    cp b
    db $e3
    db $e3
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld d, l
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
    add [hl]
    sub h
    add b
    sub c
    add e
    ld a, a
    sub d
    adc a
    add h
    add d
    add sp, $4f
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, c
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld a, a
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld c, a
    and b
    or e
    or e
    and b
    and d
    xor d
    or d
    ld a, a
    or d
    or h
    and d
    and a
    ld a, a
    and b
    or d
    ld d, l
    and l
    xor b
    or c
    and h
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or [hl]
    and b
    or e
    and h
    or c
    add sp, $51
    add [hl]
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
    ld a, a
    and b
    or e
    ld c, a
    add d
    add h
    adc e
    add b
    add e
    adc [hl]
    adc l
    ld a, a
    add e
    add h
    adc a
    sub e
    add sp, $55
    sub d
    sub e
    adc [hl]
    sub c
    add h
    rst $20
    ld d, a
    nop
    nop
    add hl, bc
    add hl, bc
    inc b
    ld bc, $0515
    add hl, bc
    db $10
    ld bc, $0c15
    ld bc, $0310
    dec d
    inc c
    ld bc, $0311
    dec d
    inc c
    add hl, bc
    dec e
    ld bc, $1115
    inc de
    ld [de], a
    ld bc, $1315
    inc de
    rla
    ld bc, $1415
    dec e
    ld a, [bc]
    ld bc, $1515
    dec e
    add hl, de
    ld bc, $1615
    nop
    ld [$1715], sp
    nop
    ld h, l
    ld e, a
    rra
    dec bc
    nop
    ld l, b
    ld e, a
    add hl, bc
    ld b, $00
    ld l, e
    ld e, a
    add hl, bc
    dec c
    nop
    ld l, [hl]
    ld e, a
    dec d
    inc de
    nop
    ld [hl], c
    ld e, a
    dec d
    dec e
    nop
    ld [hl], h
    ld e, a
    add hl, bc
    ld e, $00
    ld [hl], a
    ld e, a
    dec d
    dec h
    rlca
    ld a, d
    ld e, a
    add hl, bc
    ld a, [hl-]
    rrca
    ld e, $09
    nop
    rst $38
    rst $38
    and b
    nop
    ld b, e
    ld e, a
    rst $38
    rst $38
    adc l
    rrca
    rra
    ld d, $00
    rst $38
    rst $38
    sub b
    nop
    ld b, [hl]
    ld e, a
    rst $38
    rst $38
    add hl, hl
    inc e
    jr jr_06a_6515

    ld [bc], a
    rst $38
    rst $38
    add b
    nop

jr_06a_6515:
    ld d, b
    ld e, a
    rst $38
    rst $38
    cpl
    inc d
    ld [de], a
    ld b, $00
    rst $38
    rst $38
    or b
    nop
    ld d, e
    ld e, a
    rst $38
    rst $38
    cpl
    inc hl
    inc c
    rlca
    nop
    rst $38
    rst $38
    add b
    nop
    ld d, [hl]
    ld e, a
    rst $38
    rst $38
    daa
    ld de, $0516
    ld [bc], a
    rst $38
    rst $38
    sub b
    nop
    ld e, c
    ld e, a
    rst $38
    rst $38
    daa
    inc hl
    inc e
    rlca
    nop
    rst $38
    rst $38
    and b
    nop
    ld e, h
    ld e, a
    rst $38
    rst $38
    add hl, hl
    ld de, $020e
    ld [hl+], a
    rst $38
    rst $38
    and b
    nop
    ld e, a
    ld e, a
    rst $38
    rst $38
    jr z, jr_06a_6576

    dec bc
    inc b
    jr nz, @+$01

    rst $38
    add b
    nop
    ld h, d
    ld e, a
    rst $38
    rst $38
    nop
    nop
    or l
    dec b
    ld [hl+], a
    ld bc, $65e6
    inc b
    ld h, [hl]
    nop
    nop
    ld [hl], l
    ld h, l
    ld h, [hl]

jr_06a_6576:
    ld b, a
    ld c, h
    dec c
    ld h, [hl]
    ld d, h
    ld c, c
    sub c
    or [hl]
    dec b
    ld [hl+], a
    ld [bc], a
    ld c, e
    ld h, [hl]
    or e
    ld h, [hl]
    nop
    nop
    adc c
    ld h, l
    ld h, [hl]
    ld b, a
    ld c, h
    jp z, Jump_06a_5466

    ld c, c
    sub c
    ld l, l
    inc b
    rla
    ld [bc], a
    inc bc
    ld h, a
    dec h
    ld h, a
    nop
    nop
    sbc l
    ld h, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld b, b
    ld h, a
    ld d, h
    ld c, c
    sub c
    ld [hl], c
    inc b
    rla
    ld b, $84
    ld h, a
    sbc a
    ld h, a
    nop
    nop
    or c
    ld h, l
    ld h, [hl]
    ld b, a
    ld c, h
    cp h
    ld h, a
    ld d, h
    ld c, c
    sub c
    ld l, a
    inc b
    rla
    inc b
    pop af
    ld h, a
    inc sp
    ld l, b
    nop
    nop
    push bc
    ld h, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, d
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld [hl], h
    inc b
    rla
    add hl, bc
    ld a, d
    ld l, b
    sub l
    ld l, b
    nop
    nop
    reti


    ld h, l
    ld h, [hl]
    ld b, a
    ld c, h
    or b
    ld l, b
    ld d, h
    ld c, c
    sub c
    ld d, e
    db $e3
    ld l, b
    ld a, $01
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
    and l
    xor [hl]
    or c
    and [hl]
    xor [hl]
    or e
    or e
    and h
    xor l
    ld c, a
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
    adc d
    cp b
    and b
    and b
    and b
    and a
    rst $20
    ld d, a
    nop
    add c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    adc b
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
    or e
    and h
    and b
    and d
    and a
    and h
    or c
    db $f4
    ld a, a
    adc b
    ld a, a
    or h
    or d
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, c
    and l
    xor [hl]
    or c
    and [hl]
    and h
    or e
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
    and a
    xor b
    xor l
    and [hl]
    or d
    add sp, $57
    nop
    adc [hl]
    xor l
    ld a, a
    or d
    or h
    xor l
    xor l
    cp b
    ld a, a
    and e
    and b
    cp b
    or d
    db $f4
    ld a, a
    adc b
    ld c, a
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
    ld a, a
    or e
    and a
    and h
    ld d, c
    xor d
    xor b
    and e
    or d
    ld a, a
    or [hl]
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or c
    and b
    or e
    and a
    and h
    or c
    ld c, a
    and c
    and h
    ld a, a
    xor a
    xor e
    and b
    cp b
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
    ld d, c
    or d
    and d
    and a
    xor [hl]
    xor [hl]
    xor e
    cp b
    and b
    or c
    and e
    ld a, a
    or e
    and a
    and b
    xor l
    ld c, a
    or d
    or e
    or h
    and e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and d
    xor e
    and b
    or d
    or d
    add sp, $57
    nop
    adc b
    ld a, a
    and e
    xor b
    and e
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
    xor e
    xor [hl]
    or d
    and h
    ld [hl], l
    ld d, a
    nop
    sub d
    or e
    or h
    and e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    or d
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
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    and h
    or a
    and h
    or c
    and d
    xor b
    or d
    and h
    ld d, l
    xor b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    and b
    or d
    ld a, a
    or l
    xor b
    or e
    and b
    xor e
    add sp, $57
    nop
    add a
    and b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    add sp, $7f
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
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    xor h
    xor [hl]
    xor h
    add sp, $57
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    adc h
    xor [hl]
    xor h
    rst $20
    ld c, a
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
    adc h
    cp b
    ld a, a
    xor h
    xor [hl]
    xor h
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    xor b
    and h
    or d
    ld a, a
    or d
    xor [hl]
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
    xor h
    and h
    db $f4
    ld a, a
    adc b
    ld d, c
    and a
    and b
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    ld a, a
    and a
    and h
    or c
    ld c, a
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
    add sp, $57
    nop
    adc e
    and h
    or e
    call nc, $a17f
    and b
    or e
    or e
    xor e
    and h
    add sp, $4f
    adc b
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
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
    and e
    xor [hl]
    ld a, a
    xor h
    cp b
    ld c, a
    and a
    xor [hl]
    xor h
    and h
    or [hl]
    xor [hl]
    or c
    xor d
    rst $20
    ld d, a
    nop
    sub d
    and b
    cp b
    xor [hl]
    xor l
    and b
    or c
    and b
    rst $20
    ld a, a
    adc b
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    xor h
    cp b
    ld d, l
    adc c
    and b
    xor a
    and b
    xor l
    and h
    or d
    and h
    ld a, a
    and d
    xor e
    and b
    or d
    or d
    add sp, $57
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
    adc e
    add b
    sub l
    add h
    adc l
    add e
    add h
    sub c
    ld d, c
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
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or d
    xor [hl]
    and d
    xor b
    and b
    xor e
    ld a, a
    or d
    or e
    or h
    and e
    xor b
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
    or [hl]
    xor b
    and d
    xor d
    and h
    and e
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
    jp nc, $b37f

    xor b
    or c
    and h
    and e
    ld a, a
    xor [hl]
    and l
    ld a, a
    or [hl]
    and b
    xor e
    xor d
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld d, l
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
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    and l
    and b
    or l
    xor [hl]
    or c
    xor b
    or e
    and h
    ld a, a
    and d
    xor e
    and b
    or d
    or d
    ld c, a
    xor b
    or d
    ld a, a
    and [hl]
    cp b
    xor h
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
    ld c, a
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
    and l
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
    and b
    ld c, a
    or d
    or h
    and c
    xor c
    and h
    and d
    or e
    ld a, a
    and b
    or e
    ld a, a
    or d
    and d
    and a
    xor [hl]
    xor [hl]
    xor e
    db $f4
    ld d, l
    adc b
    ret nc

    ld a, a
    and c
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and c
    and h
    or d
    or e
    rst $20
    ld d, a
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $30
    ei
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
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    ld de, $050d
    ld [bc], a
    inc b
    ld de, $000d
    ld bc, $1309
    nop
    pop hl
    ld h, l
    rlca
    daa
    dec c
    rrca
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc b
    sub c
    ld h, l
    rst $38
    rst $38
    daa
    rrca
    ld [de], a
    rlca
    nop
    rst $38
    rst $38
    sub d
    inc bc
    and l
    ld h, l
    rst $38
    rst $38
    daa
    ld c, $22
    ld b, $00
    rst $38
    rst $38
    sub d
    inc bc
    cp c
    ld h, l
    rst $38
    rst $38
    daa
    dec c
    dec e
    ld b, $00
    rst $38
    rst $38
    sub d
    inc bc
    call $ff65
    rst $38
    add hl, hl
    rrca
    inc e
    rlca
    nop
    rst $38
    rst $38
    add d
    inc b
    ld l, c
    ld h, l
    rst $38
    rst $38
    add hl, hl
    dec bc
    dec c
    ld b, $00
    rst $38
    rst $38
    add d
    inc bc
    ld a, l
    ld h, l
    rst $38
    rst $38
    ld d, h
    ld a, [bc]
    dec h
    ld bc, $ff00
    rst $38
    ld bc, $e400
    ld h, l
    adc d
    rlca
    nop
    ld bc, $7f05
    ld l, c
    ld [hl], $3a
    nop
    sub b
    ld d, c
    dec d
    ld l, d
    ld d, c
    ld l, a
    ld l, d
    ld b, a
    ld c, h
    jp z, $846a

    ld b, d
    nop
    ld d, h
    ld c, c
    ld a, b
    ld e, $47
    ld c, h
    ld [c], a
    ld l, d
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld a, [de]
    ld l, e
    ld b, a
    rrca
    ld h, b
    nop
    add hl, bc
    xor e
    ld l, c
    ld c, h
    ld h, h
    ld l, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    add h
    ld l, e
    adc e
    rrca
    add h
    adc a
    nop
    ld c, c
    ld e, $03
    ld a, [bc]
    ld e, l
    add h
    ld b, l
    ld e, a
    ld l, [hl]
    ld b, $33
    ld d, b
    rlca
    ld h, b
    sub c
    ld l, e
    ld b, a
    ld sp, $00e2
    add hl, bc
    rst $30
    ld l, c
    inc e
    rlca
    ld b, $10
    ld [$0a69], a
    dec c
    db $e4
    ld l, c
    ld a, [bc]
    add hl, bc
    sbc $69
    ld c, h
    ret z

    ld l, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec hl
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    adc b
    ld l, h
    ld d, h
    ld c, c
    sub c
    ld c, h
    di
    ld l, h
    ld d, l
    sbc [hl]
    ld a, [de]
    ld bc, $fb08
    ld l, c
    inc sp
    ld [c], a
    nop
    ld c, h
    ld c, d
    ld l, l
    ld d, h
    ld c, c
    sub c
    ld d, e
    cp c
    ld l, l
    ld d, e
    rst $20
    ld l, l
    ld d, e
    jr z, jr_06a_6a74

    ld d, e
    ld c, [hl]
    ld l, [hl]
    ld d, e
    ld e, [hl]
    ld l, [hl]
    inc c
    stop
    inc c
    ld de, $fc00
    nop
    ld h, $00
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
    adc a
    adc [hl]
    sub c
    sub e
    ld a, a
    xor b
    or d
    ld c, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    call nc, $b27f
    and h
    and b
    or d
    xor b
    and e
    and h
    ld d, l
    and [hl]
    and b
    or e
    and h
    or [hl]
    and b
    cp b
    add sp, $51
    adc e
    or h
    or a
    or h
    or c
    cp b
    ld a, a
    xor e
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
    ld d, l
    and e
    xor [hl]
    and d
    xor d
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, h

jr_06a_6a74:
    adc h
    adc [hl]
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    xor a
    or c
    and h
    xor a
    and b
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor e
    and b
    xor l
    and e
    ld d, l
    and l
    xor [hl]
    or c
    ld a, a
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
    xor l
    xor [hl]
    ld c, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    or e
    and b
    or c
    or e
    ld a, a
    or e
    and a
    and h
    ld d, l
    xor a
    or c
    xor [hl]
    xor c
    and h
    and d
    or e
    ld [hl], l
    ld d, a
    nop
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    sbc h
    ld a, a
    add [hl]
    or h
    xor [hl]
    xor [hl]
    and a
    ld c, a
    and [hl]
    xor [hl]
    and [hl]
    xor [hl]
    and [hl]
    xor [hl]
    and a
    rst $20
    ld d, a
    nop
    add b
    ld a, a
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    ld a, a
    xor b
    or d
    ld a, a
    and [hl]
    or c
    xor [hl]
    or [hl]
    xor e
    db $e3
    ld c, a
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
    or d
    or e
    xor [hl]
    xor h
    xor a
    xor b
    xor l
    and [hl]
    ld d, l
    or e
    and a
    and h
    ld a, a
    and [hl]
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and l
    xor e
    and b
    or e
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
    and h
    xor b
    and [hl]
    and a
    or e
    ld c, a
    add [hl]
    sbc b
    adc h
    sub d
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
    sub e
    and a
    and b
    or e
    ld a, a
    and c
    xor b
    and [hl]
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    ld c, a
    xor b
    or d
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
    call nc, Call_06a_5455
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $57
    nop
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor l
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    xor a
    and h
    and b
    and d
    and h
    and l
    or h
    xor e
    xor e
    cp b
    ld [hl], l
    ld d, a
    nop
    sub e
    and a
    and h
    ld a, a
    ld d, h
    add [hl]
    add h
    add b
    sub c
    ld a, a
    or [hl]
    and b
    or d
    ld c, a
    xor a
    xor e
    and b
    and d
    and h
    and e
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
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld [hl], l
    ld d, c
    ld [hl], l
    ld d, c
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld a, a
    or [hl]
    xor [hl]
    xor d
    and h
    ld a, a
    or h
    xor a
    rst $20
    ld d, a
    nop
    sub d
    xor d
    xor b
    xor e
    xor e
    and h
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
    ld c, a
    and [hl]
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
    add sp, $51
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
    ld a, a
    and b
    or c
    and h
    ld c, a
    and h
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
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $51
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
    and c
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
    and e
    and h
    and l
    and h
    and b
    or e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    sub $a4
    ld a, a
    or d
    or e
    and b
    or c
    or e
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld c, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
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
    ld d, l
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    and $51
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
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
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
    ld d, l
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
    xor [hl]
    or h
    and [hl]
    and a
    and $57
    nop
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
    pop de
    xor e
    ld a, a
    and c
    and h
    ld c, a
    and l
    xor b
    xor l
    xor b
    or d
    and a
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld d, c
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
    ld a, a
    adc d
    add b
    adc l
    sub e
    adc [hl]
    ld c, a
    add [hl]
    sbc b
    adc h
    sub d
    ld a, a
    or d
    xor [hl]
    xor [hl]
    xor l
    add sp, $51
    adc e
    and h
    or e
    ld a, a
    xor h
    and h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    xor b
    and l
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and h
    xor b
    and [hl]
    and a
    or e
    ld d, l
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    add sp, $57
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
    ld a, a
    and [hl]
    xor [hl]
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
    adc d
    add b
    adc l
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
    add sp, $51
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    ld a, a
    or c
    and h
    or [hl]
    and b
    or c
    and e
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
    and h
    and l
    and l
    xor [hl]
    or c
    or e
    or d
    add sp, $57
    nop
    add a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld a, a
    or l
    and b
    or c
    xor b
    and h
    or e
    cp b
    ld c, a
    xor [hl]
    and l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    or e
    cp b
    xor a
    and h
    or d
    ld d, c
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
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
    xor l
    ld c, a
    and h
    and e
    and [hl]
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
    adc b
    jp nc, $b27f

    or h
    or c
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
    or [hl]
    xor b
    xor e
    xor e
    ld d, l
    and a
    and h
    xor e
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $57
    nop
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
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc a
    xor [hl]
    or c
    or e
    ld a, a
    xor [hl]
    and l
    ld c, a
    add h
    or a
    or b
    or h
    xor b
    or d
    xor b
    or e
    and h
    ld a, a
    sub d
    or h
    xor l
    or d
    and h
    or e
    or d
    ld d, a
    nop
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
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld d, c
    sub e
    and a
    and h
    ld a, a
    adc e
    xor b
    and [hl]
    and a
    or e
    xor l
    xor b
    xor l
    and [hl]
    ld c, a
    add b
    xor h
    and h
    or c
    xor b
    and d
    and b
    xor l
    ld d, a
    nop
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add l
    add b
    adc l
    ld a, a
    add d
    adc e
    sub h
    add c
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
    add l
    and b
    xor l
    or d
    ld c, a
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
    adc a
    adc [hl]
    sub c
    sub e
    ld c, a
    add h
    adc l
    sub e
    sub c
    add b
    adc l
    add d
    add h
    ld d, a
    nop
    nop
    ld a, [bc]
    dec b
    ld b, $01
    inc c
    inc b
    dec b
    add hl, bc
    ld bc, $050c
    dec c
    ld [$0c01], sp
    rlca
    dec c
    ld c, $01
    inc c
    ld [$150d], sp
    ld [bc], a
    inc c
    add hl, bc
    ld de, $0115
    inc c
    ld a, [bc]
    inc de
    ld a, [bc]
    ld bc, $0b0c
    rra
    inc de
    ld bc, $090f
    rra
    inc d
    ld [bc], a
    rrca
    add hl, bc
    rlca
    ld [hl+], a
    ld bc, $5403
    nop
    ld [$1903], sp
    nop
    db $fd
    ld l, c
    inc de
    dec b
    nop
    nop
    ld l, d
    dec c
    dec b
    nop
    inc bc
    ld l, d
    add hl, bc
    ld hl, $0600
    ld l, d
    rrca
    dec de
    nop
    add hl, bc
    ld l, d
    dec b
    ld a, [bc]
    nop
    inc c
    ld l, d
    dec c
    ld d, $00
    rrca
    ld l, d
    inc c
    ld de, $1207
    ld l, d
    ld b, $29
    dec c
    ld d, $02
    ld de, $ffff
    nop
    nop
    add e
    ld l, c
    rst $38
    rst $38
    cpl
    ld a, [bc]
    dec de
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    add [hl]
    ld l, c
    rst $38
    rst $38
    sbc d
    dec bc
    ld e, $16
    nop
    rst $38
    rst $38
    sub b
    nop
    adc c
    ld l, c
    rst $38
    rst $38
    dec hl
    inc e
    jr nz, @+$04

    ld de, $ffff
    and b
    nop
    sbc e
    ld l, c
    rst $38
    rst $38
    inc sp
    inc c
    ld h, $15
    nop
    rst $38
    rst $38
    nop
    nop
    sbc [hl]
    ld l, c
    ld [hl], b
    rlca
    dec l
    db $10
    inc hl
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    jp nz, $ff69

    rst $38
    nop
    nop
    jr nz, jr_06a_6f2d

    ld [hl], $07
    and l
    ld l, a

jr_06a_6f2d:
    push bc
    ld l, a
    nop
    nop
    inc sp
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    reti


    ld l, a
    ld d, h
    ld c, c
    sub c
    adc d
    inc b
    dec [hl]
    dec c
    ccf
    ld [hl], b
    ld [hl], h
    ld [hl], b
    nop
    nop
    ld b, a
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, h
    ld [hl], b
    ld d, h
    ld c, c
    sub c
    ld hl, $3604
    ld [$70c2], sp
    jp c, $0070

    nop
    ld e, e
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    or $70
    ld d, h
    ld c, c
    sub c
    adc e
    inc b
    dec [hl]
    ld c, $27
    ld [hl], c
    ld d, c
    ld [hl], c
    nop
    nop
    ld l, a
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld e, a
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    jr nc, jr_06a_6f7e

    inc l
    dec c
    xor b
    ld [hl], c
    rst $30

jr_06a_6f7e:
    ld [hl], c
    nop
    nop
    add e
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    db $10
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    ld [hl-], a
    dec b
    inc l
    rrca
    ld [hl-], a
    ld [hl], d
    ld h, b
    ld [hl], d
    nop
    nop
    sub a
    ld l, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, b
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    ld d, e
    and d
    ld [hl], d
    ld a, [c]
    nop
    ccf
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
    and h
    or a
    xor a
    xor e
    xor [hl]
    or c
    and h
    ld c, a
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
    add sp, $57
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld a, a
    add e
    and b
    xor l
    and [hl]
    and h
    or c
    db $f4
    ld a, a
    xor h
    and b
    xor l
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
    or [hl]
    and h
    or c
    and h
    ld c, a
    and a
    or h
    or c
    or e
    ld a, a
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, c
    and h
    xor l
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld c, a
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
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
    or e
    and b
    xor d
    and h
    ld c, a
    or e
    and a
    and h
    xor h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    add d
    add h
    adc l
    sub e
    add h
    sub c
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
    and c
    and h
    and h
    xor l
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    xor a
    xor b
    and d
    xor l
    xor b
    and d
    and $51
    sub e
    and a
    and h
    cp b
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
    and l
    or h
    xor l
    rst $20
    ld d, a
    nop
    adc [hl]
    and a
    and a
    and a
    and a
    rst $20
    ld d, a
    nop
    sub [hl]
    and h
    ld a, a
    and c
    and b
    xor d
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
    and [hl]
    xor [hl]
    xor [hl]
    and e
    xor b
    and h
    or d
    ld a, a
    and b
    xor l
    and e
    ld a, a
    or d
    and a
    and b
    or c
    and h
    ld d, c
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $4f
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    and e
    and h
    xor e
    xor b
    and d
    xor b
    xor [hl]
    or h
    or d
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
    rst $20
    ld c, a
    add e
    xor [hl]
    xor l
    push de
    ld a, a
    xor e
    xor b
    or e
    or e
    and h
    or c
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor c
    or h
    or d
    or e
    ld a, a
    xor a
    xor [hl]
    xor b
    xor l
    or e
    db $e3
    ld c, a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or h
    or e
    ld [hl], l
    ld d, a
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
    or [hl]
    and h
    or c
    and h
    xor l
    push de
    ld c, a
    xor e
    xor b
    or e
    or e
    and h
    or c
    xor b
    xor l
    and [hl]
    add sp, $7f
    adc b
    or e
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    xor h
    cp b
    ld a, a
    xor h
    xor b
    or d
    or e
    and b
    xor d
    and h
    add sp, $57
    nop
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
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
    xor e
    and h
    and b
    or l
    and h
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor e
    xor b
    or e
    or e
    and h
    or c
    ld d, l
    and c
    and h
    and a
    xor b
    xor l
    and e
    add sp, $57
    nop
    adc [hl]
    and a
    and a
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld [hl], l
    ld d, a
    nop
    add d
    xor [hl]
    xor l
    or d
    and h
    or c
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    ld c, a
    xor b
    or d
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
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, c
    or e
    and a
    and h
    ld a, a
    and h
    xor l
    or l
    xor b
    or c
    xor [hl]
    xor l
    xor h
    and h
    xor l
    or e
    ld a, a
    xor b
    or d
    ld c, a
    and h
    or l
    and h
    xor l
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or l
    xor b
    or e
    and b
    xor e
    add sp, $57
    nop
    sub d
    and a
    and h
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor b
    xor l
    and [hl]
    ld c, a
    db $d3
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    adc h
    sub e
    add sp, -$6e
    adc b
    adc e
    sub l
    add h
    sub c
    ld d, l
    or [hl]
    and a
    and h
    xor l
    ld a, a
    or d
    and a
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    or d
    ld [hl], l
    ld d, c
    adc h
    sub e
    add sp, -$6e
    adc b
    adc e
    sub l
    add h
    sub c
    ld a, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld c, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $57
    nop
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    or h
    or d
    cp b
    ld c, a
    or d
    xor b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, a
    nop
    add c
    and b
    or e
    or e
    xor e
    and h
    or d
    ld a, a
    and b
    or c
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    and d
    xor [hl]
    xor l
    and d
    and h
    xor l
    or e
    or c
    and b
    or e
    xor b
    xor [hl]
    xor l
    add sp, $57
    nop
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
    ld a, a
    and b
    ld c, a
    or d
    and h
    and d
    or c
    and h
    or e
    add sp, $51
    add c
    or h
    or e
    ld a, a
    and l
    xor b
    or c
    or d
    or e
    db $f4
    ld a, a
    or [hl]
    and h
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
    adc [hl]
    and a
    db $f4
    ld a, a
    and e
    and b
    xor l
    and [hl]
    rst $20
    ld c, a
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
    ld [hl], l
    ld d, a
    nop
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
    adc e
    add b
    adc l
    sub e
    ld a, a
    xor b
    or d
    ld c, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    and b
    ld a, a
    or d
    xor h
    and b
    xor e
    xor e
    ld d, l
    or c
    xor b
    or l
    and h
    or c
    add sp, $57
    nop
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld a, a
    rst $38
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
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    sub e
    sub h
    adc l
    adc l
    add h
    adc e
    ld d, a
    nop
    nop
    ld bc, $2a07
    ld bc, $5703
    nop
    ld [bc], a
    rlca
    rrca
    nop
    sbc a
    ld l, a
    rrca
    add hl, hl
    rlca
    and d
    ld l, a
    ld b, $27
    ld [$0832], sp
    nop
    rst $38
    rst $38
    and d
    inc bc
    daa
    ld l, a
    rst $38
    rst $38
    jr z, jr_06a_72f7

    cpl
    ld [$ff00], sp
    rst $38
    and d
    inc bc
    dec sp
    ld l, a
    rst $38
    rst $38
    daa

jr_06a_72f7:
    inc de
    db $10
    rlca
    nop
    rst $38
    rst $38
    and d
    dec b
    ld c, a
    ld l, a
    rst $38
    rst $38
    jr z, jr_06a_7314

    dec de
    rlca
    nop
    rst $38
    rst $38
    and d
    ld bc, $6f63
    rst $38
    rst $38
    dec l
    ld c, $26
    add hl, bc

jr_06a_7314:
    nop
    rst $38
    rst $38
    or d
    ld [bc], a
    ld [hl], a
    ld l, a
    rst $38
    rst $38
    dec l
    inc c
    dec l
    add hl, bc
    nop
    rst $38
    rst $38
    or d
    inc b
    adc e
    ld l, a
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld d, c
    dec [hl]
    ld [hl], e
    ld d, c
    ld a, a
    ld [hl], e
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
    add [hl]
    sbc b
    adc h
    call nc, $814f
    adc e
    add b
    adc b
    adc l
    add h
    ld a, a
    and b
    xor a
    xor a
    and b
    or c
    and h
    xor l
    or e
    xor e
    cp b
    ld d, c
    xor e
    xor b
    or l
    and h
    or d
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld a, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
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
    ld d, l
    and d
    and b
    or l
    and h
    ld [hl], l
    ld d, a
    nop
    adc b
    or e
    call nc, $a17f
    and h
    and h
    xor l
    ld a, a
    and b
    ld a, a
    cp b
    and h
    and b
    or c
    ld c, a
    or d
    xor b
    xor l
    and d
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or l
    xor [hl]
    xor e
    and d
    and b
    xor l
    xor [hl]
    ld d, l
    and h
    or c
    or h
    xor a
    or e
    and h
    and e
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    ld bc, $0806
    rlca
    inc b
    ld bc, $0806
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
    inc l
    ld [hl], e
    rst $38
    rst $38
    inc h
    ld a, [bc]
    dec bc
    dec b
    ld [bc], a
    rst $38
    rst $38
    add b
    nop
    cpl
    ld [hl], e
    rst $38
    rst $38
    ld a, [hl-]
    ld [$0606], sp
    nop
    rst $38
    rst $38
    and b
    nop
    ld [hl-], a
    ld [hl], e
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0007
    inc bc
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $00d7
    add hl, bc
    inc b
    ld [hl], h
    ld c, h
    ld a, [bc]
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    ld c, h
    adc d
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    nop
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    call nc, $b57f
    xor [hl]
    xor e
    and d
    and b
    xor l
    xor [hl]
    ld c, a
    and h
    or c
    or h
    xor a
    or e
    and h
    and e
    add sp, $51
    adc b
    or e
    ld a, a
    and a
    or h
    or c
    xor e
    and h
    and e
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
    or e
    and a
    and b
    or e
    ld a, a
    and d
    or h
    or e
    ld a, a
    xor [hl]
    and l
    and l
    ld a, a
    sub c
    adc [hl]
    sub h
    sub e
    add h
    ld d, l
    rst $30
    rst $38
    ld a, a
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
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld d, l
    and b
    or c
    and h
    ld a, a
    or d
    and b
    and l
    and h
    ld [hl], l
    ld d, a
    nop
    adc l
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
    ld a, a
    and d
    xor b
    or e
    xor b
    db $e3
    ld c, a
    cp c
    and h
    xor l
    or d
    ld a, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    xor c
    or h
    or c
    and h
    and e
    ld d, c
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    or c
    or h
    xor a
    or e
    xor b
    xor [hl]
    xor l
    add sp, $4f
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
    ld d, a
    nop
    nop
    inc b
    nop
    inc b
    ld a, [bc]
    ld de, $0005
    dec b
    dec bc
    ld de, $0705
    inc b
    ld bc, $0506
    rlca
    dec b
    ld bc, $0506
    nop
    nop
    ld bc, $0843
    inc b
    add hl, bc
    nop
    rst $38
    rst $38
    sub b
    nop
    or $73
    rst $38
    rst $38
    ld bc, $74fa
    nop
    nop
    nop
    sub c
    ld l, e
    ld b, a
    inc [hl]
    add hl, hl
    nop
    add hl, bc
    dec hl
    ld [hl], l
    ld c, h
    ld c, b
    ld [hl], l
    ld d, h
    ld c, c
    ld h, h
    ld b, [hl]
    halt
    nop
    ld e, [hl]
    ld l, $01
    ld e, a
    add hl, bc
    ld d, $75
    ld l, a
    inc bc
    ld h, b
    inc sp
    rlc h
    ld b, a
    ld c, h
    add e
    db $76
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $29
    nop
    ld c, h
    sbc l
    db $76
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc e
    ld [hl], a
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $00d5
    add hl, bc
    ld b, d
    ld [hl], l
    ld c, h
    ld e, c
    ld [hl], a
    ld d, h
    ld c, c
    inc sp
    push de
    nop
    sub c
    ld c, h
    ld b, $78
    ld d, h
    ld c, c
    sub c
    nop
    add c
    adc e
    add b
    adc b
    adc l
    add h
    sbc h
    ld a, a
    sub [hl]
    and b
    and b
    and b
    and a
    rst $20
    ld d, c
    adc h
    cp b
    ld a, a
    add [hl]
    sbc b
    adc h
    ld a, a
    xor b
    xor l
    ld a, a
    add d
    adc b
    adc l
    adc l
    add b
    add c
    add b
    sub c
    ld c, a
    and c
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    add sp, $51
    adc h
    cp b
    ld a, a
    and l
    xor b
    or c
    and h
    db $e3
    and c
    or c
    and h
    and b
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
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
    ld a, a
    and b
    or c
    and h
    ld d, c
    and a
    xor [hl]
    xor h
    and h
    xor e
    and h
    or d
    or d
    ld a, a
    and c
    and h
    and d
    and b
    or h
    or d
    and h
    ld c, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    or l
    xor [hl]
    xor e
    and d
    and b
    xor l
    xor [hl]
    add sp, $51
    sub [hl]
    and b
    and b
    and b
    and a
    rst $20
    ld d, c
    add c
    or h
    or e
    ld a, a
    adc b
    jp nc, $a17f

    and b
    and d
    xor d
    ld a, a
    xor b
    xor l
    ld c, a
    and c
    or h
    or d
    xor b
    xor l
    and h
    or d
    or d
    ld a, a
    and b
    or d
    ld a, a
    and b
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
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    and d
    and b
    or l
    and h
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
    and [hl]
    xor b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, l
    and b
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $51
    add a
    and b
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    ret nc

    ld a, a
    and c
    and h
    or e
    or e
    and h
    or c
    ld c, a
    and a
    and b
    or l
    and h
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
    rst $20
    ld d, a
    nop
    add c
    adc e
    add b
    adc b
    adc l
    add h
    sbc h
    ld a, a
    add b
    or [hl]
    and h
    or d
    xor [hl]
    xor h
    and h
    add sp, $4f
    adc b
    sub $a4
    ld a, a
    and c
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    ld [hl], l
    ld d, c
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
    ld c, a
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
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
    sub l
    adc [hl]
    adc e
    add d
    add b
    adc l
    adc [hl]
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    add c
    adc e
    add b
    adc b
    adc l
    add h
    sbc h
    ld a, a
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld c, a
    or e
    and a
    xor b
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    adc b
    jp nc, $a651

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
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor l
    and h
    or a
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $51
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or c
    and h
    and c
    or h
    xor b
    xor e
    and e
    ld a, a
    xor h
    cp b
    ld c, a
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
    db $f4
    ld d, c
    or [hl]
    and h
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
    and a
    and b
    or l
    and h
    ld c, a
    and b
    ld a, a
    or c
    and h
    xor h
    and b
    or e
    and d
    and a
    add sp, $57
    nop
    add c
    adc e
    add b
    adc b
    adc l
    add h
    sbc h
    ld a, a
    adc h
    cp b
    ld a, a
    and l
    xor b
    or c
    and h
    ld c, a
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
    and c
    and h
    ld d, c
    and h
    or l
    and h
    xor l
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    add sp, $4f
    adc c
    or h
    or d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    or e
    and d
    and a
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    rst $20
    ld d, c
    ld [hl], l
    ld a, a
    add a
    or h
    and a
    and $7f
    adc b
    or e
    call nc, $ae7f
    or l
    and h
    or c
    ld c, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    and $51
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $f4
    ld a, a
    or d
    xor [hl]
    or c
    or c
    cp b
    rst $20
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
    or [hl]
    and b
    or d
    ld c, a
    and [hl]
    xor [hl]
    xor l
    and h
    db $f4
    ld a, a
    or d
    xor [hl]
    ld a, a
    adc b
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld d, c
    xor d
    xor l
    xor [hl]
    or [hl]
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and l
    xor b
    xor l
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    add sp, $51
    add c
    or h
    or e
    db $f4
    ld a, a
    and a
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    xor a
    xor e
    and h
    xor l
    or e
    cp b
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and h
    or l
    and h
    xor l
    ld d, c
    or [hl]
    xor b
    or e
    and a
    xor [hl]
    or h
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and b
    and e
    or l
    xor b
    and d
    and h
    add sp, $4f
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

    ld a, a
    or [hl]
    xor b
    xor l
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
    add [hl]
    sbc b
    adc h
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and c
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
    ld a, a
    and b
    or d
    ld d, c
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and b
    or d
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
    ld a, a
    xor b
    or d
    ld a, a
    or e
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
    and b
    ld a, a
    and c
    or h
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    nop
    ld bc, $0505
    ld bc, $0606
    nop
    nop
    ld [bc], a
    dec c
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    or b
    nop
    ei
    ld [hl], h
    rst $38
    rst $38
    ld c, b
    add hl, bc
    ld a, [bc]
    rlca
    nop
    rst $38
    rst $38
    sub b
    nop
    ld sp, $7775
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

Jump_06a_7f48:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
