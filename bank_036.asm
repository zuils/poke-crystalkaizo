; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

    rst $28
    rst $10
    rst $10
    cp e
    add e
    ld a, l
    ld a, l
    rst $38
    rlca
    ld a, e
    ld a, e
    inc bc
    ld a, l
    ld a, l
    inc bc
    rst $38
    jp Jump_036_7fbd


    ld a, a
    ld a, a
    cp l
    jp $07ff


    ld a, e
    ld a, l
    ld a, l
    ld a, l
    ld a, e
    rlca
    rst $38
    ld bc, $7f7f
    inc bc
    ld a, a
    ld a, a
    ld bc, $01ff
    ld a, a
    ld a, a
    inc bc
    ld a, a
    ld a, a
    ld a, a
    rst $38
    jp Jump_036_7fbd


    ld h, c
    ld a, l
    cp l
    jp Jump_036_7dff


    ld a, l
    ld a, l
    ld bc, $7d7d
    ld a, l
    rst $38
    add e
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    add e
    rst $38
    add c
    rst $30
    rst $30
    ld [hl], a
    ld [hl], a
    ld [hl], a
    adc a
    rst $38
    ld a, e
    ld [hl], a
    ld l, a
    ld c, a
    scf
    ld a, e
    ld a, l
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld bc, $7dff
    add hl, sp
    ld d, l
    ld l, l
    ld a, l
    ld a, l
    ld a, l
    rst $38
    ld a, l
    dec a
    ld e, l
    ld l, l
    ld [hl], l
    ld a, c
    ld a, l
    rst $38
    rst $00
    cp e
    ld a, l
    ld a, l
    ld a, l
    cp e
    rst $00
    rst $38
    inc bc
    ld a, l
    ld a, l
    inc bc
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $00
    cp e
    ld a, l
    ld a, l
    ld [hl], l
    cp e
    push bc
    rst $38
    inc bc
    ld a, l
    ld a, l
    inc bc
    ld [hl], a
    ld a, e
    ld a, l
    rst $38
    add a
    ld a, e
    ld a, a
    add e
    db $fd
    ld a, l
    add e
    rst $38
    ld bc, $efef
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    cp l
    pop bc
    rst $38
    ld a, l
    ld a, l
    cp e
    cp e
    rst $10
    rst $10
    rst $28
    rst $38
    ld a, l
    ld a, l
    ld l, l
    ld d, l
    add hl, sp
    add hl, sp
    ld a, l
    rst $38
    add hl, sp
    cp e
    rst $10
    rst $28
    rst $10
    cp e
    add hl, sp
    rst $38
    ld a, l
    cp e
    rst $10
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    ld bc, $f7fb
    rst $28
    rst $18
    cp a
    ld bc, $f3ff
    rst $28
    rst $18
    rst $18
    rst $18
    rst $28
    di
    rst $38
    sbc a
    rst $28
    rst $30
    rst $30
    rst $30
    rst $28
    sbc a
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $38
    rst $20
    rst $20
    rst $38
    rst $20
    rst $20
    rst $30
    rst $28
    db $e3
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    db $e3
    rst $38
    adc a
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    adc a
    rst $38
    rst $38
    rst $38
    rst $00
    ei
    jp $c1bb


    rst $38
    cp a
    cp a
    cp a
    add e
    cp l
    cp l
    add e
    rst $38
    rst $38
    rst $38
    pop bc
    cp a
    cp a
    cp a
    pop bc
    rst $38
    db $fd
    db $fd
    db $fd
    pop bc
    cp l
    cp l
    pop bc
    rst $38
    rst $38
    rst $38
    jp $81bd


    cp a
    pop bc
    rst $38
    di
    db $ed
    rst $28
    add c
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    pop bc
    cp l
    pop bc
    db $fd
    add e
    rst $38
    cp a
    cp a
    cp a
    add a
    cp e
    cp e
    cp e
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    rst $30
    rst $08
    rst $38
    cp a
    cp a
    cp c
    and a
    sbc a
    and a
    cp c
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    inc de
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    rst $38
    rst $38
    rst $38
    jp $dddd


    db $dd
    db $dd
    rst $38
    rst $38
    rst $38
    jp $bdbd


    cp l
    jp $ffff


    rst $38
    add e
    cp l
    add e
    cp a
    cp a
    cp a
    rst $38
    rst $38
    pop bc
    cp l
    pop bc
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    or c
    xor a
    sbc a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    jp $c3bf


    db $fd
    add e
    rst $38
    rst $38
    rst $28
    add e
    rst $28
    rst $28
    rst $28
    di
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    cp e
    cp e
    jp $ffff


    rst $38
    cp e
    cp e
    cp e
    rst $10
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, l
    ld l, l
    ld l, l
    ld d, l
    cp e
    rst $38
    rst $38
    rst $38
    dec sp
    rst $10
    rst $28
    rst $10
    cp c
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    jp $87fb


    rst $38
    rst $38
    rst $38
    add c
    ei
    rst $20
    rst $18
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $28
    rst $10
    cp e
    add e
    ld a, l
    ld a, l
    rst $38
    rst $10
    rst $00
    cp e
    ld a, l
    ld a, l
    cp e
    rst $00
    rst $38
    rst $10
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    cp l
    pop bc
    rst $38
    rst $10
    rst $38
    rst $00
    ei
    jp $c1bb


    rst $38
    rst $10
    rst $38
    jp $bdbd


    cp l
    jp $d7ff


    rst $38
    cp e
    cp e
    cp e
    cp e
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    cp l
    ld a, l
    pop bc
    cp l
    cp l
    pop bc
    rst $38
    scf
    or a
    ld [hl], a
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    ccf
    cp a
    ld l, c
    sub $d6
    sub $d6
    rst $38
    ccf
    cp a
    ld l, h
    db $eb
    rst $20
    rst $28
    rst $28
    rst $38
    ccf
    cp a
    ld h, c
    rst $18
    pop hl
    cp $c1
    rst $38
    ccf
    or a
    ld b, c
    rst $30
    rst $30
    rst $30
    ld sp, hl
    rst $38
    ccf
    cp a
    ld e, l
    db $dd
    db $dd
    db $eb
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $30
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ld l, a
    rra
    ld [hl], l
    ld [hl], l
    di
    push af
    push af
    daa
    ld d, a
    ld [hl], a
    ld [hl], a
    db $ed
    push hl
    jp hl


    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jr jr_036_4364

    rst $20
    rst $38
    rst $20
    rst $20
    rst $38
    rst $20
    jp $e7c3


    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $38
    rst $08
    sub a
    sub a
    call $33a5
    add l
    rst $38
    rst $08
    ccf
    jp $81bd


    cp a
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    xor a
    or a
    cp e

jr_036_4364:
    or a
    xor a
    sbc a
    rst $38
    sbc a
    adc a
    add a
    add e
    add a
    adc a
    sbc a
    rst $38
    rst $38
    ld bc, $8301
    rst $00
    rst $28
    rst $38
    rst $38
    rst $28
    rst $00
    xor e
    ld l, l
    rst $00
    cp e
    cp e
    rst $00
    jp $c3db


    rst $18
    adc a
    rst $18
    adc a
    rst $18
    rst $38
    rst $38
    cp e
    rst $10
    rst $28
    rst $10
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $38
    db $fd
    ei
    rst $30
    rst $28
    rst $18
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $28
    rst $18
    rst $00
    cp e
    cp e
    rst $00
    rst $28
    add e
    rst $28
    rst $28
    rst $38
    rst $00
    or e
    add hl, sp
    add hl, sp
    sbc e
    rst $00
    rst $38
    rst $38
    rst $20
    rst $00
    rst $20
    rst $20
    rst $20
    add c
    rst $38
    rst $38
    add e
    add hl, sp
    pop af
    add e
    rra
    ld bc, $ffff
    add c
    di
    rst $00
    ld sp, hl
    add hl, sp
    add e
    rst $38
    rst $38
    db $e3
    jp $3393


    ld bc, $fff3
    rst $38
    inc bc
    ld a, a
    inc bc
    ld sp, hl
    add hl, sp
    add e
    rst $38
    rst $38
    add e
    ccf
    inc bc
    add hl, sp
    add hl, sp
    add e
    rst $38
    rst $38
    ld bc, $f339
    rst $20
    rst $08
    rst $08
    rst $38
    rst $38
    add e
    add hl, sp
    add e
    add hl, sp
    add hl, sp
    add e
    rst $38
    rst $38
    add e
    add hl, sp
    add hl, sp
    add c
    ld sp, hl
    add e
    rst $38
    ld a, [bc]
    ld b, h
    ld c, $44
    inc e
    ld b, h
    dec hl
    ld b, h
    dec [hl]
    ld b, h
    nop
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1d1c
    ld e, $1f
    jr nz, jr_036_4436

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    ld [bc], a
    dec h
    ld h, $27
    nop
    jr z, @+$2b

    ld a, [hl+]
    nop
    inc hl
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld a, [de]
    dec hl
    inc l
    nop
    dec l
    ld l, $00
    nop
    nop
    inc b

jr_036_4436:
    cpl
    jr nc, jr_036_4479

    ld b, h
    ld c, h
    ld b, h
    ld e, e
    ld b, h
    ld h, b
    ld b, h
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4470

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $01
    inc h
    dec h
    cpl
    jr z, jr_036_447b

    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_445e

    inc h
    add hl, sp

