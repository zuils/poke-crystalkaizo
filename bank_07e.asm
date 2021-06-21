; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07e", ROMX[$4000], BANK[$7e]

    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    xor a
    ld hl, $d100
    ld bc, $00e0
    call $3041
    ld a, $ff
    ld [$d10c], a
    ld [$d147], a
    ld [$d182], a
    ld de, $d100
    ldh a, [$e1]
    ld b, a

jr_07e_4022:
    call $2f8c
    ldh a, [$e1]
    add b
    ld b, a
    and $7f
    cp $46
    jr nc, jr_07e_4022

    ld b, a
    ld a, $01
    call $2fcb
    ld c, $07
    ld hl, $be48

jr_07e_403a:
    ld a, [hl+]
    cp b
    jr z, jr_07e_4022

    dec c
    jr nz, jr_07e_403a

    ld hl, $be48
    ld a, [$be46]
    ld c, a
    ld a, b
    ld b, $00
    add hl, bc
    ld [hl], a
    call $2fe1
    push af
    ld hl, $414e
    ld bc, $000b
    call $30fe
    ld bc, $000b
    call $3026
    call Call_07e_4081
    pop af
    ld hl, $4000
    ld bc, $0024
    call $30fe
    ld bc, $0024

jr_07e_4070:
    ld a, $7c
    call $304d
    ld [de], a
    inc hl
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_07e_4070

    pop af
    ldh [rSVBK], a
    ret


Call_07e_4081:
    ld c, $03

Jump_07e_4083:
    push bc
    ld a, $01
    call $2fcb

jr_07e_4089:
    ld a, [$d800]
    dec a
    ld hl, $4450
    ld bc, $04d7
    call $30fe
    ldh a, [$e1]
    ld b, a

jr_07e_4099:
    call $2f8c
    ldh a, [$e1]
    add b
    ld b, a
    and $1f
    cp $15
    jr nc, jr_07e_4099

    ld bc, $003b
    call $30fe
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    ld c, a
    ld a, [$d10b]
    cp b
    jr z, jr_07e_4089

    ld a, [$d10c]
    cp c
    jr z, jr_07e_4089

    ld a, [$d146]
    cp b
    jr z, jr_07e_4089

    ld a, [$d147]
    cp c
    jr z, jr_07e_4089

    ld a, [$d181]
    cp b
    jr z, jr_07e_4089

    ld a, [$d182]
    cp c
    jr z, jr_07e_4089

    ld a, [$be51]
    cp b
    jr z, jr_07e_4089

    ld a, [$be52]
    cp b
    jr z, jr_07e_4089

    ld a, [$be53]
    cp b
    jr z, jr_07e_4089

    ld a, [$be54]
    cp b
    jr z, jr_07e_4089

    ld a, [$be55]
    cp b
    jr z, jr_07e_4089

    ld a, [$be56]
    cp b
    jr z, jr_07e_4089

    ld bc, $003b
    call $3026
    ld a, [$d265]
    push af
    push de
    ld hl, $ffc5
    add hl, de
    ld a, [hl]
    ld [$d265], a
    ld bc, $0030
    add hl, bc
    push hl
    call $343b
    ld h, d
    ld l, e
    pop de
    ld bc, $000b
    call $3026
    pop de
    pop af
    ld [$d265], a
    pop bc
    dec c
    jp nz, Jump_07e_4083

    ld a, [$be51]
    ld [$be54], a
    ld a, [$be52]
    ld [$be55], a
    ld a, [$be53]
    ld [$be56], a
    ld a, [$d10b]
    ld [$be51], a
    ld a, [$d146]
    ld [$be52], a
    ld a, [$d181]
    ld [$be53], a
    call $2fe1
    ret


    add a
    add b
    adc l
    sub d
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec h
    sub d
    add b
    sub [hl]
    sbc b
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld e, $8c
    add b
    sub d
    sub h
    add e
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec hl
    adc l
    adc b
    add d
    adc d
    add h
    adc e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc d
    adc [hl]
    adc e
    sub d
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec sp
    sbc c
    add b
    add c
    adc [hl]
    sub c
    adc [hl]
    sub [hl]
    sub d
    adc d
    adc b
    add hl, de
    sub [hl]
    sub c
    adc b

jr_07e_4193:
    add [hl]
    add a
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, $80
    adc e
    add h
    sub a
    add b
    adc l
    add e
    add h
    sub c
    ld d, b
    inc l
    adc d
    add b
    sub [hl]
    add b
    adc d
    add b
    adc h
    adc b
    ld d, b
    ld d, b
    ld [hl+], a
    add c
    adc b
    add d
    adc d
    add h
    sub e
    sub e
    ld d, b
    ld d, b
    ld d, b
    dec sp
    sub d
    add b
    adc b
    sub e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b

jr_07e_41c6:
    inc a
    add d
    sub c
    add b
    sub [hl]
    add l
    adc [hl]
    sub c
    add e
    ld d, b
    ld d, b
    ld a, [hl-]
    add e
    adc b
    add b
    sbc c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec [hl]
    add h
    sub c
    adc b
    add d
    adc d
    sub d
    adc [hl]
    adc l
    ld d, b
    ld d, b
    dec l
    add l
    add b
    adc b
    sub c
    add l
    adc b
    add h
    adc e
    add e
    ld d, b
    ld sp, $9487
    adc l
    sub e
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, $87
    adc b
    adc e
    adc e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr nc, jr_07e_4193

    add b
    sub l
    adc b
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    daa
    adc d
    add b
    sub h
    add l
    adc h
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld h, $8b
    add b
    adc l
    add d
    add b
    sub d
    sub e
    add h
    sub c
    ld d, b
    ld hl, $a28c
    adc h
    add b
    add a
    adc b
    adc e
    adc e
    ld d, b
    ld d, b
    ld [hl], $8e
    add c
    sub c
    adc b
    add h

jr_07e_423a:
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr nz, jr_07e_41c6

    sub c
    adc [hl]
    sub d
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec e
    adc h
    adc [hl]
    sub c
    sub d
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add hl, hl
    sbc b
    sub h
    add l
    sub h
    adc l
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [hl-], a
    sub c
    add b
    adc c
    add b
    adc l
    ld d, b
    ld d, b

jr_07e_4268:
    ld d, b
    ld d, b
    ld d, b
    inc e
    sub c
    adc [hl]
    add e
    sub c
    adc b
    add [hl]
    sub h
    add h
    sbc c
    ld d, b
    ld b, c
    sub d
    add b
    adc l
    sub e
    adc b
    add b
    add [hl]
    adc [hl]
    ld d, b
    ld d, b
    inc [hl]
    sub d
    sub e
    adc [hl]
    add d
    adc d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec sp
    sub e
    add a
    sub h
    sub c
    adc h
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    inc d
    sub l
    add b
    adc e
    add h
    adc l
    sub e
    adc b
    adc l
    adc [hl]
    ld d, b
    dec e
    sub [hl]
    add b
    add [hl]
    adc l
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [hl], $98
    add b
    sub e
    add h
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr jr_07e_423a

    adc l
    add e

jr_07e_42bc:
    sub c
    add h
    sub [hl]
    sub d
    ld d, b
    ld d, b
    ld d, b
    dec [hl]
    add c
    add b
    add a
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld e, $8c
    adc [hl]
    sub c
    adc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc d
    add c
    sub h
    add d
    adc d
    adc h
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    jr c, jr_07e_4268

    adc [hl]
    add c
    add c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rla
    add a
    sub h
    add [hl]
    add a
    add h
    sub d
    ld d, b

jr_07e_42f7:
    ld d, b
    ld d, b
    ld d, b
    dec h
    add b
    sub c
    adc b
    sub e
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc a
    add h
    add b
    sub d
    sub e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc [hl]
    add l
    sub c
    add h
    add h
    adc h
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld [hl], $86
    adc b
    add h
    sub d
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add hl, de
    add a
    add b
    sub e
    add d
    add a
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    jr nz, jr_07e_42bc

    add b
    add d
    adc d
    sub d
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld a, $8a
    add b
    add a
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld e, $8b
    add h
    adc [hl]
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, $8c
    add b
    sub c
    adc b
    adc l
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [hl+], a
    adc l
    add h
    sub [hl]
    adc h
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr z, jr_07e_42f7

    add [hl]
    sub h
    sbc b
    add h
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [hl-], a
    adc [hl]
    add [hl]
    add e
    add h
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add hl, hl
    adc a
    add b
    sub c
    adc d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc e
    sub c
    add b
    adc b
    adc l
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld h, $92
    add h
    adc e
    adc e
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr @-$6d

    adc [hl]
    add d
    adc d
    sub [hl]
    add h
    adc e
    adc e
    ld d, b
    ld d, b
    ld a, [hl-]
    sub e
    add a
    adc [hl]
    sub c
    adc l
    sub e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    add hl, de
    sub e
    sub h
    sub c
    adc l
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, c
    sub l
    add b
    adc l
    ld a, a
    add e
    sbc b
    adc d
    add h
    ld d, b
    ld d, b
    ld hl, $8096
    adc e
    adc d
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rla
    adc h

jr_07e_43d8:
    add h
    sbc b
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    daa
    adc c
    adc [hl]
    add a
    adc l
    sub d
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, $80
    add e
    add b
    adc h
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec hl
    sub d
    adc h
    adc b
    sub e
    add a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc h
    sub e
    add b
    adc c
    adc b
    sub c
    adc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc h
    add c
    add b
    adc d
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld e, $82
    adc [hl]
    adc e
    adc e
    adc b
    adc l
    sub d
    ld d, b
    ld d, b
    ld d, b
    inc d
    sub d
    adc h
    add b
    sub c
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add hl, hl
    add e
    sbc b
    adc d
    sub d
    sub e
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    daa
    add h
    add b
    sub e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec l
    sub [hl]
    adc [hl]
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr nc, jr_07e_43d8

    ld l, l
    ld d, l
    ccf
    rst $30
    ld l, $00
    nop
    nop
    inc bc
    add sp, -$3d
    ld d, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    adc b
    cp b
    sbc h
    ld b, b
    db $dd
    cp l
    rrca
    dec b
    rrca
    inc d
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    add hl, hl
    nop
    add hl, hl
    nop

Jump_07e_4477:
    add hl, de
    nop
    jr jr_07e_447b

jr_07e_447b:
    dec h
    nop
    ld [hl+], a
    nop
    rra
    sub d
    add b
    adc l
    add e
    add b
    db $e3
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    call nz, $bd92
    ld e, [hl]
    db $f4
    ld e, h
    nop
    nop
    nop
    inc bc
    add sp, -$64
    ld b, b
    jp $8850


    cp b
    sbc h
    ld b, b
    sbc h
    ld b, b
    db $ed
    ei
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop

Jump_07e_44ae:
    daa
    nop
    daa
    nop
    ld a, [de]
    nop
    jr jr_07e_44b6

jr_07e_44b6:
    inc hl
    nop
    ld h, $00
    rra
    add h
    db $e3
    add a
    sub h
    xor b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    push bc
    xor [hl]
    rst $30
    rst $20
    db $f4
    ld e, h
    nop
    nop
    nop
    inc bc
    add sp, -$64
    ld b, b
    sbc h
    ld b, b
    xor a
    ret z

    jp $9c50


    ld b, b
    db $db
    rst $28
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop

jr_07e_44e8:
    nop
    ld l, $00
    ld l, $00
    add hl, de
    nop
    ld [hl+], a
    nop
    ld a, [de]
    nop
    add hl, de
    nop
    daa
    add c
    sub h
    sub c
    add b
    or e
    or h
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    jp z, Jump_07e_4477

    di
    db $db
    jp nz, RST_00

jr_07e_4509:
    nop
    inc bc
    add sp, -$3d
    ld d, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    ld a, a
    rst $10
    inc d
    inc d
    add hl, de
    dec b
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld [de], a
    nop
    add hl, de
    nop
    inc de
    nop
    ld [de], a
    nop
    rla
    sub d
    adc [hl]
    db $e3
    adc l
    add b
    adc l
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld [hl], e
    ld l, l
    or e
    ccf
    ld e, c

jr_07e_4541:
    push de
    nop
    nop
    nop
    inc bc
    add sp, -$64
    ld b, b
    ld [hl], l
    jr nc, jr_07e_44e8

    ld b, b
    ld [hl], l

jr_07e_454e:
    jr nc, @+$77

    jr nc, jr_07e_4541

    rst $08
    rrca
    dec b
    ld a, [bc]
    rrca
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    cpl
    nop
    cpl
    nop
    rra
    nop
    dec e
    nop
    dec e
    nop
    inc d
    nop
    inc e
    add [hl]
    add b
    sub c
    sub h
    db $e3
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sbc $8c
    add hl, sp
    ld e, [hl]
    ld l, c
    or $00
    nop
    nop
    inc bc
    add sp, -$64
    ld b, b
    ld [hl], l
    jr nc, jr_07e_4509

    inc d
    ld [hl], l
    jr nc, @+$77

jr_07e_458b:
    jr nc, jr_07e_458b

    db $fd
    rrca
    ld a, [bc]
    inc d
    dec b
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld h, $00
    ld h, $00
    rla
    nop
    dec e
    nop
    inc de
    nop
    jr jr_07e_45a6

jr_07e_45a6:
    inc e
    sub d
    add b
    adc l
    adc b
    db $e3
    add [hl]
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    pop af
    xor [hl]
    dec sp
    ld e, c
    ccf
    ld e, h
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_454e

    cp b
    cp e
    rst $18
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld l, $00
    ld l, $00
    dec de
    nop
    jr nz, jr_07e_45dd

jr_07e_45dd:
    rra

jr_07e_45de:
    nop
    inc d
    nop
    ld a, [de]
    adc h
    adc b
    sub c
    sub h
    sub e
    add b
    adc l
    adc d
    sub h
    ld d, b
    ld d, b
    adc [hl]
    sub d
    ccf
    jr nc, jr_07e_464b

    inc l
    nop
    nop
    nop
    inc bc
    add sp, $75

jr_07e_45f9:
    jr nc, @+$77

    jr nc, jr_07e_4672

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_45de

    ei
    dec b
    inc d
    ld a, [bc]
    add hl, de
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    dec hl
    nop
    dec hl
    nop
    jr nz, jr_07e_4616

jr_07e_4616:
    jr jr_07e_4618

jr_07e_4618:
    ld h, $00
    rla
    nop
    ld a, [de]
    adc a
    sub h
    sub e
    add h
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    ld l, l
    dec sp
    add hl, sp
    ld d, l
    ld e, [hl]
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_46af

    jr nc, @+$77

    jr nc, @-$01

    db $eb
    dec b
    rrca
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop

jr_07e_464a:
    nop

jr_07e_464b:
    inc [hl]
    nop
    inc [hl]
    nop
    dec e
    nop
    dec de
    nop
    jr jr_07e_4655

jr_07e_4655:
    inc e
    nop
    ld e, $91
    add b
    adc a
    sub h
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    rst $10
    xor [hl]
    and e
    cp c
    add hl, sp
    dec sp
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, jr_07e_45f9

    cp b

jr_07e_4672:
    ld [hl], l
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @-$03

    cp a
    inc d
    inc d
    rrca
    dec b
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld h, $00
    ld h, $00
    rra
    nop
    ld d, $00
    ld [hl+], a
    nop
    inc de
    nop
    dec de
    adc l
    adc b
    cp b
    or h
    db $e3
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jp hl


    inc bc
    ld e, [hl]
    dec sp
    ccf
    and c
    nop
    nop

jr_07e_46a6:
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, jr_07e_464a

    ld b, b

jr_07e_46af:
    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_46af

    sbc $0a
    dec b
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    inc l
    nop
    inc l
    nop
    inc e
    nop
    ld e, $00
    rla
    nop
    ld hl, $1f00
    adc a
    adc [hl]
    sub c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld hl, sp+$50
    ld d, b
    ld d, b
    ret z

    ld [hl], a
    jp $dcd4


jr_07e_46de:
    rst $30
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_46de

    rst $18
    dec b
    dec b
    inc d
    rrca
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    dec h
    nop
    dec h
    nop
    jr jr_07e_4702

jr_07e_4702:
    jr jr_07e_4704

jr_07e_4704:
    inc e
    nop
    dec e
    nop
    dec e
    adc h

