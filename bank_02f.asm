; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

    cpl
    sbc h
    ld b, b
    cpl
    ld h, d
    ld b, c
    cpl
    ld h, [hl]
    ld b, c
    cpl
    ld l, d
    ld b, c
    cpl
    ld l, [hl]
    ld b, c
    cpl
    ld [hl], d
    ld b, c
    cpl
    db $76
    ld b, c
    cpl
    ld a, d
    ld b, c
    cpl
    add l
    ld b, c
    cpl
    adc c
    ld b, c
    cpl
    sub c
    ld b, c
    cpl
    sub l
    ld b, c
    cpl
    sbc l
    ld b, c
    cpl
    and l
    ld b, c
    cpl
    cp b
    ld b, c
    cpl
    cp h
    ld b, c
    cpl
    ret nz

    ld b, c
    cpl
    call nz, $2f41
    ld a, $42
    cpl
    ld b, d
    ld b, d
    cpl
    xor a
    ld b, c
    cpl
    ret z

    ld b, c
    cpl
    ld e, h
    ld b, d
    cpl
    ld [hl], h
    ld b, d
    cpl
    db $db
    ld b, e
    cpl
    ld [hl], h
    ld b, l
    cpl
    dec l
    ld b, [hl]
    cpl
    and $46
    cpl
    ldh a, [rDMA]
    cpl
    adc $47
    cpl
    xor h
    ld c, b
    cpl
    adc d
    ld c, c
    cpl
    ld b, a
    ld c, d
    cpl
    adc a
    ld c, d
    cpl
    ld a, [bc]
    ld c, e
    cpl
    dec [hl]
    ld c, e
    cpl
    ld a, a
    ld c, e
    cpl
    ret


    ld c, e
    cpl
    db $d3
    ld c, e
    cpl
    dec l
    ld c, h
    cpl
    add a
    ld c, h
    cpl
    pop hl
    ld c, h
    cpl
    jr nc, jr_02f_40ce

    cpl
    ld e, d
    ld c, l
    cpl
    sub e
    ld c, l
    cpl
    and b
    ld c, l
    cpl
    xor d
    ld c, l
    cpl
    cp c
    ld c, l
    cpl
    jp $2f4d


    xor c
    ld b, c
    cpl
    call $2f4d
    ld a, a
    ld c, [hl]
    ld b, a
    dec hl
    ld bc, $af09
    ld b, b
    dec hl
    ld [bc], a
    add hl, bc
    push bc
    ld b, b
    dec hl
    inc b
    add hl, bc
    db $db
    ld b, b
    inc bc
    pop af
    ld b, b
    ld sp, $032a
    add hl, bc
    cp l
    ld b, b
    ld c, e
    ld l, h
    nop
    ld b, b
    ld d, l
    inc bc
    pop af
    ld b, b
    ld c, e
    ld l, h
    adc d
    ld b, b
    ld d, l
    inc bc
    pop af
    ld b, b
    ld sp, $032a
    add hl, bc
    db $d3
    ld b, b
    ld c, e
    ld l, h
    dec hl

jr_02f_40ce:
    ld b, b
    ld d, l
    inc bc
    pop af
    ld b, b
    ld c, e
    ld l, h
    sub $40
    ld d, l
    inc bc
    pop af
    ld b, b
    ld sp, $032a
    add hl, bc
    jp hl


    ld b, b
    ld c, e
    ld l, h
    ld c, a
    ld b, b
    ld d, l
    inc bc
    pop af
    ld b, b
    ld c, e
    ld l, h
    dec de
    ld b, c
    ld d, l
    inc bc
    pop af
    ld b, b
    ld [hl-], a
    ld a, [hl+]
    inc bc
    ld c, e
    ld l, h
    ld a, d
    ld b, c
    ld c, [hl]
    ld [$4135], sp
    ld c, e
    ld l, h
    cp l
    ld b, c
    adc e
    inc d
    rrca
    sbc l
    nop
    db $76
    cp $02
    adc e
    ld a, [bc]
    rrca
    dec de
    nop
    ld a, a
    nop
    nop
    dec d
    nop
    rrca
    ld a, $00
    adc e
    ld e, $0f
    dec a
    nop
    db $76
    cp $00
    adc e
    ld a, [bc]
    sbc l
    add hl, bc
    cpl
    ld b, c
    inc [hl]
    dec c
    nop
    add hl, bc
    cpl
    ld b, c
    rrca
    ld c, [hl]
    nop
    add hl, bc
    ld b, [hl]
    ld b, c
    ld c, e
    ld l, h
    rst $10
    ld b, c
    adc e
    inc d
    ld c, e
    ld l, h
    dec bc
    ld b, d
    db $76
    cp $01
    adc e
    ld a, [bc]
    db $76
    cp $00
    adc e
    ld a, [bc]
    ld d, h
    ld c, c
    sub c
    ld sp, $032a
    add hl, bc
    ld d, l
    ld b, c
    ld c, e
    ld l, h
    ld b, c
    ld b, d
    ld d, h
    ld c, c
    inc bc
    ld e, e
    ld b, c
    ld c, e
    ld l, h
    sub $42
    ld d, h
    ld c, c
    ld [hl], $0d
    nop
    sbc h
    ld bc, $9100
    ld d, d
    ld l, h
    ld e, d
    ld b, e
    ld d, d
    ld l, h
    ld a, b
    ld b, e
    ld d, d
    ld l, h
    and e
    ld b, e
    ld d, d
    ld l, h
    reti


    ld b, e
    ld d, d
    ld l, h
    ld c, b
    ld b, h
    ld d, d
    ld l, h
    ld [hl], d
    ld b, h
    ld b, a
    ld c, e
    ld l, h
    adc l
    ld b, h
    ld d, h
    rrca
    ld h, $00
    ld c, c
    sub c
    ld d, d
    ld l, h
    and b
    ld b, h
    ld b, a
    ld c, e
    ld l, h
    cp [hl]
    ld b, h
    ld d, h
    ld c, c
    sub c
    ld d, d
    ld l, h
    ret


    ld b, h
    ld b, a
    dec d
    nop
    rrca
    jr z, jr_02f_419b

jr_02f_419b:
    ld c, c
    sub c
    ld b, a
    dec d
    inc b
    rrca
    jr z, jr_02f_41a3

jr_02f_41a3:
    ld c, c
    sub c
    ld d, d
    ld l, h
    ld h, $45
    ld b, a
    rrca
    inc e
    nop
    ld c, c
    sub c
    add l
    ld [$8b00], sp
    rrca
    add l
    daa
    nop
    sub c
    inc b
    inc bc
    ld c, e
    ld c, l
    inc b
    inc bc
    ld e, l
    ld c, a
    ld d, d
    ld l, h
    ld a, a
    ld b, l
    ld d, d
    ld l, h
    sbc h
    ld b, l
    inc e
    dec bc
    ld b, $01
    rst $20
    ld b, c
    ld b, $02
    db $ec
    ld b, c
    ld b, $03
    pop af
    ld b, c
    ld b, $04
    or $41
    ld b, $05
    ei
    ld b, c
    ld b, $06
    nop
    ld b, d
    ld b, h
    dec b
    ld b, d
    nop
    sub c
    ld b, h
    inc c
    ld b, d
    nop
    sub c
    ld b, h
    inc de
    ld b, d
    nop
    sub c
    ld b, h
    dec de
    ld b, d
    nop
    sub c
    ld b, h
    dec h
    ld b, d
    nop
    sub c
    ld b, h
    ld l, $42
    nop
    sub c
    ld b, h
    dec [hl]
    ld b, d
    nop
    sub c
    sub d
    sub h
    adc l
    add e
    add b
    sbc b
    ld d, b
    adc h
    adc [hl]
    adc l
    add e
    add b
    sbc b
    ld d, b
    sub e
    sub h
    add h
    sub d
    add e
    add b
    sbc b
    ld d, b
    sub [hl]
    add h
    add e
    adc l
    add h
    sub d
    add e
    add b
    sbc b
    ld d, b
    sub e
    add a
    sub h
    sub c
    sub d
    add e
    add b
    sbc b
    ld d, b
    add l
    sub c
    adc b
    add e
    add b
    sbc b
    ld d, b
    sub d
    add b
    sub e
    sub h
    sub c
    add e
    add b
    sbc b
    ld d, b
    ld [hl-], a
    call $9106
    ld [hl], $13
    nop
    inc sp
    rst $08
    ld b, $33
    pop de
    ld b, $32
    adc $06
    ld [hl-], a
    dec h
    nop
    inc sp
    ld d, [hl]
    rlca
    sbc h
    inc b
    nop
    ld [de], a
    ld [bc], a
    rlca
    ld bc, $0f91
    inc [hl]
    nop
    nop
    add b
    ld b, e
    inc sp
    ld b, a
    rlca
    ld [hl-], a
    ld c, b
    rlca
    inc sp
    jp nc, $3c02

    ld a, [bc]
    ld de, $0400
    ld l, c
    nop
    and c
    ld c, [hl]
    dec [hl]
    ld de, $3200
    jp nc, $3202

    inc de
    inc bc
    ld [hl-], a
    inc d
    inc bc
    ld [hl-], a
    dec d
    inc bc
    ld [hl-], a
    ld d, $03
    ld b, a
    ld c, e
    ld l, h
    cp a
    ld b, l
    ld d, h
    rrca
    inc d
    nop
    ccf
    nop
    ld b, $01
    ld e, $43
    ld b, $02
    ld [hl-], a
    ld b, e
    ld b, $03
    ld b, e
    ld b, e
    ld c, e
    ld l, h
    add c
    ld b, [hl]
    ld d, l
    add [hl]
    sbc [hl]
    xor l
    ld bc, $7508
    ld b, e
    ld c, e
    ld l, h
    or a
    ld b, [hl]
    ld d, l
    inc bc
    or [hl]
    ld b, d
    ld c, e
    ld l, h
    ld e, e
    ld b, [hl]
    ld d, l
    ld sp, $0308
    ld [$42c4], sp
    ld c, e
    ld l, h
    reti


    ld b, [hl]
    ld d, h
    rrca
    rla
    nop
    rrca
    dec d
    nop
    ld b, $00
    call nc, $0642
    ld [bc], a
    call nc, Call_02f_4b42
    ld l, h
    dec c
    ld b, a
    ld d, h
    ld c, c
    inc d
    nop
    ld [de], a
    ld a, [bc]
    rrca
    nop
    inc sp
    ld d, $07
    inc sp
    rla
    rlca
    inc sp
    jr jr_02f_42eb

    inc sp
    add hl, de
    rlca
    inc sp
    ld a, [de]
    rlca
    inc sp

jr_02f_42eb:
    dec de
    rlca
    inc sp
    inc e
    rlca
    inc sp
    dec e
    rlca
    inc sp
    ld e, $07
    inc sp
    rra
    rlca
    inc sp
    jr nz, jr_02f_4303

    inc sp
    ld hl, $3307
    ld [hl+], a
    rlca
    inc sp

jr_02f_4303:
    inc hl
    rlca
    inc sp
    inc h
    rlca
    inc sp
    dec h
    rlca
    inc sp
    ld h, $07
    inc sp
    daa
    rlca
    inc sp
    jr z, jr_02f_431b

    inc sp
    add hl, hl
    rlca
    ld [hl], $51
    nop
    rrca

jr_02f_431b:
    inc a
    nop
    sub c
    inc sp
    nop
    nop
    ld b, c
    xor c
    ld bc, $6c4b
    ld hl, $5446
    sbc [hl]
    xor c
    ld bc, $5408
    ld b, e
    inc bc
    or c
    ld b, d
    ld b, c
    ld [hl], b
    ld bc, $6c4b
    ld hl, $5446
    sbc [hl]
    ld [hl], b
    ld bc, $5f08
    ld b, e
    inc bc
    or c
    ld b, d
    ld b, c
    xor [hl]
    ld bc, $6c4b
    ld hl, $5446
    sbc [hl]
    xor [hl]
    ld bc, $6a08
    ld b, e
    inc bc
    or c
    ld b, d
    ld c, e
    ld l, h
    call z, Call_02f_5548
    inc sp
    inc de
    inc bc
    inc bc
    or c
    ld b, d
    ld c, e
    ld l, h
    call z, Call_02f_5548
    inc sp
    inc d
    inc bc
    inc bc
    or c
    ld b, d
    ld c, e
    ld l, h
    call z, Call_02f_5548
    inc sp
    dec d
    inc bc
    inc bc
    or c
    ld b, d
    ld c, e
    ld l, h
    call z, Call_02f_5548
    inc sp
    ld d, $03
    inc bc
    xor c
    ld b, d
    ld sp, $0716
    add hl, bc
    adc c
    ld b, e
    ld [hl-], a
    jr nz, jr_02f_4390

    ld sp, $0717
    add hl, bc
    sub d
    ld b, e
    ld [hl-], a

jr_02f_4390:
    ld hl, $3107
    jr @+$09

    add hl, bc
    sbc e
    ld b, e
    ld [hl-], a
    ld [hl+], a
    rlca
    ld sp, $0719
    add hl, bc
    and h
    ld b, e
    ld [hl-], a
    inc hl
    rlca
    ld sp, $071a
    add hl, bc
    xor l
    ld b, e
    ld [hl-], a
    inc h
    rlca
    ld sp, $071b
    add hl, bc
    or [hl]
    ld b, e
    ld [hl-], a
    dec h
    rlca
    ld sp, $071c
    add hl, bc
    cp a
    ld b, e
    ld [hl-], a
    ld h, $07
    ld sp, $071d
    add hl, bc
    ret z

    ld b, e
    ld [hl-], a
    daa
    rlca
    ld sp, $071e
    add hl, bc
    pop de
    ld b, e
    ld [hl-], a
    jr z, jr_02f_43d8

    ld sp, $071f
    add hl, bc
    jp c, $3243

jr_02f_43d8:
    add hl, hl
    rlca
    sub c
    inc sp
    rlc [hl]
    inc sp
    adc $06
    inc sp
    call $3306
    ret nc

    ld b, $33
    di
    ld b, $33
    jp hl


    ld b, $33
    db $f4
    ld b, $33
    push de
    ld b, $33
    sbc $06
    inc sp
    db $dd
    ld b, $33
    rst $18
    ld b, $33
    ret nz

    ld b, $33
    db $e4
    ld b, $33
    dec h
    nop
    inc sp
    cp [hl]
    ld b, $33
    cp a
    ld b, $33
    pop bc
    ld b, $33
    ld sp, hl
    ld b, $33
    db $fd
    ld b, $33
    rst $38
    ld b, $33
    nop
    rlca
    inc sp
    ld [bc], a
    rlca
    inc sp
    inc bc
    rlca
    inc sp
    inc b
    rlca
    inc sp
    dec c
    rlca
    inc sp
    ld c, $07
    inc sp
    rrca
    rlca
    inc sp
    db $10
    rlca
    inc sp
    dec d
    rlca
    inc sp
    ld d, $07
    inc sp
    rla
    rlca
    inc sp
    jr jr_02f_4442

    inc sp
    add hl, de
    rlca
    inc sp
    ld a, [de]
    rlca
    inc sp

jr_02f_4442:
    dec de
    rlca
    inc sp
    inc e
    rlca
    inc sp
    dec e
    rlca
    inc sp
    ld e, $07
    inc sp
    rra
    rlca
    inc sp
    jr nz, jr_02f_445a

    inc sp
    ld hl, $3307
    ld [hl+], a
    rlca
    inc sp

