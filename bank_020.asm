; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    call Call_020_4017
    ld a, $3e
    ld [$d042], a
    xor a
    ld [$d041], a
    call Call_020_402d
    ld c, a
    ld a, [$d042]
    ld [$c2de], a
    ret


Call_020_4017:
    ldh a, [$a8]
    ld [$d03e], a
    ld hl, $dbf5
    bit 2, [hl]
    ret z

    ld c, a
    and $f0
    ret nz

    ld a, c
    or $80
    ld [$d03e], a
    ret


Call_020_402d:
    ld a, [$d95d]
    cp $00
    jr z, jr_020_4044

    cp $04
    jr z, jr_020_4060

    cp $08
    jr z, jr_020_4060

    cp $01
    jr z, jr_020_4044

    cp $02
    jr z, jr_020_4074

jr_020_4044:
    call Call_020_42cb
    call Call_020_42ec
    call Call_020_40b7
    ret c

    call Call_020_4147
    ret c

    call Call_020_416b
    ret c

    call Call_020_41f3
    ret c

    call $4226
    ret c

    jr jr_020_409d

jr_020_4060:
    call Call_020_42cb
    call Call_020_42ec
    call Call_020_40b7
    ret c

    call Call_020_4147
    ret c

    call Call_020_41c0
    ret c

    jr jr_020_409d

jr_020_4074:
    call Call_020_42cb
    call Call_020_42ec
    call Call_020_40b7
    ret c

    call Call_020_4147
    ret c

    call Call_020_416b
    ret c

    call Call_020_41f3
    ret c

    call $4226
    ret c

    ld a, [$d043]
    cp $ff
    jr z, jr_020_4098

    call Call_020_43ee

jr_020_4098:
    call Call_020_42b3
    xor a
    ret


jr_020_409d:
    ld a, [$d043]
    cp $ff
    jr z, jr_020_40b2

    ld a, [$d041]
    and a
    jr nz, jr_020_40ad

    call Call_020_43ee

jr_020_40ad:
    call Call_020_42bf
    xor a
    ret


jr_020_40b2:
    call Call_020_42b3
    xor a
    ret


Call_020_40b7:
    ld a, [$d4e4]
    ld c, a
    call $18b4
    jr c, jr_020_40c4

    ld a, $03
    scf
    ret


jr_020_40c4:
    and $f0
    cp $30
    jr z, jr_020_40d8

    cp $40
    jr z, @+$20

    cp $50
    jr z, jr_020_4108

    cp $70
    jr z, jr_020_4124

    jr jr_020_413c

jr_020_40d8:
    ld a, c
    and $03
    ld c, a
    ld b, $00
    ld hl, $40e8
    add hl, bc
    ld a, [hl]
    ld [$d043], a
    jr jr_020_413e

    inc bc
    ld [bc], a
    ld bc, $7900
    and $07
    ld c, a
    ld b, $00
    ld hl, $4100
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_020_413c

    ld [$d043], a
    jr jr_020_413e

    rst $38
    inc bc
    ld [bc], a
    ld bc, $ff00
    rst $38
    rst $38

jr_020_4108:
    ld a, c
    and $07
    ld c, a
    ld b, $00
    ld hl, $411c
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_020_413c

    ld [$d043], a
    jr jr_020_413e

    inc bc
    ld [bc], a
    ld bc, $ff00
    rst $38
    rst $38
    rst $38

jr_020_4124:
    ld a, c
    cp $71
    jr z, jr_020_4135

    cp $79
    jr z, jr_020_4135

    cp $7a
    jr z, jr_020_4135

    cp $7b
    jr nz, jr_020_413c

jr_020_4135:
    ld a, $00
    ld [$d043], a
    jr jr_020_413e

jr_020_413c:
    xor a
    ret


jr_020_413e:
    ld a, $01
    call Call_020_425f
    ld a, $05
    scf
    ret


Call_020_4147:
    ld a, [$d04e]
    cp $00
    jr nz, jr_020_4169

    ld a, [$d043]
    cp $ff
    jr z, jr_020_4169

    ld e, a
    ld a, [$d4de]
    rrca
    rrca
    and $03
    cp e
    jr z, jr_020_4169

    ld a, $05
    call Call_020_425f
    ld a, $02
    scf
    ret


jr_020_4169:
    xor a
    ret


Call_020_416b:
    ld a, [$d95d]
    cp $04
    jr z, jr_020_41c0

    cp $08
    jr z, jr_020_41c0

    call Call_020_439e
    jr c, jr_020_41be

    call Call_020_4341
    and a
    jr z, jr_020_41be

    cp $02
    jr z, jr_020_41be

    ld a, [$d4e4]
    call $18ac
    jr nc, jr_020_41b5

    call Call_020_43ca
    jr nz, jr_020_41ae

    ld hl, $dbf5
    bit 2, [hl]
    jr z, jr_020_41a7

    ld a, [$d043]
    cp $00
    jr z, jr_020_41a7

    ld a, $01
    call Call_020_425f
    scf
    ret


jr_020_41a7:
    ld a, $02
    call Call_020_425f
    scf
    ret


jr_020_41ae:
    ld a, $01
    call Call_020_425f
    scf
    ret


jr_020_41b5:
    ld a, $04
    call Call_020_425f
    scf
    ret


    xor a
    ret


jr_020_41be:
    xor a
    ret


Call_020_41c0:
jr_020_41c0:
    call Call_020_43b4
    ld [$d040], a
    jr c, jr_020_41f1

    call Call_020_4341
    ld [$d03f], a
    and a
    jr z, jr_020_41f1

    cp $02
    jr z, jr_020_41f1

    ld a, [$d040]
    and a
    jr nz, jr_020_41e2

    ld a, $01
    call Call_020_425f
    scf
    ret


jr_020_41e2:
    call Call_020_43f9
    call $3cdf
    ld a, $01
    call Call_020_425f
    ld a, $06
    scf
    ret


jr_020_41f1:
    xor a
    ret


Call_020_41f3:
    ld a, [$d4e4]
    ld e, a
    and $f0
    cp $a0
    jr nz, jr_020_421c

    ld a, e
    and $07
    ld e, a
    ld d, $00
    ld hl, $421e
    add hl, de
    ld a, [$d044]
    and [hl]
    jr z, jr_020_421c

    ld de, $0016
    call $3c23
    ld a, $03
    call Call_020_425f
    ld a, $07
    scf
    ret


jr_020_421c:
    xor a
    ret


    ld bc, $0402
    ld [$0a09], sp
    dec b
    ld b, $fa
    ld b, e
    ret nc

    ld e, a
    ld d, $00
    ld hl, $425b
    add hl, de
    ld a, [$d4e4]
    cp [hl]
    jr nz, jr_020_4259

    ld a, $01
    ld [$d041], a
    ld a, [$d043]
    cp $ff
    jr z, jr_020_4259

    ld e, a
    ld a, [$d4de]
    rrca
    rrca
    and $03
    cp e
    jr nz, jr_020_4259

    call $224a
    jr nc, jr_020_4259

    call Call_020_42b3
    scf
    ld a, $01
    ret


jr_020_4259:
    xor a
    ret


    ld [hl], b
    ld a, b
    db $76
    ld a, [hl]

Call_020_425f:
    ld e, a
    ld d, $00
    ld hl, $4283
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d043]
    ld e, a
    cp $ff
    jp z, Jump_020_42b3

    add hl, de
    ld a, [hl]
    ld [$d042], a
    ld hl, $42af
    add hl, de
    ld a, [hl]
    ld [$d04e], a
    ld a, $04
    ret


    sub e
    ld b, d
    sub a
    ld b, d
    sbc e
    ld b, d
    sbc a
    ld b, d
    and e
    ld b, d
    xor e
    ld b, d
    and a
    ld b, d
    xor a
    ld b, d
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    jr nc, jr_020_42d2

    ld [hl-], a
    inc sp
    inc e
    dec e
    ld e, $1f
    ld sp, $3330
    ld [hl-], a
    inc b
    dec b
    ld b, $07
    add b
    add c
    add d
    add e

Call_020_42b3:
Jump_020_42b3:
    ld a, $00
    ld [$d04e], a
    ld a, $3e
    ld [$d042], a
    xor a
    ret


Call_020_42bf:
    ld a, $00
    ld [$d04e], a
    ld a, $50
    ld [$d042], a
    xor a
    ret


Call_020_42cb:
    call Call_020_4404
    ret nc

    ld a, [$d04e]

jr_020_42d2:
    cp $00
    ret z

    and $03
    ld e, a
    ld d, $00
    ld hl, $42e8
    add hl, de
    ld a, [$d03e]
    and $0f
    or [hl]
    ld [$d03e], a
    ret


    add b
    ld b, b
    jr nz, @+$12

Call_020_42ec:
    ld hl, $4323
    ld de, $0006
    ld a, [$d03e]
    bit 7, a
    jr nz, jr_020_4307

    bit 6, a
    jr nz, jr_020_4308

    bit 5, a
    jr nz, jr_020_4309

    bit 4, a
    jr nz, jr_020_430a

    jr jr_020_430b

jr_020_4307:
    add hl, de

jr_020_4308:
    add hl, de

jr_020_4309:
    add hl, de

jr_020_430a:
    add hl, de

jr_020_430b:
    ld a, [hl+]
    ld [$d043], a
    ld a, [hl+]
    ld [$d044], a
    ld a, [hl+]
    ld [$d045], a
    ld a, [hl+]
    ld [$d046], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    ld [$d047], a
    ret


    rst $38
    nop
    nop
    nop
    db $e4
    call nc, $0103
    ld bc, $fd00
    jp nz, $0202

    rst $38
    nop
    db $fc
    jp nz, $0401

    nop
    rst $38
    ei
    jp nz, $0800

    nop
    ld bc, $c2fa

Call_020_4341:
    ld a, $00
    ldh [$af], a
    ld a, [$d4e6]
    ld d, a
    ld a, [$d045]
    add d
    ld d, a
    ld a, [$d4e7]
    ld e, a
    ld a, [$d046]
    add e
    ld e, a
    ld bc, $d4d6
    ld a, $01
    ld hl, $7041
    rst $08
    jr nc, jr_020_4369

    call Call_020_436f
    jr c, jr_020_436c

    xor a
    ret


jr_020_4369:
    ld a, $01
    ret