jr_07e_470a:
    sub h
    sub h
    adc h
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    db $e4
    xor [hl]
    cp c
    ld c, h
    ld l, $f1
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, jr_07e_4797

    jr nc, jr_07e_4799

    jr nc, jr_07e_46a6

    add sp, $75
    jr nc, @-$01

    cp $14
    ld a, [bc]
    inc d
    dec b
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    inc h
    nop
    inc h
    nop
    jr jr_07e_473d

jr_07e_473d:
    ld de, $1900
    nop
    inc e
    nop
    ld d, $83
    add h
    sub c
    sub h
    add c
    adc b
    sub c
    sub h
    ld d, b
    ld d, b
    ld d, b
    bit 2, d
    inc a

jr_07e_4752:
    cp l
    rst $30
    ld h, c
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_4752

    db $fd
    inc d
    ld a, [bc]
    rrca
    ld e, $64
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    daa
    nop
    daa
    nop
    inc e
    nop
    jr jr_07e_477a

jr_07e_477a:
    dec e
    nop
    dec e
    nop
    jr jr_07e_470a

jr_07e_4780:
    adc b
    sub c
    adc b
    adc l
    sub c
    adc b
    adc d
    adc b
    ld d, b
    ld d, b
    ld a, [c]
    ld c, c
    dec e
    ld c, h
    call $0046
    nop
    nop
    inc bc
    add sp, $7d
    nop

jr_07e_4797:
    sbc h
    ld b, b

jr_07e_4799:
    ld [hl], l
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @-$1f

    adc $0f
    ld a, [bc]
    inc d
    rrca
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, $00
    ld c, $00
    ld d, $00
    dec de
    nop
    daa
    add a
    add b
    adc a
    adc b
    adc l
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    adc a
    ld l, l
    dec e
    or [hl]
    xor l

jr_07e_47ca:
    add hl, sp
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_47ca

    rst $30
    rrca
    ld a, [bc]
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    add hl, sp
    nop
    add hl, sp
    nop
    ld [hl+], a
    nop
    add hl, de
    nop
    ld [de], a
    nop
    rla
    nop
    jr nz, jr_07e_4780

    add b
    add c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld h, a
    ld d, d
    ld e, h
    jp z, Jump_07e_5da8

    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

jr_07e_4814:
    jr nc, jr_07e_4814

    cp $0a
    dec b
    ld a, [bc]
    add hl, de
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    dec l
    nop
    dec l
    nop
    rra
    nop
    dec e
    nop
    rla
    nop
    dec h
    nop
    add hl, de
    adc l
    add b
    or e
    or h
    sub d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub $ae
    or e
    bit 0, h
    ld sp, hl
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @-$07

    rst $30
    rrca
    ld a, [bc]
    inc d
    rrca
    ld h, h
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    dec hl
    nop
    dec hl
    nop
    dec h
    nop
    add hl, de
    nop
    dec e
    nop
    ld [de], a
    nop
    dec e
    add a

jr_07e_486c:
    add h
    sub c
    add b
    adc d
    sub h
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ret


    xor l
    db $ed
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$01

    rst $38
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    inc h
    nop
    inc h
    nop
    ld a, [de]
    nop
    dec d
    nop
    dec d
    nop
    ld a, [de]
    nop
    dec d
    add b
    adc l
    adc l
    adc [hl]
    db $e3
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    ld d, d
    dec e
    rst $08
    daa
    call nz, RST_00
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, jr_07e_4936

    jr nc, @+$77

    jr nc, jr_07e_493a

    jr nc, jr_07e_492c

    ld d, a
    rrca
    rrca
    ld e, $0f
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    jr z, jr_07e_48d6

jr_07e_48d6:
    jr z, jr_07e_48d8

jr_07e_48d8:
    ld e, $00
    dec e
    nop
    jr nz, jr_07e_48de

jr_07e_48de:
    ld [de], a
    nop
    jr jr_07e_486c

    add h
    adc l
    sub e
    add b
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    ld a, d
    ld c, c
    ld e, h
    db $f4
    rlca
    dec e
    nop
    nop
    nop
    inc bc
    add sp, $75
    jr nc, @+$77

    jr nc, jr_07e_4971

    jr nc, @+$77

    jr nc, jr_07e_4975

    jr nc, jr_07e_4975

    ld h, a
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    inc de
    nop
    ld d, $00
    inc e
    nop
    ld e, $00
    ld [hl+], a
    add c
    add b
    sub c
    adc b
    sbc b
    add b
    db $e3
    add e
    adc [hl]
    ld d, b
    ld d, b
    push bc
    sub d
    or [hl]
    ld e, h
    cp l

jr_07e_492c:
    push de
    nop
    nop
    nop
    rra
    ld b, b
    jp $c350


    ld d, b

jr_07e_4936:
    jp $c350


    ld d, b

jr_07e_493a:
    jp $cf50


    cp h
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld l, $00
    ld b, d
    nop
    ld l, $00
    inc l
    nop
    ld c, b
    add c
    sub h
    sub c
    add b
    or e
    or h
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld a, c
    xor [hl]
    ld l, c
    ld e, [hl]
    add hl, sp
    db $f4
    nop
    nop
    nop
    rra
    ld b, b
    jp $c350


    ld d, b

jr_07e_4971:
    jp $c350


    ld d, b

jr_07e_4975:
    jp $db50


    db $db
    inc d
    ld a, [bc]
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld b, a
    nop
    ld b, a
    nop
    inc sp
    nop
    ld [hl], $00
    ld b, e
    nop
    inc a

jr_07e_4990:
    nop
    ld [hl], $92
    sub h
    sub e
    add b
    db $e3
    adc h
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    add d
    ld l, l
    ccf
    ld d, d
    ld d, l
    ld a, [hl]
    nop
    nop
    nop
    rra
    ld b, b
    jp $c350


    ld d, b
    jp $c350


jr_07e_49af:
    ld d, b
    jp $fa50


    db $fd
    dec b
    ld a, [bc]
    rrca
    dec b
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld d, e
    nop
    ld d, e
    nop
    ld c, b
    nop
    inc sp
    nop
    ld [hl], $00
    dec l
    nop
    dec a
    add [hl]
    adc b
    cp b
    and b
    sub c
    add b
    add e
    adc [hl]
    sub d
    sub h
    ld d, b
    ret nc

    xor [hl]
    ld l, $e7
    rst $08
    ld e, c
    nop
    nop
    nop
    rra
    ld b, b
    jp $af50


    ret z

    jp Jump_07e_7550


    jr nc, jr_07e_49af

    ld d, b
    rst $38
    rst $38
    inc d
    rrca
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld c, l
    nop
    ld c, l
    nop
    scf
    nop
    ld h, [hl]
    nop
    rra
    nop
    inc l
    nop
    jr nc, jr_07e_4990

    add b
    add [hl]
    add b
    adc l
    add h
    db $e3
    sub c
    sub h
    ld d, b
    ld d, b
    ld b, c
    adc e
    ld e, [hl]
    db $f4
    ld e, h
    add hl, bc
    nop
    nop
    nop
    rra
    ld b, b
    jp $c350


    ld d, b
    ld [hl], l
    jr nc, @-$3b

    ld d, b
    sbc h
    ld b, b
    db $fd
    rst $28
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld b, h
    nop
    ld b, h
    nop
    ld a, [hl+]
    nop
    inc h
    nop
    ld b, l
    nop
    ld c, e
    nop
    scf
    add a
    sub h
    db $e3
    add e
    add h

jr_07e_4a48:
    xor b
    adc l
    ld d, b
    ld d, b

jr_07e_4a4c:
    ld d, b
    ld d, b
    dec sp
    inc bc
    dec [hl]
    ld l, $3f
    rst $20
    nop
    nop
    nop
    rra
    ld b, b
    adc b
    cp b
    xor a
    ret z

    jp $d650


    ret c

    jp $db50


    ei
    rrca
    inc d
    dec b
    rrca
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld b, b
    nop
    inc [hl]
    nop
    inc a
    nop
    inc a
    nop
    inc [hl]
    sub h
    adc b
    adc l
    add e
    add h
    xor b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub $77
    res 6, e
    ldh [$59], a
    nop
    nop
    nop
    rra
    ld b, b
    jp Jump_07e_7550


    jr nc, jr_07e_4a48

    ret z

    ld [hl], l
    jr nc, jr_07e_4a4c

    ret z

    rst $18
    sbc $0a
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld b, h
    nop
    inc sp
    nop
    inc [hl]
    nop
    dec h
    nop
    dec sp
    add a
    add h
    sub c
    add b
    adc d
    sub h
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ld h, a
    sub d
    ccf
    ld e, [hl]
    ld e, h
    adc d
    nop
    nop
    nop
    rra
    ld b, b
    xor a
    ret z

    jp $c350


    ld d, b
    xor a
    ret z

    xor a
    ret z

    db $fd
    db $eb
    dec b
    ld a, [bc]
    ld a, [bc]
    rrca
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld d, e
    nop
    ld d, e
    nop
    inc a
    nop
    scf
    nop
    dec hl
    nop
    ld b, [hl]
    nop
    ld l, $8d
    add b
    or e
    or h
    sub d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    xor [hl]
    sbc h
    ccf
    ld e, c
    ld d, d
    nop
    nop
    nop
    rra
    ld b, b
    xor a
    ret z

    jp $9c50


    ld b, b
    jp $af50


    ret z

    ei
    cp e
    ld a, [bc]
    dec b
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop

jr_07e_4b21:
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    nop
    ld b, b
    nop
    dec l
    nop
    ld c, b
    nop
    inc l
    nop
    ld [hl-], a
    adc a
    sub h
    sub e
    add h
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, [c]
    inc bc
    ld e, [hl]
    ld b, d
    add a
    ld b, h
    nop
    nop
    nop
    rra
    ld b, b
    jp $c350


    ld d, b
    ld [hl], l
    jr nc, jr_07e_4bc1

    jr nc, @-$3b

    ld d, b
    cp l
    cp $0a
    add hl, de
    ld a, [bc]
    inc d
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    sub h
    nop
    sub h
    nop
    jr jr_07e_4b63

jr_07e_4b63:
    ld d, $00
    add hl, hl
    nop
    inc sp
    nop
    ld c, e
    add a
    add b
    adc a
    adc b
    adc l
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    add e
    xor [hl]
    ld e, [hl]
    ld d, l
    dec sp
    ld l, l
    nop
    nop
    nop
    rra
    ld b, b
    sub $d8
    ld [hl], l
    jr nc, jr_07e_4b21

    ld b, b
    sub $d8
    ld [hl], l

jr_07e_4b89:
    jr nc, jr_07e_4b89

    rst $10
    ld a, [bc]
    rrca
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld h, d
    nop
    ld h, d
    nop
    dec [hl]
    nop
    inc [hl]
    nop
    dec l
    nop
    ld [hl-], a
    nop
    ld [hl], $91
    add b
    adc a
    sub h
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    add hl, de
    and e
    ld d, l
    ld d, [hl]
    ld b, [hl]
    ld e, h
    nop
    nop
    nop
    rra
    ld b, b
    xor a
    ret z

    jp $af50


    ret z

jr_07e_4bc1:
    jp $c350


    ld d, b
    db $fc
    cp $0f
    inc d
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    nop
    inc l
    nop
    jr nz, jr_07e_4bdb

jr_07e_4bdb:
    ld a, [hl-]
    nop
    add hl, hl
    nop
    dec h
    adc a
    adc b
    adc d
    add b
    sub e
    adc b
    cp b
    or h
    sub h
    ld d, b
    ld d, b
    call nc, $d377
    and e
    ld e, h
    ret


    nop
    nop
    nop
    rra
    ld b, b
    sbc h
    ld b, b
    xor a
    ret z

    sbc h
    ld b, b
    xor a
    ret z

    jp $fd50


Jump_07e_4c01:
    cp $19
    inc d
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld c, c
    nop
    ld c, c
    nop
    ld c, c
    nop
    inc a
    nop
    cpl
    nop
    dec hl
    nop
    dec [hl]
    add a
    add b
    or e
    or h
    sub d
    add b
    adc h
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld l, e
    xor [hl]
    add hl, bc
    ld [$0507], sp
    nop
    nop
    nop
    rra
    ld b, b
    jp $af50


    ret z

    adc b
    cp b

jr_07e_4c37:
    jp Jump_07e_7550


    jr nc, jr_07e_4c37

    db $fd
    rrca
    rrca
    rrca
    inc d
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld b, e
    nop
    ld b, e
    nop
    ccf
    nop
    ld [hl-], a
    nop
    inc [hl]
    nop
    jr nz, jr_07e_4c55

jr_07e_4c55:
    ld a, $84
    add c
    adc b
    sub [hl]
    add b
    sub c
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    add b
    inc bc
    ld d, l
    ld e, c
    ccf
    dec sp
    nop
    nop
    nop
    rra
    ld b, b
    jp $9c50


    ld b, b
    jp Jump_07e_7550


    jr nc, jr_07e_4cea

    jr nc, @-$03

    rst $28
    rrca
    ld a, [bc]
    dec b
    dec b
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld c, h
    nop
    ld c, h
    nop
    dec a
    nop
    ld a, [hl-]
    nop
    ccf
    nop
    inc hl
    nop
    cpl
    adc d
    add h
    adc l

jr_07e_4c94:
    sub e
    add b
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    cp b
    ld e, a
    add hl, sp
    dec sp
    push de
    ldh a, [rP1]
    nop
    nop
    rra
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    db $ed
    rst $30
    rrca
    dec b
    rrca
    dec b
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld d, d
    nop
    ld d, d

jr_07e_4cc2:
    nop
    jr z, jr_07e_4cc5

jr_07e_4cc5:
    inc [hl]
    nop
    add hl, hl
    nop
    dec h
    nop
    ld sp, $808c
    sub c
    adc b
    sub c
    sub h

jr_07e_4cd2:
    sub c
    adc b
    ld d, b
    ld d, b
    ld d, b
    pop af
    ld d, d
    ld e, c
    ld d, a
    push de
    add hl, sp
    nop
    nop
    nop
    rra
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b

jr_07e_4cea:
    sbc h
    ld b, b
    rst $18
    cp $0a
    ld a, [bc]
    rrca

Jump_07e_4cf1:
    rrca
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld d, e
    nop
    ld d, e
    nop
    inc [hl]
    nop
    ccf
    nop
    dec a
    nop
    inc h
    nop
    jr nc, jr_07e_4c94

    adc b
    sub c
    sub h
    sub e
    add b
    adc l
    adc d
    sub h
    ld d, b
    ld d, b
    jr z, jr_07e_4cc2

    ccf
    dec sp
    ld a, [hl]
    push de
    nop
    nop
    nop
    rra
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    rst $00
    cp $05

jr_07e_4d2a:
    dec b
    dec b
    rrca
    ld h, h
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld h, d
    nop
    ld h, d
    nop
    cpl
    nop
    inc hl
    nop
    daa
    nop
    ld [hl-], a
    nop
    jr z, jr_07e_4cd2

    sub h
    adc d
    sub h
    sub c
    adc b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jr z, jr_07e_4db7

    ld e, [hl]
    rst $08
    db $f4
    dec e
    nop
    nop
    nop
    rra
    ld b, b
    ld [hl], l
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_4d2a

    ld [hl], a
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld h, c
    nop
    ld h, c
    nop
    ld l, $00
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld l, $00
    inc h
    adc a
    sub h
    adc d
    sub h
    sub c
    adc b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [hl+], a
    xor l
    dec sp
    ld e, c
    add hl, sp
    add hl, bc
    nop
    nop
    nop
    rra
    ld b, b
    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_4e0d

    jr nc, @+$77

    jr nc, jr_07e_4e11

    jr nc, jr_07e_4df4

    ld b, [hl]
    dec b
    ld a, [bc]
    rrca
    rrca
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld c, d
    nop
    ld c, d
    nop
    inc [hl]
    nop
    ld l, $00
    ld sp, $3200
    nop

jr_07e_4db7:
    ld l, $8d
    adc b
    add e
    adc [hl]
    adc d
    adc b
    adc l
    add [hl]
    sub h
    ld d, b
    ld d, b
    jp $8549


    ld e, c
    add hl, sp
    ldh a, [rP1]
    nop
    nop
    rra
    ld b, b
    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_4e48

    jr nc, jr_07e_4e4a

    jr nc, jr_07e_4e4c

    jr nc, jr_07e_4e2e

    ld b, a
    inc d
    ld a, [bc]
    rrca
    dec b
    nop
    nop
    nop
    nop
    inc d
    nop
    nop
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld sp, $3100
    nop
    dec e
    nop
    ld a, [hl+]
    nop
    ld a, [hl+]
    adc l

