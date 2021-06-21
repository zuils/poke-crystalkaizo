; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    call $2ed3
    xor a
    ld [$d141], a
    call $31f3
    call Call_014_403f
    call $31f6
    call $32f9
    call $045a
    call Call_014_4457
    call $2b74
    ret


    ld a, b
    ld [$d141], a
    call $2ed3
    call $31f3
    call Call_014_403f
    call $31f6
    ld b, $0a
    call $3340
    call $32f9
    call $045a
    call Call_014_4457
    call $2b74
    ret


Call_014_403f:
    call Call_014_404f
    call Call_014_4405
    call Call_014_43e0
    call Call_014_405f
    call Call_014_449a
    ret


Call_014_404f:
    call $0e58
    ld hl, $4ad1
    ld a, $02
    rst $08
    ld hl, $6814
    ld a, $23
    rst $08
    ret


Call_014_405f:
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    call Call_014_4396

jr_014_4077:
    ld a, [hl+]
    cp $ff
    jr z, jr_014_4084

    push hl
    ld hl, $4089
    rst $28
    pop hl
    jr jr_014_4077

jr_014_4084:
    pop af
    ld [$cfcc], a
    ret


    sbc e
    ld b, b
    rst $08
    ld b, b
    jr c, jr_014_40d0

    db $76
    ld b, c
    or d
    ld b, c
    ldh [rSTAT], a
    cpl
    ld b, d
    or c
    ld b, d
    rlca
    ld b, e
    ld hl, $c4b7
    ld a, [$dcd7]
    and a
    jr z, jr_014_40bf

    ld c, a
    ld b, $00

jr_014_40a7:
    push bc
    push hl
    push hl
    ld hl, $de41
    ld a, b
    call $38a2
    pop hl
    call $1078
    pop hl
    ld de, $0028
    add hl, de
    pop bc
    inc b
    dec c
    jr nz, jr_014_40a7

jr_014_40bf:
    dec hl
    dec hl
    ld de, $40c8
    call $1078
    ret


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    xor a

jr_014_40d0:
    ld [$cda9], a
    ld a, [$dcd7]
    and a
    ret z

    ld c, a
    ld b, $00
    ld hl, $c4d3

jr_014_40de:
    push bc
    push hl
    call Call_014_4389
    jr z, jr_014_4103

    push hl
    call Call_014_4117
    pop hl
    ld d, $06
    ld b, $00
    call $3750
    ld hl, $cd9b
    ld a, [$cda9]
    ld c, a
    ld b, $00
    add hl, bc
    call $334e
    ld b, $fc
    call $3340

jr_014_4103:
    ld hl, $cda9
    inc [hl]
    pop hl
    ld de, $0028
    add hl, de
    pop bc
    inc b
    dec c
    jr nz, jr_014_40de

    ld b, $0a
    call $3340
    ret


Call_014_4117:
    ld a, b
    ld bc, $0030
    ld hl, $dd01
    call $30fe
    ld a, [hl+]
    or [hl]
    jr nz, jr_014_4129

    xor a
    ld e, a
    ld c, a
    ret


jr_014_4129:
    dec hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a

Call_014_4132:
    ld a, $04
    call $2d83
    ret


    ld a, [$dcd7]
    and a
    ret z

    ld c, a
    ld b, $00
    ld hl, $c4c1

jr_014_4143:
    push bc
    push hl
    call Call_014_4389
    jr z, jr_014_416b

    push hl
    ld a, b
    ld bc, $0030
    ld hl, $dd01
    call $30fe
    ld e, l
    ld d, h
    pop hl
    push de
    ld bc, $0203
    call $3198
    pop de
    ld a, $f3
    ld [hl+], a
    inc de
    inc de
    ld bc, $0203
    call $3198

jr_014_416b:
    pop hl
    ld de, $0028
    add hl, de
    pop bc
    inc b
    dec c
    jr nz, jr_014_4143

    ret


    ld a, [$dcd7]
    and a
    ret z

    ld c, a
    ld b, $00
    ld hl, $c4d0

jr_014_4181:
    push bc
    push hl
    call Call_014_4389
    jr z, jr_014_41a7

    push hl
    ld a, b
    ld bc, $0030
    ld hl, $dcfe
    call $30fe
    ld e, l
    ld d, h
    pop hl
    ld a, [de]
    cp $64
    jr nc, jr_014_41a1

    ld a, $6e
    ld [hl+], a
    ld bc, $4102

jr_014_41a1:
    ld bc, $4103
    call $3198

jr_014_41a7:
    pop hl
    ld de, $0028
    add hl, de
    pop bc
    inc b
    dec c
    jr nz, jr_014_4181

    ret


    ld a, [$dcd7]
    and a
    ret z

    ld c, a
    ld b, $00
    ld hl, $c4cd

jr_014_41bd:
    push bc
    push hl
    call Call_014_4389
    jr z, jr_014_41d5

    push hl
    ld a, b
    ld bc, $0030
    ld hl, $dcff
    call $30fe
    ld e, l
    ld d, h
    pop hl
    call Call_014_4d0a

jr_014_41d5:
    pop hl
    ld de, $0028
    add hl, de
    pop bc
    inc b
    dec c
    jr nz, jr_014_41bd

    ret


    ld a, [$dcd7]
    and a
    ret z

    ld c, a
    ld b, $00
    ld hl, $c4d4

jr_014_41eb:
    push bc
    push hl
    call Call_014_4389
    jr z, jr_014_420a

    push hl
    ld hl, $dcd8
    ld e, b
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$d108], a
    ld a, $0e
    call $2d83
    pop hl
    call Call_014_4215
    call $1078

jr_014_420a:
    pop hl
    ld de, $0028
    add hl, de
    pop bc
    inc b
    dec c
    jr nz, jr_014_41eb

    ret


Call_014_4215:
    ld a, c
    and a
    jr nz, jr_014_421d

    ld de, $4226
    ret


jr_014_421d:
    ld de, $4221
    ret


    add b
    add c
    adc e
    add h
    ld d, b
    adc l
    adc [hl]
    sub e
    ld a, a
    add b
    add c
    adc e
    add h
    ld d, b
    ld a, [$dcd7]
    and a
    ret z

    ld c, a
    ld b, $00
    ld hl, $c4d4

jr_014_423a:
    push bc
    push hl
    call Call_014_4389
    jr z, jr_014_425d

    push hl
    ld a, b
    ld bc, $0030
    ld hl, $dcdf
    call $30fe
    ld a, [hl]
    dec a
    ld e, a
    ld d, $00
    ld hl, $65b1
    add hl, de
    add hl, de
    call Call_014_4268
    pop hl
    call $1078

jr_014_425d:
    pop hl
    ld de, $0028
    add hl, de
    pop bc
    inc b
    dec c
    jr nz, jr_014_423a

    ret


Call_014_4268:
    ld de, $d073
    ld a, $10
    ld bc, $0002
    call $0e8d
    ld hl, $d073
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d073
    ld a, $10
    ld bc, $000a
    call $0e8d
    ld hl, $d073

jr_014_4287:
    ld a, [hl+]
    and a
    jr z, jr_014_429f

    inc hl
    inc hl
    cp $02
    jr nz, jr_014_4287

    dec hl
    dec hl
    ld a, [$d106]
    cp [hl]
    inc hl
    inc hl
    jr nz, jr_014_4287

    ld de, $42a3
    ret


jr_014_429f:
    ld de, $42a8
    ret


    add b
    add c
    adc e
    add h
    ld d, b
    adc l
    adc [hl]
    sub e
    ld a, a
    add b
    add c
    adc e
    add h
    ld d, b
    ld a, [$dcd7]
    and a
    ret z

    ld c, a
    ld b, $00
    ld hl, $c4d4

jr_014_42bc:
    push bc
    push hl
    call Call_014_4389
    jr z, jr_014_42e3

    ld [$d108], a
    push hl
    ld a, b
    ld [$d109], a
    xor a
    ld [$cf5f], a
    call Call_014_4bdd
    ld de, $42fe
    jr c, jr_014_42df

    ld de, $42ee
    jr nz, jr_014_42df

    ld de, $42f5

jr_014_42df:
    pop hl
    call $1078

jr_014_42e3:
    pop hl
    ld de, $0028
    add hl, de
    pop bc
    inc b
    dec c
    jr nz, jr_014_42bc

    ret


    rst $28
    ld [hl], l
    adc h
    add b
    adc e
    add h
    ld d, b
    push af
    ld [hl], l
    add l
    add h
    adc h
    add b
    adc e
    add h
    ld d, b
    ld [hl], l
    sub h
    adc l
    adc d
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld d, b
    ld a, [$dcd7]
    and a
    ret z

    ld c, a
    ld b, $00
    ld hl, $c4c0

jr_014_4312:
    push bc
    push hl
    ld de, $4372
    call $1078
    pop hl
    ld de, $0028
    add hl, de
    pop bc
    inc b
    dec c
    jr nz, jr_014_4312

    ld a, l
    ld e, $0b
    sub e
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld de, $4379
    call $1078
    ld b, $03
    ld c, $00
    ld hl, $d002
    ld a, [hl]

jr_014_433b:
    push hl
    push bc
    ld hl, $c4c0

jr_014_4340:
    and a
    jr z, jr_014_434a

    ld de, $0028
    add hl, de
    dec a
    jr jr_014_4340

jr_014_434a:
    ld de, $436b
    push hl
    call $1078
    pop hl
    pop bc
    push bc
    push hl
    ld a, c
    ld hl, $4383
    call $3411
    ld d, h
    ld e, l
    pop hl
    call $1078
    pop bc
    pop hl
    inc hl
    ld a, [hl]
    inc c
    dec b
    ret z

    jr jr_014_433b

    ld a, a
    ld a, [hl-]
    sbc $d2
    ld a, a
    ld a, a
    ld d, b
    cp e
    sbc $b6
    cp h
    push bc
    or d
    ld d, b
    cp c
    rst $18
    jp Jump_014_7fb2


    ld a, a
    call nc, $d9d2
    ld d, b
    rst $30
    ld d, b
    ld hl, sp+$50
    ld sp, hl
    ld d, b

Call_014_4389:
    ld a, $d8
    add b
    ld e, a
    ld a, $dc
    adc $00
    ld d, a
    ld a, [de]
    cp $fd
    ret


Call_014_4396:
    ld a, [$d141]
    and $f0
    jr nz, jr_014_43ae

    ld a, [$d141]
    and $0f
    ld e, a
    ld d, $00
    ld hl, $43b2
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_014_43ae:
    ld hl, $43c6
    ret


    add $43
    add $43
    add $43
    call z, $c643
    ld b, e
    pop de
    ld b, e
    sub $43
    sub $43
    add $43
    db $db
    ld b, e
    nop
    ld bc, $0302
    inc b
    rst $38
    nop
    dec b
    inc bc
    inc b
    rst $38
    nop
    ld b, $03
    inc b
    rst $38
    nop
    rlca
    inc bc
    inc b
    rst $38
    nop
    ld [$0403], sp
    rst $38

Call_014_43e0:
    ld hl, $dcd7
    ld a, [hl+]
    and a
    ret z

    ld c, a
    xor a
    ldh [$b0], a

jr_014_43ea:
    push bc
    push hl
    ld hl, $683f
    ld a, $23
    ld e, $00
    rst $08
    ldh a, [$b0]
    inc a
    ldh [$b0], a
    pop hl
    pop bc
    dec c
    jr nz, jr_014_43ea

    ld hl, $4f69
    ld a, $23
    rst $08
    ret


Call_014_4405:
    xor a
    ld [$d0e3], a
    ld de, $444f
    call $1bb1
    ld a, [$dcd7]
    inc a
    ld [$cfa3], a
    dec a
    ld b, a
    ld a, [$d0d8]
    and a
    jr z, jr_014_4422

    inc b
    cp b
    jr c, jr_014_4424

jr_014_4422:
    ld a, $01

jr_014_4424:
    ld [$cfa9], a
    ld a, $03
    ld [$cfa8], a
    ret


    ld de, $444f
    call $1bb1
    ld a, [$dcd7]
    ld [$cfa3], a
    ld b, a
    ld a, [$d0d8]
    and a
    jr z, jr_014_4444

    inc b
    cp b
    jr c, jr_014_4446

jr_014_4444:
    ld a, $01

jr_014_4446:
    ld [$cfa9], a
    ld a, $03
    ld [$cfa8], a
    ret


    ld bc, $0000
    ld bc, $0060
    jr nz, jr_014_4457

Call_014_4457:
jr_014_4457:
    call $1bc9
    call $1bee
    ld a, [$dcd7]
    inc a
    ld b, a
    ld a, [$cfa9]
    cp b
    jr z, jr_014_448f

    ld [$d0d8], a
    ldh a, [$a9]
    ld b, a
    bit 1, b
    jr nz, jr_014_448f

    ld a, [$cfa9]
    dec a
    ld [$d109], a
    ld c, a
    ld b, $00
    ld hl, $dcd8
    add hl, bc
    ld a, [hl]
    ld [$d108], a
    ld de, $0008
    call $3c23
    call $3c55
    and a
    ret


jr_014_448f:
    ld de, $0008
    call $3c23
    call $3c55
    scf
    ret


Call_014_449a:
    ld hl, $c5b8
    ld bc, $0212
    call $0fe8
    ld a, [$dcd7]
    and a
    jr nz, jr_014_44ae

    ld de, $4556
    jr jr_014_44be

jr_014_44ae:
    ld a, [$d141]
    and $0f
    ld hl, $44d2
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a

jr_014_44be:
    ld a, [$cfcc]
    push af
    set 4, a
    ld [$cfcc], a
    ld hl, $c5e1
    call $1078
    pop af
    ld [$cfcc], a
    ret


    db $e4
    ld b, h
    di
    ld b, h
    inc b
    ld b, l
    ld c, $45
    ld e, $45
    di
    ld b, h
    db $e4
    ld b, h
    db $e4
    ld b, h
    ld c, c
    ld b, l
    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $50
    sub h
    or d
    and h
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    pop hl
    ld [c], a
    and $50
    sub [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    pop hl
    ld [c], a
    and $50
    sub e
    and h
    and b
    and d
    and a
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    pop hl
    ld [c], a
    and $50
    adc h
    xor [hl]
    or l
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    or [hl]
    and a
    and h
    or c
    and h
    and $50
    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld a, a
    push af
    pop hl
    ld [c], a
    add sp, $50
    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld a, a
    rst $28
    pop hl
    ld [c], a
    add sp, $50
    sub e
    xor [hl]
    ld a, a
    or [hl]
    and a
    xor b
    and d
    and a
    ld a, a
    pop hl
    ld [c], a
    and $50
    sbc b
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
    ld a, a
    pop hl
    ld [c], a
    rst $20
    ld d, b
    ld a, [$d109]
    ld hl, $de41
    call $38a2
    ld a, [$d141]
    and $0f
    ld hl, $457b
    call Call_014_45c1
    ret


    sub h
    ld b, l
    sbc [hl]
    ld b, l
    and e
    ld b, l
    xor b
    ld b, l
    sbc c
    ld b, l
    adc a
    ld b, l
    xor l
    ld b, l
    or d
    ld b, l
    or a
    ld b, l
    cp h
    ld b, l
    ld d, $a2
    ld b, b
    ld l, a
    ld d, b
    ld d, $bb
    ld b, b
    ld l, a
    ld d, b
    ld d, $d2
    ld b, b
    ld l, a
    ld d, b
    ld d, $ea
    ld b, b
    ld l, a
    ld d, b
    ld d, $01
    ld b, c
    ld l, a
    ld d, b
    ld d, $15
    ld b, c
    ld l, a
    ld d, b
    ld d, $23
    ld b, c
    ld l, a
    ld d, b
    ld d, $3a
    ld b, c
    ld l, a
    ld d, b
    ld d, $4f
    ld b, c
    ld l, a
    ld d, b
    ld d, $6e
    ld b, c
    ld l, a
    ld d, b

Call_014_45c1:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cfcc]
    push af
    set 4, a
    ld [$cfcc], a
    call $1057
    pop af
    ld [$cfcc], a
    ret


    ld a, [$dcd7]
    and a
    jr z, jr_014_462c

    xor a
    ld c, $07
    ld hl, $d03e

jr_014_45e6:
    ld [hl+], a
    dec c
    jr nz, jr_014_45e6

    xor a
    ld [$d109], a

jr_014_45ee:
    call Call_014_462e
    jr nc, jr_014_4605

    ld a, [$d109]
    ld e, a
    ld d, $00
    ld hl, $d03f
    add hl, de
    ld [hl], c
    ld a, [$d03e]
    or c
    ld [$d03e], a

jr_014_4605:
    ld a, [$dcd7]
    ld hl, $d109
    inc [hl]
    cp [hl]
    jr nz, jr_014_45ee

    ld a, [$d03e]
    and $02
    jr nz, jr_014_4622

    ld a, [$d03e]
    and $01
    jr z, jr_014_462c

    call Call_014_4658
    xor a
    ret


jr_014_4622:
    ld a, $14
    ld hl, $4669
    call $261f
    scf
    ret


jr_014_462c:
    xor a
    ret


Call_014_462e:
    ld a, $20
    call $3917
    ld a, [hl]
    and $08
    ret z

    ld a, $22
    call $3917
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    or c
    ret z

    dec bc
    ld [hl], c
    dec hl
    ld [hl], b
    ld a, b
    or c
    jr nz, jr_014_4654

    ld a, $20
    call $3917
    ld [hl], $00
    ld c, $02
    scf
    ret


jr_014_4654:
    ld c, $01
    scf
    ret


Call_014_4658:
    ld de, $000b
    call $3c23
    ld b, $02
    ld a, $2e
    call $2d83
    call $045a
    ret


    ld c, $14
    ld e, b
    ld b, [hl]
    ld b, a
    ld c, $14
    ld a, e
    ld b, [hl]
    ld [$4677], sp
    ld c, c
    sub c
    inc b
    inc b
    ret z

    ld h, h
    xor a
    ld [$d109], a
    ld de, $d03f

jr_014_4682:
    push de
    ld a, [de]
    and $02
    jr z, jr_014_469c

    ld c, $07
    ld a, $01
    ld hl, $71c2
    rst $08
    ld a, $03
    ld hl, $4706
    rst $08
    ld hl, $46b2
    call $1057

jr_014_469c:
    pop de
    inc de
    ld hl, $d109
    inc [hl]
    ld a, [$dcd7]
    cp [hl]
    jr nz, jr_014_4682

    ld a, $14
    call $2d83
    ld a, d
    ld [$c2dd], a
    ret


    ld d, $cc
    ld c, d
    ld [hl], b
    ld d, b
    ld d, $da
    ld c, d
    ld [hl], b
    ld d, b
    ld hl, $46c8
    call $31cd
    ld a, $01
    ld [$d0ec], a
    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld c, $03
    ld b, $47
    ld c, h
    ld h, $47
    ld d, h
    ld c, $14
    rst $28
    ld b, [hl]
    ld [$46e9], sp
    inc [hl]
    ld de, $0900
    push hl
    ld b, [hl]
    ld e, e
    ld e, a
    ld h, b
    sub c
    inc b
    inc b
    db $eb
    ld [hl], l
    ld c, h
    dec hl
    ld b, a
    ld d, h
    ld c, c
    sub c
    ld a, $25
    ld hl, $7cfd
    rst $08
    jr nc, jr_014_471e

    ld hl, $d84d
    bit 2, [hl]
    jr nz, jr_014_4712

    ld a, $0a
    ld hl, $6111
    rst $08
    ld a, b
    and a
    jr z, jr_014_471e

    ld a, $0a
    ld hl, $614f
    rst $08
    jr nz, jr_014_471e

    jr jr_014_4718

jr_014_4712:
    ld a, $25
    ld hl, $7d31
    rst $08

jr_014_4718:
    ld a, $01
    ld [$c2dd], a
    ret


