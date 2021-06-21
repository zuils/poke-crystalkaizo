; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    call Call_024_401c
    jr c, jr_024_400d

    call Call_024_402d
    jr nc, jr_024_400d

    ld [hl], c
    xor a
    ret


jr_024_400d:
    scf
    ret


    call Call_024_401c
    jr nc, jr_024_4017

    xor a
    ld [hl], a
    ret


jr_024_4017:
    scf
    ret


    jp Jump_024_401c


Call_024_401c:
Jump_024_401c:
    ld hl, $dc7c
    ld b, $0a

jr_024_4021:
    ld a, [hl+]
    cp c
    jr z, jr_024_402a

    dec b
    jr nz, jr_024_4021

    xor a
    ret


jr_024_402a:
    dec hl
    scf
    ret


Call_024_402d:
    call Call_024_4040
    ld b, a
    ld hl, $dc7c

jr_024_4034:
    ld a, [hl+]
    and a
    jr z, jr_024_403d

    dec b
    jr nz, jr_024_4034

    xor a
    ret


jr_024_403d:
    dec hl
    scf
    ret


Call_024_4040:
    xor a
    ld [$d1ea], a
    ld hl, $4066

jr_024_4047:
    ld a, [hl+]
    cp $ff
    jr z, jr_024_405f

    cp c
    jr z, jr_024_405d

    push bc
    push hl
    ld c, a
    call Call_024_401c
    jr c, jr_024_405b

    ld hl, $d1ea
    inc [hl]

jr_024_405b:
    pop hl
    pop bc

jr_024_405d:
    jr jr_024_4047

jr_024_405f:
    ld a, $0a
    ld hl, $d1ea
    sub [hl]
    ret


    ld bc, $ff04

Call_024_4069:
    ldh a, [$9d]
    push af
    ld a, b
    rst $10
    call $1078
    pop af
    rst $10
    ret


    call $18c3
    jr z, jr_024_40a4

    call Call_024_40a6
    nop
    jr nc, jr_024_40a4

    call $2f8c
    ld b, a
    and $7f
    cp b
    jr nz, jr_024_40a4

    call $2d05
    and a
    jr nz, jr_024_40a4

    call Call_024_40de
    call Call_024_40bf
    jr nc, jr_024_40a4

    ld e, a
    call Call_024_420d
    ld a, $24
    ld hl, $4241
    call $261f
    scf
    ret


jr_024_40a4:
    xor a
    ret


Call_024_40a6:
    ld a, $04
    ld hl, $5401
    rst $08
    ret


Call_024_40ad:
    push hl
    push bc
    push de
    push af
    ld a, $03
    ld hl, $4000
    rst $08
    pop af
    and $07
    and c
    pop de
    pop bc
    pop hl
    ret


Call_024_40bf:
    ld a, [$d040]
    and a
    jr z, jr_024_40dc

    ld c, a
    call $2f8c
    ldh a, [$e1]
    swap a
    and $1f
    call $3110
    ld c, a
    ld b, $00
    ld hl, $d041
    add hl, bc
    ld a, [hl]
    scf
    ret


jr_024_40dc:
    xor a
    ret


Call_024_40de:
    ld a, $03
    ld hl, $4000
    rst $08
    ld a, c
    ld [$d03e], a
    ld hl, $d040
    ld bc, $000b
    xor a
    call $3041
    ld de, $dc7c
    ld a, $0a

jr_024_40f7:
    ld [$d03f], a
    ld a, [de]
    and a
    jr z, jr_024_412e

    ld hl, $4467
    ld bc, $000c
    call $30fe
    ld a, [$d03e]
    and [hl]
    jr z, jr_024_412e

    ld bc, $fffa
    add hl, bc
    ld a, [$dcb5]
    cp [hl]
    jr nz, jr_024_411e

    inc hl
    ld a, [$dcb6]
    cp [hl]
    jr z, jr_024_412e

jr_024_411e:
    ld a, [$d040]
    ld c, a
    ld b, $00
    inc a
    ld [$d040], a
    ld hl, $d041
    add hl, bc
    ld a, [de]
    ld [hl], a

jr_024_412e:
    inc de
    ld a, [$d03f]
    dec a
    jr nz, jr_024_40f7

    ret


    ld a, [$dc31]
    and a
    jr z, jr_024_4171

    dec a
    ld c, a
    ld b, $00
    ld hl, $4627
    ld a, $06
    call $30fe
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2fec
    jr nc, jr_024_4171

    call Call_024_4178
    inc hl
    inc hl
    ld a, [hl+]
    ld e, a
    push hl
    call Call_024_420d
    pop hl
    ld de, $d048
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, $24
    ld hl, $4173
    call $261f
    scf
    ret


jr_024_4171:
    xor a
    ret


    adc e
    ld e, $03
    ld b, c
    ld b, d

Call_024_4178:
    ld a, [$dc31]
    dec a
    ld c, a
    ld b, $00
    ld hl, $4627
    ld a, $06
    call $30fe
    ret


    ld a, [$d19a]
    cp $01
    jr z, jr_024_4195

    cp $02
    jr z, jr_024_4195

    xor a
    ret


jr_024_4195:
    scf
    ret


    scf
    ret


Call_024_4199:
    ld a, [$c2dc]
    and a
    jr nz, jr_024_41e7

    call $2d05
    and a
    jr nz, jr_024_41e7

    ld a, b
    ld [$dbf9], a
    ld hl, $445f
    ld bc, $000c
    call $30fe
    ld d, h
    ld e, l
    ld hl, $0004
    add hl, de
    ld a, [hl]
    call Call_024_40ad
    jr z, jr_024_41e7

    ld hl, $0002
    add hl, de
    ld a, [$dcb5]
    cp [hl]
    jr nz, jr_024_41d9

    ld hl, $0003
    add hl, de
    ld a, [$dcb6]
    cp [hl]
    jr nz, jr_024_41d9

    ld b, $24
    ld hl, $4660
    jr jr_024_41f0

jr_024_41d9:
    ld hl, $0005
    add hl, de
    ld b, [hl]
    ld hl, $0006
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_024_41f0

jr_024_41e7:
    ld b, $24
    ld de, $4209
    call $2674
    ret


jr_024_41f0:
    ld a, b
    ld [$d002], a
    ld a, l
    ld [$d003], a
    ld a, h
    ld [$d004], a
    ld b, $24
    ld de, $4205
    call $2674
    ret


    ld [bc], a
    ld [bc], a
    ret nc

    sub b
    nop
    ld d, a
    ld b, [hl]
    sub b

Call_024_420d:
Jump_024_420d:
    nop
    nop
    ld a, e
    ld [$dbf9], a
    and a
    jr nz, jr_024_421d

    ld a, $24
    ld hl, $4233
    jr jr_024_4229

jr_024_421d:
    ld hl, $445f
    ld bc, $000c
    ld a, e
    call $30fe
    ld a, $24

jr_024_4229:
    ld de, $d03f
    ld bc, $000c
    call $0e8d
    ret


    nop
    nop
    inc h
    jr c, jr_024_427a

    ld c, h
    inc a
    ld b, d
    sub c
    ld d, $65
    ld d, l
    ld [hl], c
    ld d, b
    ld c, b
    nop
    ld c, $24
    ld l, a
    ld b, d
    ld [bc], a
    ld c, b
    ret nc

    ld d, h
    ld c, $24
    db $eb
    ld b, d
    ld c, c
    ld c, $04
    push hl
    ld d, e
    sub c
    ld c, $24
    ld e, h
    ld b, d
    inc bc
    ld b, c
    ld b, d
    ld e, $03
    jp Jump_024_420d


    ld c, $24
    ld l, d
    ld b, d
    adc e
    ld e, $03
    ld b, c
    ld b, d
    ld e, $04
    jp Jump_024_420d


    call Call_024_427c
    call Call_024_427c
    ld a, $41
    ld hl, $60d3

jr_024_427a:
    rst $08
    ret


Call_024_427c:
    call Call_024_433f
    call Call_024_4357
    call Call_024_4292
    call Call_024_4357
    call Call_024_4375
    call Call_024_4357
    call Call_024_4292
    ret


Call_024_4292:
    ld a, [$dbf9]
    ld b, a
    call Call_024_4363
    ret


    ld a, b
    ld [$d002], a
    ld a, e
    ld [$d003], a
    ld a, d
    ld [$d004], a
    call Call_024_42b3
    call Call_024_42b3
    ld a, $41
    ld hl, $60d3
    rst $08
    ret


Call_024_42b3:
    call Call_024_433f
    call Call_024_4357
    call Call_024_42c9
    call Call_024_4357
    call Call_024_4375
    call Call_024_4357
    call Call_024_42c9
    ret


Call_024_42c9:
    call Call_024_4375
    ld hl, $c4c9
    ld [hl], $62
    inc hl
    inc hl
    ld a, [$d002]
    ld b, a
    ld a, [$d003]
    ld e, a
    ld a, [$d004]
    ld d, a
    call Call_024_4069
    ret


    ld de, $006c
    call $3c23
    jr jr_024_42f1

    call Call_024_431d
    call Call_024_4355

jr_024_42f1:
    call Call_024_432f
    call Call_024_4355
    call Call_024_433b
    call Call_024_4355
    call Call_024_432f
    call Call_024_4355
    call Call_024_433b
    call Call_024_4355
    call Call_024_432f
    call Call_024_4355
    call Call_024_433b
    call Call_024_4355
    ret


    ld de, $000e
    call $3c23
    ret


Call_024_431d:
    ld hl, $432a
    call $1057
    ld de, $006b
    call $3c23
    ret


    ld d, $80
    ld d, l
    ld [hl], c
    ld d, b

Call_024_432f:
    ld hl, $4336
    call $1057
    ret


    ld d, $88
    ld d, l
    ld [hl], c
    ld d, b

Call_024_433b:
    call $103e
    ret


Call_024_433f:
    call $3c55
    ld de, $006a
    call $3c23
    call Call_024_4375
    call $1ad2
    ld a, $13
    ld hl, $5188
    rst $08
    ret


Call_024_4355:
    jr jr_024_4357

Call_024_4357:
jr_024_4357:
    ld c, $14
    call $0468
    ld a, $13
    ld hl, $5188
    rst $08
    ret


Call_024_4363:
    push bc
    call Call_024_4375
    ld hl, $c4b5
    ld [hl], $62
    inc hl
    inc hl
    ld d, h
    ld e, l
    pop bc
    call Call_024_4380
    ret


Call_024_4375:
    ld hl, $c4a0
    ld b, $02
    ld c, $12
    call $0fe8
    ret


Call_024_4380:
    ld h, d
    ld l, e
    ld a, b
    call Call_024_439a
    call Call_024_43a9
    ret


    ld a, c
    call Call_024_439a
    ld a, c
    ret nz

    ld a, b
    cp $01
    ret z

    cp $04
    ret z

    ld c, $01
    ret


Call_024_439a:
    push hl
    ld hl, $445f
    ld bc, $000c
    call $30fe
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    pop hl
    ret


Call_024_43a9:
    ld a, c
    and a
    jr z, jr_024_43c5

    call Call_024_4423
    push hl
    push bc
    call $1078
    ld a, $9c
    ld [bc], a
    pop bc
    pop hl
    ld de, $0017
    add hl, de
    call Call_024_442e
    call $1078
    ret


jr_024_43c5:
    push hl
    ld c, b
    ld b, $00
    ld hl, $43d6
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    call $1078
    ret


    ld [c], a
    ld b, e
    db $ed
    ld b, e
    ld [bc], a
    ld b, h
    ld a, [c]
    ld b, e
    ld hl, sp+$43
    dec c
    ld b, h
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b
    adc h
    adc [hl]
    adc h
    sbc h
    ld d, b
    add c
    adc b
    adc e
    adc e
    sbc h
    ld d, b
    adc a
    sub c
    adc [hl]
    add l
    add sp, -$7c
    adc e
    adc h
    sbc h
    ld d, b
    add c
    adc b
    adc d
    add h
    ld a, a
    sub d
    add a
    adc [hl]
    adc a
    sbc h
    ld d, b
    add c
    sub h
    add h
    adc l
    add b
    sbc h
    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    add e
    adc b
    sub d
    add d
    ld a, a
    adc c
    adc [hl]
    add d
    adc d
    add h
    sbc b
    ld d, b

Call_024_4423:
    push hl
    push bc
    ld a, $0e
    ld hl, $594c
    rst $08
    pop bc
    pop hl
    ret


Call_024_442e:
    push hl
    push bc
    ld a, $0e
    ld hl, $552d
    rst $08
    pop bc
    pop hl
    ret


    ld a, [$dbf9]
    call Call_024_439a
    ld d, c
    ld e, b
    push de
    ld a, [$dbf9]
    ld hl, $4461
    ld bc, $000c
    call $30fe
    ld b, [hl]
    inc hl
    ld c, [hl]
    push bc
    call $2caf
    ld e, a
    ld a, $72
    ld hl, $68a5
    rst $08
    pop bc
    pop de
    ret


    nop
    nop
    rst $38
    rst $38
    nop
    cpl
    and l
    ld c, [hl]
    nop
    cpl
    and l
    ld c, [hl]
    nop
    ld bc, $0618
    rlca
    cpl
    xor d
    ld c, [hl]
    nop
    cpl
    and l
    ld c, [hl]
    nop
    ld [bc], a
    dec c
    ld b, $00
    cpl
    and l
    ld c, [hl]
    nop
    cpl
    and l
    ld c, [hl]
    nop
    inc bc
    rst $38
    rst $38
    rlca
    cpl
    push bc
    ld c, a
    nop
    cpl
    rlca
    ld d, b
    nop
    inc b
    jr jr_024_4498

    rlca
    cpl
    dec c
    ld d, b
    nop

jr_024_4498:
    cpl
    add c
    ld d, b
    rla
    ld bc, $0f03
    rlca
    cpl
    ret nc

    ld d, b
    rlca
    cpl
    ld a, [$3e50]
    ld bc, $0f03
    rlca
    cpl
    ccf
    ld d, c
    rlca
    cpl
    ld e, b
    ld d, c
    jr z, jr_024_44b7

    inc bc
    dec hl

jr_024_44b7:
    rlca
    cpl
    ld a, h
    ld d, c
    rlca
    cpl
    xor c
    ld d, c
    nop
    nop
    rst $38
    rst $38
    nop
    cpl
    and l
    ld c, [hl]
    nop
    cpl
    and l
    ld c, [hl]
    nop
    nop
    rst $38
    rst $38
    nop
    cpl
    and l
    ld c, [hl]
    nop
    cpl
    and l
    ld c, [hl]
    nop
    nop
    rst $38
    rst $38
    nop
    cpl
    and l
    ld c, [hl]
    nop
    cpl
    and l
    ld c, [hl]
    dec de
    ld a, [bc]
    jr jr_024_44e8

    rlca

jr_024_44e8:
    cpl
    jp c, $0751

    cpl
    inc b
    ld d, d
    inc e
    add hl, bc
    jr jr_024_44f4

    rlca

jr_024_44f4:
    cpl
    dec a
    ld d, d
    rlca
    cpl
    ld h, a
    ld d, d
    jr jr_024_450b

    jr jr_024_4501

    rlca
    cpl

jr_024_4501:
    sub h
    ld d, d
    rlca
    cpl
    bit 2, d
    inc e
    ld a, [bc]
    jr jr_024_450d

jr_024_450b:
    rlca
    cpl

jr_024_450d:
    inc e
    ld d, e
    rlca
    cpl
    ld b, [hl]
    ld d, e
    ld d, $01
    ld a, [de]
    ld bc, $2f07
    ld [hl], e
    ld d, e
    rlca
    cpl
    and b
    ld d, e
    inc h
    inc b
    ld a, [de]
    ld [bc], a
    rlca
    cpl
    pop de
    ld d, e
    rlca
    cpl
    jr z, jr_024_457f

    dec h
    ld [bc], a
    ld a, [bc]
    ld bc, $2f07
    jp nc, $0754

    cpl
    add hl, bc
    ld d, l
    dec [hl]
    ld bc, $010a
    rlca
    cpl
    ld h, b
    ld d, l
    rlca
    cpl
    adc l
    ld d, l
    inc l
    dec b
    ld [$0706], sp
    cpl
    inc [hl]
    ld d, [hl]
    rlca
    cpl
    ld l, e
    ld d, [hl]
    ld [hl], $02
    dec bc
    ld bc, $2f07
    pop bc
    ld d, [hl]
    rlca
    cpl
    push af
    ld d, [hl]
    dec [hl]
    ld [bc], a
    dec bc

Jump_024_455e:
    ld bc, $2f07
    ld b, e
    ld d, a
    rlca
    cpl
    add h
    ld d, a
    ld sp, $0a01
    ld [bc], a
    rlca
    cpl
    rst $20
    ld d, a
    rlca
    cpl
    db $fd
    ld d, a
    inc h
    ld [$020a], sp
    rlca
    cpl
    inc de
    ld e, b
    rlca
    cpl
    ld c, d
    ld e, b

jr_024_457f:
    rla
    inc bc
    ld a, [bc]
    inc bc
    rlca
    cpl
    and [hl]
    ld e, b
    rlca
    cpl
    db $dd
    ld e, b
    nop
    nop
    rst $38
    rst $38
    nop
    cpl
    and l
    ld c, [hl]
    nop
    cpl
    and l
    ld c, [hl]
    add hl, de
    ld a, [bc]
    ld bc, $070c
    cpl
    jr nc, jr_024_45f8

    rlca
    cpl
    ld h, a
    ld e, c
    rla
    ld a, [bc]
    ld bc, $070c
    cpl
    add $59
    rlca
    cpl
    ldh a, [$59]
    dec sp
    ld [bc], a
    ld bc, $070d
    cpl
    dec [hl]
    ld e, d
    rlca
    cpl
    ld l, [hl]
    ld e, d
    dec h
    rlca
    ld [bc], a
    dec b
    rlca
    cpl
    xor h
    ld e, d
    rlca
    cpl
    db $e3
    ld e, d
    ld e, $06
    add hl, bc
    dec b
    rlca
    cpl
    ld [hl], $5b
    rlca
    cpl
    ld h, b
    ld e, e
    dec [hl]
    inc d
    add hl, bc
    dec b
    rlca
    cpl
    sbc c
    ld e, e
    rlca
    cpl
    ret nc

    ld e, e
    jr jr_024_45e8

    ld [bc], a
    ld b, $07
    cpl
    ld [hl], e
    ld e, h
    rlca

jr_024_45e8:
    cpl
    sbc l
    ld e, h
    dec h
    ld a, [bc]
    ld [bc], a
    ld b, $07
    cpl
    adc $5c
    rlca
    cpl
    dec b
    ld e, l
    ld [hl-], a

jr_024_45f8:
    ld [$0805], sp
    rlca
    cpl
    ld [hl], c
    ld e, l
    rlca
    cpl
    ld a, l
    ld e, l
    inc l
    add hl, bc
    dec b
    ld [$2f07], sp
    adc c
    ld e, l
    rlca
    cpl
    or e
    ld e, l
    dec [hl]
    ld a, [bc]
    dec b
    add hl, bc
    rlca
    cpl
    db $e4
    ld e, l
    rlca
    cpl
    ld c, $5e
    nop
    dec b
    dec bc
    ld [de], a
    rlca
    jr z, jr_024_4636

    ld c, e
    rlca
    jr z, jr_024_464c

    ld c, e
    adc b
    ld b, c
    inc b
    cpl
    add c
    ld d, b
    adc b
    ld b, c
    inc b
    cpl
    add c
    ld d, b
    adc b
    ld b, c
    inc b

jr_024_4636:
    cpl
    add c
    ld d, b
    adc b
    ld b, c
    inc b
    cpl
    add c
    ld d, b
    sub a
    ld b, c
    inc b
    cpl
    add c
    ld d, b
    sub a
    ld b, c
    ld [bc], a
    jr z, jr_024_4653

    ld c, e
    sub a

jr_024_464c:
    ld b, c
    ld bc, $b12f
    ld c, a
    adc b
    ld b, c