jr_07e_4df4:
    sub h
    adc [hl]
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add a
    ld l, l
    ld d, l
    ld d, [hl]
    ld l, $bd
    nop
    nop
    nop
    ld l, c
    ld a, b
    jp $c350


    ld d, b

jr_07e_4e0d:
    jp $c350


    ld d, b

jr_07e_4e11:
    sub $d8
    db $db
    db $ed
    rrca
    inc d
    inc d
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld h, a
    nop
    ld h, a
    nop
    ld b, h
    nop
    ld b, b
    nop
    ld l, e
    nop
    ld h, b
    nop
    ld d, a

jr_07e_4e2e:
    sub d
    add b
    adc l
    add e
    add b
    db $e3
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld a, $03
    ld l, b
    add hl, sp
    ld e, d
    ld b, d
    nop
    nop
    nop
    ld l, c
    ld a, b
    jp $d650


    ret c

jr_07e_4e48:
    sub $d8

jr_07e_4e4a:
    sub $d8

jr_07e_4e4c:
    jp $dd50


    ei
    rrca
    rrca
    dec b
    add hl, de
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld d, c
    nop
    ld d, a
    nop
    ld c, c
    nop
    ld b, [hl]
    nop
    ld d, d
    adc l
    adc b
    cp b
    xor [hl]
    sub c
    adc [hl]
    add c
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld a, c
    sub d
    ld d, [hl]
    ld e, [hl]
    ld l, c
    add hl, sp
    nop
    nop
    nop
    ld l, c
    ld a, b
    jp $c350


    ld d, b
    jp $c350


jr_07e_4e86:
    ld d, b
    jp $ff50


    rst $38
    inc d
    ld a, [bc]
    inc d
    rrca
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld c, e
    nop
    ld d, c
    nop
    ld h, e
    nop
    ld e, d
    nop
    ld d, c
    sub d
    sub h
    sub e
    add b
    db $e3
    adc h
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld a, h
    xor [hl]
    dec sp
    adc [hl]
    adc d
    push de
    nop
    nop
    nop
    ld l, c
    ld a, b
    jp $c350


    ld d, b
    jp Jump_07e_7550


    jr nc, jr_07e_4e86

    ld d, b
    ei
    xor $05
    ld a, [bc]
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    inc a
    nop
    ld sp, $5300
    nop
    ld h, d
    nop
    ld d, [hl]
    sub c
    sub h
    db $e3
    sbc c
    adc b
    cp b
    or h
    sub c
    add b
    ld d, b
    ld d, b
    inc sp
    ld d, d
    ld e, c
    cp h
    and e
    cp l
    nop
    nop
    nop
    ld l, c
    ld a, b
    jp $c350


    ld d, b
    ld [hl], l
    jr nc, @-$3b

    ld d, b
    jp $ef50


    rst $38
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld c, l
    nop
    jr c, jr_07e_4f15

jr_07e_4f15:
    ld h, [hl]
    nop
    inc a
    nop
    ld c, b
    add e
    add b
    add [hl]
    sub h
    sub e

jr_07e_4f1f:
    adc [hl]
    sub c
    adc b
    adc [hl]

jr_07e_4f23:
    ld d, b
    ld d, b
    or [hl]
    inc bc
    jp z, Jump_07e_4cf1

    ld l, b
    nop
    nop
    nop
    ld l, c
    ld a, b
    xor a
    ret z

    xor a
    ret z

    jp $d650


    ret c

    jp $df50


    db $db
    dec b
    dec b
    ld a, [bc]
    rrca
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld l, l
    nop
    ld l, l
    nop
    ld c, h
    nop
    ld d, c
    nop
    inc a
    nop
    ld d, d
    nop
    ld e, b
    adc d
    adc b
    sub c
    add h
    adc b
    add a
    add b
    adc l
    add b
    ld d, b
    ld d, b
    ld a, [c]
    sub d
    ld e, h
    ld [hl], e
    add a
    or [hl]
    nop
    nop
    nop
    ld l, c
    ld a, b
    jp Jump_07e_7550


    jr nc, jr_07e_4f1f

    ret z

    ld [hl], l
    jr nc, jr_07e_4f23

    ret z

    ei
    db $ed
    ld a, [bc]
    inc d
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    reti


    nop
    reti


    nop
    jr nz, jr_07e_4f89

jr_07e_4f89:
    ld hl, $3b00
    nop
    ld c, c
    nop
    ld l, l
    add a
    add b
    adc a
    adc b
    adc l
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    push hl
    adc d
    dec [hl]
    ld a, [c]
    rst $30
    adc d
    nop
    nop
    nop
    ld l, c
    ld a, b
    xor a
    ret z

    jp $c350


    ld d, b
    xor a
    ret z

    xor a
    ret z

    db $fd
    db $ed
    rrca
    rrca
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld d, h
    nop
    dec sp
    nop
    ld d, [hl]
    nop
    ld e, [hl]
    nop
    ld c, h
    add a
    add h
    sub c
    sub h
    add [hl]
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, h
    ld l, l
    xor $08
    ld e, c
    ld a, [hl]
    nop
    nop
    nop
    ld l, c
    ld a, b
    xor a
    ret z

    jp $9c50


    ld b, b
    jp $af50


    ret z

    db $fd
    cp [hl]
    dec b
    rrca
    ld a, [bc]
    dec b
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop

jr_07e_4ff8:
    nop
    halt
    halt
    ld l, h
    nop
    ld c, e
    nop
    dec a
    nop
    ld b, h
    nop
    ld d, b
    adc d
    add b
    adc b
    sub c
    adc b
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    xor c
    xor [hl]
    push de
    ld l, l
    ld e, h
    ld de, $0000
    nop
    ld l, c
    ld a, b
    jp $c350


    ld d, b
    ld [hl], l
    jr nc, jr_07e_5098

    jr nc, @-$3b

    ld d, b
    rst $28
    call c, $0a0f
    ld a, [bc]
    inc hl
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld d, e
    nop
    ld c, d
    nop
    ld h, a
    nop
    ld b, [hl]
    nop
    ld c, h

jr_07e_5041:
    adc d
    sub h
    sub c
    adc [hl]
    add c
    add b
    or e
    or h
    sub e
    adc [hl]
    ld d, b
    jp hl


    inc bc
    ld e, [hl]
    ld l, c
    ccf
    and c
    nop
    nop
    nop
    ld l, c
    ld a, b
    sub $d8
    ld [hl], l
    jr nc, jr_07e_4ff8

    ld b, b
    sub $d8
    ld [hl], l
    jr nc, jr_07e_5041

    db $db
    ld a, [bc]
    inc d
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld c, c
    nop
    ld d, e
    nop
    ld b, d
    nop
    ld d, a

jr_07e_507a:
    nop
    ld d, c
    adc a
    adc [hl]
    sub c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld hl, sp+$50
    ld d, b
    ld d, b
    ld l, c
    db $76
    ld e, c
    ret c

    ccf
    sbc e
    nop
    nop
    nop
    ld l, c
    ld a, b
    xor a
    ret z

    jp $af50


    ret z

jr_07e_5098:
    jp Jump_07e_7550


    jr nc, jr_07e_507a

    db $eb
    ld a, [bc]
    inc d
    dec b
    ld a, [bc]
    rst $38
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld c, l
    nop
    ld e, [hl]
    nop
    jr c, jr_07e_50b4

jr_07e_50b4:
    ld [hl], $00
    ld c, b
    add [hl]
    add b
    sub c
    add b
    add [hl]
    add b
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld h, l
    inc bc
    ld [hl], c
    ld d, l
    or [hl]
    ld d, a
    nop
    nop
    nop
    ld l, c
    ld a, b
    sbc h
    ld b, b
    xor a
    ret z

    sbc h
    ld b, b
    xor a
    ret z

    jp $bd50


    rst $28
    ld e, $0f
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld h, d
    nop
    ld h, d
    nop
    add hl, sp
    nop
    ld b, l
    nop
    ld [hl], c
    nop
    ld c, [hl]
    nop
    ld c, [hl]
    adc h
    add b
    sub c
    sub h
    adc h
    add b
    adc b
    adc l
    ld d, b
    ld d, b
    ld d, b
    add e
    sub d
    ldh a, [$37]
    call nz, $0046
    nop
    nop
    ld l, c
    ld a, b
    jp $af50


    ret z

    adc b
    cp b
    jp Jump_07e_7550


    jr nc, @-$01

    db $eb
    dec b
    add hl, de
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    adc [hl]
    nop
    adc [hl]
    nop
    ld d, b
    nop
    ld c, d
    nop
    ld b, c
    nop
    ld c, e

jr_07e_512b:
    nop
    ld d, c
    sub c
    add b
    adc a
    sub h
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    xor e
    xor [hl]
    ldh a, [$57]
    add hl, sp
    xor a
    nop
    nop
    nop
    ld l, c
    ld a, b
    jp $9c50


    ld b, b
    jp Jump_07e_7550


    jr nc, jr_07e_51c1

    jr nc, jr_07e_512b

    db $eb
    dec b
    ld a, [bc]
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    adc e
    nop
    adc e
    nop
    ld a, $00
    ld b, b
    nop
    ld b, d
    nop
    ld b, [hl]
    nop
    ld b, [hl]
    sub c
    add b
    adc l
    sub e
    add b
    db $e3
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    call nz, Call_07e_5d6d
    add c
    ld e, h
    db $f4
    nop
    nop
    nop
    ld l, c
    ld a, b
    xor a
    ret z

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    rst $28
    rst $30
    add hl, de
    inc d
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld b, h
    nop
    ld b, d
    nop
    ld h, b
    nop
    ld h, a
    nop
    ld d, d
    add h
    db $e3
    add a
    sub h
    xor b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld c, c
    ld d, d
    inc hl
    ld e, h
    cp h
    dec a
    nop
    nop
    nop
    ld l, c
    ld a, b
    jp $af50


    ret z

    jp $b750


    sbc b

jr_07e_51c1:
    xor a
    ret z

    cp $fe
    inc d
    ld a, [bc]
    ld a, [bc]
    inc d
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld l, [hl]
    nop
    ld l, [hl]
    nop
    ld b, a
    nop
    ld b, h
    nop
    ld e, d
    nop
    ld c, l
    nop
    ld h, l
    add e
    adc [hl]
    adc d
    sub h
    adc d
    sub h
    sub c
    add b
    add [hl]
    add h
    ld d, b
    ld e, [hl]
    xor [hl]
    xor b
    ld a, d
    ld h, l
    jp z, RST_00

    nop
    ld l, c
    ld a, b
    jp $af50


    ret z

    jp $c350


    ld d, b
    jp $f750


    rst $30
    ld a, [bc]
    ld e, $0f
    dec b
    ld h, h
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld h, l
    nop
    ld h, l
    nop
    ld b, h
    nop
    dec a
    nop
    ld h, b
    nop
    ld h, a
    nop
    ld b, [hl]
    add [hl]
    add h
    adc l
    add [hl]
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    reti


    xor [hl]
    dec e
    or [hl]
    ld l, $2b
    nop
    nop
    nop
    ld l, c
    ld a, b
    ld [hl], l
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_52b1

    ld b, l
    rrca
    ld a, [bc]
    inc d
    ld e, $00
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld [hl], d
    nop
    ld [hl], d
    nop
    ld h, h
    nop
    ld b, e
    nop
    dec [hl]
    nop
    ld b, c
    nop
    ld b, c
    sub c
    adc b
    adc l
    add [hl]
    sub h
    adc h
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, $03
    ld [hl], a
    db $e4
    ld b, b
    add c
    nop
    nop
    nop
    ld l, c
    ld a, b
    ld [hl], l
    jr nc, jr_07e_52e2

    jr nc, @+$77

    jr nc, jr_07e_52e6

    jr nc, @+$77

    jr nc, jr_07e_52dc

    ld [hl], a
    inc d
    inc d
    inc hl
    inc d
    nop
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld c, e
    nop
    dec a
    nop
    ld d, d
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    adc [hl]
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    sub c
    sub h
    ld d, b
    ld d, b
    add hl, sp
    ld l, l
    ld b, e
    ld [bc], a
    or e
    ld [hl], h
    nop
    nop
    nop
    ld l, c
    ld a, b
    ld [hl], l
    jr nc, jr_07e_531d

    jr nc, @+$77

    jr nc, jr_07e_5321

    jr nc, @+$77

    jr nc, jr_07e_5327

    ld h, a

jr_07e_52b1:
    inc d
    add hl, de
    rrca
    ld e, $00
    nop
    nop
    nop
    ld e, $00
    nop
    nop
    ld h, e
    nop
    ld h, e
    nop
    ld d, l
    nop
    ld a, [hl-]
    nop
    ld c, [hl]
    nop
    ld a, [hl-]
    nop
    ld b, b
    adc [hl]
    adc d
    adc [hl]
    sub c
    adc b
    sbc c
    add b
    sub c
    sub h
    ld d, b
    ld d, b
    add b
    xor [hl]
    ret c

    ccf
    ld e, c
    rst $20
    nop

jr_07e_52dc:
    nop
    nop
    ld a, [$c300]
    ld d, b

jr_07e_52e2:
    jp $c350


    ld d, b

jr_07e_52e6:
    jp $c350


    ld d, b
    db $fd
    cp $14
    dec b
    ld a, [bc]
    rrca
    rst $38
    nop
    nop
    nop
    jr z, jr_07e_52f6

jr_07e_52f6:
    nop
    nop
    adc a
    nop
    adc a
    nop
    ld [hl], a
    nop
    ld [hl], c
    nop
    ld a, a
    nop
    ld b, [hl]
    nop
    ld e, [hl]
    adc d
    add h
    adc l
    sub e
    add b
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    and $92
    add hl, sp
    pop hl
    ccf
    dec sp
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b

jr_07e_531d:
    jp $c350


    ld d, b

jr_07e_5321:
    jp $c350


    ld d, b
    db $fd
    rst $28

jr_07e_5327:
    rrca
    inc d
    dec b
    dec b
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_5331

jr_07e_5331:
    nop
    nop
    adc [hl]
    nop
    adc [hl]
    nop
    ld [hl], e
    nop
    ld [hl], c
    nop
    ld l, d
    nop
    ld [hl], e
    nop
    ld [hl], e
    adc d
    adc b
    adc l
    add [hl]
    sub h
    add e
    adc [hl]
    sub c
    add b
    ld d, b
    ld d, b
    adc a
    ld c, c
    push de
    ld [hl+], a
    db $f4
    ld e, c
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    db $ed
    db $dd
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_536c

jr_07e_536c:
    nop
    nop
    call $cd00
    nop
    ld a, [hl]
    nop
    ld e, c
    nop
    dec a
    nop
    ld e, c
    nop
    ld a, l
    adc d
    add b
    add c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    sub d
    ld d, l
    ld a, [hl-]
    ld l, l
    add hl, sp
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    db $fd
    db $eb
    rrca
    ld a, [bc]
    ld a, [bc]
    rrca
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_53a7

jr_07e_53a7:
    nop
    nop
    cp d
    nop
    cp d
    nop
    ld l, e
    nop
    ld h, l
    nop
    ld d, [hl]
    nop
    ld h, a
    nop
    ld l, a
    sub c
    add b
    adc a
    sub h
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    ret nc

    xor [hl]
    ret


    rst $20
    ld e, c
    ld e, h
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    rst $28
    db $db
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_53e2

jr_07e_53e2:
    nop
    nop
    adc c
    nop
    adc c
    nop
    ld l, d
    nop
    rst $00
    nop
    dec a
    nop
    ld c, a
    nop
    ld d, a
    add a
    add b
    add [hl]
    add b
    adc l
    add h
    db $e3
    sub c
    sub h
    ld d, b
    ld d, b
    ld b, c
    ld d, d
    ld e, [hl]
    add hl, bc
    ld l, c
    rlca
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    xor a
    ret z

    jp $d650


    ret c

    jp $dd50


    rst $28
    ld a, [bc]
    rrca
    inc d
    rrca
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_541d

