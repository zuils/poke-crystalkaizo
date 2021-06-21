; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    push de
    xor a
    call $2fcb
    ld hl, $a000
    ld bc, $0000

jr_038_400b:
    push bc
    push hl
    push bc
    ld de, $d002
    call Call_038_404e
    call Call_038_4057
    ld hl, $408b
    pop bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $d012
    call Call_038_404e
    pop hl
    ld bc, $0010
    add hl, bc
    pop bc
    inc c
    ld a, c
    cp $31
    jr c, jr_038_400b

    ld hl, $c800
    ld de, $a000
    ld bc, $0310
    call $3026
    pop hl
    ld de, $a000
    ld c, $31
    ldh a, [$9d]
    ld b, a
    call $0f82
    call $2fe1
    ret


Call_038_404e:
    ld c, $10

jr_038_4050:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_038_4050

    ret


Call_038_4057:
    ld hl, $d012
    ld e, $80
    ld d, $08

jr_038_405e:
    push hl
    ld hl, $d002
    call Call_038_4078
    pop hl
    ld a, b
    ld [hl+], a
    push hl
    ld hl, $d003
    call Call_038_4078
    pop hl
    ld a, b
    ld [hl+], a
    srl e
    dec d
    jr nz, jr_038_405e

    ret


Call_038_4078:
    ld b, $00
    ld c, $08

jr_038_407c:
    ld a, [hl+]

jr_038_407d:
    and e
    jr z, jr_038_4083

    scf
    jr jr_038_4084

jr_038_4083:
    and a

jr_038_4084:
    rr b
    inc hl
    dec c
    jr nz, jr_038_407c

    ret


jr_038_408b:
    and b
    jp z, $ca30

    ret nz

    ret


    ld d, b
    ret


    ldh [$c8], a
    ld [hl], b

jr_038_4096:
    ret z

    nop
    ret z

    or b
    jp z, $ca40

    ret nc

    ret


    ld h, b
    ret


    ldh a, [$c8]
    add b

jr_038_40a4:
    ret z

    db $10
    ret z

    ret nz

    jp z, $ca50

    ldh [$c9], a
    ld [hl], b
    ret


    nop
    ret


    sub b
    ret z

    jr nz, jr_038_407d

    ret nc

    jp z, $ca60

    ldh a, [$c9]
    add b
    ret


    db $10
    ret


    and b
    ret z

    jr nc, jr_038_408b

    ldh [$ca], a
    ld [hl], b
    jp z, $ca00

    sub b
    ret


    jr nz, jr_038_4096

    or b
    ret z

    ld b, b
    ret z

    ldh a, [$ca]
    add b
    jp z, $ca10

    and b
    ret


    jr nc, jr_038_40a4

    ret nz

    ret z

    ld d, b
    ret z

    nop
    res 2, b
    jp z, $ca20

    or b
    ret


    ld b, b
    ret


    ret nc

    ret z

    ld h, b
    ret z

Call_038_40ed:
    ret


    ld hl, $cfcc
    set 4, [hl]
    call $31f3
    call $0fc8
    call $300b
    ld de, $0000
    call $3b97
    call $045a
    call $0568
    call $0e51
    call $0e5f
    ld hl, $4d16
    ld de, $9000
    call $0b50
    ld hl, $4ea8
    ld de, $93e0
    call $0b50
    ld hl, $4cdb
    ld de, $8000
    call $0b50
    ld hl, $4cf6
    ld de, $8ef0
    ld bc, $0010
    call $3026
    ld hl, $4d06
    ld de, $8f50
    ld bc, $0010
    call $3026
    call Call_038_4521
    call Call_038_44c1
    call $4c37
    call $058a
    call $3200
    ld a, $e4
    call $0c9f
    ld de, $e4e4
    call $0ccb
    call $045a
    xor a
    ld [$cf63], a
    ld a, $02
    ld [$cf64], a
    ld [$cf65], a
    ld de, $0012
    call $3b97

jr_038_4170:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_038_417c

    call Call_038_4191
    jr jr_038_4170

jr_038_417c:
    call $3c55
    ld de, $009d
    call $3c23
    call $3c55
    call $31f3
    ld hl, $cfcc
    res 4, [hl]
    ret


Call_038_4191:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $41a0
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or l
    ld b, c
    jp nc, $1741

    ld b, d
    or a
    ld b, d
    jp c, $1442

    ld b, e
    ld e, $43
    ld h, b
    ld b, e

Call_038_41b0:
    ld hl, $cf63
    inc [hl]
    ret


    ld hl, $41cd
    call Call_038_4489
    call $1dcf
    jr c, jr_038_41c7

    call Call_038_4366
    call Call_038_41b0
    ret


jr_038_41c7:
    ld a, $07
    ld [$cf63], a
    ret


    ld d, $93
    ld d, a
    ld [hl], c
    ld d, b
    ld a, [$d855]
    ld h, a
    ld a, [$d856]
    ld l, a
    ld a, h
    and a
    jr nz, jr_038_41ef

    ld a, l
    cp $03
    jr nc, jr_038_41ef

    ld hl, $4212
    call Call_038_4489
    ld a, $07
    ld [$cf63], a
    ret


jr_038_41ef:
    ld de, $fffd
    add hl, de
    ld a, h
    ld [$d855], a
    ld a, l
    ld [$d856], a
    ld de, $0022
    call $3c23
    xor a
    ldh [$d4], a
    call Call_038_449c
    ld a, $01
    ldh [$d4], a
    call $3c55
    call Call_038_41b0
    ret


    ld d, $ab
    ld d, a
    ld [hl], c
    ld d, b
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0c09
    call Call_038_44e5
    ld hl, $c4a9
    ld bc, $0014
    ld a, [$c6e8]
    call $30fe
    ld [hl], $f5
    ld a, $01
    ldh [$d4], a
    ld c, $14
    call $0468
    ld hl, $c4a2
    call Call_038_43c1
    ld a, $01
    ldh [$d4], a
    ld c, $14
    call $0468
    ld hl, $c51a
    call Call_038_43c1
    call $31f6
    ld hl, $42b2
    call Call_038_4489
    xor a
    ld [$cf66], a

jr_038_425c:
    call $0a57
    ldh a, [$a9]
    and $01
    jr nz, jr_038_427c

    ld de, $002f
    call $3c23
    call Call_038_4849
    ld c, $04
    call $0468
    ld hl, $cf66
    ld a, [hl]
    xor $01
    ld [hl], a
    jr jr_038_425c

jr_038_427c:
    ld de, $002c
    call $3c23
    ld a, $03

jr_038_4284:
    push af
    call Call_038_4849
    ld c, $04
    call $0468
    call $300b
    ld c, $04
    call $0468
    pop af
    dec a
    jr nz, jr_038_4284

    ld hl, $cf66
    ld a, [hl]
    push af
    xor $01
    ld [hl], a
    call Call_038_43ac
    ld bc, $0605
    call Call_038_44e5
    pop af
    ld [$cf66], a
    call Call_038_41b0
    ret


    ld d, $be
    ld d, a
    ld [hl], c
    ld d, b
    ld hl, $42d5
    call Call_038_4489

jr_038_42bd:
    call $0a57
    ldh a, [$a9]
    and $01
    jr nz, jr_038_42d1

    call Call_038_489c
    call Call_038_4960
    call $045a
    jr jr_038_42bd

jr_038_42d1:
    call Call_038_41b0
    ret


    ld d, $ce
    ld d, a
    ld [hl], c
    ld d, b
    xor a
    ldh [$9b], a
    call Call_038_4960
    call $3c55
    ld de, $009a
    call $3c23
    call $3c55
    ld a, [$c6e8]
    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    add hl, de
    ld a, [$cf66]
    ld e, a
    add hl, de
    ld a, [hl]
    ld [$c6e9], a
    ld e, a
    ld hl, $c6ea
    add hl, de
    ld [hl], $01
    call Call_038_43ac
    call Call_038_43ec
    call $3200
    call Call_038_41b0
    ret


    call Call_038_4637
    call $0a80
    call Call_038_41b0
    ret


    call $300b
    ld hl, $4356
    call Call_038_4489
    call $1dcf
    jr nc, jr_038_4330

    call Call_038_41b0
    ret


jr_038_4330:
    ld a, [$c6e8]
    inc a
    ld [$c6e8], a
    cp $0c
    jr c, jr_038_434d

    call Call_038_44c1
    ld a, $01
    ldh [$d4], a
    call Call_038_4366
    ld hl, $435b
    call $1057
    jr jr_038_4350

jr_038_434d:
    call Call_038_4534

jr_038_4350:
    ld a, $01
    ld [$cf63], a
    ret


    ld d, $df
    ld d, a
    ld [hl], c
    ld d, b
    ld d, $f4
    ld d, a
    ld [hl], c
    ld d, b
    ld hl, $cf63
    set 7, [hl]
    ret


Call_038_4366:
    ld hl, $c6d0
    ld bc, $0018
    xor a
    call $3041
    ld de, $c6d0
    ld c, $17

jr_038_4375:
    call $2f8c
    and $1f
    cp $18
    jr nc, jr_038_4375

    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_038_4375

    ld [hl], c
    dec c
    jr nz, jr_038_4375

    xor a
    ld [$c6e8], a
    ld hl, $c6ea
    ld bc, $0018
    call $3041
    ret


Call_038_4398:
    ld hl, $0000
    ld bc, $0006
    ld a, [$cf64]
    call $30fe
    ld b, $00
    ld a, [$cf65]
    ld c, a
    add hl, bc
    ret


Call_038_43ac:
    ld a, [$cf66]
    and a
    jr nz, jr_038_43ba

    ld hl, $c4a2
    ld bc, $1018
    jr jr_038_43c0

jr_038_43ba:
    ld hl, $c51a
    ld bc, $4018

jr_038_43c0:
    ret


Call_038_43c1:
    xor a
    ldh [$d4], a
    ld de, $43ce
    ld bc, $0605
    call Call_038_44f7
    ret


    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec bc
    jr z, @+$2d

    jr z, jr_038_43e4

    dec bc
    inc l
    dec l
    ld l, $0c
    dec bc
    cpl
    jr nc, jr_038_4412

    inc c
    dec bc
    ld [hl-], a

jr_038_43e4:
    inc sp
    inc [hl]
    inc c
    dec c
    ld c, $0e
    ld c, $0f

Call_038_43ec:
    xor a
    ldh [$d4], a
    push hl
    push hl
    ld de, $443b
    ld bc, $0605
    call Call_038_44f7
    ld a, [$c6e9]
    ld e, a
    ld d, $00
    ld hl, $4459
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    ld bc, $0017
    add hl, bc
    ld [hl], e
    ld bc, $0012
    add hl, bc

jr_038_4412:
    ld a, d
    ld de, $0014
    ld b, $03

jr_038_4418:
    push hl
    ld c, $03

jr_038_441b:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_038_441b

    pop hl
    add hl, de
    dec b
    jr nz, jr_038_4418

    pop hl
    ldh a, [$e6]
    and a
    ret z

    ld de, $0939
    add hl, de
    ld a, [$c6e9]
    and $03
    inc a
    ld bc, $0605
    call Call_038_44e7
    ret


    jr @+$1b

    add hl, de
    add hl, de
    ld a, [de]
    dec de
    dec [hl]
    ld a, a
    ld a, a
    inc e
    dec bc

Call_038_4446:
    jr z, jr_038_4470

    jr z, @+$0e

    dec bc
    jr z, jr_038_4475

    jr z, jr_038_445b

    dec bc
    jr z, jr_038_447a

    jr z, jr_038_4460

    dec e
    ld e, $1e
    ld e, $1f
    rst $30
    ld c, [hl]

jr_038_445b:
    rst $30
    ld d, a
    rst $30
    ld l, c
    rst $30

jr_038_4460:
    ld h, b
    ld hl, sp+$4e
    ld hl, sp+$57
    ld hl, sp+$69
    ld hl, sp+$60
    ld sp, hl
    ld c, [hl]
    ld sp, hl
    ld d, a
    ld sp, hl
    ld l, c
    ld sp, hl

jr_038_4470:
    ld h, b
    ld a, [$fa4e]
    ld d, a

jr_038_4475:
    ld a, [$fa69]
    ld h, b
    ei

jr_038_447a:
    ld c, [hl]
    ei
    ld d, a
    ei
    ld l, c
    ei
    ld h, b
    db $fc
    ld c, [hl]
    db $fc
    ld d, a
    db $fc
    ld l, c
    db $fc
    ld h, b

Call_038_4489:
    push hl
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    pop hl
    call $1065
    call Call_038_449c
    ret


Call_038_449c:
    ld hl, $c5d5
    ld b, $01
    ld c, $09
    call $0fe8
    ld hl, $c5ea
    ld de, $44bc
    call $1078
    ld hl, $c5ef
    ld de, $d855
    ld bc, $8204
    call $3198
    ret


    add d
    adc [hl]
    adc b
    adc l
    ld d, b

Call_038_44c1:
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $29
    call $3041
    ld hl, $c4a9
    ld de, $510c
    ld bc, $0c0b
    call Call_038_44f7
    ld hl, $c590
    ld bc, $0412
    call $0fe8
    ret


Call_038_44e5:
    ld a, $29

Call_038_44e7:
jr_038_44e7:
    push bc
    push hl

jr_038_44e9:
    ld [hl+], a
    dec c
    jr nz, jr_038_44e9

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_038_44e7

    ret


Call_038_44f7:
jr_038_44f7:
    push bc
    push hl

jr_038_44f9:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_038_44f9

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_038_44f7

    ret


Call_038_4509:
    ld de, $c400
    ld a, [hl+]

jr_038_450d:
    push af
    ld a, [hl+]
    add b
    ld [de], a
    inc de
    ld a, [hl+]
    add c
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    pop af
    dec a
    jr nz, jr_038_450d

    ret


Call_038_4521:
    ld de, $8f60
    ld hl, $8f62
    ld bc, $009e
    call $3026
    ld hl, $8ffe
    xor a
    ld [hl+], a
    ld [hl], a
    ret


Call_038_4534:
    xor a
    ldh [$d4], a
    ld a, [$c6e9]
    ld e, a
    ld d, $00
    and $03
    ld c, a
    ld b, $00
    ld a, e
    and $1c
    srl a
    add $53
    ld l, a
    ld a, $00
    adc $45
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld e, a
    ld b, l
    add e
    ld b, l
    and a
    ld b, l
    bit 0, l
    rst $28
    ld b, l
    inc de
    ld b, [hl]
    ld hl, $c6ee
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_038_4575

    ld hl, $c4e9
    add hl, bc
    add hl, bc
    ld [hl], $36
    ld bc, $0014
    add hl, bc
    ld [hl], $37
    ret


jr_038_4575:
    ld hl, $c4e9
    add hl, bc
    add hl, bc
    ld [hl], $36
    ld bc, $0014
    add hl, bc
    ld [hl], $3d
    ret


    ld hl, $c6e6
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_038_4599

    ld hl, $c4fd
    add hl, bc
    add hl, bc
    ld [hl], $3b
    ld bc, $0014
    add hl, bc
    ld [hl], $3a
    ret


jr_038_4599:
    ld hl, $c4fd
    add hl, bc
    add hl, bc
    ld [hl], $3d
    ld bc, $0014
    add hl, bc
    ld [hl], $3a
    ret


    ld hl, $c6ee
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_038_45bd

    ld hl, $c525
    add hl, bc
    add hl, bc
    ld [hl], $36
    ld bc, $0014
    add hl, bc
    ld [hl], $38
    ret


jr_038_45bd:
    ld hl, $c525
    add hl, bc
    add hl, bc
    ld [hl], $36
    ld bc, $0014
    add hl, bc
    ld [hl], $3d
    ret


    ld hl, $c6e6
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_038_45e1

    ld hl, $c539
    add hl, bc
    add hl, bc
    ld [hl], $3c
    ld bc, $0014
    add hl, bc
    ld [hl], $3a
    ret


jr_038_45e1:
    ld hl, $c539
    add hl, bc
    add hl, bc
    ld [hl], $3d
    ld bc, $0014
    add hl, bc
    ld [hl], $3a
    ret


    ld hl, $c6ee
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_038_4605

    ld hl, $c561
    add hl, bc
    add hl, bc
    ld [hl], $36
    ld bc, $0014
    add hl, bc
    ld [hl], $39
    ret


jr_038_4605:
    ld hl, $c561
    add hl, bc
    add hl, bc
    ld [hl], $36
    ld bc, $0014
    add hl, bc
    ld [hl], $3d
    ret


    ld hl, $c6e6
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_038_4629

    ld hl, $c575
    add hl, bc
    add hl, bc
    ld [hl], $3c
    ld bc, $0014
    add hl, bc
    ld [hl], $3a
    ret


jr_038_4629:
    ld hl, $c575
    add hl, bc
    add hl, bc
    ld [hl], $3d
    ld bc, $0014
    add hl, bc
    ld [hl], $3a
    ret


Call_038_4637:
    call Call_038_4398
    add hl, hl
    ld de, $4643
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    and e
    ld b, [hl]
    and e
    ld b, [hl]
    and [hl]
    ld b, [hl]
    and [hl]
    ld b, [hl]
    or b
    ld b, [hl]
    or b
    ld b, [hl]
    and e
    ld b, [hl]
    and e
    ld b, [hl]
    db $ec
    ld b, [hl]
    or $46
    ld [bc], a
    ld b, a
    ld c, $47
    jp nz, $2246

    ld b, a
    ld [hl], b
    ld b, a
    ld [hl], h
    ld b, a
    ld a, b
    ld b, a
    ld a, h
    ld b, a
    jp nz, $2c46

    ld b, a
    add b
    ld b, a
    add h
    ld b, a
    adc b
    ld b, a
    adc h
    ld b, a
    call z, $3846
    ld b, a
    sub b
    ld b, a
    sub h
    ld b, a
    sbc b
    ld b, a
    sbc h
    ld b, a
    call z, Call_038_4446
    ld b, a
    and b
    ld b, a
    and h
    ld b, a
    xor b
    ld b, a
    xor h
    ld b, a
    ret c

    ld b, [hl]
    ld d, b
    ld b, a
    or b
    ld b, a
    or h
    ld b, a
    cp b
    ld b, a
    cp h
    ld b, a
    ret c

    ld b, [hl]
    ld e, h
    ld b, a
    ret nz

    ld b, a
    call nz, $c847
    ld b, a
    call z, $c347
    db $db
    ld b, a
    ld a, [$c6e9]
    and $02
    jp nz, Jump_038_47db

    jr jr_038_46ba

    ld a, [$c6e9]
    and $02
    jr nz, jr_038_46ba

    jp Jump_038_47db


jr_038_46ba:
    ld c, $06
    ld de, $0098
    jp Jump_038_47eb


    ld a, [$c6e9]
    and $18
    jr z, jr_038_46e4

    jp Jump_038_47db


    ld a, [$c6e9]
    and $18
    cp $08
    jr z, jr_038_46e4

    jp Jump_038_47db


    ld a, [$c6e9]
    and $18
    cp $10
    jr z, jr_038_46e4

    jp Jump_038_47db