jr_020_436c:
    ld a, $02
    ret


Call_020_436f:
    ld hl, $dbf5
    bit 0, [hl]
    jr z, jr_020_439c

    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_020_439c

    ld hl, $0006
    add hl, bc
    bit 6, [hl]
    jr z, jr_020_439c

    ld hl, $0005
    add hl, bc
    set 2, [hl]
    ld a, [$d043]
    ld d, a
    ld hl, $0020
    add hl, bc
    ld a, [hl]
    and $fc
    or d
    ld [hl], a
    scf
    ret


jr_020_439c:
    xor a
    ret


Call_020_439e:
    ld a, [$c2fe]
    ld d, a
    ld a, [$d044]
    and d
    jr nz, jr_020_43b2

    ld a, [$d047]
    call Call_020_43d3
    jr c, jr_020_43b2

    xor a
    ret


jr_020_43b2:
    scf
    ret


Call_020_43b4:
    ld a, [$c2fe]
    ld d, a
    ld a, [$d044]
    and d
    jr nz, jr_020_43c8

    ld a, [$d047]
    call Call_020_43da
    jr c, jr_020_43c8

    and a
    ret


jr_020_43c8:
    scf
    ret


Call_020_43ca:
    ld a, [$d95d]
    cp $01
    ret z

    cp $02
    ret


Call_020_43d3:
    call $185d
    and a
    ret z

    scf
    ret


Call_020_43da:
    call $185d
    cp $01
    jr z, jr_020_43e6

    and a
    jr z, jr_020_43e8

    jr jr_020_43ec

jr_020_43e6:
    xor a
    ret


jr_020_43e8:
    ld a, $01
    and a
    ret


jr_020_43ec:
    scf
    ret


Call_020_43ee:
    call $3dde
    ret c

    ld de, $0024
    call $3c23
    ret


Call_020_43f9:
    push bc
    ld a, $00
    ld [$d95d], a
    call $0e4a
    pop bc
    ret


Call_020_4404:
    ld a, [$d04e]
    cp $00
    jr z, jr_020_4420

    cp $f0
    jr z, jr_020_4420

    ld a, [$d4e4]
    call $18ac
    jr nc, jr_020_441e

    ld a, [$d95d]
    cp $02
    jr nz, jr_020_4420

jr_020_441e:
    scf
    ret


jr_020_4420:
    and a
    ret


    ld hl, $c2de
    ld a, $3e
    cp [hl]
    ret z

    ld [hl], a
    ld a, $00
    ld [$d04e], a
    ret


    ld a, d
    cp $00
    jr z, jr_020_4439

    jr c, jr_020_4441

    jr jr_020_443e

jr_020_4439:
    ld a, e
    cp $a2
    jr c, jr_020_4441

jr_020_443e:
    xor a
    ld e, a
    ld d, a

jr_020_4441:
    ld hl, $4462
    add hl, de
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    ld a, b
    cp $01
    jr c, jr_020_445b

    jr z, jr_020_4457

    ld a, [de]
    and c
    ld c, a
    ret


jr_020_4457:
    ld a, [de]
    or c
    ld [de], a
    ret


jr_020_445b:
    ld a, c
    cpl
    ld c, a
    ld a, [de]
    and c
    ld [de], a
    ret


    ld d, a
    reti


    ld [bc], a
    ld d, a
    reti


    ld bc, $d957
    inc b
    ld d, a
    reti


    ld [$d957], sp
    add b
    push af
    sbc $40
    push af
    sbc $01
    inc l
    rst $18
    ld bc, $d854
    ld bc, $d854
    add b
    add hl, sp
    call c, Call_020_4c01
    ret c

    ld bc, $d84c
    ld [bc], a
    ld c, h
    ret c

    ld [$d84c], sp
    db $10
    ld c, h
    ret c

    ld b, b
    ld c, h
    ret c

    add b
    ld c, l
    ret c

    inc b
    ld c, l
    ret c

    ld [bc], a
    ld c, l
    ret c

    ld bc, $d84d
    db $10
    ld c, l
    ret c

    jr nz, jr_020_44f2

    ret c

    ld b, b
    ld c, l
    ret c

    add b
    push af
    db $db
    ld bc, $dbf5
    ld [bc], a
    push af
    db $db
    inc b
    ld d, a
    ret c

    ld bc, $d857
    ld [bc], a
    ld d, a
    ret c

    inc b
    ld d, a
    ret c

    ld [$d857], sp
    db $10
    ld d, a
    ret c

    jr nz, jr_020_451d

    ret c

    ld b, b
    ld d, a
    ret c

    add b
    ld e, b
    ret c

    ld bc, $d858
    ld [bc], a
    ld e, b
    ret c

    inc b
    ld e, b
    ret c

    ld [$d858], sp
    db $10
    ld e, b
    ret c

    jr nz, @+$5a

    ret c

    ld b, b
    ld e, b
    ret c

    add b
    di
    sbc $01
    di
    sbc $02
    di
    sbc $04
    di
    sbc $08
    di
    sbc $10

jr_020_44f2:
    di
    sbc $20
    di
    sbc $40
    di
    sbc $80
    and l
    call c, $a501
    call c, $a502
    call c, $a504
    call c, $a508
    call c, $a510
    call c, $a520
    call c, $a540
    call c, $a680
    call c, $a601
    call c, $a602
    call c, $a604

jr_020_451d:
    call c, $a608
    call c, $a610
    call c, $a620
    call c, $a640
    call c, $a780
    call c, $a701
    call c, $a704
    call c, $a708
    call c, $a710
    call c, $a720
    call c, $a740
    call c, $a880
    call c, $a801
    call c, $a802
    call c, $a804
    call c, $9d10
    call c, Call_020_4d01
    ret c

    ld [$dc1e], sp
    ld bc, $dc1e
    ld [bc], a
    ld e, $dc
    inc b
    ld e, $dc
    ld [$dc1e], sp
    db $10
    ld e, $dc
    jr nz, jr_020_4583

    call c, $1e40
    call c, $1f80
    call c, $1f01
    call c, $1f02
    call c, $1f04
    call c, $1f08
    call c, $1f10
    call c, $1f20
    call c, $1f40
    call c, $2080

jr_020_4583:
    call c, $2001
    call c, $bc02
    rst $08
    add b
    ld [hl], d
    call nc, $f301
    db $db
    inc b
    ld c, h
    call c, Call_020_4c01
    call c, Call_020_4c02
    call c, Call_020_4c04
    call c, Call_020_4c08
    call c, Call_020_4c10
    call c, Call_020_4c20
    call c, $4c40
    call c, Call_020_4d80
    call c, Call_020_4d01
    call c, Call_020_4d02
    call c, Call_020_4d04
    call c, Call_020_4d08
    call c, Call_020_4d10
    call c, Call_020_4d20
    call c, Call_020_4d40
    call c, Call_020_4e80
    call c, Call_020_4e01
    call c, Call_020_4e02
    call c, Call_020_4e04
    call c, Call_020_4e08
    call c, Call_020_4e10
    call c, Call_020_4e20
    call c, Call_020_4e40
    call c, Call_020_5080
    call c, Call_020_5001
    call c, Call_020_5002
    call c, Call_020_5004
    call c, Call_020_5008
    call c, Call_020_5010
    call c, Call_020_5020
    call c, Call_020_5040
    call c, Call_020_5180
    call c, Call_020_5101
    call c, Call_020_5402
    call c, Call_020_5401
    call c, Call_020_5402
    call c, Call_020_5404
    call c, Call_020_5408
    call c, Call_020_5410
    call c, $5420
    call c, Call_020_5440
    call c, $5580
    call c, Call_020_5501
    call c, Call_020_5502
    call c, Call_020_5504
    call c, Call_020_5508
    call c, Call_020_5510
    call c, Call_020_5520
    call c, Call_020_5540
    call c, Call_020_5680
    call c, Call_020_5601
    call c, Call_020_5602
    call c, Call_020_5604
    call c, Call_020_5608
    call c, Call_020_5610
    call c, Call_020_5620
    call c, Call_020_5640
    call c, Call_020_5b80
    call nc, $2004
    call c, $2004
    call c, Call_020_7908
    cp $1b
    jr c, jr_020_464e

    xor a

jr_020_464e:
    ld c, a
    ld b, $00
    ld hl, $4671
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    and $80
    jr nz, jr_020_4668

    ld a, b
    and $40
    ret nz

    ld a, [de]
    jr jr_020_466c

jr_020_4668:
    call $2fed
    ret


Jump_020_466c:
jr_020_466c:
    ld de, $d086
    ld [de], a
    ret


    add [hl]
    ret nc

    nop
    rst $10
    call c, $2800
    ld b, a
    add b
    jr nc, jr_020_464e

    ld b, b
    ld l, c
    jp nc, $c500

    ld b, [hl]
    add b
    db $d3
    ld b, [hl]
    add b
    pop hl
    ld b, [hl]
    add b
    ld e, l
    reti


    ld b, b
    rst $28
    ld b, [hl]
    add b
    sub h
    rst $38
    nop
    ld sp, hl
    ld b, [hl]
    add b
    or l
    call c, $b600
    call c, $ff00
    ld b, [hl]
    add b
    sbc d
    pop de
    nop
    dec d
    ld b, a
    add b
    ld l, h
    call nc, $b800
    call c, $b700
    call c, $3100
    call c, Call_020_6400
    rst $08
    nop
    and h
    call c, $f900
    db $db
    ld b, b
    ld c, e
    call c, Call_020_4a40
    call c, Call_020_5840
    call c, RST_00
    nop
    nop
    ld hl, $de99
    ld b, $20
    call $335f
    ld a, [$d265]
    jp Jump_020_466c


    ld hl, $deb9
    ld b, $20
    call $335f
    ld a, [$d265]
    jp Jump_020_466c


    ld hl, $d857
    ld b, $02
    call $335f
    ld a, [$d265]
    jp Jump_020_466c


    ld a, [$d4de]
    and $0c
    rrca
    rrca
    jp Jump_020_466c


    call $3376
    jp Jump_020_466c


    call Call_020_4706
    ld a, b
    jp Jump_020_466c


Call_020_4706:
    ld hl, $ded9
    ld b, $00

