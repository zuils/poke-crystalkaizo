; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $040", ROMX[$4000], BANK[$40]

Call_040_4000:
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    call Call_040_4022
    call Call_040_40ba
    call Call_040_4675
    call Call_040_4057
    call Call_040_416f
    call Call_040_4276
    push bc
    call Call_040_4301
    pop bc
    pop af
    ldh [rSVBK], a
    ret


Call_040_4022:
    push de
    push bc
    call Call_040_4063
    pop bc
    pop de
    ld a, d
    ld [$cd21], a
    ld a, e
    ld [$cd22], a
    ld a, c
    ld [$cd23], a
    ld a, b
    ld [$cd24], a
    ld a, $40
    ld hl, $527e
    rst $08
    ld a, $41
    ld hl, $6462
    rst $08
    ld a, $41
    ld hl, $6464
    rst $08
    ld a, $45
    ld hl, $615a
    rst $08
    ld hl, $d0ed
    set 1, [hl]
    ret


Call_040_4057:
    call Call_040_40a4
    call $222a
    ld hl, $d0ed
    res 1, [hl]
    ret


Call_040_4063:
    xor a
    ld hl, $cd20
    ld bc, $0065
    call $3041
    xor a
    ld hl, $c300
    ld bc, $0100
    call $3041
    ldh a, [rIE]
    ld [$cd20], a
    xor a
    ldh [$de], a
    ldh [$c6], a
    ret


    xor a
    ld hl, $c800
    ld bc, $0514
    call $3041
    di
    call $2fef
    xor a
    ldh [rIF], a
    ld a, $0f
    ldh [rIE], a
    xor a
    ldh [$de], a
    ldh [$c6], a
    ld a, $01
    ldh [$c9], a
    ldh [$e9], a
    ei
    ret


Call_040_40a4:
    di
    xor a
    ldh [$c9], a
    ldh [$e9], a
    xor a
    ldh [$9e], a
    call $2ff7
    xor a
    ldh [rIF], a
    ld a, [$cd20]
    ldh [rIE], a
    ei
    ret


Call_040_40ba:
jr_040_40ba:
    ld hl, $cd23
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cd25]
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [$cd22]
    call $305d
    ld a, [$cd22]
    rst $08
    call Call_040_40e8
    call Call_040_40fa
    call Call_040_4144
    call Call_040_4163
    ld a, [$cd2b]
    and a
    jr z, jr_040_40ba

    call $045a
    ret


Call_040_40e8:
    ld hl, $cd29
    bit 7, [hl]
    ret z

    ld a, $45
    ld hl, $5dd3
    rst $08
    ld hl, $cd29
    set 6, [hl]
    ret


Call_040_40fa:
    ld a, [$c30d]
    and a
    ret z

    ld hl, $cd29
    bit 4, [hl]
    ret z

    ld a, [$cd2b]
    and a
    jr nz, jr_040_4117

    ld a, $45
    ld hl, $619d
    rst $08
    ld hl, $cd29
    set 6, [hl]
    ret


jr_040_4117:
    di
    xor a
    ldh [rIF], a
    ldh a, [rIE]
    and $13
    ldh [rIE], a
    xor a
    ldh [$c9], a
    ldh [$e9], a
    ei
    ld a, [$c2dc]
    push af
    xor a
    ld [$c2dc], a
    ld a, $04
    ld [$c319], a
    ld a, $45
    ld hl, $619d
    rst $08
    ld hl, $cd29
    set 6, [hl]
    pop af
    ld [$c2dc], a
    ret


Call_040_4144:
    ld hl, $cd29
    bit 5, [hl]
    jr z, jr_040_4155

    res 5, [hl]
    res 2, [hl]
    res 6, [hl]
    call Call_040_4320
    ret


jr_040_4155:
    bit 2, [hl]
    ret z

    res 2, [hl]
    res 6, [hl]
    ld a, $41
    ld hl, $402d
    rst $08
    ret


Call_040_4163:
    ld hl, $cd29
    bit 6, [hl]
    ret z

    res 6, [hl]
    call $045a
    ret


Call_040_416f:
    ld a, [$cd2b]
    cp $01
    ret z

    cp $02
    ret z

    cp $ff
    jp z, Jump_040_41f5

    cp $fe
    jr z, jr_040_41c4

    cp $f5
    jr z, jr_040_41e7

    cp $f6
    jr z, jr_040_41b6

    cp $fa
    jp z, Jump_040_41bd

    cp $f7
    jp z, Jump_040_41ee

    cp $f4
    jr z, jr_040_41d2

    cp $f3
    jr z, jr_040_41cb

    cp $f1
    jr z, jr_040_41c4

    cp $f2
    jr z, jr_040_41c4

    cp $fc
    jr z, jr_040_41e6

    cp $fb
    jr z, jr_040_41af

    cp $f8
    ret z

    ret


jr_040_41af:
    ld a, $d7
    ld de, $0000
    jr jr_040_41d7

jr_040_41b6:
    ld a, $d5
    ld de, $0000
    jr jr_040_41d7

Jump_040_41bd:
    ld a, $d6
    ld de, $0000
    jr jr_040_41d7

jr_040_41c4:
    ld a, $d2
    ld de, $0002
    jr jr_040_41d7

jr_040_41cb:
    ld a, $d1
    ld de, $0001
    jr jr_040_41d7

jr_040_41d2:
    ld a, $d0
    ld de, $0000

jr_040_41d7:
    ld [$c300], a
    ld a, d
    ld [$c302], a
    ld a, e
    ld [$c301], a
    call Call_040_420b
    ret


jr_040_41e6:
    ret


jr_040_41e7:
    ld de, $425e
    call Call_040_4232
    ret


Jump_040_41ee:
    ld de, $424d
    call Call_040_4232
    ret


Jump_040_41f5:
    ld a, [$cd2c]
    ld [$c300], a
    ld a, [$cd2d]
    ld [$c302], a
    ld a, [$cd2d]
    ld [$c301], a
    call Call_040_420b
    ret


Call_040_420b:
    xor a
    ld [$c303], a
    ld a, $23
    ld hl, $4084
    rst $08
    ld a, $41
    ld hl, $6464
    rst $08
    call $3016
    call $045a
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $5f
    ld hl, $7555
    rst $08
    pop af
    ldh [rSVBK], a
    ret


Call_040_4232:
    push de
    ld a, $41
    ld hl, $6464
    rst $08
    call $3f20
    call $1ad2
    ld hl, $c4c9
    pop de
    call $1078
    call Call_040_4320
    call $0a36
    ret


    jp nz, $bcb3

    sbc $dd
    ld a, a
    add [hl]
    xor l
    xor e
    adc l
    and [hl]
    ld a, a
    cp h
    rst $08
    cp h
    ret nz

    ld d, b
    or l
    call nz, $30d3
    pop bc
    call nz, $b47f
    rst $10
    sbc $30
    ld a, a
    call $26d4
    ld c, [hl]
    pop bc
    ld h, $b3
    sub $b3
    inc sp
    cp l
    ld d, b

Call_040_4276:
    ld a, [$cd2b]
    cp $01
    jr z, jr_040_429f

    cp $02
    jr z, jr_040_4296

    cp $f5
    jr z, jr_040_42a5

    cp $f6
    jr z, jr_040_42a5

    cp $f7
    jr z, jr_040_4293

    cp $f8
    jr z, jr_040_42b1

    jr jr_040_42c0

jr_040_4293:
    ld c, $02
    ret


jr_040_4296:
    ld a, $25
    ld hl, $7ae3
    rst $08
    ld c, $04
    ret


jr_040_429f:
    call Call_040_42dc
    ld c, $00
    ret


jr_040_42a5:
    ld a, $25
    ld hl, $7ae3
    rst $08
    call Call_040_42ed
    ld c, $03
    ret


jr_040_42b1:
    call Call_040_42c9
    call Call_040_42dc
    ld de, $424d
    call Call_040_4232
    ld c, $02
    ret


jr_040_42c0:
    call Call_040_42c9
    call Call_040_42dc
    ld c, $01
    ret


Call_040_42c9:
    ld hl, $cd2a
    bit 0, [hl]
    ret z

    ld a, $0f
    ld hl, $76d0
    rst $08
    ld a, $05
    ld hl, $500c
    rst $08
    ret


Call_040_42dc:
    ld a, $f8
    ldh [$9f], a
    ld a, $05
    ld hl, $5363
    rst $08
    xor a
    ldh [$9f], a
    call $0e51
    ret


Call_040_42ed:
    ld a, $12
    ld hl, $5409
    rst $08
    ld a, $02
    ld hl, $56a4
    rst $08
    ld a, $01
    ldh [$e5], a
    call $045a
    ret


Call_040_4301:
    ld hl, $cd2a
    bit 1, [hl]
    ret z

    ld a, $41
    ld hl, $6464
    rst $08
    ld a, $40
    ld hl, $602c
    rst $08
    ld a, $45
    ld hl, $5dd3
    rst $08
    call Call_040_4320
    call $0a36
    ret


Call_040_4320:
    ld a, $41
    ld hl, $4099
    rst $08
    ret


    ld a, $41
    ld hl, $402d
    rst $08
    ret


Call_040_432e:
    call Call_040_434d
    ld e, a
    ret nc

    ld [$cd2b], a
    ret


Call_040_4337:
    call Call_040_432e
    ret c

    ld a, [$c821]
    bit 4, a
    jr z, jr_040_4345

    ld a, e
    and a
    ret


jr_040_4345:
    ld a, $f9
    ld e, a
    ld [$cd2b], a
    scf
    ret


Call_040_434d:
    ld a, [$c821]
    bit 1, a
    jr nz, jr_040_436a

    bit 2, a
    jr nz, jr_040_437e

    bit 3, a
    jr nz, jr_040_4366

    bit 0, a
    jr nz, jr_040_4364

    ld a, $01
    and a
    ret


jr_040_4364:
    xor a
    ret


jr_040_4366:
    ld a, $02
    and a
    ret


jr_040_436a:
    ld a, $00
    call $3e32
    ld [$cd2c], a
    ld a, h
    ld [$cd2d], a
    ld a, l
    ld [$cd2e], a
    ld a, $ff
    scf
    ret


jr_040_437e:
    ld a, $fe
    scf
    ret


    ld a, [$cd27]
    ld hl, $444e
    rst $28
    ret


Call_040_438a:
    ld hl, $ccb4
    ld a, $2e
    call $3e32
    ret


Call_040_4393:
    ld hl, $cc60
    ld a, $3a
    call $3e32
    ret


Call_040_439c:
    ld hl, $cc60
    ld de, $d000
    ld bc, $0054
    ld a, $03
    call $306b
    ret


    ld hl, $d000
    ld de, $cc60
    ld bc, $0054
    ld a, $03
    call $306b
    ret


Call_040_43ba:
    ld hl, $ccb4
    ld de, $d080
    ld bc, $0054
    ld a, $03
    call $306b
    ret


Call_040_43c9:
    ld hl, $d080
    ld de, $ccb4
    ld bc, $0054
    ld a, $03
    call $306b
    ret


Call_040_43d8:
    ld hl, $ccb4
    ld a, [hl+]
    ld c, a
    ld b, $00
    push hl
    add hl, bc
    ld a, [$cd48]
    ld [hl], a
    pop hl
    inc bc
    call Call_040_443a
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, c
    add $02
    ld [$ccb4], a
    ret


Call_040_43f5:
    ld a, [$cc60]
    sub $03
    ld [$cc60], a
    ld a, [$ccb4]
    sub $03
    ld [$ccb4], a
    ret


Call_040_4406:
    ld a, [$cc60]
    sub $02
    ld c, a
    ld b, $00
    ld hl, $cc61
    call Call_040_443a
    add hl, bc
    ld a, [hl+]
    cp e
    jr nz, jr_040_4426

    ld a, [hl-]
    cp d
    jr nz, jr_040_4426

    dec hl
    ld a, [$cd48]
    cp [hl]
    jr nz, jr_040_442d

    xor a
    ret


jr_040_4426:
    ld a, $f4
    ld [$cd2b], a
    jr jr_040_4432

jr_040_442d:
    ld a, $f3
    ld [$cd2b], a

jr_040_4432:
    push hl
    ld hl, $cd7c
    inc [hl]
    pop hl
    scf
    ret


Call_040_443a:
    push hl
    push bc
    ld de, $0000

jr_040_443f:
    ld a, [hl+]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_040_443f

    pop bc
    pop hl
    ret


    ld l, d
    ld b, h
    ld a, h
    ld b, h
    sub e
    ld b, h
    cp d
    ld b, h
    db $f4
    ld b, h
    adc $44
    sbc $44
    and h
    ld b, h
    sub l
    ld b, h
    adc $44
    sbc $44
    jp hl


    ld b, h
    db $f4
    ld b, h
    and h
    ld b, h
    ld hl, $cd48
    inc [hl]
    call Call_040_43d8
    call Call_040_43ba
    ld a, [$cd27]
    inc a
    ld [$cd27], a
    ret


    call Call_040_4337
    ret c

    ret z

    cp $02
    jr z, jr_040_4487

    jr jr_040_448d

jr_040_4487:
    ld a, $08
    ld [$cd27], a
    ret


jr_040_448d:
    ld a, $02
    ld [$cd27], a
    ret


    jr jr_040_4497

    jr jr_040_4497

jr_040_4497:
    call Call_040_4337
    ret c

    ret z

    ld a, [$cd27]
    inc a
    ld [$cd27], a
    ret


    call Call_040_4406
    jr c, jr_040_44b8

    call Call_040_43c9
    call Call_040_43f5
    ld a, [$cd27]
    set 7, a
    ld [$cd27], a
    ret


jr_040_44b8:
    scf
    ret


    call Call_040_438a
    and a
    jr nz, jr_040_44c8

    ld a, [$cd27]
    inc a
    ld [$cd27], a
    ret


jr_040_44c8:
    ld a, $08
    ld [$cd27], a
    ret


    call Call_040_4337
    ret c

    ret z

    cp $02
    ret nz

    ld a, [$cd27]
    inc a
    ld [$cd27], a
    ret


    call Call_040_4393
    ld a, [$cd27]
    inc a
    ld [$cd27], a
    ret


    call Call_040_438a
    ld a, [$cd27]
    inc a
    ld [$cd27], a
    ret


    call Call_040_4337
    ret c

    ret z

    ld a, [$cd27]
    inc a
    ld [$cd27], a
    call Call_040_439c
    ret


    push de
    call $3f20
    call $1ad2
    pop de
    ld hl, $c4cc
    call $1078
    ret


Call_040_4513:
    call $3f7c
    call $1c89
    call $1c10
    ld hl, $cfa5
    set 7, [hl]
    ret


Call_040_4522:
    ld a, [$cd28]
    ld hl, $452a
    rst $28
    ret


    inc [hl]
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld c, l
    ld b, l
    call Call_040_4513
    call $1ad2
    call $321c
    ld a, [$cd28]
    inc a
    ld [$cd28], a
    ret


    ld a, [$cd28]
    inc a
    ld [$cd28], a
    ret


    ld a, $09
    ld hl, $41ba
    rst $08
    ld a, c
    ld hl, $cfa8
    and [hl]
    ret z

    call $1ff8
    bit 0, a
    jr nz, jr_040_4565

    bit 1, a
    jr nz, jr_040_456f

    ret


jr_040_4565:
    ld a, [$cd28]
    set 7, a
    ld [$cd28], a
    and a
    ret


jr_040_456f:
    ld a, [$cd28]
    set 7, a
    ld [$cd28], a
    scf
    ret


    ld a, [$cd26]
    ld hl, $4581
    rst $28
    ret


    add l
    ld b, l
    sub a
    ld b, l
    ld hl, $45b2
    call $1d35
    ld a, $00
    ld [$cd28], a
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    call Call_040_4522
    ld a, [$cd28]
    bit 7, a
    ret z

    jr nc, jr_040_45a6

    xor a
    ld [$cfa9], a

jr_040_45a6:
    call $1c07
    ld a, [$cd26]
    set 7, a
    ld [$cd26], a
    ret


    ld b, b
    ld b, $0e
    ld a, [bc]
    inc de
    cp d
    ld b, l
    ld bc, $02c0
    jp z, $50b2

    or d
    or d
    or h
    ld d, b
    ld a, [$cd26]
    ld hl, $45cb
    rst $28
    ret


    rst $08
    ld b, l
    pop hl
    ld b, l
    ld hl, $45fc
    call $1d35
    ld a, $00
    ld [$cd28], a
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    call Call_040_4522
    ld a, [$cd28]
    bit 7, a
    ret z

    jr nc, jr_040_45f0

    xor a
    ld [$cfa9], a

jr_040_45f0:
    call $1c07
    ld a, [$cd26]
    set 7, a
    ld [$cd26], a
    ret


    ld b, b
    ld b, $0e
    ld a, [bc]
    inc de
    inc b
    ld b, [hl]
    ld bc, $02c0
    or [hl]
    cp c
    reti


    ld d, b
    rst $08
    jp nz, $2150

    ld l, e
    push bc
    ld b, $01
    ld c, $0b
    call $3eea
    ld de, $4621
    ld hl, $c580
    call $1078
    ret


    jp nz, $bcb3

    sbc $c0
    or d
    or a
    pop bc
    pop hl
    or e
    rst $20
    ld d, b

Call_040_462d:
    push bc
    call Call_040_464e
    pop bc
    ld a, [$cd44]
    cp b
    jr nc, jr_040_463a

    and a
    ret


jr_040_463a:
    ld a, $fa
    ld [$cd2b], a
    scf
    ret


Call_040_4641:
    xor a
    ld [$cd44], a
    ld [$cd45], a
    ld [$cd46], a
    ret


    ld c, $01

Call_040_464e:
    ld hl, $cd46
    ld a, [hl]
    add c
    cp $3c
    jr c, jr_040_4658

    xor a

jr_040_4658:
    ld [hl-], a
    ret c

    ld a, [hl]
    inc a
    cp $3c
    jr c, jr_040_4661

    xor a

jr_040_4661:
    ld [hl-], a
    ret c

    inc [hl]
    ret


Call_040_4665:
    call $05a7
    ld hl, $cd36
    ldh a, [$94]
    ld [hl+], a
    ldh a, [$96]
    ld [hl+], a
    ldh a, [$98]
    ld [hl], a
    ret