jr_038_46e4:
    ld c, $09
    ld de, $0098
    jp Jump_038_47eb


    ld a, [$c6e9]
    and $03
    jr z, jr_038_471a

    jp Jump_038_47db


    ld a, [$c6e9]
    and $03
    cp $01
    jr z, jr_038_471a

    jp Jump_038_47db


    ld a, [$c6e9]
    and $03
    cp $02
    jr z, jr_038_471a

    jp Jump_038_47db


    ld a, [$c6e9]
    and $03
    cp $03
    jr z, jr_038_471a

    jp Jump_038_47db


jr_038_471a:
    ld c, $0c
    ld de, $0098
    jp Jump_038_47eb


    ld a, [$c6e9]
    and $1c
    jr z, jr_038_4768

    jp Jump_038_47db


    ld a, [$c6e9]
    and $1c
    cp $04
    jr z, jr_038_4768

    jp Jump_038_47db


    ld a, [$c6e9]
    and $1c
    cp $08
    jr z, jr_038_4768

    jp Jump_038_47db


    ld a, [$c6e9]
    and $1c
    cp $0c
    jr z, jr_038_4768

    jp Jump_038_47db


    ld a, [$c6e9]
    and $1c
    cp $10
    jr z, jr_038_4768

    jp Jump_038_47db


    ld a, [$c6e9]
    and $1c
    cp $14
    jr z, jr_038_4768

    jp Jump_038_47db


jr_038_4768:
    ld c, $12
    ld de, $0098
    jp Jump_038_47eb


    ld e, $00
    jr jr_038_47ce

    ld e, $01
    jr jr_038_47ce

    ld e, $02
    jr jr_038_47ce

    ld e, $03
    jr jr_038_47ce

    ld e, $04
    jr jr_038_47ce

    ld e, $05
    jr jr_038_47ce

    ld e, $06
    jr jr_038_47ce

    ld e, $07
    jr jr_038_47ce

    ld e, $08
    jr jr_038_47ce

    ld e, $09
    jr jr_038_47ce

    ld e, $0a
    jr jr_038_47ce

    ld e, $0b
    jr jr_038_47ce

    ld e, $0c
    jr jr_038_47ce

    ld e, $0d
    jr jr_038_47ce

    ld e, $0e
    jr jr_038_47ce

    ld e, $0f
    jr jr_038_47ce

    ld e, $10
    jr jr_038_47ce

    ld e, $11
    jr jr_038_47ce

    ld e, $12
    jr jr_038_47ce

    ld e, $13
    jr jr_038_47ce

    ld e, $14
    jr jr_038_47ce

    ld e, $15
    jr jr_038_47ce

    ld e, $16
    jr jr_038_47ce

    ld e, $17

jr_038_47ce:
    ld a, [$c6e9]
    cp e
    jr nz, jr_038_47db

    ld c, $48
    ld de, $0098
    jr jr_038_47eb

Jump_038_47db:
jr_038_47db:
    ld de, $0019
    call $3c23
    ld hl, $4816
    call Call_038_4489
    call $3c55
    ret


Jump_038_47eb:
jr_038_47eb:
    push bc
    push de
    ld hl, $4811
    call Call_038_4489
    pop de
    call $3c23
    call $3c55
    pop bc

jr_038_47fb:
    push bc
    call Call_038_4833
    jr c, jr_038_4804

    call Call_038_481b

jr_038_4804:
    call Call_038_449c
    ld c, $02
    call $0468
    pop bc
    dec c
    jr nz, jr_038_47fb

    ret


    ld d, $13
    ld e, b
    ld [hl], c
    ld d, b
    ld d, $1a
    ld e, b
    ld [hl], c
    ld d, b

Call_038_481b:
    ld a, [$d855]
    ld h, a
    ld a, [$d856]
    ld l, a
    inc hl
    ld a, h
    ld [$d855], a
    ld a, l
    ld [$d856], a
    ld de, $0068
    call $3c23
    ret


Call_038_4833:
    ld a, [$d855]
    cp $27
    jr c, jr_038_4847

    jr z, jr_038_483e

    jr jr_038_4845

jr_038_483e:
    ld a, [$d856]
    cp $0f
    jr c, jr_038_4847

jr_038_4845:
    scf
    ret


jr_038_4847:
    and a
    ret


Call_038_4849:
    call Call_038_43ac
    ld hl, $4853
    call Call_038_4509
    ret


    ld [de], a
    nop
    nop
    inc b
    nop
    nop
    ld [$0006], sp
    nop
    db $10
    ld b, $00
    nop
    jr jr_038_4869

    nop
    nop
    jr nz, jr_038_486b

    jr nz, jr_038_4871

jr_038_4869:
    nop
    dec b

jr_038_486b:
    nop
    ld [$0520], sp
    jr nz, jr_038_4881

jr_038_4871:
    nop
    dec b
    nop
    db $10
    jr nz, jr_038_487c

    jr nz, @+$1a

    nop
    dec b
    nop

jr_038_487c:
    jr @+$22

    dec b
    jr nz, @+$22

jr_038_4881:
    nop
    dec b
    nop
    jr nz, jr_038_48a6

    dec b
    jr nz, jr_038_48b1

    nop
    inc b
    ld b, b
    jr z, jr_038_4896

    ld b, $40
    jr z, jr_038_48a2

    ld b, $40
    jr z, jr_038_48ae

jr_038_4896:
    ld b, $40
    jr z, @+$22

    inc b
    ld h, b

Call_038_489c:
    ld hl, $ffa9
    ld a, [hl]
    and $20

jr_038_48a2:
    jp nz, Jump_038_48b8

    ld a, [hl]

jr_038_48a6:
    and $10
    jp nz, Jump_038_48ef

    ld a, [hl]
    and $40

jr_038_48ae:
    jp nz, Jump_038_490a

jr_038_48b1:
    ld a, [hl]
    and $80
    jp nz, Jump_038_493d

    ret


Jump_038_48b8:
    ld hl, $cf65
    ld a, [$cf64]
    and a
    jr z, jr_038_48d5

    cp $01
    jr z, jr_038_48cc

    ld a, [hl]
    and a
    ret z

    dec [hl]
    jp Jump_038_4959


jr_038_48cc:
    ld a, [hl]
    cp $03
    jr c, jr_038_48e2

    dec [hl]
    jp Jump_038_4959


jr_038_48d5:
    ld a, [hl]
    and $0e
    ld [hl], a
    cp $03
    jr c, jr_038_48e2

    dec [hl]
    dec [hl]
    jp Jump_038_4959


jr_038_48e2:
    ld a, $02
    ld [$cf64], a
    ld a, $01
    ld [$cf65], a
    jp Jump_038_4959


Jump_038_48ef:
    ld hl, $cf65
    ld a, [$cf64]
    and a
    jr z, jr_038_48ff

    ld a, [hl]
    cp $05
    ret nc

    inc [hl]
    jr jr_038_4959

jr_038_48ff:
    ld a, [hl]
    and $0e
    ld [hl], a
    cp $04
    ret nc

    inc [hl]
    inc [hl]
    jr jr_038_4959

Jump_038_490a:
    ld hl, $cf64
    ld a, [$cf65]
    and a
    jr z, jr_038_4925

    cp $01
    jr z, jr_038_491d

    ld a, [hl]
    and a
    ret z

    dec [hl]
    jr jr_038_4959

jr_038_491d:
    ld a, [hl]
    cp $03
    jr c, jr_038_4931

    dec [hl]
    jr jr_038_4959

jr_038_4925:
    ld a, [hl]
    and $0e
    ld [hl], a
    cp $03
    jr c, jr_038_4931

    dec [hl]
    dec [hl]
    jr jr_038_4959

jr_038_4931:
    ld a, $01
    ld [$cf64], a
    ld a, $02
    ld [$cf65], a
    jr jr_038_4959

Jump_038_493d:
    ld hl, $cf64
    ld a, [$cf65]
    and a
    jr z, jr_038_4950

    ld hl, $cf64
    ld a, [hl]
    cp $07
    ret nc

    inc [hl]
    jr jr_038_4959

jr_038_4950:
    ld a, [hl]
    and $0e
    ld [hl], a
    cp $06
    ret nc

    inc [hl]
    inc [hl]

Jump_038_4959:
jr_038_4959:
    ld de, $0003
    call $3c23
    ret


Call_038_4960:
    call $300b
    ldh a, [$e6]
    and a
    jr nz, jr_038_496d

    ldh a, [$9b]
    and $04
    ret nz

jr_038_496d:
    call Call_038_4398
    add hl, hl
    add hl, hl
    ld de, $4981
    add hl, de
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]

jr_038_497b:
    ld h, [hl]
    ld l, a
    call Call_038_4509
    ret


    ld e, b
    db $10
    ld h, $4c
    ld h, b
    db $10
    ld h, $4c
    ld l, b
    db $10
    adc l
    ld c, e
    ld l, b
    db $10
    adc l
    ld c, e
    adc b
    db $10
    adc l
    ld c, e
    adc b
    db $10
    adc l
    ld c, e
    ld e, b
    jr jr_038_49c2

    ld c, h
    ld h, b
    jr jr_038_49c6

    ld c, h
    ld l, b
    jr jr_038_49fe

    ld c, d
    ld a, b
    jr jr_038_4a02

    ld c, d
    adc b
    jr jr_038_4a06

    ld c, d
    sbc b
    jr jr_038_4a0a

    ld c, d
    ld e, b
    jr z, jr_038_49c8

    ld c, e
    ld h, b
    jr z, jr_038_497b

    ld c, d
    ld l, b
    jr z, jr_038_49fd

    ld c, d
    ld a, b
    jr z, @+$43

    ld c, d
    adc b

jr_038_49c2:
    jr z, jr_038_4a05

    ld c, d
    sbc b

jr_038_49c6:
    jr z, jr_038_4a09

jr_038_49c8:
    ld c, d
    ld e, b
    jr z, jr_038_49e0

    ld c, e
    ld h, b
    inc [hl]
    jp $684a


    inc [hl]
    ld b, c
    ld c, d
    ld a, b
    inc [hl]
    ld b, c
    ld c, d
    adc b
    inc [hl]
    ld b, c
    ld c, d
    sbc b
    inc [hl]
    ld b, c

jr_038_49e0:
    ld c, d
    ld e, b
    ld b, b
    inc d
    ld c, e
    ld h, b
    ld b, b
    jp $684a


    ld b, b
    ld b, c
    ld c, d
    ld a, b
    ld b, b
    ld b, c
    ld c, d
    adc b
    ld b, b
    ld b, c
    ld c, d
    sbc b
    ld b, b
    ld b, c
    ld c, d
    ld e, b
    ld b, b
    inc d
    ld c, e

jr_038_49fd:
    ld h, b

jr_038_49fe:
    ld c, h
    jp $684a


jr_038_4a02:
    ld c, h
    ld b, c
    ld c, d

jr_038_4a05:
    ld a, b

jr_038_4a06:
    ld c, h
    ld b, c
    ld c, d

jr_038_4a09:
    adc b

jr_038_4a0a:
    ld c, h
    ld b, c
    ld c, d
    sbc b
    ld c, h
    ld b, c
    ld c, d
    ld e, b
    ld e, b
    inc d
    ld c, e
    ld h, b
    ld e, b
    jp $684a


    ld e, b
    ld b, c
    ld c, d
    ld a, b
    ld e, b
    ld b, c
    ld c, d
    adc b
    ld e, b
    ld b, c
    ld c, d
    sbc b
    ld e, b
    ld b, c
    ld c, d
    ld e, b
    ld e, b
    inc d
    ld c, e
    ld h, b
    ld h, h
    jp $684a


    ld h, h
    ld b, c
    ld c, d
    ld a, b
    ld h, h
    ld b, c
    ld c, d
    adc b
    ld h, h
    ld b, c
    ld c, d
    sbc b
    ld h, h
    ld b, c
    ld c, d
    ld b, $00
    rst $38
    nop
    add b
    nop
    nop
    ld [bc], a
    add b
    nop
    ld [$8003], sp
    dec b
    rst $38
    nop
    ret nz

    dec b
    nop
    ld [bc], a
    ret nz

    dec b
    ld [$8003], sp
    ld a, [de]
    nop
    rst $38
    nop
    add b
    nop
    nop
    ld [bc], a
    add b
    nop
    ld [$a000], sp
    ld [$01ff], sp
    add b
    ld [$0108], sp
    and b
    db $10
    rst $38
    ld bc, $1080
    ld [$8003], sp
    jr @+$01

    ld bc, $1880
    ld [$8003], sp
    jr nz, @+$01

    ld bc, $2080
    ld [$8003], sp
    jr z, @+$01

    ld bc, $2880
    ld [$8003], sp
    jr nc, @+$01

    ld bc, $3080
    ld [$8003], sp
    jr c, @+$01

    ld bc, $3880
    ld [$8003], sp
    ld b, b
    rst $38
    ld bc, $4080
    ld [$8003], sp
    ld c, b
    rst $38
    ld bc, $4880
    ld [$8003], sp
    ld d, b
    rst $38
    ld bc, $5080
    ld [$8003], sp
    ld d, c
    rst $38
    nop
    ret nz

    ld d, c
    nop
    ld [bc], a
    ret nz

    ld d, c
    ld [$8003], sp
    inc d
    nop
    rst $38
    nop
    add b
    nop
    nop
    ld [bc], a
    add b
    nop
    ld [$8002], sp
    nop
    db $10
    inc bc
    add b
    nop
    jr jr_038_4ad9

    add b
    nop

jr_038_4ad9:
    jr nz, @+$05

    add b
    nop
    jr z, jr_038_4ae1

    add b
    nop

jr_038_4ae1:
    jr nc, @+$05

    add b
    nop
    jr c, jr_038_4ae9

    add b
    nop

jr_038_4ae9:
    ld b, b
    inc bc
    add b
    dec b
    rst $38
    nop
    ret nz

    dec b
    nop
    ld [bc], a
    ret nz

    dec b
    ld [$c002], sp
    dec b
    db $10
    inc bc
    add b
    dec b
    jr jr_038_4b01

    ret nz

    dec b

jr_038_4b01:
    jr nz, @+$05

    add b
    dec b
    jr z, jr_038_4b09

    ret nz

    dec b

jr_038_4b09:
    jr nc, @+$05

    add b
    dec b
    jr c, jr_038_4b11

    ret nz

    dec b

jr_038_4b11:
    ld b, b
    inc bc
    add b
    ld e, $00
    nop
    nop
    add b
    nop
    ld [$8002], sp
    nop
    db $10
    ld [bc], a
    add b
    nop
    jr @+$05

    add b
    nop
    jr nz, jr_038_4b2a

    add b
    nop

jr_038_4b2a:
    jr z, @+$05

    add b
    nop
    jr nc, jr_038_4b32

    add b
    nop

jr_038_4b32:
    jr c, jr_038_4b37

    add b
    nop
    ld b, b

jr_038_4b37:
    ld [bc], a
    add b
    nop
    ld c, b
    inc bc
    add b
    ld [$0100], sp
    add b
    ld [$0318], sp
    add b
    ld [$0328], sp
    add b
    ld [$0338], sp
    add b
    ld [$0348], sp
    add b
    stop
    ld bc, $1080
    jr @+$05

    add b
    db $10
    jr z, @+$05

    add b
    db $10
    jr c, jr_038_4b63

    add b
    db $10
    ld c, b

jr_038_4b63:
    inc bc
    add b
    ld de, $0000
    ret nz

    ld de, $0208
    ret nz

    ld de, $0210
    ret nz

    ld de, $0318
    add b
    ld de, $0320
    add b
    ld de, $0328
    add b
    ld de, $0330
    add b
    ld de, $0338
    add b
    ld de, $0340
    add b
    ld de, $0348
    add b
    ld h, $00
    rst $38
    nop
    add b
    nop
    jr jr_038_4b95

jr_038_4b95:
    and b
    ld [$01ff], sp
    add b
    ld [$0118], sp
    and b
    db $10
    rst $38
    ld bc, $1080
    jr jr_038_4ba6

    and b

jr_038_4ba6:
    jr @+$01

    ld bc, $1880
    ld [$8003], sp
    jr jr_038_4bc8

    inc bc
    add b
    jr nz, @+$01

    ld bc, $2080
    ld [$8003], sp
    jr nz, jr_038_4bd4

    inc bc
    add b
    jr z, @+$01

    ld bc, $2880
    ld [$8003], sp
    jr z, jr_038_4be0

jr_038_4bc8:
    inc bc
    add b
    jr nc, @+$01

    ld bc, $3080
    ld [$8003], sp
    jr nc, @+$1a

jr_038_4bd4:
    inc bc
    add b
    jr c, @+$01

    ld bc, $3880
    ld [$8003], sp
    jr c, @+$1a

jr_038_4be0:
    inc bc
    add b
    ld b, b
    rst $38
    ld bc, $4080
    ld [$8003], sp
    ld b, b
    jr jr_038_4bf0

    add b
    ld c, b
    rst $38

jr_038_4bf0:
    ld bc, $4880
    ld [$8003], sp
    ld c, b
    jr jr_038_4bfc

    add b
    ld d, b
    rst $38

jr_038_4bfc:
    ld bc, $5080
    ld [$8003], sp
    ld d, b
    jr jr_038_4c08

    add b
    ld e, b
    rst $38

jr_038_4c08:
    ld bc, $5880
    ld [$8003], sp
    ld e, b
    jr jr_038_4c14

    add b
    ld e, c
    rst $38

jr_038_4c14:
    nop
    ret nz

    ld e, c
    nop
    ld [bc], a
    ret nz

    ld e, c
    ld [$c003], sp
    ld e, c
    db $10
    ld [bc], a
    ret nz

    ld e, c
    jr jr_038_4c28

    ldh [rDIV], a
    nop

jr_038_4c28:
    nop
    nop
    add b
    nop
    ld [$a000], sp
    ld [$0000], sp
    ret nz

    ld [$0008], sp
    ldh [$f0], a
    and $a7
    ret z

    ld hl, $cdd9
    ld bc, $0168
    xor a
    call $3041
    ld hl, $cdf9
    ld bc, $0202
    ld a, $01
    call Call_038_44e7
    ld hl, $cdfb
    ld bc, $0202
    ld a, $02
    call Call_038_44e7
    ld hl, $cdfd
    ld bc, $0202
    ld a, $03
    call Call_038_44e7
    ld hl, $cdff
    ld bc, $0202
    ld a, $04
    call Call_038_44e7
    ld hl, $cde2
    ld bc, $0c01
    ld a, $01
    call Call_038_44e7
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $4c93
    ld de, $d000
    ld bc, $0048
    call $3026
    pop af
    ldh [rSVBK], a
    ret


    rst $38
    ld a, a
    pop af
    ld a, h
    ld h, [hl]
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, a
    dec a
    inc bc
    ld h, [hl]
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, a
    cp a
    ld a, c
    ld h, [hl]
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, a
    jr z, jr_038_4d29

    ld h, [hl]
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, a
    add sp, $23
    ld h, [hl]
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, a
    pop af
    ld a, h
    ld h, [hl]
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, a
    pop af
    ld a, h
    ld h, [hl]
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, a
    pop af
    ld a, h
    ld h, [hl]
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rra
    nop
    rra
    nop
    ld [bc], a
    nop
    rst $38
    nop
    ld e, l
    add b
    nop
    nop
    rst $38
    ld l, [hl]
    ld c, a
    rst $38
    nop
    ld [bc], a
    nop
    ccf
    ccf
    inc hl
    ld a, a
    scf
    ld [hl], b
    ld h, c
    inc h
    rst $38
    adc b
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    jp $c381


    add c
    jp $c381


    add c
    rst $38
    add c
    rst $38
    rst $38
    ld h, c
    dec b
    rst $38
    jr z, @+$01

    db $10
    rst $38
    jr z, jr_038_4d63

    rst $38
    nop
    ld [bc], a
    ld [$2aff], a
    ld h, c
    inc bc
    cp $fe