jr_02f_445a:
    inc hl
    rlca
    inc sp
    inc h
    rlca
    inc sp
    dec h
    rlca
    inc sp
    ld h, $07
    inc sp
    daa
    rlca
    inc sp
    jr z, jr_02f_4472

    inc sp
    add hl, hl
    rlca
    inc sp
    inc l
    rlca
    inc sp

jr_02f_4472:
    cpl
    rlca
    inc sp
    dec l
    rlca
    inc sp
    dec [hl]
    rlca
    inc sp
    ld [hl], $07
    inc sp
    inc a
    rlca
    inc sp
    dec a
    rlca
    inc sp
    ld b, c
    rlca
    inc sp
    ld b, d
    rlca
    inc sp
    ld b, e
    rlca
    inc sp
    ld b, h
    rlca
    inc sp
    and h
    ld [bc], a
    inc sp
    xor a
    ld [bc], a
    inc sp
    ld c, c
    rlca
    inc sp
    db $d3
    ld b, $33
    ld c, l
    rlca
    inc sp
    ld [de], a
    rlca
    inc sp
    inc de
    rlca
    inc sp
    ld de, $3307
    call nc, $3306
    inc b
    inc bc
    inc sp
    rlca
    inc bc
    inc sp
    ret c

    ld b, $33
    jp $3306


    jp nz, $3306

    add $06
    inc sp
    ld e, a
    rlca
    inc sp
    ld sp, $3307
    ld c, d
    rlca
    inc sp
    ld h, d
    rlca
    inc sp
    jr c, jr_02f_44d2

    inc sp
    ld a, [hl-]
    rlca
    inc sp
    dec sp
    rlca
    inc sp

jr_02f_44d2:
    inc sp
    rlca
    inc sp
    ccf
    rlca
    inc sp
    adc l
    rlca
    inc sp
    ld h, [hl]
    rlca
    inc sp
    ld l, b
    rlca
    inc sp
    ld l, c
    rlca
    inc sp
    ld l, d
    rlca
    inc sp
    adc [hl]
    rlca
    inc sp
    adc a
    rlca
    inc sp
    sub b
    rlca
    inc sp
    sub c
    rlca
    inc sp
    sub e
    rlca
    inc sp
    and h
    rlca
    inc sp
    and h
    rlca
    inc sp
    and l
    rlca
    inc sp
    db $ec
    ld b, $33
    db $ed
    ld b, $33
    ldh a, [rTMA]
    inc sp
    xor c
    rlca
    inc sp
    xor d
    rlca
    inc sp
    ret z

    ld b, $33
    xor h
    rlca
    inc sp
    xor l
    rlca
    inc sp
    or l
    rlca
    inc sp
    or [hl]
    rlca
    inc sp
    push bc
    rlca
    inc sp
    or a
    rlca
    inc sp
    or b
    rlca
    inc sp
    xor a
    rlca
    inc sp
    xor [hl]
    rlca
    inc sp
    rst $08
    rlca
    ld [hl], $0e
    nop
    ld [hl], $17
    nop
    ld l, l
    inc b
    ld d, d
    ld l, l
    dec b
    inc b
    ld l, l
    ld b, $35
    ld l, l
    rlca
    ld a, [bc]
    ld l, l
    ld [$6d0a], sp
    add hl, bc
    ld a, [bc]
    ld l, l
    ld a, [bc]
    ld a, [bc]
    ld l, l
    dec bc
    jr z, @+$6f

    inc c
    jr z, jr_02f_4583

    ei
    nop
    inc sp
    ld l, l
    rlca
    inc sp
    ld l, h
    rlca
    inc sp
    ld l, [hl]
    rlca
    inc sp
    ld l, a
    rlca
    inc sp
    ld [hl], e
    rlca
    inc sp
    db $76
    rlca
    inc sp
    ld [hl], a
    rlca
    inc sp
    ld a, c
    rlca
    inc sp
    ld [hl], d
    rlca
    inc sp
    ld a, e
    rlca
    inc sp
    ld [hl], $00
    sub b
    rrca
    ld e, l
    nop
    inc e
    rla
    ld b, $05
    ret


    ld b, l
    ld b, $07
    adc $45
    ld b, $0b

jr_02f_4583:
    db $d3
    ld b, l
    ld b, $0d
    ret c

    ld b, l
    ld b, $0f
    db $dd
    ld b, l
    ld b, $10
    ld [c], a
    ld b, l
    ld b, $11
    rst $20
    ld b, l
    ld b, $13
    db $ec
    ld b, l
    ld b, $14
    pop af
    ld b, l
    ld b, $16
    or $45
    ld b, $17
    ei
    ld b, l
    ld b, $18
    nop
    ld b, [hl]
    ld b, $1b
    dec b
    ld b, [hl]
    ld b, $1c
    ld a, [bc]
    ld b, [hl]
    ld b, $1d
    rrca
    ld b, [hl]
    ld b, $1e
    inc d
    ld b, [hl]
    ld b, $20
    add hl, de
    ld b, [hl]
    ld b, $21
    ld e, $46
    ld b, $22
    inc hl
    ld b, [hl]
    ld b, $23
    jr z, jr_02f_460f

    ld c, e
    ld l, h
    cp $49
    sub c
    ld c, e
    ld l, h
    sbc a
    ld c, l
    sub c
    ld c, e
    ld l, h
    ld l, $50
    sub c
    ld c, e
    ld l, h
    dec l
    ld d, h
    sub c
    ld c, e
    ld l, h
    nop
    ld e, b
    sub c
    ld c, e
    ld l, h
    ld [hl], c
    ld e, d
    sub c
    ld c, e
    ld l, h
    push de
    ld e, h
    sub c
    ld c, e
    add hl, hl
    nop
    ld b, b
    sub c
    ld c, e
    add hl, hl
    ret nz

    ld b, c
    sub c
    ld c, e
    add hl, hl
    ld b, d
    ld b, [hl]
    sub c
    ld c, e
    add hl, hl
    add hl, hl
    ld c, b
    sub c
    ld c, e
    add hl, hl
    ld sp, $914a
    ld c, e
    add hl, hl
    call nc, $914e
    ld c, e
    add hl, hl
    push de
    ld d, b
    sub c

jr_02f_460f:
    ld c, e
    add hl, hl
    ld [c], a
    ld d, d
    sub c
    ld c, e
    add hl, hl
    ld b, l
    ld d, l
    sub c
    ld c, e
    add hl, hl
    scf
    ld e, c
    sub c
    ld c, e
    add hl, hl
    call nz, $915b
    ld c, e
    add hl, hl
    add $5d
    sub c
    ld c, e
    add hl, hl
    inc c
    ld h, b
    sub c
    rrca
    ld e, l
    nop
    inc e
    rla
    ld b, $05
    add d
    ld b, [hl]
    ld b, $07
    add a
    ld b, [hl]
    ld b, $0b
    adc h
    ld b, [hl]
    ld b, $0d
    sub c
    ld b, [hl]
    ld b, $0f
    sub [hl]
    ld b, [hl]
    ld b, $10
    sbc e
    ld b, [hl]
    ld b, $11
    and b
    ld b, [hl]
    ld b, $13
    and l
    ld b, [hl]
    ld b, $14
    xor d
    ld b, [hl]
    ld b, $16
    xor a
    ld b, [hl]
    ld b, $17
    or h
    ld b, [hl]
    ld b, $18
    cp c
    ld b, [hl]
    ld b, $1b
    cp [hl]
    ld b, [hl]
    ld b, $1c
    jp $0646


    dec e
    ret z

    ld b, [hl]
    ld b, $1e
    call $0646
    jr nz, @-$2c

    ld b, [hl]
    ld b, $21
    rst $10
    ld b, [hl]
    ld b, $22
    call c, $0646
    inc hl
    pop hl
    ld b, [hl]
    ld c, e
    ld l, h
    add d
    ld c, d
    sub c
    ld c, e
    ld l, h
    inc l
    ld c, [hl]
    sub c
    ld c, e
    ld l, h
    db $d3
    ld d, b
    sub c
    ld c, e
    ld l, h
    db $e4
    ld d, h
    sub c
    ld c, e
    ld l, h
    ld a, e
    ld e, b
    sub c
    ld c, e
    ld l, h
    dec e
    ld e, e
    sub c
    ld c, e
    ld l, h
    add l
    ld e, l
    sub c
    ld c, e
    add hl, hl
    xor c
    ld b, b
    sub c
    ld c, e
    add hl, hl
    ld l, d
    ld b, d
    sub c
    ld c, e
    add hl, hl
    dec bc
    ld b, a
    sub c
    ld c, e
    add hl, hl
    db $fc
    ld c, b
    sub c
    ld c, e
    add hl, hl
    inc bc
    ld c, e
    sub c
    ld c, e
    add hl, hl
    ret z

    ld c, a
    sub c
    ld c, e
    add hl, hl
    ld [hl], l
    ld d, c
    sub c
    ld c, e
    add hl, hl
    add e
    ld d, e
    sub c
    ld c, e
    add hl, hl
    ld hl, $9156
    ld c, e
    add hl, hl
    cp h
    ld e, c
    sub c
    ld c, e
    add hl, hl
    ld c, e
    ld e, h
    sub c
    ld c, e
    add hl, hl
    ld h, e
    ld e, [hl]
    sub c
    ld c, e
    add hl, hl
    db $76
    ld h, b
    sub c
    ld c, e
    ld l, h
    call nz, $8549
    sub e
    nop
    add [hl]
    ld d, l
    sub c
    inc e
    rla
    ld b, $05
    ld b, d
    ld b, a
    ld b, $07
    ld c, c
    ld b, a
    ld b, $0b
    ld d, b
    ld b, a
    ld b, $0d
    ld d, a
    ld b, a
    ld b, $0f
    ld e, [hl]
    ld b, a
    ld b, $10
    ld h, l
    ld b, a
    ld b, $11
    ld l, h
    ld b, a
    ld b, $13
    ld [hl], e
    ld b, a
    ld b, $14
    ld a, d
    ld b, a
    ld b, $16
    add c
    ld b, a
    ld b, $17
    adc b
    ld b, a
    ld b, $18
    adc a
    ld b, a
    ld b, $1b
    sub [hl]
    ld b, a
    ld b, $1c
    sbc l
    ld b, a
    ld b, $1d
    and h
    ld b, a
    ld b, $1e
    xor e
    ld b, a
    ld b, $20
    or d
    ld b, a
    ld b, $21
    cp c
    ld b, a
    ld b, $22
    ret nz

    ld b, a
    ld b, $23
    rst $00
    ld b, a
    ld c, e
    ld l, h
    db $db
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    adc c
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld [hl], $51
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld d, e
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    rst $10
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    adc [hl]
    ld e, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    cp c
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld hl, sp+$40
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    xor e
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    jr nc, jr_02f_47cc

    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld c, l
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld b, a
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld l, $50
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    xor h
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    sbc $53
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld h, [hl]
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    jr z, jr_02f_4810

    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    adc [hl]
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    xor b
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    or l
    ld h, b
    ld d, h

jr_02f_47cc:
    ld c, c
    sub c
    inc e
    rla
    ld b, $05
    jr nz, jr_02f_481c

    ld b, $07
    daa
    ld c, b
    ld b, $0b
    ld l, $48
    ld b, $0d
    dec [hl]
    ld c, b
    ld b, $0f
    inc a
    ld c, b
    ld b, $10
    ld b, e
    ld c, b
    ld b, $11
    ld c, d
    ld c, b
    ld b, $13
    ld d, c
    ld c, b
    ld b, $14
    ld e, b
    ld c, b
    ld b, $16
    ld e, a
    ld c, b
    ld b, $17
    ld h, [hl]
    ld c, b
    ld b, $18
    ld l, l
    ld c, b
    ld b, $1b
    ld [hl], h
    ld c, b
    ld b, $1c
    ld a, e
    ld c, b
    ld b, $1d
    add d
    ld c, b
    ld b, $1e
    adc c
    ld c, b

jr_02f_4810:
    ld b, $20
    sub b
    ld c, b
    ld b, $21
    sub a
    ld c, b
    ld b, $22
    sbc [hl]
    ld c, b

jr_02f_481c:
    ld b, $23
    and l
    ld c, b
    ld c, e
    ld l, h
    db $fd
    ld c, d
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    and d
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld a, e
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    add h
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld [$5459], sp
    ld c, c
    sub c
    ld c, e
    ld l, h
    jp nc, Jump_02f_545b

    ld c, c
    sub c
    ld c, e
    ld l, h
    db $f4
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld h, $41
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld a, [c]
    ld b, d
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    sub h
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    adc d
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    add a
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld e, a
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    xor $51
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld [de], a
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    or [hl]
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld e, d
    ld e, d
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    push bc
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    sub $5e
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld [c], a
    ld h, b
    ld d, h
    ld c, c
    sub c
    inc e
    rla
    ld b, $05
    cp $48
    ld b, $07
    dec b
    ld c, c
    ld b, $0b
    inc c
    ld c, c
    ld b, $0d
    inc de
    ld c, c
    ld b, $0f
    ld a, [de]
    ld c, c
    ld b, $10
    ld hl, $0649
    ld de, $4928
    ld b, $13
    cpl
    ld c, c
    ld b, $14
    ld [hl], $49
    ld b, $16
    dec a
    ld c, c
    ld b, $17
    ld b, h
    ld c, c
    ld b, $18
    ld c, e
    ld c, c
    ld b, $1b
    ld d, d
    ld c, c
    ld b, $1c
    ld e, c
    ld c, c
    ld b, $1d
    ld h, b
    ld c, c
    ld b, $1e
    ld h, a
    ld c, c
    ld b, $20
    ld l, [hl]
    ld c, c
    ld b, $21
    ld [hl], l
    ld c, c
    ld b, $22
    ld a, h
    ld c, c
    ld b, $23
    add e
    ld c, c
    ld c, e
    ld l, h
    ld b, d
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    cp h
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    call nz, Call_02f_5451
    ld c, c
    sub c
    ld c, e
    ld l, h
    or [hl]
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld [hl], $59
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld b, $5c
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld d, b
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld e, b
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld c, d
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    db $eb
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    cp l
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    call Call_02f_544b
    ld c, c
    sub c
    ld c, e
    add hl, hl
    adc h
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld d, $52
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld b, [hl]
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld [c], a
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    and [hl]
    ld e, d
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld a, [$545c]
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld b, $5f
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld b, h
    ld h, c
    ld d, h
    ld c, c
    sub c
    inc e
    rla
    ld b, $05
    ret nc

    ld c, c
    ld b, $07
    rst $10
    ld c, c
    ld b, $0b
    sbc $49
    ld b, $0d
    push hl
    ld c, c
    ld b, $0f
    db $ec
    ld c, c
    ld b, $10
    di
    ld c, c
    ld b, $11
    ld a, [$0649]
    inc de
    ld bc, $064a
    inc d
    ld [$064a], sp
    rla
    rrca
    ld c, d
    ld b, $18
    ld d, $4a
    ld b, $1b
    dec e
    ld c, d
    ld b, $1d
    inc h
    ld c, d
    ld b, $1e
    dec hl
    ld c, d
    ld b, $20
    ld [hl-], a
    ld c, d
    ld b, $21
    add hl, sp
    ld c, d
    ld b, $23
    ld b, b
    ld c, d
    ld c, e
    ld l, h
    ld [hl], l
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    call c, Call_02f_544e
    ld c, c
    sub c
    ld c, e
    ld l, h
    cp $51
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    push de
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld d, h
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld [hl-], a
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    sbc b
    ld e, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    adc l
    ld b, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    add d
    ld b, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    db $fc
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    db $ec
    ld c, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    or c
    ld d, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    adc h
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld e, $57
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    jp c, Jump_02f_545a

    ld c, c
    sub c
    ld c, e
    add hl, hl
    dec e
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld [hl], l
    ld h, c
    ld d, h
    ld c, c
    sub c
    inc e
    rla
    ld b, $0d
    ld h, l
    ld c, d
    ld b, $10
    ld l, e
    ld c, d
    ld b, $18
    ld [hl], c
    ld c, d
    ld b, $1c
    ld [hl], a
    ld c, d
    ld b, $1d
    ld a, l
    ld c, d
    ld b, $21
    add e
    ld c, d
    ld b, $22
    adc c
    ld c, d
    ld c, e
    ld l, h
    rlca
    ld d, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, h
    ld d, a
    ld e, h
    ld d, l
    sub c
    ld c, e
    add hl, hl
    inc h
    ld c, h
    ld d, l
    sub c
    ld c, e
    add hl, hl
    ld a, [hl-]
    ld d, d
    ld d, l
    sub c