jr_020_470b:
    ld a, [hl+]
    and a
    ret z

    inc b
    ld a, b
    cp $1a
    jr c, jr_020_470b

    ret


    ld a, $01
    call $2fcb
    ld hl, $ad10
    ld a, $14
    sub [hl]
    ld b, a
    call $2fe1
    ld a, b
    jp Jump_020_466c


    ld a, [$d0ee]
    and $3f
    jp Jump_020_466c


    nop
    ld d, d
    ld a, a
    xor a
    xor b
    and d
    xor d
    and h
    and e
    ld a, a
    or h
    xor a
    ld c, a
    ldh a, [$50]
    add hl, bc
    db $ec
    add $36
    nop
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $c616
    nop
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    and a
    xor [hl]
    xor [hl]
    xor d
    and h
    and e
    ld c, a
    ld d, b
    ld bc, $c616
    nop
    ld d, l
    and b
    or e
    or e
    and b
    and d
    xor d
    and h
    and e
    rst $20
    ld e, b
    ld bc, $c616
    nop
    ld a, a
    and l
    and h
    xor e
    xor e
    ld c, a
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
    ld a, a
    or e
    or c
    and h
    and h
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $c616
    nop
    ld c, a
    and b
    xor a
    xor a
    and h
    and b
    or c
    and h
    and e
    rst $20
    ld e, b
    nop
    ccf
    ld c, a
    or [hl]
    and b
    xor l
    or e
    or d
    ld a, a
    or e
    xor [hl]
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $c616
    nop
    ld c, a
    and l
    xor e
    and h
    and e
    rst $20
    ld e, b
    nop
    add h
    xor l
    and h
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $c616
    nop
    ld c, a
    and l
    xor e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    or d
    ld a, a
    and a
    or h
    or c
    or e
    ld a, a
    and c
    cp b
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a74f
    or h
    or c
    or e
    ld a, a
    and c
    cp b
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and c
    or h
    or c
    xor l
    rst $20
    ld e, b
    nop
    adc e
    add h
    add h
    add d
    add a
    ld a, a
    sub d
    add h
    add h
    add e
    ld a, a
    or d
    and b
    xor a
    or d
    ld c, a
    ld e, d
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    adc l
    adc b
    add [hl]
    add a
    sub e
    adc h
    add b
    sub c
    add h
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a74f
    or h
    or c
    or e
    ld a, a
    and c
    cp b
    ld a, a
    or e
    and a
    and h
    ld a, a
    add d
    sub h
    sub c
    sub d
    add h
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add b
    adc l
    add e
    sub d
    sub e
    adc [hl]
    sub c
    adc h
    ld a, a
    and a
    xor b
    or e
    or d
    ld c, a
    ld e, d
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $8f4f
    add h
    sub c
    adc b
    sub d
    add a
    ld a, a
    and d
    xor [hl]
    or h
    xor l
    or e
    ld a, a
    xor b
    or d
    ld a, a
    ld d, b
    add hl, bc
    ld h, l
    jp nc, $0011

    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or c
    and h
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
    ld e, d
    ld c, a
    or c
    and h
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld a, a
    adc a
    adc a
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    add sp, $58
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and a
    xor b
    or e
    ld a, a
    and c
    cp b
    ld a, a
    add l
    sub h
    sub e
    sub h
    sub c
    add h
    ld d, l
    sub d
    adc b
    add [hl]
    add a
    sub e
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $924f
    add b
    add l
    add h
    add [hl]
    sub h
    add b
    sub c
    add e
    ld a, a
    and l
    and b
    and e
    and h
    and e
    rst $20
    ld e, b
    ld bc, $d073
    nop
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $8b4f
    adc b
    add [hl]
    add a
    sub e
    ld a, a
    sub d
    add d
    sub c
    add h
    add h
    adc l
    ld a, a
    and l
    and h
    xor e
    xor e
    rst $20
    ld e, b
    ld bc, $d073
    nop
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    call nc, $914f
    add h
    add l
    adc e
    add h
    add d
    sub e
    ld a, a
    and l
    and b
    and e
    and h
    and e
    rst $20
    ld e, b
    nop
    sub c
    and b
    xor b
    xor l
    ld a, a
    and d
    xor [hl]
    xor l
    or e
    xor b
    xor l
    or h
    and h
    or d
    ld a, a
    or e
    xor [hl]
    ld c, a
    and l
    and b
    xor e
    xor e
    add sp, $58
    nop
    sub e
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
    ld a, a
    xor b
    or d
    ld c, a
    or d
    or e
    or c
    xor [hl]
    xor l
    and [hl]
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add b
    adc l
    add e
    sub d
    sub e
    adc [hl]
    sub c
    adc h
    ld c, a
    or c
    and b
    and [hl]
    and h
    or d
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    or c
    and b
    xor b
    xor l
    ld a, a
    or d
    or e
    xor [hl]
    xor a
    xor a
    and h
    and e
    add sp, $58
    nop
    sub e
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
    ld c, a
    and l
    and b
    and e
    and h
    and e
    add sp, $58
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    add b
    adc l
    add e
    sub d
    sub e
    adc [hl]
    sub c
    adc h
    ld c, a
    or d
    or h
    and c
    or d
    xor b
    and e
    and h
    and e
    add sp, $58
    nop
    add h
    xor l
    and h
    xor h
    cp b
    ld a, a
    ld d, b
    ld bc, $c616
    nop
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    ldh a, [$50]
    add hl, bc
    add [hl]
    add $36
    nop
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    ccf
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and e
    and h
    and l
    and h
    and b
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    sub e
    xor b
    and h
    and e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld c, a
    ccf
    rst $20
    ld e, b
    nop
    ld d, d
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    ldh a, [$50]
    add hl, bc
    add [hl]
    add $36
    nop
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or [hl]
    xor b
    xor l
    xor l
    xor b
    xor l
    and [hl]
    rst $20
    ld d, l
    sub d
    and h
    xor l
    or e
    ld a, a
    or d
    xor [hl]
    xor h
    and h
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc h
    adc [hl]
    adc h
    rst $20
    ld e, b
    nop
    sub d
    and h
    xor l
    or e
    ld a, a
    and a
    and b
    xor e
    and l
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc h
    adc [hl]
    adc h
    rst $20
    ld e, b
    nop
    sub d
    and h

Call_020_4a40:
    xor l
    or e
    ld a, a
    and b
    xor e
    xor e
    ld a, a
    or e
    xor [hl]
    ld a, a
    adc h
    adc [hl]
    adc h
    rst $20
    ld e, b
    nop
    ld d, e
    sbc h
    ld a, a
    add a
    or h
    and a
    and $7f
    adc b
    ld c, a
    or d
    and a
    xor [hl]
    or h
    xor e
    and e
    sub $a4
    ld a, a
    and d
    and a
    xor [hl]
    or d
    and h
    xor l
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
    rst $20
    ld e, b
    ld bc, $c621
    nop
    ld c, a
    and l
    and b
    xor b
    xor l
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    sub h
    or d
    and h
    ld a, a
    xor l
    and h
    or a
    or e
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    ld d, e
    sbc h
    ld a, a
    sbc b
    and h
    or d
    rst $20
    ld c, a
    adc b
    ld a, a
    and [hl]
    or h
    and h
    or d
    or d
    ld a, a
    adc b
    ld a, a
    and d
    and a
    xor [hl]
    or d
    and h
    ld a, a
    and b
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
    rst $20
    ld e, b
    nop
    adc e
    xor [hl]
    or d
    or e
    ld a, a
    and b
    and [hl]
    and b
    xor b
    xor l
    or d
    or e
    ld c, a
    ccf
    rst $20
    ld e, b
    nop
    ccf
    ld c, a
    xor b
    or d
    ld a, a
    and b
    and c
    xor [hl]
    or h
    or e
    ld a, a
    or e
    xor [hl]
    ld a, a
    or h
    or d
    and h
    ld d, l
    ld d, b
    ld bc, $c616
    nop
    add sp, $51
    sub [hl]
    xor b
    xor e
    xor e
    ld a, a
    ld d, d
    ld c, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    and $57
    nop
    ccf
    ld c, a
    or d
    and h
    xor l
    or e
    ld a, a
    xor [hl]
    or h
    or e
    ld d, l
    ld d, b
    ld bc, $c616
    nop
    rst $20
    ld d, a
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    or [hl]
    xor b
    xor e
    xor e
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
    rst $20
    ld e, b
    nop
    add b
    xor l
    ld a, a
    add h
    add [hl]
    add [hl]
    ld a, a
    and d
    and b
    xor l
    push de
    ld c, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld e, b
    nop
    add d
    and b
    xor l
    push de
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    rst $20
    ld e, b
    nop
    adc l
    xor [hl]
    rst $20
    ld a, a
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld c, a
    or c
    or h
    xor l
    xor l
    xor b
    xor l
    and [hl]
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    ld d, l
    or e
    or c
    and b
    xor b
    xor l
    and h
    or c
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld e, b
    nop
    add [hl]
    xor [hl]
    or e
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    or d
    and b
    and l
    and h
    xor e
    cp b
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and l
    xor e
    and h
    and e
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    add d
    and b
    xor l
    push de
    ld a, a
    and h
    or d
    and d
    and b
    xor a
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a74f
    or h
    or c
    or e
    ld a, a
    and c
    cp b
    ld a, a
    sub d
    adc a
    adc b
    adc d
    add h
    sub d
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or c
    and h
    and d
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld a, a
    or h
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, Call_020_504f
    ld bc, $d073
    nop
    ld d, l
    and b
    and d
    or e
    xor b
    or l
    and b
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    or e
    and h
    xor h
    or d
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and c
    and h

Call_020_4c01:
    ld c, a

Call_020_4c02:
    or h
    or d

Call_020_4c04:
    and h
    and e
    ld a, a
    and a

Call_020_4c08:
    and h
    or c
    and h
    add sp, $58
    ld bc, $c621

Call_020_4c10:
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and b
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    xor [hl]
    or h
    or e