jr_038_4d29:
    add $c6
    add hl, hl
    and $83
    adc a
    ld bc, $8282
    dec h
    ld a, [c]
    add e
    add a
    add l
    adc a
    dec h
    sbc [hl]
    add [hl]
    adc a
    inc b
    nop
    cp $28
    cp $10
    call nz, $0681
    ld a, h
    cp $40
    ld a, [hl]
    nop
    ld a, [hl]
    inc a
    ld b, e
    ld a, [hl]
    inc b

jr_038_4d4f:
    add a
    add l
    ld b, h
    rst $38
    nop
    ld a, [bc]
    xor a
    rst $38
    ld b, c
    rst $38
    xor a
    rst $38
    ld [$0fff], sp
    rst $38
    nop
    ld c, d
    ld a, a
    nop

jr_038_4d63:
    inc c
    ld a, [bc]
    ld a, a
    inc b
    ld a, a
    ld a, [bc]
    nop

jr_038_4d6a:
    rst $38
    rra
    rst $38
    jr nz, jr_038_4d4f

    ld b, b
    ret nz

    ld b, a
    ld c, a
    rst $08
    nop
    nop
    ld [hl+], a
    rst $38
    ld h, c
    ld bc, $0000
    daa
    rst $38
    xor a
    sbc a
    ld b, a
    ld c, a
    rst $08
    cp a
    adc a
    inc b
    ld b, b
    ret nz

    jr nz, jr_038_4d6a

    rra
    jp nz, $cdbb

    ret nz

    ld bc, $ff00
    or b
    sbc a
    ld b, $ee
    rst $38
    add d
    rst $38
    ld [c], a
    rst $38
    nop
    add a
    nop
    nop
    dec h
    and $01
    cp $fe
    adc l
    nop
    jr nz, @-$79

    adc a
    inc hl
    sub d
    adc e
    adc a
    add e
    nop
    inc [hl]
    inc bc
    cp $7c
    cp $44
    jp Jump_038_4e00


    add a
    nop
    ld b, b
    ld c, a
    ld a, a
    nop

jr_038_4dbe:
    ld c, a
    ld a, [hl]
    nop
    dec bc
    ld a, a
    nop
    ld a, a
    ld [bc], a
    ld a, a
    ld b, $7f
    ld a, [bc]
    ld a, a
    ld [de], a
    ld a, a
    rra
    jp $8587


    nop
    add b
    ld c, c
    ld b, b
    ret nz

    add e
    nop
    sub b
    ld l, d
    or b
    sbc a
    ld b, l
    ld b, b
    ret nz

    db $f4
    inc hl
    adc a
    add h
    nop
    jp c, $ff00

    call $01c0
    nop
    rst $38
    xor a
    sbc a
    add a
    nop
    ld [$0187], sp
    nop
    ld bc, $f2f2
    call $3f00
    dec h
    sub d
    add a
    ld bc, $011c

Jump_038_4e00:
    cp $fe
    add e
    sub a
    rst $00
    adc h
    add e
    sbc a
    add a
    nop
    ld c, b
    adc c
    ld bc, $4440
    ld a, [hl]
    nop
    inc b
    jr z, @+$80

    db $10
    ld a, [hl]
    jr z, jr_038_4dbe

    ld bc, $046c
    db $10
    cp $18
    cp $1c
    jp $5381


    cp $00
    ld l, $ff
    ld c, a
    rst $38
    nop
    nop
    rst $38
    db $d3
    add b
    ld b, $cf
    rst $38
    add a
    rst $38
    add e
    rst $38
    inc de
    ld b, h
    rst $38
    add hl, sp
    nop
    rst $38
    ld c, [hl]
    rst $38
    cp $02
    add hl, sp
    rst $38
    ld [hl], b
    ld b, [hl]
    rst $38
    ld h, b
    inc b
    ld c, h
    rst $38
    ld c, [hl]
    rst $38
    ld b, [hl]
    dec h
    rst $38
    xor c
    and l
    call z, $c5a3
    sbc c
    ld b, $42
    rst $38
    ld h, d
    rst $38
    ld h, b
    rst $38
    jr nc, jr_038_4ea0

    rst $38
    inc a
    nop
    dec e
    push bc
    and c
    jr nc, @+$01

    add e
    xor l
    nop
    db $fc
    inc h
    rst $38
    ld b, $09
    rst $38
    add c
    rst $38
    ld b, e
    rst $38
    ld bc, $02d2
    sub e
    add l
    or l
    dec b
    jr jr_038_4e7a

jr_038_4e7a:
    ld a, [hl]
    jr nc, jr_038_4efc

    ld sp, $ff43
    jr nc, jr_038_4e89

    ld a, a
    dec a
    ld a, [hl]
    nop
    jr jr_038_4e88

jr_038_4e88:
    nop

jr_038_4e89:
    nop
    dec [hl]
    cp $87
    ld bc, $8b18
    adc a
    jp $2302


    adc l
    sbc a
    ld bc, $9e9e
    cpl
    cp $8b
    ld bc, $c310
    cp b

jr_038_4ea0:
    ld bc, $f2f2
    push de
    jp nz, $8f87

    rst $38
    ld h, c
    ld [hl+], a
    rst $38
    inc b
    adc a
    rst $38
    call nz, $dbff
    ld b, h
    rst $38
    rst $28
    nop
    db $db
    ld h, c
    ld [hl+], a
    cp $04
    ld [c], a
    cp $46
    cp $b6
    ld b, h
    cp $ee
    ld b, $b6
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $08
    ld b, h
    rst $38
    rst $18
    ld a, [bc]
    db $ec
    rst $38
    di
    rst $38
    rst $38
    cp $f6
    cp $ee
    cp $e6
    ld b, h
    cp $f6
    inc b
    ld l, [hl]
    cp $9e
    cp $fe
    add h
    cp a
    ld a, [bc]
    adc h
    rst $38
    or e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    db $d3
    rst $38
    and c
    add h
    cp a
    inc c
    ld h, d
    cp $9a
    cp $fa
    cp $f6
    cp $96

jr_038_4efc:
    cp $0a
    rst $38
    and c
    add [hl]
    sbc e
    ld [bc], a
    rst $18
    rst $38
    add sp, -$7c
    cp a
    nop
    ld a, [bc]
    add [hl]
    sbc e
    ld [bc], a
    or $fe
    ld l, $88
    cp a
    inc b
    db $fc
    rst $38
    di
    rst $38
    db $e3
    ld b, h
    rst $38
    rst $18
    nop
    cp h
    add h
    cp a
    inc b
    ld a, [hl]
    cp $9e
    cp $8e
    ld b, h
    cp $f6
    inc b
    ld a, d
    rst $38
    cp e
    rst $38
    cp d
    add e
    add e
    adc b
    rst $38
    ld b, l
    cp d
    cp $00
    ld a, [hl-]
    adc h
    rst $38
    ld a, [bc]
    sbc [hl]
    rst $38
    and l
    rst $38
    reti


    rst $38
    db $ed
    rst $38
    push af
    rst $38
    rst $30
    add h
    cp a
    ld c, $f2
    cp $4a
    cp $36
    cp $6e
    cp $5e
    cp $de
    rst $38
    rst $28
    rst $38
    db $dd
    ld b, h
    rst $38
    rst $18
    ld [bc], a
    rst $28
    rst $38
    db $f4
    add h
    cp a
    ld [bc], a
    xor $fe
    db $76
    ld b, h
    cp $f6
    ld [bc], a
    xor $fe
    ld e, [hl]
    add e
    cp a
    inc h
    rst $38
    nop
    sbc a
    ld b, h
    rst $38
    xor a
    inc b
    call nc, $c0ff
    rst $38
    ldh [rNR52], a
    rst $38
    inc b
    cp $ff
    ld sp, hl
    rst $38
    inc sp
    ld b, e
    rst $38
    nop
    add [hl]
    sbc a
    ld [$ff6f], sp
    reti


    rst $38
    or c
    rst $38
    ld h, c
    rst $38
    pop bc
    ld b, h
    rst $38
    ret z

    inc b
    add d
    rst $38
    and l
    rst $38
    and b
    add h
    xor l
    nop
    ret nz

    ld b, h
    rst $38
    ld sp, HeaderLogo
    rst $38
    adc h
    rst $38
    inc c
    ld b, [hl]
    rst $38
    nop
    ld a, [bc]
    add e
    rst $38
    add a
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $20
    ld b, h
    rst $38
    ld e, a
    nop
    sub b
    add h
    and l
    add e
    xor e
    nop
    di
    inc h
    rst $38
    ld a, [bc]
    jr z, @+$01

    jr @+$01

    nop
    rst $38
    ld bc, $03ff
    rst $38
    rst $20
    inc h
    rst $38
    ld [bc], a
    rra
    rst $38
    ccf
    jr nc, @+$01

    ld a, [bc]
    rst $08
    rst $38
    and a
    rst $38
    or d
    rst $38
    cp d
    rst $38
    jp nc, $c1ff

    ld h, $ff
    ld [$ff0e], sp
    inc b
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    ld [$ff22], sp
    ld [de], a
    db $e3
    rst $38
    dec [hl]
    rst $38
    ld d, [hl]
    rst $38
    jp c, $dbff

    rst $38
    cp l
    rst $38
    ld sp, $ceff
    rst $38
    sub e
    rst $38
    sub l
    ld b, h
    rst $38
    sub a
    nop
    adc [hl]
    and h
    push de
    inc b
    sub a
    rst $38
    ld l, c
    rst $38
    ld a, [bc]
    ld b, h
    rst $38
    dec bc
    ld b, $07
    rst $38
    ld h, b
    rst $38
    ld b, a
    rst $38
    ld sp, $ff48
    sbc a
    nop
    rra
    add h
    db $eb
    ld [$ff88], sp
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$01
    ldh a, [rNR52]
    rst $38
    ld [bc], a
    inc b
    rst $38
    inc bc
    add e
    ld bc, $8874
    adc a
    ld [bc], a
    ccf
    rst $38
    ld a, a
    jr nc, @+$01

    ld a, [bc]
    rst $20
    rst $38
    db $eb
    rst $38
    db $ed
    rst $38
    xor $ff
    or $ff
    rst $30
    and h
    ld bc, $0092
    db $ed
    ld b, h
    rst $38
    db $dd
    ld b, e
    cp l
    rst $38
    nop
    ld a, [hl-]
    inc l
    rst $38
    ld a, [bc]
    adc a
    rst $38
    ld [hl], a
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
    ld b, h
    rst $38
    ld hl, sp+$43
    ldh a, [rIE]
    ld c, $b9
    rst $38
    cp e
    rst $38
    sub a
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld h, b
    and h
    nop
    and $00
    rst $08
    add h
    ld bc, $0082
    ld a, a
    and h
    and a
    ld b, $f8
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    pop af
    jr z, @+$01

    nop
    jr nz, jr_038_50d9

    rst $38
    nop
    inc b
    di
    rst $38
    ld sp, hl
    rst $38
    pop hl
    call nz, $b401
    ld [bc], a
    dec sp
    rst $38
    ld l, l
    ld b, h
    rst $38
    db $ed
    nop
    db $db
    ld l, $ff
    ld b, $f2
    rst $38
    db $ec
    rst $38
    jp hl


    rst $38
    di
    jr z, @+$01

    ld b, $13
    rst $38
    dec c
    rst $38
    push bc
    rst $38
    db $e3
    adc b
    ld bc, $008e
    sub a
    add h
    ld bc, $0852
    db $fd
    rst $38
    ldh [rIE], a
    jp $c4ff


    rst $38
    adc c
    ld b, [hl]
    rst $38
    adc d
    ld c, $89
    rst $38
    nop
    rst $38
    ldh a, [rIE]

jr_038_50d9:
    ld [$e4ff], sp
    rst $38
    inc h
    rst $38
    call nz, $18ff
    add h
    ld bc, $020e
    ld [hl], e
    rst $38
    ld h, l
    ld b, h
    rst $38
    inc h
    inc b
    jr z, @+$01

    ld de, $03ff
    call nz, $02a9
    ldh a, [rIE]
    db $fc
    adc b
    ld [bc], a
    ld [$0800], sp
    call nz, $0a02
    ld [bc], a
    rlca
    rst $38
    pop hl
    ld h, $ff
    nop
    rlca
    adc l
    ld [bc], a
    ld [de], a
    rst $38
    rst $28
    dec d
    daa
    ld a, [hl+]
    ld a, [hl+]
    ld b, $27
    ld a, [hl+]
    ld a, [hl+]
    ld b, $27
    rst $28
    rlca
    daa
    ld a, $3f
    ld b, d
    ld b, e
    ld b, [hl]
    ld b, a
    ld c, d
    ld c, e
    rst $28
    rla
    ld h, $40
    ld b, c
    ld b, h
    ld b, l
    ld c, b
    ld c, c
    ld c, h
    ld c, l
    rst $28
    dec h
    inc b
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    rst $28
    dec b
    inc d
    db $10
    ld de, $1110
    db $10
    ld de, $1110
    rst $28
    ld d, $24
    jr nz, jr_038_5169

    jr nz, jr_038_516b

    jr nz, jr_038_516d

    jr nz, jr_038_516f

    rst $28
    dec h
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    rst $28
    dec b
    inc d
    db $10
    ld [de], a
    db $10
    ld [de], a
    db $10
    ld [de], a
    db $10
    ld [de], a
    rst $28
    ld d, $24
    jr nz, @+$24

jr_038_5169:
    jr nz, @+$24

jr_038_516b:
    jr nz, @+$24

jr_038_516d:
    jr nz, @+$24

jr_038_516f:
    rst $28
    dec h
    inc b
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    rst $28
    dec b
    inc d
    db $10
    inc de
    db $10
    inc de
    db $10
    inc de
    db $10
    inc de
    rst $28
    ld d, $24
    jr nz, jr_038_51ad

    jr nz, @+$25

    jr nz, @+$25

    jr nz, jr_038_51b3

    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    call $31f3
    call $0fc8
    call $300b
    xor a
    ldh [$d4], a
    call $0568
    ld hl, $c608
    ld bc, $01e0
    xor a

jr_038_51ad:
    call $3041
    ld hl, $57c5

jr_038_51b3:
    ld de, $8e00
    ld bc, $0040
    call $3026
    ld hl, $5805
    ld de, $8ed0
    call $0b50
    call Call_038_57a3
    ld hl, $c4a0
    ld bc, $0168
    ld a, $ee
    call $3041
    ld hl, $c4e0
    ld bc, $0c0c
    ld a, $ef
    call Call_038_53ee
    call Call_038_524e
    call Call_038_53fe
    call Call_038_527d
    xor a
    ldh [$d0], a
    ldh [$cf], a
    ldh [rWY], a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    ld a, $93
    ldh [rLCDC], a
    call $31f6
    ld b, $18
    call $3340
    ld a, $e4
    call $0c9f
    ld a, $24
    call $0cf8
    xor a
    ld [$d0ec], a
    call $045a

jr_038_5217:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_038_523d

    call Call_038_52ca
    ld a, [$cf64]
    and a
    jr nz, jr_038_5230

    ldh a, [$9b]
    and $10
    jr z, jr_038_5235

jr_038_5230:
    call Call_038_54d9
    jr jr_038_5238

jr_038_5235:
    call $300b

jr_038_5238:
    call $045a
    jr jr_038_5217

jr_038_523d:
    pop af
    ldh [$aa], a
    call $31f3
    call $0fc8
    call $300b
    ld a, $e3
    ldh [rLCDC], a
    ret


Call_038_524e:
    ld c, $01
    ld b, $10

jr_038_5252:
    call $2f8c
    and $0f
    ld hl, $526d
    ld e, a
    ld d, $00
    add hl, de
    ld e, [hl]
    ld hl, $c6d0
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_038_5252

    ld [hl], c
    inc c
    dec b
    jr nz, jr_038_5252

    ret


    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $0b
    inc c
    ld de, $1712
    jr jr_038_5298

    ld e, $23

Call_038_527d:
    call Call_038_528d
    ld hl, $c5e5
    ld a, $f6
    ld c, $0a

jr_038_5287:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_038_5287

    ret


Call_038_528d:
    ld hl, $c5d0
    ld a, $f0
    ld [hl+], a
    ld bc, $000a
    ld a, $f1

jr_038_5298:
    call $3041
    ld hl, $c5db
    ld a, $f2
    ld [hl+], a
    ld hl, $c5e4
    ld a, $f3
    ld [hl+], a
    ld bc, $000a
    ld a, $ef
    call $3041
    ld hl, $c5ef
    ld a, $f3
    ld [hl+], a
    ld hl, $c5f8
    ld a, $f4
    ld [hl+], a
    ld bc, $000a
    ld a, $f1
    call $3041
    ld hl, $c603
    ld a, $f5
    ld [hl], a
    ret


Call_038_52ca:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $52d9
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $db
    ld d, d
    ldh a, [$a7]
    and $08
    jp nz, Jump_038_53de

    ldh a, [$a7]
    and $01
    jp nz, Jump_038_5376

    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_038_5301

    ld a, [hl]
    and $80
    jr nz, jr_038_530d

    ld a, [hl]
    and $20
    jr nz, jr_038_5325

    ld a, [hl]
    and $10
    jr nz, jr_038_5345

    ret


jr_038_5301:
    ld hl, $cf65
    ld a, [hl]
    cp $06
    ret c

    sub $06
    ld [hl], a
    jr jr_038_5364

jr_038_530d:
    ld hl, $cf65
    ld a, [hl]
    cp $19
    ret z

    cp $1a
    ret z

    cp $1b
    ret z

    cp $1c
    ret z

    cp $1e
    ret nc

    add $06
    ld [hl], a
    jr jr_038_5364

jr_038_5325:
    ld hl, $cf65
    ld a, [hl]
    and a
    ret z

    cp $06
    ret z

    cp $0c
    ret z

    cp $12
    ret z

    cp $18
    ret z

    cp $1e
    ret z

    cp $23
    jr z, jr_038_5341

    dec [hl]
    jr jr_038_5364

jr_038_5341:
    ld [hl], $1e
    jr jr_038_5364

jr_038_5345:
    ld hl, $cf65
    ld a, [hl]
    cp $05
    ret z

    cp $0b
    ret z

    cp $11
    ret z

    cp $17
    ret z

    cp $1d
    ret z

    cp $23
    ret z

    cp $1e
    jr z, jr_038_5362

    inc [hl]
    jr jr_038_5364

jr_038_5362:
    ld [hl], $23

jr_038_5364:
    ld a, [$cf64]
    and a
    jr nz, jr_038_536f

    ld de, $0031
    jr jr_038_5372

jr_038_536f:
    ld de, $0032

jr_038_5372:
    call $3c23
    ret


Jump_038_5376:
    ld a, [$cf64]
    and a
    jr nz, jr_038_539f

    call Call_038_5475
    and a
    jr z, jr_038_53e4

    ld de, $003e
    call $3c23
    ld [hl], $00
    ld [$cf66], a
    call Call_038_54d9
    call Call_038_5441
    call $31f6
    call $3c55
    ld a, $01
    ld [$cf64], a
    ret