jr_07e_541d:
    nop
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld c, h
    nop
    ld c, c
    nop
    add a
    nop
    sub e
    nop
    ld l, e
    add a
    sub h
    db $e3
    add e
    add h
    xor b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, c
    sub d
    dec sp
    ld d, l
    add hl, sp
    ld e, [hl]
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $af50


    ret z

    jp $af50


    ret z

    db $fd
    cp [hl]
    dec b
    rrca
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_5458

jr_07e_5458:
    nop
    nop
    add e
    nop
    add e
    nop
    ld h, e
    nop
    ld l, b
    nop
    ld a, a
    nop
    ld [hl], l
    nop
    ld l, c
    sub d
    sub h
    sub e
    add b
    db $e3
    adc h
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    jp z, Jump_07e_44ae

    di
    db $db
    jp nz, RST_00

    nop
    ld a, [$af00]
    ret z

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    cp a
    rst $20
    inc d
    inc d
    add hl, de
    dec b
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_5493

jr_07e_5493:
    nop
    nop
    jp hl


    nop
    jp hl


    nop
    ld a, $00
    ld d, l
    nop
    ld b, b
    nop
    dec sp
    nop
    ld c, a
    sub d
    adc [hl]
    db $e3
    adc l
    add b
    adc l
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld c, h
    ld [hl], a
    sbc c
    ld e, c
    dec b
    sbc l
    nop
    nop
    nop
    ld a, [$af00]
    ret z

    jp $9c50


    ld b, b
    jp $af50


    ret z

    db $dd
    db $ed
    dec b
    ld a, [bc]
    inc d
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_54ce

jr_07e_54ce:
    nop
    nop
    sub c
    nop
    sub c
    nop
    ld a, l
    nop
    adc e
    nop
    ld c, d
    nop
    ld d, b
    nop
    ld e, b
    add [hl]
    adc [hl]
    sub c
    adc [hl]
    db $e3
    adc l
    adc b
    cp b
    and b
    ld d, b
    ld d, b
    call nc, $a38c
    db $d3
    db $e4
    ccf
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $c350


    ld d, b
    sbc h
    ld b, b
    jp $bd50


    cp $14
    add hl, de
    inc d
    dec b
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_5509

jr_07e_5509:
    nop
    nop
    adc e
    nop
    adc e
    nop
    adc e
    nop
    ld [hl], l
    nop
    ld e, c
    nop
    ld d, d
    nop
    ld h, [hl]
    add a
    add b
    or e
    or h
    sub d
    add b
    adc h
    sub h
    ld d, b
    ld d, b
    ld d, b
    inc sp
    ld d, d
    ld e, c
    ccf
    cp h
    cp l
    nop
    nop
    nop
    ld a, [$af00]
    ret z

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    cp $bb
    ld a, [bc]
    dec b
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_5544

jr_07e_5544:
    nop
    nop
    ld l, h
    nop
    ld l, h
    nop
    ld h, a
    nop
    ld c, [hl]
    nop
    add e
    nop
    ld c, e
    nop
    ld e, e
    add e
    add b
    add [hl]
    sub h
    sub e
    adc [hl]
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld l, l
    add hl, sp
    ld e, [hl]
    ld e, c
    dec sp
    nop
    nop
    nop
    ld a, [$af00]
    ret z

    jp $af50


    ret z

    jp $c350


    ld d, b
    cp a
    rst $08
    rrca
    ld a, [bc]
    ld a, [bc]
    dec b
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_557f

jr_07e_557f:
    nop
    nop
    sbc l
    nop
    sbc l
    nop
    ld e, a
    nop
    ld a, [hl]
    nop
    inc a
    nop
    ld [hl], a
    nop
    ld h, a
    sbc b
    add b
    add e
    adc [hl]
    sub c
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jp hl


    nop
    or b
    and b
    inc a
    xor b
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    xor a
    ret z

    jp $c350


    ld d, b
    jp $bc50


    rst $28
    ld e, $1e
    inc d
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_55ba

jr_07e_55ba:
    nop
    nop
    sub e
    nop
    sub e
    nop
    ld h, e
    nop
    ld l, h
    nop
    ld d, [hl]
    nop
    ld a, e
    nop
    ld [hl], e
    adc a
    adc [hl]
    sub c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld hl, sp+$50
    ld d, b
    ld d, b
    dec sp
    adc d
    xor h
    dec hl
    ld [hl+], a
    ld l, $00
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    cp $bb
    add hl, de
    ld e, $0f
    inc d
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_55f5

jr_07e_55f5:
    nop
    nop
    sbc b
    nop
    sbc b
    nop
    ld a, a
    nop
    ld h, [hl]
    nop
    ld l, a
    nop
    ld [hl], e
    nop
    ld h, e
    sub h
    adc b
    adc l
    add e
    add h
    xor b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    call $e592
    or [hl]
    ld e, h
    ret


    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    ld a, [$287f]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_5630

jr_07e_5630:
    nop
    nop
    adc h
    nop
    adc h
    nop
    ld l, a
    nop
    sub e
    nop
    ld b, b
    nop
    ld d, a
    nop
    ld d, a
    add a
    sub h
    xor [hl]
    sub c
    add h
    sub e
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    adc e
    xor [hl]
    xor [hl]
    scf
    or $f9
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    rst $28
    rst $30
    ld a, [bc]
    add hl, de
    dec b
    rrca
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_566b

jr_07e_566b:
    nop
    nop
    add l
    nop
    add l
    nop
    ld d, [hl]
    nop
    adc e
    nop
    ld d, e
    nop
    ld a, h
    nop
    ld e, b
    adc [hl]
    adc h
    sub h
    sub d
    sub h
    sub e
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld b, $52
    ld d, e
    ld d, d
    inc de
    and e
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    cp $fe
    rrca
    ld a, [bc]
    rrca
    inc d
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_56a6

jr_07e_56a6:
    nop
    nop
    adc [hl]
    nop
    adc [hl]
    nop
    ld l, d
    nop
    ld h, h
    nop
    ld [hl], a
    nop
    ld a, l
    nop
    ld l, d
    sub c
    adc b
    sbc c
    add b
    db $e3
    add e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld h, a
    inc bc
    ld a, c
    rla
    db $f4
    ld e, l
    nop
    nop
    nop
    ld a, [$c300]
    ld d, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    rst $30
    rst $20
    ld a, [bc]
    inc d
    ld a, [bc]
    add hl, de
    ld h, h
    nop
    nop
    nop
    jr z, jr_07e_56e1

jr_07e_56e1:
    nop
    nop
    sbc [hl]
    nop
    sbc [hl]
    nop
    ld [hl], e
    nop
    ld h, h
    nop
    ld d, d
    nop
    add h
    nop
    ld d, h
    adc l
    add b
    or e
    or h
    sub d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld h, c
    inc bc
    ld e, l
    add hl, bc
    dec e
    ld [hl-], a
    nop
    nop
    nop
    ld a, [$7500]
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_5788

    ld a, d
    add hl, de
    rrca
    rrca
    inc d
    nop
    nop
    nop
    nop
    jr z, jr_07e_571c

jr_07e_571c:
    nop
    nop
    sub d
    nop
    sub d
    nop
    ld d, [hl]
    nop
    ld d, e
    nop
    ld d, c
    nop
    ld e, b
    nop
    ld a, d
    sub d
    sub h
    sub c
    adc b
    db $e3
    adc a
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld e, c
    ld c, c
    ld h, a
    ld e, h
    ld a, h
    ld l, d
    nop
    nop
    nop
    ld a, [$7500]
    jr nc, jr_07e_57b9

    jr nc, jr_07e_57bb

    jr nc, @+$77

    jr nc, jr_07e_57bf

    jr nc, jr_07e_57c1

    ld l, e
    jr z, jr_07e_5759

    inc d
    ld e, $00
    nop
    nop
    nop
    jr z, jr_07e_5757

jr_07e_5757:
    nop
    nop

jr_07e_5759:
    and c
    nop
    and c
    nop
    ld l, a
    nop
    ld d, [hl]
    nop
    ld b, e
    nop
    ld d, e
    nop
    ld l, a
    add c
    add h
    sub e
    adc [hl]
    add c
    add h
    sub e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld a, l
    ld d, d
    ld [hl], c
    add hl, bc
    add c
    xor l
    nop
    nop
    nop
    ld a, [$7500]
    jr nc, jr_07e_57f4

    jr nc, @+$77

    jr nc, jr_07e_57f8

    jr nc, @+$77

    jr nc, jr_07e_57ec

    ld [hl], a

jr_07e_5788:
    ld e, $0f
    inc d
    rrca
    nop
    nop
    nop
    nop
    jr z, jr_07e_5792

jr_07e_5792:
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld e, l
    nop
    ld b, a
    nop
    ld l, a
    nop
    ld h, a
    nop
    ld e, a
    add h
    sub c
    add h
    add c
    sub h
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    and $ae
    add hl, sp
    ccf
    dec sp
    pop hl
    nop
    nop
    ld bc, $48e8
    sub $d8

jr_07e_57b9:
    sub $d8

jr_07e_57bb:
    ld [$c360], a
    ld d, b

jr_07e_57bf:
    sub $d8

jr_07e_57c1:
    db $dd
    rst $38
    rrca
    dec b
    dec b
    inc d
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    or e
    nop
    or e
    nop
    adc [hl]
    nop
    adc a
    nop
    add h
    nop
    sub b
    nop
    sub b
    adc d
    adc b
    adc l
    add [hl]
    sub h
    add e
    adc [hl]
    sub c
    add b
    ld d, b
    ld d, b
    push hl
    ld l, l
    sbc h
    ld a, [c]
    adc d

jr_07e_57ec:
    dec [hl]
    nop
    nop
    ld bc, $48e8
    sub $d8

jr_07e_57f4:
    jp $ea50


    ld h, b

jr_07e_57f8:
    ld [$ea60], a
    ld h, b
    db $dd
    db $fc
    ld a, [bc]
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    or d
    nop
    or d
    nop
    add a
    nop
    ld h, d
    nop
    sub c
    nop
    sbc l
    nop
    ld a, a
    add a
    add h
    sub c
    sub h
    add [hl]
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    push de
    sub d
    ret


    sbc h
    ld e, h
    inc hl
    nop
    nop
    ld bc, $48e8
    ld [$ea60], a
    ld h, b
    ld [$ea60], a
    ld h, b
    sub $d8
    db $fd
    rst $08
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    ld a, e
    nop
    ld a, e
    nop
    inc a
    ld bc, $0016
    inc [hl]
    nop
    dec sp
    ld bc, $9317
    sub h
    add c
    adc [hl]
    sub e
    sub h
    add c
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    adc a
    sub d
    ccf
    ld e, c
    add hl, sp
    db $f4
    nop
    nop
    ld bc, $48e8
    ld [$d660], a
    ret c

    sub $d8
    ld [$d660], a
    ret c

    db $fd
    rst $28
    dec b
    ld a, [bc]
    rrca
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld bc, $0107
    rlca
    nop
    sbc a
    nop
    ld [hl], b
    nop
    ld c, a
    nop
    ld [hl], d
    nop
    sbc a
    adc d
    add b
    add c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    xor [hl]
    ld d, l
    add hl, sp
    ld l, l
    dec sp
    nop
    nop
    ld bc, $48e8
    sub $d8
    ld [$ea60], a
    ld h, b
    sub $d8
    ld [$dd60], a
    db $dd
    rrca
    rrca
    ld a, [bc]
    dec b
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    ld [$ea00], a
    nop
    add l
    nop
    add b
    nop
    ld l, e
    nop
    add l
    nop
    adc a
    sub c
    add b
    adc a
    sub h
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    add a
    ld d, d
    ld d, l
    ld d, [hl]
    rst $30
    db $ed
    nop
    nop
    ld bc, $48e8
    sub $d8
    ld [$de60], a
    xor b
    sub $d8
    sub $d8
    db $ed
    rst $38
    rrca
    inc d
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    and c
    nop
    and c
    nop
    ld [hl], d
    nop
    ld l, e
    nop
    or e
    nop
    sbc a
    nop
    sub b
    sub d
    add b
    adc l
    add e
    add b
    db $e3
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    call nc, $3f92
    and e
    ld h, c
    add sp, $00
    nop
    ld bc, $48e8
    xor a
    ret z

    jp $9c50


    ld b, b
    jp $af50


    ret z

    rst $18
    db $ed
    dec b
    inc d
    ld e, $23
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    xor c
    nop
    xor c
    nop
    xor a
    nop
    sub c
    nop
    ld l, a
    nop
    ld h, e
    nop
    ld a, h
    add a
    add b
    or e
    or h
    sub d
    add b
    adc h
    sub h
    ld d, b
    ld d, b
    ld d, b
    rst $00
    ld d, h
    sbc h
    add hl, sp
    ld e, [hl]
    add l
    nop
    nop
    ld bc, $48e8
    jp $9c50


    ld b, b
    xor a
    ret z

    jp $c350


    ld d, b
    rst $18
    sbc $0a
    rrca
    ld a, [bc]
    inc d
    rrca
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    call nz, $c400
    nop
    halt
    ld a, [hl]
    nop
    ld c, e
    nop
    sub d
    nop
    sbc h
    sbc b
    add b
    add e
    adc [hl]
    adc d
    adc b
    adc l
    add [hl]
    sub h
    ld d, b
    ld d, b
    ld b, h
    xor [hl]
    xor $59
    ld a, [hl]
    add hl, bc
    nop
    nop
    ld bc, $48e8
    sbc h
    ld b, b
    xor a
    ret z

    jp $9c50


    ld b, b
    xor e
    ldh [rIE], a
    db $ec
    dec b
    ld a, [bc]
    dec b
    rrca
    dec c
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    cp e
    nop
    cp e
    nop
    or b
    nop
    ld a, a
    nop
    ld h, e
    nop
    ld l, h
    nop
    add b
    adc d
    add b
    adc b
    sub c
    adc b
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld a, c
    adc h
    ld d, [hl]
    ld l, c
    ld d, l
    add hl, sp
    nop
    nop
    ld bc, $48e8
    xor a
    ret z

    xor e
    ldh [$9c], a
    ld b, b
    xor a
    ret z

    sbc h
    ld b, b
    rst $38
    rst $38
    inc d
    inc d
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    and c
    nop
    and c
    nop
    ld a, c
    nop
    add d
    nop
    and c
    nop
    sub c
    nop
    add d
    sub d
    sub h
    sub e
    add b
    db $e3
    adc h
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    inc sp
    ld d, d
    ld e, c
    and e
    ccf
    cp h