Call_040_4675:
    ld hl, $cd2a
    bit 2, [hl]
    set 2, [hl]
    ret nz

    call Call_040_46d3
    ret


Call_040_4681:
    push hl
    ld hl, $cd2a
    bit 2, [hl]
    ld hl, $cd2a
    set 2, [hl]
    pop hl
    jr nz, jr_040_4694

    push hl
    call Call_040_46d3
    pop hl

jr_040_4694:
    ld de, $cd32

Call_040_4697:
    ld a, [de]
    and a
    jr nz, jr_040_46bb

    inc de
    push de
    call Call_040_46b4
    ld de, $46c2
    call $1078
    ld h, b
    ld l, c
    pop de
    inc de
    call Call_040_46b4
    ld de, $46c6
    call $1078
    ret


Call_040_46b4:
    ld bc, $8102
    call $3198
    ret


jr_040_46bb:
    ld de, $46ca
    call $1078
    ret


    call z, Call_040_7fde
    ld d, b
    dec sp
    ld [c], a
    or e
    ld d, b
    rst $30
    inc l
    or [hl]
    sbc $b2
    inc l
    ld [c], a
    or e
    ld d, b

Call_040_46d3:
    call $05a7
    ld de, $cd34
    ld hl, $cd38

Call_040_46dc:
    ld a, [hl-]
    ld c, a
    ldh a, [$98]
    sub c
    jr nc, jr_040_46e5

    add $3c

jr_040_46e5:
    ld [de], a
    dec de
    ld a, [hl-]
    ld c, a
    ldh a, [$96]
    sbc c
    jr nc, jr_040_46f0

    add $3c

jr_040_46f0:
    ld [de], a
    dec de
    ld a, [hl]
    ld c, a
    ldh a, [$94]
    sbc c
    jr nc, jr_040_46fb

    add $18

jr_040_46fb:
    ld [de], a
    ret


    ld a, $04
    ld hl, $a800
    call $2fcb
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    call $2fe1
    ret


Call_040_470d:
    ld a, $04
    ld hl, $a800
    call $2fcb
    xor a
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    xor a
    ld [hl+], a
    call $2fe1
    ret


    xor a
    ld [$cd6a], a
    call $05a7
    ldh a, [$94]
    ld [$cd72], a
    ldh a, [$96]
    ld [$cd73], a
    ldh a, [$98]
    ld [$cd74], a
    ld a, $04
    ld hl, $a800
    call $2fcb
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    ld a, [hl+]
    ld [$cd6e], a
    call $2fe1
    ld a, [$cd6d]
    ld [$cd6b], a
    ret


    call $05a7
    ldh a, [$94]
    ld [$cd72], a
    ldh a, [$96]
    ld [$cd73], a
    ldh a, [$98]
    ld [$cd74], a
    ld a, [$cd6d]
    ld [$cd6b], a
    ld hl, $cd2a
    res 6, [hl]
    ret


    push de
    ld hl, $cd6c
    ld a, [de]
    cp [hl]
    jr c, jr_040_479a

    jr nz, jr_040_478c

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr c, jr_040_479a

    jr nz, jr_040_478c

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr c, jr_040_479a

    jr z, jr_040_479a

jr_040_478c:
    pop hl
    ld a, [hl+]
    ld [$cd6c], a
    ld a, [hl+]
    ld [$cd6d], a
    ld a, [hl+]
    ld [$cd6e], a
    ret


jr_040_479a:
    pop de
    ret


Call_040_479c:
    ld a, [$cd21]
    cp $01
    jr nz, jr_040_47f4

    ld hl, $cd2a
    bit 5, [hl]
    jr nz, jr_040_47f4

    ld hl, $cd2a
    bit 6, [hl]
    jr nz, jr_040_47f4

    ld a, [$cd6a]
    add c
    cp $3c
    jr nc, jr_040_47be

    ld [$cd6a], a
    and a
    ret


jr_040_47be:
    sub $3c
    ld [$cd6a], a
    ld d, b
    push de
    call Call_040_47f6
    pop de
    jr c, jr_040_47e5

    ld a, c
    and a
    jr nz, jr_040_47e5

    ld a, b
    cp $0a
    jr nc, jr_040_47e5

    ld a, d
    and a
    ret z

    ld a, [$cd6b]
    cp b
    ret z

    ld a, b
    ld [$cd6b], a
    call Call_040_48e0
    and a
    ret


jr_040_47e5:
    call Call_040_48e0
    ld hl, $cd2a
    set 4, [hl]
    ld a, $fc
    ld [$cd2b], a
    scf
    ret


jr_040_47f4:
    and a
    ret


Call_040_47f6:
    call $05a7
    ld hl, $cd74
    ld de, $cd71
    call Call_040_46dc
    ld a, $04
    call $2fcb
    ld hl, $a802
    call Call_040_4826
    call $2fe1
    ld hl, $cd6e
    call Call_040_4826
    ldh a, [$94]
    ld [$cd72], a
    ldh a, [$96]
    ld [$cd73], a
    ldh a, [$98]
    ld [$cd74], a
    ret


Call_040_4826:
    ld a, [$cd71]
    add [hl]
    sub $3c
    jr nc, jr_040_4830

    add $3c

jr_040_4830:
    ld [hl-], a
    ccf
    ld a, [$cd70]
    adc [hl]
    sub $3c
    jr nc, jr_040_483c

    add $3c

jr_040_483c:
    ld [hl-], a
    ld b, a
    ccf
    ld a, [$cd6f]
    adc [hl]
    ld [hl], a
    ld c, a
    ret


    ld hl, $cd2a
    bit 5, [hl]
    jr nz, jr_040_487c

    ld a, [$cd6e]
    ld c, a
    ld a, $00
    sub c
    jr nc, jr_040_4858

    add $3c

jr_040_4858:
    ld [$d088], a
    ld a, [$cd6d]
    ld c, a
    ld a, $0a
    sbc c
    ld [$d087], a
    xor a
    ld [$d086], a
    ld de, $488e
    ld hl, $c5b9
    call $1078
    ld de, $d086
    ld hl, $c5e4
    call Call_040_4697
    ret


jr_040_487c:
    ld de, $488e
    ld hl, $c5b9
    call $1078
    ld h, b
    ld l, c
    ld de, $489f
    call $1078
    ret


    and c
    add hl, de
    add c
    and [hl]
    ret nz

    or d
    cp [hl]
    sbc $7f
    inc sp
    or a
    reti


    ld c, [hl]
    inc l
    or [hl]
    sbc $50
    ld a, a
    pop de
    cp [hl]
    or d
    add hl, hl
    sbc $50
    ld a, $04
    ld hl, $a800
    call $2fcb
    ld a, [hl+]
    ld [$d086], a
    ld a, [hl+]
    ld [$d087], a
    ld a, [hl+]
    ld [$d088], a
    call $2fe1
    ld a, [$d088]
    ld b, a
    ld a, $00
    sub b
    jr nc, jr_040_48c8

    add $3c

jr_040_48c8:
    ld b, a
    ld a, [$d087]
    ld c, a
    ld a, $0a
    sbc c
    ld c, a
    jr c, jr_040_48da

    ld a, [$d086]
    and a
    jr nz, jr_040_48da

    ret


jr_040_48da:
    call Call_040_470d
    ld c, $00
    ret


Call_040_48e0:
    ldh a, [$d4]
    ld b, a
    ldh a, [$9e]
    ld c, a
    push bc
    xor a
    ldh [$d4], a
    ld a, $03
    ldh [$9e], a
    call Call_040_4970
    call Call_040_4902
    call Call_040_4989
    call $045a
    pop bc
    ld a, c
    ldh [$9e], a
    ld a, b
    ldh [$d4], a
    ret


Call_040_4902:
    ld hl, $c56b
    ld b, $01
    ld c, $0b
    call $0fe8
    ld a, [$cd6d]
    ld c, a
    ld a, $0a
    sub c
    ld [$d086], a
    jr z, jr_040_493f

    ld de, $4966
    ld hl, $c580
    call $1078
    ld hl, $c584
    ld bc, $0102
    ld de, $d086
    call $3198
    ld de, $00cc
    call $3c23
    ld a, $41
    ld hl, $4061
    rst $08
    ld c, $3c
    call $0468
    ret


jr_040_493f:
    ld de, $495a
    ld hl, $c580
    call $1078
    ld de, $00cd
    call $3c23
    ld a, $41
    ld hl, $4061
    rst $08
    ld c, $78
    call $0468
    ret


    ret nz

    or d
    cp [hl]
    sbc $7f
    cp h
    pop hl
    or e
    ret c

    ld [c], a
    or e
    ld d, b
    ret


    cp d
    ret c

    ld a, a
    ld a, a
    ld a, a
    call z, $e7de
    ld d, b

Call_040_4970:
    ld hl, $c4a0
    ld de, $dc00
    call Call_040_49a5
    ld hl, $cdd9
    ld de, $dd68
    call Call_040_49a5
    call Call_040_49d2
    call Call_040_49ae
    ret


Call_040_4989:
    ld hl, $dc00
    ld de, $c4a0
    call Call_040_49a5
    call Call_040_49ae
    ld a, $41
    ld hl, $4061
    rst $08
    ld hl, $dd68
    ld de, $cdd9
    call Call_040_49a5
    ret


Call_040_49a5:
    ld bc, $0168
    ld a, $03
    call $306b
    ret


Call_040_49ae:
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d800
    ld de, $cdd9
    ld c, $14
    ld b, $12

jr_040_49bf:
    push bc

jr_040_49c0:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_040_49c0

    ld bc, $000c
    add hl, bc
    pop bc
    dec b
    jr nz, jr_040_49bf

    pop af
    ldh [rSVBK], a
    ret


Call_040_49d2:
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld hl, $d800
    ld de, $9800
    ld bc, $0324
    call $0f82
    pop af
    ldh [rVBK], a
    pop af
    ldh [rSVBK], a
    ret


Call_040_49f3:
    ldh a, [$a8]
    and $05
    cp $05
    jr nz, jr_040_4a07

    ld hl, $cd2a
    set 4, [hl]
    ld a, $f8
    ld [$cd2b], a
    scf
    ret


jr_040_4a07:
    xor a
    ret


    call Call_040_4a2e
    ld [$d431], a
    ld a, $01
    ld hl, $4000
    rst $08
    ld a, [$c2dc]
    cp $04
    jr nz, jr_040_4a2a

    call Call_040_4a87
    call Call_040_4da5
    ld a, $0f
    ld hl, $6e27
    rst $08
    jr jr_040_4a2d

jr_040_4a2a:
    call Call_040_4a53

jr_040_4a2d:
    ret


Call_040_4a2e:
    ld a, [$d0ec]
    and a
    jr nz, jr_040_4a48

    ld a, [$c6e3]
    ld b, $0e
    cp $a5
    jr z, jr_040_4a4f

    ld b, $0d
    cp $ff
    jr z, jr_040_4a4f

    ld a, [$d0d5]
    jr jr_040_4a50

jr_040_4a48:
    ld a, [$d109]
    add $04
    jr jr_040_4a50

jr_040_4a4f:
    ld a, b

jr_040_4a50:
    and $0f
    ret


Call_040_4a53:
    ld a, [$d431]
    ld [$cf56], a
    ld a, $ff
    ld [$cf52], a

jr_040_4a5e:
    call $08c1
    call $045a
    ld a, [$cf52]
    inc a
    jr z, jr_040_4a5e

    ld b, $0a

jr_040_4a6c:
    call $045a
    call $08c1
    dec b
    jr nz, jr_040_4a6c

    ld b, $0a

jr_040_4a77:
    call $045a
    call $0908
    dec b
    jr nz, jr_040_4a77

    ld a, [$cf52]
    ld [$d430], a
    ret


Call_040_4a87:
    call Call_040_4acf
    call Call_040_4641
    ld a, $00
    ld [$cd27], a

jr_040_4a92:
    call $045a
    call $0984
    ld a, $40
    ld hl, $4382
    rst $08
    ld c, $01
    ld b, $03
    push bc
    call Call_040_462d
    pop bc
    jr c, jr_040_4ac7

    ld b, $01
    call Call_040_479c
    jr c, jr_040_4ac7

    call Call_040_49f3
    jr c, jr_040_4ac7

    ld a, [$cd2b]
    and a
    jr nz, jr_040_4ac7

    ld a, [$cd27]
    bit 7, a
    jr z, jr_040_4a92

    call Call_040_4ae7
    jr jr_040_4ace

jr_040_4ac7:
    ld a, $0f
    ld [$d430], a
    jr jr_040_4ace

jr_040_4ace:
    ret


Call_040_4acf:
    ld de, $4b0a
    ld hl, $ccb5
    ld a, [$d431]
    ld [hl+], a
    ld c, $01

jr_040_4adb:
    ld a, [de]
    inc de
    ld [hl+], a
    inc c
    and a
    jr nz, jr_040_4adb

    ld a, c
    ld [$ccb4], a
    ret


Call_040_4ae7:
    ld de, $4b0a
    ld hl, $cc62

jr_040_4aed:
    ld a, [de]
    inc de
    and a
    jr z, jr_040_4af8

    cp [hl]
    jr nz, jr_040_4aff

    inc hl
    jr jr_040_4aed

jr_040_4af8:
    ld a, [$cc61]
    ld [$d430], a
    ret


jr_040_4aff:
    ld a, $0f
    ld [$d430], a
    ld a, $f1
    ld [$cd2b], a
    ret


    ld [hl], h
    ld h, l
    ld [hl], h
    ld [hl], e
    ld [hl], l
    ld l, d
    ld l, c
    nop
    call Call_040_4dd8
    ret c

    ld hl, $4f2c
    ld a, $09
    ld de, $1d35
    call $2d54
    ld a, $09
    ld [$cf94], a
    ld a, [$d0d2]
    ld [$cf88], a
    call Call_040_4e72
    call Call_040_4b45
    ld a, $02
    ld hl, $4e85
    rst $08
    call Call_040_4ed4
    ld a, [$cf88]
    ld [$d0d2], a
    call $1c07
    ret


Call_040_4b45:
    call Call_040_4b7a

jr_040_4b48:
    call Call_040_4dd2
    ld a, $09
    ld hl, $41ba
    rst $08
    push bc
    ld a, $41
    ld hl, $402d
    rst $08
    call Call_040_4e2d
    pop bc
    jr c, jr_040_4b6b

    ld a, [$cfa8]
    and c
    jr z, jr_040_4b48

    ld a, $09
    ld hl, $4098
    rst $08
    ret


jr_040_4b6b:
    ld a, [$cfa4]
    ld c, a
    ld a, [$cfa3]
    call $3105
    ld [$cf88], a
    and a
    ret


Call_040_4b7a:
    ld hl, $1c66
    ld a, [$cf94]
    rst $08
    ld a, $09
    ld hl, $4085
    rst $08
    ld a, $00
    ld hl, $3ab2
    rst $08
    call $1ad2
    call $321c
    ld a, $09
    ld hl, $411a
    rst $08
    ld hl, $cfa5
    set 7, [hl]
    ret


    xor a
    ld [$d0e3], a
    ld a, $0f
    ld hl, $6786
    rst $08
    ret z

    call Call_040_4dd8
    jp c, $2ec8

    call Call_040_4e72
    call Call_040_4bc2
    push af
    ld a, $02
    ld hl, $4e85
    rst $08
    call Call_040_4ed4
    pop af
    ret


Call_040_4bc2:
Jump_040_4bc2:
    xor a
    ldh [$d4], a
    call Call_040_4c74
    call Call_040_4c98

Jump_040_4bcb:
    ld a, $0f
    ld hl, $66c8
    rst $08

jr_040_4bd1:
    call Call_040_4dd2
    ld a, $09
    ld hl, $41ba
    rst $08
    push bc
    ld a, $41
    ld hl, $402d
    rst $08
    call Call_040_4e2d
    pop bc
    jr c, jr_040_4c25

    ld a, [$cfa8]
    and c
    bit 6, a
    jp nz, Jump_040_4bff

    bit 7, a
    jp nz, Jump_040_4c10

    bit 0, a
    jr nz, jr_040_4c30

    bit 1, a
    jr nz, jr_040_4c25

    jr jr_040_4bd1

Jump_040_4bff:
    ld a, [$cfa9]
    and a
    jp nz, Jump_040_4bcb

    ld a, [$d0eb]
    inc a
    ld [$cfa9], a
    jp Jump_040_4bcb


Jump_040_4c10:
    ld a, [$cfa9]
    ld b, a
    ld a, [$d0eb]
    inc a
    inc a
    cp b
    jp nz, Jump_040_4bcb

    ld a, $01
    ld [$cfa9], a
    jp Jump_040_4bcb


jr_040_4c25:
    ld a, [$cfa9]
    dec a
    ld [$d0d5], a
    ld a, $01
    and a
    ret


jr_040_4c30:
    ld a, [$cfa9]
    dec a
    ld [$d0d5], a
    ld a, [$cfa9]
    dec a
    ld c, a
    ld b, $00
    ld hl, $c634
    add hl, bc
    ld a, [hl]
    and $3f
    jr z, jr_040_4c68

    ld a, [$c675]
    swap a
    and $0f
    dec a
    cp c
    jr z, jr_040_4c63

    ld a, [$cfa9]
    dec a
    ld c, a
    ld b, $00
    ld hl, $c62e
    add hl, bc
    ld a, [hl]
    ld [$c6e3], a
    xor a
    ret


jr_040_4c63:
    ld hl, $4c5b
    jr jr_040_4c6b

jr_040_4c68:
    ld hl, $4c39

jr_040_4c6b:
    call $3ad5
    call $30b4
    jp Jump_040_4bc2


Call_040_4c74:
    ld hl, $c540
    ld b, $08
    ld c, $08
    call $0fe8
    ld hl, $c62e
    ld de, $d25e
    ld bc, $0004
    call $3026
    ld a, $28
    ld [$d1ea], a
    ld hl, $c56a
    ld a, $20
    call $2d83
    ret


Call_040_4c98:
    ld de, $4cad
    call $1bb1
    ld a, [$d0eb]
    inc a
    ld [$cfa3], a
    ld a, [$d0d5]
    inc a
    ld [$cfa9], a
    ret


    ld a, [bc]
    ld bc, $01ff
    and b
    nop
    jr nz, @-$3b

    call Call_040_4dd8
    ret c

    ld hl, $cfa5
    set 7, [hl]
    res 6, [hl]

