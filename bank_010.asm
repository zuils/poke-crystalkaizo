; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    ldh a, [$d1]
    ld l, a
    ldh a, [$d2]
    ld h, a
    push hl
    ldh a, [$cf]
    push af
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    ld a, [$d0ed]
    push af
    xor a
    ld [$d0ed], a
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    xor a
    ldh [$de], a
    call Call_010_4063
    call $045a

jr_010_4029:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_010_403b

    call Call_010_410b
    call $045a
    jr jr_010_4029

jr_010_403b:
    ld de, $0008
    call $3c23
    call $3c55
    call $300b
    ld a, [$c7d4]
    ld [$d959], a
    pop af
    ldh [$aa], a
    pop af
    ld [$d0ed], a
    pop af
    ld [$cfcc], a
    pop af
    ldh [$cf], a
    pop hl
    ld a, l
    ldh [$d1], a
    ld a, h
    ldh [$d2], a
    ret


Call_010_4063:
    call $31f3
    call $300b
    call $0fc8
    call Call_010_54b7
    ld hl, $c6d0
    ld bc, $0116
    xor a
    call $3041
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    call Call_010_40a2
    ld a, [$d959]
    ld [$c7d4], a
    call Call_010_4bdc
    call Call_010_40b4
    call Call_010_40ed
    ld a, $77
    ld hl, $6247
    rst $08
    call Call_010_5af7
    ret


Call_010_40a2:
    ld a, [$d84c]
    bit 1, a
    jr nz, jr_010_40ae

    xor a
    ld [$c7dc], a
    ret


jr_010_40ae:
    ld a, $01
    ld [$c7dc], a
    ret


Call_010_40b4:
    ld hl, $c6d0
    ld a, [$c2d6]
    and a
    jr z, jr_010_40ec

    cp $fc
    jr nc, jr_010_40ec

    ld b, a
    ld a, [$c7d2]
    cp $08
    jr c, jr_010_40db

    sub $07
    ld c, a

jr_010_40cc:
    ld a, b
    cp [hl]
    jr z, jr_010_40ec

    inc hl
    ld a, [$c7d0]
    inc a
    ld [$c7d0], a
    dec c
    jr nz, jr_010_40cc

jr_010_40db:
    ld c, $07

jr_010_40dd:
    ld a, b
    cp [hl]
    jr z, jr_010_40ec

    inc hl
    ld a, [$c7d1]
    inc a
    ld [$c7d1], a
    dec c
    jr nz, jr_010_40dd

jr_010_40ec:
    ret


Call_010_40ed:
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2caf
    cp $00
    jr nz, jr_010_4107

    ld a, [$dcad]
    ld b, a
    ld a, [$dcae]
    ld c, a
    call $2caf

jr_010_4107:
    ld [$c7e4], a
    ret


Call_010_410b:
    ld a, [$cf63]
    ld hl, $4115
    call Call_010_5432
    jp hl


    inc a
    ld b, c
    xor [hl]
    ld b, c
    rla
    ld b, d
    ld e, b
    ld b, d
    xor d
    ld b, d
    ld b, e
    ld b, h
    ld [hl], c
    ld b, h
    sbc l
    ld b, e
    cp [hl]
    ld b, e
    ld a, [bc]
    ld b, l
    ld h, d
    ld b, l
    cp l
    ld b, l
    rst $18
    ld b, l
    ld [hl], $41

Call_010_4131:
    ld hl, $cf63
    inc [hl]
    ret


    ld hl, $cf63
    set 7, [hl]
    ret


    xor a
    ldh [$d4], a
    call $300b
    xor a
    ld hl, $cdd9
    ld bc, $0168
    call $3041
    ld a, $77
    ld hl, $6171
    rst $08
    ld hl, $c5f4
    ld de, $47f2
    call Call_010_4acd
    ld a, $07
    ld [$c7d3], a
    call Call_010_4b0f
    call Call_010_5aeb
    call Call_010_5af7
    call Call_010_474c
    ld a, $05
    ldh [$cf], a
    ld a, [$c7d4]
    cp $01
    ld a, $4a
    jr z, jr_010_417b

    ld a, $47

jr_010_417b:
    ldh [$d1], a
    xor a
    ldh [$d2], a
    call $31f6
    call Call_010_5af7
    ld a, $ff
    ld [$d108], a
    ld a, $04
    call Call_010_5423
    call Call_010_5148
    ld a, $77
    ld hl, $6171
    rst $08
    ld hl, $c5f4
    ld de, $47f2
    call Call_010_4acd
    ld a, $07
    ld [$c7d3], a
    call Call_010_4b0f
    call Call_010_4131
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_010_4211

    ld a, [hl]
    and $01
    jr nz, jr_010_41d9

    ld a, [hl]
    and $04
    jr nz, jr_010_41eb

    ld a, [hl]
    and $08
    jr nz, jr_010_41fe

    call Call_010_46c5
    ret nc

    call Call_010_5148
    xor a
    ldh [$d4], a
    call Call_010_4b0f
    call Call_010_5ad7
    call Call_010_5af7
    ret


jr_010_41d9:
    call Call_010_4bb1
    call Call_010_4bd0
    ret z

    ld a, $02
    ld [$cf63], a
    ld a, $00
    ld [$cf64], a
    ret


jr_010_41eb:
    call Call_010_5401
    ld a, $07
    ld [$cf63], a
    xor a
    ldh [$cf], a
    ld a, $a7
    ldh [$d1], a
    call $045a
    ret


jr_010_41fe:
    call Call_010_5401
    ld a, $05
    ld [$cf63], a
    xor a
    ldh [$cf], a
    ld a, $a7
    ldh [$d1], a
    call $045a
    ret


jr_010_4211:
    ld a, $0d
    ld [$cf63], a
    ret


    call $3c9d
    xor a
    ld [$c7e5], a
    xor a
    ldh [$d4], a
    call $300b
    call Call_010_5478
    call Call_010_47fd
    call Call_010_534f
    call Call_010_4bb1
    ld [$c2d6], a
    ld a, $11
    ld hl, $424d
    rst $08
    call Call_010_4ba0
    call $31f6
    ld a, $a7
    ldh [$d1], a
    call Call_010_4bb1
    ld [$d108], a
    ld a, $04
    call Call_010_5423
    ld a, [$d108]
    call $37ce
    call Call_010_4131
    ret


    ld de, $42e8
    call Call_010_535a
    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_010_427d

    ld a, [hl]
    and $01
    jr nz, jr_010_4273

    call Call_010_466c
    ret nc

    call Call_010_4131
    ret


jr_010_4273:
    ld a, [$c7d8]
    ld hl, $42f2
    call Call_010_5432
    jp hl


jr_010_427d:
    ld a, [$c2b4]
    and a
    jr z, jr_010_4288

    ld a, $77
    ld [$c2b4], a

jr_010_4288:
    call $3c97
    ld a, [$cf64]
    ld [$cf63], a
    ret


    ld a, [$c7e5]
    xor $01
    ld [$c7e5], a
    call Call_010_4bb1
    ld [$c2d6], a
    ld a, $11
    ld hl, $424d
    rst $08
    call $31f6
    ret


    call Call_010_5401
    xor a
    ld [$c7e5], a
    xor a
    ldh [$d4], a
    call Call_010_47fd
    call Call_010_534f
    call Call_010_5478
    call Call_010_4bb1
    ld [$c2d6], a
    ld a, $11
    ld hl, $424d
    rst $08
    call Call_010_4ba0
    call Call_010_543b
    call $31f6
    call Call_010_4bb1
    ld [$d108], a
    ld a, $04
    call Call_010_5423
    ld a, [$d108]
    call $37ce
    ld hl, $cf63
    dec [hl]
    ret


    jr nc, @+$06

    push af
    push bc
    ld_long a, $ffc5
    push bc
    inc bc
    add $92
    ld b, d
    ld a, [$4042]
    ld b, e
    ld c, a
    ld b, e
    call Call_010_5401
    xor a
    ldh [$cf], a
    call $045a
    ld a, $07
    ldh [$d1], a
    ld a, $90
    ldh [$d2], a
    call Call_010_4bb1
    ld a, [$c7e4]
    ld e, a
    ld a, $32
    call $2d83
    call Call_010_5401
    call $045a
    xor a
    ldh [$d4], a
    ld a, $90
    ldh [$d2], a
    ld a, $05
    ldh [$cf], a
    call $045a
    call Call_010_438d
    call Call_010_543b
    call $31f6
    call Call_010_4bb1
    ld [$d108], a
    ld a, $04
    call Call_010_5423
    ret


    call Call_010_4bb1
    ld a, [$d265]
    call $381e
    ld e, c
    ld d, b
    call $3be3
    ret


    call Call_010_5415
    xor a
    ldh [$cf], a
    ld a, [$cf65]
    push af
    ld a, [$cf64]
    push af
    ld a, [$cf63]
    push af
    ld a, $21
    ld hl, $442c
    rst $08
    pop af
    ld [$cf63], a
    pop af
    ld [$cf64], a
    pop af
    ld [$cf65], a
    call $31f3
    call $0568
    call Call_010_54fb
    call Call_010_438d
    call $058a
    call $31f6
    ld a, $05
    ldh [$cf], a
    call Call_010_5427
    ret


Call_010_438d:
    call Call_010_47fd
    call Call_010_4bb1
    ld a, $11
    ld hl, $424d
    rst $08

Jump_010_4399:
    call Call_010_4ba0
    ret


    xor a
    ldh [$d4], a
    call $300b
    call Call_010_487c
    call Call_010_534f
    ld a, [$c7d4]
    ld [$c7d8], a
    call Call_010_4e5b
    call $31f6
    ld a, $10
    call Call_010_5423
    call Call_010_4131
    ret


    ld a, [$c7dc]
    and a
    jr nz, jr_010_43c9

    ld de, $43f3
    jr jr_010_43cc

jr_010_43c9:
    ld de, $43fb

jr_010_43cc:
    call Call_010_535a
    call c, Call_010_4e5b
    ld hl, $ffa7
    ld a, [hl]
    and $06
    jr nz, jr_010_43ea

    ld a, [hl]
    and $01
    jr nz, jr_010_43e0

    ret


jr_010_43e0:
    ld a, [$c7d8]
    ld hl, $4405
    call Call_010_5432
    jp hl


jr_010_43ea:
    call Call_010_5401
    ld a, $00
    ld [$cf63], a
    ret


    ret nz

    inc bc
    ld a, [c]
    call nz, $c51a
    ld b, d
    push bc
    ret nz

    inc b
    ld a, [c]
    call nz, $c51a
    ld b, d
    push bc
    ld l, d
    push bc
    dec c
    ld b, h
    ld de, $1544
    ld b, h
    ld a, [hl-]
    ld b, h
    ld b, $00
    jr jr_010_4417

    ld b, $01
    jr jr_010_4417

    ld b, $02

jr_010_4417:
    ld a, [$c7d4]
    cp b
    jr z, jr_010_4431

    ld a, b
    ld [$c7d4], a
    call Call_010_4bdc
    call Call_010_4f08
    xor a
    ld [$c7d0], a
    ld [$c7d1], a
    call Call_010_40b4

jr_010_4431:
    call Call_010_5401
    ld a, $00
    ld [$cf63], a
    ret


    call Call_010_5401
    ld a, $0b
    ld [$cf63], a
    ret


    xor a
    ldh [$d4], a
    call $300b
    call Call_010_48f0
    call Call_010_534f
    ld a, $01
    ld [$c7d5], a
    xor a
    ld [$c7d6], a
    call Call_010_4fa8
    xor a
    ld [$c7db], a
    ld a, $11
    ld hl, $4207
    rst $08
    call $31f6
    ld a, $10
    call Call_010_5423
    call Call_010_4131
    ret


    ld de, $449e
    call Call_010_535a
    call Call_010_4f4f
    call c, Call_010_4fa8
    ld hl, $ffa7
    ld a, [hl]
    and $0a
    jr nz, jr_010_4495

    ld a, [hl]
    and $01
    jr nz, jr_010_448b

    ret


jr_010_448b:
    ld a, [$c7d8]
    ld hl, $44a8
    call Call_010_5432
    jp hl


jr_010_4495:
    call Call_010_5401
    ld a, $00
    ld [$cf63], a
    ret


    ret nz

    inc b
    ld a, [c]
    call nz, $c51a
    and [hl]
    push bc
    adc $c5
    or b
    ld b, h
    or b
    ld b, h
    or a
    ld b, h
    ld bc, $cd45
    add h
    ld c, a
    call Call_010_4fa8
    ret


    call Call_010_5086
    ld a, $11
    ld hl, $41cf
    rst $08
    ld a, [$c7d7]
    and a
    jr nz, jr_010_44dc

    call Call_010_4bdc
    call Call_010_5107
    xor a
    ldh [$d4], a
    call Call_010_48f0
    call Call_010_534f
    call Call_010_4fa8
    call $31f6
    ret


jr_010_44dc:
    ld [$c7d2], a
    ld a, [$c7d0]
    ld [$c7e0], a
    ld a, [$c7d1]
    ld [$c7e1], a
    ld a, [$c2d6]
    ld [$cf65], a
    xor a
    ld [$c7d0], a
    ld [$c7d1], a
    call Call_010_5401
    ld a, $09
    ld [$cf63], a
    ret


    call Call_010_5401
    ld a, $00
    ld [$cf63], a
    ret


    xor a
    ldh [$d4], a
    xor a
    ld hl, $cdd9
    ld bc, $0168
    call $3041
    call Call_010_5ae1
    call Call_010_5af7
    ld a, $77
    ld hl, $61d1
    rst $08
    call Call_010_49cf
    ld a, $04
    ld [$c7d3], a
    call Call_010_4b0f
    call Call_010_5ad7
    call Call_010_5af7
    call Call_010_4962
    ld a, $05
    ldh [$cf], a
    ld a, $4a
    ldh [$d1], a
    xor a
    ldh [$d2], a
    call $31f6
    call Call_010_5af7
    ld a, $77
    ld hl, $61d1
    rst $08
    call Call_010_49cf
    call Call_010_5281
    ld a, $ff
    ld [$d108], a
    ld a, $04
    call Call_010_5423
    call Call_010_4131
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_010_4595

    ld a, [hl]
    and $01
    jr nz, jr_010_4583

    call Call_010_46c5
    ret nc

    call Call_010_5281
    xor a
    ldh [$d4], a
    call Call_010_4b0f
    call Call_010_5ad7
    call Call_010_5af7
    ret


jr_010_4583:
    call Call_010_4bb1
    call Call_010_4bd0
    ret z

    ld a, $02
    ld [$cf63], a
    ld a, $09
    ld [$cf64], a
    ret


jr_010_4595:
    ld a, [$c7e0]
    ld [$c7d0], a
    ld a, [$c7e1]
    ld [$c7d1], a
    ld a, [$cf65]
    ld [$c2d6], a
    call Call_010_5401
    call $300b
    call Call_010_4bdc
    ld a, $05
    ld [$cf63], a
    xor a
    ldh [$cf], a
    ld a, $a7
    ldh [$d1], a
    ret


    call Call_010_5a2c
    call Call_010_49f1
    xor a
    ld [$c7dd], a
    call Call_010_5a58
    call Call_010_4658
    ld a, $3e

Call_010_45cf:
    ld hl, $7a2e
    rst $08
    call $31f6
    ld a, $16
    call Call_010_5423
    call Call_010_4131
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $03
    jr nz, jr_010_45eb

    call Call_010_4610
    ret


jr_010_45eb:
    call Call_010_5401
    ld a, $07
    ld [$cf63], a
    call $045a
    call Call_010_5a24
    jr nz, jr_010_4603

    ld a, $77
    ld hl, $5f26
    rst $08
    jr jr_010_460f

jr_010_4603:
    ld hl, $550e
    ld de, $9310
    ld bc, $103a
    call $0e73

jr_010_460f:
    ret


Call_010_4610:
    ld hl, $ffa9
    ld a, [hl]
    and $10
    jr nz, jr_010_461e

    ld a, [hl]
    and $20
    jr nz, jr_010_462d

    ret


jr_010_461e:
    ld a, [$c7de]
    ld e, a
    ld hl, $c7dd
    ld a, [hl]
    inc a
    cp e
    ret nc

    ld a, [hl]
    inc [hl]
    jr jr_010_4635

jr_010_462d:
    ld hl, $c7dd
    ld a, [hl]
    and a
    ret z

    ld a, [hl]
    dec [hl]

jr_010_4635:
    push af
    xor a
    ldh [$d4], a
    pop af
    call Call_010_4654
    call Call_010_5a58
    call Call_010_4658
    ld a, $3e
    ld hl, $7a2e
    rst $08
    ld a, $01
    ldh [$d4], a
    call $045a
    call $045a
    ret


Call_010_4654:
    ld c, $7f
    jr jr_010_465d

Call_010_4658:
    ld a, [$c7dd]
    ld c, $5a

jr_010_465d:
    ld e, a
    ld d, $00
    ld hl, $4a40
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld [hl], c
    ret


Call_010_466c:
    ld a, [$c7d1]
    ld [$c7e2], a
    ld a, [$c7d0]
    ld [$c7e3], a
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_010_4687

    ld a, [hl]
    and $80
    jr nz, jr_010_469e

    and a
    ret


jr_010_4687:
    ld a, [$c7d3]
    ld d, a
    ld a, [$c7d2]
    ld e, a
    call Call_010_46ea
    jr nc, jr_010_46b7

    call Call_010_4bb1
    call Call_010_4bd0
    jr nz, jr_010_46b5

    jr jr_010_4687

jr_010_469e:
    ld a, [$c7d3]
    ld d, a
    ld a, [$c7d2]
    ld e, a
    call Call_010_46fe
    jr nc, jr_010_46b7

    call Call_010_4bb1
    call Call_010_4bd0
    jr nz, jr_010_46b5

    jr jr_010_469e

jr_010_46b5:
    scf
    ret


jr_010_46b7:
    ld a, [$c7e2]
    ld [$c7d1], a
    ld a, [$c7e3]
    ld [$c7d0], a
    and a
    ret


Call_010_46c5:
    ld a, [$c7d3]
    ld d, a
    ld a, [$c7d2]
    ld e, a
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_010_46ea

    ld a, [hl]
    and $80
    jr nz, jr_010_46fe

    ld a, d
    cp e
    jr nc, jr_010_473d

    ld a, [hl]
    and $20
    jr nz, jr_010_4716

    ld a, [hl]
    and $10
    jr nz, jr_010_4728

    jr jr_010_473d

Call_010_46ea:
jr_010_46ea:
    ld hl, $c7d1
    ld a, [hl]
    and a
    jr z, jr_010_46f4

    dec [hl]
    jr jr_010_473f

jr_010_46f4:
    ld hl, $c7d0
    ld a, [hl]
    and a
    jr z, jr_010_473d

    dec [hl]
    jr jr_010_473f

Call_010_46fe:
jr_010_46fe:
    ld hl, $c7d1
    ld a, [hl]
    inc a
    cp e
    jr nc, jr_010_473d

    cp d
    jr nc, jr_010_470c

    inc [hl]
    jr jr_010_473f

jr_010_470c:
    ld hl, $c7d0
    add [hl]
    cp e
    jr nc, jr_010_473d

    inc [hl]
    jr jr_010_473f

jr_010_4716:
    ld hl, $c7d0
    ld a, [hl]
    and a
    jr z, jr_010_473d

    cp d
    jr nc, jr_010_4724

    xor a
    ld [hl], a
    jr jr_010_473f

jr_010_4724:
    sub d
    ld [hl], a
    jr jr_010_473f

jr_010_4728:
    ld hl, $c7d0
    ld a, d
    add a
    add [hl]
    jr c, jr_010_4733

    cp e
    jr c, jr_010_4738

jr_010_4733:
    ld a, e
    sub d
    ld [hl], a
    jr jr_010_473f

jr_010_4738:
    ld a, [hl]
    add d
    ld [hl], a
    jr jr_010_473f

jr_010_473d:
    and a
    ret


jr_010_473f:
    scf
    ret


Call_010_4741:
    push de
    ld de, $0014

jr_010_4745:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_010_4745

    pop de
    ret


Call_010_474c:
    ld hl, $c5f4
    ld de, $47f2
    call Call_010_4acd
    ld a, $32
    ld hl, $c4a0
    ld bc, $0168
    call $3041
    ld hl, $c4a0
    ld bc, $0707
    call Call_010_4ad5
    ld hl, $c554
    ld bc, $0607
    call Call_010_4ad5
    ld hl, $c57d
    ld de, $47e1
    call Call_010_4acd
    ld hl, $deb9
    ld b, $20
    call $335f
    ld de, $d265
    ld hl, $c595
    ld bc, $0103
    call $3198
    ld hl, $c5b9
    ld de, $47e6
    call Call_010_4acd
    ld hl, $de99
    ld b, $20
    call $335f
    ld de, $d265
    ld hl, $c5d1
    ld bc, $0103
    call $3198
    ld hl, $c5f5
    ld de, $47ea
    call Call_010_4acd
    ld hl, $c4bc
    ld b, $07
    ld a, $5a
    call Call_010_4741
    ld hl, $c570
    ld b, $06
    ld a, $5a
    call Call_010_4741
    ld hl, $c4a8
    ld [hl], $59
    ld hl, $c548
    ld [hl], $53
    ld hl, $c55c
    ld [hl], $54
    ld hl, $c5e8
    ld [hl], $5b
    call Call_010_4ab2
    ret


    sub d
    add h
    add h
    adc l
    rst $38
    adc [hl]
    sub [hl]
    adc l
    rst $38
    dec sp
    ld c, b
    ld c, c
    ld c, d
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc a
    dec sp
    ld b, c
    ld b, d
    ld b, e
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    inc a
    rst $38

Call_010_47fd:
    call Call_010_4aa6
    ld hl, $c4a0
    ld bc, $0f12
    call Call_010_4ad5
    ld hl, $c4b3
    ld [hl], $34
    ld hl, $c4c7
    ld a, $7f
    ld b, $0f
    call Call_010_4741
    ld [hl], $39
    ld hl, $c569
    ld bc, $0013
    ld a, $61
    call $3041
    ld hl, $c5f5
    ld bc, $0012
    ld a, $7f
    call $3041
    ld hl, $c535
    ld de, $4852
    call Call_010_4acd
    ld hl, $c55d
    ld de, $485c
    call Call_010_4acd
    ld hl, $c5f4
    ld de, $4867
    call Call_010_4acd
    call Call_010_4ab2
    ret


    ld e, h
    ld e, l
    rst $38
    add a
    sub e
    ld a, a
    ld a, a
    and $5e
    and $e6
    ld e, a
    rst $38
    sub [hl]
    sub e
    ld a, a
    ld a, a
    ld a, a
    and $e6
    and $ab
    and c
    rst $38
    dec sp
    ld a, a
    adc a
    add b
    add [hl]
    add h
    ld a, a
    add b
    sub c
    add h
    add b
    ld a, a
    add d
    sub c
    sbc b
    ld a, a
    adc a
    sub c
    adc l
    sub e
    rst $38

