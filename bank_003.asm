; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    ld a, [$d269]
    ld hl, $4012
    ld de, $0002
    call $30e1
    inc hl
    ld c, [hl]
    ret c

    xor a
    ld c, a
    ret


    nop
    ld bc, $0201
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    rst $38
    ld hl, $4029
    add hl, de
    add hl, de
    add hl, de
    ld b, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    rst $08
    ret


    dec h
    jr z, jr_003_40a8

    ld a, [bc]
    add sp, $5c
    ld a, [bc]
    ld de, $0a5d
    sub d
    ld e, l
    ld a, [bc]
    ld h, [hl]
    ld e, [hl]
    ld a, [bc]
    add d
    ld e, [hl]
    ld a, [bc]
    ld a, [$0a5e]
    xor $5e
    ld a, [bc]
    sub d
    ld e, h
    ld a, [bc]
    pop af
    ld e, h
    ld a, [bc]
    ld a, [$0a5c]

Jump_003_404b:
    ei
    ld e, e
    ld a, [bc]
    ld a, e
    ld e, h
    ld a, [bc]
    call nz, $0a5e
    reti


    ld e, [hl]
    ld a, [bc]
    xor a
    ld e, [hl]
    ld a, [bc]
    ld b, a
    ld e, a
    inc bc
    or $42
    inc bc
    add hl, bc
    ld b, e
    ld b, c
    cp c
    ld d, b
    inc bc
    ld c, d
    ld b, e
    inc de
    push hl
    ld e, c
    inc b
    ld [de], a
    ld a, d
    inc b
    ld sp, $047a
    db $db
    ld [hl], l
    ld a, $32
    ld a, e
    ld a, $d2
    ld a, h
    inc bc
    ld e, b
    ld b, [hl]
    dec b
    sbc d
    ld d, l
    inc bc
    rst $20
    ld b, d
    dec b
    sub $66
    dec b
    ld a, [hl+]
    ld h, a
    dec b
    ld [hl], $69
    dec bc
    ld b, a
    ld b, l
    dec b
    jr jr_003_40f4

    inc hl
    inc b
    ld c, h
    inc bc
    sbc l
    ld b, d
    inc h
    inc de
    ld c, c
    inc bc
    ret nz

    ld b, d
    inc bc
    call $0342
    ld d, l
    ld b, e
    inc bc
    ld h, b
    ld b, e
    inc bc

jr_003_40a8:
    ld [hl], e
    ld b, e
    inc bc
    add b
    ld b, e
    inc bc
    adc l
    ld b, e
    inc bc
    db $db
    ld b, e
    inc hl
    add h
    ld b, b
    inc hl
    sub d
    ld b, b
    inc hl
    or [hl]
    ld b, b
    inc hl
    ld a, c
    ld b, b
    inc hl
    xor e
    ld b, b
    nop
    sub c
    dec c
    nop
    di
    ld sp, $8500
    inc b
    nop
    ret z

    rrca
    nop
    jp nc, $001a

    ld c, d
    ld c, $03
    jr nc, jr_003_4119

    inc bc
    ld d, d
    ld b, d
    nop
    ld d, l
    inc a
    nop
    rst $18
    inc a
    nop
    ld b, a
    dec a
    inc b
    inc h
    ld h, e
    ld [bc], a
    ld a, c
    ld b, e
    inc bc
    ld e, d
    ld b, d
    inc bc
    ld l, b
    ld b, d
    inc bc
    db $76
    ld b, d
    inc bc
    add h

jr_003_40f4:
    ld b, d
    inc bc
    rst $28
    ld b, e
    dec b
    ld hl, $0574
    ld b, b
    ld [hl], h
    inc b
    xor b
    ld a, c
    inc bc
    db $fc
    ld b, e
    add hl, bc
    db $eb
    ld l, a
    add hl, bc
    ld b, e
    ld [hl], b
    ld bc, $7305
    ld bc, $737e
    ld bc, $73f7
    inc bc
    add hl, de
    ld b, h
    add hl, bc
    dec h
    ld c, e

jr_003_4119:
    add hl, bc
    ld c, [hl]
    ld c, e
    add hl, bc
    add sp, $4a
    inc de
    ld a, d
    ld e, b
    inc bc
    inc [hl]
    ld b, h
    inc bc
    ld [hl+], a
    ld b, h
    inc de
    db $d3
    ld e, c
    ld [hl+], a
    jr jr_003_416e

    inc bc
    cp c
    ld b, d
    inc bc
    jp c, $0142

    adc l
    ld [hl], c
    ld bc, $71ac
    ld a, [bc]
    xor e
    ld h, h
    ld a, [bc]
    rra
    ld h, l
    ld a, [bc]
    ld h, a
    ld h, l
    dec b
    add hl, bc
    ld b, d
    ld a, $41
    ld a, b
    inc bc
    dec a
    ld b, h
    ld bc, $7413
    ld bc, $7418
    ld bc, $741d
    inc bc
    ld [hl], d
    ld b, h
    add hl, bc
    xor $65
    inc bc
    ld a, b
    ld b, h
    inc bc
    cp c
    ld b, h
    dec b
    rst $00
    ld l, l
    ld a, [bc]
    and b
    ld h, d
    inc bc
    adc a
    ld b, h
    inc bc
    sbc a
    ld b, h
    inc bc

jr_003_416e:
    xor h
    ld b, h
    ld b, [hl]
    ld a, $6c
    ld b, [hl]
    ld b, h
    ld [hl], h
    ld b, [hl]

Jump_003_4177:
    add sp, $75
    ld b, [hl]
    push hl
    ld [hl], a
    ld b, [hl]
    ld a, c
    ld a, b
    ld b, [hl]
    jr nz, jr_003_41fb

    ld b, [hl]
    dec sp
    ld a, c
    ld e, h
    or b
    ld b, b
    ld e, h
    cp d
    ld b, b
    ld e, h
    inc d
    ld b, c
    ld e, h
    dec d
    ld b, d
    ld e, h
    pop hl
    ld b, h
    ld e, h
    dec e
    ld b, d
    ld e, h
    ld b, h
    ld c, e
    ld b, [hl]
    jr c, jr_003_4217

    ld e, h
    db $d3
    ld c, e
    ld b, l
    ld d, [hl]
    halt
    ld d, b
    ld bc, $f140
    ld d, c
    ld b, b
    jr nz, jr_003_41fe

    ld b, b
    dec h
    ld d, d
    ld b, b
    ld sp, $1252
    ld e, e
    ld d, d
    ld [hl+], a
    rst $28
    ld l, l
    ld b, a
    xor e
    ld b, c
    ld e, h
    add a
    ld b, [hl]
    ld [hl+], a
    ld l, b
    ld l, [hl]
    ld e, a
    inc h
    ld d, d
    ld e, a
    or [hl]
    ld d, d
    ld e, a
    adc $52
    ld e, a
    dec a
    ld [hl], l
    ld b, b
    ld [de], a
    db $76
    ld [hl+], a
    db $db
    ld l, l
    ld b, b
    ld b, d
    ld h, c
    ld [de], a
    sbc d
    ld e, b
    ld [de], a
    ld sp, hl
    ld e, e
    inc de
    cp h
    ld [hl], b
    ld [hl+], a
    ld l, e
    ld l, a
    ld [hl+], a
    call nc, $226f
    ld [hl], b
    ld [hl], c
    inc b
    add l
    ld d, h
    ld [de], a
    add sp, $66
    ld [de], a
    ld de, $0367
    dec h
    ld b, d
    ld e, h
    jp nc, Jump_003_404b

    ld l, [hl]
    db $76
    ld b, b

jr_003_41fb:
    db $eb
    ld [hl], a
    ld b, b

jr_003_41fe:
    inc a
    ld a, b
    ld b, c
    and d
    ld h, b
    dec b
    ld l, b
    ld b, c
    ld b, b
    jp nz, Jump_003_4177

    rrca
    ld h, e
    ld b, b
    add b
    ld [hl], a
    ld b, b
    ld a, e
    ld a, b
    ld [de], a
    ld [de], a
    ld l, [hl]
    ld b, c
    db $eb

jr_003_4217:
    ld b, a
    ld [de], a
    daa
    ld l, c
    inc h
    ld d, h
    ld c, d
    inc h
    adc b
    ld c, d
    inc bc
    inc h
    ld b, d
    ret


    ld a, [$c2dd]
    ld d, a
    ld a, $01
    ld hl, $57e2
    rst $08
    ret


    ld a, [$c2dd]
    dec a
    call $3393
    ret nz

    ld a, [$c2dd]
    dec a
    call $3380
    call $2b29
    ld a, [$c2dd]
    ld [$d265], a
    ld a, $3e
    ld hl, $7877
    rst $08
    call $2b4d
    ret


    ld a, [$c2dd]
    dec a
    call $338b
    ret


    ld a, [$c2dd]
    ld b, a
    ld a, $13
    ld hl, $5bd2
    rst $08
    jr z, jr_003_4298

    jr jr_003_4292

    ld a, [$c2dd]
    ld b, a
    ld a, $13
    ld hl, $5bd9
    rst $08
    jr z, jr_003_4298

    jr jr_003_4292

    ld a, [$c2dd]
    ld b, a
    ld a, $13
    ld hl, $5be0
    rst $08
    jr z, jr_003_4298

    jr jr_003_4292

    ld a, [$c2dd]
    ld b, a
    ld a, $13
    ld hl, $5be6
    rst $08
    jr z, jr_003_4298

    jr jr_003_4292

jr_003_4292:
    ld a, $01
    ld [$c2dd], a
    ret


jr_003_4298:
    xor a
    ld [$c2dd], a
    ret


    ld b, $02
    ld de, $d493
    ld a, $04
    ld hl, $56b7
    rst $08
    ld hl, $d493
    ld de, $42b2
    call $2ef9
    ret


    sub d
    adc b
    adc e
    sub l
    add h
    sub c
    ld d, b
    ld a, $3e
    ld hl, $76ed
    rst $08
    ret


    call $2b29
    ld a, $24
    ld hl, $591c
    rst $08
    call $2b4d
    ret


    call $2b29
    ld a, $05
    ld hl, $6be4
    rst $08
    call $2b4d
    ret


    call $2b29
    ld a, $0f
    ld hl, $7836
    rst $08
    call $2b4d
    ret


    xor a
    ld [$c2dd], a
    ld a, $05
    ld hl, $56d9
    rst $08
    ld a, c
    ld [$c2dd], a
    ret


    ld a, $00
    call $2fcb
    ld a, [$abe2]
    and a
    jr z, jr_003_4302

    inc a

jr_003_4302:
    ld [$c2dd], a
    call $2fe1
    ret


    ld a, $00
    call $2fcb
    ld a, [$abe2]
    ld [$d106], a
    ld a, $01
    ld [$d10c], a
    ld hl, $d892
    call $2f66
    jr nc, jr_003_433d

    xor a
    ld [$abe2], a
    call $2fe1
    ld a, [$d106]
    ld [$d265], a
    call $3468
    ld hl, $4345
    call $1057
    ld a, $01
    ld [$c2dd], a
    ret


jr_003_433d:
    call $2fe1
    xor a
    ld [$c2dd], a
    ret


    ld d, $be
    ld d, e
    ld l, a
    ld d, b
    ld a, $04
    ld hl, $769d
    rst $08
    ld a, b
    ld [$c2dd], a
    ret


    ld a, [$c2dd]
    ld e, a
    ld a, $24
    ld hl, $5a53
    rst $08
    ret


    call $2b29
    ld a, $38
    ld hl, $5190
    rst $08
    ld a, [$d0ec]
    ld [$c2dd], a
    call $2b4d
    ret


    call Call_003_43ae
    ret c

    ld a, $24
    ld hl, $66c7
    call Call_003_439a
    ret


    call Call_003_43ae
    ret c

    ld a, $38
    ld hl, $40ee
    call Call_003_439a
    ret


    call Call_003_43ae
    ret c

    ld a, $38
    ld hl, $5e5b
    call Call_003_439a
    ret


Call_003_439a:
    call $31cf
    call $2b29
    ld hl, $d0e8
    ld a, [hl+]
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    rst $08
    call $2b4d
    ret


Call_003_43ae:
    ld hl, $d855
    ld a, [hl+]
    or [hl]
    jr z, jr_003_43c4

    ld a, $36
    ld [$d106], a
    ld hl, $d892
    call $2f79
    jr nc, jr_003_43c9

    and a
    ret


jr_003_43c4:
    ld hl, $43d1
    jr jr_003_43cc

jr_003_43c9:
    ld hl, $43d6

jr_003_43cc:
    call $1057
    scf
    ret


    ld d, $d7
    ld d, e
    ld l, a
    ld d, b
    ld d, $eb
    ld d, e
    ld l, a
    ld d, b
    call $31f3
    call $2879
    ret


Jump_003_43e2:
    jr c, jr_003_43e9

    xor a
    ld [$c2dd], a
    ret


jr_003_43e9:
    ld a, $01
    ld [$c2dd], a
    ret


    ld a, $04
    ld hl, $550c
    rst $08
    ld a, [$dc3a]
    ld [$c2dd], a
    ret


    ld a, [$c2dd]
    ld [$dfce], a
    ret


    ld a, c
    and a
    jr nz, jr_003_4410

    ld a, d
    ld [$dfcc], a
    ld a, e
    ld [$dfcd], a
    ret


jr_003_4410:
    ld a, d
    ld [$dc5a], a
    ld a, e
    ld [$dc5b], a
    ret


    ld a, $13
    ld hl, $5860
    rst $08
    jp Jump_003_43e2


    ld a, $04
    ld hl, $552b
    rst $08
    ld hl, $dc9d
    res 0, [hl]
    ld a, $01
    ld hl, $5d33
    rst $08
    ret


    ld a, $04
    ld hl, $5542
    rst $08
    jp Jump_003_43e2


    ld a, [$c2c0]
    cp $40
    jr nz, jr_003_4462

    ld a, [$dcb8]
    ld b, a
    ld a, [$dcb7]
    ld c, a
    ld hl, $4467

jr_003_444f:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_4462

    cp b
    jr nz, jr_003_445f

    ld a, [hl+]
    cp c
    jr nz, jr_003_444f

    ld a, $01
    jr jr_003_4463

jr_003_445f:
    inc hl
    jr jr_003_444f

jr_003_4462:
    xor a

jr_003_4463:
    ld [$c2dd], a
    ret


    ld hl, $2208
    ld a, [bc]
    inc hl
    ld a, [bc]
    inc h
    ld [$0924], sp
    rst $38
    ld a, [$d108]
    jp $37ce


    ldh a, [$e6]
    and a
    jr nz, jr_003_4489

    ldh a, [$e7]
    and a
    jr nz, jr_003_4485

    xor a
    jr jr_003_448b

jr_003_4485:
    ld a, $01
    jr jr_003_448b

jr_003_4489:
    ld a, $02

jr_003_448b:
    ld [$c2dd], a
    ret


    ld a, $00
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    ld a, $02
    ld [$c2a7], a
    ret


    call $2b29
    ld a, $77
    ld hl, $5702
    rst $08
    call $2b4d
    ret


    call $2b29
    ld a, $21
    ld hl, $4688
    rst $08
    call $2b4d
    ret


    ld a, $00
    call $2fcb
    ld a, [$abfd]
    ld [$c2dd], a
    jp $2fe1


    push bc
    bit 5, b
    jr z, jr_003_44d9

    bit 7, b
    jr nz, jr_003_44d4

    bit 6, b
    jr z, jr_003_44d9

jr_003_44d4:
    ld a, $f0
    ld [hl+], a
    res 5, b

jr_003_44d9:
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ldh [$b5], a
    ld a, b
    and $0f
    cp $01
    jr z, jr_003_4501

    cp $02
    jr z, jr_003_44f8

    ld a, [de]
    ldh [$b4], a
    inc de
    ld a, [de]
    ldh [$b5], a
    inc de
    ld a, [de]
    ldh [$b6], a
    jr jr_003_4504

jr_003_44f8:
    ld a, [de]
    ldh [$b5], a
    inc de
    ld a, [de]
    ldh [$b6], a
    jr jr_003_4504

jr_003_4501:
    ld a, [de]
    ldh [$b6], a

jr_003_4504:
    push de
    ld d, b
    ld a, c
    swap a
    and $0f
    ld e, a
    ld a, c
    and $0f
    ld b, a
    ld c, $00
    cp $02
    jr z, jr_003_457c

    cp $03
    jr z, jr_003_456c

    cp $04
    jr z, jr_003_455b

    cp $05
    jr z, jr_003_454a

    cp $06
    jr z, jr_003_4538

    ld a, $0f
    ldh [$b7], a
    ld a, $42
    ldh [$b8], a
    ld a, $40
    ldh [$b9], a
    call Call_003_45cb
    call Call_003_464a

jr_003_4538:
    ld a, $01
    ldh [$b7], a
    ld a, $86
    ldh [$b8], a
    ld a, $a0
    ldh [$b9], a
    call Call_003_45cb
    call Call_003_464a

jr_003_454a:
    xor a
    ldh [$b7], a
    ld a, $27
    ldh [$b8], a
    ld a, $10
    ldh [$b9], a
    call Call_003_45cb
    call Call_003_464a

jr_003_455b:
    xor a
    ldh [$b7], a
    ld a, $03
    ldh [$b8], a
    ld a, $e8
    ldh [$b9], a
    call Call_003_45cb
    call Call_003_464a

jr_003_456c:
    xor a
    ldh [$b7], a
    xor a
    ldh [$b8], a
    ld a, $64
    ldh [$b9], a
    call Call_003_45cb
    call Call_003_464a

jr_003_457c:
    dec e
    jr nz, jr_003_4583

    ld a, $f6
    ldh [$b3], a

jr_003_4583:
    ld c, $00
    ldh a, [$b6]

jr_003_4587:
    cp $0a
    jr c, jr_003_4590

    sub $0a
    inc c
    jr jr_003_4587

jr_003_4590:
    ld b, a
    ldh a, [$b3]
    or c
    jr nz, jr_003_459b

    call Call_003_4644
    jr jr_003_45ad

jr_003_459b:
    call Call_003_45ba
    push af
    ld a, $f6
    add c
    ld [hl], a
    pop af
    ldh [$b3], a
    inc e
    dec e
    jr nz, jr_003_45ad

    inc hl
    ld [hl], $f2

jr_003_45ad:
    call Call_003_464a
    call Call_003_45ba
    ld a, $f6
    add b
    ld [hl+], a
    pop de
    pop bc
    ret


Call_003_45ba:
    push af
    ldh a, [$b3]
    and a
    jr nz, jr_003_45c9

    bit 5, d
    jr z, jr_003_45c9

    ld a, $f0
    ld [hl+], a
    res 5, d

jr_003_45c9:
    pop af
    ret


Call_003_45cb:
    dec e
    jr nz, jr_003_45d2

    ld a, $f6
    ldh [$b3], a

jr_003_45d2:
    ld c, $00

jr_003_45d4:
    ldh a, [$b7]
    ld b, a
    ldh a, [$b4]
    ldh [$ba], a
    cp b
    jr c, jr_003_4624

    sub b
    ldh [$b4], a
    ldh a, [$b8]
    ld b, a
    ldh a, [$b5]
    ldh [$bb], a
    cp b
    jr nc, jr_003_45f6

    ldh a, [$b4]
    or $00
    jr z, jr_003_4620

    dec a
    ldh [$b4], a
    ldh a, [$b5]

jr_003_45f6:
    sub b
    ldh [$b5], a
    ldh a, [$b9]
    ld b, a
    ldh a, [$b6]
    ldh [$bc], a
    cp b
    jr nc, jr_003_4616

    ldh a, [$b5]
    and a
    jr nz, jr_003_4611

    ldh a, [$b4]
    and a
    jr z, jr_003_461c

    dec a
    ldh [$b4], a
    xor a

jr_003_4611:
    dec a
    ldh [$b5], a
    ldh a, [$b6]

jr_003_4616:
    sub b
    ldh [$b6], a
    inc c
    jr jr_003_45d4

jr_003_461c:
    ldh a, [$bb]
    ldh [$b5], a

jr_003_4620:
    ldh a, [$ba]
    ldh [$b4], a

jr_003_4624:
    ldh a, [$b3]
    or c
    jr z, jr_003_4644

    ldh a, [$b3]
    and a
    jr nz, jr_003_4637

    bit 5, d
    jr z, jr_003_4637

    ld a, $f0
    ld [hl+], a
    res 5, d

jr_003_4637:
    ld a, $f6
    add c
    ld [hl], a
    ldh [$b3], a
    inc e
    dec e
    ret nz

    inc hl
    ld [hl], $f2
    ret


Call_003_4644:
jr_003_4644:
    bit 7, d
    ret z

    ld [hl], $f6
    ret


Call_003_464a:
    bit 7, d
    jr nz, jr_003_4656

    bit 6, d
    jr z, jr_003_4656

    ldh a, [$b3]
    and a
    ret z

jr_003_4656:
    inc hl
    ret


    xor a
    ld [$d109], a
    ld hl, $dcd8

jr_003_465f:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_4676

    cp $fd
    jr z, jr_003_466d

    push hl
    call Call_003_4677
    pop hl

jr_003_466d:
    ld a, [$d109]
    inc a
    ld [$d109], a
    jr jr_003_465f

jr_003_4676:
    ret


Call_003_4677:
    ld a, $00
    call $3917
    ld d, h
    ld e, l
    ld hl, $0020
    add hl, de
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $0024
    add hl, de
    ld b, h
    ld c, l
    dec bc
    dec bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    ld a, $03
    ld hl, $78b9
    rst $08
    ret