jr_02f_4a7d:
    ld c, e
    add hl, hl
    db $e3
    ld d, h
    ld d, l
    sub c
    ld c, e
    add hl, hl
    ld c, l
    ld e, l
    ld d, l
    sub c
    ld c, e
    add hl, hl
    scf
    ld e, a
    ld d, l
    sub c
    inc e
    rla
    ld b, $07
    cp l
    ld c, d
    ld b, $0d
    call nz, $064a
    rrca
    bit 1, d
    ld b, $10
    jp nc, $064a

    jr jr_02f_4a7d

    ld c, d
    ld b, $1c
    ldh [rWY], a
    ld b, $1d
    rst $20
    ld c, d
    ld b, $20
    xor $4a
    ld b, $21
    push af
    ld c, d
    ld b, $22
    db $fc
    ld c, d
    ld b, $23
    inc bc
    ld c, e
    ld c, e
    ld l, h
    rst $38
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld c, l
    ld d, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld a, b
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    sub c
    ld e, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld b, a
    ld c, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    and b
    ld d, d
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    inc de
    ld d, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    rst $38
    ld e, d
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    sbc d
    ld e, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    xor d
    ld e, a
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ret


    ld h, c
    ld d, h
    ld c, c
    sub c
    ld b, a
    inc e
    rla
    ld b, $07
    dec e
    ld c, e
    ld b, $0f
    inc hl
    ld c, e
    ld b, $20
    add hl, hl
    ld c, e
    ld b, $23
    cpl
    ld c, e
    ld c, e
    ld l, h
    cpl
    ld c, a
    ld d, l
    sub c
    ld c, e
    ld l, h
    cp [hl]
    ld e, c
    ld d, l
    sub c
    ld c, e
    add hl, hl
    ccf
    ld e, e
    ld d, l
    sub c
    ld c, e
    add hl, hl
    nop
    ld h, d
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    ld d, a
    ld c, e
    ld b, $0c
    ld e, h
    ld c, e
    ld b, $0e
    ld h, c

Call_02f_4b42:
    ld c, e
    ld b, $12
    ld h, [hl]
    ld c, e
    ld b, $15
    ld l, e
    ld c, e

Call_02f_4b4b:
    ld b, $1a
    ld [hl], b
    ld c, e
    ld b, $1f
    ld [hl], l
    ld c, e
    ld b, $24
    ld a, d
    ld c, e
    ld c, e
    ld l, h
    or [hl]
    ld c, e
    sub c
    ld c, e
    ld l, h
    add hl, sp
    ld d, d
    sub c
    ld c, e
    ld l, h
    sub b
    ld d, [hl]

Jump_02f_4b65:
    sub c
    ld c, e
    ld l, h
    cp [hl]
    ld e, [hl]
    sub c
    ld c, e
    add hl, hl
    dec b
    ld b, h
    sub c
    ld c, e
    add hl, hl
    adc h
    ld c, h
    sub c
    ld c, e
    add hl, hl
    ld c, d
    ld d, a
    sub c
    ld c, e
    add hl, hl
    sub l
    ld h, d
    sub c
    inc e
    rla
    ld b, $06
    and c
    ld c, e
    ld b, $0c
    and [hl]
    ld c, e
    ld b, $0e
    xor e
    ld c, e
    ld b, $12
    or b
    ld c, e
    ld b, $15
    or l
    ld c, e
    ld b, $1a
    cp d
    ld c, e
    ld b, $1f
    cp a
    ld c, e
    ld b, $24
    call nz, Call_02f_4b4b
    ld l, h
    scf
    ld c, h
    sub c
    ld c, e
    ld l, h
    inc d
    ld d, e
    sub c
    ld c, e
    ld l, h
    db $10
    ld d, a
    sub c
    ld c, e
    ld l, h
    ld c, [hl]
    ld e, a
    sub c
    ld c, e
    add hl, hl
    db $db
    ld b, h
    sub c
    ld c, e
    add hl, hl
    ld [hl], $4d
    sub c
    ld c, e
    add hl, hl
    db $e3
    ld d, a
    sub c
    ld c, e
    add hl, hl
    ld d, $63
    sub c
    ld c, e
    ld l, h
    pop hl
    ld c, c
    add l
    sub e
    nop
    add [hl]
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    push af
    ld c, e
    ld b, $0c
    db $fc
    ld c, e
    ld b, $0e
    inc bc
    ld c, h
    ld b, $12
    ld a, [bc]
    ld c, h
    ld b, $15
    ld de, $064c
    ld a, [de]
    jr jr_02f_4c39

    ld b, $1f
    rra
    ld c, h
    ld b, $24
    ld h, $4c
    ld c, e
    ld l, h
    sbc e
    ld c, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    sub d
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld d, l
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    xor d
    ld e, a
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    dec e
    ld b, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld [hl], d
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    jr nz, jr_02f_4c7b

    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld e, c
    ld h, e
    ld d, h
    ld c, c
    sub c
    inc e
    rla
    ld b, $06
    ld c, a
    ld c, h
    ld b, $0c
    ld d, [hl]
    ld c, h
    ld b, $0e

jr_02f_4c39:
    ld e, l
    ld c, h
    ld b, $12
    ld h, h
    ld c, h
    ld b, $15
    ld l, e
    ld c, h
    ld b, $1a
    ld [hl], d
    ld c, h
    ld b, $1f
    ld a, c
    ld c, h
    ld b, $24
    add b
    ld c, h
    ld c, e
    ld l, h
    ldh [$4c], a
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    xor a
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    adc d
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    db $dd
    ld e, a
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld b, d
    ld b, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    call Call_02f_544d
    ld c, c
    sub c
    ld c, e
    add hl, hl

jr_02f_4c7b:
    ld b, d
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    adc h
    ld h, e
    ld d, h
    ld c, c
    sub c
    inc e
    rla
    ld b, $06
    xor c
    ld c, h
    ld b, $0c
    or b
    ld c, h
    ld b, $0e
    or a
    ld c, h
    ld b, $12
    cp [hl]
    ld c, h
    ld b, $15
    push bc
    ld c, h
    ld b, $1a
    call z, $064c
    rra
    db $d3
    ld c, h
    ld b, $24
    jp c, $4b4c

    ld l, h
    dec bc
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    db $e4
    ld d, e
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    cp d
    ld d, a
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld a, [$545f]
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld [hl], e
    ld b, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld bc, $544e
    ld c, c
    sub c
    ld c, e
    add hl, hl
    add c
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    call z, $5463
    ld c, c
    sub c
    inc e
    rla
    ld b, $0c
    rst $38
    ld c, h
    ld b, $0e
    ld b, $4d
    ld b, $12
    dec c
    ld c, l
    ld b, $15
    inc d
    ld c, l
    ld b, $1a
    dec de
    ld c, l
    ld b, $1f
    ld [hl+], a
    ld c, l
    ld b, $24
    add hl, hl
    ld c, l
    ld c, e
    ld l, h
    add hl, bc
    ld d, h
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    sbc $57
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    rra
    ld h, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    sub l
    ld b, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld hl, $544e
    ld c, c
    sub c
    ld c, e
    add hl, hl
    and e
    ld e, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    pop af
    ld h, e
    ld d, h
    ld c, c
    sub c
    inc e
    rla
    ld b, $06
    ld b, d
    ld c, l
    ld b, $15
    ld c, b
    ld c, l
    ld b, $1a
    ld c, [hl]
    ld c, l
    ld b, $1f
    ld d, h
    ld c, l
    ld c, e
    ld l, h
    inc l
    ld c, l
    ld d, l
    sub c
    ld c, e
    add hl, hl
    ret


    ld b, l
    ld d, l
    sub c
    ld c, e
    add hl, hl
    ld c, h
    ld c, [hl]
    ld d, l
    sub c
    ld c, e
    add hl, hl
    push de
    ld e, b
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    ld [hl], b
    ld c, l
    ld b, $15
    ld [hl], a
    ld c, l
    ld b, $1a
    ld a, [hl]
    ld c, l
    ld b, $1f
    add l
    ld c, l
    ld b, $24
    adc h
    ld c, l
    ld c, e
    ld l, h
    ld l, c
    ld c, l
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    inc bc
    ld b, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    adc a
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    inc d
    ld e, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    add hl, hl
    ld de, $5464
    ld c, c
    sub c
    inc e
    rla
    ld b, $24
    sbc c
    ld c, l
    ld b, a
    ld c, e
    add hl, hl
    ld d, h
    ld h, h
    ld d, l
    sub c
    ld b, d
    nop
    ld b, a
    ld c, e
    ld l, h
    ld c, [hl]
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld b, d
    nop
    ld b, a
    ld c, e
    ld l, h
    ld c, [hl]
    ld b, a
    ld d, l
    ld c, e
    ld l, h
    ld e, h
    ld b, a
    ld d, h
    ld c, c
    sub c
    add [hl]
    ld c, e
    ld l, h
    ld c, b
    ld b, [hl]
    add l
    ld bc, $8600
    sub c
    add [hl]
    ld c, e
    ld l, h
    ld c, b
    ld b, [hl]
    add l
    sub [hl]
    nop
    add [hl]
    sub c
    ld l, e
    ld b, a
    ld c, e
    ld l, h
    ld a, a
    ld b, a
    ld d, l
    ld hl, $0936
    ldh [rKEY1], a
    ld c, e
    ld l, h
    sbc h
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    db $e3
    ld b, a
    rrca
    ld d, b
    nop
    ld c, a
    ld d, h
    ld c, [hl]
    ld e, c
    ld d, b
    ld b, $01
    rst $30
    ld c, l
    ld b, $02
    dec de
    ld c, [hl]
    inc bc
    ld c, l
    ld c, [hl]
    daa
    db $dd
    ld h, $06
    nop
    ld b, [hl]
    ld c, [hl]
    inc h
    nop
    nop
    inc bc
    add sp, $06
    ld [bc], a
    ccf
    ld c, [hl]
    dec h
    ld [hl-], a
    nop
    inc hl
    nop
    nop
    inc bc
    add sp, -$7a
    add l
    ld [hl+], a
    nop
    ld c, e
    ld l, h
    jr nc, jr_02f_4e5f

    ld d, h
    inc bc
    db $e4
    ld c, l
    daa
    dec de
    dec h
    ld b, $00
    ld b, [hl]
    ld c, [hl]
    inc h
    nop
    nop
    daa
    db $10
    ld b, $02
    ccf
    ld c, [hl]
    dec h
    db $f4
    ld bc, $0023
    nop
    daa
    db $10
    add [hl]
    add l
    ld [hl+], a
    nop
    ld c, e
    ld l, h
    ld c, a
    ld c, b
    ld d, h
    inc bc
    db $e4
    ld c, l
    ld c, e
    ld l, h
    ld l, a
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    adc h
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    xor l
    ld c, b
    ld d, h
    ld c, c
    sub c
    ld b, b
    inc b
    nop
    dec bc
    rrca
    ld e, h
    ld c, [hl]
    ld bc, $0380
    ld a, a