Call_010_487c:
    call Call_010_4aa6
    ld hl, $c4c8
    ld bc, $0812
    call Call_010_4ad5
    ld hl, $c590
    ld bc, $0412
    call Call_010_4ad5
    ld hl, $c4b4
    ld de, $48b2
    call Call_010_4acd
    ld hl, $c4f3
    ld de, $48bd
    call $1078
    ld a, [$c7dc]
    and a
    ret z

    ld hl, $c56b
    ld de, $48e5
    call $1078
    ret


    dec sp
    ld a, a
    adc [hl]
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld a, a
    inc a
    rst $38
    adc l
    add h
    sub [hl]
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    adc h
    adc [hl]
    add e
    add h
    ld c, [hl]
    adc [hl]
    adc e
    add e
    ld a, a
    ld d, h
    add e
    add h
    sub a
    ld a, a
    adc h
    adc [hl]
    add e
    add h
    ld c, [hl]
    add b
    ld a, a
    or e
    xor [hl]
    ld a, a
    sbc c
    ld a, a
    adc h
    adc [hl]
    add e
    add h
    ld d, b
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    adc h
    adc [hl]
    add e
    add h
    ld d, b

Call_010_48f0:
    call Call_010_4aa6
    ld hl, $c4c8
    ld bc, $0e12
    call Call_010_4ad5
    ld hl, $c4b4
    ld de, $492a
    call Call_010_4acd
    ld hl, $c4f8
    ld de, $4935
    call Call_010_4acd
    ld hl, $c520
    ld de, $4935
    call Call_010_4acd
    ld hl, $c4f3
    ld de, $4940
    call $1078
    ld hl, $c5a7
    ld de, $494c
    call $1078
    ret


    dec sp
    ld a, a
    sub d
    add h
    add b
    sub c
    add d
    add a
    ld a, a
    inc a
    rst $38
    dec a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, $ff
    sub e
    sbc b
    adc a
    add h
    rst $30
    ld c, [hl]
    sub e
    sbc b
    adc a
    add h
    ld hl, sp+$50
    add c
    add h
    add [hl]
    adc b
    adc l
    ld a, a
    sub d
    add h
    add b
    sub c
    add d
    add a
    rst $20
    rst $20
    ld c, [hl]
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_010_4962:
    call Call_010_4aa6
    ld hl, $c4a0
    ld bc, $0707
    call Call_010_4ad5
    ld hl, $c57c
    ld bc, $0512
    call Call_010_4ad5
    ld hl, $c591
    ld de, $49ae
    call $1078
    ld de, $c7d7
    ld hl, $c5e1
    ld bc, $0103
    call $3198
    ld hl, $c4a8
    ld [hl], $59
    ld hl, $c4bc
    ld b, $07
    ld a, $5a
    call Call_010_4741
    ld hl, $c548
    ld [hl], $53
    ld hl, $c55c
    ld [hl], $69
    ld hl, $c570
    ld [hl], $6a
    call Call_010_4ab2
    ret


    sub d
    add h
    add b
    sub c
    add d
    add a
    ld a, a
    sub c
    add h
    sub d
    sub h
    adc e
    sub e
    sub d
    ld c, [hl]
    ld a, a
    ld a, a
    sub e
    sbc b
    adc a
    add h
    ld c, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    add l
    adc [hl]
    sub h
    adc l
    add e
    rst $20
    ld d, b

Call_010_49cf:
    ld a, [$c7d5]
    ld hl, $c5b8
    call Call_010_4fcd
    ld a, [$c7d5]
    ld b, a
    ld a, [$c7d6]
    and a
    jr z, jr_010_49f0

    cp b
    jr z, jr_010_49f0

    ld hl, $c5ce
    call Call_010_4fcd
    ld hl, $c5cd
    ld [hl], $f3

jr_010_49f0:
    ret


Call_010_49f1:
    call Call_010_4aa6
    ld hl, $c4b6
    ld bc, $0a0d
    call Call_010_4ad5
    ld hl, $c5ba
    ld bc, $010d
    call Call_010_4ad5
    ld hl, $c5ce
    ld [hl], $3d
    ld hl, $c5dc
    ld [hl], $3e
    ld hl, $c50a
    call Call_010_4ab5
    ld de, $0000
    ld b, $00
    ld c, $1a

jr_010_4a1d:
    ld hl, $ded9
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_010_4a39

    push af
    ld hl, $4a3e
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    add $3f
    ld [hl], a
    inc de
    inc b
    dec c
    jr nz, jr_010_4a1d

jr_010_4a39:
    ld a, b
    ld [$c7de], a
    ret


    add b
    push bc
    ld a, a
    push bc
    ld l, h
    push bc
    ld l, e
    push bc
    ld e, b
    push bc
    ld d, a
    push bc
    ld b, h
    push bc
    ld b, e
    push bc
    jr nc, @-$39

    cpl
    push bc
    inc e
    push bc
    dec de
    push bc
    ld [$07c5], sp
    push bc
    db $f4
    call nz, $c4f3
    ldh [$c4], a
    set 0, h
    pop hl
    call nz, $c4cd
    ld [c], a
    call nz, $c4ce
    db $e3
    call nz, $c4cf
    db $e4
    call nz, $c4d0
    push hl
    call nz, $c4d1
    and $c4
    jp nc, $e7c4

    call nz, $c4d3
    add sp, -$3c
    call nc, $e9c4
    call nz, $c4d5
    ld [$d7c4], a
    call nz, $c4fe
    rst $38
    call nz, $c512
    inc de
    push bc
    ld h, $c5
    daa
    push bc
    ld a, [hl-]
    push bc
    dec sp
    push bc
    ld c, [hl]
    push bc
    ld c, a
    push bc
    ld h, d
    push bc
    ld h, e
    push bc
    db $76
    push bc
    ld [hl], a
    push bc

Call_010_4aa6:
    ld hl, $c4a0
    ld a, $32
    ld bc, $0168
    call $3041
    ret


Call_010_4ab2:
    ld hl, $c4b5

Call_010_4ab5:
    xor a
    ld b, $07

jr_010_4ab8:
    ld c, $07
    push af
    push hl

jr_010_4abc:
    ld [hl+], a
    add $07
    dec c
    jr nz, jr_010_4abc

    pop hl
    ld de, $0014
    add hl, de
    pop af
    inc a
    dec b
    jr nz, jr_010_4ab8

    ret


Call_010_4acd:
jr_010_4acd:
    ld a, [de]
    cp $ff
    ret z

    inc de
    ld [hl+], a
    jr jr_010_4acd

Call_010_4ad5:
    push hl
    ld a, $33
    ld [hl+], a
    ld d, $34
    call Call_010_4b06
    ld a, $35
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de

jr_010_4ae6:
    push hl
    ld a, $36
    ld [hl+], a
    ld d, $7f
    call Call_010_4b06
    ld a, $37
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_010_4ae6

    ld a, $38
    ld [hl+], a
    ld d, $39
    call Call_010_4b06
    ld a, $3a
    ld [hl], a
    ret


Call_010_4b06:
    ld e, c

jr_010_4b07:
    ld a, e
    and a
    ret z

    ld a, d
    ld [hl+], a
    dec e
    jr jr_010_4b07

Call_010_4b0f:
    ld a, [$c7d4]
    cp $01
    jr z, jr_010_4b1a

    ld c, $0b
    jr jr_010_4b1c

jr_010_4b1a:
    ld c, $0b

jr_010_4b1c:
    ld hl, $c4b4
    ld a, [$c7d3]
    add a
    inc a
    ld b, a
    ld a, $7f
    call Call_010_53fe
    ld a, [$c7d0]
    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c4c8
    ld a, [$c7d3]

jr_010_4b3c:
    push af
    ld a, [de]
    ld [$d265], a
    push de
    push hl
    call Call_010_4b55
    pop hl
    ld de, $0028
    add hl, de
    pop de
    inc de
    pop af
    dec a
    jr nz, jr_010_4b3c

    call Call_010_543b
    ret


Call_010_4b55:
    and a
    ret z

    call Call_010_4b6a
    call Call_010_4b8d
    ret c

    call Call_010_4b82
    push hl
    call $343b
    pop hl
    call $1078
    ret


Call_010_4b6a:
    ld a, [$c7d4]
    cp $01
    jr z, jr_010_4b72

    ret


jr_010_4b72:
    push hl
    ld de, $ffec
    add hl, de
    ld de, $d265
    ld bc, $8103
    call $3198
    pop hl
    ret


Call_010_4b82:
    call Call_010_4bc4
    jr nz, jr_010_4b89

    inc hl
    ret


jr_010_4b89:
    ld a, $4f
    ld [hl+], a
    ret


Call_010_4b8d:
    call Call_010_4bd0
    ret nz

    inc hl
    ld de, $4b9a
    call $1078
    scf
    ret


    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b

Call_010_4ba0:
    ld hl, $c4c6
    ld a, $62
    ld [hl+], a
    inc a
    ld [hl], a
    ld hl, $c4da
    ld a, $64
    ld [hl+], a
    inc a
    ld [hl], a
    ret


Call_010_4bb1:
    ld a, [$c7d1]
    ld hl, $c7d0
    add [hl]
    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    ld a, [hl]
    ld [$d265], a
    ret


Call_010_4bc4:
    push de
    push hl
    ld a, [$d265]
    dec a
    call $3393
    pop hl
    pop de
    ret


Call_010_4bd0:
    push de
    push hl
    ld a, [$d265]
    dec a
    call $339b
    pop hl
    pop de
    ret


Call_010_4bdc:
    ld hl, $c6d0
    ld bc, $0100
    xor a
    call $3041
    ld a, [$c7d4]
    ld hl, $4bf0
    call Call_010_5432
    jp hl


    or $4b
    ld [$304c], sp
    ld c, h
    ld de, $4d60
    ld hl, $c6d0
    ld c, $fb

jr_010_4bfe:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_010_4bfe

    call Call_010_4c18
    ret


    ld hl, $c6d0
    ld a, $01
    ld c, $fb

jr_010_4c0f:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_010_4c0f

    call Call_010_4c18
    ret


Call_010_4c18:
    ld hl, $c7ca
    ld d, $fb
    ld e, d

jr_010_4c1e:
    ld a, [hl-]
    ld [$d265], a
    call Call_010_4bd0
    jr nz, jr_010_4c2b

    dec d
    dec e
    jr nz, jr_010_4c1e

jr_010_4c2b:
    ld a, d
    ld [$c7d2], a
    ret


    xor a
    ld [$c7d2], a
    ld hl, $c6d0
    ld de, $4c65
    ld c, $fb

jr_010_4c3c:
    push bc
    ld a, [de]
    ld [$d265], a
    call Call_010_4bd0
    jr z, jr_010_4c51

    ld a, [$d265]
    ld [hl+], a
    ld a, [$c7d2]
    inc a
    ld [$c7d2], a

jr_010_4c51:
    inc de
    pop bc
    dec c
    jr nz, jr_010_4c3c

    ld a, [$c7d2]
    ld c, $00

jr_010_4c5b:
    cp $fb
    jr z, jr_010_4c64

    ld [hl], c
    inc hl
    inc a
    jr jr_010_4c5b

jr_010_4c64:
    ret


    ccf
    adc [hl]
    cp [hl]
    ld b, c
    or l
    jr jr_010_4ca7

    xor b
    sub b
    cp b
    sbc c
    rrca
    or [hl]
    ld b, l
    add hl, bc
    ld a, [c]
    ld bc, $0a0c
    ei
    ld [hl], c
    ld b, $04
    dec b
    sbc b
    xor d
    inc h
    inc hl
    xor l
    ld e, e
    sbc $a9
    sbc a
    ld l, b
    sbc e
    pop hl
    ld d, a
    ld [hl-], a
    add h
    ld d, l
    ld d, h
    add sp, -$6c
    sub l
    sub e
    ld h, b
    inc sp
    adc $85
    rla
    ld a, l
    ld h, l
    rst $28
    db $f4
    call nz, Call_010_6766
    ld d, e
    ld d, $a0
    or h
    adc b
    call Call_010_5ca2
    ld e, [hl]

jr_010_4ca7:
    ld c, d
    set 1, a
    inc l
    ld a, [hl+]
    db $76
    scf
    ld c, h
    jp nc, Jump_010_584b

    ld a, [hl-]
    add d
    ld e, l
    sub $6b
    ld l, d
    db $ed
    ld a, [$bba3]
    ld [hl], h
    push hl
    db $e4
    ld h, c
    xor [hl]
    ld [bc], a
    daa

jr_010_4cc3:
    add a
    cp l
    ld a, h
    adc h
    adc l
    ld b, b
    ld c, $73
    and $63
    ld l, l
    ld h, d
    xor e
    add e
    or $a6
    and l
    ld l, h
    ld sp, hl
    ld b, h
    ld b, e
    ld b, d
    ldh a, [$db]
    add c
    ld a, [hl]
    ld d, c
    ld d, d
    jr c, jr_010_4cc3

    or e
    or a
    ld l, c
    sbc d
    inc [hl]
    dec bc
    sub a
    sub [hl]
    pop af
    ret z

    sub d
    ld a, d
    ld e, c
    add $b1
    ld [hl+], a
    rra
    dec e
    jr nz, jr_010_4d13

    ld hl, $a426
    ldh [$2b], a
    adc d
    adc e
    ld e, a
    ld l, $2f
    dec [hl]
    rst $20
    xor h
    ld [de], a
    ld de, $1910
    db $dd
    call z, $ba7f
    inc a
    dec a
    ld a, $4d
    adc c
    jp hl


    add hl, sp
    ld [hl], $f7

jr_010_4d13:
    jp $d39c


    ld a, [de]
    di
    ld c, [hl]
    inc d
    inc de
    rst $18
    ld [hl], b
    ld l, a
    dec de
    inc e
    call nc, $757b
    ld [hl], a
    ld d, [hl]

jr_010_4d25:
    and c
    ld e, d
    push de
    db $e3
    cp h
    ld d, b
    rst $00
    ld c, a
    jp c, $eeeb

    rst $10
    adc a
    pop de
    dec d
    and a
    rlca
    ld [$7879], a
    ret nc

    cp c
    push af
    ret nz

jr_010_4d3d:
    cp a
    call c, $8072
    ret c

    ld c, b
    ld c, c
    xor a
    or b
    sbc [hl]
    sbc l
    ld hl, sp-$14
    push bc
    ret


    reti


    add [hl]
    ld sp, $0330
    ld b, a
    dec l
    ld h, h
    dec h
    ld [$460d], sp
    ld l, [hl]
    jr z, jr_010_4d25

    jp nz, $c1b2

    sub c
    add hl, hl
    sbc b
    sbc c

jr_010_4d62:
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    db $10
    ld de, $1512
    ld d, $a3
    and h
    inc de
    inc d
    and c
    and d
    xor h
    add hl, de
    ld a, [de]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    and l
    and [hl]
    and a
    xor b
    ld c, d
    ld c, e
    ld c, h
    add hl, hl
    ld a, [hl+]
    xor c
    xor l
    inc hl
    inc h
    xor [hl]
    daa
    jr z, jr_010_4d3d

    or b
    dec de
    inc e
    rla
    jr jr_010_4d62

    or e
    or h
    or l
    jp nz, Jump_010_5cc3

    ld e, l
    ld e, [hl]
    ret


    ld e, a
    ret nc

    ld b, l
    ld b, [hl]
    ld b, a
    cp e
    cp h
    cp l
    ld l, $2f
    inc a
    dec a
    ld a, $ba
    add c
    add d
    db $76
    ld [hl], a
    ld c, a
    ld d, b
    rst $00
    dec hl
    inc l
    dec l
    or [hl]
    ld h, b
    ld h, c
    ccf
    ld b, b
    ld b, c
    add h
    call z, $1dcd
    ld e, $1f
    jr nz, jr_010_4de4

    ld [hl+], a
    pop bc
    cp a
    ret nz

    ld h, [hl]
    ld h, a
    cp c
    jp z, $3130

    ld a, e
    call nc, $d67f
    ld l, l
    ld l, [hl]
    ld e, b
    ld e, c
    ld d, c
    ld d, d
    ld h, h
    ld h, l
    cp [hl]
    pop de
    jp nc, $2625

    ld a, [hl-]
    dec sp
    ld [$b8b7], a
    ld [hl-], a

jr_010_4de4:
    inc sp
    jr c, @+$3b

    inc [hl]
    dec [hl]
    ld [hl], $37
    ld b, d
    ld b, e
    ld b, h
    db $ec
    ld l, d
    ld l, e
    db $ed
    res 0, b
    pop af
    ldh a, [$7e]
    xor $7c
    rst $28
    ld a, l
    ld a, d
    db $eb
    ld d, e
    or c
    or d
    db $d3

Jump_010_4e01:
    ld c, b
    ld c, c
    ld h, d
    ld h, e
    push de
    ld a, b
    ld a, c
    ld e, d
    ld e, e
    sbc $df
    ldh [$aa], a
    xor e
    ld d, [hl]
    ld d, a
    ld l, h
    ld [hl], d
    add l
    add [hl]
    add a
    adc b
    call nz, Call_010_74c5
    ld [hl], l
    and $cf
    pop hl
    call c, $d8dd
    reti


    rst $20
    add sp, -$1e
    db $e3
    ld d, h
    ld d, l
    ld c, l
    ld c, [hl]
    ld l, b
    ld l, c
    ld [hl], e
    ld l, a
    ld [hl], b
    add $e4
    push hl
    jp c, $d7db

    ret z

    adc c
    jp hl


    ld [hl], c
    ld a, [c]
    add e
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$9009], sp
    sub c
    sub d
    di
    db $f4
    push af
    sub e
    sub h
    sub l
    or $f7
    ld hl, sp-$07
    ld a, [$9796]
    ei

Call_010_4e5b:
    xor a
    ldh [$d4], a
    ld hl, $c590
    ld bc, $0412
    call Call_010_4ad5
    ld a, [$c7d8]
    ld hl, $4e7d
    call Call_010_5432
    ld e, l
    ld d, h
    ld hl, $c5b9
    call $1078
    ld a, $01
    ldh [$d4], a
    ret


    add l
    ld c, [hl]
    and [hl]
    ld c, [hl]
    add $4e
    db $e4
    ld c, [hl]
    pop hl
    ld [c], a
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, [hl]
    and h
    or l
    xor [hl]
    xor e
    or h
    or e
    xor b
    xor [hl]
    xor l
    ld a, a
    or e
    cp b
    xor a
    and h
    add sp, $50
    pop hl
    ld [c], a
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    and e
    ld a, a
    and c
    cp b
    ld c, [hl]
    xor [hl]
    and l
    and l
    xor b
    and d
    xor b
    and b
    xor e
    ld a, a
    or e
    cp b
    xor a
    and h
    add sp, $50
    pop hl
    ld [c], a
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    and e
    ld c, [hl]
    and b
    xor e
    xor a
    and a
    and b
    and c
    and h
    or e
    xor b
    and d
    and b
    xor e
    xor e
    cp b
    add sp, $50
    sub h
    adc l
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    and b
    or c
    and h
    ld a, a
    xor e
    xor b
    or d
    or e
    and h
    and e
    ld c, [hl]
    xor b
    xor l
    ld a, a
    and d
    and b
    or e
    and d
    and a
    xor b
    xor l
    and [hl]
    ld a, a
    xor [hl]
    or c
    and e
    and h
    or c
    add sp, $50

Call_010_4f08:
    xor a
    ldh [$d4], a
    ld hl, $c590
    ld bc, $0412
    call Call_010_4ad5
    ld de, $4f32
    ld hl, $c5b9
    call $1078
    ld a, $01
    ldh [$d4], a
    ld c, $40
    call $0468
    ld de, $0015
    call $3c23
    ld c, $40
    call $0468
    ret


    add d
    and a
    and b
    xor l
    and [hl]
    xor b
    xor l
    and [hl]
    ld a, a
    xor h
    xor [hl]
    and e
    and h
    or d
    add sp, $4e
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
    add sp, $50

Call_010_4f4f:
    ld a, [$c7d8]
    cp $02
    jr nc, jr_010_4f63

    ld hl, $ffa9
    ld a, [hl]
    and $20
    jr nz, jr_010_4f65

    ld a, [hl]
    and $10
    jr nz, jr_010_4f84

jr_010_4f63:
    and a
    ret


jr_010_4f65:
    ld a, [$c7d8]
    and a
    jr nz, jr_010_4f76

    ld hl, $c7d5
    ld a, [hl]
    cp $01
    jr z, jr_010_4f80

    dec [hl]
    jr jr_010_4f82

jr_010_4f76:
    ld hl, $c7d6
    ld a, [hl]
    and a
    jr z, jr_010_4f80

    dec [hl]
    jr jr_010_4f82

jr_010_4f80:
    ld [hl], $11

jr_010_4f82:
    scf
    ret


jr_010_4f84:
    ld a, [$c7d8]
    and a
    jr nz, jr_010_4f99

    ld hl, $c7d5
    ld a, [hl]
    cp $11
    jr nc, jr_010_4f95

    inc [hl]
    jr jr_010_4fa6

jr_010_4f95:
    ld [hl], $01
    jr jr_010_4fa6

jr_010_4f99:
    ld hl, $c7d6
    ld a, [hl]
    cp $11
    jr nc, jr_010_4fa4

    inc [hl]
    jr jr_010_4fa6

jr_010_4fa4:
    ld [hl], $00

jr_010_4fa6:
    scf
    ret


Call_010_4fa8:
    xor a
    ldh [$d4], a
    ld hl, $c4e5
    ld bc, $0408
    ld a, $7f
    call Call_010_53fe
    ld a, [$c7d5]
    ld hl, $c4f9
    call Call_010_4fcd
    ld a, [$c7d6]
    ld hl, $c521
    call Call_010_4fcd
    ld a, $01
    ldh [$d4], a
    ret