jr_038_539f:
    call Call_038_5475
    and a
    jr nz, jr_038_53e4

    ld de, $001e
    call $3c23
    ld a, [$cf66]
    ld [hl], a
    call Call_038_541f
    call $31f6
    xor a
    ld [$cf66], a
    call Call_038_54d9
    xor a
    ld [$cf64], a
    call $3c55
    call Call_038_54a0
    ret nc

    call Call_038_528d
    call $300b
    ld de, $0099
    call $3c23
    call $3c55
    call $0aa5
    ld a, $01
    ld [$d0ec], a

Jump_038_53de:
    ld hl, $cf63
    set 7, [hl]
    ret


jr_038_53e4:
    ld de, $0019
    call $3c23
    call $3c55
    ret


Call_038_53ee:
    ld de, $0014

jr_038_53f1:
    push bc
    push hl

jr_038_53f3:
    ld [hl+], a
    dec c
    jr nz, jr_038_53f3

    pop hl
    add hl, de
    pop bc
    dec b
    jr nz, jr_038_53f1

    ret


Call_038_53fe:
    xor a
    ld [$cf65], a
    ld c, $24

jr_038_5404:
    push bc
    call Call_038_5475
    ld [$cf66], a
    and a
    jr z, jr_038_5413

    call Call_038_541f
    jr jr_038_5416

jr_038_5413:
    call Call_038_5441

jr_038_5416:
    ld hl, $cf65
    inc [hl]
    pop bc
    dec c
    jr nz, jr_038_5404

    ret


Call_038_541f:
    ld a, $02
    call Call_038_5463
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_038_5481
    pop hl
    ld de, $0014
    ld b, $03

jr_038_5431:
    ld c, $03
    push hl

jr_038_5434:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_038_5434

    add $09
    pop hl
    add hl, de
    dec b
    jr nz, jr_038_5431

    ret


Call_038_5441:
    ld a, $02
    call Call_038_5463
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $04
    call Call_038_5463
    ld a, [hl]
    pop hl
    ld de, $0014
    ld b, $03

jr_038_5456:
    ld c, $03
    push hl

jr_038_5459:
    ld [hl+], a
    dec c
    jr nz, jr_038_5459

    pop hl
    add hl, de
    dec b
    jr nz, jr_038_5456

    ret


Call_038_5463:
    ld e, a
    ld d, $00
    ld hl, $5559
    add hl, de
    ld a, [$cf65]
    ld e, a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ret


Call_038_5475:
    ld hl, $c6d0
    ld a, [$cf65]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ret


Call_038_5481:
    ld a, [$cf66]
    ld hl, $548f
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ret


    ldh [rP1], a
    inc bc
    ld b, $09
    inc h
    daa
    ld a, [hl+]
    dec l
    ld c, b
    ld c, e
    ld c, [hl]
    ld d, c
    ld l, h
    ld l, a
    ld [hl], d
    ld [hl], l

Call_038_54a0:
    ld hl, $54b5
    ld de, $c6d0
    ld c, $24

jr_038_54a8:
    ld a, [de]
    cp [hl]
    jr nz, jr_038_54b3

    inc de
    inc hl
    dec c
    jr nz, jr_038_54a8

    scf
    ret


jr_038_54b3:
    and a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    nop
    nop
    dec b
    ld b, $07
    ld [$0000], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    nop
    nop
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    nop

Call_038_54d9:
    call Call_038_5481
    ld [$d002], a
    xor a
    call Call_038_5463
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, [$d002]
    cp $e0
    jr z, jr_038_54f2

    ld hl, $550f
    jr jr_038_54f5

jr_038_54f2:
    ld hl, $5534

jr_038_54f5:
    ld de, $c400

jr_038_54f8:
    ld a, [hl+]
    cp $ff
    ret z

    add b
    ld [de], a
    inc de
    ld a, [hl+]
    add c
    ld [de], a
    inc de
    ld a, [$d002]
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_038_54f8

    db $f4
    db $f4
    nop
    nop
    db $f4
    db $fc
    ld bc, $f400
    inc b
    ld [bc], a
    nop
    db $fc
    db $f4
    inc c
    nop
    db $fc
    db $fc
    dec c
    nop
    db $fc
    inc b
    ld c, $00
    inc b
    db $f4
    jr jr_038_552b

jr_038_552b:
    inc b
    db $fc
    add hl, de
    nop
    inc b
    inc b
    ld a, [de]
    nop
    rst $38
    db $f4
    db $f4
    nop
    nop
    db $f4
    db $fc
    ld bc, $f400

jr_038_553d:
    inc b
    nop
    jr nz, jr_038_553d

    db $f4
    ld [bc], a
    nop
    db $fc
    db $fc
    inc bc
    nop
    db $fc
    inc b
    ld [bc], a
    jr nz, jr_038_5551

    db $f4
    nop
    ld b, b
    inc b

jr_038_5551:
    db $fc
    ld bc, $0440
    inc b
    nop
    ld h, b
    rst $38
    inc e
    inc e
    and c
    call nz, $00ee
    inc [hl]
    inc e
    and h
    call nz, $00ee
    ld c, h
    inc e
    and a
    call nz, $00ee
    ld h, h
    inc e
    xor d
    call nz, $00ee
    ld a, h
    inc e
    xor l
    call nz, $00ee
    sub h
    inc e
    or b
    call nz, $00ee
    inc e
    inc [hl]
    db $dd
    call nz, $00ee
    inc [hl]
    inc [hl]
    ldh [$c4], a
    rst $28

jr_038_5588:
    nop
    ld c, h
    inc [hl]
    db $e3
    call nz, $00ef
    ld h, h
    inc [hl]
    and $c4
    rst $28
    nop
    ld a, h
    inc [hl]
    jp hl


    call nz, $00ef
    sub h
    inc [hl]
    db $ec
    call nz, $00ee
    inc e
    ld c, h
    add hl, de
    push bc
    xor $00
    inc [hl]
    ld c, h
    inc e
    push bc
    rst $28
    nop
    ld c, h
    ld c, h
    rra
    push bc
    rst $28
    nop
    ld h, h
    ld c, h
    ld [hl+], a
    push bc
    rst $28
    nop
    ld a, h
    ld c, h
    dec h
    push bc
    rst $28
    nop
    sub h
    ld c, h
    jr z, jr_038_5588

    xor $00
    inc e
    ld h, h
    ld d, l
    push bc
    xor $00
    inc [hl]
    ld h, h
    ld e, b
    push bc
    rst $28
    nop
    ld c, h
    ld h, h
    ld e, e
    push bc
    rst $28
    nop
    ld h, h
    ld h, h
    ld e, [hl]
    push bc
    rst $28
    nop
    ld a, h
    ld h, h
    ld h, c
    push bc
    rst $28
    nop
    sub h
    ld h, h
    ld h, h
    push bc
    xor $00
    inc e
    ld a, h
    sub c
    push bc
    xor $00
    inc [hl]
    ld a, h
    sub h
    push bc
    rst $28
    nop
    ld c, h
    ld a, h
    sub a
    push bc
    rst $28
    nop
    ld h, h
    ld a, h
    sbc d
    push bc
    rst $28
    nop
    ld a, h
    ld a, h
    sbc l
    push bc
    rst $28
    nop
    sub h
    ld a, h
    and b
    push bc
    xor $00
    inc e
    sub h
    call $eec5
    nop
    inc [hl]
    sub h
    ret nc

    push bc
    xor $00
    ld c, h
    sub h
    db $d3
    push bc
    xor $00
    ld h, h
    sub h
    sub $c5
    xor $00
    ld a, h
    sub h
    reti


    push bc
    xor $00
    sub h
    sub h
    call c, $eec5
    nop

Call_038_5631:
    ld hl, $9000
    ld de, $8000
    ld b, $06

jr_038_5639:
    push bc
    push hl
    push hl
    call Call_038_5654
    pop hl
    ld bc, $0008
    add hl, bc
    call Call_038_5654
    pop hl
    ld bc, $0060
    add hl, bc
    pop bc
    dec b
    jr nz, jr_038_5639

    call Call_038_56c7
    ret


Call_038_5654:
    ld c, $06

jr_038_5656:
    push bc
    push hl
    push hl
    ld c, $04

jr_038_565b:
    push bc
    ld a, [hl+]
    and $f0
    swap a
    call Call_038_56aa
    ld c, a
    ld a, [hl+]
    and $f0
    swap a
    call Call_038_56aa
    ld b, a
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    pop bc
    dec c
    jr nz, jr_038_565b

    pop hl
    ld c, $04

jr_038_5681:
    push bc
    ld a, [hl+]
    and $0f
    call Call_038_56aa
    ld c, a
    ld a, [hl+]
    and $0f
    call Call_038_56aa

jr_038_568f:
    ld b, a
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    pop bc
    dec c
    jr nz, jr_038_5681

    pop hl
    ld bc, $0010
    add hl, bc
    pop bc
    dec c
    jr nz, jr_038_5656

    ret


Call_038_56aa:
    push hl
    ld hl, $56b7
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    ret


    nop
    inc bc
    inc c
    rrca
    jr nc, @+$35

    inc a
    ccf
    ret nz

    jp $cfcc


    ldh a, [$f3]
    db $fc
    rst $38

Call_038_56c7:
    ld hl, $5703
    ld a, $08

jr_038_56cc:
    push af
    push hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_038_56e2
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    pop af
    dec a
    jr nz, jr_038_56cc

    ret


Call_038_56e2:
    ld bc, $0404

jr_038_56e5:
    push bc

jr_038_56e6:
    push de
    push hl
    ld b, $10

jr_038_56ea:
    ld a, [de]
    or [hl]
    ld [hl+], a
    inc de
    dec b
    jr nz, jr_038_56ea

    pop hl
    ld de, $0030
    add hl, de
    pop de
    dec c
    jr nz, jr_038_56e6

    ld bc, $0180
    add hl, bc
    pop bc
    dec b
    jr nz, jr_038_56e5

    ret


    inc hl
    ld d, a
    nop
    add b
    inc sp
    ld d, a
    db $10
    add b
    ld b, e
    ld d, a
    jr nz, jr_038_568f

    ld d, e
    ld d, a
    ret nz

    add b
    ld h, e
    ld d, a
    ldh [$80], a
    ld [hl], e
    ld d, a
    add b
    add c
    add e
    ld d, a
    sub b
    add c
    sub e
    ld d, a
    and b
    add c
    rst $38
    rst $38
    pop hl
    pop hl
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
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
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $c001
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
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
    rlca
    rlca
    rst $38
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $c301
    jp $ffff


Call_038_57a3:
    ld a, [$c2dd]
    and $03
    ld e, a
    ld d, $00
    ld hl, $57bd
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9000
    call $0b50
    call Call_038_5631
    ret


    xor e
    ld e, e
    sbc e
    ld e, h
    ei
    ld e, c
    xor e
    ld e, b
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
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
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    xor b
    nop
    ld d, l
    jr nz, @-$5c

    ld [$0014], sp
    xor d
    nop
    ld d, l
    ld [bc], a
    ld a, [bc]
    nop
    inc d
    nop
    db $eb
    nop
    sub [hl]
    ld b, c
    xor a
    nop
    rst $18
    nop
    ld a, d
    add l
    push af
    ld a, [bc]
    ld a, [$bf05]
    ld b, b
    ld d, l
    rst $38
    rst $38
    ld b, e
    ldh [$e0], a
    ld b, l
    rst $20
    rst $20
    ld b, l
    rst $38
    rst $38
    ld h, c
    ld bc, $0000
    xor a
    sbc a
    ld e, e
    rst $20
    rst $20
    jp $c5bc


    or h
    ret


    and b
    ld d, a
    rst $38
    rst $38
    ld de, $cccc
    or [hl]
    or [hl]
    cp [hl]
    cp [hl]
    adc $ce
    or $f6
    or [hl]
    or [hl]
    adc $ce
    rst $38
    rst $38
    ld h, [hl]
    ld h, [hl]
    ld b, l
    jp c, $00da

    jp nz, $80c4

    inc bc
    rst $38
    rst $38
    ld sp, $4331
    db $db
    db $db
    ld bc, $3b3b
    ld b, l
    db $db
    db $db
    rlca
    rst $38
    rst $38
    rst $08
    rst $08
    rst $00
    rst $00
    jp $c7c3


    add b
    jp $01ae


    or l
    or l
    ld b, e
    cp l
    cp l
    add hl, bc
    cp h
    cp h
    or l
    or l
    call $ffcd
    rst $38
    ld l, l
    ld l, l
    ld b, e
    and l
    and l
    inc bc
    xor c
    xor c
    add hl, hl
    add hl, hl
    ld b, e
    xor l
    xor l
    ld [$ffff], sp
    sbc b
    sbc b
    ld l, e
    ld l, e
    ld a, e
    ld a, e
    ld a, b
    ret z

    add b
    ld c, e
    cp a
    cp a
    ld bc, $8f8f
    ld c, a
    rst $38
    rst $38
    rst $38
    ld b, l
    rst $38
    nop
    ld b, l
    ldh [$1f], a
    inc bc
    pop hl
    ld e, $e3
    inc e

jr_038_58b6:
    ld b, e
    rst $38
    nop
    ld bc, $3ec1
    ld b, l
    inc a
    jp $9e03


    ld h, c
    sbc $21
    ld b, e
    rst $38
    nop
    ld bc, $7e81
    ld b, e
    inc a
    jp Jump_038_7c05


    add e

jr_038_58d0:
    ld a, b
    add a
    ld hl, sp+$07
    or e
    adc a
    xor a
    xor a
    xor e
    rst $08
    ld b, e
    db $e3

jr_038_58dc:
    inc e
    rrca
    pop bc
    ld a, $dc
    inc hl
    sbc $21
    rst $18
    jr nz, jr_038_58b6

    jr nc, jr_038_58d0

    jr @-$2f

    jr nc, jr_038_58dc

    db $10

jr_038_58ee:
    ld b, e
    rst $38

jr_038_58f0:
    nop
    inc bc
    ld a, a
    add b
    ccf
    ret nz

    and e
    add e
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ld b, e
    xor $11
    add hl, bc
    and $19
    di
    inc c
    jr jr_038_58ee

    jp hl


    ld d, $0f
    ldh a, [$83]
    adc a
    add hl, bc
    ld l, [hl]
    sub c
    ld l, $d1
    inc h
    db $db
    ld bc, $f9fe
    ld b, $ab
    xor a
    ld b, e
    rst $38
    nop
    xor a
    rst $08
    dec b
    db $e3
    inc e
    add c
    ld a, [hl]
    cp h
    ld b, e
    ld b, e
    cp a
    ld b, b
    dec b
    sbc a
    ld h, b
    rst $00
    jr c, jr_038_58f0

    ld a, $45
    db $fd
    ld [bc], a
    ld bc, $03fc
    ld b, a
    rst $38
    nop
    add hl, de
    di
    inc c
    ld sp, hl
    ld b, $1d
    ld [c], a
    ld l, l
    sub d
    pop hl
    ld e, $ed
    ld [de], a
    sbc l
    ld h, d
    or b
    ld c, a
    db $fc
    inc bc
    add d
    ld a, l
    ld d, d
    xor l
    ld b, [hl]
    cp c
    ld e, $e1
    add e
    pop de
    ld bc, $1ee1
    ld c, a
    rst $38
    nop
    xor a
    rst $08
    ld b, l
    rst $18
    jr nz, jr_038_5963

    rst $08

jr_038_5963:
    jr nc, @-$79

    nop
    ld a, [bc]
    ld bc, $1ce3
    ld b, a
    rst $38
    nop
    ld bc, $807f
    ld b, e
    rst $38
    nop
    add hl, bc
    db $fc
    inc bc
    add b
    ld a, a
    sbc e
    ld h, h
    cp e
    ld b, h
    cp c
    ld b, [hl]
    jp Jump_038_5f00


    ld bc, $837c
    jp $8100


    dec c
    jp hl


    ld d, $ed
    ld [de], a
    call $0c32
    di
    ld c, $f1
    ld e, $e1
    ldh [$1f], a
    xor a
    xor a
    xor a
    rst $08
    ld bc, $1ce3
    add l
    nop
    ld [$e701], sp
    jr @+$47

    rst $28
    db $10
    rrca
    call $1d32
    ld [c], a
    ld e, h
    and e
    ret


    ld [hl], $e3
    inc e
    adc $31
    sbc h
    ld h, e
    add hl, bc
    or $a3
    bit 0, l
    ld e, e
    and h
    dec b
    db $10
    rst $28
    ld [hl], c
    adc [hl]
    ld h, l
    sbc d
    xor a
    adc a
    xor a
    xor a
    xor a
    rst $08
    ld bc, $11ee
    ld b, a
    ldh [$1f], a
    ld b, l
    rst $38
    nop
    inc bc
    inc bc
    db $fc
    rlca
    ld hl, sp+$43
    rrca
    ldh a, [rSB]
    ld c, $f1
    add l
    sub c
    ld bc, $f609
    add e
    ld bc, $0942
    inc sp
    call z, $fc03
    ei
    inc b
    ld sp, hl
    ld b, $fc
    inc bc
    xor a
    adc a
    xor a
    xor a
    xor a
    rst $08
    rst $38

jr_038_59f7:
    nop
    nop
    nop
    nop
    ld b, e
    rst $38
    nop
    dec bc
    ld hl, sp+$07
    ld [c], a
    dec e
    rst $28
    db $10
    jp hl


    ld d, $cb
    inc [hl]
    rst $18
    jr nz, jr_038_5a51

    rst $38
    nop
    add hl, bc
    nop
    rst $38
    add b
    ld a, a
    jp $e33c


    inc e
    rst $30
    ld [$ff43], sp
    nop
    dec bc

jr_038_5a1d:
    db $fc
    inc bc
    ld bc, $0ffe
    ldh a, [rIE]
    nop
    cp $01
    inc c
    di
    and a
    adc a
    rlca
    or b
    ld c, a
    jr c, jr_038_59f7

    dec de
    db $e4
    inc bc
    db $fc
    ld b, e
    rst $38
    nop
    dec bc
    ldh a, [rIF]
    rlca
    ld hl, sp+$3c
    jp $1ee1


    adc a
    ld [hl], b
    ld a, $c1
    and l
    adc a
    dec c
    rst $20
    jr jr_038_5a51

    ld hl, sp-$39
    jr c, jr_038_5a51

    db $fc
    ld a, e
    add h

jr_038_5a51:
    rst $18
    jr nz, jr_038_5a1d

    ld [hl], $47
    ldh [$1f], a
    inc bc
    ld [c], a
    dec e
    db $e3
    inc e
    ld b, e
    db $fc
    inc bc
    dec bc
    cp [hl]
    ld b, c
    rrca
    ldh a, [$03]
    db $fc
    ld [$4ff7], sp