jr_036_445e:
    jr z, jr_036_449a

    inc bc
    dec sp
    inc a
    ld l, e
    ld b, h
    add e
    ld b, h
    sbc [hl]
    ld b, h
    and h
    ld b, h
    nop
    ld sp, $3332
    inc [hl]

jr_036_4470:
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_036_4479:
    ld a, $3f

jr_036_447b:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4131
    ld b, d
    dec [hl]
    ld [hl], $43
    inc [hl]
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    dec a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    ld c, e
    ld b, b
    nop
    nop
    nop

jr_036_449a:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    inc bc
    ld d, c
    ld d, d
    xor a
    ld b, h
    call nz, $d944
    ld b, h
    xor $44
    nop
    add hl, de
    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld e, $00
    rra
    jr nz, jr_036_44dc

    ld [hl+], a
    nop
    inc hl
    inc h
    dec h
    nop
    ld h, $27
    jr z, jr_036_44c5

jr_036_44c5:
    add hl, de
    ld a, [de]
    nop
    nop
    add hl, hl
    dec e
    ld e, $00
    nop
    ld a, [hl+]
    ld hl, $0022
    nop
    dec hl
    dec h
    nop
    nop
    nop
    inc l
    nop
    add hl, de
    ld a, [de]

jr_036_44dc:
    nop
    nop
    add hl, hl
    dec e
    ld e, $00
    nop
    dec l
    ld hl, $0022
    nop
    ld l, $2f
    nop
    nop
    nop
    inc l
    ld bc, $1a19
    jr nc, jr_036_4510

    ld e, $22
    db $fd
    ld b, h
    inc d
    ld b, l
    dec hl
    ld b, l
    ld l, $45
    nop
    nop
    inc h
    dec h
    ld h, $00
    daa
    jr z, jr_036_452f

    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_4540

    ld [hl-], a

jr_036_4510:
    nop
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    inc h
    dec h
    ld h, $00
    daa
    jr z, jr_036_4546

    nop
    ld a, [hl+]
    dec hl
    ld [hl], $2d
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld bc, $3837
    ld [bc], a

jr_036_452f:
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $45
    ld b, l
    ld h, e
    ld b, l
    ld a, e

jr_036_4540:
    ld b, l
    sbc c
    ld b, l
    sbc e
    ld b, l
    nop

jr_036_4546:
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_458b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld sp, $4632
    ld b, a
    ld c, b
    ld [hl], $49
    ld c, d
    ld c, e
    ld a, [hl-]
    dec sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $4632
    inc [hl]
    dec [hl]
    ld [hl], $49
    ld c, d
    add hl, sp
    ld a, [hl-]
    dec sp
    ld c, h

jr_036_458b:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld d, e
    ld bc, $0000
    ld sp, $3332
    ld b, a
    ld c, b
    ld [hl], $37
    jr c, @+$4d

    ld a, [hl-]
    dec sp
    inc a
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld b, l
    nop
    nop
    cp c
    ld b, l
    add $45
    rst $08
    ld b, l
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_45e4

    ld [hl+], a
    inc b
    inc hl
    ld bc, $2524
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld [bc], a
    inc l
    ld a, [hl+]
    dec hl
    db $db
    ld b, l
    ld a, [c]
    ld b, l
    dec bc
    ld b, [hl]
    rra
    ld b, [hl]
    nop
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_036_460c

    ld a, [hl+]

jr_036_45e4:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_461c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_45f4

    inc h

jr_036_45f4:
    dec h
    ld h, $27
    nop
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    add hl, sp
    ld a, [hl-]
    dec sp
    nop
    inc a
    dec a
    ld [bc], a

jr_036_460c:
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_036_463c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_464c

    ld [hl-], a

jr_036_461c:
    inc sp
    inc [hl]
    ld a, $03
    inc h
    dec h
    ld h, $27
    nop
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ccf
    ld b, b
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_4672

    ld sp, $3332
    inc [hl]
    ld a, $3e
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld h, b
    ld b, [hl]

jr_036_463c:
    ld [hl], c
    ld b, [hl]
    nop
    ld sp, $0632
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4682

    ld a, [hl-]
    dec sp
    inc a

jr_036_464c:
    dec a
    ld a, $06
    ld b, $01
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld [bc], a
    ccf
    ld c, [hl]
    ld c, a
    ld b, d
    ld d, b
    ld d, c
    ld d, d
    ld b, [hl]
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    inc bc

jr_036_4672:
    ld d, a
    ld e, b
    ld a, b
    ld b, [hl]
    adc b
    ld b, [hl]
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_46a8

    ld a, [hl+]
    dec hl
    inc l

jr_036_4682:
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    ld bc, $9233
    ld b, [hl]
    sbc l
    ld b, [hl]
    and a
    ld b, [hl]
    xor d
    ld b, [hl]
    nop
    nop
    inc h
    dec h
    ld h, $00
    daa
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    ld bc, $2c00
    dec l
    ld l, $00
    cpl
    jr nc, jr_036_46d7

    ld a, [hl+]
    ld [bc], a

jr_036_46a8:
    ld [hl-], a
    inc sp
    inc bc
    inc [hl]
    dec [hl]
    ld [hl], $b8
    ld b, [hl]
    jp nz, $c446

    ld b, [hl]
    rst $08
    ld b, [hl]
    call nc, $0046
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_46e3

    ld bc, $0222
    inc hl
    inc h
    dec h
    add hl, de
    inc e
    ld [hl+], a
    ld h, $1f
    daa
    jr z, jr_036_46d3

    add hl, de
    inc e
    ld [hl+], a

jr_036_46d3:
    rra
    inc b
    add hl, de
    inc e

jr_036_46d7:
    rra
    ld [c], a
    ld b, [hl]
    db $e4
    ld b, [hl]
    rst $30
    ld b, [hl]
    ld a, [bc]
    ld b, a
    dec e
    ld b, a
    nop

jr_036_46e3:
    ld sp, $0001
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4727

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    ld b, b
    ld b, c
    ld bc, $3200
    inc sp
    inc [hl]
    dec [hl]
    ld b, d
    ld b, e
    jr c, jr_036_473a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    ld b, b
    ld b, c
    ld bc, $3200
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    scf
    jr c, jr_036_474d

    ld b, [hl]
    ld b, a
    inc a
    dec a
    ld a, $3f
    nop
    ld b, b
    ld b, c
    ld [bc], a
    ld c, b
    ld c, c
    jr z, jr_036_4769

    ld [hl-], a
    ld b, a
    ld b, e
    ld b, a
    ld c, h

jr_036_4727:
    ld b, a
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4758

    ld a, [hl+]
    dec hl
    inc l
    ld bc, $2e2d
    dec h
    cpl
    jr nc, jr_036_476a

    ld [hl-], a

jr_036_473a:
    inc sp
    ld a, [hl+]
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    ld [bc], a
    inc h
    dec h
    jr nc, jr_036_4779

    dec sp
    ld a, [hl+]
    dec hl
    inc l
    inc bc

jr_036_474d:
    inc h
    dec h
    ld h, $30
    jr z, jr_036_4784

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    ld e, a

jr_036_4758:
    ld b, a
    ld l, h
    ld b, a
    ld a, c
    ld b, a
    adc d
    ld b, a
    nop
    dec b

jr_036_4761:
    dec b
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4791

    ld a, [hl+]

jr_036_4769:
    dec hl

jr_036_476a:
    inc l
    dec l
    nop
    dec b
    dec b
    inc h
    dec h
    ld h, $27
    jr z, jr_036_47a3

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_036_4779:
    ld bc, $0505
    inc h
    dec h
    ld h, $2f
    jr nc, @+$29

    jr z, jr_036_47ad

jr_036_4784:
    ld a, [hl+]
    dec hl
    inc l
    ld sp, $322d
    ld [bc], a
    inc sp
    inc [hl]
    dec [hl]
    sub [hl]
    ld b, a
    sbc l

jr_036_4791:
    ld b, a
    and [hl]
    ld b, a
    xor c
    ld b, a
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $01
    add hl, de
    ld a, [de]
    rra
    dec de
    inc e

jr_036_47a3:
    jr nz, jr_036_47c2

    ld e, $02
    ld hl, $0322
    rra
    jr nz, jr_036_4761

jr_036_47ad:
    ld b, a
    bit 0, a
    ld [c], a
    ld b, a
    ld sp, hl
    ld b, a
    nop
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    jr c, jr_036_47fa

    ld a, [hl-]

jr_036_47c2:
    dec sp
    nop
    inc a
    dec a
    ld a, $00
    ccf
    nop
    nop
    nop
    ld sp, $4032
    nop
    inc [hl]
    dec [hl]
    ld [hl], $41
    nop
    nop
    jr c, jr_036_4811

    ld a, [hl-]
    ld b, d
    nop
    inc a
    dec a
    ld a, $00
    ccf
    nop
    nop
    nop
    ld sp, $4032
    nop
    ld b, e
    ld b, h
    ld [hl], $41
    nop
    nop
    jr c, jr_036_4828

    ld a, [hl-]
    ld b, d
    nop
    ld b, l
    ld b, [hl]
    ld a, $00
    ccf
    nop
    nop
    nop

jr_036_47fa:
    ld sp, $3347
    nop
    inc [hl]
    dec [hl]
    ld c, b
    scf
    nop
    nop
    jr c, jr_036_483f

    ld c, c
    dec sp
    nop
    inc a
    dec a
    ld a, $00
    ccf
    nop
    nop
    ld a, [de]