jr_02f_4e5f:
    ei
    or $7f
    sbc h
    ld a, a
    ld a, a
    ldh a, [$f7]
    or $f6
    or $50
    ei
    or $f6
    ld a, a
    sbc h
    ld a, a
    ldh a, [$f7]
    or $f6
    or $f6
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld l, e
    ld b, a
    rrca
    ld e, c
    nop
    dec bc
    ld [hl-], a
    sbc d
    ld c, [hl]
    dec bc
    sub [hl]
    sub e
    ld c, [hl]
    ld c, e
    ld l, h
    ld a, [hl+]
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    ld d, h
    ld c, c
    ld d, h
    ld c, c
    sub c
    ld c, e
    ld l, h
    adc c
    ld c, c
    ld d, h
    ld c, c
    sub c
    rrca
    inc c
    ld bc, $4b47
    ld l, l
    inc h
    db $76
    sub c
    ld sp, $0040
    add hl, bc
    push bc
    ld c, [hl]
    ld sp, $0041
    add hl, bc
    or c
    ld c, a
    ld sp, $001f
    add hl, bc
    xor h
    ld c, a
    ld sp, $001a
    add hl, bc
    and a
    ld c, a
    inc bc
    and d
    ld c, a
    ld sp, $0007
    add hl, bc
    sbc l
    ld c, a
    ld c, e
    ld l, l
    nop
    ld b, b
    ld d, l
    ld b, d
    nop
    inc e
    rrca
    ld b, $01
    rst $20
    ld c, [hl]
    ld b, $02
    daa
    ld c, a
    inc bc
    cpl
    ld c, a
    ld c, e
    ld l, l
    ld hl, $5540
    inc bc
    scf
    ld c, a
    inc e
    inc c
    ld b, $18
    dec b
    ld c, a
    ld b, $1a
    dec c
    ld c, a
    ld b, $0a
    dec d
    ld c, a
    ld b, $08
    dec de
    ld c, a
    ld b, $0b
    ld hl, $4b4f
    ld l, l
    ld l, e
    ld b, b
    ld d, l
    inc bc
    scf
    ld c, a
    ld c, e
    ld l, l
    or c
    ld b, b
    ld d, l
    inc bc
    scf
    ld c, a
    ld c, e
    ld l, l
    db $e4
    ld b, b
    ld d, l
    inc bc
    scf
    ld c, a
    and l
    rlca
    ld bc, $df03
    ld c, [hl]
    and l
    dec c
    ld bc, $df03
    ld c, [hl]
    and l
    ld de, $0301
    rst $18
    ld c, [hl]
    ld c, e
    ld l, l
    inc e
    ld b, c
    ld d, l
    inc bc
    scf
    ld c, a
    ld c, e
    ld l, l
    ld d, b
    ld b, c
    ld d, l
    inc bc
    scf
    ld c, a
    inc [hl]
    ld [$0800], sp
    ld c, c
    ld c, a
    inc h
    ld bc, $0000
    nop
    ld b, $00
    ld d, l
    ld c, a
    inc bc
    ld h, e
    ld c, a
    inc h
    ld bc, $0000
    nop
    ld b, $00
    ld a, c
    ld c, a
    inc bc
    ld l, [hl]
    ld c, a
    dec a
    ld bc, $4b00
    ld l, l
    and a
    ld b, c
    ld c, [hl]
    add hl, bc
    add a
    ld c, a
    inc bc
    sub d
    ld c, a
    ld c, e
    ld l, l
    ld [$4e41], a
    add hl, bc
    add a
    ld c, a
    inc bc
    sub d
    ld c, a
    ld c, e
    ld l, l
    dec c
    ld b, d
    ld c, [hl]
    add hl, bc
    add a
    ld c, a
    inc bc
    sub d
    ld c, a
    dec a
    ld bc, $4b00
    ld l, l
    ld c, c
    ld b, d
    ld c, [hl]
    add hl, bc
    add a
    ld c, a
    inc bc
    sub d
    ld c, a
    ld [hl], $08
    nop
    ld c, e
    ld l, l
    adc c
    ld b, d
    ld d, l
    inc bc
    sbc l
    ld c, a
    dec [hl]
    ld [$4b00], sp
    ld l, l
    and e
    ld b, d
    ld d, l
    inc bc
    sbc l
    ld c, a
    ld c, e
    ld l, l
    ret nz

    ld b, d
    sub c
    ld c, e
    ld l, l
    ld [$9142], a
    ld c, e
    ld l, l
    dec e
    ld b, e
    sub c
    ld c, e
    ld l, l
    ld e, a
    ld b, e
    sub c
    inc sp
    ld b, b
    nop
    ld [hl], $09
    nop
    sbc h
    nop
    nop
    ld c, e
    ld l, l
    and c
    ld b, e
    ld c, [hl]
    add hl, bc
    add a
    ld c, a
    inc bc
    sub d
    ld c, a
    dec hl
    ld [bc], a
    add hl, bc
    rst $10
    ld c, a
    dec hl
    inc b
    add hl, bc
    rst $18
    ld c, a
    ld c, e
    ld l, l
    daa
    ld b, h
    ld d, l
    inc bc
    rst $20
    ld c, a
    ld c, e
    ld l, l
    ld [hl], b
    ld b, h
    ld d, l
    inc bc
    rst $20
    ld c, a
    ld c, e
    ld l, l
    or l
    ld b, h
    ld d, l
    inc bc
    rst $20
    ld c, a
    ld c, e
    ld l, l
    cp $44
    ld d, l
    inc e
    db $10
    ccf
    nop
    ld b, $00
    ld [bc], a
    ld d, b
    dec bc
    ld b, $fd
    ld c, a
    ld c, e
    ld l, l
    ld a, [hl+]
    ld b, l
    sub c
    ld c, e
    ld l, l
    add a
    ld b, l
    sub c
    ld c, e
    ld l, l
    db $ed
    ld b, l
    sub c
    ld c, e
    ld l, l
    ld d, d
    ld b, [hl]
    ld d, h
    sub c
    inc e
    inc d
    ld b, $01
    ld a, c
    ld d, b
    ld sp, $0055
    add hl, bc
    ld l, c
    ld d, b
    ld sp, $002d
    ld [$5025], sp
    ld sp, $0054
    add hl, bc
    ld h, c
    ld d, b
    ld sp, $002d
    add hl, bc
    ld e, h
    ld d, b
    ld sp, $0701
    add hl, bc
    ld d, a
    ld d, b
    ld sp, $001f
    add hl, bc
    ld d, d
    ld d, b
    ld sp, $0043
    add hl, bc
    ld c, l
    ld d, b
    ld sp, $001e
    add hl, bc
    ld c, b
    ld d, b
    ld c, e
    ld l, l
    db $fc
    ld b, [hl]
    sub c
    ld c, e
    ld l, l
    ld c, c
    ld b, a
    sub c
    ld c, e
    ld l, l
    add h
    ld b, a
    sub c
    ld c, e
    ld l, l
    push de
    ld b, a
    sub c
    ld c, e
    ld l, l
    inc e
    ld c, b
    sub c
    ld c, e
    ld l, l
    ld l, b
    ld c, b
    sub c
    ld c, e
    ld l, l
    cp e
    ld c, b
    inc sp
    ld [hl], a
    nop
    sub c
    rla
    ld [bc], a
    ld b, $00
    ld [hl], h
    ld d, b
    ld c, e
    ld l, l
    rra
    ld c, c
    sub c
    ld c, e
    ld l, l
    add d
    ld c, c
    sub c
    ld c, e
    ld l, l
    rst $20
    ld c, c
    sbc h
    nop
    nop
    sub c
    inc e
    inc d
    ld b, $02
    sbc a
    ld d, b
    ld b, $03
    xor d
    ld d, b
    ld b, $04
    cp b
    ld d, b
    ld b, $05
    ret nz

    ld d, b
    ld b, $08
    ret nz

    ld d, b
    ld c, e
    ld l, l
    rst $20
    ld c, c
    sbc h
    nop
    nop
    sub c
    ld c, e
    ld l, l
    rla
    ld c, e
    sbc h
    nop
    nop
    inc sp
    ld b, e
    nop
    sub c
    ld c, e
    ld l, l
    add a
    ld c, e
    sbc h
    nop
    nop
    ld [hl-], a
    nop
    rlca
    inc sp
    ld bc, $9107
    ld c, e
    ld l, l
    ld b, $4c
    sbc h
    nop

jr_02f_50be:
    nop
    sub c
    ld c, e
    ld l, l
    add hl, bc
    ld c, l
    sbc h
    nop
    nop
    sub c
    ld c, e
    ld l, l
    ld e, l
    ld c, l
    sbc h
    nop
    nop
    sub c
    ld b, e
    rla
    ld bc, $3400
    ld h, l
    nop
    add hl, bc
    di
    ld d, b
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    add a
    nop
    add hl, bc
    rst $28
    ld d, b
    inc e
    dec bc
    rlca
    ld bc, $50ef

jr_02f_50ea:
    dec hl
    ld bc, $2a09
    ld d, c
    inc b
    jr z, jr_02f_50ea

    ld c, b
    and l
    inc de
    ld [bc], a
    inc b
    jr z, jr_02f_5126

    ld c, d
    ld b, e
    rla

jr_02f_50fc:
    ld bc, $0100
    cpl
    or [hl]
    ld h, c
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    dec sp
    ld d, c
    inc [hl]
    ld h, l
    nop
    add hl, bc
    ld e, $51
    inc [hl]
    add a
    nop
    add hl, bc
    ld e, $51
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    dec l
    ld d, c
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    scf
    ld d, c

jr_02f_5126:
    inc b
    jr z, jr_02f_5129

jr_02f_5129:
    ld b, b
    ld [hl], $87
    nop
    and l
    inc de
    ld [bc], a
    ld [hl], $65
    nop
    inc b
    jr z, jr_02f_51ac

    ld b, e
    inc b
    jr z, jr_02f_50be

    ld b, l
    inc b
    jr z, jr_02f_5192

    ld b, [hl]
    ld b, e
    ld a, $01
    nop
    ld bc, $b62f
    ld h, b
    inc [hl]
    ld a, l
    nop
    add hl, bc
    ld d, c
    ld d, c
    inc b
    jr z, jr_02f_5150

jr_02f_5150:
    ld c, c
    and l
    inc de
    ld [bc], a
    inc b
    jr z, jr_02f_50fc

    ld c, d
    ld b, e
    ld a, $01
    nop
    ld bc, $1e2f
    ld h, h
    inc [hl]
    ld a, l
    nop
    add hl, bc
    ld l, [hl]
    ld d, c
    ld bc, $452f
    ld e, [hl]
    ld b, $00
    ld [hl], d
    ld d, c
    inc b
    jr z, @+$19

    ld b, b
    ld [hl], $7d
    nop
    and l
    inc de
    ld [bc], a
    inc b
    jr z, jr_02f_5199

    ld b, [hl]
    ld b, e
    jr z, jr_02f_5181

    nop
    inc [hl]

jr_02f_5181:
    ld h, [hl]
    nop
    add hl, bc
    and d
    ld d, c
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    adc b
    nop
    add hl, bc
    sbc e
    ld d, c
    inc e
    dec bc

jr_02f_5192:
    rlca
    inc bc
    sbc e
    ld d, c
    dec hl
    inc b
    add hl, bc

jr_02f_5199:
    call $0f51
    ld e, l
    nop
    inc b
    jr z, jr_02f_51a9

    ld c, c
    and l
    inc e
    ld [bc], a
    inc b
    jr z, jr_02f_51da

    ld c, d

jr_02f_51a9:
    ld b, e
    jr z, @+$04

jr_02f_51ac:
    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    ld h, [hl]
    nop
    add hl, bc
    ret


    ld d, c
    inc [hl]
    adc b
    nop
    add hl, bc
    ret


    ld d, c
    ld bc, $422f

jr_02f_51c0:
    ld e, [hl]
    ld b, $00
    ret nc

    ld d, c
    ld b, $01
    ret nc

    ld d, c
    inc b
    cpl
    ld [hl+], a
    ld h, [hl]
    ld [hl], $88
    nop
    and l
    inc e
    ld [bc], a
    ld [hl], $66
    nop
    inc b
    jr z, jr_02f_524f

    ld b, e

jr_02f_51da:
    ld b, e
    dec de
    ld a, [bc]
    nop
    inc [hl]
    ld h, a
    nop
    add hl, bc
    db $fd
    ld d, c
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    adc c
    nop
    add hl, bc
    ld sp, hl
    ld d, c
    inc e
    dec bc
    rlca
    inc b
    ld sp, hl
    ld d, c
    dec hl
    ld bc, $2c09
    ld d, d
    inc b
    jr z, jr_02f_520c

    ld c, c
    and l
    ld e, e
    ld [bc], a
    inc b
    jr z, jr_02f_523a

    ld c, d
    ld b, e
    dec de
    ld a, [bc]
    nop
    ld bc, $b62f
    ld h, c

jr_02f_520c:
    inc [hl]
    ld h, a
    nop
    add hl, bc
    jr nz, jr_02f_5264

    inc [hl]
    adc c
    nop
    add hl, bc
    jr nz, jr_02f_526a

    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    cpl
    ld d, d
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    add hl, sp
    ld d, d
    inc b
    jr z, jr_02f_522b

jr_02f_522b:
    ld b, b
    ld [hl], $89
    nop
    and l
    ld e, e
    ld [bc], a
    ld [hl], $67
    nop
    inc b
    jr z, @+$78

    ld b, e
    inc b

jr_02f_523a:
    jr z, jr_02f_51c0

    ld b, l
    ld b, e
    inc e
    add hl, bc
    nop
    inc [hl]
    ld l, b
    nop
    add hl, bc
    ld h, b
    ld d, d
    ld bc, $b62f
    ld h, b
    inc [hl]
    adc d
    nop
    add hl, bc

jr_02f_524f:
    ld e, h
    ld d, d
    inc e
    dec bc
    rlca
    dec b
    ld e, h
    ld d, d
    dec hl
    ld [bc], a
    add hl, bc
    add a
    ld d, d
    inc b
    jr z, jr_02f_5277

    ld c, c
    and l
    ld e, e
    ld [bc], a
    inc b

jr_02f_5264:
    jr z, jr_02f_52a2

    ld c, d
    ld b, e
    inc e
    add hl, bc

jr_02f_526a:
    nop
    ld bc, $1e2f
    ld h, h
    inc [hl]
    ld l, b
    nop
    add hl, bc
    add e
    ld d, d
    inc [hl]
    adc d

jr_02f_5277:
    nop
    add hl, bc
    add e
    ld d, d
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    adc d
    ld d, d
    inc b
    jr z, jr_02f_529d

    ld b, b
    ld [hl], $8a
    nop
    and l
    ld e, e
    ld [bc], a
    ld [hl], $68
    nop
    inc b
    jr z, jr_02f_5311

    ld b, e
    ld b, e

jr_02f_5295:
    jr jr_02f_52a5

    nop
    inc [hl]
    ld l, c
    nop
    add hl, bc
    cp l

jr_02f_529d:
    ld d, d
    ld bc, $4e2f
    ld e, [hl]

jr_02f_52a2:
    inc [hl]
    adc e
    nop

jr_02f_52a5:
    add hl, bc
    cp c
    ld d, d
    inc [hl]
    ld a, [hl]
    nop
    add hl, bc
    call nz, $1c52
    dec bc
    rlca
    ld b, $b9
    ld d, d
    dec hl
    inc b
    add hl, bc
    ld bc, $0453
    jr z, jr_02f_52dc

    ld c, c
    and l
    ld e, h
    ld [bc], a
    inc b
    jr z, jr_02f_5304

    ld c, d
    and l
    ld e, h
    ld [bc], a
    inc b
    jr z, jr_02f_530b

    ld c, d
    ld b, e
    jr jr_02f_52dc

    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    ld l, c
    nop
    add hl, bc
    push af
    ld d, d
    inc [hl]
    adc e
    nop

jr_02f_52dc:
    add hl, bc
    push af
    ld d, d
    inc [hl]
    ld a, [hl]
    nop
    add hl, bc
    push af
    ld d, d
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    inc b
    ld d, e
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    ld [de], a
    ld d, e
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    ld c, $53
    inc b
    jr z, jr_02f_5300

jr_02f_5300:
    ld b, b

jr_02f_5301:
    ld [hl], $8b
    nop

jr_02f_5304:
    and l
    ld e, h
    ld [bc], a
    ld [hl], $69
    nop
    inc b

jr_02f_530b:
    jr z, jr_02f_5383

    ld b, e
    inc b
    jr z, jr_02f_5295

jr_02f_5311:
    ld b, l
    ld [hl], $7e
    nop
    and l
    ld e, h
    ld [bc], a
    inc b
    jr z, jr_02f_5301

    ld b, l
    ld b, e
    inc e
    ld a, [bc]
    nop
    inc [hl]
    ld l, d
    nop
    add hl, bc
    ccf
    ld d, e
    ld bc, $b62f
    ld h, b
    inc [hl]
    adc h
    nop
    add hl, bc
    dec sp
    ld d, e
    inc e
    dec bc
    rlca
    nop
    dec sp
    ld d, e
    dec hl
    ld bc, $6609
    ld d, e
    inc b
    jr z, jr_02f_5366

    ld c, c
    and l
    ld e, h
    ld [bc], a
    inc b
    jr z, @+$48

    ld c, d
    ld b, e
    inc e
    ld a, [bc]
    nop
    ld bc, $1e2f
    ld h, h
    inc [hl]
    ld l, d
    nop
    add hl, bc
    ld h, d
    ld d, e
    inc [hl]
    adc h
    nop
    add hl, bc
    ld h, d
    ld d, e
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld l, c
    ld d, e
    inc b
    jr z, jr_02f_537c

    ld b, b

jr_02f_5366:
    ld [hl], $8c
    nop
    and l
    ld e, h
    ld [bc], a
    ld [hl], $6a
    nop
    inc b
    jr z, @+$80

    ld b, e
    ld b, e
    ld d, $01
    nop
    inc [hl]
    ld l, e
    nop
    add hl, bc
    sbc c