jr_014_471e:
    xor a
    ld [$c2dd], a
    ld [$d230], a
    ret


    ld d, $03
    ld c, e
    ld [hl], b
    ld d, b
    ld d, $1a
    ld c, e
    ld [hl], b
    ld d, b
    ld hl, $473c
    call $31cd
    ld a, $01
    ld [$d0ec], a
    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld c, $14
    ld d, e
    ld b, a
    ld [$474b], sp
    inc b
    ld h, l
    ld d, e
    ld b, b
    ld d, e
    ld c, [hl]
    ld b, a
    ld d, $3b
    ld c, e
    ld [hl], b
    ld d, b
    ld a, [$dcb5]
    cp $0a
    jr nz, jr_014_4774

    ld a, [$dcb6]
    cp $03
    jr nz, jr_014_4774

    ld a, $03
    ld hl, $4f0d
    rst $08
    jr c, jr_014_4774

    ld a, d
    cp $17
    jr nz, jr_014_4774

    ld a, $01
    ld [$c2dd], a
    ret


jr_014_4774:
    xor a
    ld [$c2dd], a
    ret


    ld a, [$dcb5]
    cp $03
    jr nz, jr_014_47a9

    ld a, [$dcb6]
    cp $13
    jr nz, jr_014_47a9

    ld a, [$d4de]
    and $0c
    cp $04
    jr nz, jr_014_47a9

    call $2a07
    ld a, d
    cp $12
    jr nz, jr_014_47a9

    ld a, e
    cp $06
    jr nz, jr_014_47a9

    ld hl, $47af
    call $31cd
    ld a, $01
    ld [$d0ec], a
    ret


jr_014_47a9:
    ld a, $00
    ld [$d0ec], a
    ret


    ld c, c
    inc b
    rla
    di
    ld h, l
    ld a, [$dcb5]
    cp $03
    jr nz, jr_014_47db

    ld a, [$dcb6]
    cp $35
    jr nz, jr_014_47db

    call $2a07
    ld a, d
    cp $16
    jr nz, jr_014_47db

    ld a, e
    cp $0a
    jr nz, jr_014_47db

    ld hl, $47e1
    call $31cd
    ld a, $01
    ld [$d0ec], a
    ret


jr_014_47db:
    ld a, $00
    ld [$d0ec], a
    ret


    ld c, c
    inc b
    rra
    sub $42
    ld a, $00
    ld [$d0ec], a
    call Call_014_47fb
    ret nc

    ld hl, $4821
    call $31cd
    ld a, $01
    ld [$d0ec], a
    ret


Call_014_47fb:
    ld de, $0030
    ld bc, $dcd8
    ld hl, $dd01
    ld a, [$dcd7]
    and a
    ret z

jr_014_4809:
    push af
    push hl
    ld a, [bc]
    inc bc
    cp $fd
    jr z, jr_014_4815

    ld a, [hl+]
    or [hl]
    jr z, jr_014_481d

jr_014_4815:
    pop hl
    add hl, de
    pop af
    dec a
    jr nz, jr_014_4809

    xor a
    ret


jr_014_481d:
    pop hl
    pop af
    scf
    ret


    rrca
    dec de
    nop
    ld a, h
    add l
    inc de
    nop
    rrca
    ld l, $00
    rrca
    ld sp, $0f00
    ld l, $00
    rrca
    ld sp, $0f00
    ld l, $00
    rrca
    ld sp, $8600
    ld c, h
    ld b, l
    ld c, b
    add l
    ld [bc], a
    nop
    add [hl]
    ld d, h
    ld c, c
    sub c
    ld d, $65
    ld c, e
    ld [hl], b
    ld d, b

Call_014_484a:
    ld a, [$d109]
    ld e, a
    call Call_014_48d5
    ld a, [$d108]
    ld [$cf60], a
    call $3856
    ld a, [$cf5f]
    ld hl, $dcdf
    ld bc, $0030
    and a
    jr z, jr_014_487b

    ld hl, $d288
    ld bc, $0030
    cp $01
    jr z, jr_014_487b

    ld bc, $0020
    ld hl, $65bb
    ld a, $03
    rst $08
    jr jr_014_488a

jr_014_487b:
    ld a, [$d109]
    call $30fe
    ld de, $d10e
    ld bc, $0030
    call $3026

jr_014_488a:
    ret


    ld bc, $d018
    jr jr_014_4893

    ld bc, $d10e

jr_014_4893:
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld [$d143], a
    ld hl, $0024
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $000a
    add hl, bc
    push bc
    ld b, $01
    ld a, $0c
    call $2d83
    pop bc
    ld hl, $0022
    add hl, bc
    ld d, h
    ld e, l
    ld a, [$d108]
    cp $fd
    jr nz, jr_014_48c1

    xor a
    ld [de], a
    inc de
    ld [de], a
    jr jr_014_48cd

jr_014_48c1:
    push bc
    ld hl, $0024
    add hl, bc
    ld bc, $0002
    call $3026
    pop bc

jr_014_48cd:
    ld hl, $0020
    add hl, bc
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_014_48d5:
    ld a, [$cf5f]
    and a
    jr z, jr_014_48e7

    cp $01
    jr z, jr_014_48ec

    cp $02
    jr z, jr_014_48f1

    cp $03
    jr z, jr_014_4900

jr_014_48e7:
    ld hl, $dcd8
    jr jr_014_4905

jr_014_48ec:
    ld hl, $d281
    jr jr_014_4905

jr_014_48f1:
    ld a, $01
    call $2fcb
    ld hl, $ad11
    call Call_014_4905
    call $2fe1
    ret


jr_014_4900:
    ld a, [$df0c]
    jr jr_014_4909

Call_014_4905:
jr_014_4905:
    ld d, $00
    add hl, de
    ld a, [hl]

jr_014_4909:
    ld [$d108], a
    ret


    push hl
    call $3856
    pop hl
    push hl
    ld a, [$d23d]
    call Call_014_4928
    ld a, [$d23d]
    ld b, a
    ld a, [$d23e]
    cp b
    pop hl
    jr z, jr_014_492b

    ld bc, $0014
    add hl, bc

Call_014_4928:
    ld b, a
    jr jr_014_4953

jr_014_492b:
    ld a, $7f
    ld bc, $0011
    add hl, bc
    ld [hl], a
    inc bc
    add hl, bc
    ld bc, $0005
    jp $3041


    push hl
    ld a, b
    dec a
    ld bc, $0007
    ld hl, $5afb
    call $30fe
    ld de, $d073
    ld a, $10
    call $0e8d
    ld a, [$d076]
    pop hl
    ld b, a

jr_014_4953:
    ld a, b
    push hl
    add a
    ld hl, $497b
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    jp $1078


    ld a, [$d265]
    ld hl, $497b
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d073
    ld bc, $000d
    jp $3026


    or e
    ld c, c
    cp d
    ld c, c
    jp $ca49


    ld c, c
    ei
    ld c, c
    ld [bc], a
    ld c, d
    rlca
    ld c, d
    inc c
    ld c, d
    db $10
    ld c, d
    ld d, $4a
    or e
    ld c, c
    or e
    ld c, c
    or e
    ld c, c
    or e
    ld c, c
    or e
    ld c, c
    or e
    ld c, c
    or e
    ld c, c
    or e
    ld c, c
    or e
    ld c, c
    pop de
    ld c, c
    push de
    ld c, c
    jp c, $e049

    ld c, c
    and $49
    rst $28
    ld c, c
    rst $30
    ld c, c
    inc e
    ld c, d
    inc hl
    ld c, d
    adc l
    adc [hl]
    sub c
    adc h
    add b
    adc e
    ld d, b
    add l
    adc b
    add [hl]
    add a
    sub e
    adc b
    adc l
    add [hl]
    ld d, b
    add l
    adc e
    sbc b
    adc b
    adc l
    add [hl]
    ld d, b
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld d, b
    and $e6
    and $50
    add l
    adc b
    sub c
    add h
    ld d, b
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld d, b
    add [hl]
    sub c
    add b
    sub d
    sub d
    ld d, b
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc b
    add d
    ld d, b
    adc a
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    ld d, b
    adc b
    add d
    add h
    ld d, b
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld d, b
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    add c
    adc b
    sub c
    add e
    ld d, b
    add c
    sub h
    add [hl]
    ld d, b
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    ld d, b
    sub d
    sub e
    add h
    add h
    adc e
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    add e
    add b
    sub c
    adc d
    ld d, b
    ld hl, $4a42
    ld a, [$d233]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d073

jr_014_4a3a:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $50
    jr nz, jr_014_4a3a

    ret


    and b
    ld c, d
    and l
    ld c, d
    xor d
    ld c, d
    ld d, [hl]
    add $af
    ld c, d
    or e
    ld c, d
    or a
    ld c, d
    cp e
    ld c, d
    ld d, [hl]
    add $56
    add $c0
    ld c, d
    push bc
    ld c, d
    ret


    ld c, d
    ld d, [hl]
    add $ce
    ld c, d
    ld d, [hl]
    add $56
    add $d3
    ld c, d
    ld d, [hl]
    add $d9
    ld c, d
    sbc $4a
    ld d, [hl]
    add $56
    add $e4
    ld c, d
    ld d, [hl]
    add $e8
    ld c, d
    db $ed
    ld c, d
    pop af
    ld c, d
    ld d, [hl]
    add $f9
    ld c, d
    cp $4a
    inc b
    ld c, e
    ld d, [hl]
    add $56
    add $56
    add $56
    add $56
    add $56
    add $56
    add $56
    add $56
    add $56
    add $56
    add $56
    add $56
    add $56
    add $56
    add $c0
    sbc $40
    xor e
    ld d, b
    pop de
    cp h
    call nz, $50d8
    sbc [hl]
    sub l
    adc h
    add l
    ld d, b
    inc e
    db $e3
    add c
    ld d, b
    dec b
    db $e3
    and [hl]
    ld d, b
    sbc l
    sub l
    add b
    ld d, b
    ret c

    or [hl]
    cp c
    or d
    ld d, b
    inc [hl]
    db $db
    ld a, $b3
    ld d, b
    add h
    and d
    dec bc
    ld d, b
    dec bc
    xor l
    xor h
    add a
    ld d, b
    or [hl]
    or d
    ld b, b
    xor e
    ld d, b
    or l
    ret z

    or h
    cp e
    sbc $50

jr_014_4ad9:
    rlca
    and [hl]
    db $e3
    ld b, d
    ld d, b
    dec bc
    xor l
    rlca
    and l
    db $e3
    ld d, b
    or [hl]
    rst $10
    jp $8450


    db $e3
    add [hl]
    inc de
    ld d, b
    sub b
    db $e3
    sbc e
    ld d, b
    cp c
    sbc $b7
    pop hl
    or e
    or d
    sbc $50
    jr nc, jr_014_4ad9

    or d
    sbc $50
    add e
    ret c

    db $e3
    sub e
    rst $28
    ld d, b
    add e
    ret c

    db $e3
    sub e
    push af
    ld d, b
    ld a, $01
    jr jr_014_4b10

Call_014_4b0e:
    ld a, $02

jr_014_4b10:
    ld [$d10a], a
    push hl
    push bc
    ld a, [$cf5f]
    cp $02
    jr z, jr_014_4b30

    ld a, [$d130]
    ld b, a
    ld a, [$d131]
    ld c, a
    or b
    jr nz, jr_014_4b30

    xor a
    ld c, a
    ld e, a
    ld a, $06
    ld d, a
    jp Jump_014_4b4a


jr_014_4b30:
    ld a, [$d132]
    ld d, a
    ld a, [$d133]
    ld e, a
    ld a, [$cf5f]
    cp $02
    jr nz, jr_014_4b41

    ld b, d
    ld c, e

jr_014_4b41:
    ld a, $04
    call $2d83
    ld a, $06
    ld d, a
    ld c, a

Jump_014_4b4a:
    ld a, c
    pop bc
    ld c, a
    pop hl
    push de
    push hl
    push hl
    call $3750
    pop hl
    ld bc, $0015
    add hl, bc
    ld de, $d130
    ld a, [$cf5f]
    cp $02
    jr nz, jr_014_4b66

    ld de, $d132

jr_014_4b66:
    ld bc, $0203
    call $3198
    ld a, $f3
    ld [hl+], a
    ld de, $d132
    ld bc, $0203
    call $3198
    pop hl
    pop de
    ret


    push bc
    push hl
    ld de, $4bb5
    call $1078
    pop hl
    pop bc
    add hl, bc
    ld bc, $0014
    add hl, bc
    ld de, $d134
    ld bc, $0203
    call Call_014_4bab
    ld de, $d136
    call Call_014_4bab
    ld de, $d13a
    call Call_014_4bab
    ld de, $d13c
    call Call_014_4bab
    ld de, $d138
    jp $3198


Call_014_4bab:
    push hl
    call $3198
    pop hl
    ld de, $0028
    add hl, de
    ret


    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld c, [hl]
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld c, [hl]
    sub d
    adc a
    add d
    adc e
    add sp, -$80
    sub e
    adc d
    ld c, [hl]
    sub d
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    ld c, [hl]
    sub d
    adc a
    add h
    add h
    add e
    ld c, [hl]
    ld d, b

Call_014_4bdd:
    ld hl, $dcf4
    ld bc, $0030
    ld a, [$cf5f]
    and a
    jr z, jr_014_4c03

    ld hl, $d29d
    dec a
    jr z, jr_014_4c03

    ld hl, $ad3b
    ld bc, $0020
    dec a
    jr z, jr_014_4c03

    ld hl, $d123
    dec a
    jr z, jr_014_4c09

    ld hl, $d20c
    jr jr_014_4c09

jr_014_4c03:
    ld a, [$d109]
    call $30fe

jr_014_4c09:
    ld a, [$cf5f]
    cp $02
    ld a, $01
    call z, $2fcb
    ld a, [hl+]
    and $f0
    ld b, a
    ld a, [hl]
    and $f0
    swap a
    or b
    ld b, a
    ld a, [$cf5f]
    cp $02
    call z, $2fe1
    push bc
    ld a, [$d108]
    dec a
    ld hl, $5431
    ld bc, $0020
    call $30fe
    pop bc
    ld a, $14
    call $304d
    cp $ff
    jr z, jr_014_4c4e

    and a
    jr z, jr_014_4c4a

    cp $fe
    jr z, jr_014_4c48

    cp b
    jr c, jr_014_4c4a

jr_014_4c48:
    xor a
    ret


jr_014_4c4a:
    ld a, $01
    and a
    ret


jr_014_4c4e:
    scf
    ret


    ld a, [$d0eb]
    inc a
    ld c, a
    ld a, $04
    sub c
    ld b, a
    push hl
    ld a, [$d1ea]
    ld e, a
    ld d, $00
    ld a, $3e
    call Call_014_4cc9
    ld a, b
    and a
    jr z, jr_014_4c6f

    ld c, a
    ld a, $e3
    call Call_014_4cc9

jr_014_4c6f:
    pop hl
    inc hl
    inc hl
    inc hl
    ld d, h
    ld e, l
    ld hl, $d110
    ld b, $00

jr_014_4c7a:
    ld a, [hl+]
    and a
    jr z, jr_014_4cc8

    push bc
    push hl
    push de
    ld hl, $cfa9
    ld a, [hl]
    push af
    ld [hl], b
    push hl
    ld hl, $78ec
    ld a, $03
    rst $08
    pop hl
    pop af
    ld [hl], a
    pop de
    pop hl
    push hl
    ld bc, $0014
    add hl, bc
    ld a, [hl]
    and $3f
    ld [$d077], a
    ld h, d
    ld l, e
    push hl
    ld de, $d077
    ld bc, $0102
    call $3198
    ld a, $f3
    ld [hl+], a
    ld de, $d265
    ld bc, $0102
    call $3198
    pop hl
    ld a, [$d1ea]
    ld e, a
    ld d, $00
    add hl, de
    ld d, h
    ld e, l
    pop hl
    pop bc
    inc b
    ld a, b
    cp $04
    jr nz, jr_014_4c7a

jr_014_4cc8:
    ret


Call_014_4cc9:
jr_014_4cc9:
    ld [hl+], a
    ld [hl-], a
    add hl, de
    dec c
    jr nz, jr_014_4cc9

    ret


jr_014_4cd0:
    ld [hl], $32
    inc hl
    ld [hl], $3e
    dec hl
    add hl, de
    dec c
    jr nz, jr_014_4cd0

    ret


    push hl
    push hl
    ld hl, $de41
    ld a, [$d109]
    call $38a2
    pop hl
    call $1078
    call Call_014_484a
    pop hl
    ld a, [$d108]
    cp $fd
    jr z, jr_014_4d09

    push hl
    ld bc, $fff4
    add hl, bc
    ld b, $00
    call Call_014_4b0e
    pop hl
    ld bc, $0005
    add hl, bc
    push de
    call $382d
    pop de

jr_014_4d09:
    ret


Call_014_4d0a:
    push de
    inc de
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    or b
    pop de
    jr nz, jr_014_4d2e

    push de
    ld de, $4d21
    call Call_014_4d25
    pop de
    ld a, $01
    and a
    ret


    add l
    adc l
    sub e
    ld d, b

Call_014_4d25:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ret


jr_014_4d2e:
    push de
    ld a, [de]
    ld de, $4d5f
    bit 3, a
    jr nz, jr_014_4d53

    ld de, $4d63
    bit 4, a
    jr nz, jr_014_4d53

    ld de, $4d67
    bit 5, a
    jr nz, jr_014_4d53

    ld de, $4d6b
    bit 6, a
    jr nz, jr_014_4d53

    ld de, $4d5b
    and $07
    jr z, jr_014_4d59

jr_014_4d53:
    call Call_014_4d25
    ld a, $01
    and a

jr_014_4d59:
    pop de
    ret


    sub d
    adc e
    adc a
    ld d, b
    adc a
    sub d
    adc l
    ld d, b
    add c
    sub c
    adc l
    ld d, b
    add l
    sub c
    sbc c
    ld d, b
    adc a
    add b
    sub c
    ld d, b
    ld de, $d25e
    ld b, $00

jr_014_4d74:
    ld a, [de]
    inc de
    and a
    jr z, jr_014_4da7

    push de
    push hl
    push hl
    ld [$cf60], a
    ld a, $02
    ld [$cf61], a
    call $33c3
    ld de, $d073
    pop hl
    push bc
    call $1078
    pop bc
    ld a, b
    ld [$d0eb], a
    inc b
    pop hl
    push bc
    ld a, [$d1ea]
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    pop de
    ld a, b
    cp $04
    jr z, jr_014_4db8

    jr jr_014_4d74

jr_014_4da7:
    ld a, b

jr_014_4da8:
    push af
    ld [hl], $e3
    ld a, [$d1ea]
    ld c, a
    ld b, $00
    add hl, bc
    pop af
    inc a
    cp $04
    jr nz, jr_014_4da8

jr_014_4db8:
    ret


    ld a, [$d263]
    cp $01
    jr nz, jr_014_4dca

    ld hl, $d280
    ld de, $d3a8
    ld a, $06
    jr jr_014_4dfc

jr_014_4dca:
    cp $04
    jr nz, jr_014_4dd8

    ld hl, $dcd7
    ld de, $ddff
    ld a, $05
    jr jr_014_4dfc

jr_014_4dd8:
    cp $05
    jr nz, jr_014_4de6

    ld hl, $d0f0
    ld de, $7384
    ld a, $01
    jr jr_014_4dfc

jr_014_4de6:
    cp $02
    jr nz, jr_014_4df4

    ld hl, $d892
    ld de, $4000
    ld a, $04
    jr jr_014_4dfc

jr_014_4df4:
    ld hl, $d0f0
    ld de, $4000
    ld a, $04

jr_014_4dfc:
    ld [$cf61], a
    ld a, l
    ld [$d100], a
    ld a, h
    ld [$d101], a
    ld a, e
    ld [$d102], a
    ld a, d
    ld [$d103], a
    ld bc, $67c1
    ld a, c
    ld [$d104], a
    ld a, b
    ld [$d105], a
    ret


    ld a, [$d10e]
    ld [$cf60], a
    call $3856
    ld d, $01

jr_014_4e26:
    inc d
    ld a, d
    cp $65
    jr z, jr_014_4e45

    call Call_014_4e47
    push hl
    ld hl, $d118
    ldh a, [$b6]
    ld c, a
    ld a, [hl-]
    sub c
    ldh a, [$b5]
    ld c, a
    ld a, [hl-]
    sbc c
    ldh a, [$b4]
    ld c, a
    ld a, [hl]
    sbc c
    pop hl
    jr nc, jr_014_4e26

jr_014_4e45:
    dec d
    ret