jr_038_5a6a:
    or b
    rst $38
    nop
    ld b, e
    ld e, h
    and e
    rlca
    inc e
    db $e3
    ld a, [$9a05]
    ld h, l
    ld a, [hl-]
    push bc
    ld b, e
    ei
    inc b
    dec b
    ld [hl], $c9
    ld h, $d9
    inc c
    di
    ld c, c
    dec c
    ld a, [c]
    inc bc
    ld a, [hl]
    add c
    db $fc
    inc bc
    ld b, a
    db $fd
    ld [bc], a
    dec b
    db $fc
    inc bc
    cp $01
    di
    inc c
    ld b, e
    rst $20
    jr jr_038_5ae2

    rst $00
    jr c, @-$57

    adc l
    ld b, a
    ldh [$1f], a
    ld [$01fe], sp
    ld hl, sp+$07
    ldh [$1f], a
    add b
    ld a, a
    nop
    ld b, [hl]
    rst $38
    nop
    inc bc
    ld h, e
    sbc h
    rrca
    ldh a, [rSCX]
    rra
    ldh [$03], a
    ccf
    ret nz

    ld a, [hl]
    add c
    jp $1900


    rla
    inc c
    di
    adc l
    ld [hl], d
    sbc c
    ld h, [hl]
    inc sp
    call z, $9867
    rst $08
    jr nc, jr_038_5a6a

    ld h, b
    cp a
    ld b, b
    ld a, $c1
    add d
    ld a, l
    ld hl, sp+$07
    db $e3
    inc e
    add e
    adc l
    inc bc
    ld a, $c1
    ld a, b
    add a
    ld b, l
    rst $00
    jr c, jr_038_5b26

    add a

jr_038_5ae2:
    ld a, b
    ld b, e
    rlca
    ld hl, sp-$79
    nop
    ld h, [hl]
    ld b, e
    rst $20
    jr @+$06

    rst $28
    db $10
    rst $08
    jr nc, jr_038_5af2

jr_038_5af2:
    ld c, d
    rst $38
    nop
    ld b, e
    add b
    ld a, a
    ld b, e
    rst $38
    nop
    dec b
    ei
    inc b
    ld h, e
    sbc h
    ld c, a
    or b
    add e
    db $e3
    rlca
    ld a, $c1
    sbc [hl]
    ld h, c
    call nz, $f13b
    ld c, $85
    sub l
    add hl, bc
    di
    inc c
    ld [hl], a
    adc b
    ld a, b
    add a
    db $10
    rst $28
    ret nz

    ccf
    jp $2900


    ld b, l
    rst $38
    nop
    ld c, c
    rlca
    ld hl, sp+$01
    add a
    ld a, b

jr_038_5b26:
    add e
    nop
    cp [hl]
    ld b, e

jr_038_5b2a:
    rst $18
    jr nz, @+$05

    add $39
    and $19
    add a
    nop
    ret nz

    inc bc
    ret nz

    ccf
    ret nz

    ccf
    adc c
    rst $18
    inc bc
    ret nz

    ccf
    ccf
    ret nz

    and e
    nop
    jp nc, $030d

    db $fc
    rra
    ldh [$7f], a
    add b
    ld hl, sp+$07
    ret nz

    ccf
    rlca
    ld hl, sp+$1f
    ldh [rSCX], a
    add b
    ld a, a
    jp $e500


    inc bc
    jr nc, jr_038_5b2a

    nop
    rst $38
    add l
    nop
    jr nc, jr_038_5b62

    rrca

jr_038_5b62:
    ldh a, [rLYC]
    rlca
    ld hl, sp-$7d
    nop
    ld d, h
    ld c, l
    rst $30
    ld [$e101], sp
    ld e, $47
    ldh [$1f], a
    ld b, l
    rst $38
    nop
    and l
    nop
    jr z, @-$5b

    ret


    ld bc, $07f8
    add l
    nop
    ld [de], a
    add l
    jp $00a3


    ld [bc], a
    and e
    nop
    ld a, $c3
    sbc h
    ld b, a
    rst $38
    nop
    add e
    sbc c
    ld bc, $807f
    xor c
    sbc l
    add e
    adc e
    add l
    nop
    or d
    xor c
    rst $08
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
    ld b, l
    rst $38
    nop
    ld c, c
    ldh [$1f], a
    ld b, l
    rst $38
    nop
    add hl, bc
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    add l
    adc l
    ld bc, $807f
    ld b, a
    rst $38
    nop
    or e
    adc a
    xor a
    xor a
    xor e
    rst $08
    inc bc
    ldh [$1f], a
    pop hl
    ld e, $43
    db $e3
    inc e
    ld b, e
    rst $20
    jr jr_038_5be8

    rst $28
    db $10
    adc $31
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    inc bc

jr_038_5be8:
    db $fc
    and l
    rst $28
    inc bc
    rra
    ldh [rTAC], a
    ld hl, sp-$7d
    or h
    or a
    adc a
    xor c
    xor a
    or e
    rst $08
    ld b, e
    sbc $21
    ld bc, $619e
    ld c, c
    cp h
    ld b, e
    ld b, e
    rlca
    ld hl, sp-$3d
    ldh [$03], a
    nop
    rst $38
    ld a, $c1
    ld b, e
    ld a, a
    add b
    xor c
    adc a
    add l
    add c
    cp c
    adc a
    and l
    xor a
    xor a
    rst $08
    ld c, e
    cp h
    ld b, e
    inc bc
    sbc h
    ld h, e
    call c, $4323
    ld a, a
    add b
    ld bc, $c03f
    add l
    nop
    add d
    dec b
    ld e, $e1
    ccf
    ret nz

    ret nz

    ccf
    ld b, e
    ld hl, sp+$07
    ld bc, $0ff0
    add a
    db $e3
    xor a
    adc a
    xor a
    xor a
    xor a
    rst $08
    dec b
    sbc $21
    adc $31
    rst $28
    db $10
    ld b, e
    rst $20
    jr jr_038_5c8c

    db $e3
    inc e
    inc bc
    pop hl
    ld e, $3f
    ret nz

    push bc
    ld bc, $0305
    rrca
    ldh a, [$83]
    ld a, h
    add e
    nop
    xor d
    add e
    nop
    adc b
    ld bc, $03fc
    add a
    pop bc
    ld bc, $ff00
    xor a
    adc a
    xor a
    xor a
    xor a
    rst $08
    adc a
    nop
    ld b, $05
    ldh a, [rIF]
    ld a, b
    add a
    inc a
    jp $bd83


    ld bc, $0ef1
    rst $00
    nop
    add hl, de
    ld bc, $f807
    jp Jump_038_6100


    inc bc
    db $e3
    inc e
    rrca
    ldh a, [$b1]
    adc a
    xor l

jr_038_5c8c:
    xor a
    or c
    nop
    inc b
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
    ld b, l
    rst $38
    nop
    inc bc
    rst $08
    jr nc, @-$3b

    inc a
    ld b, e
    ret nz

    ccf
    ld bc, $0ff0
    ld b, l
    rst $38
    nop
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    add e
    adc b
    ld bc, $f609
    ld b, l
    rst $38
    nop
    add hl, bc
    ld hl, sp+$07
    inc bc
    db $fc
    rra
    ldh [rVBK], a
    or b
    rst $20
    jr @+$47

    rst $38
    nop
    jp $0594


    rst $30
    ld [$0cf3], sp
    ei
    inc b
    add a
    xor a
    ld bc, $ff00
    add e
    cp l
    ld bc, $03fc
    ld b, a
    rst $38
    nop
    ld bc, $c03f
    ld b, e
    inc bc
    db $fc
    inc bc
    jp $fc3c


    inc bc
    adc c
    db $db
    add e
    adc e
    dec d
    inc sp
    call z, $08f7
    rst $00
    jr c, jr_038_5d03

    ldh a, [$1f]
    ldh [rTAC], a
    ld hl, sp+$31
    adc $3c
    jp $0cf3


    ld sp, hl
    ld b, $fc
    inc bc

jr_038_5d03:
    ld b, e
    cp $01
    ld b, e
    rst $38
    nop
    ld bc, $837c
    ld b, a
    ei
    inc b
    ld b, e
    ld a, e
    add h
    rla
    nop
    rst $38
    ld a, h
    add e
    db $fc
    inc bc
    ld sp, hl
    ld b, $fb
    inc b
    di
    inc c
    rst $30
    ld [$18e7], sp
    rst $08
    jr nc, jr_038_5d45

    ldh [$7f], a
    add b
    rra
    ldh [$c3], a
    sub d
    dec b
    add e
    ld a, h
    jp $cf3c


    jr nc, @-$73

    db $db
    ld bc, $33cc
    and e
    sub a
    ld bc, $c03f
    ld b, a

jr_038_5d3f:
    ld a, a
    add b
    dec c
    rra
    ldh [$c3], a

jr_038_5d45:
    inc a
    ld hl, sp+$07
    add hl, de
    and $c1
    ld a, $ec

jr_038_5d4d:
    inc de
    xor $11
    and e
    nop
    inc a
    dec b
    rst $18
    jr nz, jr_038_5db5

    and c
    db $fd
    ld [bc], a
    add e
    rst $08
    add hl, bc
    ld b, c
    cp [hl]
    inc e
    db $e3
    cp [hl]
    ld b, c
    or [hl]
    ld c, c
    ld sp, $a7ce
    db $dd
    inc bc
    adc a
    ld [hl], b
    jr nz, jr_038_5d4d

    and e
    nop
    ld a, [hl-]
    ld b, a
    db $e3
    inc e
    add hl, bc
    inc bc
    db $fc
    ld h, a
    sbc b
    rst $20
    jr jr_038_5d3f

    inc a
    rst $00
    jr c, @+$45

    rst $28

jr_038_5d81:
    db $10
    ld bc, $3bc4
    and e
    rst $28
    inc bc
    jp nz, $f23d

    dec c

jr_038_5d8c:
    and a

jr_038_5d8d:
    nop
    jr nz, @+$0d

    rst $08
    jr nc, jr_038_5e02

    sub b
    inc hl
    call c, $df20
    jr jr_038_5d81

    jp $a33c


    nop
    xor b
    add e
    nop
    ld a, [hl-]
    add hl, bc
    ld sp, hl
    ld b, $00
    rst $38
    sbc a
    ld h, b
    rst $08
    jr nc, jr_038_5d8c

    rra
    add e
    db $ed
    rlca
    sbc a
    ld h, b
    cp a
    ld b, b
    ccf

jr_038_5db5:
    ret nz

    rst $18
    jr nz, @-$7b

    nop
    xor [hl]
    add hl, bc
    ccf
    ret nz

    cp a
    ld b, b
    sbc [hl]
    ld h, c
    call z, $e133
    ld e, $43
    jp $033c


    add e
    ld a, h
    sbc a
    ld h, b
    add e
    nop
    or d
    add e
    nop
    or h
    ld de, $04fb
    pop bc
    ld a, $c4
    dec sp
    adc l
    ld [hl], d
    cp c

jr_038_5dde:
    ld b, [hl]
    cp e
    ld b, h
    add a
    ld a, b
    adc a
    ld [hl], b
    ld l, b

jr_038_5de6:
    sub a
    add e
    nop
    xor h
    rlca
    rst $38
    nop
    rst $18
    jr nz, jr_038_5d8d

    ld h, d

jr_038_5df1:
    cp l
    ld b, d
    jp $83fe


    nop
    adc b
    rrca
    rst $18
    jr nz, @-$37

    jr c, jr_038_5dde

    rra
    pop af
    ld c, $f9

jr_038_5e02:
    ld b, $1f
    ldh [rP1], a
    rst $38
    adc a
    ld [hl], b
    add e
    nop
    ret nz

    add hl, bc
    nop
    rst $38
    db $fc
    inc bc
    rrca
    ldh a, [$87]
    ld a, b
    jr nc, jr_038_5de6

    add l
    nop
    ld d, $a3
    nop
    add $03
    ldh a, [rIF]
    db $e3
    inc e
    add a
    nop
    ld d, [hl]
    add e
    nop
    ld e, h
    dec b
    rst $38
    nop
    call c, $c023
    ccf
    adc e
    nop
    ld c, d
    dec b
    ld a, b
    add a
    ld [hl], b
    adc a
    nop
    rst $38
    xor c
    adc a
    inc bc
    ld a, h
    add e
    inc e
    db $e3
    add e
    adc b
    ld bc, $3cc3
    ld b, l
    rst $38
    nop
    and e
    nop
    jr jr_038_5df1

    sbc a
    or l
    adc a
    adc e
    db $db
    ld b, e
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    call Call_038_5e67
    call $045a

jr_038_5e61:
    call Call_038_5ebb
    jr nc, jr_038_5e61

    ret


Call_038_5e67:
    call $0568
    ld b, $08
    call $3340
    ld hl, $4f53
    ld a, $23
    rst $08
    ld hl, $6221
    ld de, $9000
    call $0b50
    ld hl, $40ed
    ld de, $8000
    ld bc, $0040
    ld a, $38
    call $0e8d
    ld a, $08
    ld hl, $c300
    ld [hl+], a
    ld [hl], $00
    ld hl, $c4a0
    ld bc, $0168
    xor a
    call $3041
    xor a
    ldh [$d0], a
    ldh [$cf], a
    ldh [rWY], a
    ld [$cf63], a
    ld a, $01
    ldh [$d4], a
    ld a, $e3
    ldh [rLCDC], a
    ld a, $e4
    call $0c9f
    ld a, $e0
    call $0cf8
    ret


Call_038_5ebb:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_038_5ed0

    call Call_038_5ed2
    ld hl, $4f69
    ld a, $23
    rst $08
    call $045a
    and a
    ret


jr_038_5ed0:
    scf
    ret


Call_038_5ed2:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $5ee1
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    di
    ld e, [hl]
    ei
    ld e, [hl]
    inc e
    ld e, a
    ld b, d
    ld e, a
    ld h, c
    ld e, a
    adc e
    ld e, a
    cp d
    ld e, a
    call z, $005f
    ld h, b
    call Call_038_6152
    ld hl, $cf63
    inc [hl]
    ret


    call Call_038_40ed
    jr nc, jr_038_5f06

Jump_038_5f00:
    ld hl, $cf63
    set 7, [hl]
    ret


jr_038_5f06:
    call Call_038_609d
    ld hl, $cf63
    inc [hl]
    xor a
    ld [$c708], a
    ld hl, $c703
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$c709], a
    ld hl, $c708
    ld a, [hl]
    cp $2d
    jr nc, jr_038_5f30

    inc [hl]
    call Call_038_6183
    xor a
    ld [$c6fd], a
    call Call_038_6128
    ret


jr_038_5f30:
    ld de, $341c
    ld a, $0c
    call $3b2a
    ld a, $05
    ld [$c702], a
    ld hl, $cf63
    inc [hl]
    ret


    ld a, [$c702]
    ld hl, $c4b1
    add $f6
    ld [hl], a
    ld hl, $c702
    ld a, [hl]
    and a
    jr nz, jr_038_5f58

    ld a, $07
    ld [$cf63], a
    ret


jr_038_5f58:
    dec [hl]
    xor a
    ld [$cf64], a
    ld hl, $cf63
    inc [hl]
    ld a, [$cf64]
    and a
    ret z

    dec a
    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    ld a, [hl]
    cp $ff
    ret z

    ld [$c6fd], a
    ld [$c6fe], a
    ld a, e
    ld [$c700], a
    call Call_038_6183
    call Call_038_6128
    xor a
    ld [$cf64], a
    ld hl, $cf63
    inc [hl]
    ret


    ld a, [$cf64]
    and a
    ret z

    dec a
    ld hl, $c700
    cp [hl]
    ret z

    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    ld a, [hl]
    cp $ff
    ret z

    ld [$c6fd], a
    ld [$c6ff], a
    ld a, e
    ld [$c701], a
    call Call_038_6183
    call Call_038_6128
    ld a, $40
    ld [$c708], a
    ld hl, $cf63
    inc [hl]
    ld hl, $c708
    ld a, [hl]
    and a
    jr z, jr_038_5fc3

    dec [hl]
    ret


jr_038_5fc3:
    call Call_038_6010
    ld a, $03
    ld [$cf63], a
    ret


    ldh a, [$a3]
    and $01
    ret z

    xor a
    ld [$c708], a

jr_038_5fd5:
    ld hl, $c708
    ld a, [hl]
    cp $2d
    jr nc, jr_038_5ff9

    inc [hl]
    push af
    call Call_038_6183
    pop af
    push hl
    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    ld a, [hl]
    pop hl
    cp $ff
    jr z, jr_038_5fd5

    ld [$c6fd], a
    call Call_038_6128
    jr jr_038_5fd5

jr_038_5ff9:
    call $0a80
    ld hl, $cf63
    inc [hl]
    call Call_038_40ed
    jr nc, jr_038_600b

    ld hl, $cf63
    set 7, [hl]
    ret


jr_038_600b:
    xor a
    ld [$cf63], a
    ret


Call_038_6010:
    ld hl, $c6fe
    ld a, [hl+]
    cp [hl]
    jr nz, jr_038_6066

    ld a, [$c700]
    call Call_038_6183
    call Call_038_6142
    ld a, [$c701]
    call Call_038_6183
    call Call_038_6142
    ld a, [$c700]
    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    ld [hl], $ff
    ld a, [$c701]
    ld e, a
    ld d, $00
    ld hl, $c6d0
    add hl, de
    ld [hl], $ff
    ld hl, $c703

jr_038_6044:
    ld a, [hl+]
    and a
    jr nz, jr_038_6044

    dec hl
    ld a, [$c6fe]
    ld [hl], a
    ld [$c6fd], a
    ld hl, $c709
    ld e, [hl]
    inc [hl]
    inc [hl]
    ld d, $00
    ld hl, $c4a5
    add hl, de
    call Call_038_6128
    ld hl, $6083
    call $1057
    ret


jr_038_6066:
    xor a
    ld [$c6fd], a
    ld a, [$c700]
    call Call_038_6183
    call Call_038_6128
    ld a, [$c701]
    call Call_038_6183
    call Call_038_6128
    ld hl, $6098
    call $1057
    ret


    ld [$21c5], sp
    and [hl]
    push bc
    call Call_038_6128
    ld hl, $6093
    pop bc
    inc bc
    inc bc
    inc bc
    ret


    ld d, $5b
    ld e, d
    ld [hl], b
    ld d, b
    ld d, $65
    ld e, d
    ld [hl], b
    ld d, b

Call_038_609d:
    ld hl, $c6d0
    ld bc, $002d
    xor a
    call $3041
    call Call_038_6101
    ld c, $02
    ld b, [hl]
    call Call_038_60e5
    ld c, $08
    ld b, [hl]
    call Call_038_60e5
    ld c, $04
    ld b, [hl]
    call Call_038_60e5
    ld c, $07
    ld b, [hl]
    call Call_038_60e5
    ld c, $03
    ld b, [hl]
    call Call_038_60e5
    ld c, $06
    ld b, [hl]
    call Call_038_60e5
    ld c, $01
    ld b, [hl]
    call Call_038_60e5
    ld c, $05
    ld hl, $c6d0
    ld b, $2d

jr_038_60db:
    ld a, [hl]
    and a
    jr nz, jr_038_60e0

    ld [hl], c

jr_038_60e0:
    inc hl
    dec b
    jr nz, jr_038_60db

    ret


Call_038_60e5:
    push hl
    ld de, $c6d0

jr_038_60e9:
    call $2f8c
    and $3f
    cp $2d
    jr nc, jr_038_60e9

    ld l, a
    ld h, $00
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_038_60e9

    ld [hl], c
    dec b
    jr nz, jr_038_60e9

    pop hl
    inc hl