jr_02f_537c:
    ld d, e
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    adc l

jr_02f_5383:
    nop
    add hl, bc
    sub d
    ld d, e
    inc e
    dec bc
    rlca
    ld bc, $5392
    dec hl
    ld [bc], a
    add hl, bc
    call nz, $0f53
    ld e, l
    nop
    inc b
    jr z, jr_02f_53c8

    ld c, c
    and l
    inc b
    ld [bc], a
    inc b
    jr z, @+$4d

    ld c, d
    ld b, e
    ld d, $01
    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    ld l, e
    nop
    add hl, bc
    ret nz

    ld d, e
    inc [hl]
    adc l
    nop
    add hl, bc
    ret nz

    ld d, e
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    rst $00
    ld d, e
    ld b, $01
    rst $00
    ld d, e
    inc b
    jr z, jr_02f_53c3

jr_02f_53c3:
    ld b, b
    ld [hl], $8d
    nop
    and l

jr_02f_53c8:
    inc b
    ld [bc], a
    ld [hl], $6b
    nop
    inc b
    jr z, jr_02f_5446

    ld b, e
    ld b, e
    inc h
    inc b
    nop
    inc [hl]
    ld l, h
    nop
    add hl, bc
    ld a, [de]
    ld d, h
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    adc [hl]
    nop
    add hl, bc
    or $53
    inc [hl]
    ld a, a
    nop
    add hl, bc
    ld hl, $1c54
    dec bc
    rlca
    ld [bc], a
    or $53
    dec hl
    inc b
    add hl, bc
    add h
    ld d, h
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld [de], a
    ld d, h
    inc [hl]
    ld d, c
    nop
    add hl, bc
    ld [de], a
    ld d, h
    inc e
    dec bc
    ld b, $02
    ld d, $54
    ld b, $04
    ld d, $54
    ld b, $06
    ld d, $54
    inc b
    jr z, jr_02f_544d

    ld c, c
    inc b
    jr z, @-$5a

    ld b, l
    and l
    dec b
    ld [bc], a
    inc b
    jr z, jr_02f_5470

    ld c, d
    and l
    dec b
    ld [bc], a
    inc b
    jr z, @-$49

jr_02f_5427:
    ld c, d
    ld b, e
    inc h
    inc b
    nop
    ld bc, $b62f
    ld h, c
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld c, h
    ld d, h
    inc [hl]
    ld d, c
    nop
    add hl, bc
    ld c, h
    ld d, h
    inc e
    dec bc
    ld b, $02
    add b
    ld d, h
    ld b, $04

jr_02f_5446:
    add b
    ld d, h
    ld b, $06
    add b

Call_02f_544b:
    ld d, h
    inc [hl]

Call_02f_544d:
jr_02f_544d:
    ld l, h

Call_02f_544e:
    nop
    add hl, bc
    ld [hl], h

Call_02f_5451:
    ld d, h
    inc [hl]
    adc [hl]
    nop
    add hl, bc
    ld [hl], h
    ld d, h
    inc [hl]
    ld a, a

Jump_02f_545a:
    nop

Jump_02f_545b:
    add hl, bc
    ld [hl], h
    ld d, h
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    sub l
    ld d, h
    inc [hl]
    ld b, [hl]
    nop
    ld [$5474], sp
    ld bc, $3f2f
    ld e, [hl]

jr_02f_5470:
    ld b, $00
    add a
    ld d, h
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    sub c
    ld d, h
    inc b
    jr z, jr_02f_547f

jr_02f_547f:
    ld b, b
    inc b
    jr z, jr_02f_5427

    ld b, l
    ld [hl], $8e
    nop
    and l
    dec b
    ld [bc], a
    ld [hl], $6c
    nop
    inc b
    jr z, jr_02f_5506

    ld b, e
    inc b
    jr z, @-$7a

    ld b, l
    ld [hl], $7f
    nop
    and l
    dec b
    ld [bc], a
    ld [hl-], a
    dec hl
    inc bc
    ld [hl-], a
    inc l
    inc bc
    ld [hl-], a
    dec l
    inc bc
    ld [hl-], a
    ld l, $03
    rla
    inc b
    ld b, $00
    cp c
    ld d, h
    ld b, $01
    cp a
    ld d, h
    ld b, $02
    push bc
    ld d, h
    ld b, $03

jr_02f_54b7:
    bit 2, h
    inc sp
    dec hl
    inc bc
    inc bc
    adc $54
    inc sp
    inc l
    inc bc
    inc bc
    adc $54
    inc sp
    dec l
    inc bc
    inc bc
    adc $54
    inc sp
    ld l, $03
    inc b
    jr z, jr_02f_54b7

    ld b, l
    ld b, e
    dec h
    ld [bc], a
    nop
    inc [hl]
    ld l, l
    nop
    add hl, bc
    ei
    ld d, h
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    adc a
    nop
    add hl, bc
    pop af
    ld d, h
    inc e
    dec bc
    rlca
    inc bc
    pop af
    ld d, h
    dec hl
    ld bc, $3709
    ld d, l
    inc [hl]
    ld d, d
    nop
    add hl, bc
    ld [bc], a
    ld d, l
    inc b
    jr z, jr_02f_553a

    ld c, c
    and l
    ld [$0402], sp
    jr z, @+$57

    ld c, d
    and l
    ld [$0402], sp

jr_02f_5506:
    jr z, @-$09

    ld c, d
    ld b, e
    dec h
    ld [bc], a
    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    ld b, [hl]
    nop
    ld [$552b], sp
    inc [hl]
    ld l, l
    nop
    add hl, bc
    dec hl
    ld d, l
    inc [hl]
    adc a
    nop
    add hl, bc
    dec hl
    ld d, l
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld a, [hl-]
    ld d, l
    ld bc, $482f
    ld e, [hl]
    ld b, $00

jr_02f_5531:
    ld b, h
    ld d, l
    inc b
    jr z, jr_02f_5536

jr_02f_5536:
    ld b, b
    ld [hl], $8f
    nop

jr_02f_553a:
    and l
    ld [$3602], sp
    ld l, l
    nop
    inc b
    jr z, @+$78

    ld b, e
    inc [hl]
    ld d, d
    nop
    add hl, bc

Call_02f_5548:
    ld e, h
    ld d, l
    ld [hl], $52
    nop
    ld b, b

Call_02f_554e:
    db $d3

Jump_02f_554f:
    ld bc, $08a5

Call_02f_5552:
    ld [bc], a
    dec d

Call_02f_5554:
    ld bc, $480f
    nop

Jump_02f_5558:
    inc b
    jr z, jr_02f_5531

    ld b, l
    inc b

Call_02f_555d:
    jr z, jr_02f_555f

jr_02f_555f:
    ld b, b
    ld b, e
    dec [hl]
    ld bc, $3400
    ld l, [hl]
    nop
    add hl, bc
    add [hl]

Jump_02f_5569:
    ld d, l

Jump_02f_556a:
    ld bc, $b62f
    ld h, b
    inc [hl]
    sub b
    nop
    add hl, bc
    ld a, a
    ld d, l
    inc e
    dec bc
    rlca
    inc b
    ld a, a
    ld d, l
    dec hl
    ld [bc], a
    add hl, bc
    jp $0f55


    ld e, l
    nop
    inc b
    jr z, jr_02f_55cd

    ld c, c
    and l
    ld [$0402], sp
    jr z, jr_02f_55e6

    ld c, d
    ld b, e
    dec [hl]
    ld bc, $0100
    cpl
    ld b, l
    ld e, [hl]
    ld b, $00
    ret nc

    ld d, l
    ld bc, $1e2f
    ld h, h
    inc [hl]
    ld l, [hl]
    nop
    add hl, bc
    xor c
    ld d, l
    inc [hl]
    sub b
    nop
    add hl, bc
    xor c
    ld d, l
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    call nc, $3455
    ld b, [hl]
    nop
    ld [$55bf], sp
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    add $55
    inc b
    jr z, @+$19

    ld b, b
    ld [hl], $90
    nop
    and l
    ld [$3602], sp
    ld l, [hl]
    nop
    inc b

jr_02f_55cd:
    jr z, jr_02f_564d

    ld b, e
    inc b
    jr z, jr_02f_564d

    ld b, h
    rla
    add hl, bc
    ld b, $00
    ld a, [$0655]
    ld bc, $5600
    ld b, $02
    ld b, $56
    ld b, $03
    inc c
    ld d, [hl]

jr_02f_55e6:
    ld b, $04
    ld [de], a
    ld d, [hl]
    ld b, $05
    jr jr_02f_5644

    ld b, $06
    ld e, $56
    ld b, $07
    inc h
    ld d, [hl]
    ld b, $08
    ld a, [hl+]
    ld d, [hl]
    and [hl]
    dec de
    ld bc, $3003
    ld d, [hl]
    and [hl]
    dec e
    ld bc, $3003
    ld d, [hl]
    and [hl]
    rra
    ld bc, $3003
    ld d, [hl]
    and [hl]

jr_02f_560d:
    ld [hl+], a
    ld bc, $3003
    ld d, [hl]
    and [hl]
    daa
    ld bc, $3003
    ld d, [hl]
    and [hl]
    inc a
    ld bc, $3003
    ld d, [hl]
    and [hl]
    ld hl, $0301
    jr nc, jr_02f_567a

    and [hl]
    add hl, sp
    ld bc, $3003
    ld d, [hl]
    and [hl]
    dec sp
    ld bc, $3003
    ld d, [hl]
    inc b
    jr z, jr_02f_560d

    ld b, [hl]
    ld b, e
    inc l
    dec b
    nop
    inc [hl]
    ld l, a
    nop
    add hl, bc
    ld e, l
    ld d, [hl]
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    sub c

jr_02f_5644:
    nop
    add hl, bc
    ld d, e
    ld d, [hl]
    inc e
    dec bc
    rlca
    dec b
    ld d, e

jr_02f_564d:
    ld d, [hl]
    dec hl
    inc b
    add hl, bc
    sbc c
    ld d, [hl]
    inc [hl]
    and b
    nop
    add hl, bc
    ld h, h
    ld d, [hl]
    inc b
    jr z, jr_02f_56ac

    ld c, c
    and l
    dec bc
    ld [bc], a
    inc b
    jr z, jr_02f_56c2

    ld c, d

jr_02f_5664:
    and l
    dec bc
    ld [bc], a
    inc b
    jr z, jr_02f_5664

    ld c, d
    ld b, e
    inc l
    dec b
    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    ld b, [hl]
    nop
    ld [$568d], sp
    inc [hl]

jr_02f_567a:
    ld l, a
    nop
    add hl, bc
    adc l
    ld d, [hl]
    inc [hl]
    sub c
    nop
    add hl, bc
    adc l
    ld d, [hl]
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    sbc h
    ld d, [hl]
    ld bc, $482f
    ld e, [hl]
    ld b, $00
    and [hl]
    ld d, [hl]
    inc b
    jr z, jr_02f_5698

jr_02f_5698:
    ld b, b
    ld [hl], $91
    nop
    and l
    dec bc
    ld [bc], a
    ld [hl], $6f
    nop
    inc b
    jr z, jr_02f_571b

    ld b, e
    inc [hl]
    and b
    nop
    add hl, bc
    cp l
    ld d, [hl]

jr_02f_56ac:
    ld [hl], $a0
    nop
    ld b, b
    adc $01
    and b
    nop
    inc bc
    ld c, [hl]
    and l
    inc l
    ld [bc], a
    inc b
    jr z, @-$20

    ld b, l
    inc b
    jr z, jr_02f_56c0

jr_02f_56c0:
    ld b, b
    ld b, e

jr_02f_56c2:
    ld [hl], $02
    nop
    inc [hl]
    ld [hl], b
    nop
    add hl, bc
    ld [$0156], a
    cpl
    ld c, [hl]
    ld e, [hl]
    inc [hl]
    sub d
    nop
    add hl, bc
    ldh [rRP], a
    inc e
    dec bc
    rlca
    ld b, $e0
    ld d, [hl]
    dec hl
    ld bc, $2b09
    ld d, a
    inc [hl]
    ld h, c
    nop
    add hl, bc
    pop af
    ld d, [hl]
    inc b
    jr z, @+$5a

    ld c, c
    and l
    rrca
    ld [bc], a
    inc b
    jr z, jr_02f_5754

    ld c, d
    inc b
    jr z, jr_02f_56f8

    ld c, e
    ld b, e
    ld [hl], $02

jr_02f_56f8:
    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    ld [hl], b
    nop
    add hl, bc
    rla
    ld d, a
    inc [hl]
    sub d
    nop
    add hl, bc
    rla
    ld d, a
    inc [hl]
    ld b, [hl]
    nop
    ld [$571f], sp
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld l, $57
    ld bc, $3f2f
    ld e, [hl]

jr_02f_571b:
    ld b, $00
    inc a
    ld d, a
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    jr c, jr_02f_577e

    inc b
    jr z, jr_02f_572a

jr_02f_572a:
    ld b, b
    ld [hl], $92
    nop
    and l
    rrca
    ld [bc], a
    ld [hl], $70
    nop
    inc b
    jr z, jr_02f_57ad

    ld b, e
    inc b
    jr z, @-$7a

jr_02f_573b:
    ld b, l
    ld [hl], $61
    nop
    inc b

jr_02f_5740:
    jr z, jr_02f_5786

    ld b, [hl]
    ld b, e
    dec [hl]
    ld [bc], a
    nop
    inc [hl]
    ld [hl], c
    nop
    add hl, bc
    db $76
    ld d, a
    ld bc, $b62f
    ld h, b
    inc [hl]
    sub e
    nop

jr_02f_5754:
    add hl, bc
    ld l, b
    ld d, a
    inc [hl]
    add b
    nop
    add hl, bc
    ld a, l
    ld d, a
    inc e
    dec bc
    rlca
    nop
    ld l, b
    ld d, a
    dec hl
    ld [bc], a
    add hl, bc
    call z, $3457
    inc de
    nop
    add hl, bc
    ld [hl], d
    ld d, a
    inc b
    jr z, jr_02f_57d1

    ld c, c
    inc b
    jr z, jr_02f_573b

    ld b, l
    and l
    rrca
    ld [bc], a
    inc b
    jr z, @+$6b

    ld c, d
    and l

jr_02f_577e:
    rrca
    ld [bc], a
    inc b
    jr z, jr_02f_5740

    ld c, d
    ld b, e
    dec [hl]

jr_02f_5786:
    ld [bc], a
    nop
    ld bc, $1e2f
    ld h, h
    inc [hl]
    inc de
    nop
    add hl, bc
    reti


    ld d, a
    inc [hl]
    ld [hl], c
    nop
    add hl, bc
    ret z

    ld d, a
    inc [hl]
    sub e
    nop
    add hl, bc
    ret z

    ld d, a
    inc [hl]
    add b
    nop
    add hl, bc

jr_02f_57a2:
    ret z

    ld d, a
    ld sp, $0100
    add hl, bc
    or d
    ld d, a
    ld bc, $3f2f

jr_02f_57ad:
    ld e, [hl]
    ld b, $00
    db $dd
    ld d, a
    ld bc, $4b2f
    ld e, [hl]
    ld b, $00
    db $dd
    ld d, a

jr_02f_57ba:
    inc [hl]
    ld b, [hl]
    nop
    ld [$57c8], sp