Call_010_4fcd:
    push hl
    ld e, a
    ld d, $00
    ld hl, $4fe4
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld e, l
    ld d, h
    pop hl
    call $1078
    ret


    ld a, a
    ld a, a
    db $e3
    db $e3
    db $e3
    db $e3
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    adc l
    adc [hl]
    sub c
    adc h
    add b
    adc e
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    add l
    adc b
    sub c
    add h
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    sub [hl]
    add b
    sub e
    add h
    sub c
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    add [hl]
    sub c
    add b
    sub d
    sub d
    ld a, a
    ld a, a
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
    ld a, a
    ld a, a
    adc b
    add d
    add h
    ld a, a
    ld a, a
    ld a, a
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
    ld a, a
    adc a
    adc [hl]
    adc b
    sub d
    adc [hl]
    adc l
    ld a, a
    ld d, b
    ld a, a
    add [hl]
    sub c
    adc [hl]
    sub h
    adc l
    add e
    ld a, a
    ld d, b
    ld a, a
    add l
    adc e
    sbc b
    adc b
    adc l
    add [hl]
    ld a, a
    ld d, b
    adc a
    sub d
    sbc b
    add d
    add a
    adc b
    add d
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    add c
    sub h
    add [hl]
    ld a, a
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    sub c
    adc [hl]
    add d
    adc d
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    add [hl]
    add a
    adc [hl]
    sub d
    sub e
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    add e
    sub c
    add b
    add [hl]
    adc [hl]
    adc l
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    add e
    add b
    sub c
    adc d
    ld a, a
    ld a, a
    ld d, b
    ld a, a
    sub d
    sub e
    add h
    add h
    adc e
    ld a, a
    ld a, a
    ld d, b

Call_010_5086:
    ld a, [$c7d6]
    and a
    call nz, Call_010_5095
    ld a, [$c7d5]
    and a
    call nz, Call_010_5095
    ret


Call_010_5095:
    dec a
    ld e, a
    ld d, $00
    ld hl, $50f6
    add hl, de
    ld a, [hl]
    ld [$c7df], a
    ld hl, $c6d0
    ld de, $c6d0
    ld c, $fb
    xor a
    ld [$c7d7], a

jr_010_50ad:
    push bc
    ld a, [hl]
    and a
    jr z, jr_010_50e0

    ld [$d265], a
    ld [$cf60], a
    call Call_010_4bc4
    jr z, jr_010_50e0

    push hl
    push de
    call $3856
    pop de
    pop hl
    ld a, [$c7df]
    ld b, a
    ld a, [$d23d]
    cp b
    jr z, jr_010_50d4

    ld a, [$d23e]
    cp b
    jr nz, jr_010_50e0

jr_010_50d4:
    ld a, [$d265]
    ld [de], a
    inc de
    ld a, [$c7d7]
    inc a
    ld [$c7d7], a

jr_010_50e0:
    inc hl
    pop bc
    dec c
    jr nz, jr_010_50ad

    ld l, e
    ld h, d
    ld a, [$c7d7]
    ld c, $00

jr_010_50ec:
    cp $fb
    jr z, jr_010_50f5

    ld [hl], c
    inc hl
    inc a
    jr jr_010_50ec

jr_010_50f5:
    ret


    nop
    inc d
    dec d
    ld d, $17
    add hl, de
    ld bc, $0403
    ld [bc], a
    jr @+$09

    dec b
    ld [$1b1a], sp
    add hl, bc

Call_010_5107:
    xor a
    ldh [$d4], a
    ld hl, $c590
    ld bc, $0412
    call Call_010_4ad5
    ld de, $5126
    ld hl, $c5b9
    call $1078
    ld a, $01
    ldh [$d4], a
    ld c, $80
    call $0468
    ret


    sub e
    and a
    and h
    ld a, a
    or d
    xor a
    and h
    and d
    xor b
    and l
    xor b
    and h
    and e
    ld a, a
    or e
    cp b
    xor a
    and h
    ld c, [hl]
    or [hl]
    and b

jr_010_513b:
    or d
    ld a, a
    xor l
    xor [hl]
    or e
    ld a, a
    and l
    xor [hl]
    or h
    xor l
    and e
    add sp, $50

Call_010_5148:
    ld a, [$c7d4]
    cp $01
    jp z, Jump_010_5157

    call Call_010_5229

jr_010_5153:
    call Call_010_530e
    ret


Jump_010_5157:
    ld hl, $5167
    ld a, [$c7d1]
    or a
    jr nz, jr_010_5163

    ld hl, $51c8

jr_010_5163:
    call Call_010_52f1
    ret


    jr @+$49

    jr nc, jr_010_5172

    db $10
    ld b, a
    ld sp, $1007
    ld c, a
    ld [hl-], a

jr_010_5172:
    rlca
    db $10
    ld d, a
    ld [hl-], a
    rlca
    db $10
    ld e, a
    ld [hl-], a
    rlca
    db $10
    ld h, a
    inc sp
    rlca
    db $10
    ld a, [hl]
    inc sp
    daa
    db $10
    add [hl]
    ld [hl-], a
    daa
    db $10
    adc [hl]
    ld [hl-], a
    daa
    db $10
    sub [hl]
    ld [hl-], a
    daa
    db $10
    sbc [hl]
    ld sp, $1827

jr_010_5194:
    sbc [hl]
    jr nc, jr_010_51be

    jr nz, jr_010_51e0

    jr nc, jr_010_51e2

    jr z, jr_010_51e4

    ld sp, $2847
    ld c, a
    ld [hl-], a
    ld b, a
    jr z, jr_010_51fc

    ld [hl-], a
    ld b, a
    jr z, jr_010_5208

    ld [hl-], a
    ld b, a
    jr z, jr_010_5214

    inc sp
    ld b, a
    jr z, jr_010_522f

    inc sp
    ld h, a
    jr z, jr_010_513b

    ld [hl-], a
    ld h, a
    jr z, @-$70

    ld [hl-], a
    ld h, a
    jr z, jr_010_5153

    ld [hl-], a

jr_010_51be:
    ld h, a
    jr z, @-$60

    ld sp, $2067
    sbc [hl]
    jr nc, @+$69

    rst $38
    jr @+$49

    jr nc, jr_010_51d3

    db $10
    ld b, a
    inc [hl]
    rlca
    db $10
    ld c, a
    dec [hl]

jr_010_51d3:
    rlca
    db $10
    ld d, a
    dec [hl]
    rlca
    db $10
    ld e, a
    dec [hl]
    rlca
    db $10
    ld h, a
    ld [hl], $07

jr_010_51e0:
    db $10
    ld a, [hl]

jr_010_51e2:
    ld [hl], $27

jr_010_51e4:
    db $10
    add [hl]
    dec [hl]
    daa
    db $10
    adc [hl]
    dec [hl]
    daa
    db $10
    sub [hl]
    dec [hl]
    daa
    db $10
    sbc [hl]
    inc [hl]
    daa
    jr jr_010_5194

    jr nc, jr_010_521f

    jr nz, jr_010_5241

    jr nc, jr_010_5243

jr_010_51fc:
    jr z, jr_010_5245

    ld sp, $2847
    ld c, a
    ld [hl-], a
    ld b, a
    jr z, jr_010_525d

    ld [hl-], a
    ld b, a

jr_010_5208:
    jr z, jr_010_5269

    ld [hl-], a
    ld b, a
    jr z, jr_010_5275

    inc sp
    ld b, a
    jr z, jr_010_5290

    inc sp
    ld h, a

jr_010_5214:
    jr z, @-$78

    ld [hl-], a
    ld h, a
    jr z, @-$70

    ld [hl-], a
    ld h, a
    jr z, @-$68

    ld [hl-], a

jr_010_521f:
    ld h, a
    jr z, @-$60

    ld sp, $2067
    sbc [hl]
    jr nc, jr_010_528f

    rst $38

Call_010_5229:
    ld hl, $5230
    call Call_010_52f1

jr_010_522f:
    ret


    dec de
    ld b, a
    jr nc, jr_010_523b

    inc de
    ld b, a
    ld sp, $1307
    ld c, a
    ld [hl-], a

jr_010_523b:
    rlca
    inc de
    ld d, a
    ld [hl-], a
    rlca
    inc de

jr_010_5241:
    ld e, a
    inc sp

jr_010_5243:
    rlca
    inc de

jr_010_5245:
    add b
    inc sp
    daa
    inc de
    adc b
    ld [hl-], a
    daa
    inc de
    sub b
    ld [hl-], a
    daa
    inc de
    sbc b
    ld sp, $1b27
    sbc b
    jr nc, @+$29

    inc hl
    ld b, a
    jr nc, jr_010_52a3

    dec hl

jr_010_525d:
    ld b, a
    ld sp, $2b47
    ld c, a
    ld [hl-], a
    ld b, a
    dec hl
    ld d, a
    ld [hl-], a
    ld b, a
    dec hl

jr_010_5269:
    ld e, a
    inc sp
    ld b, a
    dec hl
    add b
    inc sp
    ld h, a
    dec hl
    adc b
    ld [hl-], a
    ld h, a
    dec hl

jr_010_5275:
    sub b
    ld [hl-], a
    ld h, a
    dec hl
    sbc b
    ld sp, $2367
    sbc b
    jr nc, jr_010_52e7

    rst $38

Call_010_5281:
    ld a, [$c7d4]
    cp $01
    jp z, Jump_010_5157

    ld hl, $5290
    call Call_010_52f1

jr_010_528f:
    ret


jr_010_5290:
    dec de
    ld b, a
    jr nc, jr_010_529b

    inc de
    ld b, a
    ld sp, $1307
    ld c, a
    ld [hl-], a

jr_010_529b:
    rlca
    inc de
    ld d, a
    ld [hl-], a
    rlca
    inc de
    ld e, a
    ld [hl-], a

jr_010_52a3:
    rlca
    inc de
    ld h, a
    inc sp
    rlca
    inc de
    ld a, [hl]
    inc sp
    daa
    inc de
    add [hl]
    ld [hl-], a
    daa
    inc de
    adc [hl]
    ld [hl-], a
    daa
    inc de
    sub [hl]
    ld [hl-], a
    daa
    inc de
    sbc [hl]
    ld sp, $1b27
    sbc [hl]
    jr nc, jr_010_52e7

    inc hl
    ld b, a
    jr nc, jr_010_530b

    dec hl
    ld b, a
    ld sp, $2b47
    ld c, a
    ld [hl-], a
    ld b, a
    dec hl
    ld d, a
    ld [hl-], a
    ld b, a
    dec hl
    ld e, a
    ld [hl-], a
    ld b, a
    dec hl
    ld h, a
    inc sp
    ld b, a
    dec hl
    ld a, [hl]
    inc sp
    ld h, a
    dec hl
    add [hl]
    ld [hl-], a
    ld h, a
    dec hl
    adc [hl]
    ld [hl-], a
    ld h, a
    dec hl
    sub [hl]
    ld [hl-], a

jr_010_52e7:
    ld h, a
    dec hl
    sbc [hl]
    ld sp, $2367
    sbc [hl]
    jr nc, @+$69

    rst $38

Call_010_52f1:
    ld de, $c400

jr_010_52f4:
    ld a, [hl]
    cp $ff
    ret z

    ld a, [$c7d1]
    and $07
    swap a
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
    ld a, [hl+]
    ld [de], a

jr_010_530b:
    inc de
    jr jr_010_52f4

Call_010_530e:
    push de
    ld a, [$c7d2]
    dec a
    ld e, a
    ld a, [$c7d1]
    ld hl, $c7d0
    add [hl]
    cp e
    jr z, jr_010_533f

    ld hl, $0000
    ld bc, $0079
    call $30fe
    ld e, l
    ld d, h
    ld b, $00
    ld a, d
    or e
    jr z, jr_010_5341

    ld a, [$c7d2]
    ld c, a

jr_010_5333:
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc $00
    ld d, a
    jr c, jr_010_5341

    inc b
    jr jr_010_5333

jr_010_533f:
    ld b, $79

jr_010_5341:
    ld a, $14
    add b
    pop hl
    ld [hl+], a
    ld a, $a1
    ld [hl+], a
    ld a, $0f
    ld [hl+], a
    ld [hl], $00
    ret


Call_010_534f:
    xor a
    ld [$c7d8], a
    ld [$c7d9], a
    ld [$c7da], a
    ret


Call_010_535a:
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    dec a
    ld c, a
    inc de
    call Call_010_53e0
    ld hl, $ffa7
    ld a, [hl]
    and $60
    and b
    jr nz, jr_010_538f

    ld a, [hl]
    and $90
    and b
    jr nz, jr_010_53a0

    ld a, [hl]
    and $04
    and b
    jr nz, jr_010_53c1

    call Call_010_53f5
    jr c, jr_010_53bf

    ld hl, $ffa9
    ld a, [hl]
    and $60
    and b
    jr nz, jr_010_538f

    ld a, [hl]
    and $90
    and b
    jr nz, jr_010_53a0

    jr jr_010_53bf

jr_010_538f:
    ld a, [$c7d8]
    and a
    jr z, jr_010_53bf

    call Call_010_53d4
    ld [hl], $7f
    ld hl, $c7d8
    dec [hl]
    jr jr_010_53af

jr_010_53a0:
    ld a, [$c7d8]
    cp c
    jr nc, jr_010_53bf

    call Call_010_53d4
    ld [hl], $7f
    ld hl, $c7d8
    inc [hl]

jr_010_53af:
    call Call_010_53d4
    ld [hl], $ed
    ld a, $0c
    ld [$c7d9], a
    xor a
    ld [$c7da], a
    scf
    ret


jr_010_53bf:
    and a
    ret


jr_010_53c1:
    call Call_010_53d4
    ld [hl], $7f
    ld a, [$c7d8]
    cp c
    jr c, jr_010_53ce

    ld a, $ff

jr_010_53ce:
    inc a
    ld [$c7d8], a
    jr jr_010_53af

Call_010_53d4:
    ld a, [$c7d8]
    add a
    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_010_53e0:
    ld hl, $c7da
    ld a, [hl]
    inc [hl]
    and $08
    jr z, jr_010_53ef

    call Call_010_53d4
    ld [hl], $7f
    ret


jr_010_53ef:
    call Call_010_53d4
    ld [hl], $ed
    ret


Call_010_53f5:
    ld hl, $c7d9
    ld a, [hl]
    and a
    ret z

    dec [hl]
    scf
    ret


Call_010_53fe:
    jp $0fb8


Call_010_5401:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $0040
    xor a
    call $3041
    pop af
    ldh [rSVBK], a

Call_010_5415:
    ld a, $ff
    call $0c9f
    ld a, $ff
    call $0cf8
    call $045a
    ret


Call_010_5423:
    ld b, a
    call $3340

Call_010_5427:
    ld a, $e4
    call $0c9f
    ld a, $e0
    call $0cf8
    ret


Call_010_5432:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_010_543b:
    call Call_010_4bb1
    call Call_010_4bd0
    jr z, jr_010_545b

    ld a, [$def4]
    ld [$d234], a
    ld a, [$d265]
    ld [$d108], a
    call $3856
    ld de, $9000
    ld a, $3c
    call $2d83
    ret


jr_010_545b:
    ld a, $00
    call $2fcb
    ld a, $77
    ld hl, $60d7
    rst $08
    ld hl, $9000
    ld de, $a000
    ld c, $31
    ldh a, [$9d]
    ld b, a
    call $0f82
    call $2fe1
    ret


Call_010_5478:
    call Call_010_4bb1

Call_010_547b:
    ld a, [$d265]
    dec a
    and $f8
    srl a
    srl a
    srl a
    ld e, $00
    ld d, a
    ld a, [$d265]
    dec a
    and $07
    swap a
    ld l, a
    ld h, $00
    add hl, de
    ld de, $5434
    add hl, de
    push hl
    ld e, l
    ld d, h
    ld hl, $9620
    ld bc, $3e02
    call $0f1e
    pop hl
    ld de, $0080
    add hl, de
    ld e, l
    ld d, h
    ld hl, $9640
    ld bc, $3e02
    call $0f1e
    ret


Call_010_54b7:
    call $0568
    ld hl, $9000
    ld bc, $0310
    xor a
    call $3041
    call Call_010_54fb
    call $0e5f
    ld hl, $9600
    ld bc, $0200
    call Call_010_5504
    call Call_010_5a24
    jr nz, jr_010_54e0

    ld a, $77
    ld hl, $5f1c
    rst $08
    jr jr_010_54e9

jr_010_54e0:
    ld hl, $550e
    ld de, $9310
    call $0b50

jr_010_54e9:
    ld hl, $56b0
    ld de, $8000
    call $0b50
    ld a, $06
    call $3cb4
    call $058a
    ret


Call_010_54fb:
    call $0e51
    ld hl, $8800
    ld bc, $0800

Call_010_5504:
jr_010_5504:
    ld a, [hl]
    xor $ff
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_010_5504

    ret


    ld c, l
    rst $38
    rst $38
    nop
    rst $38
    ld e, e
    rst $38
    nop
    nop
    db $fc
    ld b, e
    ld bc, $8afd
    adc a
    nop
    nop
    add d
    xor a
    or b
    sbc a
    ld c, e
    ld bc, $b7fd
    adc a
    ld bc, $fc00
    call $00dd
    nop
    jp z, $afc9

    sbc a
    ld [bc], a
    nop
    rst $38
    ld bc, $ff43
    inc bc
    nop
    rst $38
    call nz, $b281
    adc a
    ld b, e
    inc bc
    inc bc
    inc b
    dec de
    dec de
    dec sp
    dec sp
    ld a, e
    add $80
    xor a
    adc a
    rrca
    nop
    rst $38
    nop
    ld bc, $1110
    jr c, jr_010_558f

    ld a, h
    ld a, l
    ld a, h
    ld a, h
    ld bc, $ff01
    rst $38
    push bc
    add b
    rlca
    ld a, h
    ld a, l
    jr c, jr_010_559e

    db $10
    ld de, $0100
    add e
    rst $38
    dec b
    ret z

    ret z

    db $dd
    db $dd
    call $43cd
    db $ed
    db $ed
    ld bc, $cdcd
    ld b, e
    rst $38
    rst $38
    ld bc, $d8d8
    ld b, e
    xor d
    xor d
    nop
    adc c
    call nz, $4380
    rst $38
    rst $38
    ld bc, $8e8e
    ld c, c
    sbc $de
    ld b, e

jr_010_558f:
    rst $38
    rst $38
    dec b
    ld hl, sp-$08
    ld a, d
    ld a, d
    ld a, [hl-]
    ld a, [hl-]
    ret


    add b
    ld bc, $8888
    ld b, e

jr_010_559e:
    xor l
    xor l
    ld bc, $9d9d
    ld b, e
    cp l
    cp l
    add l
    adc a
    ld b, e
    jp c, $c9da

    add b
    ld b, e
    or a
    or a
    inc bc
    sub a
    sub a
    and a
    and a
    rst $00
    add h
    dec b
    ret


    ret


    db $db
    db $db
    ret


    ret


    ld b, e
    db $eb
    db $eb
    push bc
    adc b
    dec b
    ld h, h
    ld h, h
    ld l, l
    ld l, l
    ld h, l
    ld h, l
    ld b, e
    ld l, l
    ld l, l
    ld bc, $2424
    sub e
    rst $28
    add hl, bc
    ld sp, hl
    ld sp, hl
    ld a, e
    ld a, e
    add hl, sp
    add hl, sp
    dec a
    dec a
    ld a, l
    ld a, l
    push bc
    adc b
    rlca
    ld [hl], $36
    ld l, d
    ld l, d
    ld a, [hl+]
    ld a, [hl+]
    ld h, d
    ld h, d
    add e
    add l
    ld b, e
    rst $38
    rst $38
    dec bc
    dec h
    dec h
    xor l
    xor l
    xor h
    xor h
    ld l, l
    ld l, l
    xor l
    xor l
    and l
    and l
    ld b, e
    rst $38
    rst $38
    ld c, e
    ld a, a
    ld a, a
    dec bc
    rst $38
    rst $38
    rst $00
    rst $00
    add e
    cp e
    ld de, $016d
    ld a, l
    ld a, l
    ld bc, $86c3
    adc h
    nop
    ld a, $00
    ld b, c
    ld d, a
    inc e
    ld e, l
    nop
    nop
    jp z, Jump_010_4399

    adc a
    xor a
    ld bc, $2f0f
    ld d, h
    rrca
    rst $28
    nop
    cpl
    ld b, e
    adc a
    xor a
    adc a
    nop
    inc b
    add hl, bc
    ccf
    rst $38
    inc hl
    db $e3
    dec hl
    db $eb
    inc hl
    db $e3
    ld l, $ee
    add l
    nop
    ld a, h
    inc bc
    db $fc
    rst $38
    call z, Call_010_45cf
    db $ec
    rst $28
    add a
    adc a
    rlca
    add h
    add a
    db $e4
    rst $20
    sbc h
    sbc a
    add h
    add a
    add d
    adc a
    adc l
    nop
    dec a
    nop
    jr nz, @+$59

    adc a
    xor a
    ld bc, $2000
    adc l
    nop
    db $76
    add hl, bc
    ld l, a
    ld l, a
    jr z, jr_010_568a

    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld c, d
    ld l, b
    ld l, b
    ld c, e
    rst $38
    rst $38
    ld b, e
    rst $08
    rst $08
    rlca
    rst $38
    rst $38
    rst $20
    rst $20
    rst $08
    rst $08
    cp a
    cp a
    ld c, c
    rst $38
    rst $38
    rlca
    rst $20
    rst $20
    call z, $b9cc
    cp c
    rst $30
    rst $30
    ld c, e
    rst $38
    rst $38
    ld bc, $8383
    ld b, e

jr_010_568a:
    inc sp
    inc sp
    dec b
    add e
    add e
    di
    di
    rlca
    rlca
    adc l
    ld [bc], a
    ld b, d
    ld bc, $ffff
    db $ec
    ld b, b
    ld c, c
    rst $38
    nop
    nop
    rrca
    ld d, a
    ldh [$ef], a
    nop
    nop
    jp z, $5399

    rrca
    rst $28
    ld bc, $e000
    adc c
    sbc a
    rst $38
    db $e3
    ld l, a
    inc bc
    nop
    rlca
    inc bc
    inc c
    rlca

jr_010_56b8:
    inc c
    rlca

jr_010_56ba:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_010_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    inc a
    rst $20
    cp [hl]
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_010_56b8

    jr nc, jr_010_56ba

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [$03], a
    nop
    rlca
    inc bc
    inc c
    rlca

jr_010_56e8:
    inc c
    rlca

jr_010_56ea:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_010_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    cp [hl]
    rst $20
    inc a
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_010_56e8

    jr nc, jr_010_56ea

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [$03], a
    nop
    rlca
    inc bc
    inc c
    rlca

jr_010_5718:
    inc c
    rlca