jr_040_4cc0:
    call Call_040_4dd2
    ld a, $09
    ld hl, $41ba
    rst $08
    push bc
    ld a, $23
    ld hl, $4f69
    rst $08
    ld a, $41
    ld hl, $402d
    rst $08
    call Call_040_4dfd
    pop bc
    jr c, jr_040_4d17

    ld a, [$cfa8]
    and c
    jr z, jr_040_4cc0

    call $1bee
    ld a, [$dcd7]
    inc a
    ld b, a
    ld a, [$cfa9]
    cp b
    jr z, jr_040_4d17

    ld [$d0d8], a
    ldh a, [$a9]
    ld b, a
    bit 1, b
    jr nz, jr_040_4d17

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


jr_040_4d17:
    ld de, $0008
    call $3c23
    call $3c55
    scf
    ret


    call Call_040_4dd8
    ret c

    call Call_040_4d67
    ld hl, $cfa5
    set 7, [hl]
    res 6, [hl]

jr_040_4d30:
    call Call_040_4dd2
    ld a, $09
    ld hl, $41ba
    rst $08
    push bc
    ld a, $23
    ld hl, $4f69
    rst $08
    ld a, $41
    ld hl, $402d
    rst $08
    call Call_040_4dfd
    pop bc
    jr c, jr_040_4d54

    ld a, [$cfa8]
    and c
    jr nz, jr_040_4d56

    jr jr_040_4d30

jr_040_4d54:
    scf
    ret


jr_040_4d56:
    push af
    ld de, $0008
    call $3c23
    pop af
    bit 1, a
    jr z, jr_040_4d65

    ret z

    scf
    ret


jr_040_4d65:
    and a
    ret


Call_040_4d67:
    ld hl, $4d88
    call $1d3c
    xor a
    ldh [$d4], a
    call $1cbb
    call $1ad2
    call $1c89
    call $31f6
    call $1c66
    call $1c10
    ld hl, $cfa5
    set 6, [hl]
    ret


    nop
    dec bc
    dec bc
    ld de, $9013
    ld c, l
    ld bc, $03c0
    or d
    jp c, $b4b6

    reti


    ld d, b
    jp nz, $bbd6

    db $dd
    ret nc

    reti


    ld d, b
    add [hl]
    xor l
    xor e
    adc l
    and [hl]
    ld d, b

Call_040_4da5:
    ld hl, $cd2a
    res 3, [hl]
    ld hl, $cd29
    res 0, [hl]
    ret


Call_040_4db0:
    ld hl, $cd2a
    bit 3, [hl]
    jr nz, jr_040_4dbe

    ld hl, $cd2a
    set 3, [hl]
    scf
    ret


jr_040_4dbe:
    xor a
    ret


    ld a, [$c2dc]
    cp $04
    jr nz, jr_040_4dd0

    ld hl, $cd2a
    bit 3, [hl]
    jr z, jr_040_4dd0

    scf
    ret


jr_040_4dd0:
    xor a
    ret


Call_040_4dd2:
    ld a, $1e
    ld [$cfb1], a
    ret


Call_040_4dd8:
    ld c, $01
    ld b, $03
    ld a, $40
    ld hl, $462d
    rst $08
    jr c, jr_040_4dfb

    ld c, $3c
    ld b, $01
    call Call_040_479c
    jr c, jr_040_4dfb

    ld a, $40
    ld hl, $432e
    rst $08
    ld a, [$cd2b]
    and a
    jr nz, jr_040_4dfb

    xor a
    ret


jr_040_4dfb:
    scf
    ret


Call_040_4dfd:
    ld a, [$cfb1]
    ld c, a
    ld a, $1e
    sub c
    ld c, a
    ld b, $03
    push bc
    ld a, $40
    ld hl, $462d
    rst $08
    pop bc
    jr c, jr_040_4e2b

    ld b, $01
    call Call_040_479c
    jr c, jr_040_4e2b

    call Call_040_49f3
    jr c, jr_040_4e2b

    ld a, $40
    ld hl, $432e
    rst $08
    ld a, [$cd2b]
    and a
    jr nz, jr_040_4e2b

    xor a
    ret


jr_040_4e2b:
    scf
    ret


Call_040_4e2d:
    ld a, [$cfb1]
    ld c, a
    ld a, $1e
    sub c
    ld c, a
    ld b, $03
    push bc
    ld a, $40
    ld hl, $462d
    rst $08
    pop bc
    jr c, jr_040_4e61

    ld b, $01
    call Call_040_479c
    jr c, jr_040_4e61

    call Call_040_49f3
    jr c, jr_040_4e61

    ld a, $40
    ld hl, $432e
    rst $08
    ld a, [$cd2b]
    and a
    jr nz, jr_040_4e61

    call Call_040_4e63
    call Call_040_4e84
    xor a
    ret


jr_040_4e61:
    scf
    ret


Call_040_4e63:
    ld a, e
    cp $02
    ret nz

    call Call_040_4db0
    ret nc

    ld de, $0027
    call $3c23
    ret


Call_040_4e72:
    xor a
    ld hl, $cd29
    bit 0, [hl]
    jr z, jr_040_4e7c

    ld a, $0a

jr_040_4e7c:
    ld [$cd67], a
    xor a
    ld [$cd68], a
    ret


Call_040_4e84:
    ld a, [$cd67]
    ld hl, $4e8c
    rst $28
    ret


    and d
    ld c, [hl]
    xor [hl]
    ld c, [hl]
    or h
    ld c, [hl]
    xor [hl]
    ld c, [hl]
    or h
    ld c, [hl]
    xor [hl]
    ld c, [hl]
    or h
    ld c, [hl]
    xor [hl]
    ld c, [hl]
    or h
    ld c, [hl]
    xor [hl]
    ld c, [hl]
    call nz, $cd4e
    ret nz

    ld c, l
    ret nc

    ld hl, $cd29
    set 0, [hl]
    call Call_040_4ec5
    scf
    call Call_040_4eca
    jr jr_040_4eb8

    and a
    call Call_040_4eca

jr_040_4eb8:
    ld hl, $cd68
    inc [hl]
    ld a, [hl]
    cp $02
    ret c

    ld [hl], $00
    jr jr_040_4ec5

    ret


Call_040_4ec5:
jr_040_4ec5:
    ld hl, $cd67
    inc [hl]
    ret


Call_040_4eca:
    ld a, $02
    ld hl, $4e8b
    rst $08
    call Call_040_4ed4
    ret


Call_040_4ed4:
    ld a, $02
    ld hl, $56a4
    rst $08
    ld a, $01
    ldh [$e5], a
    ret


    ld hl, $4fc0
    ld c, $01
    jr jr_040_4f02

    ld hl, $4fc0
    ld c, $02
    jr jr_040_4f02

    ld hl, $4feb
    ld c, $01
    jr jr_040_4f02

    ld hl, $4ff3
    ld c, $01
    jr jr_040_4f02

    ld hl, $502c
    ld c, $01
    jr jr_040_4f02

jr_040_4f02:
    ld a, c
    ld [$d086], a
    ld a, e
    ld [$d087], a
    ld a, d
    ld [$d088], a
    xor a
    ld [$d08a], a
    ld [$d08b], a

jr_040_4f15:
    ld a, [hl]
    cp $ff
    jr z, jr_040_4f34

    ld [$d089], a
    push hl
    inc hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_040_4f3d
    pop hl
    ld de, $0007
    add hl, de
    jr jr_040_4f15

jr_040_4f34:
    ld a, [$d08a]
    ld c, a
    ld a, [$d08b]
    ld b, a
    ret


Call_040_4f3d:
    ld a, [$d086]
    cp $02
    jr z, jr_040_4f61

    cp $01
    jr z, jr_040_4f77

    cp $03
    jr z, jr_040_4f4d

    ret


jr_040_4f4d:
    ld a, [$d087]
    ld l, a
    ld a, [$d088]
    ld h, a
    call Call_040_4f8d
    ld a, l
    ld [$d087], a
    ld a, h
    ld [$d088], a
    ret


jr_040_4f61:
    ld d, h
    ld e, l
    ld a, [$d087]
    ld l, a
    ld a, [$d088]
    ld h, a
    call Call_040_4f8d
    ld a, l
    ld [$d087], a
    ld a, h
    ld [$d088], a
    ret


jr_040_4f77:
    ld h, d
    ld l, e
    ld a, [$d087]
    ld e, a
    ld a, [$d088]
    ld d, a
    call Call_040_4f8d
    ld a, e
    ld [$d087], a
    ld a, d
    ld [$d088], a
    ret


Call_040_4f8d:
    push hl
    ld a, [$d08a]
    ld l, a
    ld a, [$d08b]
    ld h, a
    add hl, bc
    ld a, l
    ld [$d08a], a
    ld a, h
    ld [$d08b], a
    pop hl
    ld a, [$d089]
    bit 7, a
    res 7, a
    jr z, jr_040_4fb6

    and a
    jr nz, jr_040_4fb0

    call $3026
    ret


jr_040_4fb0:
    and $7f
    call $306b
    ret


jr_040_4fb6:
    call $2fcb
    call $3026
    call $2fe1
    ret


    add b
    ld a, l
    call nc, $000b
    ld l, e
    jp nc, $d780

    call c, RST_08
    add b
    jp nc, Jump_040_7b80

    call nc, $0002
    db $76
    jp nc, $df80

    call c, $0120
    adc b
    jp nc, $ff80

    db $dd
    ld b, d
    nop
    xor b
    db $d3
    add b
    ld b, c
    sbc $42
    nop
    ld_long $ffd3, a
    nop
    nop
    and [hl]
    ld a, [de]
    ld bc, $0000
    rst $38
    add b
    ld b, c
    call c, $0001
    nop
    nop
    add b
    ld a, l
    call nc, $000b
    nop
    nop
    add b
    ld a, l
    call nc, $000b
    nop
    nop
    add b
    ld a, e
    call nc, $0002
    nop
    nop
    add b
    ld c, d
    ret c

    ld [bc], a
    nop
    nop
    nop
    add b
    ld [hl], d
    call nc, $0001
    nop
    nop
    inc b
    inc bc
    and [hl]
    ld [$0000], sp
    nop
    inc b
    rlca
    and b
    jr nc, jr_040_5029

jr_040_5029:
    nop
    nop
    rst $38
    add b
    ld l, e
    jp nc, $000b

    nop
    nop
    add b
    db $76
    jp nc, $0002

    nop
    nop
    add b
    ld [$42d3], a
    nop
    nop
    nop
    add b
    xor b
    db $d3
    ld b, d
    nop
    nop
    nop
    add b
    adc b
    jp nc, $0120

    nop
    nop
    rst $38
    call Call_040_507d
    ld a, [$d280]
    ld hl, $c608
    ld hl, $c608
    ld bc, $01b3
    call Call_040_50de
    ld hl, $c7bb
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $07
    call $2fcb
    ld hl, $c608
    ld de, $a001
    ld bc, $01b5
    call $3026
    call $2fe1
    ret


Call_040_507d:
    xor a
    ld hl, $c608
    ld bc, $01b5
    call $3041
    ld hl, $d26b
    ld de, $c608
    ld bc, $000b
    call $3026
    ld hl, $d271
    ld a, [hl+]
    ld [$c613], a
    ld a, [hl]
    ld [$c614], a
    ld hl, $d3ea
    ld de, $c615
    ld bc, $000b
    call Call_040_50cd
    ld hl, $d3a8
    ld de, $c657
    ld bc, $000b
    call Call_040_50cd
    ld hl, $d288
    ld de, $c699
    ld bc, $0030
    call Call_040_50cd
    ld a, $50
    ld [$c7b9], a
    ld a, $33
    ld [$c7ba], a
    ret


Call_040_50cd:
    push hl
    ld hl, $0000
    ld a, [$d280]
    call $30fe
    ld b, h
    ld c, l

Jump_040_50d9:
    pop hl
    call $3026
    ret


Call_040_50de:
    push hl
    push bc
    ld de, $0000

jr_040_50e3:
    ld a, [hl+]
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec bc
    ld a, b
    or c
    jr nz, jr_040_50e3

    pop bc
    pop hl
    ret


    xor a
    ld hl, $d086
    ld bc, $0009
    call $3041
    ld hl, $dc5c
    ld de, $dcd7
    call Call_040_5145
    ld hl, $dc5c
    ld de, $dcdf
    call Call_040_517c
    ld hl, $dc5c
    ld de, $ddff
    call Call_040_5181
    ld hl, $dc5c
    ld de, $de41
    call Call_040_5181
    ld hl, $cd75
    ld de, $d280
    call Call_040_5145
    ld hl, $cd75
    ld de, $d288
    call Call_040_517c
    ld hl, $cd75
    ld de, $d3a8
    call Call_040_5181
    ld hl, $cd75
    ld de, $d3ea
    call Call_040_5181
    ret


Call_040_5145:
    push de
    ld bc, $d08c
    xor a

jr_040_514a:
    push af
    call Call_040_5168
    ld [bc], a
    inc bc
    pop af
    inc a
    cp $03
    jr nz, jr_040_514a

    pop de
    ld a, $03
    ld [de], a
    inc de
    ld hl, $d08c
    ld bc, $0003
    call $3026
    ld a, $ff
    ld [de], a
    ret


Call_040_5168:
    push hl
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    pop hl
    push de
    inc de
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    ld a, [de]
    pop de
    ret


Call_040_517c:
    ld bc, $0030
    jr jr_040_5184

Call_040_5181:
    ld bc, $000b

jr_040_5184:
    ld a, $08
    ld [$d086], a
    ld a, $c6
    ld [$d087], a
    ld a, c
    ld [$d088], a
    ld a, b
    ld [$d089], a
    ld a, e
    ld [$d08a], a
    ld a, d
    ld [$d08b], a
    ld a, $03

jr_040_51a0:
    push af
    ld a, [hl+]
    push hl
    push af
    call Call_040_51df
    call Call_040_51e8
    pop af
    call $30fe
    ld a, [$d086]
    ld e, a
    ld a, [$d087]
    ld d, a
    call $3026
    ld a, e
    ld [$d086], a
    ld a, d
    ld [$d087], a
    pop hl
    pop af
    dec a
    jr nz, jr_040_51a0

    call Call_040_51e8
    ld a, $03
    ld hl, $0000
    call $30fe
    ld b, h
    ld c, l
    call Call_040_51df
    ld d, h
    ld e, l
    ld hl, $c608
    call $3026
    ret


Call_040_51df:
    ld a, [$d08a]
    ld l, a
    ld a, [$d08b]
    ld h, a
    ret


Call_040_51e8:
    ld a, [$d088]
    ld c, a
    ld a, [$d089]
    ld b, a
    ret


    ld a, $04
    call $2fcb
    ld a, [$a60c]
    ld [$dc41], a
    call $2fe1
    ld hl, $dc41
    res 4, [hl]
    ld hl, $cfbc
    bit 7, [hl]
    jr z, jr_040_5210

    ld hl, $dc41
    set 4, [hl]

jr_040_5210:
    call Call_040_609c
    xor a
    ld [$dc5f], a
    ld [$dc60], a
    ld a, $04
    ld [$c2dc], a
    ret


    xor a
    ld [$c2dc], a
    ret


    ld d, $01
    ld e, $40
    ld bc, $5297
    call Call_040_4000
    jr jr_040_523d

    ld d, $02
    ld e, $40
    ld bc, $5297
    call Call_040_4000
    jr jr_040_523d

jr_040_523d:
    xor a
    ld [$c2dd], a
    ld a, c
    ld hl, $5247
    rst $28
    ret


    ld d, c
    ld d, d
    ld a, l
    ld d, d
    ld a, h
    ld d, d
    ld l, h
    ld d, d
    ld h, l
    ld d, d
    call $1ad2
    call $2dba
    ld hl, $61f4
    call Call_040_61e0
    call Call_040_60ea
    ret c

    call Call_040_6142
    ret


    ld hl, $61ef
    call Call_040_61e0
    ret


    call $1ad2
    ld a, $25
    ld hl, $7ae3
    rst $08
    ld hl, $61f4
    call Call_040_61e0
    ret


    ret


    ret


    ld a, [$dc5f]
    and a
    jr z, jr_040_5290

    cp $01
    ld c, $27
    jr z, jr_040_5292

    cp $02
    ld c, $37
    jr z, jr_040_5292

jr_040_5290:
    ld c, $00

jr_040_5292:
    ld a, c
    ld [$cd25], a
    ret


    sub a
    ld e, d
    or h
    ld e, d
    ld [hl], l
    ld d, h
    rrca
    ld e, e
    jr c, jr_040_52f5

    dec hl
    ld e, e
    ld e, c
    ld e, e
    ld [hl], l
    ld d, h
    ld [hl], b
    ld e, e
    jr c, jr_040_52ff

    adc a
    ld e, e
    ld a, e
    ld e, l
    sub l
    ld e, l
    ld [hl], l
    ld d, h
    or d
    ld e, l
    ld c, a
    ld e, [hl]
    ld [hl], l
    ld d, h
    ld h, h
    ld e, [hl]
    ld c, a
    ld e, [hl]
    ld [hl], l
    ld d, h
    ld h, h
    ld e, [hl]
    sub l
    ld e, l
    ld [hl], l
    ld d, h
    or d
    ld e, l
    ret nc

    ld e, l
    db $e3
    ld e, l
    add hl, sp
    ld e, [hl]
    add hl, bc
    ld e, [hl]
    ld c, a
    ld e, [hl]
    ld [hl], l
    ld d, h
    ld h, h
    ld e, [hl]
    sub l
    ld e, l
    ld [hl], l
    ld d, h
    or d
    ld e, l
    add hl, bc
    ld e, [hl]
    ld sp, $c85e
    ld e, e
    jr c, jr_040_5337

    push hl
    ld e, e
    add $5a
    or h
    ld e, d
    ld [hl], l
    ld d, h
    ld de, $f45c
    ld d, h
    ret z

    ld e, h
    ld [c], a
    ld d, h
    ld [c], a
    ld d, h

jr_040_52f5:
    db $10
    ld e, l
    ld a, [hl+]
    ld e, l
    ld a, [hl+]
    ld e, l
    rlca
    ld d, l
    ld l, l
    ld d, l

