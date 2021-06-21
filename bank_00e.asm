; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    and a
    ld a, [$d22d]
    dec a
    ret z

    ld a, [$c2dc]
    and a
    ret nz

    ld a, $0f
    ld hl, $68d1
    rst $08
    ret nz

    ld a, [$c66c]
    bit 7, a
    jr nz, jr_00e_4041

    ld a, [$c731]
    and a
    jr nz, jr_00e_4041

    ld hl, $55a1
    ld a, [$cfc0]
    and a
    jr nz, jr_00e_4032

    ld a, [$d233]
    dec a
    ld bc, $0007
    call $30fe

jr_00e_4032:
    bit 0, [hl]
    jp nz, Jump_00e_4045

    bit 1, [hl]
    jp nz, Jump_00e_4083

    bit 2, [hl]
    jp nz, Jump_00e_40c1

Jump_00e_4041:
jr_00e_4041:
    call Call_00e_4105
    ret


Jump_00e_4045:
    ld hl, $4941
    ld a, $0d
    rst $08
    ld a, [$c717]
    and $f0
    jp z, Jump_00e_4041

    cp $10
    jr nz, jr_00e_4061

    call $2f8c
    cp $80
    jr c, jr_00e_4077

    jp Jump_00e_4041


jr_00e_4061:
    cp $20
    jr nz, jr_00e_406f

    call $2f8c
    cp $c8
    jr c, jr_00e_4077

    jp Jump_00e_4041


jr_00e_406f:
    call $2f8c
    cp $0a
    jp c, Jump_00e_4041

jr_00e_4077:
    ld a, [$c717]
    and $0f
    inc a
    ld [$c718], a
    jp Jump_00e_444b


Jump_00e_4083:
    ld hl, $4941
    ld a, $0d
    rst $08
    ld a, [$c717]
    and $f0
    jp z, Jump_00e_4041

    cp $10
    jr nz, jr_00e_409f

    call $2f8c
    cp $14
    jr c, jr_00e_40b5

    jp Jump_00e_4041


jr_00e_409f:
    cp $20
    jr nz, jr_00e_40ad

    call $2f8c
    cp $1e
    jr c, jr_00e_40b5

    jp Jump_00e_4041


jr_00e_40ad:
    call $2f8c
    cp $c8
    jp c, Jump_00e_4041

jr_00e_40b5:
    ld a, [$c717]
    and $0f
    inc a
    ld [$c718], a
    jp Jump_00e_444b


Jump_00e_40c1:
    ld hl, $4941
    ld a, $0d
    rst $08
    ld a, [$c717]
    and $f0
    jp z, Jump_00e_4041

    cp $10
    jr nz, jr_00e_40dd

    call $2f8c
    cp $32
    jr c, jr_00e_40f3

    jp Jump_00e_4041


jr_00e_40dd:
    cp $20
    jr nz, jr_00e_40eb

    call $2f8c
    cp $80
    jr c, jr_00e_40f3

    jp Jump_00e_4041


jr_00e_40eb:
    call $2f8c
    cp $32
    jp c, Jump_00e_4041

jr_00e_40f3:
    ld a, [$c717]
    and $0f
    inc a
    ld [$c718], a
    jp Jump_00e_444b


    ld a, [$c671]
    bit 7, a
    ret


Call_00e_4105:
    ld a, [$cfc0]
    and a
    ret nz

    ld a, [$c650]
    ld b, a
    ld a, [$c651]
    or b
    ret z

    call Call_00e_4170
    ret nc

    ld a, [$d233]
    dec a
    ld hl, $55a1
    ld bc, $0007
    call $30fe
    ld b, h
    ld c, l
    ld hl, $4196
    ld de, $c650

jr_00e_412c:
    ld a, [hl]
    and a
    inc a
    ret z

    ld a, [de]
    cp [hl]
    jr z, jr_00e_413f

    inc de
    ld a, [de]
    cp [hl]
    jr z, jr_00e_413f

    dec de
    inc hl
    inc hl
    inc hl
    jr jr_00e_412c

jr_00e_413f:
    inc hl
    push hl
    push de
    ld de, $414a
    push de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    pop de
    pop hl
    inc hl
    inc hl
    jr c, jr_00e_412c

    xor a
    ld [de], a
    inc a
    ld [$c70f], a
    ld hl, $c66f
    res 0, [hl]
    xor a
    ld [$c680], a
    ld [$c681], a
    ld [$c72c], a
    ld hl, $c670
    res 6, [hl]
    xor a
    ld [$c6f9], a
    scf
    ret


Call_00e_4170:
    ld a, [$d280]
    ld d, a
    ld e, $00
    ld hl, $d2a7
    ld bc, $0030

jr_00e_417c:
    ld a, [hl]
    cp e
    jr c, jr_00e_4181

    ld e, a

jr_00e_4181:
    add hl, bc
    dec d
    jr nz, jr_00e_417c

    ld a, [$c663]
    ld hl, $d2a7
    call $30fe
    ld a, [hl]
    cp e
    jr nc, jr_00e_4194

    and a
    ret


jr_00e_4194:
    scf
    ret


    ld c, $08
    ld b, d
    rrca
    jr nz, @+$44

    db $10
    add h
    ld b, d
    ld de, $4292
    ld [de], a
    and b
    ld b, d
    ld hl, $42f9
    ld h, $be
    ld b, c
    add hl, hl
    dec b
    ld b, e
    inc l
    ld de, $3143
    dec e
    ld b, e
    inc sp
    add hl, hl
    ld b, e
    inc [hl]
    dec [hl]
    ld b, e
    dec [hl]
    ld b, c
    ld b, e
    rst $38
    call Call_00e_41ca
    jp c, Jump_00e_4383

    call Call_00e_43a3
    jp Jump_00e_4385


Call_00e_41ca:
    ld a, [$d214]
    and a
    jp z, Jump_00e_4383

    ld a, [bc]
    bit 6, a
    jr nz, jr_00e_41e7

    ld a, [bc]
    bit 4, a
    jp nz, Jump_00e_4385

    call $2f8c
    cp $32
    jp c, Jump_00e_4385

    jp Jump_00e_4383


jr_00e_41e7:
    ld a, [$c671]
    bit 0, a
    jr z, jr_00e_41fd

    ld a, [$c67c]
    cp $04
    jr c, jr_00e_41fd

    call $2f8c
    cp $80
    jp c, Jump_00e_4385

jr_00e_41fd:
    ld a, [$d214]
    and $27
    jp z, Jump_00e_4383

    jp Jump_00e_4385


    call Call_00e_422c
    jp nc, Jump_00e_421a

    ld a, [bc]
    bit 6, a
    jp z, Jump_00e_4383

    call Call_00e_41ca
    jp c, Jump_00e_4383

Jump_00e_421a:
    call Call_00e_43b5
    jp Jump_00e_4385


    call Call_00e_422c
    jp c, Jump_00e_4383

    call Call_00e_43ae
    jp Jump_00e_4385


Call_00e_422c:
    ld a, [bc]
    bit 6, a
    jr nz, jr_00e_4267

    ld hl, $5281
    ld a, $0e
    rst $08
    jp c, Jump_00e_4383

    ld a, [bc]
    bit 5, a
    jp nz, Jump_00e_4254

    ld hl, $5298
    ld a, $0e
    rst $08
    jp nc, Jump_00e_4281

    call $2f8c
    cp $80
    jp c, Jump_00e_4281

    jp Jump_00e_4383


Jump_00e_4254:
    ld hl, $5298
    ld a, $0e
    rst $08
    jp c, Jump_00e_4383

    call $2f8c
    cp $32
    jp c, Jump_00e_4383

    jr jr_00e_4281

jr_00e_4267:
    ld hl, $5281
    ld a, $0e
    rst $08
    jp c, Jump_00e_4383

    ld hl, $5298
    ld a, $0e
    rst $08
    jp nc, Jump_00e_4281

    call $2f8c
    cp $32
    jp nc, Jump_00e_4383

Jump_00e_4281:
jr_00e_4281:
    jp Jump_00e_4385


    call Call_00e_422c
    jp c, Jump_00e_4383

    ld b, $c8
    call Call_00e_43f4
    jp Jump_00e_4385


    call Call_00e_422c
    jp c, Jump_00e_4383

    ld b, $32
    call Call_00e_43ee
    jp Jump_00e_4385


    call Call_00e_422c
    jp c, Jump_00e_4383

    ld b, $14
    call Call_00e_43e8
    jp Jump_00e_4385


    ld hl, $5251
    ld a, $0e
    rst $08
    jr c, jr_00e_42e4

    push bc
    ld de, $d219
    ld hl, $d217
    ld a, [de]
    sub [hl]
    jr z, jr_00e_42e7

    dec hl
    dec de
    ld c, a
    sbc [hl]
    and a
    jr nz, jr_00e_42e7

    ld a, c
    cp b
    jp c, Jump_00e_42d5

    ld hl, $5298
    ld a, $0e
    rst $08
    jr c, jr_00e_42e7

Jump_00e_42d5:
    pop bc
    ld a, [bc]
    bit 5, a
    jp z, Jump_00e_4385

    call $2f8c
    cp $80
    jp c, Jump_00e_4385

jr_00e_42e4:
    jp Jump_00e_4383


jr_00e_42e7:
    pop bc
    ld a, [bc]
    bit 5, a
    jp z, Jump_00e_4383

    call $2f8c
    cp $64
    jp c, Jump_00e_4385

    jp Jump_00e_4383


    call Call_00e_434d
    jp c, Jump_00e_4383

    call Call_00e_44f7
    jp Jump_00e_4385


    call Call_00e_434d
    jp c, Jump_00e_4383

    call Call_00e_4504
    jp Jump_00e_4385


    call Call_00e_434d
    jp c, Jump_00e_4383

    call Call_00e_4511
    jp Jump_00e_4385


    call Call_00e_434d
    jp c, Jump_00e_4383

    call Call_00e_4541
    jp Jump_00e_4385


    call Call_00e_434d
    jp c, Jump_00e_4383

    call Call_00e_4547
    jp Jump_00e_4385


    call Call_00e_434d
    jp c, Jump_00e_4383

    call Call_00e_454d
    jp Jump_00e_4385


    call Call_00e_434d
    jp c, Jump_00e_4383

    call Call_00e_4553
    jp Jump_00e_4385


Call_00e_434d:
    ld a, [$c6dc]
    and a
    jr nz, jr_00e_4372

    ld a, [bc]
    bit 4, a
    jp nz, Jump_00e_4385

    call $2f8c
    cp $80
    jp c, Jump_00e_4383

    ld a, [bc]
    bit 6, a
    jp nz, Jump_00e_4385

    call $2f8c
    cp $80
    jp c, Jump_00e_4383

    jp Jump_00e_4385


jr_00e_4372:
    ld a, [bc]
    bit 4, a
    jp z, Jump_00e_4383

    call $2f8c
    cp $32
    jp nc, Jump_00e_4383

    jp Jump_00e_4385


Jump_00e_4383:
    scf
    ret


Jump_00e_4385:
    and a
    ret


Jump_00e_4387:
    call $39b0
    ld a, $0f
    ld hl, $6036
    rst $08
    ld a, $01
    ldh [$d4], a
    ld hl, $c6e6
    dec [hl]
    scf
    ret


Call_00e_439a:
    push de
    ld de, $0005
    call $3c23
    pop de
    ret


Call_00e_43a3:
    call Call_00e_439a
    call Call_00e_44e0
    ld a, $26
    jp Jump_00e_4568


Call_00e_43ae:
    ld a, $0f
    ld [$d1f1], a
    jr jr_00e_43c6

Call_00e_43b5:
    call Call_00e_44e0
    ld a, $0e
    ld [$d1f1], a
    ld hl, $c66f
    res 7, [hl]
    xor a
    ld [$c67b], a

jr_00e_43c6:
    ld de, $d1ec
    ld hl, $d217
    ld a, [hl-]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    inc de
    ld hl, $d219
    ld a, [hl-]
    ld [de], a
    inc de
    ld [$d1ea], a
    ld [$d217], a
    ld a, [hl]
    ld [de], a
    ld [$d1eb], a
    ld [$d216], a
    jr jr_00e_4436

Call_00e_43e8:
    ld a, $12
    ld b, $14
    jr jr_00e_43f8

Call_00e_43ee:
    ld a, $11
    ld b, $32
    jr jr_00e_43f8

Call_00e_43f4:
    ld a, $10
    ld b, $c8

jr_00e_43f8:
    ld [$d1f1], a
    ld hl, $d217
    ld a, [hl]
    ld [$d1ec], a
    add b
    ld [hl-], a
    ld [$d1ee], a
    ld a, [hl]
    ld [$d1ed], a
    ld [$d1ef], a
    jr nc, jr_00e_4415

    inc a
    ld [hl], a
    ld [$d1ef], a

jr_00e_4415:
    inc hl
    ld a, [hl-]
    ld b, a
    ld de, $d219
    ld a, [de]
    dec de
    ld [$d1ea], a
    sub b
    ld a, [hl+]
    ld b, a
    ld a, [de]
    ld [$d1eb], a
    sbc b
    jr nc, jr_00e_4436

    inc de
    ld a, [de]
    dec de
    ld [hl-], a
    ld [$d1ee], a
    ld a, [de]
    ld [hl], a
    ld [$d1ef], a

jr_00e_4436:
    call Call_00e_4571
    ld hl, $c4ca
    xor a
    ld [$d10a], a
    call Call_00e_439a
    ld a, $0b
    call $2d83
    jp Jump_00e_4387


Jump_00e_444b:
    ld a, [$d280]
    ld c, a
    ld hl, $d2aa
    ld d, $00

jr_00e_4454:
    ld a, [hl+]
    ld b, a
    ld a, [hl-]
    or b
    jr z, jr_00e_445b

    inc d

jr_00e_445b:
    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    dec c
    jr nz, jr_00e_4454

    ld a, d
    cp $02
    jp nc, Jump_00e_446c

    and a
    ret


Jump_00e_446c:
    ld a, $01
    ld [$c711], a
    ld [$c70f], a
    ld hl, $c670
    res 6, [hl]
    xor a
    ldh [$e4], a
    ld hl, $5c5b
    ld a, $0f
    rst $08
    push af
    ld a, [$c663]
    ld hl, $d2a8
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    ld hl, $d214
    ld bc, $0004
    call $3026
    pop af
    jr c, jr_00e_44a3

    ld hl, $44d0
    call $1057

jr_00e_44a3:
    ld a, $01
    ld [$d264], a
    ld hl, $5834
    ld a, $0f
    rst $08
    ld hl, $5867
    ld a, $0f
    rst $08
    ld hl, $c668
    res 7, [hl]
    ld a, $0f
    ld hl, $54e1
    rst $08
    ld a, $0f
    ld hl, $557a
    rst $08
    xor a
    ld [$d264], a
    ld a, [$c2dc]
    and a
    ret nz

    scf
    ret


    ld d, $9c
    ld c, a
    ld l, a
    ld d, b
    call Call_00e_439a
    call Call_00e_44e0
    ld a, $34
    jp Jump_00e_4568


Call_00e_44e0:
    ld a, [$c663]
    ld hl, $d2a8
    ld bc, $0030
    call $30fe
    xor a
    ld [hl], a
    ld [$d214], a
    ld hl, $c671
    res 0, [hl]
    ret


Call_00e_44f7:
    call Call_00e_439a
    ld hl, $c670
    set 0, [hl]
    ld a, $21
    jp Jump_00e_4568


Call_00e_4504:
    call Call_00e_439a
    ld hl, $c670
    set 1, [hl]
    ld a, $29
    jp Jump_00e_4568


Call_00e_4511:
    call Call_00e_439a
    ld hl, $c670
    set 2, [hl]
    ld a, $2c
    jp Jump_00e_4568


    ldh [$b7], a
    ld hl, $d218
    ld a, [hl+]
    ldh [$b3], a
    ld a, [hl]
    ldh [$b4], a
    ld b, $02
    call $3124
    ldh a, [$b6]
    ld c, a
    ldh a, [$b5]
    ld b, a
    ld hl, $d217
    ld a, [hl-]
    ld e, a
    ld a, [hl]
    ld d, a
    ld a, d
    sub b
    ret nz

    ld a, e
    sub c
    ret


Call_00e_4541:
    ld b, $00
    ld a, $31
    jr jr_00e_4557

Call_00e_4547:
    ld b, $01
    ld a, $33
    jr jr_00e_4557

Call_00e_454d:
    ld b, $02
    ld a, $34
    jr jr_00e_4557

Call_00e_4553:
    ld b, $03
    ld a, $35

jr_00e_4557:
    ld [$d1f1], a
    push bc
    call Call_00e_4571
    pop bc
    ld a, $0d
    ld hl, $61ef
    rst $08
    jp Jump_00e_4387


Jump_00e_4568:
    ld [$d1f1], a
    call Call_00e_4571
    jp Jump_00e_4387


Call_00e_4571:
    ld a, [$d1f1]
    ld [$d265], a
    call $3468
    ld hl, $d073
    ld de, $d050
    ld bc, $000d
    call $3026
    ld hl, $458c
    jp $1057


    ld d, $af
    ld c, a
    ld l, a
    ld d, b
    ld hl, $d1e9
    ld de, $d208
    ld b, $05

jr_00e_4599:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5508
    ld a, [$c609]
    ld c, a
    push hl
    push de
    push bc
    ld a, $0b
    ld hl, $441a
    rst $08
    pop bc
    pop de
    pop hl
    jr nz, jr_00e_45d6

    ld a, [$c609]
    push hl
    push de
    push bc
    ld hl, $45db
    ld de, $0001
    call $30e1
    pop bc
    pop de
    pop hl
    jr nc, jr_00e_4599

    ld a, [$c63a]
    and a
    jr nz, jr_00e_45d6

    ld a, [$c6ff]
    bit 2, a
    jr z, jr_00e_4599

jr_00e_45d6:
    call Call_00e_5503
    jr jr_00e_4599

    ld bc, $4221
    ld b, e
    rst $38
    ld hl, $d1e9
    ld de, $d208
    ld b, $05

jr_00e_45e8:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5508
    ld a, [$c609]
    cp $0a
    jr c, jr_00e_45e8

    cp $11
    jr c, jr_00e_4613

    jr z, jr_00e_45e8

    cp $19
    jr c, jr_00e_461b

    cp $32
    jr c, jr_00e_45e8

    cp $39
    jr c, jr_00e_4613

    jr z, jr_00e_45e8

    cp $41
    jr c, jr_00e_461b

    jr jr_00e_45e8

jr_00e_4613:
    ld a, [$c6dc]
    and a
    jr nz, jr_00e_462a

    jr jr_00e_4621

jr_00e_461b:
    ld a, [$c6dd]
    and a
    jr nz, jr_00e_462a

jr_00e_4621:
    call Call_00e_5527
    jr c, jr_00e_45e8

    dec [hl]
    dec [hl]
    jr jr_00e_45e8

jr_00e_462a:
    call $2f8c
    cp $1e
    jr c, jr_00e_45e8

    inc [hl]
    inc [hl]
    jr jr_00e_45e8

    ld hl, $d1e9
    ld de, $d208
    ld b, $05

jr_00e_463d:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5508
    push hl
    push bc
    push de
    ld a, $01
    ldh [$e4], a
    ld hl, $47c8
    ld a, $0d
    rst $08
    pop de
    pop bc
    pop hl
    ld a, [$d265]
    and a
    jr z, jr_00e_469d

    cp $0a
    jr z, jr_00e_463d

    jr c, jr_00e_466c

    ld a, [$c60a]
    and a
    jr z, jr_00e_463d

    dec [hl]
    jr jr_00e_463d

jr_00e_466c:
    push hl
    push de
    push bc
    ld a, [$c60b]
    ld d, a
    ld hl, $d208
    ld b, $05
    ld c, $00

jr_00e_467a:
    dec b
    jr z, jr_00e_4693

    ld a, [hl+]
    and a
    jr z, jr_00e_4693

    call Call_00e_5508
    ld a, [$c60b]
    cp d
    jr z, jr_00e_467a

    ld a, [$c60a]
    and a
    jr nz, jr_00e_4692

    jr jr_00e_467a

jr_00e_4692:
    ld c, a

jr_00e_4693:
    ld a, c
    pop bc
    pop de
    pop hl
    and a
    jr z, jr_00e_463d

    inc [hl]
    jr jr_00e_463d

jr_00e_469d:
    call Call_00e_5503
    jr jr_00e_463d

    ld hl, $d1e9
    ld de, $d208
    ld b, $05

jr_00e_46aa:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5508
    ld a, [$c60a]
    and a
    jr nz, jr_00e_46aa

    inc [hl]
    inc [hl]
    jr jr_00e_46aa

    ld hl, $d1ea
    ld de, $d208
    ld b, $05

jr_00e_46c6:
    dec b
    ret z

    ld a, [de]
    inc de
    and a
    ret z

    push de
    push bc
    push hl
    call Call_00e_5508
    ld a, [$c609]
    ld hl, $46f2
    ld de, $0003
    call $30e1
    inc hl
    jr nc, jr_00e_46ec

    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    push hl
    ld bc, $46ec
    push bc
    push de
    ret


jr_00e_46ec:
    pop hl
    pop bc
    pop de
    inc hl
    jr jr_00e_46c6

    ld bc, $47e3
    inc bc
    rst $30
    ld b, a
    rlca
    and [hl]
    ld c, b
    ld [$48ca], sp
    add hl, bc
    ld e, e
    ld c, c
    db $10
    call nc, $1148
    ld b, a
    ld c, c
    rla
    add l
    ld c, c
    add hl, de
    push af
    ld c, c
    ld a, [de]
    ld e, $4a
    inc e
    ld a, [hl+]
    ld c, d
    jr nz, jr_00e_474f

    ld c, d
    ld hl, $4a4e
    inc hl
    ld d, h
    ld c, d
    ld h, $60
    ld c, d
    daa
    sbc h
    ld c, d
    jr z, jr_00e_4744

    ld c, e
    ld a, [hl+]
    ld [hl], c
    ld c, d
    dec hl
    sbc h
    ld c, d
    ld sp, $4adb
    ld [hl], $ed
    ld c, d
    ld b, c
    ld d, h
    ld c, d
    ld b, e
    ld h, $4b
    ld b, [hl]
    ld b, b
    ld c, e
    ld c, a
    ld e, h
    ld c, e
    ld d, b
    ld h, e
    ld c, e
    ld d, c
    ld a, a
    ld c, e
    ld d, d

jr_00e_4744:
    xor b
    ld c, e
    ld d, h
    ld c, [hl]
    ld c, d
    ld d, [hl]
    pop de
    ld c, l
    ld e, c
    pop af
    ld c, e

jr_00e_474f:
    ld e, d
    dec sp
    ld c, h
    ld e, e
    and h
    ld c, h
    ld e, h
    cp d
    ld c, h
    ld e, l
    sbc b
    ld c, l
    ld e, [hl]
    dec e
    ld c, b
    ld h, b
    bit 1, h
    ld h, c
    cp d
    ld c, h
    ld h, d
    add hl, de
    ld c, l
    ld h, e
    add hl, de
    ld c, l
    ld h, h
    push de
    ld c, h
    ld h, [hl]
    rra
    ld c, l
    ld h, a
    ld e, d
    ld c, l
    ld l, c
    sub e
    ld c, l
    ld l, d
    ei
    ld c, l
    ld l, e
    ld c, d
    ld c, [hl]
    ld l, h
    ld d, b
    ld c, [hl]
    ld l, l
    ld e, h
    ld c, [hl]
    ld l, a
    jp nc, Jump_00e_714e

    dec e
    ld c, a
    ld [hl], d
    ld c, d
    ld c, a
    ld [hl], e
    ld a, d
    ld c, a
    ld [hl], h
    xor h
    ld c, a
    ld [hl], l
    rst $28
    ld c, a
    db $76
    ld h, $50
    ld [hl], a
    db $db
    ld c, a
    ld a, b
    ld h, $50
    ld a, h
    ld a, [hl-]
    ld d, b
    ld a, [hl]
    ld b, h
    ld d, b
    ld a, a
    ld h, d
    ld d, b
    add b
    ld [hl], d
    ld d, b
    add c
    add h
    ld d, b
    add h
    ld a, [hl-]
    ld c, d
    add l
    ld a, [hl-]
    ld c, d
    add [hl]
    ld a, [hl-]
    ld c, d
    add a
    sbc [hl]
    ld d, b
    adc b
    bit 2, b
    adc c
    di
    ld d, b
    adc [hl]
    dec a
    ld d, c
    adc a
    ld d, d
    ld d, c
    sub b
    adc e
    ld d, c
    sub c
    add hl, de
    ld c, l
    sub d
    push de
    ld d, c
    sub e
    ld b, h
    ld d, b
    sub h
    di
    ld d, c
    sub l
    push de
    ld d, c
    sub [hl]
    nop
    ld d, d
    sub a
    dec bc
    ld d, d
    sbc b
    dec h
    ld d, d
    sbc e
    ld [de], a
    ld c, e
    rst $38
    ld b, $08
    call Call_00e_52ca
    jr c, jr_00e_47f0

    ld b, $6b
    call Call_00e_52ca
    ret nc