jr_024_4653:
    inc b
    cpl
    add c
    ld d, b
    ld c, h
    ld e, e
    ld b, [hl]
    sub c
    ld d, $8b
    ld d, l
    ld [hl], c
    ld d, b
    ld c, h
    ld h, h
    ld b, [hl]
    sub c
    ld d, $ac
    ld d, l
    ld [hl], c
    ld d, b
    ld c, h
    ld l, l
    ld b, [hl]
    sub c
    ld d, $ca
    ld d, l
    ld [hl], c
    ld d, b
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    ld a, $00
    ld [$c2ce], a
    ld a, $10
    ld [$c2a7], a
    ld a, $00
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    ld c, $08
    call $0468
    call $04dd
    call $0fc8
    call $300b
    ld b, $08
    call $3340
    xor a
    ldh [$d4], a
    call $0e51
    ld de, $48fb
    ld hl, $9000
    ld bc, $2401
    call $0f1e
    ld de, $4903
    ld hl, $9010
    ld bc, $2401
    call $0f1e
    ld de, $490b
    ld hl, $9020
    ld bc, $2401
    call $0f1e
    call Call_024_4783
    call $31f6
    call $04a3
    ld hl, $4874
    call $1057
    ld hl, $c608
    ld bc, $0032
    xor a
    call $3041
    ld a, $0a
    ld [$c61c], a

jr_024_46e8:
    ld hl, $4879
    call $1057
    ld hl, $c52f
    ld b, $02
    ld c, $0f
    call $0fe8
    ld hl, $c537
    ld [hl], $01
    ld hl, $c573
    ld [hl], $02
    ld hl, $c558
    call Call_024_47de
    ld c, $0a
    call $0468

jr_024_470d:
    call $0a57
    call Call_024_4795
    jr nc, jr_024_470d

    ld a, [$c61c]
    ld [$d087], a
    call Call_024_4783
    ld hl, $4886
    call $1057
    call $1dcf
    jr nc, jr_024_472e

    call Call_024_4783
    jr jr_024_46e8

jr_024_472e:
    ld hl, $489a
    call $1057
    ld hl, $c537
    ld bc, $0207
    call $0fe8
    ld hl, $c53b
    ld [hl], $01
    ld hl, $c577
    ld [hl], $02
    ld hl, $c560
    call Call_024_4859
    ld c, $0a
    call $0468

jr_024_4752:
    call $0a57
    call Call_024_4810
    jr nc, jr_024_4752

    ld a, [$c626]
    ld [$d088], a
    call Call_024_4783
    ld hl, $48a4
    call $1057
    call $1dcf
    jr nc, jr_024_4773

    call Call_024_4783
    jr jr_024_472e

jr_024_4773:
    call $0658
    ld hl, $48b8
    call $1057
    call $0a80
    pop af
    ldh [$aa], a
    ret


Call_024_4783:
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0168
    xor a
    call $3041
    ld a, $01
    ldh [$d4], a
    ret


Call_024_4795:
    ldh a, [$a7]
    and $01
    jr nz, jr_024_47dc

    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_024_47ba

    ld a, [hl]
    and $80
    jr nz, jr_024_47ad

    call $045a
    and a
    ret


jr_024_47ad:
    ld hl, $c61c
    ld a, [hl]
    and a
    jr nz, jr_024_47b6

    ld a, $18

jr_024_47b6:
    dec a
    ld [hl], a
    jr jr_024_47c6

jr_024_47ba:
    ld hl, $c61c
    ld a, [hl]
    cp $17
    jr c, jr_024_47c4

    ld a, $ff

jr_024_47c4:
    inc a
    ld [hl], a

jr_024_47c6:
    ld hl, $c558
    ld a, $7f
    ld bc, $000f
    call $3041
    ld hl, $c558
    call Call_024_47de
    call $31f6
    and a
    ret


jr_024_47dc:
    scf
    ret


Call_024_47de:
    push hl
    ld a, [$c61c]
    ld c, a
    ld e, l
    ld d, h
    call Call_024_4b3e
    inc hl
    ld de, $487e
    call $1078
    pop hl
    ret


    ld h, d
    ld l, e
    push hl
    call Call_024_47de
    pop de
    inc de
    inc de
    ld a, $9c
    ld [de], a
    inc de
    push de
    ld hl, $0003
    add hl, de
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    pop hl
    call Call_024_4859
    inc hl
    inc hl
    inc hl
    ret


Call_024_4810:
    ldh a, [$a7]
    and $01
    jr nz, jr_024_4857

    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_024_4835

    ld a, [hl]
    and $80
    jr nz, jr_024_4828

    call $045a
    and a
    ret


jr_024_4828:
    ld hl, $c626
    ld a, [hl]
    and a
    jr nz, jr_024_4831

    ld a, $3c

jr_024_4831:
    dec a
    ld [hl], a
    jr jr_024_4841

jr_024_4835:
    ld hl, $c626
    ld a, [hl]
    cp $3b
    jr c, jr_024_483f

    ld a, $ff

jr_024_483f:
    inc a
    ld [hl], a

jr_024_4841:
    ld hl, $c560
    ld a, $7f
    ld bc, $0007
    call $3041
    ld hl, $c560
    call Call_024_4859
    call $31f6
    and a
    ret


jr_024_4857:
    scf
    ret


Call_024_4859:
    ld de, $c626
    call Call_024_4867
    inc hl
    ld de, $489f
    call $1078
    ret


Call_024_4867:
    push hl
    ld a, $7f
    ld [hl+], a
    ld [hl], a
    pop hl
    ld bc, $4102
    call $3198
    ret


    ld d, $9c
    ld b, d
    ld l, a
    ld d, b
    ld d, $eb
    ld b, d
    ld l, a
    ld d, b
    xor [hl]
    ldh [$a2], a
    xor e
    xor [hl]
    and d
    xor d
    ld d, b
    ld d, $fd
    ld b, d
    ld l, a
    ld [$e121], sp
    push bc
    call Call_024_47de
    ld hl, $4895
    ret


    ld d, $05
    ld b, e
    ld l, a
    ld d, b
    ld d, $08
    ld b, e
    ld l, a
    ld d, b
    xor h
    xor b
    xor l
    add sp, $50
    ld d, $1b
    ld b, e
    ld l, a
    ld [$bf21], sp
    push bc
    call Call_024_4859
    ld hl, $48b3
    ret


    ld d, $23
    ld b, e
    ld l, a
    ld d, b
    ld [$b911], sp
    push bc
    ld a, [$c61c]
    ld c, a
    call Call_024_4b3e
    ld [hl], $9c
    inc hl
    ld de, $c626
    ld bc, $8102
    call $3198
    ld b, h
    ld c, l
    ld a, [$c61c]
    cp $04
    jr c, jr_024_48e0

    cp $0b
    jr c, jr_024_48e4

    cp $12
    jr c, jr_024_48e8

jr_024_48e0:
    ld hl, $48f6
    ret


jr_024_48e4:
    ld hl, $48ec
    ret


jr_024_48e8:
    ld hl, $48f1
    ret


    ld d, $26
    ld b, e
    ld l, a
    ld d, b
    ld d, $36
    ld b, e
    ld l, a
    ld d, b
    ld d, $4f
    ld b, e
    ld l, a
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_024_4901:
    rst $38
    rst $38
    nop
    jr @+$1a

    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    jr @+$1a

    nop
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    ld de, $4903
    ld hl, $8ef0
    ld bc, $2401
    call $0f1e
    ld de, $490b
    ld hl, $8f50
    ld bc, $2401
    call $0f1e
    xor a
    ld [$d002], a

jr_024_4936:
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    call $1d6e
    ld hl, $4a3f
    call $1057
    ld hl, $c4e5
    ld b, $02
    ld c, $09
    call $0fe8
    ld hl, $c4ea
    ld [hl], $ef
    ld hl, $c526
    ld [hl], $f5
    ld hl, $c50e
    call Call_024_49de
    call $321c
    ld c, $0a
    call $0468

jr_024_496a:
    call $0a57
    call Call_024_4993
    jr nc, jr_024_496a

    call $1c07
    call $1ad2
    ld hl, $4a44
    call $1057
    call $1dcf
    jr c, jr_024_4936

    ld a, [$d002]
    ld [$d086], a
    call $0663
    call $0e51
    pop af
    ldh [$aa], a
    ret


Call_024_4993:
    ldh a, [$a7]
    and $01
    jr z, jr_024_499b

    scf
    ret


jr_024_499b:
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_024_49ba

    ld a, [hl]
    and $80
    jr nz, jr_024_49ad

    call $045a
    and a
    ret


jr_024_49ad:
    ld hl, $d002
    ld a, [hl]
    and a
    jr nz, jr_024_49b6

    ld a, $07

jr_024_49b6:
    dec a
    ld [hl], a
    jr jr_024_49c6

jr_024_49ba:
    ld hl, $d002
    ld a, [hl]
    cp $06
    jr c, jr_024_49c4

    ld a, $ff

jr_024_49c4:
    inc a
    ld [hl], a

jr_024_49c6:
    xor a
    ldh [$d4], a
    ld hl, $c4fa
    ld b, $02
    ld c, $09
    call $0fb6
    ld hl, $c50e
    call Call_024_49de
    call $31f6
    and a
    ret


Call_024_49de:
    push hl
    ld a, [$d002]
    ld e, a
    ld d, $00
    ld hl, $49f2
    add hl, de
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call $1078
    ret


    ld [bc], a
    ld c, d
    ld a, [bc]
    ld c, d
    ld [de], a
    ld c, d
    dec de
    ld c, d
    dec h
    ld c, d
    ld l, $4a
    ld [hl], $4a
    ld [bc], a
    ld c, d
    ld a, a
    sub d
    sub h
    adc l
    add e
    add b
    sbc b
    ld d, b
    ld a, a
    adc h
    adc [hl]
    adc l
    add e
    add b
    sbc b
    ld d, b
    ld a, a
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
    ld a, a
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
    ld d, $69
    ld b, e
    ld l, a
    ld d, b
    ld [$b921], sp
    push bc
    call Call_024_49de
    ld hl, $4a4f
    ret


    ld d, $7a
    ld b, e
    ld l, a
    ld d, b
    ld a, [$d4c2]
    set 7, a
    ld [$d4c2], a
    ld hl, $c5b9
    ld bc, $0312
    call $0fb6
    ld hl, $4a6c
    call $13e5
    ret


    ld [$a7cd], sp
    dec b
    ldh a, [$94]
    ld b, a
    ldh a, [$96]
    ld c, a
    ld de, $c5b9
    ld a, $77
    ld hl, $56bb
    rst $08
    ld hl, $4a83
    ret


    ld d, $de
    ld e, a
    ld [hl], c
    ld d, b
    ld a, [$d4c2]
    res 7, a
    ld [$d4c2], a
    ld hl, $c5b9
    ld bc, $0312
    call $0fb6
    ld hl, $4aa0
    call $13e5
    ret


    ld [$a7cd], sp
    dec b
    ldh a, [$94]
    ld b, a
    ldh a, [$96]
    ld c, a
    ld de, $c5b9
    ld a, $77
    ld hl, $56bb
    rst $08
    ld hl, $4ab7
    ret


    ld d, $f1
    ld e, a
    ld [hl], c
    ld d, b
    ld hl, $c5b9
    ld bc, $0312
    call $0fb6
    ld hl, $4acc
    call $13e5
    ret


    ld [$a7cd], sp
    dec b
    ld hl, $c5b9
    ld [hl], $91
    inc hl
    ld [hl], $93
    inc hl
    ld [hl], $7f
    inc hl
    ld de, $ff8e
    call Call_024_4b23
    ld hl, $c5e1
    ld [hl], $83
    inc hl
    ld [hl], $85
    inc hl
    ld [hl], $7f
    inc hl
    ld de, $d4b6
    call Call_024_4b23
    ld [hl], $7f
    inc hl
    ld a, [$d4c2]
    bit 7, a
    jr z, jr_024_4b06

    ld [hl], $8e
    inc hl
    ld [hl], $8d
    inc hl
    jr jr_024_4b0f

jr_024_4b06:
    ld [hl], $8e
    inc hl
    ld [hl], $85
    inc hl
    ld [hl], $85
    inc hl

jr_024_4b0f:
    ld hl, $4b13
    ret


    nop
    ld d, c
    adc l
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    add e
    add h
    add c
    sub h
    add [hl]
    ld [hl], l
    ld e, b

Call_024_4b23:
    ld bc, $0103
    call $3198
    ld [hl], $e8
    inc hl
    inc de
    ld bc, $8102
    call $3198
    ld [hl], $9c
    inc hl
    inc de
    ld bc, $8102
    call $3198
    ret


Call_024_4b3e:
    ld l, e
    ld h, d
    push bc
    call Call_024_4b58
    call $1078
    ld l, c
    ld h, b
    inc hl
    pop bc
    call Call_024_4b7f
    ld [$d265], a
    ld de, $d265
    call Call_024_4867
    ret


Call_024_4b58:
    ld a, c
    cp $04
    jr c, jr_024_4b65

    cp $0a
    jr c, jr_024_4b69

    cp $12
    jr c, jr_024_4b6d

jr_024_4b65:
    ld de, $4b71
    ret


jr_024_4b69:
    ld de, $4b76
    ret


jr_024_4b6d:
    ld de, $4b7b
    ret


    adc l
    adc b
    sub e
    add h
    ld d, b
    adc h
    adc [hl]
    sub c
    adc l
    ld d, b
    add e
    add b
    sbc b
    ld d, b

Call_024_4b7f:
    ld a, c
    or a
    jr z, jr_024_4b8a

    cp $0c
    ret c

    ret z

    sub $0c
    ret


jr_024_4b8a:
    ld a, $0c
    ret


    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    ld a, [$d0ed]
    push af
    xor a
    ld [$d0ed], a
    call Call_024_4bea
    call $045a

jr_024_4ba9:
    call $05a7
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_024_4bc4

    call Call_024_4f04
    ld a, $23
    ld hl, $4f69
    rst $08
    call $045a
    jr jr_024_4ba9

jr_024_4bc4:
    ld de, $0008
    call $3c23
    call $3c55
    pop af
    ld [$d0ed], a
    pop af
    ldh [$aa], a
    pop af
    ld [$cfcc], a
    call $31f3
    xor a
    ldh [$d6], a
    ld a, $98
    ldh [$d7], a
    ld a, $90
    ldh [$d2], a
    call Call_024_5492
    ret


Call_024_4bea:
    call $31f3
    call $0fc8
    call $300b
    call $0568
    xor a
    ldh [$d0], a
    ldh [$cf], a
    ld a, $07
    ldh [$d1], a
    call Call_024_4c4e
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_024_4d32
    ld a, $08
    call $3cb4
    ld a, $e3
    ldh [rLCDC], a
    call Call_024_4d70
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    ld [$c6d2], a
    ld [$c6d1], a
    ld [$c6d3], a
    ld [$c6d9], a
    ld [$c6da], a
    ld [$c6db], a
    call Call_024_4d9e
    call Call_024_4da8
    ld b, $02
    call $3340
    call $32f9
    ldh a, [$e6]
    and a
    ret z

    ld a, $e4
    call $0cf8
    ret


Call_024_4c4e:
    call $0d79
    ld hl, $4ba0
    ld de, $9000
    ld a, $3e
    call $0b40
    ld hl, $62e4
    ld de, $9300
    ld a, $77
    call $0b40
    ld hl, $54dd
    ld de, $8000
    ld a, $24
    call $0b50
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2caf
    cp $5f
    jr z, jr_024_4ca5

    ld a, $22
    ld hl, $432c
    rst $08
    push de
    ld h, d
    ld l, e
    ld a, b
    push af
    ld de, $8100
    ld bc, $0040
    call $0e8d
    pop af
    pop hl
    ld de, $00c0
    add hl, de
    ld de, $8140
    ld bc, $0040
    call $0e8d
    ret


jr_024_4ca5:
    ld hl, $4cb2
    ld de, $8100
    ld bc, $0080
    call $3026
    ret


    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    dec bc
    inc a
    ccf
    ld [hl], b
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld b, l
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$d0]
    inc a
    db $fc
    ld c, $fa
    cp $fa
    cp $a6
    ld a, a
    ld h, b
    ld e, a
    ld [hl], e
    inc l
    ccf
    nop
    rrca
    nop
    rrca
    nop
    rlca
    ld b, $07
    ld bc, $fe01
    ld b, $fa
    adc $34
    db $fc
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$60], a
    ldh [$80], a
    add b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    dec bc
    inc a
    ccf
    ld [hl], b
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld b, l
    ld a, a
    ld h, b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$d0]
    inc a
    db $fc
    ld c, $fa
    cp $fa
    cp $a6
    cp $06
    ld e, a
    ld [hl], e
    inc l
    ccf
    jr nz, @+$41

    db $10
    rra
    nop
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld a, [$34ce]
    db $fc
    inc b
    db $fc
    ld [$00f8], sp
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop

Call_024_4d32:
    ld de, $2410
    ld a, $0d
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $cf64
    ld e, [hl]
    ld d, $00
    ld hl, $4d52
    add hl, de
    ld a, [hl]
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


    nop
    db $10
    jr nz, jr_024_4d86

Call_024_4d56:
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2caf
    cp $00
    ret nz

    ld a, [$dcad]
    ld b, a
    ld a, [$dcae]
    ld c, a
    call $2caf
    ret


Call_024_4d70:
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2caf
    cp $5f
    jr z, jr_024_4d95

    cp $00
    jr nz, jr_024_4d8e

    ld a, [$dcad]

jr_024_4d86:
    ld b, a
    ld a, [$dcae]
    ld c, a
    call $2caf

jr_024_4d8e:
    ld [$c6d8], a
    ld [$c6d7], a
    ret


jr_024_4d95:
    ld [$c6d8], a
    ld a, $01
    ld [$c6d7], a
    ret


Call_024_4d9e:
    ld a, $00
    ld [$cf63], a
    xor a
    ld [$cf64], a
    ret


Call_024_4da8:
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $4f
    call $3041
    ld a, [$cf64]
    and $03
    add a
    ld e, a
    ld d, $00
    ld hl, $4e12
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $4dcb
    push de
    jp hl


    call Call_024_4eb0
    ld a, $24
    ld hl, $5f13
    rst $08
    ld a, [$cf65]
    and a
    jr nz, jr_024_4de8

    xor a
    ldh [$d6], a
    ld a, $98
    ldh [$d7], a
    call Call_024_4e00
    ld a, $90
    jr jr_024_4df3

jr_024_4de8:
    xor a
    ldh [$d6], a
    ld a, $9c
    ldh [$d7], a
    call Call_024_4e00
    xor a

jr_024_4df3:
    ldh [$d2], a
    ld a, [$cf65]
    and $01
    xor $01
    ld [$cf65], a
    ret


Call_024_4e00:
    ldh a, [$e6]
    and a
    jr z, jr_024_4e0e

    ld a, $02
    ldh [$d4], a
    ld c, $03
    call $0468

jr_024_4e0e:
    call $31f6
    ret


    ld a, [de]
    ld c, [hl]
    ccf
    ld c, [hl]
    add d
    ld c, [hl]
    ld [hl], d
    ld c, [hl]
    ld de, $55db
    call Call_024_54bb
    ld hl, $c4c0
    ld de, $4e36
    call $1078
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    call Call_024_4f86
    ret


    ld a, a
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    db $ed
    ld d, b
    ld a, [$c6d8]
    cp $5f
    jr z, jr_024_4e4a

    cp $2f
    jr nc, jr_024_4e4e

jr_024_4e4a:
    ld e, $00
    jr jr_024_4e50

jr_024_4e4e:
    ld e, $01

jr_024_4e50:
    ld a, $24
    ld hl, $5ae1
    rst $08
    ld a, $07
    ld bc, $0012
    ld hl, $c4c9
    call $3041
    ld hl, $c4c8
    ld [hl], $06
    ld hl, $c4db
    ld [hl], $17
    ld a, [$c6d7]
    call Call_024_50b4
    ret


    ld de, $550d
    call Call_024_54bb
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    ret


    ld de, $558a
    call Call_024_54bb
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    call Call_024_4e98
    call Call_024_52d8
    ret


Call_024_4e98:
    ld hl, $c4c5
    ld a, $3c
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $c4d9
    inc a
    ld [hl+], a
    call $2d05
    and a
    ret nz

    ld hl, $c4da
    ld [hl], $3f
    ret


Call_024_4eb0:
    ld hl, $c4a0
    ld bc, $0008
    ld a, $4f
    call $3041
    ld hl, $c4b4
    ld bc, $0008
    ld a, $4f
    call $3041
    ld de, $d957
    ld a, [de]
    bit 0, a
    call nz, Call_024_4ee4
    ld a, [de]
    bit 2, a
    call nz, Call_024_4eeb
    ld a, [de]
    bit 1, a
    call nz, Call_024_4ef2
    ld hl, $c4a0
    ld a, $46
    call Call_024_4ef7
    ret


Call_024_4ee4:
    ld hl, $c4a2
    ld a, $40
    jr jr_024_4ef7