Call_014_4e47:
    ld a, [$d24c]
    add a
    add a
    ld c, a
    ld b, $00
    ld hl, $4efa
    add hl, bc
    call Call_014_4eed
    ld a, d
    ldh [$b7], a
    call $3119
    ld a, [hl]
    and $f0
    swap a
    ldh [$b7], a
    call $3119
    ld a, [hl+]
    and $0f
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b4]
    push af
    ldh a, [$b5]
    push af
    ldh a, [$b6]
    push af
    call Call_014_4eed
    ld a, [hl]
    and $7f
    ldh [$b7], a
    call $3119
    ldh a, [$b4]
    push af
    ldh a, [$b5]
    push af
    ldh a, [$b6]
    push af
    ld a, [hl+]
    push af
    xor a
    ldh [$b4], a
    ldh [$b5], a
    ld a, d
    ldh [$b6], a
    ld a, [hl+]
    ldh [$b7], a
    call $3119
    ld b, [hl]
    ldh a, [$b6]
    sub b
    ldh [$b6], a
    ld b, $00
    ldh a, [$b5]
    sbc b
    ldh [$b5], a
    ldh a, [$b4]
    sbc b
    ldh [$b4], a
    pop af
    and $80
    jr nz, jr_014_4ec8

    pop bc
    ldh a, [$b6]
    add b
    ldh [$b6], a
    pop bc
    ldh a, [$b5]
    adc b
    ldh [$b5], a
    pop bc
    ldh a, [$b4]
    adc b
    ldh [$b4], a
    jr jr_014_4eda

jr_014_4ec8:
    pop bc
    ldh a, [$b6]
    sub b
    ldh [$b6], a
    pop bc
    ldh a, [$b5]
    sbc b
    ldh [$b5], a
    pop bc
    ldh a, [$b4]
    sbc b
    ldh [$b4], a

jr_014_4eda:
    pop bc
    ldh a, [$b6]
    add b
    ldh [$b6], a
    pop bc
    ldh a, [$b5]
    adc b
    ldh [$b5], a
    pop bc
    ldh a, [$b4]
    adc b
    ldh [$b4], a
    ret


Call_014_4eed:
    xor a
    ldh [$b4], a
    ldh [$b5], a
    ld a, d
    ldh [$b6], a
    ldh [$b7], a
    jp $3119


    ld de, $0000
    nop
    inc [hl]
    ld a, [bc]
    nop
    ld e, $34
    inc d
    nop
    ld b, [hl]
    ld h, l
    adc a
    ld h, h
    adc h
    ld b, l
    nop
    nop
    nop
    ld d, h
    nop
    nop
    nop
    ld a, [$d0e3]
    dec a
    ld [$d1ec], a
    ld b, a
    ld a, [$cfa9]
    dec a
    ld [$d1eb], a
    cp b
    jr z, jr_014_4f33

    call Call_014_4f62
    ld a, [$d1ec]
    call Call_014_4f34
    ld a, [$d1eb]
    call Call_014_4f34

jr_014_4f33:
    ret


Call_014_4f34:
    push af
    ld hl, $c4b4
    ld bc, $0028
    call $30fe
    ld bc, $0028
    ld a, $7f
    call $3041
    pop af
    ld hl, $c400
    ld bc, $0010
    call $30fe
    ld de, $0004
    ld c, $04

jr_014_4f55:
    ld [hl], $a0
    add hl, de
    dec c
    jr nz, jr_014_4f55

    ld de, $0020
    call $3c4e
    ret


Call_014_4f62:
    push hl
    push de
    push bc
    ld bc, $dcd8
    ld a, [$d1eb]
    ld l, a
    ld h, $00
    add hl, bc
    ld d, h
    ld e, l
    ld a, [$d1ec]
    ld l, a
    ld h, $00
    add hl, bc
    ld a, [hl]
    push af
    ld a, [de]
    ld [hl], a
    pop af
    ld [de], a
    ld a, [$d1eb]
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    push hl
    ld de, $d002
    ld bc, $0030
    call $3026
    ld a, [$d1ec]
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    pop de
    push hl
    ld bc, $0030
    call $3026
    pop de
    ld hl, $d002
    ld bc, $0030
    call $3026
    ld a, [$d1eb]
    ld hl, $ddff
    call $30f4
    push hl
    call Call_014_5036
    ld a, [$d1ec]
    ld hl, $ddff
    call $30f4
    pop de
    push hl
    call Call_014_5039
    pop de
    ld hl, $d002
    call Call_014_5039
    ld hl, $de41
    ld a, [$d1eb]
    call $30f4
    push hl
    call Call_014_5036
    ld hl, $de41
    ld a, [$d1ec]
    call $30f4
    pop de
    push hl
    call Call_014_5039
    pop de
    ld hl, $d002
    call Call_014_5039
    ld hl, $a600
    ld a, [$d1eb]
    ld bc, $002f
    call $30fe
    push hl
    ld de, $d002
    ld bc, $002f
    ld a, $00
    call $2fcb
    call $3026
    ld hl, $a600
    ld a, [$d1ec]
    ld bc, $002f
    call $30fe
    pop de
    push hl
    ld bc, $002f
    call $3026
    pop de
    ld hl, $d002
    ld bc, $002f
    call $3026
    call $2fe1
    pop bc
    pop de
    pop hl
    ret


Call_014_5036:
    ld de, $d002

Call_014_5039:
    ld bc, $000b
    call $3026
    ret


    ld a, [hl]
    and $60
    sla a
    ld b, a
    ld a, [hl+]
    and $06
    swap a
    srl a
    or b
    ld b, a
    ld a, [hl]
    and $60
    swap a
    sla a
    or b
    ld b, a
    ld a, [hl]
    and $06
    srl a
    or b
    ldh [$b6], a
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ldh [$b5], a
    ld a, $0a
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b6]
    inc a
    ld [$d234], a
    ret


    ld a, [$d108]
    ld [$cf60], a
    call $3741
    ret c

    ldh a, [rSVBK]
    push af
    call Call_014_50a5
    pop af
    ldh [rSVBK], a
    ret


    ld a, [$d108]
    ld [$cf60], a
    call $3741
    ret c

    ldh a, [rSVBK]
    push af
    xor a
    ldh [$d4], a
    call Call_014_50a5
    call Call_014_5103
    pop af
    ldh [rSVBK], a
    ret


Call_014_50a5:
    push de
    call $3856
    ld a, [$d247]
    and $0f
    ld b, a
    push bc
    call Call_014_50d7
    ld a, $06
    ldh [rSVBK], a
    ld a, b
    ld de, $d800
    call $0b40
    pop bc
    ld hl, $d000
    ld de, $d800
    call Call_014_52ab
    pop hl
    push hl
    ld de, $d000
    ld c, $31
    ldh a, [$9d]
    ld b, a
    call $0f82
    pop hl
    ret


Call_014_50d7:
    ld a, [$d108]
    cp $c9
    jr z, jr_014_50e5

    ld a, [$d108]
    ld d, $48
    jr jr_014_50ea

jr_014_50e5:
    ld a, [$d234]
    ld d, $49

jr_014_50ea:
    ld hl, $4000
    dec a
    ld bc, $0006
    call $30fe
    ld a, d
    call $304d
    call Call_014_51c5
    push af
    inc hl
    ld a, d
    call $305d
    pop bc
    ret


Call_014_5103:
    ld a, $01
    ldh [rVBK], a
    push hl
    ld de, $d000
    ld c, $31
    ldh a, [$9d]
    ld b, a
    call $0f82
    pop hl
    ld de, $0310
    add hl, de
    push hl
    ld a, $01
    ld hl, $d247
    call $307b
    pop hl
    and $0f
    ld de, $d990
    ld c, $19
    cp $05
    jr z, jr_014_513b

    ld de, $da40
    ld c, $24
    cp $06
    jr z, jr_014_513b

    ld de, $db10
    ld c, $31

jr_014_513b:
    push hl
    push bc
    call Call_014_514f
    pop bc
    pop hl
    ld de, $d000
    ldh a, [$9d]
    ld b, a
    call $0f82
    xor a
    ldh [rVBK], a
    ret


Call_014_514f:
    ld hl, $d000
    swap c
    ld a, c
    and $0f
    ld b, a
    ld a, c
    and $f0
    ld c, a
    push bc
    call Call_014_52f2
    pop bc

jr_014_5161:
    push bc
    ld c, $00
    call Call_014_52f2
    pop bc
    dec b
    jr nz, jr_014_5161

    ret


    ld a, [$d108]
    call $3741
    ret c

    ld a, [$d108]
    ld b, a
    ld a, [$d234]
    ld c, a
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push de
    ld hl, $4000
    ld a, b
    ld d, $48
    cp $c9
    jr nz, jr_014_5190

    ld a, c
    ld d, $49

jr_014_5190:
    dec a
    ld bc, $0006
    call $30fe
    ld bc, $0003
    add hl, bc
    ld a, d
    call $304d
    call Call_014_51c5
    push af
    inc hl
    ld a, d
    call $305d
    ld de, $d000
    pop af
    call $0b40
    ld hl, $d000
    ld c, $24
    call Call_014_527c
    pop hl
    ld de, $d000
    ldh a, [$9d]
    ld b, a
    call $0f82
    pop af
    ldh [rSVBK], a
    ret


Call_014_51c5:
    push hl
    push bc
    sub $12
    ld c, a
    ld b, $00
    ld hl, $51d4
    add hl, bc
    ld a, [hl]
    pop bc
    pop hl
    ret


    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
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
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld a, c
    push de
    ld hl, $4000
    dec a
    ld bc, $0006
    call $30fe
    ld a, $48
    call $304d
    call Call_014_51c5
    push af
    inc hl
    ld a, $48
    call $305d
    pop af
    pop de
    call $0b40
    ret


    ld a, [$d233]
    and a
    ret z

    cp $44
    ret nc

    call $31f6
    xor a
    ldh [$d4], a
    ld hl, $4000
    ld a, [$d233]
    dec a
    ld bc, $0003
    call $30fe
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push de
    ld a, $4a
    call $304d
    call Call_014_51c5
    push af
    inc hl
    ld a, $4a
    call $305d
    pop af
    ld de, $d000
    call $0b40
    pop hl
    ld de, $d000
    ld c, $31
    ldh a, [$9d]
    ld b, a
    call $0f82
    pop af
    ldh [rSVBK], a
    call $31f6
    ld a, $01
    ldh [$d4], a
    ret


    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a

Call_014_5264:
    push de
    push bc
    ld a, b
    ld de, $d000
    call $0b40
    pop bc
    ld de, $d000
    pop hl
    ldh a, [$9d]
    ld b, a
    call $0f82
    pop af
    ldh [rSVBK], a
    ret


Call_014_527c:
    push de
    push bc
    ld a, [$c2c6]
    and a
    jr z, jr_014_52a8

    ld a, c
    cp $31
    ld de, $0310
    jr z, jr_014_5296

    cp $24
    ld de, $0240
    jr z, jr_014_5296

    ld de, $0190

jr_014_5296:
    ld a, [hl]
    ld b, $00
    ld c, $08

jr_014_529b:
    rra
    rl b
    dec c
    jr nz, jr_014_529b

    ld a, b
    ld [hl+], a
    dec de
    ld a, e
    or d
    jr nz, jr_014_5296

jr_014_52a8:
    pop bc
    pop de
    ret


Call_014_52ab:
    ld a, b
    cp $06
    jr z, jr_014_52bd

    cp $05
    jr z, jr_014_52d2

jr_014_52b4:
    ld c, $70
    call Call_014_52f2
    dec b
    jr nz, jr_014_52b4

    ret


jr_014_52bd:
    ld c, $70
    xor a
    call Call_014_52ed

jr_014_52c3:
    ld c, $10
    xor a
    call Call_014_52ed
    ld c, $60
    call Call_014_52f2
    dec b
    jr nz, jr_014_52c3

    ret


jr_014_52d2:
    ld c, $70
    xor a
    call Call_014_52ed

jr_014_52d8:
    ld c, $20
    xor a
    call Call_014_52ed
    ld c, $50
    call Call_014_52f2
    dec b
    jr nz, jr_014_52d8

    ld c, $70
    xor a
    call Call_014_52ed
    ret


Call_014_52ed:
jr_014_52ed:
    ld [hl+], a
    dec c
    jr nz, jr_014_52ed

    ret


Call_014_52f2:
    ld a, [$c2c6]
    and a
    jr nz, jr_014_52ff

jr_014_52f8:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_014_52f8

    ret


jr_014_52ff:
    push bc

jr_014_5300:
    ld a, [de]
    inc de
    ld b, a
    xor a
    rr b
    rla
    rr b
    rla
    rr b
    rla
    rr b
    rla
    rr b
    rla
    rr b
    rla
    rr b
    rla
    rr b
    rla
    ld [hl+], a
    dec c
    jr nz, jr_014_5300

    pop bc
    ret


    ld a, $01
    call $2fcb
    ld hl, $ad10
    call Call_014_53cb
    ld a, [$ad10]
    dec a
    ld [$d265], a
    ld hl, $b082
    ld bc, $000b
    ld de, $d002
    call Call_014_53e0
    ld a, [$ad10]
    dec a
    ld [$d265], a
    ld hl, $afa6
    ld bc, $000b
    ld de, $d00d
    call Call_014_53e0
    ld a, [$ad10]
    dec a
    ld [$d265], a
    ld hl, $ad26
    ld bc, $0020
    ld de, $d018
    call Call_014_53e0
    ld hl, $d01a
    ld de, $d110
    ld bc, $0004
    call $3026
    ld hl, $d02f
    ld de, $d125
    ld bc, $0004
    call $3026
    ld a, [$d109]
    ld b, a
    ld a, $03
    ld hl, $5cb6
    rst $08
    jp $2fe1


    ld hl, $dcd7
    call Call_014_53cb
    ld a, [$dcd7]
    dec a
    ld [$d265], a
    ld hl, $de41
    ld bc, $000b
    ld de, $d002
    call Call_014_53e0
    ld a, [$dcd7]
    dec a
    ld [$d265], a
    ld hl, $ddff
    ld bc, $000b
    ld de, $d00d
    call Call_014_53e0
    ld a, [$dcd7]
    dec a
    ld [$d265], a
    ld hl, $dcdf
    ld bc, $0030
    ld de, $d018
    call Call_014_53e0
    ret


Call_014_53cb:
    inc [hl]
    inc hl
    ld a, [$d109]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$d108]
    ld c, a

jr_014_53d8:
    ld a, [hl]
    ld [hl], c
    inc hl
    inc c
    ld c, a
    jr nz, jr_014_53d8

    ret


Call_014_53e0:
    push de
    push hl
    push bc
    ld a, [$d265]
    dec a
    call $30fe
    push hl
    add hl, bc
    ld d, h
    ld e, l
    pop hl

jr_014_53ef:
    push bc
    ld a, [$d265]
    ld b, a
    ld a, [$d109]
    cp b
    pop bc
    jr z, jr_014_5415

    push hl
    push de
    push bc
    call $3026
    pop bc
    pop de
    pop hl
    push hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop de
    ld a, [$d265]
    dec a
    ld [$d265], a
    jr jr_014_53ef

jr_014_5415:
    pop bc
    pop hl
    ld a, [$d109]
    call $30fe
    ld d, h
    ld e, l
    pop hl
    call $3026
    ret


    ld bc, $312d
    ld sp, $412d
    ld b, c
    ld d, $03
    dec l
    ld b, b
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    rla
    ld h, $1e
    dec a
    call nz, $1886
    ld b, l
    nop
    ld [bc], a
    inc a
    ld a, $3f
    inc a
    ld d, b
    ld d, b
    ld d, $03
    dec l
    adc l
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    rla
    ld h, $1e
    dec a
    call nz, $1886
    ld b, l
    nop
    inc bc
    ld d, b
    ld d, d
    ld d, e
    ld d, b
    ld h, h
    ld h, h
    ld d, $03
    dec l
    push hl
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    rla
    ld [hl], $5e
    dec a
    call nz, $1886
    ld b, l
    nop
    inc b
    daa
    inc [hl]
    dec hl
    ld b, c
    inc a
    ld [hl-], a
    inc d
    inc d
    dec l
    ld b, c
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld e, $a7
    ld d, $d9
    call z, $98e6
    dec h
    ld [bc], a
    dec b
    ld a, [hl-]
    ld b, b
    ld a, [hl-]
    ld d, b
    ld d, b
    ld b, c
    inc d
    inc d
    dec l
    adc [hl]
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld e, $a7
    ld d, $d9
    call z, $98e6
    dec h
    ld [bc], a
    ld b, $4e
    ld d, h
    ld c, [hl]
    ld h, h
    ld l, l
    ld d, l
    inc d
    ld [bc], a
    dec l
    push hl
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld e, $b7
    ld d, [hl]
    reti


    adc $f6
    ret c

    dec l
    ld [bc], a
    rlca
    inc l
    jr nc, jr_014_5529

    dec hl
    ld [hl-], a
    ld b, b
    dec d
    dec d
    dec l
    ld b, d
    nop
    nop
    rra
    ld h, h

jr_014_54f3:
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld [de], a
    xor a
    or d
    ld e, e
    call z, $1887
    or b
    add hl, bc
    ld [$3f3b], sp
    ld d, b
    ld a, [hl-]
    ld b, c
    ld d, b
    dec d
    dec d
    dec l
    adc a
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld [de], a
    xor a
    or d
    ld e, e
    call z, $1887
    or b
    add hl, bc
    add hl, bc
    ld c, a
    ld d, e
    ld h, h
    ld c, [hl]

jr_014_5529:
    ld d, l
    ld l, c
    dec d
    dec d
    dec l
    push hl
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld [de], a
    cp a
    ld a, [c]
    ld e, e
    adc $87
    jr jr_014_54f3

    add hl, bc
    ld a, [bc]
    dec l
    ld e, $23
    dec l
    inc d
    inc d
    rlca
    rlca
    rst $38
    dec [hl]
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    ld [hl-], a
    inc d
    scf
    ld e, $19
    add hl, de
    rlca
    rlca
    ld a, b
    ld c, b
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc a
    dec l
    ld [hl-], a
    ld b, [hl]
    ld d, b
    ld d, b
    rlca
    ld [bc], a
    dec l
    and b
    nop
    ld e, b
    ld a, a
    ld h, h
    rrca
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc h
    ld e, [hl]
    dec a
    sub h
    ld b, [hl]
    jr jr_014_55e5

    nop
    dec c
    jr z, jr_014_55ca

    ld e, $32
    inc d
    inc d
    rlca
    inc bc
    rst $38
    inc [hl]
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $2d
    add hl, de
    ld [hl-], a
    inc hl
    add hl, de

jr_014_55ca:
    add hl, de
    rlca
    inc bc
    ld a, b
    ld b, a
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca

jr_014_55e5:
    ld b, c
    ld d, b
    jr z, jr_014_5634

    dec l
    ld d, b
    rlca
    inc bc
    dec l
    sbc a
    nop
    ld d, c
    ld a, a
    ld h, h
    rrca
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc h
    ld e, [hl]
    dec e
    add h
    ld c, [hl]
    jr @+$07

    nop
    db $10
    jr z, jr_014_5634

    jr z, @+$3a

    inc hl
    inc hl
    nop
    ld [bc], a
    rst $38
    scf
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld b, h
    inc h
    ld d, $19
    call nz, Call_014_7c46
    ld [$1100], sp
    ccf
    inc a
    scf
    ld b, a
    ld [hl-], a
    ld [hl-], a
    nop
    ld [bc], a
    ld a, b
    ld [hl], c
    nop
    nop
    ld a, a
    ld h, h
    rrca

jr_014_5634:
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld b, h
    inc h
    ld d, $19
    call nz, Call_014_7c46
    ld [$1200], sp
    ld d, e
    ld d, b
    ld c, e
    ld e, e
    ld b, [hl]
    ld b, [hl]
    nop
    ld [bc], a
    dec l
    xor h
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld b, h
    inc h
    ld d, [hl]
    add hl, de
    call nz, Call_014_7c46
    ld [$1300], sp
    ld e, $38
    inc hl
    ld c, b
    add hl, de
    inc hl
    nop
    nop
    rst $38
    add hl, sp
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, l
    and [hl]
    or [hl]
    ld e, c
    db $ed
    add $38
    nop
    nop
    inc d
    scf
    ld d, c
    inc a
    ld h, c
    ld [hl-], a
    ld b, [hl]
    nop
    nop
    ld e, d
    ld [hl], h
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    or [hl]
    or $59
    db $ed
    add $38
    inc h
    inc c
    dec d
    jr z, @+$3e

    ld e, $46
    rra
    rra
    nop
    ld [bc], a
    rst $38
    ld a, [hl-]
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    ld d, $19
    call nz, Call_014_7c46
    ld [$1600], sp
    ld b, c
    ld e, d
    ld b, c
    ld h, h
    dec a
    dec a
    nop
    ld [bc], a
    ld e, d
    and d
    nop
    ld c, l
    ld a, a
    ld h, h
    rrca
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    ld d, [hl]
    add hl, de
    call nz, Call_014_7c46
    ld [$1700], sp
    inc hl
    inc a
    inc l
    scf
    jr z, @+$38

    inc bc
    inc bc
    rst $38
    ld a, $00
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld h, $16
    dec e
    adc [hl]
    ld c, $38
    jr nz, jr_014_5704