jr_036_4811:
    ld c, b
    dec l
    ld c, b
    ld [hl], $48
    ld d, c
    ld c, b
    ld e, h
    ld c, b
    nop
    inc bc
    inc bc
    ld sp, $0332
    inc bc
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $03
    inc bc
    scf

jr_036_4828:
    jr c, jr_036_482d

    inc bc
    inc bc
    add hl, sp

jr_036_482d:
    ld bc, $3b3a
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld [bc], a
    inc bc
    inc bc
    ld sp, $3a32
    dec sp
    inc bc
    inc bc

jr_036_483f:
    inc sp
    inc [hl]
    inc a
    dec a
    dec [hl]
    ld [hl], $3e
    ccf
    inc bc
    inc bc
    scf
    jr c, @+$42

    ld b, c
    inc bc
    inc bc
    inc bc
    add hl, sp
    inc bc
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc bc
    ld c, b
    ld c, c
    inc bc
    inc b
    inc bc
    inc bc
    ld sp, $4232
    ld b, e
    inc bc
    inc bc
    inc sp
    inc [hl]
    ld b, h
    ld b, l
    dec [hl]
    ld [hl], $46
    ld b, a
    inc bc
    inc bc
    inc bc
    scf
    jr c, jr_036_48bb

    ld c, c
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, sp
    add c
    ld c, b
    adc d
    ld c, b
    adc h
    ld c, b
    sub l
    ld c, b
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_48b1

    ld a, [hl+]
    dec hl
    ld bc, $0227
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_48c4

    ld [hl-], a
    inc sp
    inc bc
    inc [hl]
    dec [hl]
    and b
    ld c, b
    xor h
    ld c, b
    or e
    ld c, b
    cp a
    ld c, b
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_48d0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $01
    cpl
    jr nc, jr_036_48d4

    dec h

jr_036_48b1:
    ld h, $27
    ld [bc], a
    ld sp, $2432
    dec h
    jr z, jr_036_48e3

    ld a, [hl+]

jr_036_48bb:
    dec hl
    inc l
    dec l
    ld l, $03
    cpl
    jr nc, jr_036_48e9

    daa

jr_036_48c4:
    call z, $dd48
    ld c, b
    xor $48
    pop af
    ld c, b
    nop
    ld [bc], a
    add hl, de
    ld [bc], a

jr_036_48d0:
    ld a, [de]
    dec de
    inc e
    dec e

jr_036_48d4:
    ld e, $1f
    jr nz, jr_036_48f9

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [bc], a
    nop
    ld [bc], a
    add hl, de
    ld [bc], a
    ld a, [de]
    dec de

jr_036_48e3:
    inc e
    dec e
    ld e, $26
    jr nz, jr_036_490a

jr_036_48e9:
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [bc], a
    ld bc, $2827
    ld [bc], a
    inc hl
    dec h
    ld [bc], a
    ei
    ld c, b
    cp $48

jr_036_48f9:
    dec bc
    ld c, c
    nop
    add hl, de
    ld a, [de]
    ld bc, $1c1b
    add hl, de
    dec e
    ld e, $1f
    jr nz, jr_036_4928

    ld [hl+], a
    ld a, [de]
    inc hl

jr_036_490a:
    inc h
    ld [bc], a
    dec h
    ld h, $27
    jr z, jr_036_493a

    ld a, [hl+]
    jr jr_036_495d

    ld a, [de]
    ld c, c
    ld h, $49
    nop
    add hl, de
    ld bc, $1b1a
    inc e
    dec e
    add hl, de
    ld e, $1f
    jr nz, jr_036_4945

    ld [hl+], a
    nop
    ld [bc], a
    inc hl

jr_036_4928:
    inc h
    dec h
    ld l, $49
    dec a
    ld c, c
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_4959

    ld [hl+], a
    inc hl

jr_036_493a:
    inc h
    dec h
    ld h, $01
    daa
    ld c, c
    ld c, c
    ld e, c
    ld c, c
    ld [hl], d
    ld c, c

jr_036_4945:
    ld [hl], h
    ld c, c
    add e
    ld c, c
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_036_4959:
    ld bc, $3231
    inc sp