Call_024_4eeb:
    ld hl, $c4a4
    ld a, $44
    jr jr_024_4ef7

Call_024_4ef2:
    ld hl, $c4a6
    ld a, $42

Call_024_4ef7:
jr_024_4ef7:
    ld [hl+], a
    inc a
    ld [hl-], a
    ld bc, $0014
    add hl, bc
    add $0f
    ld [hl+], a
    inc a
    ld [hl-], a
    ret


Call_024_4f04:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $4f13
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    dec l
    ld c, a
    ld a, $4f
    or h
    ld c, a
    call $ee4f
    ld c, a
    call $e94f
    ld c, a
    ld d, [hl]
    ld d, c
    ld [hl], c
    ld d, c
    db $eb
    ld d, c
    ld d, [hl]
    ld d, d
    ld sp, hl
    ld d, b
    ld [de], a
    ld d, c
    call Call_024_4da8
    ld hl, $54d3
    call $1057
    ld hl, $cf63
    inc [hl]
    call Call_024_5492
    ret


    call Call_024_4f7b
    ld hl, $ffa9
    ld a, [hl]
    and $0f
    jr nz, jr_024_4f75

    ld a, [hl]
    and $10
    ret z

    ld a, [$d957]
    bit 0, a
    jr z, jr_024_4f5a

    ld c, $02
    ld b, $01
    jr jr_024_4f71

jr_024_4f5a:
    ld a, [$d957]
    bit 2, a
    jr z, jr_024_4f67

    ld c, $07
    ld b, $02
    jr jr_024_4f71

jr_024_4f67:
    ld a, [$d957]
    bit 1, a
    ret z

    ld c, $0b
    ld b, $03

jr_024_4f71:
    call Call_024_5480
    ret


jr_024_4f75:
    ld hl, $cf63
    set 7, [hl]
    ret


Call_024_4f7b:
    xor a
    ldh [$d4], a
    call Call_024_4f86
    ld a, $01
    ldh [$d4], a
    ret


Call_024_4f86:
    ld hl, $c507
    ld bc, $050e
    call $0fb6
    ldh a, [$94]
    ld b, a
    ldh a, [$96]
    ld c, a
    ld de, $c546
    ld a, $77
    ld hl, $56bb
    rst $08
    ld hl, $4faf
    ld bc, $c51e
    call $13e5
    ret


    ld a, [hl+]
    ld l, $de
    ld d, b
    ld a, [hl+]
    ld a, [hl+]
    ld d, b
    ld d, $21
    ld e, b
    ld [hl], c
    ld d, b
    ld a, [$c6d8]
    cp $5f
    jr z, jr_024_4fbf

    cp $2f
    jr nc, jr_024_4fc4

jr_024_4fbf:
    ld a, $03
    jr jr_024_4fc6

    ret


jr_024_4fc4:
    ld a, $05

jr_024_4fc6:
    ld [$cf63], a
    call Call_024_5492
    ret


    call Call_024_4da8
    ld a, [$c6d8]
    call Call_024_506a
    ld a, [$c6d7]
    call Call_024_5098
    ld a, c
    ld [$c6d5], a
    ld a, b
    ld [$c6d6], a
    ld hl, $cf63
    inc [hl]
    ret


    call Call_024_50e8
    jr jr_024_4ff2

    ld d, $2e
    ld e, $01

jr_024_4ff2:
    ld hl, $ffa9
    ld a, [hl]
    and $02
    jr nz, jr_024_5029

    ld a, [hl]
    and $10
    jr nz, jr_024_5008

    ld a, [hl]
    and $20
    jr nz, jr_024_5021

    call Call_024_502f
    ret


jr_024_5008:
    ld a, [$d957]
    bit 2, a
    jr z, jr_024_5015

    ld c, $07
    ld b, $02
    jr jr_024_5025

jr_024_5015:
    ld a, [$d957]
    bit 1, a
    ret z

    ld c, $0b
    ld b, $03
    jr jr_024_5025

jr_024_5021:
    ld c, $00
    ld b, $00

jr_024_5025:
    call Call_024_5480
    ret


jr_024_5029:
    ld hl, $cf63
    set 7, [hl]
    ret


Call_024_502f:
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_024_503d

    ld a, [hl]
    and $80
    jr nz, jr_024_504a

    ret


jr_024_503d:
    ld hl, $c6d7
    ld a, [hl]
    cp d
    jr c, jr_024_5047

    ld a, e
    dec a
    ld [hl], a

jr_024_5047:
    inc [hl]
    jr jr_024_5055

jr_024_504a:
    ld hl, $c6d7
    ld a, [hl]
    cp e
    jr nz, jr_024_5054

    ld a, d
    inc a
    ld [hl], a

jr_024_5054:
    dec [hl]

jr_024_5055:
    ld a, [$c6d7]
    call Call_024_50b4
    ld a, [$c6d5]
    ld c, a
    ld a, [$c6d6]
    ld b, a
    ld a, [$c6d7]
    call Call_024_50d4
    ret


Call_024_506a:
    push af
    ld de, $0000
    ld b, $0a
    ld a, [$d472]
    bit 0, a
    jr z, jr_024_5079

    ld b, $1e

jr_024_5079:
    ld a, b
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $10
    pop af
    ld e, a
    push bc
    ld a, $72
    ld hl, $6896
    rst $08
    pop bc
    ld hl, $0004
    add hl, bc
    ld [hl], e
    ld hl, $0005
    add hl, bc
    ld [hl], d
    ret


Call_024_5098:
    push af
    ld de, $0000
    ld a, $0d
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $04
    ld hl, $0002
    add hl, bc
    ld [hl], $00
    pop af
    push bc
    call Call_024_50d4
    pop bc
    ret


Call_024_50b4:
    push af
    ld hl, $c4a8
    ld bc, $020c
    call $0fb6
    pop af
    ld e, a
    push de
    ld a, $72
    ld hl, $68a5
    rst $08
    pop de
    ld a, $77
    ld hl, $62c5
    rst $08
    ld hl, $c4a8
    ld [hl], $34
    ret


Call_024_50d4:
    push bc
    ld e, a
    ld a, $72
    ld hl, $6896
    rst $08
    pop bc
    ld hl, $0004
    add hl, bc
    ld [hl], e
    ld hl, $0005
    add hl, bc
    ld [hl], d
    ret


Call_024_50e8:
    ld a, [$d84c]
    bit 6, a
    jr z, jr_024_50f4

    ld d, $5e
    ld e, $2f
    ret


jr_024_50f4:
    ld d, $5e
    ld e, $58
    ret


    call Call_024_4da8
    ld de, $2454
    ld a, $14
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $08
    call Call_024_563e
    ld hl, $cf63
    inc [hl]
    ret


    ld hl, $ffa9
    ld a, [hl]
    and $02
    jr nz, jr_024_5150

    ld a, [hl]
    and $20
    jr nz, jr_024_512e

    ld a, [$c6da]
    ld l, a
    ld a, [$c6db]
    ld h, a
    ld a, [$c6d9]
    and a
    ret z

    rst $08
    ret


jr_024_512e:
    ld a, [$d957]
    bit 2, a
    jr z, jr_024_513b

    ld c, $07
    ld b, $02
    jr jr_024_514c

jr_024_513b:
    ld a, [$d957]
    bit 0, a
    jr z, jr_024_5148

    ld c, $02
    ld b, $01
    jr jr_024_514c

jr_024_5148:
    ld c, $00
    ld b, $00

jr_024_514c:
    call Call_024_5480
    ret


jr_024_5150:
    ld hl, $cf63
    set 7, [hl]
    ret


    ld hl, $cf63
    inc [hl]
    xor a
    ld [$c6d2], a
    ld [$c6d1], a
    ld [$c6d3], a
    call Call_024_4da8
    call Call_024_5492
    ld hl, $54ce
    call $1057
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_024_51b0

    ld a, [hl]
    and $01
    jr nz, jr_024_51b6

    ld hl, $ffa9
    ld a, [hl]
    and $20
    jr nz, jr_024_518f

    ld a, [hl]
    and $10
    jr nz, jr_024_51a2

    call Call_024_526d
    ret


jr_024_518f:
    ld a, [$d957]
    bit 0, a
    jr z, jr_024_519c

    ld c, $02
    ld b, $01
    jr jr_024_51ac

jr_024_519c:
    ld c, $00
    ld b, $00
    jr jr_024_51ac

jr_024_51a2:
    ld a, [$d957]
    bit 1, a
    ret z

    ld c, $0b
    ld b, $03

jr_024_51ac:
    call Call_024_5480
    ret


jr_024_51b0:
    ld hl, $cf63
    set 7, [hl]
    ret


jr_024_51b6:
    ld hl, $dc7c
    ld a, [$c6d2]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c6d1]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and a
    ret z

    ld [$c6d3], a
    ld hl, $c4f1
    ld a, [$c6d1]
    ld bc, $0028
    call $30fe
    ld [hl], $ec
    call Call_024_5342
    jr c, jr_024_51e5

    ld hl, $cf63
    inc [hl]
    ret


jr_024_51e5:
    ld a, $08
    ld [$cf63], a
    ret


    call $2d05
    and a
    jr nz, jr_024_5234

    ld hl, $cfcc
    res 4, [hl]
    xor a
    ldh [$aa], a
    ld de, $006a
    call $3c23
    ld hl, $524c
    call $1057
    call $3c55
    ld de, $006a
    call $3c23
    ld hl, $524c
    call $1057
    call $3c55
    ld a, [$c6d3]
    ld b, a
    call Call_024_4199
    ld c, $0a
    call $0468
    ld hl, $cfcc
    set 4, [hl]
    ld a, $01
    ldh [$aa], a
    call Call_024_52b7
    ld hl, $cf63
    inc [hl]
    ret


jr_024_5234:
    ld a, $24
    ld hl, $42e3
    rst $08
    ld hl, $5251
    call $1057
    ld a, $08
    ld [$cf63], a
    ld hl, $54ce
    call $1057
    ret


    ld d, $24
    ld e, b
    ld [hl], c
    ld d, b
    ld d, $27
    ld e, b
    ld [hl], c
    ld d, b
    ldh a, [$a7]
    and $03
    ret z

    ld a, $24
    ld hl, $42eb
    rst $08
    ld a, $08
    ld [$cf63], a
    ld hl, $54ce
    call $1057
    ret


Call_024_526d:
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_024_527b

    ld a, [hl]
    and $80
    jr nz, jr_024_528e

    ret


jr_024_527b:
    ld hl, $c6d1
    ld a, [hl]
    and a
    jr z, jr_024_5285

    dec [hl]
    jr jr_024_52a3

jr_024_5285:
    ld hl, $c6d2
    ld a, [hl]
    and a
    ret z

    dec [hl]
    jr jr_024_52ad

jr_024_528e:
    ld hl, $c6d1
    ld a, [hl]
    cp $03
    jr nc, jr_024_5299

    inc [hl]
    jr jr_024_52a3

jr_024_5299:
    ld hl, $c6d2
    ld a, [hl]
    cp $06
    ret nc

    inc [hl]
    jr jr_024_52ad

jr_024_52a3:
    xor a
    ldh [$d4], a
    call Call_024_52b7
    call $31f6
    ret


jr_024_52ad:
    xor a
    ldh [$d4], a
    call Call_024_52d8
    call $31f6
    ret


Call_024_52b7:
    ld a, $7f
    ld hl, $c4f1
    ld [hl], a
    ld hl, $c519
    ld [hl], a
    ld hl, $c541
    ld [hl], a
    ld hl, $c569
    ld [hl], a
    ld hl, $c4f1
    ld a, [$c6d1]
    ld bc, $0028
    call $30fe
    ld [hl], $ed
    ret


Call_024_52d8:
    ld hl, $c4dd
    ld b, $09
    ld a, $7f

jr_024_52df:
    ld c, $12

jr_024_52e1:
    ld [hl+], a
    dec c
    jr nz, jr_024_52e1

    inc hl
    inc hl
    dec b
    jr nz, jr_024_52df

    ld a, [$c6d2]
    ld e, a
    ld d, $00
    ld hl, $dc7c
    add hl, de
    xor a
    ld [$c6d0], a

jr_024_52f8:
    ld a, [hl+]
    push hl
    push af
    ld hl, $c4f2
    ld a, [$c6d0]
    ld bc, $0028
    call $30fe
    ld d, h
    ld e, l
    pop af
    ld b, a
    call Call_024_4380
    pop hl
    ld a, [$c6d0]
    inc a
    ld [$c6d0], a
    cp $04
    jr c, jr_024_52f8

    call Call_024_52b7
    ret


Call_024_531e:
    ld hl, $dc7c
    ld a, [$c6d2]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c6d1]
    ld e, a
    ld d, $00
    add hl, de
    ld [hl], $00
    ld hl, $dc7c
    ld c, $0a

jr_024_5336:
    ld a, [hl+]
    and a
    jr nz, jr_024_533e

    ld a, [hl-]
    ld [hl+], a
    ld [hl], $00

jr_024_533e:
    dec c
    jr nz, jr_024_5336

    ret


Call_024_5342:
    ld hl, $dc7c
    ld a, [$c6d2]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c6d1]
    ld e, a
    ld d, $00
    add hl, de
    ld c, [hl]
    ld a, $24
    ld hl, $438a
    rst $08
    ld a, c
    and a
    jr z, jr_024_5366

    ld hl, $5455
    ld de, $543f
    jr jr_024_536c

jr_024_5366:
    ld hl, $546a
    ld de, $545b

jr_024_536c:
    xor a
    ldh [$d4], a
    push hl
    push de
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    inc de
    push hl
    ld bc, $ffd7
    add hl, bc
    ld a, [de]
    inc de
    sla a
    ld b, a
    ld c, $08
    push de
    call $0fe8
    pop de
    pop hl
    inc hl
    call $1078
    pop de
    xor a
    ld [$c6d4], a
    call Call_024_541d
    call $31f6

jr_024_5398:
    push de
    call $0a57
    pop de
    ld hl, $ffa7
    ld a, [hl]
    and $40
    jr nz, jr_024_53b4

    ld a, [hl]
    and $80
    jr nz, jr_024_53c1

    ld a, [hl]
    and $03
    jr nz, jr_024_53d4

    call $045a
    jr jr_024_5398

jr_024_53b4:
    ld hl, $c6d4
    ld a, [hl]
    and a
    jr z, jr_024_5398

    dec [hl]
    call Call_024_541d
    jr jr_024_5398

jr_024_53c1:
    ld hl, $0002
    add hl, de
    ld a, [$c6d4]
    inc a
    cp [hl]
    jr nc, jr_024_5398

    ld [$c6d4], a
    call Call_024_541d
    jr jr_024_5398

jr_024_53d4:
    xor a
    ldh [$d4], a
    call Call_024_52d8
    ld a, $01
    ldh [$d4], a
    pop hl
    ldh a, [$a7]
    and $02
    jr nz, jr_024_53f1

    ld a, [$c6d4]
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_024_53f1:
    ld hl, $54ce
    call $1057
    scf
    ret


    ld hl, $54d8
    call $1d4f
    call $1dcf
    call $1c07
    jr c, jr_024_5419

    call Call_024_531e
    xor a
    ldh [$d4], a
    call Call_024_52d8
    ld hl, $54ce
    call $1057
    call $31f6

jr_024_5419:
    scf
    ret


    and a
    ret


Call_024_541d:
    push de
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    ld a, [de]
    ld c, a
    push hl
    ld a, $7f
    ld de, $0028

jr_024_542c:
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_024_542c

    pop hl
    ld a, [$c6d4]
    ld bc, $0028
    call $30fe
    ld [hl], $ed
    pop de
    ret


    ld [hl+], a
    push bc
    inc bc
    add d
    add b
    adc e
    adc e
    ld c, [hl]
    add e
    add h
    adc e
    add h
    sub e
    add h
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    dec de
    ld d, h
    ld sp, hl
    ld d, e
    pop af
    ld d, e
    ld c, d
    push bc
    ld [bc], a
    add d
    add b
    adc e
    adc e
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    dec de
    ld d, h
    pop af
    ld d, e
    ldh a, [$94]
    cp $0c
    jr c, jr_024_547b

    sub $0c
    ld [$d265], a
    scf
    ret


jr_024_547b:
    ld [$d265], a
    and a
    ret


Call_024_5480:
    ld de, $0008
    call $3c23
    ld a, c
    ld [$cf63], a
    ld a, b
    ld [$cf64], a
    call Call_024_54ab
    ret


Call_024_5492:
    ld a, [$c6dc]
    cp $fe
    jr z, jr_024_54a3

    cp $ff
    call z, $3d03
    xor a
    ld [$c6dc], a
    ret


jr_024_54a3:
    call $3d47
    xor a
    ld [$c6dc], a
    ret


Call_024_54ab:
    ld hl, $c324
    ld bc, $0090
    xor a
    call $3041
    ld a, $02
    ld [$c3b4], a
    ret


Call_024_54bb:
    ld hl, $c4a0

jr_024_54be:
    ld a, [de]
    cp $ff
    ret z

    ld b, a
    inc de
    ld a, [de]
    ld c, a
    inc de
    ld a, b

jr_024_54c8:
    ld [hl+], a
    dec c
    jr nz, jr_024_54c8

    jr jr_024_54be

    ld d, $47
    ld e, b
    ld [hl], c
    ld d, b
    ld d, $62
    ld e, b
    ld [hl], c
    ld d, b
    ld d, $7d
    ld e, b
    ld [hl], c
    ld d, b
    inc hl
    ld bc, $0343
    ld [bc], a
    ld b, e
    rlca
    inc b
    ld b, e
    rrca
    ld [$8faf], sp
    ld b, e
    rra
    db $10
    inc bc
    ccf
    jr nz, @+$41

    ld a, $46
    inc bc
    ld [bc], a
    nop
    inc bc
    xor a
    adc a
    inc hl
    cp $29
    ret nz

    ld h, c
    xor a
    adc a
    rst $08
    sub b
    xor a
    adc a
    ld c, a
    add b
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld c, a
    ld [$0106], sp
    rlca
    ld a, [bc]
    rla
    ld bc, $084f
    ld d, $01
    ld c, a
    ld [bc], a
    scf
    ld bc, $014f
    jr c, jr_024_5522

    add hl, sp

jr_024_5522:
    ld bc, $014f
    ld a, [hl-]
    ld bc, $024f
    ld d, $01
    ld c, b
    ld bc, $074a
    ld d, $01
    dec sp
    ld a, [bc]
    ld d, $01
    ld c, h
    ld bc, $074e
    ld d, $01
    ld c, a
    ld a, [bc]
    ld d, $01
    ld c, h
    ld bc, $074e
    ld d, $01
    ld [hl], $01
    ld a, a
    ld bc, $0158
    ld e, c
    ld bc, $015a
    ld e, e
    ld bc, $015c
    ld e, l
    ld bc, $017f
    dec [hl]
    ld bc, $0116
    ld c, h
    ld bc, $074e
    ld h, $01
    rlca
    ld a, [bc]
    daa
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld [de], a
    ld c, l
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld [de], a
    ld c, l
    ld bc, HeaderMaskROMVersion
    ld a, a
    ld [de], a
    ld c, l
    ld bc, HeaderMaskROMVersion
    ld a, a
    ld [de], a
    ld c, l
    ld bc, HeaderMaskROMVersion
    ld a, a
    ld [de], a
    ld c, l
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld [de], a
    ld c, l
    ld bc, $4fff
    ld [$0106], sp
    rlca
    ld a, [bc]
    rla
    ld bc, $084f
    ld d, $01
    ld c, a
    ld a, [bc]
    ld d, $01
    ld b, $01
    rlca
    rlca
    daa
    ld bc, $0a4f
    ld d, $01
    ld d, $01
    ld a, a
    ld [de], a
    ld d, $01
    ld d, $01
    ld a, a
    ld [de], a
    ld d, $01
    ld d, $01
    ld a, a
    ld [de], a
    ld d, $01
    ld d, $01
    ld a, a
    ld [de], a
    ld d, $01
    ld d, $01
    ld a, a
    ld [de], a
    ld d, $01
    ld d, $01
    ld a, a
    ld [de], a
    ld d, $01
    ld d, $01
    ld a, a
    ld [de], a
    ld d, $01
    ld d, $01
    ld a, a
    ld [de], a
    ld d, $01
    ld d, $01
    ld a, a
    ld [de], a
    ld d, $01
    rst $38
    ld c, a
    ld [$044f], sp
    jr nc, jr_024_55e2

    ld a, a