Jump_07e_5a00:
    nop
    nop
    ld bc, $48e8
    xor a
    ret z

    sbc h
    ld b, b
    jp $af50


    ret z

    jp $f750


    cp $0a
    inc d
    dec b
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    add a
    nop
    add a
    nop
    ld a, l
    nop
    ld e, c
    nop
    and [hl]
    nop
    ld h, b
    nop
    ld [hl], h
    add e
    add b
    add [hl]
    sub h
    sub e
    adc [hl]
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld h, l
    ld l, l
    ld d, l
    sbc c
    di
    sbc h
    nop
    nop
    ld bc, $48e8
    jp $af50


    ret z

    jp nc, $9cf0

    ld b, b
    jp Jump_07e_7d50


    cp $0f
    dec b
    inc d
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    and c
    nop
    and c
    nop
    ld e, b
    nop
    ld [hl], l
    nop
    cp c
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    adc h
    add b
    sub c
    sub h
    adc h
    add b
    adc b
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    ld d, d
    ccf
    ld e, c
    ld a, [hl]
    rst $20
    nop
    nop
    ld bc, $48e8
    xor a
    ret z

    jp $c350


    ld d, b
    xor a
    ret z

    xor a
    ret z

    db $fd
    db $dd
    dec b
    ld a, [bc]
    dec b
    rrca
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    or l
    nop
    or l
    nop
    sbc b
    nop
    ld l, [hl]
    nop
    xor [hl]
    nop
    ld l, b
    nop
    ld [hl], a
    adc a
    sub h
    sub e
    add h
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    xor c
    sub d
    ld l, l
    push de
    ccf
    ld e, h
    nop
    nop
    ld bc, $48e8
    xor a
    ret z

    sbc h
    ld b, b
    jp $9c50


    ld b, b
    jp $ef50


    rst $38
    ld a, [bc]
    rrca
    dec b
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    or d
    nop
    or d
    nop
    add [hl]
    nop
    ld a, a
    nop
    xor a
    nop
    ld [hl], l
    nop
    ld a, a
    adc d
    sub h
    sub c
    adc [hl]
    add c
    add b
    or e
    or h
    sub e
    adc [hl]
    ld d, b
    sub c
    ld l, l
    ld b, c
    ld d, l
    ld d, [hl]
    ccf
    nop
    nop
    ld bc, $48e8
    xor a
    ret z

    jp $af50


    ret z

    sbc h
    ld b, b
    jp $fd50


    sbc $14
    rrca
    inc d
    dec b
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    adc c
    nop
    add c
    nop
    adc a
    nop
    xor e
    nop
    adc b
    sub d
    add b
    adc l
    add e
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    db $e3
    xor [hl]
    ret


    inc de
    db $d3
    ld e, h
    nop
    nop
    ld bc, $48e8
    xor a
    ret z

    jp $c350


    ld d, b
    jp $9c50


    ld b, b
    rst $10
    db $ed
    ld a, [bc]
    rrca
    add hl, de
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    and h
    nop
    and h
    nop
    ld a, l
    nop
    or e
    nop
    ld [hl], h
    nop
    ld d, e
    nop
    ld [hl], c
    add h
    add b
    db $e3
    adc h
    sub h
    add e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    call $c992
    ld e, h
    sbc c
    rst $08
    nop
    nop
    ld bc, $48e8
    jp $c350


    ld d, b
    sub $d8
    xor a
    ret z

    sbc h
    ld b, b
    rst $08
    db $dd
    ld a, [bc]
    ld a, [bc]
    dec b
    rrca
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    xor c
    nop
    xor c
    nop
    add [hl]
    nop
    cp l
    nop
    ld d, h
    nop
    ld h, a
    nop
    ld h, a
    add a
    sub h
    xor [hl]
    sub c
    add h
    sub e
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    ret nc

    ld l, l
    ret


    rst $20
    sbc h
    ld e, c
    nop
    nop
    ld bc, $48e8
    xor a
    ret z

    jp $c350


    ld d, b
    sbc h
    ld b, b
    xor a
    ret z

    db $dd
    db $dd
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    or b
    nop
    or b
    nop
    add d
    nop
    push af
    nop
    ld c, c
    nop
    ld h, e
    nop
    ld l, l
    add a
    add b
    add [hl]
    add b
    adc l
    add h
    db $e3
    sub c
    sub h
    ld d, b
    ld d, b
    res 1, h
    adc d
    ld a, [c]
    ld e, [hl]
    ld e, c
    nop
    nop
    ld bc, $48e8
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    ld b, l
    ld d, [hl]
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    and c
    nop
    and c
    nop
    ld [hl], d
    nop
    ld h, h
    nop
    ld a, b
    nop
    ld a, [hl]
    nop
    ld h, l
    adc d
    adc b
    sub c
    adc b
    adc l
    sub c
    adc b
    adc d
    adc b
    ld d, b
    ld d, b
    add d
    ld l, l
    ccf
    add hl, sp
    ldh a, [$c0]
    nop
    nop
    ld bc, $48e8
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    ld [hl], l
    ld h, l
    dec b
    rrca
    dec b
    dec b
    ld h, h
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    pop bc
    nop
    pop bc
    nop
    and d
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld e, a
    nop
    add a
    add [hl]
    adc b
    cp b
    and b
    sub c
    add b
    add e
    adc [hl]
    sub d
    sub h
    ld d, b
    sub b
    xor [hl]
    dec sp
    ccf
    ld l, $c4
    nop
    nop
    ld bc, $48e8
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    ld b, l
    ld d, [hl]
    dec b
    dec b
    inc d
    rrca
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    or l
    nop
    or l
    nop
    ld [hl], a
    nop
    add a
    nop
    ld a, b
    nop
    add e
    nop
    and c
    add a
    sub h
    sub c
    adc b
    db $e3
    sbc c
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    and $92
    pop hl
    add hl, sp
    ccf
    dec sp
    nop
    nop
    inc bc
    ld c, e
    ret nz

    sub $d8
    sub $d8
    jp $ea50


    ld h, b
    ld [$dd60], a
    cp $14
    rrca
    dec b
    dec b
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    db $d3
    nop
    db $d3
    nop
    xor c
    nop
    and a
    nop
    and c
    nop
    xor h
    nop
    xor h
    adc d
    adc b
    adc l
    add [hl]
    sub h
    add e
    adc [hl]
    sub c
    add b
    ld d, b
    ld d, b
    ld hl, sp-$52
    ld a, [c]
    ld e, c
    sbc l
    ccf
    nop
    nop
    inc bc
    ld c, e
    ret nz

    sub $d8
    ld [$d660], a
    ret c

    ld [$d660], a
    ret c

    db $fd
    db $ed
    rrca
    ld a, [bc]
    ld a, [bc]
    dec b
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    call c, $bb00
    nop
    add e
    nop
    xor c
    nop
    xor a
    add c
    add b
    adc l
    add [hl]
    adc b
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    push hl
    ld l, l
    dec [hl]
    ld a, [c]
    adc d
    sbc h
    nop
    nop
    inc bc
    ld c, e
    ret nz

    ld [$d660], a
    ret c

    sub $d8
    ld [$d660], a
    ret c

    ei
    rst $28
    rrca
    rrca
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    call nc, $d400
    nop
    and l
    nop
    ld [hl], c
    nop
    xor h
    nop
    cp l
    nop
    sbc c
    add a
    add h
    sub c
    sub h
    add [hl]
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jp hl


    sub d
    dec sp
    ld l, c
    ld e, h
    ld e, [hl]
    nop
    nop
    inc bc
    ld c, e
    ret nz

    sub $d8
    jp $c350


    ld d, b
    jp $d650


    ret c

    db $dd
    sbc $05
    inc d
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    rst $18
    nop
    rst $18
    nop
    sub l
    nop
    and c
    nop
    ld a, l
    nop
    or [hl]
    nop
    xor d
    adc a
    adc [hl]
    sub c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld hl, sp+$50

Call_07e_5d6d:
    ld d, b
    ld d, b
    ld b, h
    ld c, c
    rlca
    xor $09
    ld e, c
    nop
    nop
    inc bc
    ld c, e
    ret nz

    jp $c350


    ld d, b
    xor a
    ret z

    jp $c350


    ld d, b
    db $fd
    rst $28
    rrca
    dec b
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ld [c], a
    nop
    ld [c], a
    nop
    call nc, $9400
    nop
    ld a, b
    nop
    add [hl]
    nop
    sbc [hl]
    adc d
    add b
    adc b
    sub c
    adc b
    adc d
    adc b
    db $e3
    ld d, b

Jump_07e_5da8:
    ld d, b
    ld d, b
    sub c
    ld d, h
    sbc h
    ld b, c
    ld d, l
    ld d, [hl]
    nop
    nop
    inc bc
    ld c, e
    ret nz

    jp $af50


    ret z

    jp $d650


    ret c

    jp $dd50


    db $fd
    ld a, [bc]
    inc d
    rrca
    inc d
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    push hl
    nop
    push hl
    nop
    and b
    nop
    sbc e
    nop
    or c
    nop
    rlc b
    and c
    sub d
    add b
    adc l
    add e
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jp z, Jump_07e_44ae

    di
    jp nz, $00db

    nop
    inc bc
    ld c, e
    ret nz

    jp $c350


    ld d, b
    xor a
    ret z

    jp $af50


    ret z

    db $fd
    db $ed
    inc d
    inc d
    dec b
    add hl, de
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    ld bc, $015a
    ld e, d
    nop
    ld e, a
    nop
    ld a, d
    nop
    ld e, [hl]
    nop
    ld e, h
    nop
    ld a, d
    sub d
    adc [hl]
    db $e3
    adc l
    add b
    adc l
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    sub d
    ccf
    jr nc, jr_07e_5e7e

    inc l
    nop
    nop
    inc bc
    ld c, e
    ret nz

    xor a
    ret z

    jp $c350


    ld d, b
    xor a
    ret z

    xor a
    ret z

    db $fd
    db $dd
    dec b
    inc d
    ld a, [bc]
    add hl, de
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    rst $10
    nop
    rst $10
    nop
    or [hl]
    nop
    add e
    nop
    ret nc

    nop
    ld a, h
    nop
    adc [hl]
    adc a
    sub h
    sub e
    add h
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub l
    ld l, l
    ccf
    call nz, $3955
    nop
    nop
    inc bc
    ld c, e
    ret nz

    xor a
    ret z

    jp $9c50


    ld b, b
    jp $af50


    ret z

    db $dd
    db $fd
    dec b
    rrca
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop

jr_07e_5e7e:
    push hl
    nop
    push hl
    nop
    sub $00
    and h
    nop
    sbc b
    nop
    xor h
    nop
    xor h
    adc d
    add b
    adc b
    sub c
    adc b
    cp b
    or h
    db $e3
    ld d, b
    ld d, b
    ld d, b
    push bc
    xor [hl]
    cp l
    db $ec
    ld e, [hl]
    cp c
    nop
    nop
    inc bc
    ld c, e
    ret nz

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fd50


    rst $28
    ld a, [bc]

Call_07e_5eae:
    dec b
    ld a, [bc]
    inc d
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    add sp, $00
    add sp, $00
    add [hl]
    nop
    cp c
    nop
    add h
    nop
    add b
    nop
    call nc, $9481
    sub c
    add b
    or e
    or h
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    dec sp
    adc d
    dec [hl]
    ld a, [c]
    push af
    rst $20
    nop
    nop
    inc bc
    ld c, e
    ret nz

    sub $d8
    jp $9c50


    ld b, b
    sub $d8
    jp $fd50


    db $ed
    rrca
    rrca
    dec b
    rrca
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    db $e4
    nop
    db $e4
    nop
    cp h
    nop
    sub d
    nop
    xor d
    nop
    xor l
    nop
    sub l
    sub h
    adc b
    adc l
    add e
    add h
    xor b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    db $e3
    ld l, l
    db $d3
    inc de
    ld e, h
    or [hl]
    nop
    nop
    inc bc
    ld c, e
    ret nz

    jp $c350


    ld d, b
    xor a
    ret z

    jp $c350


    ld d, b
    ei
    db $eb
    add hl, de
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    call nz, $c400
    nop
    sbc b
    nop
    jp c, $8a00

    nop
    ld h, e
    nop
    add a
    add h
    add b
    db $e3
    adc h
    sub h
    add e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, [c]
    sub d
    add a
    ld e, h
    or [hl]
    ld e, [hl]
    nop
    nop
    inc bc
    ld c, e
    ret nz

    jp $af50


    ret z

    jp $af50


    ret z

    jp $fb50


    call $0a0a
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    ld bc, $01a8
    xor b
    nop
    ld b, d
    nop
    ccf
    nop
    ld [hl], l
    nop
    adc a
    nop
    rst $10
    add a
    add b
    adc a
    adc b
    adc l
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    adc a
    ld l, b
    sbc l
    add hl, sp
    ld [hl+], a
    ld e, c
    nop
    nop
    inc bc
    ld c, e
    ret nz

    jp $af50


    ret z

    jp $c350


    ld d, b
    jp $fa50


    db $fc
    ld a, [bc]
    rrca
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    ld bc, $0133
    inc sp
    nop
    cp d
    nop
    add b
    nop
    ld e, h
    nop
    add d
    nop
    cp b
    adc d
    add b
    add c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub $77
    or e
    ldh [$59], a
    ld b, h
    nop
    nop
    inc bc
    ld c, e
    ret nz

    jp $9c50


    ld b, b
    jp $c350


    ld d, b
    jp $df50


    db $ed
    rrca
    ld a, [bc]
    ld a, [bc]
    inc d
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    sub $00
    sub $00
    ret z

    nop
    sub d
    nop
    sbc h
    nop
    ld h, l
    nop
    and a
    add a
    add h
    sub c
    add b
    adc d
    sub h
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ld a, h
    ld l, l
    dec sp
    ld e, [hl]
    rst $30
    call nz, RST_00
    inc bc
    ld c, e
    ret nz

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $ff50


    db $eb
    dec b
    ld a, [bc]
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    call nz, $c400
    nop
    ld [hl], h
    nop
    ld h, d
    nop
    xor b
    nop
    cp l
    nop
    and l
    sub c
    sub h
    db $e3
    sbc c
    adc b
    cp b
    or h
    sub c
    add b
    ld d, b
    ld d, b
    add hl, bc
    xor [hl]
    add hl, sp
    ld e, c
    push hl
    dec sp
    nop
    nop
    inc bc
    ld c, e
    ret nz

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fe50


    cp $0f
    ld a, [bc]
    jr z, jr_07e_6053

    ld h, h
    nop
    nop
    nop
    inc a

jr_07e_6053:
    nop
    nop
    nop
    pop de
    nop
    pop de
    nop
    sbc e
    nop
    xor [hl]
    nop
    sub l
    nop
    sbc h
    nop
    or h
    adc d
    add b
    adc h
    add h
    or e
    or h
    adc d
    sub h
    sub d
    sub h
    ld d, b
    ld [hl], b
    ld c, c
    ld e, c
    add hl, sp
    rst $20
    sbc l
    nop
    nop

jr_07e_6076:
    inc bc
    ld c, e
    ret nz

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fb50


    ld a, [$0f0a]
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    push af
    nop
    push af
    nop
    call nc, $c300
    nop
    ld l, b
    nop
    ld l, b
    nop
    ld l, b
    sub d
    add b
    adc b
    add e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc e
    adc h
    ld e, c
    and e
    ccf
    xor l
    nop
    nop
    inc bc
    ld c, e
    ret nz

    ld [hl], l
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_6076

    ld h, a
    ld a, [bc]
    inc d
    dec b
    rrca
    nop
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    ret


    nop
    ret


    nop
    and h
    nop
    xor e
    nop
    ld [hl], h
    nop
    ld e, l
    nop
    ld l, c
    sub d
    add b
    adc l
    add e
    adc [hl]
    adc a
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    cpl
    xor [hl]
    sub e
    jp z, $bc3f

Call_07e_60ea:
    nop
    nop
    inc bc
    ld c, e
    ret nz

    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_6169

    jr nc, jr_07e_616b

    jr nc, @+$77

    jr nc, @+$68

    ld e, a
    rrca
    dec b
    dec b
    ld a, [bc]
    nop
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    xor e
    nop
    xor e
    nop
    sbc b
    nop
    add [hl]
    nop
    ld c, b
    nop
    ld a, b
    nop
    sub b
    adc a
    add b
    sub c
    add b
    sub d
    add h
    adc d
    sub h
    sub e
    adc [hl]
    ld d, b
    ld c, h
    inc bc
    sbc c
    ld e, c
    rlca
    jp c, RST_00

    inc bc
    ld c, e
    ret nz

    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_61a4

    jr nc, @+$77

    jr nc, jr_07e_61a8

    jr nc, jr_07e_61ab

    ld d, a
    dec b
    ld a, [bc]
    rrca
    inc d
    nop
    nop
    nop
    nop
    inc a
    nop
    nop
    nop
    call $cd00
    nop
    xor e
    nop
    jp nz, Jump_07e_5a00

    nop
    ld l, c
    nop
    ld [hl], l
    add [hl]
    adc [hl]
    sub c
    adc [hl]
    db $e3
    adc l
    adc b
    cp b
    and b
    ld d, b
    ld d, b
    add a
    ld l, l
    ld d, l
    ccf
    rst $30
    ld l, $00
    nop
    dec b
    dec sp
    ret c

    ld [$da60], a
    ret nz

jr_07e_6169:
    sub $d8

jr_07e_616b:
    jp $ea50


    ld h, b
    ei
    rst $28
    rrca
    dec b
    rrca
    inc d
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    rst $20
    nop
    rst $20
    nop
    sbc [hl]
    nop
    sub c
    nop
    push af
    nop
    sbc $00
    ret


    sub d
    add b
    adc l
    add e
    add b
    db $e3
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    sub d
    dec sp
    rst $30
    add hl, sp
    cp l
    nop
    nop
    dec b
    dec sp
    ret c

    jp $c350


    ld d, b

jr_07e_61a4:
    ld [$ea60], a
    ld h, b

jr_07e_61a8:
    jp $bf50


