; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

Call_00f_4000:
    xor a
    ld [$c664], a
    ld [$c6fc], a
    ld [$d0ec], a
    ld [$c734], a
    inc a
    ld [$d264], a
    ld hl, $d2aa
    ld bc, $002f
    ld d, $03

jr_00f_4019:
    inc d
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_4021

    add hl, bc
    jr jr_00f_4019

jr_00f_4021:
    ld a, d
    ld [$d430], a
    ld a, [$c2dc]
    and a
    jr z, jr_00f_4031

    ldh a, [$cb]
    cp $02
    jr z, jr_00f_404c

jr_00f_4031:
    ld a, [$d22d]
    dec a
    jr z, jr_00f_4047

    xor a
    ld [$c718], a
    call Call_00f_5834
    call Call_00f_5867
    call Call_00f_5c18
    call Call_00f_54e1

jr_00f_4047:
    ld c, $28
    call $0468

jr_00f_404c:
    call $309d
    call Call_00f_5873
    ld a, d
    and a
    jp z, Jump_00f_538e

    call $30b4
    ld a, [$d230]
    cp $02
    jp z, Jump_00f_40e2

    cp $03
    jp z, Jump_00f_40e2

    xor a
    ld [$d109], a

jr_00f_406b:
    call Call_00f_5887
    jr nz, jr_00f_4076

    ld hl, $d109
    inc [hl]
    jr jr_00f_406b

jr_00f_4076:
    ld a, [$d0d4]
    ld [$c71a], a
    ld a, [$d109]
    ld [$d0d4], a
    inc a
    ld hl, $dcd7
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d108], a
    ld [$d205], a
    ld hl, $c505
    ld a, $09
    call Call_00f_5490
    call $309d
    call Call_00f_557a
    call Call_00f_5a0d
    call Call_00f_5ab1
    call Call_00f_726d
    call Call_00f_5bde
    call Call_00f_5c18
    call Call_00f_5b5f
    call Call_00f_6dd1
    call $309d
    call $3985
    call Call_00f_5c23
    ld a, [$c2dc]
    and a
    jr z, jr_00f_40df

    ldh a, [$cb]
    cp $02
    jr nz, jr_00f_40df

    xor a
    ld [$c718], a
    call Call_00f_5834
    call Call_00f_5867
    call Call_00f_5c18
    call Call_00f_54e1
    call $3989
    call Call_00f_5c23

jr_00f_40df:
    jp Jump_00f_412f


Jump_00f_40e2:
    jp Jump_00f_6139


Call_00f_40e5:
Jump_00f_40e5:
    call $30b4
    ld a, [$d0ee]
    and $c0
    add $02
    ld [$d0ee], a
    ld a, [$c2dc]
    and a
    ld hl, $47bd
    jr z, jr_00f_4115

    ld a, [$d0ee]
    and $c0
    ld [$d0ee], a
    ld hl, $47cf
    call Call_00f_52e0
    jr nc, jr_00f_4115

    ld hl, $cd2a
    bit 4, [hl]
    jr nz, jr_00f_4118

    ld hl, $5863

jr_00f_4115:
    call $3ad5

jr_00f_4118:
    call Call_00f_4eec
    call Call_00f_52e0
    jr c, jr_00f_4126

    ld de, $002b
    call $3c23

jr_00f_4126:
    call $3985
    ld a, $01
    ld [$c734], a
    ret


Jump_00f_412f:
    call Call_00f_41bf
    call Call_00f_43f5
    jp c, Jump_00f_41be

    xor a
    ld [$c710], a
    ld [$c711], a
    ld [$d264], a
    ld [$c73f], a
    ld [$c740], a
    ld [$d256], a
    ld [$d257], a
    call Call_00f_427c
    call $399c
    ld a, $11
    ld hl, $40ce
    rst $08
    call Call_00f_52f1
    jr nz, jr_00f_4174

    ld a, $40
    ld hl, $4da5
    rst $08
    ld a, $40
    ld hl, $4641
    rst $08
    ld a, $40
    ld hl, $4dd8
    rst $08
    jp c, Jump_00f_41be

jr_00f_4174:
    call Call_00f_4410
    jr c, jr_00f_418a

jr_00f_4179:
    call Call_00f_6139
    jr c, jr_00f_41be

    ld a, [$c734]
    and a
    jr nz, jr_00f_41be

    ld a, [$d232]
    and a
    jr nz, jr_00f_41be

jr_00f_418a:
    call Call_00f_4434
    jr nz, jr_00f_4179

    call Call_00f_4300
    jr c, jr_00f_41be

    call Call_00f_4314
    jr c, jr_00f_419e

    call Call_00f_45fe
    jr jr_00f_41a1

jr_00f_419e:
    call Call_00f_4664

jr_00f_41a1:
    call Call_00f_52e0
    jr c, jr_00f_41be

    ld a, [$d232]
    and a
    jr nz, jr_00f_41be

    ld a, [$c734]
    and a
    jr nz, jr_00f_41be

    call Call_00f_41d6
    ld a, [$c734]
    and a
    jr nz, jr_00f_41be

    jp Jump_00f_412f


Jump_00f_41be:
jr_00f_41be:
    ret


Call_00f_41bf:
    ret


    ld a, $05
    call $2fcb
    ld hl, $a89b
    inc [hl]
    jr nz, jr_00f_41d2

    dec hl
    inc [hl]
    jr nz, jr_00f_41d2

    dec [hl]
    inc hl
    dec [hl]

jr_00f_41d2:
    call $2fe1
    ret


Call_00f_41d6:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_41fe

    call Call_00f_423c
    ret c

    call Call_00f_4a26
    call Call_00f_423c
    ret c

    call Call_00f_4b9e
    call Call_00f_423c
    ret c

    call Call_00f_4874
    call Call_00f_423c
    ret c

    call Call_00f_4801
    call Call_00f_423c
    ret c

    jr jr_00f_421e

jr_00f_41fe:
    call Call_00f_425c
    ret c

    call Call_00f_4a26
    call Call_00f_425c
    ret c

    call Call_00f_4b9e
    call Call_00f_425c
    ret c

    call Call_00f_4874
    call Call_00f_425c
    ret c

    call Call_00f_4801
    call Call_00f_425c
    ret c

jr_00f_421e:
    call Call_00f_48eb
    call Call_00f_493c
    call Call_00f_4a8f
    call Call_00f_4afb
    call Call_00f_4b36
    call Call_00f_5e97
    call Call_00f_5cf9
    call $399c
    call $309d
    jp Jump_00f_44df


Call_00f_423c:
    call Call_00f_4710
    jr nz, jr_00f_424a

    call Call_00f_514e
    ld a, [$c734]
    and a
    jr nz, jr_00f_425a

jr_00f_424a:
    call Call_00f_470b
    jr nz, jr_00f_4258

    call Call_00f_4d55
    ld a, [$c734]
    and a
    jr nz, jr_00f_425a

jr_00f_4258:
    and a
    ret


jr_00f_425a:
    scf
    ret


Call_00f_425c:
    call Call_00f_470b
    jr nz, jr_00f_426a

    call Call_00f_4d55
    ld a, [$c734]
    and a
    jr nz, jr_00f_427a

jr_00f_426a:
    call Call_00f_4710
    jr nz, jr_00f_4278

    call Call_00f_514e
    ld a, [$c734]
    and a
    jr nz, jr_00f_427a

jr_00f_4278:
    and a
    ret


jr_00f_427a:
    scf
    ret


Call_00f_427c:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_4287

    call Call_00f_428a
    jr jr_00f_4296

jr_00f_4287:
    call Call_00f_4296

Call_00f_428a:
    call $3985
    ld de, $dce0
    ld a, [$d0d4]
    ld b, a
    jr jr_00f_42a0

Call_00f_4296:
jr_00f_4296:
    call $3989
    ld de, $d289
    ld a, [$c663]
    ld b, a

jr_00f_42a0:
    push de
    push bc
    ld hl, $7db2
    ld a, $0d
    rst $08
    ld a, [hl]
    ld [$d265], a
    sub $98
    pop bc
    pop de
    ret nz

    ld [hl], a
    ld h, d
    ld l, e
    ld a, b
    call $3927
    xor a
    ld [hl], a
    ld a, $02
    call $39e7
    push af
    set 7, [hl]
    ld a, $0c
    call $39e7
    push hl
    push af
    xor a
    ld [hl], a
    ld [$c667], a
    ld [$c70d], a
    ld a, $0d
    ld hl, $61c8
    rst $08
    pop af
    pop hl
    ld [hl], a
    call $3468
    ld hl, $4bde
    call $3ad5
    ld hl, $63b8
    ld a, $0d
    rst $08
    pop af
    bit 7, a
    ret nz

    xor a
    ld [$cfca], a
    ld de, $0103
    call Call_00f_6e0f
    call Call_00f_48e4
    ld hl, $4d97
    jp $3ad5


Call_00f_4300:
    ld a, [$c2dc]
    and a
    jr z, jr_00f_430d

    ld a, [$d430]
    cp $0f
    jr z, jr_00f_430f

jr_00f_430d:
    and a
    ret


jr_00f_430f:
    call Call_00f_40e5
    scf
    ret


Call_00f_4314:
    ld a, [$c2dc]
    and a
    jr z, jr_00f_435b

    ld a, [$d430]
    cp $0e
    jr z, jr_00f_435b

    cp $0d
    jr z, jr_00f_435b

    sub $04
    jr c, jr_00f_435b

    ld a, [$d0ec]
    cp $02
    jr nz, jr_00f_434c

    ldh a, [$cb]
    cp $02
    jr z, jr_00f_4341

    call $2f9f
    cp $80
    jp c, Jump_00f_43f1

    jp Jump_00f_43f3


jr_00f_4341:
    call $2f9f
    cp $80
    jp c, Jump_00f_43f3

    jp Jump_00f_43f1


jr_00f_434c:
    ld hl, $446c
    ld a, $0e
    rst $08
    call $3989
    call Call_00f_5c23
    jp Jump_00f_43f3


jr_00f_435b:
    ld a, [$d0ec]
    and a
    jp nz, Jump_00f_43f1

    call Call_00f_45b4
    jr z, jr_00f_436d

    jp c, Jump_00f_43f1

    jp Jump_00f_43f3


jr_00f_436d:
    call $3985
    ld hl, $7db2
    ld a, $0d
    rst $08
    push bc
    ld hl, $7dc1
    ld a, $0d
    rst $08
    pop de
    ld a, d
    cp $4a
    jr nz, jr_00f_4391

    ld a, b
    cp $4a
    jr z, jr_00f_439f

    call $2f9f
    cp e
    jr nc, jr_00f_43c5

    jp Jump_00f_43f1


jr_00f_4391:
    ld a, b
    cp $4a
    jr nz, jr_00f_43c5

    call $2f9f
    cp c
    jr nc, jr_00f_43c5

    jp Jump_00f_43f3


jr_00f_439f:
    ldh a, [$cb]
    cp $02
    jr z, jr_00f_43b5

    call $2f9f
    cp c
    jp c, Jump_00f_43f3

    call $2f9f
    cp e
    jp c, Jump_00f_43f1

    jr jr_00f_43c5

jr_00f_43b5:
    call $2f9f
    cp e
    jp c, Jump_00f_43f1

    call $2f9f
    cp c
    jp c, Jump_00f_43f3

    jr jr_00f_43c5

jr_00f_43c5:
    ld de, $c644
    ld hl, $d21e
    ld c, $02
    call $31db
    jr z, jr_00f_43d8

    jp nc, Jump_00f_43f1

    jp Jump_00f_43f3


jr_00f_43d8:
    ldh a, [$cb]
    cp $02
    jr z, jr_00f_43e9

    call $2f9f
    cp $80
    jp c, Jump_00f_43f1

    jp Jump_00f_43f3


jr_00f_43e9:
    call $2f9f
    cp $80
    jp c, Jump_00f_43f3

Jump_00f_43f1:
    scf
    ret


Jump_00f_43f3:
    and a
    ret


Call_00f_43f5:
    ld a, [$d230]
    cp $06
    jr nz, jr_00f_440e

    ld a, [$dc79]
    and a
    jr nz, jr_00f_440e

    ld a, [$d0ee]
    and $c0
    add $02
    ld [$d0ee], a
    scf
    ret


jr_00f_440e:
    and a
    ret


Call_00f_4410:
    ld a, [$c66b]
    and $20
    jp nz, Jump_00f_4432

    ld hl, $c66f
    res 3, [hl]
    ld hl, $c66a
    res 3, [hl]
    ld a, [hl]
    and $12
    jp nz, Jump_00f_4432

    ld hl, $c668
    bit 6, [hl]
    jp nz, Jump_00f_4432

    and a
    ret


Jump_00f_4432:
    scf
    ret


Call_00f_4434:
    call Call_00f_4410
    jp c, Jump_00f_44ba

    ld hl, $c66c
    bit 4, [hl]
    jr z, jr_00f_4449

    ld a, [$c71b]
    ld [$c6e3], a
    jr jr_00f_447c

jr_00f_4449:
    ld a, [$d0ec]
    cp $02
    jr z, jr_00f_44ce

    and a
    jr nz, jr_00f_44b5

    ld a, [$c66a]
    and $01
    jr nz, jr_00f_44ba

    xor a
    ld [$d235], a
    inc a
    ld [$cfc2], a
    call Call_00f_64bc
    push af
    call $30b4
    call $39d4
    ld a, [$c6e3]
    cp $a5
    jr z, jr_00f_4476

    call $2009

jr_00f_4476:
    ld a, $01
    ldh [$d4], a
    pop af
    ret nz

jr_00f_447c:
    call $3985
    ld hl, $5e40
    ld a, $0d
    rst $08
    xor a
    ld [$c732], a
    ld a, [$c610]
    cp $77
    jr z, jr_00f_4494

    xor a
    ld [$c678], a

jr_00f_4494:
    ld a, [$c610]
    cp $51
    jr z, jr_00f_44a4

    ld hl, $c66b
    res 6, [hl]
    xor a
    ld [$c72b], a

jr_00f_44a4:
    ld a, [$c610]
    cp $6f
    jr z, jr_00f_44c9

    cp $74
    jr z, jr_00f_44c9

    xor a
    ld [$c679], a
    jr jr_00f_44c9

jr_00f_44b5:
    ld hl, $c66a
    res 0, [hl]

Jump_00f_44ba:
jr_00f_44ba:
    xor a
    ld [$c678], a
    ld [$c679], a
    ld [$c72b], a
    ld hl, $c66b
    res 6, [hl]

jr_00f_44c9:
    call Call_00f_67c1
    xor a
    ret


jr_00f_44ce:
    xor a
    ld [$c678], a
    ld [$c679], a
    ld [$c72b], a
    ld hl, $c66b
    res 6, [hl]
    xor a
    ret


Jump_00f_44df:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_44ea

    call Call_00f_44ed
    jr jr_00f_4518

jr_00f_44ea:
    call Call_00f_4518

Call_00f_44ed:
    ld hl, $c66c
    bit 4, [hl]
    ret z

    ld a, [$c676]
    dec a
    ld [$c676], a
    jr z, jr_00f_450a

    ld hl, $c634
    ld a, [$d0d5]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and $3f
    ret nz

jr_00f_450a:
    ld hl, $c66c
    res 4, [hl]
    call $3989
    ld hl, $4c8a
    jp $3ad5


Call_00f_4518:
jr_00f_4518:
    ld hl, $c671
    bit 4, [hl]
    ret z

    ld a, [$c67e]
    dec a
    ld [$c67e], a
    jr z, jr_00f_4535

    ld hl, $d20e
    ld a, [$c6e9]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and $3f
    ret nz

jr_00f_4535:
    ld hl, $c671
    res 4, [hl]
    call $3985
    ld hl, $4c8a
    jp $3ad5


Call_00f_4543:
    ld a, [$d22d]
    dec a
    jr nz, jr_00f_4596

    ld a, [$c66c]
    bit 7, a
    jr nz, jr_00f_4596

    ld a, [$c731]
    and a
    jr nz, jr_00f_4596

    ld a, [$d214]
    and $27
    jr nz, jr_00f_4596

    ld a, [$d204]
    ld de, $0001
    ld hl, $45b1
    call $30e1
    jr c, jr_00f_4598

    call $2f9f
    ld b, a
    cp $80
    jr nc, jr_00f_4596

    push bc
    ld a, [$d204]
    ld de, $0001
    ld hl, $45a8
    call $30e1
    pop bc
    jr c, jr_00f_4598

    ld a, b
    cp $1a
    jr nc, jr_00f_4596

    ld a, [$d204]
    ld de, $0001
    ld hl, $459a
    call $30e1
    jr c, jr_00f_4598

jr_00f_4596:
    and a
    ret


jr_00f_4598:
    scf
    ret


    ld d, c
    ld e, b
    ld [hl], d
    ld a, d
    add l
    adc c
    sub e
    sub h
    or b
    push bc
    ret


    pop de
    sub $ff
    ld l, b
    sub b
    sub c
    sub d
    jp $e7e1


    ret c

    rst $38
    di
    db $f4
    rst $38

Call_00f_45b4:
    ld a, [$c6e3]
    call Call_00f_45c5
    ld b, a
    push bc
    ld a, [$c6e4]
    call Call_00f_45c5
    pop bc
    cp b
    ret


Call_00f_45c5:
    ld b, a
    cp $e9
    ld a, $00
    ret z

    call Call_00f_45ec
    ld hl, $45df

jr_00f_45d1:
    ld a, [hl+]
    cp b
    jr z, jr_00f_45dd

    inc hl
    cp $ff
    jr nz, jr_00f_45d1

    ld a, $01
    ret


jr_00f_45dd:
    ld a, [hl]
    ret


    ld l, a
    inc bc
    ld [hl], h
    inc bc
    ld h, a
    ld [bc], a
    inc e
    nop
    ld e, c
    nop
    sub b
    nop
    rst $38

Call_00f_45ec:
    ld a, b
    dec a
    ld hl, $5afc
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    ld b, a
    ret


Call_00f_45fe:
    call $309d
    call Call_00f_4543
    jp c, Jump_00f_40e5

    call $3989
    ld a, $01
    ld [$c70f], a
    ld hl, $4000
    ld a, $0e
    rst $08
    jr c, jr_00f_462f

    call Call_00f_46de
    call Call_00f_52e0
    ret c

    ld a, [$d232]
    and a
    ret nz

    call Call_00f_4710
    jp z, Jump_00f_514e

    call Call_00f_470b
    jp z, Jump_00f_4d55

jr_00f_462f:
    call $3989
    call Call_00f_4716
    jp z, Jump_00f_4d55

    call $39c9
    call Call_00f_46cf
    call Call_00f_52e0
    ret c

    ld a, [$d232]
    and a
    ret nz

    call Call_00f_470b
    jp z, Jump_00f_4d55

    call Call_00f_4710
    jp z, Jump_00f_514e

    call $3985
    call Call_00f_4716
    jp z, Jump_00f_514e

    call $39c9
    xor a
    ld [$d0ec], a
    ret


Call_00f_4664:
    xor a
    ld [$c70f], a
    call $3989
    ld hl, $4000
    ld a, $0e
    rst $08
    push af
    call Call_00f_46cf
    pop bc
    ld a, [$d232]
    and a
    ret nz

    call Call_00f_52e0
    ret c

    call Call_00f_470b
    jp z, Jump_00f_4d55

    call Call_00f_4710
    jp z, Jump_00f_514e

    push bc
    call $3985
    call Call_00f_4716
    pop bc
    jp z, Jump_00f_514e

    push bc
    call $39c9
    pop af
    jr c, jr_00f_46be

    call $309d
    call Call_00f_4543
    jp c, Jump_00f_40e5

    call Call_00f_46de
    call Call_00f_52e0
    ret c

    ld a, [$d232]
    and a
    ret nz

    call Call_00f_4710
    jp z, Jump_00f_514e

    call Call_00f_470b
    jp z, Jump_00f_4d55

jr_00f_46be:
    call $3989
    call Call_00f_4716
    jp z, Jump_00f_4d55

    call $39c9
    xor a
    ld [$d0ec], a
    ret


Call_00f_46cf:
    call $3985
    call Call_00f_46fe
    ld hl, $4000
    ld a, $0d
    rst $08
    jp Jump_00f_46ed


Call_00f_46de:
    call $3989
    call Call_00f_46fe
    ld hl, $400a
    ld a, $0d
    rst $08
    jp Jump_00f_46ed


Jump_00f_46ed:
    ld a, $05
    call $39e7
    res 2, [hl]
    res 5, [hl]
    ld a, $09
    call $39e7
    res 6, [hl]
    ret


Call_00f_46fe:
    ld a, $04
    call $39e7
    res 6, [hl]
    ret


Call_00f_4706:
    ldh a, [$e4]
    and a
    jr z, jr_00f_4710

Call_00f_470b:
    ld hl, $d216
    jr jr_00f_4713

Call_00f_4710:
jr_00f_4710:
    ld hl, $c63c

jr_00f_4713:
    ld a, [hl+]
    or [hl]
    ret


Call_00f_4716:
    call Call_00f_4706
    ret z

    ld a, $0a
    call $39e1
    and $18
    jr z, jr_00f_4768

    ld hl, $47e2
    ld de, $0106
    and $10
    jr z, jr_00f_4733

    ld hl, $47f8
    ld de, $0105

jr_00f_4733:
    push de
    call $3ad5
    pop de
    xor a
    ld [$cfca], a
    call Call_00f_6e0f
    call Call_00f_4c83
    ld de, $c674
    ldh a, [$e4]
    and a
    jr z, jr_00f_474d

    ld de, $c67c

jr_00f_474d:
    ld a, $04
    call $39e1
    bit 0, a
    jr z, jr_00f_4765

    call Call_00f_4c76
    ld a, [de]
    inc a
    ld [de], a
    ld hl, $0000

jr_00f_475f:
    add hl, bc
    dec a
    jr nz, jr_00f_475f

    ld b, h
    ld c, l

jr_00f_4765:
    call Call_00f_4c3f

jr_00f_4768:
    call Call_00f_4706
    jp z, Jump_00f_47f7

    ld a, $03
    call $39e7
    bit 7, [hl]
    jr z, jr_00f_47a1

    call Call_00f_48e4
    xor a
    ld [$cfca], a
    ld de, $0107
    ld a, $07
    call $39e1
    and $60
    call z, Call_00f_6e0f
    call Call_00f_48e4
    call Call_00f_4c83
    call Call_00f_4c3f
    ld a, $01
    ldh [$d4], a
    call Call_00f_4cef
    ld hl, $480e
    call $3ad5