jr_024_55e2:
    ld b, $31
    ld bc, $084f
    ld c, a
    inc b
    ld a, a
    ld [$0c4f], sp
    ld [hl-], a
    ld bc, $067f
    inc sp
    ld bc, $144f
    ld c, a
    ld [bc], a
    ld b, $01
    rlca
    ld c, $17
    ld bc, $024f
    ld c, a
    ld [bc], a
    ld d, $01
    ld a, a
    ld c, $16
    ld bc, $024f
    ld c, a
    ld [bc], a
    ld d, $01
    ld a, a
    ld c, $16
    ld bc, $024f
    ld c, a
    ld [bc], a
    ld d, $01
    ld a, a
    ld c, $16
    ld bc, $024f
    ld c, a
    ld [bc], a
    ld d, $01
    ld a, a
    ld c, $16
    ld bc, $024f
    ld c, a
    ld [bc], a
    ld d, $01
    ld a, a
    ld c, $16
    ld bc, $024f
    ld c, a
    ld [bc], a
    ld h, $01
    rlca
    ld c, $27
    ld bc, $024f
    ld c, a
    inc d
    rst $38

Call_024_563e:
    jr jr_024_566f

    push bc
    call Call_024_564e
    pop bc
    ld a, [$d958]
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


Call_024_564e:
    ld hl, $ffa9
    ld a, [hl]
    and $80
    jr nz, jr_024_565c

    ld a, [hl]
    and $40
    jr nz, jr_024_5666

    ret


jr_024_565c:
    ld hl, $d958
    ld a, [hl]
    and a
    ret z

    dec [hl]
    dec [hl]
    jr jr_024_566f

jr_024_5666:
    ld hl, $d958
    ld a, [hl]
    cp $50
    ret nc

    inc [hl]
    inc [hl]

jr_024_566f:
    ld hl, $d958
    ld d, [hl]
    ld hl, $56ad

jr_024_5676:
    ld a, [hl+]
    cp $ff
    jr z, jr_024_5682

    cp d
    jr z, jr_024_5686

    inc hl
    inc hl
    jr jr_024_5676

jr_024_5682:
    call Call_024_5888
    ret


jr_024_5686:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $568e
    push de
    jp hl


    ld a, [$c6d9]
    and a
    ret z

    xor a
    ldh [$d4], a
    ld hl, $c556
    call $1078
    ld a, $01
    ldh [$d4], a

jr_024_56a0:
    ret


    ld [$c6d9], a
    ld a, [hl+]
    ld [$c6da], a
    ld a, [hl+]
    ld [$c6db], a
    ret


    db $10
    ret


    ld d, [hl]
    inc e
    ret c

    ld d, [hl]
    jr nz, @-$1e

    ld d, [hl]
    jr z, jr_024_56a0

    ld d, [hl]
    inc [hl]
    ldh a, [rRP]
    ld b, b
    ld a, [$4856]
    add hl, bc
    ld d, a
    ld c, [hl]
    jr @+$59

    ld d, b
    daa
    ld d, a
    rst $38
    call Call_024_5744
    jr nc, jr_024_5740

    ld a, [$d269]
    and a
    jp z, Jump_024_5766

    jp Jump_024_5753


    call Call_024_5744
    jr nc, jr_024_5740

    jp Jump_024_577b


    call Call_024_5744
    jr nc, jr_024_5740

    jp Jump_024_5790


    call Call_024_5744
    jr nc, jr_024_5740

    jp Jump_024_57a5


    ld a, [$c6d8]
    cp $09
    jr nz, jr_024_5740

    jp Jump_024_57d5


    call Call_024_5744
    jr c, jr_024_5740

    ld a, [$d957]
    bit 3, a
    jr z, jr_024_5740

    jp Jump_024_57ea


    call Call_024_5744
    jr c, jr_024_5740

    ld a, [$d957]
    bit 3, a
    jr z, jr_024_5740

    jp Jump_024_57ff


    call Call_024_5744
    jr c, jr_024_5740

    ld a, [$d957]
    bit 3, a
    jr z, jr_024_5740

    jp Jump_024_5829


    ld a, [$d84c]
    bit 4, a
    jr z, jr_024_5740

    ld a, [$c6d8]
    cp $24
    jr z, jr_024_573d

    cp $25
    jr z, jr_024_573d

    cp $26
    jr nz, jr_024_5740

jr_024_573d:
    jp Jump_024_583e


jr_024_5740:
    call Call_024_5888
    ret


Call_024_5744:
    ld a, [$c6d8]
    cp $5f
    jr z, jr_024_5751

    cp $2f
    jr c, jr_024_5751

    and a
    ret


jr_024_5751:
    scf
    ret


Jump_024_5753:
    xor a
    ld [$d002], a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $58bf
    ret


Jump_024_5766:
    ld a, $01
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $58cc
    ret


Jump_024_577b:
    ld a, $02
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $58d6
    ret


Jump_024_5790:
    ld a, $03
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $58e1
    ret


Jump_024_57a5:
    ld a, $04
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $57d4
    ld a, [$d84d]
    bit 0, a
    ret z

    ld de, $57c3
    ret


    add c
    sub h
    add h
    adc l
    add b
    ldh [$92], a
    ld a, a
    adc a
    add b
    sub d
    sub d
    sub [hl]
    adc [hl]
    sub c
    add e
    ld d, b
    ld d, b

Jump_024_57d5:
    ld a, $09
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $58ef
    ret


Jump_024_57ea:
    ld a, $05
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $58f5
    ret


Jump_024_57ff:
    ld a, $06
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $5905
    ret


    ld a, $07
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $5905
    ret


Jump_024_5829:
    ld a, $08
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $5914
    ret


Jump_024_583e:
    ld a, $0a
    ld [$d002], a
    xor a
    ld [$d005], a
    ld a, $2e
    ld hl, $4612
    call Call_024_587c
    ld de, $58ef
    ret


    ret


    push de
    ld a, e
    ld [$c6dc], a
    ld de, $0000
    call $3b97
    pop de
    ld a, e
    ld [$c2c0], a
    call $3b97
    ret


    push de
    ld a, $fe
    ld [$c6dc], a
    ld de, $0000
    call $3b97
    pop de
    ld de, $003f
    call $3b97
    ret


Call_024_587c:
    ld [$c6d9], a
    ld a, l
    ld [$c6da], a
    ld a, h
    ld [$c6db], a
    ret


Call_024_5888:
    call Call_024_589d
    call Call_024_58a9
    xor a
    ld [$c6d9], a
    ld [$c6da], a
    ld [$c6db], a
    ld a, $01
    ldh [$d4], a
    ret


Call_024_589d:
    ld de, $0000
    call $3b97
    ld a, $ff
    ld [$c6dc], a
    ret


Call_024_58a9:
    xor a
    ldh [$d4], a
    ld hl, $c541
    ld bc, $0312
    call $0fb6
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    ret


    adc [hl]
    add b
    adc d
    call nc, $e17f
    ld [c], a
    ld a, a
    sub e
    and b
    xor e
    xor d
    ld d, b
    ld d, h
    add e
    add h
    sub a
    ld a, a
    sub d
    and a
    xor [hl]
    or [hl]
    ld d, b
    ld d, h
    adc h
    adc [hl]
    adc l
    ld a, a
    adc h
    or h
    or d
    xor b
    and d
    ld d, b
    adc e
    or h
    and d
    xor d
    cp b
    ld a, a
    add d
    and a
    and b
    xor l
    xor l
    and h
    xor e
    ld d, b
    and $e6
    and $e6
    and $50
    adc a
    xor e
    and b
    and d
    and h
    or d
    ld a, a
    jp hl


    ld a, a
    adc a
    and h
    xor [hl]
    xor a
    xor e
    and h
    ld d, b
    adc e
    and h
    or e
    call nc, $807f
    xor e
    xor e
    ld a, a
    sub d
    xor b
    xor l
    and [hl]
    rst $20
    ld d, b
    ld d, h
    ld a, a
    add l
    adc e
    sub h
    sub e
    add h
    ld d, b
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    ld a, [$d0ed]
    push af
    xor a
    ld [$d0ed], a
    call $31f3
    call $0fc8
    call $300b
    call $0568
    call Call_024_4c4e
    ld a, $23
    ld hl, $4f53
    rst $08
    ld a, $08
    call $3cb4
    ld a, $e3
    ldh [rLCDC], a
    call Call_024_4d56
    ld [$d002], a
    ld [$d003], a
    xor a
    ldh [$d4], a
    call Call_024_5a04
    call $3200
    ld a, [$d002]
    call Call_024_506a
    ld a, [$d003]
    call Call_024_5098
    ld a, c
    ld [$d004], a
    ld a, b
    ld [$d005], a
    ld b, $02
    call $3340
    call $32f9
    ldh a, [$e6]
    and a
    jr z, jr_024_598b

    ld a, $e4
    call $0cf8
    call $045a

jr_024_598b:
    ld a, [$d002]
    cp $2f
    jr nc, jr_024_599b

    ld d, $2e
    ld e, $01
    call Call_024_59b0
    jr jr_024_59a1

jr_024_599b:
    call Call_024_50e8
    call Call_024_59b0

jr_024_59a1:
    pop af
    ld [$d0ed], a
    pop af
    ldh [$aa], a
    pop af
    ld [$cfcc], a
    call $31f3
    ret


Call_024_59b0:
jr_024_59b0:
    call $0a57
    ld hl, $ffa7
    ld a, [hl]
    and $02
    ret nz

    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_024_59d4

    ld a, [hl]
    and $80
    jr nz, jr_024_59e1

jr_024_59c7:
    push de
    ld a, $23
    ld hl, $4f69
    rst $08
    pop de
    call $045a
    jr jr_024_59b0

jr_024_59d4:
    ld hl, $d003
    ld a, [hl]
    cp d
    jr c, jr_024_59de

    ld a, e
    dec a
    ld [hl], a

jr_024_59de:
    inc [hl]
    jr jr_024_59ec

jr_024_59e1:
    ld hl, $d003
    ld a, [hl]
    cp e
    jr nz, jr_024_59eb

    ld a, d
    inc a
    ld [hl], a

jr_024_59eb:
    dec [hl]

jr_024_59ec:
    push de
    ld a, [$d003]
    call Call_024_50b4
    ld a, [$d004]
    ld c, a
    ld a, [$d005]
    ld b, a
    ld a, [$d003]
    call Call_024_50d4
    pop de
    jr jr_024_59c7

Call_024_5a04:
    ld a, [$d002]
    cp $2f
    jr nc, jr_024_5a0f

    ld e, $00
    jr jr_024_5a11

jr_024_5a0f:
    ld e, $01

jr_024_5a11:
    ld a, $24
    ld hl, $5ae1
    rst $08
    ld a, $07
    ld bc, $0006
    ld hl, $c4a1
    call $3041
    ld hl, $c4a0
    ld [hl], $06
    ld hl, $c4a7
    ld [hl], $17
    ld hl, $c4bb
    ld [hl], $16
    ld hl, $c4cf
    ld [hl], $26
    ld a, $07
    ld bc, $000b
    ld hl, $c4d0
    call $3041
    ld hl, $c4db
    ld [hl], $17
    ld a, [$d003]
    call Call_024_50b4
    ld a, $24
    ld hl, $5f13
    rst $08
    ret


    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call Call_024_5a87
    ld c, $64
    call $0468

jr_024_5a62:
    call $0a57
    ldh a, [$a7]
    and $03
    jr nz, jr_024_5a7f

    ld a, [$c6da]
    ld l, a
    ld a, [$c6db]
    ld h, a
    ld a, [$c6d9]
    and a
    jr z, jr_024_5a7a

    rst $08

jr_024_5a7a:
    call $045a
    jr jr_024_5a62

jr_024_5a7f:
    pop af
    ld [$cfcc], a
    call Call_024_5492
    ret


Call_024_5a87:
    ld a, $ff
    ld [$c6dc], a
    ld hl, $5ab9
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $5a9b
    push de
    jp hl


    push de
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    ld hl, $c5b9
    ld [hl], $72
    pop de
    ld hl, $c5ba
    call $1078
    ld h, b
    ld l, c
    ld [hl], $73
    call $31f6
    ret


    bit 3, d
    ld d, e
    ld d, a
    ld h, [hl]
    ld d, a
    ld a, e
    ld d, a
    sub b
    ld d, a
    push de
    ld d, a
    ld_long $ff57, a
    ld d, a
    inc d
    ld e, b
    call $2f17
    and a
    jr nz, jr_024_5ade

    call $05a7
    ld a, [$d269]
    and a
    jp z, Jump_024_5766

    jp Jump_024_5753


jr_024_5ade:
    jp Jump_024_57ea


    ld a, e
    and a
    jr nz, jr_024_5aec

    call Call_024_5ff2
    call Call_024_5eff
    ret


jr_024_5aec:
    call Call_024_5ff2
    call Call_024_5f04
    ret


    call $31f3
    call $0fc8
    call $300b
    ld hl, $ffaa
    ld a, [hl]
    push af
    ld [hl], $01
    xor a
    ldh [$d4], a
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_024_5ff2
    ld de, $62e1
    ld hl, $9300
    ld bc, $2406
    call $0f1e
    call Call_024_5c90
    call Call_024_5c8f
    ld b, $02
    call $3340
    call $32f9

jr_024_5b29:
    call $0a57
    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_024_5b4a

    ld a, [hl]
    and $01
    jr nz, jr_024_5b4e

    call Call_024_5b73
    call Call_024_5c17
    ld a, $23
    ld hl, $4f69
    rst $08
    call $045a
    jr jr_024_5b29

jr_024_5b4a:
    ld a, $ff
    jr jr_024_5b5a

jr_024_5b4e:
    ld a, [$d002]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $5c5f
    add hl, de
    ld a, [hl]

jr_024_5b5a:
    ld [$d002], a
    pop af
    ldh [$aa], a
    call $31f3
    ld a, $90
    ldh [$d2], a
    xor a
    ldh [$d6], a
    ld a, $98
    ldh [$d7], a
    ld a, [$d002]
    ld e, a
    ret


Call_024_5b73:
    ld a, [$d005]
    ld e, a
    ld a, [$d006]
    ld d, a
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_024_5b89

    ld a, [hl]
    and $80
    jr nz, jr_024_5b9b

    ret


jr_024_5b89:
    ld hl, $d002
    ld a, [hl]
    cp d
    jr nz, jr_024_5b93

    ld a, e
    dec a
    ld [hl], a

jr_024_5b93:
    inc [hl]
    call Call_024_5c3c
    jr z, jr_024_5b89

    jr jr_024_5bab

jr_024_5b9b:
    ld hl, $d002
    ld a, [hl]
    cp e
    jr nz, jr_024_5ba5

    ld a, d
    inc a
    ld [hl], a

jr_024_5ba5:
    dec [hl]
    call Call_024_5c3c
    jr z, jr_024_5b9b

jr_024_5bab:
    call Call_024_5bb5
    call $31f6
    xor a
    ldh [$d4], a
    ret


Call_024_5bb5:
    ld hl, $c4a1
    ld a, $30
    ld [hl+], a
    ld bc, $0010
    ld a, $7f
    call $3041
    ld a, $31
    ld [hl], a
    ld hl, $c4b5
    ld bc, $0012
    ld a, $7f
    call $3041
    ld hl, $c4c9
    ld a, $32
    ld [hl+], a
    ld bc, $0010
    ld a, $7f
    call $3041
    ld a, $33
    ld [hl], a
    ld hl, $c4a2
    ld de, $5bf4
    call $1078
    call Call_024_5bfb
    ld hl, $c4c6
    ld [hl], $34
    ret


    sub [hl]
    and a
    and h
    or c
    and h
    and $50

Call_024_5bfb:
    ld a, [$d002]
    ld l, a
    ld h, $00

Call_024_5c01:
    add hl, hl
    ld de, $5c5e
    add hl, de
    ld e, [hl]
    ld a, $72
    ld hl, $68a5
    rst $08
    ld hl, $c4b6
    ld de, $d073
    call $1078
    ret


Call_024_5c17:
    ld a, [$d002]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $5c5e
    add hl, de
    ld e, [hl]
    ld a, $72
    ld hl, $6896
    rst $08
    ld a, [$d003]
    ld c, a
    ld a, [$d004]
    ld b, a
    ld hl, $0004
    add hl, bc
    ld [hl], e
    ld hl, $0005
    add hl, bc
    ld [hl], d
    ret


Call_024_5c3c:
    push bc
    push de
    push hl
    ld l, [hl]
    ld h, $00
    add hl, hl
    ld de, $5c5f
    add hl, de
    ld c, [hl]
    call Call_024_5c50
    pop hl
    pop de
    pop bc
    and a
    ret


Call_024_5c50:
    ld hl, $dca5
    ld b, $02
    ld d, $00
    ld a, $03
    call $2d83
    ld a, c
    ret


    ld bc, $030e
    rrca
    ld b, $10
    inc c
    ld [de], a
    db $10
    inc d
    ld d, $16
    dec de
    dec d
    ld hl, $2413
    rla
    ld h, $18
    add hl, hl
    add hl, de
    ld l, $1a
    cpl
    ld [bc], a
    ld sp, $3303
    inc b
    scf
    dec b
    dec a
    rlca
    ld b, d
    ld b, $45
    ld [$0a47], sp
    ld c, b
    add hl, bc
    ld d, c
    dec bc
    ld d, l
    inc c
    ld e, d
    dec c
    rst $38

Call_024_5c8f:
    ret


Call_024_5c90:
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2caf
    cp $00
    jr nz, jr_024_5caa

    ld a, [$dcad]
    ld b, a
    ld a, [$dcae]
    ld c, a
    call $2caf

jr_024_5caa:
    cp $2f
    jr nc, jr_024_5cc7

    push af
    ld a, $00
    ld [$d002], a
    ld [$d005], a
    ld a, $0b
    ld [$d006], a
    call Call_024_5eff
    call Call_024_5cf9
    pop af
    call Call_024_5fa6
    ret


jr_024_5cc7:
    push af
    ld c, $0d
    call Call_024_5c50
    and a
    jr z, jr_024_5ce8

    ld a, $0c
    ld [$d005], a
    ld a, $17
    ld [$d006], a
    ld [$d002], a
    call Call_024_5f04
    call Call_024_5cf9
    pop af
    call Call_024_5fa6
    ret


jr_024_5ce8:
    ld a, $00
    ld [$d002], a
    ld [$d005], a
    ld a, $0b
    ld [$d006], a
    call Call_024_5eff
    pop af

Call_024_5cf9:
    call Call_024_5bb5
    call Call_024_5f13
    ld hl, $9800
    call Call_024_5ee4
    call Call_024_5f7b
    ld a, c
    ld [$d003], a
    ld a, b
    ld [$d004], a
    ret


    ld a, [$d002]
    push af
    ld a, [$d003]
    push af
    ld a, e
    ld [$d002], a
    call $300b
    xor a
    ldh [$d4], a
    ld a, $01
    ldh [$aa], a
    ld de, $62d1
    ld hl, $87f0
    ld bc, $2401
    call $0eba
    call Call_024_5ed0
    ld hl, $8780
    ld c, $04
    call $0eba
    call Call_024_5ff2
    call Call_024_5f04
    call Call_024_5de9
    call Call_024_5f13
    ld hl, $9c00
    call Call_024_5ee4
    call Call_024_5eff
    call Call_024_5de9
    call Call_024_5f13
    ld hl, $9800
    call Call_024_5ee4
    ld b, $02
    call $3340
    call $32f9
    xor a
    ldh [$d4], a
    xor a
    call Call_024_5e1e

jr_024_5d6e:
    call $0a57
    ld hl, $ffa7
    ld a, [hl]
    and $03
    jr nz, jr_024_5d8f

    ldh a, [$a4]
    and $04
    jr nz, jr_024_5d87

    call Call_024_5d9b
    call Call_024_5dcd
    jr jr_024_5d8a

jr_024_5d87:
    call Call_024_5e5a

jr_024_5d8a:
    call $045a
    jr jr_024_5d6e

jr_024_5d8f:
    call $300b
    pop af
    ld [$d003], a
    pop af
    ld [$d002], a
    ret


Call_024_5d9b:
    ld a, [hl]
    and $20
    jr nz, jr_024_5da6

    ld a, [hl]
    and $10
    jr nz, jr_024_5db7

    ret


jr_024_5da6:
    ldh a, [$d2]
    cp $90
    ret z

    call $300b
    ld a, $90
    ldh [$d2], a
    xor a
    call Call_024_5e1e
    ret