jr_040_52ff:
    ld d, a
    ld d, l
    adc d
    ld d, l
    ld b, d
    ld e, h
    db $ed
    ld e, d
    or h
    ld e, d
    ld [hl], l
    ld d, h
    dec hl
    ld e, h
    db $f4
    ld d, h
    rst $18
    ld e, h
    ld [c], a
    ld d, h
    ld [c], a
    ld d, h
    ld e, $5d
    ld a, [hl+]
    ld e, l
    ld a, [hl+]
    ld e, l
    rlca
    ld d, l
    ld l, l
    ld d, l
    ld b, h
    ld d, l
    adc d
    ld d, l
    ld b, d
    ld e, h
    ld d, b
    ld e, h
    adc $54
    or $5c
    ld h, $58
    db $e4
    ld d, a
    pop af
    ld d, a
    xor b
    ld e, b
    sub $58
    db $e4
    ld d, a

jr_040_5337:
    pop af
    ld d, a
    pop hl
    ld e, b
    rst $18
    ld d, l
    ld a, l
    ld d, [hl]
    adc d
    ld d, [hl]
    ld a, [hl+]
    ld d, [hl]
    cp [hl]
    ld d, l
    ld a, l
    ld d, [hl]
    adc d
    ld d, [hl]
    rra
    ld d, [hl]
    sbc l
    ld d, l
    ld a, l
    ld d, [hl]
    adc d
    ld d, [hl]
    nop
    ld d, [hl]
    inc bc
    ld e, l
    ld l, e
    ld e, l
    sbc l
    ld d, l
    adc $54
    adc [hl]
    ld d, [hl]
    nop
    ld d, [hl]
    inc de
    ld e, c
    ld c, e
    ld e, c
    ld l, l
    ld e, c
    db $e4
    ld d, a
    push af
    ld d, a
    xor e
    ld e, c
    scf
    ld d, l
    ld [hl], c
    ld d, l
    sub d
    ld e, h
    ld a, [hl+]
    ld d, l
    ld [hl], c
    ld d, l
    ld c, a
    ld e, d
    cp h
    ld e, h
    ld h, d
    ld e, h
    scf
    ld d, l
    ld [hl], c
    ld d, l
    sub d
    ld e, h
    ld a, [hl+]
    ld d, l
    ld [hl], c
    ld d, l
    and b
    ld e, h
    ld [hl], l
    ld d, h
    cp h
    ld e, h
    ld a, $22
    ld hl, $6dcc
    rst $08
    ld c, $00
    jr c, jr_040_5396

    inc c

jr_040_5396:
    sla c
    ld a, [$cd2f]
    and a
    jr z, jr_040_539f

    inc c

jr_040_539f:
    sla c
    ld a, [$cd21]
    cp $01
    jr z, jr_040_53a9

    inc c

jr_040_53a9:
    ret


Call_040_53aa:
    call $31f3
    call $1d7d
    call $2bae
    ld a, $41
    ld hl, $6464
    rst $08
    call $1ad2
    call $2b5c
    ret


Call_040_53c0:
    ld a, $02
    ld hl, $4000
    rst $08
    ld a, $41
    ld hl, $6462
    rst $08
    ld a, $41
    ld hl, $6464
    rst $08
    call $2b5c
    ret


Call_040_53d6:
    ld a, $41
    ld hl, $4000
    rst $08
    ret


Call_040_53dd:
    call $3238
    ret


    push de
    inc de
    ld b, a
    ld c, $00

jr_040_53e6:
    inc c
    ld a, [hl+]
    ld [de], a
    inc de
    and a
    jr z, jr_040_53f1

    dec b
    jr nz, jr_040_53e6

    scf

jr_040_53f1:
    pop de
    ld a, c
    ld [de], a
    ret


Call_040_53f5:
    ld a, [hl+]
    ld [de], a
    inc de
    ld c, a

jr_040_53f9:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_040_53f9

    ret


    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_040_5416

    inc hl

Call_040_5406:
    ld c, a
    ld b, $00

jr_040_5409:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_040_5416

    inc hl
    dec bc
    ld a, b
    or c
    jr nz, jr_040_5409

    and a
    ret


jr_040_5416:
    scf
    ret


Call_040_5418:
    call $0984
    ldh a, [$a8]
    and $05
    cp $05
    jr z, jr_040_5425

    xor a
    ret


jr_040_5425:
    ld a, $f7
    ld [$cd2b], a
    scf
    ret


Call_040_542c:
    ld a, $01
    ld [$c305], a
    ld a, $45
    ld hl, $5e18
    rst $08
    ret


    ld hl, $cd29
    set 6, [hl]
    ld a, [$cd26]
    ld hl, $5457
    rst $28
    ld a, [$cd26]
    bit 7, a
    ret z

    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld e, e
    ld d, h
    ld h, a
    ld d, h
    ld a, $3c
    ld [$cd42], a
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    ld hl, $cd42
    dec [hl]
    ret nz

    ld a, [$cd26]
    set 7, a
    ld [$cd26], a
    ret


    ld hl, $cd29
    set 6, [hl]
    ld a, [$cd26]
    ld hl, $5494
    rst $28
    ld a, [$cd26]
    bit 7, a
    ret z

    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    sbc d
    ld d, h
    and [hl]
    ld d, h
    or a
    ld d, h
    ld a, $28
    ld [$cd42], a
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    ld hl, $cd42
    dec [hl]
    ret nz

    ld a, $50
    ld [$cd42], a
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    call $0984
    ldh a, [$a7]
    and $03
    jr nz, jr_040_54c5

    ld hl, $cd42
    dec [hl]
    ret nz

jr_040_54c5:
    ld a, [$cd26]
    set 7, a
    ld [$cd26], a
    ret


    ld a, $40
    ld hl, $4720
    rst $08
    ld a, $40
    ld hl, $4641
    rst $08
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld hl, $cd29
    set 6, [hl]
    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $40
    ld hl, $4082
    rst $08
    ld hl, $cd29
    set 6, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld de, $cd30
    ld hl, $0040
    ld bc, $0040
    ld a, $02
    call $3e32
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $34
    call $3e32
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $36
    call $3e32
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $0a
    call $3e32
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $40
    ld hl, $4641
    rst $08
    ld a, $12
    call $3e32
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $40
    ld hl, $4641
    rst $08
    ld hl, $cd53
    ld a, $08
    call $3e32
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_556d:
    call Call_040_5418
    ret c

    ld a, $40
    ld hl, $432e
    rst $08
    ret c

    ret z

    ld a, e
    cp $01
    jr z, jr_040_5582

    ld [$cd2b], a
    ret


jr_040_5582:
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $40
    ld hl, $464c
    rst $08
    ld a, [$cd44]
    cp $0a
    jr c, jr_040_556d

    ld a, $fb
    ld [$cd2b], a
    ret


    ld de, $c608
    ld a, $40
    ld hl, $4edf
    rst $08
    ld de, $c608
    ld a, $05
    ld hl, $d800
    call Call_040_574c
    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld de, $c608
    ld a, $40
    ld hl, $4eed
    rst $08
    ld de, $c608
    ld a, $05
    ld hl, $d800
    call Call_040_574c
    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld de, $c608
    ld a, $40
    ld hl, $4ef4
    rst $08
    ld de, $c608
    ld a, $05
    ld hl, $d800
    call Call_040_574c
    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld hl, $d800
    ld de, $c608
    ld bc, $01e0
    ld a, $05
    call $306b
    ld de, $c608
    ld a, $40
    ld hl, $4ee6
    rst $08
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    call Call_040_5649
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    call Call_040_5663
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


Call_040_5635:
    ld de, $c608
    ld bc, $01e0
    call $306b
    ret


Call_040_563f:
    ld hl, $c608
    ld bc, $01e0
    call $306b
    ret


Call_040_5649:
    ld a, $05
    ld hl, $d800
    call Call_040_5635
    ld a, $05
    ld de, $da00
    call Call_040_563f
    ret


    ld a, $05
    ld hl, $da00
    call Call_040_5635
    ret


Call_040_5663:
    ld a, $05
    ld hl, $d800
    call Call_040_5635
    ld a, $05
    ld de, $dc00
    call Call_040_563f
    ret


    ld a, $05
    ld hl, $dc00
    call Call_040_5635
    ret


    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    call Call_040_5418
    ret c

    ld b, $00
    ld c, $01
    ld a, $40
    ld hl, $479c
    rst $08
    ret c

    ld c, $01
    ld b, $03
    ld a, $40
    ld hl, $462d
    rst $08
    ret c

    ld a, [$cd26]
    ld hl, $56c3
    rst $28
    ld hl, $cd29
    set 6, [hl]
    ld a, [$cd26]
    bit 7, a
    ret z

    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    rst $08
    ld d, [hl]
    sbc $56
    ld hl, sp+$56
    dec b
    ld d, a
    add hl, de
    ld d, a
    inc h
    ld d, a
    ld hl, $cd3a
    inc [hl]
    call Call_040_576f
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    ret


    call Call_040_577b
    jr nc, jr_040_56eb

    ld a, [$cd26]
    inc a
    ld [$cd26], a
    ret


jr_040_56eb:
    ld a, $ff
    ld [$cd39], a
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    ret


    ld a, $00
    ld [$cd27], a
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    ret


    ld a, $40
    ld hl, $4382
    rst $08
    ld a, [$cd27]
    bit 7, a
    ret z

    ld a, [$cd26]
    inc a
    ld [$cd26], a
    ret


    call Call_040_57c7
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    ret


    ld a, [$cd39]
    cp $ff
    jr z, jr_040_5731

    ld a, $00
    ld [$cd26], a
    ret


jr_040_5731:
    ld a, [$cd26]
    set 7, a
    ld [$cd26], a
    ret


    ld d, b

Call_040_573b:
    push bc
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$573a]
    ld c, a
    ld b, $00
    pop af
    call $30fe
    pop bc
    ret


Call_040_574c:
    ld [$cd3d], a
    ld a, l
    ld [$cd3e], a
    ld a, h
    ld [$cd3f], a
    ld a, e
    ld [$cd3b], a
    ld a, d
    ld [$cd3c], a
    ld a, c
    ld [$cd40], a
    ld a, b
    ld [$cd41], a
    xor a
    ld [$cd39], a
    ld [$cd3a], a
    ret


Call_040_576f:
    ld hl, $ccb4
    ld bc, $0054
    ld a, $11
    call $3041
    ret


Call_040_577b:
    ld a, [$573a]
    ld c, a
    ld b, $00
    ld a, [$cd3a]
    ld hl, $0000
    call $30fe
    ld e, l
    ld d, h
    ld hl, $cd40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    jr c, jr_040_57a0

    add hl, bc
    call Call_040_57b0
    scf
    ret


jr_040_57a0:
    ld a, $ff
    ld [$cd39], a
    add hl, bc
    ld a, h
    or l
    ret z

    ld c, l
    ld b, h
    call Call_040_57b0
    xor a
    ret


Call_040_57b0:
    ld a, c
    ld [$ccb4], a
    push bc
    ld a, [$cd3a]
    dec a
    ld hl, $cd3b
    call Call_040_573b
    pop bc
    ld de, $ccb5
    call $3026
    ret


Call_040_57c7:
    ld a, [$cc60]
    ld c, a
    ld b, $00
    ld a, [$cd3a]
    dec a
    ld hl, $cd3e
    call Call_040_573b
    ld e, l
    ld d, h
    ld hl, $cc61
    ld a, [$cd3d]
    call $306b
    and a
    ret


    ld a, $00
    ld [$cd27], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    call Call_040_5418
    ret c

    ld b, $00
    ld c, $01
    ld a, $40
    ld hl, $479c
    rst $08
    ret c

    ld c, $01
    ld b, $03
    ld a, $40
    ld hl, $462d
    rst $08
    ret c

    ld a, $40
    ld hl, $4382
    rst $08
    ld a, [$cd27]
    bit 7, a
    jr nz, jr_040_581e

    ld hl, $cd29
    set 6, [hl]
    ret


jr_040_581e:
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, [$cd21]
    cp $02
    jr z, jr_040_5833

    cp $01
    jr z, jr_040_5844

    jr jr_040_5869

jr_040_5833:
    ld hl, $586f
    ld de, $ccb4
    call Call_040_53f5
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_5844:
    ld a, $40
    ld hl, $7654
    rst $08
    ld a, c
    ld hl, $5882
    cp $01
    jr z, jr_040_585b

    ld hl, $5895
    cp $02
    jr z, jr_040_585b

    jr jr_040_5869

jr_040_585b:
    ld de, $ccb4
    call Call_040_53f5
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_5869:
    ld a, $fe
    ld [$cd2b], a
    ret


    ld [de], a
    add hl, de
    ld [hl], e
    add hl, bc
    inc de
    ld [hl], h
    ld [hl], d
    ld h, c
    ld h, h
    ld h, l
    ld e, a
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    nop
    ld [de], a
    add hl, de
    ld h, a
    db $10
    ld bc, $7266
    ld h, l
    ld h, l
    ld e, a
    ld e, a
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    nop
    ld [de], a
    add hl, de
    ld h, a
    db $10
    ld bc, $696c
    ld l, l
    ld l, c
    ld [hl], h
    ld e, a
    ld h, e
    ld [hl], d
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, h
    nop
    ld hl, $ccb5
    ld de, $cc61
    ld a, $04
    call Call_040_5406
    jr c, jr_040_58d0

    ld hl, $ccb9
    ld de, $cc65
    ld a, $06
    call Call_040_5406
    jr c, jr_040_58ca

    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_58ca:
    ld a, $f6
    ld [$cd2b], a
    ret


jr_040_58d0:
    ld a, $f5
    ld [$cd2b], a
    ret


    call Call_040_58ec
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    call Call_040_58fb
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


Call_040_58ec:
    ld a, $0a
    ld hl, $ccb4
    ld [hl+], a
    ld c, a

jr_040_58f3:
    call $2f8c
    ld [hl+], a
    dec c
    jr nz, jr_040_58f3

    ret


Call_040_58fb:
    ld a, [$cd2f]
    and a
    jr z, jr_040_5906

    ld hl, $cc61
    jr jr_040_5909

jr_040_5906:
    ld hl, $ccb5

jr_040_5909:
    ld de, $d1fa
    ld bc, $000a
    call $3026
    ret


    ld hl, $cd2a
    set 0, [hl]
    xor a
    ld [$c30d], a
    ld hl, $cd29
    res 4, [hl]
    xor a
    ld [$c305], a
    ld hl, $cd29
    res 7, [hl]
    ld a, $90
    ldh [$d2], a
    ld a, [$cd21]
    cp $01
    jr z, jr_040_593f

    cp $02
    jr z, jr_040_5945

    ld a, $71
    ld [$cd25], a
    ret


jr_040_593f:
    ld a, $66
    ld [$cd25], a
    ret


jr_040_5945:
    ld a, $65
    ld [$cd25], a
    ret


    call $2ed3
    call $300b
    ld a, $40
    ld hl, $61f9
    rst $08
    ld hl, $cd29
    bit 3, [hl]
    jr nz, jr_040_5967

    call Call_040_53c0
    ld a, $71
    ld [$cd25], a
    ret


jr_040_5967:
    ld a, $60
    ld [$cd25], a
    ret


    ld a, $02
    ld hl, $4000
    rst $08
    ld a, $40
    ld hl, $460d
    rst $08
    ld hl, $cd29
    set 5, [hl]
    ld hl, $cd2a
    set 6, [hl]
    ld a, $06
    ld [$ccb4], a
    ld hl, $dc5c
    ld de, $ccb5
    ld bc, $0003
    call $3026
    ld hl, $cd6c
    ld a, [hl+]
    ld [$ccb8], a
    ld a, [hl+]
    ld [$ccb9], a
    ld a, [hl]
    ld [$ccba], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    call Call_040_5a75
    ld a, $40
    ld hl, $4754
    rst $08
    xor a
    ld [$dc5f], a
    ld [$dc60], a
    ld a, $02
    ld hl, $4000
    rst $08
    call $103e
    ld a, $40
    ld hl, $4846
    rst $08
    ld c, $78
    call $0468
    ld a, $00
    ld hl, $0fc8
    rst $08
    call Call_040_59ee
    call Call_040_5a21
    ld a, [$cd2b]
    cp $fc
    jr nz, jr_040_59e6

    xor a
    ld [$cd2b], a

jr_040_59e6:
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


Call_040_59ee:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld bc, $dc0d
    ld de, $dc11
    ld a, $13
    ld hl, $6929
    rst $08
    pop af
    ldh [rSVBK], a
    ld a, c
    ld [$d22f], a
    ld hl, $d26b
    ld de, $c656
    ld bc, $000b
    call $3026
    ld a, [$cd2f]
    and a
    ld a, $02
    jr z, jr_040_5a1e

    ld a, $01

jr_040_5a1e:
    ldh [$cb], a
    ret


Call_040_5a21:
    ld hl, $cfcc
    ld a, [hl]
    push af
    and $20
    or $01
    ld [hl], a
    ld a, $01
    ld [$c2d7], a
    ld a, $0f
    ld hl, $74dd
    rst $08
    ld a, $0f
    ld hl, $4000
    rst $08
    ld a, $0f
    ld hl, $7759
    rst $08
    xor a
    ld [$c2d7], a
    ld a, $ff
    ldh [$cb], a
    pop af
    ld [$cfcc], a
    ret


    ld a, $01
    ld [$c2d7], a
    ld a, $0f
    ld hl, $777c
    rst $08
    xor a
    ld [$c2d7], a
    ld a, $0f
    ld hl, $76d0
    rst $08
    ld a, $05
    ld hl, $500c
    rst $08
    call Call_040_53c0
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