jr_00f_47a1:
    call Call_00f_4706
    jr z, jr_00f_47f7

    ld a, $00
    call $39e7
    bit 0, [hl]
    jr z, jr_00f_47c5

    xor a
    ld [$cfca], a
    ld de, $010c
    call Call_00f_6e0f
    call Call_00f_4c8e
    call Call_00f_4c3f
    ld hl, $4822
    call $3ad5

jr_00f_47c5:
    call Call_00f_4706
    jr z, jr_00f_47f7

    ld a, $00
    call $39e7
    bit 1, [hl]
    jr z, jr_00f_47e9

    xor a
    ld [$cfca], a
    ld de, $010c
    call Call_00f_6e0f
    call Call_00f_4c8e
    call Call_00f_4c3f
    ld hl, $4836
    call $3ad5

jr_00f_47e9:
    ld hl, $c63c
    ldh a, [$e4]
    and a
    jr z, jr_00f_47f4

    ld hl, $d216

jr_00f_47f4:
    ld a, [hl+]
    or [hl]
    ret nz

Jump_00f_47f7:
jr_00f_47f7:
    call $39c9
    ld c, $14
    call $0468
    xor a
    ret


Call_00f_4801:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_4813

    call $3985
    call Call_00f_481c
    call $3989
    jp Jump_00f_481c


jr_00f_4813:
    call $3989
    call Call_00f_481c
    call $3985

Call_00f_481c:
Jump_00f_481c:
    ld hl, $c677
    ldh a, [$e4]
    and a
    jr z, jr_00f_4827

    ld hl, $c67f

jr_00f_4827:
    ld a, $00
    call $39e1
    bit 4, a
    ret z

    dec [hl]
    ld a, [hl]
    ld [$d265], a
    push af
    ld hl, $4864
    call $3ad5
    pop af
    ret nz

    ld a, $00
    call $39e7
    res 4, [hl]
    ldh a, [$e4]
    and a
    jr nz, jr_00f_485c

    ld hl, $c63c
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $dd01
    ld a, [$d0d4]
    call $3927
    xor a
    ld [hl+], a
    ld [hl], a
    ret


jr_00f_485c:
    ld hl, $d216
    xor a
    ld [hl+], a
    ld [hl], a
    ld a, [$d22d]
    dec a
    ret z

    ld hl, $d2aa
    ld a, [$c663]
    call $3927
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_00f_4874:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_4886

    call $3985
    call Call_00f_488f
    call $3989
    jp Jump_00f_488f


jr_00f_4886:
    call $3989
    call Call_00f_488f
    call $3985

Call_00f_488f:
Jump_00f_488f:
    ld hl, $c730
    ld de, $c72e
    ldh a, [$e4]
    and a
    jr z, jr_00f_48a0

    ld hl, $c731
    ld de, $c72f

jr_00f_48a0:
    ld a, [hl]
    and a
    ret z

    ld a, $03
    call $39e1
    bit 4, a
    ret nz

    ld a, [de]
    ld [$d265], a
    ld [$cfc2], a
    call $34f8
    dec [hl]
    jr z, jr_00f_48de

    ld a, $02
    call $39e1
    and $60
    jr nz, jr_00f_48d3

    call Call_00f_48e4
    xor a
    ld [$cfca], a
    ld [$cfc3], a
    ld a, $37
    call $2d83
    call Call_00f_48e4

jr_00f_48d3:
    call Call_00f_4c76
    call Call_00f_4c3f
    ld hl, $4de2
    jr jr_00f_48e1

jr_00f_48de:
    ld hl, $4df5

jr_00f_48e1:
    jp $3ad5


Call_00f_48e4:
Jump_00f_48e4:
    ldh a, [$e4]
    xor $01
    ldh [$e4], a
    ret


Call_00f_48eb:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_48fd

    call $3985
    call Call_00f_4906
    call $3989
    jp Jump_00f_4906


jr_00f_48fd:
    call $3989
    call Call_00f_4906
    call $3985

Call_00f_4906:
Jump_00f_4906:
    ld hl, $7db2
    ld a, $0d
    rst $08
    ld a, [hl]
    ld [$d265], a
    call $3468
    ld a, b
    cp $03
    ret nz

    ld hl, $c63c
    ldh a, [$e4]
    and a
    jr z, jr_00f_4922

    ld hl, $d216

jr_00f_4922:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    cp b
    jr nz, jr_00f_492d

    ld a, [hl]
    cp c
    ret z

jr_00f_492d:
    call Call_00f_4c76
    call Call_00f_48e4
    call Call_00f_4cef
    ld hl, $4880
    jp $3ad5


Call_00f_493c:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_494e

    call $3985
    call Call_00f_4957
    call $3989
    jp Jump_00f_4957


jr_00f_494e:
    call $3989
    call Call_00f_4957
    call $3985

Call_00f_4957:
Jump_00f_4957:
    ld hl, $7db2
    ld a, $0d
    rst $08
    ld a, b
    cp $06
    jr nz, jr_00f_49ae

    ld hl, $dcf6
    ld a, [$d0d4]
    call $3927
    ld d, h
    ld e, l
    ld hl, $dce1
    ld a, [$d0d4]
    call $3927
    ldh a, [$e4]
    and a
    jr z, jr_00f_499b

    ld de, $c739
    ld hl, $c735
    ld a, [$d22d]
    dec a
    jr z, jr_00f_499b

    ld hl, $d29f
    ld a, [$c663]
    call $3927
    ld d, h
    ld e, l
    ld hl, $d28a
    ld a, [$c663]
    call $3927

jr_00f_499b:
    ld c, $00

jr_00f_499d:
    ld a, [hl]
    and a
    jr z, jr_00f_49ae

    ld a, [de]
    and $3f
    jr z, jr_00f_49af

    inc hl
    inc de
    inc c
    ld a, c
    cp $04
    jr nz, jr_00f_499d

jr_00f_49ae:
    ret


jr_00f_49af:
    ld a, [hl]
    cp $a6
    ld b, $01
    jr z, jr_00f_49b8

    ld b, $05

jr_00f_49b8:
    ld a, [de]
    add b
    ld [de], a
    push bc
    push bc
    ld a, [hl]
    ld [$d265], a
    ld de, $c62d
    ld hl, $c634
    ldh a, [$e4]
    and a
    jr z, jr_00f_49d2

    ld de, $d207
    ld hl, $d20e

jr_00f_49d2:
    inc de
    pop bc
    ld b, $00
    add hl, bc
    push hl
    ld h, d
    ld l, e
    add hl, bc
    pop de
    pop bc
    ld a, [$d265]
    cp [hl]
    jr nz, jr_00f_49f5

    ldh a, [$e4]
    and a
    ld a, [$c66c]
    jr z, jr_00f_49ee

    ld a, [$c671]

jr_00f_49ee:
    bit 3, a
    jr nz, jr_00f_49f5

    ld a, [de]
    add b
    ld [de], a

jr_00f_49f5:
    ld hl, $7db2
    ld a, $0d
    rst $08
    ld a, [hl]
    ld [$d265], a
    xor a
    ld [hl], a
    call Call_00f_5f12
    ldh a, [$e4]
    and a
    jr z, jr_00f_4a12

    ld a, [$d22d]
    dec a
    jr z, jr_00f_4a14

    call Call_00f_5f1f

jr_00f_4a12:
    xor a
    ld [hl], a

jr_00f_4a14:
    call $3468
    call Call_00f_48e4
    call Call_00f_5dc8
    call Call_00f_48e4
    ld hl, $4899
    jp $3ad5


Call_00f_4a26:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_4a38

    call $3985
    call Call_00f_4a41
    call $3989
    jp Jump_00f_4a41


jr_00f_4a38:
    call $3989
    call Call_00f_4a41
    call $3985

Call_00f_4a41:
Jump_00f_4a41:
    ld hl, $c71d
    ldh a, [$e4]
    and a
    jr z, jr_00f_4a4c

    ld hl, $c71e

jr_00f_4a4c:
    ld a, [hl]
    and a
    ret z

    dec a
    ld [hl], a
    cp $01
    ret nz

    ld hl, $48b6
    call $3ad5
    ld a, $10
    call $39e7
    push af
    ld a, $f8
    ld [hl], a
    ld hl, $5e40
    ld a, $0d
    rst $08
    xor a
    ld [$c667], a
    ld [$c6f4], a
    ld a, $0a
    ld [$c665], a
    ld hl, $402c
    ld a, $0d
    rst $08
    xor a
    ld [$d256], a
    ld [$d257], a
    ld a, $10
    call $39e7
    pop af
    ld [hl], a
    call $399c
    jp $39b0


Call_00f_4a8f:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_4a9a

    call Call_00f_4a9d
    jr jr_00f_4ac9

jr_00f_4a9a:
    call Call_00f_4ac9

Call_00f_4a9d:
    ld a, [$c63a]
    bit 5, a
    ret z

    ld a, [$c73f]
    and a
    ret nz

    call $2f9f
    cp $19
    ret nc

    xor a
    ld [$c63a], a
    ld a, [$d0d4]
    ld hl, $dcff
    call $3927
    ld [hl], $00
    call $39d4
    call $3989
    ld hl, $524b
    jp $3ad5


Call_00f_4ac9:
jr_00f_4ac9:
    ld a, [$d214]
    bit 5, a
    ret z

    ld a, [$c740]
    and a
    ret nz

    call $2f9f
    cp $19
    ret nc

    xor a
    ld [$d214], a
    ld a, [$d22d]
    dec a
    jr z, jr_00f_4aef

    ld a, [$c663]
    ld hl, $d2a8
    call $3927
    ld [hl], $00

jr_00f_4aef:
    call $39d4
    call $3985
    ld hl, $524b
    jp $3ad5


Call_00f_4afb:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_4b06

    call Call_00f_4b09
    jr jr_00f_4b1c

jr_00f_4b06:
    call Call_00f_4b1c

Call_00f_4b09:
    ld a, [$c6ff]
    bit 2, a
    ret z

    ld hl, $c701
    dec [hl]
    ret nz

    res 2, a
    ld [$c6ff], a
    xor a
    jr jr_00f_4b2e

Call_00f_4b1c:
jr_00f_4b1c:
    ld a, [$c700]
    bit 2, a
    ret z

    ld hl, $c705
    dec [hl]
    ret nz

    res 2, a
    ld [$c700], a
    ld a, $01

jr_00f_4b2e:
    ldh [$e4], a
    ld hl, $48d2
    jp $3ad5


Call_00f_4b36:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_4b41

    call Call_00f_4b44
    jr jr_00f_4b55

jr_00f_4b41:
    call Call_00f_4b55

Call_00f_4b44:
    call $3985
    ld de, $4b75
    call Call_00f_4b6f
    ld hl, $c6ff
    ld de, $c702
    jr jr_00f_4b64

Call_00f_4b55:
jr_00f_4b55:
    call $3989
    ld de, $4b7a
    call Call_00f_4b6f
    ld hl, $c700
    ld de, $c706

jr_00f_4b64:
    bit 3, [hl]
    call nz, Call_00f_4b80
    bit 4, [hl]
    call nz, Call_00f_4b91
    ret


Call_00f_4b6f:
    ld hl, $d073
    jp $30d9


    sbc b
    xor [hl]
    or h
    or c
    ld d, b
    add h
    xor l
    and h
    xor h
    cp b
    ld d, b

Call_00f_4b80:
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    res 3, [hl]
    push hl
    push de
    ld hl, $48e7
    call $3ad5
    pop de
    pop hl
    ret


Call_00f_4b91:
    inc de
    ld a, [de]
    dec a
    ld [de], a
    ret nz

    res 4, [hl]
    ld hl, $4905
    jp $3ad5


Call_00f_4b9e:
    ld a, [$c70a]
    cp $00
    ret z

    ld hl, $c70b
    dec [hl]
    jr z, jr_00f_4c13

    ld hl, $4c2d
    call Call_00f_4c1e
    ld a, [$c70a]
    cp $03
    ret nz

    ldh a, [$cb]
    cp $01
    jr z, jr_00f_4bc7

    call $3985
    call Call_00f_4bd0
    call $3989
    jr jr_00f_4bd0

jr_00f_4bc7:
    call $3989
    call Call_00f_4bd0
    call $3985

Call_00f_4bd0:
jr_00f_4bd0:
    ld a, $02
    call $39e1
    bit 5, a
    ret nz

    ld hl, $c64a
    ldh a, [$e4]
    and a
    jr z, jr_00f_4be3

    ld hl, $d224

jr_00f_4be3:
    ld a, [hl+]
    cp $05
    ret z

    cp $04
    ret z

    cp $09
    ret z

    ld a, [hl]
    cp $05
    ret z

    cp $04
    ret z

    cp $09
    ret z

    call Call_00f_48e4
    xor a
    ld [$cfca], a
    ld de, $010b
    call Call_00f_6e17
    call Call_00f_48e4
    call Call_00f_4c83
    call Call_00f_4c3f
    ld hl, $484d
    jp $3ad5


jr_00f_4c13:
    ld hl, $4c33
    call Call_00f_4c1e
    xor a
    ld [$c70a], a
    ret


Call_00f_4c1e:
    ld a, [$c70a]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp $3ad5


    rra
    ld c, c
    jr c, @+$4b

    ld d, c
    ld c, c
    ld h, a
    ld c, c
    ld a, d
    ld c, c
    adc a
    ld c, c

Call_00f_4c39:
    call Call_00f_4c45
    jp Jump_00f_4d3c


Call_00f_4c3f:
    call Call_00f_4c45
    jp Jump_00f_4d36


Call_00f_4c45:
    ld hl, $c63c
    ldh a, [$e4]
    and a
    jr z, jr_00f_4c50

    ld hl, $d216

jr_00f_4c50:
    inc hl
    ld a, [hl]
    ld [$d1ec], a
    sub c
    ld [hl-], a
    ld [$d1ee], a
    ld a, [hl]
    ld [$d1ed], a
    sbc b
    ld [hl], a
    ld [$d1ef], a
    ret nc

    ld a, [$d1ec]
    ld c, a
    ld a, [$d1ed]
    ld b, a
    xor a
    ld [hl+], a
    ld [hl], a
    ld [$d1ee], a
    ld [$d1ef], a
    ret


Call_00f_4c76:
    call Call_00f_4c8e
    srl c
    srl c
    ld a, c
    and a
    jr nz, jr_00f_4c82

    inc c

jr_00f_4c82:
    ret


Call_00f_4c83:
    call Call_00f_4c8e
    srl c
    ld a, c
    and a
    jr nz, jr_00f_4c8d

    inc c

jr_00f_4c8d:
    ret


Call_00f_4c8e:
    call Call_00f_4cac
    srl b
    rr c
    srl b
    rr c
    ld a, c
    and a
    jr nz, jr_00f_4c9e

    inc c

jr_00f_4c9e:
    ret


    call Call_00f_4cac
    srl b
    rr c
    ld a, c
    or b
    jr nz, jr_00f_4cab

    inc c

jr_00f_4cab:
    ret


Call_00f_4cac:
    ld hl, $c63e
    ldh a, [$e4]
    and a
    jr z, jr_00f_4cb7

    ld hl, $d218

jr_00f_4cb7:
    ld a, [hl+]
    ld [$d1eb], a
    ld b, a
    ld a, [hl]
    ld [$d1ea], a
    ld c, a
    ret


    ld hl, $c63c
    ldh a, [$e4]
    and a
    jr z, jr_00f_4ccd

    ld hl, $d216

jr_00f_4ccd:
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    srl b
    rr c
    ld a, [hl+]
    ld [$d1eb], a
    ld a, [hl]
    ld [$d1ea], a
    ret


    ld hl, $c63d
    ldh a, [$e4]
    and a
    jr z, jr_00f_4ce9

    ld hl, $d217

jr_00f_4ce9:
    ld a, c
    sub [hl]
    dec hl
    ld a, b
    sbc [hl]
    ret


Call_00f_4cef:
    ld hl, $d218
    ldh a, [$e4]
    and a
    jr z, jr_00f_4cfa

    ld hl, $c63e

jr_00f_4cfa:
    ld a, [hl+]
    ld [$d1eb], a
    ld a, [hl-]
    ld [$d1ea], a
    dec hl
    ld a, [hl]
    ld [$d1ec], a
    add c
    ld [hl-], a
    ld [$d1ee], a
    ld a, [hl]
    ld [$d1ed], a
    adc b
    ld [hl+], a
    ld [$d1ef], a
    ld a, [$d1ea]
    ld c, a
    ld a, [hl-]
    sub c
    ld a, [$d1eb]
    ld b, a
    ld a, [hl]
    sbc b
    jr c, jr_00f_4d2d

    ld a, b
    ld [hl+], a
    ld [$d1ef], a
    ld a, c
    ld [hl], a
    ld [$d1ee], a

jr_00f_4d2d:
    call Call_00f_48e4
    call Call_00f_4d36
    jp Jump_00f_48e4


Call_00f_4d36:
Jump_00f_4d36:
    call Call_00f_4d3c
    jp $39d4


Call_00f_4d3c:
Jump_00f_4d3c:
    ld hl, $c55e
    ldh a, [$e4]
    and a
    ld a, $01
    jr z, jr_00f_4d4a

    ld hl, $c4ca
    xor a

jr_00f_4d4a:
    push bc
    ld [$d10a], a
    ld a, $0b
    call $2d83
    pop bc
    ret


Call_00f_4d55:
Jump_00f_4d55:
    call Call_00f_4f14
    ld hl, $c63c
    ld a, [hl+]
    or [hl]
    call z, Call_00f_4ef1
    xor a
    ld [$c6f7], a
    call Call_00f_4e01
    call Call_00f_5873
    ld a, d
    and a
    jp z, Jump_00f_538e

    ld hl, $c63c
    ld a, [hl+]
    or [hl]
    call nz, Call_00f_5f48
    ld a, $01
    ldh [$d4], a
    ld c, $3c
    call $0468
    ld a, [$d22d]
    dec a
    jr nz, jr_00f_4d8c

    ld a, $01
    ld [$c734], a
    ret


jr_00f_4d8c:
    call Call_00f_4f35
    jp z, Jump_00f_4fa4

    ld hl, $c63c
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_4dba

    call Call_00f_51f8
    jr nc, jr_00f_4da4

    ld a, $01
    ld [$c734], a
    ret


jr_00f_4da4:
    call Call_00f_5227
    call Call_00f_52e0
    jp c, Jump_00f_40e5

    ld a, $01
    ld [$d0ec], a
    call Call_00f_4f4a
    jp z, Jump_00f_40e5

    jr jr_00f_4dca

jr_00f_4dba:
    ld a, $01
    ld [$d0ec], a
    call Call_00f_4f4a
    jp z, Jump_00f_40e5

    xor a
    ld [$d0ec], a
    ret


Jump_00f_4dca:
jr_00f_4dca:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_4de6

    call $300b
    ld hl, $c4a1
    ld bc, $040a
    call $0fb6
    call Call_00f_52b3
    ld a, $01
    call Call_00f_4f78
    jr jr_00f_4dfc

jr_00f_4de6:
    ld a, [$d109]
    push af
    ld a, $01
    call Call_00f_4f78
    call $300b
    call $309d
    pop af
    ld [$d109], a
    call Call_00f_52b3

jr_00f_4dfc:
    xor a
    ld [$d0ec], a
    ret


Call_00f_4e01:
    call $399c
    ld a, [$d22d]
    dec a
    jr z, jr_00f_4e16

    ld a, [$c663]
    ld hl, $d2aa
    call $3927
    xor a
    ld [hl+], a
    ld [hl], a

jr_00f_4e16:
    ld hl, $c66a
    res 2, [hl]
    xor a
    ld hl, $c684
    ld [hl+], a
    ld [hl], a
    call Call_00f_5834
    call Call_00f_5c18
    ld a, [$d22d]
    dec a
    jr z, jr_00f_4e2f

    jr jr_00f_4e37

jr_00f_4e2f:
    call Call_00f_4eec
    ld a, $01
    ld [$c6fd], a

jr_00f_4e37:
    ld hl, $c63c
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_4e47

    ld a, [$c6f7]
    and a
    jr nz, jr_00f_4e47

    call Call_00f_51aa

jr_00f_4e47:
    call Call_00f_5873
    ld a, d
    and a
    ret z

    ld a, [$d22d]
    dec a
    call z, Call_00f_50ea
    call Call_00f_6dd1
    call $309d
    ld a, [$d0ee]
    and $c0
    ld [$d0ee], a
    call Call_00f_4eaa
    jr z, jr_00f_4e72

    ld hl, $d226
    ld b, $07

jr_00f_4e6c:
    srl [hl]
    inc hl
    dec b
    jr nz, jr_00f_4e6c

jr_00f_4e72:
    ld hl, $d226
    ld de, $c720
    ld bc, $0007
    call $3026
    xor a
    ld [$c71f], a
    call Call_00f_6e3b
    call Call_00f_4eaa
    ret z

    ld a, [$c664]
    push af
    ld a, d
    ld [$c664], a
    ld hl, $c720
    ld de, $d226
    ld bc, $0007
    call $3026
    ld a, $01
    ld [$c71f], a
    call Call_00f_6e3b
    pop af
    ld [$c664], a
    ret


Call_00f_4eaa:
    ld a, [$dcd7]
    ld b, a
    ld hl, $dcdf
    ld c, $01
    ld d, $00

jr_00f_4eb5:
    push hl
    push bc
    ld bc, $0022
    add hl, bc
    ld a, [hl+]
    or [hl]
    pop bc
    pop hl
    jr z, jr_00f_4ed1

    push hl
    push bc
    ld bc, $0001
    add hl, bc
    pop bc
    ld a, [hl]
    pop hl
    cp $39
    jr nz, jr_00f_4ed1

    ld a, d
    or c
    ld d, a

jr_00f_4ed1:
    sla c
    push de
    ld de, $0030
    add hl, de
    pop de
    dec b
    jr nz, jr_00f_4eb5

    ld a, d
    ld e, $00
    ld b, $06

jr_00f_4ee1:
    srl a
    jr nc, jr_00f_4ee6

    inc e

jr_00f_4ee6:
    dec b
    jr nz, jr_00f_4ee1

    ld a, e
    and a
    ret


Call_00f_4eec:
    xor a
    ld [$c2a6], a
    ret


Call_00f_4ef1:
    call Call_00f_4eec
    call $3c55
    ld a, $f0
    ld [$c2bd], a
    ld a, [$c62c]
    call $37b6
    call Call_00f_543b
    ld hl, $c535
    ld bc, $050b
    call $0fb6
    ld hl, $4a75
    jp $3ad5


Call_00f_4f14:
    call $3c55
    ld de, $002f
    call $3c23
    call Call_00f_5432
    ld de, $002a
    call $3c23
    ld hl, $c4a1
    ld bc, $040a
    call $0fb6
    ld hl, $49a8
    jp $3ad5


Call_00f_4f35:
    ld a, [$d280]
    ld b, a
    xor a
    ld hl, $d2aa
    ld de, $0030