jr_07e_61ab:
    rst $28
    dec b
    rrca
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $013e
    ld a, $00
    sub l
    nop
    sbc b
    nop
    sbc [hl]
    nop
    jp c, $c500

    sub d
    adc b
    cp b
    and b
    sub [hl]
    add b
    db $e3
    sbc c
    sub h
    ld d, b
    ld d, b
    push bc
    xor [hl]
    cp c
    db $ec
    db $f4
    ld e, h
    nop
    nop
    dec b
    dec sp
    ret c

    jp nc, $eaf0

    ld h, b
    sub $d8
    jp $e250


    sub b
    db $dd
    db $dd
    inc d
    dec b
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $0112
    ld [de], a
    nop
    sbc h
    nop
    reti


    nop
    sbc b
    nop
    sub l
    nop
    rst $30
    add c
    sub h
    sub c
    add b
    or e
    or h
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld a, [c]
    xor [hl]
    ld b, h
    add a
    rst $30
    ld d, l
    nop
    nop
    dec b
    dec sp
    ret c

    sub $d8
    sub $d8
    sub $d8
    ld [c], a
    sub b
    jp $df50


    db $ed
    inc d
    ld a, [bc]
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $01ef
    rst $28
    nop
    ld c, l
    nop
    ld d, b
    nop
    adc a
    nop
    and [hl]
    nop
    ld a, [$8087]
    adc a
    adc b
    adc l
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    adc a
    sub d
    sbc l
    ld e, c
    dec sp
    rst $30
    nop
    nop
    dec b
    dec sp
    ret c

    sub $d8
    sub $d8
    ld [$d660], a
    ret c

    jp $dd50


    db $dd
    ld a, [bc]
    ld a, [bc]
    dec b
    rrca
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $016d
    ld l, l
    nop
    reti


    nop
    sbc h
    nop
    ld l, c
    nop
    sbc b
    nop
    rst $10
    adc d
    add b
    add c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    push hl
    ld d, d
    ld a, [c]
    dec [hl]
    cp c
    ld l, $00
    nop
    dec b
    dec sp
    ret c

    ld [c], a
    sub b
    jp $d650


    ret c

    ld [$d660], a
    ret c

    db $dd
    call $0f0f
    inc d
    inc d
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    push af
    nop
    push af
    nop
    cp e
    nop
    add l
    nop
    push bc
    nop
    reti


    nop
    xor a
    add a
    add h
    sub c
    sub h
    add [hl]
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld hl, sp-$6e
    ld e, c
    ld a, [c]
    sbc l
    ccf
    nop
    nop
    dec b
    dec sp
    ret c

    jp $af50


    ret z

    xor a
    ret z

    jp $af50


    ret z

    db $db
    rst $18
    ld a, [bc]
    rrca
    ld a, [bc]
    dec b
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $0117
    rla
    nop
    rst $30
    nop
    db $d3
    nop
    sub e
    nop
    call nz, $cb00
    add c
    add b
    adc l
    add [hl]
    adc b
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    sub c
    xor [hl]
    ld d, l
    ld b, c
    ld d, [hl]
    ccf
    nop
    nop
    dec b
    dec sp
    ret c

    xor a
    ret z

    jp $c350


    ld d, b
    xor a
    ret z

    xor a
    ret z

    db $db
    rst $18
    rrca
    inc d
    inc d
    dec b
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $0108
    ld [$bb00], sp
    nop
    or c
    nop
    ret z

    nop
    xor $00
    cp l
    sub d
    add b
    adc l
    add e
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld h, a
    ld l, l
    sbc h
    sbc c
    ld e, [hl]
    jp z, RST_00

    dec b
    dec sp
    ret c

    xor a
    ret z

    jp $9c50


    ld b, b
    jp $af50


    ret z

    db $dd
    db $ed
    ld a, [bc]
    dec b
    ld a, [bc]
    dec b
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $010c
    inc c
    nop
    jp nz, $b100

    nop
    adc h
    nop
    db $eb
    nop
    sub a
    adc l
    add b
    or e
    or h
    sub d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    push bc
    xor [hl]
    db $ec
    cp c
    ld e, [hl]
    rst $30
    nop
    nop
    dec b
    dec sp
    ret c

    jp $c350


    ld d, b
    xor a
    ret z

    xor a
    ret z

    jp $fd50


    db $eb
    dec b
    inc d
    ld a, [bc]
    rrca
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $010d
    dec c
    nop
    sbc e
    nop
    sub $00
    sbc b
    nop
    adc [hl]
    nop
    ldh a, [$81]
    sub h
    sub c
    add b
    or e
    or h
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    add d
    inc bc
    add hl, sp
    ld d, l
    ccf
    ld l, $00
    nop
    dec b
    dec sp
    ret c

    sub $d8
    xor a
    ret z

    jp $d650


    ret c

    jp $db50


    rst $28
    rrca
    rrca
    dec b
    inc d
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $010f
    rrca
    nop
    db $eb
    nop
    xor c
    nop
    or d
    nop
    sub h
    nop
    call z, $8886
    cp b
    and b
    sub c
    add b
    add e
    adc [hl]
    sub d
    sub h
    ld d, b
    jp $596d


    add hl, sp
    cp h
    rst $20
    nop
    nop
    dec b
    dec sp
    ret c

    jp $c350


    ld d, b
    xor a
    ret z

    jp $c350


    ld d, b
    sbc $dd
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $010a
    ld a, [bc]
    nop
    or h
    nop
    or h
    nop
    ld l, [hl]
    nop
    sbc b
    nop
    sbc b
    adc l
    sub h
    adc [hl]
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    reti


    adc h
    and e
    ld e, c
    ccf
    add hl, bc
    nop
    nop
    dec b
    dec sp
    ret c

    jp $af50


    ret z

    jp $af50


    ret z

    jp $fd50


    db $ed
    inc d
    ld a, [bc]
    dec b
    rrca
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    ld bc, $0106
    ld b, $00
    push af
    nop
    and [hl]
    nop
    adc d
    nop
    and [hl]
    nop
    and [hl]
    sub c
    adc b
    adc l
    add [hl]
    sub h
    adc h
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, d
    ld d, d
    ld [hl], e
    rlca
    ld e, [hl]
    db $e3
    nop
    nop
    dec b
    dec sp
    ret c

    jp $af50


    ret z

    xor a
    ret z

    jp $c350


    ld d, b
    cp l
    ei
    inc d
    rrca
    ld a, [bc]
    dec b
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    jp $c300


    nop
    ld a, b
    nop
    sub a
    nop
    cp [hl]
    nop
    add $00
    ld [c], a
    add c
    add b
    sub c
    adc b
    sbc b
    add b
    db $e3
    add e
    adc [hl]
    ld d, b
    ld d, b
    add hl, sp
    ld c, c
    xor $08
    add hl, bc
    sbc l
    nop
    nop
    dec b
    dec sp
    ret c

    jp $9c50


    ld b, b
    jp $c350


    ld d, b
    jp $bd50


    rst $28
    dec b
    rrca
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    db $e3
    nop
    db $e3
    nop
    jp z, $9100

    nop
    call nz, $9400
    nop
    and d
    adc [hl]
    adc d
    adc [hl]
    sub c
    adc b
    sbc c
    add b
    sub c
    sub h
    ld d, b
    ld d, b
    res 5, [hl]
    ld h, c
    ld [c], a
    ld a, [c]
    ld e, c
    nop
    nop
    dec b
    dec sp
    ret c

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fe50


    db $fd
    ld e, $28
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    rst $20
    nop
    rst $20
    nop
    or b
    nop
    sbc d
    nop
    or a
    nop
    cp e
    nop
    sbc b
    adc d
    adc b
    sub c
    adc b
    adc l
    sub c
    adc b
    adc d
    adc b
    ld d, b
    ld d, b
    ld l, d
    ld [hl], a
    or e
    sla d
    add hl, de
    nop
    nop
    dec b
    dec sp
    ret c

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fe50


    cp $0f
    ld a, [bc]
    rrca
    dec b
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    jp z, $ca00

    nop
    add sp, $00
    adc c
    nop
    cp d
    nop
    ld [hl], b
    nop
    reti


    sub d
    add b
    sub [hl]
    add b
    adc h
    sub h
    sub c
    add b
    db $e3
    ld d, b
    ld d, b
    sub $03
    or e
    set 4, b
    ld e, c
    nop
    nop
    dec b
    dec sp
    ret c

    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $f750


    rst $30
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    ei
    nop
    ei
    nop
    rst $28
    nop
    sbc [hl]
    nop
    or a
    nop
    ld l, l
    nop
    cp d
    add a
    add h
    sub c
    add b
    adc d
    sub h
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    inc bc
    inc bc
    pop af
    ld c, h
    db $eb
    ccf
    nop
    nop
    dec b
    dec sp
    ret c

    ld [hl], l
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_660c

    ld b, h
    dec b
    ld a, [bc]
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    jp hl


    nop
    jp hl


    nop
    sbc a
    nop
    sbc a
    nop
    sbc b
    nop
    or h
    nop
    or h
    add a
    sub h
    sub d
    adc b
    add [hl]
    adc b
    add c
    add b
    adc l
    add b
    ld d, b
    ld b, $8c
    and e
    ld e, c
    ccf
    dec [hl]
    nop
    nop
    dec b
    dec sp
    ret c

    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_6640

    jr nc, @+$77

    jr nc, jr_07e_6644

    jr nc, jr_07e_6627

    ld b, h
    inc d
    ld a, [bc]
    dec b
    rrca
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    and $00
    and $00
    sbc a
    nop
    sbc b
    nop
    or h
    nop
    pop bc
    nop
    sbc a
    sub c
    adc b
    sbc c
    add b
    db $e3
    add e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    add hl, bc
    ld c, c
    jr c, jr_07e_6602

    ccf
    rst $20
    nop
    nop
    dec b
    dec sp
    ret c

    ld [hl], l

jr_07e_6602:
    jr nc, @+$77

    jr nc, jr_07e_667b

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_6682

jr_07e_660c:
    ld h, h
    dec b
    rrca
    dec b
    rrca
    nop
    nop
    nop
    nop
    ld b, [hl]
    nop
    nop
    nop
    rst $20
    nop
    rst $20
    nop
    and c
    nop
    or a
    nop
    sbc b
    nop
    sbc a
    nop
    cp e
    adc d

jr_07e_6627:
    add b
    adc h
    add h
    or e
    or h
    adc d
    sub h
    sub d
    sub h
    ld d, b
    add a
    ld l, l
    ld d, [hl]
    ld d, l
    rst $20
    ld l, $00
    nop
    rlca
    ret nc

    nop
    ld [$d660], a
    ret c

jr_07e_6640:
    ld [$d660], a
    ret c

jr_07e_6644:
    sub $d8
    db $fd
    db $eb
    inc d
    rrca
    rrca
    inc d
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0107
    rlca
    nop
    or e
    nop
    xor d
    ld bc, $0019
    push af
    nop
    db $dd
    sub d
    add b
    adc l
    add e
    add b
    db $e3
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    adc a
    sub d
    sbc h
    cp e
    xor l
    ld e, c
    nop
    nop
    rlca
    ret nc

    nop
    ld [$d660], a
    ret c

jr_07e_667b:
    jp $d850


    call z, Call_07e_60ea
    db $db

jr_07e_6682:
    db $ed
    ld a, [bc]
    ld a, [bc]
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $019f
    sbc a
    nop
    ld hl, sp+$00
    xor d
    nop
    ld a, c
    nop
    or d
    nop
    ld a, [$808a]
    add c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    push hl
    ld d, h
    sbc h
    ld a, [c]
    dec [hl]
    pop af
    nop
    nop
    rlca
    ret nc

    nop
    sub $d8
    jp $d650


    ret c

    sub $d8
    sub $d8
    db $fd
    db $db
    ld a, [bc]
    rrca
    rrca
    dec b
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0118
    jr jr_07e_66ce

jr_07e_66ce:
    reti


    nop
    sbc b
    nop
    ldh [rP1], a
    push af
    nop
    push bc
    add a
    add h
    sub c
    sub h
    add [hl]
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    xor [hl]
    ld e, c
    ld [hl+], a
    rst $20
    ccf
    nop
    nop
    rlca
    ret nc

    nop
    jp $c350


    ld d, b
    jp Jump_07e_7550


    jr nc, @-$3b

    ld d, b
    db $fd
    sbc $0a
    rrca
    rrca
    dec b
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0114
    inc d
    nop
    jp hl


    nop
    db $dd
    nop
    db $ec
    nop
    add a
    nop
    or a
    adc d
    add h
    adc l
    sub e
    add b
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    add e
    ld d, h
    sbc h
    add hl, sp
    ld l, l
    ld e, [hl]
    nop
    nop
    rlca
    ret nc

    nop
    jp $c350


    ld d, b
    jp $d650


    ret c

    jp $df50


    db $db
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $016e
    ld l, [hl]
    nop
    call $c900
    nop
    xor b
    nop
    jp z, $da00

    sub c
    add b
    adc a
    sub h
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld hl, sp+$6d
    sbc h
    ld a, [c]
    ld e, c
    sbc l
    nop
    nop
    rlca
    ret nc

    nop
    jp $d650


    ret c

    jp $d650


    ret c

    jp $df50


    db $db
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $013e
    ld a, $01
    ld e, $00
    ld sp, hl
    nop
    xor c
    nop
    jp c, $e200

    add c
    add b
    adc l
    add [hl]
    adc b
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld e, [hl]
    nop
    ld d, l
    rst $30
    ld l, l
    xor b
    nop
    nop
    rlca
    ret nc

    nop
    jp $c350


    ld d, b
    xor a
    ret z

    sub $d8
    jp $de50


    db $dd
    rrca
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    rst $30
    nop
    rst $30
    nop
    xor l
    nop
    and l
    nop
    ld hl, sp+$01
    dec d
    nop
    cp l
    add [hl]
    add h
    adc l
    add [hl]
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    call $9992
    ld e, h
    ld c, h
    rst $08
    nop
    nop
    rlca
    ret nc

    nop
    xor a
    ret z

    jp $c350


    ld d, b
    xor a
    ret z

    jp $fd50


    db $ed
    dec b
    ld a, [bc]
    ld a, [bc]
    rrca
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0111
    ld de, $d900
    ld bc, $0025
    add l
    nop
    and l
    nop
    and l
    add a
    sub h
    xor [hl]
    sub c
    add h
    sub e
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    and $54
    sbc h
    add hl, sp
    dec sp
    pop hl
    nop
    nop
    rlca
    ret nc

    nop
    xor a
    ret z

    jp $9c50


    ld b, b
    sub $d8
    jp $fb50


    db $ed
    ld a, [bc]
    rrca
    dec b
    inc d
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0111
    ld de, $e100
    nop
    sub $00
    pop de
    nop
    db $dd
    nop
    db $dd
    adc d
    adc b
    adc l
    add [hl]
    sub h
    add e
    adc [hl]
    sub c
    add b
    ld d, b
    ld d, b
    sub l
    xor [hl]
    ld d, [hl]
    add hl, sp
    ld d, l
    ret z

    nop
    nop
    rlca
    ret nc

    nop
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    xor a
    ret z

    db $dd
    db $dd
    inc d
    rrca
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $012f
    cpl
    ld bc, $001c
    db $dd
    nop
    push bc
    nop
    db $e4
    nop
    db $e4
    adc d
    add b
    adc b
    sub c
    adc b
    cp b
    or h
    db $e3
    ld d, b
    ld d, b
    ld d, b
    jp hl


    sub d
    ld e, [hl]
    ld l, c
    ccf
    and c
    nop
    nop
    rlca
    ret nc

    nop
    sub $d8
    jp $9c50


    ld b, b
    sub $d8
    jp $df50


    db $ed
    ld a, [bc]
    inc d
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0125
    dec h
    nop
    push bc
    nop
    push de
    nop
    xor c
    nop
    db $ed
    nop
    db $dd
    adc a
    adc [hl]
    sub c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld hl, sp+$50
    ld d, b
    ld d, b
    ld a, h
    ld c, c
    adc [hl]
    dec sp
    adc d
    ld e, [hl]
    nop
    nop
    rlca
    ret nc

    nop
    sub $d8
    jp $af50


    ret z

    jp $c350


    ld d, b
    rst $18
    rst $18
    ld a, [bc]
    dec b
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0108
    ld [$9500], sp
    nop
    ld a, a
    nop
    db $dd
    ld bc, $0001
    pop hl
    sub c
    sub h
    db $e3
    sbc c
    adc b
    cp b
    or h
    sub c
    add b
    ld d, b
    ld d, b
    ld [c], a
    xor [hl]
    add hl, sp
    ld l, l
    dec sp
    ld de, $0000
    rlca
    ret nc

    nop
    sbc h
    ld b, b
    xor a
    ret z

    sbc h
    ld b, b
    xor a
    ret z

    jp $df50


    call c, $0a0f
    dec b
    inc hl
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0100
    nop
    nop
    add h
    nop
    or l
    nop
    or h
    nop
    call nz, $2401
    adc h
    add b
    adc l
    sub e
    add b
    adc b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    db $e3
    ld c, c
    db $d3
    inc de
    cp l
    ld e, h
    nop
    nop
    rlca
    ret nc

    nop
    jp $af50


    ret z

    adc b
    cp b
    jp $c350


    ld d, b
    db $dd
    rst $28
    add hl, de
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $0102
    ld [bc], a
    nop
    call nz, $1e01
    nop
    or a
    nop
    adc c
    nop
    cp c
    add h
    add b
    db $e3
    adc h
    sub h
    add e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    adc d
    dec [hl]
    adc a
    db $d3
    ccf
    nop
    nop
    rlca
    ret nc

    nop
    jp $9c50


    ld b, b
    jp $9c50


    ld b, b
    jp $dd50


    cp $0f
    dec b
    add hl, de
    dec b
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $012c
    inc l
    nop
    pop hl
    nop
    push de
    nop
    push de
    ld bc, $000f
    rst $08
    add a
    sub h
    and b
    adc b
    sbc b
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    ld l, l
    ccf
    sbc h
    ld e, c
    ld l, $00
    nop
    rlca
    ret nc

    nop
    jp $9c50


    ld b, b
    jp $9c50


    ld b, b
    jp $ff50


    db $ed
    dec b
    ld a, [bc]
    ld a, [bc]
    inc d
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $011a
    ld a, [de]
    nop
    db $ed
    nop
    or c
    ld bc, $0013
    and l
    nop
    cp l
    adc a
    sub h
    sub e
    add h
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld h, l
    ld d, d
    ld d, l
    sbc c
    di
    ld e, h
    nop
    nop
    rlca
    ret nc

    nop
    jp $c350


    ld d, b
    sbc h
    ld b, b
    sbc h
    ld b, b
    jp $ff50


    rst $28
    rrca
    dec b
    inc d
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    ld a, [$fa00]
    nop
    sbc c
    nop
    or l
    ld bc, $0023
    ret


    nop
    ret


    adc h
    add b
    sub c
    sub h
    adc h
    add b
    adc b
    adc l
    ld d, b
    ld d, b
    ld d, b
    inc sp
    adc h
    and e
    ld e, c
    xor b
    cp l
    nop
    nop
    rlca
    ret nc

    nop
    jp $c350


    ld d, b
    sbc h
    ld b, b
    jp $9c50


    ld b, b
    db $fd
    db $dd
    inc d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    sub $00
    sub $00
    ret


    nop
    sub c
    ld bc, $0005
    sub c
    nop
    or c
    add e
    add b
    add [hl]
    sub h
    sub e
    adc [hl]
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld b, a
    ld c, c
    jp z, $3fbc

    ld e, h
    nop
    nop
    rlca
    ret nc

    nop
    ld [hl], l
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_6ad2

    ld h, l
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, HeaderLogo
    inc b
    nop
    reti


    nop
    sub a
    nop
    and c
    nop
    rst $08
    nop
    adc a
    sub h
    sub e
    sub h
    add c
    adc [hl]
    or e
    or h
    sub e
    adc [hl]
    ld d, b
    ld d, b
    ld a, a
    xor [hl]
    ccf
    ld b, d
    ld b, [hl]
    ld e, h
    nop
    nop
    rlca
    ret nc

    nop
    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_6b17

    jr nc, jr_07e_6b19

    jr nc, @+$77

    jr nc, jr_07e_6b1c

    ld h, h
    dec b
    add hl, de
    rrca
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    nop
    pop af
    nop
    pop af
    nop
    ld a, [$cd00]
    nop
    cp c
    nop
    add l
    nop
    sbc l
    adc d
    add b
    adc b
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    jp nc, $2e03

    rst $30
    ccf