jr_010_571a:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_010_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    ld a, l
    rst $20
    inc a
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_010_5718

    jr nc, jr_010_571a

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [$03], a
    nop
    rlca
    inc bc
    inc c
    rlca

jr_010_5748:
    inc c
    rlca

jr_010_574a:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_010_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    ld a, l
    rst $20
    inc a
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_010_5748

    jr nc, jr_010_574a

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [$03], a
    nop
    rlca
    inc bc
    inc c
    rlca

jr_010_5778:
    inc c
    rlca

jr_010_577a:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_010_7e81


    jp $ff7e


    jp $e7ff


    inc a
    rst $20
    inc a
    rst $20
    ld a, l
    ret nz

    nop
    ldh [$c0], a
    jr nc, jr_010_5778

    jr nc, jr_010_577a

    ld h, b
    ret nz

    ldh [$c0], a
    or b
    ldh [$b0], a
    ldh [rP1], a
    nop
    ld a, h
    nop
    ld b, h
    jr c, @+$46

    jr c, jr_010_57ef

    jr c, jr_010_5829

    nop
    nop
    nop
    nop
    nop
    inc c
    rlca

jr_010_57b4:
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    inc bc
    ld bc, $0103
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $08ff
    rst $38
    jr nc, jr_010_57b4

    or b
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    add b
    nop
    ret nz

    add b
    inc c
    rlca

jr_010_57e4:
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rra
    ld bc, $0f1f
    rra