jr_00f_4f40:
    or [hl]
    inc hl
    or [hl]
    dec hl
    add hl, de
    dec b
    jr nz, jr_00f_4f40

    and a
    ret


Call_00f_4f4a:
    ld hl, $cd9a
    ld e, $30
    call Call_00f_612e
    call $31f6
    ld a, $0b
    ld hl, $4012
    rst $08
    ld a, [$c2dc]
    and a
    jr z, jr_00f_4f6d

    call Call_00f_68e4
    ld a, [$d430]
    cp $0f
    ret z

    call $30b4

jr_00f_4f6d:
    ld hl, $c63c
    ld a, [hl+]
    or [hl]
    ld a, $00
    jr nz, jr_00f_4f78

    inc a
    ret


Call_00f_4f78:
jr_00f_4f78:
    push af
    xor a
    ld [$c718], a
    call Call_00f_5834
    call Call_00f_5867
    call Call_00f_5c18
    pop af
    and a
    jr nz, jr_00f_4f8f

    call Call_00f_54e1
    jr jr_00f_4f92

jr_00f_4f8f:
    call Call_00f_5517

jr_00f_4f92:
    call Call_00f_557a
    call $3989
    call Call_00f_5c23
    xor a
    ld [$c608], a
    ld [$d0ec], a
    inc a
    ret


Jump_00f_4fa4:
    call Call_00f_4eec
    ld a, $01
    ld [$c6fd], a
    ld [$c734], a
    ld a, [$c2dc]
    and a
    ld a, b
    call z, Call_00f_50ea
    ld hl, $5939
    ld a, $0e
    rst $08
    ld hl, $49da
    call $3ad5
    call Call_00f_52f1
    jr z, jr_00f_4ff5

    ld a, [$c2dc]
    and a
    ret nz

    ld a, [$cfc0]
    bit 0, a
    jr nz, jr_00f_5006

    call Call_00f_6bd8
    ld c, $28
    call $0468
    ld a, [$d230]
    cp $01
    jr nz, jr_00f_4fe8

    ld a, $02
    call $2d83

jr_00f_4fe8:
    ld a, [$c2cc]
    bit 0, a
    jr nz, jr_00f_4ff2

    call $3718

jr_00f_4ff2:
    jp Jump_00f_502b


jr_00f_4ff5:
    call Call_00f_6bd8
    ld c, $28
    call $0468
    ld c, $04
    ld a, $13
    ld hl, $6a0a
    rst $08
    ret


jr_00f_5006:
    call Call_00f_6bd8
    ld c, $28
    call $0468
    call Call_00f_6dd1
    ld c, $03
    ld a, $47
    ld hl, $4000
    rst $08
    call $0a80
    ld hl, $c6ec
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    ret nz

    call $0fc8
    call $31f3
    ret


Jump_00f_502b:
    ld a, [$c73d]
    and a
    call nz, Call_00f_5099
    call Call_00f_50b1
    push af
    ld a, $00
    jr nc, jr_00f_5044

    ld a, [$d854]
    and $07
    cp $03
    jr nz, jr_00f_5044

    inc a

jr_00f_5044:
    ld b, a
    ld c, $04

jr_00f_5047:
    ld a, b
    and a
    jr z, jr_00f_5052

    call Call_00f_5081
    dec c
    dec b
    jr jr_00f_5047

jr_00f_5052:
    ld a, c
    and a
    jr z, jr_00f_505c

    call Call_00f_508d
    dec c
    jr jr_00f_5052

jr_00f_505c:
    call Call_00f_5099
    call Call_00f_5099
    pop af
    jr nc, jr_00f_507b

    ld a, [$d854]
    and $07
    jr z, jr_00f_507b

    ld hl, $50ab
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp $3ad5


jr_00f_507b:
    ld hl, $49be
    jp $3ad5


Call_00f_5081:
    push bc
    ld hl, $c688
    ld de, $d853
    call Call_00f_50be
    pop bc
    ret


Call_00f_508d:
    push bc
    ld hl, $c688
    ld de, $d850
    call Call_00f_50be
    pop bc
    ret


Call_00f_5099:
    ld hl, $c688
    sla [hl]
    dec hl
    rl [hl]
    dec hl
    rl [hl]
    ret nc

    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


    db $fc
    ld c, c
    ld a, [hl+]
    ld c, d
    dec a
    ld c, d

Call_00f_50b1:
    ld hl, $d853
    ld a, [hl-]
    cp $3f
    ld a, [hl-]
    sbc $42
    ld a, [hl]
    sbc $0f
    ret


Call_00f_50be:
    ld c, $03
    and a
    push de
    push hl
    push bc
    ld b, h
    ld c, l
    ld a, $41
    ld hl, $6008
    rst $08
    pop bc
    pop hl

jr_00f_50ce:
    ld a, [de]
    adc [hl]
    ld [de], a
    dec de
    dec hl
    dec c
    jr nz, jr_00f_50ce

    pop hl
    ld a, [hl-]
    cp $3f
    ld a, [hl-]
    sbc $42
    ld a, [hl]
    sbc $0f
    ret c

    ld [hl], $0f
    inc hl
    ld [hl], $42
    inc hl
    ld [hl], $3f
    ret


Call_00f_50ea:
    push de
    ld de, $0000
    call $3b97
    call $045a
    ld de, $0018
    ld a, [$d22d]
    dec a
    jr nz, jr_00f_5113

    push de
    call Call_00f_4eaa
    pop de
    jr nz, jr_00f_511e

    ld hl, $c6ec
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_511e

    ld a, [$c664]
    and a
    jr z, jr_00f_5121

    jr jr_00f_511e

jr_00f_5113:
    ld de, $0019
    call Call_00f_5128
    jr c, jr_00f_511e

    ld de, $0017

jr_00f_511e:
    call $3b97

jr_00f_5121:
    pop de
    ret


    ld hl, $5145
    jr jr_00f_512b

Call_00f_5128:
    ld hl, $5137

jr_00f_512b:
    push de
    ld a, [$d22f]
    ld de, $0001
    call $30e1
    pop de
    ret


    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0d0b], sp
    ld c, $0f
    db $10
    ccf
    ld de, $1312
    dec d
    ld a, [de]
    inc hl
    ld l, $40
    rst $38

Call_00f_514e:
Jump_00f_514e:
    call Call_00f_4ef1
    ld hl, $d216
    ld a, [hl+]
    or [hl]
    call z, Call_00f_4f14
    ld a, $01
    ld [$c6f7], a
    call Call_00f_51aa
    call Call_00f_5873
    ld a, d
    and a
    jp z, Jump_00f_538e

    ld hl, $d216
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_5185

    call Call_00f_4e01
    ld a, [$d22d]
    dec a
    jr nz, jr_00f_517f

    ld a, $01
    ld [$c734], a
    ret


jr_00f_517f:
    call Call_00f_4f35
    jp z, Jump_00f_4fa4

jr_00f_5185:
    call Call_00f_51f8
    jr nc, jr_00f_5190

    ld a, $01
    ld [$c734], a
    ret


jr_00f_5190:
    call Call_00f_5227
    call Call_00f_52e0
    jp c, Jump_00f_40e5

    ld a, c
    and a
    ret nz

    ld a, $01
    ld [$d0ec], a
    call Call_00f_4f4a
    jp z, Jump_00f_40e5

    jp Jump_00f_4dca


Call_00f_51aa:
    ld a, [$d0d4]
    ld c, a
    ld hl, $c664
    ld b, $00
    ld a, $03
    call $2d83
    ld hl, $c66f
    res 2, [hl]
    xor a
    ld [$c2a6], a
    ld hl, $c682
    ld [hl+], a
    ld [hl], a
    ld [$c63a], a
    call $399c
    ld c, $06
    ld a, [$c639]
    add $1e
    ld b, a
    ld a, [$d213]
    cp b
    jr c, jr_00f_51dc

    ld c, $08

jr_00f_51dc:
    ld a, [$d0d4]
    ld [$d109], a
    ld hl, $71c2
    ld a, $01
    rst $08
    ld a, [$d0ee]
    and $c0
    add $01
    ld [$d0ee], a
    ld a, [$c6f7]
    and a
    ret z

    ret


Call_00f_51f8:
    call Call_00f_6dd1
    call $309d
    ld a, [$d22d]
    and a
    dec a
    ret nz

    ld hl, $4a83
    call $3ad5

jr_00f_520a:
    ld bc, $0107
    call $1dd2
    ld a, [$cfa9]
    jr c, jr_00f_5217

    and a
    ret


jr_00f_5217:
    ld a, [$cfa9]
    cp $01
    jr z, jr_00f_520a

    ld hl, $dd09
    ld de, $d21e
    jp Jump_00f_58b3


Call_00f_5227:
    call Call_00f_6dd1
    call $1d6e
    call Call_00f_52f7
    call Call_00f_5362
    ld a, [$c2dc]
    and a
    jr z, jr_00f_5241

    ld a, $01
    ld [$d0ec], a
    call Call_00f_68e4

jr_00f_5241:
    xor a
    ld [$d0ec], a
    call Call_00f_52e0
    jr c, jr_00f_5251

    ld hl, $d216
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_526c

jr_00f_5251:
    call $300b
    call $31f3
    call Call_00f_6da6
    call $1c07
    call $309d
    call $31f6
    call $333e
    call $32f9
    xor a
    ld c, a
    ret


jr_00f_526c:
    call $300b
    ld a, [$d0d4]
    ld [$c71a], a
    ld a, [$d109]
    ld [$d0d4], a
    call Call_00f_5581
    call Call_00f_5a0d
    call Call_00f_5ab1
    call $3317
    call $045a
    call Call_00f_6da6
    call $1c17
    call $333e
    call $32f9
    call Call_00f_726d
    call Call_00f_5bde
    call Call_00f_5c18
    call Call_00f_5b5f
    call Call_00f_6dd1
    call $309d
    call $3985
    call Call_00f_5c23
    ld a, $01
    and a
    ld c, a
    ret


Call_00f_52b3:
    ld a, [$d0d4]
    ld [$c71a], a
    ld a, [$d109]
    ld [$d0d4], a
    call Call_00f_5581
    call Call_00f_5a0d
    call Call_00f_5ab1
    call Call_00f_726d
    call Call_00f_5bde
    call Call_00f_5c18
    call Call_00f_5b5f
    call Call_00f_6dd1
    call $309d
    call $3985
    jp Jump_00f_5c23


Call_00f_52e0:
    ld a, [$c2dc]
    cp $04
    jr nz, jr_00f_52ef

    ld a, [$cd2b]
    and a
    jr z, jr_00f_52ef

    scf
    ret


jr_00f_52ef:
    xor a
    ret


Call_00f_52f1:
    ld a, [$c2dc]
    cp $04
    ret


Call_00f_52f7:
    call $31f3

Call_00f_52fa:
    ld a, $14
    ld hl, $404f
    rst $08
    ld a, $14
    ld hl, $4405
    rst $08
    ld a, $02
    ld hl, $4e85
    rst $08
    ld a, $14
    ld hl, $43e0
    rst $08
    ret


Call_00f_5313:
    ld a, $14
    ld hl, $405f
    rst $08
    ld a, $14
    ld hl, $449a
    rst $08
    call $31f6
    call $32f9
    call $045a
    ret


Call_00f_5329:
    call Call_00f_52f1
    jr z, jr_00f_5335

    ld a, $14
    ld hl, $4457
    rst $08
    ret


jr_00f_5335:
    ld a, $40
    ld hl, $4cb5
    rst $08
    ret


Call_00f_533c:
jr_00f_533c:
    ld a, $02
    ld [$d141], a
    call Call_00f_5313
    call Call_00f_5329
    ret c

    call Call_00f_5887
    jr z, jr_00f_533c

    xor a
    ret


Call_00f_534f:
    ld hl, $d0d4
    ld a, [$d109]
    cp [hl]
    jr nz, jr_00f_5360

    ld hl, $4c0d
    call $3ad5
    scf
    ret


jr_00f_5360:
    xor a
    ret


Call_00f_5362:
jr_00f_5362:
    call Call_00f_533c
    ret nc

    call Call_00f_52e0
    ret c

    ld de, $0019
    call $3c23
    call $3c55
    jr jr_00f_5362

Call_00f_5375:
jr_00f_5375:
    call Call_00f_533c
    ret c

    call Call_00f_534f
    jr c, jr_00f_5375

    xor a
    ret


jr_00f_5380:
    call Call_00f_5362
    call Call_00f_52e0
    ret c

    call Call_00f_534f
    jr c, jr_00f_5380

    xor a
    ret


Jump_00f_538e:
    ld a, $01
    ld [$c734], a
    ld a, [$cfc0]
    bit 0, a
    jr nz, jr_00f_53bd

    ld a, [$d230]
    cp $01
    jr nz, jr_00f_53e3

    ld hl, $c4a0
    ld bc, $0815
    call $0fb6
    call Call_00f_6bd8
    ld c, $28
    call $0468
    ld a, [$c2cc]
    bit 0, a
    jr nz, jr_00f_53bc

    call $3718

jr_00f_53bc:
    ret


jr_00f_53bd:
    ld hl, $c4a0
    ld bc, $0815
    call $0fb6
    call Call_00f_6bd8
    ld c, $28
    call $0468
    call Call_00f_6dd1
    ld c, $02
    ld a, $47
    ld hl, $4000
    rst $08
    call $0a80
    call $0fc8
    call $31f3
    ret


jr_00f_53e3:
    ld a, [$c2dc]
    and a
    jr nz, jr_00f_53f3

    ld b, $00
    call $3340
    call $32f9
    jr jr_00f_5415

jr_00f_53f3:
    call $39b0
    call Call_00f_4f35
    jr nz, jr_00f_540a

    ld hl, $49eb
    ld a, [$d0ee]
    and $c0
    add $02
    ld [$d0ee], a
    jr jr_00f_5412

jr_00f_540a:
    ld hl, $4ab9
    call Call_00f_52f1
    jr z, jr_00f_5417

jr_00f_5412:
    call $3ad5

jr_00f_5415:
    scf
    ret


jr_00f_5417:
    ld hl, $c4a0
    ld bc, $0815
    call $0fb6
    call Call_00f_6bd8
    ld c, $28
    call $0468
    ld c, $03
    ld a, $13
    ld hl, $6a0a
    rst $08
    scf
    ret


Call_00f_5432:
    ld hl, $c510
    ld de, $c524
    jp Jump_00f_5444


Call_00f_543b:
    ld hl, $c569
    ld de, $c57d
    jp Jump_00f_5444


Jump_00f_5444:
    ld a, [$cfbe]
    push af
    set 6, a
    ld [$cfbe], a
    ld b, $07

jr_00f_544f:
    push bc
    push de
    push hl
    ld b, $06

jr_00f_5454:
    push bc
    push hl
    push de
    ld bc, $0007
    call $3026
    pop de
    pop hl
    ld bc, $ffec
    add hl, bc
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    pop bc
    dec b
    jr nz, jr_00f_5454

    ld bc, $0014
    add hl, bc
    ld de, $5488
    call $1078
    ld c, $02
    call $0468
    pop hl
    pop de
    pop bc
    dec b
    jr nz, jr_00f_544f

    pop af
    ld [$cfbe], a
    ret


    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld d, b

Call_00f_5490:
    ldh [$af], a
    ld c, a

jr_00f_5493:
    push bc
    push hl
    ld b, $07

jr_00f_5497:
    push hl
    call Call_00f_54ae
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_00f_5497

    ld c, $02
    call $0468
    pop hl
    pop bc
    dec c
    jr nz, jr_00f_5493

    ret


Call_00f_54ae:
    ldh a, [$af]
    ld c, a
    cp $08
    jr nz, jr_00f_54bc

jr_00f_54b5:
    ld a, [hl+]
    ld [hl-], a
    dec hl
    dec c
    jr nz, jr_00f_54b5

    ret


jr_00f_54bc:
    ld a, [hl-]
    ld [hl+], a
    inc hl
    dec c
    jr nz, jr_00f_54bc

    ret


    call Call_00f_5557
    ld a, [$c718]
    dec a
    ld b, a
    call Call_00f_56ca
    call Call_00f_57a0
    call Call_00f_5834
    call Call_00f_5867
    call Call_00f_57c7
    call Call_00f_5c18
    call Call_00f_557a
    ret


Call_00f_54e1:
    call Call_00f_5714
    jr nc, jr_00f_5517

    call Call_00f_5557
    call Call_00f_5533
    jr c, jr_00f_54f1

    call Call_00f_5599

jr_00f_54f1:
    call Call_00f_56ca
    call Call_00f_574b
    push af
    call Call_00f_57a0
    call Call_00f_57b8
    call Call_00f_57c7
    pop af
    ret c

    xor a
    ld [$c664], a
    ld [$c6fc], a
    ld [$d0ec], a
    inc a
    ld [$c711], a
    call $309d
    jp Jump_00f_63ad


Call_00f_5517:
jr_00f_5517:
    call Call_00f_5557
    call Call_00f_5533
    jr c, jr_00f_5522

    call Call_00f_5599

jr_00f_5522:
    call Call_00f_56ca
    ld a, $01
    ld [$c711], a
    call Call_00f_57a0
    call Call_00f_57b8
    jp Jump_00f_57c7


Call_00f_5533:
    ld a, [$c2dc]
    and a
    jr z, jr_00f_5541

    ld a, [$d430]
    sub $04
    ld b, a
    jr jr_00f_5555

jr_00f_5541:
    ld a, [$c718]
    and a
    jr z, jr_00f_554b

    dec a
    ld b, a
    jr jr_00f_5555

jr_00f_554b:
    ld a, [$d264]
    and a
    ld b, $00
    jr nz, jr_00f_5555

    and a
    ret


jr_00f_5555:
    scf
    ret


Call_00f_5557:
    xor a
    ld [$c6f8], a
    ld [$c6f9], a
    ld [$c71c], a
    ld [$c6e4], a
    dec a
    ld [$c6e6], a
    xor a
    ld [$c730], a
    ld hl, $c4b2
    ld a, $08
    call Call_00f_5490
    call Call_00f_6dd1
    jp $1d6e


Call_00f_557a:
Jump_00f_557a:
    xor a
    ld [$c664], a
    ld [$c6fc], a

Call_00f_5581:
    ld a, [$d0d4]
    ld c, a
    ld hl, $c664
    ld b, $01
    push bc
    ld a, $03
    call $2d83
    pop bc
    ld hl, $c6fc
    ld a, $03
    jp $2d83


Call_00f_5599:
    ld b, $ff
    ld a, $01
    ld [$d1ea], a
    ld [$d1eb], a

jr_00f_55a3:
    ld hl, $d1ea
    sla [hl]
    inc hl
    sla [hl]
    inc b
    ld a, [$d280]
    cp b
    jp z, Jump_00f_5672

    ld a, [$c663]
    cp b
    jr z, jr_00f_55d0

    ld hl, $d2aa
    push bc
    ld a, b
    call $3927
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    or c
    pop bc
    jr z, jr_00f_55d0

    call Call_00f_55d7
    call Call_00f_5618
    jr jr_00f_55a3

jr_00f_55d0:
    ld hl, $d1eb
    set 0, [hl]
    jr jr_00f_55a3

Call_00f_55d7:
    push bc
    ld hl, $d28a
    ld a, b
    call $3927
    pop bc
    ld e, $05

jr_00f_55e2:
    dec e
    jr z, jr_00f_5617

    ld a, [hl+]
    and a
    jr z, jr_00f_5617

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
    call $3989
    ld hl, $47c8
    ld a, $0d
    rst $08
    pop bc
    pop de
    pop hl
    ld a, [$d265]
    cp $0b
    jr c, jr_00f_55e2

    ld hl, $d1ea
    set 0, [hl]
    ret


jr_00f_5617:
    ret


Call_00f_5618:
    push bc
    ld hl, $d280
    ld a, b
    inc a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    dec a
    ld hl, $542b
    ld bc, $0020
    call $30fe
    ld de, $d224
    ld bc, $0002
    ld a, $14
    call $0e8d
    ld a, [$c64a]
    ld [$c612], a
    call $3985
    ld hl, $47c8
    ld a, $0d
    rst $08
    ld a, [$d265]
    cp $0b
    jr nc, jr_00f_5663

    ld a, [$c64b]
    ld [$c612], a
    ld hl, $47c8
    ld a, $0d
    rst $08
    ld a, [$d265]
    cp $0b
    jr nc, jr_00f_5663

    pop bc
    ret


jr_00f_5663:
    pop bc
    ld hl, $d1ea
    bit 0, [hl]
    jr nz, jr_00f_566f

    inc hl
    set 0, [hl]
    ret


jr_00f_566f:
    res 0, [hl]
    ret


Jump_00f_5672:
jr_00f_5672:
    ld hl, $d1ea
    sla [hl]
    inc hl
    sla [hl]
    jr nc, jr_00f_5672

    ld a, [$d280]
    ld b, a
    ld c, [hl]

jr_00f_5681:
    sla c
    jr nc, jr_00f_568a

    dec b
    jr z, jr_00f_56a7

    jr jr_00f_5681

jr_00f_568a:
    ld a, [$d1ea]
    and a
    jr z, jr_00f_569a

    ld b, $ff
    ld c, a

jr_00f_5693:
    inc b
    sla c
    jr nc, jr_00f_5693

    jr jr_00f_56c9

jr_00f_569a:
    ld b, $ff
    ld a, [$d1eb]
    ld c, a

jr_00f_56a0:
    inc b
    sla c
    jr c, jr_00f_56a0

    jr jr_00f_56c9

jr_00f_56a7:
    ld a, [$d280]
    ld b, a
    call $2f9f
    and $07
    cp b
    jr nc, jr_00f_56a7

    ld b, a
    ld a, [$c663]
    cp b
    jr z, jr_00f_56a7

    ld hl, $d2aa
    push bc
    ld a, b
    call $3927
    pop bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    or c
    jr z, jr_00f_56a7

jr_00f_56c9:
    ret


Call_00f_56ca:
    ld a, b
    ld [$d109], a
    ld hl, $d2a7
    call $3927
    ld a, [hl]
    ld [$d143], a
    ld a, [$d109]
    inc a
    ld hl, $d280
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d204], a
    ld [$d108], a
    call Call_00f_68eb
    ld a, [$d108]
    cp $c9
    jr nz, jr_00f_5708

    ld a, [$def4]
    and a
    jr nz, jr_00f_5708

    ld hl, $d20c
    ld a, $2d
    call $2d83
    ld a, [$d234]
    ld [$def4], a

jr_00f_5708:
    ld hl, $d216
    ld a, [hl+]
    ld [$c6ea], a
    ld a, [hl]
    ld [$c6eb], a
    ret