jr_02f_57c0:
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    rst $08
    ld d, a
    inc b
    jr z, jr_02f_57e2

    ld b, b
    ld [hl], $93
    nop
    and l

jr_02f_57d0:
    rrca

jr_02f_57d1:
    ld [bc], a
    ld [hl], $71
    nop
    inc b
    jr z, jr_02f_5856

    ld b, e
    inc b
    jr z, jr_02f_57a2

    ld b, l
    ld [hl], $80
    nop
    and l
    rrca

jr_02f_57e2:
    ld [bc], a
    inc b
    jr z, jr_02f_5804

    ld b, [hl]
    ld b, e
    ld sp, $0001
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    inc de
    nop
    add hl, bc
    ld sp, hl
    ld d, a
    inc b
    jr z, jr_02f_57c0

    ld c, c
    inc b
    jr z, jr_02f_57ba

    ld b, l
    ld b, e
    ld sp, $0001
    ld bc, $b62f

jr_02f_5804:
    ld h, c
    inc [hl]
    inc de
    nop
    add hl, bc
    rrca
    ld e, b
    inc b
    jr z, jr_02f_5856

    ld c, b
    inc b
    jr z, jr_02f_57d0

    ld b, l
    ld b, e
    inc h
    ld [$3400], sp
    ld [hl], d
    nop
    add hl, bc
    inc a
    ld e, b
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    sub h
    nop
    add hl, bc

jr_02f_5825:
    ld [hl-], a
    ld e, b
    inc e
    dec bc
    rlca
    ld [bc], a
    ld [hl-], a
    ld e, b
    dec hl
    ld bc, $7a09
    ld e, b
    inc [hl]
    and c
    nop
    add hl, bc
    ld b, e
    ld e, b
    inc b
    jr z, jr_02f_58a3

    ld c, c
    and l
    ld [de], a
    ld [bc], a
    inc b
    jr z, jr_02f_58b0

    ld c, d
    and l
    ld [de], a
    ld [bc], a
    inc b
    jr z, @+$01

    ld c, d
    ld b, e
    inc h
    ld [$0100], sp
    cpl
    or [hl]
    ld h, c
    inc [hl]
    ld [hl], d
    nop
    add hl, bc

jr_02f_5856:
    ld h, [hl]
    ld e, b
    inc [hl]
    sub h
    nop
    add hl, bc
    ld h, [hl]
    ld e, b
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld a, l
    ld e, b
    ld bc, $482f
    ld e, [hl]
    ld b, $00
    add a
    ld e, b
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    sbc [hl]
    ld e, b
    inc b
    jr z, jr_02f_5879

jr_02f_5879:
    ld b, b
    ld [hl], $94
    nop
    and l
    ld [de], a
    ld [bc], a
    ld [hl], $72
    nop
    inc b
    jr z, @+$78

    ld b, e
    inc [hl]
    and c
    nop
    add hl, bc
    and d
    ld e, b
    ld [hl], $a1
    nop
    ld b, b
    pop bc
    ld bc, $01a0
    ld a, [bc]
    ld [bc], a
    and l
    ld [de], a
    ld [bc], a
    inc b
    jr z, @-$30

    ld b, l
    inc b
    jr z, jr_02f_5825

jr_02f_58a1:
    ld b, l
    inc b

jr_02f_58a3:
    jr z, jr_02f_58a5

jr_02f_58a5:
    ld b, b
    ld b, e
    rla
    inc bc
    nop
    inc [hl]
    ld [hl], e
    nop
    add hl, bc
    rst $08
    ld e, b

jr_02f_58b0:
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    sub l
    nop
    add hl, bc
    bit 3, b
    inc [hl]
    add c
    nop
    add hl, bc
    sub $58
    inc e
    dec bc
    rlca
    inc bc
    bit 3, b
    dec hl
    ld [bc], a
    add hl, bc
    add hl, de
    ld e, c
    inc b
    jr z, jr_02f_593e

    ld c, c
    and l
    inc d
    ld [bc], a
    inc b
    jr z, jr_02f_5948

    ld c, d
    and l
    inc d
    ld [bc], a
    inc b
    jr z, jr_02f_58a1

    ld c, d
    ld b, e
    rla
    inc bc
    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    ld [hl], e
    nop
    add hl, bc
    dec d
    ld e, c
    inc [hl]
    sub l
    nop
    add hl, bc
    dec d
    ld e, c
    inc [hl]
    add c
    nop
    add hl, bc
    dec d
    ld e, c
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    inc e
    ld e, c
    ld sp, $0101
    add hl, bc
    dec c
    ld e, c
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld h, $59
    ld bc, $4b2f
    ld e, [hl]
    ld b, $00
    ld h, $59

jr_02f_5915:
    inc b
    jr z, jr_02f_5918

jr_02f_5918:
    ld b, b
    ld [hl], $95
    nop
    and l
    inc d
    ld [bc], a
    ld [hl], $73
    nop
    inc b
    jr z, jr_02f_599b

    ld b, e
    ld [hl], $81
    nop
    and l
    inc d
    ld [bc], a
    inc b
    jr z, jr_02f_5915

    ld b, l
    ld b, e
    add hl, de
    ld a, [bc]

jr_02f_5933:
    nop
    inc [hl]
    ld [hl], h
    nop
    add hl, bc
    ld e, c
    ld e, c
    ld bc, $b62f
    ld h, b

jr_02f_593e:
    inc [hl]
    sub [hl]
    nop
    add hl, bc
    ld d, l
    ld e, c
    inc [hl]
    add d
    nop
    add hl, bc

jr_02f_5948:
    ld h, b
    ld e, c
    inc e
    dec bc
    rlca

jr_02f_594d:
    inc b
    ld d, l
    ld e, c
    dec hl
    inc b
    add hl, bc
    xor e
    ld e, c
    inc b
    jr z, jr_02f_59d0

    ld c, c
    and l
    add hl, de
    ld [bc], a
    inc b
    jr z, jr_02f_59d7

    ld c, d
    and l
    add hl, de
    ld [bc], a
    inc b
    jr z, jr_02f_5933

    ld c, d
    ld b, e

jr_02f_5968:
    add hl, de
    ld a, [bc]
    nop
    ld bc, $1e2f
    ld h, h
    inc [hl]
    ld [hl], h
    nop
    add hl, bc
    sbc a
    ld e, c
    inc [hl]
    sub [hl]
    nop
    add hl, bc
    sbc a
    ld e, c
    inc [hl]
    add d
    nop
    add hl, bc
    sbc a
    ld e, c
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    xor [hl]
    ld e, c
    ld sp, $0102
    add hl, bc
    sub a
    ld e, c
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    cp h
    ld e, c
    ld bc, $4b2f
    ld e, [hl]

jr_02f_599b:
    ld b, $00
    cp h
    ld e, c
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    cp b
    ld e, c
    inc b
    jr z, jr_02f_59c1

    ld b, b
    ld [hl], $96
    nop
    and l
    add hl, de
    ld [bc], a
    ld [hl], $74
    nop

jr_02f_59b4:
    inc b
    jr z, jr_02f_5a35

    ld b, e
    inc b
    jr z, jr_02f_594d

    ld b, l
    ld [hl], $82
    nop
    and l
    add hl, de

jr_02f_59c1:
    ld [bc], a
    inc b
    jr z, @+$20

    ld b, [hl]
    ld b, e
    rla
    ld a, [bc]
    nop
    inc [hl]
    ld [hl], l
    nop
    add hl, bc
    jp hl


    ld e, c

jr_02f_59d0:
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    sub a
    nop

jr_02f_59d7:
    add hl, bc
    push hl
    ld e, c
    inc e
    dec bc
    rlca
    dec b
    push hl
    ld e, c
    dec hl
    ld bc, $2009
    ld e, d
    inc b
    jr z, jr_02f_5968

    ld c, c
    and l

jr_02f_59ea:
    add hl, de
    ld [bc], a
    inc b
    jr z, @+$7f

    ld c, d
    ld b, e
    rla
    ld a, [bc]
    nop
    ld bc, $b62f
    ld h, c
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld sp, $345a
    ld [hl], l
    nop
    add hl, bc
    inc d
    ld e, d
    inc [hl]
    sub a
    nop
    add hl, bc

jr_02f_5a0a:
    inc d
    ld e, d
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    inc hl
    ld e, d
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    dec l
    ld e, d
    inc b
    jr z, jr_02f_5a1f

jr_02f_5a1f:
    ld b, b
    ld [hl], $97
    nop
    and l
    add hl, de
    ld [bc], a
    ld [hl], $75
    nop
    inc b
    jr z, jr_02f_5aa2

    ld b, e
    inc b
    jr z, jr_02f_59b4

    ld b, l
    inc b
    jr z, jr_02f_5a88

    ld b, a

jr_02f_5a35:
    ld b, e
    dec sp
    ld [bc], a
    nop
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    add e
    nop
    add hl, bc
    ld h, a

jr_02f_5a42:
    ld e, d
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld e, a
    ld e, d
    inc [hl]
    ld d, c
    nop
    add hl, bc
    ld e, a
    ld e, d
    inc e
    dec bc
    ld b, $02
    ld h, e
    ld e, d
    ld b, $04
    ld h, e
    ld e, d
    ld b, $06

jr_02f_5a5d:
    ld h, e
    ld e, d
    inc b
    jr z, jr_02f_59ea

    ld c, c
    inc b

jr_02f_5a64:
    jr z, jr_02f_5a0a

    ld b, l
    and l
    ld a, [de]
    ld [bc], a
    inc b
    jr z, jr_02f_5a42

    ld c, d
    ld b, e
    dec sp
    ld [bc], a
    nop
    ld bc, $b62f
    ld h, c
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    sub d
    ld e, d
    inc [hl]
    ld d, c
    nop
    add hl, bc
    sub d
    ld e, d
    inc e
    dec bc
    ld b, $02

jr_02f_5a88:
    sbc [hl]
    ld e, d
    ld b, $04
    sbc [hl]
    ld e, d
    ld b, $06
    sbc [hl]

jr_02f_5a91:
    ld e, d
    ld bc, $452f
    ld e, [hl]
    ld b, $00
    and d
    ld e, d
    inc b
    jr z, jr_02f_5a9d

jr_02f_5a9d:
    ld b, b
    inc b
    jr z, @-$5a

    ld b, l

jr_02f_5aa2:
    ld [hl], $83
    nop
    and l
    ld a, [de]
    ld [bc], a
    inc b
    jr z, jr_02f_5a91

    ld b, l
    ld b, e
    dec h
    rlca
    nop
    inc [hl]
    halt
    add hl, bc
    push de
    ld e, d
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    sbc b
    nop
    add hl, bc
    pop de

jr_02f_5abf:
    ld e, d
    inc [hl]
    add h
    nop
    add hl, bc
    call c, $1c5a
    dec bc
    rlca
    nop
    pop de
    ld e, d
    dec hl
    inc b
    add hl, bc
    rra
    ld e, e
    inc b
    jr z, jr_02f_5a64

    ld c, c
    and l
    ld [hl+], a
    ld [bc], a
    inc b
    jr z, jr_02f_5a5d

    ld c, d
    and l
    ld [hl+], a
    ld [bc], a
    inc b
    jr z, jr_02f_5abf

    ld c, d
    ld b, e
    dec h
    rlca

jr_02f_5ae6:
    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    halt
    add hl, bc
    dec de

jr_02f_5af0:
    ld e, e
    inc [hl]
    sbc b
    nop
    add hl, bc
    dec de
    ld e, e
    inc [hl]
    add h
    nop
    add hl, bc
    dec de
    ld e, e
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    ld [hl+], a
    ld e, e
    ld sp, $0103
    add hl, bc
    inc de
    ld e, e
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    inc l
    ld e, e
    ld bc, $4b2f
    ld e, [hl]
    ld b, $00
    inc l
    ld e, e

jr_02f_5b1b:
    inc b
    jr z, jr_02f_5b1e

jr_02f_5b1e:
    ld b, b
    ld [hl], $98
    nop
    and l
    ld [hl+], a
    ld [bc], a
    ld [hl], $76
    nop
    inc b
    jr z, jr_02f_5ba1

    ld b, e
    ld [hl], $84
    nop
    and l
    ld [hl+], a
    ld [bc], a
    inc b
    jr z, jr_02f_5b1b

    ld b, l
    ld b, e
    ld e, $06
    nop
    inc [hl]
    ld [hl], a
    nop
    add hl, bc
    ld e, c
    ld e, e
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    sbc c
    nop
    add hl, bc
    ld d, l
    ld e, e
    inc e
    dec bc
    rlca
    ld bc, $5b55
    dec hl
    ld bc, $8809

jr_02f_5b54:
    ld e, e
    inc b
    jr z, jr_02f_5af0

    ld c, c
    and l
    dec h
    ld [bc], a
    inc b
    jr z, jr_02f_5ae6

    ld c, d
    ld b, e

jr_02f_5b61:
    ld e, $06
    nop
    ld bc, $b62f
    ld h, c
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    sub l
    ld e, e
    inc [hl]
    ld [hl], a
    nop
    add hl, bc
    add h
    ld e, e
    inc [hl]
    sbc c
    nop
    add hl, bc
    add h
    ld e, e
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    adc e
    ld e, e
    inc b
    jr z, jr_02f_5b87

jr_02f_5b87:
    ld b, b
    ld [hl], $99
    nop
    and l
    dec h
    ld [bc], a
    ld [hl], $77
    nop
    inc b
    jr z, @+$78

    ld b, e
    inc b
    jr z, @-$30

    ld b, a
    ld b, e
    dec [hl]
    inc d
    nop
    inc [hl]
    ld a, b
    nop
    add hl, bc

jr_02f_5ba1:
    jp nz, $015b

    cpl
    or [hl]
    ld h, b
    inc [hl]
    sbc d
    nop
    add hl, bc
    cp [hl]
    ld e, e
    inc [hl]
    add l
    nop
    add hl, bc
    ret


    ld e, e
    inc e

jr_02f_5bb4:
    dec bc
    rlca
    ld [bc], a
    cp [hl]
    ld e, e
    dec hl
    ld [bc], a
    add hl, bc
    inc d
    ld e, h
    inc b
    jr z, jr_02f_5b61

    ld c, c
    and l
    dec h
    ld [bc], a
    inc b
    jr z, jr_02f_5b54

    ld c, d
    and l
    dec h
    ld [bc], a
    inc b
    jr z, jr_02f_5bb4

    ld c, d
    ld b, e
    dec [hl]
    inc d
    nop
    ld bc, $452f
    ld e, [hl]
    ld b, $00
    ld hl, $015c
    cpl
    ld e, $64
    inc [hl]
    ld a, b
    nop
    add hl, bc
    db $10
    ld e, h
    inc [hl]
    sbc d
    nop
    add hl, bc
    db $10
    ld e, h
    inc [hl]
    add l
    nop
    add hl, bc
    db $10
    ld e, h
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    rla
    ld e, h
    ld sp, HeaderLogo
    add hl, bc
    ld [$015c], sp
    cpl
    ccf
    ld e, [hl]
    ld b, $00
    ld l, c
    ld e, h
    ld bc, $4b2f
    ld e, [hl]
    ld b, $00
    ld l, c
    ld e, h
    inc b
    jr z, jr_02f_5c2a

    ld b, b
    ld [hl], $9a
    nop
    and l
    dec h
    ld [bc], a
    ld [hl], $78
    nop
    inc b
    jr z, jr_02f_5c9e

    ld b, e
    rla
    ld b, $06
    nop
    dec sp
    ld e, h
    ld b, $01
    ld b, d