jr_024_5db7:
    ld a, [$d84c]
    bit 6, a
    ret z

    ldh a, [$d2]
    and a
    ret z

    call $300b
    xor a
    ldh [$d2], a
    ld a, $01
    call Call_024_5e1e
    ret


Call_024_5dcd:
    ldh a, [$9b]
    ld e, a
    and $0f
    ret nz

    ld a, e
    and $10
    jr nz, jr_024_5ddc

    call $300b
    ret


jr_024_5ddc:
    ld hl, $c4a0
    ld de, $c400
    ld bc, $00a0
    call $3026
    ret


Call_024_5de9:
    ld hl, $c4a0
    ld bc, $0014
    ld a, $7f
    call $3041
    ld hl, $c4b4
    ld a, $06
    ld [hl+], a
    ld bc, $0012
    ld a, $07
    call $3041
    ld [hl], $17
    call $343b
    ld hl, $c4a2
    call $1078
    ld h, b
    ld l, c
    ld de, $5e16
    call $1078
    ret


    ldh [$92], a
    ld a, a
    adc l
    add h
    sub d
    sub e
    ld d, b

Call_024_5e1e:
    ld [$d003], a
    ld e, a
    ld a, $0a
    ld hl, $601f
    rst $08
    ld de, $c4a0
    ld hl, $c400

jr_024_5e2e:
    ld a, [de]
    and a
    jr z, jr_024_5e4d

    push de
    ld e, a
    push hl
    ld a, $72
    ld hl, $6896
    rst $08
    pop hl
    ld a, d
    sub $04
    ld [hl+], a
    ld a, e
    sub $04
    ld [hl+], a
    ld a, $7f
    ld [hl+], a
    xor a
    ld [hl+], a
    pop de
    inc de
    jr jr_024_5e2e

jr_024_5e4d:
    ld hl, $c400
    ld de, $c4a0
    ld bc, $00a0
    call $3026
    ret


Call_024_5e5a:
    call Call_024_5ea9
    ret c

    ld a, [$d002]
    ld e, a
    ld a, $72
    ld hl, $6896
    rst $08
    ld c, e
    ld b, d
    ld de, $5e9c
    ld hl, $c400

jr_024_5e70:
    ld a, [de]
    cp $80
    jr z, jr_024_5e91

    add b
    ld [hl+], a
    inc de
    ld a, [de]
    add c
    ld [hl+], a
    inc de
    ld a, [de]
    add $78
    ld [hl+], a
    inc de
    push bc
    ld c, $00
    ld a, [$d472]
    bit 0, a
    jr z, jr_024_5e8c

    inc c

jr_024_5e8c:
    ld a, c
    ld [hl+], a
    pop bc
    jr jr_024_5e70

jr_024_5e91:
    ld hl, $c410
    ld bc, $0090
    xor a
    call $3041
    ret


    ld hl, sp-$08
    nop
    ld hl, sp+$00
    ld bc, $f800
    ld [bc], a
    nop
    nop
    inc bc
    add b

Call_024_5ea9:
    ld a, [$d002]
    cp $5f
    jr z, jr_024_5ebc

    cp $2f
    jr c, jr_024_5ebc

    ld a, [$d003]
    and a
    jr z, jr_024_5ec4

    jr jr_024_5ec2

jr_024_5ebc:
    ld a, [$d003]
    and a
    jr nz, jr_024_5ec4

jr_024_5ec2:
    and a
    ret


jr_024_5ec4:
    ld hl, $c400
    ld bc, $00a0
    xor a
    call $3041
    scf
    ret


Call_024_5ed0:
    ld a, [$d002]
    cp $5f
    jr z, jr_024_5ede

    ld a, $22
    ld hl, $432c
    rst $08
    ret


jr_024_5ede:
    ld de, $4cb2
    ld b, $24
    ret


Call_024_5ee4:
    ld a, l
    ldh [$d6], a
    ld a, h
    ldh [$d7], a
    ldh a, [$e6]
    and a
    jr z, jr_024_5ef8

    ld a, $02
    ldh [$d4], a
    ld c, $03
    call $0468

jr_024_5ef8:
    call $31f6
    xor a
    ldh [$d4], a
    ret


Call_024_5eff:
    ld de, $5fff
    jr jr_024_5f07

Call_024_5f04:
    ld de, $6168

jr_024_5f07:
    ld hl, $c4a0

jr_024_5f0a:
    ld a, [de]
    cp $ff
    ret z

    ld a, [de]
    ld [hl+], a
    inc de
    jr jr_024_5f0a

Call_024_5f13:
    ld hl, $c4a0
    ld de, $cdd9
    ld bc, $0168

jr_024_5f1c:
    ld a, [hl+]
    push hl
    cp $60
    jr nc, jr_024_5f41

    ld hl, $5f4b
    srl a
    jr c, jr_024_5f34

    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    and $07
    jr jr_024_5f42

jr_024_5f34:
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    swap a
    and $07
    jr jr_024_5f42

jr_024_5f41:
    xor a

jr_024_5f42:
    pop hl
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_024_5f1c

    ret


    ld de, $2221
    nop
    ld de, $5413
    ld d, h
    ld de, $2221
    nop
    ld de, $0110
    nop
    ld de, $2221
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc b
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc bc
    inc sp
    inc sp
    inc sp
    inc sp
    nop
    nop
    nop
    nop

Call_024_5f7b:
    ld a, [$d109]
    ld hl, $dcd8
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$d265], a
    ld e, $08
    ld a, $23
    ld hl, $69ac
    rst $08
    ld de, $0000
    ld a, $00
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $08
    ld hl, $0002
    add hl, bc
    ld [hl], $00
    ret


Call_024_5fa6:
    push af
    ld a, $22
    ld hl, $432c
    rst $08
    ld hl, $8100
    ld c, $04
    call $0eba
    ld hl, $00c0
    add hl, de
    ld d, h
    ld e, l
    ld hl, $8140
    ld c, $04
    ld a, $30
    call $0eba
    ld de, $0000
    ld b, $0a
    ld a, [$d472]
    bit 0, a
    jr z, jr_024_5fd3

    ld b, $1e

jr_024_5fd3:
    ld a, b
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $10
    pop af
    ld e, a
    push bc
    ld a, $72
    ld hl, $6896
    rst $08
    pop bc
    ld hl, $0004
    add hl, bc
    ld [hl], e
    ld hl, $0005
    add hl, bc
    ld [hl], d
    ret


Call_024_5ff2:
    ld hl, $4ba0
    ld de, $9000
    ld bc, $3e30
    call $0e73
    ret


    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rla
    ld d, $14
    dec b
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $2423
    inc d
    inc d
    inc d
    inc d
    ld d, $16
    inc d
    inc d
    inc b
    inc b
    inc b
    dec b
    ld de, $1111
    ld de, $1111
    ld hl, $2321
    inc d
    inc d
    inc d
    ld d, $16
    inc d
    inc d
    inc d
    inc d
    inc d
    dec h
    ld de, $1111
    ld de, $2211
    ld c, $00
    ld de, $1413
    inc d
    ld d, $16
    inc d
    inc d
    inc d
    inc d
    dec d
    ld de, $1111
    ld de, $1111
    ld bc, $111a
    inc bc
    dec c
    inc d
    inc d
    ld d, $16
    inc d
    inc h
    inc h
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld a, [de]
    inc c
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    inc d
    inc d
    ld d, $16
    dec h
    ld de, $1a11
    ld de, $1111
    ld a, [de]
    ld de, $0503
    ld de, $2311
    inc d
    ld a, [de]
    inc d
    inc d
    ld d, $16
    ld hl, $1a21
    ld a, [bc]
    ld de, $1a0c
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld de, $1311
    ld a, [de]
    inc d
    inc d
    ld d, $16
    jr jr_024_60ba

    add hl, de
    jr jr_024_60b0

    ld a, [de]
    ld de, $1403
    ld a, [de]
    inc d
    ld a, [de]
    ld de, $1311
    ld a, [de]

jr_024_60b0:
    inc d
    dec c
    ld d, $16
    jr jr_024_60ce

    add hl, de
    jr jr_024_60d1

    ld a, [de]

jr_024_60ba:
    ld de, $0d23
    ld a, [de]
    dec h
    ld a, [de]
    ld de, $1a11
    ld a, [de]
    inc h
    inc h
    ld d, $16
    jr jr_024_60e2

    add hl, de
    jr jr_024_60e5

    ld a, [de]

jr_024_60ce:
    ld de, $2311

jr_024_60d1:
    ld a, [de]
    ld de, $111a
    ld de, $251a
    ld de, $1611
    ld d, $01
    ld [bc], a
    ld c, $18
    jr jr_024_60ec

jr_024_60e2:
    ld de, $1111

jr_024_60e5:
    ld a, [de]
    ld hl, $111a
    ld de, $111a

jr_024_60ec:
    ld de, $1611
    ld d, $11
    ld a, [bc]
    add hl, bc
    jr jr_024_610d

    ld a, [de]
    ld de, $1111
    ld a, [de]
    jr @+$0c

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld a, [de]
    ld d, $16
    ld de, $1822
    jr jr_024_6109

jr_024_6109:
    ld a, [de]
    ld de, $1111

jr_024_610d:
    ld a, [de]
    ld [bc], a
    jr @+$0d

    ld de, $2111
    ld [hl+], a
    jr jr_024_612d

    ld d, $22
    jr jr_024_6133

    jr jr_024_612d

    ld a, [de]
    ld de, $1111
    ld a, [de]
    ld [hl+], a
    jr @+$1a

    dec bc
    ld [hl+], a
    jr @+$1a

    jr @+$18

    ld d, $18

jr_024_612d:
    jr @+$1a

    jr jr_024_6151

    ld a, [de]
    ld a, [de]

jr_024_6133:
    ld a, [bc]
    ld a, [de]
    inc c
    jr jr_024_6150

    jr jr_024_6152

    jr jr_024_6154

    jr jr_024_6156

    ld d, $16
    jr jr_024_615a

    jr jr_024_615c

    jr jr_024_6151

    ld de, $1111
    ld [hl+], a
    jr jr_024_6164

    jr @+$1d

    jr z, jr_024_6179

jr_024_6150:
    ld a, [hl+]

jr_024_6151:
    dec hl

jr_024_6152:
    ld d, $26

jr_024_6154:
    rlca
    rlca

jr_024_6156:
    rlca
    rlca
    rlca
    rlca

jr_024_615a:
    rlca
    rlca

jr_024_615c:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_024_6164:
    rlca
    rlca
    daa
    rst $38
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_024_6179:
    rlca
    rlca
    rla
    ld d, $14
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc h
    dec h
    ld de, $1822
    jr jr_024_61a6

    ld d, $14
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc h
    dec h
    ld de, $2211
    jr jr_024_61ba

    jr jr_024_61ba

    ld d, $14

jr_024_61a6:
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    ld de, $1111
    ld [de], a
    jr @+$1a

    jr @+$1a

    ld d, $16
    dec h

jr_024_61ba:
    inc hl
    inc c
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    ld de, $1a1a
    ld a, [de]
    ld [bc], a
    jr jr_024_61e2

    jr jr_024_61e2

    ld d, $11
    ld de, $231a
    inc h
    inc d
    inc d
    inc d
    inc d
    dec h
    ld de, $141a
    dec b
    ld de, $0201
    jr jr_024_61f6

    ld d, $11

jr_024_61e2:
    ld de, $110c
    ld de, $1a0a
    ld a, [de]
    inc c
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    inc c
    ld de, $1602
    ld d, $11

jr_024_61f6:
    ld de, $111a
    ld de, $231a
    inc h
    dec h
    ld de, $1a11
    inc hl
    inc h
    dec h
    inc c
    ld de, $1612
    ld d, $1a
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld de, $0a1a
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [bc]
    rrca
    ld [hl+], a
    ld d, $16
    ld de, $1a11
    ld de, $0a11
    ld de, $211a
    ld hl, $1a11
    ld de, $1111
    ld a, [de]
    ld [hl+], a
    jr jr_024_6246

    ld d, $11
    ld de, $201a
    ld de, $111a
    ld a, [de]
    jr @+$1a

    dec bc
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld [bc], a
    jr jr_024_625a

    ld d, $11

jr_024_6246:
    ld de, $181a
    db $10
    ld a, [de]
    ld de, $181a
    jr jr_024_6268

    jr jr_024_6262

    ld de, $1a11
    ld [de], a
    jr jr_024_626e

    ld d, $0c

jr_024_625a:
    ld a, [de]
    ld a, [de]
    ld [bc], a
    dec bc
    ld a, [de]
    ld de, $181a

jr_024_6262:
    jr jr_024_6264

jr_024_6264:
    ld bc, $1a11
    ld a, [de]

jr_024_6268:
    ld a, [de]
    ld [de], a
    jr @+$18

    ld d, $18

jr_024_626e:
    jr @+$0d

    ld [hl+], a
    jr @+$0c

    ld [hl+], a
    ld a, [de]
    nop
    ld bc, $1111
    ld de, $111a
    ld de, $1812
    ld d, $16
    jr jr_024_629b

    jr jr_024_629d

    jr jr_024_62a0

    jr jr_024_62a3

    ld a, [de]
    ld a, [de]
    ld a, [bc]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld de, $2221
    jr jr_024_62aa

    ld d, $18
    jr @+$1a

    jr jr_024_62b2

    add hl, de

jr_024_629b:
    jr jr_024_62b5

jr_024_629d:
    jr nz, jr_024_62c0

    ld a, [de]

jr_024_62a0:
    ld hl, $2121

jr_024_62a3:
    ld [hl+], a
    jr jr_024_62be

    jr jr_024_62be

    ld d, $2c

jr_024_62aa:
    dec l
    ld l, $2f
    inc e
    ld a, [bc]
    ld [$080e], sp

jr_024_62b2:
    ld [$1809], sp

jr_024_62b5:
    jr jr_024_62cf

    jr jr_024_62d1

    jr jr_024_62d3

    ld d, $26
    rlca

jr_024_62be:
    rlca
    rlca

jr_024_62c0:
    rlca

jr_024_62c1:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_024_62cf:
    daa
    rst $38

jr_024_62d1:
    ld b, d
    ld b, d

jr_024_62d3:
    ld h, [hl]
    ld h, [hl]
    rst $38
    rst $38
    cp l
    rst $38
    sbc c
    rst $38
    rst $38
    rst $38
    ld e, d
    ld e, d
    inc h
    inc h
    ld hl, sp-$20
    ret nz

    add b
    add b
    nop
    nop
    nop
    rra
    rlca
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ldh [$f8], a
    nop
    nop
    nop
    ld bc, $0301
    rlca
    rra
    jr @+$3e

    ld a, [hl]
    nop
    nop
    ld a, [hl]
    inc a
    jr jr_024_6322

    inc a
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    inc a
    jr jr_024_62c1

    ld [$d002], a
    call $31f3
    call $0fc8
    call $300b
    ld hl, $ffaa
    ld a, [hl]

jr_024_6322:
    push af
    ld [hl], $01
    xor a
    ldh [$d4], a
    ld a, $23
    ld hl, $4f53
    rst $08
    call Call_024_5ff2
    ld de, $62e1
    ld hl, $9300
    ld bc, $2406
    call $0f1e
    call Call_024_5f04
    call Call_024_5bb5
    call Call_024_5f13
    ld hl, $9c00
    call Call_024_5ee4
    call Call_024_5eff
    call Call_024_5bb5
    call Call_024_5f13
    ld hl, $9800
    call Call_024_5ee4
    call Call_024_5f7b
    ld a, c
    ld [$d003], a
    ld a, b
    ld [$d004], a
    ld b, $02
    call $3340
    call $32f9

jr_024_636e:
    call $0a57
    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_024_638f

    ld a, [hl]
    and $01
    jr nz, jr_024_6393

    call Call_024_63b8
    call Call_024_5c17
    ld a, $23
    ld hl, $4f69
    rst $08
    call $045a
    jr jr_024_636e

jr_024_638f:
    ld a, $ff
    jr jr_024_639f

jr_024_6393:
    ld a, [$d002]
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $5c5f
    add hl, de
    ld a, [hl]

jr_024_639f:
    ld [$d002], a
    pop af
    ldh [$aa], a
    call $31f3
    ld a, $90
    ldh [$d2], a
    xor a
    ldh [$d6], a
    ld a, $98
    ldh [$d7], a
    ld a, [$d002]
    ld e, a
    ret


Call_024_63b8:
    ld hl, $ffa9
    ld a, [hl]
    and $90
    jr nz, jr_024_63c6

    ld a, [hl]
    and $60
    jr nz, jr_024_63d3

    ret


jr_024_63c6:
    ld hl, $d002
    ld a, [hl]
    cp $17
    jr c, jr_024_63d0

    ld [hl], $ff

jr_024_63d0:
    inc [hl]
    jr jr_024_63dd

jr_024_63d3:
    ld hl, $d002
    ld a, [hl]
    and a
    jr nz, jr_024_63dc

    ld [hl], $18

jr_024_63dc:
    dec [hl]

jr_024_63dd:
    ld a, [$d002]
    cp $0c
    jr c, jr_024_63ec

    call Call_024_5f04
    xor a
    ld b, $9c
    jr jr_024_63f3

jr_024_63ec:
    call Call_024_5eff
    ld a, $90
    ld b, $98

jr_024_63f3:
    ldh [$d2], a
    ld a, b
    ldh [$d7], a
    call Call_024_5bb5
    call $31f6
    xor a
    ldh [$d4], a
    ret


    push af
    push bc
    push hl
    ld b, e
    call Call_024_645b
    ld hl, $6488
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    call Call_024_641a
    pop hl
    pop bc
    pop af
    ret


Call_024_641a:
    call $2f8c
    cp [hl]
    jr nc, jr_024_643f

    inc hl
    ld e, b
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $2f8c

jr_024_642c:
    cp [hl]
    jr z, jr_024_6436

    jr c, jr_024_6436

    inc hl
    inc hl
    inc hl
    jr jr_024_642c

jr_024_6436:
    inc hl
    ld a, [hl+]
    ld d, a
    and a
    call z, Call_024_6443
    ld e, [hl]
    ret


jr_024_643f:
    ld de, $0000
    ret


Call_024_6443:
    ld e, [hl]
    ld d, $00
    ld hl, $666f
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [$d269]
    and $03
    cp $02
    jr c, jr_024_6458

    inc hl
    inc hl

jr_024_6458:
    ld d, [hl]
    inc hl
    ret


Call_024_645b:
    push hl
    ld hl, $dc1e
    bit 2, [hl]
    pop hl
    jr z, jr_024_646d

    ld a, d
    cp $0b
    jr z, jr_024_6472

    cp $0c
    jr z, jr_024_647d

jr_024_646d:
    dec d
    ld e, d
    ld d, $00
    ret


jr_024_6472:
    ld a, [$dfce]
    cp $01
    jr nz, jr_024_646d

    ld d, $06
    jr jr_024_646d

jr_024_647d:
    ld a, [$dfce]
    cp $02
    jr nz, jr_024_646d

    ld d, $07
    jr jr_024_646d

    add b
    db $e3
    ld h, h
    db $ec
    ld h, h
    ld hl, sp+$64
    add b
    inc b
    ld h, l
    dec c
    ld h, l
    add hl, de
    ld h, l
    add b
    dec h
    ld h, l
    ld l, $65
    ld a, [hl-]
    ld h, l
    add b
    ld b, [hl]
    ld h, l
    ld c, a
    ld h, l

jr_024_64a2:
    ld e, e
    ld h, l
    add b
    ld h, a
    ld h, l
    ld [hl], b
    ld h, l
    ld a, h
    ld h, l
    add b
    adc b
    ld h, l
    sub c
    ld h, l
    sbc l
    ld h, l
    add b
    xor c
    ld h, l
    or d
    ld h, l
    cp [hl]
    ld h, l
    add b
    jp z, $d365

    ld h, l
    rst $18
    ld h, l
    add b
    db $eb
    ld h, l

jr_024_64c3:
    db $f4
    ld h, l
    nop
    ld h, [hl]
    add b
    inc c
    ld h, [hl]
    dec d
    ld h, [hl]
    ld hl, $8066
    dec l
    ld h, [hl]
    ld [hl], $66
    ld b, d
    ld h, [hl]
    add b
    ld c, [hl]
    ld h, [hl]
    ld d, a

jr_024_64d9:
    ld h, [hl]
    ld h, e
    ld h, [hl]
    add b
    dec l
    ld h, [hl]
    ld [hl], $66
    ld b, d
    ld h, [hl]
    or e