Call_003_4699:
    ld a, b
    or c
    jr z, jr_003_46dd

    push hl
    xor a
    ldh [$b4], a
    ld a, b
    ldh [$b5], a
    ld a, c
    ldh [$b6], a
    ld a, $30
    ldh [$b7], a
    call $3119
    ld a, d
    and a
    jr z, jr_003_46cc

    srl d
    rr e
    srl d
    rr e
    ldh a, [$b5]
    ld b, a
    ldh a, [$b6]
    srl b
    rr a
    srl b
    rr a
    ldh [$b6], a
    ld a, b
    ldh [$b5], a

jr_003_46cc:
    ld a, e
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b6]
    ld e, a
    pop hl
    and a
    ret nz

    ld e, $01
    ret


jr_003_46dd:
    ld e, $00
    ret


    call $31f6
    call Call_003_5627
    call $31f6
    ret


Call_003_46ea:
    xor a
    ld hl, $d1ea
    ld bc, $0007
    call $3041
    ret


Call_003_46f5:
    ld a, [$d1ea]
    rst $28
    ld [$d1ea], a
    bit 7, a
    jr nz, jr_003_4702

    and a
    ret


jr_003_4702:
    and $7f
    scf
    ret


Call_003_4706:
    ld hl, $de41
    ld a, $02
    ld [$cf5f], a
    ld a, [$d109]
    call $38a2
    call $30d6
    ld de, $d086
    ld hl, $d099
    call $30d9
    ret


Call_003_4721:
    ld b, $02
    ld a, $20
    ld hl, $4430
    rst $08
    ld a, c
    and a
    jr nz, jr_003_472f

    scf
    ret


jr_003_472f:
    xor a
    ret


Call_003_4731:
    call Call_003_4721
    ret nc

    ld hl, $473d
    call $1d67
    scf
    ret


    ld d, $a7
    ld b, l
    ld [hl], b
    ld d, b

Call_003_4742:
    ld e, $00
    xor a
    ld [$d109], a

jr_003_4748:
    ld c, e
    ld b, $00
    ld hl, $dcd8
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_003_4777

    cp $ff
    jr z, jr_003_4777

    cp $fd
    jr z, jr_003_476e

    ld bc, $0030
    ld hl, $dce1
    ld a, e
    call $30fe
    ld b, $04

jr_003_4767:
    ld a, [hl+]
    cp d
    jr z, jr_003_4771

    dec b
    jr nz, jr_003_4767

jr_003_476e:
    inc e
    jr jr_003_4748

jr_003_4771:
    ld a, e
    ld [$d109], a
    xor a
    ret


jr_003_4777:
    scf
    ret


Call_003_4779:
    ld hl, $4780
    call $1d67
    ret


    ld d, $c8
    ld b, l
    ld [hl], b
    ld d, b
    call Call_003_46ea

jr_003_4788:
    ld hl, $4796
    call Call_003_46f5
    jr nc, jr_003_4788

    and $7f
    ld [$d0ec], a
    ret


    sbc h
    ld b, a
    or d
    ld b, a
    cp e
    ld b, a
    ld de, $001c
    call Call_003_4731
    jr c, jr_003_47ac

    call Call_003_47ce
    jr c, jr_003_47af

    ld a, $01
    ret


jr_003_47ac:
    ld a, $80
    ret


jr_003_47af:
    ld a, $02
    ret


    ld hl, $47fe
    call $31cd
    ld a, $81
    ret


    ld hl, $47c9
    call $1d67
    ld a, $80
    ret


    ld d, $dd
    ld b, l
    ld [hl], b
    ld d, b
    ld d, $ec
    ld b, l
    ld [hl], b
    ld d, b

Call_003_47ce:
    call $2a07
    ld c, a
    push de
    ld a, $05
    ld hl, $49f5
    rst $08
    pop de
    jr nc, jr_003_47fc

    call $2a66
    ld c, [hl]
    push hl
    ld hl, $4862
    call Call_003_4840
    pop hl
    jr nc, jr_003_47fc

    ld a, l
    ld [$d1ec], a
    ld a, h
    ld [$d1ed], a
    ld a, b
    ld [$d1ee], a
    ld a, c
    ld [$d1ef], a
    xor a
    ret


jr_003_47fc:
    scf
    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld c, $03
    ld b, $47
    ld c, h
    call nz, Call_003_7c47
    ld c, $03
    db $10
    ld c, b
    ld c, c
    sub c
    ld hl, $d1ec
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d1ee]
    ld [hl], a
    xor a
    ldh [$d4], a
    call $2173
    call $1ad2
    call $045a
    ld a, [$d1ef]
    ld e, a
    ld a, $23
    ld hl, $4940
    rst $08
    call $2879
    call $2914
    call $1ad2
    call $045a
    call $0e51
    ret


Call_003_4840:
    push bc
    ld a, [$d199]
    ld de, $0003
    call $30e1
    pop bc
    jr nc, jr_003_4860

    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0003
    ld a, c
    call $30e1
    jr nc, jr_003_4860

    inc hl
    ld b, [hl]
    inc hl
    ld c, [hl]
    scf
    ret


jr_003_4860:
    xor a
    ret


    ld bc, $4872
    ld [bc], a
    add d
    ld c, b
    inc bc
    add [hl]
    ld c, b
    add hl, de
    sbc c
    ld c, b
    rra
    and b
    ld c, b
    rst $38
    inc bc
    ld [bc], a
    ld bc, $3c5b
    nop
    ld e, a
    dec a
    nop
    ld h, e
    ccf
    nop
    ld h, a
    ld a, $00
    rst $38
    inc bc
    ld [bc], a
    ld bc, $0bff
    ld a, [bc]
    ld bc, $6d32
    nop
    inc sp
    ld l, h
    nop
    inc [hl]
    ld l, a
    nop
    dec [hl]
    ld c, h
    nop
    ld h, b
    ld l, [hl]
    nop
    rst $38
    inc de
    inc bc
    ld bc, $0403
    ld bc, $0fff
    rla
    nop
    rst $38
    ld bc, $48a8
    rst $38
    rlca
    ld [hl], $00
    rst $38
    call Call_003_48b5
    and $7f
    ld [$d0ec], a
    ret


Call_003_48b5:
    ld de, $001b
    ld a, $03
    ld hl, $4731
    rst $08
    jr c, jr_003_48dd

    push hl
    ld a, $22
    ld hl, $6e30
    rst $08
    pop hl
    jr c, jr_003_48d1

    ld a, [$d847]
    cp $ff
    jr nz, jr_003_48d7

jr_003_48d1:
    call Call_003_48e0
    ld a, $81
    ret


jr_003_48d7:
    call Call_003_4779
    ld a, $80
    ret


jr_003_48dd:
    ld a, $80
    ret


Call_003_48e0:
    ld hl, $48e6
    jp $31cd


    ld a, h
    rrca
    dec [hl]
    nop
    ld c, h
    di
    ld c, b
    ld c, $23
    pop hl
    ld b, a
    ld c, c
    sub c
    ld d, $09
    ld b, [hl]
    ld [hl], b
    ld [$55cd], sp
    inc a
    ld de, $00a9
    call $3c23
    call $3c55
    ld hl, $4908
    ret


    ld d, b
    call Call_003_46ea

jr_003_490c:
    ld hl, $491a
    call Call_003_46f5
    jr nc, jr_003_490c

    and $7f
    ld [$d0ec], a
    ret


    ld [hl+], a
    ld c, c
    ld e, a
    ld c, c
    ld [hl], c
    ld c, c
    ld a, d
    ld c, c
    ld de, $001e
    call Call_003_4731
    jr c, jr_003_4956

    ld hl, $dbf5
    bit 1, [hl]
    jr nz, jr_003_495c

    ld a, [$d95d]
    cp $04
    jr z, jr_003_4959

    cp $08
    jr z, jr_003_4959

    call $2a07
    call $185d
    cp $01
    jr nz, jr_003_495c

    call Call_003_49cb
    jr c, jr_003_495c

    ld a, $01
    ld hl, $6fd9
    rst $08
    jr c, jr_003_495c

    ld a, $01
    ret


jr_003_4956:
    ld a, $80
    ret


jr_003_4959:
    ld a, $03
    ret


jr_003_495c:
    ld a, $02
    ret


    call Call_003_49b8
    ld [$d1eb], a
    call Call_003_4706
    ld hl, $4983
    call $31cd
    ld a, $81
    ret


    ld hl, $49ae
    call $1d67
    ld a, $80
    ret


    ld hl, $49b3
    call $1d67
    ld a, $80
    ret


    rrca
    dec [hl]
    nop
    ld c, h
    xor c
    ld c, c
    ld d, h
    ld c, c
    ld c, $03
    and d
    ld c, c
    add hl, de
    db $eb
    pop de
    dec e
    ld [$380f], sp
    nop
    rrca
    inc a
    nop
    rrca
    ccf
    nop
    ld l, c
    nop
    rlca
    ret nc

    sub c
    ld a, $41
    ld hl, $60bb
    rst $08
    ret


    ld d, $2f
    ld b, [hl]
    ld [hl], b
    ld d, b
    ld d, $3f
    ld b, [hl]
    ld [hl], b
    ld d, b
    ld d, $54
    ld b, [hl]
    ld [hl], b
    ld d, b

Call_003_49b8:
    ld a, [$d109]
    ld e, a
    ld d, $00
    ld hl, $dcd8
    add hl, de
    ld a, [hl]
    cp $19
    ld a, $08
    ret z

    ld a, $04
    ret


Call_003_49cb:
    ld a, [$d4de]
    and $0c
    rrca
    rrca
    ld e, a
    ld d, $00
    ld hl, $49e3
    add hl, de
    ld a, [$c2fe]
    and [hl]
    jr nz, jr_003_49e1

    xor a
    ret


jr_003_49e1:
    scf
    ret


    ld [$0204], sp
    ld bc, $5dfa
    reti


    cp $08
    jr z, jr_003_4a2a

    cp $04
    jr z, jr_003_4a2a

    ld a, [$d03e]
    call $185d
    cp $01
    jr nz, jr_003_4a2a

    call Call_003_49cb
    jr c, jr_003_4a2a

    ld de, $001e
    call Call_003_4721
    jr c, jr_003_4a2a

    ld d, $39
    call Call_003_4742
    jr c, jr_003_4a2a

    ld hl, $dbf5
    bit 1, [hl]
    jr nz, jr_003_4a2a

    call Call_003_49b8
    ld [$d1eb], a
    call Call_003_4706
    ld a, $03
    ld hl, $4a2c
    call $261f
    scf
    ret


jr_003_4a2a:
    xor a
    ret


    ld b, a
    ld c, h
    ld [hl], $4a
    ld c, [hl]
    add hl, bc
    add [hl]
    ld c, c
    ld c, c
    sub c
    ld d, $6c
    ld b, [hl]
    ld [hl], b
    ld d, b
    call Call_003_46ea

jr_003_4a3e:
    ld hl, $4a4c
    call Call_003_46f5
    jr nc, jr_003_4a3e

    and $7f
    ld [$d0ec], a
    ret


    ld d, d
    ld c, d
    sub h
    ld c, d
    sbc l
    ld c, d
    ld de, $0020
    call Call_003_4731
    jr c, jr_003_4a85

    call $2c8a
    call $22ee
    jr z, jr_003_4a64

    jr jr_003_4a88

jr_003_4a64:
    xor a
    ldh [$de], a
    call $1d6e
    call $300b
    ld a, $24
    ld hl, $5af3
    rst $08
    ld a, e
    cp $ff
    jr z, jr_003_4a8b

    cp $1c
    jr nc, jr_003_4a8b

    ld [$d001], a
    call $1c17
    ld a, $01
    ret


jr_003_4a85:
    ld a, $82
    ret


jr_003_4a88:
    ld a, $02
    ret


jr_003_4a8b:
    call $1c17
    call $31f6
    ld a, $80
    ret


    ld hl, $4aa3
    call $31cd
    ld a, $81
    ret


    call Call_003_4779
    ld a, $82
    ret


    ld a, h
    ld c, $00
    ld d, $30
    rrca
    dec [hl]
    nop
    ld c, $23
    db $ed
    ld c, d
    ld bc, $c104
    ld h, d
    rrca
    nop
    nop
    ld c, $05
    pop af
    ld d, h
    ld e, $08
    nop
    adc d
    db $fc
    ld c, $23
    inc sp
    ld c, e
    rrca
    dec sp
    nop
    ld c, $03
    bit 1, d
    sub c
    ld a, $01
    ld hl, $561d
    rst $08
    call $045a
    call $0e4a
    ld a, $41
    ld hl, $6594
    rst $08
    ret


    call Call_003_4ae7
    and $7f
    ld [$d0ec], a
    ret


Call_003_4ae7:
    ld de, $0022
    ld a, $03
    ld hl, $4731
    rst $08
    ld a, $80
    ret c

    call Call_003_4b07
    jr c, jr_003_4b01

    ld hl, $4b1c
    call $31cd
    ld a, $81
    ret


jr_003_4b01:
    call Call_003_4779
    ld a, $80
    ret


Call_003_4b07:
    ld a, [$d4de]
    and $0c
    cp $04
    jr nz, jr_003_4b1a

    ld a, [$c2fb]
    call $18bd
    jr nz, jr_003_4b1a

    xor a
    ret


jr_003_4b1a:
    scf
    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld c, $03
    ld b, $47
    ld c, h
    ld d, c
    ld c, e
    ld d, h
    ld c, c
    add l
    ld d, c
    nop
    ld l, c
    nop
    ld c, a
    ld c, e
    ld c, $03
    jr c, jr_003_4b7f

    ld [$4b2c], sp
    sub c
    xor a
    ld [$c2dd], a
    ld a, [$d4e4]
    call $18bd
    ret z

    ld a, $41
    ld hl, $60c1
    rst $08
    ld a, $01
    ld [$c2dd], a
    ret


    add hl, hl
    ld b, a
    ld d, $8e
    ld b, [hl]
    ld [hl], b
    ld d, b
    ld d, $7f
    call Call_003_4742
    jr c, jr_003_4b74

    ld de, $0022
    call Call_003_4721
    jr c, jr_003_4b74

    call Call_003_4b07
    jr c, jr_003_4b74

    ld a, $03
    ld hl, $4b86
    call $261f
    scf
    ret


jr_003_4b74:
    ld a, $03
    ld hl, $4b7e
    call $261f
    scf
    ret


    ld d, e

jr_003_4b7f:
    add c
    ld c, e
    ld d, $a3
    ld b, [hl]
    ld [hl], b
    ld d, b
    ld b, a
    ld c, h
    sub b
    ld c, e
    ld c, [hl]
    add hl, bc
    jr nz, @+$4d

    ld c, c
    sub c
    ld d, $bf
    ld b, [hl]
    ld [hl], b
    ld d, b
    call Call_003_46ea
    ld a, $01
    jr jr_003_4ba1

    call Call_003_46ea
    ld a, $02

jr_003_4ba1:
    ld [$d1eb], a

jr_003_4ba4:
    ld hl, $4bb2
    call Call_003_46f5
    jr nc, jr_003_4ba4

    and $7f
    ld [$d0ec], a
    ret


    cp b
    ld c, e
    ret c

    ld c, e
    ld b, $4c
    call $2c8a
    cp $04
    jr z, jr_003_4bc6

    cp $07
    jr z, jr_003_4bc6

jr_003_4bc3:
    ld a, $02
    ret


jr_003_4bc6:
    ld hl, $dca9
    ld a, [hl+]
    and a
    jr z, jr_003_4bc3

    ld a, [hl+]
    and a
    jr z, jr_003_4bc3

    ld a, [hl]
    and a
    jr z, jr_003_4bc3

    ld a, $01
    ret


    ld hl, $dca9
    ld de, $d146
    ld bc, $0003
    call $3026
    call Call_003_4706
    ld a, [$d1eb]
    cp $02
    jr nz, jr_003_4bf7

    ld hl, $4c35
    call $31cd
    ld a, $81
    ret


jr_003_4bf7:
    ld a, $22
    ld hl, $6e4e
    rst $08
    ld hl, $4c2b
    call $31cd
    ld a, $81
    ret


    ld a, [$d1eb]
    cp $02
    jr nz, jr_003_4c19

    ld hl, $4c26
    call $1d4f
    call $0a80
    call $1c17

jr_003_4c19:
    ld a, $80
    ret


    ld d, $de
    ld b, [hl]
    ld [hl], b
    ld d, b
    ld d, $ed
    ld b, [hl]
    ld [hl], b
    ld d, b
    ld d, $05
    ld b, a
    ld [hl], b
    ld d, b
    ld a, h
    rrca
    dec [hl]
    nop
    ld c, h
    ld hl, $034c
    inc a
    ld c, h
    ld a, h
    rrca
    dec [hl]
    nop
    ld c, h
    inc e
    ld c, h
    ld d, h
    ld c, c
    add l
    inc de
    nop
    ld l, c
    nop
    ld e, c
    ld c, h
    ld bc, $c104
    ld h, d
    rrca
    nop
    nop
    ld e, $08
    nop
    adc d
    push af
    add l
    inc d
    nop
    ld l, c
    nop
    ld e, l
    ld c, h
    sub c
    ld c, a
    jr nz, jr_003_4c99

    ld b, a
    inc a
    ld e, b
    jr nz, jr_003_4ca8

    call Call_003_46ea

jr_003_4c64:
    ld hl, $4c72
    call Call_003_46f5
    jr nc, jr_003_4c64

    and $7f
    ld [$d0ec], a
    ret


    ld a, b
    ld c, h
    sbc h
    ld c, h
    xor b
    ld c, h
    call $2c8a
    call $22ee
    jr z, jr_003_4c82

    jr jr_003_4c99

jr_003_4c82:
    ld a, [$dcb2]
    ld d, a
    ld a, [$dcb3]
    ld e, a
    ld a, $05
    ld hl, $5344
    rst $08
    jr nc, jr_003_4c99

    ld a, c
    ld [$d001], a
    ld a, $01
    ret


jr_003_4c99:
    ld a, $02
    ret


    call Call_003_4706
    ld hl, $4cbb
    call $31cd
    ld a, $81
    ret


jr_003_4ca8:
    ld hl, $4cb6
    call $1d67
    ld a, $80
    ret


    ld d, $1a
    ld b, a
    ld [hl], b
    ld d, b
    ld d, $3b
    ld b, a
    ld [hl], b
    ld d, b
    ld a, h
    rrca
    dec [hl]
    nop
    ld c, h
    or c
    ld c, h
    adc e
    inc a
    ld a, h
    ld c, c
    add l
    inc de
    nop
    ld l, c
    nop
    pop hl
    ld c, h
    ld bc, $c104
    ld h, d
    rrca
    nop
    nop
    ld e, $08
    nop
    adc d
    db $f4
    add l
    inc d
    nop
    ld l, c
    nop
    db $e3
    ld c, h
    sub c
    ld c, h
    ld b, a
    ld c, l
    ld b, a
    call Call_003_4cee
    and $7f
    ld [$d0ec], a
    ret


Call_003_4cee:
    ld de, $001d
    call Call_003_4731
    jr c, jr_003_4d06

    jr jr_003_4d09

    ld hl, $4d01
    call $1d67
    ld a, $80
    ret


    ld d, $51
    ld b, a
    ld [hl], b
    ld d, b

jr_003_4d06:
    ld a, $80
    ret


jr_003_4d09:
    ld hl, $4d29
    call $31cd
    ld a, $81
    ret


    ld hl, $dbf5
    set 0, [hl]
    ld a, [$d109]
    ld e, a
    ld d, $00
    ld hl, $dcd8
    add hl, de
    ld a, [hl]
    ld [$d1ef], a
    call Call_003_4706
    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld c, $03
    ld [de], a
    ld c, l
    ld c, h
    ld b, c
    ld c, l
    add hl, de
    rst $28
    pop de
    add h
    nop
    nop
    adc e
    inc bc
    ld c, h
    ld b, [hl]
    ld c, l
    ld c, c
    sub c
    ld d, $74
    ld b, a
    ld [hl], b
    ld d, b
    ld d, $88
    ld b, a
    ld [hl], b
    ld d, b
    ld c, $03
    ld a, b
    ld c, l
    ld [$4d5f], sp
    ld b, $01
    ld e, c
    ld c, l
    inc bc
    ld e, h
    ld c, l
    ld d, e
    ld [hl], e
    ld c, l
    ld d, e
    ld l, [hl]
    ld c, l
    ld b, a
    ld c, h
    ld l, c
    ld c, l
    ld c, [hl]
    add hl, bc
    dec l
    ld c, l
    ld c, c
    sub c
    ld d, $a0
    ld b, a
    ld [hl], b
    ld d, b
    ld d, $d8
    ld b, a
    ld [hl], b
    ld d, b
    ld d, $f4
    ld b, a
    ld [hl], b
    ld d, b
    ld d, $46
    call Call_003_4742
    jr c, jr_003_4d92

    ld de, $001d
    call Call_003_4721
    jr c, jr_003_4d92

    ld hl, $dbf5
    bit 0, [hl]
    jr z, jr_003_4d96

    ld a, $02
    jr jr_003_4d99

jr_003_4d92:
    ld a, $01
    jr jr_003_4d99

jr_003_4d96:
    xor a
    jr jr_003_4d99

jr_003_4d99:
    ld [$c2dd], a
    ret


    call Call_003_46ea