jr_00e_47f0:
    call Call_00e_5527
    ret c

    dec [hl]
    dec [hl]
    ret


    push hl
    ld a, $01
    ldh [$e4], a
    ld hl, $47c8
    ld a, $0d
    rst $08
    pop hl
    ld a, [$d265]
    cp $0a
    jr c, jr_00e_4815

    ret z

    call Call_00e_5251
    ret c

    call Call_00e_5521
    ret c

    dec [hl]
    ret


jr_00e_4815:
    call $2f8c
    cp $64
    ret c

    inc [hl]
    ret


    ld a, [$c66c]
    bit 5, a
    jr nz, jr_00e_4882

    push hl
    call Call_00e_5298
    jr nc, jr_00e_4877

    call Call_00e_5281
    jr c, jr_00e_4834

    call Call_00e_5233
    jr nc, jr_00e_4877

jr_00e_4834:
    ld a, [$c6d2]
    cp $0a
    jr nc, jr_00e_487a

    cp $08
    jr nc, jr_00e_4875

    ld a, [$c6d9]
    cp $05
    jr c, jr_00e_487a

    cp $07
    jr c, jr_00e_4875

    ld hl, $d208
    ld c, $05

jr_00e_484f:
    dec c
    jr z, jr_00e_4877

    ld a, [hl+]
    and a
    jr z, jr_00e_4877

    call Call_00e_5508
    ld a, [$c60c]
    cp $b4
    jr nc, jr_00e_484f

    ld a, $01
    ldh [$e4], a
    push hl
    push bc
    ld a, $0d
    ld hl, $47c8
    rst $08
    ld a, [$d265]
    cp $0a
    pop bc
    pop hl
    jr c, jr_00e_484f

jr_00e_4875:
    pop hl
    ret


jr_00e_4877:
    pop hl
    inc [hl]
    ret


jr_00e_487a:
    pop hl
    call Call_00e_5527
    ret c

    dec [hl]
    dec [hl]
    ret


jr_00e_4882:
    push hl
    ld hl, $d1e9
    ld de, $d208
    ld c, $05

jr_00e_488b:
    inc hl
    dec c
    jr z, jr_00e_48a2

    ld a, [de]
    and a
    jr z, jr_00e_48a2

    inc de
    call Call_00e_5508
    ld a, [$c60c]
    cp $b4
    jr nc, jr_00e_488b

    dec [hl]
    dec [hl]
    jr jr_00e_488b

jr_00e_48a2:
    pop hl
    jp Jump_00e_5503


    push hl
    ld a, $0d
    ld hl, $49f4
    rst $08
    pop hl
    jr nc, jr_00e_48b7

    push hl
    call Call_00e_4e2e
    pop hl
    jr nz, jr_00e_48c6

jr_00e_48b7:
    call Call_00e_5281
    jr c, jr_00e_48c6

    call Call_00e_5298
    ret nc

    call $2f8c
    cp $14
    ret c

jr_00e_48c6:
    inc [hl]
    inc [hl]
    inc [hl]
    ret


    call $2f8c
    cp $19
    ret c

    dec [hl]
    dec [hl]
    dec [hl]
    ret


    ld a, [$c6da]
    cp $0d
    jp nc, Jump_00e_5503

    call Call_00e_5251
    jr nc, jr_00e_48f2

    ld a, [$c66c]
    bit 0, a
    jr nz, jr_00e_48ef

    call $2f8c
    cp $b2
    jr nc, jr_00e_4911

jr_00e_48ef:
    dec [hl]
    dec [hl]
    ret


jr_00e_48f2:
    call Call_00e_5298
    jr nc, jr_00e_490f

    call $2f8c
    cp $0a
    jr c, jr_00e_48ef

    call Call_00e_5281
    jr nc, jr_00e_490a

    call Call_00e_5521
    jr c, jr_00e_48ef

    jr jr_00e_4911

jr_00e_490a:
    call Call_00e_5527
    jr c, jr_00e_4911

jr_00e_490f:
    inc [hl]
    inc [hl]

jr_00e_4911:
    ld a, [$c66c]
    bit 0, a
    jr nz, jr_00e_4938

    ld a, [$c66b]
    bit 7, a
    jr nz, jr_00e_4941

    ld a, [$c6da]
    ld b, a
    ld a, [$c6d1]
    cp b
    jr c, jr_00e_4936

    ld a, [$c678]
    and a
    jr nz, jr_00e_48ef

    ld a, [$c668]
    bit 6, a
    jr nz, jr_00e_48ef

jr_00e_4936:
    inc [hl]
    ret


jr_00e_4938:
    call $2f8c
    cp $50
    ret c

    dec [hl]
    dec [hl]
    ret


jr_00e_4941:
    call Call_00e_5527
    ret c

    dec [hl]
    ret


    ld a, [$c6d9]
    cp $05
    jr c, jr_00e_4954

    ld a, [$c6d2]
    cp $0a
    ret c

jr_00e_4954:
    call Call_00e_5521
    ret c

    dec [hl]
    dec [hl]
    ret


    ld a, [$c6f8]
    and a
    jr nz, jr_00e_4968

    call Call_00e_5233

Jump_00e_4964:
    ret nc

    jp Jump_00e_5503


jr_00e_4968:
    push hl
    ld hl, $5301
    ld de, $0001
    call $30e1
    pop hl
    ret nc

    call Call_00e_5527
    ret c

    dec [hl]
    call Call_00e_5233
    ret nc

    call $2f8c
    cp $19
    ret c

    dec [hl]
    ret


    call Call_00e_5246
    jr nc, jr_00e_49a0

    call Call_00e_5281
    jr nc, jr_00e_49a0

    ld a, [$c66c]
    bit 0, a
    jr nz, jr_00e_499d

    call $2f8c
    cp $b2
    jr nc, jr_00e_49bf

jr_00e_499d:
    dec [hl]
    dec [hl]
    ret


jr_00e_49a0:
    call Call_00e_52b3
    jr nc, jr_00e_49bd

    call $2f8c
    cp $0a
    jr c, jr_00e_499d

    call Call_00e_526e
    jr nc, jr_00e_49b8

    call Call_00e_5521
    jr c, jr_00e_499d

    jr jr_00e_49bf

jr_00e_49b8:
    call Call_00e_5527
    jr c, jr_00e_49bf

jr_00e_49bd:
    inc [hl]
    inc [hl]

jr_00e_49bf:
    ld a, [$c66c]
    bit 0, a
    jr nz, jr_00e_49e6

    ld a, [$c66b]
    bit 7, a
    jr nz, jr_00e_49ef

    ld a, [$c6da]
    ld b, a
    ld a, [$c6d1]
    cp b
    jr c, jr_00e_49e4

    ld a, [$c678]
    and a
    jr nz, jr_00e_499d

    ld a, [$c668]
    bit 6, a
    jr nz, jr_00e_499d

jr_00e_49e4:
    inc [hl]
    ret


jr_00e_49e6:
    call $2f8c
    cp $50
    ret c

    dec [hl]
    dec [hl]
    ret


jr_00e_49ef:
    call Call_00e_5527
    ret c

    dec [hl]
    ret


    push hl
    ld hl, $c6d4
    ld c, $08

jr_00e_49fb:
    dec c
    jr z, jr_00e_4a05

    ld a, [hl+]
    cp $05
    jr c, jr_00e_4a12

    jr jr_00e_49fb

jr_00e_4a05:
    ld hl, $c6cc
    ld c, $08

jr_00e_4a0a:
    dec c
    jr z, jr_00e_4a1b

    ld a, [hl+]
    cp $0a
    jr c, jr_00e_4a0a

jr_00e_4a12:
    pop hl
    call $2f8c
    cp $28
    ret c

    dec [hl]
    ret


jr_00e_4a1b:
    pop hl
    inc [hl]
    ret


    call Call_00e_5251
    ret c

    call $2f8c
    cp $19
    ret c

    inc [hl]
    ret


    push hl
    ld hl, $484e
    ld a, $0d
    rst $08
    ld a, [$c716]
    cp $0a
    pop hl
    ret c

    inc [hl]
    ret


    call Call_00e_5298
    jr nc, jr_00e_4a45

    call Call_00e_5281
    ret nc

    inc [hl]
    ret


jr_00e_4a45:
    call $2f8c
    cp $19
    ret c

    dec [hl]
    dec [hl]
    ret


    call Call_00e_526e
    ret c

    inc [hl]
    ret


    call Call_00e_5251
    ret c

    call $2f8c
    cp $14
    ret c

    inc [hl]
    ret


    ld a, [$c639]
    ld b, a
    ld a, [$d213]
    cp b
    jp c, Jump_00e_5503

    call Call_00e_526e
    ret c

    inc [hl]
    ret


    ld a, [$c730]
    and a
    jr nz, jr_00e_4a8b

    ld a, [$c66c]
    bit 0, a
    jr nz, jr_00e_4a91

    ld a, [$c668]
    and $c9
    jr nz, jr_00e_4a91

    ld a, [$c6dd]
    and a
    jr z, jr_00e_4a91

jr_00e_4a8b:
    call Call_00e_5527
    ret c

    inc [hl]
    ret


jr_00e_4a91:
    call Call_00e_5298
    ret nc

    call Call_00e_5527
    ret c

    dec [hl]
    dec [hl]
    ret


    ld a, [$c66d]
    bit 4, a
    jr z, jr_00e_4aaa

    ld a, [$c67f]
    cp $03
    jr c, jr_00e_4ad3

jr_00e_4aaa:
    push hl
    ld hl, $c712
    ld c, $04

jr_00e_4ab0:
    ld a, [hl+]
    and a
    jr z, jr_00e_4ac1

    call Call_00e_5508
    ld a, [$c609]
    cp $6f
    jr z, jr_00e_4ad5

    dec c
    jr nz, jr_00e_4ab0

jr_00e_4ac1:
    pop hl
    ld a, [$c66f]
    bit 7, a
    jr nz, jr_00e_4acd

    call Call_00e_5281
    ret c

jr_00e_4acd:
    call $2f8c
    cp $c8
    ret c

jr_00e_4ad3:
    inc [hl]
    ret


jr_00e_4ad5:
    pop hl
    ld a, [hl]
    add $06
    ld [hl], a
    ret


    call Call_00e_526e
    ret c

    call $2f8c
    cp $19
    jr c, jr_00e_4ae7

    inc [hl]

jr_00e_4ae7:
    call Call_00e_52b3
    ret c

    inc [hl]
    ret


    call Call_00e_5281
    jr nc, jr_00e_4b10

    ld a, [$c6d8]
    cp $0b
    jr nc, jr_00e_4b10

    cp $09
    ret nc

    ld a, [$c64a]
    cp $14
    jr nc, jr_00e_4b09

    ld a, [$c64b]
    cp $14
    ret c

jr_00e_4b09:
    call Call_00e_5521
    ret c

    dec [hl]
    dec [hl]
    ret


jr_00e_4b10:
    inc [hl]
    ret


    ld a, [$c66a]
    and $60
    ret z

    call Call_00e_5233
    ret nc

    dec [hl]
    dec [hl]
    dec [hl]
    ret


    call Call_00e_52b3
    ret c

    inc [hl]
    ret


    call Call_00e_52b3
    jr nc, jr_00e_4b3a

    call Call_00e_5233
    ret c

    call Call_00e_5298
    ret nc

    call Call_00e_5521
    ret c

    dec [hl]
    dec [hl]
    ret


jr_00e_4b3a:
    call Call_00e_5527
    ret c

    inc [hl]
    ret


    ld a, [$c608]
    cp $c4
    ret nz

    call Call_00e_5298
    ret nc

    ld a, [$c6dd]
    and a
    ret nz

    call Call_00e_5233
    ret c

    call $2f8c
    cp $1e
    ret c

    dec [hl]
    dec [hl]
    ret


    call Call_00e_5281
    ret c

    jp Jump_00e_5503


    call Call_00e_5281
    jr c, jr_00e_4b72

    call Call_00e_5298
    ret c

    call Call_00e_5527
    ret c

    dec [hl]
    ret


jr_00e_4b72:
    call $2f8c
    cp $28
    ret c

    inc [hl]
    call Call_00e_5527
    ret c

    inc [hl]
    ret


    ld a, [$c670]
    bit 6, a
    jr z, jr_00e_4b9b

    call Call_00e_5527
    jr c, jr_00e_4b8c

    dec [hl]

jr_00e_4b8c:
    ld a, [$c72c]
    cp $02
    ret c

Jump_00e_4b92:
    dec [hl]
    ld a, [$c72c]
    cp $03
    ret c

    dec [hl]
    ret


jr_00e_4b9b:
    call Call_00e_5281
    jr nc, jr_00e_4ba6

    call Call_00e_5521
    ret nc

    dec [hl]
    ret


jr_00e_4ba6:
    inc [hl]
    ret


    ld a, [$c6f8]
    and a
    jr z, jr_00e_4be9

    call Call_00e_5281
    jr nc, jr_00e_4bef

    push hl
    ld a, [$c6f8]
    call Call_00e_5508
    ld a, $01
    ldh [$e4], a
    ld hl, $47c8
    ld a, $0d
    rst $08
    ld a, [$d265]
    cp $0a
    pop hl
    jr c, jr_00e_4bef

    jr z, jr_00e_4bd4

    call Call_00e_5527
    jr c, jr_00e_4bd4

    dec [hl]

jr_00e_4bd4:
    ld a, [$c6f8]
    push hl
    ld hl, $5301
    ld de, $0001
    call $30e1
    pop hl
    ret nc

    call Call_00e_5527
    ret c

    dec [hl]
    ret


jr_00e_4be9:
    call Call_00e_5233
    jp c, Jump_00e_5503

jr_00e_4bef:
    inc [hl]
    ret


    push hl
    ld hl, $c712
    ld c, $04
    ld b, $00

jr_00e_4bf9:
    ld a, [hl+]
    and a
    jr z, jr_00e_4c0e

    call Call_00e_5508
    ld a, [$c60a]
    and a
    jr z, jr_00e_4c0e

    ld a, [$c60b]
    cp $14
    jr nc, jr_00e_4c0e

    inc b

jr_00e_4c0e:
    dec c
    jr nz, jr_00e_4bf9

    pop hl
    ld a, b
    and a
    jr z, jr_00e_4c39

    cp $03
    jr nc, jr_00e_4c30

    ld a, [$c6f8]
    and a
    jr z, jr_00e_4c38

    call Call_00e_5508
    ld a, [$c60a]
    and a
    jr z, jr_00e_4c38

    ld a, [$c60b]
    cp $14
    jr nc, jr_00e_4c38

jr_00e_4c30:
    call $2f8c
    cp $64
    jr c, jr_00e_4c38

    dec [hl]

jr_00e_4c38:
    ret


jr_00e_4c39:
    inc [hl]
    ret


    call Call_00e_5233
    jr nc, jr_00e_4c81

    ld a, [$c71b]
    and a
    jp z, Jump_00e_5503

    call Call_00e_5508
    ld a, [$c60a]
    and a
    jr z, jr_00e_4c68

    push hl
    ld a, [$c60b]
    ld hl, $d224
    ld a, $41
    call $2d83
    pop hl
    ld a, [$d265]
    cp $0a
    jr nc, jr_00e_4c68

    and a
    ret nz

    jr jr_00e_4c78

jr_00e_4c68:
    push hl
    ld a, [$c6f8]
    ld hl, $4c85
    ld de, $0001
    call $30e1
    pop hl
    jr nc, jr_00e_4c81

jr_00e_4c78:
    call $2f8c
    cp $46
    ret c

    dec [hl]
    dec [hl]
    ret


jr_00e_4c81:
    inc [hl]
    inc [hl]
    inc [hl]
    ret


    ld c, $12
    dec hl
    ld l, $32
    ld [hl], $49
    ld c, d
    ld c, l
    ld d, c
    ld h, b
    ld h, c
    ld h, h
    ld h, a
    ld [hl], d
    ld [hl], h
    adc d
    adc e
    sub [hl]
    sbc a
    and b
    and d
    and h
    and a
    xor c
    xor d
    xor h
    or c
    or d
    or l
    rst $38
    push hl
    ld hl, $d216
    ld b, [hl]
    inc hl
    ld c, [hl]
    sla c
    rl b
    ld hl, $c63d
    ld a, [hl-]
    cp c
    ld a, [hl]
    sbc b
    pop hl
    ret nc

    inc [hl]
    ret


    ld a, [$d214]
    and $07
    cp $01
    jr z, jr_00e_4cc7

    dec [hl]
    dec [hl]
    dec [hl]
    ret


jr_00e_4cc7:
    inc [hl]
    inc [hl]
    inc [hl]
    ret


    ld a, [$d214]
    and $20
    ret z

    dec [hl]
    dec [hl]
    dec [hl]
    ret


    ld a, [$c6f8]
    and a
    jr nz, jr_00e_4ce7

    call Call_00e_5233
    jp c, Jump_00e_5503

    call Call_00e_5527
    ret c

    inc [hl]
    ret


jr_00e_4ce7:
    push hl
    ld b, a
    ld c, $04

Jump_00e_4ceb:
    ld hl, $c62e
    ld de, $c634

jr_00e_4cf1:
    ld a, [hl+]
    cp b
    jr z, jr_00e_4cfb

    inc de
    dec c
    jr nz, jr_00e_4cf1

    pop hl
    ret


jr_00e_4cfb:
    pop hl
    ld a, [de]
    cp $06
    jr c, jr_00e_4d0d

    cp $0f
    jr nc, jr_00e_4d0b

    call $2f8c
    cp $64
    ret nc

jr_00e_4d0b:
    inc [hl]
    ret


jr_00e_4d0d:
    call $2f8c
    cp $64
    ret c

    dec [hl]
    dec [hl]
    ret


    jp Jump_00e_5503


    call Call_00e_5298
    ret nc

    inc [hl]
    ret


    push hl
    ld a, [$d280]
    ld b, a
    ld c, $00
    ld hl, $d2aa
    ld de, $0030

jr_00e_4d2c:
    push hl
    ld a, [hl+]
    or [hl]
    jr z, jr_00e_4d37

    dec hl
    dec hl
    dec hl
    ld a, [hl]
    or c
    ld c, a

jr_00e_4d37:
    pop hl
    add hl, de
    dec b
    jr nz, jr_00e_4d2c

    pop hl
    ld a, c
    and a
    jr z, jr_00e_4d52

    ld a, [$d214]
    and a
    jr z, jr_00e_4d48

    dec [hl]

jr_00e_4d48:
    and $27
    ret z

    call Call_00e_5527
    ret c

    dec [hl]
    dec [hl]
    ret


jr_00e_4d52:
    ld a, [$d214]
    and a
    ret nz

    jp Jump_00e_5503


    call Call_00e_5233
    ret c

    ld a, [$c66a]
    and $60
    jp nz, Jump_00e_5503

    ld a, $01
    ldh [$e4], a
    push hl
    ld hl, $53f6
    ld a, $0d
    rst $08
    ld hl, $5612
    ld a, $0d
    rst $08
    ld hl, $46d2
    ld a, $0d
    rst $08
    pop hl
    ld a, [$d257]
    ld c, a
    ld a, [$d256]
    ld b, a
    ld a, [$c63d]
    cp c
    ld a, [$c63c]
    sbc b
    ret nc

    dec [hl]
    dec [hl]
    dec [hl]
    ret


    ld a, [hl]
    add $1e
    ld [hl], a
    ret


    ld a, [$c71b]
    and a
    jr nz, jr_00e_4dc9

    push hl
    dec a
    ld hl, $5afe
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    ld [$c612], a
    xor a
    ldh [$e4], a
    ld hl, $47c8
    ld a, $0d
    rst $08
    ld a, [$d265]
    cp $0a
    pop hl
    jr c, jr_00e_4dc9

    ret z

    call Call_00e_5527
    ret c

    dec [hl]
    ret


jr_00e_4dc9:
    call $2f8c
    cp $19
    ret c

    inc [hl]
    ret


    call Call_00e_5233
    jr nc, jr_00e_4df3

    push hl
    ld a, [$c6f8]
    ld hl, $5301
    ld de, $0001
    call $30e1
    pop hl
    jr nc, jr_00e_4dee

    call $2f8c
    cp $64
    ret c

    dec [hl]
    ret


jr_00e_4dee:
    ld a, [$c60a]
    and a
    ret nz

jr_00e_4df3:
    call $2f8c
    cp $14
    ret c

    inc [hl]
    ret


    call Call_00e_5281
    jr nc, jr_00e_4e24

    push hl
    call Call_00e_4e2e
    pop hl
    jp z, Jump_00e_5503

    ld a, [$c671]
    bit 0, a
    jr nz, jr_00e_4e26

    ld a, [$c668]
    and $c9
    jr nz, jr_00e_4e26

    push hl
    ld hl, $484e
    ld a, $0d
    rst $08
    ld a, [$c716]
    cp $0b
    pop hl
    ret nc

jr_00e_4e24:
    inc [hl]
    ret


jr_00e_4e26:
    call Call_00e_5521
    ret c

    dec [hl]
    dec [hl]
    dec [hl]
    ret


Call_00e_4e2e:
    ld a, [$dcd7]
    ld b, a
    ld c, $00
    ld hl, $dd01
    ld de, $0030

jr_00e_4e3a:
    ld a, [$d0d4]
    cp c
    jr z, jr_00e_4e44

    ld a, [hl+]
    or [hl]
    ret nz

    dec hl

jr_00e_4e44:
    add hl, de
    inc c
    dec b
    jr nz, jr_00e_4e3a

    ret


    call Call_00e_5527
    ret c

    dec [hl]
    ret


    ld a, [$d214]
    bit 5, a
    ret z

    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    ret


    ld a, [$d224]
    cp $08
    jr z, jr_00e_4e95

    ld a, [$d225]
    cp $08
    jr z, jr_00e_4e95

    call Call_00e_5281
    jr nc, jr_00e_4e93

    ld a, [$c6d4]
    cp $0b
    jr nc, jr_00e_4e93

    cp $09
    ret nc

    ld a, [$c64a]
    cp $08
    jr z, jr_00e_4e92

    cp $14
    ret nc

    ld a, [$c64b]
    cp $14
    ret nc

    call Call_00e_5521
    ret c

    dec [hl]
    dec [hl]
    ret


Jump_00e_4e90:
jr_00e_4e90:
    inc [hl]
    inc [hl]

jr_00e_4e92:
    inc [hl]

jr_00e_4e93:
    inc [hl]
    ret


jr_00e_4e95:
    ld a, [$c668]
    bit 1, a
    jp nz, Jump_00e_5503

    push hl
    ld a, $0d
    ld hl, $49f4
    rst $08
    pop hl
    jr nc, jr_00e_4eb0

    push hl
    call Call_00e_4e2e
    pop hl
    jr nz, jr_00e_4e90

    jr jr_00e_4eb7

jr_00e_4eb0:
    push hl
    call Call_00e_4e2e
    pop hl
    jr z, jr_00e_4ecb

jr_00e_4eb7:
    call Call_00e_5298
    jp nc, Jump_00e_4e90

    call Call_00e_5281
    jr nc, jr_00e_4e92

    call Call_00e_5251
    ret nc

    ld a, [$c6dd]
    and a
    ret nz