Call_020_4c20:
    add sp, $58
    ld bc, $c621
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
    or c
    and h
    and d
    and b
    xor e
    xor e
    and h
    and e
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    adc a
    adc a
    ld a, a
    xor e
    and h
    and l
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    xor b
    or d
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    xor b
    or d
    ld c, a
    add e
    adc b
    sub d
    add b
    add c
    adc e
    add h
    add e
    rst $20
    ld e, b
    ld bc, $c621
    nop
    ld c, a
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    or d
    ld a, a
    xor e
    and h
    and l
    or e
    rst $20
    ld d, a
    nop
    ld e, c
    call nc, $844f
    adc l
    add d
    adc [hl]
    sub c
    add h
    ld a, a
    and h
    xor l
    and e
    and h
    and e
    rst $20
    ld e, b
    ld bc, $d073
    nop
    ld a, a
    and [hl]
    or c
    and h
    or [hl]
    ld a, a
    or e
    xor [hl]
    ld c, a
    xor e
    and h
    or l
    and h
    xor e
    ld a, a
    ld d, b
    add hl, bc
    ld b, e
    pop de
    inc de
    nop
    rst $20
    ld d, b
    dec bc
    ld d, b
    ld d, b
    nop
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $c616
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and h
    and b
    or e
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    sub [hl]
    xor b
    xor e
    and e
    ld a, a
    ld d, b
    ld bc, $c616
    nop
    ld c, a
    xor b
    or d
    ld a, a
    and b
    xor l
    and [hl]
    or c
    cp b
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    or d
    ld a, a
    and l
    and b
    or d
    or e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or [hl]
    xor [hl]
    xor d
    and h

Call_020_4d01:
    ld a, a

Call_020_4d02:
    or h
    xor a

Call_020_4d04:
    rst $20
    ld e, b
    nop
    ld e, d

Call_020_4d08:
    ld c, a
    xor b
    or d
    ld a, a
    and l
    or c
    xor [hl]
    cp c

Call_020_4d10:
    and h
    xor l
    ld a, a
    or d
    xor [hl]
    xor e
    xor b
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and l
    xor e
    xor b

Call_020_4d20:
    xor l
    and d
    and a
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor h
    or h
    or d
    or e
    ld a, a
    or c
    and h
    and d
    and a
    and b
    or c
    and [hl]
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a34f
    xor b
    or d

Call_020_4d40:
    and b
    and c
    xor e
    and h
    and e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a
    and a
    or h
    or c
    or e
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    ld a, a
    xor b
    xor l
    ld c, a
    xor b
    or e
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    rst $20

Call_020_4d80:
    ld e, b
    nop
    ld e, d
    call nc, $a24f
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    and e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    and c
    and h
    and d
    and b
    xor h
    and h
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    and e
    rst $20
    ld e, b
    nop
    add b
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld a, a
    or c
    xor b
    and e
    ld c, a
    ld e, c
    ld d, l
    xor [hl]
    and l
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    xor b
    xor [hl]
    xor l
    add sp, $58
    nop
    ld e, c
    call nc, $a04f
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and d
    xor [hl]
    xor l
    and l
    or h
    or d
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a74f
    or h
    or c
    or e
    ld a, a
    and c
    cp b
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    xor e
    and h
    and b

Call_020_4e01:
    or d

Call_020_4e02:
    and h
    and e

Call_020_4e04:
    ld a, a
    and l
    or c
    xor [hl]

Call_020_4e08:
    xor h
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20

Call_020_4e10:
    ld e, b
    nop
    ld e, d
    ld c, a
    or h
    or d
    and h
    and e
    ld a, a
    add c
    adc b
    adc l
    add e
    ld a, a
    xor [hl]
    xor l

Call_020_4e20:
    ld d, l
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    or c
    and b
    xor a
    xor a
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or e
    or c
    and b
    xor a
    xor a

Call_020_4e40:
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    sub [hl]
    sub c
    add b
    adc a
    adc a
    add h
    add e
    ld a, a
    and c
    cp b
    ld d, l
    ld e, d
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    add d
    adc e
    add b
    adc h
    adc a
    add h
    add e
    ld a, a
    and c
    cp b
    ld d, l
    ld e, d
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    or d
    ld a, a
    or d
    or e
    xor [hl]
    or c
    xor b
    xor l
    and [hl]
    ld a, a
    and h
    xor l
    and h
    or c