jr_024_64e4:
    ld h, d
    ld c, $d9
    db $76
    ld c, $ff
    sbc $0e
    ld e, c
    ld h, e
    jr nc, jr_024_64a2

    ld [c], a
    jr nc, jr_024_64d9

    ld [hl], a
    jr nc, @+$01

    nop
    nop
    ld h, [hl]
    db $d3
    ld h, h
    or d
    nop
    ld bc, $37e6
    ld h, h
    rst $38
    ldh [$64], a
    or e

jr_024_6505:
    ld c, b
    ld c, $d9
    xor d
    ld c, $ff
    ld a, b
    ld a, [bc]
    ld e, c
    ld c, b
    jr nc, jr_024_64c3

    sbc $30
    and $aa
    jr nc, @+$01

    nop
    ld [bc], a
    ld h, [hl]
    ld [c], a

jr_024_651b:
    ld h, h
    or d
    nop
    inc bc
    and $49
    ld h, h
    rst $38
    xor e
    ld h, h
    or e
    adc h
    ld c, $d9
    ld c, a
    ld c, $ff
    adc d
    ld c, $59
    adc e
    jr nc, jr_024_64e4

    adc l
    jr nc, jr_024_651b

    ld d, b
    jr nc, @+$01

    nop
    inc b
    ld h, [hl]
    ld d, b

jr_024_653c:
    ld h, h
    or d
    nop
    dec b
    and $8d
    ld h, h
    rst $38
    rst $00
    ld h, h
    or e

jr_024_6547:
    rst $18
    ld c, $d9
    ld d, [hl]
    ld c, $ff
    inc a
    ld c, $59
    ld c, a
    jr nc, jr_024_6505

    dec a
    jr nc, jr_024_653c

    jp nz, $ff30

    nop
    ld b, $66
    dec a
    ld h, e
    or d
    nop
    rlca
    and $b8
    ld h, h
    rst $38
    jp $b364


jr_024_6568:
    sub e
    dec b
    reti


    sub h
    dec b
    rst $38
    ld [hl], l
    dec b
    ld e, c
    sub h
    ld h, e
    or d
    sub h
    ld h, e
    and $75
    ld h, e
    rst $38
    nop
    ld [$9566], sp

jr_024_657e:
    ld h, h
    or d
    nop
    add hl, bc
    and $95
    ld h, h
    rst $38
    and $64
    or e
    db $d3
    ld c, $d9
    db $d3
    ld c, $ff
    db $d3
    ld c, $59
    db $d3
    jr nc, jr_024_6547

    db $d3
    jr nc, jr_024_657e

    db $d3
    jr nc, @+$01

    nop
    ld a, [bc]
    ld h, [hl]
    db $d3

jr_024_659f:
    ld h, h
    or d
    nop
    dec bc
    and $d3
    ld h, h
    rst $38
    db $d3
    ld h, h
    or e
    db $76
    ld c, $d9
    sbc $0e
    rst $38
    rst $18
    ld c, $59
    ld [hl], a
    jr nc, jr_024_6568

    rst $18
    jr nc, jr_024_659f

    ld h, e
    jr nc, @+$01

    nop
    inc c
    ld h, [hl]
    ldh [$64], a
    or d
    nop
    dec c
    and $e2
    ld h, h
    rst $38
    add d
    ld h, h
    or e
    add d
    dec b
    reti


    add d
    rrca
    rst $38
    add c
    add hl, de
    ld e, c
    add d
    dec sp
    or d
    add d
    dec sp
    and $81
    dec sp
    rst $38
    nop
    ld c, $66
    add c
    ld h, h
    or d
    nop
    rrca
    and $81
    ld h, h
    rst $38
    add c
    ld h, h
    or e
    dec a
    ld e, l
    reti


    ld d, a
    ld e, e
    rst $38
    cp d
    ld e, h
    ld e, c
    xor e
    ld e, h
    or d
    adc e
    ld e, h
    and $c3
    ld e, h
    rst $38
    nop
    db $10

Call_024_6600:
    ld h, [hl]
    sub h
    ld h, e
    or d
    nop
    ld de, $94e6
    ld h, e
    rst $38
    sub h
    ld h, e
    or e

jr_024_660d:
    ld d, a
    ld c, e
    reti


    ld [hl], l
    ld c, e
    rst $38
    ld e, d
    ld c, e
    ld e, c
    ld e, d
    ld c, e
    or d
    ld [hl], l
    ld c, e
    and $57
    ld c, e
    rst $38
    nop
    ld [de], a
    ld h, [hl]
    ld e, e
    ld h, h
    or d
    nop
    inc de
    and $50
    ld h, h
    rst $38
    and $64

jr_024_662d:
    or e
    ld e, e
    ld h, h
    reti


    sub l
    ld h, h
    rst $38
    ld a, c
    ld h, h
    ld e, c
    sub l
    ld h, h
    or d
    add [hl]
    ld h, h
    and $83
    ld h, h
    rst $38
    nop
    inc d
    ld h, [hl]
    ld a, c

jr_024_6644:
    ld h, h
    or d

jr_024_6646:
    nop

jr_024_6647:
    dec d
    and $83
    ld h, h
    rst $38
    and $64
    or e
    db $76
    ld c, $d9

jr_024_6652:
    ld h, d
    ld c, $ff
    inc a
    ld a, [bc]
    ld e, c
    dec a
    jr nc, jr_024_660d

    ld [hl], a
    jr nc, jr_024_6644

    ld h, e
    jr nc, @+$01

    nop
    ld b, $66
    ld h, e
    ld h, h
    or d
    nop
    rlca
    and $77
    ld h, h
    rst $38

jr_024_666d:
    ldh [$64], a

jr_024_666f:
    sbc $30
    ld a, b
    jr nc, jr_024_6652

    ld h, h
    ld a, b
    ld h, h
    xor d
    jr nc, @+$5c

    jr nc, jr_024_66f4

    ld h, h
    ld e, d

Jump_024_667e:
    ld h, h
    rst $18
    jr nc, @+$79

    jr nc, jr_024_6647

    ld h, h
    db $d3
    ld h, h
    dec a
    jr nc, @+$51

    jr nc, jr_024_6646

    ld h, h
    ld a, $64
    sub h
    ld h, e
    ld [hl], l
    ld h, e
    and $64
    sub l
    ld h, h
    db $d3
    jr nc, jr_024_666d

    jr nc, jr_024_666f

    ld h, h
    db $d3
    ld h, h
    rst $18
    jr nc, @-$1f

    jr nc, @-$1f

    ld h, h
    rst $18
    ld h, h
    add d
    jr c, @-$7c

    jr c, jr_024_662d

    ld h, h
    add c
    ld h, h
    ld a, b
    ld e, d
    ld e, d
    ld e, e
    sub h
    ld h, e
    sub h
    ld h, e
    ld [hl], h
    ld c, d
    ld d, [hl]
    ld c, d
    ld [hl], l
    ld h, e
    ld [hl], l
    ld h, e
    and $64
    ld e, e
    ld h, h
    sub l
    ld h, h
    ld e, e
    ld h, h
    ld hl, $cfcc
    set 4, [hl]
    call Call_024_66f7
    call $045a

jr_024_66d2:
    call Call_024_67af
    jr nc, jr_024_66d2

    call $3c55
    ld de, $009d
    call $3c23
    call $3c55
    call $31f3
    ld a, $41
    ld hl, $5fd0
    rst $08
    ld hl, $cfcc
    res 4, [hl]
    ld hl, $ff40

jr_024_66f4:
    res 2, [hl]
    ret


Call_024_66f7:
    call $31f3
    call $0fc8
    call $300b
    ld de, $0000
    call $3b97
    call $045a
    call $0568
    ld hl, $9800
    ld bc, $0400
    ld a, $7f
    call $3041
    ld b, $05
    call $3340
    ld hl, $4f53
    ld a, $23
    rst $08
    ld hl, $c6d0
    ld bc, $0048
    xor a
    call $3041
    ld hl, $75cd
    ld de, $8000
    call $0b50
    ld hl, $782d
    ld de, $8400
    call $0b50
    ld hl, $744d
    ld de, $9000
    call $0b50
    ld hl, $75cd
    ld de, $9250
    call $0b50
    ld hl, $735d
    ld de, $c4a0
    ld bc, $00f0
    call $3026
    ld hl, $ff40
    set 2, [hl]
    call $058a
    ld hl, $c6d0
    ld bc, $0064
    xor a
    call $3041
    call Call_024_6a98
    call Call_024_679b
    ld a, $07
    ld hl, $c300
    ld [hl+], a
    ld [hl], $40
    xor a
    ld [$cf63], a
    ld a, $ff
    ld [$c709], a
    ld de, $0012
    call $3b97
    xor a
    ld [$d002], a
    call $2f8c
    and $2a
    ret nz

    ld a, $01
    ld [$d002], a
    ret


Call_024_679b:
    ld a, $e4
    call $0c9f
    ld de, $e4e4
    ldh a, [$e6]
    and a
    jr nz, jr_024_67ab

    ld de, $c0e4

jr_024_67ab:
    call $0ccb
    ret


Call_024_67af:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_024_67d1

    call Call_024_6844
    call Call_024_6b0f
    xor a
    ld [$c3b5], a
    ld hl, $4fa8
    ld a, $23
    rst $08
    call Call_024_67f8
    call Call_024_67d3
    call $045a
    and a
    ret


jr_024_67d1:
    scf
    ret


Call_024_67d3:
    ret


    ld a, [$c6d0]
    and a
    ret nz

    ld a, [$c6e0]
    and a
    ret nz

    ld a, [$c70c]
    and a
    jr nz, jr_024_67ea

    ld a, $e4
    call $0c9f
    ret


jr_024_67ea:
    ld a, [$cfb2]
    and $07
    ret nz

    ldh a, [rBGP]
    xor $0c
    call $0c9f
    ret


Call_024_67f8:
    ld hl, $c4b9
    ld de, $d855
    ld bc, $8204
    call $3198
    ld hl, $c4bf
    ld de, $c711
    ld bc, $8204
    call $3198
    ret


    ld a, [$c709]
    add $00
    daa
    ld e, a
    and $0f
    add $f6
    ld hl, $c4a1
    ld [hl], a
    ld a, e
    swap a
    and $0f
    add $f6
    ld hl, $c4a0
    ld [hl], a
    ret


    ld hl, $cf66
    ld a, [hl]
    inc [hl]
    and $07
    ret nz

    ld hl, $c442
    ld c, $18

jr_024_6839:
    ld a, [hl]
    xor $20
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_024_6839

    ret


Call_024_6844:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $6853
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld a, [hl]
    ld l, b
    adc [hl]
    ld l, b
    add $68
    sub $68
    and $68
    nop
    ld l, c
    db $10
    ld l, c
    ld a, [hl+]
    ld l, c
    ld a, [hl-]
    ld l, c
    ld a, c
    ld l, b
    ld a, c
    ld l, b
    ld a, c
    ld l, b
    ld d, l
    ld l, c
    ld l, e
    ld l, c
    add a
    ld l, c
    sbc [hl]
    ld l, c
    and h
    ld l, c
    reti


    ld l, c
    ldh a, [rBCPD]

Call_024_6879:
    ld hl, $cf63
    inc [hl]
    ret


    call Call_024_6879
    xor a
    ld [$c70b], a
    ld [$c70c], a
    ld a, $ff
    ld [$c70d], a
    ret


    call Call_024_707c
    jr nc, jr_024_6899

    ld a, $12
    ld [$cf63], a
    ret


jr_024_6899:
    call Call_024_6879
    call Call_024_703f
    call Call_024_7002
    ld a, $20
    ld [$cf64], a
    ld a, $04
    ld [$c6d0], a
    ld [$c6e0], a
    ld [$c6f0], a
    ld a, $04
    ld [$c6d9], a
    ld [$c6e9], a
    ld [$c6f9], a
    call $3c55
    ld a, $2c
    call Call_024_731e
    ret


    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_024_68cf

    dec [hl]
    ret


jr_024_68cf:
    call Call_024_6879
    xor a
    ldh [$a5], a
    ret


    ld hl, $ffa5
    ld a, [hl]
    and $01
    ret z

    call Call_024_6879
    call Call_024_6a2b
    ld [$c6d0], a
    ld a, [$c6d0]
    cp $00
    ret nz

    ld a, $ba
    call Call_024_731e
    ld bc, $c6d0
    ld de, $c700
    call Call_024_69f6
    call Call_024_6879
    xor a
    ldh [$a5], a
    ld hl, $ffa5
    ld a, [hl]
    and $01
    ret z

    call Call_024_6879
    call Call_024_6a2e
    ld [$c6e0], a
    ld a, [$c6e0]
    cp $00
    ret nz

    ld a, $ba
    call Call_024_731e
    ld bc, $c6e0
    ld de, $c703
    call Call_024_69f6
    call Call_024_6879
    xor a
    ldh [$a5], a
    ld hl, $ffa5
    ld a, [hl]
    and $01
    ret z

    call Call_024_6879
    call Call_024_6a60
    ld [$c6f0], a
    ld a, [$c6f0]
    cp $00
    ret nz

    ld a, $ba
    call Call_024_731e
    ld bc, $c6f0
    ld de, $c706
    call Call_024_69f6
    call Call_024_6879
    xor a
    ldh [$a5], a
    ret


    ld a, [$c70d]
    cp $ff
    jr nz, jr_024_6963

    call Call_024_6879
    call Call_024_6879
    ret


jr_024_6963:
    call Call_024_6879
    ld a, $10
    ld [$cf64], a
    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_024_6980

    dec [hl]
    srl a
    ret z

    ldh a, [rOBP0]
    xor $ff
    ld e, a
    ld d, a
    call $0ccb
    ret


jr_024_6980:
    call Call_024_679b
    call Call_024_6879
    ret


    xor a
    ld [$c70b], a
    ld [$c70c], a
    ld a, $e4
    call $0c9f
    call Call_024_7124
    xor a
    ld [$cf64], a
    call Call_024_6879
    ret


    call Call_024_7158
    call Call_024_6879
    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    and $01
    ret z

    ld hl, $c711
    ld a, [hl+]
    ld d, a
    or [hl]
    jr z, jr_024_69d5

    ld e, [hl]
    dec de
    ld [hl], e
    dec hl
    ld [hl], d
    ld hl, $d855
    ld d, [hl]
    inc hl
    ld e, [hl]
    call Call_024_6a04
    jr c, jr_024_69c5

    inc de

jr_024_69c5:
    ld [hl], e
    dec hl
    ld [hl], d
    ld a, [$cf64]
    and $07
    ret z

    ld de, $0067
    call $3c23
    ret


jr_024_69d5:
    call Call_024_6879
    ret


    call Call_024_704c
    call $0a80
    call Call_024_70e9
    jr c, jr_024_69ea

    ld a, $00
    ld [$cf63], a
    ret


jr_024_69ea:
    ld a, $12
    ld [$cf63], a
    ret


    ld hl, $cf63
    set 7, [hl]
    ret


Call_024_69f6:
    push de
    call Call_024_6a12
    pop de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ret


Call_024_6a04:
    ld a, d
    cp $27
    jr c, jr_024_6a10

    ld a, e
    cp $0f
    jr c, jr_024_6a10

    scf
    ret


jr_024_6a10:
    and a
    ret


Call_024_6a12:
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_024_6a1c

    ld a, $0f

jr_024_6a1c:
    dec a
    and $0f
    ld e, a
    ld d, $00
    ld hl, $0001
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ret


Call_024_6a2b:
    ld a, $07
    ret


Call_024_6a2e:
    ld a, [$c70a]
    cp $02
    jr c, jr_024_6a4e

    ld a, [$c709]
    and a
    jr z, jr_024_6a3f

    cp $ff
    jr nz, jr_024_6a4e

jr_024_6a3f:
    call Call_024_6a51
    jr nz, jr_024_6a4e

    call $2f8c
    cp $50
    jr nc, jr_024_6a4e

    ld a, $0a
    ret


jr_024_6a4e:
    ld a, $08
    ret


Call_024_6a51:
    ld a, [$c700]
    and a
    ret z

    ld a, [$c701]
    and a
    ret z

    ld a, [$c702]
    and a
    ret


Call_024_6a60:
    ld a, [$c70b]
    and a
    jr z, jr_024_6a95

    ld a, [$c70c]
    and a
    jr z, jr_024_6a95

    ld a, [$c709]
    and a
    jr nz, jr_024_6a84

    call $2f8c
    cp $b4
    jr nc, jr_024_6a95

    cp $78
    jr nc, jr_024_6a92

    cp $3c
    jr nc, jr_024_6a8f

    ld a, $15
    ret


jr_024_6a84:
    call $2f8c
    cp $a0
    jr nc, jr_024_6a95

    cp $50
    jr nc, jr_024_6a92

jr_024_6a8f:
    ld a, $12
    ret


jr_024_6a92:
    ld a, $10
    ret


jr_024_6a95:
    ld a, $09
    ret


Call_024_6a98:
    ld bc, $c6d0
    ld hl, $0006
    add hl, bc
    ld de, $c440
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $0001
    add hl, bc
    ld de, $7327
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $0008
    add hl, bc
    ld [hl], $30
    call Call_024_6af9
    ld bc, $c6e0
    ld hl, $0006
    add hl, bc
    ld de, $c460
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $0001
    add hl, bc
    ld de, $7339
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $0008
    add hl, bc
    ld [hl], $50
    call Call_024_6af9
    ld bc, $c6f0
    ld hl, $0006
    add hl, bc
    ld de, $c480
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $0001
    add hl, bc
    ld de, $734b
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $0008
    add hl, bc
    ld [hl], $70
    call Call_024_6af9
    ret


Call_024_6af9:
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ld hl, $0003
    add hl, bc
    ld [hl], $0e
    ld hl, $0004
    add hl, bc
    ld [hl], $00
    call Call_024_6b53
    ret


Call_024_6b0f:
    ld bc, $c6d0
    call Call_024_6b22
    ld bc, $c6e0
    call Call_024_6b22
    ld bc, $c6f0
    call Call_024_6b22
    ret


Call_024_6b22:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    and $0f
    jr nz, jr_024_6b2e

    call Call_024_6bd4

jr_024_6b2e:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    and a
    ret z

    ld d, a
    ld hl, $0004
    add hl, bc
    add [hl]
    ld [hl], a
    and $0f
    jr z, jr_024_6b53

    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, $08

jr_024_6b49:
    ld a, [hl]
    add d
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    dec e
    jr nz, jr_024_6b49

    ret


Call_024_6b53:
jr_024_6b53:
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    ld [$c713], a
    ld a, $50
    ld [$c714], a
    ld hl, $0003
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $0001
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    call Call_024_6b83
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    inc a
    and $0f
    cp $0f
    jr nz, jr_024_6b81

    xor a

jr_024_6b81:
    ld [hl], a
    ret


Call_024_6b83:
    ld hl, $0006
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_024_6b8a:
    ld a, [$c714]
    ld [hl+], a
    ld a, [$c713]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    srl a
    srl a
    set 7, a
    ld [hl+], a
    ld a, [$c714]
    ld [hl+], a
    ld a, [$c713]
    add $08
    ld [hl+], a
    ld a, [de]
    inc a
    inc a
    ld [hl+], a
    srl a
    srl a
    set 7, a
    ld [hl+], a
    inc de
    ld a, [$c714]
    sub $10
    ld [$c714], a
    cp $10
    jr nz, jr_024_6b8a

    ret


    push hl
    srl a
    srl a
    add $ce
    ld l, a
    ld a, $00
    adc $6b
    ld h, a
    ld a, [hl]
    pop hl
    ret


    nop
    ld bc, $0302
    inc b
    dec b

Call_024_6bd4:
    ld hl, $0000
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $6be4
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld d, $6c
    ld c, h
    ld l, h
    rla
    ld l, h
    ld e, $6c
    dec h
    ld l, h
    inc l
    ld l, h
    inc sp
    ld l, h
    ld e, [hl]
    ld l, h
    add [hl]
    ld l, h
    xor c
    ld l, h
    jp nc, $f86c

    ld l, h
    inc de
    ld l, l
    rst $30
    ld l, l
    db $10
    ld l, [hl]
    ld sp, $476e
    ld l, [hl]
    ld h, h
    ld l, [hl]
    jr nz, @+$6f

    ld c, a
    ld l, l
    ld l, [hl]
    ld l, l
    ld a, [hl]
    ld l, l
    and h
    ld l, l
    or e
    ld l, l
    jp z, $c96d

    ld hl, $0005
    add hl, bc
    ld [hl], $10
    ret


    ld hl, $0005
    add hl, bc
    ld [hl], $08
    ret


    ld hl, $0005
    add hl, bc
    ld [hl], $04
    ret


    ld hl, $0005
    add hl, bc
    ld [hl], $02
    ret


    ld hl, $0005
    add hl, bc
    ld [hl], $01
    ret