jr_00e_4ecb:
    call Call_00e_5527
    ret c

    dec [hl]
    dec [hl]
    ret


    ld a, [$c681]
    and a
    jr nz, jr_00e_4f13

    ld a, [$c66c]
    bit 5, a
    jr nz, jr_00e_4f14

    ld a, [$c678]
    cp $03
    jr nc, jr_00e_4f0d

    ld a, [$c66a]
    bit 4, a
    jr nz, jr_00e_4f0d

    ld a, [$c66c]
    bit 0, a
    jr nz, jr_00e_4f0d

    ld a, [$c66b]
    bit 7, a
    jr nz, jr_00e_4f0d

    ld a, [$c668]
    bit 1, a
    jr nz, jr_00e_4f0d

    bit 6, a
    jr z, jr_00e_4f14

    ld a, [$c672]
    cp $03
    jr c, jr_00e_4f14

jr_00e_4f0d:
    call Call_00e_5521
    ret c

    dec [hl]
    ret


jr_00e_4f13:
    inc [hl]

jr_00e_4f14:
    call $2f8c
    cp $14
    ret c

    inc [hl]
    inc [hl]
    ret


    ld a, [$c6d9]
    cp $05
    jr c, jr_00e_4f41

    ld a, [$c6d2]
    cp $0a
    jr nc, jr_00e_4f41

    ld a, [$c64a]
    cp $08
    jr z, jr_00e_4f41

    ld a, [$c64b]
    cp $08
    jr z, jr_00e_4f41

    call $2f8c
    cp $14
    ret c

    inc [hl]
    ret


jr_00e_4f41:
    call $2f8c
    cp $64
    ret c

    dec [hl]
    dec [hl]
    ret


    push hl
    ld hl, $49f4
    ld a, $0d
    rst $08
    pop hl
    jr c, jr_00e_4f75

    ld a, [$c66c]
    bit 7, a
    jr nz, jr_00e_4f6f

    push hl
    ld hl, $484e
    ld a, $0d
    rst $08
    ld a, [$c716]
    cp $0a
    pop hl
    ret c

    call Call_00e_5527
    ret c

    inc [hl]
    ret


jr_00e_4f6f:
    call Call_00e_5527
    ret c

    dec [hl]
    ret


jr_00e_4f75:
    ld a, [hl]
    add $05
    ld [hl], a
    ret


    ld a, [$c64a]
    push hl
    ld hl, $4fa8
    ld de, $0001
    call $30e1
    pop hl
    jr c, jr_00e_4fa5

    ld a, [$c64b]
    push hl
    ld hl, $4fa8
    ld de, $0001
    call $30e1
    pop hl
    jr c, jr_00e_4fa5

    call Call_00e_526e
    jr nc, jr_00e_4fa6

    call Call_00e_5527
    ret c

    dec [hl]
    ret


jr_00e_4fa5:
    inc [hl]

jr_00e_4fa6:
    inc [hl]
    ret


    dec b
    inc b
    add hl, bc
    rst $38
    ld a, [$c681]
    and a
    jr nz, jr_00e_4fd8

    call Call_00e_5251
    jr c, jr_00e_4fd8

    call Call_00e_5298
    jr c, jr_00e_4fd9

    ld b, $63
    call Call_00e_52ca
    jr nc, jr_00e_4fcb

    call Call_00e_5521
    ret c

    dec [hl]
    dec [hl]
    dec [hl]
    ret


jr_00e_4fcb:
    ld a, [$c671]
    bit 5, a
    ret z

    call Call_00e_5527
    ret c

    dec [hl]
    dec [hl]
    ret


jr_00e_4fd8:
    inc [hl]

jr_00e_4fd9:
    inc [hl]
    ret


    ld a, [$c680]
    and a
    jr z, jr_00e_4fef

    dec [hl]
    cp $02
    jr c, jr_00e_4fef

    dec [hl]
    dec [hl]
    cp $03
    jr c, jr_00e_4fef

    dec [hl]
    dec [hl]
    dec [hl]

jr_00e_4fef:
    ld a, [$c66d]
    bit 7, a
    jr nz, jr_00e_5020

    ld a, [$c66f]
    bit 7, a
    jr nz, jr_00e_5020

    ld a, [$d214]
    bit 6, a
    jr nz, jr_00e_5020

    call Call_00e_5298
    jr nc, jr_00e_5020

    ld a, [$c6d9]
    cp $07
    jr c, jr_00e_5020

    ld a, [$c6d2]
    cp $08
    jr nc, jr_00e_5020

    call $2f8c
    cp $c8
    ret nc

    dec [hl]
    dec [hl]
    ret


jr_00e_5020:
    call Call_00e_5521
    ret c

    inc [hl]
    ret


    ld a, [$c6dd]
    and a
    jr z, jr_00e_5032

    call Call_00e_5521
    ret c

    inc [hl]
    ret


jr_00e_5032:
    call $2f8c
    cp $c8
    ret nc

    dec [hl]
    ret


    call Call_00e_526e
    ret c

    call Call_00e_5521
    ret c

    inc [hl]
    ret


    ld a, [$c6f8]
    cp $5b
    ret nz

    ld a, [$c66a]
    bit 5, a
    jr z, jr_00e_5058

    call Call_00e_5233
    ret nc

    dec [hl]
    dec [hl]
    ret


jr_00e_5058:
    call Call_00e_5233
    ret c

    call Call_00e_5527
    ret c

    dec [hl]
    ret


    push hl
    ld hl, $484e
    ld a, $0d
    rst $08
    ld a, [$c716]
    cp $0a
    pop hl
    ret c

    inc [hl]
    ret


    call Call_00e_52b3
    jr nc, jr_00e_507d

    call Call_00e_5521
    ret c

    inc [hl]
    ret


jr_00e_507d:
    call Call_00e_5527
    ret c

    dec [hl]
    dec [hl]
    ret


    ld a, [$c731]
    and a
    jr nz, jr_00e_5097

    ld a, [$c670]
    bit 7, a
    jr nz, jr_00e_5097

    ld a, [$c700]
    bit 0, a
    ret z

jr_00e_5097:
    call Call_00e_5521
    ret c

    dec [hl]
    dec [hl]
    ret


    push hl
    ld a, $01
    ldh [$e4], a
    ld hl, $7ced
    ld a, $3e
    rst $08
    ld hl, $47c8
    ld a, $0d
    rst $08
    pop hl
    ld a, [$d265]
    cp $0a
    jr c, jr_00e_50c9

    ld a, d
    cp $32
    jr c, jr_00e_50c9

    ld a, [$d265]
    cp $0b
    jr nc, jr_00e_50c7

    ld a, d
    cp $46
    ret c

jr_00e_50c7:
    dec [hl]
    ret


jr_00e_50c9:
    inc [hl]
    ret


    ld a, [$c64a]
    cp $15
    jr z, jr_00e_511e

    cp $14
    jr z, jr_00e_5122

    ld a, [$c64b]
    cp $15
    jr z, jr_00e_511e

    cp $14
    jr z, jr_00e_5122

    push hl
    ld hl, $50e7
    jr jr_00e_510d

    scf
    jr c, @+$3b

    dec a
    ld d, a
    ld a, a
    add b
    sub c
    sbc b
    cp [hl]
    ld a, [$faff]
    ld c, d
    add $fe
    inc d
    jr z, jr_00e_511e

    cp $15
    jr z, jr_00e_5122

    ld a, [$c64b]
    cp $14
    jr z, jr_00e_511e

    cp $15
    jr z, jr_00e_5122

    push hl
    ld hl, $5134

jr_00e_510d:
    call Call_00e_52e6
    pop hl
    jr nc, jr_00e_511e

    call Call_00e_526e
    jr nc, jr_00e_511e

    call Call_00e_5527
    ret c

    dec [hl]
    ret


jr_00e_511e:
    inc [hl]
    inc [hl]
    inc [hl]
    ret


jr_00e_5122:
    call Call_00e_526e
    ret nc

    ld a, [$c6dd]
    and a
    jr z, jr_00e_5131

    ld a, [$c6dc]
    and a
    ret nz

jr_00e_5131:
    dec [hl]
    dec [hl]
    ret


    rlca
    inc [hl]
    dec [hl]
    ld d, e
    ld a, [hl]
    db $dd
    ld_long $ffeb, a
    ld a, [$c6d4]
    cp $0a
    jr nc, jr_00e_514d

    call Call_00e_5251
    ret c

    inc [hl]
    call Call_00e_5281
    ret c

jr_00e_514d:
    ld a, [hl]
    add $05
    ld [hl], a
    ret


    push hl
    ld hl, $c6d4
    ld b, $08
    ld c, $64

jr_00e_515a:
    ld a, [hl+]
    sub $07
    add c
    ld c, a
    dec b
    jr nz, jr_00e_515a

    ld hl, $c6cc
    ld b, $08
    ld d, $64

jr_00e_5169:
    ld a, [hl+]
    sub $07
    add d
    ld d, a
    dec b
    jr nz, jr_00e_5169

    ld a, c
    sub d
    pop hl
    jr nc, jr_00e_5188

    ld a, [$c6d1]
    cp $06
    ret c

    ld a, [$c6da]
    cp $08
    ret nc

    call Call_00e_5521
    ret c

    dec [hl]
    ret


jr_00e_5188:
    inc [hl]
    inc [hl]
    ret


    push hl
    ld hl, $c712
    ld c, $04
    ld b, $00

jr_00e_5193:
    ld a, [hl+]
    and a
    jr z, jr_00e_51a8

    call Call_00e_5508
    ld a, [$c60a]
    and a
    jr z, jr_00e_51a8

    ld a, [$c60b]
    cp $14
    jr c, jr_00e_51a8

    inc b

jr_00e_51a8:
    dec c
    jr nz, jr_00e_5193

    pop hl
    ld a, b
    and a
    jr z, jr_00e_51d3

    cp $03
    jr nc, jr_00e_51ca

    ld a, [$c6f8]
    and a
    jr z, jr_00e_51d2

    call Call_00e_5508
    ld a, [$c60a]
    and a
    jr z, jr_00e_51d2

    ld a, [$c60b]
    cp $14
    jr c, jr_00e_51d2

jr_00e_51ca:
    call $2f8c
    cp $64
    jr c, jr_00e_51d2

    dec [hl]

jr_00e_51d2:
    ret


jr_00e_51d3:
    inc [hl]
    ret


    ld a, [$c6f8]
    cp $13
    ret nz

    ld a, [$c66a]
    bit 6, a
    jr z, jr_00e_51e9

    call Call_00e_5233
    ret nc

    dec [hl]
    dec [hl]
    ret


jr_00e_51e9:
    call Call_00e_5233
    ret c

    call Call_00e_5527
    ret c

    dec [hl]
    ret


    call Call_00e_5233
    ret nc

    ld a, [$c66a]
    and $60
    ret z

    dec [hl]
    dec [hl]
    ret


    ld a, [$c6fe]
    and a
    ret z

    call Call_00e_5521
    ret c

    dec [hl]
    ret


    ld a, [$c70a]
    cp $02
    jr z, jr_00e_521e

    cp $01
    ret nz

    call $2f8c
    cp $19
    ret c

    inc [hl]
    inc [hl]
    ret


jr_00e_521e:
    call Call_00e_5521
    ret c

    dec [hl]
    dec [hl]
    ret


    ld a, [$c70a]
    cp $02
    ret nz

    call $2f8c
    cp $19
    ret c

    inc [hl]
    ret


Call_00e_5233:
    push bc
    ld a, [$d21f]
    ld b, a
    ld a, [$c645]
    cp b
    ld a, [$d21e]
    ld b, a
    ld a, [$c644]
    sbc b
    pop bc
    ret


Call_00e_5246:
    push hl
    push de
    push bc
    ld de, $c63c
    ld hl, $c63e
    jr jr_00e_525a

Call_00e_5251:
    push hl
    push de
    push bc
    ld de, $d216
    ld hl, $d218

jr_00e_525a:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_00e_5269

    inc hl
    ld a, [de]
    cp [hl]
    jr nz, jr_00e_5269

    pop bc
    pop de
    pop hl
    scf
    ret


jr_00e_5269:
    pop bc
    pop de
    pop hl
    and a
    ret


Call_00e_526e:
    push hl
    ld hl, $c63c
    ld b, [hl]
    inc hl
    ld c, [hl]
    sla c
    rl b
    inc hl
    inc hl
    ld a, [hl-]
    cp c
    ld a, [hl]
    sbc b
    pop hl
    ret


Call_00e_5281:
    push hl
    push de
    push bc
    ld hl, $d216
    ld b, [hl]
    inc hl
    ld c, [hl]
    sla c
    rl b
    inc hl
    inc hl
    ld a, [hl-]
    cp c
    ld a, [hl]
    sbc b
    pop bc
    pop de
    pop hl
    ret


Call_00e_5298:
    push hl
    push de
    push bc
    ld hl, $d216
    ld b, [hl]
    inc hl
    ld c, [hl]
    sla c
    rl b
    sla c
    rl b
    inc hl
    inc hl
    ld a, [hl-]
    cp c
    ld a, [hl]
    sbc b
    pop bc
    pop de
    pop hl
    ret


Call_00e_52b3:
    push hl
    ld hl, $c63c
    ld b, [hl]
    inc hl
    ld c, [hl]
    sla c
    rl b
    sla c
    rl b
    inc hl
    inc hl
    ld a, [hl-]
    cp c
    ld a, [hl]
    sbc b
    pop hl
    ret


Call_00e_52ca:
    push hl
    ld hl, $d208
    ld c, $04

jr_00e_52d0:
    ld a, [hl+]
    and a
    jr z, jr_00e_52e0

    call Call_00e_5508
    ld a, [$c609]
    cp b
    jr z, jr_00e_52e3

    dec c
    jr nz, jr_00e_52d0

jr_00e_52e0:
    pop hl
    and a
    ret


jr_00e_52e3:
    pop hl
    scf
    ret


Call_00e_52e6:
    push hl
    push de
    push bc

jr_00e_52e9:
    ld a, [hl+]
    cp $ff
    jr z, jr_00e_52fd

    ld b, a
    ld c, $05
    ld de, $d208

jr_00e_52f4:
    dec c
    jr z, jr_00e_52e9

    ld a, [de]
    inc de
    cp b
    jr nz, jr_00e_52f4

    scf

jr_00e_52fd:
    pop bc
    pop de
    pop hl
    ret


    ld h, $2f

Call_00e_5303:
    dec [hl]
    jr c, jr_00e_533f

    ld a, [hl-]
    dec sp
    ccf
    ld c, a
    ld d, l
    ld d, a
    ld e, c
    ld e, h
    ld e, [hl]
    ld e, a
    ld l, c
    ld a, [hl]
    add a
    and d
    rst $38
    call Call_00e_5281
    ret c

    call Call_00e_5298
    jr nc, jr_00e_5322

    call Call_00e_5527
    ret c

jr_00e_5322:
    ld hl, $d1e9
    ld de, $d208
    ld c, $05

jr_00e_532a:
    inc hl
    dec c
    jr z, jr_00e_5347

    ld a, [de]
    inc de
    and a
    jr z, jr_00e_5347

    push hl
    push de
    push bc
    ld hl, $5348
    ld de, $0001
    call $30e1

jr_00e_533f:
    pop bc
    pop de
    pop hl
    jr nc, jr_00e_532a

    inc [hl]
    jr jr_00e_532a

jr_00e_5347:
    ret


    ld c, $27
    dec hl
    dec l
    ld [hl-], a
    ld [hl], $44
    ld c, c
    ld c, d
    ld d, c
    ld h, b
    ld h, c
    ld h, e
    ld h, [hl]
    ld h, a
    ld l, d
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    add l
    sub b
    sub [hl]
    sub a
    sbc a
    and b
    and h
    xor h
    rst $38
    ld hl, $d208
    ld bc, $0000
    ld de, $0000

jr_00e_5372:
    inc b
    ld a, b
    cp $05
    jr z, jr_00e_53a8

    ld a, [hl+]
    and a
    jr z, jr_00e_53a8

    push hl
    push de
    push bc
    call Call_00e_5508
    ld a, [$c60a]
    and a
    jr z, jr_00e_53a3

    call Call_00e_53e7
    pop bc
    pop de
    pop hl
    ld a, [$d257]
    cp e
    ld a, [$d256]
    sbc d
    jr c, jr_00e_5372

    ld a, [$d257]
    ld e, a
    ld a, [$d256]
    ld d, a
    ld c, b
    jr jr_00e_5372

jr_00e_53a3:
    pop bc
    pop de
    pop hl
    jr jr_00e_5372

jr_00e_53a8:
    ld a, c
    and a
    jr z, jr_00e_53e1

    ld hl, $d1e9
    ld de, $d208
    ld b, $00

jr_00e_53b4:
    inc b
    ld a, b
    cp $05
    jr z, jr_00e_53e1

    cp c
    ld a, [de]
    inc de
    inc hl
    jr z, jr_00e_53b4

    call Call_00e_5508
    ld a, [$c60a]
    cp $02
    jr c, jr_00e_53b4

    push hl
    push de
    push bc
    ld a, [$c609]
    ld hl, $53e2
    ld de, $0001
    call $30e1
    pop bc
    pop de
    pop hl
    jr c, jr_00e_53b4

    inc [hl]
    jr jr_00e_53b4

jr_00e_53e1:
    ret


    rlca
    dec de
    dec e
    inc l
    rst $38

Call_00e_53e7:
    ld a, $01
    ldh [$e4], a
    ld a, [$c609]
    ld de, $0001
    ld hl, $5413
    call $30e1
    jr nc, jr_00e_5400

    ld hl, $5726
    ld a, $0d
    rst $08
    ret


jr_00e_5400:
    ld hl, $53f6
    ld a, $0d
    rst $08
    ld hl, $5612
    ld a, $0d
    rst $08
    ld hl, $46d2
    ld a, $0d
    rst $08
    ret


    jr z, @+$2b

    ld d, a
    ld e, b
    rst $38
    ld a, [$c6dc]
    and a
    ret z

    ld hl, $d1e9
    ld de, $d208
    ld c, $05

jr_00e_5425:
    inc hl
    dec c
    ret z

    ld a, [de]
    inc de
    and a
    ret z

    push hl
    push de
    push bc
    ld hl, $5446
    ld de, $0001
    call $30e1
    pop bc
    pop de
    pop hl
    jr nc, jr_00e_5425

    call $2f8c
    cp $e6
    ret nc

    inc [hl]
    jr jr_00e_5425

    ld [hl], $49
    ld c, l
    ld c, [hl]
    ld d, [hl]
    ld [hl], h
    ld [hl], l
    adc e
    sub b
    and b
    and h
    cp a
    rst $38
    ld hl, $d1e9
    ld de, $d208
    ld b, $05

jr_00e_545b:
    dec b
    ret z

    inc hl
    ld a, [de]
    and a
    ret z

    inc de
    call Call_00e_5508
    ld a, [$c609]
    cp $21
    jr z, jr_00e_5480

    cp $42
    jr z, jr_00e_5480

    cp $01
    jr z, jr_00e_548e

    cp $43
    jr z, jr_00e_548e

    ld a, [$c60a]
    and a
    jr z, jr_00e_545b

    jr jr_00e_548e

jr_00e_5480:
    ld a, [$c64a]
    cp $03
    jr z, jr_00e_54a4

    ld a, [$c64b]
    cp $03
    jr z, jr_00e_54a4

jr_00e_548e:
    push hl
    push bc
    push de
    ld a, $01
    ldh [$e4], a
    ld hl, $47c8
    ld a, $0d
    rst $08
    pop de
    pop bc
    pop hl
    ld a, [$d265]
    and a
    jr nz, jr_00e_545b

jr_00e_54a4:
    call Call_00e_5503
    jr jr_00e_545b

    ld hl, $d1e9
    ld de, $d208
    ld c, $05

jr_00e_54b1:
    inc hl
    dec c
    ret z

    ld a, [de]
    inc de
    and a
    ret z

    push de
    push bc
    push hl
    call Call_00e_5508
    ld a, [$c60a]
    and a
    jr z, jr_00e_54fa

    ld a, [$c609]
    ld de, $0001
    ld hl, $54ff
    call $30e1
    jr nc, jr_00e_54de

    call Call_00e_5251
    jr c, jr_00e_54fa

    call $2f8c
    cp $c8
    jr c, jr_00e_54fa

jr_00e_54de:
    call Call_00e_53e7
    ld a, [$d257]
    ld e, a
    ld a, [$d256]
    ld d, a
    ld a, [$c63d]
    cp e
    ld a, [$c63c]
    sbc d
    jr nc, jr_00e_54fa

    pop hl
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    push hl

jr_00e_54fa:
    pop hl
    pop bc
    pop de
    jr jr_00e_54b1

    rlca
    ld h, $ff
    ret


Call_00e_5503:
Jump_00e_5503:
    ld a, [hl]
    add $0a
    ld [hl], a
    ret


Call_00e_5508:
    push hl
    push de
    push bc
    dec a
    ld hl, $5afb
    ld bc, $0007
    call $30fe
    ld de, $c608
    ld a, $10
    call $0e8d
    pop bc
    pop de
    pop hl
    ret


Call_00e_5521:
    call $2f8c
    cp $32
    ret


Call_00e_5527:
    call $2f8c
    cp $80
    ret


    ld hl, $d493
    ld a, c
    cp $09
    jr z, jr_00e_5544

    ld [$cf60], a
    ld a, $07
    ld [$cf61], a
    call $33c3
    ld de, $d073
    ret


jr_00e_5544:
    ld de, $d073
    push de
    ld bc, $000b
    call $3026
    pop de
    ret


Call_00e_5550:
    ld hl, $d26b
    ld a, [$c2dc]
    and a
    jr nz, jr_00e_556f

    ld hl, $d493
    ld a, c
    cp $09
    jr z, jr_00e_556f

    ld [$cf60], a
    ld a, $07
    ld [$cf61], a
    call $33c3
    ld hl, $d073

jr_00e_556f:
    ld bc, $000d
    ld de, $c656
    push de
    call $3026
    pop de
    ret


    ld a, [$d233]
    ld c, a
    call Call_00e_5550
    ld a, [$d233]
    dec a
    ld hl, $559c
    ld bc, $0007
    call $30fe
    ld de, $c650
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld a, [hl]
    ld [$c652], a
    ret


    db $10
    ld h, $19
    db $d3
    inc bc
    ld b, h
    nop
    db $10
    ld h, $19
    db $d3
    inc bc
    ld b, h
    nop
    db $10
    ld c, $19
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    rrca
    db $d3
    inc bc
    ld b, h
    nop
    nop
    nop
    add hl, de
    ld b, c
    ld bc, $0044
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    or a
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    rrca
    or a
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    nop
    nop
    inc b
    ld b, c
    ld bc, $0044
    nop
    nop
    ld [$0161], sp
    ld b, h
    nop
    nop
    nop
    ld b, $d3
    inc bc
    ld b, h
    nop
    nop
    nop
    ld b, $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    or a
    inc bc
    ld b, h
    nop
    ld c, $0f
    inc c
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    inc c
    db $d3
    inc bc
    ld b, h
    nop
    stop
    ld d, $d3
    inc bc
    ld b, h
    nop
    stop
    rrca
    ld h, c
    ld bc, $0044
    rrca
    rrca
    ld c, $d3
    inc bc
    ld b, h
    nop
    rrca
    ld c, $0f
    db $d3
    inc bc
    ld b, h
    nop
    db $10
    db $10
    ld c, $d3
    inc bc
    ld b, h
    nop
    rrca
    ld h, $0e
    ld h, c
    ld bc, $0044
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    nop
    nop
    inc b
    db $d3
    inc bc
    ld b, h
    nop
    rrca
    nop
    ld a, [bc]
    db $d3
    inc bc
    ld b, h
    nop
    rrca
    nop
    ld [bc], a
    db $d3
    inc bc
    ld b, h
    nop
    rrca
    nop
    dec b
    db $d3
    inc bc
    ld b, h
    nop
    rrca
    nop
    ld a, [bc]
    db $d3
    inc bc
    ld b, h
    nop
    rrca
    rrca
    ld [$0141], sp
    ld b, h
    nop
    ld c, $0f
    ld c, $d3
    inc bc
    ld b, h
    nop
    rrca
    rrca
    ld [$0161], sp
    ld b, h
    nop
    nop
    nop
    ld [$0161], sp
    ld b, h
    nop
    rrca
    rrca
    rrca
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    ld c, $d3
    inc bc
    ld b, h
    nop
    ld c, $26
    ld h, $d3
    inc bc
    ld b, h
    nop
    nop
    nop
    inc c
    db $d3
    inc bc
    ld b, h
    nop
    rrca
    nop
    ld a, [bc]
    db $d3
    inc bc
    ld b, h
    nop
    rrca
    nop
    ld b, $d3
    inc bc
    ld b, h
    nop
    ld c, $0e
    ld c, $d3
    inc bc
    ld b, h
    nop
    rrca
    ld h, $08
    db $d3
    inc bc
    ld b, h
    nop
    nop
    nop
    dec b
    db $d3
    inc bc
    ld b, h
    nop
    nop
    nop
    dec b
    add c
    ld bc, $0044
    ld c, $0e
    ld c, $d3
    inc bc
    ld b, h
    nop
    rrca
    ld h, $08
    db $d3
    inc bc
    ld b, h
    nop
    rrca
    rrca
    ld a, [bc]
    ld h, c
    ld bc, $0044
    ld c, $0f
    ld c, $d3
    inc bc
    ld b, h
    nop
    nop
    nop
    inc d
    db $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    rrca
    ld h, c
    ld bc, $0044
    nop
    nop
    dec b
    db $d3
    inc bc
    ld b, h
    nop
    nop
    nop
    inc d
    ld b, c
    ld bc, $0044
    ld c, $0f
    ld c, $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    ld c, $d3
    inc bc
    ld b, h
    nop
    db $10
    ld h, $0a
    ld h, c
    ld bc, $0044
    rrca
    rrca
    ld c, $d3
    inc bc
    ld b, h
    nop
    ld c, $0f
    add hl, de
    db $d3
    inc bc
    ld b, h
    nop
    ld a, [$cfc0]
    bit 0, a
    ret nz

    ld a, [$c2dc]
    and a
    ret nz

    ld hl, $d280
    xor a
    ld [hl+], a
    dec a
    ld [hl], a
    ld hl, $d288
    ld bc, $0120
    xor a
    call $3041
    ld a, [$d22f]
    cp $0c
    jr nz, jr_00e_579e

    ld a, [$d231]
    cp $02
    jr z, jr_00e_57d3

    ld a, [$d22f]