jr_010_57ef:
    add hl, bc
    rra
    ld [$ffff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    sbc c
    rst $38
    ldh [$7f], a
    jr nc, jr_010_57e4

    or b
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    add b
    nop
    ret nz

    add b
    inc c
    rlca

jr_010_5814:
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $0300
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_010_5829:
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    sbc h
    rst $30
    inc e
    rst $30
    jr nc, jr_010_5814

    or b
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    inc c
    rlca
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc

Jump_010_584b:
    ld bc, $0001
    inc bc
    ld bc, $0103
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    add c
    rst $38
    inc bc
    cp $30
    ldh [$b0], a
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ld hl, sp-$80
    ld hl, sp-$10
    ld hl, sp-$70
    ld hl, sp+$10
    inc c
    rlca

jr_010_5874:
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    inc bc
    ld bc, $0103
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nc, jr_010_5874

    or b
    ldh [$e0], a
    ld b, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    ret nz

    add b
    ld h, b
    ret nz

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
    ld a, $03
    ld a, a
    ccf
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    db $10
    rst $38
    and d
    rst $38
    rst $20
    rst $38
    rst $38
    jr @+$3e

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    ld a, h
    ret nz

    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    ccf
    ld [$3f7f], sp
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    db $e4
    ccf
    ld hl, sp+$1f
    rst $30
    rst $38
    rst $38
    jr @+$3e

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    ld a, h
    ret nz

    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    ld a, $03
    ld a, a

jr_010_5915:
    ccf
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    ld a, $ef
    jr c, jr_010_5915

    rst $38
    rst $28
    rst $38
    jr @+$3e

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    ld a, h
    ret nz

    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    ld a, $03
    ld a, a
    ccf
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    rlca
    db $fc
    rrca
    ld hl, sp-$11
    rst $38
    rst $38
    jr @+$3e

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    db $fc
    db $10
    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    ld a, $03
    ld a, a
    ccf
    ld a, a
    jr nz, @+$01

    ld b, b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    ld [bc], a
    rst $38
    ld bc, $e7ff
    rst $38
    rst $38
    jr jr_010_59c7

    jp $ffc3


    rst $38
    inc a
    inc a
    nop
    ld a, h
    ret nz

    cp $fc
    cp $04
    rst $38
    ld [bc], a
    inc bc
    cp $ff
    cp $ff
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    sub b
    ld h, b
    and b
    ld b, b
    and b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_010_59c7:
    nop
    nop
    nop
    rra
    rra
    ccf
    jr nz, @+$62

    ld e, a
    rst $08
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
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
    cp $fe
    rst $38
    ld bc, $fd03
    rst $38
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
    ld h, b
    ld e, a
    rst $08
    or b
    nop
    nop
    nop
    nop
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
    inc bc
    db $fd
    rst $38
    ld bc, $00ff

Call_010_5a24:
    ldh a, [$e6]
    or a
    ret nz

    ldh a, [$e7]
    dec a
    ret


Call_010_5a2c:
    ld a, $00
    call $2fcb
    ld hl, $4000
    ld de, $a188
    ld bc, $0270
    ld a, $77
    call $0e8d
    ld hl, $a188
    ld bc, $01b0
    call Call_010_5504
    ld de, $a188
    ld hl, $9400
    ld bc, $101b
    call $0eba
    call $2fe1
    ret


Call_010_5a58:
    ld a, [$d234]
    push af
    ld a, [$c7dd]
    ld e, a
    ld d, $00
    ld hl, $ded9
    add hl, de
    ld a, [hl]
    ld [$d234], a
    ld a, $c9
    ld [$d108], a
    call $3856
    ld de, $9000
    ld a, $3c
    call $2d83
    pop af
    ld [$d234], a
    ret


    xor a
    ldh [$d4], a
    ld a, $77
    ld hl, $6247
    rst $08
    call Call_010_5af7
    call $0568
    call $0e51
    call $0e5f
    call Call_010_54b7
    call Call_010_547b
    ld a, [$d265]
    ld [$d108], a
    call Call_010_47fd
    call Call_010_4ba0
    ld hl, $c5f4
    ld [hl], $3b
    inc hl
    ld bc, $0013
    ld a, $7f
    call $3041
    ld a, $11
    ld hl, $424d
    rst $08
    call $058a
    call $31f6
    call $3856
    ld de, $9000
    ld a, $3c
    call $2d83
    ld a, $04
    call Call_010_5423
    ld a, [$d108]
    call $37ce
    ret


Call_010_5ad7:
    ld a, $03
    ldh [$d4], a
    ld c, $04
    call $0468
    ret


Call_010_5ae1:
    ld a, $04
    ldh [$d4], a
    ld c, $04
    call $0468
    ret


Call_010_5aeb:
    ldh a, [$e6]
    and a
    jr z, jr_010_5af3

    call Call_010_5ae1

jr_010_5af3:
    call Call_010_5ad7
    ret


Call_010_5af7:
    xor a
    ldh [$d4], a
    ret


    ld bc, $2800
    nop
    rst $38
    inc hl
    nop
    ld [bc], a
    nop
    ld [hl-], a
    ld bc, $19ff
    nop
    inc bc
    dec e
    rrca
    nop
    ret c

    ld a, [bc]
    nop
    inc b
    dec e
    ld [de], a
    nop
    ret c

    rrca
    nop
    dec b
    nop
    ld d, b
    nop
    ret c

    inc d
    nop
    ld b, $22
    jr z, jr_010_5b22

jr_010_5b22:
    rst $38
    inc d
    nop
    rlca
    inc b
    ld c, e
    inc d
    rst $38
    rrca
    add hl, de
    ld [$4b05], sp
    add hl, de
    rst $38
    rrca
    add hl, de
    add hl, bc
    ld b, $4b
    rla
    rst $38
    rrca
    add hl, de
    ld a, [bc]
    nop
    jr z, jr_010_5b3e

jr_010_5b3e:
    rst $38
    inc hl
    nop
    dec bc
    nop
    scf
    nop
    rst $38
    ld e, $00
    inc c
    ld h, $00
    nop
    ld c, h
    dec b
    nop
    dec c
    ld de, $0050
    rst $38
    rrca
    nop
    ld c, $32
    nop
    nop
    rst $38
    ld e, $00
    rrca
    nop
    ld [hl-], a
    nop
    ld a, [c]
    ld e, $00
    db $10
    sub l
    jr z, jr_010_5b6a

    rst $38
    inc hl

jr_010_5b6a:
    nop
    ld de, $3c00
    ld [bc], a
    rst $38
    inc hl
    nop
    ld [de], a
    inc e
    nop
    nop
    rst $38
    inc d
    nop
    inc de
    sbc e
    ld b, [hl]
    ld [bc], a
    ld a, [c]
    rrca
    nop
    inc d
    ld a, [hl+]
    rrca
    nop
    cp a
    inc d
    nop
    dec d
    nop
    ld d, b
    nop
    cp a
    inc d
    nop
    ld d, $00
    inc hl
    ld d, $ff
    ld a, [bc]
    nop
    rla
    sub [hl]
    ld b, c
    nop
    rst $38
    inc d
    ld c, h
    jr jr_010_5bca

    ld e, $01
    rst $38
    ld e, $00
    add hl, de
    nop
    ld a, b
    nop
    cp a
    dec b
    nop
    ld a, [de]
    dec l
    ld b, [hl]
    ld bc, $19f2
    nop
    dec de
    rra
    inc a
    ld bc, $0fd8
    ld c, h
    inc e
    rla
    nop
    inc b
    rst $38
    dec b
    nop
    dec e
    rra
    ld b, [hl]
    nop
    rst $38
    rrca
    ld c, h
    ld e, $00
    ld b, c
    nop

jr_010_5bca:
    rst $38
    add hl, de
    nop
    rra
    dec e
    rrca
    nop
    ret c

    inc d
    nop
    jr nz, jr_010_5bfc

    ld bc, $4c00
    dec b
    nop
    ld hl, $2300
    nop
    ld a, [c]
    inc hl
    nop
    ld [hl+], a
    ld b, $55
    nop
    rst $38
    rrca
    ld c, h
    inc hl
    ld a, [hl+]
    rrca
    dec de
    rst $38
    inc d
    nop
    inc h
    jr nc, @+$5c

    nop
    ret c

    inc d
    nop
    dec h
    dec de
    ld e, d
    nop
    rst $38

jr_010_5bfc:
    inc d
    nop
    ld h, $30
    ld a, b
    nop
    rst $38
    rrca
    nop
    daa
    inc de
    nop
    nop
    rst $38
    ld e, $00
    jr z, jr_010_5c10

    rrca
    inc bc

jr_010_5c10:
    rst $38
    inc hl
    ld c, h
    add hl, hl
    ld c, l
    add hl, de
    rlca
    rst $38
    inc d
    inc sp
    ld a, [hl+]
    dec e
    ld c, $07
    ret c

    inc d
    nop
    dec hl
    inc de
    nop
    nop
    rst $38
    ld e, $00
    inc l
    rra
    inc a
    dec de
    rst $38
    add hl, de
    ld c, h
    dec l
    ld [de], a
    nop
    nop
    rst $38
    jr z, jr_010_5c36

jr_010_5c36:
    ld l, $1c
    nop
    nop
    rst $38
    inc d
    nop
    cpl
    ld bc, $0000
    or d
    rrca
    nop
    jr nc, jr_010_5c77

    nop
    nop
    adc h
    inc d
    nop
    ld sp, $1429
    nop
    rst $38
    inc d
    nop
    ld [hl-], a
    ld d, [hl]
    nop
    nop
    rst $38
    inc d
    nop
    inc sp
    ld b, l
    jr z, jr_010_5c60

    rst $38
    ld e, $19

jr_010_5c60:
    inc [hl]
    inc b
    jr z, @+$16

    rst $38
    add hl, de
    add hl, de
    dec [hl]
    inc b
    ld e, a
    inc d
    rst $38
    rrca
    add hl, de
    ld [hl], $2e
    nop
    add hl, de
    rst $38
    ld e, $00
    scf
    nop

jr_010_5c77:
    jr z, jr_010_5c8e

    rst $38
    add hl, de
    nop
    jr c, jr_010_5c7e

jr_010_5c7e:
    ld a, b
    dec d
    call z, RST_08
    add hl, sp
    nop
    ld e, a
    dec d
    rst $38
    rrca
    nop
    ld a, [hl-]
    dec b
    ld e, a
    add hl, de

jr_010_5c8e:
    rst $38
    ld a, [bc]
    add hl, de
    dec sp
    dec b
    ld a, b
    add hl, de
    or d
    dec b
    add hl, de
    inc a
    ld c, h
    ld b, c
    jr @+$01

    inc d
    add hl, de
    dec a
    ld b, [hl]
    ld b, c

Call_010_5ca2:
    dec d
    rst $38
    inc d
    add hl, de
    ld a, $44
    ld b, c
    add hl, de
    rst $38
    inc d
    add hl, de
    ccf
    ld d, b
    sub [hl]
    nop
    push hl
    dec b
    nop
    ld b, b
    nop
    inc hl
    ld [bc], a
    rst $38
    inc hl
    nop
    ld b, c
    nop
    ld d, b
    ld [bc], a
    rst $38
    inc d
    nop
    ld b, d

Jump_010_5cc3:
    nop
    ld d, b
    ld bc, $19ff
    nop
    ld b, e
    rra
    ld [hl-], a
    ld bc, $14e5
    ld c, h
    ld b, h
    ld e, c
    ld bc, $ff01
    inc d
    nop
    ld b, l
    ld d, a
    ld bc, $ff01
    inc d
    nop
    ld b, [hl]
    nop
    ld d, b
    nop
    rst $38
    rrca
    nop
    ld b, a
    inc bc
    inc d
    ld d, $ff
    inc d
    nop
    ld c, b
    inc bc
    jr z, jr_010_5d06

    rst $38
    ld a, [bc]
    nop
    ld c, c
    ld d, h
    nop
    ld d, $e5
    ld a, [bc]
    nop
    ld c, d
    dec c
    nop
    nop
    rst $38
    jr z, jr_010_5d01

jr_010_5d01:
    ld c, e
    nop
    scf
    ld d, $f2

jr_010_5d06:
    add hl, de
    nop
    ld c, h
    sub a
    ld a, b
    ld d, $ff
    ld a, [bc]
    nop
    ld c, l
    ld b, d
    nop
    inc bc
    cp a
    inc hl
    nop
    ld c, [hl]
    ld b, e
    nop
    ld d, $bf
    ld e, $00
    ld c, a
    ld bc, $1600
    cp a
    rrca
    nop
    ld d, b
    ld c, h
    ld d, b
    ld d, $ff
    inc d
    nop
    ld d, c
    inc d
    nop
    rlca
    ld a, [c]
    jr z, jr_010_5d32

jr_010_5d32:
    ld d, d
    add hl, hl
    jr z, jr_010_5d50

    rst $38
    ld a, [bc]
    nop
    ld d, e
    ld a, [hl+]
    rrca
    inc d
    or d
    rrca
    nop
    ld d, h
    ld b, $28
    rla
    rst $38
    ld e, $19
    ld d, l
    ld b, $5f
    rla
    rst $38
    rrca
    add hl, de
    ld d, [hl]
    ld b, e

jr_010_5d50:
    nop
    rla
    rst $38
    inc d
    nop
    ld d, a
    sbc b
    ld a, b
    rla
    or d
    ld a, [bc]
    ld c, h
    ld e, b
    nop
    ld [hl-], a
    dec b
    rst $38
    rrca
    nop
    ld e, c
    sub e
    ld h, h
    inc b
    rst $38
    ld a, [bc]
    nop
    ld e, d
    ld h, $01
    inc b
    ld c, h
    dec b
    nop
    ld e, e
    sbc e
    inc a
    inc b
    rst $38
    ld a, [bc]
    nop
    ld e, h
    ld hl, $0300
    rst $38
    ld a, [bc]
    nop
    ld e, l
    ld c, h
    ld [hl-], a
    jr @+$01

    add hl, de
    add hl, de
    ld e, [hl]
    ld c, b
    ld e, d
    jr @+$01

    ld a, [bc]
    add hl, de
    ld e, a
    ld bc, $1800
    or d
    inc d
    nop
    ld h, b
    ld a, [bc]
    nop
    jr @+$01

    jr z, jr_010_5d9b

jr_010_5d9b:
    ld h, c
    inc [hl]
    nop
    jr @+$01

    ld e, $00
    ld h, d
    ld h, a
    jr z, jr_010_5da6

jr_010_5da6:
    rst $38
    ld e, $00
    ld h, e
    ld d, c
    inc d
    nop
    rst $38
    inc d
    nop
    ld h, h
    sbc c
    nop
    jr @+$01

    inc d
    nop
    ld h, l
    ld d, a
    ld bc, $ff08
    rrca
    nop
    ld h, [hl]
    ld d, d
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    ld h, a
    dec sp
    nop
    nop
    ret c

    jr z, jr_010_5dcc

jr_010_5dcc:
    ld l, b
    stop
    nop
    rst $38
    rrca
    nop
    ld l, c
    jr nz, jr_010_5dd6

jr_010_5dd6:
    nop
    rst $38
    inc d
    nop
    ld l, d
    dec bc
    nop
    nop
    rst $38
    ld e, $00
    ld l, e
    stop
    nop
    rst $38
    inc d
    nop
    ld l, h
    rla
    nop
    nop
    rst $38
    dec b
    nop
    ld l, l
    ld sp, $0800
    rst $38
    ld a, [bc]
    nop
    ld l, [hl]
    dec bc
    nop
    dec d
    rst $38
    jr z, jr_010_5dfd

jr_010_5dfd:
    ld l, a
    sbc h
    nop
    nop
    rst $38
    jr z, jr_010_5e04

jr_010_5e04:
    ld [hl], b
    inc sp
    nop
    jr @+$01

    ld e, $00
    ld [hl], c
    inc hl
    nop
    jr @+$01

    ld e, $00
    ld [hl], d
    add hl, de
    nop
    add hl, de
    rst $38

Jump_010_5e17:
    ld e, $00
    ld [hl], e
    ld b, c
    nop
    jr @+$01

    inc d
    nop
    ld [hl], h
    cpl
    nop
    nop
    rst $38
    ld e, $00
    ld [hl], l
    ld a, [de]
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    db $76
    ld d, e
    nop
    nop
    rst $38
    inc hl
    nop
    ld [hl], a
    add hl, bc
    nop
    ld [bc], a
    rst $38
    inc d
    nop
    ld a, b
    rlca
    ret z

    nop
    rst $38
    ld bc, $7900
    nop
    ld h, h
    nop
    cp a
    ld a, [bc]
    nop
    ld a, d
    ld b, $14
    ld [$1eff], sp
    ld c, h
    ld a, e
    ld [bc], a
    inc d
    inc bc
    or d
    inc d
    ld h, [hl]
    ld a, h
    ld [bc], a
    ld b, c
    inc bc
    rst $38
    inc d
    ld c, h
    ld a, l
    rra
    ld b, c
    inc b
    ret c

    inc d
    add hl, de
    ld a, [hl]
    inc b
    ld a, b
    inc d
    ret c

    ld [$7f19], sp
    nop
    ld d, b
    dec d
    rst $38
    rrca
    nop
    add b
    ld a, [hl+]
    inc hl
    dec d
    cp a
    ld a, [bc]
    nop
    add c
    ld de, $003c
    rst $38
    inc d
    nop
    add d
    sub c
    ld h, h
    nop
    rst $38
    rrca
    nop
    add e
    dec e
    inc d
    nop
    rst $38
    rrca
    nop
    add h
    ld b, [hl]
    ld a, [bc]
    nop
    rst $38
    inc hl
    add hl, de
    add l
    ld [hl], $00
    jr @+$01

    inc d
    nop
    add [hl]
    rla
    nop
    jr @+$01

    ld a, [bc]
    nop
    add a
    jr nz, jr_010_5ea8

jr_010_5ea8:
    nop
    rst $38
    inc d
    nop
    adc b
    dec l
    ld d, l
    ld bc, $14e5
    nop
    adc c
    ld b, e
    nop
    dec de
    rst $38
    ld e, $00
    adc d
    ld [$1864], sp
    rst $38
    rrca
    nop
    adc e
    ld b, d
    nop
    inc bc
    adc h
    jr z, jr_010_5ec8

jr_010_5ec8:
    adc h
    dec e
    rrca
    nop
    ret c

    inc d
    nop
    adc l
    inc bc
    inc d
    rlca
    rst $38
    rrca
    nop
    adc [hl]
    ld bc, $0000
    push hl
    ld a, [bc]
    nop
    adc a
    rra
    ld a, b
    ld [bc], a
    rst $38
    dec b
    nop
    sub b
    add hl, sp
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    sub c
    ld b, [hl]
    inc d
    dec d
    rst $38
    ld e, $19
    sub d
    ld c, h
    ld b, [hl]
    nop
    rst $38
    ld a, [bc]
    inc sp
    sub e
    ld bc, $1600
    rst $38
    rrca
    nop
    sub h
    rla
    nop
    nop
    or d
    dec b
    nop
    sub l
    ld d, a
    ld bc, $ff13
    rrca
    nop
    sub [hl]
    ld d, l
    nop
    nop
    rst $38
    jr z, jr_010_5f15

jr_010_5f15:
    sub a
    inc sp
    nop
    inc bc
    rst $38
    jr z, jr_010_5f1c

jr_010_5f1c:
    sbc b
    nop
    ld a, b
    dec d
    rst $38
    ld a, [bc]
    nop
    sbc c
    rlca
    ld_long a, $ff00
    ld bc, $9a00
    dec e
    ld [de], a
    nop
    call z, $000f
    sbc e
    inc l
    ld [hl-], a
    inc b
    push hl
    ld a, [bc]
    nop
    sbc h
    jr nz, jr_010_5f3b

jr_010_5f3b:
    jr @+$01

    ld a, [bc]
    nop
    sbc l
    rra
    ld c, e
    dec b
    push hl
    ld a, [bc]
    ld c, h
    sbc [hl]
    rra
    ld d, b
    nop
    push hl
    rrca
    add hl, de
    sbc a
    ld a, [bc]
    nop
    nop
    rst $38
    ld e, $00
    and b
    ld e, $00
    nop
    rst $38
    ld e, $00
    and c
    inc h
    ld d, b
    nop
    rst $38
    ld a, [bc]
    inc sp
    and d
    jr z, jr_010_5f66

    inc de

jr_010_5f66:
    rst $38
    ld a, [bc]
    nop
    and e
    nop
    ld b, [hl]
    nop
    rst $38
    inc d
    nop
    and h
    ld c, a
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    and l
    jr nc, jr_010_5fac

    nop
    rst $38
    ld bc, $a600
    ld e, a
    nop
    nop
    rst $38
    ld bc, $a700
    ld l, b
    ld [hl-], a
    ld bc, $0aff
    nop
    xor b
    ld l, c
    jr z, jr_010_5fab

    rst $38
    ld a, [bc]
    rst $38
    xor c
    ld l, d
    nop
    rlca
    rst $38
    ld a, [bc]
    nop
    xor d
    ld e, [hl]
    nop
    nop
    rst $38
    dec b
    nop
    xor e
    ld l, e
    nop
    ld [$0fff], sp
    nop
    xor h
    ld l, h
    inc a

jr_010_5fab:
    inc d

jr_010_5fac:
    rst $38
    add hl, de
    add hl, de
    xor l
    ld e, h
    jr z, jr_010_5fb3

jr_010_5fb3:
    rst $38
    rrca
    ld c, h
    xor [hl]
    ld l, l
    nop
    inc de
    rst $38
    ld a, [bc]
    nop
    xor a
    ld h, e
    ld bc, $ff00
    rrca
    nop
    or b
    ld e, l
    nop
    nop
    rst $38
    ld e, $00
    or c
    inc h
    ld a, b
    ld [bc], a
    rst $38
    ld a, [bc]
    nop
    or d
    inc a
    nop
    ld d, $ff
    rrca
    nop
    or e
    ld h, e
    ld bc, $ff01
    rrca
    nop
    or h
    ld h, h
    nop
    ld [$0aff], sp
    nop
    or l
    dec b
    jr z, jr_010_6004

    rst $38
    add hl, de
    add hl, de
    or [hl]
    ld l, a
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    or a
    ld h, a
    jr z, jr_010_5ffa

    rst $38

jr_010_5ffa:
    ld e, $00
    cp b
    inc a
    nop
    nop
    push hl
    ld a, [bc]
    nop
    cp c

jr_010_6004:
    ld de, $1b3c
    rst $38
    inc d
    nop
    cp d
    ld sp, $0000
    cp a
    ld a, [bc]
    nop
    cp e
    adc [hl]
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    cp h
    ld [bc], a
    ld e, d
    inc bc
    rst $38
    ld a, [bc]
    ld c, h
    cp l
    ld c, c
    inc d
    inc b
    rst $38
    ld a, [bc]
    rst $38
    cp [hl]
    ld c, c
    ld e, a
    dec d
    rst $38
    rrca
    ld a, a
    cp a
    ld [hl], b
    nop
    inc b
    rst $38
    inc d
    nop
    ret nz

    ld b, $64
    rla
    ld a, a
    dec b
    rst $38
    pop bc
    ld [hl], c
    nop
    nop
    rst $38
    jr z, jr_010_6042

jr_010_6042:
    jp nz, $0062

    ld [$05ff], sp
    nop
    jp $0072


    nop
    rst $38
    dec b
    nop
    call nz, $3746
    add hl, de
    ld a, [c]
    rrca
    rst $38
    push bc
    ld l, a
    nop
    ld bc, $05ff
    nop
    add $1d
    add hl, de
    inc b
    call z, $000a
    rst $00
    ld e, [hl]
    nop
    nop
    rst $38
    dec b
    nop
    ret z

    dec de
    ld e, d
    ld a, [de]
    rst $38
    rrca
    nop
    ret


    ld [hl], e
    nop
    dec b
    rst $38
    ld a, [bc]
    nop
    jp z, $3c03

    ld d, $ff
    ld a, [bc]
    nop
    bit 6, h
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    call z, $003a
    nop
    rst $38
    inc d
    nop
    call $1e75
    dec b
    push hl
    inc d
    nop
    adc $65
    jr z, jr_010_609a

jr_010_609a:
    rst $38
    jr z, jr_010_609d

jr_010_609d:
    rst $08
    halt
    nop
    push hl
    rrca
    rst $38
    ret nc

    jr nz, jr_010_60a7

jr_010_60a7:
    nop
    rst $38
    ld a, [bc]
    nop
    pop de
    ld b, $41
    rla
    rst $38
    inc d
    ld c, h
    jp nc, $0a77

    rlca
    ld a, [c]
    inc d
    nop
    db $d3
    adc d
    ld d, b
    add hl, bc
    rst $38
    add hl, de
    add hl, de
    call nc, $006a
    nop
    rst $38
    dec b
    nop
    push de
    ld a, b
    nop
    nop
    rst $38
    rrca
    nop
    sub $61
    nop
    nop
    rst $38
    ld a, [bc]
    nop
    rst $10
    ld h, [hl]
    nop
    nop
    rst $38
    dec b
    nop
    ret c

    nop
    ld h, [hl]
    nop
    rst $38
    inc d
    nop
    reti


    ld a, d
    ld bc, $e500
    rrca
    nop
    jp c, $6600

    nop
    rst $38
    inc d
    nop
    db $db
    ld a, h
    nop
    nop
    rst $38
    add hl, de
    nop
    call c, $005b
    nop
    rst $38
    inc d
    nop
    db $dd
    ld a, l
    ld a, b
    inc d
    rst $38
    ld a, [bc]
    ld a, a
    sbc $7e
    ld bc, $ff04
    ld e, $00
    rst $18
    ld c, h
    ld h, h
    ld bc, $057f
    rst $38
    ldh [rP1], a
    ld a, b
    rlca
    ret c

    ld a, [bc]
    nop
    pop hl
    ld b, $3c
    ld a, [de]
    rst $38
    inc d
    ld c, h
    ld [c], a
    ld a, a
    nop
    nop
    rst $38
    jr z, jr_010_6129

jr_010_6129:
    db $e3
    ld e, d
    nop
    nop
    rst $38
    dec b
    nop
    db $e4
    add b
    jr z, jr_010_614f

    rst $38
    inc d
    nop
    push hl
    add c
    inc d
    nop
    rst $38
    jr z, jr_010_613e

jr_010_613e:
    and $18
    nop
    nop
    rst $38
    inc d
    nop
    rst $20
    ld b, l
    ld h, h
    add hl, bc
    ret c

    rrca
    ld c, h
    add sp, -$75
    ld h, h

jr_010_614f:
    add hl, bc
    rst $38
    ld a, [bc]
    add hl, de
    jp hl


    ld de, HeaderSGBFlag
    rst $38
    ld a, [bc]
    nop
    ld [$0020], a
    nop
    rst $38
    ld a, [bc]
    nop
    db $eb
    jr nz, jr_010_6164

jr_010_6164:
    ld d, $ff
    ld a, [bc]
    nop
    db $ec
    jr nz, jr_010_616b

jr_010_616b:
    nop
    rst $38
    ld a, [bc]
    nop
    db $ed
    add a
    ld bc, $ff00
    rrca
    nop
    xor $00
    ld h, h
    ld bc, $08cc
    nop
    rst $28
    sub d
    jr z, jr_010_619b

    rst $38
    inc d
    inc sp
    ldh a, [$88]
    nop
    dec d
    push hl
    dec b
    nop
    pop af
    adc c
    nop
    inc d
    push hl
    dec b
    nop
    ld a, [c]
    ld c, b
    ld d, b
    dec de
    rst $38
    rrca
    inc sp
    di
    sub b

jr_010_619b:
    ld bc, $ff18
    inc d
    nop
    db $f4
    adc a
    nop
    nop
    rst $38
    ld a, [bc]

jr_010_61a6:
    nop
    push af
    ld h, a
    ld h, h
    nop
    rst $38
    ld a, [bc]
    nop
    or $8c
    ld h, h
    dec b
    rst $38
    ld [$f719], sp
    nop
    ld d, b
    ld [$0fff], sp
    inc sp
    ld hl, sp-$6c
    ld d, b
    jr jr_010_61a6

    rrca
    nop
    ld sp, hl
    ld b, l
    inc d
    ld bc, $0fff
    ld a, a
    ld a, [$0f2a]
    dec d
    or d
    rrca
    nop
    ei
    sbc d
    ld a, [bc]
    dec de
    rst $38
    ld a, [bc]
    nop
    ld hl, $d1e8
    xor a
    ld [hl], a
    ld a, [$d109]
    ld c, a
    ld b, $01
    call Call_010_6577
    xor a
    ld [$d268], a
    dec a
    ld [$d109], a
    push hl
    push bc
    push de
    ld hl, $dcd7
    push hl

Jump_010_61f5:
jr_010_61f5:
    ld hl, $d109
    inc [hl]
    pop hl
    inc hl
    ld a, [hl]
    cp $ff
    jp z, Jump_010_63ff

    ld [$d1ea], a
    push hl
    ld a, [$d109]
    ld c, a
    ld hl, $d1e8
    ld b, $02
    call Call_010_6577
    ld a, c
    and a
    jp z, Jump_010_61f5

    ld a, [$d1ea]
    dec a
    ld b, $00
    ld c, a
    ld hl, $65b1
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    xor a
    ld [$cf5f], a
    ld a, $1f
    call $2d83
    pop hl

Jump_010_6230:
    ld a, [hl+]
    and a
    jr z, jr_010_61f5

    ld b, a
    cp $03
    jr z, jr_010_62ae

    ld a, [$c2dc]
    and a
    jp nz, Jump_010_63f9

    ld a, b
    cp $02
    jp z, Jump_010_62d5

    ld a, [$d1e9]
    and a
    jp nz, Jump_010_63f9

    ld a, b
    cp $01
    jp z, Jump_010_62ee

    cp $04
    jr z, jr_010_6283

    ld a, [$d12d]
    cp [hl]
    jp c, Jump_010_63f8

    call Call_010_6461
    jp z, Jump_010_63f8

    push hl
    ld de, $d134
    ld hl, $d136
    ld c, $02
    call $31db
    ld a, $03
    jr z, jr_010_627a

    ld a, $02
    jr c, jr_010_627a

    ld a, $01

jr_010_627a:
    pop hl
    inc hl
    cp [hl]
    jp nz, Jump_010_63f9

    inc hl
    jr jr_010_62fd

jr_010_6283:
    ld a, [$d129]
    cp $dc
    jp c, Jump_010_63f9

    call Call_010_6461
    jp z, Jump_010_63f9

    ld a, [hl+]
    cp $01
    jr z, jr_010_62fd

    cp $02
    jr z, jr_010_62a4

    ld a, [$d269]
    cp $02
    jp nz, Jump_010_63fa

    jr jr_010_62fd

jr_010_62a4:
    ld a, [$d269]
    cp $02
    jp z, Jump_010_63fa

    jr jr_010_62fd

jr_010_62ae:
    ld a, [$c2dc]
    and a
    jp z, Jump_010_63f9

    call Call_010_6461
    jp z, Jump_010_63f9

    ld a, [hl+]
    ld b, a
    inc a
    jr z, jr_010_62fd

    ld a, [$c2dc]
    cp $01
    jp z, Jump_010_63fa

    ld a, [$d10f]
    cp b
    jp nz, Jump_010_63fa

    xor a
    ld [$d10f], a
    jr jr_010_62fd

Jump_010_62d5:
    ld a, [hl+]
    ld b, a
    ld a, [$d106]
    cp b
    jp nz, Jump_010_63fa

    ld a, [$d1e9]
    and a
    jp z, Jump_010_63fa

    ld a, [$c2dc]
    and a
    jp nz, Jump_010_63fa

    jr jr_010_62fd

Jump_010_62ee:
    ld a, [hl+]
    ld b, a
    ld a, [$d12d]
    cp b
    jp c, Jump_010_63fa

    call Call_010_6461
    jp z, Jump_010_63fa

jr_010_62fd:
    ld a, [$d12d]
    ld [$d143], a
    ld a, $01
    ld [$d268], a
    push hl
    ld a, [hl]
    ld [$d1eb], a
    ld a, [$d109]
    ld hl, $de41
    call $38a2
    call $30d6
    ld hl, $6482
    call $1057
    ld c, $32
    call $0468
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0c14
    call $0fb6
    ld a, $01
    ldh [$d4], a
    call $300b
    ld a, $13
    ld hl, $65e1
    rst $08
    push af
    call $300b
    pop af
    jp c, Jump_010_6454

    ld hl, $6473
    call $1057
    pop hl
    ld a, [hl]
    ld [$cf60], a
    ld [$d10e], a
    ld [$d1eb], a
    ld [$d265], a
    call $343b
    push hl
    ld hl, $6478
    call $1065
    ld a, $41
    ld hl, $6094
    rst $08
    ld de, $0000
    call $3b97
    ld de, $0002
    call $3c23
    call $3c55
    ld c, $28
    call $0468
    call $0fc8
    call Call_010_6414
    call $3856
    ld hl, $d118
    ld de, $d132
    ld b, $01
    ld a, $0c
    call $2d83
    ld a, [$d109]
    ld hl, $dcdf
    ld bc, $0030
    call $30fe
    ld e, l
    ld d, h
    ld bc, $0024
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $d133
    ld a, [hl-]
    sub c
    ld c, a
    ld a, [hl]
    sbc b
    ld b, a
    ld hl, $d131
    ld a, [hl]
    add c
    ld [hl-], a
    ld a, [hl]
    adc b
    ld [hl], a
    ld hl, $d10e
    ld bc, $0030
    call $3026
    ld a, [$cf60]
    ld [$d265], a
    xor a
    ld [$cf5f], a
    call Call_010_6487
    ld a, [$d265]
    dec a
    call $3380
    ld a, [$d265]
    cp $c9
    jr nz, jr_010_63ec

    ld hl, $d123
    ld a, $2d
    call $2d83
    ld hl, $7a18
    ld a, $3e
    rst $08

jr_010_63ec:
    pop de
    pop hl
    ld a, [$d10e]
    ld [hl], a
    push hl
    ld l, e
    ld h, d
    jp Jump_010_61f5


Jump_010_63f8:
    inc hl

Jump_010_63f9:
    inc hl

Jump_010_63fa:
    inc hl
    jp Jump_010_6230


    pop hl

Jump_010_63ff:
    pop de
    pop bc
    pop hl
    ld a, [$c2dc]
    and a
    ret nz

    ld a, [$d22d]
    and a
    ret nz

    ld a, [$d268]
    and a
    call nz, $3d47
    ret


Call_010_6414:
    ld a, [$cf60]
    push af
    ld a, [$d236]
    ld [$d265], a
    call $343b
    pop af
    ld [$cf60], a
    ld hl, $d073
    ld de, $d086

jr_010_642b:
    ld a, [de]
    inc de
    cp [hl]
    inc hl
    ret nz

    cp $50
    jr nz, jr_010_642b

    ld a, [$d109]
    ld bc, $000b
    ld hl, $de41
    call $30fe
    push hl
    ld a, [$cf60]
    ld [$d265], a
    call $343b
    ld hl, $d073
    pop de
    ld bc, $000b
    jp $3026


Jump_010_6454:
    ld hl, $647d
    call $1057
    call $0fc8
    pop hl
    jp Jump_010_61f5


Call_010_6461:
    push hl
    ld a, [$d109]
    ld hl, $dce0
    ld bc, $0030
    call $30fe
    ld a, [hl]
    cp $70
    pop hl
    ret


    ld d, $92
    ld c, e
    ld [hl], c
    ld d, b
    ld d, $af
    ld c, e
    ld [hl], c
    ld d, b
    ld d, $c5
    ld c, e
    ld [hl], c
    ld d, b
    ld d, $e3
    ld c, e
    ld [hl], c
    ld d, b

Call_010_6487:
    ld a, [$d265]
    ld [$d108], a
    dec a
    ld b, $00
    ld c, a
    ld hl, $65b1
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_010_6499:
    ld a, [hl+]
    and a
    jr nz, jr_010_6499

jr_010_649d:
    ld a, [hl+]
    and a
    jr z, jr_010_64da

    ld b, a
    ld a, [$d143]
    cp b
    ld a, [hl+]
    jr nz, jr_010_649d

    push hl
    ld d, a
    ld hl, $dce1
    ld a, [$d109]
    ld bc, $0030
    call $30fe
    ld b, $04

jr_010_64b9:
    ld a, [hl+]
    cp d
    jr z, jr_010_64c2

    dec b
    jr nz, jr_010_64b9

    jr jr_010_64c5

jr_010_64c2:
    pop hl
    jr jr_010_649d

jr_010_64c5:
    ld a, d
    ld [$d262], a
    ld [$d265], a
    call $34f8
    call $30d6
    ld a, $00
    call $2d83
    pop hl
    jr jr_010_649d

jr_010_64da:
    ld a, [$d108]
    ld [$d265], a
    ret


    push hl
    push de
    push bc
    ld hl, $65b1
    ld b, $00
    ld a, [$d108]
    dec a
    add a
    rl b
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_010_64f5:
    ld a, [hl+]
    and a
    jr nz, jr_010_64f5

    jr jr_010_64fd

jr_010_64fb:
    pop de

jr_010_64fc:
    inc hl

jr_010_64fd:
    ld a, [hl+]
    and a
    jp z, Jump_010_656a

    ld b, a
    ld a, [$d143]
    cp b
    jp c, Jump_010_656a

    ld a, [$d1ea]
    and a
    jr z, jr_010_6516

    ld a, [$d002]
    cp b
    jr nc, jr_010_64fc

jr_010_6516:
    push de
    ld c, $04

jr_010_6519:
    ld a, [de]
    inc de
    cp [hl]
    jr z, jr_010_64fb

    dec c
    jr nz, jr_010_6519

    pop de
    push de
    ld c, $04

jr_010_6525:
    ld a, [de]
    and a
    jr z, jr_010_6547

    inc de
    dec c
    jr nz, jr_010_6525

    pop de
    push de
    push hl
    ld h, d
    ld l, e
    call Call_010_656e
    ld a, [$d1ea]
    and a
    jr z, jr_010_6546

    push de
    ld bc, $0012
    add hl, bc
    ld d, h
    ld e, l
    call Call_010_656e
    pop de

jr_010_6546:
    pop hl

jr_010_6547:
    ld a, [hl]
    ld [de], a
    ld a, [$d1ea]
    and a
    jr z, jr_010_64fb

    push hl
    ld a, [hl]
    ld hl, $0015
    add hl, de
    push hl
    dec a
    ld hl, $5b00
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    pop hl
    ld [hl], a
    pop hl
    jr jr_010_64fb

Jump_010_656a:
    pop bc
    pop de
    pop hl
    ret


Call_010_656e:
    ld c, $03

jr_010_6570:
    inc de
    ld a, [de]
    ld [hl+], a
    dec c
    jr nz, jr_010_6570

    ret


Call_010_6577:
    push de
    ld d, $00
    ld a, $03
    call $2d83
    pop de
    ret


    ld c, $00

jr_010_6583:
    ld hl, $65b1
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_010_658d:
    ld a, [hl+]
    and a
    jr z, jr_010_65a2

    cp $05
    jr nz, jr_010_6596

    inc hl

jr_010_6596:
    inc hl
    ld a, [$d108]
    cp [hl]
    jr z, jr_010_65aa

    inc hl
    ld a, [hl]
    and a
    jr nz, jr_010_658d

jr_010_65a2:
    inc c
    ld a, c
    cp $fb
    jr c, jr_010_6583

    and a
    ret


jr_010_65aa:
    inc c
    ld a, c
    ld [$d108], a
    scf
    ret


    and a
    ld h, a
    jp nz, $e167

    ld h, a
    rst $38
    ld h, a
    jr jr_010_6623

    inc sp
    ld l, b
    ld c, a
    ld l, b
    ld l, d
    ld l, b
    adc c
    ld l, b
    and a
    ld l, b
    or b
    ld l, b
    cp c
    ld l, b
    rst $08
    ld l, b
    ret c

    ld l, b
    pop hl
    ld l, b
    di
    ld l, b
    ld [$2169], sp
    ld l, c
    add hl, sp
    ld l, c
    ld c, h
    ld l, c
    ld e, [hl]
    ld l, c
    ld [hl], e
    ld l, c
    adc c
    ld l, c
    sbc [hl]
    ld l, c
    or h
    ld l, c
    rst $08
    ld l, c
    reti


    ld l, c
    xor $69
    inc b
    ld l, d
    add hl, de
    ld l, d
    ld l, $6a
    ld a, [hl-]
    ld l, d
    ld c, a
    ld l, d
    ld h, h
    ld l, d
    ld [hl], b
    ld l, d
    adc c
    ld l, d
    sub e
    ld l, d
    xor b
    ld l, d
    or h
    ld l, d
    bit 5, d
    push de
    ld l, d
    add sp, $6a
    rst $38
    ld l, d
    inc d
    ld l, e
    jr nc, @+$6d

    ld a, [hl-]
    ld l, e
    ld c, a
    ld l, e
    ld h, l
    ld l, e
    add b
    ld l, e
    sbc h
    ld l, e
    or c
    ld l, e
    ret


    ld l, e
    sbc $6b
    ld a, [c]
    ld l, e
    rlca
    ld l, h
    rra
    ld l, h
    jr c, jr_010_668f

jr_010_6623:
    ld d, h
    ld l, h
    ld l, c
    ld l, h
    ld [hl], l
    ld l, h
    adc d
    ld l, h
    and [hl]
    ld l, h
    or h
    ld l, h
    cp e
    ld l, h
    call nc, $ea6c
    ld l, h
    inc bc
    ld l, l
    ld e, $6d
    ld [hl], $6d
    ld c, a
    ld l, l
    ld l, h
    ld l, l
    db $76
    ld l, l
    adc l
    ld l, l
    and l
    ld l, l
    cp h
    ld l, l
    rst $10
    ld l, l
    pop af
    ld l, l
    ld [$246e], sp
    ld l, [hl]
    ld a, $6e
    ld e, b
    ld l, [hl]
    ld l, a
    ld l, [hl]
    adc c
    ld l, [hl]
    sbc e
    ld l, [hl]
    or b
    ld l, [hl]
    add $6e
    reti


    ld l, [hl]
    db $ed
    ld l, [hl]
    inc b
    ld l, a
    ld a, [de]
    ld l, a
    cpl
    ld l, a
    dec a
    ld l, a
    ld d, h
    ld l, a
    ld l, l
    ld l, a
    add e
    ld l, a
    sbc b
    ld l, a
    or c
    ld l, a
    bit 5, a
    ldh [$6f], a
    or $6f
    dec c
    ld [hl], b
    daa
    ld [hl], b
    ld a, $70
    ld c, d
    ld [hl], b
    ld h, l
    ld [hl], b
    add e
    ld [hl], b
    sbc e
    ld [hl], b
    or c
    ld [hl], b
    jp $da70


    ld [hl], b
    ld a, [c]
    ld [hl], b

jr_010_668f:
    rlca
    ld [hl], c
    dec e
    ld [hl], c
    jr c, jr_010_6706

    ld c, [hl]
    ld [hl], c
    ld h, d
    ld [hl], c
    ld [hl], l
    ld [hl], c
    adc [hl]
    ld [hl], c
    and l
    ld [hl], c
    cp e
    ld [hl], c
    call nc, $e071
    ld [hl], c
    ld hl, sp+$71
    ld de, $2b72
    ld [hl], d
    ccf
    ld [hl], d
    ld e, c
    ld [hl], d
    ld l, e
    ld [hl], d
    ld a, a
    ld [hl], d
    adc d
    ld [hl], d
    sbc h
    ld [hl], d
    or h
    ld [hl], d
    cp b
    ld [hl], d
    reti


    ld [hl], d
    rst $28
    ld [hl], d
    dec b
    ld [hl], e
    dec de
    ld [hl], e
    inc [hl]
    ld [hl], e
    ld c, c
    ld [hl], e
    ld e, a
    ld [hl], e
    ld [hl], h
    ld [hl], e
    adc d
    ld [hl], e
    sbc h
    ld [hl], e
    or d
    ld [hl], e
    call nz, $d673
    ld [hl], e
    add sp, $73
    ld bc, $1e74
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ld d, d
    ld [hl], h
    ld h, b
    ld [hl], h
    ld a, c
    ld [hl], h
    sub [hl]
    ld [hl], h
    or b
    ld [hl], h
    push bc
    ld [hl], h
    call c, $f274
    ld [hl], h
    add hl, bc
    ld [hl], l
    ld [hl+], a
    ld [hl], l
    ld a, [hl-]
    ld [hl], l
    ld c, l
    ld [hl], l
    ld h, c
    ld [hl], l
    ld a, b
    ld [hl], l
    sub b
    ld [hl], l
    xor c
    ld [hl], l
    pop bc
    ld [hl], l
    jp c, $f475

    ld [hl], l
    ld [$1f76], sp

jr_010_6706:
    db $76
    dec [hl]
    db $76
    ld b, h
    db $76
    ld d, e
    db $76
    ld h, d
    db $76
    ld [hl], l
    db $76
    add l
    db $76
    sbc b
    db $76
    xor d
    db $76
    cp l
    db $76
    jp nc, $e876

    db $76
    db $f4
    db $76
    add hl, bc
    ld [hl], a
    ld hl, $3177
    ld [hl], a
    ccf
    ld [hl], a
    ld e, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    sub e
    ld [hl], a
    and l
    ld [hl], a
    or [hl]
    ld [hl], a
    add $77
    jp c, $ef77

    ld [hl], a
    ld bc, $1778
    ld a, b
    dec l
    ld a, b
    dec sp
    ld a, b
    ld c, a
    ld a, b
    ld h, c
    ld a, b
    ld h, l
    ld a, b
    ld l, a
    ld a, b
    add l
    ld a, b
    sbc h
    ld a, b
    or d
    ld a, b
    jp nz, $d478

    ld a, b
    add sp, $78
    rst $38
    ld a, b
    inc de
    ld a, c
    daa
    ld a, c
    dec a
    ld a, c
    ld c, l
    ld a, c
    ld h, c
    ld a, c
    ld [hl], a
    ld a, c
    adc [hl]
    ld a, c
    and [hl]
    ld a, c
    cp e

Call_010_6766:
    ld a, c
    pop de
    ld a, c
    db $e4
    ld a, c
    ld a, [$0c79]
    ld a, d
    ld hl, $357a
    ld a, d
    add hl, sp
    ld a, d
    ld c, e
    ld a, d
    ld e, e
    ld a, d
    ld [hl], b
    ld a, d
    add d
    ld a, d
    sbc b
    ld a, d
    xor l
    ld a, d
    cp a
    ld a, d
    push de
    ld a, d
    push hl
    ld a, d
    ei
    ld a, d
    dec bc
    ld a, e
    rra
    ld a, e
    jr c, jr_010_680a

    ld c, l
    ld a, e
    ld h, h
    ld a, e
    ld a, b
    ld a, e
    sub b
    ld a, e
    and h
    ld a, e
    cp b
    ld a, e
    call z, $e57b
    ld a, e
    ld [bc], a
    ld a, h
    inc e
    ld a, h
    ld [hl-], a
    ld a, h
    ld c, b
    ld a, h
    ld bc, $0210
    nop
    ld bc, $0421
    ld d, $07
    ld c, l
    ld a, [bc]
    ld c, b
    rrca
    ld c, a
    inc d
    ld h, $14
    ld c, e
    add hl, de
    db $eb
    jr nz, @-$13

    daa
    db $eb
    ld l, $eb
    nop
    ld bc, $0320
    nop
    ld bc, $014f
    ld [hl+], a
    ld bc, HeaderOldLicenseeCode
    db $eb
    rlca
    ld c, e
    ld a, [bc]
    ld c, e
    rrca
    ld c, e
    rrca
    ld c, e
    ld d, $4b
    dec e
    ld c, e
    ld h, $4b
    cpl
    db $eb
    jr c, jr_010_682b

    nop
    nop
    ld bc, $014f
    or $01
    ld e, c
    ld bc, $0450
    ld c, a
    rlca
    ld c, a
    ld a, [bc]
    ld c, a
    rrca
    ld c, a
    rrca
    ld c, a
    ld d, $4f
    dec e
    ld c, a
    add hl, hl
    ld c, a
    dec [hl]
    ld c, a
    ld b, c
    ld c, a
    nop
    ld bc, $0510
    nop
    ld bc, $010a
    inc [hl]
    rlca
    and e
    dec c

jr_010_680a:
    ld l, h
    inc de
    ld h, $16
    rlca
    rla
    ld b, l
    dec h
    ld b, l
    dec hl
    ld b, l
    ld sp, $0035
    ld bc, $0624
    nop
    ld bc, $0152
    dec [hl]
    ld bc, $0722
    ld [hl+], a
    dec c
    ld [hl+], a
    ld [hl+], a
    dec [hl]
    ld [hl+], a
    dec [hl]
    ld [hl+], a

jr_010_682b:
    dec [hl]
    add hl, hl
    ld d, d
    jr nc, jr_010_6882

    scf
    ld d, d
    nop
    nop
    ld bc, $01f6
    ld e, c
    ld bc, $0135
    ld a, [c]
    rlca
    dec [hl]
    dec c
    dec [hl]
    inc d
    dec [hl]
    dec de
    dec [hl]
    ld [hl+], a
    dec [hl]
    inc h
    dec [hl]
    inc l
    dec [hl]
    ld [hl], $35
    ld b, b
    dec [hl]
    nop
    ld bc, $0810
    nop
    ld bc, $0421
    scf
    rlca
    inc l
    ld a, [bc]
    dec e
    dec c
    dec e
    ld [de], a
    dec a
    rla
    ld [$4517], sp
    rla
    ld h, $28
    jr c, jr_010_6897

    jr c, jr_010_686a

jr_010_686a:
    ld bc, $0924
    nop
    ld bc, $0139
    ld [$2201], sp
    ld bc, $0745
    ld b, l
    ld a, [bc]
    ld b, l
    dec c
    ld b, l
    inc de
    ld b, l
    add hl, de
    ld b, l
    rra
    ld b, l

jr_010_6882:
    dec h
    ld b, l
    dec l
    ld b, l
    dec [hl]
    jr c, jr_010_6889

jr_010_6889:
    nop
    ld bc, $0139
    ld a, [hl-]
    ld bc, $0159
    ld b, l
    inc b
    ld b, l
    rlca
    ld b, l
    ld a, [bc]

jr_010_6897:
    ld b, l
    dec c
    ld b, l
    inc de
    ld b, l
    add hl, de
    ld b, l
    rra
    ld b, l
    ld a, [hl+]
    ld b, l
    scf
    ld b, l
    ld b, h
    ld b, l
    nop
    ld bc, $0b07
    nop
    ld bc, $0121
    ld hl, $0100
    ld a, [bc]
    inc c
    nop
    ld bc, $0721
    ld hl, $0000
    ld bc, $0a5d
    ld e, l
    dec c
    ld c, b
    ld c, $4d
    rrca
    inc a
    dec d
    ld c, a
    rla
    sub l
    rla
    jp z, Jump_010_5e17

    rra
    ld c, [hl]
    nop
    ld bc, $0e07
    nop
    ld bc, $0128
    jr z, jr_010_68d8

jr_010_68d8:
    ld bc, $0f0a
    nop
    ld bc, $0728
    jr z, jr_010_68e1

jr_010_68e1:
    nop
    ld bc, $0a2a
    ld a, [hl+]
    rrca
    ld a, [hl+]
    inc d
    db $e4
    rla
    jp z, $d818

    add hl, de
    add hl, hl
    ld a, [de]
    cp h
    nop
    ld bc, $1112
    nop
    ld bc, $0110
    inc e
    ld bc, $0f62
    ld h, d
    dec d
    ld [de], a
    dec e
    ld de, $6125
    cpl
    ld [hl], a
    nop
    ld bc, $1224
    nop
    ld bc, $01bd
    dec c
    ld bc, $0511
    db $d3
    rla
    add c
    rla
    ld de, $1217
    ld hl, $2b11
    ret c

    scf
    ret c

    nop
    nop
    ld bc, $0111
    ld h, $01
    inc e
    ld bc, $05d3
    ld de, $1109
    rrca
    ld de, $1117
    ld hl, $2e11
    ld de, $113d
    nop
    ld bc, $1414
    nop
    ld bc, $0162
    ld h, d
    rlca
    ld h, d
    dec c
    sbc [hl]
    inc d
    ld [hl], h
    dec de
    db $e4
    ld [hl+], a
    and d
    nop
    nop
    ld bc, $0122
    rst $30
    ld bc, $01a2
    rst $08
    ld bc, $01a2
    and d
    ld bc, $28a2
    and d
    nop
    ld bc, $1614
    nop
    ld bc, $0162
    ld b, b
    rlca
    cp l
    add hl, bc
    add c
    add hl, de
    db $e4
    rra
    ld [hl], a
    dec h
    ld b, c
    dec hl
    ld h, c
    nop
    nop
    ld bc, $0141
    and c
    ld bc, $28d3
    ld b, c
    jr z, jr_010_69bf

    jr z, jr_010_69c1

    jr z, jr_010_69c3

    jr z, jr_010_69c5

    jr z, jr_010_69c7

    cpl
    ld b, c
    nop
    ld bc, $1816
    nop
    ld bc, $0189
    dec e
    ld bc, $0de4
    ld c, b
    rla
    adc c
    dec e
    adc c
    dec h
    adc c
    dec hl
    adc c
    nop
    nop
    ld bc, $01ca
    ld e, c
    ld bc, $01bc
    adc c
    add hl, bc
    adc c
    rrca
    adc c
    add hl, de
    adc c
    ld hl, $2289
    adc c
    ld h, l
    ld e, d
    nop
    ld [bc], a
    rla
    ld a, [de]
    nop
    ld bc, $0154
    ld h, d
    ld b, $56
    rrca

jr_010_69bf:
    add c
    rrca

jr_010_69c1:
    pop de
    ld a, [de]

jr_010_69c3:
    ld d, l
    ld a, [de]

jr_010_69c5:
    ld d, l
    add hl, hl

jr_010_69c7:
    ld b, l
    ld [hl-], a
    add hl, sp
    ld [hl-], a
    ld d, b
    ld [hl-], a
    ld d, a
    nop
    nop
    ld bc, $0156
    ld d, l
    ld bc, $0139
    ld b, l
    nop
    ld bc, $1c16
    nop
    ld bc, $06a3
    inc e
    dec bc
    sbc $11
    sbc l
    rla
    inc e
    ld e, $1c
    dec h
    inc e
    dec l
    ld e, c
    nop
    nop
    ld bc, $0122
    sbc l
    ld bc, $0659
    ld e, c
    dec bc
    ld e, c
    ld de, $1859
    sbc l
    ld hl, $2a9d
    ld e, c
    ld h, l
    ld e, d
    nop
    ld bc, $1e10
    nop
    ld bc, $01bd
    inc l
    ld [$0c18], sp
    jr @+$13

    jr jr_010_6a2a

    jr jr_010_6a33

    jr jr_010_6a3d

    jr jr_010_6a19

jr_010_6a19:
    ld [bc], a
    ld [$001f], sp
    ld bc, $0122
    inc l
    ld [$0c18], sp
    ld e, h
    inc de
    ld [hl+], a
    dec de
    ld [hl+], a
    inc h

jr_010_6a2a:
    ld [hl+], a
    ld l, $22
    nop
    nop
    ld bc, $01d5
    ld d, l

jr_010_6a33:
    ld bc, $243a
    ld e, c
    ld [hl], l
    adc [hl]
    nop
    ld bc, $2110

jr_010_6a3d:
    nop
    ld bc, $011d
    jr jr_010_6a4b

    cp l
    inc c
    jr @+$13

    jr jr_010_6a60

    jr jr_010_6a69

jr_010_6a4b:
    jr @+$28

    jr jr_010_6a4f

jr_010_6a4f:
    ld [bc], a
    ld [$0022], sp
    ld bc, $0118

jr_010_6a56:
    dec h
    ld [$0c5c], sp
    inc l
    inc de
    jr jr_010_6a79

    jr @+$26

jr_010_6a60:
    jr @+$30

    jr jr_010_6a64

jr_010_6a64:
    nop
    ld bc, $0155
    ld a, [hl-]

jr_010_6a69:
    ld bc, $018e
    ld e, c
    ld l, $59
    nop
    ld [bc], a
    ld [$0024], sp
    ld bc, $0176
    db $76
    inc b

jr_010_6a79:
    db $76
    ld [$0876], sp
    db $76
    ld bc, $01d5
    and c
    ld bc, $01ec
    db $ec
    add hl, hl
    dec [hl]
    nop
    nop
    ld bc, $0135
    ld d, l
    ld bc, $013a
    db $ec
    nop
    ld [bc], a
    ld d, $26
    nop
    ld bc, HeaderTitle
    ld h, d
    rlca
    ld l, $0d
    xor h
    db $10
    inc l
    ld de, $1f6d
    dec [hl]
    dec h
    inc l
    nop
    nop
    ld bc, $016d
    inc l
    ld bc, $0135
    rst $20
    dec hl
    dec [hl]
    nop
    ld [bc], a
    ld [$0028], sp
    ld bc, $042f
    sub d
    add hl, bc
    dec a
    ld c, $b9
    inc de
    sub d
    jr jr_010_6a56

    dec e
    sub d
    ld [hl+], a
    sub d
    daa
    sub d
    nop
    nop
    ld bc, $0156
    ld h, $01
    ld e, [hl]
    ld bc, $0045
    ld bc, $2a16
    nop
    ld bc, $012c
    ld c, b
    ld bc, $0f6d
    ld de, $111b
    inc h
    ld de, $722e
    nop
    inc b
    ld bc, $00a9
    ld bc, $016d
    ld de, $ca01
    ld b, $2c
    inc c

jr_010_6af5:
    inc l
    inc de
    inc l
    ld e, $2c
    ld a, [hl+]
    inc l
    scf
    inc l
    nop
    ld bc, $2c15
    nop
    ld bc, HeaderROMSize
    inc sp
    ld bc, $015c
    ld c, [hl]
    ld [de], a
    ld c, a
    rla
    ld c, a
    jr nz, jr_010_6b60

    daa
    ld c, a
    nop
    ld [bc], a
    ld [hl+], a
    dec l
    ld [bc], a
    xor c
    or [hl]
    nop
    ld bc, $01ca
    cp h
    ld bc, HeaderGlobalChecksum
    ld c, a
    ld c, $4f
    db $10
    ld c, a
    ld [de], a
    ld c, a
    jr jr_010_6af5

    inc hl
    cp h
    inc l
    ld c, a
    nop
    nop
    ld bc, HeaderGlobalChecksum
    cp h
    ld bc, $01ec
    ld d, b
    nop
    ld bc, $2f18
    nop
    ld bc, $015c
    ld [hl+], a
    ld bc, $01ca
    ld c, [hl]
    add hl, de
    sub e
    rra
    jp z, $ca25

    dec hl
    jp z, RST_00

    ld bc, $013c
    ld [hl+], a
    ld bc, $01ca
    sub e
    dec c
    sub e
    inc de
    sub e
    inc e
    sub e
    dec h
    sub e

jr_010_6b60:
    ld l, $93
    scf
    jp z, Boot

    rra
    ld sp, $0100
    ld e, h
    ld bc, $013c
    db $ed
    ld bc, $114e
    ld c, [hl]
    inc d
    ld c, [hl]
    add hl, de
    ld c, [hl]
    inc e
    ld c, [hl]
    ld hl, $243c
    ld c, a
    add hl, hl
    ld e, [hl]
    nop
    nop
    ld bc, $01ca
    cp h
    ld bc, $015e
    ld c, [hl]
    add hl, bc
    ld c, [hl]
    ld de, $144e
    ld c, [hl]
    add hl, de
    ld c, [hl]
    inc e
    ld c, [hl]
    rra
    ld c, [hl]
    inc h
    ld c, [hl]
    ld a, [hl+]
    ld c, [hl]
    inc [hl]
    ld c, [hl]
    nop
    ld bc, $331a
    nop
    ld bc, $05a3
    sbc $09
    sbc l
    ld de, $199d
    sbc l
    ld hl, $299d
    sbc l
    ld sp, $0059
    nop
    ld bc, $01a1
    sbc l
    ld bc, $01bc
    ld e, c
    dec b
    and c
    add hl, bc
    and c
    ld de, $19a1
    and c
    dec h
    and c
    ld sp, $6559
    ld e, d
    nop
    ld bc, $351c
    nop
    ld bc, $0106
    cp c
    dec bc
    inc l
    inc d

jr_010_6bd4:
    and e
    rra
    ld h, $20
    ld d, a
    jr nz, @+$3f

    jr nz, jr_010_6bd4

    nop
    nop
    ld bc, $015f
    ld h, $01
    rst $30
    ld bc, $143d
    dec a
    dec e
    dec a
    ld h, $3d
    ld l, $3d
    dec [hl]
    ld h, $00
    ld bc, $3721
    nop
    ld bc, $015d
    dec a
    ld bc, $015f
    and c
    rla
    ld b, l
    rra
    db $f4
    jr z, @-$64

    ld [hl-], a
    jr c, jr_010_6c07

jr_010_6c07:
    nop
    ld bc, $015f
    ld d, b
    ld bc, $013a
    jr c, @+$07

    jr c, jr_010_6c1d

    jr c, jr_010_6c4d

    jr c, jr_010_6c4f

    jr c, jr_010_6c51

    jr c, @+$3a

    jr c, jr_010_6c57

jr_010_6c1d:
    jr c, jr_010_6c1f

jr_010_6c1f:
    ld bc, $391c
    nop
    ld bc, HeaderCGBFlag
    dec h
    add hl, bc
    ld b, l
    rrca
    ld [bc], a
    dec d
    ld [bc], a
    dec de
    ld [bc], a
    ld hl, $2702
    ld [bc], a
    dec l
    ld [bc], a
    inc sp
    ld b, d
    nop
    nop
    ld bc, $0122
    ld e, c
    ld bc, $019d
    xor $09
    ld [hl+], a
    rrca
    ld [hl+], a
    dec d
    ld [hl+], a
    dec de
    ld [hl+], a
    inc e
    ld [hl+], a
    inc h
    ld [hl+], a

jr_010_6c4d:
    dec l
    ld [hl+], a

jr_010_6c4f:
    ld [hl], $9d

jr_010_6c51:
    ccf
    xor $00
    ld [bc], a
    ld d, $3b

jr_010_6c57:
    nop
    ld bc, HeaderTitle
    ld l, $01
    inc l
    add hl, bc
    inc h
    ld a, [de]
    xor h
    inc h
    dec [hl]
    ld a, [hl+]
    dec [hl]
    ld [hl-], a
    dec [hl]
    nop
    nop
    ld bc, $0135
    ld a, [c]
    ld bc, $01f5
    rst $20
    ld [hl-], a
    push af
    nop
    ld bc, $3d19
    nop
    ld bc, $013d
    ld e, a
    ld a, [bc]
    ld [hl+], a
    inc de
    ld [hl+], a
    add hl, de
    ld [hl+], a
    rra
    ld [hl+], a
    dec h
    ld [hl+], a
    dec hl
    jr c, jr_010_6c8a

jr_010_6c8a:
    ld [bc], a
    jr jr_010_6ccb

    ld bc, $ba24
    nop
    ld bc, $0139
    ld e, a
    ld bc, $0142
    ld [hl+], a
    dec c
    ld b, d
    inc de
    ld b, d
    dec de
    ld b, d
    inc hl
    ld b, d
    dec hl
    ld b, d
    inc sp
    jr c, jr_010_6ca6

jr_010_6ca6:
    nop
    ld bc, $0142
    ld e, c
    ld bc, $018e
    ld a, [hl-]
    ld h, l
    xor d
    ld h, l
    ld e, d
    nop
    ld bc, $4010
    nop
    ld bc, $005d
    ld bc, $4137
    nop
    ld bc, $013c
    ld d, [hl]
    ld bc, $0145
    ld l, c
    dec d
    inc a
    ld a, [de]
    ld l, c

jr_010_6ccb:
    ld a, [de]
    ld l, c
    rra
    ld l, c
    ld h, $69
    ld b, e
    ld e, [hl]
    nop
    nop
    ld bc, $0156
    ld e, [hl]
    ld bc, $1045
    ld l, c
    ld [de], a
    ld l, c
    dec d
    ld l, c
    ld a, [de]
    ld l, c
    rra
    ld l, c
    ld h, $69
    dec l
    ld l, c
    nop
    ld bc, $431c
    nop
    ld bc, $0102
    sub d
    rlca
    ld b, l
    dec c
    cp l
    inc de
    jp hl


    add hl, de
    ld b, l
    rra
    ld b, l
    dec h
    ld b, l
    dec hl
    ld b, l
    ld sp, $0045
    ld bc, $4437
    nop
    ld bc, $01df
    sbc l
    ld bc, $0845
    ld b, d
    rrca
    ld b, d
    inc de
    ld b, d
    add hl, de
    ld b, d
    ld [hl+], a
    ld b, d
    dec hl
    ld b, d
    inc [hl]
    ld b, d
    dec a
    jp hl


    nop
    nop
    ld bc, $01ee
    ld e, c
    ld bc, $089d
    ld [hl], c
    rrca
    sbc l
    inc de
    sbc l
    add hl, de
    sbc l
    ld [hl+], a
    sbc l
    dec hl
    sbc l
    inc [hl]
    sbc l
    dec a
    sbc l
    nop
    ld bc, $4615
    nop
    ld bc, $0133
    db $ed
    ld bc, HeaderOldLicenseeCode
    ld c, [hl]
    ld de, $134f
    ld c, a
    rla
    ld c, a
    ld e, $4f
    dec h
    ld c, a
    dec l
    ld c, a
    nop
    ld [bc], a
    ld [hl+], a
    ld b, a
    nop
    ld bc, $01ca
    cp h
    ld bc, $064e
    ld c, a
    dec bc
    jp z, $ca0f

    ld de, $13ca
    jp z, $ca18

    ld hl, $2aca
    jp z, $bc36

    nop
    nop
    ld bc, $018e
    ld c, [hl]
    ld bc, $01ca
    cp h
    nop
    ld bc, $491e
    nop
    ld bc, $013d
    ld e, h
    ld bc, $01b6
    ld a, $19
    ld a, $1e
    ld a, $24
    ld a, $2b

jr_010_6d89:
    ld a, $31
    jr c, jr_010_6d8d

jr_010_6d8d:
    nop
    ld bc, $01d5
    ld a, [hl-]
    ld bc, $0639
    cp h
    inc c
    cp h
    inc de
    cp h
    add hl, de
    cp h
    ld e, $bc
    ld h, $bc
    cpl
    cp h
    ld a, b
    push de
    nop
    ld bc, $4b19
    nop
    ld bc, $0178
    ld e, b
    ld bc, $10de
    sbc $15
    sbc $1a
    sbc $1f
    sbc $24
    sbc $29
    sbc c
    nop
    ld bc, $4c2a
    nop
    ld bc, $0178
    sbc c
    ld bc, $0659
    sbc l
    dec bc
    sbc l
    db $10
    sbc l
    dec d
    sbc l
    dec de
    sbc l
    ld [hl+], a
    sbc l
    add hl, hl
    ld e, c
    jr nc, @-$65

    nop
    nop
    ld bc, $0199
    ld e, c
    ld bc, $019d
    ld [hl+], a
    ld b, $99
    dec bc
    sbc c
    db $10
    sbc c
    dec d
    sbc c
    dec de
    sbc c
    ld [hl+], a
    sbc c
    add hl, hl
    ld e, c
    jr nc, jr_010_6d89

    nop

jr_010_6df1:
    ld bc, $4e24
    nop
    ld bc, $01ac
    dec e
    ld bc, $1418
    dec [hl]
    dec d
    ld e, a
    ld a, [de]
    ld h, $22
    ld h, $2b
    ld h, $35
    ld h, $00
    nop
    ld bc, $01e7
    ld h, $01
    ld a, [hl]
    ld bc, $045f
    ld h, $08
    ld h, $0d
    ld h, $13
    ld h, $1a
    ld h, $22
    ld h, $28
    ld h, $2f
    ld h, $65
    jr nz, jr_010_6e24

jr_010_6e24:
    ld bc, $5025
    ld [bc], a
    jr jr_010_6df1

    nop
    ld bc, $015d
    dec a
    ld bc, $01a1
    or [hl]
    ld de, $1d3c
    inc a
    ld [hl+], a
    inc a
    dec hl
    inc a
    jr nc, jr_010_6e9b

    nop
    nop
    ld bc, $0156
    ld e, [hl]
    ld bc, $0159
    add hl, sp
    ld b, $39
    rrca
    add hl, sp
    inc d
    add hl, sp
    dec e
    add hl, sp
    ld [hl+], a
    add hl, sp
    ld [hl], $5e
    ld [hl], $5e
    ld [hl], $5e
    nop
    ld bc, $521e
    nop
    ld bc, $0631
    ld d, [hl]
    dec bc
    ld d, l
    db $10
    and c
    dec d
    db $ed
    dec de
    db $ed
    ld hl, $27ed
    db $ed
    dec l
    db $ed
    nop
    nop
    ld bc, $0156
    ld d, l
    ld bc, $01ed
    and c
    ld b, $a1
    dec bc
    and c
    db $10
    and c
    dec d
    and c
    dec de
    and c
    inc hl
    and c
    dec hl
    and c
    dec [hl]
    and c
    nop
    nop
    ld bc, $0111
    and e
    ld bc, $01d3
    cp l
    add hl, de
    and e
    rra
    and e
    dec h
    and e
    inc l
    and e
    nop

jr_010_6e9b:
    ld bc, $551f
    nop
    ld bc, $0181
    ld h, d
    rlca
    ld b, b
    add hl, bc
    jr jr_010_6ebd

    and c
    add hl, de
    and c
    ld hl, $2541
    ld b, c
    nop
    nop
    ld bc, $0122
    db $d3
    ld bc, $0141
    ld h, $09
    ld b, c
    dec c
    ld b, c

jr_010_6ebd:
    dec d
    ld b, c
    add hl, de
    ld b, c
    ld h, $41
    cpl
    ld b, c
    nop
    ld bc, $5722
    nop
    ld bc, $013e
    dec a
    ld bc, $011d
    sbc h
    jr nz, jr_010_6f0e

    dec h
    ld a, [hl-]
    jr nc, @-$23

    nop
    nop
    ld bc, $0132
    ld [hl+], a
    ld bc, $0139
    ld a, [hl-]
    ld h, l
    sbc h
    ld h, l
    sub $65
    jr nz, jr_010_6f4f

    jr nz, jr_010_6f51

    jr nz, jr_010_6eed

jr_010_6eed:
    ld bc, $5926
    nop
    ld bc, HeaderROMSize
    ld a, h
    ld bc, $0178
    ld e, h
    db $10
    ld a, b
    rla
    ld a, b
    rra
    ld a, b
    jr z, jr_010_6f79

    ld [hl-], a
    cp h
    nop
    nop
    ld bc, $0199
    cp h
    ld bc, $01ca
    dec [hl]
    ld [hl], e

jr_010_6f0e:
    ld l, b
    db $76
    xor [hl]
    db $76
    cp h
    db $76
    jp z, $3576

    db $76
    dec [hl]
    nop
    ld [bc], a
    jr jr_010_6f78

    nop
    ld bc, $013e
    dec a
    ld bc, $1199
    or [hl]
    add hl, de
    or [hl]
    ld hl, $29b6
    or [hl]
    ld sp, $003a
    nop

jr_010_6f30:
    ld bc, $0199
    ld a, [hl-]
    ld bc, $0139
    and c
    inc hl
    and c
    ld [hl-], a
    ld a, [hl-]
    nop
    ld bc, $5d19
    nop
    ld bc, $0178
    ld l, l
    ld bc, $0165
    sbc c
    ld h, h
    ld e, a
    ld h, h
    ld e, a
    ld h, h
    ld e, a

jr_010_6f4f:
    ld h, h
    ld e, a

jr_010_6f51:
    ld h, h
    ld e, a
    nop
    ld bc, $5e37
    nop
    ld bc, $016d
    sbc c
    ld bc, $015e
    ld h, l
    dec c
    ld h, l
    db $10
    ld h, l
    dec d
    ld h, l
    rra
    ld h, l
    daa
    ld h, l
    jr nc, jr_010_6fca

    nop
    nop
    ld bc, $0107
    ld [$5501], sp
    ld bc, $325f
    sbc c

jr_010_6f78:
    ld h, l

jr_010_6f79:
    ld b, d
    ld h, l
    ld [$5565], sp
    ld h, l
    ld e, a
    ld h, l
    ld e, a
    nop
    ld bc, $d041
    nop
    ld bc, $01de
    ld a, b
    ld bc, $019d
    sbc c
    rla
    sbc c
    dec de
    sbc c
    inc h
    sbc c
    jr z, jr_010_6f30

    nop
    ld bc, $611a
    nop
    ld bc, $015e
    ld e, a
    ld bc, $6545
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    nop
    nop
    ld bc, $01f7
    ld b, d
    ld bc, $015e
    ld d, [hl]
    ld b, c
    ld [hl], e
    ld b, c
    ld b, l
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c

jr_010_6fca:
    nop
    ld bc, $631c
    nop
    ld bc, $013d
    rla
    ld bc, $10b6
    or [hl]
    rla
    or [hl]
    dec de
    or [hl]
    ld [hl+], a
    or [hl]
    add hl, hl
    sbc b
    nop
    nop
    ld bc, $0122
    sbc b
    ld bc, $64e8
    inc c
    ld h, l
    inc c
    ld h, l
    inc c
    ld h, l
    inc c
    ld h, l
    inc c
    ld h, l
    inc c
    ld h, l
    inc c
    nop
    ld bc, $651e
    nop
    ld bc, $0178
    ld d, [hl]
    ld bc, $0155
    sbc c
    dec e
    sbc c
    ld hl, $2599
    sbc c
    daa
    sbc c
    add hl, hl
    sbc c
    nop
    nop
    ld bc, $0156
    ld d, l
    ld bc, $6f99
    ld [hl], c
    ld l, a
    ld [hl], e
    ld [hl], d
    ld d, [hl]
    ld [hl], d
    ld d, l
    ld [hl], d
    sbc c
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    nop
    ld [bc], a
    ld [hl+], a
    ld h, a
    nop
    ld bc, $013c
    jp z, $9901

    ld bc, $134e
    inc a
    add hl, de
    inc a
    rra
    inc a
    dec h
    ld c, a
    dec hl
    ld e, [hl]
    nop
    nop
    ld bc, $0199
    ld c, a
    ld bc, $015e
    jp z, $f665

    nop
    ld bc, $691c
    nop
    ld bc, $017d
    dec e
    ld [de], a
    add $19
    sbc e
    jr nz, jr_010_70b1

    ld h, l
    ld h, $65
    or $65
    ld c, $65
    ld c, $65
    ld c, $65
    ld c, $00
    nop
    ld bc, $01da
    ld e, c
    ld bc, $65f6
    sbc h
    ld h, l
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $00
    nop
    ld bc, $0188
    sbc l
    ld bc, $0159
    ld [hl+], a
    inc d
    sbc l
    ld a, [de]
    adc b
    rra
    ld [hl+], a
    inc h
    ld e, c
    add hl, hl
    ld [hl+], a
    ld l, $22
    inc sp
    ld [hl+], a
    nop
    nop
    ld bc, $01b7
    adc b
    ld bc, $019d
    ld e, c
    ld a, [de]
    adc b
    ld a, [de]
    sbc l
    jr nz, jr_010_7103

    ld h, $88
    inc l
    adc b
    ld [hl-], a
    adc b
    nop

jr_010_70b1:
    nop
    ld bc, $017a
    call $3a18
    add hl, de
    ld a, [hl]
    jr nz, jr_010_70de

    ld hl, $6559
    ld c, $65
    ld c, $00
    ld bc, $6e23
    nop
    ld bc, $0178
    ld e, h
    ld bc, $017c
    inc a
    dec d
    ld a, b
    add hl, de
    ld a, b
    ld hl, $2978
    sbc c
    dec l
    cp h
    nop
    nop
    ld bc, $0195

jr_010_70de:
    cp h
    ld bc, $017e
    sbc c
    add hl, bc
    sbc c
    ld de, $1599
    sbc c
    add hl, de
    sbc c
    ld hl, $3399
    cp h
    ld a, b
    db $ed
    nop
    ld bc, $702a
    nop
    ld bc, $01de
    ld h, $12
    sbc l
    ld [de], a
    sbc l
    rra
    ld h, $25
    ld h, $31

jr_010_7103:
    ld h, $37
    ld e, c
    nop
    nop
    ld bc, $0159
    sbc l
    ld bc, $4122
    ld e, c
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    ld h, d
    ld [hl+], a
    nop
    inc b
    ld bc, $00f2
    ld bc, $01d5
    ld d, [hl]
    ld bc, $0195
    add a
    add hl, hl
    ld [hl], e
    ld [hl], l
    ld e, h
    ld [hl], l
    ld l, b
    db $76
    ld l, b
    ld [hl], a
    add a
    ld [hl], a
    add a
    ld [hl], a
    add a
    nop
    nop
    ld bc, HeaderROMSize
    db $ed
    ld bc, HeaderGlobalChecksum
    db $eb
    inc de
    jp z, $cf19

    ld a, b
    ld c, a
    ld a, b
    or $78
    ld e, c
    ld a, b
    ld d, b
    nop
    nop
    ld bc, $01d5
    and h
    ld bc, $0122
    ld e, c
    ld h, l
    ld h, $65
    sbc h
    ld h, l
    sub $d6
    sub $d6
    sub $00
    ld bc, $7520
    nop
    ld bc, $013e
    dec a
    ld bc, $17e1
    ld d, d
    rla
    ld d, d
    inc h
    ld d, d
    dec hl
    jr c, jr_010_7175

jr_010_7175:
    ld bc, $e646
    nop
    ld bc, $0138
    ld a, [hl-]
    ld bc, $01b6
    pop hl
    jr c, jr_010_71bb

    jr c, @+$3a

    jr c, jr_010_71bf

    jr c, @+$3a

    jr c, jr_010_71c3

    jr c, @+$3a

    nop
    ld bc, $7721
    nop
    ld bc, $017f
    ld h, $45
    ldh [rLYC], a
    ldh [rLYC], a
    ldh [rLYC], a
    ldh [rLYC], a
    ldh [rLYC], a
    ldh [rLYC], a
    ldh [rP1], a
    nop
    ld bc, $01e0
    jr c, @+$03

    ld h, $65
    jr nz, jr_010_7215

    jr nz, @+$68

    jr nz, jr_010_7219

    jr nz, jr_010_721b

    jr nz, jr_010_721d

    jr nz, jr_010_721f

    jr nz, jr_010_71bb

jr_010_71bb:
    ld [bc], a
    jr jr_010_7237

    nop

jr_010_71bf:
    ld bc, $013d
    ld l, c

jr_010_71c3:
    ld bc, $016d
    and c
    inc de
    and c
    add hl, de
    and c
    rra
    and c
    dec h
    and c
    dec hl
    and c
    ld [hl-], a
    jr c, jr_010_71d4

jr_010_71d4:
    nop
    ld bc, $0139
    ld a, [hl-]
    ld bc, $0155
    ld l, c
    dec h
    ld l, c
    nop
    nop
    ld bc, $063c
    ld b, l
    dec bc
    ld e, a
    db $10
    ld b, l
    rra
    ld e, [hl]
    dec h
    ld d, l
    dec [hl]
    ld e, [hl]
    dec [hl]
    ld e, [hl]
    dec [hl]
    ld e, [hl]
    dec [hl]
    ld e, [hl]
    dec [hl]
    ld e, [hl]
    nop
    ld bc, $d437
    nop
    ld bc, $0171
    ld h, $01
    db $d3
    ld bc, $1211
    ld h, $18
    ld h, $1e
    ld h, $24
    ld h, $2a
    ld h, $30
    ld h, $00
    nop
    ld bc, $018e

jr_010_7215:
    ld a, [hl-]
    ld bc, $015e

jr_010_7219:
    ld b, l
    add hl, bc

jr_010_721b:
    ld b, l
    dec c

jr_010_721d:
    ld b, l
    dec d

jr_010_721f:
    ld b, l
    add hl, de
    ld b, l
    inc hl
    ld b, l
    add hl, hl
    ld b, l
    inc sp
    ld a, [hl-]
    add hl, sp
    ld e, [hl]
    nop
    nop
    ld bc, $0155
    xor $01
    ld [$0701], sp
    ld de, $1955

jr_010_7237:
    ld d, l
    ld h, l
    ld d, l
    cpl
    ld d, l
    ld a, [hl-]
    xor $00
    nop
    ld bc, $0135
    ld l, l

jr_010_7244:
    ld bc, $0109
    xor $07
    ld l, l
    dec c
    ld l, l
    inc de
    ld l, l
    add hl, de
    ld l, l
    ld hl, $296d
    dec [hl]
    ld sp, $656d
    ld a, [hl]
    nop
    nop
    ld bc, $0122
    ld b, d
    ld bc, $019d
    ld b, l
    add hl, de
    ld b, l
    rra
    ld b, l
    dec h
    ld b, l
    dec hl
    ld b, l
    nop
    nop
    ld bc, $0126
    ld e, c
    ld bc, $019c
    sub $66
    ld h, $66
    ld h, $66
    ld h, $66
    ld h, $66
    ld h, $00
    ld bc, $821e
    nop
    ld bc, $0191
    ld hl, $af01
    nop
    nop
    ld bc, $1452
    ld d, d
    add hl, de
    ld d, d
    ld e, $52
    inc hl
    ld d, l
    inc hl
    ld a, [hl-]
    dec l
    ld h, $2e
    jr c, jr_010_729c

jr_010_729c:
    nop
    ld bc, $016d
    add hl, sp
    ld bc, $083a
    ld d, l
    ld h, l
    sbc h
    ld h, l
    sub $65
    sub $65
    sub $65
    sub $65
    sub $65
    sub $00
    nop
    ld bc, $0090
    ld [bc], a
    rla
    add a
    ld [bc], a
    jr jr_010_7244

    ld [bc], a
    ld d, $88
    ld [bc], a
    xor c
    call nz, $0802
    push bc
    nop
    ld bc, $0162
    inc e
    ld b, $2c

jr_010_72ce:
    db $10
    inc h

jr_010_72d0:
    rla
    inc h
    ld e, $24
    inc h
    inc h
    ld a, [hl+]
    inc h
    nop
    nop
    ld bc, $012c
    ld [hl+], a
    ld bc, $013a
    add hl, sp
    ld h, l
    sbc h
    ld h, l
    sub $78
    ld c, d
    db $dd
    ld [hl], d
    db $dd
    sub a
    db $dd
    jr c, jr_010_72ef

jr_010_72ef:
    nop
    ld bc, $01d1
    ld d, [hl]
    ld bc, $0173
    ld d, l
    inc d
    pop de
    ld d, $2c
    ld a, [hl+]
    ld d, [hl]
    ld h, h
    ld d, l
    ld [hl], b
    cpl
    ld a, b
    db $ed
    nop
    nop
    ld bc, $0135
    ld a, [hl]
    ld bc, $01e7
    rst $30
    inc d
    dec [hl]
    ld d, $26
    inc h
    ld h, $2a
    ld h, $2f
    rst $20
    inc [hl]
    rst $30
    nop
    ld bc, $e932
    nop
    ld bc, $01b0
    and b
    ld bc, $0169
    and c
    inc c
    inc a
    inc d
    ld l, c
    jr jr_010_72ce

    jr nz, jr_010_72d0

    inc h
    and c
    inc l
    and c
    nop
    ld bc, $8b28
    nop
    ld bc, $013d
    ld a, $01
    ld h, $13
    add hl, sp
    inc d
    ld a, [hl-]
    dec d
    or [hl]
    ld sp, $37f6
    jr c, jr_010_7349

jr_010_7349:
    nop
    ld bc, $0138
    ld a, [hl-]
    ld bc, $0145
    or $13
    jr c, jr_010_7374

    jr c, @+$27

    jr c, @+$2a

    jr c, @+$38

    jr c, @+$43

    jr c, jr_010_735f

jr_010_735f:
    ld bc, $8d28
    nop
    ld bc, $0158
    dec a
    ld bc, $13a3
    ld b, d
    inc d
    sbc l
    dec d
    jr c, @+$17

    ld h, $37
    or $00

jr_010_7374:
    nop
    ld bc, $01f6
    jr c, jr_010_737b

    ld b, d

jr_010_737b:
    ld bc, $136d
    jr c, jr_010_739c

    jr c, @+$27

    jr c, jr_010_73ac

    jr c, @+$35

    jr c, jr_010_73c9

    or $00
    nop
    ld bc, $0111
    sbc l
    ld bc, $0159
    ld a, [hl]
    ld h, l
    or $65
    adc a
    ld h, l
    adc a
    ld h, l
    adc a
    nop

jr_010_739c:
    nop
    ld bc, $0178
    adc [hl]
    ld bc, $0126
    ld e, c
    ld [hl], h
    sub $74
    ld [hl+], a
    ld [hl], h
    sbc h
    ld a, a

jr_010_73ac:
    xor [hl]
    ld a, a
    ld e, c
    adc b
    ld e, c
    nop
    nop
    ld bc, $013a
    adc a
    ld bc, $01d6
    sbc h
    ld h, a
    sbc h
    ld h, a
    sbc h
    ld h, a
    sbc h
    ld h, a
    sbc h
    nop
    nop
    ld bc, $0155
    ld b, c

jr_010_73c9:
    ld bc, $01ed
    ld d, [hl]
    and l
    and l
    and l
    and l

jr_010_73d1:
    and l
    and l
    and l
    and l
    nop
    nop
    ld bc, $01ea
    adc a
    ld bc, $017e
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    nop
    ld bc, $941e
    nop
    ld bc, $0152
    ld d, [hl]
    ld [$2856], sp
    ret z

    jr z, jr_010_73d1

    dec hl
    ret c

    dec hl
    db $db
    dec hl
    db $db
    ld [hl-], a
    ret z

    add hl, sp
    ret z

    nop
    ld bc, $9537
    nop
    ld bc, $0126
    ld a, [hl-]
    ld bc, $0171
    ld d, [hl]
    ld h, l
    jr nz, jr_010_7475

    ret z

    ld h, a
    jr nz, jr_010_747c

    jr nz, @+$6b

    jr nz, jr_010_7488

    jr nz, jr_010_748b

    jr nz, @+$74

    jr nz, jr_010_741e

jr_010_741e:
    nop
    ld bc, $0156
    ld h, $01
    ld d, l
    ld bc, $783a
    dec [hl]
    ld a, b
    push af
    ld a, a
    push af
    ld a, a
    push af
    ld a, a
    push af
    ld a, a
    push af
    ld a, a
    push af
    ld a, a
    push af
    ld a, a
    push af
    nop
    nop
    ld bc, $015e
    ld l, c
    ld h, l
    ld b, d
    ld h, l
    ld d, l
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    nop
    nop
    ld bc, $015e
    ld b, d
    ld bc, $01f7
    add a
    ld h, l
    ld b, d
    ld a, a
    ld c, $00
    ld bc, $9910
    nop
    ld bc, $0121
    ld c, e
    ld [$0c73], sp
    ld c, l
    rrca
    db $eb
    ld d, $ca
    rla
    ld [hl+], a
    jr jr_010_74e5

    dec hl

jr_010_7475:
    db $db
    ld [hl-], a
    ld c, h
    nop
    ld bc, $9a20

jr_010_747c:
    nop
    ld bc, $0122
    db $eb
    ld bc, $01ca
    ld [hl], c
    ld [$0cca], sp

jr_010_7488:
    jp z, $ca0f

jr_010_748b:
    rla
    jp z, $221f

    daa
    ld [hl], c
    cpl
    db $db
    scf
    ld c, h
    nop
    nop
    ld bc, $01f6
    ld e, c
    ld bc, $0150
    db $eb
    ld [hl], b
    ld l, b
    ld [hl], b
    ld c, c
    ld [hl], b
    ld e, h
    ld [hl], h
    or $74
    ld e, c
    ld [hl], h
    ld d, b
    ld [hl], h
    db $eb
    ld a, b
    db $eb
    nop
    ld bc, $9c0e
    nop
    ld bc, $0121
    ld hl, $3401
    ld bc, $136c
    ld h, d
    inc d
    xor h
    dec d
    ld h, $2e
    dec [hl]
    nop

Call_010_74c5:
    ld bc, $9d24
    nop
    ld bc, $01ac
    ld h, $01
    ld l, h
    ld bc, $1fe7
    xor h
    ld [hl], $35
    scf
    dec [hl]
    jr c, @+$37

    add hl, sp
    dec [hl]
    nop
    nop
    ld bc, $0135
    ld e, c
    ld bc, $0109
    ld b, d

jr_010_74e5:
    ld h, b
    dec [hl]
    ld h, l
    ld a, [hl]
    ld a, b
    db $ed
    ld a, b
    ld e, c
    ld a, b
    add hl, bc
    adc b
    adc b
    nop
    ld bc, $9f12
    nop
    ld bc, $010a
    scf
    rlca
    inc l
    dec c
    and e
    jr jr_010_7526

    add hl, de
    ld h, $08
    ld a, [c]
    ld a, [de]
    jr c, @+$36

    jr c, jr_010_7509

jr_010_7509:
    ld bc, $a01e
    nop
    ld bc, $013b
    ld h, $01
    jr c, jr_010_7515

    ld a, [c]

jr_010_7515:
    jr nc, @+$0a

    inc [hl]
    jr c, jr_010_7552

    jr c, @+$3a

    jr c, jr_010_7556

    jr c, jr_010_7558

    jr c, jr_010_7522

jr_010_7522:
    nop
    ld bc, $0138

jr_010_7526:
    ld e, c
    ld bc, $01f6
    ld a, [hl-]
    rlca
    jr c, @+$0f

    jr c, @+$17

    jr c, jr_010_756c

    jr c, @+$3c

    jr c, @+$3c

    jr c, jr_010_7572

    jr c, jr_010_753a

jr_010_753a:
    ld bc, $a20f
    nop
    ld bc, $0562
    add c
    dec bc
    ld h, d
    ld de, $19a3
    sub d
    ld hl, $2926
    db $e4
    nop
    nop
    ld bc, $0192
    rst $30

jr_010_7552:
    ld bc, $0139
    rst $20

jr_010_7556:
    jr z, @+$28

jr_010_7558:
    ld h, h
    ld h, $64
    ld h, $64
    ld h, $64
    ld h, $00
    ld bc, $a414
    nop
    ld bc, $0112
    ld e, a
    ld bc, $0165

jr_010_756c:
    ld de, $5f10
    ld d, $5f
    inc e

jr_010_7572:
    ld e, a
    ld [hl+], a
    ld e, a
    jr nc, @+$61

    nop
    nop
    ld bc, $0173
    ld e, [hl]
    ld bc, $015f

jr_010_7580:
    ld h, l
    ld b, $5e
    dec bc
    ld e, [hl]
    db $10
    ld e, [hl]
    add hl, de
    ld e, [hl]
    ld hl, $295e
    ld e, [hl]
    add hl, sp
    ld e, [hl]
    nop
    ld bc, $a612
    nop
    ld bc, $013c
    ld e, h
    ld bc, $01b7
    ld c, b
    ld d, $73
    ld d, $db
    ld d, $db
    jr @+$28

    dec hl
    add c
    ld [hl-], a
    ld h, $00
    nop
    ld bc, $0109
    db $ed
    ld bc, $0171
    jp z, $ca18

    jr jr_010_7580

    jr @-$34

    ld hl, $2aca
    jp z, $ca33

    inc a
    ld h, $00
    ld bc, $a816
    nop
    ld bc, $01e4
    ld c, b
    ld bc, $0165
    ld e, h
    ld de, $1765
    ld [hl-], a
    ld e, $ca
    dec h
    jp z, $bc2d

    dec [hl]
    ld e, [hl]
    nop
    nop
    ld bc, $01ca
    ld e, [hl]
    ld bc, $0165
    cp h
    ld [hl-], a
    cp h
    ld [hl], e
    cp h
    ld [hl], e
    cp h
    ld a, b
    cp h
    ld a, b
    cp h
    ld a, b
    cp h
    adc b
    adc b
    adc b
    adc b
    nop
    nop
    ld bc, $016d
    jp z, $bc01

    ld bc, $73f7
    ld l, b
    ld [hl], e
    ld e, a
    ld [hl], e
    and d
    ld a, b
    cp h
    ld a, b
    rst $30
    nop
    ld bc, $ab1b
    nop
    ld bc, $01d1
    dec a
    ld bc, $016d
    ld d, [hl]
    ld de, $19d1
    pop de
    dec e
    ld l, l
    dec h
    ld d, l
    add hl, hl
    jr c, jr_010_761f

jr_010_761f:
    nop
    ld bc, $016d
    ld d, [hl]
    ld bc, $0155
    add hl, sp
    dec c
    add hl, sp
    ld de, $3539
    add hl, sp
    dec [hl]
    ld d, l
    ld h, l
    ld d, l
    ld h, l
    ld d, l
    nop
    inc b
    ld bc, $0019
    ld bc, $0154
    reti


    ld b, $56
    ld [$19ba], sp
    ld d, l
    nop
    inc b
    ld bc, $0023
    ld bc, $01d9
    db $76
    ld bc, $08ba
    sub d
    add hl, de
    cpl
    nop
    inc b
    ld bc, $0027
    ld bc, $01d9
    cp d
    ld bc, $09b9
    cpl
    ld c, $92
    nop
    inc b
    ld bc, $00b0
    ld bc, $01d9
    db $76
    rlca
    cp d
    ld [de], a
    ld h, $14
    add a
    rra
    add a
    ld h, $87
    nop
    nop
    ld bc, $0176
    add a
    ld de, $1245
    ld d, [hl]
    ld [de], a
    ld e, [hl]
    inc de
    add a
    add a
    add a
    nop
    ld bc, $b219
    nop
    ld bc, $013c
    ld l, l
    ld bc, $0141
    ld h, l
    ld e, $5e
    jr z, jr_010_76f3

    ld [hl-], a
    ld e, [hl]
    nop
    nop
    ld bc, $01ca
    ld h, l
    ld bc, $015e
    ld l, l
    inc d
    ld e, [hl]
    inc hl
    ld e, [hl]
    ld [hl-], a
    ld e, [hl]
    ld b, c
    ld e, [hl]
    nop
    ld bc, $b40f
    nop
    ld bc, $0154
    add c
    add hl, bc
    ld d, [hl]
    dec bc
    pop de
    rla
    db $db
    ld e, $71
    dec h
    ld d, l
    nop
    ld bc, $b51e
    nop
    ld bc, $0155
    rst $20
    ld bc, $0156
    rlca

jr_010_76c9:
    ld [de], a
    ld d, [hl]
    dec de
    ld d, [hl]
    inc h
    ld d, [hl]
    dec l
    ld d, l
    nop
    nop
    ld bc, $01e7
    rlca
    ld bc, $0156
    ld d, l
    add hl, bc
    ld d, [hl]
    ld [de], a
    ld d, [hl]
    dec de
    ld d, [hl]
    ld e, $56
    add hl, sp
    ld d, l
    ld a, b
    db $ed
    nop
    nop
    ld bc, HeaderGlobalChecksum
    ld h, $01
    ld d, b
    ld bc, $78ec
    ld c, a

jr_010_76f3:
    nop
    ld bc, $b812
    nop
    ld bc, $013d
    ld a, [hl-]
    ld b, $26
    ld a, [bc]
    ld b, l
    rrca
    ld a, a
    dec d
    ld h, $1c
    ld h, $26
    ld h, $00
    nop
    ld bc, $01d5
    ld a, [hl-]
    ld bc, $0138
    ld h, $03
    ld h, $06
    ld h, $0a
    ld h, $0f
    ld h, $19
    ld h, $24
    ld h, $30
    ld h, $00
    nop
    ld bc, $0158
    ld b, e
    ld bc, $1708
    ret c

    jr jr_010_76c9

    jr jr_010_7787

    ld a, [de]
    sbc c
    nop
    nop
    ld bc, $018e
    ld a, [hl-]
    ld bc, $0159
    jr c, @+$25

    ld a, [hl-]
    inc sp
    ld a, [hl-]
    nop
    ld bc, $bc12
    nop
    ld bc, HeaderROMSize
    ld e, l
    ld bc, $015c
    ld c, [hl]
    db $10
    ld c, a
    ld [de], a
    ld c, a
    ld c, a
    ld c, a
    inc d
    ld c, a
    add hl, de
    ld c, a
    ld e, $4f
    nop
    ld bc, $bd1b
    nop
    ld bc, $0126
    jp z, Jump_010_4e01

    ld bc, $054f
    jp z, $ca05

    ld a, [bc]
    jp z, $ca0d

    rrca
    ld c, [hl]
    ld de, $164f
    ld h, $1d
    ld h, $24
    ld h, $00
    nop
    ld bc, $01eb
    jp z, $2601

    ld bc, $394f
    ld c, [hl]
    add hl, sp
    ld c, [hl]
    add hl, sp
    ld c, [hl]
    add hl, sp

jr_010_7787:
    ld c, [hl]
    add hl, sp
    ld c, [hl]
    ld b, b
    ld c, [hl]
    ld b, b
    ld c, [hl]
    ld b, b
    ld c, [hl]
    ld c, a
    ld c, a
    nop
    nop
    ld bc, $0181
    db $e4
    ld bc, $13bd
    ret c

    inc de
    rst $20
    inc d
    rst $30
    inc h
    ret c

    ld l, $d8
    nop
    ld [bc], a
    xor c
    ret nz

    nop
    ld bc, $01ca
    ret c

    ld bc, $01eb
    or [hl]
    rra
    or [hl]
    ld l, $ca
    nop
    nop
    ld bc, HeaderOldLicenseeCode
    db $eb
    ld bc, $015c
    or [hl]
    inc de
    ret c

    rra
    ld d, b
    ld l, $50
    nop
    nop
    ld bc, $01ba
    ld e, a
    ld bc, $01ca
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $0011
    ld bc, $c314
    nop
    ld bc, $013d
    sbc $01
    ld [hl+], a
    dec d
    ld [hl+], a
    rra
    ld e, c
    add hl, hl
    jr c, @+$35

    jr c, jr_010_7820

    jr c, jr_010_77ef

jr_010_77ef:
    nop
    ld bc, $01f6
    ld e, c
    ld bc, $01bc
    add hl, sp
    inc hl
    ld e, c
    cpl
    ld e, c
    dec sp
    ld e, c
    dec sp
    ld e, c
    nop
    nop
    ld bc, $013c
    ld e, [hl]
    ld bc, $0195
    cpl
    inc d
    inc a
    inc [hl]
    ld [$5e64], a
    ld h, h
    ld e, [hl]
    ld h, h
    ld e, [hl]
    ld h, h
    ld e, [hl]
    nop
    nop
    ld bc, $016d
    ld [hl+], a
    ld bc, $015e
    db $ec

jr_010_7820:
    dec d
    ld l, l
    inc [hl]
    db $ec
    ld [hl], e
    ld e, h
    ld [hl], e
    ld l, l
    ld [hl], e
    ld l, b
    ld [hl], e
    ld l, b
    nop
    nop
    ld bc, $0111
    cp c
    ld bc, $1a65
    rst $08
    ld a, [de]
    db $e4
    ld a, [de]
    ld b, c
    nop
    nop
    ld bc, $0156
    add hl, sp
    ld bc, $015e
    ld e, c
    inc d
    ld e, [hl]
    dec e
    ld e, [hl]
    ld [hl+], a

jr_010_7849:
    ld e, [hl]
    dec hl
    ld e, [hl]
    jr nc, jr_010_78ac

    nop
    nop
    ld bc, $0165
    ld d, l
    ld bc, $015e
    ld e, a
    ld h, l
    sub l
    sub l
    sub l
    sub l
    sub l
    sub l
    sub l
    nop
    nop
    ld bc, $00ed
    nop
    ld bc, HeaderNewLicenseeCode
    di
    ld bc, $42c2
    db $db
    nop
    nop
    ld bc, $01f2
    ld e, c
    ld bc, $015e
    ret c

    rlca
    ld e, [hl]
    dec c
    ld e, [hl]
    inc d
    ld e, [hl]
    ld e, $5e
    add hl, hl
    ld e, [hl]
    ld [hl], $5e
    nop
    ld bc, $cd1f
    nop
    ld bc, $012a
    db $ed
    ld bc, $0178
    sbc c
    jr jr_010_7849

    dec e
    ld h, $24
    sbc c
    dec hl
    sbc c
    ld [hl-], a
    ld h, $00
    nop
    ld bc, $0199
    ld e, c
    ld bc, $019d
    ld [hl], c
    rrca
    sbc c
    ld d, $99
    dec e
    sbc c
    daa

jr_010_78ac:
    sbc c
    ld sp, $3b9d
    ld e, c
    nop
    nop
    ld bc, $012c
    dec e
    ld bc, $019d
    adc c
    ld a, [de]
    ld e, c
    ld a, [de]
    ld h, $65
    jr nz, jr_010_78c2

jr_010_78c2:
    nop
    ld bc, $01bd
    and e
    ld bc, $01d3
    sbc l
    inc e
    ld de, $5932
    ld a, b
    ld l, b
    ld a, b
    ld l, b
    nop
    nop
    ld bc, $01cf
    ld [hl+], a
    ld bc, $019d
    ld e, c
    ld d, h
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    ld h, l
    sbc c
    nop
    ld bc, $d217
    nop
    ld bc, $0176
    dec e
    inc b
    inc l
    inc b
    ld l, $0d
    inc l
    inc de
    ld l, $1a
    ld l, $22
    ld l, $2b
    inc h
    nop
    nop
    ld bc, $01d5
    adc [hl]
    ld bc, $01d8
    ld e, c
    inc sp
    ret c

    inc sp
    ret c

    inc sp
    ret c

    inc sp
    ret c

    dec [hl]
    ld e, c
    nop
    nop
    ld bc, $0138
    cp h
    ld bc, $0199
    ld e, h
    ld a, [bc]
    sbc c
    inc de
    sbc c
    inc e
    sbc c
    dec h
    sbc c
    ld l, $99
    nop
    nop
    ld bc, $0171
    add sp, $01
    ld h, $01
    or e
    add sp, -$18
    add sp, -$18
    add sp, -$18
    add sp, -$18
    add sp, -$18
    add sp, -$18
    nop
    nop
    ld bc, $01c9
    inc hl
    ld bc, $01b6
    ld e, h
    ld [hl], b
    ld l, b
    ld [hl], b
    sbc h
    ld [hl], b
    sub $00
    nop
    ld bc, $3242
    ld e, c
    inc [hl]
    sbc l
    ld [hl], $e0
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    nop
    nop
    ld bc, $01da
    add hl, sp
    ld bc, $01f7
    add sp, $19
    add sp, $21
    add sp, $29
    add sp, $31
    add sp, $39
    add sp, $41
    add sp, $00
    ld bc, $d91e
    nop
    ld bc, $14a3
    ld b, l
    add hl, de
    add sp, $20
    ret c

    jr nz, @-$48

    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    nop
    nop
    ld bc, $0145
    add sp, $01
    ld e, c
    ld bc, $70d8
    sbc h
    ld [hl], b
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $d6
    sub $00
    ld bc, $db26
    nop
    ld bc, $0158
    xor h
    ld bc, $015c
    or [hl]
    inc d
    dec [hl]
    inc d
    sbc l
    sbc l
    sbc l
    sbc l
    sbc l
    nop
    nop
    ld bc, $019d
    ld e, c
    ld bc, $017e
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    sbc c
    nop
    ld bc, $dd21
    nop
    ld bc, $07b5
    sbc $07
    or [hl]
    inc e
    ld a, [hl-]
    dec h
    ret c

    ld l, $d8
    scf
    ld e, c
    nop
    nop
    ld bc, $01f6
    ld a, [hl-]
    ld bc, $0122
    ld e, c
    ld b, [hl]
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    ld e, c
    nop
    nop
    ld bc, $073d
    ld a, [hl-]
    dec c
    ld l, l
    inc de
    add hl, sp
    add hl, de
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    nop
    ld bc, $e019
    nop
    ld bc, $013c
    ld a, $01
    dec a
    ld bc, $1635
    dec a
    ld hl, $2c3d
    ld a, [hl-]
    scf
    ccf
    nop
    nop
    ld bc, $0135
    ld a, [hl-]
    ld bc, $01d8
    cp [hl]
    ld h, $d8
    ld [hl], $3a
    ld b, [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    nop
    nop
    ld bc, $00d9
    nop
    ld bc, $013e
    dec a
    ld bc, $016d
    ld e, h
    add hl, de
    add hl, sp
    add hl, de
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    ld bc, $01cf
    sbc l
    ld bc, $0141
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    db $d3
    nop
    ld bc, $e518
    nop
    ld bc, HeaderTitle
    inc l
    ld bc, $0d2e
    db $e4
    add hl, de
    xor h
    dec de
    xor h
    inc hl
    dec [hl]
    dec hl
    ld a, [c]
    nop
    nop
    ld bc, $01da
    rst $20
    ld bc, $0135
    ld a, [c]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld a, [c]
    ld h, h
    ret c

    ld [hl], l
    db $ed
    nop
    nop
    ld bc, $01e1
    ret c

    ld bc, $013a
    cp [hl]
    ld [hl], b
    sbc h
    ld [hl], b
    ld h, $70
    sub $d6
    sub $d6
    sub $d6
    sub $00
    ld bc, $e819
    nop
    ld bc, $0121
    xor a
    add hl, bc
    ld e, b
    ld de, $19de
    ld h, $21
    sbc l
    add hl, hl
    sbc l
    ld sp, $0026
    nop
    ld bc, $01cf
    ld [hl+], a
    ld bc, $01f6
    ld e, c
    ld h, h
    ld e, c
    ld h, l
    sbc h
    ld h, l
    sub $d6
    ld e, c
    nop
    nop
    ld bc, $0156
    ld d, l
    ld bc, $013a
    ld l, c
    inc c
    ld l, c
    inc d
    ld l, c
    jr @+$6b

    jr nz, @+$6b

    inc h
    ld l, c
    inc l
    ld l, c
    nop
    nop
    ld bc, $016d
    ret c

    ld bc, $0159
    ld [hl], e
    ret c

    ret c

    ret c

    ret c

    ret c

    ret c

    nop
    nop
    ld bc, $0ba6
    and [hl]
    dec d
    and [hl]
    rra
    and [hl]
    add hl, hl
    and [hl]
    inc sp
    and [hl]
    dec a
    and [hl]
    ld b, a
    and [hl]
    ld d, c
    and [hl]
    ld e, e
    and [hl]
    nop
    dec b
    inc d
    ld [bc], a
    ld l, e
    dec b
    inc d
    ld bc, $056a
    inc d
    inc bc
    db $ed
    nop
    ld bc, $00b7
    nop
    ld bc, $0188
    sbc l
    ld bc, $0159
    push bc
    add hl, de
    sbc l
    rra
    ld e, c
    dec h
    ld e, c
    ld sp, $3188
    adc b
    nop
    ld bc, $7c1e
    nop
    ld bc, $01b5
    ld e, l
    add hl, bc
    cp d
    dec c
    or l
    dec d
    ld e, l
    add hl, de
    cpl
    ld hl, $2508
    ld e, [hl]
    dec l
    ld e, [hl]
    ld sp, $003a
    ld bc, $7d1e
    nop
    ld bc, $0154
    ld h, d
    add hl, bc
    ld [bc], a
    inc c
    sub d
    rrca
    ld d, [hl]
    ld de, $2909
    ld d, l
    ld sp, $00ee
    ld bc, $7e1e
    nop
    ld bc, $0734
    or a
    add hl, bc
    sub d
    inc c
    ld l, l
    db $10
    rlca
    rra
    ld [$3525], sp
    dec hl
    ld l, l
    ld sp, $00ee
    nop
    ld bc, $04d5
    ret nc

    ld [$0d59], sp
    ld [hl+], a
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec hl
    ld [hl+], a
    dec [hl]
    ld [hl+], a
    nop
    nop
    ld bc, $0456
    ld [hl], e
    rlca
    sub l
    ld a, [bc]
    add a
    ld [hl], b
    ld l, b
    ld [hl], b
    ld e, h
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    ld [hl], e
    ld a, b
    sub l
    ld [hl], a
    add a
    add a
    add a
    nop
    nop
    ld bc, $012e
    pop de
    ld bc, $3d2c
    ld a, [c]
    ld b, a
    ld d, l
    ld h, l
    push af
    ld h, l
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    nop
    nop
    ld bc, $012e
    rla
    ld bc, $4735
    push af
    ld h, h
    add sp, $65
    db $dd
    ld h, l
    db $ed
    db $dd
    db $dd
    db $dd
    db $dd
    nop
    nop
    ld bc, $012c
    ld a, [hl-]
    ld bc, $6539
    push af
    ld h, l
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    nop
    ld bc, $f71e
    nop
    ld bc, $012c
    ld e, b
    rlca
    sbc $0f
    dec h
    ld d, $9d
    dec e
    dec h
    inc h
    dec h
    dec hl
    ld a, [c]
    ld [hl-], a
    ld e, c
    add hl, sp
    dec h
    nop
    ld bc, $f837
    nop
    ld bc, $019d
    ld e, c
    ld bc, $01b6
    or [hl]
    ld [$0fb6], sp
    jp c, $9d16

    dec e
    jp c, $9d26

    cpl
    ld a, [c]
    jr c, jr_010_7c58

    ld b, c
    ccf
    nop
    nop
    ld bc, $017e
    ld a, [hl-]
    ld bc, $0155
    ld e, c
    ld h, h
    ld e, c
    ld h, l
    or $f6
    or $f6
    or $f6
    or $f6
    or $f6
    or $f6
    or $00
    nop
    ld bc, $0112
    ld l, $16
    ld l, c
    ld h, h
    or c
    ld h, l
    ld e, c
    ld h, l
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    xor [hl]
    nop
    nop
    ld bc, $0112
    ld l, $16
    ld l, c
    ld h, h
    db $dd
    ld h, l
    ld e, c
    ld h, l
    ld d, l
    or $f6
    or $f6
    or $f6
    or $f6
    nop
    nop
    ld bc, $01ca
    ld e, [hl]
    ld bc, $6569
    or $7f
    ld l, c
    ld a, a
    ld l, c
    ld a, a
    ld l, c
    ld a, a

jr_010_7c58:
    ld l, c
    or $69
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_010_7e81:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