Call_020_4e80:
    and [hl]
    cp b
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or h
    xor l
    xor e
    and h
    and b
    or d
    and a
    and h
    and e
    ld a, a
    and h
    xor l
    and h
    or c
    and [hl]
    cp b
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    and a
    or h
    xor l
    and [hl]
    ld a, a
    xor [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    add h
    adc l
    add e
    sub h
    sub c
    add h
    add e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and a
    xor b
    or e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    or d
    ld a, a
    xor b
    xor l
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld d, l
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a84f
    xor l
    and l
    and b
    or e
    or h
    and b
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    xor d
    and h
    xor a
    or e
    ld d, l
    xor b
    or e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, Call_020_504f
    ld bc, $d073
    nop
    ld a, a
    xor b
    or d
    ld d, l
    add e
    adc b
    sub d
    add b
    add c
    adc e
    add h
    add e
    rst $20
    ld e, b
    ld bc, $c621
    nop
    ld a, a
    xor b
    or d
    ld c, a
    xor e
    xor [hl]
    and b
    and l
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    or c
    xor [hl]
    or h
    xor l
    and e
    add sp, $58
    ld bc, $c621
    nop
    ld a, a
    and c
    and h
    and [hl]
    and b
    xor l
    ld c, a
    or e
    xor [hl]
    ld a, a
    xor l
    and b
    xor a
    rst $20
    ld e, b
    ld bc, $c621
    nop
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld c, a
    xor [hl]
    and c
    and h
    cp b
    rst $20
    ld e, b
    ld bc, $c621
    nop
    ld a, a
    or e
    or h
    or c
    xor l
    and h
    and e
    ld c, a
    and b
    or [hl]
    and b
    cp b
    rst $20
    ld e, b
    ld bc, $c621
    nop
    ld a, a
    xor b
    and [hl]
    xor l
    xor [hl]
    or c
    and h
    and e
    ld c, a
    xor [hl]
    or c
    and e
    and h
    or c
    or d
    rst $20
    ld e, b
    ld bc, $c621
    nop
    ld a, a
    xor b
    and [hl]
    xor l
    xor [hl]
    or c
    and h
    and e
    ld c, a
    xor [hl]
    or c
    and e
    and h
    or c
    or d
    ld [hl], l
    or d
    xor e
    and h
    and h
    xor a
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    add c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    ld a, a
    adc a
    adc a
    ld a, a
    xor b
    or d
    ld a, a
    xor e
    and h
    and l
    or e
    ld c, a
    and l
    xor [hl]
    or c
    ld a, a
    or e
    and a
    and h
    ld a, a
    xor h
    xor [hl]
    or l
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and a
    and b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    adc a
    adc a
    ld a, a
    xor e
    and h
    and l
    or e
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld d, b
    ld bc, $d086
    nop
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or [hl]
    and h
    xor l
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
    rst $20
    ld d, a
    nop
    ld e, d
    ld c, a
    and l
    and h
    xor e
    xor e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and c
    and h
    and d
    and b
    xor h

Call_020_5001:
    and h

Call_020_5002:
    ld a, a
    and a

Call_020_5004:
    and h
    and b
    xor e
    or e

Call_020_5008:
    and a
    cp b
    rst $20
    ld d, a
    nop
    ld e, d
    ld c, a
    or c

Call_020_5010:
    and h
    and [hl]
    and b
    xor b
    xor l
    and h
    and e
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    rst $20
    ld e, b

Call_020_5020:
    nop
    ld e, d
    call nc, $a04f
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    xor h
    xor b
    or d
    or d
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a04f
    or e
    or e
    and b
    and d
    xor d
    ld a, a
    xor h
    xor b

Call_020_5040:
    or d
    or d
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor d
    and h
    xor a
    or e
    ld a, a
    and [hl]

Call_020_504f:
    xor [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    and b
    xor l
    and e
    ld d, l
    and d
    or c
    and b
    or d
    and a
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $b44f
    xor l
    and b
    and l
    and l
    and h
    and d
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a
    and e
    xor [hl]
    and h
    or d
    xor l
    push de
    ld a, a
    and b
    and l
    and l
    and h

Call_020_5080:
    and d
    or e
    ld c, a
    ld e, c
    rst $20
    ld e, b
    nop
    add b
    ld a, a
    and d
    or c
    xor b
    or e
    xor b
    and d
    and b
    xor e
    ld a, a
    and a
    xor b
    or e
    rst $20
    ld e, b
    nop
    adc b
    or e
    call nc, $a07f
    ld a, a
    xor [hl]
    xor l
    and h
    db $e3
    and a
    xor b
    or e
    ld a, a
    adc d
    adc [hl]
    rst $20
    ld e, b
    nop
    adc b
    or e
    call nc, $b27f
    or h
    xor a
    and h
    or c
    db $e3
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
    rst $20
    ld e, b
    nop
    adc b
    or e
    call nc, $ad7f
    xor [hl]
    or e
    ld a, a
    or l
    and h
    or c
    cp b
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
    ld [hl], l

Jump_020_50d9:
    ld e, b
    nop
    ld e, c
    ld c, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    db $f4
    ld d, l
    ld e, d
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $914f
    add b
    add [hl]
    add h
    ld a, a
    xor b
    or d
    ld a, a
    and c
    or h

Call_020_5101:
    xor b
    xor e
    and e
    xor b
    xor l
    and [hl]
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    and [hl]
    xor [hl]
    or e
    ld a, a
    and b
    xor l
    ld a, a
    add h
    adc l
    add d
    adc [hl]
    sub c
    add h
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    or c
    or d
    ld c, a
    or d
    and a
    and b
    or c
    and h
    and e
    ld a, a
    xor a
    and b
    xor b
    xor l
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and b
    xor b
    xor h
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    sub d
    adc d
    add h
    sub e
    add d
    add a
    add h
    add e
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $b34f
    or c
    cp b
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
    ld a, a
    xor b
    or e
    or d
    ld d, l
    xor [hl]
    xor a
    xor a
    xor [hl]
    xor l
    and h
    xor l
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    xor b
    or e
    rst $20
    ld e, b
    nop

Call_020_5180:
    ld e, c
    call nc, Call_020_504f
    ld bc, $d073
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    or c
    and h
    and e
    or h
    and d
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    ld d, b
    add hl, bc
    ld h, l
    jp nc, $0011

    rst $20
    ld e, b
    nop
    add b
    ld a, a
    and c
    and h
    xor e
    xor e
    ld a, a
    and d
    and a
    xor b
    xor h
    and h
    and e
    rst $20
    ld c, a
    ld e, b
    nop
    ld e, c
    ld c, a
    and l
    and h
    xor e
    xor e
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $a04f
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    and b
    or d
    xor e
    and h
    and h
    xor a
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $a14f
    and b
    and e
    xor e
    cp b
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $a04f
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    xor a
    xor [hl]
    xor b
    or d
    xor [hl]
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    sub d
    or h
    and d
    xor d
    and h
    and e
    ld a, a
    and a
    and h
    and b
    xor e
    or e
    and a
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld c, a
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $a34f
    or c
    and h
    and b
    xor h
    ld a, a
    or [hl]
    and b
    or d
    ld a, a
    and h
    and b
    or e
    and h
    xor l
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and c
    or h
    or c
    xor l
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and e
    and h
    and l
    or c
    xor [hl]
    or d
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and l
    or c
    xor [hl]
    cp c
    and h
    xor l
    ld a, a
    or d
    xor [hl]
    xor e
    xor b
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, Call_020_504f
    ld bc, $d086
    nop
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld d, l
    or c
    xor b
    or d
    and h
    ld a, a
    and b
    xor l
    cp b
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, Call_020_504f
    ld bc, $d086
    nop
    ld a, a
    or [hl]
    xor [hl]
    xor l
    push de
    ld d, l
    and e
    or c
    xor [hl]
    xor a
    ld a, a
    and b
    xor l
    cp b
    xor h
    xor [hl]
    or c
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and l
    xor e
    and h
    and e
    ld a, a
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    and l
    xor e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    and l
    and h
    and b
    or c
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
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
    rst $20
    ld e, b
    nop
    add a
    xor b
    or e
    ld a, a
    ld d, b
    add hl, bc
    add d
    add $11
    nop
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    rst $20
    ld e, b
    nop
    add a
    xor b
    or e
    ld a, a
    ld d, b
    add hl, bc
    add h
    add $11
    nop
    ld a, a
    or e
    xor b
    xor h
    and h
    or d
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $b24f
    and a
    or c
    xor [hl]
    or h
    and e
    and h
    and e
    ld a, a
    xor b
    xor l
    ld a, a
    adc h
    adc b
    sub d
    sub e
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $af4f
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    adc h
    adc b
    sub d
    sub e
    add sp, $58
    ld a, [bc]
    nop
    ld e, d
    call nc, $a64f
    and h
    or e
    or e
    xor b
    xor l
    and [hl]
    ld a, a
    xor a
    or h
    xor h
    xor a
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a74f
    xor b
    or e
    ld a, a
    or [hl]
    xor b
    or e
    and a
    ld a, a
    or c
    and h
    and d
    xor [hl]
    xor b
    xor e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor h
    and b
    and e
    and h
    ld a, a
    and b
    ld a, a
    sub d
    sub h
    add c
    sub d
    sub e
    adc b
    sub e
    sub h
    sub e
    add h
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and a
    and b
    or d
    ld a, a
    and b
    ld a, a
    sub d
    sub h
    add c
    sub d
    sub e
    adc b
    sub e
    sub h
    sub e
    add h
    rst $20
    ld e, b
    nop
    sub e
    xor [hl]
    xor [hl]
    ld a, a
    or [hl]
    and h
    and b
    xor d
    ld a, a
    or e
    xor [hl]
    ld a, a
    xor h
    and b
    xor d
    and h
    ld c, a
    and b
    ld a, a
    sub d
    sub h
    add c
    sub d
    sub e
    adc b
    sub e
    sub h
    sub e
    add h
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    sub d
    sub h
    add c
    sub d
    sub e
    adc b
    sub e
    sub h
    sub e
    add h
    ld c, a
    or e
    xor [hl]
    xor [hl]
    xor d
    ld a, a
    and e
    and b
    xor h
    and b
    and [hl]
    and h
    ld a, a
    and l
    xor [hl]
    or c
    ld d, l
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $924f
    sub h
    add c
    sub d
    sub e
    adc b
    sub e
    sub h
    sub e
    add h
    ld a, a
    and l
    and b
    and e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor e
    and h
    and b
    or c
    xor l
    and h
    and e
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or d
    and h

Call_020_5401:
    and h

Call_020_5402:
    and e
    and h

Call_020_5404:
    and e
    rst $20
    ld e, b
    nop

Call_020_5408:
    ld e, c
    ld c, a
    and h
    or l
    and b
    and e
    and h
    and e

Call_020_5410:
    ld a, a
    or e
    and a
    and h
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, Call_020_504f
    ld bc, $d073
    nop
    ld a, a
    or [hl]
    and b
    or d
    ld d, l
    add e
    adc b
    sub d
    add b
    add c
    adc e
    add h
    add e
    rst $20
    ld e, b
    nop
    add d
    xor [hl]
    xor b
    xor l
    or d
    ld a, a
    or d
    and d
    and b
    or e

Call_020_5440:
    or e
    and h
    or c
    and h
    and e
    ld c, a
    and h
    or l
    and h
    or c
    cp b
    or [hl]
    and a
    and h
    or c
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or e
    or c
    and b
    xor l
    or d
    and l
    xor [hl]
    or c
    xor h
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
    ld d, b
    ld bc, $d073
    nop
    db $e3
    or e
    cp b
    xor a
    and h
    rst $20
    ld e, b
    nop
    add b
    xor e
    xor e
    ld a, a
    or d
    or e
    and b
    or e
    ld a, a
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    or d
    ld c, a
    or [hl]
    and h
    or c
    and h
    ld a, a
    and h
    xor e
    xor b
    xor h
    xor b
    xor l
    and b
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    sub e
    sub c
    add b
    adc l
    sub d
    add l
    adc [hl]
    sub c
    adc h
    add h
    add e
    ld a, a
    xor b
    xor l
    or e
    xor [hl]
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $924f
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    ld a, a
    or c
    xor [hl]
    or d
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $834f
    add h
    add l
    add h
    adc l
    sub d
    add h
    ld a, a
    or c
    xor [hl]
    or d
    and h
    rst $20
    ld e, b
    nop
    add c
    or h
    or e
    ld a, a
    xor l
    xor [hl]
    or e
    and a
    xor b
    xor l
    and [hl]
    ld c, a
    and a
    and b
    xor a
    xor a
    and h
    xor l
    and h
    and e
    add sp, $58
    nop
    add c
    or h
    or e
    ld a, a
    xor b
    or e
    ld a, a
    and l
    and b
    xor b
    xor e
    and h
    and e
    rst $20
    ld e, b
    nop

Call_020_5501:
    adc b

Call_020_5502:
    or e
    ld a, a

Call_020_5504:
    and l
    and b
    xor b
    xor e

Call_020_5508:
    and h
    and e
    rst $20
    ld e, b
    nop
    adc b
    or e
    ld a, a

Call_020_5510:
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    and b
    and l
    and l
    and h
    and d
    or e
    ld c, a
    ld e, c
    rst $20
    ld e, b

Call_020_5520:
    nop
    adc b
    or e
    ld a, a
    and e
    xor b
    and e
    xor l
    push de
    ld a, a
    and b
    and l
    and l
    and h
    and d
    or e
    ld c, a
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $874f
    adc a
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h

Call_020_5540:
    xor e
    xor e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and e
    or c
    and b
    and [hl]
    and [hl]
    and h
    and e
    ld a, a
    xor [hl]
    or h
    or e
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $af4f
    and b
    or c
    and b
    xor e
    cp b
    cp c
    and h
    and e
    rst $20
    ld a, a
    adc h
    and b
    cp b
    and c
    and h
    ld d, l
    xor b
    or e
    ld a, a
    and d
    and b
    xor l
    push de
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a54f
    or h
    xor e
    xor e
    cp b
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    cp c
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $a04f
    xor e
    or c
    and h
    and b
    and e
    cp b
    ld a, a
    xor a
    and b
    or c
    and b
    xor e
    cp b
    cp c
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $af4f
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld d, l
    ld d, b
    ld bc, $d073
    nop
    rst $20
    ld e, b
    nop
    sub e
    and a
    and h
    ld a, a
    adc h
    adc b
    sub c
    sub c
    adc [hl]
    sub c
    ld a, a
    adc h
    adc [hl]
    sub l
    add h
    ld c, [hl]
    and l
    and b
    xor b
    xor e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or d
    or e
    xor [hl]
    xor e
    and h
    ld a, a
    ld d, b
    ld bc, $d073
    nop
    ld d, l
    and l
    or c
    xor [hl]
    xor h
    ld a, a
    xor b
    or e
    or d
    ld a, a
    and l
    xor [hl]
    and h
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    and d
    and b
    xor l
    push de
    ld a, a
    and h
    or d

Call_020_5601:
    and d

Call_020_5602:
    and b
    xor a

Call_020_5604:
    and h
    ld a, a
    xor l
    xor [hl]

Call_020_5608:
    or [hl]
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    or d
    or e

Call_020_5610:
    and b
    or c
    or e
    and h
    and e
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
    ld d, l

Call_020_5620:
    adc l
    adc b
    add [hl]
    add a
    sub e
    adc h
    add b
    sub c
    add h
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    and e
    and h
    and l
    or c
    xor [hl]
    or d
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a

Call_020_5640:
    and d
    or h
    or e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    xor [hl]
    or [hl]
    xor l
    ld a, a
    add a
    adc a
    ld a, a
    and b
    xor l
    and e
    ld d, c
    xor a
    or h
    or e
    ld a, a
    and b
    ld a, a
    add d
    sub h
    sub c
    sub d
    add h
    ld a, a
    xor [hl]
    xor l
    ld c, a
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    adc a
    sub c
    adc [hl]
    sub e
    add h
    add d
    sub e
    add h
    add e
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    rst $20
    ld e, b
    nop
    ld e, c
    call nc, $8f4f
    sub c

Call_020_5680:
    adc [hl]
    sub e
    add h
    add d
    sub e
    adc b
    adc l
    add [hl]
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    rst $20
    ld d, a
    nop
    sub d
    adc a
    adc b
    adc d
    add h
    sub d
    ld a, a
    or d
    and d
    and b
    or e
    or e
    and h
    or c
    and h
    and e
    ld c, a
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
    ld d, l
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    and e
    and h
    xor l
    or e
    xor b
    and l
    xor b
    and h
    and e
    ld d, l
    ld e, c
    rst $20
    ld e, b
    nop
    add c
    xor [hl]
    or e
    and a
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
    and l
    and b
    xor b
    xor l
    or e
    ld a, a
    xor b
    xor l
    ld a, a
    ld sp, hl
    ld a, a
    or e
    or h
    or c
    xor l
    or d
    rst $20
    ld e, b
    nop
    add b
    ld a, a
    sub d
    add b
    adc l
    add e
    sub d
    sub e
    adc [hl]
    sub c
    adc h
    ld c, a
    and c
    or c
    and h
    or [hl]
    and h
    and e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and c
    or c
    and b
    and d
    and h
    and e
    ld a, a
    xor b
    or e
    or d
    and h
    xor e
    and l
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    and l
    and h
    xor e
    xor e
    ld a, a
    xor b
    xor l
    ld a, a
    xor e
    xor [hl]
    or l
    and h
    rst $20
    ld e, b
    nop
    ld e, d
    call nc, $a24f
    xor [hl]
    or l
    and h
    or c
    and h
    and e
    ld a, a
    and c
    cp b
    ld a, a
    and b
    ld a, a
    or l
    and h
    xor b
    xor e
    rst $20
    ld e, b
    nop
    ld e, c
    ld c, a
    xor b
    or d
    ld a, a
    xor a
    or c
    xor [hl]
    or e
    and h
    and d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld d, l
    sub d
    add b
    add l
    add h
    add [hl]
    sub h
    add b
    sub c
    add e
    rst $20
    ld e, b
    nop
    adc h
    and b
    and [hl]
    xor l
    xor b
    or e
    or h
    and e
    and h
    ld a, a
    ld d, b
    add hl, bc
    ld h, l
    jp nc, $0011

    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or [hl]
    and b
    or d
    ld a, a
    or c
    and h
    xor e
    and h
    and b
    or d
    and h
    and e
    ld a, a
    and c
    cp b
    ld d, l
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    or d
    and a
    and h
    and e
    ld a, a
    adc e
    add h
    add h
    add d
    add a
    ld a, a
    sub d
    add h
    add h
    add e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and c
    xor e
    and h
    or [hl]
    ld a, a
    and b
    or [hl]
    and b
    cp b
    ld a, a
    sub d
    adc a
    adc b
    adc d
    add h
    sub d
    rst $20
    ld e, b
    nop
    add b
    ld a, a
    and e
    xor [hl]
    or [hl]
    xor l
    xor a
    xor [hl]
    or h
    or c
    ld c, a
    or d
    or e
    and b
    or c
    or e
    and h
    and e
    rst $20
    ld e, b
    nop
    sub e
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
    ld a, a
    and [hl]
    xor [hl]
    or e
    ld c, a
    and c
    or c
    xor b
    and [hl]
    and a
    or e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and d
    or h
    or e
    ld a, a
    xor b
    or e
    or d
    ld a, a
    add a
    adc a
    ld a, a
    and b
    xor l
    and e
    ld d, l
    xor h
    and b
    or a
    xor b
    xor h
    xor b
    cp c
    and h
    and e
    ld a, a
    add b
    sub e
    sub e
    add b
    add d
    adc d
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and d
    xor [hl]
    xor a
    xor b
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    or d
    or e
    and b
    or e
    ld d, c
    and d
    and a
    and b
    xor l
    and [hl]
    and h
    or d
    ld a, a
    xor [hl]
    and l
    ld c, a
    ld e, c
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    and l
    xor [hl]
    or c
    and h
    or d
    and b
    or [hl]
    ld a, a
    and b
    xor l
    ld a, a
    and b
    or e
    or e
    and b
    and d
    xor d
    rst $20
    ld e, b
    ld bc, $d073
    nop
    call nc, $a04f
    or e
    or e
    and b
    and d
    xor d
    rst $20
    ld d, a
    nop
    ld e, c
    ld c, a
    or c
    and h

Call_020_5840:
    and l
    or h
    or d
    and h
    and e
    ld a, a
    or e
    and a
    and h
    ld a, a
    and [hl]
    xor b
    and l
    or e
    rst $20
    ld e, b
    nop
    ld e, d
    ld c, a
    xor b
    and [hl]
    xor l
    xor [hl]
    or c
    and h
    and e
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    or d
    rst $20
    ld e, b
    nop
    adc e
    xor b
    xor l
    xor d
    ld a, a
    and h
    or c
    or c
    xor [hl]
    or c
    ld [hl], l
    ld d, c
    sub e
    and a
    and h
    ld a, a
    and c
    and b
    or e
    or e
    xor e
    and h
    ld a, a
    and a
    and b
    or d
    ld c, a
    and c
    and h
    and h
    xor l
    ld a, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    and h
    and e
    ld [hl], l
    ld e, b
    nop
    sub e
    and a
    and h
    or c
    and h
    ld a, a
    xor b
    or d
    ld a, a
    xor l
    xor [hl]
    ld a, a
    or e
    xor b
    xor h
    and h
    ld c, a
    xor e
    and h
    and l
    or e
    ld a, a
    or e
    xor [hl]
    and e
    and b
    cp b
    rst $20
    ld d, a
    ldh a, [$e6]
    and a
    jr nz, jr_020_58b5

    ldh a, [$e7]
    and a
    ret z

jr_020_58b5:
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    call $0568
    call Call_020_5948
    call Call_020_597c
    call Call_020_59a7
    call Call_020_58f4
    call $058a
    ld de, $0000
    call $3b97
    xor a
    ld [$cf63], a
    ld [$cf66], a
    ld [$d003], a

jr_020_58de:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_020_58f0

    call Call_020_5a74
    call Call_020_5f5e
    call $045a
    jr jr_020_58de

jr_020_58f0:
    pop af
    ldh [$aa], a
    ret


Call_020_58f4:
    ld a, [$d002]
    and a
    jr nz, jr_020_5911

    ld hl, $68ce

Call_020_58fd:
    ld de, $c800
    ld c, $fc

jr_020_5902:
    push bc
    push hl
    call Call_020_5928
    pop hl
    ld bc, $0008
    add hl, bc
    pop bc
    dec c
    jr nz, jr_020_5902

    ret


jr_020_5911:
    ld hl, $70ce
    ld de, $c800
    ld c, $44

jr_020_5919:
    push bc
    push hl
    call Call_020_5928
    pop hl
    ld bc, $0004
    add hl, bc
    pop bc
    dec c
    jr nz, jr_020_5919

    ret


Call_020_5928:
    ld a, $02
    call $304d
    ld [de], a
    inc de
    inc hl
    ld a, $02
    call $304d
    ld [de], a
    inc de
    inc hl
    ld a, $02
    call $304d
    ld [de], a
    inc de
    inc hl
    ld a, $02
    call $304d
    ld [de], a
    inc de
    ret


Call_020_5948:
    ld a, $01
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    xor a
    call $3041
    ld a, $00
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    xor a
    call $3041
    ld hl, $cdd9
    ld bc, $0168
    xor a
    call $3041
    ld hl, $c4a0
    ld bc, $0168
    xor a
    call $3041
    call $300b
    ret


Call_020_597c:
    ld hl, $5ff3
    ld de, $96a0
    ld bc, $0160
    call $3026
    ld hl, $5fe3
    ld de, $8000
    ld bc, $0010
    call $3026
    call $0e51
    ld hl, $8800
    ld bc, $0800

jr_020_599d:
    ld a, [hl]
    xor $ff
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_020_599d

    ret


Call_020_59a7:
    ldh a, [$e6]
    and a
    ret z

    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $59f4
    ld de, $d080
    ld bc, $0080
    call $3026
    ld a, $80
    ldh [rBCPS], a
    ld hl, $59f4
    ld c, $40
    xor a

jr_020_59c8:
    ldh [rBCPD], a
    dec c
    jr nz, jr_020_59c8

    ld a, $80
    ldh [rOCPS], a
    ld hl, $5a34
    ld c, $40

jr_020_59d6:
    ld a, [hl+]
    ldh [rOCPD], a
    dec c
    jr nz, jr_020_59d6

    ld a, $94
    ld [$c608], a
    ld a, $52
    ld [$c609], a
    ld a, $4a
    ld [$c60a], a
    ld a, $29
    ld [$c60b], a
    pop af
    ldh [rSVBK], a
    ret


    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    nop
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    rra
    nop
    nop
    nop
    rst $38
    ld a, a
    ldh [$03], a
    ldh [$03], a
    nop
    nop
    rst $38
    ld a, a
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop

Call_020_5a74:
    call $0a57
    ld a, [$cf63]
    cp $04
    jr nc, jr_020_5a8b

    ld hl, $ffa9
    ld a, [hl]
    and $04
    jr nz, jr_020_5a9a

    ld a, [hl]
    and $08
    jr nz, jr_020_5aab

jr_020_5a8b:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $5acf
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_020_5a9a:
    call Call_020_5eca
    call Call_020_5ac3
    ld e, a
    ld a, [$cf66]
    inc a
    cp e
    jr c, jr_020_5aba

    xor a
    jr jr_020_5aba

jr_020_5aab:
    call Call_020_5eca
    ld a, [$cf66]
    dec a
    cp $ff
    jr nz, jr_020_5aba

    call Call_020_5ac3
    dec a

jr_020_5aba:
    ld [$cf66], a
    ld a, $00
    ld [$cf63], a
    ret


Call_020_5ac3:
    ld a, [$d002]
    and a
    jr nz, jr_020_5acc

    ld a, $fb
    ret


jr_020_5acc:
    ld a, $43
    ret


    db $db
    ld e, d
    jr @+$5e

    inc sp
    ld e, h
    jp nz, $8e5c

    ld e, l
    xor a
    ld e, l
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $6f
    call $3041
    ld hl, $c4dd
    ld bc, $0712
    ld a, $6c
    call Call_020_5efc
    ld hl, $c4ab
    ld bc, $0203
    ld a, $6d
    call Call_020_5efc
    ld hl, $c4b0
    ld bc, $0203
    ld a, $6e
    call Call_020_5efc
    call Call_020_5bc0
    call Call_020_5bf4
    ld a, [$cf66]
    inc a
    ld [$d108], a
    ld [$d265], a
    ld hl, $c4b4
    ld de, $d265
    ld bc, $8103
    call $3198
    ld a, [$d002]
    and a
    jr nz, jr_020_5b7a

    ld a, $01
    ld [$d234], a
    call $343b
    ld hl, $c4b8
    call $1078
    xor a
    ld [$c2c6], a
    ld hl, $c4e8
    call $378b
    ld de, $9310
    ld a, $3d
    call $2d83
    ld a, $31
    ldh [$ad], a
    ld hl, $c4f2
    ld bc, $0606
    ld a, $13
    call $2d83
    ld a, [$d003]
    and a
    jr z, jr_020_5b66

    ld de, $5baf
    jr jr_020_5b69

jr_020_5b66:
    ld de, $5bb4

jr_020_5b69:
    ld hl, $c5fb
    call $1078
    ld hl, $c5f4
    ld de, $5bb9
    call $1078
    jr jr_020_5ba9

jr_020_5b7a:
    ld a, [$d265]
    ld [$d233], a

Call_020_5b80:
    ld hl, $557b
    ld a, $0e
    rst $08
    ld de, $d073
    ld hl, $c4b8
    call $1078
    ld de, $9000
    ld hl, $520d
    ld a, $14
    rst $08
    xor a
    ld [$d204], a
    ldh [$ad], a
    ld hl, $c4de
    ld bc, $0707
    ld a, $13
    call $2d83

jr_020_5ba9:
    ld a, $01
    ld [$cf63], a
    ret


    and a
    add b
    ld l, a
    ld l, a
    ld d, b
    sbc b
    db $e3
    sbc l
    and [hl]
    ld d, b
    ld a, d
    or a
    ret c

    or [hl]
    or h
    db $ed
    ld d, b

Call_020_5bc0:
    ld de, $ceb5
    ld hl, $c57e
    ld a, $01
    call Call_020_5bde
    ld de, $cedd
    ld hl, $c5a6
    ld a, $02
    call Call_020_5bde
    ld de, $cf05
    ld hl, $c5ce
    ld a, $03

Call_020_5bde:
    push af
    ld a, $6a
    ld [hl+], a
    ld bc, $000f
    ld a, $6b
    call $3041
    ld l, e
    ld h, d
    pop af
    ld bc, $0028
    call $3041
    ret


Call_020_5bf4:
    ld a, [$cf66]
    inc a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $c800
    add hl, de
    ld de, $c608
    ld bc, $0004
    call $3026
    xor a
    ld [$cf64], a
    ld [$cf65], a
    ld de, $c608
    call Call_020_5ea5
    ret


    ldh a, [$e6]
    and a
    jr z, jr_020_5c2a

    ld a, $02
    ldh [$d4], a
    call $045a
    call $045a
    call $045a

jr_020_5c2a:
    call $31f6
    ld a, $02
    ld [$cf63], a
    ret


    ldh a, [$e6]
    and a
    jr z, jr_020_5c69

    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld de, $c608
    ld c, $01
    call Call_020_5ee3
    ld hl, $c4d2
    ld de, $c608
    call Call_020_5ca7
    ld hl, $c4d7
    ld de, $c60a
    call Call_020_5ca7
    ld a, $01
    ldh [$e5], a
    ld a, $03
    ld [$cf63], a
    pop af
    ldh [rSVBK], a
    ret


jr_020_5c69:
    ld hl, $cda9
    ld a, $01
    ld [hl+], a
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl+], a
    ld a, [$c608]
    ld [hl+], a
    ld a, [$c609]
    ld [hl+], a
    ld a, [$c60a]
    ld [hl+], a
    ld a, [$c60b]
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $cda9
    call Call_020_5f0c
    ld hl, $c4d2
    ld de, $c608
    call Call_020_5ca7
    ld hl, $c4d7
    ld de, $c60a
    call Call_020_5ca7
    ld a, $03
    ld [$cf63], a
    ret


Call_020_5ca7:
    inc hl
    inc hl
    inc hl
    ld a, [de]
    call Call_020_5cbc
    ld a, [de]
    swap a
    call Call_020_5cbc
    inc de
    ld a, [de]
    call Call_020_5cbc
    ld a, [de]
    swap a

Call_020_5cbc:
    and $0f
    add $70
    ld [hl-], a
    ret


    ldh a, [$a9]
    and $02
    jr nz, jr_020_5cdf

    ldh a, [$a9]
    and $01
    jr nz, jr_020_5ce5

    ld a, [$cf64]
    and $03
    ld e, a
    ld d, $00
    ld hl, $5d02
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


jr_020_5cdf:
    ld a, $04
    ld [$cf63], a
    ret


jr_020_5ce5:
    ld a, [$d002]
    and a
    ret nz

    ld a, [$d003]
    xor $04
    ld [$d003], a
    ld c, a
    ld b, $00
    ld hl, $68ce
    add hl, bc
    call Call_020_58fd
    ld a, $00
    ld [$cf63], a
    ret


    ld a, [bc]
    ld e, l
    inc [hl]
    ld e, l
    ld b, [hl]
    ld e, l
    ld e, b
    ld e, l
    ld hl, $ffa9
    ld a, [hl]
    and $80
    jr nz, jr_020_5d89

    ld a, [hl]
    and $20
    jr nz, jr_020_5d1d

    ld a, [hl]
    and $10
    jr nz, jr_020_5d28

    ret


jr_020_5d1d:
    xor a
    ld [$cf65], a
    ld de, $c608
    call Call_020_5ea5
    ret


jr_020_5d28:
    ld a, $01
    ld [$cf65], a
    ld de, $c60a
    call Call_020_5ea5
    ret


    ld hl, $ffa9
    ld a, [hl]
    and $80
    jr nz, jr_020_5d89

    ld a, [hl]
    and $40
    jr nz, jr_020_5d84

    ld hl, $c612
    jr jr_020_5d63

    ld hl, $ffa9
    ld a, [hl]
    and $80
    jr nz, jr_020_5d89

    ld a, [hl]
    and $40
    jr nz, jr_020_5d84

    ld hl, $c613
    jr jr_020_5d63

    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_020_5d84

    ld hl, $c614

jr_020_5d63:
    ldh a, [$a9]
    and $10
    jr nz, jr_020_5d70

    ldh a, [$a9]
    and $20
    jr nz, jr_020_5d77

    ret


jr_020_5d70:
    ld a, [hl]
    cp $1f
    ret nc

    inc [hl]
    jr jr_020_5d7b

jr_020_5d77:
    ld a, [hl]
    and a
    ret z

    dec [hl]

jr_020_5d7b:
    call Call_020_5e67
    ld a, $02
    ld [$cf63], a
    ret


jr_020_5d84:
    ld hl, $cf64
    dec [hl]
    ret


jr_020_5d89:
    ld hl, $cf64
    inc [hl]
    ret


    ld hl, $c568
    ld bc, $00a0
    ld a, $6f
    call $3041
    ld hl, $c592
    ld de, $5fcd
    call $1078
    xor a
    ld [$d004], a
    call Call_020_5df4
    ld a, $05
    ld [$cf63], a
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_020_5dbb

    call Call_020_5dc7
    ret


jr_020_5dbb:
    ld a, $00
    ld [$cf63], a
    ret


    ld hl, $cf63
    set 7, [hl]
    ret


Call_020_5dc7:
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_020_5dd5

    ld a, [hl]
    and $80
    jr nz, jr_020_5de2

    ret


jr_020_5dd5:
    ld a, [$d004]
    cp $3b
    jr z, jr_020_5ddf

    inc a
    jr jr_020_5ded

jr_020_5ddf:
    xor a
    jr jr_020_5ded

jr_020_5de2:
    ld a, [$d004]
    and a
    jr z, jr_020_5deb

    dec a
    jr jr_020_5ded

jr_020_5deb:
    ld a, $3b

jr_020_5ded:
    ld [$d004], a
    call Call_020_5df4
    ret


Call_020_5df4:
    ld hl, $c586
    call Call_020_5e5e
    ld hl, $c59a
    call Call_020_5e5e
    ld hl, $c5ae
    call Call_020_5e5e
    ld hl, $c5c2
    call Call_020_5e5e
    ld a, [$d004]
    inc a
    ld [$d265], a
    ld a, $0f
    call $2d83
    ld a, [$d265]
    ld [$d262], a
    call $34f8
    ld hl, $c59a
    call $1078
    ld a, [$d004]
    call Call_020_5e55
    ld [$d106], a
    ld a, $0e
    call $2d83
    ld a, c
    and a
    ld de, $5e46
    jr nz, jr_020_5e3f

    ld de, $5e4d

jr_020_5e3f:
    ld hl, $c5c2
    call $1078
    ret


    or l
    ld a, $b4
    rst $10
    jp c, Jump_020_50d9

    or l
    ld a, $b4
    rst $10
    jp c, $b2c5

    ld d, b

Call_020_5e55:
    cp $32
    jr c, jr_020_5e5b

    inc a
    inc a

jr_020_5e5b:
    add $bf
    ret


Call_020_5e5e:
    ld bc, $000a
    ld a, $6f
    call $3041
    ret


Call_020_5e67:
    ld a, [$c612]
    and $1f
    ld e, a
    ld a, [$c613]
    and $07
    sla a
    swap a
    or e
    ld e, a
    ld a, [$c613]
    and $18
    sla a
    swap a
    ld d, a
    ld a, [$c614]
    and $1f
    sla a
    sla a
    or d
    ld d, a
    ld a, [$cf65]
    and a
    jr z, jr_020_5e9c

    ld a, e
    ld [$c60a], a
    ld a, d
    ld [$c60b], a
    ret


jr_020_5e9c:
    ld a, e
    ld [$c608], a
    ld a, d
    ld [$c609], a
    ret


Call_020_5ea5:
    ld a, [de]
    and $1f
    ld [$c612], a
    ld a, [de]
    and $e0
    swap a
    srl a
    ld b, a
    inc de
    ld a, [de]
    and $03
    swap a
    srl a
    or b
    ld [$c613], a
    ld a, [de]
    and $7c
    srl a
    srl a
    ld [$c614], a
    ret


Call_020_5eca:
    ld a, [$cf66]
    inc a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $c800
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c608
    ld bc, $0004
    call $3026
    ret


Call_020_5ee3:
jr_020_5ee3:
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl+], a
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
    inc de
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_020_5ee3

    ret