jr_014_5704:
    jr jr_014_5742

    ld d, l
    ld b, l
    ld d, b
    ld b, c
    ld c, a
    inc bc
    inc bc
    ld e, d
    sub e
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld h, $56
    dec e
    adc [hl]
    ld c, $38
    jr nz, jr_014_5724

jr_014_5724:
    add hl, de
    inc hl
    scf
    ld e, $5a
    ld [hl-], a
    jr z, jr_014_5743

    rla
    cp [hl]
    ld d, d
    nop
    xor l
    ld a, a
    ld h, h
    ld a, [bc]
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld l, a
    ld [de], a
    ld e, e
    push bc
    add $1d

jr_014_5742:
    ld h, b

jr_014_5743:
    inc b
    ld a, [de]
    inc a
    ld e, d
    scf
    ld h, h
    ld e, d
    ld d, b
    rla
    rla
    ld c, e
    ret z

    nop
    xor l
    ld a, a
    ld h, h
    ld a, [bc]
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld d, [hl]
    ld l, a
    ld d, d
    ld e, e
    push bc
    add $3d
    ld h, b
    inc b
    dec de
    ld [hl-], a
    ld c, e
    ld d, l
    jr z, @+$16

    ld e, $04
    inc b
    rst $38
    ld e, l
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, l
    xor a
    ld d, $59
    adc $d6
    inc a
    dec h
    nop
    inc e
    ld c, e
    ld h, h
    ld l, [hl]
    ld b, c
    dec l
    scf
    inc b
    inc b
    ld e, d
    and e
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    xor a
    ld d, [hl]
    ld e, c
    adc $d6
    inc a
    dec h
    nop
    dec e
    scf
    cpl
    inc [hl]
    add hl, hl
    jr z, jr_014_57d3

    inc bc
    inc bc
    db $eb
    dec sp
    nop
    nop
    cp $64
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    dec d
    ld h, $36
    ld e, e
    push bc
    add [hl]
    inc a
    nop
    inc b
    ld e, $46
    ld a, $43
    jr c, jr_014_5801

    scf
    inc bc
    inc bc
    ld a, b
    ld [hl], l
    nop
    nop
    cp $64

jr_014_57d3:
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    and [hl]
    ld [hl], $5b
    push bc
    add [hl]
    inc a
    jr nz, @+$0e

    rra
    ld e, d
    ld d, d
    ld d, a
    ld c, h
    ld c, e
    ld d, l
    inc bc
    inc b
    dec l
    jp nz, RST_00

    cp $64
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    or a
    or $5b
    rst $20
    or a

jr_014_5801:
    cp l
    ld sp, $200e
    ld l, $39
    jr z, jr_014_583b

    jr z, jr_014_5833

    inc bc
    inc bc
    db $eb
    inc a
    nop
    nop
    nop
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    dec d
    ld h, $36
    ld e, e
    push bc
    add [hl]
    inc a
    nop
    inc b
    ld hl, $483d
    add hl, sp
    ld b, c
    scf
    scf
    inc bc
    inc bc
    ld a, b
    halt
    nop
    nop
    ld h, h

jr_014_5833:
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc

jr_014_583b:
    dec d
    and [hl]
    ld [hl], $5b
    push bc
    add [hl]
    inc a
    jr nz, @+$0e

    ld [hl+], a
    ld d, c
    ld e, h
    ld c, l
    ld d, l
    ld d, l
    ld c, e
    inc bc
    inc b
    dec l
    jp RST_00


    nop
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    dec d
    or a
    or $5b
    rst $20
    or a
    cp l
    ld sp, $230e
    ld b, [hl]
    dec l
    jr nc, jr_014_588c

    inc a
    ld b, c
    nop
    nop
    sub [hl]
    ld b, h
    sub [hl]
    ld [$64fb], sp
    ld a, [bc]
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc b
    ld h, [hl]
    ld l, a
    scf
    ld a, e
    push af
    and a
    sbc a
    ld h, d
    ld c, $24
    ld e, a
    ld b, [hl]
    ld c, c
    inc a
    ld d, l
    ld e, d
    nop

jr_014_588c:
    nop
    add hl, de
    add c
    sub [hl]
    ld [$64fb], sp
    ld a, [bc]
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc b
    ld h, [hl]
    ld l, a
    ld [hl], a
    ld a, e
    push af
    and a
    sbc a
    ld h, d
    ld c, $25
    ld h, $29
    jr z, jr_014_58ea

    ld [hl-], a
    ld b, c
    inc d
    inc d
    cp [hl]
    ccf
    ld c, a
    ld c, a
    cp a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld h, $16
    ld e, c
    adc h
    ld h, [hl]
    jr jr_014_58c3

jr_014_58c3:
    ld [bc], a
    ld h, $49
    ld c, h
    ld c, e
    ld h, h
    ld d, c
    ld h, h
    inc d
    inc d
    ld c, e
    or d
    ld c, a
    ld c, a
    cp a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld [hl], $56
    ld e, c
    adc h
    ld h, [hl]
    jr jr_014_58e3

jr_014_58e3:
    ld [bc], a
    daa
    ld [hl], e
    dec l
    inc d
    inc d
    dec l

jr_014_58ea:
    add hl, de
    nop
    nop
    xor d
    ld c, h
    nop
    nop
    cp a
    ld h, h
    ld a, [bc]
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc b
    ld h, [hl]
    ld l, a
    scf
    dec sp
    push af
    and a
    sbc a
    ld h, d
    ld c, $28
    adc h
    ld b, [hl]
    dec l
    dec l
    ld c, e
    ld [hl-], a
    nop
    nop
    ld [hl-], a
    ld l, l
    nop
    nop
    cp a
    ld h, h
    ld a, [bc]
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc b
    ld h, [hl]
    ld l, a
    ld [hl], a
    dec sp
    push af
    and a
    sbc a
    ld h, d
    ld c, $29
    jr z, jr_014_5954

    inc hl
    scf
    ld e, $28
    inc bc
    ld [bc], a
    rst $38
    ld [hl], $00
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    ld d, $1d
    add h
    ld b, [hl]
    ld a, h
    nop
    nop
    ld a, [hl+]
    ld c, e
    ld d, b
    ld b, [hl]
    ld e, d
    ld b, c
    ld c, e
    inc bc
    ld [bc], a
    ld e, d
    xor e
    nop
    nop
    ld a, a
    ld h, h
    rrca

jr_014_5954:
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    ld d, [hl]
    dec e
    add h
    ld b, [hl]
    ld a, h
    nop
    nop
    dec hl
    dec l
    ld [hl-], a
    scf
    ld e, $4b
    ld b, c
    ld d, $03
    rst $38
    ld c, [hl]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], a
    inc h
    ld e, $3d
    add h
    ld c, $18
    ld b, h
    nop
    inc l
    inc a
    ld b, c
    ld b, [hl]
    jr z, jr_014_59df

    ld c, e
    ld d, $03
    ld a, b
    add h
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], a
    inc h
    ld e, $3d
    add h
    ld c, $18
    ld b, h
    nop
    dec l
    ld c, e
    ld d, b
    ld d, l
    ld [hl-], a
    ld h, h
    ld e, d
    ld d, $03
    dec l
    cp b
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], a
    inc h
    ld e, [hl]
    dec a
    add h
    ld c, $18
    ld b, h
    nop
    ld l, $23
    ld b, [hl]
    scf
    add hl, de
    dec l
    scf
    rlca
    ld d, $be
    ld b, [hl]
    ld d, [hl]
    ld d, a
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    scf
    and h
    ld e, $3d

jr_014_59df:
    adc h
    ld c, $38
    ld b, l
    nop
    cpl
    inc a
    ld e, a
    ld d, b
    ld e, $3c
    ld d, b
    rlca
    ld d, $4b
    add b
    ld d, [hl]
    ld d, a
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    scf
    and h
    ld e, [hl]
    dec a
    adc h
    ld c, $38
    ld b, l
    nop
    jr nc, @+$3e

    scf
    ld [hl-], a
    dec l
    jr z, @+$39

    rlca
    inc bc
    cp [hl]
    ld c, e
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc h
    ld e, $3d
    sub h
    ld c, [hl]
    jr c, jr_014_5a23

jr_014_5a23:
    nop
    ld sp, $4146
    inc a
    ld e, d
    ld e, d
    ld c, e
    rlca
    inc bc
    ld c, e
    adc d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc h
    ld e, [hl]
    dec a
    sub h
    ld c, [hl]
    jr c, jr_014_5a83

    nop
    ld [hl-], a
    ld a, [bc]
    scf
    add hl, de
    ld e, a
    inc hl
    dec l

Call_014_5a4b:
    inc b
    inc b
    rst $38
    ld d, c
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, l
    and h
    ld d, $19
    adc $0e
    jr c, jr_014_5a67

    nop
    inc sp
    inc hl
    ld d, b

jr_014_5a67:
    ld [hl-], a
    ld a, b
    ld [hl-], a
    ld b, [hl]
    inc b
    inc b
    ld bc, $0099
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld d, l
    and h
    ld d, [hl]
    add hl, de
    adc $0e
    jr c, jr_014_5a87

jr_014_5a83:
    nop
    inc [hl]
    jr z, jr_014_5ab4

jr_014_5a87:
    inc hl
    ld e, d
    jr z, jr_014_5ab3

    nop
    nop
    rst $38
    ld b, l
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld h, [hl]
    sub a
    ld e, c
    push hl
    add $3e
    ld [bc], a
    inc b
    dec [hl]
    ld b, c
    ld b, [hl]
    inc a
    ld [hl], e
    ld b, c
    ld b, c
    nop
    nop
    ld e, d
    sub h
    nop
    nop
    ld a, a
    ld h, h

jr_014_5ab3:
    inc d

jr_014_5ab4:
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld d, l
    db $76
    rst $10
    ld e, c
    push hl
    add $3e
    ld [bc], a
    inc b
    ld [hl], $32
    inc [hl]
    jr nc, @+$39

    ld b, c
    ld [hl-], a
    dec d
    dec d
    cp [hl]
    ld d, b
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    dec h
    and a
    or e
    ld e, e
    call z, $1847
    ldh a, [$09]
    scf
    ld d, b
    ld d, d
    ld c, [hl]
    ld d, l
    ld e, a
    ld d, b
    dec d
    dec d
    ld c, e
    xor [hl]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    dec h
    and a
    di
    ld e, e
    call z, $1847
    pop af
    add hl, bc
    jr c, jr_014_5b2e

    ld d, b
    inc hl
    ld b, [hl]
    inc hl
    dec l
    ld bc, $be01
    ld c, d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, l
    and a
    rla
    ld e, c
    call $bdc7
    jr nz, jr_014_5b28

    add hl, sp
    ld b, c
    ld l, c
    inc a

jr_014_5b28:
    ld e, a
    inc a
    ld b, [hl]
    ld bc, $4b01

jr_014_5b2e:
    ldh a, [rP1]
    nop
    ld a, a
    ld h, h

jr_014_5b33:
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld d, l
    and a
    ld d, a
    ld e, c
    call $bdc7
    jr nz, jr_014_5b48

    ld a, [hl-]
    scf
    ld b, [hl]
    dec l

jr_014_5b48:
    inc a
    ld b, [hl]
    ld [hl-], a
    inc d
    inc d
    cp [hl]
    ld e, e
    ld c, a
    ld c, a
    ccf
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    or [hl]
    ld d, $d9
    adc h
    ld h, [hl]
    jr jr_014_5b63

jr_014_5b63:
    ld [bc], a
    dec sp
    ld e, d
    ld l, [hl]
    ld d, b
    ld e, a
    ld h, h
    ld d, b
    inc d
    inc d
    ld c, e
    push de
    ld c, a
    ld c, a
    ccf
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    or [hl]
    ld d, [hl]
    reti


    adc h
    ld h, [hl]
    jr jr_014_5b83

jr_014_5b83:
    ld [bc], a
    inc a
    jr z, jr_014_5bb9

    jr z, jr_014_5be3

    jr z, jr_014_5bb3

    dec d
    dec d
    rst $38
    ld c, l
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld [hl+], a
    ld h, $b2
    dec de
    sub h
    add [hl]
    jr c, jr_014_5b33

    add hl, bc
    dec a
    ld b, c
    ld b, c
    ld b, c
    ld e, d
    ld [hl-], a
    ld [hl-], a
    dec d
    dec d
    ld a, b
    add e
    nop
    ld d, d
    ld a, a
    ld h, h

jr_014_5bb3:
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop

jr_014_5bb9:
    nop
    inc bc
    ld [hl+], a
    and [hl]
    or d
    dec de
    sub $87
    inc a
    or b
    add hl, bc
    ld a, $5a
    ld d, l
    ld e, a
    ld b, [hl]
    ld b, [hl]
    ld e, d
    dec d
    ld bc, $b92d
    nop
    ld d, d
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld [hl+], a
    and a
    ld a, [c]
    dec de
    sub $87
    inc a
    or b

jr_014_5be3:
    add hl, bc
    ccf
    add hl, de
    inc d
    rrca
    ld e, d
    ld l, c
    scf
    jr jr_014_5c05

    ret z

    ld c, c
    nop
    nop
    ccf
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    adc b
    ld h, a
    rla
    dec de
    or h
    rlca
    cp e
    ld b, d
    nop
    ld b, b

jr_014_5c05:
    jr z, jr_014_5c2a

    ld e, $69
    ld a, b
    ld b, [hl]
    jr jr_014_5c25

    ld h, h
    sub c
    nop
    nop
    ccf
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    adc b
    ld h, a
    rla
    dec de
    cp h
    rlca
    cp e
    ld b, d
    nop
    ld b, c

jr_014_5c25:
    scf
    ld [hl-], a
    dec l
    ld a, b
    add a

jr_014_5c2a:
    ld d, l
    jr jr_014_5c45

    ld [hl-], a
    rst $38
    nop
    nop
    ccf
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    adc b
    ld h, a
    ld d, a
    dec de
    cp h
    rlca
    cp e
    ld b, d
    nop
    ld b, d

jr_014_5c45:
    ld b, [hl]
    ld d, b
    ld [hl-], a
    inc hl
    inc hl
    inc hl
    ld bc, $b401
    ld e, b
    nop
    nop
    ccf
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    adc b
    and a
    ld d, $19
    adc $27
    cp l
    jr nz, jr_014_5c66

    ld b, e
    ld d, b

jr_014_5c66:
    ld h, h
    ld b, [hl]
    dec l
    ld [hl-], a
    inc a
    ld bc, $5a01
    sub d
    nop
    nop
    ccf
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    adc b
    and a
    ld d, $19
    adc $27
    cp l
    jr nz, jr_014_5c86

    ld b, h
    ld e, d

jr_014_5c86:
    add d
    ld d, b
    scf
    ld b, c
    ld d, l
    ld bc, $2d01
    rst $38
    nop
    nop
    ccf
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    adc b
    and a
    ld d, [hl]
    add hl, de
    adc $27
    cp l
    jr nz, jr_014_5ca6

    ld b, l
    ld [hl-], a

jr_014_5ca6:
    ld c, e
    inc hl
    jr z, jr_014_5cf0

    ld e, $16
    inc bc
    rst $38
    ld d, h
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], a
    inc h
    ld e, $3d
    add h
    ld c, $18
    ld b, h
    nop
    ld b, [hl]
    ld b, c
    ld e, d
    ld [hl-], a
    scf
    ld d, l
    dec l
    ld d, $03
    ld a, b
    sub a
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], a
    inc h
    ld e, $3d
    add h
    ld c, $18
    ld b, h
    nop
    ld b, a
    ld d, b
    ld l, c
    ld b, c
    ld b, [hl]
    ld h, h
    inc a
    ld d, $03
    dec l
    cp a
    nop

jr_014_5cf0:
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], a
    inc h
    ld e, [hl]
    dec a
    add h
    ld c, $18
    ld b, h
    nop
    ld c, b
    jr z, @+$2a

    inc hl
    ld b, [hl]
    ld [hl-], a
    ld h, h
    dec d
    inc bc
    cp [hl]
    ld l, c
    nop
    nop
    ei
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    dec b
    sbc c
    inc h
    or d
    rra
    add h
    ld c, $18
    sub h
    ld [$5049], sp
    ld b, [hl]
    ld b, c
    ld h, h
    ld l, c
    ld a, b
    dec d
    inc bc
    inc a
    ldh a, [rP1]
    nop
    ei
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b
    sbc c
    inc h
    ld a, [c]
    rra
    add h
    ld c, $18
    sub h
    ld [$284a], sp
    ld d, b
    ld h, h
    inc d
    ld e, $1e
    dec b
    inc b
    rst $38
    ld d, [hl]
    nop
    ld [hl], b
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    xor d
    xor a
    ld d, $19
    adc $b6
    sbc b
    jr nz, jr_014_5d66

    ld c, e
    scf

jr_014_5d66:
    ld e, a
    ld [hl], e
    inc hl
    dec l
    dec l
    dec b
    inc b
    ld a, b
    add [hl]
    nop
    ld [hl], b
    ld a, a
    ld h, h
    rrca
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    xor d
    xor a
    ld d, $19
    adc $b6
    sbc b
    jr nz, jr_014_5d86

    ld c, h
    ld d, b

jr_014_5d86:
    ld l, [hl]
    add d
    dec l
    scf
    ld b, c
    dec b
    inc b
    dec l
    or c
    nop
    ld [hl], b
    ld a, a
    ld h, h
    rrca
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    xor d
    cp a
    ld d, [hl]
    add hl, de
    adc $b6
    sbc b
    ld hl, $4d02
    ld [hl-], a
    ld d, l
    scf
    ld e, d
    ld b, c
    ld b, c
    inc d

jr_014_5dac:
    inc d
    cp [hl]
    sbc b
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld h, $16
    ld e, c
    add h
    ld h, [hl]
    jr jr_014_5dc3

jr_014_5dc3:
    ld [bc], a
    ld c, [hl]
    ld b, c
    ld h, h
    ld b, [hl]
    ld l, c
    ld d, b
    ld d, b
    inc d
    inc d
    inc a
    ret nz

    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld h, $56
    ld e, c
    add h
    ld h, [hl]
    jr jr_014_5de3

jr_014_5de3:
    ld [bc], a
    ld c, a
    ld e, d
    ld b, c
    ld b, c
    rrca
    jr z, jr_014_5e13

    dec d
    jr jr_014_5dac

    ld h, e
    nop
    ld d, d
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    ld h, [hl]
    or a
    ld e, e
    cp $66
    ld a, [de]
    ld [hl], d
    ld a, [bc]
    ld d, b
    ld e, a
    ld c, e
    ld l, [hl]
    ld e, $64
    ld d, b
    dec d
    jr jr_014_5e59

    and h
    nop
    ld d, d
    ld a, a
    ld h, h

jr_014_5e13:
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    rst $20
    rst $30
    ld e, e
    cp $67
    ld a, [de]
    ld [hl], e
    ld a, [bc]
    ld d, c
    add hl, de
    inc hl
    ld b, [hl]
    dec l
    ld e, a
    scf
    rla
    add hl, bc
    cp [hl]
    ld e, c
    nop
    adc a
    rst $38
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    xor d
    ld l, h
    ld [de], a
    dec de
    add l
    ld b, [hl]
    ld [$0440], sp
    ld d, d
    ld [hl-], a
    inc a
    ld e, a
    ld b, [hl]
    ld a, b
    ld b, [hl]
    rla
    add hl, bc
    inc a
    and c
    nop
    adc a
    rst $38
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop

jr_014_5e59:
    nop
    nop
    xor d
    ld l, h
    ld d, d
    dec de
    add l
    ld b, [hl]
    ld [$0440], sp
    ld d, e
    inc [hl]
    ld b, c
    scf
    inc a
    ld a, [hl-]
    ld a, $00
    ld [bc], a
    dec l
    ld e, [hl]
    nop
    ld l, c
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld h, $17
    ld e, c
    call nz, Call_014_7c46
    inc c
    nop
    ld d, h
    inc hl
    ld d, l
    dec l
    ld c, e
    inc hl
    inc hl
    nop
    ld [bc], a
    cp [hl]
    ld h, b
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    ld d, $19
    call nz, Call_014_7846
    ld [$5500], sp
    inc a
    ld l, [hl]
    ld b, [hl]
    ld h, h
    inc a
    inc a
    nop
    ld [bc], a
    dec l
    sbc [hl]
    nop
    ld c, l
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    ld d, [hl]
    add hl, de
    call nz, Call_014_7846
    ld [$5600], sp
    ld b, c
    dec l
    scf
    dec l
    dec l
    ld b, [hl]
    dec d
    dec d
    cp [hl]
    ld h, h
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $b2
    dec de
    add h
    ld b, $18
    sub b
    add hl, bc
    ld d, a
    ld e, d
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld b, [hl]
    ld e, a
    dec d
    add hl, de
    ld c, e
    or b
    nop
    nop
    ld a, a
    ld h, h

jr_014_5ef3:
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $f2
    dec de
    add h
    ld b, $18
    sub b
    add hl, bc
    ld e, b
    ld d, b
    ld d, b
    ld [hl-], a
    add hl, de
    jr z, jr_014_5f3d

    inc bc
    inc bc
    cp [hl]
    ld e, d
    nop
    inc h
    ld a, a
    ld h, h

jr_014_5f13:
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    cp e
    ld h, l
    ld d, $1d
    push bc
    cpl
    cp c
    nop
    ld b, $59
    ld l, c
    ld l, c
    ld c, e
    ld [hl-], a
    ld b, c
    ld h, h
    inc bc
    inc bc
    ld c, e
    ldh a, [rP1]
    inc h
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    cp e
    ld h, l

jr_014_5f3d:
    ld d, [hl]
    dec e
    push bc
    cpl
    cp c
    nop
    ld b, $5a
    ld e, $41
    ld h, h
    jr z, jr_014_5f77

    dec l
    dec d
    dec d
    cp [hl]
    ld h, c
    ld l, [hl]
    ld l, a
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    dec b
    sbc c
    inc h
    or d
    dec de
    add h
    ld b, [hl]
    jr jr_014_5ef3

    ld [$325b], sp
    ld e, a
    or h
    ld b, [hl]
    ld d, l
    ld d, l
    dec d
    add hl, de
    inc a
    call c, Call_014_6f6e
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop

jr_014_5f77:
    nop
    nop
    nop
    dec b
    sbc c
    inc h
    ld a, [c]
    dec de
    add h
    ld b, [hl]
    jr jr_014_5f13

    ld [$1e5c], sp
    inc hl
    ld e, $50
    ld h, h
    inc hl
    ld [$be03], sp
    ld e, a
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    cp e
    ld h, h
    rla
    rra
    or l
    ld b, $3a
    ld [bc], a
    inc b
    ld e, l
    dec l
    ld [hl-], a
    dec l
    ld e, a
    ld [hl], e
    scf
    ld [$5a03], sp
    ld a, [hl]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    cp e
    ld h, h
    rla
    rra
    or l
    ld b, $3a
    ld [bc], a
    inc b
    ld e, [hl]
    inc a
    ld b, c
    inc a
    ld l, [hl]
    add d
    ld c, e
    ld [$2d03], sp
    rst $38
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    cp e
    rst $20
    ld d, a
    rra
    or l
    rlca
    cp e
    ld [hl+], a
    inc b
    ld e, a
    inc hl
    dec l
    and b
    ld b, [hl]
    ld e, $2d
    dec b
    inc b
    dec l
    ld l, h
    nop
    nop
    ld a, a
    ld h, h
    add hl, de
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    xor d
    or [hl]
    ld d, $59
    adc $16
    jr jr_014_6023

    nop
    ld h, b
    inc a
    jr nc, jr_014_6035

    ld a, [hl+]
    dec hl
    ld e, d
    jr jr_014_6025

    cp [hl]
    ld h, [hl]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    adc b
    ld h, a
    rla
    dec de
    or h
    rlca
    sbc e
    ld b, d

jr_014_6023:
    nop
    ld h, c

jr_014_6025:
    ld d, l
    ld c, c
    ld b, [hl]
    ld b, e
    ld [hl], e
    ld [hl], e
    jr jr_014_6045

    ld c, e
    jp nc, RST_00

    ld a, a
    ld h, h
    inc d
    dec b

jr_014_6035:
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    adc b
    ld h, a
    ld d, a
    dec de
    or h
    rlca
    sbc e
    ld b, d
    nop
    ld h, d

jr_014_6045:
    ld e, $69
    ld e, d
    ld [hl-], a
    add hl, de
    add hl, de
    dec d
    dec d
    pop hl
    ld [hl], e
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    sbc c
    and h
    or d
    dec de
    call nz, $3806
    or l
    ld [$3763], sp
    add d
    ld [hl], e
    ld c, e
    ld [hl-], a
    ld [hl-], a
    dec d
    dec d
    inc a
    adc $00
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    sbc c
    and h
    ld a, [c]
    dec de
    call nz, $3806
    or l
    ld [$2864], sp
    ld e, $32
    ld h, h
    scf
    scf
    rla
    rla
    cp [hl]
    ld h, a
    nop
    nop
    rst $38
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    xor d
    ld l, [hl]
    ld [de], a
    dec de
    add l
    ld b, [hl]
    ld [$0440], sp
    ld h, l
    inc a
    ld [hl-], a
    ld b, [hl]
    adc h
    ld d, b
    ld d, b
    rla
    rla
    inc a
    sub [hl]
    nop
    nop
    rst $38
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    xor d
    ld l, [hl]
    ld d, d
    dec de
    add l
    ld b, [hl]
    ld [$0440], sp
    ld h, [hl]
    inc a
    jr z, jr_014_6118

    jr z, jr_014_6106

    dec l
    ld d, $18
    ld e, d
    ld h, d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    ld [hl], a
    inc l
    rla
    dec a
    sub h
    ld c, $3a
    ld h, d
    nop
    ld h, a
    ld e, a
    ld e, a
    ld d, l
    scf
    ld a, l
    ld b, c
    ld d, $18
    dec l
    call nc, RST_00
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    ld [hl], a
    ld l, $57
    dec a
    sub h
    ld c, $3a
    ld h, d
    nop
    ld l, b
    ld [hl-], a

jr_014_6106:
    ld [hl-], a
    ld e, a
    inc hl
    jr z, @+$34

    inc b
    inc b
    cp [hl]
    ld d, a
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop

jr_014_6118:
    nop
    nop
    nop
    ld de, $b6a7
    ld e, c
    adc $36
    cp l
    jr nz, jr_014_612e

    ld l, c
    inc a
    ld d, b
    ld l, [hl]
    dec l
    ld [hl-], a
    ld d, b
    inc b
    inc b
    ld c, e

jr_014_612e:
    ld a, h
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld de, $f6a7
    ld e, c
    adc $36
    cp l
    jr nz, jr_014_614e

    ld l, d
    ld [hl-], a
    ld a, b
    dec [hl]
    ld d, a
    inc hl
    ld l, [hl]
    ld bc, $2d01

jr_014_614e:
    adc e
    nop
    nop
    nop
    ld h, h
    add hl, de
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    adc b
    and a
    ld d, $19
    call nz, $3c46
    jr nz, jr_014_6164

jr_014_6164:
    ld l, e
    ld [hl-], a
    ld l, c
    ld c, a
    ld c, h
    inc hl
    ld l, [hl]
    ld bc, $2d01
    adc h
    nop
    nop
    nop
    ld h, h
    add hl, de
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    adc b
    and a
    ld d, $19
    call nz, $bd47
    jr nz, jr_014_6184

jr_014_6184:
    ld l, h
    ld e, d
    scf
    ld c, e
    ld e, $3c
    ld c, e
    nop
    nop
    dec l
    ld a, a
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld de, $f7af
    ld e, e
    rst $20
    or a
    cp e
    ld [hl], $0e
    ld l, l
    jr z, jr_014_61e8

    ld e, a
    inc hl
    inc a
    dec l
    inc bc
    inc bc
    cp [hl]
    ld [hl], d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    cp e
    ld l, h
    ld d, $19
    add l
    ld l, $38
    nop
    ld b, $6e
    ld b, c
    ld e, d
    ld a, b
    inc a
    ld d, l
    ld d, l
    inc bc
    inc bc
    inc a
    xor l
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    cp e
    ld l, h
    ld d, [hl]
    add hl, de
    add l
    ld l, $38
    nop
    ld b, $6f
    ld d, b
    ld d, l
    ld e, a

jr_014_61e8:
    add hl, de
    ld e, $1e
    inc b
    dec b
    ld a, b
    add a
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    dec d
    cp $b6
    ld e, c
    rst $08
    ld [hl], $18
    jr nz, jr_014_6212

    ld [hl], b
    ld l, c
    add d
    ld a, b
    jr z, jr_014_6237

    dec l
    inc b
    dec b
    inc a
    call z, RST_00
    ld a, a

jr_014_6212:
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    dec d
    rst $38
    or $59
    rst $08
    ld [hl], $99
    ld sp, $710e
    ld a, [$2305]
    ld [hl-], a
    inc hl
    ld l, c
    nop
    nop
    ld bc, $00ff
    ld a, [hl]
    cp $64

jr_014_6233:
    jr z, jr_014_623a

    ld h, [hl]
    nop

jr_014_6237:
    nop
    nop
    nop

jr_014_623a:
    inc b
    ld h, [hl]
    rst $28
    rst $30
    ld a, e
    push af
    or [hl]
    ld a, [de]
    ld h, b
    ld c, $72
    ld h, h
    ld h, h
    ld [hl], e
    jr z, jr_014_62ae

    ld h, h
    ld d, $16
    add hl, de
    and [hl]
    nop
    nop
    ld a, a
    ld h, h

jr_014_6253:
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld h, $5f
    dec a
    add h
    ld c, $38
    ld b, h
    nop
    ld [hl], e
    ld l, c
    ld e, a
    ld d, b
    ld e, d
    jr z, jr_014_62bb

    nop
    nop
    dec l
    rst $38
    nop
    nop
    cp $64
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld de, $f6f7
    ld e, e
    rst $20
    scf
    sbc c
    ld sp, $740e
    ld e, $28
    ld b, [hl]
    inc a
    ld b, [hl]
    add hl, de
    dec d
    dec d
    pop hl
    ld d, e
    nop
    sub a
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld l, $26
    or d
    sbc e
    add h
    ld b, [hl]
    jr jr_014_6233

    add hl, bc
    ld [hl], l
    scf
    ld b, c
    ld e, a
    ld d, l
    ld e, a
    dec l
    dec d
    dec d
    ld c, e

jr_014_62ae:
    sbc e
    nop
    sub a
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop

jr_014_62bb:
    ld l, $26
    ld a, [c]
    sbc e
    add h
    ld b, [hl]
    jr jr_014_6253

    add hl, bc
    db $76
    dec l
    ld b, e
    inc a
    ccf
    inc hl
    ld [hl-], a
    dec d
    dec d
    pop hl
    ld l, a
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    call z, $b224
    dec de
    add h
    ld b, [hl]
    jr jr_014_62f3

    add hl, bc
    ld [hl], a
    ld d, b
    ld e, h
    ld b, c
    ld b, h
    ld b, c
    ld d, b
    dec d
    dec d
    inc a
    xor d
    nop
    nop
    ld a, a
    ld h, h

jr_014_62f3:
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    call z, $f224
    dec de
    add h
    ld b, [hl]
    jr jr_014_6313

    add hl, bc
    ld a, b
    ld e, $2d
    scf
    ld d, l
    ld b, [hl]
    scf
    dec d
    dec d
    pop hl
    ld l, d
    add e
    add h
    rst $38
    ld h, h

jr_014_6313:
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b
    sbc c
    ld h, h
    or e
    dec de
    sub l
    ld b, [hl]
    jr jr_014_62f3

    dec c
    ld a, c
    inc a
    ld c, e
    ld d, l
    ld [hl], e
    ld h, h
    ld d, l
    dec d
    jr jr_014_636a

    rst $38
    add e
    add h
    rst $38
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b
    sbc c
    ld h, h
    di
    dec de
    sub l
    ld b, [hl]
    ld a, [de]
    jp nc, Jump_014_7a0d

    jr z, jr_014_6374

    ld b, c
    ld e, d
    ld h, h
    ld a, b
    jr jr_014_6365

    dec l
    adc b
    nop
    sub [hl]
    ld a, a
    ld h, h
    add hl, de
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    adc b
    ld h, a
    ld d, a
    add hl, sp
    push af
    rlca
    cp e
    ld b, d
    inc b
    ld a, e

jr_014_6365:
    ld b, [hl]
    ld l, [hl]
    ld d, b
    ld l, c
    scf

jr_014_636a:
    ld d, b
    rlca
    ld [bc], a
    dec l
    cp e
    nop
    nop
    ld a, a
    ld h, h
    add hl, de

jr_014_6374:
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    inc sp
    and [hl]
    ld d, [hl]
    add hl, de
    add h
    ld b, [hl]
    ld a, h
    dec b
    nop
    ld a, h
    ld b, c
    ld [hl-], a
    inc hl
    ld e, a
    ld [hl], e
    ld e, a
    add hl, de
    jr jr_014_63bb

    adc c
    ld d, b
    ld d, b
    cp $64
    add hl, de
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    adc b
    daa
    ei
    dec de
    db $f4
    rlca
    ld a, [hl-]
    ld [bc], a
    ld [$417d], sp
    ld d, e
    add hl, sp
    ld l, c
    ld e, a
    ld d, l
    rla
    rla
    dec l
    sbc h
    nop
    nop
    ccf
    ld h, h
    add hl, de
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop

jr_014_63bb:
    adc b
    rst $20
    ld d, d
    ld e, e
    push de
    ld b, a
    cp l
    ld h, b
    inc b
    ld a, [hl]
    ld b, c
    ld e, a
    add hl, sp
    ld e, l
    ld h, h
    ld d, l
    inc d
    inc d
    dec l
    and a
    ld c, a
    ld c, a
    ccf
    ld h, h
    add hl, de
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    adc b
    and a
    ld d, [hl]
    ld e, c
    call nc, $bd26
    jr nz, jr_014_63e6

    ld a, a
    ld b, c

jr_014_63e6:
    ld a, l
    ld h, h
    ld d, l
    scf
    ld b, [hl]
    rlca
    rlca
    dec l
    ret z

    nop
    nop
    ld a, a
    ld h, h
    add hl, de
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    inc sp
    and [hl]
    ld d, [hl]
    add hl, de
    add h
    ld b, $38
    dec h
    nop
    add b
    ld c, e
    ld h, h
    ld e, a
    ld l, [hl]
    ld e, $50
    nop
    nop
    dec l
    rst $38
    nop
    nop
    nop
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    and $f6
    ld e, c
    add a
    ld h, $18
    jr nc, jr_014_6432

    add c
    inc d
    ld a, [bc]
    scf
    ld d, b
    rrca
    inc d
    dec d
    dec d
    rst $38
    rst $38
    nop
    nop
    ld a, a

jr_014_6432:
    ld h, h
    dec b
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b
    adc $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    ld e, a
    ld a, l
    ld c, a
    ld d, c
    inc a
    ld h, h
    dec d
    ld [bc], a
    dec l
    rst $38
    nop
    nop
    ld a, a
    ld h, h
    dec b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    adc $f6
    ld a, [c]
    sbc e
    add l
    ld [hl], $18
    or b
    rrca
    add e
    add d
    ld d, l
    ld d, b
    inc a
    ld e, a
    ld e, a
    dec d
    add hl, de
    dec l
    rst $38
    nop
    nop
    ld a, a
    ld h, h
    jr z, jr_014_647a

    ld [hl], a
    nop
    nop
    nop
    nop

jr_014_647a:
    dec b
    ld [de], a
    and $f2
    db $db
    sub l
    ld b, $1a
    or d
    inc c
    add h
    ld h, h
    jr nc, jr_014_64ec

    adc h
    jr nc, jr_014_64ef

    nop
    nop
    ld a, [bc]
    dec a
    inc hl
    inc hl
    rst $38
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    db $dd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add l
    scf
    scf
    ld [hl-], a
    scf
    dec l
    ld b, c
    nop
    nop
    dec l
    ld e, h
    nop
    nop
    rra
    ld h, h
    inc hl
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld h, $16
    ld e, e
    db $e4
    ld b, [hl]
    inc e
    nop
    nop
    add [hl]
    add d
    ld b, c
    inc a
    ld b, c
    ld l, [hl]
    ld e, a
    dec d
    dec d
    dec l
    ldh a, [rP1]
    nop
    rra
    ld h, h
    inc hl
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld [hl], $f6
    ld e, e
    db $e4
    ld b, [hl]
    inc e
    sub b
    add hl, bc
    add a
    ld b, c
    ld b, c
    inc a
    add d
    ld l, [hl]
    ld e, a
    rla

jr_014_64ec:
    rla
    dec l
    rst $38

jr_014_64ef:
    nop
    nop
    rra
    ld h, h
    inc hl
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    db $76
    ld d, [hl]
    ld e, e
    push hl
    ld b, [hl]
    inc e
    ld b, b
    inc b
    adc b
    ld b, c
    add d
    inc a
    ld b, c
    ld e, a
    ld l, [hl]
    inc d
    inc d
    dec l
    add $00
    nop
    rra
    ld h, h
    inc hl
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    db $76
    ld d, [hl]
    ld e, e
    db $e4
    ld h, [hl]
    inc e
    nop
    ld [bc], a
    adc c
    ld b, c
    inc a
    ld b, [hl]
    jr z, jr_014_657f

    ld c, e
    nop
    nop
    dec l
    add d
    nop
    nop
    rst $38
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    xor d
    ld h, h
    rst $30
    ld e, e
    sub l
    ld b, [hl]
    ld a, [hl+]
    ld b, d
    inc c
    adc d
    inc hl
    jr z, jr_014_65ac

    inc hl
    ld e, d
    scf
    dec b
    dec d
    dec l
    ld a, b
    nop
    nop
    rra
    ld h, h
    ld e, $05
    ld d, l
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    xor [hl]
    or d
    dec de
    add h
    ld d, $38
    sub b
    ld [$468b], sp
    inc a
    ld a, l
    scf
    ld [hl], e
    ld b, [hl]
    dec b
    dec d
    dec l
    rst $38
    nop
    nop
    rra
    ld h, h
    ld e, $05
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    xor [hl]
    ld a, [c]
    dec de

jr_014_657f:
    add h
    ld d, $38
    sub b
    ld [$1e8c], sp
    ld d, b
    ld e, d
    scf
    scf
    dec l
    dec b
    dec d
    dec l
    ld [hl], a
    nop
    nop
    rra
    ld h, h
    ld e, $05
    ld d, l
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    xor h
    or d
    rra
    add h
    ld d, $38
    nop
    ld [$3c8d], sp
    ld [hl], e
    ld l, c
    ld d, b
    ld b, c
    ld b, [hl]
    dec b

jr_014_65ac:
    dec d
    dec l
    ret


    nop
    nop
    rra
    ld h, h
    ld e, $05
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    xor [hl]
    ld a, [c]
    rra
    add h
    ld d, $38
    sub l
    ld [$508e], sp
    ld l, c
    ld b, c
    add d
    inc a
    ld c, e
    dec b
    ld [bc], a
    dec l
    rst $38
    nop
    nop
    rra
    ld h, h
    inc hl
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    ld b, h
    or [hl]
    ld d, d
    db $db
    add [hl]
    db $76
    ld e, h
    ld [$8f02], sp
    and b
    ld l, [hl]
    ld b, c
    ld e, $41
    ld l, [hl]
    nop
    nop
    add hl, de
    rst $38
    sub d
    sub d
    rra
    ld h, h
    jr z, jr_014_65fa

    ld [hl], a
    nop
    nop
    nop
    nop