jr_003_4da0:
    ld hl, $4dae
    call Call_003_46f5
    jr nc, jr_003_4da0

    and $7f
    ld [$d0ec], a
    ret


    or h
    ld c, l
    jp z, $d34d

    ld c, l
    ld de, $0021
    call Call_003_4731
    jr c, jr_003_4dc7

    call Call_003_4dde
    jr c, jr_003_4dc4

    ld a, $01
    ret


jr_003_4dc4:
    ld a, $02
    ret


jr_003_4dc7:
    ld a, $80
    ret


    ld hl, $4e0b
    call $31cd
    ld a, $81
    ret


    call Call_003_4779
    ld a, $80
    ret


    ld d, $16
    ld c, b
    ld [hl], b
    ld d, b

Call_003_4dde:
    call $2a07
    ld c, a
    push de
    call $18b4
    pop de
    jr c, jr_003_4e09

    call $2a66
    ld c, [hl]
    push hl
    ld hl, $48a4
    call Call_003_4840
    pop hl
    jr nc, jr_003_4e09

    ld a, l
    ld [$d1ec], a
    ld a, h
    ld [$d1ed], a
    ld a, b
    ld [$d1ee], a
    ld a, c
    ld [$d1ef], a
    xor a
    ret


jr_003_4e09:
    scf
    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld c, $03
    ld b, $47
    ld c, h
    reti


    ld c, l
    ld a, h
    ld c, $03
    dec e
    ld c, [hl]
    ld c, c
    sub c
    ld hl, $d1ec
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d1ee]
    ld [hl], a
    xor a
    ldh [$d4], a
    call $2173
    ld a, [$d1ef]
    ld e, a
    ld a, $23
    ld hl, $47d4
    rst $08
    call $2879
    call $2914
    ret


    ld d, $fa
    call Call_003_4742
    jr c, jr_003_4e5c

    ld de, $0021
    call Call_003_4721
    jr c, jr_003_4e5c

    call Call_003_4dde
    jr c, jr_003_4e5c

    ld a, $03
    ld hl, $4e6e
    call $261f
    scf
    ret


jr_003_4e5c:
    ld a, $03
    ld hl, $4e66
    call $261f
    scf
    ret


    ld d, e
    ld l, c
    ld c, [hl]
    ld d, $2b
    ld c, b
    ld [hl], b
    ld d, b
    ld b, a
    ld c, h
    ld a, b
    ld c, [hl]
    ld c, [hl]
    add hl, bc
    rrca
    ld c, [hl]
    ld c, c
    sub c
    ld d, $64
    ld c, b
    ld [hl], b
    ld d, b
    call Call_003_4e86
    and $7f
    ld [$d0ec], a
    ret


Call_003_4e86:
    call $2a07
    call $189a
    jr nz, jr_003_4e97

    ld hl, $4ea7
    call $31cd
    ld a, $81
    ret


jr_003_4e97:
    call Call_003_4779
    ld a, $80
    ret


    ld d, $97
    ld c, b
    ld [hl], b
    ld d, b
    ld d, $ac
    ld c, b
    ld [hl], b
    ld d, b
    ld a, h
    rrca
    dec [hl]
    nop
    ld c, $03
    ld b, $47
    ld c, h
    sbc l
    ld c, [hl]
    ld a, h
    ld c, $23
    ld a, [bc]
    ld c, b
    ld c, $2e
    ld [$0841], a
    jp $494e


    ld e, e
    ld e, a
    ld h, b
    sub c
    ld c, h
    and d
    ld c, [hl]
    ld d, h
    ld c, c
    sub c
    ld d, $1d
    call Call_003_4742
    jr c, jr_003_4eda

    ld a, $03
    ld hl, $4edc
    call $261f
    scf
    ret


jr_003_4eda:
    xor a
    ret


    ld b, a
    ld c, h
    and $4e
    ld c, [hl]
    add hl, bc
    xor e
    ld c, [hl]
    ld c, c
    sub c
    ld d, $bc
    ld c, b
    ld [hl], b
    ld d, b
    call Call_003_4ef4
    and $7f
    ld [$d0ec], a
    ret


Call_003_4ef4:
    call Call_003_4f0d
    jr c, jr_003_4f07

    ld a, d
    cp $18
    jr nz, jr_003_4f07

    ld hl, $4f2e
    call $31cd
    ld a, $81
    ret


jr_003_4f07:
    call Call_003_4779
    ld a, $80
    ret


Call_003_4f0d:
    ld a, $01
    ld hl, $6fd9
    rst $08
    jr nc, jr_003_4f2c

    ldh a, [$b0]
    call $1ae5
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    ldh [$e0], a
    call $18d2
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld d, a
    and a
    ret


jr_003_4f2c:
    scf
    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld c, $03
    ld b, $47
    ld c, h
    ld e, b
    ld c, a
    ld c, c
    rrca
    dec sp
    nop
    add l
    dec de
    nop
    ld a, b
    ld d, h
    ld l, d
    ld d, l
    ld c, a
    ld l, [hl]
    cp $0e
    ld l, $19
    ld b, d
    add hl, de
    ld l, $d2
    ld [$4f54], sp
    ld e, e
    ld e, a
    ld h, b
    sub c
    ld d, a
    ld a, [bc]
    ld b, a
    ld d, $f0
    ld c, b
    ld [hl], b
    ld d, b
    ld c, $03
    ld a, h
    ld c, a
    ld b, $01
    ld l, a
    ld c, a
    ld b, a
    ld c, h
    ld [hl], a
    ld c, a
    ld c, [hl]
    add hl, bc
    ld [hl-], a
    ld c, a
    ld c, c
    sub c
    ld d, e
    ld [hl], d
    ld c, a
    ld d, $06
    ld c, c
    ld [hl], b
    ld d, b
    ld d, $24
    ld c, c
    ld [hl], b
    ld d, b
    ld d, $f9
    call Call_003_4742
    jr nc, jr_003_4f87

    ld a, $01
    jr jr_003_4f8a

jr_003_4f87:
    xor a
    jr jr_003_4f8a

jr_003_4f8a:
    ld [$c2dd], a
    ret


    ld a, e
    push af
    call Call_003_46ea
    pop af
    ld [$d1eb], a

jr_003_4f97:
    ld hl, $4fa5
    call Call_003_46f5
    jr nc, jr_003_4f97

    and $7f
    ld [$d0ec], a
    ret


    xor a
    ld c, a
    ld [bc], a
    ld d, b
    db $f4
    ld c, a
    pop af
    ld c, a
    db $10
    ld d, b
    ld a, [$d95d]
    cp $04
    jr z, jr_003_4fc4

    cp $08
    jr z, jr_003_4fc4

    call $2a07
    call $185d
    cp $01
    jr z, jr_003_4fc7

jr_003_4fc4:
    ld a, $03
    ret


jr_003_4fc7:
    call $2d19
    and a
    jr nz, jr_003_4fd0

    ld a, $04
    ret


jr_003_4fd0:
    ld d, a
    ld a, [$d1eb]
    ld e, a
    ld a, $24
    ld hl, $6402
    rst $08
    ld a, d
    and a
    jr z, jr_003_4fee

    ld [$d22e], a
    ld a, e
    ld [$d143], a
    ld a, $04
    ld [$d230], a
    ld a, $02
    ret


jr_003_4fee:
    ld a, $01
    ret


    ld a, $80
    ret


    ld a, $01
    ld [$d1ef], a
    ld hl, $5035
    call $31cd
    ld a, $81
    ret


    ld a, $02
    ld [$d1ef], a
    ld hl, $501e
    call $31cd
    ld a, $81
    ret


    ld a, $00
    ld [$d1ef], a
    ld hl, $5027
    call $31cd
    ld a, $81
    ret


    nop
    ld a, h
    ld d, b
    ld c, h
    xor c
    ld d, b

jr_003_5024:
    inc bc
    dec l
    ld d, b
    nop
    ld a, h
    ld d, b
    ld c, h
    xor c
    ld d, b
    ld [hl], h
    ld [$030e], sp
    sub l
    ld d, b
    ld c, c
    sub c
    nop
    ld a, h
    ld d, b
    ld c, $03
    ld l, h
    ld d, b
    ld [$5046], sp
    ld l, c
    nop
    ld h, d
    ld d, b
    inc bc
    ld c, d
    ld d, b
    ld l, c
    nop
    ld e, h
    ld d, b
    adc e
    jr z, jr_003_50b6

    nop
    ld l, c
    ld d, b
    ld c, h
    and h
    ld d, b
    ld c, $03
    sub l
    ld d, b
    ld c, c
    ld e, e
    ld e, a
    ld h, b
    sub c
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, h
    ld b, a
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld a, $54
    ld b, a
    ld d, e
    ld d, d
    ld b, a
    ld a, [$d4de]
    and $0c
    cp $04
    ld a, $01
    jr z, jr_003_5078

    xor a

jr_003_5078:
    ld [$c2dd], a
    ret


    ld a, h
    dec de
    call nc, $00ff
    rrca
    dec [hl]
    nop
    ld [hl], h
    add hl, bc
    ld c, $2e
    or e
    ld b, h
    ld [hl], h
    nop
    ld l, c
    nop
    sub e
    ld d, b
    adc e
    jr z, jr_003_5024

    ld d, d
    ld b, a
    xor a
    ldh [$d4], a
    ld a, $01
    ld [$d4e1], a
    call $1ad2
    call $0e4a
    ret


    ld d, $58
    ld c, c
    ld [hl], b
    ld d, b
    ld d, $65
    ld c, c
    ld [hl], b
    ld d, b
    ld d, $79
    ld c, c
    ld [hl], b
    ld d, b
    call Call_003_50bc

jr_003_50b6:
    and $7f
    ld [$d0ec], a
    ret


Call_003_50bc:
    call Call_003_5121
    jr c, jr_003_5110

    ld a, [$d95d]
    cp $00
    jr z, jr_003_50ce

    cp $01
    jr z, jr_003_50f7

    jr jr_003_5110

jr_003_50ce:
    ld hl, $513e
    ld de, $514e
    call Call_003_5119
    call $31cd
    xor a
    ld [$c2a7], a
    ld de, $0000
    call $3b97
    call $045a
    call $3c97
    ld de, $0013
    ld a, e
    ld [$c2c0], a
    call $3b97
    ld a, $01
    ret


jr_003_50f7:
    ld hl, $dbf5
    bit 1, [hl]
    jr nz, jr_003_510b

    ld hl, $5158
    ld de, $516b
    call Call_003_5119
    ld a, $03
    jr jr_003_5113

jr_003_510b:
    ld hl, $5171
    jr jr_003_5113

jr_003_5110:
    ld a, $00
    ret


jr_003_5113:
    call $31cd
    ld a, $01
    ret


Call_003_5119:
    ld a, [$d0ef]
    and a
    ret z

    ld h, d
    ld l, e
    ret


Call_003_5121:
    call $2c8a
    call $22ee
    jr z, jr_003_5133

    cp $04
    jr z, jr_003_5133

    cp $06
    jr z, jr_003_5133

    jr jr_003_513c

jr_003_5133:
    call $184a
    and $0f
    jr nz, jr_003_513c

    xor a
    ret


jr_003_513c:
    scf
    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld e, $08
    ld bc, $7c4c
    ld d, c
    ld d, h
    ld c, c
    rrca
    jr c, jr_003_514d

jr_003_514d:
    sub c
    ld e, $08
    ld bc, $0f49
    jr c, jr_003_5155

jr_003_5155:
    sub c
    nop
    ret


    ld a, h
    rrca
    dec [hl]
    nop
    ld e, $08
    nop
    ld c, h
    add c
    ld d, c
    ld d, h
    ld c, c
    rrca
    jr c, jr_003_5167

jr_003_5167:
    rrca
    inc a
    nop
    sub c
    ld e, $08
    nop
    inc bc
    ld h, e
    ld d, c
    ld c, h
    ld [hl], a
    ld d, c
    ld d, h
    ld c, c
    sub c
    ld d, $9a
    ld c, c
    ld [hl], b
    ld d, b
    ld d, $b2
    ld c, c
    ld [hl], b
    ld d, b
    ld d, $c7
    ld c, c
    ld [hl], b
    ld d, b
    ld d, $0f
    call Call_003_4742
    jr c, jr_003_519f

    ld de, $001c
    call Call_003_4721
    jr c, jr_003_519f

    ld a, $03
    ld hl, $51a9
    call $261f
    scf
    ret


jr_003_519f:
    ld a, $03
    ld hl, $51cd
    call $261f
    scf
    ret


    ld b, a
    ld c, h
    ret z

    ld d, c
    ld c, [hl]
    ld [$51b8], sp
    ld c, $03
    cp d
    ld d, c
    add hl, bc
    ld [bc], a
    ld c, b
    ld c, c
    sub c
    xor a
    ld [$c2dd], a
    call Call_003_47ce
    ret c

    ld a, $01
    ld [$c2dd], a
    ret


    ld d, $dd
    ld c, c
    ld [hl], b
    ld d, b
    ld d, e
    ret nc

    ld d, c
    ld d, $05
    ld c, d
    ld [hl], b
    ld d, b
    call Call_003_527b
    jp nz, Jump_003_529c

    push hl
    call Call_003_543d
    pop de
    ld a, [$d142]
    dec a
    ld hl, $51e9
    rst $28
    ret


    pop af
    ld d, c
    or $51
    ei
    ld d, c
    ld bc, $6252
    ld l, e
    jp Jump_003_529c


    ld h, d
    ld l, e
    jp Jump_003_535a


    ld hl, $d8d7
    jp Jump_003_529c


    ld h, d
    ld l, e
    ld a, [$d106]
    ld c, a
    call Call_003_5407
    jp Jump_003_53c4


    call Call_003_527b
    jr nz, jr_003_5241

    push hl
    call Call_003_543d
    pop de
    ld a, [$d142]
    dec a
    ld hl, $5220
    rst $28
    ret


    ccf
    ld d, d
    ld a, [hl-]
    ld d, d
    jr z, jr_003_5278

    ld l, $52
    ld hl, $d8d7
    jp Jump_003_52ff


    ld h, d
    ld l, e
    ld a, [$d106]
    ld c, a
    call Call_003_5407
    jp Jump_003_53d8


    ld h, d
    ld l, e
    jp Jump_003_5374


    ld h, d
    ld l, e

jr_003_5241:
    jp Jump_003_52ff


    call Call_003_527b
    jr nz, jr_003_5278

    push hl
    call Call_003_543d
    pop de
    ld a, [$d142]
    dec a
    ld hl, $5257
    rst $28
    ret


    db $76
    ld d, d
    ld [hl], c
    ld d, d
    ld e, a
    ld d, d
    ld h, l
    ld d, d
    ld hl, $d8d7
    jp Jump_003_5349


    ld h, d
    ld l, e
    ld a, [$d106]
    ld c, a
    call Call_003_5407
    jp Jump_003_53fb


    ld h, d
    ld l, e
    jp Jump_003_53b1


    ld h, d
    ld l, e

jr_003_5278:
    jp Jump_003_5349


Call_003_527b:
    ld a, l
    cp $92
    ret nz

    ld a, h
    cp $d8
    ret


Call_003_5283:
    ld c, $14
    ld a, e
    cp $92
    jr nz, jr_003_528e

    ld a, d
    cp $d8
    ret z

jr_003_528e:
    ld c, $32
    ld a, e
    cp $f1
    jr nz, jr_003_5299

    ld a, d
    cp $d8
    ret z

jr_003_5299:
    ld c, $0c
    ret


Jump_003_529c:
    ld d, h
    ld e, l
    inc hl
    ld a, [$d106]
    ld c, a
    ld b, $00

jr_003_52a5:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_52bd

    cp c
    jr nz, jr_003_52ba

    ld a, $63
    sub [hl]
    add b
    ld b, a
    ld a, [$d10c]
    cp b
    jr z, jr_003_52c6

    jr c, jr_003_52c6

jr_003_52ba:
    inc hl
    jr jr_003_52a5

jr_003_52bd:
    call Call_003_5283
    ld a, [de]
    cp c
    jr c, jr_003_52c6

    and a
    ret


jr_003_52c6:
    ld h, d
    ld l, e
    ld a, [$d106]
    ld c, a
    ld a, [$d10c]
    ld [$d10d], a

jr_003_52d2:
    inc hl
    ld a, [hl+]
    cp $ff
    jr z, jr_003_52ef

    cp c
    jr nz, jr_003_52d2

    ld a, [$d10d]
    add [hl]
    cp $64
    jr nc, jr_003_52e6

    ld [hl], a
    jr jr_003_52fd

jr_003_52e6:
    ld [hl], $63
    sub $63
    ld [$d10d], a
    jr jr_003_52d2

jr_003_52ef:
    dec hl
    ld a, [$d106]
    ld [hl+], a
    ld a, [$d10d]
    ld [hl+], a
    ld [hl], $ff
    ld h, d
    ld l, e
    inc [hl]

jr_003_52fd:
    scf
    ret


Jump_003_52ff:
    ld d, h
    ld e, l
    ld a, [hl+]
    ld c, a
    ld a, [$d107]
    cp c
    jr nc, jr_003_5318

    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [$d106]
    cp [hl]
    inc hl
    jr z, jr_003_5327

    ld h, d
    ld l, e
    inc hl

jr_003_5318:
    ld a, [$d106]
    ld b, a

jr_003_531c:
    ld a, [hl+]
    cp b
    jr z, jr_003_5327

    cp $ff
    jr z, jr_003_5347

    inc hl
    jr jr_003_531c

jr_003_5327:
    ld a, [$d10c]
    ld b, a
    ld a, [hl]
    sub b
    jr c, jr_003_5347

    ld [hl], a
    ld [$d10d], a
    and a
    jr nz, jr_003_5345

    dec hl
    ld b, h
    ld c, l
    inc hl
    inc hl

jr_003_533b:
    ld a, [hl+]
    ld [bc], a
    inc bc
    cp $ff
    jr nz, jr_003_533b

    ld h, d
    ld l, e
    dec [hl]

jr_003_5345:
    scf
    ret


jr_003_5347:
    and a
    ret


Jump_003_5349:
    ld a, [$d106]
    ld c, a

jr_003_534d:
    inc hl
    ld a, [hl+]
    cp $ff
    jr z, jr_003_5358

    cp c
    jr nz, jr_003_534d

    scf
    ret


jr_003_5358:
    and a
    ret


Jump_003_535a:
    ld hl, $d8bc
    ld a, [hl+]
    cp $19
    jr nc, jr_003_5372

    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$d106]
    ld [hl+], a
    ld [hl], $ff
    ld hl, $d8bc
    inc [hl]
    scf
    ret


jr_003_5372:
    and a
    ret


Jump_003_5374:
    ld a, [$d107]
    ld e, a
    ld d, $00
    ld hl, $d8bc
    ld a, [hl]
    cp e
    jr nc, jr_003_5387

    call Call_003_5396
    ret nc

    jr jr_003_538a

jr_003_5387:
    dec [hl]
    inc hl
    add hl, de

jr_003_538a:
    ld d, h
    ld e, l
    inc hl

jr_003_538d:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $ff
    jr nz, jr_003_538d

    scf
    ret


Call_003_5396:
    ld hl, $d8bc
    ld a, [$d106]
    ld c, a

jr_003_539d:
    inc hl
    ld a, [hl]
    cp c
    jr z, jr_003_53a8

    cp $ff
    jr nz, jr_003_539d

    xor a
    ret


jr_003_53a8:
    ld a, [$d8bc]
    dec a
    ld [$d8bc], a
    scf
    ret


Jump_003_53b1:
    ld a, [$d106]
    ld c, a
    ld hl, $d8bd

jr_003_53b8:
    ld a, [hl+]
    cp c
    jr z, jr_003_53c2

    cp $ff
    jr nz, jr_003_53b8

    and a
    ret


jr_003_53c2:
    scf
    ret


Jump_003_53c4:
    dec c
    ld b, $00
    ld hl, $d859
    add hl, bc
    ld a, [$d10c]
    add [hl]
    cp $64
    jr nc, jr_003_53d6

    ld [hl], a
    scf
    ret


jr_003_53d6:
    and a
    ret


Jump_003_53d8:
    dec c
    ld b, $00
    ld hl, $d859
    add hl, bc
    ld a, [$d10c]
    ld b, a
    ld a, [hl]
    sub b
    jr c, jr_003_53f9

    ld [hl], a
    ld [$d10d], a
    jr nz, jr_003_53f7

    ld a, [$d0e2]
    and a
    jr z, jr_003_53f7

    dec a
    ld [$d0e2], a

jr_003_53f7:
    scf
    ret


jr_003_53f9:
    and a
    ret


Jump_003_53fb:
    dec c
    ld b, $00
    ld hl, $d859
    add hl, bc
    ld a, [hl]
    and a
    ret z

    scf
    ret


Call_003_5407:
    ld a, c
    cp $c3
    jr c, jr_003_5412

    cp $dc
    jr c, jr_003_5411

    dec a

jr_003_5411:
    dec a

jr_003_5412:
    sub $bf
    inc a
    ld c, a
    ret


    ld a, c
    cp $05
    jr c, jr_003_5422

    cp $1d
    jr c, jr_003_5421

    inc a

jr_003_5421:
    inc a

jr_003_5422:
    add $bf
    dec a
    ld c, a
    ret


    ld a, $04
    call Call_003_5460
    bit 7, a
    jr nz, jr_003_547f

    and a
    ret


    ld a, $04
    call Call_003_5460
    bit 6, a
    jr nz, jr_003_547f

    and a
    ret


