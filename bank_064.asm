; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $064", ROMX[$4000], BANK[$64]

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
    ld [hl], $49
    nop
    sub b
    ld [hl], l
    nop
    ld [bc], a
    rrca
    ld l, c
    ld [bc], a
    xor c
    ld b, b
    ld [hl], b
    nop
    ld [bc], a
    ld l, c
    nop
    and a
    ld b, b
    ld [hl], c
    halt
    inc bc
    nop
    cpl
    ld b, b
    ld l, c
    ld [bc], a
    xor l
    ld b, b
    sub c
    ld l, e
    ld sp, $0022
    add hl, bc
    add hl, sp
    ld b, b
    nop
    ld b, b
    ld b, b
    sub c
    ld b, a
    ld c, h
    and [hl]
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld b, a
    ld c, h
    or b
    ld b, b
    rrca
    ld d, c
    nop
    ld c, [hl]
    ld [$4072], sp
    inc h
    nop
    nop
    ld bc, $062c
    ld [bc], a
    ld l, h
    ld b, b
    rra
    ld [hl], d
    ld bc, $7808
    ld b, b
    add [hl]
    add l
    ld [hl+], a
    nop
    inc hl
    nop
    nop
    ld bc, $0f2c
    ld d, c
    nop
    ld c, h
    ld c, d
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld e, e
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld a, b
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    adc b
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0022
    add hl, bc
    adc h
    ld b, b
    ld c, h
    push hl
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec e
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld d, c
    db $76
    ld b, d
    ld d, c
    ld a, [c]
    ld b, d
    ld d, e
    ld l, $43
    ld d, e
    ld e, [hl]
    ld b, e
    ld d, e
    sub c
    ld b, e
    inc c
    stop
    inc c
    ld de, $0e00
    ld b, a
    rrca
    inc c
    ld [bc], a
    ld b, a
    dec c
    nop
    ld b, a
    nop
    add a
    xor b
    cp b
    and b
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, c
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
    xor l
    and h
    or [hl]
    ld c, a
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
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
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
    xor l
    and h
    or [hl]
    db $f4
    ld c, a
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
    ld a, a
    or e
    or c
    cp b
    ld a, a
    and b
    ld d, c
    cp b
    or h
    xor h
    xor h
    cp b
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
    db $e3
    ld c, a
    add c
    add b
    sub c
    rst $20
    ld d, c
    sub c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    xor l
    xor [hl]
    or [hl]
    db $f4
    ld a, a
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    ld c, a
    and c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    ldh a, [$f9]
    or $f6
    rst $20
    ld a, a
    sub [hl]
    and b
    xor l
    or e
    ld a, a
    xor [hl]
    xor l
    and h
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld a, a
    sub d
    and b
    or l
    xor [hl]
    or c
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
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
    and a
    and b
    or l
    and h
    ld c, a
    and h
    xor l
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    xor h
    xor [hl]
    xor l
    and h
    cp b
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    and l
    xor b
    xor l
    and h
    ld a, a
    or e
    and a
    and h
    xor l
    ld [hl], l
    ld d, a
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
    and a
    and b
    or l
    and h
    ld c, a
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
    xor b
    or d
    add sp, $57
    nop
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
    call nc, $b24f
    xor [hl]
    xor e
    and e
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $51
    adc b
    jp nc, $af7f

    and b
    and d
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    or h
    xor a
    add sp, $4f
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
    ld a, a
    xor h
    and h
    db $f4
    ld d, l
    xor d
    xor b
    and e
    and e
    xor [hl]
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
    xor [hl]
    and l
    and l
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
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld a, a
    or c
    and b
    xor h
    db $e3
    ld d, l
    xor a
    and b
    and [hl]
    and h
    ld a, a
    and b
    or e
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc e
    add b
    adc d
    add h
    and $57
    nop
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld a, a
    and a
    and b
    or l
    and h
    ld c, a
    or c
    and h
    or e
    or h
    or c
    xor l
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc e
    add b
    adc d
    add h
    ld d, l
    adc [hl]
    add l
    ld a, a
    sub c
    add b
    add [hl]
    add h
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
    and c
    and h
    ld c, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    xor l
    and h
    or [hl]
    or d
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld d, l
    and b
    xor l
    and [hl]
    xor e
    and h
    or c
    or d
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $57
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
    ld a, a
    and d
    and b
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
    or e
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld d, c
    or e
    xor b
    xor h
    and h
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
    or d
    xor b
    and [hl]
    and a
    or e
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
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
    and a
    and h
    and b
    and e
    ld c, a
    xor l
    xor [hl]
    or c
    or e
    and a
    ld a, a
    and b
    xor l
    and e
    ld a, a
    and d
    and a
    and h
    and d
    xor d
    ld d, c
    xor [hl]
    or h
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
    ld c, a
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
    sub l
    xor b
    or d
    xor b
    or e
    ld a, a
    add [hl]
    or c
    and b
    xor l
    and e
    xor h
    and b
    call nc, $b24f
    and a
    xor [hl]
    xor a
    add sp, $7f
    sub d
    and a
    and h
    ld a, a
    or d
    and h
    xor e
    xor e
    or d
    ld d, c
    or d
    or e
    or h
    and l
    and l
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    xor l
    xor [hl]
    and c
    xor [hl]
    and e
    cp b
    ld c, a
    and h
    xor e
    or d
    and h
    ld a, a
    and a
    and b
    or d
    add sp, $57
    nop
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
    ld d, c
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
    or e
    and a
    and h
    ld c, a
    add a
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc l
    xor b
    xor l
    xor c
    and b
    ld d, a
    nop
    sub [hl]
    and a
    xor b
    xor e
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
    db $f4
    ld a, a
    or e
    or c
    cp b
    ld d, l
    and b
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
    rst $20
    ld d, a
    nop
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
    adc a
    sub c
    sbc b
    add d
    add h
    ld d, c
    sub e
    and a
    and h
    ld a, a
    sub e
    and h
    and b
    and d
    and a
    and h
    or c
    ld a, a
    xor [hl]
    and l
    ld c, a
    sub [hl]
    xor b
    xor l
    or e
    and h
    or c
    call nc, $877f
    and b
    or c
    or d
    and a
    xor l
    and h
    or d
    or d
    ld d, a
    nop
    nop
    dec b
    dec c
    dec b
    ld bc, $3003
    rlca
    ld de, $0201
    ld bc, $0e03
    ld bc, $0202
    dec c
    rrca
    ld bc, $0302
    ld bc, $0309
    add hl, bc
    inc bc
    ld [bc], a
    nop
    ld [$0013], sp
    inc de
    ld b, b
    nop
    nop
    nop
    add hl, bc
    inc de
    nop
    inc de
    ld b, b
    nop
    nop
    inc b
    dec b
    ld bc, $9800
    ld b, b
    dec c
    inc bc
    nop
    sbc e
    ld b, b
    dec b
    dec c
    nop
    sbc [hl]
    ld b, b
    dec c
    stop
    and c
    ld b, b
    inc b
    dec l
    inc c
    rla
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    ld l, $40
    ld d, [hl]
    rlca
    cpl
    dec c
    ld a, [bc]
    dec b
    ld bc, $ffff
    nop
    nop
    ld a, [hl]
    ld b, b
    rst $38
    rst $38
    ld a, [hl-]
    ld [$0612], sp
    nop
    rst $38
    rst $38
    and b
    nop
    sub d
    ld b, b
    ld d, a
    rlca
    jr z, jr_064_4456

    ld a, [bc]
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    sub l
    ld b, b
    ld [hl], $07
    inc bc
    ld h, b
    ld b, h
    nop
    nop
    ld h, c
    ld b, h

jr_064_4456:
    nop
    nop
    ld h, d
    ld b, h
    nop
    nop
    ld bc, $6302
    ld b, h
    sub c
    sub c
    sub c
    inc e
    dec bc
    ld b, $05
    ld l, h
    ld b, h
    ld l, [hl]
    ld c, $90
    ld l, a
    ld c, $90
    ld l, e
    ld b, a
    ld sp, $005d
    add hl, bc
    and l
    ld b, h
    inc [hl]
    dec de
    nop
    ld [$449f], sp
    ld sp, $002d
    add hl, bc
    adc a
    ld b, h
    ld c, h
    xor e
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld c, h
    jr nz, jr_064_44d4

    ld d, h
    ld c, c
    sub c
    ld c, h
    dec h
    ld c, c
    ld d, l
    sbc [hl]
    ld [hl], l
    ld bc, $a908
    ld b, h
    inc sp
    ld e, l
    nop
    inc bc
    and l
    ld b, h
    ld c, h
    or b
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, h
    dec d
    ld c, d
    ld d, h
    ld c, c
    sub c
    db $76
    add hl, bc
    ld [bc], a
    halt
    inc bc
    ld b, a
    ld c, h
    sub b
    ld b, a
    ld d, h
    ld c, c
    ld [hl], b
    nop
    add hl, bc
    ld l, c
    nop
    adc c
    ld b, a
    ld [hl], c
    halt
    nop
    nop
    ld [hl], b
    ld b, h
    ld l, c
    add hl, bc
    adc h
    ld b, a
    ld l, c
    add hl, bc
    adc [hl]
    ld b, a
    sub c
    ld l, e
    ld b, a
    ld sp, $004e
    add hl, bc

jr_064_44d4:
    db $e3
    ld b, h
    ld c, h
    inc sp
    ld d, c
    ld d, l
    sbc [hl]
    call nz, $0801
    rst $20
    ld b, h
    inc sp
    ld c, [hl]
    nop
    ld c, h
    adc h
    ld d, c
    ld d, h
    ld c, c
    sub c
    db $76
    dec bc
    nop
    halt
    ld bc, $f303
    ld b, h
    ld l, e
    inc d
    ld [bc], a
    ld b, a
    ld c, h
    ld e, c
    ld c, d
    ld c, [hl]
    ld [$4503], sp
    ld c, h
    rst $08
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    db $fc
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld a, [de]
    inc b
    ld [hl], $01
    ld l, [hl]
    ld c, a
    adc h
    ld c, a
    nop
    nop
    dec d
    ld b, l
    ld h, [hl]
    ld b, a
    ld c, h
    xor d
    ld c, a
    ld d, h
    ld c, c
    sub c
    ld c, [hl]
    inc b
    dec h
    ld bc, $4b21
    ld b, h
    ld c, e
    nop
    nop
    add hl, hl
    ld b, l
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, [hl]
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, a
    inc b
    dec h
    ld [bc], a
    adc a
    ld c, e
    jp c, $004b

    nop
    dec a
    ld b, l
    ld e, $17
    ld de, $4766
    inc [hl]
    ld l, l
    nop
    add hl, bc
    ld a, l
    ld b, l
    inc [hl]
    ld d, d
    nop
    add hl, bc
    pop af
    ld b, l
    ld a, [hl+]
    ld de, $0309
    ld b, [hl]
    ld sp, $0277
    add hl, bc
    ld h, [hl]
    ld b, l
    ld c, h
    ld hl, sp+$4b
    ld d, l
    inc sp
    ld [hl], a
    ld [bc], a
    nop
    rst $30
    ld b, l
    inc bc
    ld l, c
    ld b, l
    nop
    ei
    ld b, l
    sub a
    ld de, $0106
    dec bc
    ld b, [hl]
    ld b, $02
    rlca
    ld b, [hl]
    ld b, e
    dec h
    ld [bc], a
    nop
    nop
    rst $38
    ld b, l
    inc bc
    inc bc
    ld b, [hl]
    nop
    rrca
    ld b, [hl]
    ld h, h
    jp c, $004b

    nop
    add hl, de
    ei
    reti


    ld b, $04
    sbc h
    ld b, l
    ld b, $03
    and d
    ld b, l
    ld b, $02
    xor b
    ld b, l
    ld b, $01
    xor [hl]
    ld b, l
    ld b, $00
    or h
    ld b, l
    ld sp, $00cd
    add hl, bc
    add sp, $45
    ld sp, $0044
    add hl, bc
    db $db
    ld b, l
    inc [hl]
    ld c, d
    nop
    add hl, bc
    adc $45
    inc [hl]
    ld c, b
    nop
    add hl, bc
    pop bc
    ld b, l
    ld e, [hl]
    dec h
    ld [bc], a
    ld e, a
    ld h, b
    dec de
    ei
    reti


    ld bc, $6d35
    nop
    sub c
    ld e, [hl]
    dec h
    db $10
    ld e, a
    ld h, b
    dec de
    ei
    reti


    ld [bc], a
    dec [hl]
    ld l, l
    nop
    sub c
    ld e, [hl]
    dec h
    ld de, $605f
    dec de
    ei
    reti


    inc bc
    dec [hl]
    ld l, l
    nop
    sub c
    ld e, [hl]
    dec h
    rla
    ld e, a
    ld h, b
    dec de
    ei
    reti


    inc b
    dec [hl]
    ld l, l
    nop
    sub c
    ld e, [hl]
    dec h
    jr jr_064_464b

    ld h, b
    dec [hl]
    ld l, l
    nop
    sub c
    ld c, h
    scf
    ld c, h
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
    ld d, d
    inc b
    dec h
    dec b
    rst $08
    ld c, l
    jp hl


    ld c, l
    nop
    nop
    rra
    ld b, [hl]
    ld h, [hl]
    ld b, a
    ld c, h
    ld a, [c]
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld a, [hl]
    inc b
    dec [hl]
    ld bc, $4fdf
    ld a, $50
    nop
    nop
    inc sp
    ld b, [hl]
    ld e, $17
    ld [de], a
    ld h, [hl]
    ld b, a
    inc [hl]
    ld l, [hl]
    nop
    add hl, bc
    ld l, l
    ld b, [hl]
    ld a, [hl+]
    ld [de], a
    add hl, bc
    db $ed
    ld b, [hl]
    ld sp, $0279
    add hl, bc
    ld d, [hl]
    ld b, [hl]
    ld c, h
    ld h, b