Call_00f_5714:
    ld a, [$d264]
    dec a
    jp z, Jump_00f_5749

    ld a, [$dcd7]
    dec a
    jp z, Jump_00f_5749

    ld a, [$c2dc]
    and a
    jp nz, Jump_00f_5749

    ld a, [$cfcc]
    bit 6, a
    jr nz, jr_00f_5749

    ld a, [$d109]
    push af
    ld a, [$d0d4]
    ld [$d109], a
    ld a, $03
    ld hl, $6538
    rst $08
    pop bc
    ld a, b
    ld [$d109], a
    jr c, jr_00f_5749

    scf
    ret


Jump_00f_5749:
jr_00f_5749:
    and a
    ret


Call_00f_574b:
    ld a, [$d109]
    push af
    ld hl, $5939
    ld a, $0e
    rst $08
    ld hl, $4aca
    call $3ad5
    ld bc, $0107
    call $1dd2
    ld a, [$cfa9]
    dec a
    jr nz, jr_00f_579a

    call Call_00f_52f7
    call Call_00f_5375
    jr c, jr_00f_5791

    ld a, [$d0d4]
    ld [$c71a], a
    ld a, [$d109]
    ld [$d0d4], a
    call $3317
    call $045a
    call Call_00f_6da6
    pop af
    ld [$d109], a
    xor a
    ld [$c6e4], a
    ld [$c6e3], a
    and a
    ret


jr_00f_5791:
    call $3317
    call $045a
    call Call_00f_6da6

jr_00f_579a:
    pop af
    ld [$d109], a
    scf
    ret


Call_00f_57a0:
    xor a
    ldh [$d4], a
    call $1c07
    call $300b
    ld hl, $c4a1
    ld bc, $040a
    call $0fb6
    call $31f6
    jp Jump_00f_6e27


Call_00f_57b8:
    ld hl, $5939
    ld a, $0e
    rst $08
    ld hl, $4af8
    call $3ad5
    jp $31f6


Call_00f_57c7:
Jump_00f_57c7:
    ld a, [$d204]
    ld [$d108], a
    ld [$cf60], a
    call $3856
    ld a, $01
    ld [$cf5f], a
    ld a, $1f
    call $2d83
    call Call_00f_747c
    xor a
    ld [$cfca], a
    ld [$c689], a
    call $3989
    ld de, $0101
    call Call_00f_6e17
    call Call_00f_5a79
    jr nc, jr_00f_5800

    ld a, $01
    ld [$c689], a
    ld de, $0101
    call Call_00f_6e17

jr_00f_5800:
    ld bc, $d10e
    ld a, $13
    ld hl, $653f
    rst $08
    jr c, jr_00f_582c

    ld a, $13
    ld hl, $6a44
    rst $08
    jr c, jr_00f_5821

    ld hl, $c4ac
    ld d, $00
    ld e, $00
    ld a, $47
    call $2d83
    jr jr_00f_582c

jr_00f_5821:
    ld a, $0f
    ld [$c2bd], a
    ld a, [$d204]
    call $37b6

jr_00f_582c:
    call Call_00f_6036
    ld a, $01
    ldh [$d4], a
    ret


Call_00f_5834:
    xor a
    ld [$c6f8], a
    ld [$c6f9], a
    ld [$c71c], a
    ld hl, $c66d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$c67d], a
    ld [$c680], a
    ld [$c681], a
    ld [$c72c], a
    ld [$c6f6], a
    ld [$c6fa], a
    ld [$c730], a
    ld [$c731], a
    ld [$c6dc], a
    ld hl, $c66c
    res 7, [hl]
    ret


Call_00f_5867:
    ld a, $07
    ld b, $08
    ld hl, $c6d4

jr_00f_586e:
    ld [hl+], a
    dec b
    jr nz, jr_00f_586e

    ret


Call_00f_5873:
    ld a, [$dcd7]
    ld e, a
    xor a
    ld hl, $dd01
    ld bc, $002f

jr_00f_587e:
    or [hl]
    inc hl
    or [hl]
    add hl, bc
    dec e
    jr nz, jr_00f_587e

    ld d, a
    ret


Call_00f_5887:
    ld a, [$d109]
    ld hl, $dd01
    call $3927
    ld a, [hl+]
    or [hl]
    ret nz

    ld a, [$d264]
    and a
    jr nz, jr_00f_58b1

    ld hl, $dcd8
    ld a, [$d109]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $fd
    ld hl, $4b26
    jr z, jr_00f_58ae

    ld hl, $4b0b

jr_00f_58ae:
    call $3ad5

jr_00f_58b1:
    xor a
    ret


Call_00f_58b3:
Jump_00f_58b3:
    ld a, [$d230]
    cp $02
    jp z, Jump_00f_59a2

    cp $06
    jp z, Jump_00f_59a2

    cp $09
    jp z, Jump_00f_598d

    cp $0b
    jp z, Jump_00f_598d

    cp $07
    jp z, Jump_00f_598d

    cp $0c
    jp z, Jump_00f_598d

    ld a, [$c2dc]
    and a
    jp nz, Jump_00f_59a2

    ld a, [$d22d]
    dec a
    jp nz, Jump_00f_5992

    ld a, [$c671]
    bit 7, a
    jp nz, Jump_00f_598d

    ld a, [$c730]
    and a
    jp nz, Jump_00f_598d

    push hl
    push de
    ld a, [$c62d]
    ld [$d265], a
    ld b, a
    ld hl, $7dd0
    ld a, $0d
    rst $08
    ld a, b
    cp $48
    pop de
    pop hl
    jr nz, jr_00f_5916

    call $3985
    call $3468
    ld hl, $4b89
    call $3ad5
    jp Jump_00f_59a2


jr_00f_5916:
    ld a, [$d267]
    inc a
    ld [$d267], a
    ld a, [hl+]
    ldh [$b5], a
    ld a, [hl]
    ldh [$b6], a
    ld a, [de]
    inc de
    ldh [$b1], a
    ld a, [de]
    ldh [$b2], a
    call $30b4
    ld de, $ffb5
    ld hl, $ffb1
    ld c, $02
    call $31db
    jr nc, jr_00f_59a2

    xor a
    ldh [$b4], a
    ld a, $20
    ldh [$b7], a
    call $3119
    ldh a, [$b5]
    ldh [$b3], a
    ldh a, [$b6]
    ldh [$b4], a
    ldh a, [$b1]
    ld b, a
    ldh a, [$b2]
    srl b
    rr a
    srl b
    rr a
    and a
    jr z, jr_00f_59a2

    ldh [$b7], a
    ld b, $02
    call $3124
    ldh a, [$b5]
    and a
    jr nz, jr_00f_59a2

    ld a, [$d267]
    ld c, a

jr_00f_596c:
    dec c
    jr z, jr_00f_597a

    ld b, $1e
    ldh a, [$b6]
    add b
    ldh [$b6], a
    jr c, jr_00f_59a2

    jr jr_00f_596c

jr_00f_597a:
    call $2f9f
    ld b, a
    ldh a, [$b6]
    cp b
    jr nc, jr_00f_59a2

    ld a, $01
    ld [$d0ec], a
    ld hl, $4b3b
    jr jr_00f_5995

Jump_00f_598d:
    ld hl, $4ba0
    jr jr_00f_5995

Jump_00f_5992:
    ld hl, $4b49

jr_00f_5995:
    call $3ad5
    ld a, $01
    ld [$d266], a
    call $309d
    and a
    ret


Jump_00f_59a2:
jr_00f_59a2:
    ld a, [$c2dc]
    and a
    ld a, $02
    jr z, jr_00f_59cf

    call $309d
    xor a
    ld [$d0ec], a
    ld a, $0f
    ld [$d0d5], a
    xor a
    ld [$c6e3], a
    call Call_00f_68e4
    call $30b4
    call Call_00f_52e0
    jr c, jr_00f_59f5

    ld a, [$d430]
    cp $0f
    ld a, $02
    jr z, jr_00f_59cf

    dec a

jr_00f_59cf:
    ld b, a
    ld a, [$d0ee]
    and $c0
    add b
    ld [$d0ee], a
    call Call_00f_4eec
    push de
    ld de, $002b
    call $3c4e
    pop de
    call $3c55
    ld hl, $4b77
    call $3ad5
    call $3c55
    call $309d
    scf
    ret


jr_00f_59f5:
    call Call_00f_4eec
    ld hl, $cd2a
    bit 4, [hl]
    jr nz, jr_00f_5a05

    ld hl, $5863
    call $3ad5

jr_00f_5a05:
    call $3c55
    call $309d
    scf
    ret


Call_00f_5a0d:
    ld a, $00
    call $3917
    ld de, $c62c
    ld bc, $0006
    call $3026
    ld bc, $000f
    add hl, bc
    ld de, $c632
    ld bc, $0007
    call $3026
    inc hl
    inc hl
    inc hl
    ld de, $c639
    ld bc, $0011
    call $3026
    ld a, [$c62c]
    ld [$d205], a
    ld [$d108], a
    ld [$cf60], a
    call $3856
    ld a, [$d23d]
    ld [$c64a], a
    ld a, [$d23e]
    ld [$c64b], a
    ld hl, $de41
    ld a, [$d0d4]
    call $30f4
    ld de, $c621
    ld bc, $000b
    call $3026
    ld hl, $c640
    ld de, $c6b6
    ld bc, $000a
    call $3026
    call Call_00f_6c2c
    call $6d45
    ret


Call_00f_5a74:
    call Call_00f_5a85
    jr jr_00f_5a7c

Call_00f_5a79:
    call Call_00f_5a97

jr_00f_5a7c:
    ld b, h
    ld c, l
    ld hl, $4a68
    ld a, $02
    rst $08
    ret


Call_00f_5a85:
    ld hl, $c632
    ld a, [$c66c]
    bit 3, a
    ret z

    ld hl, $dcf4
    ld a, [$d0d4]
    jp $3927


Call_00f_5a97:
    ld hl, $d20c
    ld a, [$c671]
    bit 3, a
    ret z

    ld hl, $c6f2
    ld a, [$d22d]
    dec a
    ret z

    ld hl, $d29d
    ld a, [$c663]
    jp $3927


Call_00f_5ab1:
    ld a, $07
    ld b, $08
    ld hl, $c6cc

jr_00f_5ab8:
    ld [hl+], a
    dec b
    jr nz, jr_00f_5ab8

    ret


Jump_00f_5abd:
    ld a, [$d109]
    ld hl, $d288
    call $3927
    ld de, $d206
    ld bc, $0006
    call $3026
    ld bc, $000f
    add hl, bc
    ld de, $d20c
    ld bc, $0007
    call $3026
    inc hl
    inc hl
    inc hl
    ld de, $d213
    ld bc, $0011
    call $3026
    ld a, [$d206]
    ld [$cf60], a
    call $3856
    ld hl, $d3ea
    ld a, [$d109]
    call $30f4
    ld de, $c616
    ld bc, $000b
    call $3026
    ld hl, $d21a
    ld de, $c6c1
    ld bc, $000a
    call $3026
    call Call_00f_6c30
    ld hl, $d23d
    ld de, $d224
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $d237
    ld de, $d226
    ld b, $05

jr_00f_5b25:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00f_5b25

    ld a, [$d109]
    ld [$c663], a
    ret


    call $300b
    ld a, [$d0d4]
    ld [$c71a], a
    ld a, [$d109]
    ld [$d0d4], a
    call Call_00f_5581
    call Call_00f_5a0d
    call Call_00f_5ab1
    call Call_00f_5bde
    call Call_00f_5c18
    call Call_00f_5b5f
    call Call_00f_6dd1
    call $309d
    ld hl, $d216
    ld a, [hl+]
    or [hl]
    ret


Call_00f_5b5f:
    ld hl, $c632
    ld a, $2d
    call $2d83
    ld hl, $c505
    ld b, $07
    ld c, $08
    call $0fb6
    call $31f6
    xor a
    ldh [$d4], a
    call Call_00f_743d
    xor a
    ldh [$ad], a
    ld [$d0d2], a
    ld [$d0d5], a
    ld [$c665], a
    ld [$c60f], a
    ld [$c6f8], a
    ld [$c6f9], a
    ld [$c71b], a
    call Call_00f_64a8
    call Call_00f_6e27
    xor a
    ld [$c731], a
    call $3985
    xor a
    ld [$cfca], a
    ld [$c689], a
    ld de, $0101
    call Call_00f_6e17
    call Call_00f_5a74
    jr nc, jr_00f_5bbc

    ld a, $01
    ld [$c689], a
    ld de, $0101
    call Call_00f_6e17

jr_00f_5bbc:
    ld a, $00
    call $3917
    ld b, h
    ld c, l
    ld a, $13
    ld hl, $653f
    rst $08
    jr c, jr_00f_5bd6

    ld a, $f0
    ld [$c2bd], a
    ld a, [$d108]
    call $37b6

jr_00f_5bd6:
    call Call_00f_5f48
    ld a, $01
    ldh [$d4], a
    ret


Call_00f_5bde:
    xor a
    ld [$c6f8], a
    ld [$c6f9], a
    ld [$c71b], a
    ld hl, $c668
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c712
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$c675], a
    ld [$c678], a
    ld [$c679], a
    ld [$c72b], a
    ld [$c6f5], a
    ld [$c6fe], a
    ld [$c731], a
    ld [$c730], a
    ld [$c6dd], a
    ld hl, $c671
    res 7, [hl]
    ret


Call_00f_5c18:
    ld hl, $c668
    res 7, [hl]
    ld hl, $c66d
    res 7, [hl]
    ret


Call_00f_5c23:
Jump_00f_5c23:
    ld hl, $c6ff
    ld de, $c64a
    ld bc, $5f48
    ldh a, [$e4]
    and a
    jr z, jr_00f_5c3a

    ld hl, $c700
    ld de, $d224
    ld bc, $6036

jr_00f_5c3a:
    bit 0, [hl]
    ret z

    ld a, [de]
    cp $02
    ret z

    inc de
    ld a, [de]
    cp $02
    ret z

    push bc
    ld hl, $4bae
    call $3ad5
    call Call_00f_4c83
    call Call_00f_4c39
    pop hl
    call Call_00f_5c5a
    jp $31f6


Call_00f_5c5a:
    jp hl


Call_00f_5c5b:
    ld a, $10
    call $39e1
    ld b, a
    call Call_00f_45ec
    ld a, b
    cp $80
    jr nz, jr_00f_5ce4

    ld a, [$d0d4]
    push af
    ld hl, $4000
    ldh a, [$e4]
    and a
    jr z, jr_00f_5c7e

    ld hl, $400a
    ld a, [$c71a]
    ld [$d0d4], a

jr_00f_5c7e:
    ld a, $0d
    rst $08
    ld a, $10
    call $39e7
    ld a, $ff
    ld [hl], a
    pop af
    ld [$d0d4], a
    ldh a, [$e4]
    and a
    jr z, jr_00f_5cc0

    ld a, [$c71a]
    call $399f
    ld hl, $c63c
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_5ce4

    ld a, $f0
    ld [$c2bd], a
    ld a, [$c62c]
    call $37b6
    ld a, [$c71a]
    ld c, a
    ld hl, $c664
    ld b, $00
    ld a, $03
    call $2d83
    call Call_00f_543b
    ld hl, $4a75
    jr jr_00f_5cdf

jr_00f_5cc0:
    ld hl, $d216
    ld a, [hl+]
    or [hl]
    jr nz, jr_00f_5ce4

    ld de, $002f
    call $3c23
    call $3c55
    ld de, $002a
    call $3c23
    call $3c55
    call Call_00f_5432
    ld hl, $49a8

jr_00f_5cdf:
    call $3ad5
    scf
    ret


jr_00f_5ce4:
    and a
    ret


Call_00f_5ce6:
    ldh a, [$e4]
    push af
    xor a
    ldh [$e4], a
    ld [$cfca], a
    ld de, $0102
    call Call_00f_6e17
    pop af
    ldh [$e4], a
    ret


Call_00f_5cf9:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_5d17

    call $3985
    call Call_00f_5d2f
    call Call_00f_5de9
    call Call_00f_5e51
    call $3989
    call Call_00f_5d2f
    call Call_00f_5de9
    jp Jump_00f_5e51


jr_00f_5d17:
    call $3989
    call Call_00f_5d2f
    call Call_00f_5de9
    call Call_00f_5e51
    call $3985
    call Call_00f_5d2f
    call Call_00f_5de9
    jp Jump_00f_5e51


Call_00f_5d2f:
    ld hl, $7dc1
    ld a, $0d
    rst $08
    ld a, b
    cp $01
    ret nz

    ld de, $d217
    ld hl, $d218
    ldh a, [$e4]
    and a
    jr z, jr_00f_5d4a

    ld de, $c63d
    ld hl, $c63e

jr_00f_5d4a:
    push bc
    ld a, [de]
    ld [$d1ec], a
    add a
    ld c, a
    dec de
    ld a, [de]
    inc de
    ld [$d1ed], a
    adc a
    ld b, a
    ld a, b
    cp [hl]
    ld a, c
    pop bc
    jr z, jr_00f_5d62

    jr c, jr_00f_5d66

    ret


jr_00f_5d62:
    inc hl
    cp [hl]
    dec hl
    ret nc

jr_00f_5d66:
    call Call_00f_5dc8
    ld a, [hl+]
    ld [$d1eb], a
    ld a, [hl]
    ld [$d1ea], a
    ld a, [de]
    add c
    ld [$d1ee], a
    ld c, a
    dec de
    ld a, [de]
    adc $00
    ld [$d1ef], a
    ld b, a
    ld a, [hl-]
    cp c
    ld a, [hl]
    sbc b
    jr nc, jr_00f_5d8d

    ld a, [hl+]
    ld [$d1ef], a
    ld a, [hl]
    ld [$d1ee], a

jr_00f_5d8d:
    ld a, [$d1ef]
    ld [de], a
    inc de
    ld a, [$d1ee]
    ld [de], a
    ldh a, [$e4]
    ld [$d10a], a
    and a
    ld hl, $c4ca
    jr z, jr_00f_5da4

    ld hl, $c55e

jr_00f_5da4:
    ld [$d10a], a
    ld a, $0b
    call $2d83

Call_00f_5dac:
    call $39c9
    ld hl, $7dc1
    ld a, $0d
    rst $08
    ld a, [hl]
    ld [$d265], a
    call $3468
    ld hl, $7192
    ld a, $09
    rst $08
    ld hl, $4bc2
    jp $3ad5


Call_00f_5dc8:
    push hl
    push de
    push bc
    call Call_00f_6dd1
    ld a, $69
    ld [$cfc2], a
    call Call_00f_48e4
    xor a
    ld [$cfca], a
    ld [$cfc3], a
    ld a, $37
    call $2d83
    call Call_00f_48e4
    pop bc
    pop de
    pop hl
    ret


Call_00f_5de9:
    ld hl, $7dc1
    ld a, $0d
    rst $08
    ld hl, $5e44

jr_00f_5df2:
    ld a, [hl+]
    cp $ff
    ret z

    inc hl
    cp b
    jr nz, jr_00f_5df2

    dec hl
    ld b, [hl]
    ld a, $0b
    call $39e7
    and b
    ret z

    xor a
    ld [hl], a
    push bc
    call $398e
    pop bc
    ld a, $09
    call $39e7
    and [hl]
    res 0, [hl]
    ld a, $05
    call $39e7
    and [hl]
    res 0, [hl]
    ld a, b
    cp $7f
    jr nz, jr_00f_5e26

    ld a, $07
    call $39e7
    res 7, [hl]

jr_00f_5e26:
    ld hl, $65fd
    ldh a, [$e4]
    and a
    jr z, jr_00f_5e31

    ld hl, $65d7

jr_00f_5e31:
    call Call_00f_48e4
    ld a, $0d
    rst $08
    call Call_00f_48e4
    call Call_00f_5dc8
    call Call_00f_5dac
    ld a, $01
    and a
    ret


    ld a, [bc]
    ld [$200b], sp
    inc c
    db $10
    dec c
    rlca
    ld c, $40
    rrca
    ld a, a
    rst $38

Call_00f_5e51:
Jump_00f_5e51:
    ld a, $07
    call $39e1
    bit 7, a
    ret z

    ld hl, $7dc1
    ld a, $0d
    rst $08
    ld a, b
    cp $10
    jr z, jr_00f_5e67

    cp $0f
    ret nz

jr_00f_5e67:
    ld a, [hl]
    ld [$d265], a
    ld a, $07
    call $39e7
    res 7, [hl]
    call $3468
    call Call_00f_5dc8
    ld hl, $4dab
    call $3ad5
    ldh a, [$e4]
    and a
    jr nz, jr_00f_5e90

    call Call_00f_5f1f
    xor a
    ld [bc], a
    ld a, [$d22d]
    dec a
    ret z

    ld [hl], $00
    ret


jr_00f_5e90:
    call Call_00f_5f12
    xor a
    ld [bc], a
    ld [hl], a
    ret


Call_00f_5e97:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_5ea3

    call Call_00f_5ea9
    jp Jump_00f_5eb1


jr_00f_5ea3:
    call Call_00f_5eb1
    jp Jump_00f_5ea9


Call_00f_5ea9:
Jump_00f_5ea9:
    call Call_00f_5f12
    ld a, $00
    jp Jump_00f_5eb6


Call_00f_5eb1:
Jump_00f_5eb1:
jr_00f_5eb1:
    call Call_00f_5f1f
    ld a, $01

Jump_00f_5eb6:
    ldh [$e4], a
    ld d, h
    ld e, l
    push de
    push bc
    ld a, [bc]
    ld b, a
    ld hl, $7dd0
    ld a, $0d
    rst $08
    ld hl, $5efc

jr_00f_5ec7:
    ld a, [hl+]
    cp $ff
    jr z, jr_00f_5ef9

    inc hl
    inc hl
    cp b
    jr nz, jr_00f_5ec7

    pop bc
    ld a, [bc]
    ld [$d265], a
    push bc
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0d
    rst $08
    pop bc
    pop de
    ld a, [$c70e]
    and a
    ret nz

    xor a
    ld [bc], a
    ld [de], a
    call $3468
    ld hl, $4bde
    call $3ad5
    ld hl, $63b8
    ld a, $0d
    rst $08
    ret


jr_00f_5ef9:
    pop bc
    pop de
    ret


    rra
    xor h
    ld h, c
    jr nz, jr_00f_5eb1

    ld h, c
    ld hl, $61b4
    ld [hl+], a
    cp b
    ld h, c
    inc hl
    cp h
    ld h, c
    inc h
    ret nz

    ld h, c
    dec h
    call nz, $ff61

Call_00f_5f12:
    ld hl, $dce0
    ld a, [$d0d4]
    call $3927
    ld bc, $c62d
    ret