jr_02f_5c2a:
    ld e, h
    ld b, $02

jr_02f_5c2d:
    ld c, c
    ld e, h
    ld b, $03
    ld d, b
    ld e, h
    ld b, $04
    ld d, a
    ld e, h
    ld b, $05
    ld e, [hl]
    ld e, h
    ld b, h
    ld b, e

jr_02f_5c3d:
    ld h, [hl]
    ld bc, $6503
    ld e, h
    ld b, h
    ld c, e
    ld h, [hl]
    ld bc, $6503
    ld e, h
    ld b, h
    ld d, e
    ld h, [hl]
    ld bc, $6503
    ld e, h
    ld b, h
    ld d, a
    ld h, [hl]
    ld bc, $6503
    ld e, h
    ld b, h
    ld e, e
    ld h, [hl]
    ld bc, $6503
    ld e, h
    ld b, h
    ld h, d
    ld h, [hl]
    ld bc, $6503
    ld e, h
    inc b
    jr z, @+$81

    ld b, h
    ld [hl], $85
    nop
    and l
    dec h
    ld [bc], a
    inc b
    jr z, jr_02f_5c90

    ld b, [hl]
    ld b, e
    jr jr_02f_5c7d

    nop
    inc [hl]
    ld a, c
    nop
    add hl, bc
    sub [hl]
    ld e, h

jr_02f_5c7d:
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    sbc e
    nop
    add hl, bc
    sub d
    ld e, h
    inc e
    dec bc
    rlca
    inc bc
    sub d
    ld e, h
    dec hl
    inc b
    add hl, bc

jr_02f_5c90:
    pop bc
    ld e, h
    inc b

jr_02f_5c93:
    jr z, jr_02f_5c3d

    ld c, c
    and l
    daa
    ld [bc], a
    inc b
    jr z, jr_02f_5c2d

    ld c, d
    ld b, e

jr_02f_5c9e:
    jr jr_02f_5ca7

    nop
    ld bc, $b62f
    ld h, c
    inc [hl]

jr_02f_5ca6:
    ld a, c

jr_02f_5ca7:
    nop
    add hl, bc
    cp l
    ld e, h
    inc [hl]
    sbc e
    nop
    add hl, bc
    cp l
    ld e, h
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    call nz, $065c
    ld bc, $5cc4
    inc b
    jr z, jr_02f_5cc0

jr_02f_5cc0:
    ld b, b
    ld [hl], $9b
    nop
    and l
    daa
    ld [bc], a
    ld [hl], $79
    nop
    inc b
    jr z, jr_02f_5d43

    ld b, e
    ld b, e
    dec h
    ld a, [bc]
    nop
    inc [hl]
    ld a, d
    nop
    add hl, bc
    rst $30
    ld e, h
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    sbc h
    nop
    add hl, bc
    di
    ld e, h
    inc [hl]
    add [hl]
    nop
    add hl, bc
    cp $5c
    inc e
    dec bc
    rlca
    inc b
    di
    ld e, h
    dec hl
    ld bc, $3309
    ld e, l
    inc b
    jr z, jr_02f_5ca6

    ld c, c
    and l
    daa
    ld [bc], a
    inc b
    jr z, jr_02f_5c93

    ld c, d
    and l
    daa
    ld [bc], a
    inc b
    jr z, @-$11

    ld c, d
    ld b, e
    dec h
    ld a, [bc]
    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    ld a, d
    nop
    add hl, bc
    cpl
    ld e, l
    inc [hl]
    sbc h
    nop
    add hl, bc
    cpl
    ld e, l
    inc [hl]
    add [hl]
    nop
    add hl, bc
    cpl
    ld e, l
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld [hl], $5d
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld b, b
    ld e, l
    inc b
    jr z, jr_02f_5d32

jr_02f_5d32:
    ld b, b
    ld [hl], $9c
    nop
    and l
    daa
    ld [bc], a
    ld [hl], $7a
    nop
    inc b
    jr z, jr_02f_5db5

    ld b, e
    ld [hl], $86
    nop

jr_02f_5d43:
    and l
    daa
    ld [bc], a
    ld [hl-], a
    cpl
    inc bc
    ld [hl-], a
    jr nc, @+$05

    ld [hl-], a

jr_02f_5d4d:
    ld sp, $1703
    dec b
    ld b, $00
    ld e, [hl]
    ld e, l
    rla

jr_02f_5d56:
    inc bc
    ld b, $00
    ld h, h
    ld e, l
    inc bc
    ld l, d
    ld e, l
    inc sp
    cpl
    inc bc
    inc bc
    ld l, l

jr_02f_5d63:
    ld e, l
    inc sp
    jr nc, jr_02f_5d6a

    inc bc
    ld l, l
    ld e, l

jr_02f_5d6a:
    inc sp
    ld sp, $0403
    jr z, jr_02f_5d56

    ld b, l
    ld b, e
    ld [hl-], a
    ld [$0100], sp
    cpl
    ld c, [hl]
    ld e, [hl]
    inc b
    jr z, jr_02f_5d6a

    ld c, c
    ld b, e
    ld [hl-], a
    ld [$0100], sp
    cpl
    or [hl]
    ld h, c
    inc b
    jr z, jr_02f_5dd4

    ld b, [hl]
    ld b, e
    inc l
    add hl, bc
    nop
    inc [hl]
    ld a, e
    nop
    add hl, bc
    xor h
    ld e, l
    ld bc, $4e2f
    ld e, [hl]
    inc [hl]
    sbc l
    nop
    add hl, bc
    xor b
    ld e, l
    inc e
    dec bc
    rlca
    dec b
    xor b
    ld e, l
    dec hl
    ld [bc], a
    add hl, bc
    rst $10
    ld e, l
    inc b
    jr z, jr_02f_5d63

    ld c, c
    and l

jr_02f_5dad:
    dec hl
    ld [bc], a
    inc b
    jr z, jr_02f_5d4d

    ld c, d
    ld b, e
    inc l

jr_02f_5db5:
    add hl, bc
    nop
    ld bc, $b62f
    ld h, c
    inc [hl]
    ld a, e
    nop
    add hl, bc
    db $d3
    ld e, l
    inc [hl]
    sbc l
    nop
    add hl, bc
    db $d3

jr_02f_5dc6:
    ld e, l
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    jp c, $065d

    ld bc, $5dda
    inc b

jr_02f_5dd4:
    jr z, jr_02f_5dd6

jr_02f_5dd6:
    ld b, b
    ld [hl], $9d
    nop
    and l
    dec hl
    ld [bc], a
    ld [hl], $7b
    nop
    inc b
    jr z, jr_02f_5e59

    ld b, e
    ld b, e
    dec [hl]
    ld a, [bc]
    nop
    inc [hl]
    ld a, h
    nop
    add hl, bc
    rlca
    ld e, [hl]
    ld bc, $b62f
    ld h, b
    inc [hl]
    sbc [hl]
    nop
    add hl, bc
    inc bc
    ld e, [hl]
    inc e
    dec bc
    rlca
    ld b, $03
    ld e, [hl]
    dec hl
    inc b
    add hl, bc
    ld [hl-], a
    ld e, [hl]
    inc b
    jr z, jr_02f_5dc6

    ld c, c
    and l
    dec l
    ld [bc], a
    inc b
    jr z, jr_02f_5dad

    ld c, d
    ld b, e
    dec [hl]
    ld a, [bc]
    nop
    ld bc, $1e2f
    ld h, h
    inc [hl]
    ld a, h
    nop
    add hl, bc
    ld l, $5e
    inc [hl]
    sbc [hl]
    nop
    add hl, bc
    ld l, $5e
    ld bc, $422f
    ld e, [hl]
    ld b, $00
    dec [hl]
    ld e, [hl]
    ld b, $01
    dec [hl]
    ld e, [hl]
    inc b
    jr z, jr_02f_5e48

    ld b, b
    ld [hl], $9e
    nop
    and l
    dec l
    ld [bc], a
    ld [hl], $7c
    nop
    inc b
    jr z, jr_02f_5ebc

    ld b, e
    rla
    ld [bc], a
    sub c
    rla
    inc bc
    sub c
    rla
    inc b
    sub c

jr_02f_5e48:
    rla
    dec b
    sub c
    rla
    dec bc
    sub c
    dec hl
    ld [bc], a
    add hl, bc
    ld [hl+], a
    ld e, a
    dec hl
    inc b
    add hl, bc
    db $ec
    ld e, a
    inc e

jr_02f_5e59:
    rla
    ld b, $05
    xor d
    ld e, [hl]
    ld b, $07
    or b
    ld e, [hl]
    ld b, $0b
    or [hl]
    ld e, [hl]
    ld b, $0d
    cp h
    ld e, [hl]
    ld b, $0f
    jp nz, $065e

    db $10
    ret z

    ld e, [hl]
    ld b, $11
    adc $5e
    ld b, $13
    call nc, $065e
    inc d
    jp c, $065e

    ld d, $e0
    ld e, [hl]
    ld b, $17
    and $5e
    ld b, $18
    db $ec
    ld e, [hl]
    ld b, $1b
    ld a, [c]
    ld e, [hl]
    ld b, $1c
    ld hl, sp+$5e
    ld b, $1d
    cp $5e
    ld b, $1e
    inc b
    ld e, a
    ld b, $20
    ld a, [bc]
    ld e, a
    ld b, $21
    db $10
    ld e, a
    ld b, $22
    ld d, $5f
    ld b, $23
    inc e
    ld e, a
    ld c, e
    ld l, l
    push bc
    ld c, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [hl], e
    ld d, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [hl], b
    ld d, d
    ld d, l
    sub c

jr_02f_5ebc:
    ld c, e
    ld l, l
    xor [hl]
    ld d, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    sbc d
    ld e, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    dec sp
    ld e, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    db $10
    ld e, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld a, d
    ld e, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    push af
    ld h, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    adc h
    ld h, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld d, h
    ld h, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    sbc l
    ld h, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [c], a
    ld h, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    xor b
    ld l, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    add hl, sp
    ld l, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    sub [hl]
    ld l, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    add hl, de
    ld [hl], b
    ld d, l
    sub c
    ld c, e
    ld l, l
    push de
    ld [hl], c
    ld d, l
    sub c
    ld c, e
    ld l, l
    dec bc
    ld [hl], e
    ld d, l
    sub c
    ld c, e
    ld l, l
    rst $00
    ld [hl], e
    ld d, l
    sub c
    inc e
    rla
    ld b, $05
    ld [hl], h
    ld e, a
    ld b, $07
    ld a, d
    ld e, a
    ld b, $0b
    add b
    ld e, a
    ld b, $0d
    add [hl]
    ld e, a
    ld b, $0f
    adc h
    ld e, a
    ld b, $10
    sub d
    ld e, a
    ld b, $11
    sbc b
    ld e, a
    ld b, $13
    sbc [hl]
    ld e, a
    ld b, $14
    and h
    ld e, a
    ld b, $16
    xor d
    ld e, a
    ld b, $17
    or b
    ld e, a
    ld b, $18
    or [hl]
    ld e, a
    ld b, $1b
    cp h
    ld e, a
    ld b, $1c
    jp nz, $065f

    dec e
    ret z

    ld e, a
    ld b, $1e
    adc $5f
    ld b, $20
    call nc, $065f
    ld hl, $5fda
    ld b, $22
    ldh [$5f], a
    ld b, $23
    and $5f
    ld c, e
    ld l, l
    db $ed
    ld c, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    sbc e
    ld d, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    and l
    ld d, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    jp c, $5555

    sub c
    ld c, e
    ld l, l
    jp nz, Jump_02f_5558

    sub c
    ld c, e
    ld l, l
    ld [hl], h
    ld e, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld h, e
    ld e, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    sbc [hl]
    ld e, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    dec de
    ld h, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    xor b
    ld h, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld a, [hl]
    ld h, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    rst $00
    ld h, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld c, $68
    ld d, l
    sub c
    ld c, e
    ld l, l
    jp nc, Jump_02f_5569

    sub c
    ld c, e
    ld l, l
    ld h, l
    ld l, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    add $6c
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld d, a
    ld [hl], b
    ld d, l
    sub c
    ld c, e
    ld l, l
    db $fc
    ld [hl], c
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld sp, $5573
    sub c
    ld c, e
    ld l, l
    rst $28
    ld [hl], e
    ld d, l
    sub c
    inc e
    rla
    ld b, $05
    ld a, $60
    ld b, $07
    ld b, h
    ld h, b
    ld b, $0b
    ld c, d
    ld h, b
    ld b, $0d
    ld d, b
    ld h, b
    ld b, $0f
    ld d, [hl]
    ld h, b
    ld b, $10
    ld e, h
    ld h, b
    ld b, $11
    ld h, d
    ld h, b
    ld b, $13
    ld l, b
    ld h, b
    ld b, $14
    ld l, [hl]
    ld h, b
    ld b, $16
    ld [hl], h
    ld h, b
    ld b, $17
    ld a, d
    ld h, b
    ld b, $18
    add b
    ld h, b
    ld b, $1b
    add [hl]
    ld h, b
    ld b, $1c
    adc h
    ld h, b
    ld b, $1d
    sub d
    ld h, b
    ld b, $1e
    sbc b
    ld h, b
    ld b, $20
    sbc [hl]
    ld h, b
    ld b, $21
    and h
    ld h, b
    ld b, $22
    xor d
    ld h, b
    ld b, $23
    or b
    ld h, b
    ld c, e
    ld l, l
    ld d, $4e
    ld d, l
    sub c
    ld c, e
    ld l, l
    jp nz, $5550

    sub c
    ld c, e
    ld l, l
    call z, Call_02f_5552
    sub c
    ld c, e
    ld l, l
    db $fc
    ld d, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [$5558], a
    sub c
    ld c, e
    ld l, l
    sbc a
    ld e, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    or [hl]
    ld e, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    ret


    ld e, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld c, c
    ld h, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    call nz, $5563
    sub c
    ld c, e
    ld l, l
    xor b
    ld h, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    db $e3
    ld h, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [hl], $68
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld hl, sp+$69
    ld d, l
    sub c
    ld c, e
    ld l, l
    sub d
    ld l, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    or $6c
    ld d, l
    sub c
    ld c, e
    ld l, l
    sub d
    ld [hl], b
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld a, [hl+]
    ld [hl], d
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld d, a
    ld [hl], e
    ld d, l
    sub c
    ld c, e
    ld l, l
    rla
    ld [hl], h
    ld d, l
    sub c
    dec hl
    ld [bc], a
    add hl, bc
    ld [de], a
    ld h, c
    dec hl
    inc b
    add hl, bc
    ld h, h
    ld h, c
    inc e
    rla
    ld b, $06
    ld [c], a
    ld h, b
    ld b, $0c
    add sp, $60
    ld b, $0e
    xor $60
    ld b, $12
    db $f4
    ld h, b
    ld b, $15
    ld a, [$0660]
    ld a, [de]
    nop
    ld h, c
    ld b, $1f
    ld b, $61
    ld b, $24
    inc c
    ld h, c
    ld c, e
    ld l, l
    ld hl, $554f
    sub c
    ld c, e
    ld l, l
    rst $30
    ld d, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [bc], a
    ld d, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    sbc a
    ld e, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld l, d
    ld h, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    ret z

    ld h, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld a, h
    ld l, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld a, [de]
    ld [hl], l
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    inc [hl]
    ld h, c
    ld b, $0c
    ld a, [hl-]
    ld h, c
    ld b, $0e
    ld b, b
    ld h, c
    ld b, $12
    ld b, [hl]
    ld h, c
    ld b, $15
    ld c, h
    ld h, c
    ld b, $1a
    ld d, d
    ld h, c
    ld b, $1f
    ld e, b
    ld h, c
    ld b, $24
    ld e, [hl]
    ld h, c
    ld c, e
    ld l, l
    ld c, l
    ld c, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    inc h
    ld d, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld l, $57
    ld d, l
    sub c
    ld c, e
    ld l, l
    call z, Call_02f_555d
    sub c
    ld c, e
    ld l, l
    sub [hl]
    ld h, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    db $ec
    ld h, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    and [hl]
    ld l, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld c, b
    ld [hl], l
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    add [hl]
    ld h, c
    ld b, $0c
    adc h
    ld h, c
    ld b, $0e
    sub d
    ld h, c
    ld b, $12
    sbc b
    ld h, c
    ld b, $15
    sbc [hl]
    ld h, c
    ld b, $1a
    and h
    ld h, c
    ld b, $1f
    xor d
    ld h, c
    ld b, $24
    or b
    ld h, c
    ld c, e
    ld l, l
    ld [hl], l
    ld c, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld b, [hl]
    ld d, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld e, d
    ld d, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld hl, sp+$5d
    ld d, l
    sub c
    ld c, e
    ld l, l
    push bc
    ld h, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    inc de
    ld h, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    ret


    ld l, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld l, a
    ld [hl], l
    ld d, l
    sub c
    dec hl
    ld [bc], a
    add hl, bc
    adc d
    ld h, d
    dec hl
    inc b
    add hl, bc
    ld d, h
    ld h, e
    inc e
    rla
    ld b, $05
    ld [de], a
    ld h, d
    ld b, $07
    jr jr_02f_622c

    ld b, $0b
    ld e, $62
    ld b, $0d
    inc h
    ld h, d
    ld b, $0f
    ld a, [hl+]
    ld h, d
    ld b, $10
    jr nc, jr_02f_623c

    ld b, $11
    ld [hl], $62
    ld b, $13
    inc a
    ld h, d
    ld b, $14
    ld b, d
    ld h, d
    ld b, $16
    ld c, b
    ld h, d
    ld b, $17
    ld c, [hl]
    ld h, d
    ld b, $18
    ld d, h
    ld h, d
    ld b, $1b
    ld e, d
    ld h, d
    ld b, $1c
    ld h, b
    ld h, d
    ld b, $1d
    ld h, [hl]
    ld h, d
    ld b, $1e
    ld l, h
    ld h, d
    ld b, $20
    ld [hl], d
    ld h, d
    ld b, $21
    ld a, b
    ld h, d
    ld b, $22
    ld a, [hl]
    ld h, d
    ld b, $23
    add h
    ld h, d
    ld c, e
    ld l, l
    ld a, $4e
    ld d, l
    sub c
    ld c, e
    ld l, l
    jp hl


    ld d, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld bc, $5553
    sub c
    ld c, e
    ld l, l
    jr z, jr_02f_627e

    ld d, l
    sub c
    ld c, e
    ld l, l