jr_014_65fa:
    dec b
    ld de, $f7ef
    dec sp
    rst $30
    or a
    sbc c
    jr nc, jr_014_6612

    sub b
    ld e, d
    ld d, l
    ld h, h
    ld d, l
    ld e, a
    ld a, l
    add hl, de
    ld [bc], a
    inc bc
    rst $38
    nop
    nop
    rst $38

jr_014_6612:
    ld h, h
    ld d, b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    rst $38
    or h
    or $1b
    call nz, $4c56
    ld [$9108], sp
    ld e, d
    ld e, d
    ld d, l
    ld h, h
    ld a, l
    ld e, d
    rla
    ld [bc], a
    inc bc
    rst $38
    nop
    nop
    rst $38
    ld h, h
    ld d, b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    rst $38
    db $f4
    ld d, [hl]
    dec de
    push bc
    ld d, [hl]
    ld c, h
    ld c, b
    inc b
    sub d
    ld e, d
    ld h, h
    ld e, d
    ld e, d
    ld a, l
    ld d, l
    inc d
    ld [bc], a
    inc bc
    rst $38
    nop
    nop
    rst $38
    ld h, h
    ld d, b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    rst $38
    or h
    ld d, [hl]
    dec de
    call nz, $4c76
    ld [$9302], sp
    add hl, hl
    ld b, b
    dec l
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld a, [de]
    ld a, [de]
    dec l
    ld b, e
    nop
    sub a
    ld a, a
    ld h, h
    jr z, jr_014_667a

    ld d, l
    nop
    nop
    nop
    nop

jr_014_667a:
    dec b
    ld l, $66
    or d
    db $db
    add l
    ld h, [hl]
    inc e
    db $10
    rrca
    sub h
    dec a
    ld d, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld a, [de]
    ld a, [de]
    dec l
    sub b
    nop
    sub a
    ld a, a
    ld h, h
    jr z, jr_014_669a

    ld h, [hl]
    nop
    nop
    nop
    nop

jr_014_669a:
    dec b
    ld l, $66
    or d
    db $db
    add l
    ld h, [hl]
    inc e
    db $10
    rrca
    sub l
    ld e, e
    add [hl]
    ld e, a
    ld d, b
    ld h, h
    ld h, h
    ld a, [de]
    ld [bc], a
    dec l
    rst $38
    nop
    sub a
    ld a, a
    ld h, h
    jr z, jr_014_66ba

    ld [hl], a
    nop
    nop
    nop
    nop

jr_014_66ba:
    dec b
    ld l, $e7
    ld a, [c]
    db $db
    push bc
    ld [hl], a
    db $dd
    cp c
    rrca
    sub [hl]
    ld l, d
    ld l, [hl]
    ld e, d
    add d
    sbc d
    ld e, d
    jr jr_014_66e5

    inc bc
    rst $38
    nop
    sbc b
    rst $38
    ld h, h
    ld a, b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    rst $38
    rst $20
    rst $30
    ld a, e
    push af
    ld h, a
    adc a
    ld h, d
    ld c, $97

jr_014_66e5:
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr jr_014_6705

    dec l
    ld b, b
    nop
    ld l, l
    rst $38
    ld h, h
    ld a, b
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    sbc b

jr_014_6705:
    dec l
    ld sp, $2d41
    ld sp, $1641
    ld d, $2d
    ld b, b
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    rla
    ld h, $1e
    ld a, l
    call nz, $1c06
    ld b, h
    nop
    sbc c
    inc a
    ld a, $50
    inc a
    ccf
    ld d, b
    ld d, $16
    dec l
    adc l
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    rla
    and [hl]
    ld e, $7d
    call nz, $1c06
    ld h, l
    nop
    sbc d
    ld d, b
    ld d, d
    ld h, h
    ld d, b
    ld d, e
    ld h, h
    ld d, $16
    dec l
    push hl
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    rla
    and [hl]
    ld e, [hl]
    ld a, l
    add $06
    inc e
    ld h, l
    nop
    sbc e
    daa
    inc [hl]
    dec hl
    ld b, c
    inc a
    ld [hl-], a
    inc d
    inc d
    dec l
    ld b, c
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld d, l
    ld l, $16
    ld e, c
    call z, $1ce6
    inc b
    ld [bc], a
    sbc h
    ld a, [hl-]
    ld b, b
    ld a, [hl-]
    ld d, b
    ld d, b
    ld b, c
    inc d
    inc d
    dec l
    adc [hl]
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld d, l
    cp [hl]
    ld d, $59
    call z, $1ce6
    dec h
    ld [bc], a
    sbc l
    ld c, [hl]
    ld d, h
    ld c, [hl]
    ld h, h
    ld l, l
    ld d, l
    inc d
    inc d
    dec l
    push hl
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld d, l
    cp a
    ld d, [hl]
    ld e, c
    adc $e6
    sbc l
    dec h
    ld [bc], a
    sbc [hl]
    ld [hl-], a
    ld b, c
    ld b, b
    dec hl
    inc l
    jr nc, @+$17

    dec d
    dec l
    ld b, d
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld [de], a
    daa
    or d
    ld e, e
    call z, $1c07
    sub h
    ld [$419f], sp
    ld d, b
    ld d, b
    ld a, [hl-]
    dec sp
    ccf
    dec d
    dec d
    dec l
    adc a
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld [de], a
    or a
    or d
    ld e, e
    call z, $1c07
    or l
    ld [$55a0], sp
    ld l, c
    ld h, h
    ld c, [hl]
    ld c, a
    ld d, e
    dec d
    dec d
    dec l
    push hl
    nop
    nop
    rra
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld [de], a
    or a
    ld a, [c]
    ld e, e
    adc $07
    inc e
    or l
    ld [$23a1], sp
    ld l, $22
    inc d
    inc hl
    dec l
    nop
    nop
    rst $38
    add hl, sp
    nop
    xor l
    ld a, a
    ld h, h
    rrca
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    cpl
    ld d, $59
    db $ec
    rst $00
    cp l
    dec d
    nop
    and d
    ld d, l
    ld c, h
    ld b, b
    ld e, d
    dec l
    scf
    nop
    nop
    ld e, d
    ld [hl], h
    xor l
    xor [hl]
    ld a, a
    ld h, h
    rrca
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    cpl
    ld d, [hl]
    ld e, c
    db $ec
    rst $00
    cp l
    dec [hl]
    nop
    and e
    inc a
    ld e, $1e
    ld [hl-], a
    inc h
    jr c, jr_014_686c

jr_014_686c:
    ld [bc], a
    rst $38
    ld a, [hl-]
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    ld d, $19
    call nz, Call_014_7e46
    ld c, d
    nop
    and h
    ld h, h
    ld [hl-], a
    ld [hl-], a
    ld b, [hl]
    ld c, h
    ld h, b
    nop
    ld [bc], a
    ld e, d
    and d
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    ld d, [hl]
    add hl, de
    call nz, Call_014_7e46
    ld c, d
    nop
    and l
    jr z, jr_014_68bb

    ld e, $37
    jr z, jr_014_68fb

    rlca
    ld [bc], a
    rst $38
    ld [hl], $00
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc b

jr_014_68bb:
    inc sp
    cpl
    ld e, $3d
    adc h
    ld b, a
    add hl, sp
    ld b, b
    nop
    and [hl]
    scf
    inc hl
    ld [hl-], a
    ld d, l
    scf
    ld l, [hl]
    rlca
    ld [bc], a
    ld e, d
    add [hl]
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc b
    inc sp
    cpl
    ld e, [hl]
    dec a
    adc h
    ld b, a
    add hl, sp
    ld b, b
    nop
    and a
    jr z, jr_014_6923

    jr z, jr_014_6907

    jr z, jr_014_6913

    rlca
    inc bc
    rst $38
    ld [hl], $00
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc b

jr_014_68fb:
    inc sp
    inc h
    ld d, $3d
    sbc h
    ld c, $38
    ld b, b
    nop
    xor b
    ld b, [hl]
    ld e, d

jr_014_6907:
    ld b, [hl]
    jr z, jr_014_6946

    inc a
    rlca
    inc bc
    ld e, d
    add [hl]
    nop
    nop
    ld a, a
    ld h, h

jr_014_6913:
    rrca
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc b
    inc sp
    inc h
    ld d, [hl]
    dec a
    sbc h
    ld c, $38
    ld b, b

jr_014_6923:
    nop
    xor c
    ld d, l
    ld e, d
    ld d, b
    add d
    ld b, [hl]
    ld d, b
    inc bc
    ld [bc], a
    ld e, d
    rst $38
    nop
    nop
    ld a, a
    ld h, h
    rrca
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    ld d, [hl]
    dec e
    add h
    ld b, [hl]
    ld a, h
    ld [$aa00], sp
    ld c, e

jr_014_6946:
    ld h, $26
    ld b, e
    jr c, jr_014_6983

    dec d
    rla
    cp [hl]
    ld e, d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b
    call z, $1264
    dec de
    add l
    ld b, $18
    ret nc

    dec c
    xor e
    ld a, l
    ld a, [hl-]
    ld a, [hl-]
    ld b, e
    ld c, h
    ld c, h
    dec d
    rla
    ld c, e
    sbc h
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b
    call z, Call_014_5264
    dec de
    add l
    ld b, $18
    ret nc

jr_014_6983:
    dec c
    xor h
    inc d
    jr z, jr_014_6997

    inc a
    inc hl
    inc hl
    rla
    rla
    cp [hl]
    ld a, [hl+]
    nop
    xor l
    ld a, a
    ld h, h
    ld a, [bc]
    dec b
    ld d, l
    nop

jr_014_6997:
    nop
    nop
    nop
    nop
    rst $38
    ld l, [hl]
    ld [de], a
    ld e, e
    push bc
    add $1c
    ld b, b
    inc b
    xor l
    ld [hl-], a
    add hl, de
    inc e
    rrca
    dec l
    scf
    nop
    nop
    sub [hl]
    dec h
    sub [hl]
    ld [$64e8], sp
    ld a, [bc]
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc b
    rst $38
    ld l, [hl]
    sub a
    ld a, e
    db $f4
    and [hl]
    ld e, $42
    ld [bc], a
    xor [hl]
    ld e, d
    ld e, $0f
    rrca
    jr z, jr_014_69df

    nop
    nop
    xor d
    daa
    nop
    nop
    cp a
    ld h, h
    ld a, [bc]
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc b
    rst $38
    ld l, [hl]
    sub a
    dec sp

jr_014_69df:
    db $f4
    and [hl]
    ld e, $42
    ld [bc], a
    xor a
    inc hl
    inc d
    ld b, c
    inc d
    jr z, @+$43

    nop
    nop
    cp [hl]
    ld c, d
    nop
    nop
    rra
    ld h, h
    ld a, [bc]
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc b
    rst $38
    xor $17
    dec sp
    db $f4
    and $1e
    ld b, b
    ld [bc], a
    or b
    scf
    jr z, jr_014_6a5d

    jr z, jr_014_6a5a

    ld l, c
    nop
    ld [bc], a
    ld c, e
    ld [hl], d
    nop
    nop
    rra
    ld h, h
    ld a, [bc]
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc b
    ld b, [hl]
    xor $57
    dec sp
    db $f4
    and $5e
    ld c, b
    ld [bc], a
    or c
    jr z, jr_014_6a59

    dec l
    ld b, [hl]
    ld b, [hl]
    dec l
    jr jr_014_6a2f

    cp [hl]
    ld c, c

jr_014_6a2f:
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc h
    rla
    dec a
    sub h
    ld b, [hl]
    ld a, $42
    nop
    or d
    ld b, c
    ld c, e
    ld b, [hl]
    ld e, a
    ld e, a
    ld b, [hl]
    jr jr_014_6a4f

    ld c, e
    xor e

jr_014_6a4f:
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop

jr_014_6a59:
    nop

jr_014_6a5a:
    nop
    ld b, h
    inc h

jr_014_6a5d:
    ld d, a
    dec a
    sub h
    ld b, [hl]
    ld a, $4a
    nop
    or e
    scf
    jr z, jr_014_6a90

    inc hl
    ld b, c
    dec l
    rla
    rla
    db $eb
    dec sp
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    dec d
    ld h, [hl]
    ld [de], a
    ld e, e
    add l
    add $18
    ld b, b
    inc b
    or h
    ld b, [hl]
    scf
    scf
    dec l
    ld d, b
    inc a
    rla
    rla
    ld a, b
    ld [hl], l
    nop

jr_014_6a90:
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    dec d
    rst $20
    ld [de], a
    ld e, e
    add l
    add $99
    ld h, b
    inc b
    or l
    ld e, d
    ld c, e
    ld c, e
    scf
    ld [hl], e
    ld e, d
    rla
    rla
    dec l
    and $00
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    dec d
    rst $20
    ld d, d
    ld e, e
    add l
    add $99
    ld h, b
    inc b
    or [hl]
    ld c, e
    ld d, b
    ld d, l
    ld [hl-], a
    ld e, d
    ld h, h
    ld d, $16
    dec l
    cp b
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], a
    inc h
    ld e, [hl]
    dec a
    add h
    ld b, $18
    ld b, h
    nop
    or a
    ld b, [hl]
    inc d
    ld [hl-], a
    jr z, jr_014_6afe

    ld [hl-], a
    dec d
    dec d
    cp [hl]
    ld a, [hl-]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc b
    ld h, $2f
    or d

jr_014_6afe:
    ld e, e
    call nz, $18c7
    sub b
    add hl, bc
    cp b
    ld h, h
    ld [hl-], a
    ld d, b
    ld [hl-], a
    ld [hl-], a
    ld d, b
    dec d
    dec d
    ld c, e
    sbc c
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc b
    ld h, $af
    ld a, [c]
    ld e, e
    call nz, $18c7
    or b
    add hl, bc
    cp c
    ld b, [hl]
    ld h, h
    ld [hl], e
    ld e, $1e
    ld b, c
    dec b
    dec b
    ld b, c
    add a
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    xor d
    xor a
    rla
    add hl, de
    adc $97
    cp c
    jr nz, jr_014_6b44

jr_014_6b44:
    cp d
    ld e, d
    ld c, e
    ld c, e
    ld b, [hl]
    ld e, d
    ld h, h
    dec d
    dec d
    dec l
    cp c
    nop
    ld d, d
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld [hl+], a
    and a
    ld a, [c]
    dec de
    sub $87
    inc a
    or b
    add hl, bc
    cp e
    inc hl
    inc hl
    jr z, jr_014_6b9b

    inc hl
    scf
    ld d, $02
    rst $38
    ld c, d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld h, a
    ld h, $1e
    dec a
    add h
    add [hl]
    jr jr_014_6bc3

    nop
    cp h
    scf
    dec l
    ld [hl-], a
    ld d, b
    dec l
    ld b, c
    ld d, $02
    ld a, b
    adc b
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc

jr_014_6b9b:
    ld h, a
    ld h, $1e
    dec a
    add h
    add [hl]
    jr jr_014_6be3

    nop
    cp l
    ld c, e
    scf
    ld b, [hl]
    ld l, [hl]
    scf
    ld d, l
    ld d, $02
    dec l
    or b
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc bc
    ld h, a
    ld h, $5e
    dec a
    add h
    add [hl]
    jr jr_014_6c03

jr_014_6bc3:
    nop
    cp [hl]
    scf
    ld b, [hl]
    scf
    ld d, l
    jr z, jr_014_6c02

    nop
    nop
    dec l
    ld e, [hl]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc b
    ld d, l
    rst $20
    ld d, $59
    push hl
    rst $00
    cp a
    daa

jr_014_6be3:
    inc b
    cp a
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld d, $16
    db $eb
    inc [hl]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], a
    inc h
    ld e, $3d
    add h
    ld c, $18

jr_014_6c02:
    ld b, h

jr_014_6c03:
    nop
    ret nz

    ld c, e
    ld c, e
    scf
    ld e, $69
    ld d, l
    ld d, $16
    ld a, b
    sub d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld [hl], a
    inc h
    ld e, [hl]
    dec a
    add h
    ld c, $18
    ld b, h
    nop
    pop bc
    ld b, c
    ld b, c
    dec l
    ld e, a
    ld c, e
    dec l
    rlca
    ld [bc], a
    ld c, e
    sub e
    nop
    nop
    ld a, a
    ld h, h

jr_014_6c33:
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    inc sp
    ld h, $16
    dec a
    add h
    ld b, [hl]
    inc a
    ld b, b
    nop
    jp nz, $2d37

    dec l
    rrca
    add hl, de
    add hl, de
    dec d
    inc b
    rst $38
    inc [hl]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    dec h
    xor a
    ld [de], a
    ld e, e
    adc $9f
    jr jr_014_6c33

    ld [$5fc3], sp
    ld d, l
    ld d, l
    inc hl
    ld b, c
    ld b, c
    dec d
    inc b
    ld e, d
    rst $38
    nop
    nop
    ld a, a
    ld h, h

jr_014_6c73:
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    dec h
    xor a
    ld d, d
    ld e, e
    adc $9f
    jr jr_014_6c73

    ld [$41c4], sp
    ld b, c
    inc a
    ld l, [hl]
    add d
    ld e, a
    jr jr_014_6ca5

    dec l
    rst $38
    nop
    nop
    rra
    ld h, h
    inc hl
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld h, [hl]
    ld d, a
    ld e, e
    db $f4
    ld b, [hl]
    ld e, $46
    nop
    push bc

jr_014_6ca5:
    ld e, a
    ld b, c
    ld l, [hl]
    ld b, c
    inc a
    add d
    dec de
    dec de
    dec l
    rst $38
    nop
    nop
    rra
    ld h, h
    inc hl
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld h, [hl]
    ld d, a
    ld e, e
    db $f4
    ld b, [hl]
    ld e, $46
    nop
    add $3c
    ld d, l
    ld a, [hl+]
    ld e, e
    ld d, l
    ld a, [hl+]
    dec de
    ld [bc], a
    ld e, $6b
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld b, h
    inc h
    sub a
    add hl, de
    db $e4
    ld b, [hl]
    ld a, [hl]
    ld a, [bc]
    nop
    rst $00
    ld e, a
    ld c, e
    ld d, b
    ld e, $64
    ld l, [hl]
    dec d
    jr @+$48

    ldh a, [rP1]
    ld d, d
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    rst $20
    rst $30
    ld e, e
    cp $67
    ld a, [de]
    di
    ld a, [bc]
    ret z

    ld c, e
    inc a
    inc a
    ld l, c
    ld l, c
    ld l, c
    ld [$1908], sp
    ldh a, [rP1]
    ld [hl], c
    ld a, a
    ld h, h
    add hl, de
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc b
    cp e
    ld h, [hl]
    rla
    dec de
    or l
    add $3a
    ld b, d
    inc b
    ret


    jr nc, jr_014_6d6f

    jr nc, jr_014_6d59

    ld c, b
    jr nc, jr_014_6d44

    jr @-$1d

    dec a
    nop
    nop
    rst $38
    ld h, h
    jr z, jr_014_6d3a

    ld d, l
    nop
    nop
    nop
    nop

jr_014_6d3a:
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_6d44:
    jp z, $21be

    ld a, [hl-]
    ld hl, $3a21
    jr @+$1a

    dec l
    or c
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop

jr_014_6d59:
    nop
    nop
    cp e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    bit 0, [hl]
    ld d, b
    ld b, c
    ld d, l
    ld e, d
    ld b, c
    nop
    jr jr_014_6daa

    sub l

jr_014_6d6f:
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld d, l
    and $17
    ld e, c
    rst $30
    ld b, [hl]
    ld a, [hl-]
    ld [hl+], a
    inc b
    call z, Call_014_4132
    ld e, d
    rrca
    inc hl
    inc hl
    rlca
    rlca
    cp [hl]
    inc a
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    inc sp
    xor [hl]
    ld e, $3d
    add h
    add [hl]
    jr jr_014_6dc3

    nop
    call Call_014_5a4b
    adc h
    jr z, jr_014_6de6

jr_014_6daa:
    inc a
    rlca
    add hl, bc
    ld c, e
    halt
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    inc sp
    xor [hl]
    ld e, [hl]
    dec a
    add h
    sub [hl]
    jr jr_014_6de3