Call_00f_5f1f:
    ld hl, $d289
    ld a, [$c663]
    call $3927
    ld bc, $d207
    ret


Call_00f_5f2c:
    push hl
    push de
    push bc
    call Call_00f_5f58
    ld hl, $cd99
    call $334e
    call Call_00f_5f9e
    call Call_00f_6043
    ld hl, $cd9a
    call $334e
    pop bc
    pop de
    pop hl
    ret


Call_00f_5f48:
    push hl
    push de
    push bc
    call Call_00f_5f58
    call Call_00f_5f98
    call Call_00f_5f9e
    pop bc
    pop de
    pop hl
    ret


Call_00f_5f58:
    xor a
    ldh [$d4], a
    ld hl, $c535
    ld bc, $050b
    call $0fb6
    ld a, $0b
    ld hl, $4095
    rst $08
    ld hl, $c566
    ld [hl], $73
    call Call_00f_5fbf
    ld hl, $c55e
    ld b, $01
    xor a
    ld [$cf5f], a
    ld a, $26
    call $2d83
    push de
    ld a, [$d0d4]
    ld hl, $dce9
    call $3927
    ld d, h
    ld e, l
    ld hl, $c586
    ld a, [$d12d]
    ld b, a
    call Call_00f_7390
    pop de
    ret


Call_00f_5f98:
    ld hl, $cd99
    jp Jump_00f_612e


Call_00f_5f9e:
    ld hl, $c63c
    ld a, [hl+]
    or [hl]
    jr z, jr_00f_5fb2

    ld a, [$c6fd]
    and a
    jr nz, jr_00f_5fbe

    ld a, [$cd99]
    cp $02
    jr z, jr_00f_5fb9

jr_00f_5fb2:
    ld hl, $c2a6
    res 7, [hl]
    jr jr_00f_5fbe

jr_00f_5fb9:
    ld hl, $c2a6
    set 7, [hl]

jr_00f_5fbe:
    ret


Call_00f_5fbf:
    ld de, $c621
    ld hl, $c536
    call Call_00f_6138
    call $1078
    push bc
    ld a, [$d0d4]
    ld hl, $dcf4
    call $3927
    ld de, $d123
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $c639
    ld de, $d12d
    ld bc, $0011
    call $3026
    ld a, [$d0d4]
    ld hl, $dcdf
    call $3927
    ld a, [hl]
    ld [$d108], a
    ld [$cf60], a
    call $3856
    pop hl
    dec hl
    ld a, $03
    ld [$cf5f], a
    ld hl, $4bdd
    ld a, $14
    rst $08
    ld a, $7f
    jr c, jr_00f_6013

    ld a, $ef
    jr nz, jr_00f_6013

    ld a, $f5

jr_00f_6013:
    ld hl, $c551
    ld [hl], a
    ld hl, $c54e
    push af
    push hl
    ld de, $c63a
    ld a, $21
    call $2d83
    pop hl
    pop bc
    ret nz

    ld a, b
    cp $7f
    jr nz, jr_00f_602d

    dec hl

jr_00f_602d:
    ld a, [$c639]
    ld [$d12d], a
    jp $382d


Call_00f_6036:
    push hl
    push de
    push bc
    call Call_00f_6043
    call Call_00f_6127
    pop bc
    pop de
    pop hl
    ret


Call_00f_6043:
    xor a
    ldh [$d4], a
    ld hl, $c4a1
    ld bc, $040b
    call $0fb6
    ld a, $0b
    ld hl, $40c5
    rst $08
    ld a, [$d204]
    ld [$cf60], a
    ld [$d108], a
    call $3856
    ld de, $c616
    ld hl, $c4a1
    call Call_00f_6138
    call $1078
    ld h, b
    ld l, c
    dec hl
    ld hl, $d20c
    ld de, $d123
    ld a, [$c671]
    bit 3, a
    jr z, jr_00f_6080

    ld hl, $c6f2

jr_00f_6080:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, $03
    ld [$cf5f], a
    ld hl, $4bdd
    ld a, $14
    rst $08
    ld a, $7f
    jr c, jr_00f_609a

    ld a, $ef
    jr nz, jr_00f_609a

    ld a, $f5

jr_00f_609a:
    ld hl, $c4bd
    ld [hl], a
    ld hl, $c4ba
    push af
    push hl
    ld de, $d214
    ld a, $21
    call $2d83
    pop hl
    pop bc
    jr nz, jr_00f_60be

    ld a, b
    cp $7f
    jr nz, jr_00f_60b5

    dec hl

jr_00f_60b5:
    ld a, [$d213]
    ld [$d12d], a
    call $382d

jr_00f_60be:
    ld hl, $d216
    ld a, [hl+]
    ldh [$b5], a
    ld a, [hl-]
    ldh [$b6], a
    or [hl]
    jr nz, jr_00f_60d1

    ld c, a
    ld e, a
    ld d, $06
    jp Jump_00f_611a


jr_00f_60d1:
    xor a
    ldh [$b4], a
    ld a, $30
    ldh [$b7], a
    call $3119
    ld hl, $d218
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ldh [$b7], a
    ld a, b
    and a
    jr z, jr_00f_6105

    ldh a, [$b7]
    srl b
    rr a
    srl b
    rr a
    ldh [$b7], a
    ldh a, [$b5]
    ld b, a
    srl b
    ldh a, [$b6]
    rr a
    srl b
    rr a
    ldh [$b6], a
    ld a, b
    ldh [$b5], a

jr_00f_6105:
    ldh a, [$b5]
    ldh [$b3], a
    ldh a, [$b6]
    ldh [$b4], a
    ld a, $02
    ld b, a
    call $3124
    ldh a, [$b6]
    ld e, a
    ld a, $06
    ld d, a
    ld c, a

Jump_00f_611a:
    xor a
    ld [$d10a], a
    ld hl, $c4ca
    ld b, $00
    call $3750
    ret


Call_00f_6127:
    ld hl, $cd9a
    call Call_00f_612e
    ret


Call_00f_612e:
Jump_00f_612e:
    ld b, [hl]
    call $334e
    ld a, [hl]
    cp b
    ret z

    jp Jump_00f_6e27


Call_00f_6138:
    ret


Call_00f_6139:
Jump_00f_6139:
    xor a
    ldh [$d4], a
    call $30bf
    ld a, [$d230]
    cp $02
    jr z, jr_00f_6156

    cp $03
    jr z, jr_00f_6156

    call Call_00f_6dd1
    call $39d4
    call Call_00f_6dd1
    call $309d

jr_00f_6156:
    ld a, [$d230]
    cp $06
    jr nz, jr_00f_6165

    ld a, $09
    ld hl, $4f13
    rst $08
    jr jr_00f_6175

jr_00f_6165:
    ld a, [$c2c7]
    or a
    jr z, jr_00f_6171

    ld a, $77
    ld hl, $6294
    rst $08

jr_00f_6171:
    call Call_00f_619b
    ret c

jr_00f_6175:
    ld a, $01
    ldh [$d4], a
    ld a, [$d0d2]
    cp $01
    jp z, Jump_00f_6192

    cp $03
    jp z, Jump_00f_61c7

    cp $02
    jp z, Jump_00f_628d

    cp $04
    jp z, Jump_00f_6489

    jr jr_00f_6156

Jump_00f_6192:
    xor a
    ld [$d267], a
    call $30b4
    and a
    ret


Call_00f_619b:
    call Call_00f_52f1
    jr z, jr_00f_61a8

    ld a, $09
    ld hl, $4ef2
    rst $08
    and a
    ret


jr_00f_61a8:
    ld a, $40
    ld hl, $4b12
    rst $08
    ld a, [$cd2b]
    and a
    ret z

    ld hl, $cd2a
    bit 4, [hl]
    jr nz, jr_00f_61c5

    ld hl, $5863
    call $3ad5
    ld c, $3c
    call $0468

jr_00f_61c5:
    scf
    ret


Jump_00f_61c7:
    ld a, [$c2dc]
    and a
    jp nz, Jump_00f_622b

    ld a, [$cfc0]
    and a
    jp nz, Jump_00f_622b

    call $1d6e
    ld a, [$d230]
    cp $03
    jr z, jr_00f_61f1

    cp $06
    jr z, jr_00f_6201

    ld a, $04
    ld hl, $4493
    rst $08
    ld a, [$d0ec]
    and a
    jr z, jr_00f_620d

    jr jr_00f_6209

jr_00f_61f1:
    ld a, $04
    ld hl, $47bb
    rst $08
    ld a, $05
    ld [$d106], a
    call $2f3f
    jr jr_00f_6209

jr_00f_6201:
    ld a, $b1
    ld [$d106], a
    call $2f3f

jr_00f_6209:
    call Call_00f_6234
    ret


jr_00f_620d:
    call $3317
    call $045a
    call Call_00f_6d9f
    call Call_00f_743d
    call Call_00f_747c
    call $1c07
    call $31f6
    call Call_00f_6e27
    call $309d
    jp Jump_00f_6139


Jump_00f_622b:
    ld hl, $4bf3
    call $3ad5
    jp Jump_00f_6139


Call_00f_6234:
    ld a, [$c64e]
    and a
    jr nz, jr_00f_6279

    ld hl, $543d
    ld a, $03
    rst $08
    ld a, [$d142]
    cp $03
    jr z, jr_00f_624a

    call $31f3

jr_00f_624a:
    xor a
    ldh [$d4], a
    call Call_00f_6d9f
    call $300b
    ld a, [$d230]
    cp $03
    jr z, jr_00f_625d

    call Call_00f_743d

jr_00f_625d:
    call Call_00f_747c
    ld a, $01
    ld [$cfa9], a
    call $1c07
    call Call_00f_5f2c
    call $31f6
    call $309d
    call $1fbf
    call Call_00f_6e27
    and a
    ret


jr_00f_6279:
    xor a
    ld [$c64e], a
    ld a, [$d0ee]
    and $c0
    ld [$d0ee], a
    call $1fbf
    call $32f9
    scf
    ret


Jump_00f_628d:
    call $1d6e

Jump_00f_6290:
    call $1c07
    call $1d6e
    call $31f3

Jump_00f_6299:
jr_00f_6299:
    call Call_00f_52fa
    xor a
    ld [$d141], a
    call Call_00f_5313
    call Call_00f_5329
    jr c, jr_00f_62da

jr_00f_62a8:
    ld a, $23
    ld hl, $6a4a
    rst $08
    call Call_00f_62f5
    jr c, jr_00f_62c8

    call $1bee
    ld a, [$cfa9]
    cp $01
    jp z, Jump_00f_6358

    cp $02
    jr z, jr_00f_62cf

    cp $03
    jr z, jr_00f_62da

    jr jr_00f_62a8

jr_00f_62c8:
    call Call_00f_52e0
    jr c, jr_00f_62da

    jr jr_00f_6299

jr_00f_62cf:
    call Call_00f_6308
    call Call_00f_52e0
    jr c, jr_00f_62da

    jp Jump_00f_6290


jr_00f_62da:
    call $300b
    call $3317
    call $045a
    call Call_00f_6da6
    call $1c17
    call $309d
    call $333e
    call $32f9
    jp Jump_00f_6139


Call_00f_62f5:
    call Call_00f_52f1
    jr z, jr_00f_6301

    ld a, $09
    ld hl, $4e99
    rst $08
    ret


jr_00f_6301:
    ld a, $40
    ld hl, $4d22
    rst $08
    ret


Call_00f_6308:
    call $0568
    ld hl, $9310
    ld de, $8000
    ld bc, $0110
    call $3026
    ld hl, $9000
    ld de, $8110
    ld bc, $0310
    call $3026
    call $058a
    call $300b
    call $3c9d
    xor a
    ld [$cf5f], a
    ld a, $13
    ld hl, $5c7b
    rst $08
    call $3c97
    call $0568
    ld hl, $8000
    ld de, $9310
    ld bc, $0110
    call $3026
    ld hl, $8110
    ld de, $9000
    ld bc, $0310
    call $3026
    call $058a
    ret


Jump_00f_6358:
    ld a, [$d0d4]
    ld d, a
    ld a, [$d109]
    cp d
    jr nz, jr_00f_636b

    ld hl, $4c0d
    call $3ad5
    jp Jump_00f_6299


jr_00f_636b:
    ld a, [$c730]
    and a
    jr nz, jr_00f_6378

    ld a, [$c671]
    bit 7, a
    jr z, jr_00f_6381

jr_00f_6378:
    ld hl, $4c22
    call $3ad5
    jp Jump_00f_6299


jr_00f_6381:
    call Call_00f_5887
    jp z, Jump_00f_6299

    ld a, [$d0d4]
    ld [$c71a], a
    ld a, $02
    ld [$d0ec], a
    call $3317
    call $045a
    call $300b
    call Call_00f_6da6
    call $1c17
    call $333e
    call $32f9
    ld a, [$d109]
    ld [$d0d4], a

Jump_00f_63ad:
    ld a, $01
    ld [$c710], a
    ld a, [$c2dc]
    and a
    jr z, jr_00f_63c1

    call $1d6e
    call Call_00f_68e4
    call $1c17

jr_00f_63c1:
    call Call_00f_67c1
    ld a, [$c2dc]
    and a
    jr nz, jr_00f_63cf

Jump_00f_63ca:
    call Call_00f_640b
    and a
    ret


jr_00f_63cf:
    ld a, [$d430]
    cp $0e
    jp z, Jump_00f_63ca

    cp $0d
    jp z, Jump_00f_63ca

    cp $04
    jp c, Jump_00f_63ca

    cp $0f
    jr nz, jr_00f_63e9

    call Call_00f_40e5
    ret


jr_00f_63e9:
    ldh a, [$cb]
    cp $01
    jr z, jr_00f_63f7

    call Call_00f_640b
    call Call_00f_63ff
    and a
    ret


jr_00f_63f7:
    call Call_00f_63ff
    call Call_00f_640b
    and a
    ret


Call_00f_63ff:
    ld hl, $446c
    ld a, $0e
    rst $08
    call $3989
    jp Jump_00f_5c23


Call_00f_640b:
    call Call_00f_72f4
    ld c, $32
    call $0468
    ld hl, $c66b
    res 6, [hl]
    call $3989
    call Call_00f_5c5b
    jr c, jr_00f_6423

    call Call_00f_5ce6

jr_00f_6423:
    ld hl, $c535
    ld bc, $050b
    call $0fb6
    ld a, [$d0d4]
    ld [$d109], a
    call Call_00f_5581
    call Call_00f_5a0d
    call Call_00f_5ab1
    call Call_00f_726d
    call Call_00f_5bde
    call Call_00f_5c18
    call Call_00f_5b5f
    call Call_00f_6dd1
    call $309d
    call $3985
    call Call_00f_5c23
    ld a, $02
    ld [$cfa9], a
    ret


    ld c, $32
    call $0468
    ld hl, $c535
    ld bc, $050b
    call $0fb6
    ld a, [$d109]
    ld [$d0d4], a
    call Call_00f_5581
    call Call_00f_5a0d
    xor a
    ld [$d265], a
    call Call_00f_6cab
    call Call_00f_5b5f
    call Call_00f_6dd1
    call $309d
    call $3985
    jp Jump_00f_5c23


Jump_00f_6489:
    call $30b4
    ld a, $03
    ld [$cfa9], a
    ld hl, $c644
    ld de, $d21e
    call Call_00f_58b3
    ld a, $00
    ld [$d266], a
    ret c

    ld a, [$d0ec]
    and a
    ret nz

    jp Jump_00f_6139


Call_00f_64a8:
    ld a, [$c62d]
    ld b, a
    ld hl, $7dd0
    ld a, $0d
    rst $08
    ld a, b
    cp $4c
    ret nz

    ld a, $01
    ld [$c73d], a
    ret


Call_00f_64bc:
Jump_00f_64bc:
    call Call_00f_52f1
    jr nz, jr_00f_64c8

    ld a, $40
    ld hl, $4b9f
    rst $08
    ret


jr_00f_64c8:
    ld hl, $d208
    ld a, [$d235]
    dec a
    jr z, jr_00f_64e2

    dec a
    jr z, jr_00f_64dd

    call Call_00f_6786
    ret z

    ld hl, $c62e
    jr jr_00f_64e2

jr_00f_64dd:
    ld a, $02
    call $3917

jr_00f_64e2:
    ld de, $d25e
    ld bc, $0004
    call $3026
    xor a
    ldh [$d4], a
    ld hl, $c594
    ld b, $04
    ld c, $0e
    ld a, [$d235]
    cp $02
    jr nz, jr_00f_6503

    ld hl, $c544
    ld b, $04
    ld c, $0e

jr_00f_6503:
    call $0fe8
    ld hl, $c5aa
    ld a, [$d235]
    cp $02
    jr nz, jr_00f_6513

    ld hl, $c55a

jr_00f_6513:
    ld a, $14
    ld [$d1ea], a
    ld a, $20
    call $2d83
    ld b, $05
    ld a, [$d235]
    cp $02
    ld a, $0d
    jr nz, jr_00f_652c

    ld b, $05
    ld a, $09

jr_00f_652c:
    ld [$cfa1], a
    ld a, b
    ld [$cfa2], a
    ld a, [$d235]
    cp $01
    jr z, jr_00f_653e

    ld a, [$d0d5]
    inc a

jr_00f_653e:
    ld [$cfa9], a
    ld a, $01
    ld [$cfaa], a
    ld a, [$d0eb]
    inc a
    ld [$cfa3], a
    ld a, $01
    ld [$cfa4], a
    ld c, $2c
    ld a, [$d235]
    dec a
    ld b, $c1
    jr z, jr_00f_6569

    dec a
    ld b, $c3
    jr z, jr_00f_6569

    ld a, [$c2dc]
    and a
    jr nz, jr_00f_6569

    ld b, $c7

jr_00f_6569:
    ld a, b
    ld [$cfa8], a
    ld a, c
    ld [$cfa5], a
    xor a
    ld [$cfa6], a
    ld a, $10
    ld [$cfa7], a

Jump_00f_657a:
    ld a, [$d235]
    and a
    jr z, jr_00f_658e

    dec a
    jr nz, jr_00f_65a3

    ld hl, $c5c3
    ld de, $661c
    call $1078
    jr jr_00f_65a3

jr_00f_658e:
    call Call_00f_66c8
    ld a, [$d0e3]
    and a
    jr z, jr_00f_65a3

    ld hl, $c5a9
    ld bc, $0014
    dec a
    call $30fe
    ld [hl], $ec

jr_00f_65a3:
    ld a, $01
    ldh [$d4], a
    call $1bd3
    bit 6, a
    jp nz, Jump_00f_661d

    bit 7, a
    jp nz, Jump_00f_662e

    bit 2, a
    jp nz, Jump_00f_6643

    bit 1, a
    push af
    xor a
    ld [$d0e3], a
    ld a, [$cfa9]
    dec a
    ld [$cfa9], a
    ld b, a
    ld a, [$d235]
    dec a
    jr nz, jr_00f_65d0

    pop af
    ret


jr_00f_65d0:
    dec a
    ld a, b
    ld [$d0d5], a
    jr nz, jr_00f_65d9

    pop af
    ret


jr_00f_65d9:
    pop af
    ret nz

    ld hl, $c634
    ld a, [$cfa9]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and $3f
    jr z, jr_00f_6610

    ld a, [$c675]
    swap a
    and $0f
    dec a
    cp c
    jr z, jr_00f_660b

    ld a, [$c6e1]
    and a
    jr nz, jr_00f_6606

    ld a, [$cfa9]
    ld hl, $c62e
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]

jr_00f_6606:
    ld [$c6e3], a
    xor a
    ret


jr_00f_660b:
    ld hl, $4c5b
    jr jr_00f_6613

jr_00f_6610:
    ld hl, $4c39

jr_00f_6613:
    call $3ad5
    call $30b4
    jp Jump_00f_64bc


    ld d, b

Jump_00f_661d:
    ld a, [$cfa9]
    and a
    jp nz, Jump_00f_657a

    ld a, [$d0eb]
    inc a
    ld [$cfa9], a
    jp Jump_00f_657a


Jump_00f_662e:
    ld a, [$cfa9]
    ld b, a
    ld a, [$d0eb]
    inc a
    inc a
    cp b
    jp nz, Jump_00f_657a

    ld a, $01
    ld [$cfa9], a
    jp Jump_00f_657a


Jump_00f_6643:
    ld a, [$d0e3]
    and a
    jr z, jr_00f_66bf

    ld hl, $c62e
    call Call_00f_66a5
    ld hl, $c634
    call Call_00f_66a5
    ld hl, $c675
    ld a, [hl]
    swap a
    and $0f
    ld b, a
    ld a, [$cfa9]
    cp b
    jr nz, jr_00f_6671

    ld a, [hl]
    and $0f
    ld b, a
    ld a, [$d0e3]
    swap a
    add b
    ld [hl], a
    jr jr_00f_6682

jr_00f_6671:
    ld a, [$d0e3]
    cp b
    jr nz, jr_00f_6682

    ld a, [hl]
    and $0f
    ld b, a
    ld a, [$cfa9]
    swap a
    add b
    ld [hl], a

jr_00f_6682:
    ld a, [$c66c]
    bit 3, a
    jr nz, jr_00f_669e

    ld hl, $dce1
    ld a, [$d0d4]
    call $3927
    push hl
    call Call_00f_66a5
    pop hl
    ld bc, $0015
    add hl, bc
    call Call_00f_66a5

jr_00f_669e:
    xor a
    ld [$d0e3], a
    jp Jump_00f_64bc


Call_00f_66a5:
    push hl
    ld a, [$d0e3]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, [$cfa9]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [de]
    ld b, [hl]
    ld [hl], a
    ld a, b
    ld [de], a
    ret


jr_00f_66bf:
    ld a, [$cfa9]
    ld [$d0e3], a
    jp Jump_00f_64bc


Call_00f_66c8:
    xor a
    ldh [$d4], a
    ld hl, $c540
    ld b, $03
    ld c, $09
    call $0fe8
    call $3ab2
    ld a, [$c675]
    and a
    jr z, jr_00f_66f4

    swap a
    and $0f
    ld b, a
    ld a, [$cfa9]
    cp b
    jr nz, jr_00f_66f4

    ld hl, $c569
    ld de, $674f
    call $1078
    jr jr_00f_674e

jr_00f_66f4:
    ld hl, $cfa9
    dec [hl]
    call $3985
    ld hl, $c62e
    ld a, [$cfa9]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$c6e3], a
    ld a, [$d0d4]
    ld [$d109], a
    ld a, $04
    ld [$cf5f], a
    ld hl, $78ec
    ld a, $03
    rst $08
    ld hl, $cfa9
    ld c, [hl]
    inc [hl]
    ld b, $00
    ld hl, $c634
    add hl, bc
    ld a, [hl]
    and $3f
    ld [$d073], a
    call Call_00f_675f
    ld hl, $c555
    ld de, $6759
    call $1078
    ld hl, $c583
    ld [hl], $f3
    ld hl, $5e40
    ld a, $0d
    rst $08
    ld a, [$c60f]
    ld b, a
    ld hl, $c56a
    ld a, $2a
    call $2d83