Call_024_6c3a:
    ld hl, $0005
    add hl, bc
    ld [hl], $00
    ld hl, $0000
    add hl, bc
    ld [hl], $01
    ld hl, $000f
    add hl, bc
    ld [hl], $03
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_024_6c56

    dec [hl]
    ret


jr_024_6c56:
    ld hl, $0000
    add hl, bc
    ld a, $00
    ld [hl], a
    ret


    ld a, [$c709]
    cp $ff
    jr z, jr_024_6c72

    ld hl, $0009
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_024_6c72

    dec [hl]
    call Call_024_6c76
    ret nz

jr_024_6c72:
    call Call_024_6c3a
    ret


Call_024_6c76:
    call Call_024_6a12
    ld a, [$c709]
    ld e, a
    ld a, [hl+]
    cp e
    ret z

    ld a, [hl+]
    cp e
    ret z

    ld a, [hl]
    cp e
    ret


    call Call_024_6e94
    jr nc, jr_024_6c94

    ld a, [$c717]
    ld hl, $c709
    cp [hl]
    jr z, jr_024_6ca5

jr_024_6c94:
    ld a, [$c709]
    cp $ff
    jr z, jr_024_6ca5

    ld hl, $0009
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_024_6ca5

    dec [hl]
    ret


jr_024_6ca5:
    call Call_024_6c3a
    ret


    call Call_024_6f1d
    jr nc, jr_024_6cbd

    ld hl, $c709
    cp [hl]
    jr z, jr_024_6cce

    ld hl, $0009
    add hl, bc
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret


jr_024_6cbd:
    ld a, [$c709]
    cp $ff
    jr z, jr_024_6cce

    ld hl, $0009
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_024_6cce

    dec [hl]
    ret


jr_024_6cce:
    call Call_024_6c3a
    ret


    call Call_024_6e94
    jr nc, jr_024_6ce1

    ld a, [$c70c]
    and a
    jr z, jr_024_6ce1

    call Call_024_6c3a
    ret


jr_024_6ce1:
    ld a, $ba
    call Call_024_731e
    ld hl, $0000
    add hl, bc
    inc [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], $20
    ld hl, $0005
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_024_6d02

    dec [hl]
    ret


jr_024_6d02:
    ld a, $28
    call Call_024_731e
    ld hl, $0000
    add hl, bc
    inc [hl]
    ld hl, $0005
    add hl, bc
    ld [hl], $08
    ret


    call Call_024_6e94
    ret nc

    ld a, [$c70c]
    and a
    ret z

    call Call_024_6c3a
    ret


    call Call_024_6f1d
    ret c

    ld a, $ba
    call Call_024_731e
    call Call_024_7316
    ld hl, $0000
    add hl, bc
    inc [hl]
    ld hl, $0005
    add hl, bc
    ld [hl], $00
    call Call_024_6fc0
    push bc
    push af
    ld de, $6068
    ld a, $06
    call $3b2a
    ld hl, $000e
    add hl, bc
    pop af
    ld [hl], a
    pop bc
    xor a
    ld [$cf64], a
    ld a, [$cf64]
    cp $02
    jr z, jr_024_6d5b

    cp $01
    jr z, jr_024_6d62

    ret


jr_024_6d5b:
    call Call_024_6f1d
    call Call_024_6c3a
    ret


jr_024_6d62:
    ld hl, $0000
    add hl, bc
    inc [hl]
    ld hl, $0005
    add hl, bc
    ld [hl], $08
    ret


    xor a
    ld [$cf64], a
    ld hl, $0000
    add hl, bc
    dec [hl]
    ld hl, $0005
    add hl, bc
    ld [hl], $00
    ret


    call Call_024_6f1d
    ret c

    ld a, $ba
    call Call_024_731e
    call Call_024_7316
    ld hl, $0000
    add hl, bc
    inc [hl]
    ld hl, $0005
    add hl, bc
    ld [hl], $00
    push bc
    ld de, $6000
    ld a, $07
    call $3b2a
    pop bc
    xor a
    ld [$cf64], a
    ret


    ld a, [$cf64]
    and a
    ret z

    ld hl, $0000
    add hl, bc
    inc [hl]
    ld a, $02
    ld [$cf64], a
    ld a, [$cf64]
    cp $04
    ret c

    ld hl, $0000
    add hl, bc
    inc [hl]
    ld hl, $0005
    add hl, bc
    ld [hl], $10
    ld hl, $000a
    add hl, bc
    ld [hl], $11
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_024_6dd4

    dec [hl]
    ret


jr_024_6dd4:
    call Call_024_6f1d
    jr nc, jr_024_6de5

    and a
    jr nz, jr_024_6de5

    ld a, $05
    ld [$cf64], a
    call Call_024_6c3a
    ret


jr_024_6de5:
    ld hl, $0005
    add hl, bc
    ld [hl], $00
    ld hl, $0000
    add hl, bc
    dec [hl]
    dec [hl]
    ld a, $01
    ld [$cf64], a
    ret


    call Call_024_6f1d
    ret c

    ld a, $ba
    call Call_024_731e
    call Call_024_7316
    ld hl, $0000
    add hl, bc
    inc [hl]
    call Call_024_6fc0
    ld hl, $000a
    add hl, bc
    ld [hl], a
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_024_6e1f

    call Call_024_6f1d
    call Call_024_6c3a
    ret


jr_024_6e1f:
    dec [hl]
    ld hl, $0000
    add hl, bc
    inc [hl]
    ld hl, $000b
    add hl, bc
    ld [hl], $20
    ld hl, $0005
    add hl, bc
    ld [hl], $00
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_024_6e3b

    dec [hl]
    ret


jr_024_6e3b:
    ld hl, $0000
    add hl, bc
    dec [hl]
    ld hl, $0005
    add hl, bc
    ld [hl], $08
    ret


    call Call_024_6f1d
    ret c

    ld a, $ba
    call Call_024_731e
    call Call_024_7316
    ld hl, $0005
    add hl, bc
    ld [hl], $01
    ld hl, $0000
    add hl, bc
    inc [hl]
    ld hl, $000a
    add hl, bc
    ld [hl], $10
    ld hl, $000a
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_024_6e73

    dec [hl]

jr_024_6e6d:
    ld a, $0c
    call Call_024_731e
    ret


jr_024_6e73:
    ld a, [$c709]
    and a
    jr nz, jr_024_6e88

    call Call_024_6f1d
    jr nc, jr_024_6e6d

    and a
    jr nz, jr_024_6e6d

    call Call_024_6c3a
    call $3c55
    ret


jr_024_6e88:
    call Call_024_6f1d
    jr c, jr_024_6e6d

    call Call_024_6c3a
    call $3c55
    ret


Call_024_6e94:
    xor a
    ld [$c70b], a
    ld [$c70c], a
    call Call_024_6a12
    call Call_024_6fb4
    ld a, [$c70a]
    and $03
    ld e, a
    ld d, $00
    ld hl, $6ebd
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $6eb6
    push de
    jp hl


    ld a, [$c70b]
    and a
    ret z

    scf
    ret


    call nc, $d16e
    ld l, [hl]
    bit 5, [hl]
    push bc
    ld l, [hl]
    call Call_024_6ee0
    call Call_024_6ef6
    call Call_024_6ed5
    call Call_024_6f01
    call Call_024_6eeb
    ret


Call_024_6ed5:
    ld hl, $c70e
    ld a, [$c700]
    cp [hl]
    call z, Call_024_6f0c
    ret


Call_024_6ee0:
    ld hl, $c70f
    ld a, [$c700]
    cp [hl]
    call z, Call_024_6f0c
    ret


Call_024_6eeb:
    ld hl, $c70f
    ld a, [$c701]
    cp [hl]
    call z, Call_024_6f0c
    ret


Call_024_6ef6:
    ld hl, $c70f
    ld a, [$c702]
    cp [hl]
    call z, Call_024_6f0c
    ret


Call_024_6f01:
    ld hl, $c710
    ld a, [$c702]
    cp [hl]
    call z, Call_024_6f0c
    ret


Call_024_6f0c:
    ld [$c717], a
    and a
    jr nz, jr_024_6f17

    ld a, $01
    ld [$c70c], a

jr_024_6f17:
    ld a, $01
    ld [$c70b], a
    ret


Call_024_6f1d:
    ld a, $ff
    ld [$c70d], a
    call Call_024_6a12
    call Call_024_6fb4
    ld a, [$c70a]
    and $03
    ld e, a
    ld d, $00
    ld hl, $6f48
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $6f3d
    push de
    jp hl


    ld a, [$c70d]
    cp $ff
    jr nz, jr_024_6f46

    and a
    ret


jr_024_6f46:
    scf
    ret


    ld e, a
    ld l, a
    ld e, h
    ld l, a
    ld d, [hl]
    ld l, a
    ld d, b
    ld l, a
    call Call_024_6f70
    call Call_024_6f90
    call Call_024_6f60
    call Call_024_6fa0
    call Call_024_6f80
    ret


Call_024_6f60:
    ld hl, $c70e
    ld a, [$c700]
    cp [hl]
    ret nz

    ld hl, $c703
    cp [hl]
    call z, Call_024_6fb0
    ret


Call_024_6f70:
    ld hl, $c710
    ld a, [$c700]
    cp [hl]
    ret nz

    ld hl, $c704
    cp [hl]
    call z, Call_024_6fb0
    ret


Call_024_6f80:
    ld hl, $c70f
    ld a, [$c701]
    cp [hl]
    ret nz

    ld hl, $c704
    cp [hl]
    call z, Call_024_6fb0
    ret


Call_024_6f90:
    ld hl, $c70e
    ld a, [$c702]
    cp [hl]
    ret nz

    ld hl, $c704
    cp [hl]
    call z, Call_024_6fb0
    ret


Call_024_6fa0:
    ld hl, $c710
    ld a, [$c702]
    cp [hl]
    ret nz

    ld hl, $c705
    cp [hl]
    call z, Call_024_6fb0
    ret


Call_024_6fb0:
    ld [$c70d], a
    ret


Call_024_6fb4:
    ld de, $c70e
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


Call_024_6fc0:
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    push af
    push hl
    call Call_024_6fcf
    pop hl
    pop af
    ld [hl], a
    ld a, e
    ret


Call_024_6fcf:
    ld a, [$c709]
    and a
    jr nz, jr_024_6fe8

    ld e, $00

jr_024_6fd7:
    ld hl, $0003
    add hl, bc
    inc [hl]
    inc e
    push de
    call Call_024_6f1d
    pop de
    jr nc, jr_024_6fd7

    and a
    jr nz, jr_024_6fd7

    ret


jr_024_6fe8:
    call $2f8c
    and $07
    cp $04
    jr c, jr_024_6fe8

    ld e, a

jr_024_6ff2:
    ld a, e
    inc e
    ld hl, $0003
    add hl, bc
    add [hl]
    ld [hl], a
    push de
    call Call_024_6f1d
    pop de
    jr c, jr_024_6ff2

    ret


Call_024_7002:
    ld a, [$c709]
    and a
    ret z

    ld hl, $7023
    ld a, [$c2dd]
    and a
    jr z, jr_024_7013

    ld hl, $7031

jr_024_7013:
    call $2f8c
    ld c, a

jr_024_7017:
    ld a, [hl+]
    cp c
    jr nc, jr_024_701e

    inc hl
    jr jr_024_7017

jr_024_701e:
    ld a, [hl]
    ld [$c709], a
    ret


    ld bc, $0300
    inc b
    ld a, [bc]
    inc d
    inc d
    db $10
    jr z, jr_024_7039

    jr nc, @+$0a

    rst $38
    rst $38
    ld [bc], a
    nop
    inc bc
    inc b
    ld [$1014], sp
    db $10

jr_024_7039:
    ld e, $0c
    ld d, b
    ld [$ffff], sp

Call_024_703f:
    ld b, $14
    ld a, [$c70a]
    dec a
    jr z, jr_024_7066

    dec a
    jr z, jr_024_705a

    jr jr_024_704e

Call_024_704c:
    ld b, $23

jr_024_704e:
    ld hl, $c4cb
    call Call_024_7069
    ld hl, $c56b
    call Call_024_7069

jr_024_705a:
    ld hl, $c4f3
    call Call_024_7069
    ld hl, $c543
    call Call_024_7069

jr_024_7066:
    ld hl, $c51b

Call_024_7069:
    ld a, b
    ld [hl], a
    ld de, $000d
    add hl, de
    ld [hl], a
    ld de, $0007
    add hl, de
    inc a
    ld [hl], a
    ld de, $000d
    add hl, de
    ld [hl], a
    ret


Call_024_707c:
jr_024_707c:
    ld hl, $70c7
    call $1057
    ld hl, $70d6
    call $1d35
    call $1d81
    call $1c17
    ret c

    ld a, [$cfa9]
    ld b, a
    ld a, $04
    sub b
    ld [$c70a], a
    ld hl, $d855
    ld c, a
    ld a, [hl+]
    and a
    jr nz, jr_024_70ad

    ld a, [hl]
    cp c
    jr nc, jr_024_70ad

    ld hl, $70d1
    call $1057
    jr jr_024_707c

jr_024_70ad:
    ld hl, $d856
    ld a, [hl]
    sub c
    ld [hl-], a
    jr nc, jr_024_70b6

    dec [hl]

jr_024_70b6:
    call $3c55
    ld de, $0068
    call $3c23
    ld hl, $70cc
    call $1057
    and a
    ret


    ld d, $49
    ld d, b
    ld [hl], c
    ld d, b
    ld d, $5e
    ld d, b
    ld [hl], c
    ld d, b
    ld d, $66
    ld d, b
    ld [hl], c
    ld d, b
    ld b, b
    ld a, [bc]
    ld c, $11
    inc de
    sbc $70
    ld bc, $0380
    ld a, a
    ld sp, hl
    ld d, b
    ld a, a
    ld hl, sp+$50
    ld a, a
    rst $30
    ld d, b

Call_024_70e9:
    ld hl, $d855
    ld a, [hl+]
    or [hl]
    jr nz, jr_024_70fd

    ld hl, $711a
    call $1057
    ld c, $3c
    call $0468
    jr jr_024_7118

jr_024_70fd:
    ld hl, $711f
    call $1057
    call $1d58
    ld bc, $0e0c
    call $1dd2
    ld a, [$cfa9]
    dec a
    call $1c17
    and a
    jr nz, jr_024_7118

    and a
    ret


jr_024_7118:
    scf
    ret


    ld d, $79
    ld d, b
    ld [hl], c
    ld d, b
    ld d, $92
    ld d, b
    ld [hl], c
    ld d, b

Call_024_7124:
    ld a, [$c70d]
    cp $ff
    jr z, jr_024_7151

    srl a
    ld e, a
    ld d, $00
    ld hl, $7145
    add hl, de
    ld a, [hl+]
    ld [$c712], a
    ld e, a
    ld a, [hl]
    ld [$c711], a
    ld d, a
    ld a, $41
    ld hl, $5fe3
    rst $08
    ret


    inc l
    ld bc, $0032
    ld b, $00
    ld [$0a00], sp
    nop
    rrca
    nop

jr_024_7151:
    ld hl, $c711
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_024_7158:
    ld a, [$c70d]
    cp $ff
    jr nz, jr_024_716c

    ld hl, $71e0
    call $1057
    ld a, $41
    ld hl, $5fd0
    rst $08
    ret


jr_024_716c:
    srl a
    ld e, a
    ld d, $00
    ld hl, $7195
    add hl, de
    add hl, de
    add hl, de
    ld de, $d086
    ld bc, $0004
    call $3026
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $7188
    push de
    jp hl


    ld hl, $71b9
    call $1057
    ld a, $41
    ld hl, $5f9f
    rst $08
    ret


    ld sp, hl
    or $f6
    ld d, b
    push hl
    ld [hl], c
    ei
    or $50
    ld d, b
    dec bc
    ld [hl], d
    db $fc
    ld d, b
    ld d, b
    ld d, b
    inc d
    ld [hl], d
    cp $50
    ld d, b
    ld d, b
    inc d
    ld [hl], d
    rst $30
    or $50
    ld d, b
    inc d
    ld [hl], d
    rst $30
    ei
    ld d, b
    ld d, b
    inc d
    ld [hl], d
    ld [$0dfa], sp
    rst $00
    add $25
    ld [$c5a6], a
    inc a
    ld [$c5ba], a
    inc a
    ld [$c5a7], a
    inc a
    ld [$c5bb], a
    ld hl, $c606
    ld [hl], $ee
    ld hl, $71db
    inc bc
    inc bc
    inc bc
    inc bc
    ret


    ld d, $9f
    ld d, b
    ld [hl], c
    ld d, b
    ld d, $bb
    ld d, b
    ld [hl], c
    ld d, b
    ld a, $98
    call Call_024_731e
    call $3c55
    ld a, [$d002]
    and a
    jr nz, jr_024_71ff

    call $2f8c
    and $14
    ret z

    ld a, $ff
    ld [$c709], a
    ret


jr_024_71ff:
    call $2f8c
    and $1c
    ret z

    ld a, $ff
    ld [$c709], a
    ret


    ld a, $94
    call Call_024_731e
    call $3c55
    ret


    ld a, $8e
    call Call_024_731e
    call $3c55
    ret


    ld hl, $000b
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $722d
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc sp
    ld [hl], d
    ld e, c
    ld [hl], d
    adc c
    ld [hl], d
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    and a
    jr nz, jr_024_7247

    ld a, $02
    ld [$cf64], a
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


jr_024_7247:
    dec [hl]
    ld hl, $000b
    add hl, bc
    inc [hl]
    ld hl, $000c
    add hl, bc
    ld [hl], $30
    ld hl, $0006
    add hl, bc
    ld [hl], $00
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    cp $20
    jr c, jr_024_7273

    dec [hl]
    ld e, a
    ld d, $70
    ld a, $33
    ld hl, $6765
    rst $08
    ld a, e
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ret


jr_024_7273:
    ld hl, $000b
    add hl, bc
    inc [hl]
    ld hl, $000d
    add hl, bc
    ld [hl], $02
    ld a, $01
    ld [$cf64], a
    ld a, $1e
    call Call_024_731e
    ret


    ld hl, $0006
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    cp $48
    jr nc, jr_024_72a3

    and $03
    ret nz

    ld hl, $000d
    add hl, bc
    ld a, [hl]
    xor $ff
    inc a
    ld [hl], a
    ldh [$d0], a
    ret


jr_024_72a3:
    ld hl, $000b
    add hl, bc
    xor a
    ld [hl], a
    ldh [$d0], a
    ret


    ld hl, $000b
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $72bc
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jp nz, $e072

    ld [hl], d
    db $fc
    ld [hl], d
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    inc [hl]
    cp $68
    jr z, jr_024_72d6

    and $0f
    ret nz

    ld de, $0016
    call $3c23
    ret


jr_024_72d6:
    ld hl, $000b
    add hl, bc
    inc [hl]
    ld a, $01
    ld [$cf64], a
    ld a, [$cf64]
    cp $02
    jr z, jr_024_72f1

    cp $05
    ret nz

    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


jr_024_72f1:
    ld hl, $000b
    add hl, bc
    inc [hl]
    ld hl, $000c
    add hl, bc
    ld [hl], $08
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_024_7306

    dec [hl]
    ret


jr_024_7306:
    ld hl, $000b
    add hl, bc
    dec [hl]
    push bc
    ld de, $606c
    ld a, $08
    call $3b2a
    pop bc
    ret


Call_024_7316:
    push bc
    ld c, $10
    call $0468
    pop bc
    ret