jr_00e_579e:
    dec a
    ld c, a
    ld b, $00
    ld hl, $5999
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d231]
    ld b, a

jr_00e_57ae:
    dec b
    jr z, jr_00e_57b8

jr_00e_57b1:
    ld a, [hl+]
    cp $ff
    jr nz, jr_00e_57b1

    jr jr_00e_57ae

jr_00e_57b8:
    ld a, [hl+]
    cp $50
    jr nz, jr_00e_57b8

    ld a, [hl+]
    ld c, a
    ld b, $00
    ld d, h
    ld e, l
    ld hl, $57e3
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $57d0
    push bc
    jp hl


jr_00e_57d0:
    jp Jump_00e_591b


jr_00e_57d3:
    ld a, $00
    call $2fcb
    ld de, $ac0a
    call Call_00e_5806
    call $2fe1
    jr jr_00e_57d0

    db $eb
    ld d, a
    ld b, $58
    ld [hl], c
    ld e, b
    sbc l
    ld e, b
    ld h, d
    ld l, e

jr_00e_57ed:
    ld a, [hl+]
    cp $ff
    ret z

    ld [$d143], a
    ld a, [hl+]
    ld [$d108], a
    ld a, $01
    ld [$cf5f], a
    push hl
    ld a, $06
    call $2d83
    pop hl
    jr jr_00e_57ed

Call_00e_5806:
    ld h, d
    ld l, e

jr_00e_5808:
    ld a, [hl+]
    cp $ff
    ret z

    ld [$d143], a
    ld a, [hl+]
    ld [$d108], a
    ld a, $01
    ld [$cf5f], a
    push hl
    ld a, $06
    call $2d83
    ld a, [$d280]
    dec a
    ld hl, $d28a
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    pop hl
    ld b, $04

jr_00e_5830:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_5830

    push hl
    ld a, [$d280]
    dec a
    ld hl, $d288
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    ld hl, $0017
    add hl, de
    push hl
    ld hl, $0002
    add hl, de
    pop de
    ld b, $04

jr_00e_5852:
    ld a, [hl+]
    and a
    jr z, jr_00e_586e

    push hl
    push bc
    dec a
    ld hl, $5b00
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    pop bc
    pop hl
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_5852

jr_00e_586e:
    pop hl
    jr jr_00e_5808

    ld h, d
    ld l, e

jr_00e_5873:
    ld a, [hl+]
    cp $ff
    ret z

    ld [$d143], a
    ld a, [hl+]
    ld [$d108], a
    ld a, $01
    ld [$cf5f], a
    push hl
    ld a, $06
    call $2d83
    ld a, [$d280]
    dec a
    ld hl, $d289
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    ld [de], a
    jr jr_00e_5873

    ld h, d
    ld l, e

jr_00e_589f:
    ld a, [hl+]
    cp $ff
    ret z

    ld [$d143], a
    ld a, [hl+]
    ld [$d108], a
    ld a, $01
    ld [$cf5f], a
    push hl
    ld a, $06
    call $2d83
    ld a, [$d280]
    dec a
    ld hl, $d289
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    ld [de], a
    push hl
    ld a, [$d280]
    dec a
    ld hl, $d28a
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    pop hl
    ld b, $04

jr_00e_58da:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_58da

    push hl
    ld a, [$d280]
    dec a
    ld hl, $d288
    ld bc, $0030
    call $30fe
    ld d, h
    ld e, l
    ld hl, $0017
    add hl, de
    push hl
    ld hl, $0002
    add hl, de
    pop de
    ld b, $04

jr_00e_58fc:
    ld a, [hl+]
    and a
    jr z, jr_00e_5918

    push hl
    push bc
    dec a
    ld hl, $5b00
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    pop bc
    pop hl
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_58fc

jr_00e_5918:
    pop hl
    jr jr_00e_589f

Jump_00e_591b:
    ld hl, $ffb3
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c652]
    ld [hl+], a
    ld a, [$d143]
    ld [hl], a
    call $3119
    ld hl, $c686
    xor a
    ld [hl+], a
    ldh a, [$b5]
    ld [hl+], a
    ldh a, [$b6]
    ld [hl], a
    ret


    ld a, [$cfc0]
    bit 0, a
    ld hl, $d26b
    jp nz, Jump_00e_5984

    ld a, [$d231]
    ld b, a
    ld a, [$d22f]
    ld c, a
    ld a, c
    cp $0c
    jr nz, jr_00e_596d

    ld a, $00
    call $2fcb
    ld a, [$abfd]
    and a
    call $2fe1
    jr z, jr_00e_596d

Jump_00e_595f:
    ld a, $00
    call $2fcb

Call_00e_5964:
    ld hl, $abfe
    call Call_00e_5984
    jp $2fe1


jr_00e_596d:
    dec c
    push bc
    ld b, $00
    ld hl, $5999
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]

Call_00e_5978:
    ld l, a
    pop bc

jr_00e_597a:
    dec b
    jr z, jr_00e_5984

jr_00e_597d:
    ld a, [hl+]
    cp $ff
    jr nz, jr_00e_597d

    jr jr_00e_597a

Call_00e_5984:
Jump_00e_5984:
jr_00e_5984:
    ld de, $d073
    push de
    ld bc, $000b
    call $3026
    pop de
    ret


    ld de, $d073
    push de
    ld bc, $000b
    pop de
    ret


    rra
    ld e, d
    dec [hl]
    ld e, d
    ld c, e
    ld e, d
    ld h, l
    ld e, d
    add l
    ld e, d
    sbc a
    ld e, d
    cp e
    ld e, d
    rst $08
    ld e, d
    rst $28
    ld e, d
    ld d, c
    ld e, h
    ld d, c
    ld e, h
    db $76
    ld e, h
    sbc d
    ld e, h
    ret nz

    ld e, h
    and $5c
    dec bc
    ld e, l
    scf
    ld e, l
    ld e, l
    ld e, l
    ld a, l
    ld e, l
    and [hl]
    ld e, l
    pop hl
    ld e, l
    ld bc, $a55e
    ld e, [hl]
    xor $5f
    pop de
    ld h, b
    db $d3
    ld h, c
    ld a, [$4f61]
    ld h, e
    sub h
    ld h, h
    ld a, [hl]
    ld h, l
    add hl, hl
    ld h, [hl]
    or l
    ld h, a
    ld a, [c]
    ld h, a
    dec bc
    ld l, b
    ld sp, $4d68
    ld l, b
    ld d, h
    ld l, c
    bit 5, d
    ld [$cf6b], a
    ld l, h
    add d
    ld l, l
    ld a, [hl+]
    ld l, [hl]
    ld a, [de]
    ld l, a
    ld [hl], $6f
    adc h
    ld [hl], b
    ld bc, $1c71
    ld [hl], c
    ld c, a
    ld [hl], c
    and a
    ld [hl], c
    ld b, $72
    sub b
    ld [hl], d
    ld [bc], a
    ld [hl], e
    cp b
    ld [hl], e
    jr jr_00e_5a7a

    ccf
    db $76
    ld a, e
    db $76
    add hl, bc
    ld [hl], a
    ld h, b
    ld [hl], a
    adc d
    ld [hl], a
    ld c, e
    ld a, b
    add a
    ld a, b
    ld b, a
    ld a, c
    sbc h
    ld a, c
    add $79
    pop af
    ld a, c
    ld b, $7a
    ld c, h
    ld a, d
    add l
    add b
    adc e
    adc d
    adc l
    add h
    sub c
    ld d, b
    nop
    ld c, $11
    dec c
    ld [c], a
    ld c, $b0
    inc c
    rst $08
    ld c, $c6
    rrca
    and h
    rst $38
    sub [hl]
    add a
    adc b
    sub e
    adc l
    add h
    sbc b
    ld d, b
    nop
    inc h
    rra
    dec h
    jp nc, Jump_00e_7124

    ld h, $cb
    daa
    inc h
    daa
    pop af
    rst $38
    add c
    sub h
    add [hl]
    sub d
    sbc b
    ld d, b
    ld [bc], a
    dec de
    inc c
    xor [hl]
    dec de
    ld a, a
    ld l, l
    dec de
    adc $6d
    dec de
    xor b
    xor [hl]
    dec de
    ld a, e
    ld l, l
    inc e
    push de
    sub d
    rst $38
    adc h
    adc [hl]
    sub c
    sub e
    sbc b
    ld d, b
    ld [bc], a
    dec l
    xor c
    ld l, l
    ld l, $ea
    inc bc
    ld l, $ab
    sub d
    cpl
    ret z

    sub d
    dec l
    push bc

jr_00e_5a7a:
    ld l, l
    cpl
    ld e, [hl]
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    rst $38
    adc a
    sub c
    sbc b
    add d
    add h
    ld d, b
    ld [bc], a
    ld c, l
    ld a, h
    inc bc
    ld c, h
    ld c, c
    ld l, l
    ld c, l
    db $dd
    ld a, [hl]
    ld c, l
    add e
    sub d
    ld c, h
    jp $4d49


    sub b
    sub d
    rst $38
    adc c
    add b
    sub d
    adc h
    adc b
    adc l
    add h
    ld d, b
    ld [bc], a
    ld d, e
    or l
    ld c, c
    ld d, e
    db $e3
    sub d
    ld d, e
    jp hl


    ld l, l
    ld d, e
    call nc, Call_00e_5303
    ld d, b
    sub d
    ld d, e
    ret nc

    ld c, c
    rst $38
    add d
    add a
    sub h
    add d
    adc d
    ld d, b
    nop
    inc a
    ld a, $3c
    ld a, [hl]
    inc a
    ld h, c
    inc a
    ld a, l
    ld a, $d9
    ld a, $39
    rst $38
    add d

jr_00e_5ad0:
    adc e
    add b
    adc b
    sub c

jr_00e_5ad4:
    ld d, b
    ld [bc], a
    ld h, d
    ld [hl], e
    sub d
    ld h, d
    ld b, $6d
    ld h, e
    sub l
    inc bc
    ld h, d
    and b
    inc bc
    ld h, d
    ld [hl+], a
    inc bc
    ld h, h
    and $92
    jr z, jr_00e_5ad0

    sub d
    sub d
    sub d
    sub d
    rst $38
    and $50
    nop
    ld b, $98
    rst $38
    and $50
    nop
    ld b, $9b
    rst $38
    and $50
    nop

jr_00e_5afe:
    ld b, $9e
    rst $38
    and $50
    nop
    dec d
    add h
    rla
    jp z, $9919

    rst $38
    and $50

jr_00e_5b0d:
    nop
    dec d
    add h
    rla
    jp z, $9c19

jr_00e_5b14:
    rst $38
    and $50
    nop
    dec d
    add h

jr_00e_5b1a:
    rla
    jp z, $9f19

    rst $38
    and $50
    ld [bc], a
    jr z, jr_00e_5b57

    ld l, l
    jr z, jr_00e_5b14

    inc bc
    jr z, jr_00e_5afe

    ld c, c
    jr z, jr_00e_5b0d

    ld c, c
    jr z, @-$6a

    ld l, l
    ld a, [hl+]
    sbc d
    sub d
    ld d, $99

jr_00e_5b36:
    ld d, $92
    sub d
    sub d

Call_00e_5b3a:
    rst $38
    and $50
    ld [bc], a
    jr z, jr_00e_5ad4

    ld l, l
    jr z, @-$1e

    ld c, c
    jr z, jr_00e_5b1a

    ld c, c
    jr z, jr_00e_5b90

Call_00e_5b49:
    ld c, c
    jr z, jr_00e_5bb6

    ld [hl], a
    ld a, [hl+]
    sbc l
    ld [hl], a
    ld d, $9c
    dec hl
    ld [hl], a
    ld [hl], a

jr_00e_5b55:
    ld [hl], a
    rst $38

jr_00e_5b57:
    and $50
    ld [bc], a
    jr z, jr_00e_5ba3

    ld c, c
    jr z, jr_00e_5b92

    ld l, l
    jr z, jr_00e_5b36

    ld c, c
    jr z, @-$6a

    ld l, l
    jr z, jr_00e_5b55

    inc bc
    ld a, [hl+]
    and b
    sub d
    ld d, $9f
    dec hl
    sub d
    sub d
    sub d
    rst $38
    and $50
    ld [bc], a
    ld e, b
    ld a, l
    inc bc
    ld e, b
    ld d, l
    inc bc
    ld e, b
    add hl, sp
    inc bc
    ld e, b
    cp d
    ld c, c
    ld e, b
    dec sp
    ld l, l
    ld e, c
    sbc d
    ld c, c
    ld d, l
    rst $10
    dec hl
    ld e, $67
    cp c
    ld e, $9a

jr_00e_5b90:
    ld [hl], e
    ld c, c

jr_00e_5b92:
    ld c, c
    ld c, c
    rst $38
    and $50
    ld [bc], a
    ld e, b
    ld a, l
    inc bc
    ld e, b
    add hl, sp
    inc bc
    ld e, b
    ld d, l
    inc bc
    ld e, b
    inc bc

jr_00e_5ba3:
    ld c, c
    ld e, b
    cp d
    ld c, c
    ld e, c
    sbc l
    inc bc
    ld e, $d7
    dec hl
    ld e, $67
    cp c
    ld e, $9c
    ld l, h
    inc bc
    inc bc
    inc bc

jr_00e_5bb6:
    rst $38
    and $50
    ld [bc], a
    ld e, b
    ld a, l
    inc bc
    ld e, b
    ld d, l
    inc bc
    ld e, b
    add hl, sp
    inc bc
    ld e, b
    dec sp
    inc bc
    ld e, b
    inc bc
    ld c, c
    ld e, c
    and b
    ld c, c
    ld e, $d7
    dec hl
    ld e, $67
    cp c
    ld e, $a0
    ld h, e
    ld c, c
    ld c, c
    ld c, c
    rst $38
    and $50
    ld [bc], a
    ld h, a
    or l
    sub d
    ld l, c
    add b
    ld l, l
    ld l, c
    ld l, c
    db $76
    ld l, c
    and b
    ld c, c
    ld l, d
    sbc l
    inc bc
    ld l, h
    sbc d
    ld c, c
    inc hl
    ld e, l
    call nc, $f723
    ld l, l
    inc hl
    ld b, b
    ld [hl-], a
    inc hl
    ld l, c
    ld hl, sp+$23
    sbc d
    ld [hl], e
    ld c, c
    ld c, c
    ld c, c
    rst $38
    and $50

Call_00e_5c03:
    ld [bc], a
    ld h, a
    or l
    ld c, c
    ld l, c
    add b
    ld l, l
    ld l, c
    ld l, c
    db $76
    ld l, c
    sbc d
    ld c, c
    ld l, d
    and b
    ld c, c
    ld l, h
    sbc l
    inc bc
    inc hl
    ld e, l
    call nc, $f723
    ld l, l
    inc hl
    ld b, b
    ld [hl-], a
    inc hl
    ld l, c
    ld hl, sp+$23
    sbc l
    ld l, h
    inc bc
    inc bc
    inc bc
    rst $38
    and $50
    ld [bc], a
    ld h, a
    ld l, c
    db $76
    ld l, c
    or l
    ld c, c
    ld l, c
    add b
    ld l, l
    ld l, c
    sbc l
    inc bc
    ld l, d
    sbc d
    ld c, c
    ld l, h
    and b
    ld c, c
    inc hl
    ld e, l
    call nc, $f723
    ld l, l
    inc hl
    ld b, b
    ld [hl-], a
    inc hl
    ld l, c
    ld hl, sp+$23
    and b
    ld h, e
    ld c, c
    ld c, c
    ld c, c
    rst $38
    sub [hl]
    adc b
    adc e
    adc e
    ld d, b
    ld [bc], a
    ld [hl], e
    call nz, Call_00e_6e6d
    ld a, l
    inc bc
    ld [hl], e
    ld h, a
    ld c, c
    ld [hl], e
    rst $00
    sub d
    ld l, [hl]
    inc h
    sub d
    ld [hl], e
    ld b, c
    ld l, l
    add hl, hl
    ld d, b
    xor [hl]
    add hl, hl
    ld [hl+], a
    ld e, [hl]
    ld a, [hl+]
    or d
    ld h, d
    ld l, l
    ld l, l
    ld l, l
    rst $38
    add d
    ld d, b
    nop
    ld a, [bc]
    adc a
    rst $38
    add d
    ld d, b
    nop
    ld a, [bc]
    adc a
    rst $38
    sub d
    add a
    add l
    ld d, b
    ld [bc], a
    ld a, l
    db $fc
    sub d
    ld a, [hl]
    push bc
    sub d
    ld a, l
    ld a, c
    sub d
    ld a, l
    ld e, [hl]
    sub d
    ld a, l
    sub c
    sub d
    ld a, [hl]
    ld hl, sp+$03
    rst $38
    add c
    sub c
    sub h
    adc l
    adc [hl]
    ld d, b
    ld [bc], a
    ld [hl], e
    sub $49
    ld [hl], e
    reti


    ld c, c
    ld [hl], e
    ret nc

    ld c, c
    ld [hl], e
    add hl, bc
    sub d
    ld [hl], e
    adc a
    ld c, c
    ld [hl], l
    ld b, h
    ld c, c
    dec hl
    ld e, a
    inc d
    dec hl
    ret


    sbc l
    dec hl
    ld b, h
    sbc l
    ld c, c
    ld c, c
    ld c, c
    rst $38
    adc d
    add b
    sub c
    add h
    adc l
    ld d, b
    ld [bc], a
    ld [hl], e
    ld e, [hl]
    ld l, l
    ld [hl], e
    pop af
    sub d
    ld [hl], e
    ld h, c
    sub d
    ld [hl], l
    push hl
    inc bc
    ld [hl], e
    ret z

    sub d
    ld a, b
    push bc
    sub d
    inc l
    add $62
    ld [de], a
    db $e4
    cp c
    cpl
    push hl
    ld l, $92
    sub d
    sub d
    rst $38
    adc d
    adc [hl]
    add [hl]
    add b
    ld d, b
    ld [bc], a
    ld l, a
    ld h, l
    inc bc
    ld [hl], e
    sbc d
    sub d
    ld [hl], b
    ld a, [c]
    sub d
    ld [hl], h
    ld e, c
    sub d
    ld [hl], e
    push de
    sub d
    ld [hl], h
    xor c
    sub d
    ld a, [hl+]
    ld e, c
    ld l, e
    inc l
    cp h
    ld e, h
    inc l
    xor c
    ld l, b
    sub d
    sub d
    sub d
    rst $38
    adc e
    add b
    adc l
    add d
    add h
    ld d, b
    ld [bc], a
    ld [hl], l
    ld [hl], e
    sub d
    ld [hl], l
    adc [hl]
    ld l, l
    ld [hl], l
    add a
    ld l, l
    ld a, b
    and $92
    ld a, b
    ld hl, sp+$49
    ld a, b
    sub l
    ld l, l
    ld l, $8e
    ld de, $9d2e
    ccf
    ld l, $06
    dec [hl]
    ld l, $a3
    ccf
    ld l, $95
    ld a, [hl]
    ld l, l
    ld l, l
    ld l, l
    rst $38
    add c
    sub c
    adc [hl]
    add d
    adc d
    ld d, b
    ld [bc], a
    ld a, b
    ret nc

    ld c, c
    ld a, b
    rst $00
    sub d
    ld a, b
    push de
    sub d
    ld a, b
    ld a, [c]
    sub d
    ld a, b
    sub $49
    ld a, b
    adc [hl]
    inc bc
    inc l
    ld e, a
    inc d
    sbc l
    ld [hl], l
    ret


    ld a, [hl+]
    adc l
    and e
    inc bc
    inc bc
    inc bc
    rst $38
    adc h
    adc b
    sub d
    sub e
    sbc b
    ld d, b
    ld [bc], a
    ld a, b
    and $92
    ld a, b
    add [hl]
    sub d
    ld a, b
    or l
    ld c, c
    ld a, b
    add e
    sub d
    ld a, b
    ld l, c
    db $76
    ld a, b
    ld a, c
    sub d
    cpl
    ld a, c
    add hl, sp
    sub d
    sub d
    sub d
    rst $38
    adc e
    sub e
    add sp, -$6e
    sub h
    sub c
    add [hl]
    add h
    ld d, b
    ld [bc], a
    ld a, b
    ld a, [de]
    ld l, l
    ld a, b
    ld d, b
    sub d
    ld a, b
    ld a, l
    adc h
    ld a, b
    jp hl


    sub d
    ld a, b
    add a
    inc bc
    ld a, b
    sub c
    sub d
    jr z, jr_00e_5e00

    ld h, a
    ld l, b
    add c
    sbc c
    ld l, $7d
    ld h, d
    sub d
    sub d
    sub d
    rst $38
    sub c
    adc [hl]
    sub d
    sub d
    ld d, b
    nop
    ld b, d
    ld e, c
    ld b, d
    ld b, c
    rst $38
    adc h
    adc b
    sub e
    add d
    add a
    ld d, b
    nop
    ld b, d
    adc e
    rst $38
    adc c
    add h
    add e
    ld d, b
    nop
    ld b, d
    ld d, d
    ld b, c
    adc l
    ld b, c
    jp hl


    rst $38
    adc h
    add b
    sub c
    add d
    ld d, b
    nop
    ld e, d
    ret z

    ld e, e
    jp z, $8e5a

    rst $38
    sub c
    adc b
    add d
    add a
    ld d, b
    nop
    ld d, h
    db $e3
    ld d, h
    ld [hl], c
    ld d, h
    ld b, c
    rst $38
    add h
    sub c
    adc b
    adc d
    add b
    ld d, b
    ld [bc], a
    ld a, b
    ld h, a
    ld c, c
    ld a, b
    cp d
    ld c, c
    ld a, b
    inc bc
    ld c, c
    ld a, b
    jp nc, Jump_00e_7849

    rra
    ld c, c
    ld a, b
    ld [hl], d
    ld c, c
    ld l, $b6
    pop af
    ld c, c
    ld c, c
    ld c, c