jr_064_464b:
    ld d, b
    ld d, l
    inc sp
    ld a, c
    ld [bc], a
    nop
    pop hl
    ld b, [hl]
    inc bc
    ld e, c
    ld b, [hl]
    nop
    push hl
    ld b, [hl]
    sub a
    ld [de], a
    ld b, $01
    push af
    ld b, [hl]
    ld b, $02
    pop af
    ld b, [hl]
    ld b, e
    dec [hl]
    ld bc, $0000
    jp hl


    ld b, [hl]
    inc bc
    db $ed
    ld b, [hl]
    nop
    ld sp, hl
    ld b, [hl]
    ld h, h
    ld a, $50
    nop
    nop
    add hl, de
    db $fc
    reti


    ld b, $04
    adc h
    ld b, [hl]
    ld b, $03
    sub d
    ld b, [hl]
    ld b, $02
    sbc b
    ld b, [hl]
    ld b, $01
    sbc [hl]
    ld b, [hl]
    ld b, $00
    and h
    ld b, [hl]
    ld sp, $0044
    add hl, bc
    ret c

    ld b, [hl]
    ld sp, $0021
    add hl, bc
    bit 0, [hl]
    ld sp, $0022
    add hl, bc
    cp [hl]
    ld b, [hl]
    inc [hl]
    ld c, b
    nop
    add hl, bc
    or c
    ld b, [hl]
    ld e, [hl]
    dec [hl]
    ld bc, $605f
    dec de
    db $fc
    reti


    ld bc, $6e35
    nop
    sub c
    ld e, [hl]
    dec [hl]
    dec bc
    ld e, a
    ld h, b
    dec de
    db $fc
    reti


    ld [bc], a
    dec [hl]
    ld l, [hl]
    nop
    sub c
    ld e, [hl]
    dec [hl]
    inc c
    ld e, a
    ld h, b
    dec de
    db $fc
    reti


    inc bc
    dec [hl]
    ld l, [hl]
    nop
    sub c
    ld e, [hl]
    dec [hl]
    ld d, $5f
    ld h, b
    dec de
    db $fc
    reti


    inc b
    dec [hl]
    ld l, [hl]
    nop
    sub c
    ld e, [hl]
    dec [hl]
    rla
    ld e, a
    ld h, b
    dec [hl]
    ld l, [hl]
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
    jr z, jr_064_46f8