Call_003_543d:
    ld a, $05
    call Call_003_5460
    and $0f
    ld [$d142], a
    ret


    ld a, $06
    call Call_003_5460
    and $0f
    ld [$d142], a
    ret


    ld a, $06
    call Call_003_5460
    swap a
    and $0f
    ld [$d142], a
    ret


Call_003_5460:
    push hl
    push bc
    ld hl, $67c1
    ld c, a
    ld b, $00
    add hl, bc
    xor a
    ld [$d142], a
    ld a, [$d106]
    dec a
    ld c, a
    ld a, $07
    call $30fe
    ld a, $01
    call $304d
    pop bc
    pop hl
    ret


jr_003_547f:
    ld a, $01
    ld [$d142], a
    scf
    ret


    push hl
    push bc
    ld a, $00
    call Call_003_5460
    ld e, a
    ld a, $01
    call Call_003_5460
    ld d, a
    pop bc
    pop hl
    ret


    ld a, [$d150]
    and a
    ret z

    bit 7, a
    jr nz, jr_003_54a9

    bit 6, a
    jr nz, jr_003_54b3

    bit 5, a
    jr nz, jr_003_54b8

    ret


jr_003_54a9:
    ld a, $04
    ld [$d13f], a
    call Call_003_5536
    jr jr_003_54b8

jr_003_54b3:
    call Call_003_5511
    jr jr_003_54b8

jr_003_54b8:
    call Call_003_54e5
    ld a, [$d14e]
    ld d, a
    ld a, [$d14f]
    ld e, a
    ld a, [$d14c]
    sub d
    ld [$d14c], a
    ld a, [$d14d]
    sub e
    ld [$d14d], a
    ret


    ld a, [$d14e]
    ld d, a
    ld a, [$d14f]
    ld e, a
    ldh a, [$cf]
    add d
    ldh [$cf], a
    ldh a, [$d0]
    add e
    ldh [$d0], a
    ret


Call_003_54e5:
    ld hl, $d13f
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld a, [hl]
    ld hl, $54f2
    rst $28
    ret


    inc d
    add hl, hl
    ld a, c
    jr z, @+$0b

    ld d, l
    db $10
    ld d, l
    ld [$0855], sp
    ld d, l
    ld [$0855], sp
    ld d, l
    ld [$0855], sp
    ld d, l
    ld [$c955], sp
    ld a, $41
    ld hl, $602e
    rst $08
    ret


    ret


Call_003_5511:
    ld a, [$d151]
    and a
    jr nz, jr_003_551c

    ld hl, $dcb7
    inc [hl]
    ret


jr_003_551c:
    cp $01
    jr nz, jr_003_5525

    ld hl, $dcb7
    dec [hl]
    ret


jr_003_5525:
    cp $02
    jr nz, jr_003_552e

    ld hl, $dcb8
    dec [hl]
    ret


jr_003_552e:
    cp $03
    ret nz

    ld hl, $dcb8
    inc [hl]
    ret


Call_003_5536:
    ld a, [$d151]
    and a
    jr z, jr_003_5549

    cp $01
    jr z, jr_003_5553

    cp $02
    jr z, jr_003_555d

    cp $03
    jr z, jr_003_5567

    ret


jr_003_5549:
    call Call_003_5571
    call $217a
    call $2748
    ret


jr_003_5553:
    call Call_003_55a2
    call $217a
    call $272a
    ret


jr_003_555d:
    call Call_003_55d5
    call $217a
    call $2771
    ret


jr_003_5567:
    call Call_003_55fe
    call $217a
    call $278f
    ret


Call_003_5571:
    ld a, [$d152]
    add $40
    ld [$d152], a
    jr nc, jr_003_5586

    ld a, [$d153]
    inc a
    and $03
    or $98
    ld [$d153], a

jr_003_5586:
    ld hl, $d196
    inc [hl]
    ld a, [hl]
    cp $02
    jr nz, jr_003_5594

    ld [hl], $00
    call Call_003_5595

jr_003_5594:
    ret


Call_003_5595:
    ld hl, $d194
    ld a, [$d19f]
    add $06
    add [hl]
    ld [hl+], a
    ret nc

    inc [hl]
    ret


Call_003_55a2:
    ld a, [$d152]
    sub $40
    ld [$d152], a
    jr nc, jr_003_55b7

    ld a, [$d153]
    dec a
    and $03
    or $98
    ld [$d153], a

jr_003_55b7:
    ld hl, $d196
    dec [hl]
    ld a, [hl]
    cp $ff
    jr nz, jr_003_55c5

    ld [hl], $01
    call Call_003_55c6

jr_003_55c5:
    ret


Call_003_55c6:
    ld hl, $d194
    ld a, [$d19f]
    add $06
    ld b, a
    ld a, [hl]
    sub b
    ld [hl+], a
    ret nc

    dec [hl]
    ret


Call_003_55d5:
    ld a, [$d152]
    ld e, a
    and $e0
    ld d, a
    ld a, e
    sub $02
    and $1f
    or d
    ld [$d152], a
    ld hl, $d197
    dec [hl]
    ld a, [hl]
    cp $ff
    jr nz, jr_003_55f3

    ld [hl], $01
    call Call_003_55f4

jr_003_55f3:
    ret


Call_003_55f4:
    ld hl, $d194
    ld a, [hl]
    sub $01
    ld [hl+], a
    ret nc

    dec [hl]
    ret


Call_003_55fe:
    ld a, [$d152]
    ld e, a
    and $e0
    ld d, a
    ld a, e
    add $02
    and $1f
    or d
    ld [$d152], a
    ld hl, $d197
    inc [hl]
    ld a, [hl]
    cp $02
    jr nz, jr_003_561c

    ld [hl], $00
    call Call_003_561d

jr_003_561c:
    ret


Call_003_561d:
    ld hl, $d194
    ld a, [hl]
    add $01
    ld [hl+], a
    ret nc

    inc [hl]
    ret


Call_003_5627:
    call Call_003_565f
    jr c, jr_003_5645

    call Call_003_5670

jr_003_562f:
    push bc
    push hl
    call Call_003_56e2
    pop hl
    pop bc
    push af
    push bc
    push hl
    call Call_003_5730
    call Call_003_57c9
    pop hl
    pop bc
    pop af
    jr nc, jr_003_562f

    ret


jr_003_5645:
    call Call_003_5670

jr_003_5648:
    push bc
    push hl
    call Call_003_56f5
    pop hl
    pop bc
    ret c

    push af
    push bc
    push hl
    call Call_003_5749
    call Call_003_57c9
    pop hl
    pop bc
    pop af
    jr nc, jr_003_5648

    ret


Call_003_565f:
    ld a, [$d1eb]
    and a
    jr nz, jr_003_566e

    ld a, [$d1ea]
    cp $30
    jr nc, jr_003_566e

    and a
    ret


jr_003_566e:
    scf
    ret


Call_003_5670:
    push hl
    ld hl, $d1ea
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    pop hl
    call Call_003_4699
    ld a, e
    ld [$d1f1], a
    ld a, [$d1ee]
    ld c, a
    ld a, [$d1ef]
    ld b, a
    ld a, [$d1ea]
    ld e, a
    ld a, [$d1eb]
    ld d, a
    call Call_003_4699
    ld a, e
    ld [$d1f2], a
    push hl
    ld hl, $d1ec
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    pop hl
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc b
    ld d, a
    jr c, jr_003_56c1

    ld a, [$d1ec]
    ld [$d1f5], a
    ld a, [$d1ee]
    ld [$d1f6], a
    ld bc, $0001
    jr jr_003_56d9

jr_003_56c1:
    ld a, [$d1ec]
    ld [$d1f6], a
    ld a, [$d1ee]
    ld [$d1f5], a
    ld a, e
    xor $ff
    inc a
    ld e, a
    ld a, d
    xor $ff
    ld d, a
    ld bc, $ffff

jr_003_56d9:
    ld a, d
    ld [$d1f3], a
    ld a, e
    ld [$d1f4], a
    ret


Call_003_56e2:
    ld hl, $d1f1
    ld a, [$d1f2]
    cp [hl]
    jr nz, jr_003_56ed

    scf
    ret


jr_003_56ed:
    ld a, c
    add [hl]
    ld [hl], a
    call Call_003_5839
    and a
    ret


Call_003_56f5:
jr_003_56f5:
    ld hl, $d1ec
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, e
    cp [hl]
    jr nz, jr_003_5707

    inc hl
    ld a, d
    cp [hl]
    jr nz, jr_003_5707

    scf
    ret


jr_003_5707:
    ld l, e
    ld h, d
    add hl, bc
    ld a, l
    ld [$d1ec], a
    ld a, h
    ld [$d1ed], a
    push hl
    push de
    push bc
    ld hl, $d1ea
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    call Call_003_4699
    pop bc
    pop de
    pop hl
    ld a, e
    ld hl, $d1f1
    cp [hl]
    jr z, jr_003_56f5

    ld [hl], a
    and a
    ret


Call_003_5730:
    call Call_003_5784
    ld d, $06
    ld a, [$d10a]
    and $01
    ld b, a
    ld a, [$d1f1]
    ld e, a
    ld c, a
    push de
    call Call_003_5771
    pop de
    call Call_003_57b4
    ret


Call_003_5749:
    call Call_003_5784
    ld a, [$d1ec]
    ld c, a
    ld a, [$d1ed]
    ld b, a
    ld a, [$d1ea]
    ld e, a
    ld a, [$d1eb]
    ld d, a
    call Call_003_4699
    ld c, e
    ld d, $06
    ld a, [$d10a]
    and $01
    ld b, a
    push de
    call Call_003_5771
    pop de
    call Call_003_57b4
    ret


Call_003_5771:
    ld a, [$d10a]
    cp $02
    jr nz, jr_003_5780

    ld a, $28
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a

jr_003_5780:
    call $3750
    ret


Call_003_5784:
    ld a, [$d10a]
    and a
    ret z

    cp $01
    jr z, jr_003_5792

    ld de, $0016
    jr jr_003_5795

jr_003_5792:
    ld de, $0015

jr_003_5795:
    push hl
    add hl, de
    ld a, $7f
    ld [hl+], a
    ld [hl+], a
    ld [hl-], a
    dec hl
    ld a, [$d1ec]
    ld [$d087], a
    ld a, [$d1ed]
    ld [$d086], a
    ld de, $d086
    ld bc, $0203
    call $3198
    pop hl
    ret


Call_003_57b4:
    ldh a, [$e6]
    and a
    ret z

    ld hl, $d1f0
    call $334e
    ld a, [$d1f0]
    ld c, a
    ld a, $02
    ld hl, $4c43
    rst $08
    ret


Call_003_57c9:
    ldh a, [$e6]
    and a
    jr nz, jr_003_57d5

    call $045a
    call $045a
    ret


jr_003_57d5:
    ld a, [$d10a]
    and a
    jr z, jr_003_5829

    cp $01
    jr z, jr_003_582d

    ld a, [$d109]
    cp $03
    jr nc, jr_003_57ea

    ld c, $00
    jr jr_003_57ec

jr_003_57ea:
    ld c, $01

jr_003_57ec:
    push af
    cp $02
    jr z, jr_003_57ff

    cp $05
    jr z, jr_003_57ff

    ld a, $02
    ldh [$d4], a
    ld a, c
    ldh [$d5], a
    call $045a

jr_003_57ff:
    ld a, $01
    ldh [$d4], a
    ld a, c
    ldh [$d5], a
    call $045a
    pop af
    cp $02
    jr z, jr_003_5813

    cp $05
    jr z, jr_003_5813

    ret


jr_003_5813:
    inc c
    ld a, $02
    ldh [$d4], a
    ld a, c
    ldh [$d5], a
    call $045a
    ld a, $01
    ldh [$d4], a
    ld a, c
    ldh [$d5], a
    call $045a
    ret


jr_003_5829:
    ld c, $00
    jr jr_003_582f

jr_003_582d:
    ld c, $01

jr_003_582f:
    call $045a
    ld a, c
    ldh [$d5], a
    call $045a
    ret


Call_003_5839:
    ld a, [$d1ea]
    ld c, a
    ld b, $00
    ld hl, $0000
    ld a, [$d1f1]
    cp $30
    jr nc, jr_003_5885

    and a
    jr z, jr_003_5880

    call $30fe
    ld b, $00

jr_003_5851:
    ld a, l
    sub $30
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr c, jr_003_585e

    inc b
    jr jr_003_5851

jr_003_585e:
    push bc
    ld bc, $0080
    add hl, bc
    pop bc
    ld a, l
    sub $30
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr c, jr_003_586f

    inc b

jr_003_586f:
    ld a, [$d1f5]
    cp b
    jr nc, jr_003_587c

    ld a, [$d1f6]
    cp b
    jr c, jr_003_587c

    ld a, b

jr_003_587c:
    ld [$d1ec], a
    ret


jr_003_5880:
    xor a
    ld [$d1ec], a
    ret


jr_003_5885:
    ld a, [$d1ea]
    ld [$d1ec], a
    ret


Call_003_588c:
    ld de, $dcd7
    ld a, [$cf5f]
    and $0f
    jr z, jr_003_5899

    ld de, $d280

jr_003_5899:
    ld a, [de]
    inc a
    cp $07
    ret nc

    ld [de], a
    ld a, [de]
    ldh [$ae], a
    add e
    ld e, a
    jr nc, jr_003_58a7

    inc d

jr_003_58a7:
    ld a, [$d108]
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    ld hl, $ddff
    ld a, [$cf5f]
    and $0f
    jr z, jr_003_58bc

    ld hl, $d3a8

jr_003_58bc:
    ldh a, [$ae]
    dec a
    call $30f4
    ld d, h
    ld e, l
    ld hl, $d47d
    ld bc, $000b
    call $3026
    ld a, [$cf5f]
    and a
    jr nz, jr_003_58f0

    ld a, [$d108]
    ld [$d265], a
    call $343b
    ld hl, $de41
    ldh a, [$ae]
    dec a
    call $30f4
    ld d, h
    ld e, l
    ld hl, $d073
    ld bc, $000b
    call $3026

jr_003_58f0:
    ld hl, $dcdf
    ld a, [$cf5f]
    and $0f
    jr z, jr_003_58fd

    ld hl, $d288

jr_003_58fd:
    ldh a, [$ae]
    dec a
    ld bc, $0030
    call $30fe

Jump_003_5906:
    ld e, l
    ld d, h
    push hl
    ld a, [$d108]
    ld [$cf60], a
    call $3856
    ld a, [$d236]
    ld [de], a
    inc de
    ld a, [$d22d]
    and a
    ld a, $00
    jr z, jr_003_5922

    ld a, [$d207]

jr_003_5922:
    ld [de], a
    inc de
    push de
    ld h, d
    ld l, e
    ld a, [$d22d]
    and a
    jr z, jr_003_5943

    ld a, [$cf5f]
    and a
    jr nz, jr_003_5943

    ld de, $d208
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    jr jr_003_5950

jr_003_5943:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d1ea], a
    ld a, $1b
    call $2d83

jr_003_5950:
    pop de
    inc de
    inc de
    inc de
    inc de
    ld a, [$d47b]
    ld [de], a
    inc de
    ld a, [$d47c]
    ld [de], a
    inc de
    push de
    ld a, [$d143]
    ld d, a
    ld hl, $4e47
    ld a, $14
    rst $08
    pop de
    ldh a, [$b4]
    ld [de], a
    inc de
    ldh a, [$b5]
    ld [de], a
    inc de
    ldh a, [$b6]
    ld [de], a
    inc de
    xor a
    ld b, $0a

jr_003_597a:
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_597a

    pop hl
    push hl
    ld a, [$cf5f]
    and $0f
    jr z, jr_003_5992

    push hl
    ld a, $09
    ld hl, $70c4
    rst $08
    pop hl
    jr jr_003_59b5

jr_003_5992:
    ld a, [$d108]
    ld [$d265], a
    dec a
    push de
    call $3393
    ld a, [$d265]
    dec a
    call $3380
    pop de
    pop hl
    push hl
    ld a, [$d22d]
    and a
    jr nz, jr_003_59f3

    call $2f8c
    ld b, a
    call $2f8c
    ld c, a

jr_003_59b5:
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de
    push hl
    push de
    inc hl
    inc hl
    call Call_003_5a6d
    pop de
    pop hl
    inc de
    inc de
    inc de
    inc de
    ld a, $46
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [$d143]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld bc, $000a
    add hl, bc
    ld a, $01
    ld c, a
    ld b, $00
    call Call_003_617b
    ldh a, [$b5]
    ld [de], a
    inc de
    ldh a, [$b6]
    ld [de], a
    inc de
    jr jr_003_5a29

jr_003_59f3:
    ld a, [$d20c]
    ld [de], a
    inc de
    ld a, [$d20d]
    ld [de], a
    inc de
    push hl
    ld hl, $d20e
    ld b, $04

jr_003_5a03:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_5a03

    pop hl
    ld a, $46
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [$d143]
    ld [de], a
    inc de
    ld hl, $d214
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de

jr_003_5a29:
    ld a, [$d22d]
    dec a
    jr nz, jr_003_5a3b

    ld hl, $d218
    ld bc, $000c
    call $3026
    pop hl
    jr jr_003_5a45

jr_003_5a3b:
    pop hl
    ld bc, $000a
    add hl, bc
    ld b, $00
    call Call_003_6167

jr_003_5a45:
    ld a, [$cf5f]
    and $0f
    jr nz, jr_003_5a6b

    ld a, [$d108]
    cp $c9
    jr nz, jr_003_5a6b

    ld hl, $dcf4
    ld a, [$dcd7]
    dec a
    ld bc, $0030
    call $30fe
    ld a, $2d
    call $2d83
    ld hl, $7a18
    ld a, $3e
    rst $08

jr_003_5a6b:
    scf
    ret


Call_003_5a6d:
    push bc
    ld b, $04

jr_003_5a70:
    ld a, [hl+]
    and a
    jr z, jr_003_5a8f

    dec a
    push hl
    push de
    push bc
    ld hl, $5afb
    ld bc, $0007
    call $30fe
    ld de, $d073
    ld a, $10
    call $0e8d
    pop bc
    pop de
    pop hl
    ld a, [$d078]

jr_003_5a8f:
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_5a70

    pop bc
    ret


    ld hl, $dcd7
    ld a, [hl]
    cp $06
    scf
    ret z

    inc a
    ld [hl], a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$d108]
    ld [hl+], a
    ld [hl], $ff
    ld hl, $dcdf
    ld a, [$dcd7]
    dec a
    ld bc, $0030
    call $30fe
    ld e, l
    ld d, h
    ld hl, $d10e
    call $3026
    ld hl, $ddff
    ld a, [$dcd7]
    dec a
    call $30f4
    ld d, h
    ld e, l
    ld hl, $d3a8
    ld a, [$d109]
    call $30f4
    ld bc, $000b
    call $3026
    ld hl, $de41
    ld a, [$dcd7]
    dec a
    call $30f4
    ld d, h
    ld e, l
    ld hl, $d3ea
    ld a, [$d109]
    call $30f4
    ld bc, $000b
    call $3026
    ld a, [$d108]
    ld [$d265], a
    cp $fd
    jr z, jr_003_5b12

    dec a
    call $3380
    ld hl, $dcfa
    ld a, [$dcd7]
    dec a
    ld bc, $0030
    call $30fe
    ld [hl], $46

jr_003_5b12:
    ld a, [$d108]
    cp $c9
    jr nz, jr_003_5b3d

    ld hl, $dcf4
    ld a, [$dcd7]
    dec a
    ld bc, $0030
    call $30fe
    ld a, $2d
    call $2d83
    ld hl, $7a18
    ld a, $3e
    rst $08
    ld a, [$def4]
    and a
    jr nz, jr_003_5b3d

    ld a, [$d234]
    ld [$def4], a

jr_003_5b3d:
    and a
    ret


    ld a, $01
    call $2fcb
    ld a, [$d10b]
    and a
    jr z, jr_003_5b60

    cp $02
    jr z, jr_003_5b60

    cp $03
    ld hl, $df0c
    jr z, jr_003_5b9b

    ld hl, $ad10
    ld a, [hl]
    cp $14
    jr nz, jr_003_5b69

    jp Jump_003_5cb1


jr_003_5b60:
    ld hl, $dcd7
    ld a, [hl]
    cp $06
    jp z, Jump_003_5cb1

jr_003_5b69:
    inc a
    ld [hl], a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$d10b]
    cp $02
    ld a, [$df0c]
    jr z, jr_003_5b7c

    ld a, [$d108]

jr_003_5b7c:
    ld [hl+], a
    ld [hl], $ff
    ld a, [$d10b]
    dec a
    ld hl, $dcdf
    ld bc, $0030
    ld a, [$dcd7]
    jr nz, jr_003_5b97

    ld hl, $ad26
    ld bc, $0020
    ld a, [$ad10]

jr_003_5b97:
    dec a
    call $30fe

jr_003_5b9b:
    push hl
    ld e, l
    ld d, h
    ld a, [$d10b]
    and a
    ld hl, $ad26
    ld bc, $0020
    jr z, jr_003_5bb7

    cp $02
    ld hl, $df0c
    jr z, jr_003_5bbd

    ld hl, $dcdf
    ld bc, $0030

jr_003_5bb7:
    ld a, [$d109]
    call $30fe

jr_003_5bbd:
    ld bc, $0020
    call $3026
    ld a, [$d10b]
    cp $03
    ld de, $df01
    jr z, jr_003_5be2

    dec a
    ld hl, $ddff
    ld a, [$dcd7]
    jr nz, jr_003_5bdc

    ld hl, $afa6
    ld a, [$ad10]