Call_040_5a75:
    ld hl, $cc61
    ld de, $cd75
    ld bc, $0003
    call $3026
    ld de, $cc64
    ld a, $40
    ld hl, $4772
    rst $08
    ld a, $40
    ld hl, $5050
    rst $08
    ld a, $40
    ld hl, $50f2
    rst $08
    ret


    ld a, $45
    ld hl, $5d99
    rst $08
    ld hl, $cd29
    set 7, [hl]
    ld c, $02
    call Call_040_542c
    ld hl, $cd29
    set 6, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld e, $01
    call Call_040_5ee4
    ld hl, $cd29
    set 5, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $45
    ld hl, $5d99
    rst $08
    ld hl, $cd29
    set 7, [hl]
    ld c, $02
    call Call_040_542c
    ld hl, $cd29
    set 6, [hl]
    xor a
    ld [$cd2f], a
    ld de, $dc42
    call Call_040_6068
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $45
    ld hl, $5d99
    rst $08
    ld hl, $cd29
    set 7, [hl]
    ld c, $02
    call Call_040_542c
    ld hl, $cd29
    set 6, [hl]
    ld a, $01
    ld [$cd2f], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld c, $00
    call Call_040_542c
    ld e, $03
    call Call_040_5ee4
    ld hl, $cd29
    set 5, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ld a, $00
    ld [$cd26], a
    ret


    ld a, $40
    ld hl, $4579
    rst $08
    ld hl, $cd29
    set 2, [hl]
    ld a, [$cd26]
    bit 7, a
    ret z

    call Call_040_53dd
    ld a, $00
    ld [$cd26], a
    ld a, [$cfa9]
    cp $01
    jr z, jr_040_5b51

    ld a, $02
    ld [$cd2b], a
    ret


jr_040_5b51:
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld c, $02
    call Call_040_542c
    ld e, $02
    call Call_040_5ee4
    ld hl, $cd29
    set 5, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld c, $02
    call Call_040_542c
    ld e, $04
    call Call_040_5ee4
    ld hl, $cd29
    set 5, [hl]
    call $1ad2
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ld a, $00
    ld [$cd26], a
    ret


    ld a, $40
    ld hl, $45c3
    rst $08
    ld hl, $cd29
    set 2, [hl]
    ld a, [$cd26]
    bit 7, a
    ret z

    call Call_040_53dd
    ld a, $00
    ld [$cd26], a
    ld a, [$cfa9]
    cp $01
    jr z, jr_040_5bbc

    ld a, $01
    ld [$cd2f], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_5bbc:
    xor a
    ld [$cd2f], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld c, $02
    call Call_040_542c
    ld e, $08
    call Call_040_5ee4
    call Call_040_6048
    call Call_040_53dd
    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $40
    ld hl, $4579
    rst $08
    ld hl, $cd29
    set 2, [hl]
    ld a, [$cd26]
    bit 7, a
    ret z

    call Call_040_53dd
    ld a, $00
    ld [$cd26], a
    ld a, [$cfa9]
    cp $01
    jr nz, jr_040_5c0b

    ld a, $2a
    ld [$cd25], a
    ret


jr_040_5c0b:
    ld a, $02
    ld [$cd2b], a
    ret


    ld a, $01
    ld [$dc5f], a
    ld e, $09
    call Call_040_5ee4
    call Call_040_6048
    ld hl, $cd29
    set 5, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


Jump_040_5c2b:
    ld a, $02
    ld [$dc5f], a
    ld e, $07
    call Call_040_5ee4
    ld hl, $cd29
    set 5, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld hl, $cd2a
    set 1, [hl]
    call Call_040_4665
    ld a, $47
    ld [$cd25], a
    ret


    ld e, $0a
    call Call_040_5ee4
    ld hl, $cd29
    set 2, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $45
    ld hl, $5d99
    rst $08
    ld hl, $cd29
    set 7, [hl]
    ld c, $01
    call Call_040_542c
    xor a
    ld [$c30d], a
    ld hl, $cd29
    res 4, [hl]
    ld e, $0b
    call Call_040_5ee4
    ld hl, $cd29
    set 5, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ld a, $00
    ld [$cd26], a
    ret


    ld a, $40
    ld hl, $4675
    rst $08
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld c, $02
    call Call_040_542c
    ld e, $0c
    call Call_040_5ee4
    ld hl, $cd29
    set 5, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ld a, $00
    ld [$cd26], a
    ret


    ld a, $01
    ld [$cd2b], a
    ret


    ld a, $02
    ld [$cd2b], a
    ret


    ld a, $01
    ld [$c314], a
    ld a, $01
    ld [$c30d], a
    ld hl, $cd29
    set 4, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $06
    ld [$c314], a
    ld a, $01
    ld [$c30d], a
    ld hl, $cd29
    set 4, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $0b
    ld [$c315], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld a, $0e
    ld [$c315], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld c, $01
    call Call_040_542c
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    jr jr_040_5d2a

    ld c, $03
    call Call_040_542c
    ld a, [$cd25]
    inc a
    ld [$cd25], a

jr_040_5d2a:
    call Call_040_5418
    ret c

    ld hl, $cd29
    set 6, [hl]
    ld a, [$cd26]
    ld hl, $5d4d
    rst $28
    ld a, [$cd26]
    bit 7, a
    ret z

    ld a, $00
    ld [$cd26], a
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    ld d, c
    ld e, l
    ld e, l
    ld e, l
    ld a, $3c
    ld [$cd42], a
    ld a, [$cd26]
    inc a
    ld [$cd26], a
    ld hl, $cd42
    dec [hl]
    ret nz

    ld a, [$cd26]
    set 7, a
    ld [$cd26], a
    ret


    ld a, [$c30d]
    and a
    ret nz

    ld hl, $cd29
    res 4, [hl]
    ld a, $64
    ld [$cd25], a
    ret


    ld a, $40
    ld hl, $538b
    rst $08
    ld b, $00
    ld hl, $5d8d
    add hl, bc
    ld c, [hl]
    ld a, c
    ld [$cd25], a
    ret


    dec d
    dec d
    rra
    rra
    inc c
    ld [de], a
    ld a, [hl-]
    ld a, [hl-]
    call Call_040_5ee2
    call $1d6e
    ld e, $0e
    call Call_040_5ee4
    ld hl, $cd29
    set 5, [hl]
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ld a, $00
    ld [$cd26], a
    ret


    ld a, $40
    ld hl, $7302
    rst $08
    call $1c07
    ld hl, $cd29
    set 5, [hl]
    jr c, jr_040_5dca

    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_5dca:
    ld a, $02
    ld [$cd2b], a
    ret


    ld hl, $dc41
    bit 1, [hl]
    jr nz, jr_040_5ddd

    ld a, $19
    ld [$cd25], a
    ret


jr_040_5ddd:
    ld a, $1b
    ld [$cd25], a
    ret


    call Call_040_5ecc
    call Call_040_5ead
    jr c, jr_040_5df3

    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_5df3:
    call Call_040_5e98
    jr c, jr_040_5e00

    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_5e00:
    call Call_040_5ed3
    ld a, $02
    ld [$cd2b], a
    ret


    call Call_040_5ead
    jr c, jr_040_5e16

    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_5e16:
    call Call_040_5ecc
    call Call_040_5e98
    push af
    call Call_040_5ed3
    pop af
    jr c, jr_040_5e2b

    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


jr_040_5e2b:
    ld a, $02
    ld [$cd2b], a
    ret


    ld a, $3a
    ld [$cd25], a
    jp Jump_040_5c2b


    call Call_040_60bf
    push af
    call Call_040_5ed3
    pop af
    jr c, jr_040_5e49

    ld a, $2a
    ld [$cd25], a
    ret


jr_040_5e49:
    ld a, $02
    ld [$cd2b], a
    ret


    ld e, $06
    call Call_040_5ee4
    call Call_040_53d6
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ld a, $00
    ld [$cd26], a
    ret


    call Call_040_5ecc
    call Call_040_60a8
    push af
    call Call_040_5ed3
    pop af
    jr c, jr_040_5e77

    ld a, $24
    ld [$cd25], a
    ret


jr_040_5e77:
    ld hl, $cd29
    set 5, [hl]
    ld a, $02
    ld [$cd2b], a
    ret


    call Call_040_5ecc
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


    call Call_040_5ed3
    ld a, [$cd25]
    inc a
    ld [$cd25], a
    ret


Call_040_5e98:
    call $300b
    ld a, $22
    ld hl, $6db3
    rst $08
    ret c

    ld hl, $cfbc
    set 7, [hl]
    ld hl, $dc41
    set 4, [hl]
    ret


Call_040_5ead:
    ld hl, $cfbc
    bit 7, [hl]
    jr nz, jr_040_5ec8

    ld hl, $dc41
    bit 2, [hl]
    jr z, jr_040_5eca

    ld a, [$cd2f]
    and a
    jr nz, jr_040_5ec8

    ld hl, $dc41
    bit 1, [hl]
    jr z, jr_040_5eca

jr_040_5ec8:
    xor a
    ret


jr_040_5eca:
    scf
    ret


Call_040_5ecc:
    call Call_040_5ee2
    call $2b29
    ret


Call_040_5ed3:
    call Call_040_53aa
    ld a, $45
    ld hl, $5d99
    rst $08
    ld hl, $cd29
    set 7, [hl]
    ret


Call_040_5ee2:
    ld e, $00

Call_040_5ee4:
    ld d, $00
    ld hl, $5ef5
    add hl, de
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, $40
    ld hl, $4504
    rst $08
    ret


    inc de
    ld e, a
    inc d
    ld e, a
    ld [hl-], a
    ld e, a
    ld c, a
    ld e, a
    ld l, c
    ld e, a
    add c
    ld e, a
    sub e
    ld e, a
    xor d
    ld e, a
    push bc
    ld e, a
    jp nc, $e15f

    ld e, a
    rst $28
    ld e, a
    nop
    ld h, b
    inc c
    ld h, b
    inc d
    ld h, b
    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    add b
    rrca
    ld b, d
    adc a
    db $dd
    ld a, a
    jp nz, $dfb6

    jp $b54e


    call nz, $30d3
    pop bc
    call nz, $c27f
    or e
    cp h
    sbc $bc
    rst $08
    cp l
    ld d, b
    inc sp
    sbc $dc
    db $dd
    ld a, a
    or [hl]
    cp c
    reti


    set 0, h
    add $ca
    ld c, [hl]
    jp nz, $dcb3

    ret c

    ld [c], a
    or e
    or a
    sbc $26
    ld a, a
    or [hl]
    or [hl]
    ret c

    rst $08
    cp l
    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    add b
    rrca
    ld b, d
    adc a
    ret


    ld a, a
    inc l
    pop hl
    sbc $3b
    jp z, $334e

    or a
    jp $b27f


    rst $08
    cp l
    or [hl]
    and $50
    or c
    push bc
    ret nz

    ld h, $7f
    or l
    call nz, $30d3
    pop bc
    add $4e
    inc sp
    sbc $dc
    db $dd
    ld a, a
    or [hl]
    cp c
    rst $08
    cp l
    or [hl]
    and $50
    jp nc, $bcb2

    sbc e
    db $f4
    and [hl]
    rrca
    db $e3
    db $dd
    ld c, [hl]
    jp nz, $b2b6

    rst $08
    cp l
    or [hl]
    and $50
    inc sp
    sbc $dc
    ld a, [hl-]
    sbc $2a
    or e
    db $dd
    ld a, a
    add $e1
    or e
    ret c

    ld [c], a
    cp b
    ld c, [hl]
    cp h
    jp $30b8


    cp e
    or d
    ld d, b
    cp a
    jp c, $ca33

    ld a, a
    or l
    call nz, $30d3
    pop bc
    or [hl]
    rst $10
    ret


    ld c, [hl]
    inc sp
    sbc $dc
    db $dd
    ld a, a
    or l
    rst $08
    pop bc
    cp h
    rst $08
    cp l
    ld [hl], l
    ld d, b
    ld c, [hl]
    add $7f
    inc sp
    sbc $dc
    db $dd
    ld a, a
    or [hl]
    cp c
    rst $08
    cp l
    ld d, b
    ld c, [hl]
    add $7f
    inc sp
    sbc $dc
    db $dd
    ld a, a
    or [hl]
    cp c
    jp $cfb2


    cp l
    ld d, b
    inc sp
    sbc $dc
    ld h, $7f
    jp nz, $26c5

    ret c

    rst $08
    cp h
    ret nz

    rst $20
    ld d, b
    jp nz, $dcb3

    db $dd
    ld c, [hl]
    cp h
    pop hl
    or e
    ret c

    ld [c], a
    or e
    ld a, a
    cp h
    rst $08
    cp l
    ld [hl], l
    ld d, b
    jp nz, $bcb3

    sbc $7f
    cp h
    pop hl
    or e
    ret c

    ld [c], a
    or e
    ld d, b
    jp nz, $dcb3

    ld a, a
    inc l
    or [hl]
    sbc $50
    cp a
    jp c, $ca33

    ld a, a
    jp nz, $bcb3

    sbc $c9
    ld c, [hl]
    cp [hl]
    rst $18
    jp $ddb2


    ld a, a
    cp h
    jp $30b8


    cp e
    or d
    ld d, b
    ld a, $45
    ld hl, $5d99
    rst $08
    ld hl, $cd29
    set 7, [hl]
    ld c, $02
    call Call_040_542c
    ld e, $0d
    call Call_040_5ee4
    ld hl, $c4f4
    call Call_040_4681
    ret


Call_040_6048:
    call Call_040_604c
    ret


Call_040_604c:
    ld hl, $c4cb
    ld c, $10
    ld de, $cd53

jr_040_6054:
    ld a, [de]
    inc de
    and a
    jr z, jr_040_6067

    sub $30
    jr c, jr_040_6067

    cp $0a
    jr nc, jr_040_6067

    add $f6
    ld [hl+], a
    dec c
    jr nz, jr_040_6054

jr_040_6067:
    ret


Call_040_6068:
    ld hl, $cd53
    ld c, $08

jr_040_606d:
    ld a, [de]
    call Call_040_6080
    jr c, jr_040_607f

    ld a, [de]
    swap a
    call Call_040_6080
    jr c, jr_040_607f

    inc de
    dec c
    jr nz, jr_040_606d

jr_040_607f:
    ret


Call_040_6080:
    and $0f
    cp $0f
    jr z, jr_040_608a

    add $30
    ld [hl+], a
    ret


jr_040_608a:
    ld [hl], $00
    scf
    ret


Call_040_608e:
    push de
    ld h, d
    ld l, e
    ld de, $dc42
    ld bc, $0008
    call $3026
    pop de
    ret


Call_040_609c:
    ld a, $ff
    ld hl, $dc42
    ld bc, $0008
    call $3041
    ret


Call_040_60a8:
    call Call_040_609c
    ld c, $01
    ld de, $dc42
    ld a, $5e
    ld hl, $668f
    rst $08
    ret c

    call Call_040_608e
    call Call_040_6068
    xor a
    ret


Call_040_60bf:
    call $300b
    ld a, $22
    ld hl, $6ba9
    rst $08
    ld a, c
    and a
    jr z, jr_040_60e8

    dec a
    ld hl, $a04c
    ld bc, $0025
    call $30fe
    ld d, h
    ld e, l
    ld a, $04
    call $2fcb
    call Call_040_608e
    call Call_040_6068
    call $2fe1
    xor a
    ret


jr_040_60e8:
    scf
    ret


Call_040_60ea:
    ld hl, $dc41
    bit 4, [hl]
    jr z, jr_040_6110

    ld hl, $dc41
    bit 2, [hl]
    jr nz, jr_040_6110

    call Call_040_618d
    ld hl, $c608
    bit 4, [hl]
    jr z, jr_040_6110

    ld hl, $c608
    bit 2, [hl]
    jr nz, jr_040_6110

    call Call_040_6112
    jr z, jr_040_6110

    and a
    ret


jr_040_6110:
    scf
    ret


Call_040_6112:
    ld a, $04
    call $2fcb
    ld hl, $a041
    ld c, $28

jr_040_611c:
    push hl
    ld de, $c60f
    ld b, $1f

jr_040_6122:
    ld a, [de]
    cp [hl]
    jr nz, jr_040_612f

    inc de
    inc hl
    dec b
    jr nz, jr_040_6122

    pop hl
    xor a
    jr jr_040_613c

jr_040_612f:
    pop hl
    ld de, $0025
    add hl, de
    dec c
    jr nz, jr_040_611c

    ld a, $01
    and a
    jr jr_040_613c

jr_040_613c:
    push af
    call $2fe1
    pop af
    ret


Call_040_6142:
    call Call_040_618d
    call Call_040_6180
    ld hl, $61d1
    call $1d4f
    ld de, $0090
    call $3c23
    call $0a36
    call $1c07
    call Call_040_619f
    ld hl, $61d6
    call $1d4f
    call $1dcf
    call $1c07
    jr c, jr_040_617c

    call Call_040_61b8
    jr c, jr_040_617c

    call Call_040_618d
    call Call_040_6180
    ld hl, $61db
    call $1057

jr_040_617c:
    call Call_040_53d6
    ret


Call_040_6180:
    ld hl, $c609
    ld de, $d086
    ld bc, $000b
    call $3026
    ret


Call_040_618d:
    ld hl, $dc00
    ld de, $c608
    ld bc, $0026
    ld a, $05
    call $306b
    ld de, $c609
    ret


Call_040_619f:
    call $2b29
    call Call_040_618d
    ld de, $c609
    ld a, $22
    ld hl, $6c4e
    rst $08
    call $0a36
    call $2009
    call Call_040_53aa
    ret


Call_040_61b8:
    call $2b29
    call Call_040_618d
    ld de, $c60f
    ld a, $22
    ld hl, $6c70
    rst $08
    ld a, c
    ld [$d073], a
    push af
    call Call_040_53aa
    pop af
    ret


    ld d, $9a
    ld d, c
    ld l, a
    ld d, b
    ld d, $ba
    ld d, c
    ld l, a
    ld d, b
    ld d, $dd
    ld d, c
    ld l, a
    ld d, b

Call_040_61e0:
    call $1d4f
    call $0a36
    call $1c07
    ret


    ld d, $01
    ld d, d
    ld l, a
    ld d, b
    ld d, $11
    ld d, d
    ld l, a
    ld d, b
    ld d, $23
    ld d, d
    ld l, a
    ld d, b
    call Call_040_6233
    ld a, $00
    ld [$cd49], a
    ld hl, $cd29
    bit 3, [hl]
    res 3, [hl]
    jr z, jr_040_620f

    ld a, $01
    ld [$cd49], a

jr_040_620f:
    call Call_040_62ca
    ld a, [$cd49]
    ld hl, $62f5
    rst $28
    call Call_040_6241
    call Call_040_62d0
    jr c, jr_040_6231

    ld a, [$cd49]
    bit 7, a
    jr z, jr_040_620f

    xor a
    ld hl, $cd29
    bit 3, [hl]
    ret z

    scf
    ret


jr_040_6231:
    xor a
    ret


Call_040_6233:
    ld hl, $cd49
    ld bc, $000a
    xor a
    call $3041
    call Call_040_704f
    ret