jr_064_46f8:
    sub c
    inc c
    add hl, hl
    nop
    sub c
    xor e
    dec b
    ld d, $03
    ld l, $4e
    ld [hl], e
    ld c, [hl]
    nop
    nop
    add hl, bc
    ld b, a
    ld h, [hl]
    ld b, a
    ld c, h
    add d
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    xor h
    dec b
    ld d, $04
    add sp, $4e
    dec hl
    ld c, a
    nop
    nop
    dec e
    ld b, a
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, c
    ld c, a
    ld d, h
    ld c, c
    sub c
    rlca
    inc b
    jr @+$0f

    ld a, a
    ld d, b
    or h
    ld d, b
    nop
    nop
    ld sp, $6647
    ld b, a
    ld c, h
    call nc, Call_064_5450
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0063
    add hl, bc
    ld h, a
    ld b, a
    inc e
    dec bc
    rlca
    dec b
    ld l, l
    ld b, a
    ld sp, $0062
    add hl, bc
    ld d, h
    ld b, a
    ld c, h
    pop bc
    ld d, c
    ld d, l
    inc sp
    ld h, d
    nop
    ld c, h
    inc b
    ld d, d
    ld d, l
    sbc [hl]
    ld d, c
    ld bc, $6b08
    ld b, a
    inc sp
    ld h, e
    nop
    ld c, h
    ld [hl+], a
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc d
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    rst $38
    ld d, d
    ld d, h
    ld c, c
    sub c
    inc b
    ld bc, $0114
    ld d, e
    ld a, [hl-]
    ld d, e
    ld d, e
    ld e, [hl]
    ld d, e
    ld d, e
    ld a, e
    ld d, e
    inc c
    stop
    and l
    nop
    inc b
    and [hl]
    nop
    ld de, $0d0d
    ld b, a
    inc c
    ld b, a
    rrca
    ld b, a
    nop
    sub [hl]
    and b
    xor b
    or e
    ld a, a
    or h
    xor a
    rst $20
    ld c, a
    sub [hl]
    and a
    and b
    or e
    call nc, $b37f
    and a
    and h
    ld a, a
    and a
    or h
    or c
    or c
    cp b
    and $57
    nop
    ld d, d
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $4f
    sub d
    xor [hl]
    xor h
    and h
    ld a, a
    and [hl]
    or h
    cp b
    ld a, a
    or [hl]
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld d, c
    and [hl]
    xor e
    and b
    or d
    or d
    and h
    or d
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    db $e3
    ld c, a
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
    sub d
    and h
    and h
    ld a, a
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
    add sp, $4f
    add a
    and h
    call nc, $b67f
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
    ld d, c
    cp b
    xor [hl]
    or h
    ld a, a
    and b
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
    add d
    add h
    adc l
    sub e
    add h
    sub c
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
    and $51
    adc b
    and l
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
    or l
    xor b
    or d
    xor b
    or e
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
    db $f4
    ld a, a
    ld d, c
    or e
    and a
    and h
    cp b
    pop de
    xor e
    ld a, a
    and h
    or a
    xor a
    and h
    and d
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or e
    xor [hl]
    ld a, a
    or e
    or c
    and b
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    or c
    and h
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
    ld a, a
    and l
    xor [hl]
    or c
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $7f
    add [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    add [hl]
    sbc b
    adc h
    and $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    and h
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
    ld a, a
    and b
    xor l
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    db $e3
    ld d, l
    or d
    and h
    xor e
    and l
    ld a, a
    or e
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    xor b
    or e
    and h
    ld a, a
    xor [hl]
    and l
    ld c, a
    xor a
    and b
    or d
    or d
    and b
    and [hl]
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    and b
    xor e
    xor e
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    rst $20
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
    or d
    xor [hl]
    xor h
    and h
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
    or e
    and a
    and h
    or c
    and h
    add sp, $51
    adc b
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
    or c
    xor [hl]
    xor h
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
    xor b
    xor l
    and [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    and [hl]
    and b
    or l
    and h
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
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
    add sp, $51
    sub e
    and a
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
    and b
    or e
    ld c, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
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
    ld d, c
    and c
    and h
    and h
    xor l
    ld a, a
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
    ld c, a
    and a
    and h
    xor e
    xor a
    and l
    or h
    xor e
    add sp, $51
    add b
    or d
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
    db $f4
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
    add sp, $51
    adc b
    or e
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
    and [hl]
    or c
    and b
    or d
    or d
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
    add sp, $57
    nop
    sbc b
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
    and h
    xor l
    and d
    and h
    or d
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
    ld a, a
    add d
    adc b
    sub e
    sbc b
    ld d, c
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    and c
    and h
    ld a, a
    or h
    or d
    and h
    and l
    or h
    xor e
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
    xor c
    xor [hl]
    or h
    or c
    xor l
    and h
    cp b
    add sp, $57
    nop
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
    ld d, c
    or e
    and b
    or d
    or e
    cp b
    db $f4
    ld a, a
    xor l
    or h
    or e
    or c
    xor b
    or e
    xor b
    xor [hl]
    or h
    or d
    ld c, a
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
    and $51
    add l
    xor [hl]
    or c
    ld a, a
    cp b
    xor [hl]
    or h
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
    db $f4
    ld c, a
    xor c
    or h
    or d
    or e
    ld a, a
    ldh a, [$f7]
    db $f4
    or $f6
    or $f4
    or $f6
    or $e7
    ld d, c
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    rst $20
    ld d, a
    nop
    sub e
    and d
    and a
    rst $20
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
    ld c, a
    xor d
    xor b
    and e
    or d
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
    ld d, l
    or [hl]
    and h
    or c
    and h
    ld a, a
    xor e
    xor [hl]
    and b
    and e
    and h
    and e
    ld [hl], l
    ld d, a
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
    sub e
    and a
    and h
    xor l
    ld a, a
    or d
    and d
    or c
    and b
    xor h
    add sp, $7f
    sub d
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    xor [hl]
    and b
    rst $20
    ld d, c
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
    ld a, a
    xor e
    xor [hl]
    or d
    and h
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and l
    xor b
    or d
    and a
    rst $20
    ld d, a
    nop
    sub d
    xor a
    xor e
    xor [hl]
    xor [hl]
    or d
    and a
    rst $20
    ld d, a
    nop
    add d
    and b
    xor e
    xor h
    db $f4
    ld a, a
    and d
    xor [hl]
    xor e
    xor e
    and h
    and d
    or e
    and h
    and e
    ld [hl], l
    ld c, a
    sub e
    and a
    and h
    ld a, a
    and h
    or d
    or d
    and h
    xor l
    and d
    and h
    ld a, a
    xor [hl]
    and l
    ld d, c
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
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
    or e
    and a
    and h
    ld a, a
    or d
    and b
    xor h
    and h
    add sp, $57
    nop
    adc b
    jp nc, $b17f

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
    ld a, a
    and b
    or e
    ld c, a
    and c
    xor [hl]
    or e
    and a
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor e
    xor [hl]
    or d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    and b
    xor l
    cp b
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    sub e
    and d
    and a
    rst $20
    ld a, a
    adc b
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
    or c
    or h
    or d
    and a
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld [hl], l
    ld d, a
    nop
    add l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]

Call_064_4c00:
    ld a, a
    xor b
    or d
    ld a, a
    and b
    ld a, a
    xor e
    xor b
    and l
    and h
    db $e3
    ld c, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    xor a
    and b
    or d
    or d
    xor b
    xor [hl]
    xor l
    add sp, $51
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor e
    xor b
    and l
    and h
    db $e3
    ld c, a
    xor e
    xor [hl]
    xor l
    and [hl]
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    or d
    rst $20
    ld d, a
    nop
    adc [hl]
    xor l
    and h
    db $f4
    ld a, a
    or e
    or [hl]
    xor [hl]
    db $f4
    ld a, a
    or e
    and a
    or c
    and h
    and h
    ld [hl], l
    ld c, a
    adc h
    or h
    and b
    and a
    and b
    and a
    and b
    and a
    and b
    db $f4
    ld a, a
    or [hl]
    and a
    and b
    or e
    ld a, a
    and b
    ld d, c
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    and a
    and b
    or h
    xor e
    rst $20
    ld c, a
    adc b
    jp nc, $a37f

    xor [hl]
    xor l
    and h
    rst $20
    ld a, a
    add [hl]
    xor [hl]
    ld a, a
    and b
    and a
    and h
    and b
    and e
    ld d, c
    and b
    xor l
    and e
    ld a, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    and b
    or d
    ld a, a
    xor h
    and b
    xor l
    cp b
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
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld d, a
    nop
    adc b
    ld a, a
    xor d
    and h
    and h
    xor a
    ld a, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
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
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, c
    adc h
    and b
    cp b
    and c
    and h
    ld a, a
    and b
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
    xor e
    xor e
    ld a, a
    or e
    or h
    or c
    xor l
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    ld d, l
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
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
    and h
    or l
    and h
    or c
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
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
    xor h
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    or h
    cp b
    ld c, a
    xor l
    and h
    or a
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    ld a, a
    and d
    and b
    or e
    and d
    and a
    and h
    or d
    ld d, l
    and [hl]
    xor [hl]
    xor [hl]
    and e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add a
    and h
    and a
    db $f4
    ld a, a
    adc b
    jp nc, $ae7f

    xor l
    ld a, a
    and b
    ld a, a
    or c
    xor [hl]
    xor e
    xor e
    ld c, a
    or e
    xor [hl]
    and e
    and b
    cp b
    add sp, $7f
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
    ld d, l
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    xor d
    xor b
    and e
    and $57
    nop
    adc [hl]
    xor [hl]
    and l
    add sp, $7f
    adc b
    ld a, a
    or [hl]
    and b
    or d
    xor l
    push de
    ld c, a
    xor e
    or h
    and d
    xor d
    cp b
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    add sp, $57
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
    sub c
    adc [hl]
    add e
    ld a, a
    xor b
    and l
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
    or [hl]
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and b
    or e
    and d
    and a
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
    add sp, $57
    nop
    adc h
    cp b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $4f
    add l
    or c
    and h
    or d
    and a
    xor e
    cp b
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
    sub d
    adc a
    adc e
    add b
    sub d
    add a
    and $57
    nop
    add l
    or c
    and h
    or d
    and a
    xor e
    cp b
    ld a, a
    and d
    and b
    or h
    and [hl]
    and a
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
    xor l
    xor [hl]
    ld d, c
    xor h
    and b
    or e
    and d
    and a
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor a
    or c
    xor [hl]
    xor a
    and h
    or c
    xor e
    cp b
    ld c, a
    or c
    and b
    xor b
    or d
    and h
    and e
    ld a, a
    xor [hl]
    xor l
    and h
    or d
    add sp, $57
    nop
    adc b
    ld a, a
    and a
    and b
    or l
    and h
    xor l
    push de
    ld a, a
    or d
    and h
    and h
    xor l
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
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
    add sp, $51
    sub d
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
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and b
    or c
    and h
    ld a, a
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
    cp b
    ld c, a
    or e
    xor [hl]
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
    ld d, l
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor h
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
    or d
    add sp, $51
    adc b
    jp nc, $ad7f

    xor [hl]
    or e
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
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
    or e
    xor [hl]
    or h
    and [hl]
    and a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    and b
    or d
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
    and h
    xor e
    or d
    and h
    add sp, $57
    nop
    adc b
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
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
    or e
    and a
    and h
    ld d, l
    and [hl]
    or c
    and b
    or d
    or d
    rst $20
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
    and h
    cp b
    pop de
    xor e
    ld a, a
    and e
    xor [hl]
    ld c, a
    xor b
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    xor h
    and h
    rst $20
    ld d, a
    nop
    add e
    and b
    or c
    xor l
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
    adc b
    ld c, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    or [hl]
    xor b
    xor l
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and [hl]
    or c
    and b
    or d
    or d
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    ld c, a
    xor [hl]
    and l
    ld a, a
    and d
    xor e
    xor b
    xor l
    and [hl]
    cp b
    ld a, a
    or e
    and a
    xor b
    xor l
    and [hl]
    or d
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor e
    and b
    xor l
    and d
    and h
    ld [hl], l
    ld c, a
    adc b
    or e
    call nc, $a87f
    xor l
    or e
    or c
    xor b
    and [hl]
    or h
    xor b
    xor l
    and [hl]
    add sp, $57
    nop
    add a
    xor h
    xor h
    xor h
    add sp, $7f
    sub e
    and a
    xor b
    or d
    ld a, a
    xor b
    or d
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
    add sp, $57
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
    or [hl]
    and b
    xor l
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    db $f4
    ld a, a
    xor c
    or h
    or d
    or e
    ld d, l
    and b
    or l
    xor [hl]
    xor b
    and e
    ld a, a
    and h
    cp b
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    and b
    and d
    or e
    add sp, $57
    nop
    sub h
    and a
    db $e3
    and a
    or h
    and a
    add sp, $7f
    sbc b
    and h
    and b
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
    ld [hl], l
    ld d, c
    adc a
    and b
    or c
    and e
    xor [hl]
    xor l
    and $7f
    add c
    and b
    or e
    or e
    xor e
    and h
    and $4f
    adc b
    jp nc, $ae7f

    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    add sp, $51
    adc [hl]
    and a
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
    add sp, $7f
    add c
    or h
    or e
    ld c, a
    xor h
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    and l
    and b
    or d
    or e
    add sp, $57
    nop
    adc [hl]
    and a
    rst $20
    ld a, a
    adc b
    sub $a4
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or c
    and h
    xor e
    xor b
    and h
    or l
    and h
    ld a, a
    xor h
    cp b
    ld a, a
    and b
    xor l
    and [hl]
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
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    xor l
    xor b
    and d
    and h
    ld a, a
    and d
    and a
    and b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    add sp, $57
    nop
    sub e
    and a
    and b
    or e
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    rst $20
    ld a, a
    adc b
    or e
    call nc, $a54f
    or c
    xor [hl]
    xor h
    ld a, a
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
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    and c
    and h
    and b
    or e
    ld a, a
    add l
    add b
    adc e
    adc d
    adc l
    add h
    sub c
    and $57
    nop
    adc b
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
    ld a, a
    xor h
    cp b
    ld c, a
    or [hl]
    and h
    and b
    xor d
    xor l
    and h
    or d
    or d
    and h
    or d
    ld a, a
    and b
    or c
    and h
    add sp, $57
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
    or e
    or c
    and b
    xor b
    xor l
    ld c, a
    and b
    and [hl]
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
    ld a, a
    add [hl]
    sbc b
    adc h
    ld d, l
    xor b
    xor l
    ld a, a
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
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    and h
    or c
    xor h
    and h
    xor l
    ld c, a
    cp b
    and h
    xor e
    xor e
    and h
    and e
    ld a, a
    and b
    or e
    ld a, a
    xor h
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    and c
    or h
    and [hl]
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    xor h
    ld [hl], l
    ld d, a
    nop
    sub [hl]
    sub c
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    add b
    sub c
    rst $20
    ld c, a
    adc a
    add h
    adc [hl]
    adc a
    adc e
    add h
    ld a, a
    sub c
    sub h
    adc l
    ld a, a
    sub [hl]
    add a
    add h
    adc l
    ld a, a
    adc b
    ld d, c
    sub c
    adc [hl]
    add b
    sub c
    rst $20
    ld a, a
    add c
    sub h
    sub e
    ld a, a
    sbc b
    adc [hl]
    sub h
    ld c, a
    add d
    add b
    adc h
    add h
    ld a, a
    adc e
    adc [hl]
    adc [hl]
    adc d
    adc b
    adc l
    add [hl]
    rst $20
    ld d, c
    sub e
    add a
    add b
    sub e
    ld a, a
    adc a
    adc e
    add h
    add b
    sub d
    add h
    sub d
    ld a, a
    adc h
    add h
    rst $20
    ld c, a
    adc l
    adc [hl]
    sub [hl]
    ld a, a
    sub e
    add b
    adc d
    add h
    ld a, a
    sub e
    add a
    adc b
    sub d
    rst $20
    ld d, a
    nop
    sub [hl]
    sub c
    adc [hl]
    adc [hl]
    adc [hl]
    add b
    sub c
    rst $20
    ld c, a
    adc b
    sub e
    ldh [$92], a
    ld a, a
    sub c
    adc [hl]
    add b
    sub c
    rst $20
    ld d, c
    add h
    sub l
    add h
    adc l
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    sub c
    sub h
    adc l
    ld c, a
    add l
    sub c
    adc [hl]
    adc h
    ld a, a
    add b
    ld a, a
    add [hl]
    adc [hl]
    adc [hl]
    add e
    ld a, a
    sub c
    adc [hl]
    add b
    sub c
    rst $20
    ld d, a
    nop
    add l
    sub c
    adc b
    add h
    add e
    add b
    sbc h
    ld a, a
    sbc b
    and b
    and a
    xor [hl]
    xor [hl]
    rst $20
    ld c, a
    adc b
    or e
    call nc, $857f
    or c
    xor b
    and e
    and b
    cp b
    rst $20
    ld d, c
    adc b
    jp nc, $857f

    sub c
    adc b
    add h
    add e
    add b
    ld a, a
    xor [hl]
    and l
    ld c, a
    add l
    or c
    xor b
    and e
    and b
    cp b
    rst $20
    ld d, c
    adc l
    xor b
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and h
    and h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    rst $20
    ld d, a
    nop
    add a
    and h
    or c
    and h
    call nc, $a07f
    ld a, a
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld c, a
    add c
    add b
    sub c
    add c
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
    add l
    sub c
    adc b
    add h
    add e
    add b
    sbc h
    ld a, a
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
    ld c, a
    and b
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
    ld a, a
    and a
    and b
    or d
    ld d, l
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
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
    adc [hl]
    and a
    rst $20
    ld d, c
    adc b
    or e
    call nc, $b67f
    xor b
    and d
    xor d
    and h
    and e
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    pop de
    xor e
    ld a, a
    and c
    and h
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    ld c, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and [hl]
    xor [hl]
    xor [hl]
    and e
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
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    rst $20
    ld d, a
    nop
    add l
    sub c
    adc b
    add h
    add e
    add b
    sbc h
    ld a, a
    add a
    xor b
    cp b
    and b
    rst $20
    ld a, a
    sub [hl]
    and a
    and b
    or e
    ld c, a
    and e
    and b
    cp b
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
    and $51
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    add l
    or c
    xor b
    and e
    and b
    cp b
    add sp, $7f
    adc l
    xor [hl]
    ld c, a
    and e
    xor [hl]
    or h
    and c
    or e
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    xor b
    or e
    rst $20
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
    or e
    and a
    xor b
    xor l
    xor d
    ld c, a
    xor b
    or e
    call nc, $a67f
    or c
    and h
    and b
    or e
    ld a, a
    or e
    xor [hl]
    xor [hl]
    and $57
    nop
    add l
    sub c
    adc b
    add h
    add e
    add b
    sbc h
    ld a, a
    adc b
    or d
    xor l
    push de
    ld a, a
    xor b
    or e
    ld c, a
    add l
    or c
    xor b
    and e
    and b
    cp b
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    and $51
    adc b
    or e
    call nc, $b27f
    xor [hl]
    ld a, a
    and c
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    call nc, $ad7f
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
    ld hl, sp+$51
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
    add b
    sbc c
    add b
    adc e
    add h
    add b
    ld a, a
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld d, a
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
    ld c, a
    add h
    add b
    sub d
    sub e
    ld a, a
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
    sub h
    adc l
    adc b
    adc [hl]
    adc l
    ld a, a
    add d
    add b
    sub l
    add h
    ld c, a
    add b
    add a
    add h
    add b
    add e
    ld d, a
    nop
    nop
    inc b
    ld c, c
    dec bc
    ld bc, $0d0a
    ld [bc], a
    inc b
    inc bc
    ld a, [bc]
    inc c
    inc bc
    inc b
    inc b
    ld a, [bc]
    inc c
    ld c, a
    ld b, $04
    inc bc
    dec h
    ld [bc], a
    nop
    ld [$0012], sp
    xor e
    ld b, h
    nop
    nop
    ld bc, $0747
    nop
    jp hl


    ld b, h
    nop
    nop
    ld b, $05
    dec c
    nop
    ld [hl], a
    ld b, a
    ld bc, $0009
    ld a, d
    ld b, a
    ld d, h
    ld a, [bc]
    nop
    ld a, l
    ld b, a
    ld c, c
    inc c
    nop
    add b
    ld b, a
    ld b, e
    inc c
    rlca
    add e
    ld b, a
    jr z, jr_064_53dc

    rlca
    add [hl]
    ld b, a
    ld c, $3a
    jr c, jr_064_53e8

    ld b, $00
    rst $38
    rst $38

jr_064_53dc:
    and d
    ld bc, $451d
    rst $38
    rst $38
    ld a, [hl-]
    dec sp
    db $10
    rlca
    nop
    rst $38

jr_064_53e8:
    rst $38
    and d
    inc bc
    ld sp, $ff45
    rst $38
    ld a, [hl-]
    inc sp
    rrca
    ld [$ff00], sp
    rst $38
    and d
    ld bc, $4613
    rst $38
    rst $38
    daa
    inc e
    db $10
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc bc
    db $fd
    ld b, [hl]
    rst $38
    rst $38
    daa
    ld b, e
    ld [$0009], sp
    rst $38
    rst $38
    sub d
    inc bc
    ld de, $ff47
    rst $38
    daa
    dec l
    dec bc
    rlca
    nop
    rst $38
    rst $38
    and d
    inc bc
    add hl, bc
    ld b, l
    rst $38
    rst $38
    jr z, jr_064_5447

    ld c, $08
    nop
    rst $38
    rst $38
    and d
    ld bc, $4627
    rst $38
    rst $38
    inc hl
    inc c
    rla
    ld [$ff00], sp
    rst $38
    nop
    nop
    ld l, a
    ld b, h
    rst $38
    rst $38
    daa
    ld c, c
    add hl, bc
    rlca
    nop
    rst $38
    rst $38
    sub d
    inc bc
    dec h

jr_064_5447:
    ld b, a
    rst $38
    rst $38
    ld a, [hl-]
    ld c, d
    dec bc
    ld b, $00
    rst $38

Call_064_5450:
    rst $38
    nop
    nop
    ld a, [c]
    ld b, h
    db $fc
    ld b, $54
    add hl, sp
    ld a, [bc]
    ld bc, $ff00
    rst $38
    ld bc, $7300
    ld b, a
    or b
    ld b, $3a
    ld c, $0c
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    adc $44
    rst $38
    rst $38

Jump_064_5471:
    jr z, jr_064_54ba

    db $10
    ld [$ff00], sp
    rst $38
    nop
    nop
    add hl, sp
    ld b, a
    ld e, b
    rlca
    ld d, h
    ld [hl+], a
    rlca
    ld bc, $ff00
    rst $38
    ld bc, $7500
    ld b, a
    or c
    ld b, $00
    nop
    ld d, c
    sub [hl]
    ld d, h
    ld d, e
    and e
    ld d, l
    inc c
    ld [bc], a
    nop
    nop
    adc b
    ld a, a
    and b
    xor h
    ld a, a
    or e
    and a
    and h
    ld a, a
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld c, a
    add e
    sub h
    add e
    add h
    db $f4
    ld a, a
    or e
    and a
    and h
    ld a, a
    and h
    xor e
    and e
    and h
    or c
    ld a, a
    xor [hl]
    and l

jr_064_54ba:
    ld d, l
    or e
    and a
    and h
    ld a, a
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld a, a
    add c
    sub c
    adc [hl]
    sub d
    add sp, $51
    add a
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor h
    and h
    or e
    ld a, a
    or e
    and a
    and h
    ld c, a
    add l
    adc b
    sub d
    add a
    adc b
    adc l
    add [hl]
    ld a, a
    add [hl]
    sub h
    sub c
    sub h
    ld a, a
    and b
    or e
    ld d, l
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
    add a
    and h
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    or d
    and h
    and h
    xor b
    xor l
    and [hl]
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
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    add sp, $51
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
    xor b
    xor l
    and e
    db $f4
    ld c, a
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
    or d
    and a
    xor [hl]
    or [hl]
    ld a, a
    and a
    xor b
    xor h
    ld d, c
    and b
    xor l
    cp b
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    and d
    and b
    or e
    and d
    and a
    and $51
    sub [hl]
    and a
    xor [hl]

Call_064_5571:
    ld a, a
    xor d
    xor l
    xor [hl]
    or [hl]
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
    ld c, a
    and d
    and b
    or e
    and d
    and a
    ld a, a
    or e
    and a
    and h
    ld a, a
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld d, l
    xor [hl]
    and l
    ld a, a
    and a
    xor b
    or d
    ld a, a
    and e
    or c
    and h
    and b
    xor h
    or d
    add sp, $57
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor a
    and a
    xor [hl]
    or e
    xor [hl]
    ld a, a
    xor [hl]
    and l
    ld c, a
    xor a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld a, a
    and l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    cp b
    db $d3
    and h
    ld a, a
    and a
    and b
    or l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    or e
    xor b
    xor h
    and h
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld bc, $030c
    rlca
    inc bc
    ld bc, $030c
    nop
    ld bc, $0300
    nop
    sub b
    ld d, h
    ld bc, $083b
    ld b, $06
    nop
    rst $38
    rst $38
    and b
    nop
    adc l
    ld d, h
    rst $38
    rst $38
    nop
    nop
    inc c
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $0750
    add hl, bc
    inc d
    ld d, [hl]
    ld c, h
    jr nz, jr_064_5667

    ld d, h
    ld c, c
    sub c
    ld c, h
    sbc b
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld d, c
    cp $56
    ld d, c
    dec sp
    ld d, a
    nop
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
    xor b
    or d
    ld a, a
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    or c
    xor [hl]
    xor l
    or e
    ld d, l
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
    ldh [$92], a
    ld a, a
    add d
    add b
    sub l
    add h
    add sp, $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    and l
    and b
    xor l
    or e
    and b
    or d
    or e
    xor b
    and d
    ld c, a
    xor [hl]

jr_064_5667:
    xor a
    xor a
    xor [hl]
    or c
    or e
    or h
    xor l
    xor b
    or e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    and [hl]
    and h
    or e
    ld d, c
    xor b
    or e
    db $f4
    ld a, a
    and c
    or h
    or e
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    or [hl]
    and b
    xor d
    and h
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    and $57
    nop
    sub e
    and a
    and h
    or c
    and h
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
    and b
    ld c, a
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
    ld d, c
    xor e
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
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
    ld c, a
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
    add sp, $51
    add c
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
    ld c, a
    and a
    and b
    or l
    and h
    ld a, a
    and e
    xor b
    or d
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
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
    xor b
    or d
    ld a, a
    and b
    ld c, a
    and [hl]
    or c
    and h
    and b
    or e
    ld a, a
    xor a
    xor e
    and b
    and d
    and h
    ld a, a
    or e
    xor [hl]
    ld d, c
    xor h
    and h
    and h
    or e
    ld a, a
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
    ld c, a
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    or d
    add sp, $57
    nop
    adc [hl]
    and a
    and $7f
    sbc b
    xor [hl]
    or h
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
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    ld a, a
    adc b
    sub $a4
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld d, l
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
    add sp, $51
    adc [hl]
    and a
    db $f4
    ld a, a
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
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    or e
    and a
    and h
    xor h
    ld a, a
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
    add sp, $57
    nop
    nop
    inc bc
    rlca
    inc bc
    ld [bc], a
    inc c
    inc bc
    rlca
    inc b
    ld [bc], a
    inc c
    inc bc
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
    inc bc
    ld d, [hl]
    rst $38
    rst $38
    dec sp
    ld b, $0b
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    ld b, $56
    rst $38
    rst $38
    ld c, c
    add hl, bc
    ld a, [bc]
    inc b
    db $10
    rst $38
    rst $38
    sub b
    nop
    ld a, [de]
    ld d, [hl]
    rst $38
    rst $38
    dec h
    add hl, bc
    dec b
    inc bc
    nop
    rst $38
    rst $38
    and b
    nop
    dec e
    ld d, [hl]
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0007
    inc bc
    inc c
    dec b
    nop
    nop
    nop
    nop
    nop
    ld l, e
    ld b, a
    ld sp, $00d4
    add hl, bc
    dec d
    ld e, b
    ld sp, $00d3
    add hl, bc
    ld [bc], a
    ld e, b
    ld c, h
    add c
    ld e, b
    ld c, [hl]
    ld [$581b], sp
    ld c, h
    ld de, $5559
    ld c, h
    dec a
    ld e, d
    ld d, l
    sbc [hl]
    jr nz, @+$03

    ld [$581f], sp
    inc sp
    call nc, Call_064_4c00
    ld [hl], d
    ld e, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ldh [$5a], a
    ld d, h
    ld c, c
    sub c
    ld c, h
    jr c, jr_064_5879

    ld d, h
    ld c, c
    sub c
    ld d, c
    ld l, l
    ld e, e
    ld l, e
    ld b, a
    ld sp, $00d2
    add hl, bc
    ld e, a
    ld e, b
    ld sp, $00c9
    add hl, bc
    jr c, jr_064_588a

    ld c, h
    and b
    ld e, e
    ld d, h
    ld c, c
    sub c
    ld c, h
    rst $38
    ld e, e
    ld sp, $00cf
    add hl, bc
    ld b, h
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld d, l
    ld c, h
    ld e, d
    ld e, h
    ld d, l
    add [hl]
    rra
    add d
    ld bc, $6508
    ld e, b
    ld l, [hl]
    ld b, $4c
    ld a, [bc]
    ld e, l
    add l
    sub c
    nop
    add [hl]
    ld b, l
    inc sp
    jp nc, $4900

    sub c
    ld c, h
    ld e, $5d
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld e, b
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld d, c
    ld [hl], e
    ld e, l
    ld d, e
    or c
    ld e, l
    ld b, a
    ld c, h
    jp hl


    ld e, l
    add h
    sbc c
    nop
    ld d, h

jr_064_5879:
    ld c, c
    sub c
    ld d, e
    db $fc
    ld e, l
    ld d, e
    add hl, hl
    ld e, [hl]
    nop
    adc b
    jp nc, $b37f

    and a
    and h
    ld a, a
    add d

jr_064_588a:
    add a
    add b
    adc b
    sub c
    adc h
    add b
    adc l
    ld c, a
    xor [hl]
    and l
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
    add l
    add b
    adc l
    ld d, l
    add d
    adc e
    sub h
    add c
    add sp, $51
    adc b
    sub $a4
    ld a, a
    or c
    and b
    xor b
    or d
    and h
    and e
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld c, a
    rst $30
    ei
    or $7f
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    adc b
    jp nc, $b57f

    and h
    or c
    cp b
    ld a, a
    and l
    or h
    or d
    or d
    cp b
    ld c, a
    or [hl]
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $51
    add e
    xor b
    and e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    or l
    xor b
    or d
    xor b
    or e
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
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
    xor h
    cp b
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    add [hl]
    xor [hl]
    xor [hl]
    and e
    rst $20
    ld c, a
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
    ld a, a
    or h
    xor a
    rst $20
    ld d, c
    sub d
    xor [hl]
    ld [hl], l
    ld a, a
    xor h
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
    ld c, a
    sub c
    add b
    adc a
    adc b
    add e
    add b
    sub d
    add a
    ld [hl], l
    ld d, c
    adc b
    or e
    ld [hl], l
    ld a, a
    and d
    or h
    or e
    and h
    ld [hl], l
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    xor e
    cp b
    ld [hl], l
    ld c, a
    or d
    xor h
    and b
    or c
    or e
    ld [hl], l
    ld a, a
    or h
    xor l
    and c
    and h
    and b
    or c
    and b
    and c
    xor e
    cp b
    ld [hl], l
    ld d, l
    xor a
    xor e
    or h
    or d
    ld [hl], l
    ld a, a
    and b
    xor h
    and b
    cp c
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld a, a
    xor [hl]
    and a
    ld [hl], l
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    and a
    xor b
    xor l
    xor d
    ld a, a
    or d
    xor [hl]
    and $75
    ld d, l
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    xor h
    or h
    and d
    and a
    ld [hl], l
    ld a, a
    or [hl]
    xor b
    xor e
    and e
    ld [hl], l
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
    ld [hl], l
    ld a, a
    xor d
    xor b
    xor l
    and e
    xor e
    cp b
    ld [hl], l
    ld d, l
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    xor b
    or e
    rst $20
    ld d, c
    add a
    or h
    and [hl]
    ld a, a
    xor b
    or e
    ld [hl], l
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld [hl], l
    ld c, a
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld a, a
    or [hl]
    and b
    or c
    xor h
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and d
    or h
    and e
    and e
    xor e
    cp b
    ld [hl], l
    ld a, a
    adc [hl]
    and a
    db $f4
    ld a, a
    and b
    xor l
    and e
    ld [hl], l
    ld d, l
    or d
    xor a
    and h
    and d
    or e
    and b
    and d
    or h
    xor e
    and b
    or c
    ld [hl], l
    ld d, l
    or c
    and b
    or l
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld a, a
    or d
    xor b
    xor h
    xor a
    xor e
    cp b
    ld d, l
    and e
    xor b
    or l
    xor b
    xor l
    and h
    ld [hl], l
    ld d, l
    adc [hl]
    xor [hl]
    xor a
    or d
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
    or e
    and a
    and h
    ld d, l
    or e
    xor b
    xor h
    and h
    rst $20
    ld a, a
    adc b
    sub $a4
    ld a, a
    xor d
    and h
    xor a
    or e
    ld d, l
    cp b
    xor [hl]
    or h
    ld a, a
    or e
    xor [hl]
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    xor l
    and [hl]
    rst $20
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
    ld a, a
    and a
    and h
    and b
    or c
    xor b
    xor l
    and [hl]
    ld c, a
    xor h
    and h
    ld a, a
    xor [hl]
    or h
    or e
    add sp, $7f
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
    ld d, l
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
    adc b
    or e
    call nc, $a07f
    ld a, a
    sub c
    add b
    sub c
    add h
    ld a, a
    add d
    add b
    adc l
    add e
    sbc b
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, l
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    add sp, $51
    adc b
    ld a, a
    xor a
    or c
    and h
    and l
    and h
    or c
    ld a, a
    xor h
    and b
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
    ld a, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    and h
    or c
    ld d, c
    and c
    cp b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    or d
    xor [hl]
    ld c, a
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
    ld a, a
    xor b
    or e
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    db $f4
    ld a, a
    inc d
    rst $20
    ld d, c
    add e
    xor b
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
    or d
    and h
    and h
    ld c, a
    xor h
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
    ld a, a
    ld d, h
    db $e3
    ld d, l
    adc h
    adc [hl]
    adc l
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    and $51
    adc l
    xor [hl]
    and $7f
    adc [hl]
    and a
    ld [hl], l
    ld a, a
    adc b
    ld a, a
    and a
    and b
    and e
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld c, a
    or e
    and b
    xor e
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    or e
    and h
    xor e
    xor e
    ld [hl], l
    ld d, a
    nop
    add a
    xor [hl]
    or [hl]
    ld a, a
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
    ld d, c
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
    xor b
    and l
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
    xor e
    xor b
    or d
    or e
    and h
    xor l
    add sp, $57
    nop
    adc [hl]
    or h
    or c
    ld a, a
    add d
    add a
    add b
    adc b
    sub c
    adc h
    add b
    adc l
    ld a, a
    xor b
    or d
    ld c, a
    or l
    and h
    or c
    cp b
    ld a, a
    or l
    xor [hl]
    and d
    and b
    xor e
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld a, a
    xor b
    or e
    ld d, l
    and d
    xor [hl]
    xor h
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld [hl], l
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or e
    and a
    and h
    ld a, a
    or [hl]
    and b
    cp b
    ld c, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    or [hl]
    and b
    and [hl]
    and [hl]
    xor e
    and h
    or d
    ld d, c
    xor b
    or e
    or d
    ld a, a
    and l
    xor b
    xor l
    and [hl]
    and h
    or c
    ld a, a
    or [hl]
    and a
    and h
    xor l
    ld c, a
    xor b
    or e
    call nc, $b37f
    or c
    cp b
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
    ld d, c
    adc h
    add h
    sub e
    sub c
    adc [hl]
    adc l
    adc [hl]
    adc h
    add h
    add sp, $4f
    adc b
    or e
    call nc, $b27f
    xor [hl]
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
    ld d, a
    nop
    adc b
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    db $f4
    ld c, a
    and c
    or h
    or e
    ld a, a
    adc b
    ld a, a
    and d
    xor [hl]
    or h
    xor e
    and e
    ld a, a
    xor l
    and h
    or l
    and h
    or c
    ld d, c
    and d
    and b
    or e
    and d
    and a
    ld a, a
    xor [hl]
    xor l
    and h
    add sp, $7f
    sub d
    xor [hl]
    ld a, a
    adc b
    jp nc, $ac4f

    and b
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and e
    xor [hl]
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld d, c
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    ld a, a
    or e
    and a
    and b
    or e
    ld a, a
    adc b
    ld c, a
    and l
    xor [hl]
    or h
    xor l
    and e
    add sp, $57
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    adc b
    ld a, a
    or d
    and h
    and h
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $7f
    sub e
    and a
    and h
    ld c, a
    and [hl]
    xor b
    or c
    xor e
    ld a, a
    or [hl]
    and a
    xor [hl]
    ld a, a
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    or e
    and a
    xor b
    or d
    ld d, c
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    and b
    and e
    ld [hl], l
    ld d, c
    adc [hl]
    adc d
    add sp, $7f
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
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
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
    and b
    or e
    ld a, a
    xor a
    xor [hl]
    xor [hl]
    or c
    ld c, a
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
    pop de
    xor e
    ld a, a
    and c
    and h
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    and b
    ld c, a
    or c
    and h
    and b
    xor e
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    xor [hl]
    xor l
    ld d, c
    xor h
    cp b
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    xor [hl]
    xor l
    and h
    ld a, a
    and e
    and b
    cp b
    add sp, $4f
    adc l
    xor [hl]
    ld a, a
    or [hl]
    xor [hl]
    or c
    or c
    xor b
    and h
    or d
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
    ld d, h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    add sp, $57
    nop
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and b
    or e
    and d
    and a
    add sp, $7f
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
    and [hl]
    and h
    or e
    ld a, a
    and b
    ld d, c
    or c
    and h
    and b
    xor e
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    and b
    or d
    ld c, a
    xor h
    cp b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    add sp, $57
    nop
    sbc b
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
    xor c
    and b
    xor h
    xor h
    and h
    and e
    ld a, a
    and l
    or h
    xor e
    xor e
    add sp, $57
    nop
    adc e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    or e
    ld a, a
    xor h
    cp b
    ld a, a
    and e
    and b
    or c
    xor e
    xor b
    xor l
    and [hl]
    ld c, a
    add c
    add b
    sbc b
    adc e
    add h
    add h
    add l
    rst $20
    ld d, c
    sub e
    and a
    and h
    ld a, a
    xor e
    and h
    and b
    and l
    ld a, a
    xor [hl]
    xor l
    ld a, a
    xor b
    or e
    or d
    ld c, a
    and a
    and h
    and b
    and e
    ld a, a
    xor b
    or d
    ld a, a
    or d
    xor [hl]
    ld a, a
    and d
    or h
    or e
    and h
    rst $20
    ld d, a
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    rst $20
    ld c, a
    add a
    or h
    and a
    and $51
    adc [hl]
    and a
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    add sp, $7f
    adc b
    or e
    call nc, $a07f
    ld c, a
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld a, a
    ld d, h
    ld d, l
    add e
    adc [hl]
    adc e
    adc e
    add sp, $57
    nop
    add c
    add b
    sbc b
    adc e
    add h
    add h
    add l
    sbc h
    ld a, a
    adc e
    xor b
    ld a, a
    xor e
    xor b
    xor b
    and l
    rst $20
    ld d, a
    nop
    adc e
    and h
    or e
    call nc, $a07f
    xor e
    xor e
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    xor l
    ld c, a
    xor a
    xor [hl]
    xor e
    xor b
    or e
    and h
    xor e
    cp b
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor [hl]
    or e
    and a
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
    or d
    add sp, $57
    nop
    adc b
    and l
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    xor [hl]
    xor l
    and h
    ld a, a
    and c
    or c
    and b
    and [hl]
    or d
    db $f4
    ld c, a
    and c
    or c
    and b
    and [hl]
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    ld a, a
    and c
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    inc c
    inc bc
    rlca
    inc bc
    inc bc
    inc c
    inc bc
    nop
    ld [bc], a
    nop
    rlca
    nop
    ld a, e
    ld e, b
    nop
    add hl, bc
    nop
    ld a, [hl]
    ld e, b
    ld b, $40
    dec b
    rlca
    ld b, $00
    rst $38
    rst $38
    nop
    nop
    jp hl


    ld d, a
    rst $38
    rst $38
    ld b, d
    dec b
    ld [$0006], sp
    rst $38
    rst $38
    and b
    nop
    ld hl, $ff58
    rst $38
    ld a, [hl-]
    rlca
    ld b, $09
    nop
    rst $38
    rst $38
    nop
    nop
    inc h
    ld e, b
    rst $38
    rst $38
    add hl, hl
    ld b, $0b
    ld [$ff00], sp
    rst $38
    nop
    nop
    ld l, e
    ld e, b
    rst $38
    rst $38
    ld c, l
    ld [$0606], sp
    nop
    rst $38
    rst $38
    nop
    nop
    ld l, [hl]
    ld e, b
    ld [hl], h
    rlca
    add l
    rlca
    dec bc
    ld d, $00
    rst $38
    rst $38
    and b
    nop
    ld [hl], c
    ld e, b
    rst $38
    rst $38
    nop
    nop
    ld d, c
    ret nz

    ld e, [hl]
    ld d, c
    ld d, $5f
    inc c
    ld [bc], a
    nop
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
    and $51
    adc b
    or e
    call nc, $a07f
    ld a, a
    or c
    and b
    xor b
    xor e
    or [hl]
    and b
    cp b
    ld c, a
    or e
    and a
    and b
    or e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    add [hl]
    adc [hl]
    adc e
    db $e3
    ld d, l
    add e
    add h
    adc l
    sub c
    adc [hl]
    add e
    ld a, a
    xor b
    xor l
    ld a, a
    adc c
    adc [hl]
    add a
    sub e
    adc [hl]
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
    and [hl]
    xor [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld a, a
    or e
    xor [hl]
    ld a, a
    or d
    and h
    and h
    ld d, l
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
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    inc b
    inc c
    inc bc
    rlca
    inc bc
    inc b
    inc c
    inc bc
    nop
    ld [bc], a
    ld bc, $0000
    cp l
    ld e, [hl]
    ld bc, $0001
    cp l
    ld e, [hl]
    ld [bc], a
    ld l, $07
    ld b, $08
    nop
    rst $38
    rst $38
    nop
    nop
    or a
    ld e, [hl]
    rst $38
    rst $38
    daa
    rlca
    inc b
    ld a, [bc]
    nop
    rst $38
    rst $38
    and b
    nop
    cp d
    ld e, [hl]
    rst $38
    rst $38
    nop
    nop
    ld b, a
    sub h
    nop
    ld d, $00
    ld c, c
    sub c
    ld d, c
    adc e
    ld e, a
    ld d, c
    jp z, $005f

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
    ld a, a
    xor l
    xor [hl]
    ld c, a
    xor e
    xor [hl]
    xor l
    and [hl]
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
    sub e
    and a
    and b
    or e
    ld a, a
    and b
    xor e
    xor [hl]
    xor l
    and h
    ld a, a
    xor h
    and b
    xor d
    and h
    or d
    ld c, a
    xor h
    and h
    ld a, a
    and a
    and b
    xor a
    xor a
    cp b
    add sp, $57
    nop
    adc b
    jp nc, $b37f

    and a
    xor b
    xor l
    xor d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld c, a
    and [hl]
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    and a
    xor [hl]
    xor a
    xor a
    xor b
    xor l
    and [hl]
    ld a, a
    xor b
    xor l
    ld d, l
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    dec b
    inc c
    inc bc
    rlca
    inc bc
    dec b
    inc c
    inc bc
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
    ld a, [hl]
    ld e, a
    rst $38
    rst $38
    dec hl
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    add b
    nop
    add l
    ld e, a
    rst $38
    rst $38
    ld a, [hl+]
    ld a, [bc]
    inc c
    dec b
    ld bc, $ffff
    and b
    nop
    adc b
    ld e, a
    rst $38
    rst $38
    nop
    nop
    ld d, c
    inc [hl]
    ld h, b
    nop
    adc [hl]
    or l
    and h
    or c
    ld a, a
    xor h
    and b
    xor l
    cp b
    ld a, a
    cp b
    and h
    and b
    or c
    or d
    db $f4
    ld c, a
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    ld a, a
    and e
    or h
    and [hl]
    ld a, a
    and b
    ld d, l
    xor e
    and b
    or c
    and [hl]
    and h
    ld a, a
    or e
    or h
    xor l
    xor l
    and h
    xor e
    add sp, $51
    sub e
    and a
    and b
    or e
    ld a, a
    or e
    or h
    xor l
    xor l
    and h
    xor e
    ld a, a
    and [hl]
    xor [hl]
    and h
    or d
    ld c, a
    or e
    xor [hl]
    ld a, a
    and b
    ld a, a
    and e
    xor b
    or d
    or e
    and b
    xor l
    or e
    ld a, a
    or e
    xor [hl]
    or [hl]
    xor l
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    ld [bc], a
    ld b, $0c
    inc bc
    rlca
    inc bc
    ld b, $0c
    inc bc
    nop
    nop
    ld bc, $0740
    dec b
    inc b
    db $10
    rst $38
    rst $38
    add b
    nop
    ld sp, $ff60
    rst $38
    nop
    nop
    ld l, e
    ld b, a
    inc [hl]
    dec h
    nop
    add hl, bc
    reti


    ld h, b
    ld c, h
    ld b, d
    ld h, c
    ld d, h
    ld c, c
    ld h, h
    jr c, @+$64

    nop
    nop
    ld e, [hl]
    inc de
    ld bc, $605f
    inc sp
    rst $00
    inc b
    inc sp
    sbc h
    inc b
    inc sp
    sub h
    inc b
    inc sp
    sub a
    inc b
    ld b, a
    ld c, h
    ld [hl], a
    ld h, d
    add l
    sbc h
    nop
    add [hl]
    ld [hl], $25
    nop
    ld c, h
    sub c
    ld h, d
    ld d, h
    ld c, c
    sub c
    ld c, h
    inc bc
    ld h, e
    ld d, h
    ld c, c
    sub c
    sbc h
    inc b
    jr nz, jr_064_60e6

    ld d, [hl]
    ld h, e
    adc h

jr_064_60e6:
    ld h, e
    nop
    nop
    db $eb
    ld h, b
    ld h, [hl]
    ld b, a
    ld c, h
    or b
    ld h, e
    ld d, h
    ld c, c
    sub c
    sub h
    inc b
    dec hl
    ld [bc], a
    add sp, $63
    scf
    ld h, h
    nop
    nop
    rst $38
    ld h, b
    ld h, [hl]
    ld b, a
    ld c, h
    ld c, e
    ld h, h
    ld d, h
    ld c, c
    sub c
    sub a
    inc b
    ld sp, $8703
    ld h, h
    cp d
    ld h, h
    nop
    nop
    inc de
    ld h, c
    ld h, [hl]
    ld b, a
    ld c, h
    sub $64
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $04c7
    add hl, bc
    add hl, hl
    ld h, c
    ld c, h
    rla
    ld h, l
    ld d, h
    ld c, c
    sub c
    ld c, h
    rst $18
    ld h, l
    ld d, h
    ld c, c
    sub c
    ld d, e
    ld e, $66
    inc [hl]
    dec h
    nop
    add hl, bc
    dec sp
    ld h, c
    inc c
    dec l
    nop
    ld b, e
    inc de
    ld bc, $0c01
    ld l, $00
    nop
    sub d
    sub h
    sub c
    add [hl]
    add h
    sbc h
    ld a, a
    add a
    and h
    cp b
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld c, a
    xor e
    xor b
    or e
    or e
    xor e
    and h
    ld a, a
    or e
    cp b
    xor d
    and h
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
    and a
    and b
    xor l
    and e
    ld a, a
    xor b
    or e
    ld c, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $7f
    adc b
    or e
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    xor l
    xor [hl]
    or e
    ld d, c
    and c
    and h
    ld a, a
    or l
    and h
    or c
    cp b
    ld a, a
    or d
    xor h
    and b
    or c
    or e
    ld a, a
    or e
    xor [hl]
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
    xor h
    and h
    db $f4
    ld a, a
    and c
    or h
    or e
    ld d, l
    xor b
    or e
    ld a, a
    or e
    and b
    xor d
    and h
    or d
    ld a, a
    and [hl]
    or h
    or e
    or d
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
    or e
    xor [hl]
    ld c, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld d, l
    adc b
    jp nc, $ad7f

    or h
    xor h
    and c
    and h
    or c
    ld a, a
    xor [hl]
    xor l
    and h
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
    xor e
    xor [hl]
    or d
    or e
    ld a, a
    xor [hl]
    xor l
    ld c, a
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
    and l
    xor b
    and h
    xor e
    and e
    add sp, $51
    adc b
    pop de
    xor e
    ld a, a
    cp c
    and b
    xor a
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor c
    or h
    or d
    or e
    ld c, a
    xor e
    xor b
    xor d
    and h
    ld a, a
    adc b
    ld a, a
    and e
    xor b
    and e
    ld a, a
    xor h
    cp b
    ld d, l
    and h
    xor l
    and h
    xor h
    xor b
    and h
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    or [hl]
    and b
    or c
    rst $20
    ld d, a
    nop
    sub d
    sub h
    sub c
    add [hl]
    add h
    sbc h
    ld a, a
    add b
    or c
    or c
    or c
    and [hl]
    and a
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
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    rst $20
    ld d, c
    adc [hl]
    adc d
    db $f4
    ld a, a
    xor d
    xor b
    and e
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    and [hl]
    and h
    or e
    ld c, a
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
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
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    add c
    add b
    add e
    add [hl]
    add h
    add sp, $57
    nop
    sub d
    sub h
    sub c
    add [hl]
    add h
    sbc h
    ld a, a
    sub e
    add a
    sub h
    adc l
    add e
    add h
    sub c
    db $e3
    ld c, a
    add c
    add b
    add e
    add [hl]
    add h
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
    ld d, l
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $b27f
    xor a
    and h
    and h
    and e
    add sp, $7f
    ld d, c
    add d
    xor [hl]
    xor l
    or d
    xor b
    and e
    and h
    or c
    ld a, a
    xor b
    or e
    ld a, a
    xor a
    or c
    xor [hl]
    xor [hl]
    and l
    ld c, a
    or e
    and a
    and b
    or e
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
    and h
    and e
    ld d, c
    xor h
    and h
    add sp, $7f
    sbc b
    xor [hl]
    or h
    ld a, a
    or [hl]
    and h
    and b
    or c
    ld a, a
    xor b
    or e
    ld c, a
    xor a
    or c
    xor [hl]
    or h
    and e
    xor e
    cp b
    db $f4
    ld a, a
    and a
    and h
    and b
    or c
    and $57
    nop
    sub d
    sub h
    sub c
    add [hl]
    add h
    sbc h
    ld a, a
    add a
    and h
    cp b
    db $f4
    ld a, a
    xor d
    xor b
    and e
    rst $20
    ld c, a
    sub d
    or e
    xor b
    xor e
    xor e
    ld a, a
    or d
    xor e
    or h
    and [hl]
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and d
    and a
    or h
    and [hl]
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    and $51
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
    or d
    or e
    xor b
    xor e
    xor e
    ld a, a
    and b
    or e
    ld a, a
    xor b
    or e
    rst $20
    ld d, a
    nop
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    or e
    xor [hl]
    ld c, a
    and e
    and h
    and l
    and h
    and b
    or e
    ld a, a
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    and $51
    adc l
    xor [hl]
    or e
    ld a, a
    xor b
    and l
    ld a, a
    adc b
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
    xor b
    or e
    rst $20
    ld d, a
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    ld a, a
    adc b
    ld a, a
    and l
    and b
    xor b
    xor e
    and h
    and e
    ld c, a
    cp b
    xor [hl]
    or h
    db $f4
    ld a, a
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    db $f4
    ld d, l
    or d
    xor b
    or c
    rst $20
    ld d, a
    nop
    sub [hl]
    and a
    and h
    xor l
    ld a, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    or e
    xor b
    xor e
    xor e
    ld c, a
    xor b
    xor l
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or c
    xor h
    cp b
    db $f4
    ld a, a
    adc e
    sub e
    add sp, $51
    sub d
    sub h
    sub c
    add [hl]
    add h
    ld a, a
    or d
    and b
    or l
    and h
    and e
    ld a, a
    xor h
    cp b
    ld c, a
    xor e
    xor b
    and l
    and h
    add sp, $57
    nop
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld a, a
    or c
    and h
    and d
    xor [hl]
    and [hl]
    db $e3
    ld c, a
    xor l
    xor b
    cp c
    and h
    and e
    ld a, a
    xor h
    cp b
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
    ld d, c
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and d
    ld c, a
    ld d, h
    adc h
    adc [hl]
    adc l
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
    and c
    and h
    and b
    or e
    ld c, a
    xor h
    and h
    and $57
    nop
    adc [hl]
    xor [hl]
    and a
    db $f4
    ld a, a
    and a
    xor [hl]
    or [hl]
    ld a, a
    or d
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
    adc b
    and l
    ld a, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    call nc, $b37f
    or c
    and b
    xor a
    or d
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    or [hl]
    xor [hl]
    or c
    xor d
    xor b
    xor l
    and [hl]
    db $f4
    ld a, a
    cp b
    xor [hl]
    or h
    ld d, c
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
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    or e
    xor [hl]
    and b
    or d
    or e
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
    or e
    and b
    xor d
    and h
    ld c, a
    cp b
    xor [hl]
    or h
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    rst $20
    ld a, a
    adc a
    or c
    and h
    xor a
    and b
    or c
    and h
    ld d, l
    or e
    xor [hl]
    ld a, a
    and c
    and h
    ld a, a
    or d
    and a
    xor [hl]
    and d
    xor d
    and h
    and e
    rst $20
    ld d, a
    nop
    add [hl]
    or [hl]
    and b
    and b
    and b
    and a
    rst $20
    ld c, a
    adc b
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    xor [hl]
    or l
    and h
    or c
    xor a
    xor [hl]
    or [hl]
    and h
    or c
    and h
    and e
    ld [hl], l
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
    or e
    xor [hl]
    xor [hl]
    ld a, a
    and d
    xor [hl]
    xor h
    db $e3
    ld c, a
    and l
    xor [hl]
    or c
    or e
    and b
    and c
    xor e
    and h
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld d, c
    and c
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    and h
    ld [hl], l
    ld c, a
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld a, a
    xor b
    or d
    ld a, a
    or e
    xor [hl]
    or h
    and [hl]
    and a
    add sp, $57
    nop
    sbc b
    xor [hl]
    rst $20
    ld a, a
    add d
    add a
    add b
    adc h
    adc a
    ld a, a
    xor b
    xor l
    ld c, a
    xor h
    and b
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, c
    sbc b
    xor [hl]
    or h
    ld a, a
    xor e
    or h
    and d
    xor d
    and h
    and e
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
    or e
    xor b
    xor h
    and h
    add sp, $51
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld a, a
    xor b
    or d
    ld a, a
    or l
    and h
    or c
    cp b
    ld c, a
    and d
    and b
    or h
    or e
    xor b
    xor [hl]
    or h
    or d
    add sp, $7f
    add a
    and h
    ld a, a
    and a
    and b
    or d
    ld d, c
    or e
    or c
    and b
    xor a
    or d
    ld a, a
    or d
    and h
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
    ld c, a
    or e
    and a
    and h
    ld a, a
    add [hl]
    sbc b
    adc h
    add sp, $51
    add c
    or h
    or e
    db $e3
    db $e3
    and a
    and h
    db $e3
    and a
    and h
    and a
    db $e3
    db $e3
    or e
    and a
    and h
    ld c, a
    or e
    or c
    and b
    xor a
    or d
    ld a, a
    and b
    or c
    and h
    xor l
    push de
    ld d, l
    and b
    and d
    or e
    xor b
    or l
    and h
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
    xor l
    xor [hl]
    ld c, a
    xor a
    or c
    xor [hl]
    and c
    xor e
    and h
    xor h
    ld a, a
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
    ld d, l
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    add sp, $57
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
    xor l
    ld c, a
    and h
    xor e
    and h
    and d
    or e
    or c
    xor b
    and l
    cp b
    xor b
    xor l
    and [hl]
    ld a, a
    and c
    xor [hl]
    or h
    or e
    rst $20
    ld d, c
    adc b
    or e
    ld a, a
    or d
    or h
    or c
    and h
    ld a, a
    xor h
    and b
    and e
    and h
    ld a, a
    xor h
    and h
    ld c, a
    xor l
    and h
    or c
    or l
    xor [hl]
    or h
    or d
    add sp, $57
    nop
    adc l
    xor [hl]
    xor a
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
    ld a, a
    and a
    and h
    or c
    and h
    ld c, a
    and c
    or h
    or e
    ld a, a
    or e
    or c
    and b
    or d
    and a
    add sp, $57
    nop
    nop
    ld [bc], a
    ld de, $0704
    inc c
    inc bc
    ld de, $0705
    inc c
    inc bc
    nop
    ld de, $0107
    nop
    cpl
    ld h, c
    rlca
    inc bc
    nop
    cpl
    ld h, c
    rlca
    dec b
    nop
    cpl
    ld h, c
    rlca
    rlca
    nop
    cpl
    ld h, c
    rlca
    add hl, bc
    nop
    cpl
    ld h, c
    add hl, bc
    ld bc, $2f00
    ld h, c
    add hl, bc
    inc bc
    nop
    cpl
    ld h, c
    add hl, bc
    dec b
    nop
    cpl
    ld h, c
    add hl, bc
    rlca
    nop
    cpl
    ld h, c
    add hl, bc
    add hl, bc
    nop
    cpl
    ld h, c
    dec bc
    ld bc, $2f00
    ld h, c
    dec bc
    inc bc
    nop
    cpl
    ld h, c
    dec bc
    dec b
    nop
    cpl
    ld h, c
    dec bc
    rlca
    nop
    cpl
    ld h, c
    dec bc
    add hl, bc
    nop
    cpl
    ld h, c
    rrca
    inc bc
    nop
    ld [hl-], a
    ld h, c
    rrca
    ld b, $00
    ld [hl-], a
    ld h, c
    dec b
    rra
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    or b
    nop
    and l
    ld h, b
    rst $38
    rst $38
    ld b, b
    dec d
    ld a, [bc]
    ld [$ff00], sp
    rst $38
    sub d
    inc b
    rst $18
    ld h, b
    rst $38
    rst $38
    inc l
    ld a, [bc]
    rlca
    add hl, bc
    inc bc
    rst $38
    rst $38
    add d
    inc bc
    di
    ld h, b
    rst $38
    rst $38
    dec hl
    dec d
    rlca
    add hl, bc
    nop
    rst $38
    rst $38
    sub d
    inc b
    rlca
    ld h, c
    rst $38
    rst $38
    ld c, b
    inc de
    ld [$0006], sp
    rst $38
    rst $38
    sub b
    ld bc, $611b
    rst $38
    rst $38
    ld bc, $66e9
    nop
    nop
    nop
    sub c
    ld l, e
    ld b, a
    ld sp, $00c9
    add hl, bc
    ld hl, sp+$66
    ld c, h
    cp $66
    ld d, h
    ld c, c
    sub c
    ld c, h
    bit 4, a
    ld d, h
    ld c, c
    sub c
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
    sub d
    add b
    add l
    add l
    sub c
    adc [hl]
    adc l
    ld c, a
    add d
    adc b
    sub e
    sbc b
    db $f4
    ld a, a
    and a
    xor [hl]
    xor h
    and h
    ld a, a
    xor [hl]
    and l
    ld a, a
    or e
    and a
    and h
    ld d, l
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
    rst $20
    ld d, c
    ld [hl], l
    sub e
    and a
    and b
    or e
    call nc, $b67f
    and a
    and b
    or e
    ld a, a
    adc b
    ret nc

    ld c, a
    xor l
    xor [hl]
    or c
    xor h
    and b
    xor e
    xor e
    cp b
    ld a, a
    or d
    and b
    cp b
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
    ld c, a
    xor b
    or d
    xor l
    push de
    ld a, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    xor l
    xor [hl]
    or [hl]
    add sp, $51
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    and [hl]
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld c, a
    and b
    xor l
    cp b
    ld a, a
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
    ld d, c
    and c
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
    or c
    and h
    call nc, $b24f
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
    or c
    xor [hl]
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
    adc a
    adc [hl]
    sub [hl]
    add h
    sub c
    ld c, a
    adc a
    adc e
    add b
    adc l
    sub e
    add sp, $57
    nop
    sub e
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
    ld c, a
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
    ld a, a
    and l
    and b
    xor h
    xor [hl]
    or h
    or d
    ld d, c
    or e
    and a
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
    sub d
    add b
    add l
    db $e3
    ld c, a
    add l
    sub c
    adc [hl]
    adc l
    add sp, $57
    nop
    nop
    inc b
    nop
    inc b
    inc c
    add hl, de
    ld [bc], a
    nop
    dec b
    dec c
    add hl, de
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    inc c
    ld bc, $0507
    ld [bc], a
    inc c
    ld bc, $0000
    ld bc, $0843
    inc b
    add hl, bc
    nop
    rst $38
    rst $38
    sub b
    nop
    ld_long $ff66, a
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    rlca
    inc bc
    ld bc, $010c
    rlca
    inc b
    ld bc, $010c
    inc bc
    inc b
    ld [bc], a
    inc bc
    ld d, [hl]
    nop
    nop
    nop
    ld b, $5f
    ld l, b
    nop
    nop
    ld [hl], e
    ld l, b
    nop
    nop
    ld [hl], a
    ld l, b
    nop
    nop
    ld a, e
    ld l, b
    nop
    nop
    ld a, a
    ld l, b
    nop
    nop
    add e
    ld l, b
    nop
    nop
    nop
    rrca
    ld de, $0600
    nop
    ld [hl], d
    ld l, b
    ld [hl-], a
    ld de, $3107
    ld bc, $0900
    ld [hl], d
    ld l, b
    adc l
    add a
    ld l, b
    sub c
    adc l
    or [hl]
    ld l, d
    sub c
    adc l
    db $dd
    ld l, d
    sub c
    adc l
    ld c, [hl]
    ld l, h
    sub c
    adc l
    jp $916a


    adc l
    ld [$916a], a
    ld l, a
    dec b
    inc sp
    ld bc, $9100
    ld l, e
    ld b, a
    ld c, h
    cpl
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld c, h
    ld e, a
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld sp, $001f
    ld [$688d], sp
    ld b, a
    ld c, h
    ld a, [hl-]
    ld l, [hl]
    ld c, [hl]
    ld [$691d], sp
    rrca
    and b
    nop
    ld [$68be], sp
    ld c, h
    ld a, [hl]
    ld l, l
    rrca
    adc h
    nop
    ld [$691d], sp
    ld b, $01
    rra
    ld l, c
    rrca
    ld bc, $4c00
    ld h, a
    ld l, a
    rrca
    ld [bc], a
    nop
    ld [$68f6], sp
    ld c, h
    inc [hl]
    ld l, a
    ld c, [hl]
    ld [$6917], sp
    rrca
    inc b
    nop
    ld [$6917], sp
    ld c, h
    ld h, a
    ld l, a
    rrca
    inc bc
    nop
    ld [$6911], sp
    add hl, de
    ld d, c
    rst $08
    ld [$68fe], sp
    rrca
    dec b
    nop
    ld [$6909], sp
    ld c, h
    ld l, e
    ld [hl], b
    ld d, h
    ld c, c
    nop
    inc b
    ld l, e
    adc [hl]
    sub c
    rrca
    ld [$4c00], sp
    add hl, de
    ld l, a
    ld c, c
    sub c
    rrca
    ld b, $00
    ld c, h
    add hl, hl
    ld [hl], b
    rrca
    rlca
    nop
    ld c, c
    sub c
    ld c, h
    ld c, d
    ld [hl], b
    rrca
    rlca
    nop
    ld c, c
    sub c
    ld c, h
    ld [hl], l
    ld l, a
    inc bc
    ld a, [de]
    ld l, c
    ld c, h
    pop de
    ld l, a
    rrca
    ld [$4900], sp
    sub c
    nop
    dec hl
    ld l, c
    add hl, bc
    ld a, [hl+]
    ld l, c
    nop
    ld c, d
    ld l, c
    adc [hl]
    sub c
    sub c
    ld c, h
    inc [hl]
    ld l, a
    ld c, [hl]
    ld [$6943], sp
    rrca
    inc b
    nop
    ld [$6943], sp
    rrca
    ld a, a
    nop
    ld c, h
    ld l, e
    ld [hl], b
    ld d, h
    ld c, c
    dec d
    nop
    sub c
    ld c, h
    pop de
    ld l, a
    ld c, c
    dec d
    ld bc, $6a91
    adc $6c
    ld l, c
    nop
    rst $20
    ld l, h
    sub c
    ld sp, $001f
    ld [$6895], sp
    ld b, a
    ld c, h
    ldh [$6d], a
    ld c, [hl]
    ld [$69d2], sp
    rrca
    and b
    nop
    ld [$6973], sp
    ld c, h
    add hl, sp
    ld l, l
    rrca
    adc h
    nop

Jump_064_696c:
    ld [$69d2], sp
    ld b, $01
    call nc, $0f69
    add hl, bc
    nop
    ld c, h
    ld h, a
    ld l, a
    rrca
    ld [bc], a
    nop
    ld [$69ab], sp
    ld c, h
    inc [hl]
    ld l, a
    ld c, [hl]
    ld [$69cc], sp
    rrca
    inc b
    nop
    ld [$69cc], sp
    ld c, h
    ld h, a
    ld l, a
    rrca
    inc bc
    nop
    ld [$69c6], sp
    add hl, de
    ld d, c
    rst $08
    ld [$69b3], sp
    rrca
    dec b
    nop
    ld [$69be], sp
    ld c, h
    ld l, e
    ld [hl], b
    ld d, h
    ld c, c
    nop
    inc b
    ld l, e
    adc [hl]
    sub c
    rrca
    ld [$4c00], sp
    add hl, de
    ld l, a
    ld c, c
    sub c
    rrca
    ld b, $00
    ld c, h
    add hl, hl
    ld [hl], b
    rrca
    rlca
    nop
    ld c, c
    sub c
    ld c, h
    ld c, d
    ld [hl], b
    rrca
    rlca
    nop
    ld c, c
    sub c
    ld c, h
    ld [hl], l
    ld l, a
    inc bc
    rst $08
    ld l, c
    ld c, h
    pop de
    ld l, a
    rrca
    ld [$4900], sp
    sub c
    nop
    dec b
    ld l, d
    ld [$69e5], sp
    nop
    and $69
    add hl, bc
    push hl
    ld l, c
    nop
    ld c, d
    ld l, c
    adc [hl]
    sub c
    sub c
    ld c, h
    inc [hl]
    ld l, a
    ld c, [hl]
    ld [$69fe], sp
    rrca
    and c
    nop
    ld [$69fe], sp
    rrca
    ld a, a
    nop
    ld c, h
    ld l, e
    ld [hl], b
    ld d, h
    ld c, c
    dec d
    nop
    sub c
    ld c, h
    pop de
    ld l, a
    ld c, c
    dec d
    ld bc, $0f91
    sbc d
    nop
    ld [$6a1e], sp
    ld b, $01
    ld [hl+], a
    ld l, d
    ld b, $02
    ld [hl+], a
    ld l, d
    ld b, $03
    ld a, [de]
    ld l, d
    inc bc
    ld e, $6a
    ld c, h
    cp h
    ld [hl], d
    ld d, h
    ld c, c
    dec d
    nop
    sub c
    dec d
    ld bc, $6b91
    ld b, a
    ld c, h
    nop
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld sp, $0712
    add hl, bc
    dec h
    ld l, d
    inc [hl]
    ld d, e
    nop
    add hl, bc
    dec h
    ld l, d
    rrca
    ld a, [bc]
    nop
    ld l, e
    ld b, a
    ld c, h
    sbc a
    ld l, [hl]
    ld c, [hl]
    ld [$6aa2], sp
    rrca
    dec bc
    nop
    ld b, $01
    and a
    ld l, d
    ld b, $02
    xor h
    ld l, d
    ld b, $03
    or c
    ld l, d
    ld c, h
    ld h, a
    ld l, a
    rrca
    ld [bc], a
    nop
    ld [$6a91], sp
    ld c, h
    inc [hl]
    ld l, a
    ld c, [hl]
    ld [$6a9f], sp
    rrca
    inc b
    nop
    ld [$6a9f], sp
    ld c, h
    ld h, a
    ld l, a
    rrca
    inc bc
    nop
    ld [$6a99], sp
    add hl, de
    ld d, c
    rst $08
    ld [$6a84], sp
    rrca
    dec b
    nop
    ld c, h
    ld c, d
    ld [hl], b
    rrca
    rlca
    nop
    ld c, c
    sub c
    rrca
    inc c
    nop
    ld c, h
    ld l, e
    ld [hl], b
    ld d, h
    ld c, c
    nop
    call nz, $8e6b
    sub c
    rrca
    ld [$4c00], sp
    add hl, de
    ld l, a
    ld c, c
    sub c
    ld c, h
    ld [hl], l
    ld l, a
    inc bc
    and d
    ld l, d
    ld c, h
    pop de
    ld l, a
    rrca
    ld [$4900], sp
    sub c
    ld c, h
    adc e
    ld [hl], b
    ld c, c
    sub c
    ld c, h
    xor b
    ld [hl], b
    ld c, c
    sub c
    ld c, h
    rst $08
    ld [hl], b
    ld c, c
    sub c
    rrca
    ld [$0000], sp
    ld d, b
    ld l, e
    inc d
    nop
    ld [de], a
    inc d
    ld [bc], a
    nop
    sub c
    rrca
    add b
    nop
    nop
    ret nc

    ld l, d
    inc d
    nop
    ld [de], a
    inc d
    dec b
    nop
    sub c
    ld l, c
    ld [bc], a
    dec bc
    ld l, l
    ld l, c
    nop
    rrca
    ld l, l
    ld l, c
    ld [bc], a
    inc d
    ld l, l
    sub c
    rrca
    ld [$0000], sp
    adc d
    ld l, e
    inc d
    nop
    ld [de], a
    inc d
    inc bc
    nop
    sub c
    rrca
    add b
    nop
    nop
    rst $30
    ld l, d
    inc d
    nop
    ld [de], a
    inc d
    ld b, $00
    sub c
    ld l, c
    inc bc
    dec bc
    ld l, l
    ld l, c
    nop
    rrca
    ld l, l
    ld l, c
    inc bc
    inc d
    ld l, l
    sub c
    inc [hl]
    ld h, e
    nop
    add hl, bc
    ld [de], a
    ld l, e
    ld l, d
    jp z, Jump_064_696c

    nop
    sbc $6c
    sub c
    ld l, d
    ret c

    ld l, h
    ld l, c
    nop
    ld [c], a
    ld l, h
    ld b, a
    ld c, h
    ld h, [hl]
    ld [hl], d
    ld d, h
    ld c, c
    ld l, d
    call c, Call_064_766c
    nop
    ld [bc], a
    ld b, a
    ld c, h
    ld a, b
    ld [hl], d
    ld d, h
    ld c, c
    add l
    jp z, $6900

    nop
    rla
    ld l, l
    dec d
    add b
    rrca
    sbc b
    nop
    ld l, c
    nop
    inc e
    ld l, l
    ld [hl], $9f
    nop
    rrca
    jr c, jr_064_6b41

jr_064_6b41:
    ld b, a
    ld c, h
    sbc d
    ld [hl], d
    ld d, h
    ld c, c
    ld [hl], l
    nop
    nop
    rrca
    ld l, c
    nop
    push hl
    ld l, h
    sub c
    inc [hl]
    sbc a
    nop
    add hl, bc
    ld h, e
    ld l, e
    ld l, c
    ld [bc], a
    inc b
    ld l, l
    ld l, c
    nop
    push af
    ld l, h
    ld l, c
    ld [bc], a
    cp $6c
    sub c
    ld l, c
    ld [bc], a
    inc b
    ld l, l
    ld l, c
    nop
    jr z, jr_064_6bd8

    dec [hl]
    sbc a
    nop
    add l
    jp z, $6900

    nop
    rla
    ld l, l
    dec d
    sub b
    rrca
    sbc b
    nop
    ld l, c
    nop
    inc e
    ld l, l
    rrca
    jr c, jr_064_6b81

jr_064_6b81:
    ld l, c
    nop
    ld a, [hl+]
    ld l, l
    ld l, c
    ld [bc], a
    cp $6c
    sub c
    inc [hl]
    sbc a
    nop
    add hl, bc
    sbc l
    ld l, e
    ld l, c
    inc bc
    inc b
    ld l, l
    ld l, c
    nop
    push af
    ld l, h
    ld l, c
    inc bc
    cp $6c
    sub c
    ld l, c
    inc bc
    inc b
    ld l, l
    ld l, c
    nop
    jr z, jr_064_6c12

    dec [hl]
    sbc a
    nop
    add l
    jp z, $6900

    nop
    rla
    ld l, l
    dec d
    sub b
    rrca
    sbc b
    nop
    ld l, c
    nop
    inc e
    ld l, l
    rrca
    jr c, jr_064_6bbb

jr_064_6bbb:
    ld l, c
    nop
    ld a, [hl+]
    ld l, l
    ld l, c
    inc bc
    cp $6c
    sub c
    inc [hl]
    ld h, e
    nop
    add hl, bc
    db $ec
    ld l, e
    inc e
    add hl, bc
    ld b, $02
    call c, $066b
    inc bc
    db $e4
    ld l, e
    ld l, d
    jp nc, Jump_064_696c

jr_064_6bd8:
    nop
    db $ec
    ld l, h
    sub c
    ld l, d
    jp nc, Jump_064_696c

    nop
    rst $28
    ld l, h
    sub c
    ld l, d
    push de
    ld l, h
    ld l, c
    nop
    ld a, [c]
    ld l, h
    sub c
    inc e
    add hl, bc
    ld b, $03
    nop
    ld l, h
    ld b, $02
    ld a, [bc]
    ld l, h
    ld l, d
    inc sp
    ld l, l
    ld l, c
    nop
    dec l
    ld l, l
    inc bc
    ld de, $6a6c
    ld [hl], $6d
    ld l, c
    nop
    cpl
    ld l, l
    inc bc
    ld de, $6a6c
    inc sp
    ld l, l
    ld l, c
    nop
    ld sp, $476d

jr_064_6c12:
    ld c, h
    ld h, [hl]
    ld [hl], d
    ld d, h
    ld c, c
    inc e
    add hl, bc
    rlca
    ld bc, $6c20
    halt
    ld [bc], a
    ld b, a
    ld c, h
    ld a, b
    ld [hl], d
    ld d, h
    ld c, c
    add l
    jp z, $6900

    nop
    rla
    ld l, l
    dec d
    add b
    rrca
    sbc b
    nop
    ld l, c
    nop
    ld [hl+], a
    ld l, l
    ld l, h
    nop
    inc b
    ld [hl], $9f
    nop
    rrca
    jr c, jr_064_6c3f

jr_064_6c3f:
    ld b, a
    ld c, h
    sbc d
    ld [hl], d
    ld d, h
    ld c, c
    ld [hl], l
    nop
    nop
    rrca
    ld l, c
    nop
    dec l
    ld l, l
    sub c
    rrca
    ld [$3400], sp
    sbc a
    nop
    add hl, bc
    ld h, [hl]
    ld l, h
    ld l, c
    inc b
    ld [$696d], sp
    nop
    ld sp, hl
    ld l, h
    ld l, c
    inc b
    ld bc, $036d
    adc h
    ld l, h
    ld l, c
    inc b
    ld [$696d], sp
    nop
    db $fc
    ld l, h
    dec [hl]
    sbc a
    nop
    add l
    jp z, $6900

    nop
    rla
    ld l, l
    dec d
    sub b
    rrca
    sbc b
    nop
    ld l, c
    nop
    inc e
    ld l, l
    rrca
    jr c, jr_064_6c84

jr_064_6c84:
    ld l, c
    nop
    db $fc
    ld l, h
    ld l, c
    inc b
    ld bc, $146d
    nop
    ld [de], a
    inc d
    inc b
    nop
    sub c
    ld c, b
    nop
    rrca
    ld e, b
    nop
    ld c, c
    sub c
    ld l, e
    ld b, a
    ld sp, $0711
    add hl, bc
    cp b
    ld l, h
    ld c, h
    sub b
    ld [hl], c
    ld c, [hl]
    ld [$6cc4], sp
    ld c, h
    call nz, Call_064_5571
    add [hl]
    rrca
    ld [de], a
    nop
    ld [$6cbe], sp
    ld b, l
    inc sp
    ld de, $4c07
    jp nc, Jump_064_5471

    ld c, c
    sub c
    ld c, h
    rst $28
    ld [hl], c
    ld d, h
    ld c, c
    sub c
    ld c, h
    ld c, l
    ld [hl], d
    ld d, h
    ld c, c
    sub c
    add hl, bc
    ld a, [bc]
    inc bc
    ld b, a
    add hl, bc
    ld a, [bc]
    nop
    ld b, a
    ld a, [bc]
    nop
    ld b, a
    dec bc
    nop
    ld b, a
    add hl, bc
    ld a, [bc]
    inc bc
    ld b, a
    inc bc
    ld b, a
    dec c
    dec c
    dec c
    ld b, a
    dec c
    dec c
    ld b, a
    dec c
    ld b, a
    dec c
    dec c
    rrca
    dec c
    ld b, a
    dec c
    dec c
    ld b, a
    ld c, $0d
    ld b, a
    rrca
    dec c
    ld b, a
    inc c
    inc c
    inc c
    ld b, a
    inc c
    inc c
    ld b, a
    inc c
    ld b, a
    dec bc
    ld [$0b47], sp
    nop
    ld b, a
    add hl, bc
    ld a, [bc]
    inc bc
    ld b, a
    ld a, [bc]
    inc bc
    ld b, a
    add hl, bc
    ld a, [bc]
    inc bc
    ld b, a
    inc c
    ld c, $0c
    inc c
    ld b, a
    dec bc
    ld [$0047], sp
    ld [bc], a
    ld bc, $4703
    nop
    ld [bc], a
    ld bc, $0203
    ld b, a
    nop
    ld [bc], a
    ld bc, $0003
    ld b, a
    inc c
    ld b, a
    inc c
    inc c
    ld b, a
    dec c
    ld b, a
    rrca
    ld b, a
    ld c, $47
    ld a, [bc]
    inc bc
    ld b, a
    dec bc
    ld [bc], a
    ld b, a
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
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld d, c
    adc e
    adc b
    adc l
    adc d
    ld a, a
    and d
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    or c
    ld a, a
    and c
    cp b
    ld c, a
    xor h
    xor [hl]
    and c
    xor b
    xor e
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    and $57
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
    or e
    or c
    and b
    and e
    and h
    ld a, a
    xor [hl]
    or l
    and h
    or c
    ld a, a
    and b
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld d, c
    adc e
    adc b
    adc l
    adc d
    ld a, a
    and d
    and b
    and c
    xor e
    and h
    ld a, a
    xor [hl]
    or c
    ld a, a
    and c
    cp b
    ld c, a
    xor h
    xor [hl]
    and c
    xor b
    xor e
    and h
    ld a, a
    xor a
    and a
    xor [hl]
    xor l
    and h
    and $57
    nop
    sub e
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
    ld a, a
    or e
    and a
    and h
    ld c, a
    adc h
    adc [hl]
    add c
    adc b
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
    add d
    add b
    add c
    adc e
    add h
    ld c, a
    add d
    adc e
    sub h
    add c
    ld a, a
    add d
    adc [hl]
    adc e
    adc [hl]
    sub d
    sub d
    add h
    sub h
    adc h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
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
    and c
    and b
    or e
    or e
    xor e
    and h
    and $57
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
    add d
    add b
    add c
    adc e
    add h
    ld c, a
    sub e
    sub c
    add b
    add e
    add h
    ld a, a
    add d
    add h
    adc l
    sub e
    add h
    sub c
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    xor h
    and b
    cp b
    ld a, a
    or e
    or c
    and b
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
    ld a, a
    and a
    and h
    or c
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    and b
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
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
    or e
    or c
    and b
    and e
    and h
    and $57
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
    add d
    add b
    add c
    adc e
    add h
    ld c, a
    add d
    adc e
    sub h
    add c
    ld a, a
    sub e
    adc b
    adc h
    add h
    ld a, a
    add d
    add b
    adc a
    sub d
    sub h
    adc e
    add h
    add sp, $51
    sbc b
    xor [hl]
    or h
    ld a, a
    and d
    and b
    xor l
    ld a, a
    or e
    or c
    and b
    or l
    and h
    xor e
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or e
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
    or c
    and b
    and e
    and h
    ld a, a
    and b
    and d
    or c
    xor [hl]
    or d
    or d
    ld a, a
    or e
    xor b
    xor h
    and h
    and $57
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    add sp, $58
    nop
    add c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    xor [hl]
    xor a
    and h
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    or e
    and a
    and h
    ld c, a
    xor e
    xor b
    xor l
    xor d
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
    or d
    and b
    or l
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and [hl]
    and b
    xor h
    and h
    add sp, $57
    nop
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
    add sp, $57
    nop
    sub e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    and a
    and b
    or d
    ld a, a
    and c
    and h
    and h
    xor l
    ld c, a
    and d
    xor e
    xor [hl]
    or d
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
    ld a, a
    xor [hl]
    and l
    ld d, l
    xor b
    xor l
    and b
    and d
    or e
    xor b
    or l
    xor b
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
    and d
    xor [hl]
    xor l
    or e
    and b
    and d
    or e
    ld c, a
    cp b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    and b
    xor l
    and e
    ld d, l
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
    add sp, $58
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
    and b
    and [hl]
    and b
    xor b
    xor l
    add sp, $58
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
    xor b
    xor l
    add sp, $58
    nop
    sub [hl]
    and h
    pop de
    xor e
    ld a, a
    xor a
    or h
    or e
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor b
    xor l
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    or e
    and a
    and h
    ld a, a
    or e
    xor b
    xor h
    and h
    ld a, a
    and c
    and h
    xor b
    xor l
    and [hl]
    add sp, $57
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
    xor e
    xor b
    xor l
    xor d
    ld a, a
    or e
    xor [hl]
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor a
    and b
    or d
    or e
    ld a, a
    and a
    and h
    or c
    and h
    add sp, $58
    nop
    adc b
    xor l
    and d
    xor [hl]
    xor h
    xor a
    and b
    or e
    xor b
    and c
    xor e
    and h
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    or d
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and d
    and a
    xor [hl]
    or d
    and h
    xor l
    add sp, $58
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
    and h
    xor l
    or e
    and h
    or c
    add sp, $58
    nop
    sub d
    xor [hl]
    or c
    or c
    cp b
    db $e3
    db $e3
    ld d, b
    ld bc, $d073
    nop
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h
    ld a, a
    or e
    and b
    xor d
    and h
    xor l
    add sp, $58
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
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    and b
    ld d, l
    ld d, b
    ld bc, $d086
    nop
    add sp, $58
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
    and b
    xor d
    and h
    ld a, a
    or e
    and a
    and h
    ld c, a
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    or e
    and a
    and b
    or e
    ld d, l
    and a
    and b
    or d
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    cp b
    xor [hl]
    or h
    add sp, $58
    nop
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    db $e3
    db $e3
    or e
    and a
    and h
    ld c, a
    sub e
    adc b
    adc h
    add h
    ld a, a
    add d
    add b
    adc a
    sub d
    sub h
    adc e
    add h
    ld a, a
    xor b
    or d
    ld d, l
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and e
    xor c
    or h
    or d
    or e
    and h
    and e
    add sp, $57
    nop
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    db $e3
    db $e3
    or e
    and a
    and h
    ld c, a
    sub e
    sub c
    add b
    add e
    add h
    ld a, a
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    ld a, a
    xor b
    or d
    ld d, l
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and e
    xor c
    or h
    or d
    or e
    and h
    and e
    add sp, $57
    nop
    adc b
    jp nc, $b27f

    xor [hl]
    or c
    or c
    cp b
    db $e3
    db $e3
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
    adc h
    add b
    add d
    add a
    adc b
    adc l
    add h
    ld a, a
    xor b
    or d
    ld d, l
    and c
    and h
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    and e
    xor c
    or h
    or d
    or e
    and h
    and e
    add sp, $57
    nop
    add a
    and h
    xor e
    xor e
    xor [hl]
    rst $20
    ld a, a
    sbc b
    xor [hl]
    or h
    db $d3
    and h
    ld c, a
    ld d, d
    db $f4
    ld a, a
    or c
    xor b
    and [hl]
    and a
    or e
    and $51
    adc b
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
    db $e3
    ld c, a
    or e
    and a
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
    add sp, $57
    nop
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
    adc [hl]
    and a
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
    xor l
    xor [hl]
    ld c, a
    or d
    xor a
    and b
    and d
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    add sp, $51
    sub d
    or e
    xor [hl]
    xor a
    ld a, a
    xor b
    xor l
    ld a, a
    and b
    or e
    ld a, a
    and b
    xor l
    cp b
    ld c, a
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
    ld d, c
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
    and d
    xor [hl]
    or h
    xor l
    or e
    or c
    cp b
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor a
    xor b
    and d
    xor d
    ld a, a
    xor b
    or e
    ld a, a
    or h
    xor a
    add sp, $57
    nop
    adc l
    xor [hl]
    and $7f
    sub e
    and a
    and b
    or e
    call nc, $b57f
    and h
    or c
    cp b
    ld c, a
    or d
    or e
    or c
    and b
    xor l
    and [hl]
    and h
    ld [hl], l
    ld d, a
    nop
    adc [hl]
    and a
    db $f4
    ld a, a
    xor a
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
    add sp, $57
    nop
    sub [hl]
    and h
    ld a, a
    xor l
    and h
    and h
    and e
    ld a, a
    or e
    xor [hl]
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld c, a
    or e
    and a
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and a
    and h
    or c
    and h
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
    xor b
    or d
    ld c, a
    or d
    or e
    cp b
    xor e
    and h
    ld a, a
    xor e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    and $57
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
    ld d, c
    add l
    xor [hl]
    or c
    ld a, a
    sub d
    sub e
    add b
    add e
    adc b
    sub h
    adc h
    ld a, a
    or c
    or h
    xor e
    and h
    or d
    db $f4
    ld c, a
    xor a
    xor e
    and h
    and b
    or d
    and h
    ld a, a
    and c
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    or d
    xor b
    or a
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
    ld d, h
    adc h
    adc [hl]
    adc l
    db $f4
    ld c, a
    and h
    or a
    and d
    xor e
    or h
    and e
    xor b
    xor l
    and [hl]
    ld a, a
    add h
    add [hl]
    add [hl]
    sub d
    add sp, $51
    sub e
    and a
    and h
    ld a, a
    or d
    xor b
    or a
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    and c
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
    cp b
    ld a, a
    xor h
    or h
    or d
    or e
    ld c, a
    xor l
    xor [hl]
    or e
    ld a, a
    and c
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
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and d
    and b
    xor e
    ld a, a
    xor b
    or e
    and h
    xor h
    or d
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
    or c
    and h
    and b
    and e
    cp b
    add sp, $57
    nop
    nop
    ld b, $07
    nop
    rst $38
    inc d
    ld bc, $0500
    ld bc, $0214
    nop
    add hl, bc
    ld bc, $0314
    nop
    ld a, [bc]
    ld bc, $0414
    ld [bc], a
    ld bc, $1401
    dec b
    ld [bc], a
    dec c
    ld bc, $0614
    nop
    ld bc, $0703
    nop
    sub e
    ld l, h
    inc b
    nop
    ld b, $09
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    sbc l
    ld l, b
    rst $38
    rst $38
    nop
    ld b, $0d
    ld b, $00
    rst $38
    rst $38
    and b
    nop
    ld d, d
    ld l, c
    rst $38
    rst $38
    nop
    rlca
    ld de, $0006
    rst $38
    rst $38
    and b
    nop
    dec l
    ld l, d
    rst $38
    rst $38
    ld b, e
    ld [$0607], sp
    nop
    rst $38
    rst $38
    nop
    nop
    sbc d
    ld l, h
    ld de, $0207
    jp hl


    ld [hl], e
    nop
    nop
    db $ed
    ld [hl], e
    nop
    nop
    ld bc, $ee02
    ld [hl], e
    adc l
    cp $73
    sub c
    sub c
    rrca
    stop
    ld [$73f9], sp
    ld l, [hl]
    inc bc
    ld l, a
    ld [bc], a
    sub b
    ld l, [hl]
    ld [bc], a
    ld l, a
    inc bc
    sub b
    inc d
    ld bc, $1412
    ld bc, $9101
    rrca
    dec c
    nop
    adc d
    ld hl, sp-$6f
    ld b, a
    ld c, h
    ld [de], a
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    inc b
    ld [bc], a
    inc d
    ld bc, $0507
    ld [bc], a
    inc d
    ld bc, $0200
    inc b
    inc b
    inc bc
    dec b
    ld [hl], h
    inc b
    dec b
    inc b
    dec b
    ld [hl], h
    ld [bc], a
    ld bc, $0708
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    sbc c
    ld [hl], h
    nop
    nop
    ld bc, $0a08
    ld [$ff00], sp
    rst $38
    nop
    nop
    sbc c
    ld [hl], h
    ld bc, $0300
    ld [hl], c
    ld [hl], h
    nop
    nop
    ld [hl], l
    ld [hl], h
    nop
    nop
    db $76
    ld [hl], h
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [hl], a
    ld [hl], h
    dec b
    add a
    ld [hl], h
    adc l
    adc h
    ld [hl], h
    sub c
    sub c
    sub c
    rrca
    stop
    ld [$7482], sp
    ld l, [hl]
    inc bc
    ld l, a
    ld [bc], a
    sub b
    ld l, [hl]
    ld [bc], a
    ld l, a
    inc bc
    sub b
    ld [de], a
    inc d
    ld bc, $9002
    inc d
    ld bc, $1412
    ld bc, $9102
    rrca
    ld c, $00
    adc d
    ld hl, sp-$6f
    ld b, a
    ld c, h
    and b
    ld [hl], h
    ld d, h
    ld c, c
    sub c
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    inc b
    inc bc
    inc d
    ld bc, $0507
    inc bc
    inc d
    ld bc, $0200
    inc b
    inc b
    inc bc
    sub e
    ld [hl], h
    inc b
    dec b
    inc b
    sub e
    ld [hl], h
    ld [bc], a
    ld bc, $0708
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    sbc c
    ld [hl], h
    nop
    nop
    ld bc, $0a08
    ld [$ff00], sp
    rst $38
    nop
    nop
    sbc c
    ld [hl], h
    ld bc, $0200
    ld hl, sp+$74
    nop
    nop
    db $fc
    ld [hl], h
    nop
    nop
    ld bc, $fd02
    ld [hl], h
    adc l
    dec c
    ld [hl], l
    sub c
    sub c
    rrca
    stop
    ld [$7508], sp
    ld l, [hl]
    inc bc
    ld l, a
    ld [bc], a
    sub b
    ld l, [hl]
    ld [bc], a
    ld l, a
    inc bc
    sub b
    inc d
    ld bc, $1412
    ld bc, $9103
    rrca
    rrca
    nop
    adc d
    ld hl, sp-$6f
    ld b, a
    ld c, h
    ld hl, $5475
    ld c, c
    sub c
    nop
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    and l
    or c
    xor b
    and h
    xor l
    and e
    ld a, a
    xor b
    or d
    ld c, a
    or c
    and h
    and b
    and e
    cp b
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    inc b
    inc b
    inc d
    ld bc, $0507
    inc b
    inc d
    ld bc, $0200
    inc b
    inc b
    inc bc
    inc d
    ld [hl], l
    inc b
    dec b
    inc b
    inc d
    ld [hl], l
    ld [bc], a
    ld bc, $0708
    add hl, bc
    nop
    rst $38
    rst $38
    nop
    nop
    ld a, [de]
    ld [hl], l
    nop
    nop
    ld bc, $0a08
    ld [$ff00], sp
    rst $38
    nop
    nop
    ld a, [de]
    ld [hl], l
    ld bc, $0200
    db $76
    ld [hl], l
    nop
    nop
    ld a, d
    ld [hl], l
    nop
    nop
    nop
    adc l
    ld a, e
    ld [hl], l
    sub c
    sub c
    inc d
    ld bc, $1412
    ld bc, $9104
    ld c, b
    nop
    rrca
    sbc a
    nop
    ld c, h
    sub c
    ld [hl], l
    ld d, h
    ld a, h
    rrca
    add d
    nop
    ld c, c
    sub c
    nop
    add h
    or d
    or e
    and b
    and c
    xor e
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and d
    xor [hl]
    xor h
    xor h
    or h
    xor l
    xor b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld [hl], l
    ld d, a
    nop
    nop
    ld [bc], a
    rlca
    inc b
    dec b
    inc d
    ld bc, $0507
    dec b
    inc d
    ld bc, $0100
    ld [bc], a
    inc b
    ld bc, $7582
    nop
    ld [bc], a
    adc $75
    nop
    nop
    jp nc, $0075

    nop
    nop
    adc l
    db $d3
    ld [hl], l
    sub c
    sub c
    inc d
    ld bc, $1412
    ld bc, $9105
    ld c, b
    nop
    rrca
    sbc a
    nop
    ld b, $01
    add hl, de
    db $76
    rrca
    sbc e
    nop
    ld [$7624], sp
    ld b, $01
    db $f4
    ld [hl], l
    ld b, $02
    dec c
    db $76
    inc bc
    inc h
    db $76
    ld c, h
    ld b, h
    db $76
    adc e
    inc d
    ld c, c
    rrca
    ld l, $00
    ld a, a
    dec c
    nop
    rrca
    and h
    nop
    adc e
    inc a
    rrca
    ld sp, $0f00
    dec a
    nop
    ld c, b
    nop
    rrca
    sbc l
    nop
    rrca
    dec de
    nop
    rrca
    sbc h
    nop
    add hl, bc
    inc h
    db $76
    rrca
    and d
    nop
    ld c, h
    ld h, $76
    ld d, h
    ld a, h
    rrca
    add c
    nop
    ld c, c
    sub c
    nop
    add h
    or d
    or e
    and b
    and c
    xor e
    xor b
    or d
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and d
    xor [hl]
    xor h
    xor h
    or h
    xor l
    xor b
    and d
    and b
    or e
    xor b
    xor [hl]
    xor l
    or d
    ld [hl], l
    ld d, a
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
    and l
    or h
    xor e
    xor e
    cp b
    ld a, a
    and a
    and h
    and b
    xor e
    and h
    and e
    ld d, l
    and c
    and h
    and l
    xor [hl]
    or c
    and h
    ld a, a
    and c

Call_064_766c:
    and b
    or e
    or e
    xor e
    and h
    add sp, $57
    nop
    nop
    ld [bc], a
    rlca
    inc b
    ld b, $14
    ld bc, $0507
    ld b, $14
    ld bc, $0100
    ld [bc], a
    inc b
    ld bc, $75da
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