Call_020_5efc:
jr_020_5efc:
    push bc
    push hl

jr_020_5efe:
    ld [hl+], a
    dec c
    jr nz, jr_020_5efe

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_020_5efc

    ret


Call_020_5f0c:
    ld a, [$cfbe]
    push af
    set 7, a
    ld [$cfbe], a
    call Call_020_5f1d
    pop af
    ld [$cfbe], a
    ret


Call_020_5f1d:
    ld a, [hl]
    and $07
    ret z

    ld b, a

jr_020_5f22:
    push bc
    xor a
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    ld b, $10

jr_020_5f2c:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_020_5f30:
    bit 0, d
    ld a, $10
    jr nz, jr_020_5f38

    ld a, $20

jr_020_5f38:
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    rr d
    dec e
    jr nz, jr_020_5f30

    dec b
    jr nz, jr_020_5f2c

    ld a, $20
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    ld de, $1b58

jr_020_5f51:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_020_5f51

    pop bc
    dec b
    jr nz, jr_020_5f22

    ret


Call_020_5f5e:
    ld a, $6f
    ld hl, $c4aa
    ld [hl], a
    ld hl, $c4af
    ld [hl], a
    ld hl, $c57d
    ld [hl], a
    ld hl, $c5a5
    ld [hl], a
    ld hl, $c5cd
    ld [hl], a
    ld a, [$cf63]
    cp $03
    jr nz, jr_020_5fc9

    ld a, [$cf64]
    and a
    jr z, jr_020_5f8d

    dec a
    ld hl, $c57d
    ld bc, $0028
    call $30fe
    ld [hl], $ed