jr_00e_5e00:
    rst $38
    adc c
    adc [hl]
    add h
    sbc b
    ld d, b
    nop
    ld b, $13
    rst $38
    adc h
    adc b
    adc d
    add h
    sbc b
    ld d, b
    nop
    ld b, $10
    ld b, $a1
    rst $38
    add b
    adc e
    add c
    add h
    sub c
    sub e
    ld d, b
    nop
    ld c, $17
    ld c, $b3
    rst $38
    add [hl]
    adc [hl]
    sub c
    add e
    adc [hl]
    adc l
    ld d, b
    nop
    rrca
    pop de
    rst $38
    sub d
    add b
    adc h
    sub h
    add h
    adc e
    ld d, b
    nop
    ld a, [de]
    ld bc, $071a
    ld a, [de]
    inc b
    ld a, [de]
    dec de
    rst $38
    adc b
    add b
    adc l
    ld d, b
    nop
    ld a, [de]
    rst $20
    ld a, [de]
    ret c

    rst $38
    adc c
    adc [hl]
    add h
    sbc b
    ld d, b
    nop
    inc e
    inc d
    rst $38
    adc c
    adc [hl]
    add h
    sbc b
    ld d, b
    nop
    ld d, d
    inc d
    ld h, h
    add c
    ld d, d
    add h
    rst $38
    sub [hl]
    add b
    sub c
    sub c
    add h
    adc l
    ld d, b
    nop
    ld l, c
    ld d, $ff
    adc c
    adc b
    adc h
    adc h
    sbc b
    ld d, b
    nop
    ld l, c
    inc d
    ld l, c
    jr @+$01

    adc [hl]
    sub [hl]
    add h
    adc l
    ld d, b
    nop
    ld l, c
    add h
    rst $38
    adc c
    add b
    sub d
    adc [hl]
    adc l
    ld d, b
    nop
    ld l, a
    ld [hl], b
    ld h, h
    xor c
    rst $38
    adc c
    adc [hl]
    add h
    sbc b
    ld d, b
    nop
    ld h, h
    inc d
    ld h, h
    ld d, $64
    add h
    rst $38
    adc c
    adc [hl]
    add h
    sbc b
    ld d, b
    nop
    ld a, a
    inc d
    ld a, b
    ld [de], a
    ld a, b
    jr @+$01

    adc c
    add b
    add d
    adc d
    ld d, b
    nop
    rra
    db $d3
    rra
    ld [hl], d
    rst $38
    adc d
    adc b
    adc a
    adc a
    ld d, b
    nop
    ld l, e
    db $db
    ld l, e
    ld d, d
    ld l, e
    rst $10
    ld l, e
    sbc $ff
    add b
    adc e
    add b
    adc l
    ld d, b
    nop
    ld hl, $ffca
    adc c
    adc [hl]
    add a
    adc l
    adc l
    sbc b
    ld d, b
    nop
    ld l, c
    cp c
    ld h, h
    ld b, a
    ld h, h
    inc d
    rst $38
    add e
    add b
    adc l
    adc l
    sbc b
    ld d, b
    nop
    ld h, h
    ld a, h
    ld h, h
    ld a, l
    ld h, h
    ld a, [hl]
    rst $38
    sub e
    adc [hl]
    adc h
    adc h
    sbc b
    ld d, b
    nop
    ld h, h
    push de
    ld h, h
    add h
    rst $38
    add e
    sub h
    add e
    adc e
    add h
    sbc b
    ld d, b
    nop
    ld l, c
    cp l
    rst $38
    adc c
    adc [hl]
    add h
    ld d, b
    nop
    ld l, c
    ld [hl], d
    ld l, c
    adc $ff
    add c
    adc b
    adc e
    adc e
    sbc b
    ld d, b
    nop
    ld h, h
    cp l
    ld h, h
    jr z, jr_00e_5f76

    ld h, $64
    ld l, c
    rst $38
    add d
    add a
    add b
    add e
    ld d, b
    nop
    ld l, $18
    rst $38
    adc l
    add b
    sub e
    add h
    ld d, b
    nop
    ld l, a
    and [hl]
    ld l, a
    and d
    rst $38
    sub c
    adc b
    add d
    adc d
    sbc b
    ld d, b
    nop
    ld l, a
    cp [hl]
    ld l, a
    add h
    rst $38
    adc c
    add b
    add d
    adc d
    ld d, b
    nop
    ld a, [hl+]
    cp l
    ld a, [hl+]
    ld h, l
    rst $38
    adc c
    add b
    add d
    adc d
    ld d, b
    nop
    ld d, a
    ld [hl], d
    ld d, a
    ld a, l
    rst $38
    add b
    adc e
    add b
    adc l
    ld d, b
    nop
    ld a, [hl+]
    ld [hl], d
    ld a, [hl+]
    pop bc
    rst $38
    add b
    adc e
    add b
    adc l
    ld d, b
    nop
    ld d, a
    or d
    ld d, a
    ld [hl], d
    ld d, a
    jp $c175


    rst $38
    add d
    add a
    add b
    add e
    ld d, b
    nop
    ld [hl-], a
    ld a, d
    ld [hl-], a
    ld d, c
    rst $38
    add d
    add a
    add b
    add e
    ld d, b

jr_00e_5f76:
    nop
    ld d, a
    ld a, d
    ld d, a
    ld d, d
    rst $38
    adc c
    add b
    add d
    adc d
    ld d, b
    nop
    ld h, h
    ld c, [hl]
    ld h, h
    cp l
    ld h, h
    ld h, l
    rst $38
    adc c
    add b
    add d
    adc d
    ld d, b
    ld [bc], a
    ld a, b
    adc $77
    ld a, b
    jr jr_00e_600c

    ld a, b
    ld c, [hl]
    ld [hl], a
    ld a, b
    sub h
    ld [hl], a
    ld a, b
    ld d, a
    ld [hl], a
    ld a, b
    ld a, a
    ld [hl], a
    rst $38
    add b
    adc e
    add b
    adc l
    ld d, b
    nop
    ld h, h
    jp z, $c664

    ld h, h
    ret


    ld h, h
    pop hl
    rst $38
    add b
    adc e
    add b
    adc l
    ld d, b
    ld [bc], a
    ld a, b
    ld h, l
    ld [hl], a
    ld a, b
    cp c
    ld [hl], a
    ld a, b
    db $d3
    ld [hl], a
    ld a, b
    cp l
    ld [hl], a
    ld a, b
    adc b
    ld h, d
    ld a, b
    db $ed
    ld [hl], a
    ld a, b
    jp Jump_00e_7877


    add l
    ld [hl], a
    rst $38
    add d
    add a
    add b
    add e
    ld d, b
    nop
    ld h, h
    ld a, d
    ld h, h
    ld d, d
    rst $38
    add d
    add a
    add b
    add e
    ld d, b
    nop
    ld a, b
    rst $10
    ld a, b
    jp z, Jump_00e_6a78

    ld a, b
    scf
    ld a, b
    dec [hl]
    ld a, b
    jp nc, $91ff

    adc [hl]
    add e
    ld d, b
    nop
    inc c
    or c
    inc c
    ld d, e
    rst $38
    add b
    add c
    add h
    ld d, b
    nop
    inc c
    dec d
    inc c
    ld d, h
    rst $38
    add c
    sub c
    sbc b
    add b
    adc l
    ld d, b
    nop
    rra
    ld d, $ff

jr_00e_600c:
    sub e
    add a
    add h
    adc [hl]
    ld d, b
    nop
    ld c, d
    and h
    ld c, d
    ld d, $4a
    scf
    ld c, d
    add $4a
    ld [de], a
    rst $38
    sub e
    adc [hl]
    add c
    sbc b
    ld d, b
    nop
    dec l
    scf
    dec l
    add $2e
    ld [de], a
    rst $38
    add e
    add h
    adc l
    adc b
    sub d
    ld d, b
    nop
    ld c, h
    or b
    ld c, h
    or d
    ld c, h
    ld d, l
    rst $38
    sub l
    add b
    adc l
    add d
    add h
    ld d, b
    nop
    ld d, b
    db $e3
    ld d, d
    ld d, l
    rst $38
    add a
    add b
    adc l
    adc d
    ld d, b
    nop
    ld l, c
    rst $08
    ld l, c
    ld [de], a
    rst $38
    sub c
    adc [hl]
    sbc b
    ld d, b
    nop
    ld h, h
    and h
    ld h, h
    scf
    rst $38
    add c
    adc [hl]
    sub c
    adc b
    sub d
    ld d, b
    nop
    ld h, h
    or b
    ld h, h
    or d
    ld h, h
    add $ff
    add c
    adc [hl]
    add c
    ld d, b
    nop
    ld l, c
    ld d, l
    rst $38
    adc c
    adc [hl]
    sub d
    add h
    ld d, b
    nop
    ld a, b
    ld d, e
    rst $38
    adc a
    add h
    sub e
    add h
    sub c
    ld d, b
    nop
    ld c, $53
    ld c, $54
    rrca
    pop hl
    rst $38
    adc c
    adc [hl]
    sub d
    add h
    ld d, b
    nop
    ld h, h
    ld d, e
    rst $38
    adc a
    add h
    sub c
    sub c
    sbc b
    ld d, b
    nop
    ld l, c
    rst $08
    rst $38
    add c
    sub c
    add h
    sub e
    ld d, b
    nop
    ld h, h
    db $e3
    ld h, h
    ld [de], a
    rst $38
    adc c
    adc [hl]
    sub d
    add h
    ld d, b
    nop
    ld a, a
    ld d, e
    ld a, a
    pop hl
    ld a, b
    scf
    rst $38
    sub l
    add b
    adc l
    add d
    add h
    ld d, b
    nop
    ld h, h
    or d
    ld h, h
    ld d, l
    rst $38
    sub l
    add b
    adc l
    add d
    add h
    ld d, b
    nop
    ld a, b
    ld [de], a
    ld a, b
    or b
    ld a, b
    ld d, l
    ld a, b
    or d
    ld a, b
    add $78
    db $e3
    rst $38
    add d
    add b
    sub c
    sub c
    adc b
    add h
    ld d, b
    nop
    ld hl, $2177
    ld h, $23
    or b
    rst $38
    add c
    sub c
    adc b
    add e
    add [hl]
    add h
    sub e
    ld d, b
    nop
    inc hl
    jr z, jr_00e_610f

    cp b
    inc hl
    ld a, [de]
    rst $38
    add b
    adc e
    adc b
    add d
    add h
    ld d, b
    nop
    ld [hl], l
    adc l
    ld a, b
    ld sp, $1878
    rst $38
    adc d
    sub c
    adc b
    sub d
    add h
    ld d, b
    nop
    jr nz, jr_00e_611d

    jr nz, jr_00e_6125

    rst $38
    add d
    adc [hl]
    adc l
    adc l
    adc b

jr_00e_610f:
    add h
    ld d, b
    nop
    ld c, l
    inc h
    rst $38
    adc e
    adc b
    adc l
    add e
    add b
    ld d, b
    nop
    ld a, b

jr_00e_611d:
    call Call_00e_5978
    ld a, b
    add h
    rst $38
    adc e
    add b

jr_00e_6125:
    sub h
    sub c
    add b
    ld d, b
    nop
    ld l, c
    scf
    ld l, c
    ld h, $69
    or [hl]
    rst $38
    sub d
    add a
    add b
    adc l
    adc l
    adc [hl]
    adc l
    ld d, b
    nop
    ld l, c
    ld a, [de]
    ld l, [hl]
    cpl
    ld l, c
    dec sp
    rst $38
    adc h
    adc b
    add d
    add a
    add h
    adc e
    adc e
    add h
    ld d, b
    nop
    ld [hl], e
    inc sp
    ld [hl], l
    cp l
    ld [hl], e
    ld d, a
    rst $38
    add e
    add b
    adc l
    add b
    ld d, b
    ld [bc], a
    inc l
    inc e
    ld [hl], a
    inc l
    ld b, a
    ld [hl], a
    inc l
    jr z, jr_00e_61d8

    inc l
    ld a, [de]
    ld [hl], a
    rst $38
    add h
    adc e
    adc e
    add h
    adc l
    ld d, b
    nop
    ld l, c
    jr z, jr_00e_61d8

    ld [hl], a
    rst $38
    add d
    adc [hl]
    adc l
    adc l
    adc b
    add h
    ld d, b
    nop
    dec d
    or a
    rst $38
    add d
    adc [hl]
    adc l
    adc l
    adc b
    add h
    ld d, b
    nop
    dec d
    or a
    rst $38
    add e
    add b
    adc l
    add b
    ld d, b
    nop
    ld [hl-], a
    or [hl]
    ld [hl-], a
    inc e
    ld [hl-], a
    or l
    ld [hl-], a
    dec [hl]
    ld [hl-], a
    adc b
    ld [hl-], a
    ret z

    rst $38
    add e
    add b
    adc l
    add b
    ld d, b
    nop
    ld d, a
    or l
    ld d, a
    cp b
    ld d, a
    ld sp, $2857
    ld d, a
    ld a, d
    ld d, a
    dec sp
    rst $38
    add e
    add b
    adc l
    add b
    ld d, b
    nop
    ld h, h
    ld c, c
    ld h, h
    add d
    ld h, h
    dec [hl]
    ld h, h
    ld d, a
    ld h, h
    ld a, d
    ld h, h
    or l
    rst $38
    add e
    add b
    adc l
    add b
    ld d, b
    nop
    ld a, b
    or l
    ld a, b
    ld [hl], b
    ld a, b
    ld e, e
    ld a, b
    dec sp
    ld a, b
    ld a, h
    ld a, b
    inc h
    rst $38
    adc c
    add b
    adc l
    adc b
    adc l

jr_00e_61d8:
    add h
    ld d, b
    ld [bc], a
    ld a, b
    ld l, [hl]
    ld c, c
    ld a, b
    ld [hl], c
    sub d
    ld a, b
    xor c
    sub d
    ld a, b
    rst $08
    inc bc
    ld a, b
    ld c, c
    ld l, l
    ld a, b
    push bc
    sub d
    ld hl, $b8a8
    jp z, Jump_00e_6551

    daa
    ld sp, $92c1
    sub d
    sub d
    rst $38
    adc l
    adc b
    add d
    adc d
    ld d, b
    ld [bc], a
    ld h, b
    add hl, de
    and e
    ld h, b
    ld l, c
    db $76
    ld h, b
    reti


    ld d, h
    ld h, b
    sbc d
    sub d
    ld h, b
    sbc l
    inc bc
    ld h, b
    and b
    ld c, c
    rst $38
    add b
    add b
    sub c
    adc [hl]
    adc l
    ld d, b
    nop
    ld b, [hl]
    ld [hl], e
    ld c, b
    push de
    ld c, b
    ld a, l
    rst $38
    adc a
    add b
    sub h
    adc e
    ld d, b
    nop
    ld e, a
    sub h
    ld e, a
    add d
    ld e, d
    adc [hl]
    rst $38
    add d
    adc [hl]
    add e
    sbc b
    ld d, b
    nop
    ld e, a
    add a
    ld e, a
    ld a, c
    rst $38
    adc h
    adc b
    adc d
    add h
    ld d, b
    nop
    ld e, a
    sbc l
    rst $38
    add [hl]
    add b
    sub l
    add h
    adc l
    ld d, b
    ld [bc], a
    ld a, b
    ld h, l
    sbc b
    ld a, b
    ld e, c
    ld c, c
    ld a, b
    ld e, e
    ld c, c
    ld a, b
    ld c, h
    ld c, c
    ld a, b
    call Call_00e_7249
    adc a
    sbc b
    rst $38
    add [hl]
    add b
    sub l
    add h
    adc l
    ld d, b
    ld [bc], a
    ld a, b
    sub b
    inc bc
    ld a, b
    ld l, c
    db $76
    ld a, b
    pop af
    ld l, l
    ld a, b
    ld a, l
    ld [hl], a
    ld a, b
    push hl
    ld [hl], a
    ld a, b
    ld e, [hl]
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $38
    sub c
    sbc b
    add b
    adc l
    ld d, b
    nop
    ld e, a
    ld a, l
    ld e, a
    ld e, e
    ld e, a
    jp Jump_00e_595f


    ld e, a
    dec [hl]
    ld e, a
    db $e3
    rst $38
    adc c
    add b
    adc d
    add h
    ld d, b
    nop
    ld h, h
    ld d, d
    ld h, h
    ld [hl+], a
    ld h, h
    cp d
    ld h, h
    ret z

    ld h, h
    ld h, a
    ld h, h
    ld [$86ff], a
    add b
    sub l
    add h
    adc l
    ld d, b
    ld [bc], a
    ld h, h
    jp Jump_00e_6498


    ld h, l
    sbc b
    ld h, h
    ld b, h
    sbc b
    ld h, h
    reti


    sbc b
    ld h, h
    call nc, Call_00e_6498
    adc [hl]
    sbc b
    rst $38
    add c
    adc e
    add b
    adc d
    add h
    ld d, b
    ld [bc], a
    ld h, h
    adc b
    ld c, c
    ld h, h
    ld e, e
    ld [hl], a
    ld h, h
    ld l, [hl]
    inc bc
    ld h, h
    ld d, l
    inc bc
    ld h, h
    add sp, $49
    ld h, h
    dec [hl]
    ld l, l
    rst $38
    add c
    sub c
    adc b
    add b
    adc l
    ld d, b
    nop
    ld h, h
    ld e, [hl]
    ld h, h
    jp hl


    ld h, h
    ld b, c
    rst $38
    add h
    sub c
    adc b
    add d
    adc d
    ld d, b
    nop
    ld a, [bc]
    ld bc, $040a
    ld a, [bc]
    rlca
    rst $38
    add b
    adc l
    add e
    sbc b
    ld d, b
    nop
    ld a, [bc]
    ld bc, $040a
    ld a, [bc]
    rlca
    rst $38
    sub e
    sbc b
    adc e
    add h
    sub c
    ld d, b
    nop
    ld a, [bc]
    ld bc, $040a
    ld a, [bc]
    rlca
    rst $38
    sub d
    add h
    add b
    adc l
    ld d, b
    nop
    ld l, [hl]
    add a
    ld l, [hl]
    ld b, c
    ld l, [hl]
    add b
    rst $38
    adc d
    add h
    sub l
    adc b
    adc l
    ld d, b
    nop
    ld l, [hl]
    db $dd
    ld l, [hl]
    jp z, $c86e

    rst $38
    sub d
    sub e
    add h
    sub l
    add h
    ld d, b
    nop
    ld c, $01
    ld c, $04
    ld c, $07
    rst $38
    add b
    adc e
    adc e
    add h
    adc l
    ld d, b
    nop
    ld d, c
    add a
    ld d, d
    ld e, e
    ld d, e
    ld b, h
    rst $38
    add e
    add b
    sub c
    adc b
    adc l
    ld d, b
    nop
    ld h, b
    and $60
    add d
    ld h, b
    ret nc

    rst $38
    add [hl]
    sub [hl]
    add h
    adc l
    ld d, b
    nop
    ld h, c
    push bc
    ld h, c
    add a
    ld h, c
    add [hl]
    ld h, c
    call nz, $8bff
    adc [hl]
    adc b
    sub d
    ld d, b
    nop
    ld b, [hl]
    ld e, [hl]
    ld b, [hl]
    dec [hl]
    ld b, [hl]
    ld c, [hl]
    ld b, [hl]
    cp d
    ld b, [hl]
    ld a, d
    ld b, [hl]
    ld h, a
    rst $38
    add l
    sub c
    add b
    adc l
    ld d, b
    nop
    ld e, a
    rra
    rst $38
    adc e
    adc [hl]
    adc e
    add b
    ld d, b
    nop
    ld e, a
    sub l
    ld e, a
    add e
    rst $38
    adc d
    add b
    sub e
    add h
    ld d, b
    nop
    ld a, [de]
    ld e, $1a
    sub e
    rst $38
    adc b
    sub c
    add h
    adc l
    add h
    ld d, b
    nop
    add hl, de
    ld a, b
    add hl, de
    ld b, [hl]
    rst $38
    adc d
    add h
    adc e
    adc e
    sbc b
    ld d, b
    nop
    ld h, b
    cp l
    ld h, b
    or l
    ld h, b
    add hl, bc
    rst $38
    adc c
    adc [hl]
    sbc b
    add d
    add h
    ld d, b
    nop
    ld h, h
    rra
    ld h, h
    ld a, [hl]
    ld h, h
    add [hl]
    ld h, h
    ld a, [de]
    ld h, h
    call $0664
    rst $38
    add c
    add h
    sub e
    add a
    ld d, b
    nop
    ld h, h
    db $e3
    ld h, h
    ld a, [c]
    ld h, h
    ld a, c
    rst $38
    sub c
    add h
    add h
    adc l
    add b
    ld d, b
    nop
    ld h, h
    ld hl, sp+$64
    ld b, a
    ld h, h
    jp z, $8cff

    add h
    add [hl]
    add b
    adc l
    ld d, b
    ld [bc], a
    ld h, h
    inc bc
    sub d
    ld h, h
    inc sp
    ld [hl], a
    ld h, h
    xor e
    sub d
    ld h, h
    add h
    ld [hl], a
    ld h, h
    ld a, [hl]
    inc bc
    ld h, h
    add e
    sub d
    rst $38
    add c
    add h
    sub e
    add a
    ld d, b
    nop
    ld a, b
    ret z

    ld a, b
    sub $78
    ld a, c
    rst $38
    add d
    add b
    sub c
    adc [hl]
    adc e
    ld d, b
    nop
    ld l, [hl]
    ld h, a
    ld l, [hl]
    ld a, c
    ld l, [hl]
    ld [hl], c
    rst $38
    sub b
    sub h
    adc b
    adc l
    adc l
    ld d, b
    nop
    ld h, h
    inc bc
    ld h, h
    ld a, c
    rst $38
    add h
    adc h
    adc h
    add b
    ld d, b
    nop
    ld h, h
    inc h
    rst $38
    add d
    sbc b
    add c
    adc b
    adc e
    ld d, b
    nop
    ld d, e
    sub $53
    sbc l
    ld d, e
    add [hl]
    ld d, e
    inc h
    ld d, e
    ld c, h
    ld d, e
    or l
    rst $38
    adc c
    add h
    adc l
    adc l
    ld d, b
    nop
    add hl, de
    ld c, l
    add hl, de
    cp h
    rst $38
    add c
    add h
    sub e
    add a
    ld d, b
    nop
    ld a, b
    ld hl, sp+$78
    ld h, c
    ld a, b
    and $78
    rst $38
    sub c
    add h
    add h
    adc l
    add b
    ld d, b
    nop
    ld a, b
    adc [hl]
    ld a, b
    ld b, c
    ld a, b
    add a
    rst $38
    sub c
    add h
    add h
    adc l
    add b
    ld d, b
    ld a, b
    jp hl


    ld l, l
    ld a, b
    adc b
    ld c, c
    ld a, b
    add a
    ld l, l
    ld a, b
    add [hl]
    sub d
    ld a, b
    push bc
    ld l, l
    ld a, b
    call nz, Call_00e_6d6d
    ld l, l
    ld l, l
    ld l, l
    rst $38
    add d
    add b
    sub c
    add b
    ld d, b
    ld [bc], a
    ld h, b
    ld d, b
    inc bc
    ld h, b
    ld b, $77
    ld h, b
    adc [hl]
    ld [hl], a
    ld h, d
    adc $03
    ld e, a
    ld h, l
    ld [hl], a
    ld h, b
    ld hl, sp+$77
    rst $38
    sub l
    adc b
    add d
    sub e