jr_00f_674e:
    ret


    add e
    xor b
    or d
    and b
    and c
    xor e
    and h
    and e
    rst $20
    ld d, b
    sub e
    sbc b
    adc a
    add h
    di
    ld d, b

Call_00f_675f:
    ld hl, $c581
    ld a, [$c2dc]
    cp $04
    jr c, jr_00f_676c

    ld hl, $c581

jr_00f_676c:
    push hl
    ld de, $d073
    ld bc, $0102
    call $3198
    pop hl
    inc hl
    inc hl
    ld [hl], $f3
    inc hl
    ld de, $d265
    ld bc, $0102
    call $3198
    ret


Call_00f_6786:
    ld a, $a5
    ld [$c6e3], a
    ld a, [$c675]
    and a
    ld hl, $c634
    jr nz, jr_00f_679f

    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    and $3f
    ret nz

    jr jr_00f_67b4

jr_00f_679f:
    swap a
    and $0f
    ld b, a
    ld d, $05
    xor a

jr_00f_67a7:
    dec d
    jr z, jr_00f_67b2

    ld c, [hl]
    inc hl
    dec b
    jr z, jr_00f_67a7

    or c
    jr jr_00f_67a7

jr_00f_67b2:
    and a
    ret nz

jr_00f_67b4:
    ld hl, $4c72
    call $3ad5
    ld c, $3c
    call $0468
    xor a
    ret


Call_00f_67c1:
    ld a, [$c711]
    and a
    ret nz

    ld a, [$c2dc]
    and a
    jr z, jr_00f_6817

    call Call_00f_6dd1
    call $309d
    ld a, [$d0ec]
    and a
    call z, Call_00f_68e4
    call $30b4
    ld a, [$d430]
    cp $0e
    jp z, Jump_00f_68bd

    cp $0d
    jp z, Jump_00f_682c

    cp $04
    jp nc, Jump_00f_68c1

    ld [$c6e9], a
    ld c, a
    ld a, [$c66d]
    bit 6, a
    jp nz, Jump_00f_6882

    ld a, [$c66f]
    and $13
    jp nz, Jump_00f_6882

    ld hl, $c671
    bit 4, [hl]
    ld a, [$c71c]
    jp nz, Jump_00f_687f

    ld hl, $d208
    ld b, $00
    add hl, bc
    ld a, [hl]
    jp Jump_00f_687f


jr_00f_6817:
    ld hl, $c671
    bit 4, [hl]
    jr z, jr_00f_6824

    ld a, [$c71c]
    jp Jump_00f_687f


jr_00f_6824:
    call Call_00f_68d1
    jp nz, Jump_00f_68c1

    jr jr_00f_6830

Jump_00f_682c:
    ld a, $ff
    jr jr_00f_687f

jr_00f_6830:
    ld hl, $d208
    ld de, $d20e
    ld b, $04

jr_00f_6838:
    ld a, [hl]
    and a
    jp z, Jump_00f_68bd

    ld a, [$c6f6]
    cp [hl]
    jr z, jr_00f_6848

    ld a, [de]
    and $3f
    jr nz, jr_00f_684f

jr_00f_6848:
    inc hl
    inc de
    dec b
    jr nz, jr_00f_6838

    jr jr_00f_68bd

jr_00f_684f:
    ld a, [$d22d]
    dec a
    jr nz, jr_00f_6882

jr_00f_6855:
    ld hl, $d208
    call $2f9f
    and $03
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [$c67d]
    swap a
    and $0f
    dec a
    cp c
    jr z, jr_00f_6855

    ld a, [hl]
    and a
    jr z, jr_00f_6855

    ld hl, $d20e
    add hl, bc
    ld b, a
    ld a, [hl]
    and $3f
    jr z, jr_00f_6855

    ld a, c
    ld [$c6e9], a
    ld a, b

Jump_00f_687f:
jr_00f_687f:
    ld [$c6e4], a

Jump_00f_6882:
jr_00f_6882:
    call $3989
    ld hl, $5e40
    ld a, $0d
    rst $08
    call Call_00f_68d1
    jr nz, jr_00f_6894

    xor a
    ld [$c733], a

jr_00f_6894:
    ld a, [$c609]
    cp $77
    jr z, jr_00f_689f

    xor a
    ld [$c680], a

jr_00f_689f:
    ld a, [$c609]
    cp $51
    jr z, jr_00f_68af

    ld hl, $c670
    res 6, [hl]
    xor a
    ld [$c72c], a

jr_00f_68af:
    ld a, [$c609]
    cp $6f
    ret z

    cp $74
    ret z

    xor a
    ld [$c681], a
    ret


Jump_00f_68bd:
jr_00f_68bd:
    ld a, $a5
    jr jr_00f_687f

Jump_00f_68c1:
    xor a
    ld [$c680], a
    ld [$c681], a
    ld [$c72c], a
    ld hl, $c670
    res 6, [hl]
    ret


Call_00f_68d1:
    ld a, [$c670]
    and $20
    ret nz

    ld hl, $c66f
    ld a, [hl]
    and $13
    ret nz

    ld hl, $c66d
    bit 6, [hl]
    ret


Call_00f_68e4:
    ld a, $40
    ld hl, $4a09
    rst $08
    ret


Call_00f_68eb:
    xor a
    ld hl, $d206
    ld bc, $0027
    call $3041
    ld a, [$c2dc]
    and a
    jp nz, Jump_00f_5abd

    ld a, [$cfc0]
    bit 0, a
    jp nz, Jump_00f_5abd

    ld a, [$d204]
    ld [$d206], a
    ld [$cf60], a
    ld [$d108], a
    call $3856
    ld a, [$d22d]
    dec a
    jr z, jr_00f_6925

    ld a, [$d109]
    ld hl, $d289
    call $3927
    ld a, [hl]
    jr jr_00f_6945

jr_00f_6925:
    ld a, [$d230]
    cp $0a
    ld a, [$d241]
    jr z, jr_00f_6945

    call $2f9f
    cp $c0
    ld a, $00
    jr c, jr_00f_6945

    call $2f9f
    cp $14
    ld a, [$d241]
    jr nc, jr_00f_6945

    ld a, [$d242]

jr_00f_6945:
    ld [$d207], a
    ld a, [$d22d]
    and a
    jr z, jr_00f_6963

    ld a, [$c671]
    bit 3, a
    jr z, jr_00f_6963

    ld hl, $c6f2
    ld de, $d20c
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    jp Jump_00f_6a1a


jr_00f_6963:
    ld a, $09
    ld hl, $70c4
    rst $08
    ld a, [$d22d]
    dec a
    jr nz, jr_00f_69a8

    ld a, [$d230]
    cp $05
    jr nz, jr_00f_6996

    call Call_00f_7a01
    ld a, [hl]
    and a
    push af
    call Call_00f_7a19
    inc hl
    ld a, [hl-]
    ld c, a
    ld b, [hl]
    pop af
    jr nz, jr_00f_69a8

    call Call_00f_7a19
    inc hl
    call $2f9f
    ld [hl-], a
    ld c, a
    call $2f9f
    ld [hl], a
    ld b, a
    jr jr_00f_69a8

jr_00f_6996:
    cp $07
    jr nz, jr_00f_69a0

    ld b, $ea
    ld c, $aa
    jr jr_00f_69a8

jr_00f_69a0:
    call $2f9f
    ld b, a
    call $2f9f
    ld c, a

jr_00f_69a8:
    ld hl, $d20c
    ld a, b
    ld [hl+], a
    ld [hl], c
    ld a, [$d22d]
    dec a
    jr nz, jr_00f_6a1a

    ld a, [$d204]
    cp $c9
    jr nz, jr_00f_69c8

    ld hl, $d20c
    ld a, $2d
    call $2d83
    call Call_00f_6b75
    jr c, jr_00f_69a0

jr_00f_69c8:
    ld a, [$d204]
    cp $81
    jr nz, jr_00f_6a1a

    ld de, $d20c
    ld bc, $d47b
    ld hl, $7bfc
    ld a, $3e
    rst $08
    ld a, [$d1ea]
    cp $06
    jr nz, jr_00f_69fe

    call $2f8c
    cp $0c
    jr c, jr_00f_69fe

    ld a, [$d1eb]
    cp $50
    jr nc, jr_00f_69a0

    call $2f8c
    cp $32
    jr c, jr_00f_69fe

    ld a, [$d1eb]
    cp $40
    jr nc, jr_00f_69a0

jr_00f_69fe:
    ld a, [$dcb5]
    cp $09
    jr z, jr_00f_6a1a

    ld a, [$dcb6]
    cp $06
    jr z, jr_00f_6a1a

    call $2f8c
    cp $64
    jr c, jr_00f_6a1a

    ld a, [$d1ea]
    cp $04
    jr c, jr_00f_69a0

Jump_00f_6a1a:
jr_00f_6a1a:
    ld a, $46
    ld [$d212], a
    ld a, [$d143]
    ld [$d213], a
    ld de, $d218
    ld b, $00
    ld hl, $d201
    ld a, $0c
    call $2d83
    ld a, [$d22d]
    cp $02
    jr z, jr_00f_6a74

    and a
    jr z, jr_00f_6a44

    ld a, [$c671]
    bit 3, a
    jp nz, Jump_00f_6a90

jr_00f_6a44:
    call Call_00f_6b38
    ld a, $07
    jr c, jr_00f_6a4c

    xor a

jr_00f_6a4c:
    ld hl, $d214
    ld [hl+], a
    xor a
    ld [hl+], a
    ld a, [$d218]
    ld [hl+], a
    ld a, [$d219]
    ld [hl], a
    ld a, [$d230]
    cp $05
    jr nz, jr_00f_6a90

    call Call_00f_7a01
    ld a, [hl]
    and a
    jr z, jr_00f_6a6e

    ld a, [hl]
    ld [$d217], a
    jr jr_00f_6a90

jr_00f_6a6e:
    ld a, [$d217]
    ld [hl], a
    jr jr_00f_6a90

jr_00f_6a74:
    ld hl, $d2ab
    ld a, [$d109]
    call $3927
    ld a, [hl-]
    ld [$d217], a
    ld a, [hl-]
    ld [$d216], a
    ld a, [$d109]
    ld [$c663], a
    dec hl
    ld a, [hl]
    ld [$d214], a

Jump_00f_6a90:
jr_00f_6a90:
    ld hl, $d23d
    ld de, $d224
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld de, $d208
    ld a, [$d22d]
    cp $02
    jr nz, jr_00f_6ab6

    ld hl, $d28a
    ld a, [$d109]
    call $3927
    ld bc, $0004
    call $3026
    jr jr_00f_6ac5

jr_00f_6ab6:
    xor a
    ld h, d
    ld l, e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d1ea], a
    ld a, $1b
    call $2d83

jr_00f_6ac5:
    ld a, [$d22d]
    cp $02
    jr z, jr_00f_6ad9

    ld hl, $d208
    ld de, $d20e
    ld a, $05
    call $2d83
    jr jr_00f_6aeb

jr_00f_6ad9:
    ld hl, $d29f
    ld a, [$d109]
    call $3927
    ld de, $d20e
    ld bc, $0004
    call $3026

jr_00f_6aeb:
    ld hl, $d237
    ld de, $d226
    ld b, $05

jr_00f_6af3:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00f_6af3

    ld a, [$d23f]
    ld [de], a
    inc de
    ld a, [$d240]
    ld [de], a
    ld a, [$d204]
    ld [$d265], a
    call $343b
    ld a, [$d22d]

jr_00f_6b0e:
    and a
    ret z

    ld hl, $d073
    ld de, $c616
    ld bc, $000b
    call $3026
    ld a, [$d204]
    dec a
    ld c, a
    ld b, $01
    ld hl, $deb9
    ld a, $03
    call $2d83
    ld hl, $d21a
    ld de, $c6c1
    ld bc, $000a
    call $3026
    ret


Call_00f_6b38:
    ld a, [$d230]
    cp $08
    jr nz, jr_00f_6b5b

    ld hl, $6b6f
    ld a, [$d269]
    cp $01
    jr c, jr_00f_6b51

    ld hl, $6b69
    jr z, jr_00f_6b51

    ld hl, $6b5d

jr_00f_6b51:
    ld a, [$d204]
    ld de, $0001
    call $30e1
    ret c

jr_00f_6b5b:
    and a
    ret


    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    dec d
    rla
    ld h, [hl]
    and l
    cp [hl]
    rst $38
    jr nc, jr_00f_6b0e

    and h
    and a
    sub $ff
    jr nc, @-$5b

    and h
    and a
    sub $ff

Call_00f_6b75:
    ld a, [$def3]
    ld c, a
    ld de, $0000

jr_00f_6b7c:
    srl c
    jr nc, jr_00f_6b96

    ld hl, $6ba1
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push de
    ld a, [$d234]
    ld de, $0001
    push bc
    call $30e1
    pop bc
    pop de
    jr c, jr_00f_6b9f

jr_00f_6b96:
    inc e
    inc e
    ld a, e
    cp $08
    jr c, jr_00f_6b7c

    scf
    ret


jr_00f_6b9f:
    and a
    ret


    xor c
    ld l, e
    or l
    ld l, e
    cp l
    ld l, e
    jp $016b


    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    rst $38
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $ff12
    inc de
    inc d
    dec d
    ld d, $17
    rst $38
    jr @+$1b

    ld a, [de]
    rst $38
    push bc
    ld a, [$c639]
    ld b, a
    ld a, [$d213]
    ld [$c639], a
    ld a, b
    ld [$d213], a
    pop bc
    ret


Call_00f_6bd8:
    xor a
    ld [$d204], a
    call Call_00f_6e27
    ld a, [$d22f]
    ld [$d233], a
    ld de, $9000
    ld hl, $520d
    ld a, $14
    rst $08
    ld hl, $c4b3
    ld c, $00

jr_00f_6bf3:
    inc c
    ld a, c
    cp $07
    ret z

    xor a
    ldh [$d4], a
    ldh [$d5], a
    ld d, $00
    push bc
    push hl

jr_00f_6c01:
    call Call_00f_6c1a
    inc hl
    ld a, $07
    add d
    ld d, a
    dec c
    jr nz, jr_00f_6c01

    ld a, $01
    ldh [$d4], a
    ld c, $04
    call $0468
    pop hl
    pop bc
    dec hl
    jr jr_00f_6bf3

Call_00f_6c1a:
    push hl
    push de
    push bc
    ld e, $07

jr_00f_6c1f:
    ld [hl], d
    ld bc, $0014
    add hl, bc
    inc d
    dec e
    jr nz, jr_00f_6c1f

    pop bc
    pop de
    pop hl
    ret


Call_00f_6c2c:
    ld a, $01
    jr jr_00f_6c31

Call_00f_6c30:
    xor a

jr_00f_6c31:
    ldh [$e4], a
    call Call_00f_6c39
    jp Jump_00f_6c76


Call_00f_6c39:
    ldh a, [$e4]
    and a
    jr z, jr_00f_6c5a

    ld a, [$c63a]
    and $40
    ret z

    ld hl, $c645
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6c58

    ld b, $01

jr_00f_6c58:
    ld [hl], b
    ret


jr_00f_6c5a:
    ld a, [$d214]
    and $40
    ret z

    ld hl, $d21f
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6c74

    ld b, $01

jr_00f_6c74:
    ld [hl], b
    ret


Jump_00f_6c76:
    ldh a, [$e4]
    and a
    jr z, jr_00f_6c93

    ld a, [$c63a]
    and $10
    ret z

    ld hl, $c641
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6c91

    ld b, $01

jr_00f_6c91:
    ld [hl], b
    ret


jr_00f_6c93:
    ld a, [$d214]
    and $10
    ret z

    ld hl, $d21b
    ld a, [hl-]
    ld b, a
    ld a, [hl]
    srl a
    rr b
    ld [hl+], a
    or b
    jr nz, jr_00f_6ca9

    ld b, $01

jr_00f_6ca9:
    ld [hl], b
    ret


Call_00f_6cab:
    ld c, $00

jr_00f_6cad:
    call Call_00f_6cb7
    inc c
    ld a, c
    cp $05
    jr nz, jr_00f_6cad

    ret


Call_00f_6cb7:
    push bc
    push bc
    ld a, [$d265]
    and a
    ld a, c
    ld hl, $c640
    ld de, $c6b6
    ld bc, $c6cc
    jr z, jr_00f_6cd2

    ld hl, $d21a
    ld de, $c6c1
    ld bc, $c6d4

jr_00f_6cd2:
    add c
    ld c, a
    jr nc, jr_00f_6cd7

    inc b

jr_00f_6cd7:
    ld a, [bc]
    pop bc
    ld b, a
    push bc
    sla c
    ld b, $00
    add hl, bc
    ld a, c
    add e
    ld e, a
    jr nc, jr_00f_6ce6

    inc d

jr_00f_6ce6:
    pop bc
    push hl
    ld hl, $6d2b
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    xor a
    ldh [$b4], a
    ld a, [de]
    ldh [$b5], a
    inc de
    ld a, [de]
    ldh [$b6], a
    ld a, [hl+]
    ldh [$b7], a
    call $3119
    ld a, [hl]
    ldh [$b7], a
    ld b, $04
    call $3124
    pop hl
    ldh a, [$b6]
    sub $e7
    ldh a, [$b5]
    sbc $03
    jp c, Jump_00f_6d1e

    ld a, $03
    ldh [$b5], a
    ld a, $e7
    ldh [$b6], a

Jump_00f_6d1e:
    ldh a, [$b5]
    ld [hl+], a
    ld b, a
    ldh a, [$b6]
    ld [hl], a
    or b
    jr nz, jr_00f_6d29

    inc [hl]

jr_00f_6d29:
    pop bc
    ret


    add hl, de
    ld h, h
    inc e
    ld h, h
    ld hl, $2864
    ld h, h
    ld [hl-], a
    ld h, h
    ld b, d
    ld h, h
    ld bc, $0f01
    ld a, [bc]
    ld [bc], a
    ld bc, $0a19
    inc bc
    ld bc, $0a23
    inc b
    ld bc, $dcfa
    jp nz, $c0a7

    ld a, [$cfc0]
    and a
    ret nz

    ld a, [$d857]
    ld d, a
    and $04
    add a
    add a
    ld b, a
    ld a, d
    and $10
    rrca
    rrca
    ld c, a
    ld a, d
    and $eb
    or b
    or c
    ld b, a
    ld hl, $c640
    ld c, $04

jr_00f_6d69:
    ld a, b
    srl b
    call c, Call_00f_6d7c
    inc hl
    inc hl
    srl b
    dec c
    jr nz, jr_00f_6d69

    srl a
    call c, Call_00f_6d7c
    ret


Call_00f_6d7c:
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl+], a
    ld a, [hl-]
    sub $e7
    ld a, [hl]
    sbc $03
    ret c

    ld a, $03
    ld [hl+], a
    ld a, $e7
    ld [hl-], a
    ret


Call_00f_6d9f:
    ld hl, $74f2
    ld a, $3e
    rst $08
    ret


Call_00f_6da6:
    ld hl, $750d
    ld a, $3e
    rst $08
    ret


    ld de, $4ac0
    ld hl, $96c0
    ld bc, $3e04
    call $0f9d
    ld de, $4ae0
    ld hl, $9730
    ld bc, $3e06
    call $0f9d
    ld de, $4b10
    ld hl, $9550
    ld bc, $3e08
    jp $0f82


Call_00f_6dd1:
    ld hl, $6dd7
    jp $3ac3


    ld d, b
    ld a, [$c2dc]
    and a
    jp z, $2f8c

    push hl
    push bc
    ld a, [$c6e5]
    ld c, a
    ld b, $00
    ld hl, $d1fa
    add hl, bc
    inc a
    ld [$c6e5], a
    cp $09
    ld a, [hl]
    pop bc
    pop hl
    ret c

    push hl
    push bc
    push af
    xor a
    ld [$c6e5], a
    ld hl, $d1fa
    ld b, $0a

jr_00f_6e01:
    ld a, [hl]
    ld c, a
    add a
    add a
    add c
    inc a
    ld [hl+], a
    dec b
    jr nz, jr_00f_6e01

    pop af
    pop bc
    pop hl
    ret


Call_00f_6e0f:
    ld a, $02
    call $39e1
    and $60
    ret nz

Call_00f_6e17:
    ld a, e
    ld [$cfc2], a
    ld a, d
    ld [$cfc3], a
    call $31f6
    ld a, $37
    jp $2d83


Call_00f_6e27:
Jump_00f_6e27:
    push af
    push bc
    push de
    push hl
    ld b, $01
    call $3340
    call $32f9
    call $045a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00f_6e3b:
    ld a, [$c2dc]
    and a
    ret nz

    ld a, [$cfc0]
    bit 0, a
    ret nz

    call Call_00f_70d4
    xor a
    ld [$d109], a
    ld bc, $dcdf

Jump_00f_6e50:
    ld hl, $0022
    add hl, bc
    ld a, [hl+]
    or [hl]
    jp z, Jump_00f_70b9

    push bc
    ld hl, $c664
    ld a, [$d109]
    ld c, a
    ld b, $02
    ld d, $00
    ld a, $03
    call $2d83
    ld a, c
    and a
    pop bc
    jp z, Jump_00f_70b9

    ld hl, $000c
    add hl, bc
    ld d, h
    ld e, l
    ld hl, $d225
    push bc
    ld c, $05

jr_00f_6e7c:
    inc hl
    ld a, [de]
    add [hl]
    ld [de], a
    jr nc, jr_00f_6e89

    dec de
    ld a, [de]
    inc a
    jr z, jr_00f_6ea4

    ld [de], a
    inc de

jr_00f_6e89:
    push hl
    push bc
    ld a, $1c
    call $3917
    ld a, [hl]
    and a
    pop bc
    pop hl
    jr z, jr_00f_6ea9

    ld a, [de]
    add [hl]
    ld [de], a
    jr nc, jr_00f_6ea9

    dec de
    ld a, [de]
    inc a
    jr z, jr_00f_6ea4

    ld [de], a
    inc de
    jr jr_00f_6ea9

jr_00f_6ea4:
    ld a, $ff
    ld [de], a
    inc de
    ld [de], a