Call_040_6241:
    call Call_040_626a
    call Call_040_6274
    call Call_040_624b
    ret


Call_040_624b:
    ld hl, $cd4b
    bit 1, [hl]
    jr nz, jr_040_625e

    bit 2, [hl]
    jr nz, jr_040_625e

    call $045a
    call $045a
    xor a
    ret


jr_040_625e:
    res 1, [hl]
    res 2, [hl]
    ld a, $41
    ld hl, $4099
    rst $08
    scf
    ret


Call_040_626a:
    ld hl, $cd4b
    bit 0, [hl]
    ret z

    call Call_040_705d
    ret


Call_040_6274:
    ld hl, $cd4b
    bit 3, [hl]
    ret z

    res 3, [hl]
    ld de, $0008
    call $3c23
    ret


Call_040_6283:
    ld a, $01
    ld [$cf41], a
    ld hl, $cd4b
    set 0, [hl]
    ret


Call_040_628e:
    xor a
    ld [$cf41], a
    ld hl, $cd4b
    res 0, [hl]
    ret


Call_040_6298:
    ld a, e
    cp $02
    ret nz

    ld hl, $cd4b
    bit 6, [hl]
    jr z, jr_040_62b6

    ld hl, $cd4b
    bit 7, [hl]
    ld hl, $cd4b
    set 7, [hl]
    ret nz

    ld de, $0027
    call $3c23
    jr jr_040_62c1

jr_040_62b6:
    ld hl, $cd4b
    bit 7, [hl]
    ld hl, $cd4b
    res 7, [hl]
    ret z

jr_040_62c1:
    call Call_040_704f
    ld a, $01
    ld [$cf41], a
    ret


Call_040_62ca:
    ld a, $1e
    ld [$cfb1], a
    ret


Call_040_62d0:
    ld a, $40
    ld hl, $432e
    rst $08
    ld a, [$cd2b]
    and a
    jr nz, jr_040_62f3

    call Call_040_6298
    ld a, [$cfb1]
    ld c, a
    ld a, $1e
    sub c
    ld c, a
    ld b, $03
    ld a, $40
    ld hl, $462d
    rst $08
    jr c, jr_040_62f3

    xor a
    ret


jr_040_62f3:
    scf
    ret


    ld c, e
    ld h, e
    ld h, c
    ld h, e
    ld l, [hl]
    ld h, e
    add a
    ld h, e
    and c
    ld h, e
    rst $00
    ld h, l
    call c, $f665
    ld h, h
    inc c
    ld h, l
    xor b
    ld h, h
    sub c
    ld h, l
    xor b
    ld h, h
    or b
    ld h, l
    cp l
    ld h, l
    inc d
    ld l, b
    inc a
    ld l, b
    ld h, d
    ld l, b
    ld l, a
    ld l, b
    xor b
    ld h, h
    and l
    ld l, b
    xor e
    ld l, b
    or l
    ld h, e
    add $63
    xor a
    ld h, h
    ld d, $64
    inc hl
    ld h, h
    ld c, e
    ld h, h
    xor a
    ld h, h
    ld l, d
    ld h, h
    ld d, d
    ld h, [hl]
    ld l, e
    ld h, [hl]
    jp hl


    ld h, l
    rst $38
    ld h, l
    jr c, @+$69

    ld d, h
    ld h, a
    or a
    ld h, [hl]
    ret z

    ld h, [hl]
    cp a
    ld l, b
    add $68
    db $d3
    ld l, b
    jp c, $a868

    ld h, h
    adc l
    ld h, h
    call Call_040_6d9a
    call Call_040_6dd3
    call Call_040_6dec
    ld hl, $cd4b
    set 1, [hl]
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    ld a, $cc
    call Call_040_68e8
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call Call_040_68fc
    ret nc

    ld a, [$cd51]
    cp $cc
    jr z, jr_040_637f

    ld a, $f2
    ld [$cd2b], a
    ret


jr_040_637f:
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    ld hl, $cd4b
    set 6, [hl]
    xor a
    ld [$dc5f], a
    ld de, $002b
    call $3b97
    call Call_040_6d9a
    call Call_040_6dd3
    ld a, $01
    ld [$cfa9], a
    call Call_040_6283
    call Call_040_6db7
    call Call_040_6dec
    ld hl, $cd4b
    set 1, [hl]
    ld a, $1d
    ld [$cd49], a
    ret


    call Call_040_628e
    call Call_040_6a3b
    call Call_040_6b12
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call Call_040_6c48
    call Call_040_6c87
    ld a, [$cd4c]
    dec a
    ld [$d109], a
    xor a
    ld [$d10b], a
    ld a, $03
    ld hl, $6039
    rst $08
    ld hl, $dcd7
    inc [hl]
    ld a, [hl+]
    ld c, a
    ld b, $00
    add hl, bc
    ld [hl], $ff
    ld a, [$dcd7]
    ld [$cd4c], a
    call Call_040_6c07
    call Call_040_6d48
    call Call_040_6b32
    call Call_040_6f50
    ld hl, $cd4b
    set 1, [hl]
    ld a, $14
    ld [$cd4e], a
    ld a, $00
    ld [$cd4f], a
    ld a, $00
    ld [$cd4a], a
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    ld a, $aa
    call Call_040_68e8
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call Call_040_6921
    ret nc

    ld a, $05
    ld hl, $4a58
    rst $08
    ld a, $41
    ld hl, $60af
    rst $08
    ld a, $41
    ld hl, $6187
    rst $08
    ld hl, $cd4b
    set 1, [hl]
    ld a, $00
    ld [$cd4a], a
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call Call_040_6f32
    ld hl, $cd4b
    set 1, [hl]
    ld a, $19
    ld [$cd4e], a
    ld a, $00
    ld [$cd4f], a
    ld a, $00
    ld [$cd4a], a
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call Call_040_6d9a
    ld hl, $cd29
    set 3, [hl]
    call Call_040_6e07
    ld hl, $cd4b
    set 1, [hl]
    ld a, $2a
    ld [$cd49], a
    ret


    ld c, $32
    call $0468
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    ld a, [$cd49]
    set 7, a
    ld [$cd49], a
    ret


    ld hl, $cd4e
    dec [hl]
    ret nz

    ld a, $00
    ld [$cd4a], a
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    ld a, $40
    ld hl, $49f3
    rst $08
    ret c

    call $0984
    ld a, [$cd4a]
    ld hl, $64ba
    rst $28
    ret


    ret nz

    ld h, h
    bit 4, h
    sbc $64
    ld hl, $cd4e
    inc [hl]
    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    ld hl, $cd4e
    dec [hl]
    ret nz

    ld a, [$cd4f]
    inc a
    ld [$cd4e], a
    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    ld hl, $cd4e
    dec [hl]
    jr z, jr_040_64e9

    ldh a, [$a7]
    and $03
    ret z

jr_040_64e9:
    ld a, $00
    ld [$cd4a], a
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call $1bee
    ld hl, $cd4b
    set 1, [hl]
    ld a, [$cd4c]
    call Call_040_68e8
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call Call_040_68fc
    ret nc

    ld a, [$cd51]
    cp $0f
    jr z, jr_040_654b

    and a
    jr z, jr_040_6572

    cp $aa
    jr z, jr_040_6572

    cp $07
    jr nc, jr_040_6572

    ld [$cd4d], a
    dec a
    ld [$d003], a
    ld a, [$cd4c]
    dec a
    ld [$d002], a
    call Call_040_6b9c
    call Call_040_6bdc
    jr c, jr_040_656d

    ld a, $3e
    ld hl, $75dd
    rst $08
    jr c, jr_040_6568

    ld hl, $cd4b
    set 1, [hl]
    ld a, $0e
    ld [$cd49], a
    ret


jr_040_654b:
    call Call_040_7021
    ld hl, $cd4b
    set 1, [hl]
    ld a, $00
    ld [$cd4a], a
    ld a, $1e
    ld [$cd4e], a
    ld a, $1e
    ld [$cd4f], a
    ld a, $29
    ld [$cd49], a
    ret


jr_040_6568:
    call Call_040_6ff5
    jr jr_040_6577

jr_040_656d:
    call Call_040_6f85
    jr jr_040_6577

jr_040_6572:
    call Call_040_6fce
    jr jr_040_6577

jr_040_6577:
    ld hl, $cd4b
    set 1, [hl]
    ld a, $00
    ld [$cd4a], a
    ld a, $1e
    ld [$cd4e], a
    ld a, $3c
    ld [$cd4f], a
    ld a, $09
    ld [$cd49], a
    ret


    call Call_040_6ee7
    ld hl, $cd4b
    set 1, [hl]
    ld a, $00
    ld [$cd4a], a
    ld a, $1e
    ld [$cd4e], a
    ld a, $3c
    ld [$cd4f], a
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    ld a, $09
    call Call_040_68e8
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call Call_040_68fc
    ret nc

    ld a, $04
    ld [$cd49], a
    ret


    call Call_040_6f6d
    ld hl, $cd4b
    set 1, [hl]
    ld a, $0f
    call Call_040_68e8
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call Call_040_68fc
    ret nc

    ld a, [$cd49]
    set 7, a
    ld [$cd49], a
    ret


    nop
    ld hl, $cd4b
    set 6, [hl]
    call Call_040_6b4e
    ld hl, $cd4b
    set 1, [hl]
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    ld hl, $cd4b
    set 2, [hl]
    ld a, $40
    ld hl, $49f3
    rst $08
    ret c

    ld a, $09
    ld hl, $41ba
    rst $08
    ld a, [$cfa8]
    and c
    ret z

    bit 0, c
    jr nz, jr_040_6623

    bit 6, c
    jr nz, jr_040_662e

    bit 7, c
    jr nz, jr_040_6646

    ret


jr_040_6623:
    ld hl, $cd4b
    set 3, [hl]
    ld a, $27
    ld [$cd49], a
    ret


jr_040_662e:
    ld a, [$cfa9]
    ld b, a
    ld a, [$d280]
    cp b
    ret nz

    call $1bf7
    ld a, [$dcd7]
    ld [$cfa9], a
    ld a, $1d
    ld [$cd49], a
    ret


jr_040_6646:
    ld a, [$cfa9]
    cp $01
    ret nz

    ld a, $23
    ld [$cd49], a
    ret


    nop
    ld hl, $cd4b
    set 6, [hl]
    nop
    call Call_040_6b7b
    nop
    ld hl, $cd4b
    set 1, [hl]
    nop
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    ld hl, $cd4b
    set 2, [hl]
    ld a, $40
    ld hl, $49f3
    rst $08
    ret c

    ld a, $09
    ld hl, $41ba
    rst $08
    ld a, [$cfa8]
    and c
    ret z

    bit 0, c
    jr nz, jr_040_668f

    bit 7, c
    jr nz, jr_040_669a

    bit 6, c
    jr nz, jr_040_66a8

    ret


jr_040_668f:
    ld hl, $cd4b
    set 3, [hl]
    ld a, $21
    ld [$cd49], a
    ret


jr_040_669a:
    ld a, [$cfa9]
    dec a
    ret nz

    call $1bf7
    ld a, $1f
    ld [$cd49], a
    ret


jr_040_66a8:
    ld a, [$cfa9]
    ld b, a
    ld a, [$dcd7]
    cp b
    ret nz

    ld a, $23
    ld [$cd49], a
    ret


    ld hl, $cd4b
    set 6, [hl]
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ld a, $00
    ld [$cd4a], a
    call $0984
    ld a, $40
    ld hl, $49f3
    rst $08
    ret c

    ld a, [$cd4a]
    ld hl, $66da
    rst $28
    ret


    sbc $66
    di
    ld h, [hl]
    call $1bf7
    ld hl, $c5fd
    ld [hl], $ed
    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    ld hl, $cd4b
    set 1, [hl]
    ret


    ldh a, [$a7]
    bit 0, a
    jr nz, jr_040_6723

    bit 6, a
    jr nz, jr_040_6712

    bit 7, a
    jr nz, jr_040_6702

    ret


jr_040_6702:
    ld hl, $c5fd
    ld [hl], $7f
    ld a, $01
    ld [$cfa9], a
    ld a, $1d
    ld [$cd49], a
    ret


jr_040_6712:
    ld hl, $c5fd
    ld [hl], $7f
    ld a, [$d280]
    ld [$cfa9], a
    ld a, $1f
    ld [$cd49], a
    ret


jr_040_6723:
    ld hl, $c5fd
    ld [hl], $ec
    ld hl, $cd4b
    set 3, [hl]
    ld hl, $cd4b
    set 2, [hl]
    ld a, $05
    ld [$cd49], a
    ret


    ld hl, $cd4b
    set 6, [hl]
    call $1bee
    call Call_040_67eb
    ld hl, $cd4b
    set 1, [hl]
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ld a, $00
    ld [$cd4a], a
    call $0984
    ld a, $40
    ld hl, $49f3
    rst $08
    ret c

    ld a, [$cd4a]
    ld hl, $6766
    rst $28
    ret


    ld [hl], b
    ld h, a
    ld [hl], l
    ld h, a
    adc h
    ld h, a
    and b
    ld h, a
    or a
    ld h, a

jr_040_6770:
    ld a, $01
    ld [$cd4a], a
    ld hl, $c5e1
    ld [hl], $ed
    ld hl, $c5eb
    ld [hl], $7f
    ld hl, $cd4b
    set 2, [hl]
    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    ret


    ldh a, [$a7]
    bit 0, a
    jr nz, jr_040_67c6

    bit 1, a
    jr nz, jr_040_67e2

    bit 4, a
    jr nz, jr_040_679b

    ret


jr_040_679b:
    ld a, $03
    ld [$cd4a], a
    ld hl, $c5e1
    ld [hl], $7f
    ld hl, $c5eb
    ld [hl], $ed
    ld hl, $cd4b
    set 2, [hl]
    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    ret


    ldh a, [$a7]
    bit 0, a
    jr nz, jr_040_67d1

    bit 1, a
    jr nz, jr_040_67e2

    bit 5, a
    jr nz, jr_040_6770

    ret


jr_040_67c6:
    ld hl, $cd4b
    set 3, [hl]
    ld a, $25
    ld [$cd49], a
    ret


jr_040_67d1:
    ld hl, $cd4b
    set 3, [hl]
    ld a, [$cfa9]
    ld [$cd4c], a
    ld a, $07
    ld [$cd49], a
    ret


jr_040_67e2:
    call Call_040_6db7
    ld a, $1d
    ld [$cd49], a
    ret


Call_040_67eb:
    ld hl, $c5b8
    ld b, $02
    ld c, $12
    ld d, h
    ld e, l
    ld a, $5b
    ld hl, $561d
    rst $08
    ld de, $6804
    ld hl, $c5e2
    call $1078
    ret


    sub d
    sub e
    add b
    sub e
    sub d
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sub e
    sub c
    add b
    add e
    add h
    ld d, b
    ld a, [$cfa9]
    ld [$cd52], a
    ld a, [$cd4c]
    dec a
    ld [$d002], a
    ld a, [$cd4d]
    dec a
    ld [$d003], a
    call Call_040_6ea8
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ld a, $00
    ld [$cd4a], a
    ld hl, $cd4b
    set 1, [hl]
    ld hl, $cd4b
    set 2, [hl]
    call $69c3
    ret z

    jr c, jr_040_6852

    ld a, $10
    ld [$cd49], a
    ld hl, $cd4b
    set 1, [hl]
    ret


jr_040_6852:
    ld a, $14
    ld [$cd49], a
    ld hl, $cd4b
    set 3, [hl]
    ld hl, $cd4b
    set 1, [hl]
    ret


    ld a, $08
    call Call_040_68e8
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    call Call_040_68fc
    ret nc

    ld a, [$cd52]
    ld [$cfa9], a
    ld a, [$cd51]
    cp $08
    jr nz, jr_040_6886

    ld a, $15
    ld [$cd49], a
    ret


jr_040_6886:
    call Call_040_6ee7
    ld hl, $cd4b
    set 1, [hl]
    ld a, $1e
    ld [$cd4e], a
    ld a, $3c
    ld [$cd4f], a
    ld a, $00
    ld [$cd4a], a
    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ret


    ld a, $04
    ld [$cd49], a
    ret


    ld a, [$cd52]
    ld [$cfa9], a
    call Call_040_6f15
    ld hl, $cd4b
    set 1, [hl]
    ld a, $0c
    ld [$cd49], a
    ret


    ld a, [$cd49]
    inc a
    ld [$cd49], a
    xor a
    ld [$cf5f], a
    call Call_040_6bac
    ld a, $1d
    ld [$cd49], a
    ret


    ld a, [$cd49]
    inc a
    ld [$cd49], a
    ld a, $01
    ld [$cf5f], a
    call Call_040_6bac
    ld a, $1f
    ld [$cd49], a
    ret


Call_040_68e8:
    ld hl, $cd4b
    res 6, [hl]
    ld [$cd50], a
    ld a, $40
    ld hl, $4641
    rst $08
    ld a, $00
    ld [$cd4a], a
    ret


Call_040_68fc:
    call $0984
    ld a, $40
    ld hl, $49f3
    rst $08
    jr nc, jr_040_6909

    and a
    ret


jr_040_6909:
    ld a, [$cd4a]
    ld hl, $6917
    rst $28
    ret nc

    ld a, $00
    ld [$cd4a], a
    ret


    inc sp
    ld l, c
    ld c, a
    ld l, c
    ld e, l
    ld l, c
    ld l, [hl]
    ld l, c
    sub [hl]
    ld l, c

Call_040_6921:
    ld a, [$cd4a]
    ld hl, $692f
    rst $28
    ret nc

    ld a, $00
    ld [$cd4a], a
    ret


    ld e, l
    ld l, c
    add h
    ld l, c
    ld hl, $69bb
    call $1d35
    call Call_040_6e07
    ld a, $32
    ld [$cfb2], a
    ld hl, $cd4b
    set 1, [hl]
    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    and a
    ret


    ld a, [$cfb2]
    and a
    ret nz

    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    and a
    ret


    call Call_040_699e
    ld a, $00
    ld [$cd27], a
    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    and a
    ret


    ld a, $40
    ld hl, $4382
    rst $08
    and a
    ld a, [$cd27]
    bit 7, a
    ret z

    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    and a
    ret


    ld a, $40
    ld hl, $4382
    rst $08
    and a
    ld a, [$cd27]
    bit 7, a
    ret z

    call Call_040_69af
    scf
    ret


    call Call_040_69af
    call $1c07
    scf
    ret