Call_00e_6498:
Jump_00e_6498:
    adc [hl]
    sub c
    adc b
    add b
    ld d, b
    nop
    inc hl
    ret c

    ld hl, $21b4
    and d
    rst $38
    sub d
    add b
    adc h
    add b
    adc l
    sub e
    add a
    add b
    ld d, b
    ld [bc], a
    inc hl
    inc [hl]
    sbc b
    ld hl, $77c0
    ld hl, $77de
    ld [hl+], a
    ld l, h
    sbc b
    rst $38
    adc c
    sub h
    adc e
    adc b
    add h
    ld d, b
    nop
    rrca
    and c
    rst $38
    adc c
    add b
    add d
    adc e
    sbc b
    adc l
    ld d, b
    nop
    rrca
    and c
    rst $38
    add c
    sub c
    add h
    adc l
    add e
    add b
    ld d, b
    nop
    db $10
    and d
    rst $38
    add d
    add b
    sub d
    sub d
    adc b
    add h
    ld d, b
    nop
    ld l, h
    ld h, $6c
    dec l
    rst $38
    add d
    add b
    sub c
    adc [hl]
    adc e
    adc b
    adc l
    add h
    ld d, b
    nop
    ld e, $b7
    jr nz, jr_00e_654d

    ld e, $b7
    rst $38
    add d
    add b
    sub c
    adc e
    add h
    adc l
    add h
    ld d, b
    nop
    rrca
    and c
    rst $38
    adc c
    add h
    sub d
    sub d
    adc b
    add d
    add b
    ld d, b
    nop
    rrca
    and c
    rst $38
    sub c
    add b
    add d
    add a
    add b
    add h
    adc e
    ld d, b
    nop
    rrca
    and c
    rst $38
    add b
    adc l
    add [hl]
    add h
    adc e
    adc b
    add d
    add b
    ld d, b
    nop
    rrca
    and c
    rst $38
    adc d
    add h
    adc l
    add e
    sub c
    add b
    ld d, b
    nop
    rrca
    and c
    rst $38
    sub l
    add h
    sub c
    adc [hl]
    adc l
    adc b
    add d
    add b
    ld d, b
    nop
    rrca
    and c
    rst $38
    adc c
    sub h
    adc e
    adc b
    add b
    ld d, b
    nop
    ld [hl], e
    ld [c], a
    ld [hl], l

jr_00e_654d:
    dec l
    ld [hl], e
    inc e
    rst $38

Jump_00e_6551:
    sub e
    add a
    add h
    sub c
    add h
    sub d
    add b
    ld d, b
    nop
    rrca
    and c
    rst $38
    sub l
    add b
    adc e
    add h
    sub c
    adc b
    add h
    ld d, b
    ld [bc], a
    dec l
    or b
    ld [hl], a
    dec l
    dec l
    ld [hl], a
    dec l
    ld d, a
    ld l, l
    dec l
    adc b
    ld c, c
    rst $38
    adc [hl]
    adc e
    adc b
    sub l
    adc b
    add b
    ld d, b
    nop
    inc l
    inc h
    rst $38
    adc e
    add b
    sub c
    sub c
    sbc b
    ld d, b
    nop
    ld d, $6c
    rst $38
    add b
    adc l
    add e
    sub c
    add h
    sub [hl]
    ld d, b
    nop
    inc d
    rst $28
    inc d
    ld c, a
    rst $38
    add d
    add b
    adc e
    sub l
    adc b
    adc l
    ld d, b
    nop
    dec d
    ld hl, $92ff
    add a
    add b
    adc l
    add h
    ld d, b
    nop
    dec sp
    dec l
    dec sp
    ld h, $ff
    add c
    add h
    adc l
    ld d, b
    nop
    inc a
    ld [de], a
    rst $38
    add c
    sub c
    add h
    adc l
    sub e
    ld d, b
    nop
    inc a
    inc e
    rst $38
    sub c
    adc [hl]
    adc l
    ld d, b
    nop
    inc a
    adc l
    rst $38
    add h
    sub e
    add a
    add b
    adc l
    ld d, b
    nop
    ld l, l
    adc e
    ld l, l
    or [hl]
    rst $38
    add c
    sub c
    add h
    adc l
    sub e
    ld d, b
    nop
    ld b, [hl]
    cp c
    rst $38
    add c
    sub c
    add h
    adc l
    sub e
    ld d, b
    nop
    ld h, [hl]
    db $db
    ld h, [hl]
    ret nz

    ld h, [hl]
    ld [hl], a
    rst $38
    adc b
    sub d
    sub d
    add b
    add d
    ld d, b
    ld bc, $eb1f
    sub e
    and h
    ld d, d
    ld l, c
    rst $38
    add e
    adc [hl]
    adc l
    add b
    adc e
    add e
    ld d, b
    nop
    ld e, $18
    ld e, $b8
    rst $38
    sbc c
    add b
    add d
    add a
    ld d, b
    nop
    ld d, e
    scf
    rst $38
    add c
    sub c
    add h
    adc l
    sub e
    ld d, b
    nop
    ld a, b
    ld d, d
    ld a, b
    ld c, [hl]
    ld a, b
    add h
    rst $38
    adc h
    adc b
    adc e
    adc e
    add h
    sub c
    ld d, b
    nop
    add hl, sp
    adc b
    add hl, sp
    ld d, a
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    jr jr_00e_6672

    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    rla
    ld d, c
    rla
    adc c
    rla
    sub e
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, e
    db $dd
    ld d, c
    xor c
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, e
    push hl
    ld d, e
    ld d, l
    ld d, e
    ld h, c
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, e
    add h
    ld d, e
    ld l, [hl]
    ld d, e
    call $8253
    ld d, e
    reti


    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e

jr_00e_6672:
    ld d, b
    nop
    ld d, e
    ld b, a
    ld d, d
    ld a, l
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, h
    call nc, Call_00e_7354
    ld d, h
    add sp, $54
    ld b, h
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, h
    ld c, c
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld e, d
    ld e, c
    ld e, d
    sub l
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, l
    ld a, [de]
    ld d, l
    ld a, $55
    push bc
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, [hl]
    ld a, [hl]
    ld d, [hl]
    inc bc
    ld d, [hl]
    and b
    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    nop
    ld hl, $ffe4
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, [hl]
    ld e, [hl]
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld e, c
    ld [hl], b
    ld e, c
    ld [hl], e
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld e, c
    jp $a959


    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld b, b
    ld [hl], b
    ccf
    add d
    ccf
    call nc, $3540
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld b, d
    push bc
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld b, d
    or d
    ld b, d
    ld [hl+], a
    ld b, d
    reti


    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld b, d
    ld d, d
    ld b, d
    ld h, c
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld b, c
    ld h, l
    ld b, c
    ld e, e
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld b, c
    ld c, h
    ld b, c
    call Call_00e_6e41
    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    nop
    inc h
    ld a, [hl+]
    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    nop
    ld e, $6d
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld e, b
    add a
    ld e, b
    ld h, a
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, a
    ret nc

    ld d, a
    ld [c], a
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    rrca
    inc de
    rrca
    inc de
    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    nop
    ld d, $29
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld b, d
    xor c
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, $e4
    rla
    ld h, b
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    add hl, de
    ld a, [hl+]
    add hl, de
    ld a, [hl+]
    ld e, $18
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld l, h
    ld hl, sp-$01
    adc a
    sub c
    add h
    sub d
    sub e
    adc [hl]
    adc l
    ld d, b
    nop
    ld c, e
    dec sp
    ld c, e
    call nc, $84ff
    add e
    sub [hl]
    add b
    sub c
    add e
    ld d, b
    nop
    ld [hl], b
    sub l
    rst $38
    add [hl]
    sub c
    add h
    add [hl]
    adc [hl]
    sub c
    sbc b
    ld d, b
    nop
    ld h, [hl]
    sub l
    ld [hl], b
    xor e
    rst $38
    sub l
    adc b
    sub c
    add [hl]
    adc b
    adc e
    ld d, b
    nop
    inc d
    ld c, l
    rst $38
    add b
    adc e
    add l
    sub c
    add h
    add e
    ld d, b
    nop
    ld c, e
    jp nc, $91ff

    adc [hl]
    sub a
    add b
    adc l
    adc l
    add h
    ld d, b
    nop
    ld c, c
    reti


    rst $38
    add d
    adc e
    add b
    sub c
    adc b
    sub d
    sub d
    add b
    ld d, b
    nop
    ld c, c
    ldh [rIE], a
    add d
    adc [hl]
    adc e
    add h
    sub e
    sub e
    add h
    ld d, b
    nop
    ld h, h
    ld [hl], c
    rst $38
    add a
    adc b
    adc e
    adc e
    add b
    sub c
    sbc b
    ld d, b
    nop
    ld h, h
    dec sp
    ld h, h
    set 7, a
    sub d
    add a
    adc b
    sub c
    adc e
    add h
    sbc b
    ld d, b
    nop
    ld l, l
    add e
    rst $38
    sub d
    add b
    add c
    sub c
    adc b
    adc l
    add b
    ld d, b
    ld [bc], a
    ld a, b
    ld a, h
    inc bc
    ld a, b
    add hl, sp
    inc bc
    ld a, b
    ld h, c
    sub d
    ld a, b
    call nz, Call_00e_786d
    pop af
    sub d
    ld a, b
    ld b, c
    ld l, l
    rst $38
    add e
    adc [hl]
    adc l
    ld d, b
    nop
    rlca
    and l
    rlca
    and a
    rst $38
    sub c
    adc [hl]
    add c
    ld d, b
    nop
    ld [hl], b
    call nc, Call_00e_7b70
    rst $38
    add h
    add e
    ld d, b
    nop
    ld l, c
    ld sp, $7f69
    ld a, a
    inc c
    rst $38
    sub [hl]
    add b
    add e
    add h
    ld d, b
    nop
    ld [$082e], sp
    ld h, d
    ld [$08da], sp
    jr nc, @+$01

    add c
    add h
    adc l
    adc l
    sbc b
    ld d, b
    nop
    add hl, de
    rst $30
    add hl, de
    call z, $a619
    rst $38
    add b
    adc e
    ld d, b
    nop
    add hl, de
    rrca
    add hl, de
    adc h
    rst $38
    adc c
    adc [hl]
    sub d
    add a
    ld d, b
    nop
    add hl, de
    pop bc
    rst $38
    add b
    sub c
    adc l
    adc b
    add h
    ld d, b
    nop
    ld h, h
    dec c
    rst $38
    adc d
    add h
    adc l
    ld d, b
    nop
    ld l, l
    xor b
    ld l, l
    ld a, a
    rst $38
    sub [hl]
    add b
    add e
    add h
    ld d, b
    nop
    rrca
    rrca
    rrca
    ld h, e
    rrca
    cpl
    rrca
    db $db
    rst $38
    sub [hl]
    add b
    add e
    add h
    ld d, b
    nop
    ld e, c
    db $db
    ld e, c
    call nc, $e059
    ld e, c
    ld sp, $83ff
    adc [hl]
    sub h
    add [hl]
    ld d, b
    nop
    ld h, h
    sub $ff
    add b
    sub c
    adc l
    adc b
    add h
    ld d, b
    nop
    ld h, h
    ld c, $ff
    add b
    sub c
    adc l
    adc b
    add h
    ld d, b
    nop
    ld h, h
    ld a, [bc]
    ld h, h
    dec bc
    ld h, h
    rrca
    rst $38
    sub [hl]
    add b
    add e
    add h
    ld d, b
    ld [bc], a
    ld h, h
    cpl
    ld [hl], a
    ld h, h
    db $db
    ld [hl], a
    ld h, h
    ld sp, $6477
    ld h, e
    ld [hl], a
    ld h, h
    ld a, a
    ld [hl], a
    ld h, h
    adc e
    ld [hl], a
    ld h, h
    inc c
    ld [hl], a
    ld h, h
    jr nc, jr_00e_6983

    rst $38
    sub [hl]
    add b
    add e
    add h
    ld d, b
    ld [bc], a
    ld a, b
    xor b
    ld [hl], a
    ld a, b
    db $db
    ld [hl], a
    ld a, b
    call Call_00e_7877
    adc l
    ld [hl], a
    ld a, b
    ld a, e
    ld [hl], a
    ld a, b
    ld sp, $7877
    inc c
    ld [hl], a
    ld a, b
    db $10
    ld [hl], a
    rst $38
    add b
    sub c
    adc l
    adc b
    add h
    ld d, b
    nop
    ld h, h
    pop bc
    ld h, h
    inc c
    ld h, h
    rrca
    rst $38
    add b
    sub c
    adc l
    adc b
    add h
    ld d, b
    nop
    ld a, a
    rrca
    ld a, b
    call nc, Call_00e_7f78
    rst $38
    sub [hl]
    add b
    sbc b
    adc l
    add h
    ld d, b
    nop
    ld a, [de]
    inc c
    ld a, [de]
    xor b
    rst $38
    adc c
    sub h
    sub d
    sub e
    adc b
    adc l
    ld d, b
    nop
    ld c, $76
    ld c, $74
    ld c, $aa
    ld c, $df
    rst $38
    sub c
    add b
    adc e
    adc a
    add a
    ld d, b
    nop
    rrca
    ld c, b
    rst $38
    add b
    sub c
    adc l
    adc [hl]
    adc e
    add e
    ld d, b
    nop
    ld l, c
    ld c, c
    rst $38
    adc d
    sbc b
    adc e
    add h
    ld d, b
    nop
    ld h, h
    xor e
    ld h, h

jr_00e_6983:
    ld [c], a
    ld h, h
    ld d, b
    rst $38
    add a
    add h
    adc l
    sub c
    sbc b
    ld d, b
    nop
    ld c, $c2
    ld c, $3c
    rst $38
    adc h
    add b
    sub c
    sub l
    adc b
    adc l
    ld d, b
    nop
    dec sp
    db $d3
    dec sp
    jp $e23b


    dec sp
    xor e
    rst $38
    sub e
    sub h
    adc e
    adc e
    sbc b
    ld d, b
    nop
    ld h, h
    add c
    rst $38
    add b
    adc l
    add e
    sub c
    add h
    ld d, b
    nop
    ld c, b
    add d
    rst $38
    sub c
    add b
    sbc b
    adc h
    adc [hl]
    adc l
    add e
    ld d, b
    nop
    ld b, [hl]
    adc e
    ld b, [hl]
    xor e
    ld b, [hl]
    ld d, b
    ld b, [hl]
    ld l, [hl]
    rst $38
    sub [hl]
    adc b
    adc e
    sub e
    adc [hl]
    adc l
    ld d, b
    nop
    ld c, [hl]
    ld a, $4f
    jp $e24f


    rst $38
    add h
    add e
    add [hl]
    add b
    sub c
    ld d, b
    ld [bc], a
    ld c, a
    ldh [$73], a
    ld c, a
    db $d3
    ld [hl], a
    ld d, b
    cp d
    ld [hl], a
    ld d, b
    xor e
    ld [hl], a
    rst $38
    adc c
    adc [hl]
    adc l
    add b
    add a
    ld d, b
    nop
    ld l, h
    sub h
    ld l, h
    ld d, b
    ld l, h
    ld c, c
    ld l, h
    jp $8cff


    add b
    sub c
    sub e
    adc b
    adc l
    ld d, b
    nop
    ld h, l
    sub h
    ld h, h
    add d
    rst $38
    sub d
    sub e
    add h
    adc a
    add a
    add h
    adc l
    ld d, b
    nop
    ld h, h
    db $d3
    ld h, h
    ld e, e
    ld h, h
    ld a, c
    ld l, c
    ld [hl], a
    rst $38
    add c
    add b
    sub c
    adc l
    add h
    sbc b
    ld d, b
    nop
    ld h, h
    jp Jump_00e_4964


    ld h, h
    ldh [rIE], a
    sub c
    add b
    adc e
    adc a
    add a
    ld d, b
    nop
    rra
    db $d3
    rst $38
    sub c
    add b
    adc e
    adc a
    add a
    ld d, b
    nop
    ld d, a
    db $d3
    ld d, a
    ld [hl], a
    rst $38
    sub e
    sub h
    adc e
    adc e
    sbc b
    ld d, b
    nop
    ld h, h
    add c
    rst $38
    sub e
    sub h
    adc e
    adc e
    sbc b
    ld d, b
    nop
    ld h, h
    sub h
    ld h, h
    ld a, c
    ld h, h
    add e
    rst $38
    sub [hl]
    adc b
    adc e
    sub e
    adc [hl]
    adc l
    ld d, b
    nop
    ld h, h
    ldh [$64], a
    ld c, c
    ld h, h
    adc e
    rst $38
    sub d
    add d
    adc [hl]
    sub e
    sub e
    ld d, b
    nop
    ld h, h
    sub l
    ld h, h
    ld c, c
    ld h, h
    db $dd
    rst $38
    sub [hl]
    adc b

Jump_00e_6a78:
    adc e
    sub e
    adc [hl]
    adc l
    ld d, b
    ld [bc], a
    ld a, b
    ld [hl+], a
    ld [hl], a
    ld a, b
    sub h
    ld [hl], a
    ld a, b
    jp Jump_00e_7877


    adc e
    ld [hl], a
    ld a, b
    pop bc
    ld [hl], a
    ld a, b
    ldh [rOBP1], a
    rst $38

jr_00e_6a91:
    sub c
    add b
    adc e
    adc a
    add a
    ld d, b
    nop
    ld h, h
    db $d3
    ld h, h
    jp $91ff


    add b
    adc e
    adc a
    add a
    ld d, b
    nop
    ld a, b
    add d
    ld a, b
    xor e
    ld a, b
    ld [c], a
    ld a, b
    jp $d378


    ld a, b
    adc e
    rst $38

jr_00e_6ab1:
    sub e
    sub h
    adc e
    adc e
    sbc b
    ld d, b
    ld [bc], a
    ld a, b
    sub h
    ld [hl], a
    ld a, b
    add d
    ld [hl], a
    ld a, b
    jp Jump_00e_7877


    xor e
    ld [hl], a

jr_00e_6ac4:
    ld a, b
    ld h, e
    ld [hl], a
    ld a, b
    ld [hl], a
    ld [hl], a
    rst $38
    add a
    add b
    sub c
    adc [hl]
    adc e
    add e
    ld d, b
    nop
    ld [hl], e
    ldh [$73], a
    ld c, [hl]
    rst $38
    sub d
    adc b
    adc h
    adc [hl]
    adc l
    ld d, b
    nop
    jr nc, jr_00e_6b58

    jr nc, jr_00e_6ab1

    rst $38
    sub c
    add b
    adc l
    add e
    add b
    adc e
    adc e
    ld d, b
    nop
    jr nc, jr_00e_6a91

    jr nc, jr_00e_6ac4

    jr nc, jr_00e_6ab1

    rst $38
    add d
    add a
    add b
    sub c
    adc e
    adc b
    add h
    ld d, b
    nop
    ld sp, $312f
    db $d3
    ld sp, $ffd7
    add [hl]
    add h
    adc [hl]
    sub c
    add [hl]
    add h
    ld d, b
    nop
    ld [hl-], a
    ld [c], a
    ld sp, $316c
    inc sp
    ld sp, $3147
    inc d
    ld [hl-], a
    ldh [rIE], a
    add c
    add h
    sub c
    adc d
    add h
    ld d, b
    nop
    ld [hl-], a
    sub h
    rst $38
    adc d
    adc b
    sub c
    adc d
    ld d, b
    nop
    ld [hl-], a
    inc e
    ld [hl-], a
    ld h, e
    rst $38
    adc h
    add b
    sub e
    add a
    add h
    sub [hl]
    ld d, b
    nop
    inc sp
    add d
    rst $38
    add a
    add b
    adc e
    ld d, b
    nop
    jr jr_00e_6b96

    add hl, de
    ld d, a
    jr jr_00e_6b9a

    rst $38
    adc a
    add b
    sub e
    adc [hl]
    adc l
    ld d, b
    nop
    ld a, [de]
    db $dd
    ld a, [de]
    db $dd
    rst $38
    add e
    add b
    sub c
    sbc b
    adc e
    ld d, b
    nop

jr_00e_6b58:
    jr jr_00e_6bb4

    add hl, de
    ld e, e
    jr jr_00e_6bb8

    rst $38
    sub [hl]
    add b
    adc e
    sub e
    add h
    sub c
    ld d, b
    nop
    rrca
    ld [hl], h
    rrca
    ld [hl], h
    inc d
    ld [hl], l
    rst $38
    sub e
    adc [hl]
    adc l
    sbc b
    ld d, b
    nop
    dec c
    ld a, b
    ld [de], a
    ld a, c
    db $10
    ld [hl], h
    rst $38
    adc c
    add h
    sub c
    adc [hl]
    adc h
    add h
    ld d, b
    nop
    ld [hl], e
    ld d, d
    ld [hl], e
    jp Jump_00e_7e73


    ld [hl], e
    dec [hl]
    rst $38
    sub e
    sub h
    add d
    adc d
    add h
    sub c
    ld d, b
    nop
    ld [hl], b
    push hl

jr_00e_6b96:
    ld h, h
    ld a, c
    rst $38
    sub c

jr_00e_6b9a:
    adc b
    add d
    adc d
    ld d, b
    nop
    dec c
    ld a, b
    ld [de], a
    ld a, c
    db $10
    ld [hl], h
    rst $38
    add d
    add b
    adc h
    add h
    sub c
    adc [hl]
    adc l
    ld d, b
    nop
    ld [hl], l
    dec sp
    rst $38
    sub d
    add h

jr_00e_6bb4:
    sub e
    add a
    ld d, b
    nop

jr_00e_6bb8:
    ld l, c
    jp $d369


    ld l, c
    scf

jr_00e_6bbe:
    rst $38
    adc c
    add b
    adc h
    add h
    sub d
    ld d, b
    nop
    dec c
    ld a, b
    ld [de], a
    ld a, c
    db $10
    ld [hl], h
    rst $38
    adc e
    add h
    sub [hl]
    adc b
    sub d
    ld d, b
    nop
    dec c
    ld a, b
    ld [de], a
    ld a, c
    db $10
    ld [hl], h
    rst $38
    adc a
    add b
    sub c

jr_00e_6bde:
    adc d
    add h
    sub c
    ld d, b
    nop
    ld [hl], e
    ld e, e
    ld [hl], e
    jp $b073


    rst $38
    add h
    adc e
    add b
    adc b
    adc l
    add h
    ld d, b
    nop
    ld sp, $ff37
    adc a
    add b
    sub h
    adc e
    add b
    ld d, b
    nop
    jr nc, jr_00e_6bbe

    jr nc, jr_00e_6bde

    rst $38
    adc d
    add b
    sbc b
    adc e
    add h
    add h
    ld d, b
    nop
    ld [hl-], a
    rra
    ld [hl-], a
    ld [hl], d
    ld [hl-], a
    ld [hl], a
    rst $38
    sub d
    sub h
    sub d
    adc b
    add h
    ld d, b
    nop
    ld [hl-], a
    dec l
    ld [hl-], a
    xor e
    ld [hl-], a
    jr z, jr_00e_6c51

    cp b
    ld [hl-], a
    adc b
    ld [hl-], a
    or b
    rst $38
    add e
    add h
    adc l
    adc b
    sub d
    add h
    ld d, b
    nop
    ld sp, $ff57
    adc d
    add b
    sub c
    add b
    ld d, b
    nop
    ld [hl-], a
    or [hl]
    ld [hl-], a
    xor e
    rst $38
    sub [hl]
    add h
    adc l
    add e
    sbc b
    ld d, b
    nop
    inc sp
    xor b
    inc [hl]
    ld [hl], l
    cpl
    or l
    ld [hl-], a
    ld c, [hl]
    inc sp
    ld d, a
    ld sp, $ffc3
    adc e
    adc b
    sub d