jr_036_495d:
    inc [hl]
    ld b, b
    ld b, c
    scf
    jr c, jr_036_49a5

    ld b, e
    add hl, sp
    ld a, [hl-]
    dec sp
    ld b, h
    inc a
    dec a
    ld a, $3f
    nop
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    ld [bc], a
    ld c, c
    inc bc
    ld sp, $3332
    inc [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $3231
    inc sp
    inc [hl]
    ld c, d
    ld b, c
    scf
    jr c, jr_036_49cf

    ld b, e
    add hl, sp
    ld a, [hl-]
    dec sp
    ld b, h
    inc a
    dec a
    ld a, $3f
    nop
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    and h
    ld c, c
    xor a
    ld c, c
    cp d
    ld c, c
    push bc
    ld c, c
    nop

jr_036_49a5:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    rra
    nop
    jr nz, jr_036_49b0

jr_036_49b0:
    add hl, de
    ld a, [de]
    ld hl, $221c
    ld e, $00
    rra
    nop
    jr nz, jr_036_49bb

jr_036_49bb:
    add hl, de
    ld a, [de]
    ld hl, $231c
    ld e, $00
    rra
    nop
    jr nz, jr_036_49c7

    inc h

jr_036_49c7:
    rst $08
    ld c, c
    call c, $e949
    ld c, c
    db $ec
    ld c, c

jr_036_49cf:
    nop
    ld bc, $0124
    dec h
    ld h, $27
    jr z, jr_036_49d9

    add hl, hl

jr_036_49d9:
    ld a, [hl+]
    ld bc, $0001
    ld bc, $0124
    dec hl
    ld h, $2c
    jr z, jr_036_49e6

    add hl, hl

jr_036_49e6:
    ld a, [hl+]
    ld bc, $0101
    dec l
    ld l, $02
    cpl
    jr nc, jr_036_4a21

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    db $fd
    ld c, c
    ld a, [bc]
    ld c, d
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_4a28

    ld [hl+], a
    inc hl
    inc h
    ld bc, $2625
    dec d
    ld c, d
    ld hl, $2f4a
    ld c, d
    dec a
    ld c, d
    nop
    inc h
    dec h
    ld h, $00
    daa
    jr z, jr_036_4a46

    nop
    ld a, [hl+]
    dec hl
    inc l

jr_036_4a21:
    ld bc, $2e2d
    cpl
    jr nc, jr_036_4a4d

    nop

jr_036_4a28:
    daa
    jr z, jr_036_4a54

    nop
    ld a, [hl+]
    dec hl
    inc l
    ld bc, $2e2d
    cpl
    jr nc, jr_036_4a5b

    nop
    ld sp, $2928
    nop
    ld [hl-], a
    dec hl
    inc l
    ld [bc], a
    dec l
    cpl
    ld c, h
    ld c, d
    ld h, h
    ld c, d
    add [hl]
    ld c, d

jr_036_4a46:
    and c
    ld c, d
    and h
    ld c, d
    xor l
    ld c, d
    nop

jr_036_4a4d:
    nop
    ld sp, $3200
    inc sp
    inc [hl]
    dec [hl]

jr_036_4a54:
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a

jr_036_4a5b:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    ld bc, $0000
    nop
    nop
    ld b, l
    ld b, [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4aa9

    ld a, [hl-]
    ld b, a
    ld c, b
    ld c, c
    inc a
    dec a
    ld a, $3f
    ld c, d
    ld c, e
    ld c, h
    ld b, b
    ld b, c
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, d
    ld b, e
    ld d, b
    ld d, c
    ld b, h
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld d, d
    ld b, [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    ld d, e
    dec sp
    inc a
    dec a
    ld a, $3f
    ld d, h
    ld d, l
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    inc bc
    ld d, e
    ld d, l
    inc b
    ld [hl], $37
    dec sp
    inc a

jr_036_4aa9:
    ld b, d
    ld b, e
    ld b, h
    nop
    dec b
    ld [hl], $37
    ld d, e
    dec sp
    inc a
    ld d, l
    ld b, d
    ld b, e
    ld b, h
    nop
    call nz, $d04a
    ld c, d
    call c, $de4a
    ld c, d
    jp hl


    ld c, d
    db $f4
    ld c, d
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4b07

    ld a, [hl-]
    dec sp
    ld bc, $3d3c
    ld a, $3f
    dec [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld [bc], a
    dec [hl]
    inc bc
    ld sp, $3332
    inc [hl]
    ld [hl], $37
    jr c, jr_036_4b20

    ld a, [hl-]
    dec sp
    inc b
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec b
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    inc bc
    ld c, e
    inc c
    ld c, e
    jr @+$4d

    rra
    ld c, e
    ld [hl+], a
    ld c, e
    nop
    add hl, de
    ld a, [de]
    dec de

jr_036_4b07:
    inc e
    dec e
    ld e, $1f
    jr nz, @+$03

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4b3f

    ld a, [hl+]
    dec hl
    ld [bc], a
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_4b23

jr_036_4b20:
    inc hl
    inc h
    inc bc

jr_036_4b23:
    add hl, de
    ld a, [de]
    dec l
    ld c, e
    add hl, sp
    ld c, e
    ld c, e
    ld c, e
    ld l, b
    ld c, e
    nop
    ld bc, $3231
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4b71

    ld a, [hl-]
    ld bc, $0101
    dec sp
    inc a
    dec a

jr_036_4b3f:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld bc, $0201
    ld bc, $0101
    ld sp, $3b32
    inc a
    dec a
    inc sp
    inc [hl]
    ld a, $3f
    dec [hl]
    ld [hl], $40
    ld b, c
    scf
    jr c, @+$44

    ld b, e
    ld b, h
    add hl, sp
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld b, a
    ld bc, $0301
    ld c, b
    ld c, c
    ld c, d
    ld [hl], d
    ld c, e
    add b
    ld c, e
    adc h

jr_036_4b71:
    ld c, e
    nop
    inc bc
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4ba3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld bc, $2403
    jr nc, jr_036_4bb6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4b8f

    jr z, @+$2e

jr_036_4b8f:
    sub a
    ld c, e
    xor d
    ld c, e
    cp [hl]
    ld c, e
    jp nc, $004b

    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4bdb

    ld a, [hl-]

jr_036_4ba3:
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    ld bc, $403f
    ld sp, $3341
    inc [hl]
    ld b, d
    ld b, e
    scf
    ld b, h
    ld b, l

jr_036_4bb6:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    ld bc, $4746
    ld sp, $3341
    inc [hl]
    ld b, d
    ld b, e
    scf
    ld b, h
    ld b, l
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    ld [bc], a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    call c, $e94b

jr_036_4bdb:
    ld c, e
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    ld bc, $1f1d
    db $f4
    ld c, e
    rst $38
    ld c, e
    inc c
    ld c, h
    add hl, de
    ld c, h
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4c25

    ld a, [hl+]
    nop
    dec hl
    ld bc, $2400
    dec h
    ld h, $27
    inc l
    jr z, jr_036_4c31

    ld a, [hl+]
    dec l
    nop
    dec hl
    ld bc, $242e
    cpl
    jr nc, jr_036_4c43

    inc l
    ld [hl-], a
    inc sp
    inc [hl]
    dec l
    nop
    dec hl
    ld [bc], a
    dec [hl]
    ld [hl], $24
    ld c, h
    ccf
    ld c, h
    ld c, b
    ld c, h
    ld d, e
    ld c, h
    nop

jr_036_4c25:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    jr c, jr_036_4c68

    ld a, [hl-]
    dec sp

jr_036_4c31:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    ld b, [hl]
    ld b, a
    nop
    ld bc, $4948
    ld c, d

jr_036_4c43:
    ld c, e
    inc a
    ld c, h
    ld c, l
    ld c, [hl]
    ld [bc], a
    ld c, a
    ld d, b
    scf
    add hl, sp
    inc a
    dec a
    ld a, $41
    ld d, c
    ld d, d
    inc bc
    scf
    add hl, sp
    dec a
    ld a, $41
    ld e, a
    ld c, h
    ld h, e
    ld c, h
    ld l, d
    ld c, h
    nop
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1d1c
    ld e, $1f

jr_036_4c68:
    jr nz, jr_036_4c8b

    ld [bc], a
    ld [hl+], a
    inc hl
    inc h
    ld [hl], h
    ld c, h
    db $76
    ld c, h
    add b
    ld c, h
    nop
    add hl, de
    ld bc, $1b1a
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_4ca0

    nop
    ld [bc], a
    ld [hl+], a
    inc hl
    inc h
    adc h
    ld c, h
    sbc l
    ld c, h
    xor h
    ld c, h
    xor a

jr_036_4c8b:
    ld c, h
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    nop
    ld bc, $3024

jr_036_4ca0:
    ld sp, $2827
    ld [hl-], a
    add hl, hl
    ld a, [hl+]
    inc sp
    dec hl
    inc l
    inc [hl]
    dec [hl]
    cpl
    ld [bc], a
    ld [hl-], a
    inc sp
    inc bc
    ld [hl], $37
    cp b
    ld c, h
    call nz, $d14c
    ld c, h
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4ce8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $01
    cpl
    jr nc, jr_036_4cf9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4d09

    ld a, [hl-]
    ld [bc], a
    dec sp
    inc a
    call c, $df4c
    ld c, h
    add sp, $4c
    db $eb
    ld c, h
    nop
    add hl, de
    ld a, [de]
    ld bc, $1c1b
    add hl, de
    ld a, [de]
    dec e
    ld e, $1f
    nop

jr_036_4ce8:
    ld [bc], a
    jr nz, @+$23

    inc bc
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    ld a, [$fe4c]
    ld c, h
    rlca
    ld c, l
    inc d

jr_036_4cf9:
    ld c, l
    nop
    inc h
    dec h
    ld h, $01
    daa
    jr z, jr_036_4d2b

    ld a, [hl+]
    inc h
    dec hl
    inc l
    ld h, $02
    daa

jr_036_4d09:
    jr z, jr_036_4d38

    ld l, $29
    ld a, [hl+]
    cpl
    jr nc, @+$2d

    inc l
    ld sp, $0332
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $25
    scf
    jr c, jr_036_4d41

    ld c, l
    dec hl
    ld c, l
    ld [hl-], a
    ld c, l
    jr c, @+$4f

    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4d54

jr_036_4d2b:
    ld bc, $2b2a
    inc l
    dec l
    ld l, $2f
    ld [bc], a
    jr nc, jr_036_4d66

    inc bc
    ld [hl-], a
    inc sp

jr_036_4d38:
    inc bc
    inc [hl]
    dec [hl]
    ld [hl], $44
    ld c, l
    ld d, h
    ld c, l
    ld h, e

jr_036_4d41:
    ld c, l
    db $76
    ld c, l
    nop
    inc h
    ld b, $25
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_4d85

jr_036_4d54:
    ld bc, $3332
    dec h
    ld h, $34
    dec [hl]
    ld a, [hl+]
    dec hl
    ld [hl], $37
    ld l, $2f
    jr c, jr_036_4d9c

    ld [bc], a
    ld a, [hl-]
    dec sp

jr_036_4d66:
    inc a
    ld b, $3d
    inc sp
    dec h
    ld h, $27
    dec [hl]
    ld a, [hl+]
    dec hl
    ld [hl], $37
    ld l, $2f
    jr c, jr_036_4daf

    inc bc
    ld a, [hl-]
    dec sp
    inc a
    ld b, $3d
    add d
    ld c, l
    sub l
    ld c, l
    sbc c
    ld c, l
    nop
    inc h
    dec h

jr_036_4d85:
    ld h, $27
    jr z, jr_036_4db2

    ld a, [hl+]
    dec hl
    inc l
    inc b
    inc b
    dec l
    ld l, $2f
    inc b
    inc b
    inc b
    jr nc, @+$03

    ld sp, $3332
    ld [bc], a
    inc [hl]
    dec [hl]

jr_036_4d9c:
    and d
    ld c, l
    and [hl]
    ld c, l
    xor e
    ld c, l
    nop
    ld sp, $3332
    ld bc, $3534
    ld [hl], $37
    ld [bc], a
    jr c, jr_036_4de7

    ld a, [hl-]

jr_036_4daf:
    dec sp
    inc a
    dec a

jr_036_4db2:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    ld c, e
    ld c, h
    ld c, l
    nop
    nop
    call $d44d
    ld c, l
    db $db
    ld c, l
    db $dd
    ld c, l
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4dfd

    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld bc, $002d
    jr nc, jr_036_4e11

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld a, [$054d]

jr_036_4de7:
    ld c, [hl]
    db $10
    ld c, [hl]
    dec e
    ld c, [hl]
    ld a, [hl+]
    ld c, [hl]
    cpl
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    ccf
    ld c, [hl]
    ld c, d
    ld c, [hl]
    ld d, e
    ld c, [hl]
    ld e, h
    ld c, [hl]
    nop
    add hl, de
    ld a, [de]

jr_036_4dfd:
    dec de
    inc e
    nop
    dec e
    ld e, $1f
    nop
    jr nz, jr_036_4e06

jr_036_4e06:
    add hl, de
    ld a, [de]
    dec de
    ld hl, $1d00
    ld e, $22
    nop
    jr nz, jr_036_4e12

jr_036_4e11:
    inc hl

jr_036_4e12:
    inc h
    dec h
    ld h, $27
    inc e
    nop
    jr z, jr_036_4e43

    rra
    ld a, [hl+]
    dec hl
    ld bc, $2423
    dec h
    ld h, $27
    ld hl, $2800
    add hl, hl
    ld [hl+], a
    ld a, [hl+]
    dec hl
    ld [bc], a
    inc h
    daa
    inc e
    rra
    ld [bc], a
    inc h
    daa
    ld hl, $0322
    add hl, de
    inc h
    ld a, [de]
    dec de
    daa
    inc e
    nop
    inc l
    rra
    dec l
    inc bc
    add hl, de
    inc h
    ld a, [de]

jr_036_4e43:
    dec de
    daa
    ld hl, $2c00
    ld [hl+], a
    dec l
    inc b
    inc hl
    dec h
    ld l, $1c
    nop
    cpl
    rra
    dec l
    inc b
    inc hl
    dec h
    ld l, $21
    nop
    cpl
    ld [hl+], a
    dec l
    dec b
    daa
    ld h, d
    ld c, [hl]
    ld a, d
    ld c, [hl]
    nop
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_036_4e93

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_4ea3

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    ld [hl], $00
    nop
    nop
    inc h
    dec h
    ld h, $27
    nop
    jr z, jr_036_4eab

    scf
    dec hl
    inc l
    dec l
    ld l, $38
    jr nc, jr_036_4ebb

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    ld [hl], $00
    nop
    sbc h

jr_036_4e93:
    ld c, [hl]
    xor [hl]
    ld c, [hl]
    push bc
    ld c, [hl]
    call $e44e
    ld c, [hl]
    nop
    inc bc
    inc bc
    inc bc
    ld sp, $3332

jr_036_4ea3:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4ee2

    ld a, [hl-]
    dec sp

jr_036_4eab:
    inc a
    dec a
    ld a, $01
    inc bc
    inc bc
    inc bc
    ld sp, $3332
    inc [hl]
    ccf
    ld [hl], $37
    jr c, jr_036_4efb

jr_036_4ebb:
    ld a, [hl-]
    dec sp
    ld b, c
    dec a
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [bc], a
    ld c, b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld bc, $0303
    inc bc
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4f13

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_036_4ee2:
    ld b, [hl]
    ld b, a
    inc bc
    ld c, b
    ld a, $ed
    ld c, [hl]
    or $4e
    dec b
    ld c, a
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_4ef8

    add hl, de

jr_036_4ef8:
    ld hl, $1b1a

jr_036_4efb:
    ld [hl+], a
    inc hl
    inc e
    dec e
    ld e, $24
    dec h
    rra
    ld h, $20
    ld [bc], a
    daa
    inc e
    jr z, @+$15

    ld c, a
    jr jr_036_4f5c

    dec e
    ld c, a
    inc h
    ld c, a
    dec hl
    ld c, a

jr_036_4f13:
    nop
    ld sp, $3332
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4f1f

    dec [hl]

jr_036_4f1f:
    ld [hl], $39
    ld a, [hl-]
    scf
    jr c, jr_036_4f26

    dec [hl]

jr_036_4f26:
    ld [hl], $3b
    inc a
    scf
    jr c, jr_036_4f2e

    add hl, sp
    ld a, [hl-]

jr_036_4f2e:
    jr c, jr_036_4f7f

    ld b, h
    ld c, a
    ld d, h
    ld c, a
    ld h, h
    ld c, a
    ld l, c
    ld c, a
    nop
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    ld bc, $2524
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    ld l, $2f
    dec l
    nop
    jr nc, jr_036_4f85

    ld bc, $2524
    ld h, $27
    jr z, jr_036_4f84

    ld a, [hl+]

jr_036_4f5c:
    dec hl
    inc l
    ld [hl-], a
    inc sp
    dec l
    nop
    inc [hl]
    dec [hl]
    ld [bc], a
    ld l, $2f
    jr nc, @+$33

    inc bc
    ld [hl], $37
    ld l, [hl]
    ld c, a
    nop
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_4fae

    ld [hl-], a
    inc sp

jr_036_4f7f:
    inc [hl]
    dec [hl]
    ld [hl], $37
    adc e

jr_036_4f84:
    ld c, a

jr_036_4f85:
    sbc e
    ld c, a
    xor e
    ld c, a
    ret nz

    ld c, a
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4fce

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    ld sp, $3332
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    add hl, sp
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    dec a
    ld a, $3f
    ld bc, $3147

jr_036_4fae:
    ld c, b
    ld c, c
    ld c, d
    ld [hl-], a
    ld c, e
    inc sp
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    add hl, sp
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    dec a
    ld a, $3f
    ld [bc], a
    ld c, h
    call z, $d34f
    ld c, a
    sbc $4f
    rst $28
    ld c, a
    pop af
    ld c, a
    nop
    inc h

jr_036_4fce:
    dec h
    ld h, $27
    jr z, jr_036_4ffc

    ld bc, $2524
    ld a, [hl+]
    dec hl
    ld h, $27
    inc l
    dec l
    ld l, $2f
    ld [bc], a
    jr nc, jr_036_5012

    ld [hl-], a
    inc sp
    inc h
    dec h
    inc [hl]
    dec [hl]
    ld h, $27
    ld [hl], $37
    jr c, jr_036_5026

    ld a, [hl-]
    dec sp
    inc bc
    inc a
    inc b
    inc a
    jr z, jr_036_501e

    ld sp, hl
    ld c, a
    add hl, bc
    ld d, b
    nop
    inc h
    dec h

jr_036_4ffc:
    ld h, $27
    jr z, jr_036_5029

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_5039

    ld [hl-], a
    ld bc, $3433
    dec [hl]
    ld [hl], $14
    ld d, b
    ld d, $50

jr_036_5012:
    dec h
    ld d, b
    nop
    add hl, de
    ld bc, $1b1a
    inc e
    dec e
    ld e, $1f
    add hl, de

jr_036_501e:
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $02

jr_036_5026:
    ld a, [de]
    dec de
    inc e

jr_036_5029:
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $3f
    ld d, b
    ld d, a
    ld d, b
    ld h, b
    ld d, b

jr_036_5039:
    ld l, h
    ld d, b
    ld l, [hl]
    ld d, b
    add e
    ld d, b
    nop
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_5083

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    nop
    nop
    ld bc, $4544
    ld b, [hl]
    ld b, e
    ld b, a
    ld l, $2f
    nop
    ld [bc], a
    ld c, b
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    scf
    ld c, h
    ld c, l
    ld c, [hl]
    inc bc
    ld c, a
    inc b
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_50c9

    ld d, c
    ld c, a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, e
    ld b, a
    ld l, $2f
    nop

jr_036_5083:
    dec b
    ld d, d
    nop
    nop
    ld d, e
    ld d, h
    ld c, e
    scf
    ld d, l
    ld c, l
    ld c, [hl]
    sub [hl]
    ld d, b
    sbc [hl]
    ld d, b
    and a
    ld d, b
    or l
    ld d, b
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    nop
    dec de
    ld bc, $0000
    nop
    nop
    inc e
    nop
    nop
    dec e
    ld [bc], a
    ld e, $1f
    nop
    nop
    jr nz, jr_036_50ae

jr_036_50ae:
    nop
    inc e
    nop
    nop
    dec e
    ld hl, $0322
    inc hl
    cp l
    ld d, b
    call $d450
    ld d, b
    nop
    inc h
    dec h
    ld h, $00
    daa
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_036_50c9:
    ld l, $2f
    jr nc, jr_036_50fe

    ld bc, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [bc], a
    inc sp
    inc [hl]
    rst $18
    ld d, b
    ldh a, [$50]
    inc b
    ld d, c
    add hl, bc
    ld d, c
    nop
    inc h
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_5120

    inc h
    ld bc, $2424
    dec h
    ld h, $32
    inc sp
    inc [hl]
    jr z, @+$2b

    dec [hl]
    ld [hl], $2a
    scf

jr_036_50fe:
    jr c, jr_036_512e

    inc h
    add hl, sp
    inc h
    inc h
    ld [bc], a
    ld [hl-], a
    inc sp
    dec [hl]
    ld [hl], $03
    dec [hl]
    inc de
    ld d, c
    ld a, [de]
    ld d, c
    ld hl, $2551
    ld d, c
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    add hl, de
    ld a, [de]
    rra
    inc e
    dec e

jr_036_5120:
    ld e, $01
    jr nz, jr_036_5145

    ld [hl+], a
    ld [bc], a
    inc hl
    inc h
    ld [hl-], a
    ld d, c
    dec sp
    ld d, c
    ld c, l
    ld d, c

jr_036_512e:
    ld e, a
    ld d, c
    ld h, a
    ld d, c
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_513d

    add hl, sp

jr_036_513d:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_036_5145:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld bc, $3a39
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld c, d
    ld c, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld [bc], a
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    inc bc
    add hl, sp
    ld a, [hl-]
    ld a, d
    ld d, c
    ld a, a
    ld d, c
    add l
    ld d, c
    adc e
    ld d, c
    adc [hl]
    ld d, c
    sub e
    ld d, c
    sub [hl]
    ld d, c
    sbc d
    ld d, c
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $1a19
    dec e
    ld e, $1f
    ld bc, $1a19
    jr nz, jr_036_51ab

    ld [hl+], a
    ld [bc], a
    add hl, de
    ld a, [de]
    inc bc
    inc hl
    inc h
    dec h
    ld h, $04
    dec de
    inc e
    dec b
    dec e
    ld e, $1f
    dec b
    jr nz, jr_036_51be

    ld [hl+], a
    and [hl]
    ld d, c
    or e
    ld d, c
    add $51
    reti


    ld d, c
    nop
    inc h
    dec h
    ld h, $27

jr_036_51ab:
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    ld bc, $2524
    ld h, $27
    jr z, jr_036_51e3

    jr nc, jr_036_51ed

    inc l
    dec l

jr_036_51be:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld bc, $2524
    ld a, [hl-]
    dec sp
    jr z, jr_036_51f6

    inc a
    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    dec a
    ld [hl], $3e
    jr c, jr_036_5212

    ld bc, $2524
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l

jr_036_51e3:
    dec l
    ld l, $2f
    nop
    dec a
    ld [hl], $00
    jr c, jr_036_5225

    ld a, [c]

jr_036_51ed:
    ld d, c
    rst $30
    ld d, c
    db $fc
    ld d, c
    nop
    add hl, de
    ld a, [de]
    dec de

jr_036_51f6:
    inc e
    nop
    dec e
    ld e, $1f
    jr nz, @+$03

    ld hl, $0522
    ld d, d
    ld [de], a
    ld d, d
    dec de
    ld d, d
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_5235

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_036_5212:
    ld bc, $3130
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [bc], a
    jr c, jr_036_5257

    ld a, [hl-]
    daa
    ld d, d
    dec l
    ld d, d
    inc sp
    ld d, d

jr_036_5225:
    inc a
    ld d, d
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_522e

jr_036_522e:
    add hl, hl
    dec h
    ld a, [hl+]
    dec hl
    jr z, jr_036_5235

    inc l

jr_036_5235:
    dec l
    ld l, $2f
    jr nc, jr_036_526b

    ld [hl-], a
    dec b
    ld [bc], a
    inc sp
    inc [hl]
    ld b, a
    ld d, d
    ld c, e
    ld d, d
    ld d, h
    ld d, d
    ld e, l
    ld d, d
    nop
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1a19
    dec de
    inc e
    dec e
    ld e, $03
    inc bc
    ld bc, $1a19

jr_036_5257:
    dec de
    inc e
    rra
    inc bc
    jr nz, @+$23

    ld [bc], a
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld l, b
    ld d, d
    ld [hl], a
    ld d, d
    ld a, h
    ld d, d
    nop
    inc h
    dec h

jr_036_526b:
    ld h, $27
    jr z, jr_036_5298

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld bc, $3332
    inc [hl]
    dec [hl]
    ld [bc], a
    ld [hl], $8a
    ld d, d
    adc a
    ld d, d
    sbc l
    ld d, d
    xor h
    ld d, d
    xor [hl]
    ld d, d
    cp c
    ld d, d
    nop
    inc h
    dec h
    ld h, $27
    ld bc, $2928
    ld a, [hl+]
    inc h
    dec hl
    inc l
    ld h, $2d

jr_036_5298:
    ld l, $2f
    jr nc, jr_036_52cd

    ld [hl-], a
    ld [bc], a
    inc sp
    inc [hl]
    add hl, hl
    ld a, [hl+]
    dec [hl]
    ld [hl], $2c
    ld h, $2d
    ld l, $2f
    jr nc, jr_036_52dc

    ld [hl-], a
    inc bc
    daa
    inc b
    jr z, jr_036_52da

    ld a, [hl+]
    dec h
    dec l
    ld l, $2f
    jr nc, jr_036_52e9

    ld [hl-], a
    dec b
    inc l
    rst $00
    ld d, d
    rst $10
    ld d, d
    reti


    ld d, d
    push hl
    ld d, d
    db $f4
    ld d, d
    rst $38
    ld d, d
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]

jr_036_52cd:
    ld [hl], $37
    jr c, jr_036_530a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0236

jr_036_52da:
    ld b, b
    ld b, c

jr_036_52dc:
    ld b, d
    ld b, e
    ld [hl], $04
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc bc
    ld sp, $3332

jr_036_52e9:
    inc [hl]
    dec [hl]
    scf
    jr c, jr_036_5327

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc b
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc b
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec b
    ld c, c
    ld c, d
    ld b, $53
    rrca
    ld d, e
    nop
    ld sp, $3332

jr_036_530a:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_5311

    add hl, sp

jr_036_5311:
    ld a, [hl-]
    dec sp
    inc b
    inc sp
    inc [hl]
    inc a
    dec a
    ld [hl], $37
    jr c, jr_036_535a

    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_036_5327:
    ld c, d
    ld c, e
    inc b
    ld [hl-], a
    ld d, e
    ld b, e
    ld d, e
    ld c, a
    ld d, e
    ld d, d
    ld d, e
    nop
    nop
    inc h
    dec h
    nop
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_5343

jr_036_5343:
    ld bc, $2400
    dec h
    nop
    ld h, $27
    jr z, jr_036_5375

    ld a, [hl+]
    dec hl
    inc l
    ld [bc], a
    ld sp, $0332
    ld sp, $3233
    ld h, b
    ld d, e
    ld [hl], d
    ld d, e

jr_036_535a:
    add b
    ld d, e
    adc [hl]
    ld d, e
    sbc d
    ld d, e
    nop
    inc bc
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    inc bc
    jr c, jr_036_53a5

    ld a, [hl-]
    dec sp
    inc a
    inc bc
    dec a
    ld a, $01
    inc bc
    ccf

jr_036_5375:
    ld b, b
    inc sp
    ld b, c
    dec [hl]
    jr c, jr_036_53b4

    ld a, [hl-]
    dec a
    ld a, $42
    ld b, e
    ld bc, $4544
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld b, d
    ld b, e
    ld [bc], a
    inc bc
    ccf
    ld b, b
    inc sp
    ld b, c
    dec [hl]
    jr c, jr_036_53d0

    ld a, [hl-]
    dec a
    ld a, $03
    ld b, d
    ld b, e
    xor c
    ld d, e
    or d
    ld d, e
    cp h
    ld d, e
    bit 2, e

jr_036_53a5:
    ret nc

    ld d, e
    jp nc, $0053

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_53b4

    nop

jr_036_53b4:
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $02
    nop
    nop
    ccf
    ld b, b
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    ld b, c
    ld b, d
    inc a
    dec a
    ld a, $43
    inc bc
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_036_53d0:
    inc b
    ld c, b
    dec b
    ld c, c
    ld c, d
    db $db
    ld d, e
    add sp, $53
    ldh a, [rHDMA3]
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    ld bc, $1a19
    dec h
    inc e
    ld h, $1f
    jr nz, jr_036_53f3

    ld e, $fc

jr_036_53f3:
    ld d, e
    ld c, $54
    jr nz, @+$56

    ld sp, $3854
    ld d, h
    nop
    ld sp, $3332
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_036_5440

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    ld b, b
    ld b, c
    inc sp
    inc [hl]
    nop
    ld b, d
    ld b, e
    scf
    jr c, jr_036_5452

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    ld bc, $4140
    inc sp
    inc [hl]
    nop
    ld b, d
    ld b, e
    scf
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    ld b, h
    ld a, $00
    ld [bc], a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    inc bc
    ld c, d
    ld b, b
    ld d, h
    ld c, e
    ld d, h
    ld h, d
    ld d, h

jr_036_5440:
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_5470

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld bc, $022e
    cpl
    jr nc, jr_036_5453

    inc h

jr_036_5452:
    dec h

jr_036_5453:
    ld sp, $3332
    ld h, $27
    jr z, jr_036_548e

    dec [hl]
    ld [hl], $29
    ld a, [hl+]
    dec hl
    scf
    inc l
    dec l
    ld [bc], a
    ld l, $02
    cpl
    jr nc, @+$04

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [hl], l

jr_036_5470:
    ld d, h
    ld a, b
    ld d, h
    sub e
    ld d, h
    nop
    ld sp, $0132
    nop
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    ld [hl], $37
    nop
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e

jr_036_548e:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld [bc], a
    ld c, c
    ld c, d
    sbc h
    ld d, h
    xor l
    ld d, h
    cp c
    ld d, h
    nop
    nop
    ld sp, $0000
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld bc, $3e00
    ccf
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc a
    dec a
    ld [bc], a
    scf
    dec sp
    call nz, $ce54
    ld d, h
    rst $10
    ld d, h
    ldh [rHDMA4], a
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $01
    rra
    jr nz, jr_036_54d2

jr_036_54d2:
    ld hl, $2322
    dec e
    ld e, $01
    inc h
    jr nz, jr_036_54db

jr_036_54db:
    dec h
    ld [hl+], a
    inc hl
    dec e
    ld e, $02
    ld h, $27
    db $eb
    ld d, h
    ld a, [c]
    ld d, h
    ld d, $55
    inc hl
    ld d, l
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    jr c, jr_036_553a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    nop
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld [hl-], a
    ld c, e
    ld c, h
    ld c, l
    inc [hl]
    ld c, [hl]
    nop
    ld c, a
    inc bc
    ld [hl-], a
    inc [hl]
    inc l
    ld d, l
    jr nc, jr_036_557f

    ld [hl], $55
    nop
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1d1c
    ld e, $1f
    jr nz, @+$03

    ld hl, $2322

jr_036_553a:
    inc h
    dec h
    ld b, [hl]
    ld d, l
    ld d, d
    ld d, l
    ld h, l
    ld d, l
    ld l, b
    ld d, l
    ld [hl], e
    ld d, l
    nop
    inc h
    dec h
    ld h, $04
    daa
    jr z, jr_036_5577

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld bc, $2524
    ld h, $04
    daa
    ld l, $29
    ld a, [hl+]
    cpl
    jr nc, jr_036_5589

    ld sp, $3332
    inc [hl]
    dec [hl]
    inc l
    dec l
    ld [bc], a
    inc l
    dec l
    inc bc
    ld [hl], $2f
    jr nc, jr_036_559e

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc l
    dec l
    inc b
    scf
    jr c, jr_036_55a3

jr_036_5577:
    dec l
    add d
    ld d, l
    adc d
    ld d, l
    and h
    ld d, l
    cp [hl]

jr_036_557f:
    ld d, l
    rst $10
    ld d, l
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_55b2

jr_036_5589:
    ld a, [hl+]
    ld bc, $0c2b
    dec c
    inc l
    dec l
    ld l, $12
    inc de
    inc d
    cpl
    jr nc, jr_036_55af

    add hl, de
    ld sp, $3332
    nop
    rra
    nop

jr_036_559e:
    inc [hl]
    dec [hl]
    nop
    nop
    nop

jr_036_55a3:
    nop
    ld bc, $0c36
    dec c
    scf
    dec l
    ld l, $12
    inc de
    inc d
    cpl

jr_036_55af:
    jr nc, @+$1a

    add hl, de

jr_036_55b2:
    ld sp, $3332
    nop
    rra
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    ld [bc], a
    inc c
    dec c
    scf
    dec l
    ld l, $12
    inc de
    inc d
    cpl
    jr nc, jr_036_55e2

    add hl, de
    ld sp, $3332
    nop
    rra
    nop
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    inc bc
    jr c, jr_036_5613

    ldh [rHDMA5], a
    rst $28
    ld d, l
    dec b
    ld d, [hl]
    nop
    inc h

jr_036_55e2:
    nop
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    cpl
    ld bc, $0024
    jr nc, jr_036_5625

    dec h
    ld h, $27
    ld [hl-], a
    jr z, jr_036_5623

    ld a, [hl+]
    dec hl
    inc sp
    inc [hl]
    inc l
    dec l
    ld l, $35
    ld [hl], $00
    cpl
    ld [bc], a
    jr z, jr_036_5617

    ld d, [hl]
    jr jr_036_5661

    daa
    ld d, [hl]
    ld l, $56
    nop
    ld sp, $3332

jr_036_5613:
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_036_5617:
    jr c, jr_036_561a

    add hl, sp

jr_036_561a:
    ld a, [hl-]
    dec sp
    inc a
    ld sp, $3d32
    ld a, $3f
    ld b, b

jr_036_5623:
    ld b, c
    ld b, d

jr_036_5625:
    ld b, e
    ld b, h
    ld [bc], a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    inc bc
    ld c, e
    ld c, h
    dec a
    ld d, [hl]
    ld c, [hl]
    ld d, [hl]
    ld l, l
    ld d, [hl]
    adc h
    ld d, [hl]
    sbc l
    ld d, [hl]
    xor [hl]
    ld d, [hl]
    nop
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    jr c, jr_036_5682

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_036_5661:
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld bc, $403f
    ld b, c
    ld b, d
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    ld e, d
    ld c, b
    ld c, c
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    ld c, a

jr_036_5682:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    ld sp, $3332
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    ld sp, $3332
    nop
    inc [hl]
    ld e, e
    ld [hl], $37
    nop
    jr c, jr_036_56e2

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    ld sp, $3332
    nop
    inc [hl]
    ld e, h
    ld [hl], $37
    nop
    jr c, jr_036_56f3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $c7
    ld d, [hl]
    rst $18
    ld d, [hl]
    ld hl, sp+$56
    db $fc
    ld d, [hl]
    nop
    inc b
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_570b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld bc, $0404

jr_036_56e2:
    dec b
    ld b, a
    ld c, b
    inc [hl]
    ld c, c
    ld c, d
    ld c, e
    jr c, jr_036_5724

    ld a, [hl-]
    ld c, h
    ld c, l
    ld c, [hl]
    ld a, $3f
    ld b, b
    ld b, c

jr_036_56f3:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld [bc], a
    ld c, a
    ld d, b
    ld d, c
    inc bc
    ld d, d
    ld d, e
    ld de, $2d57
    ld d, a
    ld c, [hl]
    ld d, a
    ld h, e
    ld d, a
    ld a, a
    ld d, a
    and b
    ld d, a

jr_036_570b:
    and d
    ld d, a
    and l
    ld d, a
    and a
    ld d, a
    nop
    ld sp, $3332
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_036_5755

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_036_5724:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld bc, $3231
    inc sp
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    ld c, e
    ld c, h
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, h
    ld b, l
    ld d, b
    ld d, c
    ld d, d
    ld c, b
    ld c, c
    ld d, e
    ld d, h
    nop
    ld d, l
    ld d, [hl]
    ld [bc], a
    ld sp, $3332
    inc [hl]
    nop
    dec [hl]

jr_036_5755:
    ld [hl], $37
    ld c, e
    ld c, h
    ld a, [hl-]
    ld d, a
    dec a
    ld a, $3f
    ld b, b
    ld b, h
    ld b, l
    ld c, b
    ld c, c
    nop
    ld sp, $3332
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    ld c, e
    ld c, h
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld bc, $3231
    inc sp
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    ld c, e
    ld e, b
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld e, c
    ld c, l
    ld c, [hl]
    ld c, a
    ld b, h
    ld b, l
    ld d, b
    ld d, c
    ld d, d
    ld c, b
    ld c, c
    ld d, e
    ld d, h
    nop
    ld d, l
    ld d, [hl]
    inc bc
    ld e, d
    inc b
    ld e, e
    ld e, h
    dec b
    ld e, l
    ld b, $5e
    xor a
    ld d, a
    or c
    ld d, a
    cp e
    ld d, a
    nop
    add hl, de
    ld bc, $1b1a
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_57db

    ld [hl+], a
    ld [bc], a
    inc hl
    inc h
    dec h
    ld h, $c4
    ld d, a
    ret z

    ld d, a
    nop
    inc h
    dec h
    ld h, $01
    daa
    jr z, jr_036_57f5

    ld a, [hl+]
    dec hl
    inc l
    reti


    ld d, a
    pop af
    ld d, a
    dec c
    ld e, b
    dec h
    ld e, b
    ld a, [hl+]
    ld e, b
    nop
    dec b

jr_036_57db:
    dec b
    dec b
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    dec b
    ld b, d
    ld b, e
    ld bc, $0505
    ld b, h

jr_036_57f5:
    ld b, l
    dec b
    inc sp
    inc [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    jr c, jr_036_5837

    ld c, c
    ld c, d
    ld c, e
    dec a
    ld a, $3f
    ld c, h
    ld c, l
    dec b
    ld b, d
    ld b, e
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    dec b
    dec b
    ld b, h
    ld b, l
    dec b
    inc sp
    inc [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    jr c, jr_036_5853

    ld c, c
    ld c, d
    ld c, e
    dec a
    ld a, $3f
    ld c, h
    ld c, l
    dec b
    ld b, d
    ld b, e
    ld [bc], a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    inc bc
    ld d, d
    ld a, $58
    ld e, h
    ld e, b
    ld a, b
    ld e, b
    ld a, a
    ld e, b
    sub l
    ld e, b
    xor c

jr_036_5837:
    ld e, b
    or c
    ld e, b
    cp h
    ld e, b
    jp SerialTransferCompleteInterrupt


    inc bc
    ld sp, $0332
    inc sp
    inc [hl]
    inc bc
    dec [hl]
    ld [hl], $03
    scf
    jr c, jr_036_5885

    inc bc
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_036_5853:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld bc, $4a49
    ld c, e
    inc bc
    inc sp
    inc [hl]
    ld c, h
    ld c, l
    inc bc
    scf
    jr c, jr_036_58a2

    inc a
    dec a
    ld a, $40
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld [bc], a
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    inc bc
    ld e, l
    inc bc
    inc bc
    ld sp, $0332
    dec [hl]

jr_036_5885:
    ld [hl], $5e
    ld e, a
    inc bc
    ld a, [hl-]
    dec sp
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld e, [hl]
    ld e, a
    ld b, b
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_036_58a2:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    dec b
    ld e, [hl]
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    inc bc
    ld e, l
    ld b, $03
    inc sp
    inc [hl]
    inc bc
    scf
    jr c, jr_036_58f2

    inc a
    dec a
    ld a, $07
    ld e, [hl]
    ld e, c
    ld c, a
    ld d, b
    ld d, h
    ld d, l
    ld [$595e], sp
    adc $58
    sbc $58
    db $f4
    ld e, b
    inc b
    ld e, c
    nop
    ld sp, $3332
    jr nc, @+$36

    dec [hl]
    ld [hl], $37
    jr c, jr_036_5912

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01
    ld sp, $3332
    jr nc, jr_036_5923

    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_036_58f2:
    ld c, [hl]
    ld c, a
    ld [bc], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    inc bc
    ld e, a
    ld h, b
    ld hl, $2c59
    ld e, c
    scf
    ld e, c
    ld b, h
    ld e, c
    ld d, c
    ld e, c
    ld d, [hl]

jr_036_5912:
    ld e, c
    ld e, e
    ld e, c
    ld h, [hl]
    ld e, c
    ld [hl], c
    ld e, c
    ld a, d
    ld e, c
    add e
    ld e, c
    add l
    ld e, c
    adc b
    ld e, c
    nop
    add hl, de

jr_036_5923:
    ld a, [de]
    dec de
    inc e
    nop
    dec e
    ld e, $1f
    nop
    jr nz, jr_036_592d

jr_036_592d:
    add hl, de
    ld a, [de]
    dec de
    ld hl, $1d00
    ld e, $22
    nop
    jr nz, jr_036_5939

    inc hl

jr_036_5939:
    inc h
    dec h
    ld h, $27
    inc e
    nop
    jr z, jr_036_596a

    rra
    ld a, [hl+]
    dec hl
    ld bc, $2423
    dec h
    ld h, $27
    ld hl, $2800
    add hl, hl
    ld [hl+], a
    ld a, [hl+]
    dec hl
    ld [bc], a
    inc h
    daa
    inc e
    rra
    ld [bc], a
    inc h
    daa
    ld hl, $0322
    add hl, de
    inc h
    ld a, [de]
    dec de
    daa
    inc e
    nop
    inc l
    rra
    dec l
    inc bc
    add hl, de
    inc h
    ld a, [de]

jr_036_596a:
    dec de
    daa
    ld hl, $2c00
    ld [hl+], a
    dec l
    inc b
    inc hl
    dec h
    ld l, $1c
    nop
    cpl
    rra
    dec l
    inc b
    inc hl
    dec h
    ld l, $21
    nop
    cpl
    ld [hl+], a
    dec l
    dec b
    daa
    ld b, $1c
    rra
    ld b, $21
    ld [hl+], a
    adc a
    ld e, c
    sbc h
    ld e, c
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_59bb

    ld [hl+], a
    inc hl
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_036_59cc

    ld a, [hl+]
    dec hl
    inc l
    nop
    dec l
    ld l, $dd
    ld e, c
    or $59
    ld d, $5a
    ld l, $5a
    ld c, h
    ld e, d
    ld e, a
    ld e, d
    ld [hl], d
    ld e, d
    adc h
    ld e, d
    xor c
    ld e, d

jr_036_59bb:
    cp h
    ld e, d
    ret nc

    ld e, d
    rst $20
    ld e, d
    ld bc, $1a5b
    ld e, e
    scf
    ld e, e
    ld c, l
    ld e, e
    ld h, d
    ld e, e
    ld a, c

jr_036_59cc:
    ld e, e
    adc h
    ld e, e
    and b
    ld e, e
    cp c
    ld e, e
    sub $5b
    db $ec
    ld e, e
    ld b, $5c
    ld h, $5c
    ld b, d
    ld e, h
    rst $20
    ld e, c
    jp hl


    ld e, c
    db $eb
    ld e, c
    xor $59
    pop af
    ld e, c
    nop
    add hl, de
    nop
    ld a, [de]
    ld bc, $1c1b
    ld bc, $1e1d
    ld [bc], a
    rra
    jr nz, @+$23

    ld [hl+], a
    ld [bc], a
    ld e, d
    dec b
    ld e, d
    ld [$0b5a], sp
    ld e, d
    ld c, $5a
    ld de, $005a
    add hl, de
    ld a, [de]
    nop
    dec de
    inc e
    nop
    dec e
    ld e, $01
    rra
    jr nz, @+$03

    ld hl, $0222
    inc hl
    inc h
    dec h
    ld h, $1e
    ld e, d
    inc h
    ld e, d
    ld h, $5a
    add hl, hl
    ld e, d
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld bc, $021e
    rra
    jr nz, jr_036_5a2d

    ld hl, $2322

jr_036_5a2d:
    inc h
    inc [hl]
    ld e, d
    ld a, $5a
    ld b, a
    ld e, d
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_5a5f

    ld bc, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_036_5a70

    ld [bc], a
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld d, d
    ld e, d
    ld d, [hl]
    ld e, d
    ld e, d
    ld e, d
    nop
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1d1c
    ld e, $02
    rra
    jr nz, @+$23

    ld [hl+], a

jr_036_5a5f:
    ld h, a
    ld e, d
    ld l, c
    ld e, d
    ld l, e
    ld e, d
    ld l, l
    ld e, d
    nop
    add hl, de
    ld bc, $021a
    dec de
    inc bc
    inc e
    dec e

jr_036_5a70:
    ld e, $1f
    ld a, b
    ld e, d
    ld a, a
    ld e, d
    add a
    ld e, d
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $01
    add hl, de
    ld a, [de]
    dec de
    inc e
    rra
    dec e
    ld e, $02
    jr nz, jr_036_5aab

    ld [hl+], a
    inc hl
    sub [hl]
    ld e, d
    sbc c
    ld e, d
    sbc h
    ld e, d
    sbc a
    ld e, d
    and d
    ld e, d
    nop
    add hl, de
    ld a, [de]
    nop
    dec de
    inc e
    nop
    dec e
    ld e, $00
    rra
    jr nz, @+$03

    ld hl, $2322
    inc h
    dec h
    ld h, $af
    ld e, d

jr_036_5aab:
    or d
    ld e, d
    or l
    ld e, d
    nop
    add hl, de
    ld a, [de]
    ld bc, $1c1b
    ld [bc], a
    dec e
    ld e, $1f
    jr nz, jr_036_5adc

    ld [hl+], a
    jp nz, $c75a

    ld e, d
    bit 3, d
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $1e1d
    rra
    ld [bc], a
    jr nz, @+$23

    ld [hl+], a
    inc hl
    sub $5a
    call c, $e25a
    ld e, d
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e

jr_036_5adc:
    nop
    ld e, $1f
    nop
    jr nz, jr_036_5b03

    ld bc, $2322
    inc h
    dec h
    pop af
    ld e, d
    db $f4
    ld e, d
    rst $30
    ld e, d
    ld a, [$fc5a]
    ld e, d
    nop
    add hl, de
    ld a, [de]
    nop
    dec de
    inc e
    nop
    dec e
    ld e, $01
    rra
    ld [bc], a
    jr nz, jr_036_5b20

    ld [hl+], a
    inc hl
    rlca
    ld e, e

jr_036_5b03:
    ld c, $5b
    dec d
    ld e, e
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    ld bc, $2625
    daa
    jr z, jr_036_5b3b

    ld e, e
    dec h
    ld e, e
    jr nc, jr_036_5b7b

jr_036_5b20:
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $1e1d
    rra
    jr nz, jr_036_5b4c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $02
    rra
    jr nz, jr_036_5b55

    ld [hl+], a
    inc hl
    inc h
    dec a
    ld e, e
    ld b, d
    ld e, e

jr_036_5b3b:
    ld c, b
    ld e, e
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $1e1d
    rra
    jr nz, jr_036_5b69

    nop
    ld [hl+], a
    inc hl
    inc h

jr_036_5b4c:
    dec h
    ld d, e
    ld e, e
    ld d, a
    ld e, e
    ld e, l
    ld e, e
    nop
    add hl, de

jr_036_5b55:
    ld a, [de]
    dec de
    ld bc, $1d1c
    ld e, $1f
    dec de
    ld [bc], a
    jr nz, jr_036_5b81

    ld [hl+], a
    inc hl
    ld l, b
    ld e, e
    ld l, l
    ld e, e
    ld [hl], d
    ld e, e
    nop

jr_036_5b69:
    add hl, de
    ld a, [de]
    dec de
    inc e
    nop
    dec e
    ld e, $1f
    nop
    ld bc, $2120
    ld [hl+], a
    inc hl
    inc h
    dec h

jr_036_5b79:
    ld a, a
    ld e, e

jr_036_5b7b:
    add e
    ld e, e
    add a
    ld e, e
    nop
    add hl, de

jr_036_5b81:
    ld a, [de]
    dec de
    nop
    inc e
    ld a, [de]
    dec e
    ld bc, $1f1e
    jr nz, @+$23

    sub d
    ld e, e
    sub [hl]
    ld e, e
    sbc e
    ld e, e
    nop
    add hl, de
    ld a, [de]
    dec de
    ld bc, $1d1c
    ld e, $1f
    ld [bc], a
    jr nz, jr_036_5bbf

    ld [hl+], a
    inc hl
    and [hl]
    ld e, e
    xor [hl]
    ld e, e
    or h
    ld e, e
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld bc, $2120
    ld [hl+], a
    inc hl

jr_036_5bb3:
    inc h
    ld [bc], a
    dec h
    ld h, $27
    jr z, jr_036_5b79

    ld e, e
    ret z

    ld e, e
    pop de
    ld e, e

jr_036_5bbf:
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $00
    nop
    rra
    jr nz, jr_036_5bee

    nop
    ld [hl+], a
    inc hl
    inc h
    ld bc, $2625
    daa
    jr z, jr_036_5bb3

    ld e, e
    pop hl
    ld e, e
    rst $20
    ld e, e
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $1e1d
    rra
    jr nz, jr_036_5be7

jr_036_5be7:
    ld [bc], a
    ld hl, $2322
    inc h
    ld a, [c]
    ld e, e

jr_036_5bee:
    ei
    ld e, e
    ld bc, $005c
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$03

    ld hl, $2322
    inc h
    dec h
    ld [bc], a
    ld h, $27
    jr z, jr_036_5c2f

    inc c
    ld e, h
    ld de, $215c
    ld e, h
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $1d00
    ld e, $00
    rra
    jr nz, jr_036_5c3a

    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    ld h, $27
    nop
    ld [bc], a
    jr z, jr_036_5c4d

    ld a, [hl+]
    dec hl
    ld l, $5c
    jr nc, jr_036_5c86

    ld [hl-], a
    ld e, h
    inc a
    ld e, h
    nop

jr_036_5c2f:
    add hl, de
    ld bc, $021a
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_5c5b

jr_036_5c3a:
    ld [hl+], a
    inc hl
    inc bc
    inc h
    dec h
    ld h, $27
    jr z, jr_036_5c8d

    ld e, h
    ld d, c
    ld e, h
    ld e, h
    ld e, h
    ld h, c
    ld e, h
    nop
    nop
    add hl, de

jr_036_5c4d:
    nop
    ld a, [de]
    dec de
    inc e
    ld bc, $1d00
    nop
    ld e, $1f
    jr nz, jr_036_5c7a

    ld [hl+], a
    inc hl

jr_036_5c5b:
    inc h
    ld [bc], a
    nop
    dec h
    ld h, $27
    inc bc
    jr z, jr_036_5c8d

    ld a, [hl+]
    dec hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_036_5c7a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_036_5c86:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_036_5c8d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_036_7dff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_036_7fbd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