jr_014_6dc3:
    nop
    adc $64
    ld c, e
    ld c, e
    dec l
    ld c, e
    ld c, e
    nop
    nop
    cp [hl]
    ld c, e
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld d, l
    xor $17
    ld a, e
    call $3a86
    ld [hl+], a

jr_014_6de3:
    ld b, $cf
    ld c, e

jr_014_6de6:
    ld e, a
    ld a, l
    ld e, a
    inc hl
    ld d, l
    inc b
    ld [bc], a
    add hl, de
    ld l, h
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    inc sp
    and [hl]
    ld d, $59
    add h
    ld e, [hl]
    inc a
    dec h
    nop
    ret nc

    ld c, e
    ld d, l
    ret z

    ld e, $37
    ld b, c
    add hl, bc
    inc b
    add hl, de
    rst $38
    nop
    adc a
    ld a, a
    ld h, h
    add hl, de
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    xor d
    cp [hl]
    ld d, [hl]
    reti


    adc $96
    jr jr_014_6e47

    nop
    pop de
    inc a
    ld d, b
    ld [hl-], a
    ld e, $28
    jr z, jr_014_6e2c

jr_014_6e2c:
    nop
    cp [hl]
    ccf
    nop
    nop
    ei
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc b
    ld d, [hl]
    rst $30
    ld d, $1b
    push hl
    adc a
    cp l
    jr nz, jr_014_6e48

    jp nc, Jump_014_785a

jr_014_6e47:
    ld c, e

jr_014_6e48:
    dec l
    inc a
    inc a
    nop
    nop
    ld c, e
    or d
    nop
    nop
    ei
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc b
    ld d, [hl]
    rst $30
    ld d, [hl]
    dec de
    push hl
    adc a
    cp l
    jr nz, jr_014_6e68

    db $d3
    ld b, c
    ld e, a
    ld c, e

jr_014_6e68:
    ld d, l
    scf
    scf
    dec d
    inc bc
    dec l
    ld h, h
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    call z, $b22e
    dec de
    add h
    adc $18
    sub b
    add hl, bc
    call nc, $8246
    ld h, h
    ld b, c
    scf
    ld d, b
    rlca
    add hl, bc
    add hl, de
    call c, RST_00
    ld a, a
    ld h, h
    add hl, de
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    inc sp
    and [hl]
    ld d, [hl]
    add hl, de
    add h
    ld d, [hl]
    ld a, h
    dec h
    nop
    push de
    inc a
    ld a, [bc]
    and $05
    dec b
    and $07
    dec b
    cp [hl]
    ld d, b
    xor l
    xor l
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    inc sp
    xor [hl]
    ld d, $19
    adc $9e
    jr jr_014_6f23

    nop
    sub $50
    ld a, l
    ld c, e
    ld d, l
    jr z, jr_014_6f2a

    rlca
    ld bc, $c82d
    nop
    nop
    ld a, a
    ld h, h
    add hl, de
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b
    inc sp
    and [hl]
    ld d, $19
    add [hl]
    ld b, $3c
    dec h
    nop
    rst $10
    scf
    ld e, a
    scf
    ld [hl], e
    inc hl
    ld c, e
    dec de
    add hl, de
    inc a
    add h
    nop
    ld c, c
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc bc
    ld d, l
    and a
    or e
    ld e, e
    db $ec
    rst $00
    ld a, $37
    ld [$3cd8], sp
    ld d, b
    ld [hl-], a
    jr z, jr_014_6f3c

    ld [hl-], a
    nop
    nop
    ld a, b
    ld a, h
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, l
    rst $38
    ld d, $19
    adc $c7
    cp c
    dec h

jr_014_6f23:
    nop
    reti


    ld e, d
    add d
    ld c, e
    scf
    ld c, e

jr_014_6f2a:
    ld c, e
    nop
    nop
    inc a
    ldh a, [rP1]
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld d, l

jr_014_6f3c:
    rst $38
    ld d, [hl]
    add hl, de
    adc $c7
    cp c
    dec h
    nop
    jp c, $2828

    jr z, jr_014_6f5d

    ld b, [hl]
    jr z, @+$16

    inc d
    cp [hl]
    ld c, [hl]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    cp e
    xor h

jr_014_6f5d:
    ld d, $19
    call nz, $18a6
    nop
    ld [bc], a
    db $db
    ld [hl-], a
    ld [hl-], a
    ld a, b
    ld e, $50
    ld d, b
    inc d
    dec b
    ld c, e

Call_014_6f6e:
    sbc d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    cp e
    xor h
    ld d, [hl]
    add hl, de
    add $a6
    jr @+$22

    ld [bc], a
    call c, $3232
    jr z, jr_014_6fbb

    ld e, $1e
    add hl, de
    inc b
    pop hl
    ld c, [hl]
    nop
    nop
    ld a, a
    ld h, h

jr_014_6f93:
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    or [hl]
    or d
    dec de
    add $86
    inc e
    jr nz, jr_014_6fac

    db $dd
    ld l, [hl]
    add d
    ld d, b
    ld d, b
    ld d, b
    inc a
    add hl, de

jr_014_6fac:
    inc b
    ld c, e
    ldh a, [rP1]
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b

jr_014_6fbb:
    ld d, l
    or [hl]
    ld a, [c]
    dec de
    add $86
    inc e
    jr nz, jr_014_6fcc

    sbc $37
    scf
    ld d, l
    inc hl
    ld b, c
    ld d, l
    dec d

jr_014_6fcc:
    dec b
    inc a
    ld [hl], c
    nop
    nop
    cp a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc b
    add hl, hl
    xor [hl]
    ld d, $1b
    sub $96
    jr jr_014_6f93

    ld [$23df], sp
    ld b, c
    inc hl
    ld b, c
    ld b, c
    inc hl
    dec d
    dec d
    cp [hl]
    ld c, [hl]
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    inc l
    inc h
    ld d, d
    dec de
    call nz, $38c6
    sub b
    ld a, [bc]
    ldh [rWX], a
    ld l, c
    ld c, e
    dec l
    ld l, c
    ld c, e
    dec d
    dec d
    ld c, e
    and h
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    inc l
    inc h
    ld d, d
    dec de
    call nz, $38c6
    sub b
    ld a, [bc]
    pop hl
    dec l
    scf
    dec l
    ld c, e
    ld b, c
    dec l
    add hl, de
    ld [bc], a
    dec l
    or a
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    inc b
    dec h
    ld h, $b2
    dec de
    call nz, $3c46
    ld [$e208], sp
    ld b, c
    jr z, jr_014_708e

    ld b, [hl]
    ld d, b
    adc h
    dec d
    ld [bc], a
    add hl, de
    xor b
    nop
    nop
    ld a, a
    ld h, h
    add hl, de
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    ld [hl+], a
    ld h, $b2
    dec de
    call nz, $1846
    sub b
    add hl, bc
    db $e3
    ld b, c
    ld d, b
    adc h
    ld b, [hl]
    jr z, jr_014_70b1

    add hl, bc
    ld [bc], a
    add hl, de
    ldh a, [rP1]
    nop
    ld a, a
    ld h, h

jr_014_7073:
    add hl, de
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    ld b, h
    inc h
    ld d, $19
    call nz, Call_014_7c56
    inc c
    nop
    db $e4
    dec l
    inc a
    ld e, $41
    ld d, b
    ld [hl-], a
    dec de
    inc d
    ld a, b

jr_014_708e:
    ld [hl], d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    or [hl]
    ld d, $79
    db $e4
    ld l, [hl]
    ld a, $02
    ld [bc], a
    push hl
    ld c, e
    ld e, d
    ld [hl-], a
    ld e, a
    ld l, [hl]
    ld d, b
    dec de
    inc d
    dec l
    ldh a, [rP1]
    nop

jr_014_70b1:
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    or [hl]
    ld d, [hl]
    ld a, c
    db $e4
    ld l, [hl]
    ld a, $22
    ld [bc], a
    and $4b
    ld e, a
    ld e, a
    ld d, l
    ld e, a
    ld e, a
    dec d
    ld a, [de]
    dec l
    rst $38
    nop
    sub a
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld l, $26
    ld a, [c]
    sbc e
    add h
    ld b, [hl]
    jr jr_014_7073

    add hl, bc
    rst $20
    ld e, d
    inc a
    inc a
    jr z, jr_014_7112

    jr z, jr_014_70f0

    inc b
    ld a, b
    ld a, h
    nop

jr_014_70f0:
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    ld d, l
    cp [hl]
    ld d, $19
    add $96
    jr jr_014_7123

    nop
    add sp, $5a
    ld a, b
    ld a, b
    ld [hl-], a
    inc a
    inc a
    inc b
    inc b
    inc a
    cp l
    nop
    nop
    ld a, a

jr_014_7112:
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    ld d, l
    cp [hl]
    ld d, [hl]
    add hl, de
    add $96
    jr jr_014_7143

jr_014_7123:
    nop
    jp hl


    ld d, l
    ld d, b
    ld e, d
    inc a
    ld l, c
    ld e, a
    nop
    nop
    dec l
    ldh a, [rP1]
    nop
    rst $38
    ld h, h
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    xor d
    ld h, h
    rst $30
    ld e, e
    sub l
    add $2a
    ld b, d

jr_014_7143:
    inc c
    ld [$5f4b], a
    ld c, e
    ld d, l
    ld d, l
    ld c, e
    nop
    nop
    dec l
    and l
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    ld [hl], $17
    dec de
    sub $46
    ld a, $42
    nop
    db $eb
    scf
    ld [hl-], a
    scf
    ld c, e
    ld [hl-], a
    scf
    nop
    nop
    dec l
    ld l, d
    nop
    nop
    ld a, a
    ld h, h
    inc d
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    inc b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ec
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld bc, $4b01
    ld e, e
    nop
    nop
    nop
    ld h, h
    add hl, de
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    rst $38
    and [hl]
    ld d, $19
    call nz, $3c46
    jr nz, jr_014_71a4

jr_014_71a4:
    db $ed
    ld [hl-], a
    ld e, a
    ld e, a
    ld b, [hl]
    inc hl
    ld l, [hl]
    ld bc, $2d01
    adc d
    nop
    nop
    nop
    ld h, h
    add hl, de
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    adc b
    and [hl]
    ld d, $19
    call z, $3c46
    jr nz, jr_014_71c4

jr_014_71c4:
    xor $2d
    ld e, $0f
    ld b, c
    ld d, l
    ld b, c
    add hl, de
    jr jr_014_71fb

    ld d, a
    ld d, b
    ld d, b
    cp $64
    add hl, de
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec h
    cp e
    dec de
    db $f4
    rlca
    ld a, [hl-]
    ld [bc], a
    ld [$2def], sp
    ccf
    dec h
    ld e, a
    ld b, c
    scf
    rla
    rla
    dec l
    ld l, d
    nop
    nop
    ccf
    ld h, h
    add hl, de
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop

jr_014_71fb:
    rst $38
    ld h, a
    ld [de], a
    dec de
    push de
    ld b, a
    cp l
    ld b, b
    inc b
    ldh a, [$2d]
    ld c, e
    dec h
    ld d, e
    ld b, [hl]
    scf
    inc d
    inc d
    dec l
    ld [hl], l
    ld c, a
    ld c, a
    ccf
    ld h, h
    add hl, de
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    rst $38
    daa
    ld d, $59
    call nc, $bd26
    nop
    ld [bc], a
    pop af
    ld e, a
    ld d, b
    ld l, c
    ld h, h
    jr z, jr_014_727b

    nop
    nop
    dec l
    rst $38
    ld c, b
    ld c, b
    cp $64
    inc d
    dec b
    ld h, [hl]
    nop
    nop
    nop
    nop
    dec b
    ld d, l
    rst $28
    rst $38
    ld e, e
    rst $20
    sub a
    sbc c
    jr nc, jr_014_7250

    ld a, [c]
    rst $38
    dec b
    jr z, @+$39

    jr z, @-$77

    nop
    nop
    ld bc, $0078

jr_014_7250:
    ld a, [hl]
    cp $64
    jr z, jr_014_725a

    ld [hl], a
    nop
    nop
    nop
    nop

jr_014_725a:
    inc b
    ld h, [hl]
    rst $28
    or $3b
    push af
    or [hl]
    ld a, [de]
    ld h, b
    ld c, $f3
    ld e, d
    ld d, l
    ld e, a
    ld [hl], e
    ld [hl], e
    ld h, h
    rla
    rla
    inc bc
    rst $38
    nop
    nop
    rst $38
    ld h, h
    ld d, b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b

jr_014_727b:
    rst $38
    or $57
    ld e, e
    call $0c56
    ld h, h
    inc b
    db $f4
    ld [hl], e
    ld [hl], e
    ld d, l
    ld h, h
    ld l, [hl]
    ld c, e
    inc d
    inc d
    inc bc
    rst $38
    nop
    nop
    rst $38
    ld h, h
    ld d, b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    rst $38
    or [hl]
    ld d, a
    ld a, e
    call z, $0c76
    ld h, h
    ld [bc], a
    push af
    ld a, b
    ld c, e
    ld [hl], e
    ld d, l
    ld e, d
    ld [hl], e
    dec d
    dec d
    ld bc, $00ff
    nop
    rst $38
    ld h, h
    ld d, b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    rst $38
    or [hl]
    rst $30
    ld e, e
    call z, $0c56
    sub h
    add hl, bc
    or $32
    ld b, b
    ld [hl-], a
    add hl, hl
    dec l
    ld [hl-], a
    dec b
    inc b
    dec l
    ld b, e
    nop
    nop
    ld a, a
    ld h, h
    jr z, jr_014_72da

    ld d, l
    nop
    nop
    nop
    nop

jr_014_72da:
    dec b
    ld de, $5626
    dec de
    adc $16
    inc e
    nop
    nop
    rst $30
    ld b, [hl]
    ld d, h
    ld b, [hl]
    inc sp
    ld b, c
    ld b, [hl]
    dec b
    inc b
    dec l
    sub b
    nop
    nop
    ld a, a
    ld h, h
    jr z, jr_014_72fa

    ld h, [hl]
    nop
    nop
    nop
    nop

jr_014_72fa:
    dec b
    ld de, $5626
    dec de
    adc $16
    inc e
    nop
    nop
    ld hl, sp+$64
    add [hl]
    ld l, [hl]
    dec a
    ld e, a
    ld h, h
    dec b
    dec de
    dec l
    rst $38
    nop
    nop
    ld a, a
    ld h, h
    jr z, jr_014_731a

    ld [hl], a
    nop
    nop
    nop
    nop

jr_014_731a:
    dec b
    ld de, $56b7
    db $db
    adc $36
    sbc h
    scf
    ld c, $f9
    ld l, d
    ld e, d
    add d
    ld l, [hl]
    ld e, d
    sbc d
    jr @+$04

    ld bc, $00ff
    nop
    rst $38
    ld h, h
    ld a, b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    rst $38
    or $f7
    rst $18
    rst $30
    ld d, [hl]
    ld c, [hl]
    cp d
    dec c
    ld a, [$826a]
    ld e, d
    ld e, d
    ld l, [hl]
    sbc d
    inc d
    ld [bc], a
    ld bc, $9cff
    sbc h
    rst $38
    ld h, h
    ld a, b
    dec b
    ld [hl], a
    nop
    nop
    nop
    nop
    dec b
    rst $38
    db $f4
    ld d, a
    cp a
    rst $30
    db $76
    ld c, [hl]
    ld l, d
    ld b, $fb
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    ld h, h
    jr jr_014_7383

    dec l
    ld b, b
    nop
    ld l, l
    rst $38
    ld h, h
    ld a, b
    dec b
    ld d, l
    nop
    nop
    nop
    nop
    inc bc
    rst $38
    inc h
    ld e, a
    ccf
    db $f4
    sub $0e
    ld b, d