Call_040_699e:
    ld a, $01
    ld [$ccb4], a
    ld a, [$cd50]
    ld [$ccb5], a
    ld a, $aa
    ld [$cd51], a
    ret


Call_040_69af:
    ld hl, $cd4b
    res 7, [hl]
    ld a, [$cc61]
    ld [$cd51], a
    ret


    ld b, b
    ld a, [bc]
    inc bc
    inc c
    rrca
    nop
    nop
    ld bc, $4afa
    call $cb21
    ld l, c
    rst $28
    ret


    rst $08
    ld l, c
    cp $69
    call $1d6e
    ld hl, $c536
    ld b, $03
    ld c, $08
    ld d, h
    ld e, l
    ld a, $5b
    ld hl, $561d
    rst $08
    ld de, $6a26
    ld hl, $c54c
    call $1078
    ld hl, $cd4b
    set 1, [hl]
    ld de, $6a33
    call $1bb1
    ld a, [$cd4a]
    inc a
    ld [$cd4a], a
    xor a
    ret


    ld a, $40
    ld hl, $49f3
    rst $08
    ret c

    ld a, $09
    ld hl, $41ba
    rst $08
    ld a, c
    ld hl, $cfa8
    and [hl]
    ret z

    push af
    call $1c07
    pop af
    ld a, [$cfa9]
    cp $01
    jr nz, jr_040_6a21

    ld a, $01
    and a
    ret


jr_040_6a21:
    ld a, $01
    and a
    scf
    ret


    sub e
    sub c
    add b
    add e
    add h
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld [$020b], sp
    ld bc, $0080
    jr nz, @+$03

Call_040_6a3b:
    ld a, [$cd30]
    ld [$c74e], a
    ld hl, $d47d
    ld de, $c6e7
    ld bc, $000b
    call $3026
    ld a, [$cd4c]
    dec a
    ld c, a
    ld b, $00
    ld hl, $dcd8
    add hl, bc
    ld a, [hl]
    ld [$c6d0], a
    ld a, [$cd4c]
    dec a
    ld hl, $ddff
    call $30f4
    ld de, $c6f2
    ld bc, $000b
    call $3026
    ld a, [$cd4c]
    dec a
    ld hl, $dce5
    call $3927
    ld a, [hl+]
    ld [$c6ff], a
    ld a, [hl]
    ld [$c700], a
    ld a, [$cd4c]
    dec a
    ld hl, $dcf4
    call $3927
    ld a, [hl+]
    ld [$c6fd], a
    ld a, [hl]
    ld [$c6fe], a
    ld a, [$cd4c]
    dec a
    ld hl, $dcdf
    call $3927
    ld b, h
    ld c, l
    ld a, $13
    ld hl, $7301
    rst $08
    ld a, c
    ld [$c701], a
    ld hl, $d26b
    ld de, $c719
    ld bc, $000b
    call $3026
    ld a, [$cd4d]
    dec a
    ld c, a
    ld b, $00
    ld hl, $d281
    add hl, bc
    ld a, [hl]
    ld [$c702], a
    ld a, [$cd4d]
    dec a
    ld hl, $d3a8
    call $30f4
    ld de, $c724
    ld bc, $000b
    call $3026
    ld a, [$cd4d]
    dec a
    ld hl, $d28e
    call $3927
    ld a, [hl+]
    ld [$c731], a
    ld a, [hl]
    ld [$c732], a
    ld a, [$cd4d]
    dec a
    ld hl, $d29d
    call $3927
    ld a, [hl+]
    ld [$c72f], a
    ld a, [hl]
    ld [$c730], a
    ld a, [$cd4d]
    dec a
    ld hl, $d288
    call $3927
    ld b, h
    ld c, l
    ld a, $13
    ld hl, $7301
    rst $08
    ld a, c
    ld [$c733], a
    ret


Call_040_6b12:
    ld c, $64
    call $0468
    call Call_040_6d9a
    call $0e58
    ld a, [$cd2f]
    and a
    jr nz, jr_040_6b2b

    ld a, $42
    ld hl, $4026
    rst $08
    jr jr_040_6b31

jr_040_6b2b:
    ld a, $42
    ld hl, $402a
    rst $08

jr_040_6b31:
    ret


Call_040_6b32:
    ld a, [$cd4c]
    dec a
    ld [$d109], a
    ld a, $01
    ld [$d1e9], a
    ld a, $10
    ld hl, $61d8
    rst $08
    call Call_040_6d9a
    call Call_040_6dd3
    call Call_040_6dec
    ret


Call_040_6b4e:
    ld a, $01
    ld [$cf5f], a
    ld a, [$cfa9]
    push af
    ld de, $6b73
    call $1bb1
    pop af
    ld [$cfa9], a
    ld a, [$d280]
    ld [$cfa3], a
    ret


    xor a
    ld hl, $cf71
    ld bc, $0010
    call $3041
    ret


    add hl, bc
    ld b, $ff
    ld bc, $00a0
    db $10
    pop bc

Call_040_6b7b:
    xor a
    ld [$cf5f], a
    ld a, [$cfa9]
    push af
    ld de, $6b94
    call $1bb1
    pop af
    ld [$cfa9], a
    ld a, [$dcd7]
    ld [$cfa3], a
    ret


    ld bc, $ff06
    ld bc, $00a0
    db $10
    pop bc

Call_040_6b9c:
    ld a, [$cd4d]
    dec a
    ld hl, $c55a
    ld bc, $0014
    call $30fe
    ld [hl], $ec
    ret


Call_040_6bac:
    ld a, [$cfa9]
    dec a
    ld [$d109], a
    call $3c9d
    call $300b
    ld a, $13
    ld hl, $5c8f
    rst $08
    ld a, [$d109]
    inc a
    ld [$cfa9], a
    call Call_040_6d9a
    call $3317
    call $045a
    call $3c97
    call Call_040_6dd3
    call Call_040_6dec
    call Call_040_6db7
    ret


Call_040_6bdc:
    ld a, [$cd4d]
    dec a
    ld hl, $d288
    call $3927
    push hl
    ld a, [$cd4d]
    ld c, a
    ld b, $00
    ld hl, $d280
    add hl, bc
    ld a, [hl]
    pop hl
    cp $fd
    jr z, jr_040_6bfa

    cp [hl]
    jr nz, jr_040_6c05

jr_040_6bfa:
    ld bc, $001f
    add hl, bc
    ld a, [hl]
    cp $65
    jr nc, jr_040_6c05

    and a
    ret


jr_040_6c05:
    scf
    ret


Call_040_6c07:
    call Call_040_6c14
    call Call_040_6c3b
    call Call_040_6c21
    call Call_040_6c2e
    ret


Call_040_6c14:
    ld hl, $dcd8
    ld de, $d281
    ld bc, $0001
    call Call_040_6c71
    ret


Call_040_6c21:
    ld hl, $de41
    ld de, $d3ea
    ld bc, $000b
    call Call_040_6c71
    ret


Call_040_6c2e:
    ld hl, $ddff
    ld de, $d3a8
    ld bc, $000b
    call Call_040_6c71
    ret


Call_040_6c3b:
    ld hl, $dcdf
    ld de, $d288
    ld bc, $0030
    call Call_040_6c71
    ret


Call_040_6c48:
    ld a, $40
    ld hl, $565a
    rst $08
    ld a, $00
    call $2fcb
    ld hl, $a600
    ld de, $c608
    ld bc, $002f
    call Call_040_6c71
    call $2fe1
    ld hl, $c608
    ld de, $da00
    ld bc, $01e0
    ld a, $05
    call $306b
    ret


Call_040_6c71:
    ld a, [$cd4c]
    dec a
    call $30fe
    push hl
    ld h, d
    ld l, e
    ld a, [$cd4d]
    dec a
    call $30fe
    pop de
    call $3034
    ret


Call_040_6c87:
    ld a, [$cf63]
    push af
    ld a, [$cf64]
    push af
    ld a, [$cd4c]
    ld [$cf63], a
    ld a, [$dcd7]
    ld [$cf64], a
    ld a, $00
    ld hl, $a600
    ld de, $c608
    ld bc, $011a
    call Call_040_6d3e
    call Call_040_6cee
    ld a, $00
    ld hl, $c608
    ld de, $a600
    ld bc, $011a
    call Call_040_6d3e
    ld a, [$cd4d]
    ld [$cf63], a
    ld a, [$d280]
    ld [$cf64], a
    ld a, $05
    ld hl, $da00
    ld de, $c608
    ld bc, $011a
    call $306b
    call Call_040_6cee
    ld a, $05
    ld hl, $c608
    ld de, $da00
    ld bc, $011a
    call $306b
    pop af
    ld [$cf64], a
    pop af
    ld [$cf63], a
    ret


Call_040_6cee:
    ld a, [$cf63]
    dec a
    call Call_040_6d34
    ld de, $d002
    ld bc, $002f
    call $3026
    ld a, [$cf63]
    ld c, a
    ld a, $06
    sub c
    ret z

    ld bc, $002f
    ld hl, $0000
    call $30fe
    push hl
    ld a, [$cf63]
    dec a
    call Call_040_6d34
    ld d, h
    ld e, l
    ld hl, $002f
    add hl, de
    pop bc
    call $3026
    ld a, [$cf64]
    dec a
    call Call_040_6d34
    ld d, h
    ld e, l
    ld hl, $d002
    ld bc, $002f
    call $3026
    ret


Call_040_6d34:
    ld hl, $c608
    ld bc, $002f
    call $30fe
    ret


Call_040_6d3e:
    call $2fcb
    call $3026
    call $2fe1
    ret


Call_040_6d48:
    ld a, [$cd4c]
    ld e, a
    ld d, $00
    ld hl, $dcd7
    add hl, de
    ld a, [hl]
    ld [$d265], a
    cp $fd
    jr z, jr_040_6d6d

    dec a
    call $3380
    ld a, [$cd4c]
    dec a
    ld bc, $0030
    ld hl, $dcfa
    call $30fe
    ld [hl], $46

jr_040_6d6d:
    ld a, [$d265]
    cp $c9
    jr nz, jr_040_6d98

    ld a, [$cd4c]
    dec a
    ld bc, $0030
    ld hl, $dcf4
    call $30fe
    ld a, $2d
    call $2d83
    ld a, $3e
    ld hl, $7a18
    rst $08
    ld a, [$def4]
    and a
    jr nz, jr_040_6d98

    ld a, [$d234]
    ld [$def4], a

jr_040_6d98:
    and a
    ret


Call_040_6d9a:
    ld a, $7f
    ld hl, $c4a0
    ld bc, $0168
    call $3041
    ld a, $07
    ld hl, $cdd9
    ld bc, $0168
    call $3041
    ld a, $41
    ld hl, $4000
    rst $08
    ret


Call_040_6db7:
    call Call_040_6e4f
    call Call_040_6e3e
    ld hl, $cd4b
    set 1, [hl]
    ret


Call_040_6dc3:
    ld hl, $c590
    ld b, $04
    ld c, $12
    ld d, h
    ld e, l
    ld a, $5b
    ld hl, $561d
    rst $08
    ret


Call_040_6dd3:
    call $0568
    ld de, $72a2
    ld hl, $8000
    ld bc, $4004
    call $0f82
    ld a, $5b
    ld hl, $5421
    rst $08
    call $058a
    ret


Call_040_6dec:
    ld hl, $72e2
    ld de, $d040
    ld bc, $0020
    ld a, $05
    call $306b
    ld a, $12
    ld hl, $5742
    rst $08
    call $32f9
    call $045a
    ret


Call_040_6e07:
    ld hl, $c56b
    ld b, $01
    ld c, $0b
    ld a, [$d22d]
    and a
    jr z, jr_040_6e19

    call $0fe8
    jr jr_040_6e28

jr_040_6e19:
    ld hl, $c56b
    ld b, $01
    ld c, $0b
    ld d, h
    ld e, l
    ld a, $5b
    ld hl, $561d
    rst $08

jr_040_6e28:
    ld de, $6e32
    ld hl, $c580
    call $1078
    ret


    sub [hl]
    and b
    xor b
    or e
    xor b
    xor l
    and [hl]
    add sp, -$18
    add sp, -$19
    ld d, b

Call_040_6e3e:
    ld de, $6e48
    ld hl, $c5fe
    call $1078
    ret


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_040_6e4f:
    ld a, $5b
    ld hl, $542e
    rst $08
    ld a, $12
    ld hl, $5797
    rst $08
    ld de, $d47d
    ld hl, $c4a4
    call $1078
    ld a, $14
    ld [bc], a
    ld de, $d26b
    ld hl, $c544
    call $1078
    ld a, $14
    ld [bc], a
    ld hl, $c4bb
    ld de, $dcd8
    call Call_040_6e86
    ld hl, $c55b
    ld de, $d281
    call Call_040_6e86
    ret


Call_040_6e86:
    ld c, $00

jr_040_6e88:
    ld a, [de]
    cp $ff
    ret z

    ld [$d265], a
    push bc
    push hl
    push de
    push hl
    ld a, c
    ldh [$b3], a
    call $343b
    pop hl
    call $1078
    pop de
    inc de
    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    inc c
    jr jr_040_6e88

Call_040_6ea8:
    call Call_040_6dc3
    ld a, [$cd4c]
    dec a
    ld c, a
    ld b, $00
    ld hl, $dcd8
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    call $343b
    ld hl, $d073
    ld de, $d086
    ld bc, $000b
    call $3026
    ld a, [$cd4d]
    dec a
    ld c, a
    ld b, $00
    ld hl, $d281
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    call $343b
    ld hl, $6ee2
    call $1065
    ret


    ld d, $86
    ld d, d
    ld l, a
    ld d, b

Call_040_6ee7:
    call Call_040_6dc3
    ld de, $6ef4
    ld hl, $c5b9
    call $1078
    ret


    sub e
    xor [hl]
    xor [hl]
    ld a, a
    and c
    and b
    and e
    rst $20
    ld a, a
    sub e
    and a
    and h
    ld a, a
    or e
    or c
    and b
    and e
    and h
    ld c, [hl]
    or [hl]
    and b
    or d
    ld a, a
    and d
    and b
    xor l
    and d
    and h
    xor e
    and h
    and e
    rst $20
    ld d, b

Call_040_6f15:
    call Call_040_6dc3
    ld de, $6f22
    ld hl, $c5b9
    call $1078
    ret


    cp d
    or e
    or [hl]
    sbc $dd
    ld a, a
    add [hl]
    xor l
    xor e
    adc l
    and [hl]
    cp h
    rst $08
    cp h
    ret nz

    ld d, b

Call_040_6f32:
    call Call_040_6dc3
    ld de, $6f3f
    ld hl, $c5b9
    call $1078
    ret


    sub e
    or c
    and b
    and e
    and h
    ld a, a
    and d
    xor [hl]
    xor h
    xor a
    xor e
    and h
    or e
    and h
    and e
    rst $20
    ld d, b

Call_040_6f50:
    call Call_040_6dc3
    ld de, $6f5d
    ld hl, $c5b9
    call $1078
    ret


    cp h
    ld [c], a
    or e
    cp h
    ld [c], a
    or e
    ld a, a
    or l
    rst $08
    pop bc
    ld a, a
    cp b
    jr nc, @-$43

    or d
    ld d, b

Call_040_6f6d:
    call Call_040_6dc3
    ld de, $6f7a
    ld hl, $c5b9
    call $1078
    ret


    cp h
    pop hl
    or e
    ret c

    ld [c], a
    or e
    ld a, a
    cp h
    rst $08
    cp l
    ld d, b

Call_040_6f85:
    ld a, [$d003]
    ld c, a
    ld b, $00
    ld hl, $d281
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    call $343b
    call Call_040_6dc3
    ld de, $6fb2
    ld hl, $c5b9
    call $1078
    ld de, $d073
    ld hl, $c5c5
    call $1078
    ld de, $6fcc
    call $1078
    ret


    or c
    or d
    jp $dc26


    ld c, d
    or h
    rst $10
    sbc $30
    ld a, a
    ld c, [hl]
    or d
    inc l
    ld [c], a
    or e
    ld c, d
    or c
    reti


    sub $b3
    inc sp
    cp l
    rst $20
    rst $20
    ld d, b
    add $50

Call_040_6fce:
    call Call_040_6dc3
    ld de, $6fdb
    ld hl, $c5b9
    call $1078
    ret


    or c
    or d
    jp $dc26


    dec h
    cp [hl]
    sbc $c0
    cp b
    add $4e
    or d
    inc l
    ld [c], a
    or e
    ld c, d
    or c
    reti


    sub $b3
    inc sp
    cp l
    rst $20
    rst $20
    ld d, a

Call_040_6ff5:
    call Call_040_6dc3
    ld de, $7002
    ld hl, $c5b9
    call $1078
    ret


    cp a
    ret


    ld d, h
    db $dd
    ld a, a
    cp d
    or e
    or [hl]
    sbc $bd
    reti


    call nz, $be4e
    sbc $c4
    or e
    ld a, a
    inc sp
    or a
    push bc
    cp b
    ld a, a
    push bc
    rst $18
    pop bc
    ldh [$b3], a
    sub $e7
    ld d, b

Call_040_7021:
    call Call_040_6dc3
    ld de, $702e
    ld hl, $c5b9
    call $1078
    ret


    or c
    or d
    jp Jump_040_7f26


    pop bc
    pop hl
    or e
    cp h
    db $dd
    ld a, a
    or h
    rst $10
    sbc $30
    ret


    inc sp
    ld c, [hl]
    cp d
    or e
    or [hl]
    sbc $dd
    ld a, a
    pop bc
    pop hl
    or e
    cp h
    ld a, a
    cp h
    rst $08
    cp l
    ld d, b

Call_040_704f:
    xor a
    ld [$cf41], a
    ld [$cf42], a
    ld [$cf44], a
    ld [$cf45], a
    ret


Call_040_705d:
    nop
    ld a, [$cf41]
    and a
    ret z

    call Call_040_707f
    ret c

    call Call_040_7094
    call Call_040_706e
    ret


Call_040_706e:
    ld a, $01
    ldh [$d8], a
    call $300b
    ld de, $c400
    call Call_040_70cd
    xor a
    ldh [$d8], a
    ret