Jump_038_6100:
    ret


Call_038_6101:
    ld a, [$cfa9]
    dec a
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $6110
    add hl, de
    ret


    ld [bc], a
    inc bc
    ld b, $06
    ld b, $08
    ld [$0206], sp
    ld [bc], a
    inc b
    ld b, $06
    ld [$0908], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    ld [$0c08], sp

Call_038_6128:
    ld a, [$c6fd]
    sla a
    sla a
    add $04
    ld [hl+], a
    inc a
    ld [hl-], a
    inc a
    ld bc, $0014
    add hl, bc
    ld [hl+], a
    inc a
    ld [hl], a
    ld c, $03
    call $0468
    ret


Call_038_6142:
    ld a, $01
    ld [hl+], a
    ld [hl-], a
    ld bc, $0014
    add hl, bc
    ld [hl+], a
    ld [hl], a
    ld c, $03
    call $0468
    ret


Call_038_6152:
    ld hl, $c4a0
    ld bc, $0168
    ld a, $01
    call $3041
    ld hl, $c4a0
    ld de, $6177
    call $1078
    ld hl, $c4af
    ld de, $617d
    call $1078
    ld hl, $6176
    call $1057
    ret


    ld d, b
    call nz, $c0df
    db $d3
    ret


    ld d, b
    or c
    call nz, $b67f
    or d
    ld d, b

Call_038_6183:
    ld d, $00

jr_038_6185:
    sub $09
    jr c, jr_038_618c

    inc d
    jr jr_038_6185

jr_038_618c:
    add $09
    ld e, a
    ld hl, $c4c9
    ld bc, $0028

jr_038_6195:
    ld a, d
    and a
    jr z, jr_038_619d

    add hl, bc
    dec d
    jr jr_038_6195

jr_038_619d:
    sla e
    add hl, de
    ret


    ld a, [$cf63]
    cp $07
    jr nc, jr_038_61c8

    call $0a57
    ld hl, $ffa3
    ld a, [hl]
    and $01
    jr nz, jr_038_61cf

    ld a, [hl]
    and $20
    jr nz, jr_038_61d9

    ld a, [hl]
    and $10
    jr nz, jr_038_61e9

    ld a, [hl]
    and $40
    jr nz, jr_038_61fa

    ld a, [hl]
    and $80
    jr nz, jr_038_620d

    ret


jr_038_61c8:
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


jr_038_61cf:
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc a
    ld [$cf64], a
    ret


jr_038_61d9:
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    and a
    ret z

    sub $10
    ld [hl], a
    ld hl, $000c
    add hl, bc
    dec [hl]
    ret


jr_038_61e9:
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    cp $80
    ret z

    add $10
    ld [hl], a
    ld hl, $000c
    add hl, bc
    inc [hl]
    ret


jr_038_61fa:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    and a
    ret z

    sub $10
    ld [hl], a
    ld hl, $000c
    add hl, bc

jr_038_6208:
    ld a, [hl]
    sub $09
    ld [hl], a

jr_038_620c:
    ret


jr_038_620d:
    ld hl, $0007
    add hl, bc
    ld a, [hl]
    cp $40
    ret z

    add $10
    ld [hl], a
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    add $09
    ld [hl], a
    ret


    ld l, a
    ld c, [hl]
    rst $38
    nop
    sub b
    sub b
    cpl
    rst $38
    ld a, [bc]
    ret nz

    ccf
    add b
    ld b, b
    nop
    sbc a
    nop
    cp b
    nop
    or c
    nop
    ld b, e
    and e
    nop
    nop
    cp a
    xor [hl]
    adc a
    ld bc, $000d
    ld b, e
    cp [hl]

jr_038_6241:
    nop
    ld bc, $00bf
    ld b, e
    cp h
    nop
    ld b, $9f
    add b

jr_038_624b:
    ld b, b
    ret nz

    ccf
    nop
    dec a
    xor l
    adc a
    add h
    cp a
    dec b
    add b
    ccf
    cp a
    inc a
    and b
    jr nc, @+$45

    and c
    jr nz, jr_038_625f

jr_038_625f:
    and a
    xor a
    adc a
    dec bc
    jr nz, jr_038_620c

    jr nz, jr_038_6208

    jr nc, @-$5d

    inc a
    and b
    ccf
    cp a
    nop
    add b
    add e
    cp a
    xor a
    adc a
    add l
    cp a
    add hl, bc
    nop
    add b

jr_038_6278:
    inc bc
    add e
    rlca
    add h
    rrca
    adc b
    dec c
    adc b
    add e
    cp a
    rlca
    inc c
    dec c

jr_038_6285:
    inc e
    dec d
    xor $f3
    xor $3f
    ld b, e
    ldh a, [rNR11]
    dec bc
    dec c

jr_038_6290:
    adc b
    ld c, $88
    ld [hl], a
    db $fc
    ld [hl], a
    rst $08
    jr c, jr_038_6241

    jr nc, jr_038_624b

    add e
    cp a
    add hl, bc
    ldh a, [rNR11]
    sub b
    ld [hl], c
    jr nz, jr_038_6285

    ret nz

    pop bc
    nop
    ld bc, $bf89
    dec bc
    add hl, de
    sbc c
    ld e, $9e
    ld a, [de]
    sbc d
    ld de, $1091
    sub b
    ld [hl+], a
    and d
    and a
    adc a
    ld [bc], a
    ld a, b
    ld e, c
    sbc b
    and h
    adc a
    rrca
    ld [hl+], a
    and d
    ld h, b
    ldh [rSTAT], a
    pop bc
    jr nc, jr_038_6278

    ld c, a
    ret z

    scf
    and a
    sbc b
    ld e, b
    ret nz

    ccf
    and l
    adc a
    inc b

jr_038_62d3:
    inc e
    dec c
    or $13
    db $fc
    and d
    adc a
    add l
    cp a
    ld bc, $8101
    ld b, e
    inc bc
    add d
    dec b
    ccf
    cp h
    ld a, a
    ret nz

    ccf
    and b

jr_038_62e9:
    xor a
    adc a

jr_038_62eb:
    ld bc, $981f
    ld b, e
    rrca

jr_038_62f0:
    adc b
    dec b
    rra
    sub c
    ld e, $96
    jr jr_038_6290

    add e
    rst $38

jr_038_62fa:
    xor a
    adc a
    add e
    cp a
    dec bc
    rrca
    adc a
    ld [$0488], sp
    add h
    ld [$1088], sp
    sub b
    rra
    sub b
    xor a
    adc a
    ld b, a
    dec de
    sub b
    inc bc
    rra
    sub b
    rrca
    adc a
    add e
    cp a
    ld c, c
    ld hl, sp+$09
    ld bc, $f1f0
    add a
    cp a
    inc bc
    inc bc
    add e
    inc c
    adc a
    ld b, e
    db $10
    sbc a
    inc bc
    jr nz, jr_038_62e9

    jr nz, jr_038_62eb

    xor a
    adc a
    inc bc
    jr nz, jr_038_62f0

    jr nz, jr_038_62d3

    ld b, e
    db $10
    sub b
    inc bc
    inc c
    adc h
    inc bc
    add e
    add e
    nop
    xor h
    xor a
    adc a
    add l
    cp a
    add hl, bc
    rrca
    adc h
    rra
    sub b
    inc e
    sub e
    dec sp
    and h
    inc a
    and e
    xor l
    adc a
    rlca
    db $fc
    dec b
    ccf
    and b
    jr nz, jr_038_62fa

    db $10
    sub e
    adc c
    cp a
    ld bc, $c53c
    and e
    adc a
    adc a
    cp a
    add hl, bc
    cpl
    xor h
    ld e, a
    di
    ld e, h
    or h
    ld a, h
    and h
    ld a, a
    and a
    xor a
    adc a
    add hl, bc
    ld a, a
    and b
    ld a, c
    and [hl]
    ld e, c
    or [hl]
    ld e, a
    ldh a, [$2f]
    xor h
    add l
    cp a
    rlca
    cp $05
    adc [hl]
    ld [hl], l
    ld a, [$ba0d]
    ld c, a
    and a
    adc a
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
    call Call_038_6963
    xor a
    ld [$cb2e], a
    call $045a

jr_038_63b4:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_038_63c6

    call Call_038_63d5
    call $045a
    jr jr_038_63b4

jr_038_63c6:
    call $300b
    pop af
    ldh [$aa], a
    pop af
    ld [$d0ed], a
    pop af
    ld [$cfcc], a
    ret


Call_038_63d5:
    ld a, [$cf63]
    ld hl, $63df
    call Call_038_73df
    jp hl


    jp hl


    ld h, e
    ld a, [de]
    ld h, h
    ld e, l
    ld h, h
    ld a, l
    ld h, h
    sub d
    ld l, c
    xor a
    ldh [$d4], a
    call $300b
    call Call_038_6d30
    call Call_038_6a8e
    ld de, $74dd
    call Call_038_6a6e
    ld a, $05
    ld [$cb2d], a
    call Call_038_6c2c
    call Call_038_6ac6
    ld a, $ff
    ld [$d108], a
    ld a, $17
    call Call_038_73d0
    call $31f6
    call Call_038_6e01
    call Call_038_698d
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_038_6457

    ld a, [hl]
    and $01
    jr nz, jr_038_6443

    call Call_038_69b5
    and a
    ret z

    call Call_038_6e01
    xor a
    ldh [$d4], a
    call Call_038_6c2c
    call Call_038_6ac6
    ld a, $01
    ldh [$d4], a
    call $045a
    call $045a
    ret


jr_038_6443:
    call Call_038_6def
    and a
    ret z

    cp $ff
    jr z, jr_038_6457

    ld a, $02
    ld [$cf63], a
    ret


    ld hl, $cf63
    dec [hl]
    ret


jr_038_6457:
    ld a, $04
    ld [$cf63], a
    ret


    xor a
    ldh [$d4], a
    call $300b
    call Call_038_6def
    ld [$d108], a
    ld a, $17
    call Call_038_73d0
    ld de, $74ea
    call Call_038_6a6e
    ld a, $01
    ld [$cfa9], a
    call Call_038_698d
    ret


    ld hl, $653d
    call $1d3c
    ld a, [$cfa9]
    call $1d4b
    call $1d81
    jp c, Jump_038_6537

    ld a, [$cfa9]
    dec a
    and $03
    ld e, a
    ld d, $00
    ld hl, $64a1
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    xor c
    ld h, h
    ret z

    ld h, h
    ldh [$64], a
    scf
    ld h, l
    call Call_038_6f18
    jp c, Jump_038_6537

    call Call_038_707c
    jr c, jr_038_64c1

    ld a, $00
    ld [$cf63], a
    xor a
    ld [$cb2b], a
    ld [$cb2a], a
    ret


jr_038_64c1:
    ld de, $74ea
    call Call_038_6a6e
    ret


    call $1d6e
    call Call_038_6f7e
    call $1c07
    call Call_038_6ac6
    call Call_038_6def
    ld [$d108], a
    ld a, $17
    call Call_038_73d0
    ret


    call Call_038_6f18
    jr c, jr_038_6537

    call Call_038_6f5f
    jr c, jr_038_6537

    ld a, [$cfa9]
    push af
    ld de, $74f4
    call Call_038_6a6e
    call $1d6e
    ld bc, $0e0b
    call $1dd2
    ld a, [$cfa9]
    dec a
    call $1c07
    and a
    jr nz, jr_038_652c

    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld [$d109], a
    xor a
    ld [$d10b], a
    ld a, $03
    ld hl, $6039
    rst $08
    call Call_038_7180
    ld a, $00
    ld [$cf63], a
    xor a
    ld [$cb2b], a
    ld [$cb2a], a
    pop af
    ret


jr_038_652c:
    ld de, $74ea
    call Call_038_6a6e
    pop af
    ld [$cfa9], a
    ret


Jump_038_6537:
jr_038_6537:
    ld a, $00
    ld [$cf63], a
    ret


    ld b, b
    inc b
    add hl, bc
    dec c
    inc de
    ld b, l
    ld h, l
    ld bc, $0480
    add e
    add h
    adc a
    adc [hl]
    sub d
    adc b
    sub e
    ld d, b
    sub d
    sub e
    add b
    sub e
    sub d
    ld d, b
    sub c
    add h
    adc e
    add h
    add b
    sub d
    add h
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld hl, $c4a0
    ld b, $04
    ld c, $08
    call $0fb6
    ld hl, $c4f0
    ld b, $0a
    ld c, $09
    call $0fb6
    ld hl, $c5b8
    ld b, $02
    ld c, $08
    call $0fb6
    ret


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
    call Call_038_6963
    ld a, $0f
    ld [$cb2e], a
    call $045a

jr_038_65a7:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_038_65b9

    call Call_038_65c8
    call $045a
    jr jr_038_65a7

jr_038_65b9:
    call $300b
    pop af
    ldh [$aa], a
    pop af
    ld [$d0ed], a
    pop af
    ld [$cfcc], a
    ret


Call_038_65c8:
    ld a, [$cf63]
    ld hl, $65d2
    call Call_038_73df
    jp hl


    call c, $1265
    ld h, [hl]
    ld d, l
    ld h, [hl]
    ld [hl], l
    ld h, [hl]
    sub d
    ld l, c
    ld a, $0f
    ld [$cb2e], a
    xor a
    ldh [$d4], a
    call $300b
    call Call_038_6d30
    call Call_038_6a8e
    ld de, $74dd
    call Call_038_6a6e
    ld a, $05
    ld [$cb2d], a
    call Call_038_6c2c
    call Call_038_6ac6
    ld a, $ff
    ld [$d108], a
    ld a, $17
    call Call_038_73d0
    call $31f6
    call Call_038_6e01
    call Call_038_698d
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_038_664f

    ld a, [hl]
    and $01
    jr nz, jr_038_663b

    call Call_038_69b5
    and a
    ret z

    call Call_038_6e01
    xor a
    ldh [$d4], a
    call Call_038_6c2c
    call Call_038_6ac6
    ld a, $01
    ldh [$d4], a
    call $045a
    call $045a
    ret


jr_038_663b:
    call Call_038_6def
    and a
    ret z

    cp $ff
    jr z, jr_038_664f

    ld a, $02
    ld [$cf63], a
    ret


    ld hl, $cf63
    dec [hl]
    ret


jr_038_664f:
    ld a, $04
    ld [$cf63], a
    ret


    xor a
    ldh [$d4], a
    call $300b
    call Call_038_6def
    ld [$d108], a
    ld a, $17
    call Call_038_73d0
    ld de, $74ea
    call Call_038_6a6e
    ld a, $01
    ld [$cfa9], a
    call Call_038_698d
    ret


    ld hl, $6731
    call $1d3c
    ld a, [$cfa9]
    call $1d4b
    call $1d81
    jp c, Jump_038_672b

    ld a, [$cfa9]
    dec a
    and $03
    ld e, a
    ld d, $00
    ld hl, $6699
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    and c
    ld h, [hl]
    ret nz

    ld h, [hl]
    ret c

    ld h, [hl]
    dec hl
    ld h, a
    call Call_038_6f18
    jp c, Jump_038_672b

    call Call_038_70fa
    jr c, jr_038_66b9

    ld a, $00
    ld [$cf63], a
    xor a
    ld [$cb2b], a
    ld [$cb2a], a
    ret


jr_038_66b9:
    ld de, $74ea
    call Call_038_6a6e
    ret


    call $1d6e
    call Call_038_6f7e
    call $1c07
    call Call_038_6ac6
    call Call_038_6def
    ld [$d108], a
    ld a, $17
    call Call_038_73d0
    ret


    ld a, [$cfa9]
    push af
    call Call_038_6f5f
    jr c, jr_038_6720

    ld de, $74f4
    call Call_038_6a6e
    call $1d6e
    ld bc, $0e0b
    call $1dd2
    ld a, [$cfa9]
    dec a
    call $1c07
    and a
    jr nz, jr_038_6720

    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld [$d109], a
    ld a, $01
    ld [$d10b], a
    ld a, $03
    ld hl, $6039
    rst $08
    call Call_038_7180
    ld a, $00
    ld [$cf63], a
    xor a
    ld [$cb2b], a
    ld [$cb2a], a
    pop af
    ret


jr_038_6720:
    ld de, $74ea
    call Call_038_6a6e
    pop af
    ld [$cfa9], a
    ret


Jump_038_672b:
    ld a, $00
    ld [$cf63], a
    ret


    ld b, b
    inc b
    add hl, bc
    dec c
    inc de
    add hl, sp
    ld h, a
    ld bc, $0480
    sub [hl]
    adc b
    sub e
    add a
    add e
    sub c
    add b
    sub [hl]
    ld d, b
    sub d
    sub e
    add b
    sub e
    sub d
    ld d, b
    sub c
    add h
    adc e
    add h
    add b
    sub d
    add h
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
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
    call Call_038_6963
    ld a, [$db72]
    and $0f
    inc a
    ld [$cb2e], a
    call $045a

jr_038_6781:
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_038_6793

    call Call_038_67a2
    call $045a
    jr jr_038_6781

jr_038_6793:
    call $300b
    pop af
    ldh [$aa], a
    pop af
    ld [$d0ed], a
    pop af
    ld [$cfcc], a
    ret


Call_038_67a2:
    ld a, [$cf63]
    ld hl, $67ac
    call Call_038_73df
    jp hl


    cp d
    ld h, a
    db $eb
    ld h, a
    dec a
    ld l, b
    ld e, l
    ld l, b
    rst $18
    ld l, b
    inc bc
    ld l, c
    sub d
    ld l, c
    xor a
    ldh [$d4], a
    call $300b
    call Call_038_6d30
    ld de, $74dd
    call Call_038_6a6e
    ld a, $05
    ld [$cb2d], a
    call Call_038_6c2c
    call Call_038_6a80
    call Call_038_6ac6
    ld a, $ff
    ld [$d108], a
    ld a, $17
    call Call_038_73d0
    call $31f6
    call Call_038_6e01
    call Call_038_698d
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_038_6837

    ld a, [hl]
    and $01
    jr nz, jr_038_6823

    call Call_038_69d0
    jr c, jr_038_6816

    and a
    ret z

    call Call_038_6e01
    xor a
    ldh [$d4], a
    call Call_038_6c2c
    call Call_038_6ac6
    ld a, $01
    ldh [$d4], a
    call $045a
    call $045a
    ret


jr_038_6816:
    xor a
    ld [$cb2b], a
    ld [$cb2a], a
    ld a, $00
    ld [$cf63], a
    ret


jr_038_6823:
    call Call_038_6def
    and a
    ret z

    cp $ff
    jr z, jr_038_6837

    ld a, $02
    ld [$cf63], a
    ret


    ld hl, $cf63
    dec [hl]
    ret


jr_038_6837:
    ld a, $06
    ld [$cf63], a
    ret


    xor a
    ldh [$d4], a
    call $300b
    call Call_038_6def
    ld [$d108], a
    ld a, $17
    call Call_038_73d0
    ld de, $74ea
    call Call_038_6a6e
    ld a, $01
    ld [$cfa9], a
    call Call_038_698d
    ret


    ld hl, $68c3
    call $1d3c
    ld a, [$cfa9]
    call $1d4b
    call $1d81
    jp c, Jump_038_68bd

    ld a, [$cfa9]
    dec a
    and $03
    ld e, a
    ld d, $00
    ld hl, $6881
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add a
    ld l, b
    and l
    ld l, b
    cp l
    ld l, b
    call Call_038_6f18
    jp c, Jump_038_68bd

    ld a, [$cb2a]
    ld [$cb2f], a
    ld a, [$cb2b]
    ld [$cb30], a
    ld a, [$cb2e]
    ld [$cb31], a
    ld a, $04
    ld [$cf63], a
    ret


    call $1d6e
    call Call_038_6f7e
    call $1c07
    call Call_038_6ac6
    call Call_038_6def
    ld [$d108], a
    ld a, $17
    call Call_038_73d0
    ret