jr_00e_6c51:
    add b
    ld d, b
    nop
    inc e
    ld a, h
    rst $38
    adc c
    adc b
    adc e
    adc e
    ld d, b
    nop
    inc e
    ld d, a
    rst $38
    adc h
    add b
    sub c
    sbc b
    ld d, b
    nop
    inc d
    ld [hl], a
    rst $38
    adc d
    add b
    sub e
    adc b
    add h
    ld d, b
    nop
    ld hl, $ff57
    add e
    add b
    sub [hl]
    adc l
    ld d, b
    nop
    ld [hl], l
    ld h, $ff
    sub e
    add b
    sub c
    add b
    ld d, b
    nop
    inc d
    ld [hl], a
    rst $38
    adc l
    adc b
    add d
    adc [hl]
    adc e
    add h
    ld d, b
    nop
    ld [hl], e
    add a
    ld [hl], e
    add [hl]
    ld [hl], e
    adc b
    rst $38
    adc e
    adc [hl]
    sub c
    adc b
    ld d, b
    nop
    ld [hl], e
    xor e
    ld [hl], e
    ld b, $ff
    adc c
    adc [hl]
    add e
    sbc b
    ld d, b
    nop
    inc d
    ld [hl], a
    rst $38
    adc l
    adc b
    adc d
    adc d
    adc b
    ld d, b
    nop
    ld l, a
    and [hl]
    ld l, c
    xor e
    ld l, c
    ld d, a
    ld l, c
    jr @+$01

    add e
    adc b
    add b
    adc l
    add b
    ld d, b
    nop
    ld [hl], l
    add hl, bc
    rst $38
    add c
    sub c
    adc b
    add b
    adc l
    add b
    ld d, b
    nop
    ld [hl], e
    xor e
    ld [hl], e
    and b
    rst $38
    add h
    sub h
    add [hl]
    add h
    adc l
    add h
    ld d, b
    nop
    cpl
    inc d
    cpl
    ld l, e
    cpl
    ldh [rIE], a
    add a
    sub h
    add h
    sbc b
    ld d, b
    nop
    ld c, d
    ld a, $4a
    ld a, [de]
    rst $38
    sub e
    add h
    sub c
    sub c
    add h
    adc e
    adc e
    ld d, b
    nop
    ld c, l
    ld c, c
    rst $38
    adc d
    add h
    adc l
    sub e
    ld d, b
    ld [bc], a
    ld c, e
    db $d3
    ld [hl], a
    ld c, e
    jp z, Jump_00e_4b92

    add hl, sp
    ld [hl], a
    ld c, e
    cp d
    ld [hl], a
    rst $38
    add h
    sub c
    adc l
    add h
    sub d
    sub e
    ld d, b
    nop
    ld c, l
    rst $10
    ld c, l
    jp Jump_00e_444b


    rst $38
    adc c
    add h
    add l
    add l
    ld d, b
    nop
    ld h, h
    inc d
    ld h, h
    cp d
    rst $38
    add [hl]
    add b
    sub c
    sub c
    add h
    sub e
    sub e
    ld d, b
    nop
    ld l, [hl]
    ld a, $ff
    adc d
    add h
    adc l
    adc l
    add h
    sub e
    add a
    ld d, b
    nop
    ld h, a
    ld b, h
    ld l, a

jr_00e_6d3a:
    inc d
    ld l, c
    cp d
    ld l, a
    ld d, $ff
    sub d
    sub e
    add b
    adc l
    adc e
    sbc b
    ld d, b
    nop
    ld h, h
    ld a, $64
    jp nc, $d464

    rst $38
    add a
    add b
    sub c
    sub c
    sbc b
    ld d, b
    nop
    inc l
    ld b, e
    rst $38
    add a
    sub h
    add h
    sbc b
    ld d, b
    nop
    ld d, d
    ld a, $52
    and d
    rst $38
    add a
    sub h
    add h
    sbc b
    ld d, b
    nop
    ld h, h
    ld a, $64

Call_00e_6d6d:
    jp z, $87ff

    sub h
    add h
    sbc b
    ld d, b
    nop
    ld a, b
    ld a, $78
    jp z, Jump_00e_6a78

    ld a, b
    cp d
    ld a, b
    jp nc, $1c78

    rst $38
    sub d
    sub e
    add b
    adc l
    ld d, b
    nop
    inc d
    ld e, b
    rst $38
    add h
    sub c
    adc b
    add d
    ld d, b
    nop
    ld e, $b9
    rra
    ld e, l
    rst $38
    add [hl]
    sub c
    add h
    add [hl]
    add [hl]
    ld d, b
    nop
    inc d
    ld d, c
    inc d
    ld d, c
    inc d
    ld d, c
    rst $38
    adc c
    add b
    sbc b
    ld d, b
    nop
    ld d, $6d
    ld d, $6d
    rst $38
    add e
    add b
    sub l
    add h
    ld d, b
    nop
    jr jr_00e_6d3a

    rst $38
    sub d
    add b
    adc h
    ld d, b
    nop
    ld h, h
    ld h, a
    ld h, h
    ld e, e
    rst $38
    sub e
    adc [hl]
    adc h
    ld d, b
    nop
    ld h, h
    ld c, h
    ld h, h
    call Call_00e_5964
    rst $38
    adc a
    add b
    sub e
    ld d, b
    nop
    ld h, e
    adc a
    rst $38
    sub d
    add a
    add b
    sub [hl]
    adc l
    ld d, b
    nop
    ld l, c
    ld h, l
    ld l, c
    ld e, c
    ld l, c
    ld e, e
    rst $38
    sub e
    add h
    sub c
    sub h
    ld d, b
    nop
    dec e
    ld h, h
    dec e
    ld e, d
    dec e
    ld e, b
    ld e, $66
    rst $38
    sub c
    sub h
    sub d
    sub d
    ld d, b
    nop
    dec de
    ld d, c
    dec de
    ld d, c
    dec de
    ld d, c
    rst $38
    adc l
    adc [hl]
    sub c
    sub e
    adc [hl]
    adc l
    ld d, b
    ld bc, $891e
    and b
    or b
    ld l, c
    and c
    rst $38
    add a
    sub h
    add [hl]
    add a
    ld d, b
    nop
    dec sp
    ld l, [hl]
    dec sp
    call Call_00e_5b3a
    rst $38
    adc h
    add b
    sub c
    adc d
    sub h
    sub d
    ld d, b
    nop
    add hl, sp
    ld h, l
    add hl, sp
    db $d3
    jr c, jr_00e_6e90

    rst $38
    and $50
    ld [bc], a
    ld a, b
    add sp, $49
    ld a, b
    reti


    ld c, c
    ld a, b
    ld e, c
    ld c, c
    ld a, b
    ld b, c
    ld l, l
    ld a, b
    add a
    inc bc
    ld a, b
    sbc d
    ld c, c
    jr nc, @+$32

Call_00e_6e41:
    call nc, $3030
    ld l, l
    jr nc, jr_00e_6e77

    ld [hl-], a
    jr nc, jr_00e_6e7a

    ld e, [hl]
    jr nc, jr_00e_6e7d

    ld c, e
    ld c, c
    ld c, c
    ld c, c
    rst $38
    and $50
    ld [bc], a
    ld a, b
    reti


    ld c, c
    ld a, b
    add sp, $49
    ld a, b
    add a
    inc bc
    ld a, b
    ld e, c
    ld c, c
    ld a, b
    ld b, c
    ld l, l
    ld a, b
    sbc l
    inc bc
    ld a, b
    ld e, [hl]
    call nc, $f730
    ld l, l

Call_00e_6e6d:
    jr nc, @+$43

    ld [hl-], a
    jr nc, @-$06

    ld e, [hl]
    dec l
    sbc l
    ld l, h
    inc bc

jr_00e_6e77:
    inc bc
    inc bc
    rst $38

jr_00e_6e7a:
    and $50
    ld [bc], a

jr_00e_6e7d:
    ld a, b
    ld b, c
    ld l, l
    ld a, b
    ld e, c
    ld c, c
    ld a, b
    add sp, $49
    ld a, b
    xor c
    ld l, l
    ld a, b
    add a
    inc bc
    ld a, b
    and b
    ld c, c
    dec hl

jr_00e_6e90:
    ld e, [hl]
    call nc, $f72b
    ld l, l
    dec hl
    ld b, c
    ld [hl-], a
    dec hl
    ld hl, sp+$5e
    dec hl
    and b
    ld h, e
    ld c, c
    ld c, c
    ld c, c
    rst $38
    and $50
    ld [bc], a
    ld a, [hl]
    adc a
    sub d
    ld a, a
    sub a
    ld l, l
    ld a, a
    ei
    ld l, l
    ld a, a
    ld a, [$7f92]
    sub [hl]
    ld l, l
    ld a, a
    ld sp, hl
    sub d
    ld l, $5e
    call nc, $f7ae
    ld l, l
    ld l, $41
    ld l, c
    ld hl, sp+$5e
    ld [hl], e
    ld [hl-], a
    sbc d
    jp z, $9292

    sub d
    rst $38
    and $50
    ld [bc], a
    ld a, [hl]
    adc a
    sub d
    ld a, a
    sub a
    sub d
    ld a, a
    ei
    ld l, l
    ld a, a
    ld a, [$7f6d]
    sub [hl]
    ld l, l
    ld a, a
    ld sp, hl
    sub d
    ld l, $5e
    call nc, $f7ae
    ld l, l
    ld l, $41
    ld l, c
    ld hl, sp+$5e
    ld [hl], e
    ld [hl-], a
    sbc l
    ld l, h
    sub d
    sub d
    sub d
    rst $38
    and $50
    ld [bc], a
    ld a, [hl]
    adc a
    sub d
    ld a, a
    sub a
    ld l, l
    ld a, a
    ei
    sub d
    ld a, a
    ld sp, hl
    ld l, l
    ld a, a
    sub [hl]
    ld l, l
    ld a, a
    ld a, [$2e6d]
    ld e, [hl]
    call nc, $f7ae
    ld l, l
    ld l, $41
    ld l, c
    ld hl, sp+$5e
    ld [hl], e
    ld [hl-], a
    and b
    add hl, sp
    ld l, l
    ld l, l
    ld l, l
    rst $38
    add d
    adc e
    sbc b
    add e
    add h
    ld d, b
    nop
    ld l, [hl]
    ld a, l
    rst $38
    sub l
    adc b
    adc l
    add d
    add h
    adc l
    sub e
    ld d, b
    nop
    ld l, h
    add hl, bc
    ld l, h
    ld a, h
    ld [hl], e
    or l
    ld l, h
    or [hl]
    rst $38
    add b
    adc l
    sub e
    add a
    adc [hl]
    adc l
    sbc b
    ld d, b
    nop
    jr nz, jr_00e_6f8c

    jr nz, @-$30

    rst $38
    sub c
    sub h
    sub d
    sub d
    add h
    adc e
    adc e
    ld d, b
    nop
    ld [de], a
    ld c, d
    ld [de], a
    add hl, hl
    inc de
    daa
    rst $38
    adc a
    add a
    adc b
    adc e
    adc e
    adc b
    adc a
    ld d, b
    nop
    inc de
    db $ec
    inc de
    ld l, a
    inc de
    or a
    rst $38
    adc e
    add h
    adc [hl]
    adc l
    add b
    sub c
    add e
    ld d, b
    nop
    inc d
    ld e, a
    inc d
    inc hl
    rst $38
    add b
    adc l
    sub e
    add a
    adc [hl]
    adc l
    sbc b
    ld d, b
    nop
    rla
    jr c, jr_00e_6f95

    ld [hl-], a
    rst $38
    add c
    add h
    adc l
    adc c
    add b
    adc h
    adc b
    adc l
    ld d, b
    nop
    dec sp
    cp c

jr_00e_6f8c:
    dec sp
    ld a, [hl+]
    dec sp
    inc sp
    rst $38
    add h
    sub c
    adc b
    adc d

jr_00e_6f95:
    ld d, b
    nop
    ld h, h
    ld [hl], b
    ld e, a
    ld a, d
    ld e, a
    ld a, e
    rst $38
    adc h
    adc b
    add d
    add a
    add b
    add h
    adc e
    ld d, b
    nop
    ld h, h
    ld c, h
    ld e, a
    call $185f
    rst $38
    adc a
    add b
    sub c
    sub c
    sbc b
    ld d, b
    nop
    ld a, b
    cpl
    ld a, b
    rst $30
    rst $38
    sub e
    adc b
    adc h
    adc [hl]
    sub e
    add a
    sbc b
    ld d, b
    nop
    ld e, a
    inc sp
    ld e, a
    add $5f
    bit 3, a
    cp b
    ld e, a
    add hl, sp
    ld e, a
    db $dd
    rst $38
    add c
    add b
    adc b
    adc e
    add h
    sbc b
    ld d, b
    nop
    ld e, a
    adc l
    ld e, a
    ld sp, $d25f
    ld e, a
    jp z, $8b5f

    rst $38
    add b
    adc l
    sub e
    add a
    adc [hl]
    adc l
    sbc b
    ld d, b
    nop
    ld d, a
    ld [hl], b
    ld d, a
    adc $57
    db $ed
    rst $38
    sub e
    adc b
    adc h
    ld d, b
    nop
    ld l, c
    and d
    ld l, c
    inc e
    ld h, h
    or l
    rst $38
    adc l
    adc [hl]
    adc e
    add b
    adc l
    add e
    ld d, b
    nop
    ld h, h
    db $dd
    ld h, h
    ld [$92ff], a
    adc b
    add e
    adc l
    add h
    sbc b
    ld d, b
    nop
    ld h, a
    ld d, a
    ld h, a
    inc sp
    rst $38
    adc d
    add h
    adc l
    adc l
    sbc b
    ld d, b
    nop
    ld h, h
    inc e
    ld h, h
    and d
    ld h, h
    xor b
    ld h, h
    adc l
    rst $38
    adc c
    adc b
    adc h
    ld d, b
    nop
    ld l, c
    db $ed
    rst $38
    add e
    add b
    adc l
    adc b
    add h
    adc e
    ld d, b
    nop
    ld [de], a
    ld b, d
    rst $38
    adc a
    add b
    sub c
    sub c
    sbc b
    ld d, b
    ld [bc], a
    ld a, b
    cp b
    ld [hl], a
    ld a, b
    ret nz

    ld [hl], a
    ld a, b
    ld l, h
    ld [hl], a
    ld a, b
    ld c, h
    ld [hl], a
    ld a, b
    db $dd
    ld [hl], a
    ld a, b
    ld d, $77
    rst $38
    adc a
    add b
    sub c
    sub c
    sbc b
    ld d, b
    nop
    ld h, b
    reti


    rst $38
    add b
    adc l
    sub e
    add a
    adc [hl]
    adc l
    sbc b
    ld d, b
    nop
    ld h, h
    ld [hl], b
    ld h, h
    ld l, d
    ld h, h
    adc $ff
    add b
    adc l
    sub e
    add a
    adc [hl]
    adc l
    sbc b
    ld d, b
    ld [bc], a
    ld a, b
    ld [hl], b
    ld c, c
    ld a, b
    db $ed
    ld [hl], a
    ld a, b
    inc sp
    ld [hl], a
    ld a, b
    ld l, e
    ld [hl], a
    ld a, b
    ld l, d
    ld [hl], a
    ld a, b
    adc $77
    rst $38
    add c
    add h
    adc l
    adc l
    sbc b
    ld d, b
    nop
    inc d
    ld l, l
    inc d
    ld l, l
    inc d
    ld l, l
    rst $38
    adc d
    add b
    sbc c
    sub h
    ld d, b
    nop
    inc d
    ld l, l
    inc d
    ld l, l
    inc d
    ld l, l
    rst $38
    add e
    sub [hl]
    add b
    sbc b
    adc l
    add h
    ld d, b
    nop
    ld h, h
    ld l, [hl]
    ld h, h
    adc b
    ld h, h
    jp nc, Jump_00e_7f64

    rst $38
    add a
    add b
    sub c
    sub c
    adc b
    sub d
    ld d, b
    nop
    ld h, h
    ld [hl+], a
    rst $38
    sbc c
    add h
    adc d
    add h
    ld d, b
    nop
    ld h, h
    ld d, d
    ld h, h
    ld d, l
    rst $38
    add d
    add a
    add b
    sub c
    adc e
    add h
    sub d
    ld d, b
    nop
    ld h, h
    call nc, $1864
    ld l, h
    adc $ff
    sub c
    adc b
    adc e
    add h
    sbc b
    ld d, b
    nop
    ld l, l
    ld a, $ff
    adc c
    adc [hl]
    add h
    adc e
    ld d, b
    nop
    ld h, h
    ld a, l
    ld h, h
    add sp, -$01
    add [hl]
    adc e
    add h
    adc l
    adc l
    ld d, b
    nop
    ld l, e
    cpl
    ld l, e
    ld l, h
    ld l, [hl]
    ld l, e
    rst $38
    add c
    adc e
    add b
    adc b
    adc l
    add h
    ld d, b
    ld [bc], a
    ld a, b
    sbc l
    ld l, l
    ld a, b
    ld [hl], e
    sub d
    ld a, b
    sub d
    ld l, l
    ld a, b
    sbc d
    sub d
    ld a, b
    inc h
    sub d
    ld a, b
    db $f4
    sub d
    rst $38
    add e
    sub h
    adc l
    add d
    add b
    adc l
    ld d, b
    nop

Jump_00e_7124:
    ld d, [hl]
    ld h, l
    ld d, [hl]
    add hl, sp
    ld d, [hl]
    dec sp
    rst $38
    add h
    add e
    add e
    adc b
    add h
    ld d, b
    nop
    ld d, e
    ld c, [hl]
    ld d, e
    dec [hl]
    ld d, e
    bit 2, e
    ld l, [hl]
    ld d, e
    ld a, a
    ld d, e
    ld [hl+], a
    rst $38
    add d
    adc [hl]
    sub c
    add h
    sbc b
    ld d, b
    nop
    ld l, h
    ld l, [hl]
    ld l, h
    dec [hl]
    ld l, h
    dec sp
    ld l, h
    ld b, a

Jump_00e_714e:
    rst $38
    adc [hl]
    sub e
    adc b
    sub d
    ld d, b
    nop
    ld h, h
    ld l, [hl]
    ld h, h
    ld b, $64
    rst $00
    rst $38
    add e
    adc b
    add d
    adc d
    ld d, b
    nop
    ld de, $ff05
    adc l
    add h
    add e
    ld d, b
    nop
    rrca
    ld l, l
    db $10
    ld a, [hl-]
    rrca
    ld l, l
    rst $38
    add c
    sub h
    sub c
    sub e
    ld d, b
    nop
    ld l, c
    ldh [$64], a
    sbc l
    rst $38
    add c
    adc b
    adc e
    adc e
    ld d, b
    nop
    ld de, $126d
    dec h
    rst $38
    sub [hl]
    add b
    adc e
    sub e
    ld d, b
    nop
    rra
    db $db
    ld e, $ce
    rst $38
    sub c
    add b
    sbc b
    ld d, b
    nop
    inc de
    ldh a, [rIE]
    adc e
    sbc b
    adc e
    add h
    ld d, b
    nop
    ld h, h
    ld l, [hl]
    ld h, h
    ldh [$64], a
    push hl
    rst $38
    adc b
    sub c
    sub [hl]
    adc b
    adc l
    ld d, b
    nop
    dec e
    ld h, h
    rra
    ld [bc], a
    rra
    ld [$051f], sp
    rst $38
    add l
    sub c
    adc b
    sub e
    sbc c
    ld d, b
    nop
    ld h, h
    ld a, d
    ld h, h
    ld a, [hl]
    ld h, h
    add hl, sp
    rst $38
    add a
    adc [hl]
    sub c
    sub e
    adc [hl]
    adc l
    ld d, b
    nop
    ld l, c
    ld h, l
    ld l, c
    cp l
    ld l, c
    ld a, d
    ld l, c
    inc h
    rst $38
    adc b
    sub c
    sub [hl]
    adc b
    adc l
    ld d, b
    nop
    ld b, $64
    ld a, [bc]
    ld h, h
    ld c, $64
    ld [de], a
    ld h, h
    rst $38
    adc b
    sub c
    sub [hl]
    adc b
    adc l
    ld d, b
    nop
    ld [de], a
    ld h, h
    ld d, $64
    ld a, [de]
    ld h, h
    ld e, $65
    rst $38
    adc b
    sub c
    sub [hl]
    adc b
    adc l
    ld d, b
    nop
    ld [de], a
    ld h, h
    ld d, $64
    ld a, [de]
    ld h, h
    ld e, $65
    rst $38
    adc d
    add h
    adc l
    adc c
    adc b
    ld d, b
    nop
    ld a, b
    db $ed
    ld a, b
    ld l, e
    ld a, b
    ld l, d
    ld a, b
    add hl, sp
    rst $38
    sbc b
    adc [hl]
    sub d
    add a
    adc b
    ld d, b
    nop
    scf
    call nc, $b937
    scf
    ld l, e
    rst $38
    adc d
    add h
    adc l
    adc c
    adc b
    ld d, b
    ld [bc], a
    ld a, b
    jp z, Jump_00e_7892

    ld a, [hl]
    ld [hl], a
    ld a, b
    ld l, d
    ld [hl], a
    ld a, b
    call nc, Call_00e_7877
    ld a, $77
    ld a, b
    add hl, sp
    ld [hl], a
    inc h
    ld l, d
    ld l, b
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $38
    adc e
    add b
    adc [hl]
    ld d, b
    nop

Call_00e_7249:
    scf
    ld l, d
    scf
    inc e
    scf
    cp d
    rst $38
    adc l
    adc [hl]
    add c
    ld d, b
    ld [bc], a
    scf
    ld c, h
    ld c, c
    scf
    ld b, e
    ld c, c
    scf
    ld d, e
    ld l, c
    scf
    jp z, $ff6d

    adc d
    adc b
    sbc b
    adc [hl]
    ld d, b
    nop
    add hl, sp
    ld l, d
    add hl, sp
    ld l, e
    rst $38
    adc e
    sub h
    adc l
    add [hl]
    ld d, b
    nop
    scf
    add $37
    db $ed
    scf
    jp nc, $8aff

    add h
    adc l
    adc c
    adc b
    ld d, b
    nop
    ld e, a
    ld b, h
    rst $38
    sub [hl]
    add b
    adc b
    ld d, b
    nop
    ld l, h
    ld c, h
    ld l, h
    jp z, $396c

    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    ld [bc], a
    ld e, h
    ld e, [hl]
    ld [hl], a
    ld e, h
    add b
    sub d
    ld e, l
    rst $00
    ld l, l
    ld e, l
    ld b, h
    ld c, c
    ld e, h
    ld b, c
    ld l, l
    ld e, l
    ld hl, sp+$03
    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    ld [bc], a
    ld e, d
    call Call_00e_5b49
    push de
    sub d
    ld e, e
    push bc
    sub d
    ld e, e
    ld h, c
    ld c, c
    ld e, e
    jp hl


    ld l, l
    ld e, e
    add hl, bc
    sub d
    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    ld [bc], a
    ld e, b
    ld h, l
    adc h
    ld e, b
    ld e, e
    ld c, c
    ld e, b
    ld h, a
    ld c, c
    ld e, b
    ld e, c
    ld c, c
    ld e, b
    ret nc

    ld c, c
    ld e, b
    adc a
    ld c, c
    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    nop
    ld b, h
    add sp, $44
    call nz, $d644
    ld b, h
    ld e, [hl]
    ld b, h
    adc [hl]
    ld b, [hl]
    add b
    rst $38
    adc l
    add b
    sub e
    add a
    add b
    adc l
    ld d, b
    nop
    ld a, [bc]
    xor $ff
    add l
    sub c
    add b
    adc l
    adc d
    adc e
    adc b
    adc l
    ld d, b
    nop
    ld [hl], a
    set 7, a
    add a
    add h
    sub c
    adc h
    add b
    adc l
    ld d, b
    nop
    ld h, h
    ld h, a
    ld h, h
    ld d, b
    ld h, h
    ld a, h
    rst $38
    add l
    adc b
    add e
    add h
    adc e
    ld d, b
    nop
    ld l, c
    jp z, $86ff

    sub c
    add h
    add [hl]
    ld d, b
    ld bc, $7a27
    ld e, a
    xor e
    adc d
    and h
    rst $38
    adc l
    adc [hl]
    sub c
    adc h
    add b
    adc l
    ld d, b
    ld [bc], a
    cpl
    ld b, b
    ld [hl], a
    cpl
    bit 6, a
    ld l, $7c
    ld [hl], a
    cpl
    ld a, d
    ld [hl], a