jr_020_5f8d:
    ld a, [$cf65]
    and a
    jr z, jr_020_5f98

    ld hl, $c4af
    jr jr_020_5f9b

jr_020_5f98:
    ld hl, $c4aa

jr_020_5f9b:
    ld [hl], $ed
    ld b, $70
    ld c, $05
    ld hl, $c400
    ld de, $c612
    call Call_020_5fb7
    ld de, $c613
    call Call_020_5fb7
    ld de, $c614
    call Call_020_5fb7
    ret


Call_020_5fb7:
    ld a, b
    ld [hl+], a
    ld a, [de]
    add a
    add a
    add $18
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, $10
    add b
    ld b, a
    inc c
    ret


jr_020_5fc9:
    call $300b
    ret


    or l
    call c, $cfd8
    cp l
    or [hl]
    and $4e
    jp z, $f2b2

    ld a, [c]
    ld a, [c]
    ld a, d
    ld c, [hl]
    or d
    or d
    or h
    ld a, [c]
    ld a, [c]
    ld a, e
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    add e
    rst $38
    ld bc, $fefe
    cp $fe
    cp $fe
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    ldh [$e0], a
    cp $fe
    cp $fe
    cp $fe
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jp $bdc3


    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    db $e3
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdc3


    cp l
    ei
    ei
    rst $20
    rst $20
    rst $18
    rst $18
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdc3


    cp l
    di
    di
    db $fd
    db $fd
    cp l
    cp l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    di
    di
    db $eb
    db $eb
    db $db
    db $db
    cp e
    cp e
    add c
    add c
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp a
    cp a
    add e
    add e
    db $fd
    db $fd
    db $fd
    db $fd
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bfc3


    cp a
    add e
    add e
    cp l
    cp l
    cp l
    cp l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add c
    add c
    db $fd
    db $fd
    ei
    ei
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    jp $bdc3


    cp l
    jp $bdc3


    cp l
    cp l
    cp l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $bdc3


    cp l
    cp l
    cp l
    pop bc
    pop bc
    db $fd
    db $fd
    jp $ffc3


    rst $38
    rst $38
    rst $38
    pop af
    pop af
    jp hl


    jp hl


    reti


    reti


    pop bc
    pop bc
    cp c
    cp c
    cp c
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    or e
    or e
    add c
    add c
    cp c
    cp c
    cp c
    cp c
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    jp $9dc3


    sbc l
    sbc a
    sbc a
    sbc a
    sbc a
    sbc l
    sbc l
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add a
    add a
    sbc e
    sbc e
    sbc l
    sbc l
    sbc l
    sbc l
    sbc l
    sbc l
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    sbc a
    sbc a
    add e
    add e
    sbc a
    sbc a
    sbc a
    sbc a
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    sbc a
    sbc a
    add e
    add e
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $38
    rst $38
    ret


    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    ldh [$de], a
    call $300b
    call $2173
    call $3200
    xor a
    ldh [$d4], a
    ld de, $5ff3
    ld hl, $96a0
    ld bc, $2016
    call $0eba
    ld de, $5fe3
    ld hl, $8800
    ld bc, $2001
    call $0eba
    ld a, $9c
    ldh [$d7], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $6f
    call $3041
    ld hl, $cdd9
    ld bc, $0168
    ld a, $07
    call $3041
    ld de, $0015
    ld a, $6c
    call Call_020_61d2
    ld de, $001a
    ld a, $6d
    call Call_020_61d2
    ld de, $001f
    ld a, $6e
    call Call_020_61d2
    ld de, $0024
    ld a, $6f
    call Call_020_61d2
    call Call_020_61f4
    call Call_020_620f
    call $3200
    ld [$cf63], a
    ld a, $40
    ldh [$d2], a
    ret