jr_003_5bdc:
    dec a
    call $30f4
    ld d, h
    ld e, l

jr_003_5be2:
    ld hl, $afa6
    ld a, [$d10b]
    and a
    jr z, jr_003_5bf5

    ld hl, $df01
    cp $02
    jr z, jr_003_5bfb

    ld hl, $ddff

jr_003_5bf5:
    ld a, [$d109]
    call $30f4

jr_003_5bfb:
    ld bc, $000b
    call $3026
    ld a, [$d10b]
    cp $03
    ld de, $def6
    jr z, jr_003_5c20

    dec a
    ld hl, $de41
    ld a, [$dcd7]
    jr nz, jr_003_5c1a

    ld hl, $b082
    ld a, [$ad10]

jr_003_5c1a:
    dec a
    call $30f4
    ld d, h
    ld e, l

jr_003_5c20:
    ld hl, $b082
    ld a, [$d10b]
    and a
    jr z, jr_003_5c33

    ld hl, $def6
    cp $02
    jr z, jr_003_5c39

    ld hl, $de41

jr_003_5c33:
    ld a, [$d109]
    call $30f4

jr_003_5c39:
    ld bc, $000b
    call $3026
    pop hl
    ld a, [$d10b]
    cp $01
    jr z, jr_003_5ca4

    cp $03
    jp z, Jump_003_5cac

    push hl
    srl a
    add $02
    ld [$cf5f], a
    ld a, $1f
    call $2d83
    ld hl, $4e1b
    ld a, $14
    rst $08
    ld a, d
    ld [$d143], a
    pop hl
    ld b, h
    ld c, l
    ld hl, $001f
    add hl, bc
    ld [hl], a
    ld hl, $0024
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $000a
    add hl, bc
    push bc
    ld b, $01
    call Call_003_6167
    pop bc
    ld a, [$d10b]
    and a
    jr nz, jr_003_5cac

    ld hl, $0020
    add hl, bc
    xor a
    ld [hl], a
    ld hl, $0022
    add hl, bc
    ld d, h
    ld e, l
    ld a, [$d108]
    cp $fd
    jr z, jr_003_5c9e

    inc hl
    inc hl
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    inc de
    ld [de], a
    jr jr_003_5cac

jr_003_5c9e:
    xor a
    ld [de], a
    inc de
    ld [de], a
    jr jr_003_5cac

jr_003_5ca4:
    ld a, [$ad10]
    dec a
    ld b, a
    call Call_003_5cb6

Jump_003_5cac:
jr_003_5cac:
    call $2fe1
    and a
    ret


Jump_003_5cb1:
    call $2fe1
    scf
    ret


Call_003_5cb6:
    ld a, b
    ld hl, $ad26
    ld bc, $0020
    call $30fe
    ld b, h
    ld c, l
    ld hl, $0017
    add hl, bc
    push hl
    push bc
    ld de, $d125
    ld bc, $0004
    call $3026
    pop bc
    ld hl, $0002
    add hl, bc
    push hl
    ld de, $d110
    ld bc, $0004
    call $3026
    pop hl
    pop de
    ld a, [$cfa9]
    push af
    ld a, [$cf5f]
    push af
    ld b, $00

jr_003_5cec:
    ld a, [hl+]
    and a
    jr z, jr_003_5d18

    ld [$d110], a
    ld a, $02
    ld [$cf5f], a
    ld a, b
    ld [$cfa9], a
    push bc
    push hl
    push de
    ld a, $03
    ld hl, $78ec
    rst $08
    pop de
    pop hl
    ld a, [$d265]
    ld b, a
    ld a, [de]
    and $c0
    add b
    ld [de], a
    pop bc
    inc de
    inc b
    ld a, b
    cp $04
    jr c, jr_003_5cec

jr_003_5d18:
    pop af
    ld [$cf5f], a
    pop af
    ld [$cfa9], a
    ret


    ld a, [$df0c]
    ld [$d108], a
    ld de, $0022
    call $3c23
    call $3c55
    call Call_003_6698
    ld a, b
    ld [$d002], a
    ld a, e
    ld [$d143], a
    xor a
    ld [$d10b], a
    jp Jump_003_5d64


    ld a, [$df45]
    ld [$d108], a
    ld de, $0022
    call $3c23
    call $3c55
    call Call_003_66b3
    ld a, b
    ld [$d002], a
    ld a, e
    ld [$d143], a
    ld a, $01
    ld [$d10b], a
    jp Jump_003_5d64


Jump_003_5d64:
    ld hl, $dcd7
    ld a, [hl]
    cp $06
    jr nz, jr_003_5d6e

    scf
    ret


jr_003_5d6e:
    inc a
    ld [hl], a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$d10b]
    and a
    ld a, [$df0c]
    ld de, $def6
    jr z, jr_003_5d86

    ld a, [$df45]
    ld de, $df2f

jr_003_5d86:
    ld [hl+], a
    ld [$cf60], a
    ld a, $ff
    ld [hl], a
    ld hl, $de41
    ld a, [$dcd7]
    dec a
    call $30f4
    push hl
    ld h, d
    ld l, e
    pop de
    call $3026
    push hl
    ld hl, $ddff
    ld a, [$dcd7]
    dec a
    call $30f4
    ld d, h
    ld e, l
    pop hl
    call $3026
    push hl
    call Call_003_5e1a
    pop hl
    ld bc, $0020
    call $3026
    call $3856
    call Call_003_5e1a
    ld b, d
    ld c, e
    ld hl, $001f
    add hl, bc
    ld a, [$d143]
    ld [hl], a
    ld hl, $0024
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $000a
    add hl, bc
    push bc
    ld b, $01
    call Call_003_6167
    ld hl, $dce1
    ld a, [$dcd7]
    dec a
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    ld a, $01
    ld [$d1ea], a
    ld a, $1b
    call $2d83
    ld a, [$dcd7]
    dec a
    ld [$d109], a
    ld a, $03
    ld hl, $4677
    rst $08
    ld a, [$d143]
    ld d, a
    ld hl, $4e47
    ld a, $14
    rst $08
    pop bc
    ld hl, $0008
    add hl, bc
    ldh a, [$b4]
    ld [hl+], a
    ldh a, [$b5]
    ld [hl+], a
    ldh a, [$b6]
    ld [hl], a
    and a
    ret


Call_003_5e1a:
    ld a, [$dcd7]
    dec a
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    ret


    ld de, $def6
    call Call_003_5e44
    xor a
    ld [$d10b], a
    jp Jump_003_6039


    ld de, $df2f
    call Call_003_5e44
    xor a
    ld [$d10b], a
    jp Jump_003_6039


Call_003_5e44:
    ld a, [$d109]
    ld hl, $de41
    call $30f4
    call $3026
    ld a, [$d109]
    ld hl, $ddff
    call $30f4
    call $3026
    ld a, [$d109]
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    ld bc, $0020
    jp $3026


Call_003_5e6e:
    ld a, $01
    call $2fcb
    ld de, $ad10
    ld a, [de]
    cp $14
    jp nc, Jump_003_5f42

    inc a
    ld [de], a
    ld a, [$d108]
    ld [$cf60], a
    ld c, a

jr_003_5e85:
    inc de
    ld a, [de]
    ld b, a
    ld a, c
    ld c, b
    ld [de], a
    inc a
    jr nz, jr_003_5e85

    call $3856
    call Call_003_5f47
    ld hl, $d47d
    ld de, $afa6
    ld bc, $000b
    call $3026
    ld a, [$d108]
    ld [$d265], a
    call $343b
    ld de, $b082
    ld hl, $d073
    ld bc, $000b
    call $3026
    ld hl, $d206
    ld de, $ad26
    ld bc, $0006
    call $3026
    ld hl, $d47b
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    push de
    ld a, [$d143]
    ld d, a
    ld hl, $4e47
    ld a, $14
    rst $08
    pop de
    ldh a, [$b4]
    ld [de], a
    inc de
    ldh a, [$b5]
    ld [de], a
    inc de
    ldh a, [$b6]
    ld [de], a
    inc de
    xor a
    ld b, $0a

jr_003_5ee5:
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_5ee5

    ld hl, $d20c
    ld b, $06

jr_003_5eef:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_003_5eef

    ld a, $46
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [$d143]
    ld [de], a
    ld a, [$d108]
    dec a
    call $3380
    ld a, [$d108]
    cp $c9
    jr nz, jr_003_5f20

    ld hl, $ad3b
    ld a, $2d
    call $2d83
    ld hl, $7a18
    ld a, $3e
    rst $08

jr_003_5f20:
    ld hl, $ad28
    ld de, $d110
    ld bc, $0004
    call $3026
    ld hl, $ad3d
    ld de, $d125
    ld bc, $0004
    call $3026
    ld b, $00
    call Call_003_5cb6
    call $2fe1
    scf
    ret


Jump_003_5f42:
    call $2fe1
    and a
    ret


Call_003_5f47:
    ld hl, $afa6
    ld bc, $000b
    call Call_003_5f5f
    ld hl, $b082
    ld bc, $000b
    call Call_003_5f5f
    ld hl, $ad26
    ld bc, $0020

Call_003_5f5f:
    ld a, [$ad10]
    cp $02
    ret c

    push hl
    call $30fe
    dec hl
    ld e, l
    ld d, h
    pop hl
    ld a, [$ad10]
    dec a
    call $30fe
    dec hl
    push hl
    ld a, [$ad10]
    dec a
    ld hl, $0000
    call $30fe
    ld c, l
    ld b, h
    pop hl

jr_003_5f83:
    ld a, [hl-]
    ld [de], a
    dec de
    dec bc
    ld a, c
    or b
    jr nz, jr_003_5f83

    ret


    ld a, [$d108]
    push af
    ld hl, $6581
    ld a, $10
    rst $08
    ld hl, $6581
    ld a, $10
    rst $08
    ld a, [$d108]
    dec a
    push af
    call $3393
    pop af
    push bc
    call $339b
    push bc
    call Call_003_588c
    pop bc
    ld a, c
    and a
    jr nz, jr_003_5fc3

    ld a, [$d108]
    dec a
    ld c, a
    ld d, $00
    ld hl, $de99
    ld b, $00
    ld a, $03
    call $2d83

jr_003_5fc3:
    pop bc
    ld a, c
    and a
    jr nz, jr_003_5fd9

    ld a, [$d108]
    dec a
    ld c, a
    ld d, $00
    ld hl, $deb9
    ld b, $00
    ld a, $03
    call $2d83

jr_003_5fd9:
    pop af
    ld [$d108], a
    ld a, [$dcd7]
    dec a
    ld bc, $0030
    ld hl, $dcdf
    call $30fe
    ld a, [$d108]
    ld [hl], a
    ld hl, $dcd7
    ld a, [hl]
    ld b, $00
    ld c, a
    add hl, bc
    ld a, $fd
    ld [hl], a
    ld a, [$dcd7]
    dec a
    ld hl, $de41
    call $30f4
    ld de, $6035
    call $30d9
    ld a, [$dcd7]
    dec a
    ld hl, $dcfa
    ld bc, $0030
    call $30fe
    ld a, [$c2cc]
    bit 1, a
    ld a, $01
    jr nz, jr_003_6022

    ld a, [$d245]

jr_003_6022:
    ld [hl], a
    ld a, [$dcd7]
    dec a
    ld hl, $dd01
    ld bc, $0030
    call $30fe
    xor a
    ld [hl+], a
    ld [hl], a
    and a
    ret


    add h
    add [hl]
    add [hl]
    ld d, b

Jump_003_6039:
    ld hl, $dcd7
    ld a, [$d10b]
    and a
    jr z, jr_003_604a

    ld a, $01
    call $2fcb
    ld hl, $ad10

jr_003_604a:
    ld a, [hl]
    dec a
    ld [hl+], a
    ld a, [$d109]
    ld c, a
    ld b, $00
    add hl, bc
    ld e, l
    ld d, h
    inc de

jr_003_6057:
    ld a, [de]
    inc de
    ld [hl+], a
    inc a
    jr nz, jr_003_6057

    ld hl, $ddff
    ld d, $05
    ld a, [$d10b]
    and a
    jr z, jr_003_606d

    ld hl, $afa6
    ld d, $13

jr_003_606d:
    ld a, [$d109]
    call $30f4
    ld a, [$d109]
    cp d
    jr nz, jr_003_607e

    ld [hl], $ff
    jp Jump_003_60f0


jr_003_607e:
    ld d, h
    ld e, l
    ld bc, $000b
    add hl, bc
    ld bc, $de41
    ld a, [$d10b]
    and a
    jr z, jr_003_6090

    ld bc, $b082

jr_003_6090:
    call $318c
    ld hl, $dcdf
    ld bc, $0030
    ld a, [$d10b]
    and a
    jr z, jr_003_60a5

    ld hl, $ad26
    ld bc, $0020

jr_003_60a5:
    ld a, [$d109]
    call $30fe
    ld d, h
    ld e, l
    ld a, [$d10b]
    and a
    jr z, jr_003_60bc

    ld bc, $0020
    add hl, bc
    ld bc, $afa6
    jr jr_003_60c3

jr_003_60bc:
    ld bc, $0030
    add hl, bc
    ld bc, $ddff

jr_003_60c3:
    call $318c
    ld hl, $de41
    ld a, [$d10b]
    and a
    jr z, jr_003_60d2

    ld hl, $b082

jr_003_60d2:
    ld bc, $000b
    ld a, [$d109]
    call $30fe
    ld d, h
    ld e, l
    ld bc, $000b
    add hl, bc
    ld bc, $de83
    ld a, [$d10b]
    and a
    jr z, jr_003_60ed

    ld bc, $b15e

jr_003_60ed:
    call $318c

Jump_003_60f0:
    ld a, [$d10b]
    and a
    jp nz, $2fe1

    ld a, [$c2dc]
    and a
    ret nz

    ld a, $00
    call $2fcb
    ld hl, $dcd7
    ld a, [$d109]
    cp [hl]
    jr z, jr_003_6131

    ld hl, $a600
    ld bc, $002f
    call $30fe
    push hl
    add hl, bc
    pop de
    ld a, [$d109]
    ld b, a

jr_003_611a:
    push bc
    push hl
    ld bc, $002f
    call $3026
    pop hl
    push hl
    ld bc, $002f
    add hl, bc
    pop de
    pop bc
    inc b
    ld a, [$dcd7]
    cp b
    jr nz, jr_003_611a

jr_003_6131:
    jp $2fe1


    ld a, $1f
    call $3917
    ld a, [hl]
    ld [$001f], a
    ld a, $00
    call $3917
    ld a, [hl]
    ld [$cf60], a
    call $3856
    ld a, $24
    call $3917
    ld d, h
    ld e, l
    push de
    ld a, $0a
    call $3917
    ld b, $01
    call Call_003_6167
    pop de
    ld a, $22
    call $3917
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ret


Call_003_6167:
    ld c, $00

jr_003_6169:
    inc c
    call Call_003_617b
    ldh a, [$b5]
    ld [de], a
    inc de
    ldh a, [$b6]
    ld [de], a
    inc de
    ld a, c
    cp $06
    jr nz, jr_003_6169

    ret


Call_003_617b:
    push hl
    push de
    push bc
    ld d, $00
    push hl
    ld hl, $d237
    dec hl
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld e, a
    pop hl
    push hl
    ld a, c
    cp $06
    jr nz, jr_003_6193

    dec hl
    dec hl

jr_003_6193:
    sla c
    ld a, d
    and a
    jr z, jr_003_61a5

    add hl, bc
    push de
    ld a, [hl-]
    ld e, a
    ld d, [hl]
    ld a, $04
    ld hl, $7b87
    rst $08
    pop de

jr_003_61a5:
    srl c
    pop hl
    push bc
    ld bc, $000b
    add hl, bc
    pop bc
    ld a, c
    cp $02
    jr z, jr_003_61e3

    cp $03
    jr z, jr_003_61ea

    cp $04
    jr z, jr_003_61ef

    cp $05
    jr z, jr_003_61f7

    cp $06
    jr z, jr_003_61f7

    push bc
    ld a, [hl]
    swap a
    and $01
    add a
    add a
    add a
    ld b, a
    ld a, [hl+]
    and $01
    add a
    add a
    add b
    ld b, a
    ld a, [hl]
    swap a
    and $01
    add a
    add b
    ld b, a
    ld a, [hl]
    and $01
    add b
    pop bc
    jr jr_003_61fb

jr_003_61e3:
    ld a, [hl]
    swap a
    and $0f
    jr jr_003_61fb

jr_003_61ea:
    ld a, [hl]
    and $0f
    jr jr_003_61fb

jr_003_61ef:
    inc hl
    ld a, [hl]
    swap a
    and $0f
    jr jr_003_61fb

jr_003_61f7:
    inc hl
    ld a, [hl]
    and $0f

jr_003_61fb:
    ld d, $00
    add e
    ld e, a
    jr nc, jr_003_6202

    inc d

jr_003_6202:
    sla e
    rl d
    srl b
    srl b
    ld a, b
    add e
    jr nc, jr_003_620f

    inc d

jr_003_620f:
    ldh [$b6], a
    ld a, d
    ldh [$b5], a
    xor a
    ldh [$b4], a
    ld a, [$d143]
    ldh [$b7], a
    call $3119
    ldh a, [$b4]
    ldh [$b3], a
    ldh a, [$b5]
    ldh [$b4], a
    ldh a, [$b6]
    ldh [$b5], a
    ld a, $64
    ldh [$b7], a
    ld a, $03
    ld b, a
    call $3124
    ld a, c
    cp $01
    ld a, $05
    jr nz, jr_003_624e

    ld a, [$d143]
    ld b, a
    ldh a, [$b6]
    add b
    ldh [$b6], a
    jr nc, jr_003_624c

    ldh a, [$b5]
    inc a
    ldh [$b5], a

jr_003_624c:
    ld a, $0a

jr_003_624e:
    ld b, a
    ldh a, [$b6]
    add b
    ldh [$b6], a
    jr nc, jr_003_625b

    ldh a, [$b5]
    inc a
    ldh [$b5], a

jr_003_625b:
    ldh a, [$b5]
    cp $04
    jr nc, jr_003_626b

    cp $03
    jr c, jr_003_6273

    ldh a, [$b6]
    cp $e8
    jr c, jr_003_6273

jr_003_626b:
    ld a, $03
    ldh [$b5], a
    ld a, $e7
    ldh [$b6], a

jr_003_6273:
    pop bc
    pop de
    pop hl
    ret


    push de
    push bc
    xor a
    ld [$cf5f], a
    call Call_003_588c
    jr nc, jr_003_62b0

    ld hl, $de41
    ld a, [$dcd7]
    dec a
    ld [$d109], a
    call $30f4
    ld d, h
    ld e, l
    pop bc
    ld a, b
    ld b, $00
    push bc
    push de
    push af
    ld a, [$d106]
    and a
    jr z, jr_003_62e1

    ld a, [$d109]
    ld hl, $dce0
    ld bc, $0030
    call $30fe
    ld a, [$d106]
    ld [hl], a
    jr jr_003_62e1

jr_003_62b0:
    ld a, [$d108]
    ld [$d204], a
    ld hl, $68eb
    ld a, $0f
    rst $08
    call Call_003_5e6e
    jp nc, Jump_003_63d4

    ld a, $02
    ld [$cf5f], a
    xor a
    ld [$d109], a
    ld de, $d050
    pop bc
    ld a, b
    ld b, $01
    push bc
    push de
    push af
    ld a, [$d106]
    and a
    jr z, jr_003_62e1

    ld a, [$d106]
    ld [$ad27], a

jr_003_62e1:
    ld a, [$d108]
    ld [$d265], a
    ld [$d204], a
    call $343b
    ld hl, $d073
    ld de, $d050
    ld bc, $000b
    call $3026
    pop af
    and a
    jp z, Jump_003_6390

    pop de
    pop bc
    pop hl
    push bc
    push hl
    ld a, [$d439]
    call $305d
    ld bc, $000b
    ld a, [$d439]
    call $0e8d
    pop hl
    inc hl
    inc hl
    ld a, [$d439]
    call $305d
    pop bc
    ld a, b
    and a
    push de
    push bc
    jr nz, jr_003_635e

    push hl
    ld a, [$d109]
    ld hl, $ddff
    call $30f4
    ld d, h
    ld e, l
    pop hl

jr_003_632f:
    ld a, [$d439]
    call $304d
    ld [de], a
    inc hl
    inc de
    cp $50
    jr nz, jr_003_632f

    ld a, [$d439]
    call $304d
    ld b, a
    push bc
    ld a, [$d109]
    ld hl, $dce5
    ld bc, $0030
    call $30fe
    ld a, $03
    ld [hl+], a
    ld [hl], $e9
    pop bc
    ld a, $13
    ld hl, $5ba3
    rst $08
    jr jr_003_63b2

jr_003_635e:
    ld a, $01
    call $2fcb
    ld de, $afa6

jr_003_6366:
    ld a, [$d439]
    call $304d
    ld [de], a
    inc hl
    inc de
    cp $50
    jr nz, jr_003_6366

    ld a, [$d439]
    call $304d
    ld b, a
    ld hl, $ad2c
    call $2f8c
    ld [hl+], a
    call $2f8c
    ld [hl], a
    call $2fe1
    ld a, $13
    ld hl, $5b92
    rst $08
    jr jr_003_63b2