Call_040_707f:
    ld c, $02
    ld hl, $cd4b
    bit 7, [hl]
    jr z, jr_040_708a

    ld c, $01

jr_040_708a:
    ld hl, $cf45
    inc [hl]
    ld a, [hl]
    cp c
    ret c

    xor a
    ld [hl], a
    ret


Call_040_7094:
    ld hl, $cd4b
    bit 7, [hl]
    jr nz, jr_040_70c0

    ld a, [$cf42]
    bit 7, a
    jr nz, jr_040_70b2

    ld a, [$cf44]
    inc a
    ld [$cf44], a
    cp $2c
    ret nz

    ld hl, $cf42
    set 7, [hl]
    ret


jr_040_70b2:
    ld a, [$cf44]
    dec a
    ld [$cf44], a
    ret nz

    ld hl, $cf42
    res 7, [hl]
    ret


jr_040_70c0:
    ld hl, $cf44
    ld a, [hl]
    and a
    jr z, jr_040_70ca

    dec a
    ld [hl], a
    ret nz

jr_040_70ca:
    ld [hl], $2c
    ret


Call_040_70cd:
    ld a, [$cf44]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $7112
    add hl, bc
    ld b, $30
    ld c, $08

jr_040_70de:
    push hl
    ld hl, $cd4b
    bit 7, [hl]
    pop hl
    ld a, $00
    jr z, jr_040_70eb

    ld a, $05

jr_040_70eb:
    add [hl]
    inc hl
    push hl
    add a
    add a
    add $7a
    ld l, a
    ld a, $72
    adc $00
    ld h, a
    ld a, b
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, $0a
    add [hl]
    inc hl
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop hl
    ld a, b
    add $08
    ld b, a
    dec c
    jr nz, jr_040_70de

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    inc b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0000
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0400
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc bc
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    nop
    nop
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld b, b
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld b, b
    ld b, b
    nop
    nop
    rst $38
    rra
    db $f4
    dec de
    adc l
    ld b, d
    nop
    nop
    ld h, a
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    inc de
    sbc c
    ld bc, $10ff
    nop
    nop
    add hl, de
    nop
    nop
    nop
    nop
    nop
    call Call_040_7309
    call Call_040_7362
    ret


Call_040_7309:
    xor a
    ldh [$d4], a
    ld hl, $d1ea
    ld bc, $000a
    xor a
    call $3041
    ld a, $04
    call $2fcb
    ld a, [$dc41]
    ld [$a60c], a
    ld [$d1ea], a
    call $2fe1
    call Call_040_75c6
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld [$d1ef], a
    ld a, [hl+]
    ld [$d1ec], a
    ld a, [hl+]
    ld [$d1ed], a
    ld h, d
    ld l, e
    call $3eea
    ld hl, $d1ec
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    ld [$d1ee], a
    call Call_040_74be
    call $1ad2
    ld a, $41
    ld hl, $4000
    rst $08
    ld a, $01
    ld [$d1f0], a
    call Call_040_739a
    ret


Call_040_7362:
jr_040_7362:
    ld a, [$d1f0]
    ld [$d1f1], a
    call Call_040_73af
    call Call_040_739a
    call Call_040_742c
    ld a, $41
    ld hl, $402d
    rst $08
    ld a, [$d1eb]
    bit 7, a
    jr z, jr_040_7362

    ld hl, $d1eb
    bit 6, [hl]
    jr z, jr_040_7398

    ld a, $04
    call $2fcb
    ld a, [$d1ea]
    ld [$a60c], a
    ld [$dc41], a
    call $2fe1
    xor a
    ret


jr_040_7398:
    scf
    ret


Call_040_739a:
    ld a, [$d1f0]
    ld [$d1f2], a
    ld c, a
    ld b, $00
    ld hl, $d1ec
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, [hl]
    ld [$d1f3], a
    ret


Call_040_73af:
    call $0984
    ldh a, [$a7]
    bit 5, a
    jr nz, jr_040_7412

    bit 4, a
    jr nz, jr_040_7412

    bit 1, a
    jr nz, jr_040_73f1

    bit 0, a
    jr nz, jr_040_73fa

    bit 6, a
    jr nz, jr_040_73cd

    bit 7, a
    jr nz, jr_040_73de

    ret


jr_040_73cd:
    ld a, [$d1f0]
    dec a
    ld [$d1f0], a
    cp $01
    ret nc

    ld a, [$d1ee]
    ld [$d1f0], a
    ret


jr_040_73de:
    ld a, [$d1f0]
    inc a
    ld [$d1f0], a
    ld c, a
    ld a, [$d1ee]
    cp c
    ret nc

    ld a, $01
    ld [$d1f0], a
    ret


jr_040_73f1:
    call $2009
    ld hl, $d1eb
    set 7, [hl]
    ret


jr_040_73fa:
    ld a, [$d1f3]
    cp $03
    jr nz, jr_040_7412

    ld de, $0022
    call $3c23
    ld hl, $d1eb
    set 7, [hl]
    ld hl, $d1eb
    set 6, [hl]
    ret


jr_040_7412:
    ld a, [$d1f3]
    cp $03
    ret z

    ld de, $0011
    call $3c23
    ld bc, $0008
    call Call_040_750f
    ld a, [$d1ea]
    xor e
    ld [$d1ea], a
    ret


Call_040_742c:
    ld a, [$d1f0]
    ld [$d1f2], a
    call Call_040_7490
    call Call_040_743c
    call Call_040_74a7
    ret


Call_040_743c:
    ld a, [$d1f3]
    cp $02
    jr nz, jr_040_7452

    ld bc, $0001
    call Call_040_74f7
    ld c, $12
    ld b, $01
    call Call_040_74e0
    jr jr_040_745f

jr_040_7452:
    ld bc, $ffed
    call Call_040_74f7
    ld c, $12
    ld b, $02
    call Call_040_74e0

jr_040_745f:
    ld bc, $0000
    call Call_040_750f
    ld bc, $0001
    call Call_040_7487
    ld bc, $0008
    call Call_040_750f
    ld a, [$d1ea]
    and e
    ld bc, $0002
    jr z, jr_040_747d

    ld bc, $0004

jr_040_747d:
    call Call_040_750f
    ld bc, $000b
    call Call_040_7487
    ret


Call_040_7487:
    push de
    call Call_040_74f7
    pop de
    call $1078
    ret


Call_040_7490:
    ld hl, $c5cc
    ld c, $14
    ld b, $03
    call Call_040_74e0
    ld bc, $0006
    call Call_040_750f
    ld hl, $c5e1
    call $1078
    ret


Call_040_74a7:
    ld a, [$d1f1]
    ld [$d1f2], a
    ld bc, $000a
    call Call_040_74f7
    ld [hl], $7f
    ld bc, $000a
    call Call_040_74f1
    ld [hl], $ed
    ret


Call_040_74be:
    ld a, $01
    ld [$d1f2], a
    ld hl, $d1ec
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]

jr_040_74ca:
    push af
    ld a, [hl+]
    push hl
    ld [$d1f3], a
    call Call_040_743c
    ld hl, $d1f2
    inc [hl]
    pop hl
    pop af
    dec a
    jr nz, jr_040_74ca

    call Call_040_7490
    ret


Call_040_74e0:
    push bc
    push hl
    call $0fb6
    pop hl
    ld bc, $0939
    add hl, bc
    pop bc
    ld a, $06
    call $0fb8
    ret


Call_040_74f1:
    ld a, [$d1f0]
    ld [$d1f2], a

Call_040_74f7:
    ld hl, $c4a0
    add hl, bc
    ld a, [$d1ef]
    ld bc, $0014
    call $30fe
    ld a, [$d1f2]
    dec a
    ld bc, $0028
    call $30fe
    ret


Call_040_750f:
    ld a, [$d1f3]
    push bc
    ld hl, $7522
    ld bc, $0009
    call $30fe
    pop bc
    add hl, bc
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ret


    ld b, [hl]
    ld [hl], l
    sbc b
    ld [hl], l
    and b
    ld [hl], l
    ld e, a
    ld [hl], l
    ld bc, $754f
    xor b
    ld [hl], l
    or c
    ld [hl], l
    ld [hl], c
    ld [hl], l
    ld [bc], a
    ld d, a
    ld [hl], l
    cp d
    ld [hl], l
    cp l
    ld [hl], l
    add l
    ld [hl], l
    inc b
    ld b, l
    ld [hl], l
    pop bc
    ld [hl], l
    pop bc
    ld [hl], l
    ld b, l
    ld [hl], l
    ld d, b
    cp [hl]
    sbc $c4
    or e
    ld a, a
    add b
    sub l
    and b
    ld d, b
    inc sp
    sbc $dc
    ld a, [hl-]
    sbc $2a
    or e
    ld d, b
    jp nc, $bcb2

    cp d
    or e
    or [hl]
    sbc $50
    inc sp
    sbc $dc
    db $dd
    ld a, a
    or [hl]
    cp c
    reti


    set 0, h
    ld h, $7f
    or a
    jp nc, $dad7

    reti


    ld d, b
    inc sp
    sbc $dc
    ld a, [hl-]
    sbc $2a
    or e
    ret


    ld a, a
    add $e1
    or e
    ret c

    ld [c], a
    cp b
    ret


    cp h
    or [hl]
    ret nz

    ld d, b
    or c
    ret nz

    rst $10
    cp h
    or d
    jp nc, $bcb2

    ld h, $7f
    or c
    jp c, Jump_040_7f3a

    cp d
    or e
    or [hl]
    sbc $50
    call nz, $bc3a
    jp $d07f


    reti


    ld d, b
    inc l
    rst $18
    cp b
    ret c

    ld a, a
    ret nc

    reti


    ld d, b
    jp nc, $bcb2

    or [hl]
    rst $10
    or h

jr_040_75ae:
    rst $10
    inc a
    ld d, b
    cp l
    or e
    inc l
    inc sp
    ld a, a
    or d
    jp c, Jump_040_50d9

    cp l
    reti


    ld d, b
    cp h
    push bc
    or d
    ld d, b
    cp c
    rst $18
    jp $50b2


Call_040_75c6:
    ld a, $40
    ld hl, $538b
    rst $08
    ld b, $00
    ld hl, $75d7
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    rst $20
    ld [hl], l
    di
    ld [hl], l
    ld [$0876], sp
    db $76
    cp $75
    ld [de], a
    db $76
    ld [de], a
    db $76
    ld [de], a
    db $76
    jr jr_040_75ae

    ld [de], a
    rlca
    rlca
    xor $75
    inc b
    ld [bc], a
    ld bc, $0300
    inc l
    push bc
    ld [de], a
    ld b, $09
    ld a, [$0375]
    ld [bc], a
    ld bc, $5403
    push bc
    ld [de], a
    inc b
    dec bc
    dec b
    db $76
    ld [bc], a
    nop
    inc bc
    ld d, h
    push bc
    ld [de], a
    inc b
    dec bc
    rrca
    db $76
    ld [bc], a
    ld [bc], a
    inc bc
    ld hl, $7640
    call $1d35
    ld a, [$dc40]
    and $0f
    jr z, jr_040_7622

    ld [$cf88], a

jr_040_7622:
    call $1d81
    call $1c17
    jr c, jr_040_763b

    ld a, [$cfa9]
    ld [$c2dd], a
    ld c, a
    ld a, [$dc40]
    and $f0
    or c
    ld [$dc40], a
    ret


jr_040_763b:
    xor a
    ld [$c2dd], a
    ret


    ld b, b
    ld b, $0d
    dec bc
    inc de
    ld c, b
    db $76
    ld bc, $0280
    and c
    add hl, de
    add c
    and [hl]
    ld d, b
    adc b
    db $e3
    dec de
    and [hl]
    ld d, b
    ld a, $41
    ld hl, $632f
    rst $08
    bit 7, c
    jr nz, jr_040_7666

    ld hl, $cd2a
    res 5, [hl]
    ld c, $02
    ret


jr_040_7666:
    ld hl, $cd2a
    set 5, [hl]
    ld c, $01
    ret


    ld a, $41
    ld hl, $632f
    rst $08
    bit 7, c
    jr z, jr_040_769b

    ld hl, $775d
    call $1057
    call $1dcf
    jr c, jr_040_7696

    ld a, $22
    ld hl, $71e1
    rst $08
    jr nc, jr_040_7690

    call $0a36
    jr jr_040_7696

jr_040_7690:
    ld a, $01
    ld [$c2dd], a
    ret


jr_040_7696:
    xor a
    ld [$c2dd], a
    ret


jr_040_769b:
    ld hl, $dc40
    bit 7, [hl]
    set 7, [hl]
    jr nz, jr_040_76b5

    ld hl, $7762
    call $1057
    call $1dcf
    jr c, jr_040_76b5

    call Call_040_76f9
    call $0a36

jr_040_76b5:
    call Call_040_7700
    jr c, jr_040_76f4

    ld hl, $7747
    call $1d35
    call $1d81
    call $1c07
    jr c, jr_040_76f4

    ld a, [$cfa9]
    cp $01
    jr z, jr_040_76d9

    cp $02
    jr z, jr_040_76f4

    cp $03
    jr z, jr_040_76ec

    jr jr_040_76b5

jr_040_76d9:
    ld a, $22
    ld hl, $71e1
    rst $08
    jr nc, jr_040_76e6

    call $0a36
    jr jr_040_76f4

jr_040_76e6:
    ld a, $01
    ld [$c2dd], a
    ret


jr_040_76ec:
    call Call_040_76f9
    call $0a36
    jr jr_040_76b5

jr_040_76f4:
    xor a
    ld [$c2dd], a
    ret


Call_040_76f9:
    ld hl, $7767
    call $1057
    ret


Call_040_7700:
    ld c, $0a
    ld hl, $dc20
    bit 4, [hl]
    jr z, jr_040_770f

    ld a, $40
    ld hl, $48a6
    rst $08

jr_040_770f:
    ld a, c
    ld [$d086], a
    ld a, [$d086]
    cp $05
    jr nc, jr_040_7724

    cp $02
    jr nc, jr_040_772c

    cp $01
    jr nc, jr_040_7734

    jr jr_040_773c

jr_040_7724:
    ld hl, $776c
    call $1057
    and a
    ret


jr_040_772c:
    ld hl, $7771
    call $1057
    and a
    ret


jr_040_7734:
    ld hl, $7776
    call $1057
    and a
    ret


jr_040_773c:
    ld hl, $777b
    call $1057
    call $0a36
    scf
    ret


    ld b, b
    dec b
    dec c
    dec bc
    inc de
    ld c, a
    ld [hl], a
    ld bc, $03c0
    jp z, $50b2

    call nc, $d9d2
    ld d, b
    cp [hl]
    jp nz, $b2d2

    ld d, b
    ld d, $2a
    ld b, d
    ld [hl], c
    ld d, b
    ld d, $75
    ld b, d
    ld [hl], c
    ld d, b
    ld d, $98
    ld b, d
    ld [hl], c
    ld d, b
    ld d, $9c
    ld b, e
    ld [hl], c
    ld d, b
    ld d, $dc
    ld b, e
    ld [hl], c
    ld d, b
    ld d, $19
    ld b, h
    ld [hl], c
    ld d, b
    ld d, $5a
    ld b, h
    ld [hl], c
    ld d, b
    ld a, [$d265]
    push af
    call Call_040_778c
    pop af
    ld [$d265], a
    ret


Call_040_778c:
    ld c, $00
    ld hl, $dc20
    bit 4, [hl]
    jr nz, jr_040_779c

    ld c, $01
    ld hl, $dc20
    set 4, [hl]

jr_040_779c:
    push bc
    ld a, $05
    ld hl, $4ab2
    rst $08
    pop bc
    jr c, jr_040_77b5

    ld a, $01
    ld [$c2dd], a
    ld a, c
    and a
    ret z

    ld a, $40
    ld hl, $46fd
    rst $08
    ret


jr_040_77b5:
    xor a
    ld [$c2dd], a
    ld a, c
    and a
    ret z

    ld hl, $dc20
    res 4, [hl]
    ret


    call Call_040_7823
    jr c, jr_040_77de

    ld a, [$dc5f]
    and a
    jr z, jr_040_77de

    ld hl, $77e6
    call $1057
    call $1dcf
    jr c, jr_040_77de

    ld a, $01
    ld [$c2dd], a
    ret


jr_040_77de:
    xor a
    ld [$dc5f], a
    ld [$c2dd], a
    ret


    ld d, $9c
    ld b, h
    ld [hl], c
    ld d, b
    call Call_040_7823
    jr nc, jr_040_7807

    ld hl, $7819
    call $1057
    call $0a36
    ld hl, $781e
    call $1057
    call $0a36
    xor a
    ld [$c2dd], a
    ret


jr_040_7807:
    ld a, [$dc60]
    and a
    jr nz, jr_040_7813

    ld a, $01
    ld [$c2dd], a
    ret


jr_040_7813:
    ld a, $02
    ld [$c2dd], a
    ret


    ld d, $c0
    ld b, h
    ld [hl], c
    ld d, b
    ld d, $e7
    ld b, h
    ld [hl], c
    ld d, b

Call_040_7823:
    ld a, $41
    ld hl, $632f
    rst $08
    bit 7, c
    jr nz, jr_040_7838

    ld a, $40
    ld hl, $48a6
    rst $08
    ld a, c
    cp $01
    jr c, jr_040_783a

jr_040_7838:
    xor a
    ret


jr_040_783a:
    scf
    ret


    ld a, $01
    ld [$dc60], a
    xor a
    ld hl, $dc5c
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $7876
    call $1057
    call $0a36
    ld a, $25
    ld hl, $7ae3
    rst $08
    ld a, $12
    ld hl, $694e
    rst $08
    jr c, jr_040_7870

    ld hl, $d002
    ld de, $dc5c
    ld bc, $0003
    call $3026
    xor a
    ld [$c2dd], a
    ret


jr_040_7870:
    ld a, $01
    ld [$c2dd], a
    ret


    ld d, $08
    ld b, l
    ld [hl], c
    ld d, b
    ld a, $41
    ld hl, $632f
    rst $08
    bit 7, c
    ret nz

    ld a, $40
    ld hl, $48a6
    rst $08
    ld a, c
    ld [$d086], a
    ld hl, $7898
    call $1057
    call $0a36
    ret


    ld d, $25
    ld b, l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_040_7b80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_040_7f26:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_040_7f3a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_040_7fde:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