Call_024_731e:
    push de
    ld e, a
    ld d, $00
    call $3c23
    pop de
    ret


    nop
    ld [$0c14], sp
    stop
    ld [$0c14], sp
    db $10
    inc b
    ld [$0c14], sp
    stop
    ld [$0014], sp
    inc c
    ld [$1410], sp
    inc b
    inc c
    ld [$1410], sp
    inc b
    inc c
    ld [$1410], sp
    nop
    inc c
    ld [$0c00], sp
    ld [$1410], sp
    inc c
    ld [$1410], sp
    inc c
    inc b
    ld [$1410], sp
    inc c
    nop
    inc c
    ld [$2222], sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld [hl+], a
    ld [hl+], a
    ld b, $07
    ld [$2209], sp
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0a01
    ld c, $0b
    inc hl
    inc e
    ld e, $1f
    inc e
    inc e
    ld e, $1f
    inc e
    inc e
    ld e, $1f
    inc e
    inc hl
    ld a, [bc]
    ld c, $0b
    inc c
    rrca
    dec c
    inc h
    dec e
    jr nz, jr_024_73c1

    dec e
    dec e
    jr nz, jr_024_73c5

    dec e
    dec e
    jr nz, @+$23

    dec e
    inc h
    inc c
    rrca
    dec c
    ld a, [bc]
    db $10
    dec bc
    inc hl
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $23
    ld a, [bc]
    db $10
    dec bc

jr_024_73c1:
    inc c
    ld de, $240d

jr_024_73c5:
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $24
    inc c
    ld de, $0a0d
    ld [de], a
    dec bc
    inc hl
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $23
    ld a, [bc]
    ld [de], a
    dec bc
    inc c
    inc de
    dec c
    inc h
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $24
    inc c
    inc de
    dec c
    ld a, [bc]
    db $10
    dec bc
    inc hl
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $23
    ld a, [bc]
    db $10
    dec bc
    inc c
    ld de, $240d
    ld d, $17
    rla
    ld d, $16
    rla
    rla
    ld d, $16
    rla
    rla
    ld d, $24
    inc c
    ld de, $0a0d
    ld c, $0b
    inc hl
    nop
    jr @+$1b

    nop
    nop
    jr @+$1b

    nop
    nop
    jr jr_024_744d

    nop
    inc hl
    ld a, [bc]
    ld c, $0b
    inc c
    rrca
    dec c
    inc h
    ld bc, $1b1a
    ld bc, $1a01
    dec de
    ld bc, $1a01
    dec de
    ld bc, $0c24
    rrca
    dec c

jr_024_744d:
    inc b
    rst $20
    cp l
    rst $20
    inc a
    nop
    ld b, h
    rst $38
    nop
    ld bc, $00ff
    adc l
    add e
    add a
    add c
    inc bc
    rst $38
    rst $38
    ld [c], a
    ld [c], a
    ld [hl+], a
    adc $c6
    add b
    add e
    adc a
    add hl, bc
    jr nc, jr_024_749b

    ld d, e
    ld d, e
    ld d, b
    ld d, b
    inc sp
    inc sp
    ld d, b
    ld d, b
    add l
    adc a
    ld bc, $8c8c
    ld [hl+], a
    sub h
    add $80
    add e
    adc a
    ld bc, $8787
    daa
    rst $08
    add l
    adc a
    ld bc, $8e8e
    add l
    sbc l
    ld bc, $9c9c
    add l
    adc a
    ld bc, $6565
    inc hl
    and l
    inc bc
    inc sp
    inc sp
    or e
    or e
    add a
    cp a

jr_024_749b:
    dec h
    inc h
    ld bc, $8e8e
    add l
    adc a
    ld bc, $a1a1
    dec h
    or e
    ld bc, $7373
    add e
    adc a
    dec c
    inc bc
    rst $38
    rlca
    db $fc
    dec bc
    ld hl, sp+$13
    ldh a, [rNR44]
    ldh [rBGP], a
    ret nz

    ld c, a
    ret nz

    and l
    adc a
    dec b
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    ld b, e
    cp $03
    ld b, e
    ld a, a
    ret nz

    rlca
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    jp $08a9


    ld a, [c]
    inc bc
    ld [c], a
    inc bc
    call nz, $c807
    rrca
    ret nc

    and [hl]
    adc a
    ld bc, $ff00
    add $00
    inc hl
    dec c
    ld a, [hl]
    jp $fb42


    ld a, e
    pop hl
    ld hl, $f9f9
    sbc c
    sbc c
    jp $ffc3


    push bc
    adc l
    adc l
    sbc a
    inc c
    ld b, e
    ld sp, hl
    ld a, c
    pop af
    ld sp, $63e3
    rst $08
    rst $08
    add c
    add c
    rst $38
    rst $38
    sub b
    sbc a
    ld [$e33e], sp
    ld [hl+], a

jr_024_750e:
    di
    ld [hl-], a
    di
    ld [de], a
    rst $30
    ld [hl], $43
    rst $20
    inc h
    ld bc, $3cff
    add e
    sbc a
    jp z, $2200

    rlca
    rst $38
    inc a
    rst $38
    ld l, [hl]
    rst $20
    ld e, [hl]
    jp Jump_024_455e


    jp $007e


    rst $20
    ret


    adc l
    ld c, a
    db $fd
    and a
    ld l, a
    nop
    rst $38
    add h
    nop
    dec d
    add hl, bc
    rra
    ldh [$1f], a
    rst $28
    rra
    add sp, $3f
    ret z

    ld a, a
    adc b
    xor c
    adc a
    dec c
    reti


    ld [hl], $da
    dec [hl]
    db $dd
    ld [hl-], a
    rst $18
    jr z, jr_024_750e

    ld c, b
    ld e, a
    xor b
    sbc h
    ld l, e
    jp $839d


    rst $08
    rlca
    db $db
    inc [hl]
    sbc $31
    call c, $1833
    rst $30
    and e
    adc a
    nop
    nop
    add sp, $24
    rst $38
    nop
    ldh [rNR44], a
    inc bc
    rst $38
    rrca
    cp $3f
    di
    ld a, a
    sbc $7f
    push bc
    ccf
    add sp, $1f
    db $fc
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp+$3f
    cp $e7
    rst $38
    dec a
    rst $38
    pop de
    cp $0b
    db $fc
    rra
    rlca
    rst $38
    rlca
    cp $0f
    rst $38
    jp $a400


    nop
    ld b, $84
    ld bc, $051f
    ldh a, [rIE]
    ldh a, [$bf]
    ld hl, sp-$01
    and e
    sub c
    inc b
    jr nc, @+$01

    nop
    rst $38
    rst $38
    call nz, $4701
    add e
    nop
    inc b
    adc a
    nop
    db $10
    inc bc
    inc a
    rst $38
    ld l, [hl]
    rst $28
    ld b, e
    ld e, [hl]
    rst $18
    ld b, h
    ld a, [hl]
    rst $38
    jp z, Jump_024_4901

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
    inc hl
    rst $38
    inc bc
    add h
    add h
    add b
    cp e
    ld b, h
    add b
    cp a
    inc b
    cp b
    add d
    add d
    db $fc
    db $fd
    ld b, e
    ld hl, sp-$05
    ld b, h
    ldh a, [$f7]
    nop
    ldh a, [rNR44]
    rst $38
    xor e
    sbc a
    inc bc
    inc bc
    ld a, e
    inc bc
    ei
    ld b, e
    rlca
    rst $30
    ld bc, $ef0f
    xor c
    sbc a
    ld h, c
    ld de, $0103
    rrca
    rlca
    rra
    rrca
    rra
    rra
    ld a, $1e
    dec a
    dec a
    ld bc, $3d01
    dec a
    ld a, $1e
    ld [hl+], a
    rra
    inc b
    rrca
    rrca
    rlca
    inc bc
    ld bc, $1165
    ldh [$c0], a
    ld hl, sp-$10
    db $fc
    ld hl, sp-$04
    db $fc
    ld a, $3c
    sbc $de
    ret nz

    ret nz

    sbc $de
    ld a, $3c
    ld [hl+], a
    db $fc
    inc b
    ld hl, sp-$08
    ldh a, [$e0]
    ret nz

    ld l, c
    rlca
    inc bc
    inc bc
    rlca
    inc b
    rra
    dec de
    dec h
    ccf
    ld b, h
    ld b, b
    ld l, a
    inc b
    ld a, a
    ld hl, $1f3f
    rra
    ld l, c
    add hl, bc
    ld [hl], b
    ld [hl], b
    ld a, [hl]
    ld c, [hl]
    cp $e2
    ld a, [hl]
    ld l, d
    cp $8e
    ld b, e
    ld hl, sp-$18
    ld [bc], a
    sub h
    db $fc
    add d
    ld b, e
    cp [hl]
    ld [bc], a
    inc b
    cp $84
    db $fc
    ld a, b

jr_024_765c:
    ld a, b
    ld l, c
    rrca
    ldh a, [$f0]
    rst $38
    rst $28
    ld a, a
    ld b, b
    ccf
    jr z, jr_024_76a5

    ld [hl+], a
    ld a, d
    ld b, l
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    add e
    add e
    inc bc
    ccf
    daa
    jr jr_024_768e

    and l
    sbc e
    add hl, de
    rra
    ld de, $797f
    cp $ba
    db $fc
    inc d
    ld hl, sp-$58
    cp $26
    cp $12
    call nz, $e83c
    jr jr_024_765c

    jr nc, @-$0e

jr_024_768e:
    db $10
    ldh [rNR41], a
    ret nz

    ret nz

    add l
    ei
    inc bc
    inc c
    rrca
    db $10
    rra
    ld b, e
    inc h
    ccf
    inc de
    jr nz, jr_024_76df

    inc de
    rra
    jr c, jr_024_76e3

    ld c, a

jr_024_76a5:
    ld a, e
    ld c, a
    ld a, h
    ccf
    inc sp
    rra
    jr jr_024_76dc

    inc a
    inc hl
    ccf
    inc e
    inc e
    db $f4
    ld hl, $199f
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    rlca
    dec sp
    ld a, $77
    ld c, l
    ld c, [hl]
    ld a, e
    ld l, $3b
    rra
    add hl, de
    rla
    inc e
    inc de
    ld e, $21
    ccf
    ld h, $3e
    add e
    sbc l
    and e
    sbc a
    ld bc, $c040
    cp l
    sbc a
    rrca
    inc bc
    inc bc

jr_024_76dc:
    dec c
    dec c
    ld [de], a

jr_024_76df:
    ld [de], a
    inc h
    inc h
    inc l

jr_024_76e3:
    inc l
    inc sp
    ccf
    ld d, b
    ld a, a
    xor h
    rst $38
    ld b, e
    and [hl]
    rst $30
    dec b
    ld d, b
    ld a, a
    ld c, h
    ld a, a
    inc sp
    inc sp
    add [hl]
    cp a
    ld b, $40
    ld [hl], b
    ld [hl], b
    jr z, @+$2a

    inc d
    inc d
    or e
    sbc a
    dec c
    inc e
    inc e
    ld a, $22
    ld [hl], b
    ld c, [hl]
    ldh [$98], a
    ret nz

    or b
    ret nz

    and b
    ld b, b
    ld h, b
    ld h, e
    dec bc
    ld b, b
    ld h, b
    ret nz

    and b
    ret nz

    or b
    ldh [$98], a
    ld [hl], b
    ld c, [hl]
    ld a, $22
    add l
    pop hl
    add hl, bc
    ld c, $0e
    rra
    ld de, $2639
    jr nc, @+$31

    jr nc, jr_024_7758

    ld b, e
    jr jr_024_7741

    rlca
    jr nc, @+$30

    jr nc, jr_024_7761

    add hl, sp
    ld h, $1f
    ld de, $94c5
    add l
    nop
    nop
    ld bc, $bbbb
    inc hl
    cp a
    dec b

jr_024_7741:
    cp b
    cp b
    add d
    add d
    db $fd
    db $fd
    inc hl
    ei
    ld [hl+], a
    rst $30
    adc h
    nop
    add hl, de
    and l
    sbc a
    ld bc, $7b7b
    add l

jr_024_7754:
    sbc c
    ld bc, $efef

jr_024_7758:
    xor c
    sbc a
    ld h, c
    jr @+$04

    ld bc, $0708
    db $10

jr_024_7761:
    rrca
    nop
    rra
    jr nz, jr_024_7784

    nop
    dec a
    nop

jr_024_7769:
    ld bc, $3d00
    jr nz, jr_024_778c

    nop
    rra
    db $10
    rrca
    ld [$0207], sp
    add [hl]
    nop
    ld e, e
    jr jr_024_779a

    ret nz

    ld [$04f0], sp
    ld hl, sp+$00
    db $fc
    ld [bc], a
    inc a
    nop

jr_024_7784:
    sbc $00
    ret nz

    nop
    sbc $02
    inc a
    nop

jr_024_778c:
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR41]
    sub b
    nop
    ld a, e
    ld bc, $3f3f
    inc hl
    ld l, a

jr_024_779a:
    ld [bc], a
    ld a, a
    ld a, a
    ccf
    sbc d
    nop
    sub l
    ld bc, $fcfc
    inc hl
    cp [hl]
    and d
    and e
    adc d
    nop
    cp c
    dec b
    ldh [$e0], a
    ld hl, sp-$08
    ld a, a
    ld h, a
    sub a
    nop
    jp z, $01a3

    cp [hl]
    ld [hl+], a
    rst $38
    ld c, $31
    cp $12
    db $fc
    and h
    ld hl, sp+$28
    cp $16
    adc $32
    db $e4
    inc e
    ret c

    jr c, jr_024_7754

    nop
    ld hl, sp-$7d
    ld bc, $0080
    ld b, $c4
    ld [bc], a
    ld e, c
    ld b, e
    inc d
    rra
    add hl, bc
    jr jr_024_77fa

    ccf
    inc sp
    ld c, a
    ld a, h
    ld c, a
    ld a, e
    ccf
    jr nc, jr_024_7769

    ld bc, $f41a
    dec h
    sbc a
    adc b
    ld bc, $0c44
    ld c, h
    ld c, a
    ld a, c
    ld l, $3b
    ld e, $1b
    rla
    dec e
    inc hl
    ld a, $27
    ccf

jr_024_77fa:
    jp $87f6


    ld bc, $bd5e
    sbc a
    dec b
    rlca
    rlca
    add hl, de
    add hl, de
    ld h, $26
    add l
    ld bc, $058c
    and b
    rst $38
    xor h
    rst $38
    and d
    rst $38
    adc c
    ld bc, $8498
    rst $38
    inc b
    ld h, b
    ld e, b
    ld e, b
    inc [hl]
    inc [hl]
    xor e
    sbc a
    ldh a, [rBGP]
    ld bc, $ffb8
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, e
    inc de
    ld bc, $0701
    rlca
    ld [$100f], sp
    rra
    jr jr_024_7858

    inc h
    ccf
    inc hl
    ccf
    ld [hl], c
    ld a, a
    ei
    adc $f3
    sbc [hl]
    ld l, c
    ld b, $7e
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    cp l
    ld b, h
    rst $38
    ld b, d
    inc de
    ld a, [hl]
    rst $38
    rst $38
    add c
    rst $38
    nop
    ld a, [hl]
    ld b, d

jr_024_7858:
    ld a, [hl]
    ld h, [hl]
    di
    sbc [hl]
    ei
    adc $71
    ld a, a
    daa
    ccf
    cpl
    ld a, [hl-]
    ld b, e
    rra
    jr jr_024_786d

    rrca
    ld [$0407], sp
    inc bc

jr_024_786d:
    inc bc
    ld l, e
    dec d
    rst $38
    rst $20
    rst $38
    nop
    rst $38
    jp $bdff


    rst $38
    jp Jump_024_7eff


    jp $ff7e


    ld a, [hl]
    jp $81ff


    rst $38
    ld a, [hl]
    ld a, [hl]
    ld [hl], l
    ld c, $01
    ld bc, $0706
    ld a, [bc]
    rrca
    ld de, $101f
    rra
    jr nc, jr_024_78d3

    jr z, jr_024_78d5

    ld b, a
    ld b, h
    ld a, a
    ld c, c
    ld h, a
    rla
    inc a
    inc a
    ld a, [hl]
    ld h, [hl]
    rst $38
    jp $db7e


    inc h
    rst $38
    add b
    rst $38
    cp l
    rst $38
    rst $38
    db $e3
    di
    or c
    rst $38
    ld e, h
    rst $38
    ld e, b
    rst $38
    ld b, b
    call nz, $0ba1
    ld a, a
    jr z, @+$41

    jr nc, jr_024_78fb

    db $10
    rra
    ld de, $0a1f
    rrca
    ld b, $ce
    nop
    ld c, $00
    rst $38
    call nz, $03a1
    di
    or c
    rst $38
    db $e3
    call nz, $08b5
    rst $38

jr_024_78d3:
    ld a, [hl]
    db $db

jr_024_78d5:
    rst $38
    jp Jump_024_667e


    inc a
    inc a
    ld a, c
    dec c
    inc bc
    inc bc
    rlca
    inc b
    rra
    add hl, de
    ld h, e
    ld a, [hl]
    ld c, [hl]
    ld a, a

jr_024_78e7:
    inc a
    ccf
    rra
    rla
    rst $08
    sbc d
    call nz, Call_024_6600
    inc b
    ld bc, $41ff
    rst $38
    ld d, b
    ld b, e
    rst $18
    ldh a, [rSB]
    rst $38

jr_024_78fb:
    ld h, b
    or e
    nop
    ld a, d
    dec bc
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$60], a
    ldh a, [rNR10]
    ld hl, sp+$08
    db $ec
    inc e
    ld b, e
    rra
    db $10
    ld b, a
    ccf
    jr nz, jr_024_791e

    rst $38
    ldh [$bf], a
    ldh a, [$8f]
    db $fc
    ld c, a
    ld [hl], b
    ccf
    jr nz, jr_024_793d

jr_024_791e:
    jr jr_024_78e7

    nop
    adc a
    ld b, e
    rst $38
    nop
    ld b, [hl]
    rst $38
    inc b
    nop
    inc bc
    ld c, h
    rst $38
    nop
    db $10
    ld bc, $fe86
    rst $38
    pop bc
    ld a, $3e
    cp $12
    ld a, a
    sub c
    rst $38
    sub c
    rst $08
    cp a

jr_024_793d:
    rst $18
    and c
    ld b, e
    rst $18
    ld hl, $ee09
    ld [de], a
    db $f4
    inc c
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$30]
    and a
    nop
    ld d, d
    sub a
    rst $18
    rlca
    add hl, sp
    ld h, $3f
    ld hl, $181f
    rlca
    rlca
    ld b, h
    rst $38
    nop
    inc b
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ff4e
    nop
    ld [de], a
    ld bc, $fffe
    add d
    add e
    ld bc, $fe01
    ld [de], a
    cp a
    ld d, c
    rst $38
    ld d, c
    rst $28
    ccf
    rst $38
    ld hl, $c1ff
    adc e
    rst $18
    nop
    ret z

    call nz, Call_024_5c01
    ld bc, $8080
    sub l
    rst $18
    add hl, bc
    ld e, a

jr_024_7989:
    ld a, b
    ld b, a
    ld a, [hl]
    inc hl
    ccf
    add hl, de
    rra
    ld b, $06
    ld b, e
    rst $38
    nop
    rlca
    cp $09
    rst $38
    ld de, $12ff
    rst $38
    inc c
    ld c, e
    rst $38
    nop
    inc bc
    cp $01
    rst $38
    cp $83
    nop
    ld d, b
    nop
    cp $c3
    sub a
    inc b
    ld de, $3fcf
    rst $18
    ld hl, $018d
    xor d
    rlca
    jr nc, jr_024_7989

    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    sbc e
    ld bc, $8360
    ld bc, $037a
    rst $38
    nop
    db $fd
    inc bc
    jp $ee01


    sub c
    ld bc, $03e8
    add a
    rst $38
    rst $38
    ld bc, $fe22
    ld [$ff12], sp
    pop de
    rst $38
    ld sp, $3fff
    rst $18
    pop hl
    adc a
    ld bc, $f0aa
    ld hl, $fe00
    ld b, e
    rra
    db $10
    sbc c
    ld bc, $0424
    db $fd
    ld h, e
    rst $38
    nop
    rst $38
    sbc c
    ld bc, $0643
    ret z

    ld hl, sp+$28
    db $fc
    inc h
    db $fc
    ld b, h
    sbc e
    ld [bc], a
    add h
    inc bc
    nop
    nop
    nop
    nop
    ld d, h
    rst $38
    nop
    inc c
    ld bc, $fe86
    ld hl, sp+$08
    db $fc
    add h
    ld a, h
    ld b, h
    jr c, jr_024_7a4e

    db $fc
    add h
    add e
    ld [bc], a
    ld h, [hl]
    sbc a
    ld [bc], a
    jp z, $1803

    jr jr_024_7a5e

    inc h
    ld b, e
    ld a, [hl]
    ld b, d
    ld b, l
    rst $38
    add c
    inc bc
    ld a, [hl]
    ld b, d
    inc a
    inc a
    db $ec
    ld b, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_024_7a4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_024_7a5e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_024_7eff:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