jr_00f_6ea9:
    inc de
    inc de
    dec c
    jr nz, jr_00f_6e7c

    xor a
    ldh [$b4], a
    ldh [$b5], a
    ld a, [$d22c]
    ldh [$b6], a
    ld a, [$d213]
    ldh [$b7], a
    call $3119
    ld a, $07
    ldh [$b7], a
    ld b, $04
    call $3124
    pop bc
    ld hl, $0006
    add hl, bc
    ld a, [$d47b]
    cp [hl]
    jr nz, jr_00f_6edd

    inc hl
    ld a, [$d47c]
    cp [hl]
    ld a, $00
    jr z, jr_00f_6ee2

jr_00f_6edd:
    call Call_00f_7106
    ld a, $01

jr_00f_6ee2:
    ld [$d088], a
    ld a, [$d22d]
    dec a
    call nz, Call_00f_7106
    push bc
    ld a, $01
    call $3917
    ld a, [hl]
    cp $7e
    call z, Call_00f_7106
    ldh a, [$b6]
    ld [$d087], a
    ldh a, [$b5]
    ld [$d086], a
    ld a, [$d109]
    ld hl, $de41
    call $38a2
    ld hl, $711b
    call $3ac3
    ld a, [$d087]
    ldh [$b6], a
    ld a, [$d086]
    ldh [$b5], a
    pop bc
    call Call_00f_7136
    push bc
    call $309d
    pop bc
    ld hl, $000a
    add hl, bc
    ld d, [hl]
    ldh a, [$b6]
    add d
    ld [hl-], a
    ld d, [hl]
    ldh a, [$b5]
    adc d
    ld [hl], a
    jr nc, jr_00f_6f3d

    dec hl
    inc [hl]
    jr nz, jr_00f_6f3d

    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_00f_6f3d:
    ld a, [$d109]
    ld e, a
    ld d, $00
    ld hl, $dcd8
    add hl, de
    ld a, [hl]
    ld [$cf60], a
    call $3856
    push bc
    ld d, $64
    ld hl, $4e47
    ld a, $14
    rst $08
    pop bc
    ld hl, $000a
    add hl, bc
    push bc
    ldh a, [$b4]
    ld b, a
    ldh a, [$b5]
    ld c, a
    ldh a, [$b6]
    ld d, a
    ld a, [hl-]
    sub d
    ld a, [hl-]
    sbc c
    ld a, [hl]
    sbc b
    jr c, jr_00f_6f74

    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl-], a

jr_00f_6f74:
    xor a
    ld [$cf5f], a
    ld a, $1f
    call $2d83
    ld hl, $4e1b
    ld a, $14
    rst $08
    pop bc
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    cp $64
    jp nc, Jump_00f_70b9

    cp d
    jp z, Jump_00f_70b9

    ld [$c719], a
    ld a, [$d143]
    push af
    ld a, d
    ld [$d143], a
    ld [hl], a
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    ld [$cf60], a
    ld [$d265], a
    call $3856
    ld hl, $0025
    add hl, bc
    ld a, [hl-]
    ld e, a
    ld d, [hl]
    push de
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
    pop de
    ld hl, $0025
    add hl, bc
    ld a, [hl-]
    sub e
    ld e, a
    ld a, [hl]
    sbc d
    ld d, a
    dec hl
    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl], a
    ld a, [$d0d4]
    ld d, a
    ld a, [$d109]
    cp d
    jr nz, jr_00f_7035

    ld de, $c63c
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    ld de, $c63e
    push bc
    ld bc, $000c
    call $3026
    pop bc
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld [$c639], a
    ld a, [$c66c]
    bit 3, a
    jr nz, jr_00f_7012

    ld hl, $0026
    add hl, bc
    ld de, $c6b6
    ld bc, $000a
    call $3026

jr_00f_7012:
    xor a
    ld [$d265], a
    call Call_00f_6cab
    ld hl, $6c2c
    ld a, $0f
    rst $08
    ld hl, $6d45
    ld a, $0f
    rst $08
    ld hl, $5f48
    ld a, $0f
    rst $08
    call Call_00f_6dd1
    call $309d
    ld a, $01
    ldh [$d4], a

jr_00f_7035:
    ld a, $09
    ld hl, $709e
    rst $08
    ld a, [$d0d4]
    ld b, a
    ld a, [$d109]
    cp b
    jr z, jr_00f_7057

    ld de, $00b6
    call $3c23
    call $3c55
    ld hl, $4c9c
    call $3ad5
    call $309d

jr_00f_7057:
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
    ld c, $1e
    call $0468
    call $0a80
    call $30b4
    xor a
    ld [$cf5f], a
    ld a, [$cf60]
    ld [$d265], a
    ld a, [$d143]
    push af
    ld c, a
    ld a, [$c719]
    ld b, a

jr_00f_7093:
    inc b
    ld a, b
    ld [$d143], a
    push bc
    ld a, $1a
    call $2d83
    pop bc
    ld a, b
    cp c
    jr nz, jr_00f_7093

    pop af
    ld [$d143], a
    ld hl, $d1e8
    ld a, [$d109]
    ld c, a
    ld b, $01
    ld a, $03
    call $2d83
    pop af
    ld [$d143], a

Jump_00f_70b9:
    ld a, [$dcd7]
    ld b, a
    ld a, [$d109]
    inc a
    cp b
    jr z, jr_00f_70d1

    ld [$d109], a
    ld a, $00
    call $3917
    ld b, h
    ld c, l
    jp Jump_00f_6e50


jr_00f_70d1:
    jp Jump_00f_557a


Call_00f_70d4:
    ld a, [$c664]
    ld b, a
    ld c, $06
    ld d, $00

jr_00f_70dc:
    xor a
    srl b
    adc d
    ld d, a
    dec c
    jr nz, jr_00f_70dc

    cp $02
    ret c

    ld [$d265], a
    ld hl, $d226
    ld c, $07

jr_00f_70ef:
    xor a
    ldh [$b3], a
    ld a, [hl]
    ldh [$b4], a
    ld a, [$d265]
    ldh [$b7], a
    ld b, $02
    call $3124
    ldh a, [$b6]
    ld [hl+], a
    dec c
    jr nz, jr_00f_70ef

    ret


Call_00f_7106:
    push bc
    ldh a, [$b5]
    ld b, a
    ldh a, [$b6]
    ld c, a
    srl b
    rr c
    add c
    ldh [$b6], a
    ldh a, [$b5]
    adc b
    ldh [$b5], a
    pop bc
    ret


    ld d, $9c
    ld b, d
    ld [hl], b
    ld [$3121], sp
    ld [hl], c
    ld a, [$d088]
    and a
    ret z

    ld hl, $712c
    ret


    ld d, $a9
    ld b, d
    ld [hl], b
    ld d, b
    ld d, $c9
    ld b, d
    ld [hl], b
    ld d, b

Call_00f_7136:
    push bc
    ld hl, $d109
    ld a, [$d0d4]
    cp [hl]
    jp nz, Jump_00f_7219

    ld a, [$c639]
    cp $64
    jp nc, Jump_00f_7219

    ldh a, [$b6]
    ld [$d004], a
    push af
    ldh a, [$b5]
    ld [$d003], a
    push af
    xor a
    ld [$d002], a
    xor a
    ld [$cf5f], a
    ld a, $1f
    call $2d83
    ld a, [$d12d]
    ld b, a
    ld e, a
    push de
    ld de, $d118
    call Call_00f_739c
    push bc
    ld hl, $d118
    ld a, [$d004]
    add [hl]
    ld [hl-], a
    ld a, [$d003]
    adc [hl]
    ld [hl-], a
    jr nc, jr_00f_7186

    inc [hl]
    jr nz, jr_00f_7186

    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_00f_7186:
    ld d, $64
    ld hl, $4e47
    ld a, $14
    rst $08
    ldh a, [$b4]
    ld b, a
    ldh a, [$b5]
    ld c, a
    ldh a, [$b6]
    ld d, a
    ld hl, $d118
    ld a, [hl-]
    sub d
    ld a, [hl-]
    sbc c
    ld a, [hl]
    sbc b
    jr c, jr_00f_71a8

    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, d
    ld [hl-], a

jr_00f_71a8:
    ld hl, $4e1b
    ld a, $14
    rst $08
    ld a, d
    pop bc
    pop de
    ld d, a
    cp e
    jr nc, jr_00f_71b7

    ld a, e
    ld d, a

jr_00f_71b7:
    ld a, e
    cp $64
    jr nc, jr_00f_71ff

    cp d
    jr z, jr_00f_71ff

    inc a
    ld [$d12d], a
    ld [$d143], a
    ld [$c639], a
    push de
    call Call_00f_721b
    ld c, $40
    call Call_00f_722c
    call Call_00f_5fbf
    ld hl, $c621
    ld de, $d073
    ld bc, $000b
    call $3026
    call $3dfe
    ld de, $00b6
    call $3c23
    ld a, $23
    ld hl, $679d
    rst $08
    call $3c55
    ld hl, $4c9c
    call $3ad5
    pop de
    inc e
    ld b, $00
    jr jr_00f_71b7

jr_00f_71ff:
    push bc
    ld b, d
    ld de, $d118
    call Call_00f_739c
    ld a, b
    pop bc
    ld c, a
    call Call_00f_721b
    call Call_00f_722c
    call $3dfe
    pop af
    ldh [$b5], a
    pop af
    ldh [$b6], a

Jump_00f_7219:
    pop bc
    ret


Call_00f_721b:
    push bc
    call $3c55
    ld de, $008c
    call $3c23
    ld c, $0a
    call $0468
    pop bc
    ret


Call_00f_722c:
    ld d, $03
    dec b

jr_00f_722f:
    inc b
    push bc
    push de
    ld hl, $c58d
    call Call_00f_741c
    pop de
    ld a, $01
    ldh [$d4], a
    ld c, d
    call $0468
    xor a
    ldh [$d4], a
    pop bc
    ld a, c
    cp b
    jr z, jr_00f_7268

    inc b
    push bc
    push de
    ld hl, $c58d
    call Call_00f_741c
    pop de
    ld a, $01
    ldh [$d4], a
    ld c, d
    call $0468
    xor a
    ldh [$d4], a
    dec d
    jr nz, jr_00f_7263

    ld d, $01

jr_00f_7263:
    pop bc
    ld a, c
    cp b
    jr nz, jr_00f_722f

jr_00f_7268:
    ld a, $01
    ldh [$d4], a
    ret


Call_00f_726d:
    ld a, [$c2dc]
    and a
    jr z, jr_00f_727c

    ld hl, $72d1
    ld a, [$d264]
    and a
    jr nz, jr_00f_72ce

jr_00f_727c:
    ld hl, $d216
    ld a, [hl+]
    or [hl]
    ld hl, $72d1
    jr z, jr_00f_72ce

    xor a
    ldh [$b4], a
    ld hl, $d216
    ld a, [hl+]
    ld [$c6ea], a
    ldh [$b5], a
    ld a, [hl]
    ld [$c6eb], a
    ldh [$b6], a
    ld a, $19
    ldh [$b7], a
    call $3119
    ld hl, $d218
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    ld a, b
    ld b, $04
    ldh [$b7], a
    call $3124
    ldh a, [$b6]
    ld hl, $72d1
    cp $46
    jr nc, jr_00f_72ce

    ld hl, $72d8
    cp $28
    jr nc, jr_00f_72ce

    ld hl, $72df
    cp $0a
    jr nc, jr_00f_72ce

    ld hl, $72e6

jr_00f_72ce:
    jp $3ac3


    ld d, $df
    ld b, d
    ld [hl], b
    ld [$1318], sp
    ld d, $e6
    ld b, d
    ld [hl], b
    ld [$0c18], sp
    ld d, $f0
    ld b, d
    ld [hl], b
    ld [$0518], sp
    ld d, $fe
    ld b, d
    ld [hl], b
    ld [$ef21], sp
    ld [hl], d
    ret


    ld d, $17
    ld b, e
    ld [hl], b
    ld d, b

Call_00f_72f4:
    ld hl, $72fa
    jp $3ac3


    ld d, $1d
    ld b, e
    ld [hl], b
    ld [$c5d5], sp
    ld hl, $d217
    ld de, $c6eb
    ld b, [hl]
    dec hl
    ld a, [de]
    sub b
    ldh [$b6], a
    dec de
    ld b, [hl]
    ld a, [de]
    sbc b
    ldh [$b5], a
    ld a, $19
    ldh [$b7], a
    call $3119
    ld hl, $d218
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    ld a, b
    ld b, $04
    ldh [$b7], a
    call $3124
    pop bc
    pop de
    ldh a, [$b6]
    ld hl, $7348
    and a
    ret z

    ld hl, $735b
    cp $1e
    ret c

    ld hl, $734d
    cp $46
    ret c

    ld hl, $7352
    ret


    ld d, $24
    ld b, e
    ld [hl], b
    ld d, b
    ld d, $40
    ld b, e
    ld [hl], b
    ld d, b
    ld d, $52
    ld b, e
    ld [hl], b
    ld d, b
    ld hl, $735b
    ret


    ld d, $66
    ld b, e
    ld [hl], b
    ld d, b
    ld hl, $c6f0
    ld a, [hl]
    and a
    jr z, jr_00f_736d

    dec [hl]
    ld hl, $4cba
    jr jr_00f_7388

jr_00f_736d:
    dec hl
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld hl, $4cd1
    jr nz, jr_00f_7388

    push hl
    ld a, [$d206]
    ld [$cf60], a
    call $3856
    ld a, [$d23f]
    ld [$d22b], a
    pop hl

jr_00f_7388:
    push hl
    call $30b4
    pop hl
    jp $3ad5


Call_00f_7390:
    push hl
    call Call_00f_739c
    pop hl
    ld de, $0007
    add hl, de
    jp Jump_00f_741c


Call_00f_739c:
    push de
    ld d, b
    push de
    ld hl, $4e47
    ld a, $14
    rst $08
    pop de
    ld hl, $ffb4
    ld a, [hl+]
    push af
    ld a, [hl+]
    push af
    ld a, [hl]
    push af
    inc d
    ld hl, $4e47
    ld a, $14
    rst $08
    ld hl, $ffb6
    ld a, [hl]
    ldh [$ba], a
    pop bc
    sub b
    ld [hl-], a
    ld a, [hl]
    ldh [$b9], a
    pop bc
    sbc b
    ld [hl-], a
    ld a, [hl]
    ldh [$b8], a
    pop bc
    sbc b
    ld [hl], a
    pop de
    ld hl, $ffb5
    ld a, [hl+]
    push af
    ld a, [hl]
    push af
    ld a, [de]
    dec de
    ld c, a
    ldh a, [$ba]
    sub c
    ld [hl-], a
    ld a, [de]
    dec de
    ld b, a
    ldh a, [$b9]
    sbc b
    ld [hl-], a
    ld a, [de]
    ld c, a
    ldh a, [$b8]
    sbc c
    ld [hl-], a
    xor a
    ld [hl], a
    ld a, $40
    ldh [$b7], a
    call $3119
    pop af
    ld c, a
    pop af
    ld b, a

jr_00f_73f4:
    ld a, b
    and a
    jr z, jr_00f_740c

    srl b
    rr c
    ld hl, $ffb3
    srl [hl]
    inc hl
    rr [hl]
    inc hl
    rr [hl]
    inc hl
    rr [hl]
    jr jr_00f_73f4

jr_00f_740c:
    ld a, c
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b6]
    ld b, a
    ld a, $40
    sub b
    ld b, a
    ret


Call_00f_741c:
Jump_00f_741c:
    ld c, $08

jr_00f_741e:
    ld a, b
    sub $08
    jr c, jr_00f_742c

    ld b, a
    ld a, $6a
    ld [hl-], a
    dec c
    jr z, jr_00f_743c

    jr jr_00f_741e

jr_00f_742c:
    add $08
    jr z, jr_00f_7434

    add $54
    jr jr_00f_7436

jr_00f_7434:
    ld a, $62

jr_00f_7436:
    ld [hl-], a
    ld a, $62
    dec c
    jr nz, jr_00f_7434

jr_00f_743c:
    ret


Call_00f_743d:
    ld a, [$c66b]
    bit 4, a
    ld hl, $4640
    jr nz, jr_00f_746f

    ld a, [$c6fe]
    and a
    ld hl, $46cf
    jr nz, jr_00f_746f

    ld a, [$d108]
    push af
    ld a, [$c62c]
    ld [$d108], a
    ld hl, $c632
    ld a, $2d
    call $2d83
    ld de, $9310
    ld a, $3d
    call $2d83
    pop af
    ld [$d108], a
    ret


jr_00f_746f:
    ldh a, [$e4]
    push af
    xor a
    ldh [$e4], a
    ld a, $33
    rst $08
    pop af
    ldh [$e4], a
    ret


Call_00f_747c:
    ld a, [$c670]
    bit 4, a
    ld hl, $4640
    jr nz, jr_00f_74b4

    ld a, [$c6fa]
    and a
    ld hl, $46cf
    jr nz, jr_00f_74b4

    ld a, [$d108]
    push af
    ld a, [$d206]
    ld [$cf60], a
    ld [$d108], a
    call $3856
    ld hl, $d20c
    ld a, $2d
    call $2d83
    ld de, $9000
    ld a, $3e
    call $2d83
    pop af
    ld [$d108], a
    ret


jr_00f_74b4:
    ldh a, [$e4]
    push af
    call $3989
    ld a, $33
    rst $08
    pop af
    ldh [$e4], a
    ret


    ld a, [$dcd7]
    and a
    ret z

    ld a, [$d841]
    push af
    call Call_00f_74dd
    call Call_00f_4000
    call Call_00f_769e
    pop af
    ld [$d841], a
    scf
    ret


    call Call_00f_4000
    ret


Call_00f_74dd:
    ld a, $41
    ld hl, $6050
    rst $08
    call Call_00f_754e
    xor a
    ld [$d205], a
    ld [$d0d2], a
    xor a
    ldh [$de], a
    ld a, $0b
    ld hl, $6e6c
    rst $08
    ld a, $0b
    ld hl, $6e18
    rst $08
    ld a, $0b
    ld hl, $6e2f
    rst $08
    call $2ed3
    ld a, $0b
    ld hl, $6f18
    rst $08
    call Call_00f_755e
    call Call_00f_7568
    ld b, $00
    call $3340
    ld hl, $ff40
    res 6, [hl]
    call Call_00f_7b6c
    call Call_00f_7c8b
    ld hl, $ff40
    set 6, [hl]
    xor a
    ldh [$d4], a
    call Call_00f_6dd1
    ld hl, $c535
    ld bc, $050b
    call $0fb6
    ld hl, $c4a1
    ld bc, $040a
    call $0fb6
    call $300b
    ld a, [$d22d]
    cp $01
    call z, Call_00f_6036
    ld a, $01
    ldh [$d4], a
    ret


Call_00f_754e:
    ld a, [$d22f]
    and a
    jr nz, jr_00f_755a

    ld a, [$d22e]
    ld [$d108], a

jr_00f_755a:
    ld [$d204], a
    ret


Call_00f_755e:
    ld a, [$d22f]
    and a
    jp nz, Jump_00f_7594

    jp Jump_00f_7607


Call_00f_7568:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $0400
    ld a, $02
    call $3041
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld de, $d000
    ld hl, $9800
    ld bc, $0f40
    call $0eba
    pop af
    ldh [rVBK], a
    pop af
    ldh [rSVBK], a
    ret


Jump_00f_7594:
    ld [$d233], a
    ld a, $41
    ld hl, $606a
    rst $08
    xor a
    ld [$d204], a
    ld hl, $557b
    ld a, $0e
    rst $08
    ld hl, $5771
    ld a, $0e
    rst $08
    ld a, [$d233]
    cp $09
    jr nz, jr_00f_75b8

    xor a
    ld [$d289], a

jr_00f_75b8:
    ld de, $9000
    ld hl, $520d
    ld a, $14
    rst $08
    xor a
    ldh [$ad], a
    dec a
    ld [$c6e6], a
    ld hl, $c4ac
    ld bc, $0707
    ld a, $13
    call $2d83
    ld a, $ff
    ld [$c663], a
    ld a, $02
    ld [$d22d], a
    call Call_00f_5128
    jr nc, jr_00f_7606

    xor a
    ld [$d109], a
    ld a, [$dcd7]
    ld b, a

jr_00f_75ea:
    push bc
    ld a, $22
    call $3917
    ld a, [hl+]
    or [hl]
    jr z, jr_00f_75fc

    ld c, $04
    ld hl, $71c2
    ld a, $01
    rst $08

jr_00f_75fc:
    pop bc
    dec b
    jr z, jr_00f_7606

    ld hl, $d109
    inc [hl]
    jr jr_00f_75ea

jr_00f_7606:
    ret


Jump_00f_7607:
    ld a, $01
    ld [$d22d], a
    ld a, $41
    ld hl, $605d
    rst $08
    call Call_00f_68eb
    ld hl, $d208
    ld de, $c735
    ld bc, $0004
    call $3026
    ld hl, $d20e
    ld de, $c739
    ld bc, $0004
    call $3026
    ld hl, $d20c
    ld a, $2d
    call $2d83
    ld a, [$d108]
    cp $c9
    jr nz, jr_00f_7648

    ld a, [$def4]
    and a
    jr nz, jr_00f_7648

    ld a, [$d234]
    ld [$def4], a

jr_00f_7648:
    ld de, $9000
    ld a, $3e
    call $2d83
    xor a
    ld [$d233], a
    ldh [$ad], a
    ld hl, $c4ac
    ld bc, $0707
    ld a, $13
    call $2d83
    ret


    ld hl, $d208
    ld de, $d25e
    ld b, $04

jr_00f_766a:
    ld a, [de]
    inc de
    ld [hl+], a
    and a
    jr z, jr_00f_7690

    push bc
    push hl
    push hl
    dec a
    ld hl, $5b00
    ld bc, $0007
    call $30fe
    ld a, $10
    call $304d
    pop hl
    ld bc, $0005
    add hl, bc
    ld [hl], a
    pop hl
    pop bc
    dec b
    jr nz, jr_00f_766a

    ret


jr_00f_768e:
    xor a
    ld [hl+], a

jr_00f_7690:
    push bc
    push hl
    ld bc, $0005
    add hl, bc
    xor a
    ld [hl], a
    pop hl
    pop bc
    dec b
    jr nz, jr_00f_768e

    ret


Call_00f_769e:
    call Call_00f_76a5
    call Call_00f_76d0
    ret


Call_00f_76a5:
    ld a, [$c2dc]
    and a
    jr z, jr_00f_76b7

    call Call_00f_7759
    ld c, $96
    call $0468
    call Call_00f_777c
    ret


jr_00f_76b7:
    ld a, [$d0ee]
    and $0f
    ret nz

    call Call_00f_771d
    xor a
    ld [$d1e9], a
    ld a, $1c
    call $2d83
    ld a, $0b
    ld hl, $6d44
    rst $08
    ret