jr_02f_622c:
    ld [de], a
    ld e, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    ret c

    ld e, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    add hl, bc
    ld e, l
    ld d, l
    sub c

jr_02f_623c:
    ld c, e
    ld l, l
    or $5f
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld l, [hl]
    ld h, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    db $e3
    ld h, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    jp nc, $5564

    sub c
    ld c, e
    ld l, l
    dec c
    ld h, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld h, d
    ld l, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [hl+], a
    ld l, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    cp c
    ld l, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld h, $6d
    ld d, l
    sub c
    ld c, e
    ld l, l
    rst $20
    ld [hl], b
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld e, h
    ld [hl], d
    ld d, l
    sub c

jr_02f_627e:
    ld c, e
    ld l, l
    ld a, a
    ld [hl], e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ccf
    ld [hl], h
    ld d, l
    sub c
    inc e
    rla
    ld b, $05
    call c, $0662
    rlca
    ld [c], a
    ld h, d
    ld b, $0b
    add sp, $62
    ld b, $0d
    xor $62
    ld b, $0f
    db $f4
    ld h, d
    ld b, $10
    ld a, [$0662]
    ld de, $6300
    ld b, $13
    ld b, $63
    ld b, $14
    inc c
    ld h, e
    ld b, $16
    ld [de], a
    ld h, e
    ld b, $17
    jr @+$65

    ld b, $18
    ld e, $63
    ld b, $1b
    inc h
    ld h, e
    ld b, $1c
    ld a, [hl+]
    ld h, e
    ld b, $1d
    jr nc, jr_02f_632b

    ld b, $1e
    ld [hl], $63
    ld b, $20
    inc a
    ld h, e
    ld b, $21
    ld b, d
    ld h, e
    ld b, $22
    ld c, b
    ld h, e
    ld b, $23
    ld c, [hl]
    ld h, e
    ld c, e
    ld l, l
    ld [hl], d
    ld c, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld a, [de]
    ld d, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    dec [hl]
    ld d, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld c, h
    ld d, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld c, b
    ld e, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    dec bc
    ld e, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld hl, $555d
    sub c
    ld c, e
    ld l, l
    rla
    ld h, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    adc a
    ld h, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    rlca
    ld h, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld b, $65
    ld d, l
    sub c
    ld c, e
    ld l, l
    inc h
    ld h, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    sub b
    ld l, b
    ld d, l
    sub c
    ld c, e

jr_02f_632b:
    ld l, l
    ld d, [hl]
    ld l, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    rst $28
    ld l, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld d, a
    ld l, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [de], a
    ld [hl], c
    ld d, l
    sub c
    ld c, e
    ld l, l
    add e
    ld [hl], d
    ld d, l
    sub c
    ld c, e
    ld l, l
    sub a
    ld [hl], e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld l, a
    ld [hl], h
    ld d, l
    sub c
    inc e
    rla
    ld b, $05
    and [hl]
    ld h, e
    ld b, $07
    xor h
    ld h, e
    ld b, $0b
    or d
    ld h, e
    ld b, $0d
    cp b
    ld h, e
    ld b, $0f
    cp [hl]
    ld h, e
    ld b, $10
    call nz, $0663
    ld de, $63ca
    ld b, $13
    ret nc

    ld h, e
    ld b, $14
    sub $63
    ld b, $16
    call c, $0663
    rla
    ld [c], a
    ld h, e
    ld b, $18
    add sp, $63
    ld b, $1b
    xor $63
    ld b, $1c
    db $f4
    ld h, e
    ld b, $1d
    ld a, [$0663]
    ld e, $00
    ld h, h
    ld b, $20
    ld b, $64
    ld b, $21
    inc c
    ld h, h
    ld b, $22
    ld [de], a
    ld h, h
    ld b, $23
    jr jr_02f_640a

    ld c, e
    ld l, l
    sbc [hl]
    ld c, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld d, h
    ld d, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld e, a
    ld d, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [hl], b
    ld d, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld a, h
    ld e, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    scf
    ld e, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    add hl, sp
    ld e, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld b, c
    ld h, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    cp l
    ld h, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    inc l
    ld h, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    add hl, sp
    ld h, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    dec sp
    ld h, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    cp d
    ld l, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    adc e
    ld l, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    inc hl
    ld l, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    adc b
    ld l, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [hl-], a
    ld [hl], c

jr_02f_640a:
    ld d, l
    sub c
    ld c, e
    ld l, l
    and l
    ld [hl], d
    ld d, l
    sub c
    ld c, e
    ld l, l
    xor a
    ld [hl], e
    ld d, l
    sub c
    ld c, e
    ld l, l
    sbc e
    ld [hl], h
    ld d, l
    sub c
    dec hl
    ld [bc], a
    add hl, bc
    ld a, d
    ld h, h
    dec hl
    inc b
    add hl, bc
    call z, $1c64
    rla
    ld b, $06
    ld c, d
    ld h, h
    ld b, $0c
    ld d, b
    ld h, h
    ld b, $0e
    ld d, [hl]
    ld h, h
    ld b, $12
    ld e, h
    ld h, h
    ld b, $15
    ld h, d
    ld h, h
    ld b, $1a
    ld l, b
    ld h, h
    ld b, $1f
    ld l, [hl]
    ld h, h
    ld b, $24
    ld [hl], h
    ld h, h
    ld c, e
    ld l, l
    and c
    ld c, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld [hl], d
    ld d, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    add [hl]
    ld d, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    dec h
    ld e, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    pop af
    ld h, d
    ld d, l
    sub c
    ld c, e
    ld l, l
    jr c, @+$69

    ld d, l
    sub c
    ld c, e
    ld l, l
    di
    ld l, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    adc a
    ld [hl], l
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    sbc h
    ld h, h
    ld b, $0c
    and d
    ld h, h
    ld b, $0e
    xor b
    ld h, h
    ld b, $12
    xor [hl]
    ld h, h
    ld b, $15
    or h
    ld h, h
    ld b, $1a
    cp d
    ld h, h
    ld b, $1f
    ret nz

    ld h, h
    ld b, $24
    add $64
    ld c, e
    ld l, l
    jp c, Jump_02f_554f

    sub c
    ld c, e
    ld l, l
    and [hl]
    ld d, h
    ld d, l
    sub c
    ld c, e
    ld l, l
    or a
    ld d, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld e, c
    ld e, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld c, $63
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld d, a
    ld h, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    inc e
    ld l, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    xor h
    ld [hl], l
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    xor $64
    ld b, $0c
    db $f4
    ld h, h
    ld b, $0e
    ld a, [$0664]
    ld [de], a
    nop
    ld h, l
    ld b, $15
    ld b, $65
    ld b, $1a
    inc c
    ld h, l
    ld b, $1f
    ld [de], a
    ld h, l
    ld b, $24
    jr jr_02f_6553

    ld c, e
    ld l, l
    inc b
    ld d, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    call nc, Call_02f_5554
    sub c
    ld c, e
    ld l, l
    add sp, $57
    ld d, l
    sub c
    ld c, e
    ld l, l
    adc [hl]
    ld e, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld sp, $5563
    sub c
    ld c, e
    ld l, l
    db $76
    ld h, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    scf
    ld l, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    ret


    ld [hl], l
    ld d, l
    sub c
    inc e
    rla
    ld b, $05
    ld h, h
    ld h, l
    ld b, $0b
    ld [hl], b
    ld h, l
    ld b, $0d
    db $76
    ld h, l
    ld b, $0f
    ld a, h
    ld h, l
    ld b, $10
    add d
    ld h, l
    ld b, $11
    adc b
    ld h, l
    ld b, $13
    adc [hl]
    ld h, l
    ld b, $14
    sub h
    ld h, l
    ld b, $17
    sbc d
    ld h, l
    ld b, $18
    and b
    ld h, l
    ld b, $1b
    and [hl]
    ld h, l
    ld b, $1c
    xor h
    ld h, l
    ld b, $1d
    or d

jr_02f_6553:
    ld h, l
    ld b, $1e
    cp b
    ld h, l
    ld b, $20
    cp [hl]
    ld h, l
    ld b, $21
    call nz, $0665
    inc hl
    jp z, Jump_02f_4b65

    ld l, l
    call Call_02f_554e
    sub c
    ld c, e
    ld l, l
    adc e
    ld d, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    sub e
    ld d, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    sub h
    ld d, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    or d
    ld e, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld l, b
    ld e, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld d, c
    ld e, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld l, a
    ld h, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld a, [c]
    ld h, c
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld l, h
    ld h, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld d, d
    ld h, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    add sp, $68
    ld d, l
    sub c
    ld c, e
    ld l, l
    jp nz, Jump_02f_556a

    sub c
    ld c, e
    ld l, l
    ld d, [hl]
    ld l, h
    ld d, l
    sub c
    ld c, e

jr_02f_65b9:
    ld l, l
    cp c
    ld l, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld h, c
    ld [hl], c
    ld d, l
    sub c
    ld c, e
    ld l, l

jr_02f_65c6:
    ret nc

    ld [hl], d
    ld d, l
    sub c
    ld c, e
    ld l, l
    ret z

    ld [hl], h
    ld d, l
    sub c
    inc e
    rla
    ld b, $06
    ld a, [c]
    ld h, l
    ld b, $0c
    ld hl, sp+$65
    ld b, $0e
    cp $65
    ld b, $12
    inc b
    ld h, [hl]
    ld b, $15
    ld a, [bc]
    ld h, [hl]
    ld b, $1a
    db $10
    ld h, [hl]
    ld b, $1f
    ld d, $66
    ld b, $24
    inc e
    ld h, [hl]
    ld c, e
    ld l, l
    dec hl
    ld d, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    db $10
    ld d, l
    ld d, l
    sub c
    ld c, e
    ld l, l
    add hl, de
    ld e, b
    ld d, l
    sub c
    ld c, e
    ld l, l
    cp [hl]
    ld e, [hl]
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld d, d
    ld h, e
    ld d, l
    sub c
    ld c, e
    ld l, l
    sub l
    ld h, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    ld h, b
    ld l, a
    ld d, l
    sub c
    ld c, e
    ld l, l
    push hl
    ld [hl], l
    ld d, l
    sub c
    rrca
    ld e, l
    nop
    ld bc, $3f2f
    ld e, [hl]
    ld b, $00
    ld [hl], $66
    ld c, e
    ld l, l
    adc e
    ld d, c
    ld d, l
    inc b
    jr z, jr_02f_65b9

    ld b, h
    inc b
    cpl
    ld a, [hl-]
    ld h, [hl]
    ld c, e
    ld l, l
    dec hl
    ld d, d
    ld d, l
    inc b
    jr z, jr_02f_65c6

    ld b, h
    add [hl]
    or c
    and b
    xor l
    and e
    xor h
    and b
    ld d, b
    add [hl]
    or c
    and b
    xor l
    and e
    xor a
    and b
    ld d, b
    adc h
    xor [hl]
    xor h
    ld d, b
    add e
    and b
    and e
    ld d, b
    sub d
    xor b
    or d
    or e
    and h
    or c
    ld d, b
    add c
    or c
    xor [hl]
    or e
    and a
    and h
    or c
    ld d, b
    ld l, e
    ld h, e
    ld [bc], a
    add hl, bc
    sbc b
    ld h, [hl]
    ld e, h
    add b
    inc bc
    adc d
    ld h, [hl]
    ld e, h
    add b
    ld [hl], l
    nop
    cp $1e
    ld c, $02
    ld e, $43
    ld l, d
    rlca
    ret nc

    ld [hl], e
    cp $6c
    nop
    cp $03
    adc d
    ld h, [hl]
    ld b, a
    ld h, d
    nop
    ld d, h
    ld c, c
    ld e, h
    ld e, a
    ld h, b
    ld h, e
    ld bc, $4d1b
    ret nc

    rst $38
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