Call_020_61d2:
    ld hl, $c4a0
    call Call_020_61de

Call_020_61d8:
    ld a, [$cf64]
    ld hl, $cdd9

Call_020_61de:
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0010
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld bc, $0010
    add hl, bc
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_020_61f4:
    ld hl, $c4f2
    call Call_020_6203
    ld hl, $c51a
    call Call_020_6203
    ld hl, $c542

Call_020_6203:
    ld a, $6a
    ld [hl+], a
    ld bc, $000f
    ld a, $6b
    call $3041
    ret


Call_020_620f:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, [$cf64]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $d000
    add hl, de
    ld de, $c608
    ld bc, $0008
    call $3026
    ld de, $c608
    call Call_020_5ea5
    pop af
    ldh [rSVBK], a
    ret


    ld hl, $ffa9
    ld a, [hl]
    and $04
    jr nz, jr_020_6247

    ld a, [hl]
    and $02
    jr nz, jr_020_6299

    call Call_020_62f0
    ret


jr_020_6247:
    ld hl, $cf64
    ld a, [hl]
    inc a
    and $07
    cp $07
    jr nz, jr_020_6253

    xor a

jr_020_6253:
    ld [hl], a
    ld de, $0015
    call Call_020_61d8
    ld de, $001a
    call Call_020_61d8
    ld de, $001f
    call Call_020_61d8
    ld de, $0024
    call Call_020_61d8
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld a, [$cf64]
    ld bc, $0008
    call $30fe
    ld de, $c608
    ld bc, $0008
    call $3026
    pop af
    ldh [rSVBK], a
    ld a, $02
    ldh [$d4], a
    ld c, $03
    call $0468
    ld a, $01
    ldh [$d4], a
    ret


jr_020_6299:
    call $300b
    ldh a, [$d2]
    xor $d0
    ldh [$d2], a
    ret


Call_020_62a3:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d080
    ld a, [$cf64]
    ld bc, $0008
    call $30fe
    ld e, l
    ld d, h
    ld hl, $c608
    ld bc, $0008
    call $3026
    ld hl, $c4a1
    ld de, $c608
    call Call_020_5ca7
    ld hl, $c4a6
    ld de, $c60a
    call Call_020_5ca7
    ld hl, $c4ab
    ld de, $c60c
    call Call_020_5ca7
    ld hl, $c4b0
    ld de, $c60e
    call Call_020_5ca7
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    call $045a
    ret


Call_020_62f0:
    ld a, [$cf65]
    and $03
    ld e, a
    ld d, $00
    ld hl, $6301
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add hl, bc
    ld h, e
    add hl, sp
    ld h, e
    ld c, e
    ld h, e
    ld e, l
    ld h, e
    ld hl, $ffa9
    ld a, [hl]
    and $80
    jr nz, jr_020_638c

    ld a, [hl]
    and $20
    jr nz, jr_020_631c

    ld a, [hl]
    and $10
    jr nz, jr_020_6322

    ret


jr_020_631c:
    ld a, [$cf66]
    dec a
    jr jr_020_6326

jr_020_6322:
    ld a, [$cf66]
    inc a

jr_020_6326:
    and $03
    ld [$cf66], a
    ld e, a
    ld d, $00
    ld hl, $c608
    add hl, de
    add hl, de
    ld e, l
    ld d, h
    call Call_020_5ea5
    ret


    ld hl, $ffa9
    ld a, [hl]
    and $80
    jr nz, jr_020_638c

    ld a, [hl]
    and $40
    jr nz, jr_020_6387

    ld hl, $c612
    jr jr_020_6368

    ld hl, $ffa9
    ld a, [hl]
    and $80
    jr nz, jr_020_638c

    ld a, [hl]
    and $40
    jr nz, jr_020_6387

    ld hl, $c613
    jr jr_020_6368

    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_020_6387

    ld hl, $c614

jr_020_6368:
    ldh a, [$a9]
    and $10
    jr nz, jr_020_6375

    ldh a, [$a9]
    and $20
    jr nz, jr_020_637c

    ret


jr_020_6375:
    ld a, [hl]
    cp $1f
    ret nc

    inc [hl]
    jr jr_020_6380

jr_020_637c:
    ld a, [hl]
    and a
    ret z

    dec [hl]

jr_020_6380:
    call Call_020_6391
    call Call_020_62a3
    ret


jr_020_6387:
    ld hl, $cf65
    dec [hl]
    ret


jr_020_638c:
    ld hl, $cf65
    inc [hl]
    ret


Call_020_6391:
    ld a, [$c612]
    and $1f
    ld e, a
    ld a, [$c613]
    and $07
    sla a
    swap a
    or e
    ld e, a
    ld a, [$c613]
    and $18
    sla a
    swap a
    ld d, a
    ld a, [$c614]
    and $1f
    sla a
    sla a
    or d
    ld d, a
    ld a, [$cf66]
    ld c, a
    ld b, $00
    ld hl, $c608
    add hl, bc
    add hl, bc
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


    ret


    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_020_6400:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_020_7908:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