Call_00f_76d0:
    call Call_00f_7998
    xor a
    ld [$c2a6], a
    ld [$d22d], a
    ld [$d230], a
    ld [$c667], a
    ld [$d22e], a
    ld [$d22f], a
    ld [$d266], a
    ld [$d267], a
    ld [$d232], a
    ld [$d0d8], a
    ld [$d0da], a
    ld [$d0d9], a
    ld [$d0d2], a
    ld [$d0d5], a
    ld [$d0db], a
    ld [$d0d6], a
    ld [$d0e4], a
    ld [$d0e0], a
    ld [$d0df], a
    ld [$d0e1], a
    ld hl, $c668
    ld b, $18

jr_00f_7715:
    ld [hl+], a
    dec b
    jr nz, jr_00f_7715

    call $3c55
    ret


Call_00f_771d:
    ld hl, $c6ec
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    ret z

    ld a, [$c73d]
    and a
    jr z, jr_00f_773d

    ld hl, $c6ee
    sla [hl]
    dec hl
    rl [hl]
    dec hl
    rl [hl]
    jr nc, jr_00f_773d

    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl], a

jr_00f_773d:
    ld hl, $c6ee
    ld de, $d850
    call Call_00f_50be
    ld hl, $4730
    call $3ad5
    ld a, [$cfc0]
    bit 0, a
    ret z

    call $0fc8
    call $31f3
    ret


Call_00f_7759:
    ld a, $41
    ld hl, $60df
    rst $08
    ld a, $41
    ld hl, $6187
    rst $08
    ld a, [$c663]
    ld hl, $d2a8
    call $3927
    ld a, [$d214]
    ld [hl], a
    call $0fc8
    ld a, $0b
    ld hl, $41b2
    rst $08
    ret


Call_00f_777c:
    ld a, $0f
    ld hl, $52e0
    rst $08
    jp c, Jump_00f_780f

    call Call_00f_7830
    jr nz, jr_00f_7797

    ld hl, $cd2a
    bit 4, [hl]
    jr z, jr_00f_7797

    ld a, $0a
    ld hl, $7930
    rst $08

jr_00f_7797:
    ld a, [$d0ee]
    and $0f
    cp $01
    jr c, jr_00f_77ad

    jr z, jr_00f_77b8

    ld a, $41
    ld hl, $6107
    rst $08
    ld de, $7808
    jr jr_00f_77c3

jr_00f_77ad:
    ld a, $41
    ld hl, $60fb
    rst $08
    ld de, $77f7
    jr jr_00f_77c3

jr_00f_77b8:
    ld a, $41
    ld hl, $6101
    rst $08
    ld de, $77ff
    jr jr_00f_77c3

jr_00f_77c3:
    ld hl, $c546
    call $1078
    ld a, $41
    ld hl, $6187
    rst $08
    ld c, $c8
    call $0468
    ld a, $01
    call $2fcb
    call Call_00f_7a42
    call Call_00f_785f
    call $2fe1
    call Call_00f_7830
    jr z, jr_00f_77ee

    call $0a80
    call $0fc8
    ret


jr_00f_77ee:
    ld c, $c8
    call $0468
    call $0fc8
    ret


    sbc b
    adc [hl]
    sub h
    ld a, a
    sub [hl]
    adc b
    adc l
    ld d, b
    sbc b
    adc [hl]
    sub h
    ld a, a
    adc e
    adc [hl]
    sub d
    add h
    ld d, b
    ld a, a
    ld a, a
    add e
    sub c
    add b
    sub [hl]
    ld d, b

Jump_00f_780f:
    ld hl, $c546
    ld de, $7821
    call $1078
    ld c, $c8
    call $0468
    call $0fc8
    ret


    adc b
    adc l
    sub l
    add b
    adc e
    adc b
    add e
    ld a, a
    add c
    add b
    sub e
    sub e
    adc e
    add h
    ld d, b

Call_00f_7830:
    ld a, [$c2dc]
    cp $04
    ret


    ld a, $01
    call $2fcb
    call Call_00f_785f
    call $2fe1
    ld hl, $cdd9
    xor a
    ld bc, $0168
    call $3041
    call $3200
    ld b, $08
    call $3340
    call $32f9
    ld c, $08
    call $0468
    call $0a80
    ret


Call_00f_785f:
    call $0fc8
    call $300b
    call Call_00f_78e0
    ld hl, $c540
    ld b, $05
    ld de, $b268

jr_00f_7870:
    push bc
    push hl
    push de
    ld a, [de]
    and a
    jr z, jr_00f_78c9

    ld a, [$d4b4]
    and a
    jr z, jr_00f_78c9

    push hl
    push hl
    ld h, d
    ld l, e
    ld de, $d002
    ld bc, $000a
    call $3026
    ld a, $50
    ld [de], a
    inc de
    ld bc, $0006
    call $3026
    ld de, $d002
    pop hl
    call $1078
    pop hl
    ld de, $001a
    add hl, de
    push hl
    ld de, $d00d
    ld bc, $0204
    call $3198
    pop hl
    ld de, $0005
    add hl, de
    push hl
    ld de, $d00f
    ld bc, $0204
    call $3198
    pop hl
    ld de, $0005
    add hl, de
    ld de, $d011
    ld bc, $0204
    call $3198
    jr jr_00f_78cf

jr_00f_78c9:
    ld de, $7947
    call $1078

jr_00f_78cf:
    pop hl
    ld bc, $0012
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld bc, $0028
    add hl, bc
    pop bc
    dec b
    jr nz, jr_00f_7870

    ret


Call_00f_78e0:
    ld hl, $c4a1
    ld de, $7964
    call $1078
    ld hl, $c518
    ld de, $796e
    call $1078
    ld hl, $c4c8
    ld de, $7983
    call $1078
    ld hl, $c4f6
    ld de, $b260
    call Call_00f_792b
    jr c, jr_00f_792a

    ld bc, $0204
    call $3198
    ld hl, $c4fb
    ld de, $b262
    call Call_00f_792b
    ld bc, $0204
    call $3198
    ld hl, $c500
    ld de, $b264
    call Call_00f_792b
    ld bc, $0204
    call $3198

jr_00f_792a:
    ret


Call_00f_792b:
    ld a, [$d4b4]
    and a
    ret nz

    ld de, $7938
    call $1078
    scf
    ret


    ld a, a
    ld a, a
    ld a, a
    or $7f
    ld a, a
    ld a, a
    ld a, a
    or $7f
    ld a, a
    ld a, a
    ld a, a
    or $50
    ld a, a
    ld a, a
    db $e3
    db $e3
    db $e3
    ld a, a
    ld a, a
    ld [hl+], a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $e3
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $e3
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    db $e3
    ld d, b
    ld d, d
    call nc, $917f
    add h
    add d
    adc [hl]
    sub c
    add e
    ld d, b
    sub c
    add h
    sub d
    sub h
    adc e
    sub e
    ld a, a
    sub [hl]
    adc b
    adc l
    ld a, a
    adc e
    adc [hl]
    sub d
    add h
    ld a, a
    add e
    sub c
    add b
    sub [hl]
    ld d, b
    sub e
    adc [hl]
    sub e
    add b
    adc e
    ld a, a
    ld a, a
    sub [hl]
    adc b
    adc l
    ld a, a
    adc e
    adc [hl]
    sub d
    add h
    ld a, a
    add e
    sub c
    add b
    sub [hl]
    ld d, b

Call_00f_7998:
    ld a, [$d230]
    cp $05
    jr nz, jr_00f_79c4

    ld a, [$d0ee]
    and $0f
    jr z, jr_00f_79af

    call Call_00f_7a01
    ld a, [$d217]
    ld [hl], a
    jr jr_00f_79ca

jr_00f_79af:
    call Call_00f_7a01
    ld [hl], $00
    call Call_00f_79d1
    ld [hl], $ff
    call Call_00f_79e9
    ld [hl], $ff
    call Call_00f_7a31
    ld [hl], $00
    ret


jr_00f_79c4:
    call $2f9f
    and $0f
    ret nz

jr_00f_79ca:
    ld hl, $630d
    ld a, $0a
    rst $08
    ret


Call_00f_79d1:
    ld a, [$d204]
    ld b, a
    ld a, [$dfcf]
    cp b
    ld hl, $dfd1
    ret z

    ld a, [$dfd6]
    cp b
    ld hl, $dfd8
    ret z

    ld hl, $dfdf
    ret


Call_00f_79e9:
    ld a, [$d204]
    ld b, a
    ld a, [$dfcf]
    cp b
    ld hl, $dfd2
    ret z

    ld a, [$dfd6]
    cp b
    ld hl, $dfd9
    ret z

    ld hl, $dfe0
    ret


Call_00f_7a01:
    ld a, [$d204]
    ld b, a
    ld a, [$dfcf]
    cp b
    ld hl, $dfd3
    ret z

    ld a, [$dfd6]
    cp b
    ld hl, $dfda
    ret z

    ld hl, $dfe1
    ret


Call_00f_7a19:
    ld a, [$d204]
    ld b, a
    ld a, [$dfcf]
    cp b
    ld hl, $dfd4
    ret z

    ld a, [$dfd6]
    cp b
    ld hl, $dfdb
    ret z

    ld hl, $dfe2
    ret


Call_00f_7a31:
    ld a, [$d204]
    ld hl, $dfcf
    cp [hl]
    ret z

    ld hl, $dfd6
    cp [hl]
    ret z

    ld hl, $dfdd
    ret


Call_00f_7a42:
    ld hl, $d276
    ld de, $d073
    ld bc, $0002
    call $3026
    ld hl, $d26b
    ld bc, $000a
    call $3026
    ld hl, $b254
    call Call_00f_7aa0
    ld hl, $b266
    ld d, $05

jr_00f_7a62:
    push hl
    inc hl
    inc hl
    ld a, [hl]
    dec hl
    dec hl
    and a
    jr z, jr_00f_7a85

    push de
    ld bc, $000c
    ld de, $d073
    call $31e4
    pop de
    pop hl
    jr c, jr_00f_7a99

    ld bc, $0012
    add hl, bc
    dec d
    jr nz, jr_00f_7a62

    ld bc, $ffee
    add hl, bc
    push hl

jr_00f_7a85:
    ld d, h
    ld e, l
    ld hl, $d073
    ld bc, $000c
    call $3026
    ld b, $06
    xor a

jr_00f_7a93:
    ld [de], a
    inc de
    dec b
    jr nz, jr_00f_7a93

    pop hl

jr_00f_7a99:
    call Call_00f_7aa0
    call Call_00f_7ac8
    ret


Call_00f_7aa0:
    ld a, [$d0ee]
    and $0f
    cp $01
    ld bc, $000d
    jr c, jr_00f_7ab4

    ld bc, $000f
    jr z, jr_00f_7ab4

    ld bc, $0011

jr_00f_7ab4:
    add hl, bc
    call Call_00f_7abe
    ret nc

    inc [hl]
    ret nz

    dec hl
    inc [hl]
    ret


Call_00f_7abe:
    dec hl
    ld a, [hl]
    inc hl
    cp $27
    ret c

    ld a, [hl]
    cp $0f
    ret


Call_00f_7ac8:
    ld b, $05
    ld hl, $b277
    ld de, $d002

jr_00f_7ad0:
    push bc
    push de
    push hl
    call Call_00f_7b54
    pop hl
    ld a, e
    pop de
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de
    ld bc, $0012
    add hl, bc
    pop bc
    dec b
    jr nz, jr_00f_7ad0

    ld b, $00
    ld c, $01

jr_00f_7aed:
    ld a, b
    add b
    add b
    ld e, a
    ld d, $00
    ld hl, $d002
    add hl, de
    push hl
    ld a, c
    add c
    add c
    ld e, a
    ld d, $00
    ld hl, $d002
    add hl, de
    ld d, h
    ld e, l
    pop hl
    push bc
    ld c, $03
    call $31db
    pop bc
    jr z, jr_00f_7b10

    jr nc, jr_00f_7b1f

jr_00f_7b10:
    inc c
    ld a, c
    cp $05
    jr nz, jr_00f_7aed

    inc b
    ld c, b
    inc c
    ld a, b
    cp $04
    jr nz, jr_00f_7aed

    ret


jr_00f_7b1f:
    push bc
    ld a, b
    ld bc, $0012
    ld hl, $b266
    call $30fe
    push hl
    ld de, $d002
    ld bc, $0012
    call $3026
    pop hl
    pop bc
    push hl
    ld a, c
    ld bc, $0012
    ld hl, $b266
    call $30fe
    pop de
    push hl
    ld bc, $0012
    call $3026
    ld hl, $d002
    ld bc, $0012
    pop de
    call $3026
    ret


Call_00f_7b54:
    ld e, $00
    ld a, [hl-]
    ld c, a
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    add c
    ld c, a
    ld a, [hl-]
    adc b
    ld b, a
    jr nc, jr_00f_7b63

    inc e

jr_00f_7b63:
    ld a, [hl-]
    add c
    ld c, a
    ld a, [hl]
    adc b
    ld b, a
    ret nc

    inc e
    ret


Call_00f_7b6c:
    call Call_00f_7bf8
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    ld a, $00
    ld hl, $3ab2
    rst $08
    ld hl, $c505
    ld bc, $0307
    call $0fb6
    call $0e51
    call Call_00f_6d9f
    call Call_00f_7bd6
    xor a
    ldh [$de], a
    ldh [$d0], a
    ld a, $90
    ldh [$d2], a
    ldh [rWY], a
    call $31f6
    xor a
    ldh [$d4], a
    ld a, $13
    ld hl, $6980
    rst $08
    ld a, $01
    ldh [$d4], a
    ld a, $31
    ldh [$ad], a
    ld hl, $c51a
    ld bc, $0606
    ld a, $13
    call $2d83
    xor a
    ldh [$d2], a
    ldh [rWY], a
    call $31f6
    call $3016
    ld b, $01
    call $3340
    call $32f9
    ld a, $90
    ldh [$d2], a
    xor a
    ldh [$cf], a
    ret


Call_00f_7bd6:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld hl, $d000
    ld bc, $0400
    ld a, $7f
    call $3041
    ld de, $d000
    ld hl, $9800
    ld bc, $0f40
    call $0eba
    pop af
    ldh [rSVBK], a
    ret


Call_00f_7bf8:
    call Call_00f_7bff
    call Call_00f_7c30
    ret


Call_00f_7bff:
    ld b, $0a
    ld hl, $7baa
    ld a, [$d230]
    cp $03
    jr z, jr_00f_7c25

    ld a, [$d45b]
    bit 2, a
    jr nz, jr_00f_7c20

    ld a, [$d472]
    bit 0, a
    jr z, jr_00f_7c20

    ld a, $22
    ld hl, $4ec9
    rst $08
    ret


jr_00f_7c20:
    ld b, $0a
    ld hl, $7a1a

jr_00f_7c25:
    ld de, $9310
    ld c, $31
    ld a, $40
    call $2d83
    ret


Call_00f_7c30:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    ld hl, $8000
    ld de, $9310
    ldh a, [$9d]
    ld b, a
    ld c, $31
    call $0f82
    pop af
    ldh [rSVBK], a
    call Call_00f_7c5b
    ld a, $31
    ldh [$ad], a
    ld hl, $c51a
    ld bc, $0606
    ld a, $13
    call $2d83
    ret


Call_00f_7c5b:
    ld hl, $c400
    xor a
    ldh [$af], a
    ld b, $06
    ld e, $a8

jr_00f_7c65:
    ld c, $03
    ld d, $40

jr_00f_7c69:
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ldh a, [$af]
    ld [hl+], a
    inc a
    ldh [$af], a
    ld a, $01
    ld [hl+], a
    ld a, d
    add $08
    ld d, a
    dec c
    jr nz, jr_00f_7c69

    ldh a, [$af]
    add $03
    ldh [$af], a
    ld a, e
    add $08
    ld e, a
    dec b
    jr nz, jr_00f_7c65

    ret


Call_00f_7c8b:
    ld a, [$d22d]
    dec a
    jr z, jr_00f_7caa

    ld de, $005e
    call $3c23
    call $3c55
    ld c, $14
    call $0468
    ld a, $0e
    ld hl, $5939
    rst $08
    ld hl, $47a9
    jr jr_00f_7d0e

jr_00f_7caa:
    call Call_00f_5a79
    jr nc, jr_00f_7cc2

    xor a
    ld [$cfca], a
    ld a, $01
    ldh [$e4], a
    ld a, $01
    ld [$c689], a
    ld de, $0101
    call Call_00f_6e17

jr_00f_7cc2:
    ld a, $0f
    ld hl, $6b38
    rst $08
    jr c, jr_00f_7ceb

    ld a, $13
    ld hl, $6a44
    rst $08
    jr c, jr_00f_7ce0

    ld hl, $c4ac
    ld d, $00
    ld e, $01
    ld a, $47
    call $2d83
    jr jr_00f_7ceb

jr_00f_7ce0:
    ld a, $0f
    ld [$c2bd], a
    ld a, [$d204]
    call $37b6

jr_00f_7ceb:
    ld a, [$d230]
    cp $04
    jr nz, jr_00f_7cfd

    ld a, $41
    ld hl, $6086
    rst $08
    ld hl, $475c
    jr jr_00f_7d0e

jr_00f_7cfd:
    ld hl, $4778
    cp $08
    jr z, jr_00f_7d0e

    ld hl, $4793
    cp $0b
    jr z, jr_00f_7d0e

    ld hl, $4746

jr_00f_7d0e:
    push hl
    ld a, $0b
    ld hl, $4000
    rst $08
    pop hl
    call $3ad5
    call Call_00f_7830
    ret nz

    ld c, $02
    ld a, $13
    ld hl, $6a0a
    rst $08
    ret


    nop
    nop
    add h
    ld b, b
    db $db
    ld b, e
    ld b, c
    ld b, l
    ld d, l
    ld b, l
    ld sp, $dc46
    ld d, d
    jp nc, $fd46

    ld c, h
    ld [hl-], a
    ld c, l
    xor $4e
    ld h, b
    ld c, a
    inc b
    ld d, b
    inc hl
    ld d, b
    ld e, [hl]
    ld d, b
    ld [hl], l
    ld d, c
    xor l
    ld d, c
    ret nz

    ld d, c
    ld d, b
    ld d, d
    xor $5e
    ld e, h
    ld e, [hl]
    rst $38
    ld e, a
    ld [$8c60], sp
    ld h, b
    ld [bc], a
    ld h, c
    ld h, l
    ld h, c
    add b
    ld [hl], e
    ret


    ld [hl], e
    db $e4
    ld h, c
    db $e3
    ld h, d
    ld e, h
    ld [hl], b
    ld a, a
    ld [hl], b
    ld c, $71
    ld [hl], c
    ld h, [hl]
    push hl
    ld h, [hl]
    rrca
    ld l, b
    or [hl]
    ld l, c
    and b
    ld l, d
    di
    ld l, d
    or d
    ld l, h
    ld a, [hl]
    ld l, h
    sbc b
    ld l, h
    dec sp
    ld l, l
    dec e
    ld l, l
    ld a, $71
    call $fc71
    ld [hl], d
    inc l
    ld e, a
    rst $00
    ld l, l
    ld a, h
    ld l, [hl]
    dec bc
    ld l, a
    ld b, [hl]
    ld l, a
    jr jr_00f_7e04

    sbc l
    ld l, a
    pop hl
    ld l, a
    db $ed
    ld l, a
    add l
    ld a, [hl]
    ld c, l
    ld l, e
    ld a, [hl-]
    ld l, e
    dec l
    ld l, h
    inc l
    ld l, h
    ld d, c
    ld h, a
    ld a, [de]
    ld h, a
    ld h, $57
    inc de
    ld e, b
    ld h, h
    ld e, b
    ld h, $59
    ret nc

    ld e, c
    and $59
    ld d, e
    ld e, d
    ld [hl], h
    ld e, d
    ld d, $5b
    inc sp
    ld e, e
    rst $38
    ld e, e
    rrca
    ld e, h
    sub h
    ld e, h
    ret


    ld e, h
    ret


    ld l, d
    or d
    ld b, [hl]
    call $9246
    ld [hl], h
    rla
    ld [hl], l
    ld [hl], $75
    ld h, e
    ld [hl], l
    adc b
    ld [hl], l
    jr @+$78

    add e
    db $76
    and b
    db $76
    jp nz, $f876

    db $76
    ld l, a
    db $76
    jr jr_00f_7e55

    inc [hl]
    ld [hl], a
    sub c
    ld [hl], a
    sub d
    ld [hl], a
    adc $77
    ld c, e
    ld a, b
    ld [hl], h
    ld a, b
    ld [de], a
    ld d, [hl]
    ld c, $79
    add hl, sp
    ld a, c
    ld [hl], d
    ld a, c
    sub c
    ld a, c
    ret


    ld a, c
    dec e
    ld a, e
    add hl, sp
    ld a, e
    ld [hl], h
    ld a, e
    ld a, b
    ld a, e
    ld a, h
    ld a, e
    add sp, $7b
    db $f4
    ld a, e

jr_00f_7e04:
    rlca
    ld a, h
    xor h
    ld h, c
    or b
    ld h, c
    or h
    ld h, c
    cp b
    ld h, c
    cp h
    ld h, c
    ret nz

    ld h, c
    call nz, $c861
    ld h, c
    call z, $d061
    ld h, c
    call nc, $d861
    ld h, c
    call c, $e061
    ld h, c
    xor l
    ld h, d
    or c
    ld h, d
    or l
    ld h, d
    cp c
    ld h, d
    cp l
    ld h, d
    pop bc
    ld h, d
    push bc
    ld h, d
    ret


    ld h, d
    call $d162
    ld h, d
    push de
    ld h, d
    reti


    ld h, d
    db $dd
    ld h, d
    pop hl
    ld h, d
    cp b
    ld h, e
    jp hl


    ld h, e
    ld c, h
    ld h, h
    ld l, d
    ld h, h
    call z, $db4e
    ld c, a
    pop de
    ld c, a
    db $fd
    ld c, a
    add d
    ld l, d
    ld a, [de]
    ld a, h
    ld d, l
    ld a, h
    dec e

jr_00f_7e55:
    ld l, a
    dec h
    ld l, a
    cpl
    ld l, a
    sub l
    ld a, h
    dec c
    ld a, l
    inc [hl]
    ld a, l
    and $7c
    ld [bc], a
    ld a, l
    sub h
    ld a, l
    ld a, b
    ld h, a
    ld h, c
    ld d, h
    ld a, e
    ld d, d
    inc sp
    ld c, b
    nop
    ld h, l
    ld h, l
    ld d, c
    xor a
    ld h, l
    jp $b565


    ld d, l
    push de
    ld d, l
    add b
    ld a, [hl]
    ld d, a
    ld c, a
    adc a
    ld h, l
    and l
    ld d, c
    sub a
    ld d, c
    and a
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