Call_00e_7354:
    rst $38
    adc h
    add b
    sub c
    adc d
    ld d, b
    ld bc, $3f24
    ld e, [hl]
    ld [hl], e
    ld d, [hl]
    ld b, l
    inc hl
    bit 3, h
    ld [hl+], a
    inc a
    rst $08
    dec h
    ld b, b
    rlca
    ld [$6909], sp
    rst $38
    adc a
    add a
    adc b
    adc e
    ld d, b
    nop
    ld c, [hl]
    ld a, d
    ld c, l
    ld a, h
    ld c, [hl]
    bit 1, [hl]
    or d
    ld c, l
    ld h, a
    ld c, a
    jp z, $91ff

    adc b
    add d
    add a
    add b
    sub c
    add e
    ld d, b
    nop
    ld h, h
    call nz, $86ff
    adc b
    adc e
    add c
    add h
    sub c
    sub e
    ld d, b
    nop
    ld h, h
    or d
    ld h, h
    ld a, h
    ld h, h
    ld d, b
    rst $38
    adc c
    add b
    sub c
    add h
    add e
    ld d, b
    nop
    ld [hl], e
    or d
    ld [hl], e
    jp z, Jump_00e_7a73

    rst $38
    sub c
    adc [hl]
    add e
    adc l
    add h
    sbc b
    ld d, b
    nop
    ld l, h
    ret z

    ld l, h
    rst $00
    rst $38
    adc e
    adc b
    sbc c
    ld d, b
    nop
    ld c, $1d
    rst $38
    add [hl]
    adc b
    adc l
    add b
    ld d, b
    nop
    ld a, [de]
    sbc [hl]
    ld a, [de]
    sbc e
    ld a, [de]
    sbc b
    rst $38
    add c
    sub c
    adc [hl]
    adc [hl]
    adc d
    add h
    ld d, b
    nop
    rra
    ld de, $2c1f
    rra
    cp [hl]
    rst $38
    adc d
    adc b
    adc h
    ld d, b
    nop
    rra
    inc c
    rst $38
    add d
    adc b
    adc l
    add e
    sbc b
    ld d, b
    nop
    ld a, b
    rra
    rst $38
    add a
    adc [hl]
    adc a
    add h
    ld d, b
    nop
    ld l, c
    ld c, [hl]
    rst $38
    sub d
    add a
    add b
    sub c
    adc [hl]
    adc l
    ld d, b
    nop
    ld l, c
    dec l
    ld l, c
    and d
    rst $38
    add e
    add h
    add c
    sub c
    add b
    ld d, b
    nop
    ld h, h
    cp l
    rst $38
    add [hl]
    adc b
    adc l
    add b
    ld d, b
    nop
    inc h
    ld b, $24
    inc bc
    inc h
    add hl, bc
    rst $38
    add h
    sub c
    adc b
    adc l
    ld d, b
    nop
    ld h, b
    ld c, [hl]
    ld h, b
    ld [de], a
    rst $38
    adc e
    adc b
    sbc c
    ld d, b
    nop
    jr jr_00e_7473

    jr jr_00e_744d

    rst $38
    adc e
    adc b
    sbc c
    ld d, b
    nop
    ld d, h
    ld b, a
    ld d, h
    ld [hl+], a
    ld d, [hl]
    rra
    rst $38
    add a
    add h
    adc b
    add e
    adc b
    ld d, b
    nop
    ld l, c
    ld h, $69
    cp l
    rst $38
    add h
    add e
    adc l
    add b
    ld d, b

jr_00e_744d:
    nop
    ld h, h
    ld sp, $1a64
    rst $38
    add [hl]
    adc b
    adc l
    add b
    ld d, b
    nop
    ld d, a
    ld b, $57
    inc bc
    ld d, a
    add hl, bc
    rst $38
    sub e
    adc b
    add l
    add l
    add b
    adc l
    sbc b
    ld d, b
    nop
    ld h, h
    cp a
    ld h, h
    xor l
    ld h, h
    cp a
    rst $38
    sub e
    adc b
    add l

jr_00e_7473:
    add l
    add b
    adc l
    sbc b
    ld d, b
    nop
    ld a, b
    and [hl]
    ld a, b
    cp [hl]
    ld a, b
    sbc $ff
    add h
    sub c
    adc b
    adc l
    ld d, b
    nop
    ld h, h
    and h
    ld h, h
    and d
    rst $38
    sub e
    add b
    adc l
    sbc b
    add b
    ld d, b
    nop
    ld [hl], l
    ld b, a
    rst $38
    sub e
    adc b
    add l
    add l
    add b
    adc l
    sbc b
    ld d, b
    nop
    ld h, h
    cp a
    ld h, h
    xor l
    ld h, h
    xor [hl]
    rst $38
    add h
    sub c
    adc b
    adc l
    ld d, b
    ld [bc], a
    ld a, b
    and d
    ld [hl], a
    ld a, b
    and h
    ld [hl], a
    ld a, b
    dec l
    ld [hl], a
    ld a, b
    ld c, [hl]
    ld [hl], a
    ld a, b
    bit 6, a
    ld a, b
    inc sp
    ld [hl], a
    rst $38
    adc e
    adc b
    sbc c
    ld d, b
    nop
    ld h, h
    ld b, a
    ld h, h
    jr z, jr_00e_752c

    rra
    rst $38
    adc e
    adc b
    sbc c
    ld d, b
    ld [bc], a
    ld a, b
    ld b, a
    ld [hl], a
    ld a, b
    jr z, jr_00e_754c

    ld a, b
    dec l
    ld [hl], a
    ld a, b
    ld h, $77
    ld a, b
    or [hl]
    ld [hl], a
    ld a, b
    inc e
    ld [hl], a
    rst $38
    add [hl]
    adc b
    adc l
    add b
    ld d, b
    nop
    ld h, h
    ld b, $64
    inc bc
    ld h, h
    add hl, bc
    rst $38
    add [hl]
    adc b
    adc l
    add b
    ld d, b
    ld [bc], a
    ld a, a
    add hl, de
    and e
    ld a, b
    ld b, $77
    ld a, b
    inc bc
    ld [hl], a
    ld a, b
    add hl, bc
    ld [hl], a
    ld a, b
    bit 6, a
    ld a, b
    add h
    ld [hl], a
    rst $38
    sub e
    adc b
    add l
    add l
    add b
    adc l
    sbc b
    ld d, b
    nop
    ld a, a
    ret


    ld a, a
    sbc $7f
    cp [hl]
    rst $38
    sub c
    adc [hl]
    adc e
    add b
    adc l
    add e
    ld d, b
    nop
    ld c, $20
    rst $38
    sub e
    adc [hl]
    add e
    add e
    ld d, b
    nop
    ld a, [de]
    inc d
    rst $38

jr_00e_752c:
    adc b
    sub l
    add b
    adc l
    ld d, b
    nop
    rra
    sbc a
    rra
    sbc h
    rra
    sbc c
    rst $38
    add h
    adc e
    adc e
    adc b
    adc [hl]
    sub e
    ld d, b
    nop
    ld e, $4b
    ld e, $3d
    rst $38
    add c
    add b
    sub c
    sub c
    sbc b
    ld d, b

jr_00e_754c:
    nop
    ld a, b
    ld [hl+], a
    rst $38
    adc e
    adc e
    adc [hl]
    sbc b
    add e
    ld d, b
    nop
    ld l, l
    jp nc, $83ff

    add h
    add b
    adc l
    ld d, b
    nop
    ld h, h
    ld a, $64
    set 7, a
    sub d
    adc b
    add e
    ld d, b
    nop
    ld h, h
    cp b
    ld l, c
    ld [hl], d
    ld h, l
    adc $ff
    add a
    add b
    sub c
    sub l
    add h
    sbc b
    ld d, b
    nop
    rrca
    ld hl, $83ff
    add b
    adc e
    add h
    ld d, b
    nop
    rrca
    ld hl, $93ff
    add h
    add e
    ld d, b
    nop
    ld h, b
    call nc, $93ff
    adc [hl]
    add e
    add e
    ld d, b
    nop
    ld hl, $219f
    cp l
    ld hl, $ffbe
    sub e
    adc [hl]
    add e
    add e
    ld d, b
    nop
    ld d, a
    ret nz

    ld d, a
    cp c
    ld d, a
    ld l, h
    rst $38
    sub e
    add a
    adc [hl]
    adc h
    add b
    sub d
    ld d, b
    nop
    ld hl, $244b
    ld c, e
    jr z, @+$2c

    ld a, [hl+]
    scf
    rst $38
    adc e
    add h
    sub c
    adc [hl]
    sbc b
    ld d, b
    nop
    ld hl, $244b
    ld c, e
    jr z, jr_00e_75ef

    ld a, [hl+]
    scf
    rst $38
    add e
    add b
    sub l
    adc b
    add e
    ld d, b
    nop
    ld hl, $244b
    ld c, e
    jr z, jr_00e_75ff

    ld a, [hl+]
    scf
    rst $38
    adc c
    adc [hl]
    add a
    adc l
    ld d, b
    nop
    ld hl, $244b
    ld c, e
    jr z, jr_00e_760e

    ld a, [hl+]
    scf
    rst $38
    adc c
    add h
    sub c
    sub c
    sbc b
    ld d, b
    nop
    ld a, b

jr_00e_75ef:
    adc e
    rst $38
    sub d
    adc a
    add h
    adc l
    add d
    add h
    sub c
    ld d, b
    nop
    ld h, h
    xor h
    ld h, h
    xor a
    ld h, h

jr_00e_75ff:
    ld a, [bc]
    rst $38
    sub e
    adc [hl]
    add e
    add e
    ld d, b
    nop
    ld h, h
    inc h
    ld h, h
    ld b, b
    ld h, h
    ld b, $64

jr_00e_760e:
    ld l, c
    rst $38
    sub e
    adc [hl]
    add e
    add e
    ld d, b
    ld [bc], a
    ld a, b
    dec sp
    ld [hl], a
    ld a, b
    ld [$7877], a
    ld a, d
    ld [hl], a
    ld a, b
    ld d, d
    ld [hl], a
    ld a, b
    and b
    ld [hl], a
    ld a, b
    db $dd
    ld [hl], a
    ld a, b
    scf
    ld [hl], a
    ld a, b
    add hl, sp
    ld [hl], a
    rst $38
    sub b
    sub h
    add h
    adc l
    sub e
    adc b
    adc l
    ld d, b
    nop
    ld h, h
    ld [$3e64], a
    ld h, h
    dec sp
    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    ld [bc], a
    ld e, e
    push hl
    inc bc
    ld e, e
    ld a, c
    ld l, l
    ld e, e
    pop af
    ld l, l
    ld e, e
    ld l, c
    db $76
    ld e, e
    call nz, Call_00e_5c03
    ld a, [c]
    sub d
    rst $38
    add h
    sub a
    add h
    add d
    sub h
    sub e
    adc b
    sub l
    add h
    ld d, b
    ld [bc], a
    ld b, [hl]
    ret z

    ld l, l
    ld b, [hl]
    push hl
    inc bc
    ld b, [hl]
    ld h, a
    ld c, c
    ld b, [hl]
    ld a, c
    ld l, l
    ld b, [hl]
    ld l, c
    db $76
    ld c, b
    ld [hl], e
    sub d
    rst $38
    add d
    add a
    adc [hl]
    sub [hl]
    ld d, b
    nop
    add hl, bc
    ccf
    add hl, bc
    add l
    add hl, bc
    and e
    rst $38
    adc l
    adc b
    add d
    adc [hl]
    ld d, b
    nop
    add hl, bc
    cp e
    add hl, bc
    or $09
    ld [hl], $ff
    adc c
    adc b
    adc l
    ld d, b
    nop
    dec bc
    ld d, [hl]
    rst $38
    sub e
    sub c
    adc [hl]
    sbc b
    ld d, b
    nop
    ld a, [bc]
    call c, $be09
    rst $38
    adc c
    add h
    add l
    add l
    sub c
    add h
    sbc b
    ld d, b
    nop
    inc l
    ld [c], a
    rst $38
    adc a
    adc b
    adc l
    add [hl]
    ld d, b
    nop
    ld a, [hl+]
    ret


    add hl, hl
    sbc $28
    ld a, [hl+]
    daa
    ld a, [hl]
    ld a, [hl+]
    ld e, l
    rst $38
    add h
    add e
    adc h
    adc [hl]
    adc l
    add e
    ld d, b
    nop
    add hl, bc
    inc a
    add hl, bc
    ld l, b
    add hl, bc
    ld b, l
    rst $38
    adc l
    add h
    add b
    adc e
    ld d, b
    nop
    dec bc
    ld a, [hl-]
    rst $38
    adc e
    adc b
    ld d, b
    nop
    dec c
    ret


    inc c
    ret nz

    inc c
    cp c
    rst $38
    add [hl]
    add b
    adc d
    sub h
    ld d, b
    nop
    ld h, h
    adc b
    ld h, h
    and h
    rst $38
    adc h
    add b
    sub d
    add b
    ld d, b
    nop
    ld h, h
    add a
    ld h, h
    ld b, a
    rst $38
    adc d
    adc [hl]
    adc c
    adc b
    ld d, b
    nop
    ld h, h
    add [hl]
    ld h, h
    ld [$8cff], a
    add b
    sub c
    sub e
    add a
    add b
    ld d, b
    nop
    dec hl
    and h
    inc l
    dec [hl]
    dec hl
    ld c, [hl]
    rst $38
    add [hl]
    sub c
    add b
    add d
    add h
    ld d, b
    nop
    ld a, [hl+]
    ld h, $2a
    or d
    rst $38
    add c
    add h
    sub e
    add a
    add b
    adc l
    sbc b
    ld d, b
    nop
    add hl, de
    ld e, l
    rst $38
    adc h
    add b
    sub c
    add [hl]
    sub c
    add h
    sub e
    ld d, b
    nop
    add hl, de
    ld e, l
    rst $38
    add h
    sub e
    add a
    add h
    adc e
    ld d, b
    nop
    add hl, de
    ld e, l
    rst $38
    sub c
    add h
    add c
    add h
    add d
    add d
    add b
    ld d, b
    nop
    ld [hl], l
    ld a, [hl]
    ld [hl], e
    ret z

    rst $38
    add e
    adc [hl]
    sub c
    adc b
    sub d
    ld d, b
    nop
    ld l, h
    ld e, [hl]
    db $76
    add $ff
    sub c
    adc [hl]
    adc l
    add b
    adc e
    add e
    ld d, b
    nop
    ld c, c
    ld e, e
    ld b, a
    rra
    ld c, b
    set 7, a
    add c
    sub c
    add b
    add e
    ld d, b
    nop
    ld b, a
    ld a, [de]
    ld c, c
    ld d, a
    rst $38
    add e
    adc [hl]
    sub h
    add [hl]
    adc e
    add b
    sub d
    ld d, b
    nop
    ld b, [hl]
    ld [$3748], a
    ld b, [hl]
    dec sp
    rst $38
    sub [hl]
    adc b
    adc e
    adc e
    adc b
    add b
    adc h
    ld d, b
    ld [bc], a
    ld hl, $771a
    rst $38
    add e
    add h
    sub c
    add h
    adc d
    ld d, b
    ld [bc], a
    cpl
    add hl, de
    and e
    rst $38
    sub c
    adc [hl]
    add c
    add h
    sub c
    sub e
    ld d, b
    ld [bc], a
    ld h, l
    ld c, [hl]
    ld [hl], a
    rst $38
    adc c
    adc [hl]
    sub d
    add a
    sub h
    add b
    ld d, b
    ld [bc], a
    ld h, h
    add hl, de
    and e
    ld a, a
    ld d, e
    ld l, c
    ld h, h
    ld a, [de]
    ld [hl], a
    ld a, a
    xor h
    inc bc
    ld a, a
    ld l, b
    db $76
    ld a, a
    add hl, de
    and e
    rst $38
    add d
    add b
    sub c
    sub e
    add h
    sub c
    ld d, b
    ld [bc], a
    ld h, h
    ld b, $77
    ld h, h
    inc bc
    ld [hl], a
    ld h, h
    add hl, bc
    sub d
    rst $38
    sub e
    sub c
    add h
    sub l
    adc [hl]
    sub c
    ld d, b
    ld [bc], a
    ld l, h
    dec l
    ld [hl], a
    rst $38
    add c
    sub c
    add b
    adc l
    add e
    adc [hl]
    adc l
    ld d, b
    ld [bc], a
    inc e
    add hl, de
    and e
    rst $38
    adc c
    add h
    sub c
    add h
    adc h
    sbc b
    ld d, b
    ld [bc], a
    ld l, h
    ld l, c
    db $76
    ld l, h
    xor e
    ld [hl], a
    ld l, h
    ld c, [hl]
    ld [hl], a

jr_00e_7805:
    rst $38
    add d
    adc [hl]
    adc e
    adc b
    adc l
    ld d, b
    ld [bc], a
    ld h, h
    jp z, $ff92

    add e
    add h
    sub c
    add h
    adc d
    ld d, b
    ld [bc], a
    inc de
    add hl, de
    xor l
    rst $38
    add e
    add h

jr_00e_781e:
    sub c
    add h
    adc d
    ld d, b
    ld [bc], a
    inc h
    add hl, de
    xor l
    rst $38
    add b
    adc e
    add h
    sub a
    ld d, b
    ld [bc], a
    ld h, h
    ld [hl+], a
    ld [hl], a
    ld l, h
    ld h, e
    inc bc
    rst $38
    sub c
    add h
    sub a
    ld d, b
    ld [bc], a
    ld a, b
    ld a, e
    ld [hl], a
    ld a, a
    rst $20
    ld [hl], e
    rst $38
    add b
    adc e
    adc e
    add b
    adc l
    ld d, b
    ld [bc], a
    ld a, a
    ret c

Jump_00e_7849:
    ld [hl], e
    rst $38
    adc l
    add b
    adc [hl]
    adc d
    adc [hl]
    ld d, b
    nop
    inc d
    cp h
    inc d
    dec h
    ld [de], a
    cp h
    rst $38
    adc l
    add b
    adc [hl]
    adc d
    adc [hl]
    ld d, b
    nop
    ld h, $87

jr_00e_7862:
    rst $38
    sub d
    add b
    sbc b
    adc [hl]
    ld d, b
    nop
    ld h, $c5
    rst $38
    sbc c

Call_00e_786d:
    sub h
    adc d
    adc b
    ld d, b
    nop
    ld h, $c4
    rst $38
    adc d
    sub h

Call_00e_7877:
Jump_00e_7877:
    adc l
    adc b
    ld d, b
    nop
    jr z, jr_00e_7805

    rst $38
    adc h
    adc b
    adc d
    adc b
    ld d, b
    nop
    ld h, $86
    rst $38
    add b
    adc h
    sbc b
    ld a, a
    jp hl


    ld a, a
    adc h
    add b
    sbc b
    ld d, b
    nop

Jump_00e_7892:
    jr jr_00e_781e

    jr jr_00e_78c5

    rst $38
    add b
    adc l
    adc l
    ld a, a
    jp hl


    ld a, a
    add b
    adc l
    adc l
    add h
    ld d, b
    ld bc, $eb26
    sbc c
    jp nz, $bb93

    ld h, $eb
    sub e
    db $dd
    or c
    cp [hl]
    rst $38
    add b
    adc l
    adc l
    ld a, a
    jp hl


    ld a, a
    add b
    adc l
    adc l
    add h
    ld d, b
    ld bc, $eb26
    sub e
    and h
    jp nz, $2652

    db $eb
    sub e

jr_00e_78c5:
    ld c, c
    adc d
    or [hl]
    rst $38
    add b
    adc h
    sbc b
    ld a, a
    jp hl


    ld a, a
    adc h
    add b
    sbc b
    ld d, b
    nop
    jr jr_00e_7905

    jr jr_00e_7862

    rst $38
    adc c
    adc [hl]
    ld a, a
    jp hl


    ld a, a
    sbc c
    adc [hl]
    add h
    ld d, b
    nop
    ld [hl], l
    cp c
    ld [hl], l
    or [hl]
    rst $38
    adc c
    adc [hl]
    ld a, a
    jp hl


    ld a, a
    sbc c
    adc [hl]
    add h
    ld d, b
    nop
    ld [hl], l
    cp c
    ld a, b
    or [hl]
    rst $38
    adc h
    add h
    add [hl]
    ld a, a
    jp hl


    ld a, a
    adc a
    add h
    add [hl]
    ld d, b
    nop
    ld h, h
    jr z, jr_00e_7969

jr_00e_7905:
    cp b
    rst $38
    adc h
    add h
    add [hl]
    ld a, a
    jp hl


    ld a, a
    adc a
    add h
    add [hl]
    ld d, b
    nop
    ld h, h
    ret nz

    ld h, h
    or l
    rst $38
    adc e
    add h
    add b
    ld a, a
    jp hl


    ld a, a
    adc a
    adc b
    add b
    ld d, b
    ld bc, $9561
    jr c, jr_00e_7937

    ld h, $c0
    ld h, c
    sub l
    rst $18
    ld d, a
    ld a, [hl-]
    ld [hl+], a
    rst $38
    adc e
    add h
    add b
    ld a, a
    jp hl


    ld a, a
    adc a
    adc b

jr_00e_7937:
    add b
    ld d, b
    ld bc, $9561
    ld [hl], c
    ld d, [hl]
    jr c, jr_00e_7966

    ld h, c
    sub l
    ret z

    ld a, [hl]
    ld h, $57
    rst $38
    add c
    add h
    sub l
    add h
    sub c
    adc e
    sbc b
    ld d, b
    ld [bc], a
    rra
    or [hl]
    ld [hl], a
    rst $38
    sub c
    sub h
    sub e
    add a
    ld d, b
    ld [bc], a
    cpl
    and d
    ld [hl], a
    rst $38
    add c
    add h
    sub l
    add h
    sub c
    adc e
    sbc b
    ld d, b

jr_00e_7966:
    ld [bc], a
    ld [de], a
    pop de

jr_00e_7969:
    xor l
    rst $38
    add c
    add h
    sub l
    add h
    sub c
    adc e
    sbc b
    ld d, b
    ld [bc], a
    ld e, $d2
    xor l
    rst $38
    add [hl]
    add h
    adc [hl]
    sub c
    add [hl]
    adc b
    add b
    ld d, b
    ld [bc], a
    ld l, c
    inc h
    ld [hl], a
    ld l, c
    add hl, de
    and e
    ld l, c
    db $dd
    ld [hl], a
    ld l, c
    ld d, a
    ld [hl], a
    ld l, c
    ld h, c
    ld [hl], a
    rst $38
    adc c
    add b
    adc b
    adc h
    add h
    ld d, b
    ld [bc], a
    jr nc, jr_00e_79ce

    inc bc
    rst $38
    sub c
    add h
    add e
    ld d, b
    ld [bc], a
    ld a, a
    call nz, Call_00e_7f6d
    sub l
    ld l, l
    ld a, a
    di
    ld l, l
    ld a, a
    ei
    ld l, l
    ld a, a
    push af
    sub d
    ld a, a
    adc a
    sub d
    ld c, l
    inc bc
    pop af
    jp z, Jump_00e_4ceb

    ld c, l
    ld b, $35
    ld de, $53a3
    ld c, l
    add hl, bc
    ldh a, [$92]
    sub d
    sub d
    rst $38
    add c
    adc e
    sub h
    add h
    ld d, b
    ld [bc], a
    ld a, [hl]
    add a

jr_00e_79ce:
    ld l, l
    ld a, [hl]
    ld b, h
    ld c, c
    ld a, [hl]

jr_00e_79d3:
    push hl
    ld l, l
    ld a, [hl]
    and $92
    ld a, [hl]
    add b
    sub d
    ld a, [hl]
    sub a
    ld l, l
    ld a, [hl-]
    add d
    rst $28
    jr c, jr_00e_79d3

    ccf
    ld a, [hl-]
    ld h, a
    pop af
    ld c, c
    ld a, c
    ld c, h
    ld a, [hl-]
    dec sp
    ld l, $6d
    ld l, l
    ld l, l
    rst $38
    adc d
    add h
    adc b
    sub e
    add a
    ld d, b
    nop
    dec de
    and h
    rst $38
    add e
    adc b
    sub c
    adc d
    ld d, b
    nop
    ld a, [de]
    jp nc, $3b1a

    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    rla
    ld e, h
    rla
    rst $10
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld d, e
    add [hl]
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld e, b
    cp d
    ld e, b
    ld a, h
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld e, d
    sub $5a
    inc sp
    ld e, d
    or l
    ld e, e
    add e
    rst $38
    add [hl]
    sub c
    sub h
    adc l
    sub e
    ld d, b
    nop
    ld b, c
    ld a, d
    ld b, d
    ld d, b
    ld b, c
    dec l
    ld b, c
    xor e
    ld b, c
    rra
    ld b, d
    pop af
    rst $38
    add h
    sub h
    sub d
    adc b
    adc l
    add h
    ld d, b
    ld [bc], a
    scf
    or d
    inc bc
    scf
    ld a, [de]
    add d
    scf
    cp l
    inc bc
    scf
    dec sp
    sub d
    scf
    add [hl]
    ld c, c
    scf
    ld b, c
    add d
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

Jump_00e_7a73:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00e_7b70:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00e_7e73:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_00e_7f64:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00e_7f6d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_00e_7f78:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