Jump_038_68bd:
    ld a, $00
    ld [$cf63], a
    ret


    ld b, b
    inc b
    add hl, bc
    dec c
    inc de
    bit 5, b
    ld bc, $0380
    adc h
    adc [hl]
    sub l
    add h
    ld d, b
    sub d
    sub e
    add b
    sub e
    sub d
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    xor a
    ldh [$d4], a
    call Call_038_6d30
    ld de, $7500
    call Call_038_6a6e
    ld a, $05
    ld [$cb2d], a
    call Call_038_6c2c
    call Call_038_6a80
    call $300b
    call Call_038_6e8c
    call $31f6
    call Call_038_698d
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $02
    jr nz, jr_038_694b

    ld a, [hl]
    and $01
    jr nz, jr_038_6938

    call Call_038_69f4
    jr c, jr_038_692b

    and a
    ret z

    call Call_038_6e8c
    xor a
    ldh [$d4], a
    call Call_038_6c2c
    ld a, $01
    ldh [$d4], a
    call $045a
    call $045a
    ret


jr_038_692b:
    xor a
    ld [$cb2b], a
    ld [$cb2a], a
    ld a, $04
    ld [$cf63], a
    ret


jr_038_6938:
    call Call_038_6ee5
    jr c, jr_038_6946

    call Call_038_71e7
    ld a, $00
    ld [$cf63], a
    ret


jr_038_6946:
    ld hl, $cf63
    dec [hl]
    ret


jr_038_694b:
    ld a, [$cb2f]
    ld [$cb2a], a
    ld a, [$cb30]
    ld [$cb2b], a
    ld a, [$cb31]
    ld [$cb2e], a
    ld a, $00
    ld [$cf63], a
    ret


Call_038_6963:
    call $31f3
    call $300b
    call $0fc8
    call Call_038_73e8
    ld hl, $c800
    ld bc, $0338
    xor a
    call $3041
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    ld [$cb2b], a
    ld [$cb2a], a
    ret


Call_038_698d:
    ld hl, $cf63
    inc [hl]
    ret


    ld hl, $cf63
    set 7, [hl]
    ret


Call_038_6998:
    ld a, [$cb2d]
    ld d, a
    ld a, [$cb2c]
    and a
    jr z, jr_038_69b2

    dec a
    cp $01
    jr z, jr_038_69b2

    ld e, a
    ld a, [hl]
    and $40
    jr nz, jr_038_6a18

    ld a, [hl]
    and $80
    jr nz, jr_038_6a2c

jr_038_69b2:
    jp Jump_038_6a65


Call_038_69b5:
    ld hl, $ffa9
    ld a, [$cb2d]
    ld d, a
    ld a, [$cb2c]
    ld e, a
    and a
    jr z, jr_038_69cd

    ld a, [hl]
    and $40
    jr nz, jr_038_6a18

    ld a, [hl]
    and $80
    jr nz, jr_038_6a2c

jr_038_69cd:
    jp Jump_038_6a65


Call_038_69d0:
    ld hl, $ffa9
    ld a, [$cb2d]
    ld d, a
    ld a, [$cb2c]
    ld e, a
    and a
    jr z, jr_038_69e8

    ld a, [hl]
    and $40
    jr nz, jr_038_6a18

    ld a, [hl]
    and $80
    jr nz, jr_038_6a2c

jr_038_69e8:
    ld a, [hl]
    and $20
    jr nz, jr_038_6a48

    ld a, [hl]
    and $10
    jr nz, jr_038_6a56

    jr jr_038_6a65

Call_038_69f4:
    ld hl, $ffa9
    ld a, [$cb2d]
    ld d, a
    ld a, [$cb2c]
    ld e, a
    and a
    jr z, jr_038_6a0c

    ld a, [hl]
    and $40
    jr nz, jr_038_6a18

    ld a, [hl]
    and $80
    jr nz, jr_038_6a2c

jr_038_6a0c:
    ld a, [hl]
    and $20
    jr nz, jr_038_6a48

    ld a, [hl]
    and $10
    jr nz, jr_038_6a56

    jr jr_038_6a65

jr_038_6a18:
    ld hl, $cb2b
    ld a, [hl]
    and a
    jr z, jr_038_6a22

    dec [hl]
    jr jr_038_6a68

jr_038_6a22:
    ld hl, $cb2a
    ld a, [hl]
    and a
    jr z, jr_038_6a65

    dec [hl]
    jr jr_038_6a68

jr_038_6a2c:
    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    inc a
    cp e
    jr nc, jr_038_6a65

    ld hl, $cb2b
    ld a, [hl]
    inc a
    cp d
    jr nc, jr_038_6a42

    inc [hl]
    jr jr_038_6a68

jr_038_6a42:
    ld hl, $cb2a
    inc [hl]
    jr jr_038_6a68

jr_038_6a48:
    ld hl, $cb2e
    ld a, [hl]
    and a
    jr z, jr_038_6a52

    dec [hl]
    jr jr_038_6a6c

jr_038_6a52:
    ld [hl], $0e
    jr jr_038_6a6c

jr_038_6a56:
    ld hl, $cb2e
    ld a, [hl]
    cp $0e
    jr z, jr_038_6a61

    inc [hl]
    jr jr_038_6a6c

jr_038_6a61:
    ld [hl], $00
    jr jr_038_6a6c

Jump_038_6a65:
jr_038_6a65:
    xor a
    and a
    ret


jr_038_6a68:
    ld a, $01
    and a
    ret


jr_038_6a6c:
    scf
    ret


Call_038_6a6e:
    push de
    ld hl, $c5cc
    ld bc, $0112
    call $0fe8
    pop de
    ld hl, $c5e1
    call $1078
    ret


Call_038_6a80:
    call Call_038_6a8e
    ld hl, $c4bc
    ld [hl], $5f
    ld hl, $c4c7
    ld [hl], $5e
    ret


Call_038_6a8e:
    ld hl, $c4a8
    ld bc, $010a
    call $0fe8
    ld a, [$cb2e]
    and a
    jr z, jr_038_6ab3

    cp $0f
    jr nz, jr_038_6aa5

    ld a, [$db72]
    inc a

jr_038_6aa5:
    dec a
    ld hl, $db75
    ld bc, $0009
    call $30fe
    ld e, l
    ld d, h
    jr jr_038_6ab6

jr_038_6ab3:
    ld de, $6abd

jr_038_6ab6:
    ld hl, $c4be
    call $1078
    ret


    adc a
    add b
    sub c
    sub e
    sbc b
    ld a, a
    pop hl
    ld [c], a
    ld d, b

Call_038_6ac6:
    ld hl, $c4a0
    ld bc, $0f08
    call $0fb6
    ld hl, $c5c0
    ld bc, $0103
    call $0fb6
    call Call_038_6def
    and a
    ret z

    cp $ff
    ret z

    ld [$d265], a
    ld hl, $c4f1
    xor a
    ld b, $07

jr_038_6ae9:
    ld c, $07
    push af
    push hl

jr_038_6aed:
    ld [hl+], a
    add $07
    dec c
    jr nz, jr_038_6aed

    pop hl
    ld de, $0014
    add hl, de
    pop af
    inc a
    dec b
    jr nz, jr_038_6ae9

    call Call_038_6b6d
    ld a, [$d265]
    ld [$d108], a
    ld [$cf60], a
    ld hl, $d123
    ld a, $2d
    call $2d83
    call $3856
    ld de, $9000
    ld a, $3c
    call $2d83
    xor a
    ld [$cb32], a
    ld a, [$d108]
    ld [$d265], a
    cp $fd
    ret z

    call $3420
    ld hl, $c5b9
    call $1078
    ld hl, $c591
    call $382d
    ld a, $03
    ld [$cf5f], a
    ld a, $14
    ld hl, $4bdd
    rst $08
    jr c, jr_038_6b4f

    ld a, $ef
    jr nz, jr_038_6b4b

    ld a, $f5

jr_038_6b4b:
    ld hl, $c595
    ld [hl], a

jr_038_6b4f:
    ld a, [$d10f]
    and a
    ret z

    ld d, a
    ld hl, $5e76
    ld a, $2e
    rst $08
    jr c, jr_038_6b61

    ld a, $5d
    jr jr_038_6b68

jr_038_6b61:
    ld a, $01
    ld [$cb32], a
    ld a, $5c

jr_038_6b68:
    ld hl, $c597
    ld [hl], a
    ret


Call_038_6b6d:
    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld e, a
    ld d, $00
    ld hl, $c801
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_038_6bc6

    cp $0f
    jr z, jr_038_6bf5

    ld b, a
    call Call_038_7396
    ld a, b
    call $2fcb
    push hl
    ld bc, $0035
    add hl, bc
    ld bc, $0020
    ld a, e
    call $30fe
    ld a, [hl]
    ld [$d12d], a
    pop hl
    push hl
    ld bc, $0017
    add hl, bc
    ld bc, $0020
    ld a, e
    call $30fe
    ld a, [hl]
    ld [$d10f], a
    pop hl
    ld bc, $002b
    add hl, bc
    ld bc, $0020
    ld a, e
    call $30fe
    ld de, $d123
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call $2fe1
    ret


jr_038_6bc6:
    ld hl, $dcfe
    ld bc, $0030
    ld a, e
    call $30fe
    ld a, [hl]
    ld [$d12d], a
    ld hl, $dce0
    ld bc, $0030
    ld a, e
    call $30fe
    ld a, [hl]
    ld [$d10f], a
    ld hl, $dcf4
    ld bc, $0030
    ld a, e
    call $30fe
    ld de, $d123
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


jr_038_6bf5:
    ld a, $01
    call $2fcb
    ld hl, $ad45
    ld bc, $0020
    ld a, e
    call $30fe
    ld a, [hl]
    ld [$d12d], a
    ld hl, $ad27
    ld bc, $0020
    ld a, e
    call $30fe
    ld a, [hl]
    ld [$d10f], a
    ld hl, $ad3b
    ld bc, $0020
    ld a, e
    call $30fe
    ld de, $d123
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call $2fe1
    ret


Call_038_6c2c:
    ld hl, $c4d0
    ld bc, $0a0a
    call $0fe8
    ld hl, $c4d0
    ld [hl], $7d
    ld hl, $c4db
    ld [hl], $7e
    ld a, [$cb2a]
    ld e, a
    ld d, $00
    ld hl, $c800
    add hl, de
    add hl, de
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c4f9
    ld a, [$cb2d]

jr_038_6c53:
    push af
    push de
    push hl
    call Call_038_6c6e
    pop hl
    ld de, $0028
    add hl, de
    pop de
    inc de
    inc de
    inc de
    pop af
    dec a
    jr nz, jr_038_6c53

    ret


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

Call_038_6c6e:
    ld a, [de]
    and a
    ret z

    cp $ff
    jr nz, jr_038_6c7c

    ld de, $6c67
    call $1078
    ret


jr_038_6c7c:
    inc de
    ld a, [de]
    ld b, a
    inc de
    ld a, [de]
    ld e, a
    ld a, b
    and a
    jr z, jr_038_6cc8

    cp $0f
    jr z, jr_038_6cf1

    push hl
    call Call_038_7396
    ld a, b
    call $2fcb
    push hl
    ld bc, $0016
    add hl, bc
    ld bc, $0020
    ld a, e
    call $30fe
    ld a, [hl]
    pop hl
    and a
    jr z, jr_038_6cc2

    ld bc, $0372
    add hl, bc
    ld bc, $000b
    ld a, e
    call $30fe
    ld de, $d073
    ld bc, $000b
    call $3026
    call $2fe1
    pop hl
    ld de, $d073
    call $1078
    ret


jr_038_6cc2:
    call $2fe1
    pop hl
    jr jr_038_6d23

jr_038_6cc8:
    push hl
    ld hl, $dcd8
    ld d, $00
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_038_6cee

    ld hl, $de41
    ld bc, $000b
    ld a, e
    call $30fe
    ld de, $d073
    ld bc, $000b
    call $3026
    pop hl
    ld de, $d073
    call $1078
    ret


jr_038_6cee:
    pop hl
    jr jr_038_6d23

jr_038_6cf1:
    push hl
    ld a, $01
    call $2fcb
    ld hl, $ad11
    ld d, $00
    add hl, de
    ld a, [hl]
    and a
    jr z, jr_038_6d1f

    ld hl, $b082
    ld bc, $000b
    ld a, e
    call $30fe
    ld de, $d073
    ld bc, $000b
    call $3026
    call $2fe1
    pop hl
    ld de, $d073
    call $1078
    ret


jr_038_6d1f:
    call $2fe1
    pop hl

jr_038_6d23:
    ld de, $6d2a
    call $1078
    ret


    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b

Call_038_6d30:
    xor a
    ld hl, $c800
    ld bc, $005a
    call $3041
    ld de, $c800
    xor a
    ld [$d003], a
    ld [$d004], a
    ld a, [$cb2e]
    and a
    jr z, jr_038_6d87

    cp $0f
    jr z, jr_038_6db7

    ld b, a
    call Call_038_7396
    ld a, b
    call $2fcb
    inc hl

jr_038_6d57:
    ld a, [hl]
    cp $ff
    jr z, jr_038_6d79

    and a
    jr z, jr_038_6d79

    ld [de], a
    inc de
    ld a, [$cb2e]
    ld [de], a
    inc de
    ld a, [$d003]
    ld [de], a
    inc a
    ld [$d003], a
    inc de
    inc hl
    ld a, [$d004]
    inc a
    ld [$d004], a
    jr jr_038_6d57

jr_038_6d79:
    call $2fe1
    ld a, $ff
    ld [de], a
    ld a, [$d004]
    inc a
    ld [$cb2c], a
    ret


jr_038_6d87:
    ld hl, $dcd8

jr_038_6d8a:
    ld a, [hl]
    cp $ff
    jr z, jr_038_6dac

    and a
    jr z, jr_038_6dac

    ld [de], a
    inc de
    ld a, [$cb2e]
    ld [de], a
    inc de
    ld a, [$d003]
    ld [de], a
    inc a
    ld [$d003], a
    inc de
    inc hl
    ld a, [$d004]
    inc a
    ld [$d004], a
    jr jr_038_6d8a

jr_038_6dac:
    ld a, $ff
    ld [de], a
    ld a, [$d004]
    inc a
    ld [$cb2c], a
    ret


jr_038_6db7:
    ld a, $01
    call $2fcb
    ld hl, $ad11

jr_038_6dbf:
    ld a, [hl]
    cp $ff
    jr z, jr_038_6de1

    and a
    jr z, jr_038_6de1

    ld [de], a
    inc de
    ld a, [$cb2e]
    ld [de], a
    inc de
    ld a, [$d003]
    ld [de], a
    inc a
    ld [$d003], a
    inc de
    inc hl
    ld a, [$d004]
    inc a
    ld [$d004], a
    jr jr_038_6dbf

jr_038_6de1:
    call $2fe1
    ld a, $ff
    ld [de], a
    ld a, [$d004]
    inc a
    ld [$cb2c], a
    ret


Call_038_6def:
    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld e, a
    ld d, $00
    ld hl, $c800
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl]
    ret


Call_038_6e01:
    ld a, [$cb2c]
    and a
    jr nz, jr_038_6e0b

    call $300b
    ret


jr_038_6e0b:
    ld hl, $6e2b
    ld de, $c400

jr_038_6e11:
    ld a, [hl]
    cp $ff
    ret z

    ld a, [$cb2b]
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
    inc de
    jr jr_038_6e11

    ld h, $50
    nop
    nop
    ld h, $58
    nop
    nop
    ld h, $60
    nop
    nop
    ld h, $68
    nop
    nop
    ld h, $70
    nop
    nop
    ld h, $78
    nop
    nop
    ld h, $80
    nop
    nop
    ld h, $88
    nop
    nop
    ld h, $90
    nop
    nop
    ld h, $97
    nop
    nop
    add hl, sp
    ld d, b
    nop
    ld b, b
    add hl, sp
    ld e, b
    nop
    ld b, b
    add hl, sp
    ld h, b
    nop
    ld b, b
    add hl, sp
    ld l, b
    nop
    ld b, b
    add hl, sp
    ld [hl], b
    nop
    ld b, b
    add hl, sp
    ld a, b
    nop
    ld b, b
    add hl, sp
    add b
    nop
    ld b, b
    add hl, sp
    adc b
    nop
    ld b, b
    add hl, sp
    sub b
    nop
    ld b, b
    add hl, sp
    sub a
    nop
    ld b, b
    ld l, $4e
    ld bc, $3100
    ld c, [hl]
    ld bc, $2e40
    sbc c
    ld bc, $3120
    sbc c
    ld bc, $ff60

Call_038_6e8c:
    ld hl, $6eac
    ld de, $c400

jr_038_6e92:
    ld a, [hl]
    cp $ff
    ret z

    ld a, [$cb2b]
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
    inc de
    jr jr_038_6e92

    daa
    ld d, b
    ld b, $00
    dec hl
    ld e, b
    nop
    ld b, b
    dec hl
    ld h, b
    nop
    ld b, b
    dec hl
    ld l, b
    nop
    ld b, b
    dec hl
    ld [hl], b
    nop
    ld b, b
    dec hl
    ld a, b
    nop
    ld b, b
    dec hl
    add b
    nop
    ld b, b
    dec hl
    adc b
    nop
    ld b, b
    dec hl
    sub b
    nop
    ld b, b
    daa
    sbc b
    rlca
    nop
    rst $38

jr_038_6ed5:
    push bc
    push hl

jr_038_6ed7:
    ld [hl+], a
    dec c
    jr nz, jr_038_6ed7

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_038_6ed5

    ret


Call_038_6ee5:
    ld hl, $cb2e
    ld a, [$cb31]
    cp [hl]
    jr z, jr_038_6f00

    ld a, [$cb2e]
    and a
    jr z, jr_038_6ef8

    ld e, $15
    jr jr_038_6efa

jr_038_6ef8:
    ld e, $07

jr_038_6efa:
    ld a, [$cb2c]
    cp e
    jr nc, jr_038_6f02

jr_038_6f00:
    and a
    ret


jr_038_6f02:
    ld de, $7521
    call Call_038_6a6e
    ld de, $0019
    call $3c4e
    call $3c55
    ld c, $32
    call $0468
    scf
    ret


Call_038_6f18:
    ld a, [$cb2e]
    and a
    jr nz, jr_038_6f3d

    ld a, [$cb2c]
    cp $03
    jr c, jr_038_6f49

    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld [$d109], a
    ld a, $03
    ld hl, $6538
    rst $08
    jr c, jr_038_6f44

    ld a, [$cb32]
    and a
    jr nz, jr_038_6f3f

jr_038_6f3d:
    and a
    ret


jr_038_6f3f:
    ld de, $7544
    jr jr_038_6f4c