Jump_003_6390:
    pop de
    pop bc
    push bc
    push de
    ld a, b
    and a
    jr z, jr_003_63a0

    ld a, $13
    ld hl, $5b83
    rst $08
    jr jr_003_63a6

jr_003_63a0:
    ld a, $13
    ld hl, $5b49
    rst $08

jr_003_63a6:
    ld a, $13
    ld hl, $5b3b
    rst $08
    pop de
    jr c, jr_003_63b2

    call Call_003_63de

jr_003_63b2:
    pop bc
    pop de
    ld a, b
    and a
    ret z

    ld hl, $63d9
    call $1057
    ld a, $01
    call $2fcb
    ld hl, $d050
    ld de, $b082
    ld bc, $000b
    call $3026
    call $2fe1
    ld b, $01
    ret


Jump_003_63d4:
    pop bc
    pop de
    ld b, $02
    ret


    ld d, $eb
    ld c, a
    ld [hl], b
    ld d, b

Call_003_63de:
    push de
    call $1d6e
    call $2ed3
    pop de
    push de
    ld b, $00
    ld a, $04
    ld hl, $56c1
    rst $08
    pop hl
    ld de, $d073
    call $2ef9
    ld a, $04
    ld hl, $2b4d
    rst $08
    ret


    call Call_003_640a
    ret c

    call Call_003_641c
    call Call_003_6443
    jp Jump_003_643f


Call_003_640a:
    ld a, [$dcd7]
    and a
    ret nz

    ld hl, $6417
    call $1d67
    scf
    ret


    ld d, $06
    ld d, b
    ld [hl], b
    ld d, b

Call_003_641c:
    xor a
    ldh [$d4], a
    call $1d6e
    call Call_003_658b
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    ld hl, $643a
    call $1057
    pop af
    ld [$cfcc], a
    call $0e58
    ret


    ld d, $24
    ld d, b
    ld [hl], b
    ld d, b

Jump_003_643f:
    call $2b3c
    ret


Call_003_6443:
    ld hl, $646f
    call $1d35
    ld a, $01

jr_003_644b:
    ld [$cf88], a
    call $32f9
    xor a
    ld [$cf76], a
    ldh [$d4], a
    call $1e5d
    jr c, jr_003_646b

    ld a, [$cf88]
    push af
    ld a, [$cf74]
    ld hl, $64ba
    rst $28
    pop bc
    ld a, b
    jr nc, jr_003_644b

jr_003_646b:
    call $1c17
    ret


    ld b, b
    nop
    nop
    ld de, $7713
    ld h, h
    ld bc, $0080
    call nz, $7964
    rra
    ld a, a
    ld h, h
    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld a, a
    pop hl
    ld [c], a
    ld d, b
    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld a, a
    pop hl
    ld [c], a
    ld d, b
    add d
    add a
    add b
    adc l
    add [hl]
    add h
    ld a, a
    add c
    adc [hl]
    sub a
    ld d, b
    adc h
    adc [hl]
    sub l
    add h
    ld a, a
    pop hl
    ld [c], a
    ld a, a
    sub [hl]
    di
    adc [hl]
    ld a, a
    adc h
    add b
    adc b
    adc e
    ld d, b
    sub d
    add h
    add h
    ld a, a
    sbc b
    add b
    rst $20
    ld d, b
    ld e, c
    ld h, l
    cp $64
    add e
    ld h, l
    call $cb64
    ld h, h
    dec b
    nop
    ld bc, $0302
    inc b
    rst $38
    scf
    ret


    call $1d6e
    ld a, $11
    ld hl, $4781
    rst $08
    jr nc, jr_003_64e0

    ld hl, $64f9
    call $1057
    jr jr_003_64f4

jr_003_64e0:
    ld a, $05
    ld hl, $4b34
    rst $08
    jr c, jr_003_64f4

    ld a, $38
    ld hl, $6759
    rst $08
    call $222a
    call Call_003_658b

jr_003_64f4:
    call $1c17
    and a
    ret


    ld d, $2b
    ld d, b
    ld [hl], b
    ld d, b
    call $1d6e
    ld a, $38
    ld hl, $6391
    rst $08
    call $222a
    call Call_003_658b
    call $1c17
    and a
    ret


    ld a, [$dcd7]
    and a
    jr z, jr_003_651e

    cp $02
    jr c, jr_003_6526

    and a
    ret


jr_003_651e:
    ld hl, $652e
    call $1d67
    scf
    ret


jr_003_6526:
    ld hl, $6533
    call $1d67
    scf
    ret


    ld d, $62
    ld d, b
    ld [hl], b
    ld d, b
    ld d, $80
    ld d, b
    ld [hl], b
    ld d, b
    ld hl, $dd01
    ld de, $0030
    ld b, $00

jr_003_6540:
    ld a, [$d109]
    cp b
    jr z, jr_003_654b

    ld a, [hl+]
    or [hl]
    jr nz, jr_003_6557

    dec hl

jr_003_654b:
    inc b
    ld a, [$dcd7]
    cp b
    jr z, jr_003_6555

    add hl, de
    jr jr_003_6540

jr_003_6555:
    scf
    ret


jr_003_6557:
    and a
    ret


    call $1d6e
    ld a, $38
    ld hl, $6583
    rst $08
    call $222a
    call Call_003_658b
    call $1c17
    and a
    ret


    ld a, [$dcd7]
    cp $06
    jr nc, jr_003_6576

    and a
    ret


jr_003_6576:
    ld hl, $657e
    call $1d67
    scf
    ret


    ld d, $a2
    ld d, b
    ld [hl], b
    ld d, b
    ld a, $38
    ld hl, $75aa
    rst $08
    and a
    ret


Call_003_658b:
    call $2ed3
    xor a
    ldh [$d4], a
    call $31f3
    call $300b
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ld hl, $c4a0
    ld bc, $0a12
    call $0fe8
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    call $3200
    call $32f9
    ret


    ld a, [$d109]
    ld hl, $ad26
    ld bc, $0020
    call $30fe
    ld de, $d10e
    ld bc, $0020
    ld a, $01
    call $2fcb
    call $3026
    call $2fe1
    ret


    ld a, [$db72]
    cp b
    jr z, jr_003_65f1

    ld a, b
    ld hl, $666e
    ld bc, $0003
    call $30fe
    ld a, [hl+]
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    jr jr_003_65f6

jr_003_65f1:
    ld a, $01
    ld hl, $ad10

jr_003_65f6:
    call $2fcb
    ld a, [hl]
    ld bc, $0016
    add hl, bc
    ld b, a
    ld c, $00
    ld de, $c608
    ld a, b
    and a
    jr z, jr_003_666a

jr_003_6608:
    push hl
    push bc
    ld a, c
    ld bc, $0000
    add hl, bc
    ld bc, $0020
    call $30fe
    ld a, [hl]
    ld [de], a
    inc de
    ld [$cf60], a
    call $3856
    pop bc
    pop hl
    push hl
    push bc
    ld a, c
    ld bc, $035c
    add hl, bc
    call $30f4
    call $3026
    pop bc
    pop hl
    push hl
    push bc
    ld a, c
    ld bc, $001f
    add hl, bc
    ld bc, $0020
    call $30fe
    ld a, [hl]
    ld [de], a
    inc de
    pop bc
    pop hl
    push hl
    push bc
    ld a, c
    ld bc, $0015
    add hl, bc
    ld bc, $0020
    call $30fe
    ld a, [hl+]
    and $f0
    ld b, a
    ld a, [hl]
    and $f0
    swap a
    or b
    ld b, a
    ld a, [$d243]
    cp b
    ld a, $01
    jr c, jr_003_6662

    xor a

jr_003_6662:
    ld [de], a
    inc de
    pop bc
    pop hl
    inc c
    dec b
    jr nz, jr_003_6608

jr_003_666a:
    call $2fe1
    ret


    ld [bc], a
    nop
    and b
    ld [bc], a
    ld d, b
    and h
    ld [bc], a
    and b
    xor b
    ld [bc], a
    ldh a, [$ac]
    ld [bc], a
    ld b, b
    or c
    ld [bc], a
    sub b
    or l
    ld [bc], a
    ldh [$b9], a
    inc bc
    nop
    and b
    inc bc
    ld d, b
    and h
    inc bc
    and b
    xor b
    inc bc
    ldh a, [$ac]
    inc bc
    ld b, b
    or c
    inc bc
    sub b
    or l
    inc bc
    ldh [$b9], a

Call_003_6698:
    ld hl, $df0c
    ld de, $d10e
    ld bc, $0020
    call $3026
    ld hl, $4e1b
    ld a, $14
    rst $08
    ld a, [$df2b]
    ld b, a
    ld a, d
    ld e, a
    sub b
    ld d, a
    ret


Call_003_66b3:
    ld hl, $df45
    ld de, $d10e
    ld bc, $0020
    call $3026
    ld hl, $4e1b
    ld a, $14
    rst $08
    ld a, [$df64]
    ld b, a
    ld a, d
    ld e, a
    sub b
    ld d, a
    ret


    ld a, [$df9c]
    and a
    jr z, jr_003_66ea

    ld [$d265], a
    ld a, $33
    ld hl, $40c7
    rst $08
    ld a, $33
    ld hl, $4000
    rst $08
    ld bc, $0e07
    call $1dd2
    ret c

jr_003_66ea:
    call Call_003_66fd
    ld a, [$d204]
    ld [$d265], a
    call $343b
    ld hl, $671d
    call $1057
    ret


Call_003_66fd:
    ld a, [$d204]
    ld [$cf60], a
    ld [$d108], a
    call $3856
    xor a
    ld bc, $0030
    ld hl, $df9c
    call $3041
    xor a
    ld [$cf5f], a
    ld hl, $df9c
    jp Jump_003_5906


    ld d, $c0
    ld d, b
    ld [hl], b
    ld d, b
    ld a, [$d106]
    ld [$d265], a
    call $3468
    call $30d6
    ld a, $01
    ld [$d0ec], a
    ld a, [$d106]
    dec a
    ld hl, $673c
    rst $28
    ret


    and d
    ld l, b
    and d
    ld l, b
    ld a, l
    ld [hl], a
    and d
    ld l, b
    and d
    ld l, b
    ld bc, $086e
    ld l, [hl]
    rrca
    ld l, [hl]
    call z, $cc6f
    ld l, a
    call z, $cc6f
    ld l, a
    call z, $286f
    ld [hl], c
    add [hl]
    ld [hl], c
    add [hl]
    ld [hl], c
    add [hl]
    ld [hl], c
    add [hl]
    ld [hl], c
    ld c, a
    ld [hl], h
    ld l, d
    ld [hl], h
    cp a
    ld [hl], l
    rrca
    ld l, [hl]
    rrca
    ld l, [hl]
    rrca
    ld l, [hl]
    ld a, l
    ld [hl], a
    dec a
    ld l, [hl]
    dec a
    ld l, [hl]
    dec a
    ld l, [hl]
    dec a
    ld l, [hl]
    ld a, l
    ld [hl], a
    dec a
    ld l, [hl]
    inc d
    ld l, a
    add d
    ld [hl], h
    rrca
    ld l, [hl]
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    adc a
    ld [hl], h
    call z, $c86f
    ld [hl], b
    ret z

    ld [hl], b
    xor e
    ld [hl], h
    ld h, d
    ld [hl], h
    ld h, [hl]
    ld [hl], h
    cp b
    ld [hl], h
    ld a, l
    ld [hl], a
    add [hl]
    ld [hl], c
    add [hl]
    ld [hl], c
    add [hl]
    ld [hl], c
    push bc
    ld [hl], h
    ld a, l
    ld [hl], a
    push bc
    ld [hl], h
    push bc
    ld [hl], h
    push bc
    ld [hl], h
    sbc d
    ld [hl], l
    cp b
    ld [hl], l
    inc c
    ld [hl], l
    ld a, l
    ld [hl], a
    and l
    ld [hl], l
    xor c
    ld [hl], l
    ld a, l
    ld [hl], a
    xor l
    ld [hl], l
    cp a
    ld [hl], l
    cp a
    ld [hl], l
    cp a
    ld [hl], l
    cp a
    ld [hl], l
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    add [hl]
    ld [hl], c
    ld a, l
    ld [hl], a
    call z, Call_003_7d6f
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    call z, $cc6f
    ld l, a
    call z, Call_003_7d6f
    ld [hl], a
    ld a, l
    ld [hl], a
    ld l, d
    ld [hl], c
    call z, Call_003_7d6f
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    call z, Call_003_7d6f
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    add [hl]
    ld [hl], c
    ld a, l
    ld [hl], a
    adc a
    ld [hl], l
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    adc h
    ld [hl], c
    sub b
    ld [hl], c
    xor l
    ld l, a
    xor c
    ld [hl], b
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld b, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld c, h
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    add [hl]
    ld [hl], c
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    cp a
    ld [hl], l
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld d, e
    ld [hl], a
    and d
    ld l, b
    ld a, l
    ld [hl], a
    and d
    ld l, b
    and d
    ld l, b
    and d
    ld l, b
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    and d
    ld l, b
    and d
    ld l, b
    and d
    ld l, b
    ld h, e
    ld [hl], a
    ld h, a
    ld [hl], a
    rrca
    ld l, [hl]
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    add [hl]
    ld [hl], c
    add [hl]
    ld [hl], c
    ld a, $77
    ld a, l
    ld [hl], a
    and d
    ld l, b
    ld a, l
    ld [hl], a
    ld a, l
    ld [hl], a
    ld a, [$d22d]
    dec a
    jp nz, Jump_003_77a0

    ld a, [$dcd7]
    cp $06
    jr nz, jr_003_68c0

    ld a, $01
    call $2fcb
    ld a, [$ad10]
    cp $14
    call $2fe1
    jp z, Jump_003_77dc

jr_003_68c0:
    xor a
    ld [$c64e], a
    ld a, [$d106]
    cp $b1
    call nz, Call_003_6dfa
    ld hl, $cfcc
    res 4, [hl]
    ld hl, $783d
    call $1057
    ld a, [$d22b]
    ld b, a
    ld a, [$d230]
    cp $03
    jp z, Jump_003_699c

    ld a, [$d106]
    cp $01
    jp z, Jump_003_699c

    ld a, [$d106]
    ld c, a
    ld hl, $6c0a

jr_003_68f2:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_6906

    cp c
    jr z, jr_003_68fe

    inc hl
    inc hl
    jr jr_003_68f2

jr_003_68fe:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $6906
    push de
    jp hl


jr_003_6906:
    ld a, [$d106]
    cp $9f
    ld a, b
    jp z, Jump_003_698e

    ld a, b
    ldh [$b6], a
    ld hl, $d216
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld e, [hl]
    sla c
    rl b
    ld h, d
    ld l, e
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    ld a, d
    and a
    jr z, jr_003_6940

    srl d
    rr e
    srl d
    rr e
    srl b
    rr c
    srl b
    rr c
    ld a, c
    and a
    jr nz, jr_003_6940

    ld c, $01

jr_003_6940:
    ld b, e
    push bc
    ld a, b
    sub c
    ldh [$b7], a
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ldh [$b5], a
    call $3119
    pop bc
    ld a, b
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b6]
    and a
    jr nz, jr_003_6960

    ld a, $01

jr_003_6960:
    ld b, a
    ld a, [$d214]
    and $27
    ld c, $0a
    jr nz, jr_003_6971

    and a
    ld c, $05
    jr nz, jr_003_6971

    ld c, $00

jr_003_6971:
    ld a, b
    add c
    jr nc, jr_003_6977

    ld a, $ff

jr_003_6977:
    ld d, a
    push de
    ld a, [$c62d]
    ld a, $0d
    ld hl, $7dd0
    rst $08
    ld a, b
    cp $46
    pop de
    ld a, d
    jr nz, jr_003_698e

    add c
    jr nc, jr_003_698e

    ld a, $ff

Jump_003_698e:
jr_003_698e:
    ld b, a
    ld [$d1ea], a
    call $2f8c
    cp b
    ld a, $00
    jr z, jr_003_699c

    jr nc, jr_003_699f

Jump_003_699c:
jr_003_699c:
    ld a, [$d206]

jr_003_699f:
    ld [$c64e], a
    ld c, $14
    call $0468
    ld a, [$d106]
    cp $06
    jr c, jr_003_69b0

    ld a, $05

jr_003_69b0:
    ld [$c689], a
    ld de, $0100
    ld a, e
    ld [$cfc2], a
    ld a, d
    ld [$cfc3], a
    xor a
    ldh [$e4], a
    ld [$d1eb], a
    ld [$cfca], a
    ld a, $37
    call $2d83
    ld a, [$c64e]
    and a
    jr nz, jr_003_69f5

    ld a, [$d1eb]
    cp $01
    ld hl, $6db5
    jp z, Jump_003_6bdc

    cp $02
    ld hl, $6dba
    jp z, Jump_003_6bdc

    cp $03
    ld hl, $6dbf
    jp z, Jump_003_6bdc

    cp $04
    ld hl, $6dc4
    jp z, Jump_003_6bdc

jr_003_69f5:
    ld hl, $d214
    ld a, [hl+]
    push af
    inc hl
    ld a, [hl+]
    push af
    ld a, [hl]
    push af
    push hl
    ld hl, $d207
    ld a, [hl]
    push af
    push hl
    ld hl, $c671
    ld a, [hl]
    push af
    set 3, [hl]
    bit 3, a
    jr nz, jr_003_6a13

    jr jr_003_6a1a

jr_003_6a13:
    ld a, $84
    ld [$d204], a
    jr jr_003_6a27

jr_003_6a1a:
    set 3, [hl]
    ld hl, $c6f2
    ld a, [$d20c]
    ld [hl+], a
    ld a, [$d20d]
    ld [hl], a

jr_003_6a27:
    ld a, [$d204]
    ld [$d108], a
    ld a, [$d213]
    ld [$d143], a
    ld a, $0f
    ld hl, $68eb
    rst $08
    pop af
    ld [$c671], a
    pop hl
    pop af
    ld [hl], a
    pop hl
    pop af
    ld [hl-], a
    pop af
    ld [hl-], a
    dec hl
    pop af
    ld [hl], a
    ld hl, $c671
    bit 3, [hl]
    jr nz, jr_003_6a67

    ld hl, $c735
    ld de, $d208
    ld bc, $0004
    call $3026
    ld hl, $c739
    ld de, $d20e
    ld bc, $0004
    call $3026

jr_003_6a67:
    ld a, [$d206]
    ld [$c64e], a
    ld [$d108], a
    ld [$d265], a
    ld a, [$d230]
    cp $03
    jp z, Jump_003_6bd9

    ld a, $41
    ld hl, $607f
    rst $08
    ld hl, $6dc9
    call $1057
    call $300b
    ld a, [$d265]
    dec a
    call $3393
    ld a, c
    push af
    ld a, [$d265]
    dec a
    call $3380
    pop af
    and a
    jr nz, jr_003_6ab7

    call $2ead
    jr z, jr_003_6ab7

    ld hl, $6df0
    call $1057
    call $300b
    ld a, [$d206]
    ld [$d265], a
    ld a, $43
    call $2d83

jr_003_6ab7:
    ld a, [$d230]
    cp $06
    jp z, Jump_003_6bd1

    cp $0b
    jr nz, jr_003_6ac8

    ld hl, $d0ee
    set 6, [hl]

jr_003_6ac8:
    ld a, [$dcd7]
    cp $06
    jr z, jr_003_6b3c

    xor a
    ld [$cf5f], a
    call $300b
    ld a, $06
    call $2d83
    ld a, $13
    ld hl, $5b49
    rst $08
    ld a, [$d106]
    cp $a4
    jr nz, jr_003_6af8

    ld a, [$dcd7]
    dec a
    ld hl, $dcfa
    ld bc, $0030
    call $30fe
    ld a, $c8
    ld [hl], a

jr_003_6af8:
    ld hl, $6df5
    call $1057
    ld a, [$d108]
    ld [$d265], a
    call $343b
    call $1dcf
    jp c, Jump_003_6be2

    ld a, [$dcd7]
    dec a
    ld [$d109], a
    ld hl, $de41
    ld bc, $000b
    call $30fe
    ld d, h
    ld e, l
    push de
    xor a
    ld [$cf5f], a
    ld b, $00
    ld a, $04
    ld hl, $56c1
    rst $08
    call $04b6
    call $0e51
    pop hl
    ld de, $d073
    call $2ef9
    jp Jump_003_6be2


jr_003_6b3c:
    call $300b
    ld a, $09
    call $2d83
    ld a, $13
    ld hl, $5b83
    rst $08
    ld a, $01
    call $2fcb
    ld a, [$ad10]
    cp $14
    jr nz, jr_003_6b5b

    ld hl, $d0ee
    set 7, [hl]

jr_003_6b5b:
    ld a, [$d106]
    cp $a4
    jr nz, jr_003_6b67

    ld a, $c8
    ld [$ad41], a

jr_003_6b67:
    call $2fe1
    ld hl, $6df5
    call $1057
    ld a, [$d108]
    ld [$d265], a
    call $343b
    call $1dcf
    jr c, jr_003_6baf

    xor a
    ld [$d109], a
    ld a, $02
    ld [$cf5f], a
    ld de, $d050
    ld b, $00
    ld a, $04
    ld hl, $56c1
    rst $08
    ld a, $01
    call $2fcb
    ld hl, $d050
    ld de, $b082
    ld bc, $000b
    call $3026
    ld hl, $b082
    ld de, $d073
    call $2ef9
    call $2fe1