jr_07e_6ad2:
    add hl, bc
    nop
    nop
    rlca
    ret nc

    nop
    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_6b52

    jr nc, @+$77

    jr nc, jr_07e_6b56

    jr nc, jr_07e_6b59

    ld d, a
    inc d
    rrca
    dec b
    rrca
    nop
    nop
    nop
    nop
    ld d, b
    nop
    nop
    ld bc, $011e
    ld e, $00
    ld a, [c]
    nop
    xor c
    nop
    ld [hl], a
    nop
    sub d
    nop
    sub d
    add [hl]
    sub h
    sub c
    add b
    adc l
    add c
    sub h
    sub c
    sub h
    ld d, b
    ld d, b
    push bc
    ld d, d
    cp c
    cp l
    db $ec
    ld l, l
    nop
    nop
    dec bc
    rra
    xor b
    ld [$ea60], a
    ld h, b

jr_07e_6b17:
    sub $d8

jr_07e_6b19:
    ld [$d660], a

jr_07e_6b1c:
    ret c

    db $fd
    db $ed
    inc d
    ld a, [bc]
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $015d
    ld e, l
    nop
    rlc c
    ld d, $00
    jp z, $bc00

    ld bc, $813a
    sub h
    sub c
    add b
    or e
    or h
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    sub l
    ld c, c
    ld a, [hl]
    ccf
    ret z

    dec sp
    nop
    nop
    dec bc
    rra
    xor b
    db $fd
    add sp, -$3d
    ld d, b

jr_07e_6b52:
    jp c, $eac0

    ld h, b

jr_07e_6b56:
    ld [$fd60], a

jr_07e_6b59:
    db $ed
    dec b
    dec b
    rrca
    dec b
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0157
    ld d, a
    ld bc, $0042
    db $fc
    nop
    push hl
    ld bc, $0107
    rlca
    adc d
    add b
    adc b
    sub c
    adc b
    cp b
    or h
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld a, c
    sub d
    ld l, c
    ld d, l
    add hl, sp
    ld e, [hl]
    nop
    nop
    dec bc
    rra
    xor b
    ld [$ea60], a
    ld h, b
    ld [$d660], a
    ret c

    ld [$df60], a
    db $dd
    inc d
    rrca
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0121
    ld hl, $da00
    nop
    rst $28
    ld bc, $011f
    rlca
    nop
    db $ec
    sub d
    sub h
    sub e
    add b
    db $e3
    adc h
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld e, e
    sub d
    sbc c
    dec sp
    add hl, sp
    call nz, RST_00
    dec bc
    rra
    xor b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $db50


    rst $18
    dec b
    dec b
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $010a
    ld a, [bc]
    nop
    ld hl, sp+$01
    adc [hl]
    nop
    rlc b
    ld [$a200], a
    adc a
    add b
    sub c
    sub h
    sub d
    adc b
    and h
    adc l
    ld d, b
    ld d, b
    ld d, b
    xor c
    xor [hl]
    ld de, $3f72
    jp z, RST_00

    dec bc
    rra
    xor b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fd50


    rst $08
    inc hl
    ld e, $05
    dec b
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0145
    ld b, l
    nop
    di
    nop
    db $dd
    ld bc, $0036
    rst $08
    nop
    pop hl
    adc d
    sub h
    sub c
    adc [hl]
    add c
    add b
    or e
    or h
    sub e
    adc [hl]
    ld d, b
    jp hl


    ld c, c
    ld e, h
    ld e, [hl]
    ld l, c
    or [hl]
    nop
    nop
    dec bc
    rra
    xor b
    jp $af50


    ret z

    jp $d650


    ret c

    jp $fd50


    db $ed
    ld a, [bc]
    ld a, [bc]
    inc d
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0145
    ld b, l
    nop
    rst $18
    nop
    rst $28
    nop
    cp [hl]
    ld bc, $000a
    ld hl, sp-$71
    adc [hl]
    sub c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld hl, sp+$50
    ld d, b
    ld d, b
    and $92
    pop hl
    add hl, sp
    ccf
    dec sp
    nop
    nop
    dec bc
    rra
    xor b
    jp $c350


    ld d, b
    sub $d8
    jp $af50


    ret z

    rst $18
    sbc $14
    rrca
    dec b
    dec b
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0135
    dec [hl]
    nop
    ld hl, sp+$00
    rst $38
    nop
    and $00
    ld hl, sp+$00
    ld hl, sp-$76
    adc b
    adc l
    add [hl]
    sub h
    add e
    adc [hl]
    sub c
    add b
    ld d, b
    ld d, b
    ld hl, sp+$49
    ccf
    ld a, [c]
    ld e, c
    sbc l
    nop
    nop
    dec bc
    rra
    xor b
    jp $d650


    ret c

    jp $af50


    ret z

    jp $df50


    sbc $05
    rrca
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0162
    ld h, d
    ld bc, $0141
    rla
    nop
    cp c
    nop
    ld a, [$0301]
    add c
    add b
    adc l
    add [hl]
    adc b
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    add e
    ld d, h
    sbc h
    add hl, sp
    ld d, l
    ld e, [hl]
    nop
    nop
    dec bc
    rra
    xor b
    xor a
    ret z

    jp $c350


    ld d, b
    jp $d650


    ret c

    cp l
    rst $28
    ld a, [bc]
    rrca
    rrca
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0195
    sub l
    nop
    db $e3
    nop
    db $dd
    nop
    cp e
    nop
    db $ed
    nop
    rst $38
    sub c
    add b
    adc a
    sub h
    sub c
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    call nz, Call_07e_5eae
    rst $30
    pop af
    ld [$0000], a
    dec bc
    rra
    xor b
    sub $d8
    jp $c350


    ld d, b
    sub $d8
    jp $dd50


    cp $0a
    rrca
    dec b
    dec b
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0126
    ld h, $00
    jp nz, $b900

    ld bc, $011a
    add hl, sp
    nop
    ld a, [$e384]
    add a
    sub h
    xor b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, h
    ld c, c
    xor $e9
    ld a, [hl]
    ld e, c
    nop
    nop
    dec bc
    rra
    xor b
    sub $d8
    sub $d8
    jp $d650


    ret c

    jp $dd50


    db $ed
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0151
    ld d, c
    ld bc, $003a
    db $dd
    nop
    or l
    nop
    jp nz, $e600

    adc d
    add b
    adc b
    sub c
    adc b
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    adc a
    ld l, l
    ld a, [hl]
    add hl, sp
    ld e, c
    ccf
    nop
    nop
    dec bc
    rra
    xor b
    xor a
    ret z

    jp $d650


    ret c

    jp $c350


    ld d, b
    cp $fd
    dec b
    rrca
    ld a, [bc]
    dec b
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $01c7
    rst $00
    ld bc, $0017
    rst $00
    nop
    add a
    nop
    jp nz, $1301

    adc d
    add b
    add c
    adc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    dec sp
    ld d, h
    pop af
    dec [hl]
    push af
    sbc h
    nop
    nop
    dec bc
    rra
    xor b
    jp $af50


    ret z

    jp $af50


    ret z

    sub $d8
    rst $18
    sbc $05
    rrca
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0150
    ld d, b
    ld bc, $0012
    pop hl
    nop
    rst $30
    ld bc, $0006
    ld [c], a
    sub h
    adc b
    adc l
    add e
    add h
    xor b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, [c]
    sub d
    ld c, h
    pop af
    add a
    ld a, [hl]
    nop
    nop
    dec bc
    rra
    xor b
    jp $af50


    ret z

    jp $c350


    ld d, b
    jp $bd50


    cp $0a
    dec b
    ld a, [bc]
    dec b
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld [bc], a
    ld a, c
    ld [bc], a
    ld a, c
    nop
    ld e, d
    nop
    ld e, a
    nop
    or h
    nop
    sub $01
    ld b, d
    add a
    add b
    adc a
    adc b
    adc l
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    push hl
    inc bc
    dec [hl]
    ld a, [c]
    pop af
    ld c, h
    nop
    nop
    dec bc
    rra
    xor b
    jp $9c50


    ld b, b
    jp $c350


    ld d, b
    jp $db50


    cp $0f
    rrca
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0135
    dec [hl]
    nop
    db $eb
    nop
    and h
    nop
    db $fc
    ld bc, $0015
    rst $18
    add a
    add h
    sub c
    sub h
    add [hl]
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    db $e3
    ld c, c
    ret


    db $d3
    ld e, h
    ret c

    nop
    nop
    dec bc
    rra
    xor b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $ef50


    rst $30
    ld a, [bc]
    add hl, de
    ld a, [bc]
    inc d
    rst $38
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0117
    rla
    nop
    rst $18
    ld bc, $004d
    rst $08
    nop
    adc e
    nop
    pop bc
    add h
    add b
    db $e3
    adc h
    sub h
    add e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    push de
    sub d
    ld e, h
    inc hl
    or [hl]
    db $e3
    nop
    nop
    dec bc
    rra
    xor b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fe50


    cp $0a
    inc d
    ld a, [bc]
    dec b
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    nop
    rlc b
    rlc b
    ld h, e
    ld bc, $00ed
    ld e, d
    nop
    ld h, c
    ld bc, $93ed
    sub h
    add c
    adc [hl]
    sub e
    sub h
    add c
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    adc b
    ld d, h
    ccf
    dec [hl]
    rst $30
    ld l, $00
    nop
    dec bc
    rra
    xor b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $f750


    rst $30
    dec b
    rrca
    rrca
    inc d
    ld h, h
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0125
    dec h
    ld bc, $003b
    xor a
    nop
    add $00
    xor $01
    add hl, bc
    add c
    sub h
    db $e3
    sub d
    sub h
    sub e
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    pop af
    sub d
    ret nc

    ld e, c
    push de
    ld [hl+], a
    nop
    nop
    dec bc
    rra
    xor b
    ld [hl], l
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_6f8b

    ld d, a
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0142
    ld b, d
    nop
    jp nz, $f500

    nop
    add sp, $00
    add b
    nop
    or [hl]
    adc h
    adc b
    sub c
    sub h
    sub e
    add b
    adc l
    adc d
    sub h
    ld d, b
    ld d, b
    add b
    ld l, b
    ld d, l
    ccf
    push de
    ld e, c
    nop
    nop
    dec bc
    rra
    xor b
    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_6fee

    jr nc, @+$77

    jr nc, jr_07e_6ff2

    jr nc, @+$67

    db $76
    rrca
    dec b
    rrca
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld e, d
    nop
    nop

jr_07e_6f8b:
    ld bc, $011c
    inc e
    nop
    ld [$df00], a
    nop
    cp $00
    ld a, [hl]
    nop
    or h
    adc d
    add h
    adc l
    sub e
    add b
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    ld e, c
    ld c, c
    ld e, h
    cp h
    push de
    jp z, RST_00

    dec bc
    rra
    xor b
    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_7029

    jr nc, @+$77

    jr nc, jr_07e_702d

    jr nc, jr_07e_700e

    ld b, h
    ld a, [bc]
    ld a, [bc]
    rrca
    dec b
    nop
    nop
    nop
    nop
    ld e, d
    nop
    nop
    ld bc, $0156
    ld d, [hl]
    nop
    pop af
    nop
    cp c
    nop
    adc h
    nop
    and a
    nop
    and $81
    add h
    sub e
    adc [hl]
    add c
    add h
    sub e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    push hl
    ld d, h
    ld a, [c]
    dec [hl]
    ld l, $9c
    nop
    nop
    rrca
    ld b, d
    ld b, b
    ld [$ea60], a
    ld h, b

jr_07e_6fee:
    ld [$ea60], a
    ld h, b

jr_07e_6ff2:
    ld [$fd60], a
    db $ed
    rrca
    rrca
    inc d
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $015b
    ld e, e
    ld bc, $0014
    ret nz

    ld bc, $011c
    jr c, jr_07e_700e

jr_07e_700e:
    db $fc
    add a
    add h
    sub c
    sub h
    add [hl]
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, h
    ld c, c
    xor $59
    ccf
    jp hl


    nop
    nop
    rrca
    ld b, d
    ld b, b
    ld [$ea60], a
    ld h, b