jr_038_6f44:
    ld de, $7531
    jr jr_038_6f4c

jr_038_6f49:
    ld de, $750f

jr_038_6f4c:
    call Call_038_6a6e
    ld de, $0019
    call $3c4e
    call $3c55
    ld c, $32
    call $0468
    scf
    ret


Call_038_6f5f:
    ld a, [$d108]
    cp $fd
    jr z, jr_038_6f68

    and a
    ret


jr_038_6f68:
    ld de, $7597
    call Call_038_6a6e
    ld de, $0019
    call $3c4e
    call $3c55
    ld c, $32
    call $0468
    scf
    ret


Call_038_6f7e:
    call $3c9d
    call Call_038_6fd6
    ld a, $03
    ld [$cf5f], a
    ld a, $25
    call $2d83
    call Call_038_73e8
    call $3c97
    ret


    ld hl, $ffa7
    ld a, [hl]
    and $33
    ld [$cf73], a
    jr nz, jr_038_6fd0

    ld a, [hl]
    and $c0
    ld [$cf73], a
    jr nz, jr_038_6faa

    jr jr_038_6fd0

jr_038_6faa:
    call Call_038_6998
    and a
    jr z, jr_038_6fd1

    call Call_038_6def
    ld [$d265], a
    call Call_038_6b6d
    ld a, [$d265]
    ld [$d108], a
    ld [$cf60], a
    ld hl, $d123
    ld a, $2d
    call $2d83
    call $3856
    call Call_038_6fd6

jr_038_6fd0:
    ret


jr_038_6fd1:
    xor a
    ld [$cf73], a
    ret


Call_038_6fd6:
    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld [$d109], a
    ld a, [$cb2e]
    and a
    jr z, jr_038_7020

    cp $0f
    jr nz, jr_038_7048

    ld a, $01
    call $2fcb
    ld hl, $ad11
    call Call_038_7357
    ld hl, $b082
    call Call_038_7363
    ld hl, $afa6
    call Call_038_7376
    ld hl, $ad26
    ld bc, $0020
    ld a, [$d109]
    call $30fe
    ld de, $d018
    ld bc, $0030
    call $3026
    call $2fe1
    ld a, $14
    ld hl, $488b
    rst $08
    ret


jr_038_7020:
    ld hl, $dcd8
    call Call_038_7357
    ld hl, $de41
    call Call_038_7363
    ld hl, $ddff
    call Call_038_7376
    ld hl, $dcdf
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    ld de, $d018
    ld bc, $0030
    call $3026
    ret


jr_038_7048:
    ld b, a
    call Call_038_7396
    ld a, b
    call $2fcb
    push hl
    inc hl
    call Call_038_7357
    pop hl
    push hl
    ld bc, $0372
    add hl, bc
    call Call_038_7363
    pop hl
    push hl
    ld bc, $0296
    add hl, bc
    call Call_038_7376
    pop hl
    ld bc, $0016
    add hl, bc
    ld bc, $0020
    call Call_038_7389
    call $2fe1
    ld a, $14
    ld hl, $488b
    rst $08
    ret


Call_038_707c:
    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld [$d109], a
    ld hl, $de41
    ld a, [$d109]
    call $38a2
    ld a, $01
    ld [$d10b], a
    ld a, $08
    call $2d83
    jr c, jr_038_70e4

    xor a
    ld [$d10b], a
    ld a, $03
    ld hl, $6039
    rst $08
    ld a, [$d108]
    call $37ce
    ld hl, $c4a0
    ld bc, $0f08
    call $0fb6
    ld hl, $c5c0
    ld bc, $0103
    call $0fb6
    ld hl, $c5cc
    ld bc, $0112
    call $0fe8
    call $31f6
    ld hl, $c5e1
    ld de, $7563
    call $1078
    ld l, c
    ld h, b
    ld de, $d073
    call $1078
    ld a, $e7
    ld [bc], a
    ld c, $32
    call $0468
    and a
    ret


jr_038_70e4:
    ld de, $7575
    call Call_038_6a6e
    ld de, $0019
    call $3c4e
    call $3c55
    ld c, $32
    call $0468
    scf
    ret


Call_038_70fa:
    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld [$d109], a
    ld a, $01
    call $2fcb
    ld a, [$d109]
    ld hl, $b082
    call $38a2
    call $2fe1
    xor a
    ld [$d10b], a
    ld a, $08
    call $2d83
    jr c, jr_038_716a

    ld a, $01
    ld [$d10b], a
    ld a, $03
    ld hl, $6039
    rst $08
    ld a, [$d108]
    call $37ce
    ld hl, $c4a0
    ld bc, $0f08
    call $0fb6
    ld hl, $c5c0
    ld bc, $0103
    call $0fb6
    ld hl, $c5cc
    ld bc, $0112
    call $0fe8
    call $31f6
    ld hl, $c5e1
    ld de, $756b
    call $1078
    ld l, c
    ld h, b
    ld de, $d073
    call $1078
    ld a, $e7
    ld [bc], a
    ld c, $32
    call $0468
    and a
    ret


jr_038_716a:
    ld de, $7586
    call Call_038_6a6e
    ld de, $0019
    call $3c4e
    call $3c55
    ld c, $32
    call $0468
    scf
    ret


Call_038_7180:
    ld hl, $c4a0
    ld bc, $0f08
    call $0fb6
    ld hl, $c5c0
    ld bc, $0103
    call $0fb6
    ld hl, $c5cc
    ld bc, $0112
    call $0fe8
    call $31f6
    ld a, [$d108]
    call $381e
    jr c, jr_038_71ab

    ld e, c
    ld d, b
    call $3be3

jr_038_71ab:
    ld a, [$d108]
    ld [$d265], a
    call $343b
    ld hl, $c5e1
    ld de, $7551
    call $1078
    ld c, $50
    call $0468
    ld hl, $c5cc
    ld bc, $0112
    call $0fe8
    ld hl, $c5e1
    ld de, $755e
    call $1078
    ld l, c
    ld h, b
    inc hl
    ld de, $d073
    call $1078
    ld l, c
    ld h, b
    ld [hl], $e7
    ld c, $32
    call $0468
    ret


Call_038_71e7:
    push hl
    push de
    push bc
    push af
    ld hl, $c5cc
    ld bc, $0112
    call $0fe8
    ld hl, $c5e1
    ld de, $7233
    call $1078
    ld c, $14
    call $0468
    pop af
    pop bc
    pop de
    pop hl
    ld a, [$db72]
    push af
    ld bc, $0000
    ld a, [$cb31]
    and a
    jr nz, jr_038_7215

    set 0, c

jr_038_7215:
    ld a, [$cb2e]
    and a
    jr nz, jr_038_721d

    set 1, c

jr_038_721d:
    ld hl, $7245
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $722a
    push de
    jp hl


    pop af
    ld e, a
    ld a, $05
    ld hl, $4ad5
    rst $08
    ret


    sub d
    and b
    or l
    xor b
    xor l
    and [hl]
    ld [hl], l
    ld a, a
    adc e
    and h
    and b
    or l
    and h
    ld a, a
    adc [hl]
    adc l
    rst $20
    ld d, b
    ld c, l
    ld [hl], d
    ld h, a
    ld [hl], d
    ld a, l
    ld [hl], d
    add h
    ld [hl], d
    ld hl, $cb31
    ld a, [$cb2e]
    cp [hl]
    jr z, jr_038_725d

    call Call_038_72b0
    call Call_038_72fa
    ret


jr_038_725d:
    call Call_038_72b0
    call Call_038_728e
    call Call_038_72fa
    ret


    call Call_038_7316
    ld a, $01
    ld [$c2cd], a
    ld a, $05
    ld hl, $4b85
    rst $08
    xor a
    ld [$c2cd], a
    call Call_038_72fa
    ret


    call Call_038_72b0
    call Call_038_7346
    ret


    call Call_038_7316
    call Call_038_728e
    call Call_038_7346
    ret


Call_038_728e:
    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld e, a
    ld a, [$cb30]
    ld hl, $cb2f
    add [hl]
    cp e
    ret nc

    ld hl, $cb2b
    ld a, [hl]
    and a
    jr z, jr_038_72a8

    dec [hl]
    ret


jr_038_72a8:
    ld hl, $cb2a
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret


Call_038_72b0:
    ld a, [$cb31]
    dec a
    ld e, a
    ld a, $05
    ld hl, $4ac2
    rst $08
    ld a, [$cb30]
    ld hl, $cb2f
    add [hl]
    ld [$d109], a
    ld a, $01
    call $2fcb
    ld hl, $ad11
    call Call_038_7357
    ld hl, $b082
    call Call_038_7363
    ld hl, $afa6
    call Call_038_7376
    ld hl, $ad26
    ld bc, $0020
    call Call_038_7389
    call $2fe1
    ld a, $14
    ld hl, $488b
    rst $08
    ld a, $01
    ld [$d10b], a
    ld a, $03
    ld hl, $6039
    rst $08
    ret


Call_038_72fa:
    ld a, [$cb2e]
    dec a
    ld e, a
    ld a, $05
    ld hl, $4ac2
    rst $08
    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld [$d109], a
    ld a, $14
    ld hl, $5322
    rst $08
    ret


Call_038_7316:
    ld a, [$cb30]
    ld hl, $cb2f
    add [hl]
    ld [$d109], a
    ld hl, $dcd8
    call Call_038_7357
    ld hl, $de41
    call Call_038_7363
    ld hl, $ddff
    call Call_038_7376
    ld hl, $dcdf
    ld bc, $0030
    call Call_038_7389
    xor a
    ld [$d10b], a
    ld a, $03
    ld hl, $6039
    rst $08
    ret


Call_038_7346:
    ld a, [$cb2b]
    ld hl, $cb2a
    add [hl]
    ld [$d109], a
    ld a, $14
    ld hl, $538b
    rst $08
    ret


Call_038_7357:
    ld a, [$d109]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    ld [$d108], a
    ret


Call_038_7363:
    ld bc, $000b
    ld a, [$d109]
    call $30fe
    ld de, $d002
    ld bc, $000b
    call $3026
    ret


Call_038_7376:
    ld bc, $000b
    ld a, [$d109]
    call $30fe
    ld de, $d00d
    ld bc, $000b
    call $3026
    ret


Call_038_7389:
    ld a, [$d109]
    call $30fe
    ld de, $d018
    call $3026
    ret


Call_038_7396:
    dec b
    ld c, b
    ld b, $00
    ld hl, $73a6
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
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

Call_038_73d0:
    ld b, a
    call $3340
    ld a, $e4
    call $0c9f
    ld a, $fc
    call $0cf8
    ret


Call_038_73df:
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_038_73e8:
    call $0568
    ld hl, $9000
    ld bc, $0310
    xor a
    call $3041
    call $0e51
    call $0e58
    ld hl, $749d
    ld de, $95c0
    ld bc, $0040
    call $3026
    ld hl, $7419
    ld de, $8000
    call $0b50
    ld a, $06
    call $3cb4
    call $058a
    ret


    ldh [$7f], a
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $8001
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
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
    nop
    rst $38
    rst $38
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff01
    rst $38
    nop
    nop
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, b
    ld a, b
    ld h, b
    ld h, b
    nop
    nop
    ld b, $06
    ld e, $1e
    ld a, [hl]
    ld a, [hl]
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld e, $1e
    ld b, $06
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    jp $a5ff


    rst $38
    sbc c
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    cp l
    rst $20
    cp l
    rst $38
    add c
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    nop
    nop
    jr c, jr_038_74f9

    inc a
    inc a
    ld a, $3e
    ld a, $3e
    inc a
    inc a
    jr c, jr_038_7503

    nop
    nop
    nop
    nop
    inc e
    inc e
    inc a
    inc a
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    inc a
    inc a
    inc e
    inc e
    nop
    nop
    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld a, a
    pop hl
    ld [c], a
    add sp, $50
    sub [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    and $50
    sub c
    and h
    xor e
    and h
    and b

jr_038_74f9:
    or d
    and h
    ld a, a
    pop hl
    ld [c], a
    and $50
    adc h
    xor [hl]
    or l

jr_038_7503:
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
    adc b
    or e
    call nc, $b87f
    xor [hl]
    or h
    or c
    ld a, a
    xor e
    and b
    or d
    or e
    ld a, a
    pop hl
    ld [c], a
    rst $20
    ld d, b
    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    or c
    xor [hl]
    xor [hl]
    xor h
    rst $20
    ld d, b
    adc l
    xor [hl]
    ld a, a
    xor h
    xor [hl]
    or c
    and h
    ld a, a
    or h
    or d
    and b
    and c
    xor e
    and h
    ld a, a
    pop hl
    ld [c], a
    rst $20
    ld d, b
    sub c
    and h
    xor h
    xor [hl]
    or l
    and h
    ld a, a
    adc h
    add b
    adc b
    adc e
    add sp, $50
    sub c
    and h
    xor e
    and h
    and b
    or d
    and h
    and e
    ld a, a
    pop hl
    ld [c], a
    add sp, $50
    add c
    cp b
    and h
    db $f4
    ld d, b
    sub d
    or e
    xor [hl]
    or c
    and h
    and e
    ld a, a
    ld d, b
    add [hl]
    xor [hl]
    or e
    ld a, a
    ld d, b
    adc l
    xor [hl]
    xor l
    add sp, $50
    sub e
    and a
    and h
    ld a, a
    add c
    adc [hl]
    sub a
    ld a, a
    xor b
    or d
    ld a, a
    and l
    or h
    xor e
    xor e
    add sp, $50
    sub e
    and a
    and h
    ld a, a
    xor a
    and b
    or c
    or e
    cp b
    call nc, $a57f
    or h
    xor e
    xor e
    rst $20
    ld d, b
    adc l
    xor [hl]
    ld a, a
    or c
    and h
    xor e
    and h
    and b
    or d
    xor b
    xor l
    and [hl]
    ld a, a
    add h
    add [hl]
    add [hl]
    sub d
    rst $20
    ld d, b
    call $1d6e
    call Call_038_75e2

jr_038_75b0:
    xor a
    ldh [$d4], a
    call Call_038_76cf
    call Call_038_779c
    ld hl, $75f1
    call $1d3c
    xor a
    ld [$d0e4], a
    ld hl, $c4f0
    ld bc, $0809
    call $0fe8
    call $350c
    ld a, [$cf73]
    cp $02
    jr z, jr_038_75de

    call Call_038_77af
    call Call_038_76f9
    jr jr_038_75b0

jr_038_75de:
    call $1c17
    ret


Call_038_75e2:
    xor a
    ldh [$d4], a
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ret


    ld b, b
    dec b
    ld bc, $090c
    ld sp, hl
    ld [hl], l
    ld bc, $0422
    nop
    ld bc, $0938
    db $76
    jr c, @+$1b

    halt
    nop
    nop
    jr c, @+$34

    db $76
    ld c, $01
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $ff
    push de
    ld a, [$cf74]
    dec a
    call Call_038_7626
    pop hl
    call $1078
    ret


Call_038_7626:
    ld bc, $0009
    ld hl, $db75
    call $30fe
    ld d, h
    ld e, l
    ret


    ld hl, $c537
    ld bc, $0507
    call $0fe8
    ld a, [$cf74]
    cp $ff
    ret z

    ld hl, $c560
    ld de, $7663
    call $1078
    call Call_038_766c
    ld [$d265], a
    ld hl, $c589
    ld de, $d265
    ld bc, $0102
    call $3198
    ld de, $7668
    call $1078
    ret


    ld d, h
    adc h
    adc [hl]
    adc l
    ld d, b
    di
    ld hl, sp-$0a
    ld d, b

Call_038_766c:
    ld a, [$db72]
    ld c, a
    ld a, [$cf74]
    dec a
    cp c
    jr z, jr_038_7697

    ld c, a
    ld b, $00
    ld hl, $76a5
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld b, a
    call $2fcb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    call $2fe1
    ld c, a
    ld a, [$d4b4]
    and a
    jr z, jr_038_7695

    ld a, c
    ret


jr_038_7695:
    xor a
    ret


jr_038_7697:
    ld a, $01
    ld b, a
    call $2fcb
    ld hl, $ad10
    ld a, [hl]
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

Call_038_76cf:
    ld hl, $c4a0
    ld b, $02
    ld c, $12
    call $0fe8
    ld hl, $c4c9
    ld de, $76f1
    call $1078
    ld a, [$db72]
    and $0f
    call Call_038_7626
    ld hl, $c4d3
    call $1078
    ret


    add d
    sub h
    sub c
    sub c
    add h
    adc l
    sub e
    ld d, b

Call_038_76f9:
    ld hl, $777b
    call $1d35
    call $1d81
    call $1c07
    ret c

    ld a, [$cfa9]
    cp $01
    jr z, jr_038_7734

    cp $02
    jr z, jr_038_7745

    cp $03
    jr z, jr_038_7717

    and a
    ret


jr_038_7717:
    call Call_038_766c
    and a
    jr z, jr_038_772f

    ld e, l
    ld d, h
    ld a, [$cf74]
    dec a
    ld c, a
    ld a, $21
    ld hl, $44bc
    rst $08
    call Call_038_75e2
    and a
    ret


jr_038_772f:
    call Call_038_77be
    and a
    ret


jr_038_7734:
    ld a, [$cf74]
    dec a
    ld e, a
    ld a, [$db72]
    cp e
    ret z

    ld a, $05
    ld hl, $4a83
    rst $08
    ret


jr_038_7745:
    ld b, $04
    ld de, $d002
    ld a, $04
    ld hl, $56c1
    rst $08
    call $0fc8
    call $0e51
    call $0e58
    ld a, [$cf74]
    dec a
    call Call_038_7626
    ld e, l
    ld d, h
    ld hl, $d002
    ld c, $08
    call $2ef6
    ld a, [$cf74]
    dec a
    call Call_038_7626
    ld de, $d002
    call $30d9
    ret


    ld hl, $c537
    ld b, b
    inc b
    dec bc
    dec c
    inc de
    add e
    ld [hl], a
    ld bc, $0480
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    ld d, b
    adc l
    add b
    adc h
    add h
    ld d, b
    adc a
    sub c
    adc b
    adc l
    sub e
    ld d, b
    sub b
    sub h
    adc b
    sub e
    ld d, b

Call_038_779c:
    ld de, $77a1
    jr jr_038_77e3

    add d
    and a
    xor [hl]
    xor [hl]
    or d
    and h
    ld a, a
    and b
    ld a, a
    add c
    adc [hl]
    sub a
    add sp, $50

Call_038_77af:
    ld de, $77b4
    jr jr_038_77e3

    sub [hl]
    and a
    and b
    or e
    call nc, $b47f
    xor a
    and $50

Call_038_77be:
    ld de, $77d3
    call Call_038_77e3
    ld de, $0019
    call $3c4e
    call $3c55
    ld c, $32
    call $0468
    ret


    sub e
    and a
    and h
    or c
    and h
    call nc, $ad7f
    xor [hl]
    ld a, a
    ld d, h
    adc h
    adc [hl]
    adc l
    add sp, $50

Call_038_77e3:
jr_038_77e3:
    push de
    ld hl, $c5b8
    ld bc, $0212
    call $0fe8
    pop de
    ld hl, $c5e1
    call $1078
    ld a, $01
    ldh [$d4], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_038_7c05:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