jr_003_6baf:
    ld a, $01
    call $2fcb
    ld hl, $b082
    ld de, $d050
    ld bc, $000b
    call $3026
    call $2fe1
    ld hl, $6deb
    call $1057
    call $04b6
    call $0e51
    jr jr_003_6be2

Jump_003_6bd1:
    ld a, $03
    ld hl, $66ce
    rst $08
    jr jr_003_6be2

Jump_003_6bd9:
    ld hl, $6dc9

Jump_003_6bdc:
    call $1057
    call $300b

Jump_003_6be2:
jr_003_6be2:
    ld a, [$d230]
    cp $03
    ret z

    cp $02
    ret z

    cp $06
    jr z, jr_003_6c05

    ld a, [$c64e]
    and a
    jr z, jr_003_6bfb

    call $31f3
    call $0fc8

jr_003_6bfb:
    ld hl, $d892
    inc a
    ld [$d10c], a
    jp $2f53


jr_003_6c05:
    ld hl, $dc79
    dec [hl]
    ret


    ld [bc], a
    add hl, hl
    ld l, h
    inc b
    cpl
    ld l, h
    ld [$6c2f], sp
    sbc l
    ld d, b
    ld l, h
    sbc a
    adc h
    ld l, l
    and b
    call z, $a16c
    ld l, b
    ld l, l
    and l
    db $dd
    ld l, h
    and [hl]
    ld [de], a
    ld l, l
    or c
    cpl
    ld l, h
    rst $38
    sla b
    ret nc

    ld b, $ff
    ret


    ld a, b
    srl a
    add b
    ld b, a
    ret nc

    ld b, $ff
    ret


Call_003_6c38:
    push hl
    push de
    ld a, [$d206]
    rlca
    rlca
    and $03
    ld hl, $6c4c
    ld d, $00
    ld e, a
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ret


    ld h, b
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld a, [$d206]
    ld hl, $4378
    dec a
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, $11
    call $305d

jr_003_6c61:
    call Call_003_6c38
    call $304d
    inc hl
    cp $50
    jr nz, jr_003_6c61

    call Call_003_6c38
    push bc
    inc hl
    inc hl
    call $305d
    srl h
    rr l
    ld b, h
    ld c, l
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    srl b
    rr c
    call Call_003_6c99
    srl b
    rr c
    call Call_003_6c99
    ld a, h
    pop bc
    jr jr_003_6ca4

Call_003_6c99:
    push bc
    ld a, b
    cpl
    ld b, a
    ld a, c
    cpl
    ld c, a
    inc bc

jr_003_6ca1:
    add hl, bc
    pop bc
    ret


jr_003_6ca4:
    ld c, a
    cp $04
    jr c, jr_003_6cbc

    ld hl, $6cc4

jr_003_6cac:
    ld a, c
    cp [hl]
    jr c, jr_003_6cb4

    inc hl
    inc hl
    jr jr_003_6cac

jr_003_6cb4:
    inc hl
    ld a, b
    add [hl]
    ld b, a
    ret nc

    ld b, $ff
    ret


jr_003_6cbc:
    ld a, b
    sub $14
    ld b, a
    ret nc

    ld b, $01
    ret


    ld [$0c00], sp

jr_003_6cc7:
    inc d
    db $10
    ld e, $ff
    jr z, jr_003_6cc7

    jr nc, jr_003_6ca1

    cp $04
    ret nz

    ld a, b
    add a
    jr c, jr_003_6cd9

    add b
    jr nc, jr_003_6cdb

jr_003_6cd9:
    ld a, $ff

jr_003_6cdb:
    ld b, a
    ret


    push bc
    ld a, [$d204]
    dec a
    ld c, a
    ld b, $00
    ld hl, $65b1
    add hl, bc
    add hl, bc
    ld a, $10
    call $305d
    pop bc
    push bc
    ld a, $10
    call $304d
    cp $02
    pop bc
    ret nz

    inc hl
    inc hl
    inc hl
    push bc
    ld a, $10
    call $304d
    cp $0a
    pop bc
    ret nz

    sla b
    jr c, jr_003_6d0f

    sla b
    jr nc, jr_003_6d11

jr_003_6d0f:
    ld b, $ff

jr_003_6d11:
    ret


    ld a, [$d204]
    ld c, a
    ld a, [$d205]
    cp c
    ret nz

    push bc
    ld a, [$d205]
    ld [$d108], a
    xor a
    ld [$cf5f], a
    ld a, [$d0d4]
    ld [$d109], a
    ld a, $14
    ld hl, $4bdd
    rst $08
    jr c, jr_003_6d66

    ld d, $00
    jr nz, jr_003_6d39

    inc d

jr_003_6d39:
    push de
    ld a, [$d204]
    ld [$d108], a
    ld a, $04
    ld [$cf5f], a
    ld a, $14
    ld hl, $4bdd
    rst $08
    jr c, jr_003_6d65

    ld d, $00
    jr nz, jr_003_6d52

    inc d

jr_003_6d52:
    ld a, d
    pop de
    cp d
    pop bc
    ret nz

    sla b
    jr c, jr_003_6d62

    sla b
    jr c, jr_003_6d62

    sla b
    ret nc

jr_003_6d62:
    ld b, $ff
    ret


jr_003_6d65:
    pop de

jr_003_6d66:
    pop bc
    ret


    ld a, [$d204]
    ld c, a
    ld hl, $459a
    ld d, $03

jr_003_6d71:
    ld a, $0f
    call $304d
    inc hl
    cp $ff
    jr z, jr_003_6d88

    cp c
    jr nz, jr_003_6d88

    sla b
    jr c, jr_003_6d85

    sla b
    ret nc

jr_003_6d85:
    ld b, $ff
    ret


jr_003_6d88:
    dec d
    jr nz, jr_003_6d71

    ret


    ld a, [$c639]
    ld c, a
    ld a, [$d213]
    cp c
    ret nc

    sla b
    jr c, jr_003_6da8

    srl c
    cp c
    ret nc

    sla b
    jr c, jr_003_6da8

    srl c
    cp c
    ret nc

    sla b
    ret nc

jr_003_6da8:
    ld b, $ff
    ret


    ld d, $5a
    ld e, d
    ld [hl], c
    ld d, b
    ld d, $90
    ld e, d
    ld [hl], c
    ld d, b
    ld d, $a6
    ld e, d
    ld [hl], c
    ld d, b
    ld d, $c3
    ld e, d
    ld [hl], c
    ld d, b
    ld d, $e3
    ld e, d
    ld [hl], c
    ld d, b
    ld d, $fa
    ld e, d
    ld [hl], c
    ld d, b
    ld d, $17
    ld e, e
    ld [hl], c
    ld [$55cd], sp
    inc a
    push bc
    ld de, $0000
    call $3b97
    call $045a
    ld de, $004c
    call $3b97
    pop bc
    ld hl, $6de6
    ret


    ld d, $35
    ld e, e
    ld [hl], c
    ld d, b
    ld d, $38
    ld e, e
    ld [hl], c
    ld d, b
    ld d, $53
    ld e, e
    ld [hl], c
    ld d, b
    ld d, $7f
    ld e, e
    ld [hl], c
    ld d, b

Call_003_6dfa:
    ld a, $09
    ld hl, $715c
    rst $08
    ret


    ld a, $24
    ld hl, $5ae1
    rst $08
    ret


    ld a, $03
    ld hl, $50b3
    rst $08
    ret


    ld b, $05
    call Call_003_71f9
    jp c, Jump_003_6e38

    ld a, $01
    call $3917
    ld a, [hl]
    cp $70
    jr z, jr_003_6e35

    ld a, $01
    ld [$d1e9], a
    ld a, $10
    ld hl, $61d8
    rst $08
    ld a, [$d268]
    and a
    jr z, jr_003_6e35

    jp Jump_003_7795


jr_003_6e35:
    call Call_003_77f2

Jump_003_6e38:
    xor a
    ld [$d0ec], a
    ret


    ld b, $01
    call Call_003_71f9
    jp c, Jump_003_6e9f

    call $6ef5
    call Call_003_6ed9
    ld a, $0b
    call $3917
    add hl, bc
    ld a, [hl]
    cp $64
    jr nc, jr_003_6e83

    add $0a
    ld [hl], a
    call Call_003_6e8c
    call Call_003_6ed9
    ld hl, $6eab
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d086
    ld bc, $000d
    call $3026
    call Call_003_7780
    ld hl, $6ea6
    call $1057
    ld c, $02
    ld a, $01
    ld hl, $71c2
    rst $08
    jp Jump_003_7795


Jump_003_6e83:
jr_003_6e83:
    ld hl, $781f
    call $1057
    jp $3317


Call_003_6e8c:
    ld a, $24
    call $3917
    ld d, h
    ld e, l
    ld a, $0a
    call $3917
    ld b, $01
    ld a, $0c
    jp $2d83


Jump_003_6e9f:
    xor a
    ld [$d0ec], a
    jp $3317


    ld d, $9a
    ld e, e
    ld [hl], c
    ld d, b
    or l
    ld l, [hl]
    cp h
    ld l, [hl]
    jp $cb6e


    ld l, [hl]
    pop de
    ld l, [hl]
    add a
    add h
    add b
    adc e
    sub e
    add a
    ld d, b
    add b
    sub e
    sub e
    add b
    add d
    adc d
    ld d, b
    add e
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld d, b
    sub d
    adc a
    add h
    add h
    add e
    ld d, b
    sub d
    adc a
    add h
    add d
    adc b
    add b
    adc e
    ld d, b

Call_003_6ed9:
    ld a, [$d106]
    ld hl, $6eeb

jr_003_6edf:
    cp [hl]
    inc hl
    jr z, jr_003_6ee6

    inc hl
    jr jr_003_6edf

jr_003_6ee6:
    ld a, [hl]
    ld c, a
    ld b, $00
    ret


    ld a, [de]
    nop
    dec de
    ld [bc], a
    inc e
    inc b
    dec e
    ld b, $1f
    ld [$08fa], sp
    pop de
    ld [$cf60], a
    ld [$d265], a
    ld a, $1f
    call $3917
    ld a, [hl]
    ld [$d143], a
    call $3856
    ld a, [$d109]
    ld hl, $de41
    call $38a2
    ret


    ld b, $01
    call Call_003_71f9
    jp c, Jump_003_6e9f

    call $6ef5
    ld a, $1f
    call $3917
    ld a, [hl]
    cp $64
    jp nc, Jump_003_6e83

    inc a
    ld [hl], a
    ld [$d143], a
    push de
    ld d, a
    ld a, $14
    ld hl, $4e47
    rst $08
    pop de
    ld a, $08
    call $3917
    ldh a, [$b4]
    ld [hl+], a
    ldh a, [$b5]
    ld [hl+], a
    ldh a, [$b6]
    ld [hl], a
    ld a, $24
    call $3917
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    push bc
    call Call_003_6e8c
    ld a, $25
    call $3917
    pop bc
    ld a, [hl-]
    sub c
    ld c, a
    ld a, [hl]
    sbc b
    ld b, a
    dec hl
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld a, $09
    ld hl, $709e
    rst $08
    ld a, $f8
    call Call_003_724a
    xor a
    ld [$cf5f], a
    ld a, $1f
    call $2d83
    ld hl, $c4a9
    ld b, $0a
    ld c, $09
    call $0fe8
    ld hl, $c4bf
    ld bc, $0004
    ld a, $28
    call $2d83
    call $0a80
    xor a
    ld [$cf5f], a
    ld a, [$d108]
    ld [$d265], a
    ld a, $1a
    call $2d83
    xor a
    ld [$d1e9], a
    ld a, $10
    ld hl, $61d8
    rst $08
    jp Jump_003_7795


    ld b, $01
    call Call_003_71f9
    jp c, Jump_003_729e

    call Call_003_6fda
    cp $00
    jr nz, jr_003_6fc9

    ld c, $0f
    ld a, $01
    ld hl, $71c2
    rst $08
    call Call_003_77d6
    ld a, $00

jr_003_6fc9:
    jp Jump_003_709e


    ld b, $01
    call Call_003_71f9
    jp c, Jump_003_729e

Jump_003_6fd4:
    call Call_003_6fda
    jp Jump_003_709e


Call_003_6fda:
    call Call_003_730d
    ld a, $01
    ret z

    call Call_003_7058
    ld a, $20
    call $3917
    ld a, [hl]
    and c
    jr nz, jr_003_6ff4

    call Call_003_7009
    ld a, $01
    ret nc

    ld b, $f9

jr_003_6ff4:
    xor a
    ld [hl], a
    ld a, b
    ld [$d141], a
    call Call_003_7030
    call Call_003_7780
    call Call_003_7279
    call Call_003_7795
    ld a, $00
    ret


Call_003_7009:
    call Call_003_72a6
    jr nc, jr_003_701c

    ld a, [$c66a]
    bit 7, a
    jr z, jr_003_701c

    ld a, c
    cp $ff
    jr nz, jr_003_701c

    scf
    ret


jr_003_701c:
    and a
    ret


Call_003_701e:
    call Call_003_72a6
    ret nc

    ld a, $22
    call $3917
    ld a, [hl+]
    ld [$c63c], a
    ld a, [hl-]
    ld [$c63d], a
    ret


Call_003_7030:
    call Call_003_72a6
    ret nc

    xor a
    ld [$c63a], a
    ld hl, $c66c
    res 0, [hl]
    ld hl, $c668
    res 0, [hl]
    call Call_003_7058
    ld a, c
    cp $ff
    jr nz, jr_003_704f

    ld hl, $c66a
    res 7, [hl]

jr_003_704f:
    push bc
    ld a, $0d
    ld hl, $65d7
    rst $08
    pop bc
    ret


Call_003_7058:
    push hl
    ld a, [$d106]
    ld hl, $7071
    ld bc, $0003

jr_003_7062:
    cp [hl]
    jr z, jr_003_7068

    add hl, bc
    jr jr_003_7062

jr_003_7068:
    inc hl
    ld b, [hl]
    inc hl
    ld a, [hl]
    ld c, a
    cp $ff
    pop hl
    ret


    add hl, bc
    ldh a, [$08]
    ld a, [bc]
    pop af
    db $10
    dec bc
    ld a, [c]
    jr nz, jr_003_7087

    di
    rlca
    dec c
    db $f4
    ld b, b
    ld h, $f6
    rst $38
    ld c, $f6
    rst $38
    ld a, e

jr_003_7087:
    or $ff
    ld c, d
    ldh a, [$08]
    ld c, [hl]
    db $f4
    ld b, b
    ld c, a
    ld a, [c]
    jr nz, @+$52

    pop af
    db $10
    ld d, h
    di
    rlca
    ld l, l
    or $ff
    rst $38
    nop
    nop

Jump_003_709e:
    ld hl, $70a3
    rst $28
    ret


    and d
    ld [hl], d
    sbc c
    ld [hl], d
    sbc [hl]
    ld [hl], d
    ld b, $01
    call Call_003_71f9
    jp c, Jump_003_729e

    call Call_003_70d6
    cp $00
    jr nz, jr_003_70c5

    ld c, $11
    ld a, $01
    ld hl, $71c2
    rst $08
    call Call_003_77d6
    ld a, $00

jr_003_70c5:
    jp Jump_003_709e


    ld b, $01
    call Call_003_71f9
    jp c, Jump_003_729e

    call Call_003_70d6
    jp Jump_003_709e


Call_003_70d6:
    call Call_003_730d
    ld a, $01
    ret nz

    ld a, [$d22d]
    and a
    jr z, jr_003_7104

    ld a, [$d109]
    ld c, a
    ld d, $00
    ld hl, $c6fc
    ld b, $02
    ld a, $03
    call $2d83
    ld a, c
    and a
    jr z, jr_003_7104

    ld a, [$d109]
    ld c, a
    ld hl, $c664
    ld b, $01
    ld a, $03
    call $2d83

jr_003_7104:
    xor a
    ld [$c2a6], a
    ld a, [$d106]
    cp $27
    jr z, jr_003_7114

    call Call_003_72c3
    jr jr_003_7117

jr_003_7114:
    call Call_003_72ba

jr_003_7117:
    call Call_003_71db
    ld a, $f7
    ld [$d141], a
    call Call_003_7279
    call Call_003_7795
    ld a, $00
    ret


    ld b, $01
    call Call_003_71f9
    jp c, Jump_003_729e

    call Call_003_730d
    jp z, Jump_003_7299

    call Call_003_731b
    jr c, jr_003_713e

    jp Jump_003_6fd4


jr_003_713e:
    call Call_003_7144
    jp Jump_003_709e


Call_003_7144:
    xor a
    ld [$c2a6], a
    call Call_003_72c3
    ld a, $20
    call $3917
    xor a
    ld [hl+], a
    ld [hl], a
    call Call_003_7030
    call Call_003_701e
    call Call_003_71db
    ld a, $f5
    ld [$d141], a
    call Call_003_7279
    call Call_003_7795
    ld a, $00
    ret


    ld hl, $c66a
    bit 7, [hl]
    ld a, $01
    jr z, jr_003_7183

    res 7, [hl]
    xor a
    ldh [$e4], a
    call Call_003_7789
    ld hl, $4d81
    call $3ad5
    ld a, $00

jr_003_7183:
    jp Jump_003_709e


    call Call_003_71a9
    jp Jump_003_709e


    ld c, $0f
    jr jr_003_7192

    ld c, $10

jr_003_7192:
    push bc
    call Call_003_71a9
    pop bc
    cp $00
    jr nz, jr_003_71a6

    ld a, $01
    ld hl, $71c2
    rst $08
    call Call_003_77d6
    ld a, $00

jr_003_71a6:
    jp Jump_003_709e


Call_003_71a9:
    ld b, $01
    call Call_003_71f9
    ld a, $02
    ret c

    call Call_003_730d
    ld a, $01
    ret z

    call Call_003_731b
    ld a, $01
    ret nc

    xor a
    ld [$c2a6], a
    call Call_003_7395
    call Call_003_72d1
    call Call_003_701e
    call Call_003_71db
    ld a, $f5
    ld [$d141], a
    call Call_003_7279
    call Call_003_7795
    ld a, $00
    ret


Call_003_71db:
    push de
    ld de, $0004
    call $3c4e
    pop de
    ld a, [$d109]
    ld hl, $c4ab
    ld bc, $0028
    call $30fe
    ld a, $02
    ld [$d10a], a
    ld a, $0b
    jp $2d83


Call_003_71f9:
    call Call_003_720b
    ret c

    ld a, [$d108]
    cp $fd
    jr nz, jr_003_7209

    call Call_003_77e8
    scf
    ret


jr_003_7209:
    and a
    ret


Call_003_720b:
    ld a, b
    ld [$d141], a
    push hl
    push de
    push bc
    call $31f3
    call Call_003_721c
    pop bc
    pop de
    pop hl
    ret


Call_003_721c:
    ld a, $14
    ld hl, $404f
    rst $08
    ld a, $14
    ld hl, $4405
    rst $08
    ld a, $14
    ld hl, $43e0
    rst $08
    ld a, $14
    ld hl, $405f
    rst $08
    ld a, $14
    ld hl, $449a
    rst $08
    call $31f6
    call $32f9
    call $045a
    ld a, $14
    ld hl, $4457
    rst $08
    ret


Call_003_724a:
    ld [$d141], a
    ld a, [$d108]
    push af
    ld a, [$d109]
    push af
    push hl
    push de
    push bc
    ld a, $14
    ld hl, $405f
    rst $08
    ld a, $14
    ld hl, $4566
    rst $08
    call $31f6
    call $32f9
    call $045a
    pop bc
    pop de
    pop hl
    pop af
    ld [$d109], a
    pop af
    ld [$d108], a
    ret


Call_003_7279:
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ld a, [$d141]
    call Call_003_724a
    ld a, $01
    ldh [$d4], a
    ld c, $32
    call $0468
    jp $0a80


Jump_003_7299:
    call Call_003_77f2
    jr jr_003_72a2

Jump_003_729e:
    xor a
    ld [$d0ec], a

jr_003_72a2:
    call $3317
    ret


Call_003_72a6:
    ld a, [$d22d]
    and a
    ret z

    ld a, [$d109]
    push hl
    ld hl, $d0d4
    cp [hl]
    pop hl
    jr nz, jr_003_72b8

    scf
    ret


jr_003_72b8:
    xor a
    ret


Call_003_72ba:
    call Call_003_736f
    srl d
    rr e
    jr jr_003_72c6

Call_003_72c3:
    call Call_003_736f

jr_003_72c6:
    ld a, $22
    call $3917
    ld [hl], d
    inc hl
    ld [hl], e
    jp Jump_003_7328


Call_003_72d1:
    ld a, $23
    call $3917
    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl], a
    jr c, jr_003_72f5

    call Call_003_7328
    ld a, $23
    call $3917
    ld d, h
    ld e, l
    ld a, $25
    call $3917
    ld a, [de]
    sub [hl]
    dec de
    dec hl
    ld a, [de]
    sbc [hl]
    jr c, jr_003_72f8

jr_003_72f5:
    call Call_003_72c3

jr_003_72f8:
    ret


Call_003_72f9:
    ld a, $23
    call $3917
    ld a, [hl]
    sub e
    ld [hl-], a
    ld a, [hl]
    sbc d
    ld [hl], a
    jr nc, jr_003_7309

    xor a
    ld [hl-], a
    ld [hl], a

jr_003_7309:
    call Call_003_7328
    ret


Call_003_730d:
    push de
    call Call_003_735f
    call Call_003_7348
    call Call_003_7356
    ld a, d
    or e
    pop de
    ret