jr_07e_7029:
    ld [$ea60], a
    ld h, b

jr_07e_702d:
    ld [$fd60], a
    rst $28
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0179
    ld a, c
    ld bc, $0064
    db $fc
    nop
    call z, $e200
    ld bc, $8a0a
    add b
    adc b
    sub c
    adc b
    adc d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    and $92
    add hl, sp
    pop hl
    sbc h
    ld e, h
    nop
    nop
    rrca
    ld b, d
    ld b, b
    ld [$ea60], a
    ld h, b
    ld [$ea60], a

jr_07e_7067:
    ld h, b
    ld [$df60], a
    cp $0f
    inc d
    ld a, [bc]
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $015d
    ld e, l
    ld bc, $011a
    ld e, $01
    ld a, [bc]
    ld bc, $011c
    inc e
    adc d
    adc b
    adc l
    add [hl]
    sub h
    add e
    adc [hl]
    sub c
    add b
    ld d, b
    ld d, b
    add a
    inc bc
    ld d, l
    ld l, $56
    rst $20
    nop
    nop
    rrca
    ld b, d
    ld b, b
    jp $c350


    ld d, b
    jp Jump_07e_7550


    jr nc, jr_07e_7067

    ld d, b
    db $fd
    cp $0f
    inc d
    inc d
    rrca
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, HeaderCGBFlag
    ld b, e
    nop
    call c, $ce00
    ld bc, $0152
    inc [hl]
    ld bc, $9216
    add b
    adc l
    add e
    add b
    db $e3
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    add b
    ld d, d
    ccf
    ld e, c
    rst $20
    ld d, l
    nop
    nop
    rrca
    ld b, d
    ld b, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fd50


    rst $28
    dec b
    ld a, [bc]
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0155
    ld d, l
    ld bc, $0122
    inc d
    ld bc, $0034
    xor d
    nop
    and $8a
    add h
    adc l
    sub e
    add b
    sub c
    adc [hl]
    sub d
    sub h
    ld d, b
    ld d, b
    dec sp
    sub d
    dec [hl]
    push af
    rst $20
    ccf
    nop
    nop
    rrca
    ld b, d
    ld b, b
    sub $d8
    jp $c350


    ld d, b
    sub $d8
    jp $dd50


    rst $28
    rrca
    dec b
    rrca
    dec b
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0176
    db $76
    ld bc, $0032
    or $01
    add hl, de
    ld bc, $0022
    ld a, [$8894]
    adc l
    add e
    add h
    xor b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld b, $8c
    dec [hl]
    ld e, c
    and e
    inc de
    nop
    nop
    rrca
    ld b, d
    ld b, b
    jp $c350


    ld d, b
    sub $d8
    sub $d8
    sub $d8
    cp $df
    rrca
    ld a, [bc]
    inc d
    rrca
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0157
    ld d, a
    ld bc, $0002
    rst $30
    ld bc, $0121
    scf
    ld bc, $9107
    adc b
    sbc c
    add b
    db $e3
    add e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld h, l
    inc bc
    ld d, [hl]
    ld d, l
    sbc c
    di
    nop
    nop
    rrca
    ld b, d
    ld b, b
    xor a
    ret z

    jp $c350


    ld d, b
    xor a
    ret z

    xor a
    ret z

    ei
    rst $28
    inc d
    rrca
    dec b
    inc d
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0135
    dec [hl]
    nop
    cp [hl]
    nop
    sbc $01
    ld l, [hl]
    nop
    ld hl, sp+$00
    ld hl, sp-$74
    add b
    sub c
    sub h
    adc h
    add b
    adc b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld [hl], b
    ld l, l
    add hl, sp
    ld e, c
    ccf
    sbc l
    nop
    nop
    rrca
    ld b, d
    ld b, b
    sub $d8
    jp $d650


    ret c

    jp $af50


    ret z

    db $fd
    rst $28
    rrca
    ld a, [bc]
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0194
    sub h
    ld bc, $015e
    ld c, c
    nop
    xor b
    nop
    or d
    nop
    or d
    sub d
    add b
    adc b
    add e

Jump_07e_71eb:
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ret nc

    sub d
    ld e, c
    ccf
    rst $08
    ld a, [c]
    nop
    nop
    rrca
    ld b, d
    ld b, b
    jp $c350


    ld d, b
    sub $d8
    ld [$c360], a
    ld d, b
    db $fd
    sbc $0a
    dec b
    rrca
    rrca
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0157
    ld d, a
    ld bc, HeaderLogo
    jp hl


    nop
    sbc b
    nop
    add $00
    jp c, $8087

    add [hl]
    add b
    adc l
    add h
    db $e3
    sub c
    sub h
    ld d, b
    ld d, b
    ld d, $52
    ld b, c
    db $d3
    ccf
    cp l
    nop
    nop
    rrca
    ld b, d
    ld b, b
    sub $d8
    jp $c350


    ld d, b
    sub $d8
    jp $fd50


    rst $08
    inc d
    add hl, de
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, HeaderNewLicenseeCode
    ld b, h
    ld bc, $000e
    ret c

    ld bc, $001f
    call nc, $d400
    adc [hl]
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    sub c
    sub h
    ld d, b
    ld d, b
    ret z

    ld [hl], a
    jp $dcd4


    rst $30
    nop
    nop
    rrca
    ld b, d
    ld b, b
    xor a
    ret z

    jp $d650


    ret c

    jp $d650


    ret c

    cp l
    rst $28
    dec b
    dec b
    inc d
    rrca
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0135
    dec [hl]
    nop
    jp z, $d100

    ld bc, $0102
    rlca
    ld bc, $8c07
    sub h
    sub h
    adc h
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rst $10
    adc h
    and e
    dec sp
    adc d
    cp c
    nop
    nop
    rrca
    ld b, d
    ld b, b
    jp $c350


    ld d, b
    cp e
    add b
    xor a
    ret z

    jp $fd50


    rst $28
    inc d
    dec b
    rrca
    inc d
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $012d
    dec l
    ld bc, $0018
    jp $3c01


    nop
    and b
    nop
    ldh a, [$8d]
    adc b
    cp b
    or h
    db $e3
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    call nc, $d349
    ccf
    and e
    ld e, h
    nop
    nop
    rrca
    ld b, d
    ld b, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    xor a
    ret z

    ei
    cp $19
    dec b
    inc d
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, HeaderComplementCheck
    ld c, l
    ld bc, $015e
    ld a, [de]
    nop
    call c, $c400

jr_07e_730c:
    nop
    or $87
    add b
    or e
    or h
    sub d
    add b
    adc h
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld a, [c]
    sub d
    ld d, l
    dec sp
    ld a, [hl]
    add a
    nop
    nop
    rrca
    ld b, d
    ld b, b
    jp $9c50


    ld b, b
    jp Jump_07e_7550


    jr nc, jr_07e_73a2

    jr nc, jr_07e_730c

    cp $0f
    dec b
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld [bc], a
    cp a
    ld [bc], a
    cp a
    nop
    ld h, l
    nop
    ld l, d
    nop
    cp h
    nop
    ld [c], a
    ld bc, $875a
    add b
    adc a
    adc b
    adc l
    add b
    sub d
    sub h
    ld d, b
    ld d, b
    ld d, b
    db $dd
    ld d, h
    sbc h
    dec sp
    ccf
    ld e, c
    nop
    nop
    rrca
    ld b, d
    ld b, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fe50


    rst $30
    ld a, [bc]
    dec b
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0183
    add e
    ld bc, $0022
    ld hl, sp+$00
    cp [hl]
    nop
    jp nz, $c200

    adc b
    adc l
    adc [hl]
    adc h
    sub h
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld h, a
    ld c, c
    ld e, [hl]
    ld e, h
    sbc c
    jp z, RST_00

    rrca
    ld b, d
    ld b, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b

jr_07e_73a2:
    jp $fe50


    cp $0a
    ld a, [bc]
    dec b
    dec b
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0177
    ld [hl], a
    ld bc, $0118
    ld [bc], a
    nop
    ret z

    ld bc, $0052
    jp c, $808d

    or e
    or h
    sub d
    adc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc e
    sub d
    add hl, sp
    or $3b
    ld e, h
    nop
    nop
    rrca
    ld b, d
    ld b, b
    jp $c350


    ld d, b
    jp $c350


    ld d, b
    jp $fb50


    rst $20
    rrca
    dec b
    dec b
    ld a, [bc]
    ld h, h
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, HeaderOldLicenseeCode
    ld c, e
    nop
    jp nc, Jump_07e_4c01

    nop
    add $01
    jr nc, jr_07e_73f9

jr_07e_73f9:
    sub $8e
    adc h
    sub h
    sub d
    sub h
    sub e
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld c, h
    inc bc
    sbc c
    ld e, c
    sbc l
    ld a, [hl]
    nop
    nop
    rrca
    ld b, d
    ld b, b
    ld [hl], l
    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_748f

    ld b, [hl]
    dec b
    ld a, [bc]
    ld a, [bc]
    dec b
    nop
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, HeaderRAMSize
    ld c, c
    ld bc, $011a
    inc a
    nop
    sub d
    nop
    xor d
    nop
    cp [hl]
    add [hl]
    adc [hl]
    sub c
    adc [hl]
    db $e3
    adc l
    adc b
    cp b
    and b
    ld d, b
    ld d, b
    ld l, e
    ld [hl], a
    ld b, h
    rlca
    add hl, bc
    ld [$0000], sp
    rrca
    ld b, d
    ld b, b
    ld [hl], l
    jr nc, jr_07e_74c3

    jr nc, @+$77

    jr nc, @+$77

    jr nc, jr_07e_74c9

    jr nc, @+$69

    db $76
    inc d
    rrca
    rrca
    rrca
    nop
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $0109
    add hl, bc
    ld bc, $000e
    call c, $d600
    nop
    add d
    ld bc, $8418
    add c
    adc b
    sub [hl]
    add b
    sub c
    add b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    xor e
    ld c, c
    add hl, sp
    ldh a, [$c0]
    ld l, l
    nop
    nop
    rrca
    ld b, d
    ld b, b
    ld [hl], l
    jr nc, @+$77

    jr nc, jr_07e_7500

    jr nc, @+$77

    jr nc, @+$77

jr_07e_748f:
    jr nc, @+$78

    ld d, a
    rrca
    dec b
    dec b
    ld a, [bc]
    nop
    nop
    nop
    nop
    ld h, h
    nop
    nop
    ld bc, $01a9
    xor c
    nop
    or d
    nop
    or b
    nop
    ret nz

    nop
    sub $00
    sub $91
    add b
    adc l
    sub e
    add b
    db $e3
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    call $2f8c
    ld hl, $7552
    ld c, $00
    ld b, c

jr_07e_74bf:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a

jr_07e_74c3:
    ld a, d
    cp $ff
    jr nz, jr_07e_74cd

    ld a, e

jr_07e_74c9:
    cp $ff
    jr z, jr_07e_74e0

jr_07e_74cd:
    ldh a, [$e2]
    cp d
    jr c, jr_07e_74e0

    jr z, jr_07e_74d6

    jr jr_07e_74dd

jr_07e_74d6:
    ldh a, [$e1]
    cp e
    jr c, jr_07e_74e0

    jr z, jr_07e_74e0

jr_07e_74dd:
    inc bc
    jr jr_07e_74bf

jr_07e_74e0:
    ld hl, $756e
    ld a, $3b
    call $30fe
    ld de, $c608
    ld bc, $0046
    call $3026
    ld a, $81
    ld [$d106], a
    ld a, $01
    ld [$d10c], a
    ld a, $ff
    ld [$d107], a

jr_07e_7500:
    ld hl, $d892
    call $2f53
    ld a, $fd
    ld [$cd2a], a
    ld a, $29
    ld [$cd20], a
    ld a, $cd
    ld [$cd21], a
    ld a, $08
    ld [$cd22], a
    ld a, $c6
    ld [$cd23], a
    ld hl, $7546
    ld de, $cd2b
    ld bc, $000b
    call $3026
    ld a, $2b
    ld [$cd24], a
    ld a, $cd
    ld [$cd25], a
    ld a, $38
    ld [$cd26], a
    ld a, $c6
    ld [$cd27], a
    ld a, $46
    ld hl, $798f
    rst $08
    ret


    adc [hl]
    add e
    add e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b

Jump_07e_7550:
    ld d, b
    ld d, b
    ld c, c
    ld [de], a
    sub d
    inc h
    db $db
    ld [hl], $24
    ld c, c
    ld l, l
    ld e, e
    or [hl]
    ld l, l
    rst $38
    ld a, a
    ld c, b
    sub d
    sub c
    and h
    jp c, $23b6

    ret


    ld l, h
    db $db
    or l
    db $ed
    rst $38
    rst $38
    ld bc, $ca00
    ld c, a
    db $eb
    ld [hl+], a
    nop
    ld [$0000], sp
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    dec b
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ld de, $0900
    nop
    ld b, $00
    dec bc
    nop
    ld [$0800], sp
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc b
    nop
    rlca
    ld [hl+], a
    ret z

    ld b, l
    nop
    ld bc, $0000
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    dec b
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ld de, $0900
    nop
    rlca
    nop
    inc c
    nop
    add hl, bc
    nop
    add hl, bc
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rlca
    nop
    dec a
    ld a, [hl-]
    ld b, l
    ld [hl+], a
    nop
    stop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    dec b
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    add hl, bc
    nop
    ld a, [bc]
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sbc e
    nop
    xor h
    ld h, $62
    nop
    nop
    inc bc
    nop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    nop
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    inc d
    nop
    rlca
    nop
    ld [$0700], sp
    nop
    ld a, [bc]
    nop
    dec bc
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sbc b
    nop
    jp z, Jump_07e_71eb

    ld [hl], e
    nop
    stop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    nop
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    jr jr_07e_7681

jr_07e_7681:
    ld [$0600], sp
    nop
    ld b, $00
    add hl, bc
    nop
    rlca
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sbc [hl]
    nop
    dec a
    ld a, [c]
    ld h, $3a
    nop
    inc bc
    nop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    dec b
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    jr jr_07e_76bc

jr_07e_76bc:
    ld [$0700], sp
    nop
    rlca
    nop
    ld a, [bc]
    nop
    ld [$8684], sp
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add l
    nop
    ld h, d
    ld [hl+], a
    inc l
    ld [hl], e
    nop
    ld c, $00
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    dec b
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    inc de
    nop
    ld [$0600], sp
    nop
    dec bc
    nop
    dec c
    nop
    dec bc
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    xor $00
    adc [hl]
    ld [$005e], sp
    nop
    ld [bc], a
    nop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    xor d
    dec b
    dec b
    dec b
    nop
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    inc de
    nop
    ld [$0700], sp
    nop
    inc c
    nop
    ld c, $00
    inc c
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub e
    nop
    ld d, [hl]
    db $db
    ret z

    ld h, $00
    ld a, [bc]
    nop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    dec b
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    inc de
    nop
    inc c
    nop
    ld [$0d00], sp
    nop
    inc c
    nop
    ld a, [bc]
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ldh a, [rP1]
    rlca
    xor $6d
    ld e, [hl]
    nop
    ld [bc], a
    nop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    dec b
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    inc de
    nop
    inc c
    nop
    add hl, bc
    nop
    ld c, $00
    dec c
    nop
    dec bc
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    or $00
    ld a, [c]
    sbc l
    ld e, c
    ret c

    nop
    inc c
    nop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    dec b
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    inc de
    nop
    dec bc
    nop
    ld [$0e00], sp
    nop
    dec bc
    nop
    ld a, [bc]
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rst $28
    nop
    add hl, bc
    xor $56
    ld e, [hl]
    nop
    ld [bc], a
    nop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    dec b
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    inc de
    nop
    dec bc
    nop
    add hl, bc
    nop
    rrca
    nop
    inc c
    nop
    dec bc
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    db $ec
    nop
    or a
    sub d
    adc b
    nop
    nop
    ld a, [bc]
    nop
    nop
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    xor d
    dec b
    dec b
    dec b
    nop
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$8684], sp
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    db $ec
    nop
    adc b
    sub d
    or a
    nop
    nop
    ld bc, $0000
    ld a, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, d
    xor d
    dec b
    dec b
    dec b
    nop
    inc d
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    ld [$0900], sp
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    add hl, bc
    add h
    add [hl]
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_07e_7d50:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