jr_014_7383:
    nop
    add c
    sub h
    adc e
    add c
    add b
    sub d
    add b
    sub h
    sub c
    ld d, b
    adc b
    sub l
    sbc b
    sub d
    add b
    sub h
    sub c
    ld d, b
    ld d, b
    ld d, b
    sub l
    add h
    adc l
    sub h
    sub d
    add b
    sub h
    sub c
    ld d, b
    ld d, b
    add d
    add a
    add b
    sub c
    adc h
    add b
    adc l
    add e
    add h
    sub c
    add d
    add a
    add b
    sub c
    adc h
    add h
    adc e
    add h
    adc [hl]
    adc l
    add d
    add a
    add b
    sub c
    adc b
    sbc c
    add b
    sub c
    add e
    ld d, b
    sub d
    sub b
    sub h
    adc b
    sub c
    sub e
    adc e
    add h
    ld d, b
    ld d, b
    sub [hl]
    add b
    sub c
    sub e
    adc [hl]
    sub c
    sub e
    adc e
    add h
    ld d, b
    add c
    adc e
    add b
    sub d
    sub e
    adc [hl]
    adc b
    sub d
    add h
    ld d, b
    add d
    add b
    sub e
    add h
    sub c
    adc a
    adc b
    add h
    ld d, b
    ld d, b
    adc h
    add h
    sub e
    add b
    adc a
    adc [hl]
    add e
    ld d, b
    ld d, b
    ld d, b
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
    sub [hl]
    add h
    add h
    add e
    adc e
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b
    adc d
    sub h
    adc l
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add c
    add h
    add h
    add e
    sub c
    adc b
    adc e
    adc e
    ld d, b
    ld d, b
    adc a
    adc b
    add e
    add [hl]
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    sub e
    adc [hl]
    ld d, b
    adc a
    adc b
    add e
    add [hl]
    add h
    adc [hl]
    sub e
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    sub e
    sub e
    add b
    sub e
    add b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    sub e
    adc b
    add d
    add b
    sub e
    add h
    ld d, b
    ld d, b
    sub d
    adc a
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    add l
    add h
    add b
    sub c
    adc [hl]
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add h
    adc d
    add b
    adc l
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    sub c
    add c
    adc [hl]
    adc d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    adc b
    add d
    add a
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add b
    adc l
    add e
    sub d
    add a
    sub c
    add h
    sub [hl]
    ld d, b
    sub d
    add b
    adc l
    add e
    sub d
    adc e
    add b
    sub d
    add a
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    push af
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    adc l
    add b
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub b
    sub h
    add h
    add h
    adc l
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    add b
    adc l
    rst $28
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    sub c
    adc b
    adc l
    adc [hl]
    ld d, b
    ld d, b
    adc l
    adc b
    add e
    adc [hl]
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    add d
    adc e
    add h
    add l
    add b
    adc b
    sub c
    sbc b
    ld d, b
    ld d, b
    add d
    adc e
    add h
    add l
    add b
    add c
    adc e
    add h
    ld d, b
    ld d, b
    sub l
    sub h
    adc e
    adc a
    adc b
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc l
    adc b
    adc l
    add h
    sub e
    add b
    adc e
    add h
    sub d
    ld d, b
    adc c
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    adc a
    sub h
    add l
    add l
    sub [hl]
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    sub e
    sub h
    add l
    add l
    sbc c
    sub h
    add c
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add c
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    add e
    add e
    adc b
    sub d
    add a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc e
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub l
    adc b
    adc e
    add h
    adc a
    adc e
    sub h
    adc h
    add h
    ld d, b
    adc a
    add b
    sub c
    add b
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    add b
    sub c
    add b
    sub d
    add h
    add d
    sub e
    ld d, b
    ld d, b
    sub l
    add h
    adc l
    adc [hl]
    adc l
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    sub l
    add h
    adc l
    adc [hl]
    adc h
    adc [hl]
    sub e
    add a
    ld d, b
    ld d, b
    add e
    adc b
    add [hl]
    adc e
    add h
    sub e
    sub e
    ld d, b
    ld d, b
    ld d, b
    add e
    sub h
    add [hl]
    sub e
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    adc h
    add h
    adc [hl]
    sub [hl]
    sub e
    add a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    add h
    sub c
    sub d
    adc b
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc a
    sub d
    sbc b
    add e
    sub h
    add d
    adc d
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add e
    sub h
    add d
    adc d
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    adc l
    adc d
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    sub c
    adc b
    adc h
    add h
    add b
    adc a
    add h
    ld d, b
    ld d, b
    add [hl]
    sub c
    adc [hl]
    sub [hl]
    adc e
    adc b
    sub e
    add a
    add h
    ld d, b
    add b
    sub c
    add d
    add b
    adc l
    adc b
    adc l
    add h
    ld d, b
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add b
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    add a
    adc b
    sub c
    adc e
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub [hl]
    sub c
    add b
    sub e
    add a
    ld d, b
    add b
    add c
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b
    add e
    add b
    add c
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    add b
    adc e
    add b
    adc d
    add b
    sbc c
    add b
    adc h
    ld d, b
    ld d, b
    adc h
    add b
    add d
    add a
    adc [hl]
    adc a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add d
    add a
    adc [hl]
    adc d
    add h
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add d
    add a
    add b
    adc h
    adc a
    ld d, b
    ld d, b
    ld d, b
    add c
    add h
    adc e
    adc e
    sub d
    adc a
    sub c
    adc [hl]
    sub h
    sub e
    sub [hl]
    add h
    add h
    adc a
    adc b
    adc l
    add c
    add h
    adc e
    adc e
    sub l
    adc b
    add d
    sub e
    sub c
    add h
    add h
    add c
    add h
    adc e
    sub e
    add h
    adc l
    sub e
    add b
    add d
    adc [hl]
    adc [hl]
    adc e
    ld d, b
    sub e
    add h
    adc l
    sub e
    add b
    add d
    sub c
    sub h
    add h
    adc e
    add [hl]
    add h
    adc [hl]
    add e
    sub h
    add e
    add h
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    sub c
    add b
    sub l
    add h
    adc e
    add h
    sub c
    ld d, b
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add h
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    adc l
    sbc b
    sub e
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    adc a
    adc b
    add e
    add b
    sub d
    add a
    ld d, b
    ld d, b
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc a
    adc [hl]
    adc d
    add h
    ld d, b
    ld d, b
    sub d
    adc e
    adc [hl]
    sub [hl]
    add c
    sub c
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add [hl]
    adc l
    add h
    adc h
    adc b
    sub e
    add h
    ld d, b
    adc h
    add b
    add [hl]
    adc l
    add h
    sub e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    add l
    add b
    sub c
    add l
    add h
    sub e
    add d
    add a
    ldh [$83], a
    add e
    adc [hl]
    add e
    sub h
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    adc [hl]
    add e
    sub c
    adc b
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add h
    add h
    adc e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    add h
    sub [hl]
    add [hl]
    adc [hl]
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    sub c
    adc b
    adc h
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    sub h
    adc d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add a
    add h
    adc e
    adc e
    add e
    add h
    sub c
    ld d, b
    ld d, b
    add d
    adc e
    adc [hl]
    sbc b
    sub d
    sub e
    add h
    sub c
    ld d, b
    ld d, b
    add [hl]
    add b
    sub d
    sub e
    adc e
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add a
    add b
    sub h
    adc l
    sub e
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    add h
    adc l
    add [hl]
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    adc l
    adc b
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    sub c
    adc [hl]
    sub [hl]
    sbc c
    add h
    add h
    ld d, b
    ld d, b
    ld d, b
    add a
    sbc b
    adc a
    adc l
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    sub c
    add b
    add c
    add c
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    adc b
    adc l
    add [hl]
    adc e
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    sub l
    adc [hl]
    adc e
    sub e
    adc [hl]
    sub c
    add c
    ld d, b
    ld d, b
    ld d, b
    add h
    adc e
    add h
    add d
    sub e
    sub c
    adc [hl]
    add e
    add h
    ld d, b
    add h
    sub a
    add h
    add [hl]
    add [hl]
    add d
    sub h
    sub e
    add h
    ld d, b
    add h
    sub a
    add h
    add [hl]
    add [hl]
    sub h
    sub e
    adc [hl]
    sub c
    ld d, b
    add d
    sub h
    add c
    adc [hl]
    adc l
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    sub c
    adc [hl]
    sub [hl]
    add b
    adc d
    ld d, b
    ld d, b
    ld d, b
    add a
    adc b
    sub e
    adc h
    adc [hl]
    adc l
    adc e
    add h
    add h
    ld d, b
    add a
    adc b
    sub e
    adc h
    adc [hl]
    adc l
    add d
    add a
    add b
    adc l
    adc e
    adc b
    add d
    adc d
    adc b
    sub e
    sub h
    adc l
    add [hl]
    ld d, b
    adc d
    adc [hl]
    add l
    add l
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    sub [hl]
    add h
    add h
    sbc c
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    sub c
    add a
    sbc b
    add a
    adc [hl]
    sub c
    adc l
    ld d, b
    ld d, b
    ld d, b
    sub c
    add a
    sbc b
    add e
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add d
    add a
    add b
    adc l
    sub d
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    sub e
    add b
    adc l
    add [hl]
    add h
    adc e
    add b
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b
    adc l
    add [hl]
    add b
    sub d
    adc d
    add a
    add b
    adc l
    add a
    adc [hl]
    sub c
    sub d
    add h
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add h
    add b
    add e
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add e
    add h
    add h
    adc l
    ld d, b
    ld d, b
    ld d, b
    sub d
    add h
    add b
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub e
    add b
    sub c
    sbc b
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub e
    add b
    sub c
    adc h
    adc b
    add h
    ld d, b
    ld d, b
    ld d, b
    adc h
    sub c
    add sp, -$74
    adc b
    adc h
    add h
    ld d, b

Call_014_7846:
    ld d, b
    ld d, b
    sub d
    add d
    sbc b
    sub e
    add a
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    adc c
    sbc b
    adc l
    sub a
    ld d, b
    ld d, b
    ld d, b
    ld d, b

Jump_014_785a:
    ld d, b
    ld d, b
    add h
    adc e
    add h
    add d
    sub e
    add b
    add c
    sub h
    sbc c
    sbc c
    adc h
    add b
    add [hl]
    adc h
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc b
    adc l
    sub d
    adc b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub e
    add b
    sub h
    sub c
    adc [hl]
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add [hl]
    adc b
    adc d
    add b
    sub c
    adc a
    ld d, b
    ld d, b
    add [hl]
    sbc b
    add b
    sub c
    add b
    add e
    adc [hl]
    sub d
    ld d, b
    ld d, b
    adc e
    add b
    adc a
    sub c
    add b
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    adc b
    sub e
    sub e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add h
    add h
    sub l
    add h
    add h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub l
    add b
    adc a
    adc [hl]
    sub c
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    adc c
    adc [hl]
    adc e
    sub e
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    add l
    adc e
    add b
    sub c
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    adc h
    add b
    adc l
    sbc b
    sub e
    add h
    ld d, b
    ld d, b
    ld d, b
    adc [hl]
    adc h
    add b
    sub d
    sub e
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc d
    add b
    add c
    sub h
    sub e
    adc [hl]
    adc a
    sub d
    ld d, b
    ld d, b
    add b
    add h
    sub c
    adc [hl]
    add e
    add b
    add d
    sub e
    sbc b
    adc e
    sub d
    adc l
    adc [hl]
    sub c
    adc e
    add b
    sub a
    ld d, b
    ld d, b
    ld d, b
    add b
    sub c
    sub e
    adc b
    add d
    sub h
    adc l
    adc [hl]
    ld d, b
    ld d, b
    sbc c
    add b
    adc a
    add e
    adc [hl]
    sub d
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc [hl]
    adc e
    sub e
    sub c
    add h
    sub d
    ld d, b
    ld d, b
    ld d, b
    add e
    sub c
    add b
    sub e
    adc b
    adc l
    adc b
    ld d, b
    ld d, b
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    add b
    adc b
    sub c
    ld d, b
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    adc b
    sub e
    add h
    ld d, b
    adc h
    add h
    sub [hl]
    sub e
    sub [hl]
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add h
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add d
    add a
    adc b
    adc d
    adc [hl]
    sub c
    adc b
    sub e
    add b
    ld d, b
    add c
    add b
    sbc b
    adc e
    add h
    add h
    add l
    ld d, b
    ld d, b
    ld d, b
    adc h
    add h
    add [hl]
    add b
    adc l
    adc b
    sub h
    adc h
    ld d, b
    ld d, b
    add d
    sbc b
    adc l
    add e
    add b
    sub b
    sub h
    adc b
    adc e
    ld d, b
    sub b
    sub h
    adc b
    adc e
    add b
    sub l
    add b
    ld d, b
    ld d, b
    ld d, b
    sub e
    sbc b
    adc a
    add a
    adc e
    adc [hl]
    sub d
    adc b
    adc [hl]
    adc l
    sub e
    adc [hl]
    sub e
    adc [hl]
    add e
    adc b
    adc e
    add h
    ld d, b
    ld d, b
    add d
    sub c
    adc [hl]
    add d
    adc [hl]
    adc l
    add b
    sub [hl]
    ld d, b
    ld d, b
    add l
    add h
    sub c
    add b
    adc e
    adc b
    add [hl]
    add b
    sub e
    sub c
    sub d
    add h
    adc l
    sub e
    sub c
    add h
    sub e
    ld d, b
    ld d, b
    ld d, b
    add l
    sub h
    sub c
    sub c
    add h
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add a
    adc [hl]
    adc [hl]
    sub e
    add a
    adc [hl]
    adc [hl]
    sub e
    ld d, b
    ld d, b
    adc l
    adc [hl]
    add d
    sub e
    adc [hl]
    sub [hl]
    adc e
    ld d, b
    ld d, b
    ld d, b
    adc e
    add h
    add e
    sbc b
    add c
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc e
    add h
    add e
    adc b
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    adc a
    adc b
    adc l
    add b
    sub c
    add b
    adc d
    ld d, b
    ld d, b
    add b
    sub c
    adc b

Jump_014_7a0d:
    add b
    add e
    adc [hl]
    sub d
    ld d, b
    ld d, b
    ld d, b
    add d
    sub c
    adc [hl]
    add c
    add b
    sub e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add d
    add a
    adc b
    adc l
    add d
    add a
    adc [hl]
    sub h
    ld d, b
    ld d, b
    adc e
    add b
    adc l
    sub e
    sub h
    sub c
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc b
    add d
    add a
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add d
    adc e
    add h
    add l
    add l
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc b
    add [hl]
    add [hl]
    adc e
    sbc b
    add c
    sub h
    add l
    add l
    ld d, b
    sub e
    adc [hl]
    add [hl]
    add h
    adc a
    adc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub e
    adc [hl]
    add [hl]
    add h
    sub e
    adc b
    add d
    ld d, b
    ld d, b
    ld d, b
    adc l
    add b
    sub e
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub a
    add b
    sub e
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    sub c
    add h
    add h
    adc a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add l
    adc e
    add b
    add b
    add l
    add l
    sbc b
    ld d, b
    ld d, b
    ld d, b
    add b
    adc h
    adc a
    add a
    add b
    sub c
    adc [hl]
    sub d
    ld d, b
    ld d, b
    add c
    add h
    adc e
    adc e
    adc [hl]
    sub d
    sub d
    adc [hl]
    adc h
    ld d, b
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add b
    sbc c
    sub h
    adc h
    add b
    sub c
    adc b
    adc e
    adc e
    ld d, b
    sub d
    sub h
    add e
    adc [hl]
    sub [hl]
    adc [hl]
    adc [hl]
    add e
    adc [hl]
    ld d, b
    adc a
    adc [hl]
    adc e
    adc b
    sub e
    adc [hl]
    add h
    add e
    ld d, b
    ld d, b
    add a
    adc [hl]
    adc a
    adc a
    adc b
    adc a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    adc d
    adc b
    adc a
    adc e
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    ld d, b
    adc c
    sub h
    adc h
    adc a
    adc e
    sub h
    add l
    add l
    ld d, b
    ld d, b
    add b
    adc b
    adc a
    adc [hl]
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub h
    adc l
    adc d
    add h
    sub c
    adc l
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub h
    adc l
    add l
    adc e
    adc [hl]
    sub c
    add b
    ld d, b
    ld d, b
    sbc b
    add b
    adc l
    adc h
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub [hl]
    adc [hl]
    adc [hl]
    adc a
    add h
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub b
    sub h
    add b
    add [hl]
    sub d
    adc b
    sub c
    add h
    ld d, b
    ld d, b
    add h
    sub d
    adc a
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub h
    adc h
    add c
    sub c
    add h
    adc [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc h
    sub h
    sub c
    adc d
    sub c
    adc [hl]
    sub [hl]
    ld d, b
    ld d, b
    ld d, b
    sub d
    adc e
    adc [hl]
    sub [hl]
    adc d
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    adc h
    adc b
    sub d
    add e
    sub c
    add h
    add b
    sub l
    sub h
    sub d
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub [hl]
    adc [hl]
    add c
    add c
    sub h
    add l
    add l
    add h
    sub e
    ld d, b
    add [hl]
    adc b
    sub c
    add b
    add l
    add b
    sub c
    adc b
    add [hl]
    ld d, b
    adc a
    adc b
    adc l
    add h
    add d
    adc [hl]
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add l
    adc [hl]
    sub c
    sub c
    add h
    sub e
    sub c
    add h
    sub d
    sub d
    add e
    sub h
    adc l
    sub d
    adc a
    add b
    sub c
    add d
    add h
    ld d, b
    add [hl]
    adc e
    adc b
    add [hl]
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub e
    add h
    add h
    adc e
    adc b
    sub a
    ld d, b
    ld d, b
    ld d, b
    sub d
    adc l
    sub h
    add c
    add c
    sub h
    adc e
    adc e
    ld d, b
    ld d, b
    add [hl]
    sub c
    add b
    adc l
    add c
    sub h
    adc e
    adc e
    ld d, b
    ld d, b
    sub b
    sub [hl]
    adc b
    adc e
    add l
    adc b
    sub d
    add a
    ld d, b
    ld d, b
    sub d
    add d
    adc b
    sbc c
    adc [hl]
    sub c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    add a
    sub h
    add d
    adc d
    adc e
    add h
    ld d, b
    ld d, b
    ld d, b
    add a
    add h
    sub c
    add b
    add d
    sub c
    adc [hl]
    sub d
    sub d
    ld d, b
    sub d
    adc l
    add h
    add b
    sub d
    add h
    adc e
    ld d, b
    ld d, b
    ld d, b
    sub e
    add h
    add e
    add e
    adc b
    sub h
    sub c
    sub d
    add b
    ld d, b
    sub h
    sub c
    sub d
    add b
    sub c
    adc b
    adc l
    add [hl]
    ld d, b
    ld d, b
    sub d
    adc e
    sub h
    add [hl]
    adc h
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add [hl]
    add d
    add b
    sub c
    add [hl]
    adc [hl]
    ld d, b
    ld d, b
    sub d
    sub [hl]
    adc b
    adc l
    sub h
    add c
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc b
    adc e
    adc [hl]
    sub d
    sub [hl]
    adc b
    adc l
    add h
    ld d, b
    add d
    adc [hl]
    sub c
    sub d
    adc [hl]
    adc e
    add b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add h
    adc h
    adc [hl]
    sub c
    add b
    adc b
    add e
    ld d, b
    ld d, b
    adc [hl]
    add d
    sub e
    adc b
    adc e
    adc e
    add h
    sub c
    sbc b
    ld d, b
    add e
    add h

Call_014_7c46:
    adc e
    adc b
    add c
    adc b
    sub c
    add e
    ld d, b
    ld d, b
    adc h
    add b
    adc l
    sub e
    adc b
    adc l
    add h
    ld d, b

Call_014_7c56:
    ld d, b
    ld d, b
    sub d
    adc d
    add b
    sub c
    adc h
    adc [hl]
    sub c
    sbc b
    ld d, b
    ld d, b
    add a
    adc [hl]
    sub h
    adc l
    add e
    adc [hl]
    sub h
    sub c
    ld d, b
    ld d, b
    add a
    adc [hl]
    sub h
    adc l
    add e
    adc [hl]
    adc [hl]
    adc h
    ld d, b
    ld d, b
    adc d
    adc b
    adc l
    add [hl]
    add e
    sub c
    add b
    ld d, b
    ld d, b
    ld d, b
    adc a
    add a
    add b
    adc l
    adc a
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add e
    adc [hl]
    adc l
    adc a
    add a
    add b
    adc l
    ld d, b
    ld d, b
    ld d, b
    adc a
    adc [hl]
    sub c
    sbc b
    add [hl]
    adc [hl]
    adc l
    ld hl, sp+$50
    ld d, b
    sub d
    sub e
    add b
    adc l
    sub e
    adc e
    add h
    sub c
    ld d, b
    ld d, b
    sub d
    adc h
    add h
    add b
    sub c
    add [hl]
    adc e
    add h
    ld d, b
    ld d, b
    sub e
    sbc b
    sub c
    adc [hl]
    add [hl]
    sub h
    add h
    ld d, b
    ld d, b
    ld d, b
    add a
    adc b
    sub e
    adc h
    adc [hl]
    adc l
    sub e
    adc [hl]
    adc a
    ld d, b
    sub d
    adc h
    adc [hl]
    adc [hl]
    add d
    add a
    sub h
    adc h
    ld d, b
    ld d, b
    add h
    adc e
    add h
    adc d
    adc b
    add e
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    add b
    add [hl]
    add c
    sbc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    adc h
    adc b
    adc e
    sub e
    add b
    adc l
    adc d
    ld d, b
    ld d, b
    ld d, b
    add c
    adc e
    adc b
    sub d
    sub d
    add h
    sbc b
    ld d, b
    ld d, b
    ld d, b
    sub c
    add b
    adc b
    adc d
    adc [hl]
    sub h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add h
    adc l
    sub e
    add h
    adc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    sub d
    sub h
    adc b
    add d
    sub h
    adc l
    add h
    ld d, b
    ld d, b
    ld d, b
    adc e
    add b
    sub c
    sub l
    adc b
    sub e
    add b
    sub c
    ld d, b
    ld d, b
    adc a
    sub h
    adc a
    adc b
    sub e
    add b
    sub c
    ld d, b
    ld d, b
    ld d, b
    sub e
    sbc b
    sub c
    add b
    adc l
    adc b
    sub e
    add b
    sub c
    ld d, b
    adc e
    sub h
    add [hl]
    adc b
    add b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add a
    adc [hl]
    db $e3
    adc [hl]
    add a
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add d
    add h
    adc e
    add h
    add c
    adc b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    and $e6
    and $e6
    and $50
    ld d, b
    ld d, b
    ld d, b
    ld d, b
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
    and $e6
    and $e6
    and $50
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    and $e6
    and $e6
    and $50
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    and $e6
    and $e6
    and $50
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld a, [de]
    dec d
    inc sp
    ld d, $4b
    rla
    ld h, d
    jr @+$7b

    add hl, de
    sub b
    ld a, [de]
    xor b
    dec de
    call nz, $e01c
    dec e
    or $1e
    rst $38
    rra
    rst $38
    jr nz, @+$73

    ld [hl+], a
    ld bc, $0202
    inc bc
    ld [bc], a
    ld b, h
    rlca
    inc b
    ld b, h
    ld [$0d0f], sp
    ld c, $09
    inc c
    dec bc
    inc b
    rlca
    ld b, $05
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld bc, $ec01
    daa
    rrca
    ld bc, $0703
    inc c
    jr @+$32

    ld [hl], b
    ld b, b
    add sp, -$80
    db $f4
    nop
    ld [$f500], a
    nop
    ld b, a
    rst $38
    nop
    dec b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rLYC], a
    rrca
    ldh a, [$0b]
    rra
    ldh [rIE], a
    nop
    ld sp, hl
    add [hl]
    ld [hl], b
    ld l, a
    add hl, de
    ld e, $07
    rlca
    ld a, a
    dec d
    ret nz

    ret nz

    ldh a, [$30]
    ld a, h
    inc c
    ld a, $02
    ccf
    ld bc, $0877
    jp hl


    ld d, $f4
    dec bc
    add sp, $17
    pop af
    ld c, $fb
    inc b
    ld b, e
    rst $38
    nop
    ld bc, $609f
    ld b, e
    rra
    ldh [rSB], a
    cp h
    ld b, e
    and e
    push de
    add hl, bc
    pop af
    ld c, $ff
    ld bc, $06fe
    ld hl, sp+$18
    ldh [$e0], a
    db $ec
    add hl, hl
    ld [bc], a
    add b
    add b
    ret nz

    and [hl]
    nop
    dec d
    ld c, c
    ldh a, [rNR10]
    ld b, e
    ldh [rNR41], a
    ld bc, $40c0
    and e
    nop
    inc l
    db $ec
    ld l, a
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

Call_014_7e46:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_014_7fb2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