Call_003_731b:
    call Call_003_7356
    ld h, d
    ld l, e
    call Call_003_736f
    ld a, l
    sub e
    ld a, h
    sbc d
    ret


Call_003_7328:
Jump_003_7328:
    ld a, $22
    call $3917
    ld a, [hl+]
    ld [$d1ef], a
    ld a, [hl]
    ld [$d1ee], a
    ret


    ld a, d
    ld [$d1ef], a
    ld a, e
    ld [$d1ee], a
    ret


    ld a, [$d1ef]
    ld d, a
    ld a, [$d1ee]
    ld e, a
    ret


Call_003_7348:
    ld a, $22
    call $3917
    ld a, [hl+]
    ld [$d1ed], a
    ld a, [hl]
    ld [$d1ec], a
    ret


Call_003_7356:
    ld a, [$d1ed]
    ld d, a
    ld a, [$d1ec]
    ld e, a
    ret


Call_003_735f:
    push hl
    ld a, $24
    call $3917
    ld a, [hl+]
    ld [$d1eb], a
    ld a, [hl]
    ld [$d1ea], a
    pop hl
    ret


Call_003_736f:
    ld a, [$d1eb]
    ld d, a
    ld a, [$d1ea]
    ld e, a
    ret


Call_003_7378:
    push bc
    ld a, $24
    call $3917
    ld a, [hl+]
    ldh [$b3], a
    ld a, [hl]
    ldh [$b4], a
    ld a, $05
    ldh [$b7], a
    ld b, $02
    call $3124
    ldh a, [$b5]
    ld d, a
    ldh a, [$b6]
    ld e, a
    pop bc
    ret


Call_003_7395:
    push hl
    ld a, [$d106]
    ld hl, $73af
    ld d, a

jr_003_739d:
    ld a, [hl+]
    cp $ff
    jr z, jr_003_73a9

    cp d
    jr z, jr_003_73aa

    inc hl
    inc hl
    jr jr_003_739d

jr_003_73a9:
    scf

jr_003_73aa:
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ret


    ld l, $32
    nop
    cpl
    inc a
    nop
    jr nc, @+$52

    nop
    db $10
    ret z

    nop
    ld de, $0032
    ld [de], a
    inc d
    nop
    rrca
    rst $20
    inc bc
    ld c, $e7
    inc bc
    ld c, b
    ld h, h
    nop
    xor l
    ld a, [bc]
    nop
    xor [hl]
    ld e, $00
    ld a, c
    ld [hl-], a
    nop
    ld a, d
    ret z

    nop
    ld [hl], d
    inc d
    nop
    adc e
    inc d
    nop
    rst $38
    nop
    nop
    ld a, [$d0d8]
    dec a
    ld b, a
    call Call_003_7419
    jr c, jr_003_7413

    ld a, b
    ld [$d109], a
    call Call_003_730d
    call Call_003_7378
    call Call_003_72f9
    push bc
    call Call_003_71db
    pop bc
    call Call_003_7378
    ld a, c
    ld [$d109], a
    call Call_003_730d
    call Call_003_72d1
    call Call_003_71db
    ld a, $f5
    call Call_003_724a
    call $0a36

jr_003_7413:
    ld a, b
    inc a
    ld [$d0d8], a
    ret


Call_003_7419:
jr_003_7419:
    push bc
    ld a, $01
    ld [$d141], a
    call Call_003_721c
    pop bc
    jr c, jr_003_743e

    ld a, [$d0d8]
    dec a
    ld c, a
    ld a, b
    cp c
    jr z, jr_003_7440

    ld a, c
    ld [$d109], a
    call Call_003_730d
    jr z, jr_003_7440

    call Call_003_731b
    jr nc, jr_003_7440

    xor a
    ret


jr_003_743e:
    scf
    ret


jr_003_7440:
    push bc
    ld hl, $744a
    call $1d67
    pop bc
    jr jr_003_7419

    ld d, $ac
    ld e, e
    ld [hl], c
    ld d, b
    xor a
    ld [$d0ec], a
    ld a, $03
    ld hl, $4b95
    rst $08
    ld a, [$d0ec]
    cp $01
    call z, Call_003_7795
    ret


    ld b, $c8
    jr jr_003_746c

    ld b, $fa
    jr jr_003_746c

    ld b, $64

jr_003_746c:
    ld a, [$dca1]
    and a
    ld hl, $747d
    jp nz, $1057

    ld a, b
    ld [$dca1], a
    jp Jump_003_7789


    ld d, $cd
    ld e, e
    ld [hl], c
    ld d, b
    ld hl, $c66b
    bit 0, [hl]
    jp nz, Jump_003_77ca

    set 0, [hl]
    jp Jump_003_7789


    ld a, [$d22d]
    dec a
    jr nz, jr_003_74a6

    inc a
    ld [$d232], a
    ld a, [$d0ee]
    and $c0
    or $02
    ld [$d0ee], a
    jp Jump_003_7789


jr_003_74a6:
    xor a
    ld [$d0ec], a
    ret


    ld hl, $c66b
    bit 1, [hl]
    jp nz, Jump_003_77ca

    set 1, [hl]
    jp Jump_003_7789


    ld hl, $c66b
    bit 2, [hl]
    jp nz, Jump_003_77ca

    set 2, [hl]
    jp Jump_003_7789


    call Call_003_7789
    ld a, [$d106]
    ld hl, $7504

jr_003_74ce:
    cp [hl]
    jr z, jr_003_74d5

    inc hl
    inc hl
    jr jr_003_74ce

jr_003_74d5:
    inc hl
    ld b, [hl]
    xor a
    ldh [$e4], a
    ld [$c667], a
    ld [$c70d], a
    ld a, $0d
    ld hl, $61ef
    rst $08
    call $3c55
    ld a, $0d
    ld hl, $63b8
    rst $08
    ld a, $0d
    ld hl, $644c
    rst $08
    ld a, [$d0d4]
    ld [$d109], a
    ld c, $03
    ld a, $01
    ld hl, $71c2
    rst $08
    ret


    ld sp, $3300
    ld bc, $0234
    dec [hl]
    inc bc
    ld a, [$d22d]
    and a
    jr nz, jr_003_7512

jr_003_7512:
    xor a
    ld [$d002], a
    ld b, $f8
    ld hl, $dcff
    call Call_003_7554
    ld a, [$d22d]
    cp $01
    jr z, jr_003_752b

    ld hl, $d2a8
    call Call_003_7554

jr_003_752b:
    ld hl, $c63a
    ld a, [hl]
    and b
    ld [hl], a
    ld hl, $d214
    ld a, [hl]
    and b
    ld [hl], a
    ld a, [$d002]
    and a
    ld hl, $756c
    jp z, $1057

    ld hl, $7576
    call $1057
    ld a, [$c2a6]
    and $80
    jr nz, jr_003_754e

jr_003_754e:
    ld hl, $7571
    jp $1057


Call_003_7554:
    ld de, $0030
    ld c, $06

jr_003_7559:
    ld a, [hl]
    push af
    and $07
    jr z, jr_003_7564

    ld a, $01
    ld [$d002], a

jr_003_7564:
    pop af
    and b
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_003_7559

    ret


    ld d, $f9
    ld e, e
    ld [hl], c
    ld d, b
    ld d, $28
    ld e, h
    ld [hl], c
    ld d, b
    ld d, $44
    ld e, h
    ld [hl], c
    ld [$2dfa], sp
    jp nc, $20a7

    dec bc
    push de
    ld de, $0026
    call $3c4e
    call $3c55
    pop de
    jp $13e0


    ld hl, $7595
    jp $2012


    ld d, $5e
    ld e, h
    ld [hl], c
    ld d, b
    ld hl, $75a0
    jp $2012


    ld d, $7b
    ld e, h
    ld [hl], c
    ld d, b
    ld e, $00
    jr jr_003_75b1

    ld e, $01
    jr jr_003_75b1

    ld e, $02
    jr jr_003_75b1

jr_003_75b1:
    ld a, $03
    ld hl, $4f8e
    rst $08
    ret


    ld a, $04
    ld hl, $6580
    rst $08
    ret


    ld a, [$d106]
    ld [$d002], a

jr_003_75c5:
    ld b, $01
    call Call_003_71f9
    jp c, Jump_003_76e0

jr_003_75cd:
    ld a, [$d002]
    cp $15
    jp z, Jump_003_76af

    cp $41
    jp z, Jump_003_76af

    ld hl, $7725
    ld a, [$d002]
    cp $3e
    jr z, jr_003_75e7

    ld hl, $772a

jr_003_75e7:
    call $1057
    ld a, [$d0d5]
    push af
    xor a
    ld [$d0d5], a
    ld a, $02
    ld [$d235], a
    ld a, $0f
    ld hl, $64bc
    rst $08
    pop bc
    ld a, b
    ld [$d0d5], a
    jr nz, jr_003_75c5

    ld hl, $dce1
    ld bc, $0030
    call Call_003_7963
    push hl
    ld a, [hl]
    ld [$d265], a
    call $34f8
    call $30d6
    pop hl
    ld a, [$d002]
    cp $3e
    jp nz, Jump_003_76a7

    ld a, [hl]
    cp $a6
    jr z, jr_003_762f

    ld bc, $0015
    add hl, bc
    ld a, [hl]
    cp $c0
    jr c, jr_003_7637

jr_003_762f:
    ld hl, $772f
    call $1057
    jr jr_003_75cd

jr_003_7637:
    ld a, [hl]
    add $40
    ld [hl], a
    ld a, $01
    ld [$d265], a
    call Call_003_784c
    call Call_003_7780
    ld hl, $7734
    call $1057

jr_003_764c:
    call $3317
    jp Jump_003_7795


Jump_003_7652:
jr_003_7652:
    ld a, [$d22d]
    and a
    jr z, jr_003_766c

    ld a, [$d109]
    ld b, a
    ld a, [$d0d4]
    cp b
    jr nz, jr_003_766c

    ld a, [$c66c]
    bit 3, a
    jr nz, jr_003_766c

    call Call_003_7677

jr_003_766c:
    call Call_003_7780
    ld hl, $7739
    call $1057
    jr jr_003_764c

Call_003_7677:
    ld a, [$d109]
    ld hl, $dce1
    ld bc, $0030
    call $30fe
    ld de, $c62e
    ld b, $04

jr_003_7688:
    ld a, [de]
    and a
    jr z, jr_003_76a6

    cp [hl]
    jr nz, jr_003_76a1

    push hl
    push de
    push bc
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld bc, $0015
    add hl, bc
    ld a, [hl]
    ld [de], a
    pop bc
    pop de
    pop hl

jr_003_76a1:
    inc hl
    inc de
    dec b
    jr nz, jr_003_7688

jr_003_76a6:
    ret


Jump_003_76a7:
    call Call_003_76e8
    jr nz, jr_003_7652

    jp Jump_003_76dd


Jump_003_76af:
    xor a
    ld hl, $cfa9
    ld [hl+], a
    ld [hl], a
    ld b, $04

jr_003_76b7:
    push bc
    ld hl, $dce1
    ld bc, $0030
    call Call_003_7963
    ld a, [hl]
    and a
    jr z, jr_003_76ce

    call Call_003_76e8
    jr z, jr_003_76ce

    ld hl, $cfaa
    inc [hl]

jr_003_76ce:
    ld hl, $cfa9
    inc [hl]
    pop bc
    dec b
    jr nz, jr_003_76b7

    ld a, [$cfaa]
    and a
    jp nz, Jump_003_7652

Jump_003_76dd:
    call Call_003_77f2

Jump_003_76e0:
    call $3317
    xor a
    ld [$d0ec], a
    ret


Call_003_76e8:
    xor a
    ld [$cf5f], a
    call Call_003_78ec
    ld hl, $dcf6
    ld bc, $0030
    call Call_003_7963
    ld a, [$d265]
    ld b, a
    ld a, [hl]
    and $3f
    cp b
    jr nc, jr_003_7723

    ld a, [$d002]
    cp $15
    jr z, jr_003_771d

    cp $40
    jr z, jr_003_771d

    ld c, $05
    cp $96
    jr z, jr_003_7715

    ld c, $0a

jr_003_7715:
    ld a, [hl]
    and $3f
    add c
    cp b
    jr nc, jr_003_771d

    ld b, a

jr_003_771d:
    ld a, [hl]
    and $c0
    or b
    ld [hl], a
    ret


jr_003_7723:
    xor a
    ret


    ld d, $8a
    ld e, h
    ld [hl], c
    ld d, b
    ld d, $a7
    ld e, h
    ld [hl], c
    ld d, b
    ld d, $c6
    ld e, h
    ld [hl], c
    ld d, b
    ld d, $dd
    ld e, h
    ld [hl], c
    ld d, b
    ld d, $f1
    ld e, h
    ld [hl], c
    ld d, b
    ld a, $14
    ld hl, $4730
    rst $08
    ret


    ld a, $14
    ld hl, $4779
    rst $08
    ret


    ld a, $14
    ld hl, $47b4
    rst $08
    ret


    ld a, $14
    ld hl, $47e6
    rst $08
    ld a, [$d0ec]
    cp $01
    ret nz

    call Call_003_7795
    ret


    ld c, $2c
    jr jr_003_7769

    ld c, $2b

jr_003_7769:
    ld a, $09
    ld hl, $6f02
    rst $08
    ld hl, $7778
    call $1057
    jp Jump_003_7795


    ld d, $03
    ld e, l
    ld [hl], c
    ld d, b
    jp Jump_003_77ed


Call_003_7780:
    push de
    ld de, $0005
    call $3c4e
    pop de
    ret


Call_003_7789:
Jump_003_7789:
    ld hl, $783d
    call $1057
    call Call_003_7780
    call $0a80

Call_003_7795:
Jump_003_7795:
jr_003_7795:
    ld hl, $d892
    ld a, $01
    ld [$d10c], a
    jp $2f53


Jump_003_77a0:
    call Call_003_6dfa
    ld de, $0100
    ld a, e
    ld [$cfc2], a
    ld a, d
    ld [$cfc3], a
    xor a
    ld [$c689], a
    ldh [$e4], a
    ld [$cfca], a
    ld a, $37
    call $2d83
    ld hl, $7824
    call $1057
    ld hl, $7829
    call $1057
    jr jr_003_7795

Jump_003_77ca:
    ld hl, $781f
    call $1057
    ld a, $02
    ld [$d0ec], a
    ret


Call_003_77d6:
    ld hl, $780b
    jp $1057


Jump_003_77dc:
    ld hl, $7838
    call $1057
    ld a, $02
    ld [$d0ec], a
    ret


Call_003_77e8:
    ld hl, $7810
    jr jr_003_7804

Jump_003_77ed:
    ld hl, $7815
    jr jr_003_7804

Call_003_77f2:
    ld hl, $781f
    jr jr_003_7804

    ld hl, $781a
    jr jr_003_7804

    ld hl, $782e
    jr jr_003_7804

    ld hl, $7833

jr_003_7804:
    xor a
    ld [$d0ec], a
    jp $1057


    ld d, $3e
    ld e, l
    ld [hl], c
    ld d, b
    ld d, $50
    ld e, l
    ld [hl], c
    ld d, b
    ld d, $6e
    ld e, l
    ld [hl], c
    ld d, b
    ld d, $97
    ld e, l
    ld [hl], c
    ld d, b
    ld d, $b6
    ld e, l
    ld [hl], c
    ld d, b
    ld d, $d0
    ld e, l
    ld [hl], c
    ld d, b
    ld d, $ef
    ld e, l
    ld [hl], c
    ld d, b
    ld d, $01
    ld e, [hl]
    ld [hl], c
    ld d, b
    ld d, $1d
    ld e, [hl]
    ld [hl], c
    ld d, b
    ld d, $3a
    ld e, [hl]
    ld [hl], c
    ld d, b
    ld d, $68
    ld e, [hl]
    ld [hl], c
    ld d, b
    ld d, $7b
    ld e, [hl]
    ld [hl], c
    ld d, b
    ld d, $90
    ld e, [hl]
    ld [hl], c
    ld d, b

Call_003_784c:
    ld a, $02
    call $3917
    push hl
    ld de, $d1ea
    ld a, $05
    call $2d83
    pop hl
    ld bc, $0015
    add hl, bc
    ld de, $d1ea
    ld b, $00

jr_003_7864:
    inc b
    ld a, b
    cp $05
    ret z

    ld a, [$d265]
    dec a
    jr nz, jr_003_7876

    ld a, [$cfa9]
    inc a
    cp b
    jr nz, jr_003_787d

jr_003_7876:
    ld a, [hl]
    and $c0
    ld a, [de]
    call nz, Call_003_7881

jr_003_787d:
    inc hl
    inc de
    jr jr_003_7864

Call_003_7881:
    push bc
    ld a, [de]
    ldh [$b6], a
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ldh [$b5], a
    ld a, $05
    ldh [$b7], a
    ld b, $04
    call $3124
    ld a, [hl]
    ld b, a
    swap a
    and $0f
    srl a
    srl a
    ld c, a
    and a
    jr z, jr_003_78b6

jr_003_78a3:
    ldh a, [$b6]
    cp $08
    jr c, jr_003_78ab

    ld a, $07

jr_003_78ab:
    add b
    ld b, a
    ld a, [$d265]
    dec a
    jr z, jr_003_78b6

    dec c
    jr nz, jr_003_78a3

jr_003_78b6:
    ld [hl], b
    pop bc
    ret


    ld a, $17
    call $3917
    push hl
    ld a, $02
    call $3917
    pop de
    xor a
    ld [$cfa9], a
    ld [$cf5f], a
    ld c, $04

jr_003_78ce:
    ld a, [hl+]
    and a
    ret z

    push hl
    push de
    push bc
    call Call_003_78ec
    pop bc
    pop de
    ld a, [de]
    and $c0
    ld b, a
    ld a, [$d265]
    add b
    ld [de], a
    inc de
    ld hl, $cfa9
    inc [hl]
    pop hl
    dec c
    jr nz, jr_003_78ce

    ret


Call_003_78ec:
    ld a, [$d073]
    push af
    ld a, [$d074]
    push af
    ld a, [$cf5f]
    and a
    ld hl, $dce1
    ld bc, $0030
    jr z, jr_003_791a

    ld hl, $d28a
    dec a
    jr z, jr_003_791a

    ld hl, $d110
    dec a
    jr z, jr_003_7915

    ld hl, $d110
    dec a
    jr z, jr_003_7915

    ld hl, $c62e

jr_003_7915:
    call Call_003_7969
    jr jr_003_791d

jr_003_791a:
    call Call_003_7963

jr_003_791d:
    ld a, [hl]
    dec a
    push hl
    ld hl, $5b00
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    ld b, a
    ld de, $d073
    ld [de], a
    pop hl
    push bc
    ld bc, $0015
    ld a, [$cf5f]
    cp $04
    jr nz, jr_003_7942

    ld bc, $0006

jr_003_7942:
    add hl, bc
    ld a, [hl]
    and $c0
    pop bc
    or b
    ld hl, $d074
    ld [hl], a
    xor a
    ld [$d265], a
    ld a, b
    call Call_003_7881
    ld a, [hl]
    and $3f
    ld [$d265], a
    pop af
    ld [$d074], a
    pop af
    ld [$d073], a
    ret


Call_003_7963:
    ld a, [$d109]
    call $30fe

Call_003_7969:
    ld a, [$cfa9]
    ld c, a
    ld b, $00
    add hl, bc

jr_003_7970:
    ret


    push de
    ldh a, [rSVBK]
    ld d, a
    push de
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d1eb]
    inc a
    ld [$d1eb], a
    cp $04
    jr z, jr_003_79a8

    ld a, [$c64e]
    and a
    ld c, $00
    jr nz, jr_003_79b2

    ld hl, $79ba
    ld a, [$d1ea]
    ld b, a

jr_003_7994:
    ld a, [hl+]
    cp b
    jr nc, jr_003_799b

    inc hl
    jr jr_003_7994

jr_003_799b:
    ld b, [hl]
    call $2f8c
    cp b
    ld c, $00
    jr c, jr_003_79b2

    ld c, $02
    jr jr_003_79b2

jr_003_79a8:
    ld a, [$c64e]
    and a
    ld c, $01
    jr nz, jr_003_79b2

    ld c, $02

jr_003_79b2:
    pop de
    ld e, a
    ld a, d
    ldh [rSVBK], a
    ld a, e
    pop de
    ret


    ld bc, $023f
    ld c, e
    inc bc
    ld d, h
    inc b
    ld e, d
    dec b
    ld e, a
    rlca
    ld h, a
    ld a, [bc]
    ld [hl], c
    rrca
    ld a, [hl]
    inc d
    add [hl]
    ld e, $95
    jr z, jr_003_7970

    ld [hl-], a
    xor c
    inc a
    or c
    ld d, b
    cp a
    ld h, h
    ret


    ld a, b
    db $d3
    adc h
    call c, $e3a0
    or h
    ld [$f0c8], a
    call c, $f0f6
    ei
    cp $fd
    rst $38
    rst $38
    ld a, $02
    call $3917
    ld a, [$d262]
    ld b, a
    ld c, $04

jr_003_79f5:
    ld a, [hl+]
    cp b
    jr z, jr_003_79fe

    dec c
    jr nz, jr_003_79f5

    and a
    ret


jr_003_79fe:
    ld hl, $7a06
    call $1057
    scf
    ret


    ld d, $a8
    ld e, [hl]
    ld [hl], c
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

Call_003_7c47:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_003_7d6f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
