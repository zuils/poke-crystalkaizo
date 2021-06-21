; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    call $2ed3
    xor a
    ldh [$d4], a
    call $31f3
    call $300b
    ld hl, $c4a0
    ld bc, $0168
    ld a, $7f
    call $3041
    ld hl, $cdd9
    ld bc, $0168
    ld a, $07
    call $3041
    call $3200
    call $32f9
    ret


    ld a, $ff
    ld [$d4cd], a
    ld [$d4ce], a
    ld a, $00
    ld hl, $4071
    call $19a6
    ld b, $00
    call Call_002_408f
    ld a, $00
    call $18d2
    ld hl, $0008
    add hl, bc
    ld e, $80
    ld a, [$d45b]
    bit 2, a
    jr nz, jr_002_4059

    ld a, [$d472]
    bit 0, a
    jr z, jr_002_4059

    ld e, $90

jr_002_4059:
    ld [hl], e
    ld a, $00
    ldh [$af], a
    ld bc, $d71e
    ld a, $00
    ldh [$b0], a
    ld de, $d4d6
    call Call_002_4116
    ld a, $00
    ld [$d4cf], a
    ret


    ld bc, $0000
    dec bc
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38

Call_002_407e:
    push de
    ld a, b
    call $18d2
    pop de
    ld hl, $0003
    add hl, bc
    ld [hl], d
    ld hl, $0002
    add hl, bc
    ld [hl], e
    ret


Call_002_408f:
    push bc
    ld a, [$dcb8]
    add $04
    ld d, a
    ld a, [$dcb7]
    add $04
    ld e, a
    pop bc
    call Call_002_407e
    ret


    ld a, b
    call $18de
    ret c

    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    ldh a, [$af]
    ld b, a
    call Call_002_407e
    and a
    ret


    ld a, [$dcb8]
    add $04
    ld d, a
    ld hl, $d4e6
    sub [hl]
    ld [hl], d
    ld hl, $d721
    ld [hl], d
    ld hl, $d4e8
    ld [hl], d
    ld d, a
    ld a, [$dcb7]
    add $04
    ld e, a
    ld hl, $d4e7
    sub [hl]
    ld [hl], e
    ld hl, $d720
    ld [hl], e
    ld hl, $d4e9
    ld [hl], e
    ld e, a
    ld a, [$d4cd]
    cp $00
    ret nz

    ret


Call_002_40e7:
    call $2707
    and a
    ret nz

    ld hl, $d4fe
    ld a, $01
    ld de, $0028

jr_002_40f4:
    ldh [$b0], a
    ld a, [hl]
    and a
    jr z, jr_002_4104

    add hl, de
    ldh a, [$b0]
    inc a
    cp $0d
    jr nz, jr_002_40f4

    scf
    ret


jr_002_4104:
    ld d, h
    ld e, l
    call Call_002_4116
    ld hl, $d0ed
    bit 7, [hl]
    ret z

    ld hl, $0005
    add hl, de
    set 5, [hl]
    ret


Call_002_4116:
    call Call_002_411d
    call Call_002_4286
    ret


Call_002_411d:
    ldh a, [$b0]
    ld hl, $0000
    add hl, bc
    ld [hl], a
    ldh a, [$af]
    ld [$c2f0], a
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    ld [$c2f1], a
    call $180e
    ld [$c2f2], a
    ld a, [hl]
    call $17ff
    ld [$c2f3], a
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    and $f0
    jr z, jr_002_414e

    swap a
    and $07
    ld [$c2f3], a

jr_002_414e:
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    ld [$c2f4], a
    ld hl, $0009
    add hl, bc
    ld a, [hl]
    ld [$c2f5], a
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    ld [$c2f6], a
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld [$c2f7], a
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    ld [$c2f8], a
    ret


    ld bc, $d72e
    ld a, $01

jr_002_417c:
    ldh [$af], a
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_41bb

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_002_41bb

    ld a, [$dcb8]
    ld d, a
    ld a, [$dcb7]
    ld e, a
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    add $01
    sub d
    jr c, jr_002_41bb

    cp $0c
    jr nc, jr_002_41bb

    ld hl, $0002
    add hl, bc
    ld a, [hl]
    add $01
    sub e
    jr c, jr_002_41bb

    cp $0b
    jr nc, jr_002_41bb

    push bc
    call Call_002_40e7
    pop bc
    jp c, Jump_002_41c9

jr_002_41bb:
    ld hl, $0010
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$af]
    inc a
    cp $10
    jr nz, jr_002_417c

    ret


Jump_002_41c9:
    ret


    nop
    ld a, [$d151]
    cp $ff
    ret z

    ld hl, $41d6
    rst $28
    ret


    push hl
    ld b, c
    sbc $41
    ld [hl-], a
    ld b, d
    add hl, sp
    ld b, d
    ld a, [$dcb7]
    sub $01
    jr jr_002_41ea

    ld a, [$dcb7]
    add $09

jr_002_41ea:
    ld d, a
    ld a, [$dcb8]
    ld e, a
    ld bc, $d72e
    ld a, $01

jr_002_41f4:
    ldh [$af], a
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_4224

    ld hl, $0002
    add hl, bc
    ld a, d
    cp [hl]
    jr nz, jr_002_4224

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_002_4224

    ld hl, $0003
    add hl, bc
    ld a, [hl]
    add $01
    sub e
    jr c, jr_002_4224

    cp $0c
    jr nc, jr_002_4224

    push de
    push bc
    call Call_002_40e7
    pop bc
    pop de

jr_002_4224:
    ld hl, $0010
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$af]
    inc a
    cp $10
    jr nz, jr_002_41f4

    ret


    ld a, [$dcb8]
    sub $01
    jr jr_002_423e

    ld a, [$dcb8]
    add $0a

jr_002_423e:
    ld e, a
    ld a, [$dcb7]
    ld d, a
    ld bc, $d72e
    ld a, $01

jr_002_4248:
    ldh [$af], a
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_002_4278

    ld hl, $0003
    add hl, bc
    ld a, e
    cp [hl]
    jr nz, jr_002_4278

    ld hl, $0000
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_002_4278

    ld hl, $0002
    add hl, bc
    ld a, [hl]
    add $01
    sub d
    jr c, jr_002_4278

    cp $0b
    jr nc, jr_002_4278

    push de
    push bc
    call Call_002_40e7
    pop bc
    pop de

jr_002_4278:
    ld hl, $0010
    add hl, bc
    ld b, h
    ld c, l
    ldh a, [$af]
    inc a
    cp $10
    jr nz, jr_002_4248

    ret


Call_002_4286:
    ld a, [$c2f0]
    ld hl, $0001
    add hl, de
    ld [hl], a
    ld a, [$c2f4]
    call $1a61
    ld a, [$c2f3]
    ld hl, $0006
    add hl, de
    or [hl]
    ld [hl], a
    ld a, [$c2f7]
    call Call_002_42d5
    ld a, [$c2f6]
    call Call_002_42f1
    ld a, [$c2f1]
    ld hl, $0000
    add hl, de
    ld [hl], a
    ld a, [$c2f2]
    ld hl, $0002
    add hl, de
    ld [hl], a
    ld hl, $0009
    add hl, de
    ld [hl], $00
    ld hl, $000d
    add hl, de
    ld [hl], $ff
    ld a, [$c2f8]
    call Call_002_430d
    ld a, [$c2f5]
    ld hl, $0020
    add hl, de
    ld [hl], a
    and a
    ret


Call_002_42d5:
    ld hl, $0015
    add hl, de
    ld [hl], a
    ld hl, $0011
    add hl, de
    ld [hl], a
    ld hl, $dcb7
    sub [hl]
    and $0f
    swap a
    ld hl, $d14d
    sub [hl]
    ld hl, $0018
    add hl, de
    ld [hl], a
    ret


Call_002_42f1:
    ld hl, $0014
    add hl, de
    ld [hl], a
    ld hl, $0010
    add hl, de
    ld [hl], a
    ld hl, $dcb8
    sub [hl]
    and $0f
    swap a
    ld hl, $d14c
    sub [hl]
    ld hl, $0017
    add hl, de
    ld [hl], a
    ret


Call_002_430d:
    ld h, a
    inc a
    and $0f
    ld l, a
    ld a, h
    add $10
    and $f0
    or l
    ld hl, $0016
    add hl, de
    ld [hl], a
    ret


    ldh a, [$e0]
    call $1b1e
    ld a, $3e
    call $1b3f
    ld a, [$d03f]
    dec a
    jr z, jr_002_433b

    ldh a, [$e0]
    ld b, a
    ld c, $00
    ld d, $01
    call Call_002_4341
    call $1b35

jr_002_433b:
    ld a, $47
    call $1b3f
    ret


Call_002_4341:
    push de
    push bc
    ld a, c
    call $18d2
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    call $1ae5
    ld d, b
    ld e, c
    pop bc
    ld a, b
    call $18d2
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    call $1ae5
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld hl, $0011
    add hl, bc
    ld c, [hl]
    ld b, a
    ld hl, $0010
    add hl, de
    ld a, [hl]
    ld hl, $0011
    add hl, de
    ld e, [hl]
    ld d, a
    pop af
    call $1b5f
    ret


    call $1b1e
    call Call_002_4388
    call $1b3f
    ld a, $47
    call $1b3f
    ret


Call_002_4388:
    ld a, [$d4de]
    srl a
    srl a
    and $03
    ld e, a
    ld d, $00
    ld hl, $439a
    add hl, de
    ld a, [hl]
    ret


    ld [$0a09], sp
    dec bc
    push bc
    ld a, c
    call $18de
    ld d, b
    ld e, c
    pop bc
    ret c

    ld a, b
    call $18de
    ret c

    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld hl, $0011
    add hl, bc
    ld c, [hl]
    ld b, a
    ld hl, $0010
    add hl, de
    ld a, [hl]
    cp b
    jr z, jr_002_43c7

    jr c, jr_002_43c4

    inc b
    jr jr_002_43d5

jr_002_43c4:
    dec b
    jr jr_002_43d5

jr_002_43c7:
    ld hl, $0011
    add hl, de
    ld a, [hl]
    cp c
    jr z, jr_002_43d5

    jr c, jr_002_43d4

    inc c
    jr jr_002_43d5

jr_002_43d4:
    dec c

jr_002_43d5:
    ld hl, $0010
    add hl, de
    ld [hl], b
    ld a, b
    ld hl, $dcb8
    sub [hl]
    and $0f
    swap a
    ld hl, $d14c
    sub [hl]
    ld hl, $0017
    add hl, de
    ld [hl], a
    ld hl, $0011
    add hl, de
    ld [hl], c
    ld a, c
    ld hl, $dcb7
    sub [hl]
    and $0f
    swap a
    ld hl, $d14d
    sub [hl]
    ld hl, $0018
    add hl, de
    ld [hl], a
    ldh a, [$b0]
    ld hl, $0020
    add hl, de
    ld [hl], a
    ld hl, $0003
    add hl, de
    ld [hl], $1a
    ld hl, $0009
    add hl, de
    ld [hl], $00
    ret


    ld a, d
    call $18d2
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    cp $0d
    jr nc, jr_002_4437

    ld d, a
    ld a, e
    call $18d2
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    cp $0d
    jr nc, jr_002_4437

    ld e, a
    call Call_002_4439
    ret


jr_002_4437:
    scf
    ret


Call_002_4439:
    ld a, d
    call $1ae5
    ld hl, $0010
    add hl, bc
    ld a, [hl]
    ld hl, $0011
    add hl, bc
    ld c, [hl]
    ld b, a
    push bc
    ld a, e
    call $1ae5
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    pop bc
    ld a, b
    sub d
    jr z, jr_002_446c

    jr nc, jr_002_4460

    cpl
    inc a

jr_002_4460:
    ld h, a
    ld a, c
    sub e
    jr z, jr_002_447a

    jr nc, jr_002_4469

    cpl
    inc a

jr_002_4469:
    sub h
    jr c, jr_002_447a

jr_002_446c:
    ld a, c
    cp e
    jr z, jr_002_4488

    jr c, jr_002_4476

    ld d, $00
    and a
    ret


jr_002_4476:
    ld d, $01
    and a
    ret


jr_002_447a:
    ld a, b
    cp d
    jr z, jr_002_4488

    jr c, jr_002_4484

    ld d, $03
    and a
    ret


jr_002_4484:
    ld d, $02
    and a
    ret


jr_002_4488:
    scf
    ret


    call Call_002_449d
    jr c, jr_002_4497

    ld [$d4d1], a
    xor a
    ld [$d4d0], a
    ret


jr_002_4497:
    ld a, $ff
    ld [$d4d0], a
    ret


Call_002_449d:
    ld a, [$d4cd]
    call $1ae5
    ld hl, $0010
    add hl, bc
    ld d, [hl]
    ld hl, $0011
    add hl, bc
    ld e, [hl]
    ld a, [$d4ce]
    call $1ae5
    ld hl, $0010
    add hl, bc
    ld a, d
    cp [hl]
    jr z, jr_002_44c5

    jr c, jr_002_44c1

    and a
    ld a, $0f
    ret


jr_002_44c1:
    and a
    ld a, $0e
    ret


jr_002_44c5:
    ld hl, $0011
    add hl, bc
    ld a, e
    cp [hl]
    jr z, jr_002_44d7

    jr c, jr_002_44d3

    and a
    ld a, $0c
    ret


jr_002_44d3:
    and a
    ld a, $0d
    ret


jr_002_44d7:
    scf
    ret


    ld a, e
    and $3f
    cp $20
    jr nc, jr_002_44e5

    call Call_002_44ef
    ld a, h
    ret


jr_002_44e5:
    and $1f
    call Call_002_44ef
    ld a, h
    xor $ff
    inc a
    ret


Call_002_44ef:
    ld e, a
    ld a, d
    ld d, $00
    ld hl, $450b
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0000

jr_002_44fe:
    srl a
    jr nc, jr_002_4503

    add hl, de

jr_002_4503:
    sla e
    rl d
    and a
    jr nz, jr_002_44fe

    ret


    nop
    nop
    add hl, de
    nop
    ld [hl-], a
    nop
    ld c, d
    nop
    ld h, d
    nop
    ld a, c
    nop
    adc [hl]
    nop
    and d
    nop
    or l
    nop
    add $00
    push de
    nop
    ld [c], a
    nop
    db $ed
    nop
    push af
    nop
    ei
    nop
    rst $38
    nop
    nop
    ld bc, $00ff
    ei
    nop
    push af
    nop
    db $ed
    nop
    ld [c], a
    nop
    push de
    nop
    add $00
    or l
    nop
    and d
    nop
    adc [hl]
    nop
    ld a, c
    nop
    ld h, d
    nop
    ld c, d
    nop
    ld [hl-], a
    nop
    add hl, de
    nop
    ld a, h
    ld [$cfb5], a
    ld a, l
    ld [$cfb6], a
    push de
    ld a, [$cfb4]
    ld e, a
    ld d, $00
    ld hl, $456b
    add hl, de
    add hl, de
    add hl, de
    pop de
    ld a, [hl+]
    ld [$cfb8], a
    ld a, [hl+]
    ld [$cfb7], a
    ld a, [hl]
    ret


    ld [$0165], sp
    ld a, d
    ld [hl], h
    ld bc, $4658
    inc bc
    pop bc
    ld d, a
    inc de
    sbc c
    ld b, [hl]
    inc bc
    ld l, l
    ld e, d
    inc bc
    adc h
    ld e, b
    inc bc
    sub [hl]
    ld e, d
    inc bc
    ccf
    ld e, e
    inc bc
    ld l, [hl]
    ld e, [hl]
    inc bc
    adc h
    ld e, a
    inc bc
    ldh [rDMA], a
    inc bc
    ld h, a
    ld h, c
    inc bc
    ld a, e
    ld h, c
    inc bc
    add hl, sp
    ld d, [hl]
    inc b
    ld l, d
    ld d, [hl]
    inc b
    rst $28
    ld c, [hl]
    ld a, [bc]
    ld a, $4b
    dec bc
    ld c, b
    ld e, a
    rrca
    ld l, [hl]
    ld l, a
    dec bc
    ld [hl], e
    ld e, b
    rrca
    ld [hl], $60
    rrca
    pop bc
    ld [hl], h
    rrca
    sub b
    ld [hl], e
    rrca
    dec a
    ld [hl], h
    rrca
    ld a, h
    ld [hl], h
    rrca
    add a
    ld h, h
    db $10
    pop hl
    ld h, h
    db $10
    and $61
    db $10
    ld h, e
    ld c, a
    ld a, [bc]
    inc h
    ld c, a
    ld a, [bc]
    ld c, d
    ld c, b
    inc d
    ld l, a
    ld c, l
    inc d
    ld l, $4d
    inc d
    db $db
    ld c, h
    inc d
    ld d, b
    ld c, h
    inc d
    db $dd
    ld c, e
    inc d
    adc d
    ld e, h
    inc de
    ld a, [bc]
    ld c, e
    inc d
    ld c, $4b
    inc d
    ld a, e
    ld c, e
    inc d
    ld h, h
    ld c, c
    inc d
    ld a, [hl-]
    ld c, c
    inc d
    ld d, e
    ld c, c
    inc d
    dec c
    ld c, c
    inc d
    ld b, b
    ld d, b
    inc d
    db $dd
    ld a, h
    ld [hl-], a
    push de
    ld b, b
    inc sp
    ld d, e
    ld e, b
    ld [bc], a
    ld c, h
    ld b, [hl]
    ld [bc], a
    ld de, $245d
    adc b
    ld c, d
    ld [bc], a
    rrca
    ld b, d
    inc hl
    nop
    ld b, b
    inc hl
    nop
    ld b, b
    inc hl
    sub $40
    inc sp
    push de
    ld b, b
    inc sp
    push de
    ld b, b
    inc sp
    ret nc

    ld d, c
    ccf
    ld l, h
    ld l, d
    inc b
    ld [hl], a
    ld d, b
    inc d
    ld l, h
    ld d, c
    inc d
    adc e
    ld d, b
    inc d
    dec c
    ld d, d
    inc d
    ld e, l
    ld d, d
    inc d
    db $d3
    ld b, a
    dec c
    ld [$3e79], sp
    ld [hl], a
    ld a, b
    ld a, $00
    ld b, b
    inc [hl]
    ld a, [bc]
    ld c, l
    inc d
    and e
    ld b, b
    inc [hl]
    adc [hl]
    ld b, b
    inc [hl]
    ld l, c
    ld b, [hl]
    inc [hl]
    ld l, [hl]
    ld b, [hl]
    inc [hl]
    rst $38
    ld b, e
    dec l
    call Call_002_4d55
    jp nz, Jump_002_4d59

    ld a, b
    cp $ff
    jr nz, jr_002_465a

    ld a, [$cd98]

jr_002_465a:
    cp $fc
    jp z, Jump_002_4ade

    ld l, a
    ld h, $00
    add hl, hl
    ld de, $466f
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $4a60
    push de
    jp hl


    xor l
    ld b, [hl]
    or h
    ld b, [hl]
    ld e, h
    ld b, a
    ld h, e
    ld b, a
    or d
    ld b, a
    ld d, d
    ld c, b
    ld e, c
    ld c, b
    ld h, a
    ld c, b
    ld h, b
    ld c, b
    or c
    ld c, b
    xor e
    ld b, a
    call $8448
    ld c, b
    ld a, [de]
    ld c, c
    inc a
    ld b, a
    sub a
    ld c, b
    ld a, [hl+]
    ld c, b
    sbc [hl]
    ld c, b
    jr z, jr_002_46de

    sub b
    ld c, b
    ld c, e
    ld c, b
    ld a, [de]
    ld c, c
    inc hl
    ld c, b
    jp hl


    ld b, a
    ld hl, $a649
    ld c, c
    xor l
    ld c, c
    reti


    ld c, c
    ldh [rOBP1], a
    ld h, b
    ld c, b
    ld l, c
    ld c, c
    ld hl, $5c66
    ld de, $5aa6
    ret


    ld hl, $5aa6
    call Call_002_5809
    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld a, [$cd99]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $68be
    add hl, de
    ld a, [hl+]
    ld [$cdac], a
    ld a, [hl+]
    ld [$cdad], a
    ld a, [hl+]
    ld [$cdae], a

jr_002_46de:
    ld a, [hl]
    ld [$cdaf], a
    ld a, [$cd9a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $68be
    add hl, de
    ld a, [hl+]
    ld [$cdb2], a
    ld a, [hl+]
    ld [$cdb3], a
    ld a, [hl+]
    ld [$cdb4], a
    ld a, [hl]
    ld [$cdb5], a
    ld hl, $5cf6
    ld de, $cdb9
    ld bc, $0010
    call $3026
    call Call_002_5729
    ld a, [hl+]
    ld [$cdbc], a
    ld a, [hl+]
    ld [$cdbd], a
    ld a, [hl+]
    ld [$cdbe], a
    ld a, [hl]
    ld [$cdbf], a
    call Call_002_573a
    ld a, [hl+]
    ld [$cdc2], a
    ld a, [hl+]
    ld [$cdc3], a
    ld a, [hl+]
    ld [$cdc4], a
    ld a, [hl]
    ld [$cdc5], a
    ld hl, $cda9
    ld de, $cdb9
    ld a, $01
    ld [$cd98], a
    ret


    ld hl, $5bd6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld hl, $cdaa
    ld [hl], $10
    inc hl
    inc hl
    ld a, [$cd99]
    add $2f
    ld [hl], a
    ld hl, $cda9
    ld de, $5ad6
    ret


    ld hl, $5c76
    ld de, $5a86
    ret


    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld a, [$cda1]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $68be
    add hl, de
    ld a, [hl+]
    ld [$cdac], a
    ld a, [hl+]
    ld [$cdad], a
    ld a, [hl+]
    ld [$cdae], a
    ld a, [hl]
    ld [$cdaf], a
    ld a, [$d108]
    ld bc, $d123
    call Call_002_574b
    ld a, [hl+]
    ld [$cdb2], a
    ld a, [hl+]
    ld [$cdb3], a
    ld a, [hl+]
    ld [$cdb4], a
    ld a, [hl]
    ld [$cdb5], a
    ld hl, $cda9
    ld de, $5ac6
    ret


    ld hl, $5c56
    ld de, $cdaa
    ret


Call_002_47b2:
    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld hl, $cdac
    ld [hl], $9f
    inc hl
    ld [hl], $2a
    inc hl
    ld [hl], $5a
    inc hl
    ld [hl], $19
    ld a, [$d108]
    call Call_002_5775
    ld a, [hl+]
    ld [$cdb2], a
    ld a, [hl+]
    ld [$cdb3], a
    ld a, [hl+]
    ld [$cdb4], a
    ld a, [hl]
    ld [$cdb5], a
    ld hl, $cda9
    ld de, $5ae6
    ret


    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld hl, $cdac
    ld [hl], $9f
    inc hl
    ld [hl], $2a
    inc hl
    ld [hl], $5a
    inc hl
    ld [hl], $19
    ld a, [$d108]
    ld bc, $d123
    call Call_002_574b
    ld a, [hl+]
    ld [$cdb2], a
    ld a, [hl+]
    ld [$cdb3], a
    ld a, [hl+]
    ld [$cdb4], a
    ld a, [hl]
    ld [$cdb5], a
    ld hl, $cda9
    ld de, $5ae6
    ret


    call Call_002_47b2
    ld de, $5af6
    ret


    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld hl, $cdac
    ld [hl], $9f
    inc hl
    ld [hl], $2a
    inc hl
    ld [hl], $5a
    inc hl
    ld [hl], $19
    ld hl, $cda9
    ld de, $5a86
    ret


    ld hl, $5c36
    ld de, $5a86
    ret


    ld hl, $5c96
    ld de, $5b06
    ret


    ld hl, $5ca6
    ld de, $5b76
    ret


    ld hl, $5cb6
    ld de, $5a86
    ret


    ld b, $00
    ld hl, $4878
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    add [hl]
    ld e, d
    and $5b
    sub [hl]
    ld e, d
    ld b, $5c
    add [hl]
    ld e, d
    ld d, $5c
    ld hl, $5b96
    ld de, $5b56
    ld a, $08
    ld [$cd98], a
    ret


    ld hl, $5ba6
    ld de, $5b86
    ret


    ld hl, $5c46
    ld de, $5a86
    ret


    ld hl, $5a86
    ld de, $c702
    ld bc, $0010
    call $3026
    ld hl, $5bb6
    ld de, $5a86
    ret


    ld hl, $5bd6
    ld de, $cda9
    ld bc, $0010
    call $3026
    call Call_002_4a0c
    ld hl, $cdaa
    ld [hl-], a
    ld de, $5a86
    ld a, $09
    ld [$cd98], a
    ret


    push bc
    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    pop bc
    ld a, c
    and a
    jr z, jr_002_48ef

    ld hl, $cdac
    ld [hl], $e7
    inc hl
    ld [hl], $1c
    inc hl
    ld [hl], $62
    inc hl
    ld [hl], $0c
    jr jr_002_4913

jr_002_48ef:
    ld hl, $dcf4
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    ld c, l
    ld b, h
    ld a, [$cd99]
    call Call_002_574b
    ld a, [hl+]
    ld [$cdac], a
    ld a, [hl+]
    ld [$cdad], a
    ld a, [hl+]
    ld [$cdae], a
    ld a, [hl]
    ld [$cdaf], a

jr_002_4913:
    ld hl, $cda9
    ld de, $5a86
    ret


    ld hl, $5cb6
    ld de, $5a86
    ret


    ld hl, $5bc6
    ld de, $5a86
    ret


    ld hl, $5bd6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld hl, $5a86
    ld de, $cdb9
    ld bc, $0010
    call $3026
    call Call_002_4a0c
    ld hl, $cdaa
    ld [hl], a
    ld hl, $cdac
    ld [hl], $2e
    ld hl, $cdbc
    ld a, $05
    ld [hl+], a
    ld a, [$cf83]
    ld [hl+], a
    ld a, [$cf82]
    ld [hl+], a
    ld a, [$cf85]
    ld [hl+], a
    ld a, [$cf84]
    ld [hl], a
    ld hl, $cda9
    ld de, $cdb9
    ret


    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld a, [$d108]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $68ce
    add hl, de
    ld a, [$cf65]
    and $03
    sla a
    sla a
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [$cdac], a
    ld a, [hl+]
    ld [$cdad], a
    ld a, [hl+]
    ld [$cdae], a
    ld a, [hl]
    ld [$cdaf], a
    ld hl, $cda9
    ld de, $5a86
    ret


    ld hl, $5cd6
    ld de, $5a86
    ret


    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld a, [$d108]
    ld bc, $d123
    call Call_002_574b
    ld a, [hl+]
    ld [$cdac], a
    ld a, [hl+]
    ld [$cdad], a
    ld a, [hl+]
    ld [$cdae], a
    ld a, [hl]
    ld [$cdaf], a
    ld hl, $cda9
    ld de, $5a86
    ret


    ld hl, $5cc6
    ld de, $5a86
    ret


    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    ld a, [$d108]
    ld bc, $d123
    call Call_002_5764
    ld a, [hl+]
    ld [$cdac], a
    ld a, [hl+]
    ld [$cdad], a
    ld a, [hl+]
    ld [$cdae], a
    ld a, [hl]
    ld [$cdaf], a
    ld hl, $cda9
    ld de, $5a86
    ret


Call_002_4a0c:
    ld a, [$d841]
    cp $02
    jr c, jr_002_4a16

    ld a, $19
    ret


jr_002_4a16:
    ld a, [$d19a]
    cp $02
    jr z, jr_002_4a39

    cp $04
    jr z, jr_002_4a3c

    cp $07
    jr z, jr_002_4a3c

    cp $05
    jr z, jr_002_4a3f

    cp $06
    jr z, jr_002_4a42

    ld a, [$dcb5]
    ld e, a
    ld d, $00
    ld hl, $4a45
    add hl, de
    ld a, [hl]
    ret


jr_002_4a39:
    ld a, $00
    ret


jr_002_4a3c:
    ld a, $18
    ret


jr_002_4a3f:
    ld a, $06
    ret


jr_002_4a42:
    ld a, $03
    ret


    nop
    ld [de], a
    inc d
    jr @+$13

    dec d
    add hl, bc
    inc b
    rrca
    ld d, $0e
    db $10
    ld b, $01
    inc bc
    ld b, $0b
    ld [$1705], sp
    ld [$1307], sp
    ld [bc], a
    inc c
    ld a, [bc]
    dec c
    push de
    call Call_002_5809
    pop hl
    jp Jump_002_5809


Call_002_4a68:
    ld l, c
    ld h, b
    ld a, [hl]
    and $20
    jr z, jr_002_4a86

    ld a, [hl+]
    and $0f
    cp $0a
    jr nz, jr_002_4a86

    ld a, [hl]
    and $f0
    cp $a0
    jr nz, jr_002_4a86

    ld a, [hl]
    and $0f
    cp $0a
    jr nz, jr_002_4a86

    scf
    ret


jr_002_4a86:
    and a
    ret


    ld a, [hl]
    cp $a0
    jr c, jr_002_4aa2

    ld a, [hl+]
    and $0f
    cp $0a
    jr c, jr_002_4aa2

    ld a, [hl]
    cp $a0
    jr c, jr_002_4aa2

    ld a, [hl]
    and $0f
    cp $0a
    jr c, jr_002_4aa2

    scf
    ret


jr_002_4aa2:
    and a
    ret


    push de
    push bc
    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    pop bc
    pop de
    ld a, c
    ld [$cdac], a
    ld a, b
    ld [$cdad], a
    ld a, e
    ld [$cdae], a
    ld a, d
    ld [$cdaf], a
    ld hl, $cda9
    call Call_002_5809
    ld hl, $5a86
    call Call_002_5809
    ret


    ld hl, $5c57
    call Call_002_5610
    call Call_002_571a
    call Call_002_5699
    ret


Jump_002_4ade:
    ld hl, $cd9b
    ld a, [$cda9]
    ld e, a
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    and a
    ld e, $05
    jr z, jr_002_4af7

    dec a
    ld e, $0a
    jr z, jr_002_4af7

    ld e, $0f

jr_002_4af7:
    push de
    ld hl, $cdb3
    ld bc, $0006
    ld a, [$cda9]
    call $30fe
    pop de
    ld [hl], e
    ret


    call Call_002_4d55
    ret z

    ld hl, $4b2f
    ld de, $d000
    ld bc, $0008
    ld a, $05
    call $306b
    ld hl, $4b37
    ld de, $d040
    ld bc, $0008
    ld a, $05
    call $306b
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    rst $38
    ld a, a
    ld a, [c]
    ld a, [hl]
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    rst $38
    inc sp
    ld [$0072], sp
    nop
    call Call_002_4d55
    ret nz

    ldh a, [$e7]
    and a
    ret z

    ld hl, $5a86
    jp Jump_002_5809


    call Call_002_4d55
    jr nz, jr_002_4b5c

    ldh a, [$e7]
    and a
    ret z

    ld hl, $5c26
    jp Jump_002_5809


jr_002_4b5c:
    ld de, $d040
    ld a, $3b
    call Call_002_5625
    jp Jump_002_5630


    call Call_002_4d55
    jr nz, jr_002_4b76

    ldh a, [$e7]
    and a
    ret z

    ld hl, $5c36
    jp Jump_002_5809


jr_002_4b76:
    ld de, $d040
    ld a, $3c
    call Call_002_5625
    jp Jump_002_5630


    call Call_002_4d55
    jr nz, jr_002_4bb2

    ldh a, [$e7]
    and a
    ret z

    ld a, c
    push af
    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    pop af
    call Call_002_5775
    ld a, [hl+]
    ld [$cdac], a
    ld a, [hl+]
    ld [$cdad], a
    ld a, [hl+]
    ld [$cdae], a
    ld a, [hl]
    ld [$cdaf], a
    ld hl, $cda9
    jp Jump_002_5809


jr_002_4bb2:
    ld de, $d040
    ld a, c
    call Call_002_5775
    call Call_002_5643
    ret


    ld a, [$d233]
    call Call_002_576b
    ld a, e
    jr jr_002_4bd7

    ld a, [$d108]
    call Call_002_57ee
    ld a, e
    bit 7, a
    jr z, jr_002_4bd7

    and $7f
    inc hl
    inc hl
    inc hl
    inc hl

jr_002_4bd7:
    push hl
    ld hl, $d000
    ld de, $0008

jr_002_4bde:
    and a
    jr z, jr_002_4be5

    add hl, de
    dec a
    jr jr_002_4bde

jr_002_4be5:
    ld e, l
    ld d, h
    pop hl
    call Call_002_5643
    ret


    ldh a, [$e6]
    and a
    jr nz, jr_002_4bf7

    ld hl, $c702
    jp Jump_002_5809


jr_002_4bf7:
    ld a, [$c706]
    ld c, a
    ld a, [$c707]
    ld hl, $cdd9
    ld de, $0014

jr_002_4c04:
    and a
    jr z, jr_002_4c0b

    add hl, de
    dec a
    jr jr_002_4c04

jr_002_4c0b:
    ld b, $00
    add hl, bc
    ld bc, $0604
    ld a, [$c705]
    and $03
    call Call_002_5663
    call $323d
    ret


    call Call_002_4d55
    ret z

    ld a, e
    and a
    jr z, jr_002_4c2d

    ld a, [$d108]
    call Call_002_5775
    jr jr_002_4c33

jr_002_4c2d:
    ld a, [$d233]
    call Call_002_576b

jr_002_4c33:
    ld de, $d000
    call Call_002_5643
    call Call_002_5699
    call Call_002_56b3
    call Call_002_56a4
    ret


    ld a, [$d10a]
    and a
    jr z, jr_002_4c52

    cp $01
    jr z, jr_002_4c57

    cp $02
    jr z, jr_002_4c70

    ret


jr_002_4c52:
    ld de, $d092
    jr jr_002_4c5a

jr_002_4c57:
    ld de, $d09a

jr_002_4c5a:
    ld l, c
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $68be
    add hl, bc
    ld bc, $0004
    ld a, $05
    call $306b
    ld a, $01
    ldh [$e5], a
    ret


jr_002_4c70:
    ld e, c
    inc e
    ld hl, $cdf8
    ld bc, $0028
    ld a, [$d109]

jr_002_4c7b:
    and a
    jr z, jr_002_4c82

    add hl, bc
    dec a
    jr jr_002_4c7b

jr_002_4c82:
    ld bc, $0208
    ld a, e
    call Call_002_5663
    ret


    call Call_002_4d55
    ret z

    ld hl, $4f6a
    ld b, $00
    dec c
    add hl, bc
    add hl, bc
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, [hl+]
    ld [$d000], a
    ld [$d010], a
    ld a, [hl]
    ld [$d001], a
    ld [$d011], a
    pop af
    ldh [rSVBK], a
    call Call_002_56a4
    ld a, $01
    ret


    ld l, e
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $4d05
    add hl, de
    call Call_002_4d55
    jr nz, jr_002_4cf0

    push hl
    ld hl, $5ce6
    ld de, $cda9
    ld bc, $0010
    call $3026
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld [$cdac], a
    ld a, [hl+]
    ld [$cdad], a
    ld a, [hl+]
    ld [$cdae], a
    ld a, [hl+]
    ld [$cdaf], a
    ld hl, $cda9
    call Call_002_5809
    ld hl, $5a86
    call Call_002_5809
    ret


jr_002_4cf0:
    ld de, $d000
    ld bc, $0008
    ld a, $05
    call $306b
    call Call_002_56a4
    call Call_002_5699
    call Call_002_56b3
    ret


    db $f4
    cpl
    ld a, a
    ld [bc], a
    ld e, a
    dec h
    nop
    nop
    adc a
    ld a, [hl]
    ld e, [hl]
    inc bc
    sbc a
    ld bc, $0000
    jr c, jr_002_4d95

    ld e, [hl]
    inc bc
    ld l, b
    ld a, l
    nop
    nop
    ccf
    ld b, a
    ld e, a
    ld [de], a
    sbc h
    dec d
    nop
    nop
    ld d, e
    ld a, a
    cp a
    jr nz, jr_002_4d69

    ld a, l
    nop
    nop
    ld a, a
    ld [hl], d
    cp a
    ld [bc], a
    call z, $0002
    nop
    inc sp
    ld e, [hl]
    ld e, [hl]
    inc bc
    sbc a
    ld bc, $0000
    ld b, a
    ld a, a
    ld e, d
    ld l, a
    ld a, a
    dec l
    nop
    nop
    push af
    ld d, a
    ld e, [hl]
    inc bc
    sbc a
    ld bc, $0000
    ld b, a
    ld a, a
    rst $38
    inc bc
    and b
    ld [bc], a
    nop
    nop

Call_002_4d55:
    ldh a, [$e6]
    and a
    ret


Jump_002_4d59:
    ld a, b
    cp $ff
    jr nz, jr_002_4d61

    ld a, [$cd98]

jr_002_4d61:
    cp $fc
    jp z, Jump_002_56f3

    call Call_002_5673

jr_002_4d69:
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $4d7a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $4d79
    push de
    jp hl


    ret


    cp b
    ld c, l
    db $db
    ld c, l
    cp c
    ld c, [hl]
    db $db
    ld c, [hl]
    ld [hl], b
    ld c, a
    ld l, [hl]
    ld d, b
    ld hl, sp+$50
    ld [hl+], a
    ld d, c
    xor l
    ld d, c
    ret z

    ld d, c
    pop de
    ld d, c
    db $e4
    ld d, c
    jr z, @+$54

    ld d, c

jr_002_4d95:
    ld d, d
    ld [hl], e
    ld d, e
    and [hl]
    ld d, e
    cp d
    ld d, e
    sub l
    ld d, c
    sbc c
    ld d, h
    ret nc

    ld d, h
    db $d3
    ld d, e
    adc c
    ld d, d
    ld a, $50
    jp z, Jump_002_5e4f

    ld d, d
    ld a, [$2954]
    ld d, l
    ld d, l
    ld d, l
    ld a, b
    ld d, l
    sub c
    ld d, l
    ld b, d
    ld d, l
    ld hl, $5c67
    ld de, $d000
    ld c, $04
    call Call_002_5615
    ld hl, $5c67
    ld de, $d020
    ld c, $04
    call Call_002_5615
    ld hl, $5c67
    ld de, $d040
    ld c, $02
    call Call_002_5615
    jr jr_002_4e23

    ld de, $d000
    call Call_002_5729
    push hl
    call Call_002_5643
    call Call_002_573a
    push hl
    call Call_002_5643
    ld a, [$cd9a]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $68be
    add hl, bc
    call Call_002_5643
    ld a, [$cd99]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $68be
    add hl, bc
    call Call_002_5643
    ld hl, $68ca
    call Call_002_5643
    ld de, $d040
    pop hl
    call Call_002_5643
    pop hl
    call Call_002_5643
    ld a, $01
    ld [$cd98], a
    call Call_002_56a4

jr_002_4e23:
    call Call_002_4e85
    ld hl, $cdd9
    ld bc, $0168
    ld a, $02
    call $3041
    ld hl, $ce29
    ld bc, $080a
    ld a, $00
    call Call_002_5663
    ld hl, $cde3
    ld bc, $070a
    ld a, $01
    call Call_002_5663
    ld hl, $cdd9
    ld bc, $040a
    ld a, $02
    call Call_002_5663
    ld hl, $ce6f
    ld bc, $050a
    ld a, $03
    call Call_002_5663
    ld hl, $cebf
    ld bc, $0109
    ld a, $04
    call Call_002_5663
    ld hl, $cec9
    ld bc, $0078
    ld a, $07
    call $3041
    ld hl, $579c
    ld de, $d050
    ld bc, $0030
    ld a, $05
    call $306b
    call Call_002_56b3
    ret


Call_002_4e85:
    ld a, $40
    ld hl, $4dc0
    rst $08
    ld hl, $7311
    jr nc, jr_002_4e93

    ld hl, $7309

jr_002_4e93:
    ld de, $d038
    ld bc, $0008
    ld a, $05
    call $306b
    ret


Call_002_4e9f:
    ld a, $40
    ld hl, $4dc0
    rst $08
    ld hl, $7311
    jr nc, jr_002_4ead

    ld hl, $7309

jr_002_4ead:
    ld de, $d000
    ld bc, $0008
    ld a, $05
    call $306b
    ret


    ld a, [$d472]
    bit 0, a
    jr z, jr_002_4ec5

    ld hl, $7759
    jr jr_002_4ec8

jr_002_4ec5:
    ld hl, $7729

jr_002_4ec8:
    ld de, $d000
    ld bc, $0030
    ld a, $05
    call $306b
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld de, $d000
    ld a, [$cda1]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $68be
    add hl, bc
    call Call_002_5643
    ld a, [$d108]
    ld bc, $d123
    call Call_002_574b
    call Call_002_5643
    ld hl, $68ca
    call Call_002_5643
    ld hl, $4f52
    ld de, $d018
    ld bc, $0018
    ld a, $05
    call $306b
    call Call_002_5699
    ld hl, $cdd9
    ld bc, $0814
    ld a, $01
    call Call_002_5663
    ld hl, $cf23
    ld bc, $000a
    ld a, $02
    call $3041
    ld hl, $ce4a
    ld bc, $0202
    ld a, $03
    call Call_002_5663
    ld hl, $ce4c
    ld bc, $0202
    ld a, $04
    call Call_002_5663
    ld hl, $ce4e
    ld bc, $0202
    ld a, $05
    call Call_002_5663
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    rst $38
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, l
    nop
    nop
    rst $38
    ld a, a
    push af
    dec sp
    pop af
    inc bc
    nop
    nop
    rst $38
    ld a, a
    pop af
    ld a, a
    pop af
    ld a, a
    nop
    nop
    ld a, a
    ld a, [hl]
    push af
    dec sp
    pop af
    ld a, a
    ld de, $d000
    ld a, $1d
    call Call_002_5625
    call Call_002_5630
    ld a, [$d108]
    cp $ff
    jr nz, jr_002_4f8a

    ld hl, $4fba
    call Call_002_5630
    jr jr_002_4f90

jr_002_4f8a:
    call Call_002_5775
    call Call_002_5643

jr_002_4f90:
    call Call_002_5699
    ld hl, $cdee
    ld bc, $0707
    ld a, $01
    call Call_002_5663
    call Call_002_571a
    ld hl, $4fc2
    ld de, $d078
    ld bc, $0008
    ld a, $05
    call $306b
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    db $eb
    ld [bc], a
    daa
    ld [bc], a
    ld b, $0e
    add l
    dec b
    nop
    nop
    db $eb
    ld [bc], a
    daa
    ld [bc], a
    nop
    nop
    ld de, $d000
    ld a, $1d
    call Call_002_5625
    call Call_002_5630
    ld a, [$d108]
    cp $ff
    jr nz, jr_002_4fe4

    ld hl, $5036
    call Call_002_5630
    jr jr_002_4fed

jr_002_4fe4:
    ld bc, $d123
    call Call_002_574b
    call Call_002_5643

jr_002_4fed:
    call Call_002_5699
    ld hl, $ce2a
    ld bc, $0707
    ld a, $01
    call Call_002_5663
    call Call_002_571a
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld hl, $5036
    call Call_002_5630
    jr jr_002_501a

    ld bc, $d123
    call Call_002_574b
    call Call_002_5643

jr_002_501a:
    call Call_002_5699
    ld hl, $cdee
    ld bc, $0707
    ld a, $01
    call Call_002_5663
    call Call_002_571a
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    rst $38
    ld bc, $0197
    rst $28
    nop
    nop
    nop
    ld de, $d000
    ld a, $1d
    call Call_002_5625
    call Call_002_5630
    ld a, [$d108]
    call Call_002_5775
    call Call_002_5643
    call Call_002_5699
    ld hl, $ce44
    ld bc, $0707
    ld a, $01
    call Call_002_5663
    call Call_002_571a
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld hl, $77a9
    ld de, $d000
    ld bc, $0080
    ld a, $05
    call $306b
    call Call_002_5699
    ld hl, $ce01
    ld bc, $0a03
    ld a, $02
    call Call_002_5663
    ld hl, $ce12
    ld bc, $0a03
    ld a, $02
    call Call_002_5663
    ld hl, $ce29
    ld bc, $0603
    ld a, $03
    call Call_002_5663
    ld hl, $ce3a
    ld bc, $0603
    ld a, $03
    call Call_002_5663
    ld hl, $ce51
    ld bc, $0203
    ld a, $04
    call Call_002_5663
    ld hl, $ce62
    ld bc, $0203
    ld a, $04
    call Call_002_5663
    ld hl, $ce05
    ld bc, $020c
    ld a, $01
    call Call_002_5663
    ld hl, $ce04
    ld bc, $0a01
    ld a, $01
    call Call_002_5663
    ld hl, $ce11
    ld bc, $0a01
    ld a, $01
    call Call_002_5663
    ld hl, $cec9
    ld bc, $0078
    ld a, $07
    call $3041
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld hl, $5ca7
    call Call_002_5610
    call Call_002_5699
    ld de, $d040
    ld a, $3c
    call Call_002_5625
    call Call_002_5630
    ld hl, $ce51
    ld bc, $0c14
    ld a, $01
    call Call_002_5663
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld b, $00
    ld hl, $512d
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc sp
    ld d, c
    ld h, [hl]
    ld d, c
    add b
    ld d, c
    ld hl, $514e
    ld de, $d000
    call Call_002_5630
    ld hl, $5156
    ld de, $d040
    ld bc, $0010
    ld a, $05
    call $306b
    call Call_002_5699
    ret


    di
    ld c, a
    ld a, [c]
    ld a, [hl]
    xor e
    ld [hl], d
    inc b
    ld h, d
    cp l
    ld [hl], a
    ld [hl], h
    ld d, d
    db $d3
    db $10
    add e
    jr @+$01

    ld a, a
    rst $38
    ld a, a
    rra
    nop
    add e
    jr @+$13

    nop
    ret nc

    ld a, $38
    call Call_002_5625
    call Call_002_5630
    ld de, $d040
    ld a, $39
    call Call_002_5625
    call Call_002_5630
    call Call_002_5699
    ret


    ld hl, $5c37
    call Call_002_5610
    ld de, $d040
    ld a, $3a
    call Call_002_5625
    call Call_002_5630
    call Call_002_5699
    ret


    ld hl, $7789
    ld de, $d000
    ld bc, $0028
    ld a, $05
    call $306b
    call Call_002_56a4
    call Call_002_5699
    call Call_002_56b3
    ret


    ld hl, $7641
    ld de, $d000
    ld bc, $0080
    ld a, $05
    call $306b
    ld hl, $5cb7
    call Call_002_5610
    call Call_002_5699
    call Call_002_56b3
    ret


Call_002_51c8:
    call Call_002_71de
    ld a, $09
    ld [$cd98], a
    ret


    ld hl, $5c57
    call Call_002_5610
    call Call_002_4e9f
    call Call_002_4e85
    call Call_002_571a
    call Call_002_56b3
    ret


    ld de, $d000
    ld a, c
    and a
    jr z, jr_002_51f5

    ld a, $1a
    call Call_002_5625
    call Call_002_5630
    jr jr_002_521a

jr_002_51f5:
    ld hl, $dcf4
    ld bc, $0030
    ld a, [$d109]
    call $30fe
    ld c, l
    ld b, h
    ld a, [$cd99]
    call Call_002_574b
    call Call_002_5643
    ld hl, $579c
    ld de, $d050
    ld bc, $0030
    ld a, $05
    call $306b

jr_002_521a:
    call Call_002_5699
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld hl, $76f1
    ld de, $d000
    ld bc, $0028
    ld a, $05
    call $306b
    ld hl, $7719
    ld de, $d040
    ld bc, $0010
    ld a, $05
    call $306b
    ld a, $08
    ld [$cd98], a
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld hl, $5cb7
    call Call_002_5610
    call Call_002_5699
    call Call_002_56b3
    ret


    ld hl, $5bc7
    call Call_002_5610
    ld de, $d040
    ld a, $4c
    call Call_002_5625
    call Call_002_5630
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d040
    ld a, $1f
    ld [hl+], a
    ld a, $00
    ld [hl], a
    pop af
    ldh [rSVBK], a
    call Call_002_5699
    call Call_002_56b3
    ret


    ld de, $d000
    xor a
    call Call_002_576b
    call Call_002_5643
    ld a, $01
    call Call_002_576b
    call Call_002_5643
    ld a, $03
    call Call_002_576b
    call Call_002_5643
    ld a, $02
    call Call_002_576b
    call Call_002_5643
    ld a, $04
    call Call_002_576b
    call Call_002_5643
    ld a, $07
    call Call_002_576b
    call Call_002_5643
    ld a, $06
    call Call_002_576b
    call Call_002_5643
    ld a, $05
    call Call_002_576b
    call Call_002_5643
    ld a, $24
    call Call_002_5625
    call Call_002_5630
    ld hl, $cdd9
    ld bc, $0168
    ld a, [$d472]
    and a
    ld a, $01
    jr z, jr_002_52e3

    ld a, $00

jr_002_52e3:
    call $3041
    ld hl, $cdfb
    ld bc, $0705
    ld a, [$d472]
    and a
    ld a, $00
    jr z, jr_002_52f6

    ld a, $01

jr_002_52f6:
    call Call_002_5663
    ld hl, $cdff
    ld [hl], $01
    ld hl, $ceb7
    ld bc, $0204
    ld a, $01
    call Call_002_5663
    ld hl, $cebb
    ld bc, $0204
    ld a, $02
    call Call_002_5663
    ld hl, $cebf
    ld bc, $0204
    ld a, $03
    call Call_002_5663
    ld hl, $cec3
    ld bc, $0204
    ld a, $04
    call Call_002_5663
    ld hl, $cef3
    ld bc, $0204
    ld a, $05
    call Call_002_5663
    ld hl, $cef7
    ld bc, $0204
    ld a, $06
    call Call_002_5663
    ld hl, $cefb
    ld bc, $0204
    ld a, $07
    call Call_002_5663
    ld a, [$d472]
    and a
    push af
    jr z, jr_002_535d

    ld hl, $ceff
    ld bc, $0204
    ld a, $01
    call Call_002_5663

jr_002_535d:
    pop af
    ld c, $00
    jr nz, jr_002_5363

    inc c

jr_002_5363:
    ld a, c
    ld hl, $cdff
    ld [hl], a
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld de, $d000
    ld a, $10
    call Call_002_5625
    call Call_002_5630
    ld a, [$cd99]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $68be
    add hl, bc
    call Call_002_5643
    call Call_002_5699
    ld hl, $cdf8
    ld bc, $0209
    ld a, $01
    call Call_002_5663
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld hl, $5c47
    call Call_002_5610
    call Call_002_5699
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld de, $d000
    ld a, $1d
    call Call_002_5625
    call Call_002_5630
    call Call_002_5699
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld a, [$d230]
    cp $03
    jr z, jr_002_53e6

    ld a, [$d472]
    bit 0, a
    jr z, jr_002_53e6

    ld hl, $5469
    jr jr_002_53e9

jr_002_53e6:
    ld hl, $5439

jr_002_53e9:
    ld de, $d000
    ld bc, $0040
    ld a, $05
    call $306b
    call Call_002_5699
    ld hl, $cdd9
    ld bc, $010a
    ld a, $01
    call Call_002_5663
    ld hl, $cde3
    ld bc, $010a
    ld a, $02
    call Call_002_5663
    ld hl, $ce08
    ld bc, $0901
    ld a, $03
    call Call_002_5663
    ld hl, $ce65
    ld bc, $0305
    ld a, $04
    call Call_002_5663
    ld hl, $ce15
    ld bc, $0305
    ld a, $05
    call Call_002_5663
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    rst $38
    ld a, a
    rst $28
    ld a, l
    nop
    ld a, h
    nop
    nop
    rst $38
    ld a, a
    rst $28
    ld a, l
    nop
    ld a, h
    nop
    nop
    ld a, a
    ld a, l
    rst $28
    ld a, l
    nop
    ld a, h
    nop
    nop
    rst $38
    ld a, a
    rst $28
    ld a, l
    nop
    ld a, h
    rra
    nop
    rst $38
    ld a, a
    rst $28
    ld a, l
    rra
    nop
    nop
    nop
    rst $38
    ld a, a
    ld h, a
    ld e, $67
    ld e, $00
    nop
    rst $38
    ld a, a
    rst $18
    ld a, l
    rst $38
    ld a, h
    nop
    nop
    rst $38
    ld a, a
    rst $18
    ld a, l
    rst $38
    ld a, h
    nop
    nop
    rst $28
    ld a, l
    rst $18
    ld a, l
    rst $38
    ld a, h
    nop
    nop
    rst $38
    ld a, a
    rst $18
    ld a, l
    rst $38
    ld a, h
    rra
    nop
    rst $38
    ld a, a
    rst $18
    ld a, l
    rra
    nop
    nop
    nop
    rst $38
    ld a, a
    ld h, a
    ld e, $67
    ld e, $00
    nop
    call Call_002_51c8
    ld de, $0014
    ld hl, $cdd9
    ld a, [$cf82]

jr_002_54a5:
    and a
    jr z, jr_002_54ac

    dec a
    add hl, de
    jr jr_002_54a5

jr_002_54ac:
    ld a, [$cf83]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$cf82]
    ld b, a
    ld a, [$cf84]
    inc a
    sub b
    ld b, a
    ld a, [$cf83]
    ld c, a
    ld a, [$cf85]
    sub c
    inc a
    ld c, a
    ld a, $00
    call Call_002_5663
    call Call_002_56b3
    ret


    ld hl, $5ba7
    call Call_002_5610
    call Call_002_5699
    ld hl, $ce29
    ld bc, $0a14
    ld a, $02
    call Call_002_5663
    ld hl, $ce51
    ld bc, $0614
    ld a, $01
    call Call_002_5663
    call Call_002_56b3
    call Call_002_56a4
    ld a, $01
    ldh [$e5], a
    ret


    ld de, $d000
    ld a, $4e
    call Call_002_5625
    call Call_002_5630
    ld hl, $5521
    ld de, $d040
    call Call_002_5630
    ld hl, $5521
    ld de, $d048
    call Call_002_5630
    call Call_002_5699
    call Call_002_56b3
    call Call_002_56a4
    ret


    rst $38
    ld a, a
    ld l, l
    ld bc, $7197
    nop
    nop
    ld de, $d000
    ld a, [$d108]
    ld bc, $d123
    call Call_002_574b
    call Call_002_5643
    call Call_002_5699
    call Call_002_56b3
    call Call_002_56a4
    ret


    ld de, $d000
    ld a, [$d108]
    call Call_002_5775
    call Call_002_5643
    call Call_002_5699
    call Call_002_56b3
    ret


    ld hl, $5cc7
    call Call_002_5610
    ld hl, $7681
    ld de, $d040
    ld bc, $0008
    ld a, $05
    call $306b
    ld de, $d078
    ld a, $1c
    call Call_002_5625
    call Call_002_5630
    call Call_002_5699
    ret


    ld de, $d000
    ld a, [$d108]
    ld bc, $d123
    call Call_002_5764
    call Call_002_5643
    call Call_002_5699
    call Call_002_56b3
    call Call_002_56a4
    ret


    ld hl, $55e0
    ld de, $d000
    ld bc, $0010
    ld a, $05
    call $306b
    call Call_002_56a4
    call Call_002_5699
    ld hl, $ce68
    ld bc, $080e
    ld a, $01
    call Call_002_5663
    ld hl, $ce3e
    ld bc, $0112
    ld a, $01
    call Call_002_5663
    ld hl, $cf1a
    ld bc, $0112
    ld a, $01
    call Call_002_5663
    ld hl, $cdd9
    ld bc, $1102
    ld a, $01
    call Call_002_5663
    ld hl, $ce4f
    ld bc, $0c01
    ld a, $01
    call Call_002_5663
    call Call_002_56b3
    ret


    rst $38
    ld a, a
    ldh a, [$3b]
    push bc
    ld d, l
    and l
    add hl, hl
    rst $38
    ld a, a
    xor e
    ld h, [hl]
    push bc
    ld d, l
    ld h, b
    ld c, h
    ld hl, $5608
    ld de, $d000
    ld bc, $0008
    ld a, $05
    call $306b
    call Call_002_56a4
    call Call_002_5699
    call Call_002_56b3
    ret


    rst $38
    ld a, a
    jp hl


    ld a, a
    adc d
    ld a, l
    ld h, b
    ld c, h

Call_002_5610:
    ld de, $d000
    ld c, $04

Call_002_5615:
jr_002_5615:
    push bc
    ld a, [hl+]
    push hl
    call Call_002_5625
    call Call_002_5630
    pop hl
    inc hl
    pop bc
    dec c
    jr nz, jr_002_5615

    ret


Call_002_5625:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $5df6
    add hl, bc
    ret


Call_002_5630:
Jump_002_5630:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld c, $08

jr_002_5639:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_5639

    pop af
    ldh [rSVBK], a
    ret


Call_002_5643:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, $ff
    ld [de], a
    inc de
    ld a, $7f
    ld [de], a
    inc de
    ld c, $04

jr_002_5654:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_5654

    xor a
    ld [de], a
    inc de
    ld [de], a
    inc de
    pop af
    ldh [rSVBK], a
    ret


Call_002_5663:
jr_002_5663:
    push bc
    push hl

jr_002_5665:
    ld [hl+], a
    dec c
    jr nz, jr_002_5665

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_002_5663

    ret


Call_002_5673:
    push af
    push bc
    push de
    push hl
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $08

jr_002_5683:
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_002_5683

    pop af
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_002_5699:
    ld hl, $cdd9
    ld bc, $0168
    xor a
    call $3041
    ret


Call_002_56a4:
    ld hl, $d000
    ld de, $d080
    ld bc, $0080
    ld a, $05
    call $306b
    ret


Call_002_56b3:
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_002_56d0

    ldh a, [$d4]
    push af
    ld a, $02
    ldh [$d4], a
    call $045a
    call $045a
    call $045a
    call $045a
    pop af
    ldh [$d4], a
    ret


jr_002_56d0:
    ld hl, $cdd9
    ld de, $9800
    ld b, $12
    ld a, $01
    ldh [rVBK], a

jr_002_56dc:
    ld c, $14

jr_002_56de:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_002_56de

    ld a, $0c
    add e
    jr nc, jr_002_56ea

    inc d

jr_002_56ea:
    ld e, a
    dec b
    jr nz, jr_002_56dc

    ld a, $00
    ldh [rVBK], a
    ret


Jump_002_56f3:
    ld hl, $cd9b
    ld a, [$cda9]
    ld e, a
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    ld a, [de]
    inc a
    ld e, a
    ld hl, $ce0c
    ld bc, $0028
    ld a, [$cda9]

jr_002_570b:
    and a
    jr z, jr_002_5712

    add hl, bc
    dec a
    jr jr_002_570b

jr_002_5712:
    ld bc, $0208
    ld a, e
    call Call_002_5663
    ret


Call_002_571a:
    ld hl, $7681
    ld de, $d040
    ld bc, $0010
    ld a, $05
    call $306b
    ret


Call_002_5729:
    push de
    ld a, $0f
    ld hl, $5a85
    rst $08
    ld c, l
    ld b, h
    ld a, [$d205]
    call Call_002_574b
    pop de
    ret


Call_002_573a:
    push de
    ld a, $0f
    ld hl, $5a97
    rst $08
    ld c, l
    ld b, h
    ld a, [$d204]
    call Call_002_5764
    pop de
    ret


Call_002_574b:
    and a
    jp nz, Jump_002_57f9

    ld a, [$d45b]
    bit 2, a
    jr nz, jr_002_5760

    ld a, [$d472]
    and a
    jr z, jr_002_5760

    ld hl, $70d2
    ret


jr_002_5760:
    ld hl, $70ce
    ret


Call_002_5764:
    and a
    jp nz, Jump_002_57f9

    ld a, [$d233]

Call_002_576b:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld bc, $70ce
    add hl, bc
    ret


Call_002_5775:
    call Call_002_57ee
    ret


    ret


    call Call_002_4d55
    ret z

    ld hl, $579c
    ld a, $90
    ldh [rOCPS], a
    ld c, $30

jr_002_5787:
    ld a, [hl+]
    ldh [rOCPD], a
    dec c
    jr nz, jr_002_5787

    ld hl, $579c
    ld de, $d050
    ld bc, $0010
    ld a, $05
    call $306b
    ret


    rst $38
    ld a, a
    add hl, sp
    ld h, a
    xor l
    dec [hl]
    nop
    nop
    rst $38
    ld a, a
    rst $38
    rra
    rra
    ld b, $00
    nop
    rst $38
    ld a, a
    ld a, a
    ld h, d
    ld e, [hl]
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    inc l
    rlca
    push bc
    ld bc, $0000
    rst $38
    ld a, a
    adc b
    ld a, l
    add c
    ld a, h
    nop
    nop
    rst $38
    ld a, a
    ld e, b
    ld e, $f4
    dec c
    nop
    nop
    call Call_002_4d55
    ret z

    ld a, $90
    ldh [rOCPS], a
    ld a, $1c
    call Call_002_5625
    call Call_002_57e5
    ld a, $21
    call Call_002_5625
    call Call_002_57e5
    ret


Call_002_57e5:
    ld c, $08

jr_002_57e7:
    ld a, [hl+]
    ldh [rOCPD], a
    dec c
    jr nz, jr_002_57e7

    ret


Call_002_57ee:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $68ce
    add hl, bc
    ret


Jump_002_57f9:
    push bc
    call Call_002_57ee
    pop bc
    push hl
    call Call_002_4a68
    pop hl
    ret nc

    inc hl
    inc hl
    inc hl
    inc hl
    ret


Call_002_5809:
Jump_002_5809:
    ld a, [$cfbe]
    push af
    set 7, a
    ld [$cfbe], a
    call Call_002_581a
    pop af
    ld [$cfbe], a
    ret


Call_002_581a:
    ld a, [hl]
    and $07
    ret z

    ld b, a

jr_002_581f:
    push bc
    xor a
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    ld b, $10

jr_002_5829:
    ld e, $08
    ld a, [hl+]
    ld d, a

jr_002_582d:
    bit 0, d
    ld a, $10
    jr nz, jr_002_5835

    ld a, $20

jr_002_5835:
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    rr d
    dec e
    jr nz, jr_002_582d

    dec b
    jr nz, jr_002_5829

    ld a, $20
    ldh [rP1], a
    ld a, $30
    ldh [rP1], a
    call Call_002_5a7a
    pop bc
    dec b
    jr nz, jr_002_581f

    ret


    call Call_002_4d55
    ret nz

    di
    ld a, [$cfbe]
    push af
    set 7, a
    ld [$cfbe], a
    xor a
    ldh [rP1], a
    ldh [$e7], a
    call Call_002_594a
    jr nc, jr_002_588a

    ld a, $01
    ldh [$e7], a
    call Call_002_58eb
    call Call_002_59b4
    call Call_002_5a7a
    call Call_002_593f
    call Call_002_592c
    call Call_002_5a7a
    call Call_002_593f
    ld hl, $5d66
    call Call_002_581a

jr_002_588a:
    pop af
    ld [$cfbe], a
    ei
    ret


    call Call_002_4d55
    ret z

    ld a, $01
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $2000
    xor a
    call $3041
    ld a, $00
    ldh [rVBK], a
    ld a, $80
    ldh [rBCPS], a
    ld c, $20

jr_002_58ac:
    ld a, $ff
    ldh [rBCPD], a
    ld a, $7f
    ldh [rBCPD], a
    dec c
    jr nz, jr_002_58ac

    ld a, $80
    ldh [rOCPS], a
    ld c, $20

jr_002_58bd:
    ld a, $ff
    ldh [rOCPD], a
    ld a, $7f
    ldh [rOCPD], a
    dec c
    jr nz, jr_002_58bd

    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d000
    call Call_002_58df
    ld hl, $d080
    call Call_002_58df
    pop af
    ldh [rSVBK], a
    ret


Call_002_58df:
    ld c, $40

jr_002_58e1:
    ld a, $ff
    ld [hl+], a
    ld a, $7f
    ld [hl+], a
    dec c
    jr nz, jr_002_58e1

    ret


Call_002_58eb:
    ld hl, $58ff
    ld c, $09

jr_002_58f0:
    push bc
    ld a, [hl+]
    push hl
    ld h, [hl]
    ld l, a
    call Call_002_581a
    pop hl
    inc hl
    pop bc
    dec c
    jr nz, jr_002_58f0

    ret


    ld d, [hl]
    ld e, l
    db $76
    ld e, l
    add [hl]
    ld e, l
    sub [hl]
    ld e, l
    and [hl]
    ld e, l
    or [hl]
    ld e, l
    add $5d
    sub $5d
    and $5d
    di
    xor a
    ldh [rP1], a
    ld hl, $5d56
    call Call_002_581a
    call Call_002_592c
    call Call_002_5a7a
    call Call_002_593f
    ld hl, $5d66
    call Call_002_581a
    ei
    ret


Call_002_592c:
    call Call_002_5938
    push de
    call Call_002_5a24
    pop hl
    call Call_002_59d8
    ret


Call_002_5938:
    ld hl, $651e
    ld de, $606e
    ret


Call_002_593f:
    ld hl, $8000
    ld bc, $2000
    xor a
    call $3041
    ret


Call_002_594a:
    ld hl, $5d26
    call Call_002_581a
    call Call_002_5a7a
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_002_59a6

    ld a, $20
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_002_5a7a
    call Call_002_5a7a
    ld a, $30
    ldh [rP1], a
    call Call_002_5a7a
    call Call_002_5a7a
    ld a, $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_002_5a7a
    call Call_002_5a7a
    ld a, $30
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    call Call_002_5a7a
    call Call_002_5a7a
    ldh a, [rP1]
    and $03
    cp $03
    jr nz, jr_002_59a6

    call Call_002_59ab
    and a
    ret


jr_002_59a6:
    call Call_002_59ab
    scf
    ret


Call_002_59ab:
    ld hl, $5d16
    call Call_002_581a
    jp Jump_002_5a7a


Call_002_59b4:
    call $0568
    ld a, $e4
    ldh [rBGP], a
    ld hl, $5df6
    ld de, $8800
    ld bc, $1000
    call Call_002_5a52
    call Call_002_5a64
    ld a, $e3
    ldh [rLCDC], a
    ld hl, $5d06
    call Call_002_581a
    xor a
    ldh [rBGP], a
    ret


Call_002_59d8:
    call $0568
    ld a, $e4
    ldh [rBGP], a
    ld de, $8800
    ld bc, $0140
    call Call_002_5a52
    ld b, $12

jr_002_59ea:
    push bc
    ld bc, $000c
    call Call_002_5a52
    ld bc, $0028
    call Call_002_5a5b
    ld bc, $000c
    call Call_002_5a52
    pop bc
    dec b
    jr nz, jr_002_59ea

    ld bc, $0140
    call Call_002_5a52
    ld bc, $0100
    call Call_002_5a5b
    ld bc, $0080
    call Call_002_5a52
    call Call_002_5a64
    ld a, $e3
    ldh [rLCDC], a
    ld hl, $5d46
    call Call_002_581a
    xor a
    ldh [rBGP], a
    ret


Call_002_5a24:
    call $0568
    ld a, $e4
    ldh [rBGP], a
    ld de, $8800
    ld b, $80

jr_002_5a30:
    push bc
    ld bc, $0010
    call Call_002_5a52
    ld bc, $0010
    call Call_002_5a5b
    pop bc
    dec b
    jr nz, jr_002_5a30

    call Call_002_5a64
    ld a, $e3
    ldh [rLCDC], a
    ld hl, $5d36
    call Call_002_581a
    xor a
    ldh [rBGP], a
    ret


Call_002_5a52:
jr_002_5a52:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_002_5a52

    ret


Call_002_5a5b:
jr_002_5a5b:
    xor a
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_002_5a5b

    ret


Call_002_5a64:
    ld hl, $9800
    ld de, $000c
    ld a, $80
    ld c, $0d

jr_002_5a6e:
    ld b, $14

jr_002_5a70:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_002_5a70

    add hl, de
    dec c
    jr nz, jr_002_5a6e

    ret


Call_002_5a7a:
Jump_002_5a7a:
    ld de, $1b58

jr_002_5a7d:
    nop
    nop
    nop
    dec de
    ld a, d
    or e
    jr nz, jr_002_5a7d

    ret


    ld hl, $0301
    nop
    nop
    nop
    inc de
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0701
    dec b
    nop
    ld a, [bc]
    inc de
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    rlca
    ld a, [bc]
    nop
    inc c
    inc de
    ld de, $0503
    ld bc, $0a00
    inc bc
    inc bc
    nop
    ld a, [bc]
    ld [$0a13], sp
    inc bc
    ld a, [bc]
    nop
    inc b
    ld [$030b], sp
    rrca
    dec bc
    nop
    inc de
    rlca
    ld hl, $0701
    dec b
    nop
    ld bc, $0707
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0701
    dec b
    dec bc
    ld bc, $0213
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0701
    dec b
    ld bc, $0801
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0701
    dec b
    rlca
    dec b
    dec c
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    inc bc
    dec b
    nop
    nop
    inc de
    dec bc
    inc bc
    ld a, [bc]
    nop
    inc b
    inc de
    add hl, bc
    ld [bc], a
    rrca
    nop
    ld b, $13
    rlca
    inc bc
    nop
    inc b
    inc b
    rrca
    add hl, bc
    inc bc
    nop
    nop
    inc c
    inc de
    ld de, $0723
    rlca
    stop
    nop
    ld [bc], a
    inc c
    ld [bc], a
    nop
    inc c
    nop
    ld [de], a
    ld bc, $0002
    inc c
    ld [bc], a
    ld [de], a
    inc bc
    ld [bc], a
    nop
    inc c
    inc b
    ld [de], a
    dec b
    ld [bc], a
    nop
    inc c
    ld b, $12
    rlca
    ld [bc], a
    nop
    inc c
    ld [$0912], sp
    ld [bc], a
    nop
    inc c
    ld a, [bc]
    ld [de], a
    dec bc
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc bc
    rlca
    jr nz, jr_002_5b5b

jr_002_5b5b:
    nop
    inc de
    inc b
    inc bc
    rrca
    nop
    ld b, $13
    ld de, $0503
    rrca
    ld bc, $0412
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0701
    stop
    nop
    inc de
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0702
    ld a, [bc]
    nop
    inc b
    inc de
    dec c
    inc bc
    dec b
    nop
    ld b, $13
    dec bc
    nop
    nop
    ld d, c
    ld c, b
    nop
    ld c, c
    nop
    ld c, d
    nop
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    dec hl
    nop
    inc h
    nop
    jr nz, jr_002_5bad

jr_002_5bad:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld b, c
    nop
    ld b, d
    nop
    ld b, e
    nop
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    jr c, jr_002_5c09

jr_002_5c09:
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld l, $00
    cpl
    nop
    jr nc, jr_002_5c5d

jr_002_5c5d:
    ld sp, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    dec a
    nop
    ld a, $00
    ccf
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc sp
    nop
    inc [hl]
    nop
    dec de
    nop
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, c
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $7fff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc c
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
    sbc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp c
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
    cp c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld e, l
    ld [$0b00], sp
    adc h
    ret nc

    db $f4
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld d, d
    ld [$0b00], sp
    xor c
    rst $20
    sbc a
    ld bc, $7ec0
    add sp, -$18
    add sp, -$18
    ldh [$79], a
    ld b, a
    ld [$0b00], sp
    call nz, $16d0
    and l
    set 1, c
    dec b
    ret nc

    db $10
    and d
    jr z, jr_002_5e20

    inc a
    ld [$0b00], sp
    ldh a, [rNR12]
    and l
    ret


    ret


    ret z

    ret nc

    inc e
    and l
    jp z, Jump_002_79c9

    ld sp, $0008
    dec bc
    inc c
    and l
    jp z, Jump_002_7ec9

    ret nc

    ld b, $a5
    set 1, c
    ld a, [hl]
    ld a, c
    ld h, $08
    nop
    dec bc
    add hl, sp
    call $0c48
    ret nc

    inc [hl]
    and l
    ret


    ret


    add b
    ret nc

    ld a, c
    dec de
    ld [$0b00], sp
    ld [$eaea], a
    ld [$a9ea], a
    ld bc, $4fcd
    inc c
    ret nc

    ld a, c
    db $10
    ld [$0b00], sp
    ld c, h
    jr nz, @+$0a

    ld [$eaea], a
    ld [$60ea], a
    ld_long $ffea, a
    ld a, a
    ld [hl], $4f
    or b
    ld a, d
    nop
    nop
    rst $38
    ld a, a
    sbc e
    ld a, a
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    sbc b
    ld c, a
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    jr jr_002_5e75

    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    push af
    ld a, [hl]
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a

jr_002_5e20:
    cp b
    ld l, [hl]
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    rra
    ld b, e
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    reti


    ld l, e
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ccf
    ld a, a
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    sbc a
    ld c, [hl]
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld e, a
    ld c, a
    adc a
    ld a, [hl]
    nop
    nop
    rst $38

Jump_002_5e4f:
    ld a, a
    sbc e
    ld l, a
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ret c

    ld e, a
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    dec e
    ld [hl], a
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld a, [$8f76]
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld sp, hl
    ld d, d
    adc a
    ld a, [hl]
    nop

jr_002_5e75:
    nop
    rst $38
    ld a, a
    ld e, l
    ld c, e
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    cp a
    ld c, d
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld a, [hl-]
    ld a, a
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    or [hl]
    ld a, [hl]
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld [hl], $57
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    or l
    ld e, d
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    sbc a
    ld d, d
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld e, d
    ld l, e
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    push de
    dec h
    adc a
    ld d, d
    nop
    nop
    rst $38
    ld a, a
    adc h
    ld e, e
    adc a
    ld d, d
    nop
    nop
    rst $38
    ld a, a
    rst $20
    inc e
    ld h, d
    inc c
    nop
    nop
    rst $38
    ld a, a
    sbc $46
    ret nc

    ld c, l
    nop
    nop
    rst $38
    ld a, a
    sub d
    ld l, [hl]
    db $eb
    ld e, l
    nop
    nop
    rst $38
    ld a, a
    sbc a
    ld a, [hl+]
    ld e, d
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    dec [hl]
    ld [hl], a
    ld l, [hl]
    ld h, [hl]
    nop
    nop
    rst $38
    ld a, a
    db $db
    ld h, d
    push af
    ld e, l
    nop
    nop
    rst $38
    ld a, a
    sbc h
    ld a, $d5
    dec h
    nop
    nop
    rst $38
    ld a, a
    ld d, h
    ld b, e
    adc c
    ld l, $00
    nop
    rst $38
    ld a, a
    sbc $62
    db $fc
    ld d, l
    nop
    nop
    rst $38
    ld a, a
    sbc a
    dec sp
    sbc d
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a
    cp d
    ld e, d
    rst $28
    ld c, c
    nop
    nop
    rst $38
    ld a, a
    ld [hl], a
    ld [hl], $8e
    ld b, l
    nop
    nop
    rst $38
    ld a, a
    ld d, b
    ld d, [hl]
    adc d
    ld c, c
    nop
    nop
    rst $38
    ld a, a
    or $41
    ld d, c
    inc d
    nop
    nop
    rst $38
    ld a, a
    adc a
    ld d, d
    dec b
    ld b, d
    nop
    nop
    rst $38
    ld a, a
    rst $30
    ld c, l
    adc [hl]
    jr nc, jr_002_5f45

jr_002_5f45:
    nop
    rst $38
    ld a, a
    inc [hl]
    ld c, d
    or d
    dec l
    nop
    nop
    rst $38
    ld a, a
    or a
    ld b, d
    adc h
    add hl, hl
    nop
    nop
    rst $38
    ld a, a
    dec [hl]
    ld [hl], a
    sbc $62
    nop
    nop
    rst $38
    ld a, a
    ld a, [$dd42]
    dec h
    nop
    nop
    rst $38
    ld a, a
    ld d, d
    ld c, d
    ld c, d
    add hl, hl
    nop
    nop
    rst $38
    ld a, a
    ld e, [hl]
    ccf
    ldh [rSC], a
    nop
    nop
    rst $38
    ld a, a
    ld e, [hl]
    ccf
    rst $38
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a
    ld e, [hl]
    ccf
    rra
    nop
    nop
    nop
    rst $38
    ld a, a
    ld e, l
    ld c, a
    sbc e
    ld a, [hl-]
    nop
    nop
    rst $38
    ld a, a
    sbc b
    ld a, [hl+]
    dec d
    stop
    nop
    rst $38
    ld a, a
    sbc a
    ld a, [hl+]
    dec d
    stop
    nop
    rst $38
    ld a, a
    ld e, [hl]
    ld b, e
    sub b
    dec h
    nop
    nop
    rst $38
    ld a, a
    adc a
    ld l, e
    call z, $036a
    ld a, [hl-]
    rst $38
    ld a, a
    adc a
    ld l, e
    rla
    ld h, e
    nop
    nop
    rst $38
    ld h, e
    ld h, a
    ld c, a
    sbc d
    ld a, [hl+]
    sub e
    ld hl, $7fff
    sbc a
    dec sp
    cp a
    ld a, l
    nop
    nop
    rst $38
    ld a, a
    ld d, b
    ld d, [hl]
    adc d
    ld c, c
    nop
    nop
    rst $38
    ld a, a
    or a
    ld b, d
    adc h
    add hl, hl
    nop
    nop
    rst $38
    ld a, a
    rst $18
    ld bc, $3d67
    nop
    nop
    rst $38
    ld a, a
    cp d
    ld e, d
    ld e, d
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    ld a, [hl]
    inc de
    sbc b
    ld l, $00
    nop
    rst $38
    ld a, a
    cp a
    ld h, l
    sbc b
    ld l, $00
    nop
    rst $38
    ld a, a
    ld [hl], b
    db $76
    sbc b
    ld l, $00
    nop
    rst $38
    ld a, a
    sbc $62
    ld d, d
    ld c, d
    ld d, b
    dec e
    rst $38
    ld a, a
    dec [hl]
    ld [hl], a
    ld d, d
    ld c, d
    ld d, b
    dec e
    rst $38
    ld a, a
    ld d, h
    ld b, e
    ld d, d
    ld c, d
    ld d, b
    dec e
    rst $38
    ld a, a
    sbc a
    dec sp
    ld d, d
    ld c, d
    ld d, b
    dec e
    rst $38
    ld a, a
    ld d, d
    ld c, d
    ld e, d
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    sbc $62
    db $fc
    ld d, l
    nop
    nop
    rst $38
    ld a, a
    sbc d
    ld [bc], a
    ld [hl], b
    halt
    nop
    rst $38
    ld a, a
    ld d, b
    ld a, b
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    or b
    ld de, $7e8f
    nop
    nop
    rst $38
    ld a, a
    sbc h
    ld [$7e8f], sp
    nop
    nop
    rst $38
    ld a, a
    ld a, [c]
    ld a, [hl]
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    sbc b
    ld l, $b2
    dec l
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    reti


    inc bc
    reti


    inc bc
    nop
    nop
    ld l, b
    dec l
    or l
    ld d, [hl]
    rst $38
    ld a, a
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    inc d
    inc d
    dec d
    inc d
    ld d, $14
    rla
    inc d
    rla
    ld d, h
    ld d, $54
    dec d
    ld d, h
    inc d
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    inc bc
    ld d, h
    ld [bc], a
    ld d, h
    ld bc, $0754
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    inc h
    inc d
    dec h
    inc d
    ld h, $14
    rlca
    inc d
    rlca
    ld d, h
    ld h, $54
    dec h
    ld d, h
    inc h
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    ld d, h
    ld bc, $0214
    inc d
    inc bc
    inc d
    inc bc
    ld d, h
    ld [bc], a
    ld d, h
    ld bc, $1154
    inc d
    ld [de], a
    inc d
    inc de
    inc d
    inc de
    ld d, h
    ld [de], a
    ld d, h
    ld de, $1054
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    inc h
    inc d
    inc [hl]
    inc d
    dec [hl]
    inc d
    dec [hl]
    ld d, h
    inc [hl]
    ld d, h
    inc sp
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    db $10
    inc d
    ld de, $1214
    inc d
    inc de
    inc d
    inc de
    ld d, h
    ld [de], a
    ld d, h
    ld de, $2154
    inc d
    ld [hl+], a
    inc d
    inc hl
    inc d
    inc hl
    ld d, h
    ld [hl+], a
    ld d, h
    ld hl, $2054
    ld d, h
    rlca
    inc d
    ld [$0914], sp
    inc d
    ld a, [bc]
    inc d
    dec bc
    inc d
    inc c
    inc d
    dec c
    inc d
    rlca
    inc d
    rlca
    inc d
    jr @+$16

    add hl, bc
    inc d
    ld a, [de]
    inc d
    dec de
    inc d
    dec c
    inc d
    inc c
    inc d
    inc e
    inc d
    add hl, hl
    inc d
    rlca
    inc d
    jr nz, jr_002_6176

    ld hl, $2214
    inc d
    inc hl
    inc d
    inc hl
    ld d, h
    ld [hl+], a
    ld d, h
    ld hl, $3154
    inc d
    ld [hl-], a
    inc d
    rlca
    inc d
    rlca
    inc d

jr_002_6176:
    ld [hl-], a
    ld d, h
    ld [hl], $10
    jr c, jr_002_618c

    jr c, jr_002_618e

    jr c, jr_002_6190

    jr c, jr_002_6192

    jr c, jr_002_6194

    jr c, jr_002_6196

    jr c, jr_002_6198

    jr c, jr_002_619a

    jr c, jr_002_619c

jr_002_618c:
    jr c, jr_002_619e

jr_002_618e:
    jr c, jr_002_61a0

jr_002_6190:
    jr c, jr_002_61a2

jr_002_6192:
    jr c, jr_002_61a4

jr_002_6194:
    jr c, jr_002_61a6

jr_002_6196:
    jr c, jr_002_61a8

jr_002_6198:
    jr c, jr_002_61aa

jr_002_619a:
    jr c, jr_002_61ac

jr_002_619c:
    jr c, @+$12

jr_002_619e:
    jr c, jr_002_61b0

jr_002_61a0:
    jr c, jr_002_61b2

jr_002_61a2:
    daa
    db $10

jr_002_61a4:
    ld [hl-], a
    inc d

jr_002_61a6:
    rlca
    ld d, h

jr_002_61a8:
    rlca
    ld d, h

jr_002_61aa:
    ld [hl-], a
    ld d, h

jr_002_61ac:
    ld sp, $0554
    inc d

jr_002_61b0:
    ld b, $14

jr_002_61b2:
    rlca
    inc d
    rlca
    ld d, h
    ld b, $54
    rra
    db $10
    scf
    db $10
    ld b, $14
    rlca
    inc d
    rlca
    ld d, h
    ld b, $54
    dec b
    ld d, h
    dec d
    inc d
    ld d, $14
    rla
    inc d
    rla
    ld d, h
    ld d, $54
    rra
    db $10
    scf
    db $10
    ld d, $14
    rla
    inc d
    rla
    ld d, h
    ld d, $54
    dec d
    ld d, h
    dec h
    inc d
    ld h, $14
    rlca
    inc d
    rlca
    ld d, h
    ld h, $54
    rra
    db $10
    scf
    db $10
    ld h, $14
    rlca
    inc d
    rlca
    ld d, h
    ld h, $54
    dec h
    ld d, h
    inc sp
    inc d
    inc [hl]
    inc d
    dec [hl]
    inc d
    dec [hl]
    ld d, h
    inc [hl]
    ld d, h
    rra
    db $10
    scf
    db $10
    inc [hl]
    inc d
    dec [hl]
    inc d
    dec [hl]
    ld d, h
    inc [hl]
    ld d, h
    inc sp
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    ld [bc], a
    ld d, h
    ld bc, $0754
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    ld bc, $0214
    inc d
    ld [de], a
    ld d, h
    ld de, $1054
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d
    rlca
    inc d
    db $10
    inc d
    ld de, $1214
    inc d
    ld [hl+], a
    ld d, h
    ld hl, $2054
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d
    rlca
    inc d
    jr nz, jr_002_627e

    ld hl, $2214
    inc d
    ld [hl-], a
    ld d, h
    ld sp, $3054
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d

jr_002_627e:
    rlca
    inc d
    jr nc, jr_002_6296

    ld sp, $3214
    inc d
    ld b, $54
    dec b
    ld d, h
    inc b
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d

jr_002_6296:
    rlca
    inc d
    inc b
    inc d
    dec b
    inc d
    ld b, $14
    ld d, $54
    dec d
    ld d, h
    inc d
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d
    rlca
    inc d
    inc d
    inc d
    dec d
    inc d
    ld d, $14
    ld h, $54
    dec h
    ld d, h
    inc h
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d
    rlca
    inc d
    inc h
    inc d
    dec h
    inc d
    ld h, $14
    inc [hl]
    ld d, h
    inc sp
    ld d, h
    rlca
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    inc sp
    inc d
    inc [hl]
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rra
    db $10
    scf
    db $10
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    inc bc
    ld d, h
    ld [bc], a
    ld d, h
    rra
    db $10
    scf
    db $10
    ld [bc], a
    inc d
    inc bc
    inc d
    inc bc
    ld d, h
    ld [bc], a
    ld d, h
    ld bc, $1154
    inc d
    ld [de], a
    inc d
    inc de
    inc d
    inc de
    ld d, h
    ld [de], a
    ld d, h
    rra
    db $10
    scf
    db $10
    ld [de], a
    inc d
    inc de
    inc d
    inc de
    ld d, h
    ld [de], a
    ld d, h
    ld de, $2154
    inc d
    ld [hl+], a
    inc d
    inc hl
    inc d
    inc hl
    ld d, h
    ld [hl+], a
    ld d, h
    rra
    db $10
    scf
    db $10
    ld [hl+], a
    inc d
    inc hl
    inc d
    inc hl
    ld d, h
    ld [hl+], a
    ld d, h
    ld hl, $3154
    inc d
    ld [hl-], a
    inc d
    rlca
    inc d
    rlca
    inc d
    ld [hl-], a
    ld d, h
    rra
    db $10
    scf
    db $10
    ld [hl-], a
    inc d
    rlca
    ld d, h
    rlca
    ld d, h
    ld [hl-], a
    ld d, h
    ld sp, $0554
    inc d
    ld b, $14
    rlca
    inc d
    rlca
    ld d, h
    ld b, $54
    ld l, $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    dec l
    db $10
    ld b, $14
    rlca
    inc d
    rlca
    ld d, h
    ld b, $54
    dec b
    ld d, h
    dec d
    inc d
    ld d, $14
    rla
    inc d
    rla
    ld d, h
    ld d, $54
    dec d
    ld d, h
    inc d
    ld d, h
    rlca
    inc d
    rlca
    inc d
    add hl, sp
    inc d
    ld c, $14
    add hl, bc
    inc d
    rrca
    inc d
    jr z, jr_002_63ce

    rlca
    inc d
    add hl, de
    inc d
    inc c
    inc d
    inc e
    inc d
    add hl, hl
    inc d
    ld a, [hl+]
    inc d
    dec hl
    inc d
    inc l
    inc d
    add hl, sp
    inc d
    rlca
    inc d

jr_002_63ce:
    rlca
    inc d
    inc d
    inc d
    dec d
    inc d
    ld d, $14
    rla
    inc d
    rla
    ld d, h
    ld d, $54
    dec d
    ld d, h
    dec h
    inc d
    ld h, $14
    rlca
    inc d
    rlca
    ld d, h
    ld h, $54
    dec h
    ld d, h
    inc h
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    inc bc
    ld d, h
    ld [bc], a
    ld d, h
    ld bc, $0754
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    inc h
    inc d
    dec h
    inc d
    ld h, $14
    rlca
    inc d
    rlca
    ld d, h
    ld h, $54
    dec h
    ld d, h
    inc sp
    inc d
    inc [hl]
    inc d
    dec [hl]
    inc d
    dec [hl]
    ld d, h
    inc [hl]
    ld d, h
    inc h
    ld d, h
    rlca
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    db $10
    inc d
    ld de, $1214
    inc d
    inc de
    inc d
    inc de
    ld d, h
    ld [de], a
    ld d, h
    ld de, $1054
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    inc h
    inc d
    inc [hl]
    inc d
    dec [hl]
    inc d
    dec [hl]
    ld d, h
    inc [hl]
    ld d, h
    inc sp
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    jr nz, jr_002_648c

    ld hl, $2214
    inc d
    inc hl
    inc d
    inc hl
    ld d, h
    ld [hl+], a
    ld d, h
    ld hl, $2054
    ld d, h
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d

jr_002_648c:
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    rlca
    inc d
    ret c

    jr jr_002_64b9

    ld l, e
    xor $51
    db $e4
    jr z, @+$01

    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38

jr_002_64b9:
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    ld [de], a
    ld c, e
    ld e, a
    ccf
    ld a, d
    ld a, [hl+]
    db $ec
    inc d
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    jp nc, $ff7c

    ld [hl], a
    sbc a
    ld bc, $0000
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    db $ec
    dec de
    ld d, [hl]
    ld a, e
    jr nc, jr_002_655a

    ld h, b
    nop
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ccf
    rst $38
    rst $38
    ld a, [$f0f9]
    rst $28
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ld hl, sp+$20
    sbc a

jr_002_655a:
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    pop af
    ld [hl], b
    rst $30
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    rst $38
    rst $38
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
    rst $30
    ldh a, [$f7]
    ldh a, [$7f]
    ld a, b
    ld a, a
    ld a, b
    ld a, e
    ld a, h
    cp a
    inc a
    cp l
    ld a, $df
    ld e, $ff
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
    rst $38
    ld a, [hl]
    rst $30
    ld [hl], a
    rst $38
    ld [hl], a
    cp $7e
    pop af
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, $f7
    ld [hl], a
    rst $38
    ld [hl], a
    rst $30
    ld a, a
    cp [hl]
    ld a, $c1
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ldh a, [rSVBK]
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    ei
    ld [hl], a
    or $7e
    db $fd
    ld a, h
    rst $30
    db $76
    ei
    ld [hl], e
    adc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $30
    ld [hl], b
    rst $38
    ld a, a
    rst $30
    ld [hl], b
    cp a
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    sbc h
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $30
    ld [hl], b
    rst $38
    ld [hl], e
    di
    ld a, a
    cp a
    ccf
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    cp a
    ccf
    ret nz

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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rrca
    cp $1f
    db $fc
    ccf
    db $fc
    ld a, e
    ld hl, sp-$09
    ldh [rIE], a
    ldh [$df], a
    ret nz

    rst $38
    ret nz

    cp a
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
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld c, $ff
    rrca
    rst $38
    rlca
    rst $38
    rlca
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
    add b
    rst $18
    rra
    rst $28
    rrca
    rst $30
    rlca
    ei
    inc bc
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ret nz

    rst $20
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    sbc a
    rra
    db $e3
    inc bc
    rst $38
    nop
    rst $38
    jp $ffe7


    rst $38
    rst $38
    db $db
    db $db
    rst $38
    jp $003c


    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    db $eb
    ld [hl], a
    rst $30
    ld a, a
    rst $38
    ld a, $dd
    inc e
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld [hl], e
    rst $38
    ld a, a
    rst $30
    ld [hl], a
    ei
    ld [hl], e
    adc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $30
    ld [hl], b
    rst $38
    ld a, a
    rst $30
    rrca
    rst $38
    ld a, [hl]
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $30
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], e
    adc h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    db $fd
    inc e
    rst $38
    rra
    db $fd
    inc bc
    rst $38
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc $ff
    ld c, $ff
    adc $ff
    adc $bf
    adc [hl]
    ld [hl], c
    nop
    rst $38
    nop
    cp c
    ld h, a
    cp c
    ld h, a
    cp c
    ld h, a
    cp c
    ld h, a
    cp c
    ld h, a
    cp c
    ld h, a
    cp c
    ld h, a
    cp c
    ld h, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $fe
    rra
    db $fc
    dec e
    cp $1d
    db $fc
    ccf
    add b
    rst $38
    add b
    ld a, a
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
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    di
    ldh [$cf], a
    add b
    cp a
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$fb]
    ld a, h
    db $fd
    ld a, $fe
    rra
    rst $38
    rrca
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
    cp a
    ret nz

    rst $38
    nop
    inc bc
    db $fc
    rst $38
    db $fc
    rst $30
    inc c
    rst $20
    inc e
    daa
    call c, $9c67
    rst $20
    sbc h
    rst $38
    nop
    cp $7f
    di
    ld [hl], e
    rst $38
    ld [hl], e
    di
    ld a, a
    cp $7e
    add c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $30
    ld [hl], b
    rst $38
    ld a, a
    rst $30
    rrca
    cp $7e
    add c
    nop
    rst $38
    nop
    rst $00

jr_002_67bf:
    jr c, jr_002_67bf

    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    cp $38
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    db $fd
    rst $18
    db $dd
    rst $38
    db $dd
    rst $18
    db $fd
    ei
    ld sp, hl
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    cp a
    call z, $fccf
    rst $38
    db $fc
    rst $18
    call c, $ccff
    inc sp
    nop
    rst $38
    nop
    rst $20
    sbc h
    rst $20
    inc e
    rst $20
    inc e
    rlca
    db $fc
    rlca
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    cp c
    ld h, a
    cp c
    ld h, [hl]
    cp e
    ld h, h
    cp b
    ld h, a
    or b
    ld l, a
    cp a
    ld a, a
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    ld hl, sp+$3f
    ld hl, sp+$3b
    db $fc
    dec sp
    db $fc
    ld a, e
    ldh a, [$7f]
    ldh a, [$7f]
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rra
    cp $3e
    db $fc
    dec a
    db $fc
    ld a, l
    ld hl, sp+$7b
    ld hl, sp+$7b
    ld hl, sp-$09
    ldh a, [$f7]
    ldh a, [rIE]
    rlca
    rst $38
    inc bc
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
    rst $20
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    cp a
    ld a, a
    and a
    ld h, b
    and a
    ld h, b
    cp b
    ld h, a
    cp b
    ld h, a
    cp c
    ld h, a
    rst $20
    sbc h
    rst $20
    sbc h
    rst $20
    sbc h
    rst $20
    sbc h
    rst $20
    sbc h
    rst $20
    sbc h
    rst $20
    sbc h
    rst $20
    sbc h
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $db
    inc a
    xor l
    ld h, [hl]
    rst $08
    ld b, d
    di
    ld c, [hl]
    or l
    ld l, h
    db $db
    jr c, @+$01

    nop
    rst $38
    nop
    ld e, [hl]
    ccf
    ldh [rSC], a
    ld e, [hl]
    ccf
    cp a
    ld [bc], a
    ld e, [hl]
    ccf
    rra
    nop
    ld e, [hl]
    ccf
    inc h
    ld a, [hl]
    sbc $46
    ret nc

    ld c, l
    sbc $46
    ret nc

    ld c, l
    db $ec
    cpl
    ld e, a
    add hl, de
    sub h
    cpl
    ld e, a
    add hl, de
    db $ec
    cpl
    ld e, a
    ld b, c
    sub h
    cpl
    rra
    daa
    jr z, jr_002_6917

    db $fd
    jr c, jr_002_691d

    cpl
    rst $18
    ld c, $bf
    ld de, $14b6
    rra
    dec de
    rra
    ld a, [bc]
    ld e, $19
    ld [hl], d
    inc e
    cp a
    ld a, $37
    dec [hl]
    ld a, a
    ld bc, $3d26
    db $f4
    ld d, l
    xor b
    ld a, [hl-]
    ld d, [hl]
    ld [hl+], a
    ld [$ed7d], a
    ld [hl+], a
    ld sp, $567b
    ld [hl+], a
    jp z, $ed7d

    ld [hl+], a
    ld [hl], d
    ld a, [hl]
    sbc b

jr_002_6917:
    ld c, $68
    ld a, l
    xor [hl]
    ld e, $10

jr_002_691d:
    ld d, d
    call z, $3f1a
    dec a
    dec de
    dec de
    sbc a
    ld b, l
    rst $28
    inc bc
    ret


    dec b
    ld a, h
    ld [hl], $d8
    ld bc, $7f32
    cp d
    inc [hl]
    rst $38
    ld e, l
    rst $28
    inc bc
    ld a, [hl-]
    ld d, $b9
    inc c
    ld [hl], a
    rla
    ld a, [$3a74]
    rrca
    call nc, Call_002_7421
    inc de
    dec l
    ld e, $7f
    ld [de], a
    sbc [hl]
    inc b
    sub c
    ld [hl], $e8
    ld l, h
    ld a, [hl]
    scf
    inc de
    add hl, bc
    sbc [hl]
    inc sp
    ld [hl], h
    ld [hl+], a
    ld e, a
    ld sp, $0913
    ld [hl], l
    ld d, $d3
    dec d
    ld e, a
    ld sp, $0913
    sbc a
    ld a, [hl-]
    cpl
    ld a, [bc]
    ld d, $79
    ld [hl], b
    ld b, h
    or $4e
    inc [hl]
    ld [hl], $fd
    ld a, [hl+]
    ld d, c
    ld bc, $3f37
    ld a, [de]
    ld c, $53
    dec b
    ld e, [hl]
    ld sp, $035e
    cp b
    dec b
    db $76
    ld de, $40df
    db $10
    ld a, [hl+]
    jr c, jr_002_69a4

    inc d
    ld d, l
    dec d
    inc e
    db $f4
    ld [hl], $69
    dec d
    ld [de], a
    ld c, l
    sub [hl]
    inc h
    ld [hl], d
    ld l, $54
    ld a, c
    ld e, l
    rla
    jp c, $3f00

    ld [bc], a
    ld d, h
    inc l
    ld e, a
    rra
    sbc a
    ld bc, $5275

jr_002_69a4:
    ld a, b
    ld a, [bc]
    ld d, [hl]
    ld a, [de]
    db $ec
    inc b
    db $10
    ld a, [hl+]
    dec bc
    dec a
    ld d, a
    ld [bc], a
    db $ed
    nop
    ld d, b
    ld [de], a
    push de
    inc b
    or d
    ld a, d
    call z, $3b38
    ld [hl], d
    dec h
    ld b, $8d
    ld a, [hl]
    add a
    add hl, sp
    ccf
    ld a, d
    and $29
    ld a, e
    ld e, $09
    ld l, [hl]
    rra
    ld a, [hl]
    xor e
    ld hl, $551b
    ld d, c
    ld b, b
    or d
    ld a, [hl]
    ld de, $163d
    ld e, c
    xor d
    ld b, b
    db $f4
    ld a, [hl]
    sub a
    ld h, h
    jp nc, $8b50

    inc l
    dec l
    ld a, [hl]
    cpl
    ld e, l
    rst $18
    ld c, c
    db $ed
    nop
    cp a
    ld h, l
    ld c, b
    ld [bc], a
    rst $18
    ld c, c
    db $ed
    nop
    cp a
    ld h, l
    ld c, b
    ld [bc], a
    sbc a
    dec e
    or l
    jr nz, jr_002_6a1a

    rlca
    ld d, $06
    rst $38
    dec de
    ld a, [c]
    ld bc, $66db
    ld sp, $df5e
    ld d, l
    ld b, $7e
    ccf
    ld a, [hl]
    add hl, bc
    rrca
    rst $18
    ld d, l
    ld b, $7e
    ccf
    ld a, [hl]
    add hl, bc
    rrca
    db $ec
    ld c, l
    dec b
    ld b, l

jr_002_6a1a:
    ei
    ld a, c
    ld a, [hl+]
    ld a, [de]
    db $ec
    ld c, l
    dec b
    ld b, l
    sbc l
    ld c, l
    rst $20
    ld bc, $0eeb
    ld h, $25
    ld e, a
    inc de
    ld c, b
    ld l, $9f
    ld bc, $3528
    cp a
    ld d, $2d
    ld [hl-], a
    rst $18
    inc c
    jr z, jr_002_6a6f

    cp a
    ld c, $e8
    dec [hl]
    sbc a
    dec c
    ld [hl], a
    nop
    ld a, e
    ld c, $ae
    dec b
    ccf
    ld de, $04ae
    cp a

jr_002_6a4b:
    ld h, $12
    ld d, $bc
    ld [$380b], sp
    ld l, $7e
    xor e
    ld e, b
    ld e, e
    ld h, c
    xor h
    jr c, jr_002_6a4b

    ld a, l
    pop de
    ld d, h
    ld [hl], e
    ld de, $10d8
    ld [hl], e
    ld de, $6ccc
    ld [hl], e
    ld de, $10d8
    ld [hl], e
    ld de, $6ccc
    ld a, a

jr_002_6a6f:
    scf
    inc d
    dec c
    rst $18
    ld [hl-], a
    ld e, d
    ld c, b
    sbc a
    dec hl
    inc l
    ld de, $2b9f
    inc a
    ld l, l
    rst $38
    inc bc
    di
    dec e
    ld [hl], l
    ld a, [hl]
    ld l, d
    ld d, c
    or [hl]
    ld l, d
    ld l, b
    ld h, c
    ld e, h
    dec [hl]
    daa
    ld a, d
    sbc l
    ld l, $33
    dec e
    db $d3
    ld l, $14
    ld e, $5f
    ld [hl-], a
    db $10
    dec d
    scf
    ld a, [de]
    db $10
    ld a, [de]
    ld a, e
    ld e, $18
    ld bc, $1e97
    or l
    ld bc, $1eff
    ret c

    inc c
    jr c, jr_002_6aea

    inc sp
    ld b, $1a
    dec d
    rlca
    add hl, hl
    ld a, [de]
    ld b, l
    ld [$c975], sp
    ld b, c
    and $28
    add hl, bc
    ld l, d
    ld c, b
    ld a, l
    db $10
    ld l, d
    add $3c
    dec bc
    ld l, e
    jr z, jr_002_6b04

    ld a, h
    ld c, $0c
    add hl, hl
    inc e
    dec hl
    inc [hl]
    ld c, l
    ld a, h
    ld c, $0c
    add hl, hl
    inc e
    dec hl
    inc [hl]
    ld c, l
    ld a, h
    ld c, $0c
    add hl, hl
    ld [hl], e
    ld c, $55
    ld d, h
    inc [hl]
    ld l, $69
    ld de, $2dcf
    ld b, $25
    jr nc, @+$30

    sub [hl]
    db $10

jr_002_6aea:
    ld c, $2e
    rst $00
    ld h, h
    ld d, l
    ld l, $69
    ld de, $2e2e
    adc c
    ld de, $1ff4
    ld e, e
    dec h
    sub h
    ld e, $54
    ld d, l
    db $ed
    rra
    dec a
    dec h
    sub [hl]
    rra

jr_002_6b04:
    inc sp
    ld c, l
    ld c, a
    rrca
    ld e, a
    dec [hl]
    db $f4
    ld c, $8e
    ld a, l
    adc e
    ld a, [hl]
    sbc $28
    ld [hl], e
    ld a, [hl]
    ld l, b
    ld [hl], $8b
    ld a, [hl]
    ld e, d
    ld [$7e91], sp
    add l
    ld [bc], a
    ld [hl-], a
    ld a, $68
    dec e
    jr c, @+$40

    xor a
    dec e
    ld sp, $684a
    dec e

jr_002_6b2a:
    rst $10
    ld sp, $1d70
    ld [de], a
    ld [hl+], a
    ld l, b
    dec e
    ld sp, hl
    ld sp, $0cf3
    ld a, d
    inc de
    cp a
    inc c
    ld [hl], a
    ld b, d
    or e
    ld sp, $137a
    cp a
    inc c
    db $76
    ld d, d
    ld d, c
    ld l, l
    ld e, a
    ld b, l
    or l
    jr nz, @+$78

    ld l, c
    ld de, $5f7c
    ld b, l
    inc l
    ld l, $55
    ld a, l
    ld d, d
    ld [bc], a
    cpl
    ld h, d
    rst $18
    ld [$4e93], sp
    db $f4
    inc e
    cpl
    ld h, d
    rst $18
    ld [$4a0f], sp
    ld [hl], d
    dec l
    sub a
    ld hl, $0746
    inc d
    ld a, [hl-]
    adc h
    ld b, $b5
    dec h
    inc c
    add hl, de
    db $fc
    ld [bc], a
    ld [de], a
    ld [bc], a
    ld a, [de]
    ld [hl+], a
    ld [de], a
    add hl, de
    rra
    rlca
    ld [de], a
    ld [bc], a
    or e
    ld a, [hl]
    dec a
    dec [hl]
    ld [hl], h
    ld e, d
    db $fd
    inc d
    or e
    ld a, [hl]
    ld l, b
    ld c, c
    ld [hl], h
    ld d, d
    ld [hl], d
    add hl, sp
    ld e, l
    ld d, b
    inc l
    jr nc, jr_002_6c03

    ld b, $4b
    add hl, hl
    ld e, l
    ld d, b
    inc l
    jr nc, jr_002_6b2a

    ld h, $aa
    dec c
    db $10
    dec [hl]
    push af
    inc b
    jr c, jr_002_6bc2

    dec [hl]
    ld de, $5955
    adc h
    inc [hl]
    sub h
    ld [hl], c
    adc e
    ld a, h
    ld e, $79
    ld de, $305c
    ld a, d
    push hl
    inc l
    ld sp, hl
    jr jr_002_6bc7

    ld c, h
    ld a, [hl+]
    ld l, l
    ld [$bf4c], sp
    ld [$4009], sp

jr_002_6bc2:
    rra
    ld [hl], h
    adc a
    ld e, l
    pop af

jr_002_6bc7:
    ld d, c
    ret


    inc l
    xor a
    ld [de], a
    ld l, [hl]
    dec e
    rst $38
    ld [de], a
    ld d, d
    ld sp, $6db8
    ld [de], a
    jr z, jr_002_6c16

    inc bc
    sub l
    ld bc, $653e
    ld d, d
    dec [hl]
    dec a
    ld h, $bd
    db $10
    sub l
    ld e, d
    ld a, [c]
    ld de, $263d
    cp l
    db $10
    push de
    ld h, $ac
    dec l
    sub h
    ld b, [hl]
    cp b
    inc d
    sub h
    ld b, [hl]
    ld c, c
    ld [hl], b
    sub h
    ld b, [hl]
    cp b
    inc d
    sub h
    ld b, [hl]
    ld c, c
    ld [hl], b
    rst $38
    ld b, l
    or e
    inc h
    scf

jr_002_6c03:
    dec de
    sub e
    dec h
    or h
    add hl, de
    dec b
    ld e, $33
    ld [hl+], a
    ret c

    dec h
    ld [hl], h
    ld [hl-], a
    ld d, b
    ld de, $5ed6
    db $eb
    dec h

jr_002_6c16:
    ld [hl], h
    ld [hl-], a
    ld d, b
    ld de, $3eb2
    xor $11
    sub $15
    rrca
    ld a, $b1
    ld d, $0d
    dec [hl]
    push af
    ld sp, $487b
    jr nc, @+$34

    ld l, b
    ld a, h
    ld e, a
    ld c, c
    jp c, $d814

    ld h, $3c

jr_002_6c35:
    add hl, sp
    ld e, c
    ld h, l
    jp nc, $9048

    ld h, [hl]
    adc c
    ld e, l
    ld e, c
    ld h, l
    xor e
    jr c, @-$6e

    ld h, [hl]
    adc c
    ld e, l
    ld l, a
    ld b, l
    daa
    ld de, $45f6
    ld l, a
    dec [hl]
    ld l, a
    ld b, l
    daa
    ld de, $56b6
    adc h
    ld b, l
    inc e
    ld d, [hl]
    ccf
    ld c, l
    dec sp

jr_002_6c5b:
    ld c, a
    ld l, l
    ld b, $a9
    ld e, l
    pop de
    jr jr_002_6c35

    inc bc
    pop de
    jr @-$2b

    ld de, $0908
    db $10
    ld c, [hl]
    ld h, e
    dec c
    ld a, h
    inc sp
    dec hl
    ld a, [hl]
    sbc a
    ld h, c
    db $ec
    ld a, l
    call c, $0942
    ld a, [hl]
    ld a, a
    ld l, l
    adc d
    ld [hl], h
    sbc a
    ld c, l
    ld e, a
    add hl, bc
    ld a, l
    ld [bc], a
    sbc $01
    db $d3
    ld a, d
    ld e, a
    add hl, bc
    ld [hl], l
    ld c, e
    jp c, $370a

    ld l, $bf
    inc c
    ld [de], a
    ld c, [hl]
    xor b
    ld a, c
    jp c, $f302

    ld c, b
    dec a
    dec l
    ld l, e
    ld a, l
    ld a, a
    ld a, l
    db $fc
    inc [hl]

jr_002_6ca2:
    ld a, a
    ld a, l
    ld [hl], c
    ld [bc], a
    ld c, a
    inc bc
    scf
    inc bc
    ld de, $3c03
    ld bc, $3c4e
    db $dd
    ld c, h
    ld c, [hl]
    inc a
    ccf
    ld l, l
    rst $38
    rla
    jr jr_002_6cd0

    ccf
    inc bc
    sub d
    ld [bc], a
    sbc a
    ld [bc], a
    rst $30
    jr jr_002_6ca2

    ld a, c
    sbc b
    jr c, jr_002_6c5b

    ld a, [hl-]
    ld d, c
    dec e
    rst $30
    ld h, $6b
    dec a
    ld sp, hl
    dec d

jr_002_6cd0:
    ld [$7e10], a
    dec sp
    ret


    add hl, hl
    ld e, l
    add hl, de
    ld [hl], d
    inc h
    add hl, de
    inc bc
    db $10
    ld [bc], a
    dec sp
    rra
    ret


    ld l, c
    sbc c
    ld [hl+], a
    ld e, e
    dec d
    cp h
    ld [hl], $08
    ld [hl], d
    cp a
    ld a, l
    ld [hl], b
    ld a, l
    sub a
    ld [hl], c
    db $ed
    ld b, b
    pop de
    ld [hl], d
    adc c
    ld l, l
    jr @+$1c

    ld de, $7309
    ld d, [hl]
    call z, $d035
    ld a, [hl]
    ld l, c
    ld a, l
    cp e
    ld a, [hl]
    ld c, a
    ld h, c
    rst $38
    rrca
    ld a, h
    dec b
    reti


    ld [bc], a
    rst $28
    add hl, de
    ld e, a
    dec b
    or l
    ld [$063e], sp
    jr c, @+$03

    jr c, jr_002_6d29

    add sp, $51
    ld l, [hl]
    ld l, h
    ld l, h
    ld h, l
    inc [hl]
    ld l, $c7
    ld d, l
    ld [hl], a
    ld a, [hl+]
    ld l, h
    dec l
    inc [hl]
    ld l, $c7

jr_002_6d29:
    ld d, l
    sbc c
    dec bc
    ld l, h
    dec a
    call nc, $2c01
    add hl, de
    rla
    ld d, e
    ld c, [hl]
    ld a, [hl+]
    call nc, $2c01
    add hl, de
    sub e
    ld l, $ea
    add hl, hl
    ld [hl], e
    ld a, $6c
    dec l
    ld [hl], $5d
    inc l
    ld d, l
    ld e, e
    ld a, [hl-]
    dec l
    dec h
    db $db
    ld l, $e9
    ld a, h
    xor e
    ld a, [hl]
    ld l, b
    ld b, c
    ld d, e
    ld a, a
    xor l
    ld e, c
    sbc a
    inc bc
    rla
    ld [bc], a
    ld a, a
    ld [bc], a
    sbc a
    nop
    rst $18
    ld [bc], a
    sbc a
    dec c
    ld a, a
    add hl, sp
    dec [hl]
    nop
    ld e, h
    rra
    ret z

    ld h, c
    ld [hl], l
    ld h, d
    ld l, [hl]
    ld h, c
    ld [hl], c
    ld a, [hl]
    push bc
    ld e, l
    ld [hl], l
    ld a, [hl]
    db $f4
    ld a, l
    jr c, jr_002_6d8a

    ld c, e
    ld b, l
    ld [hl], c
    ld a, [hl-]
    inc de
    jr c, @-$68

    ld h, [hl]
    or b
    ld d, b
    or e
    ld e, d
    rst $28
    ld bc, $7dff
    ld h, a
    ld l, c

jr_002_6d8a:
    ld [de], a
    ld a, a
    ld h, a
    ld l, c
    push af
    ld [hl-], a
    add e
    ld [bc], a
    db $fd
    ld [hl-], a
    jp c, $3b01

    dec de
    dec bc
    ld a, [bc]
    sbc e
    ld [hl], $f9
    ld bc, $0f0d
    dec [hl]
    jr z, jr_002_6dbb

    inc bc
    sbc h
    dec d
    ld a, a
    inc bc
    rst $38
    inc d
    db $fd
    ld h, $16
    ld c, h
    sbc a
    inc de
    ccf
    dec c
    db $fd
    ld h, $16
    ld c, h
    ld a, a
    daa
    db $db
    inc c
    db $fd

jr_002_6dbb:
    ld h, $16
    ld c, h
    inc l
    ld l, d
    inc a
    ld de, $3f52
    ld l, $71
    inc l
    db $76
    ld a, [de]
    dec e
    xor a
    ld a, [hl-]
    dec l
    ld e, l
    bit 6, l
    push de
    inc b
    jr z, @+$38

    db $ec
    ld a, h
    or $29
    rst $28
    db $10
    ld a, b
    ld a, [bc]
    or l
    ld d, b
    or a
    ld [de], a
    ld l, $09
    cp [hl]
    ld a, l
    ld c, a
    add hl, bc
    or a
    add hl, de
    call nz, $d740
    ld a, [de]
    ld d, [hl]
    ld h, b
    sub d
    ld de, $18ab
    ld a, [c]
    ld [de], a
    ld d, a
    add hl, de
    ld a, d
    ld [hl+], a
    db $db
    inc d
    ld e, a
    inc bc
    ccf
    ld [bc], a
    rst $18
    ld [de], a
    db $db
    inc d
    ld e, a
    inc bc
    ccf
    ld [bc], a
    cp h
    ld [hl-], a
    adc c
    ld d, $9f
    ld a, l
    inc [hl]
    ld a, l
    ld e, e
    ld hl, $50ce
    ld [hl], l
    ld l, b
    dec h
    ld [hl], l
    ld [de], a
    ld d, l
    inc h
    dec a
    sbc l
    ld c, l
    rst $20
    ld bc, $1edb
    ld c, l
    ld [hl], c
    sub [hl]
    inc sp
    call z, $1d51
    dec sp
    ld c, l
    ld [hl], c
    db $f4
    ld a, [hl+]
    ld d, b
    ld a, l
    ld e, l

jr_002_6e2f:
    rla
    jp c, $3f00

    ld [bc], a
    ld d, h
    inc l
    cp a
    ld h, l
    db $ed
    nop
    cp a
    ld h, l
    ld c, b
    ld [bc], a
    rra
    ld h, d
    or [hl]
    inc d
    ccf
    ld a, [hl]
    add hl, bc
    rrca
    ld e, [hl]
    cpl
    rst $18
    ld b, h
    ld e, [hl]
    cpl
    add sp, $7d
    sub a
    ld a, d
    db $fc
    jr @+$21

    inc hl
    ld [bc], a
    ld a, [hl]
    ld [$b436], a
    jr jr_002_6e2f

    ld c, a
    or l
    ld a, [hl+]
    ld [$b436], a
    jr jr_002_6ed6

    inc bc
    sub a
    add hl, bc
    sbc b
    ld e, $aa
    ld c, h
    rra
    ld a, [hl]
    xor d
    ld c, h
    cp a
    ld c, l
    ld l, d
    jr c, jr_002_6e92

    db $76
    db $10
    ld a, l
    rst $38
    dec bc
    ld d, l
    dec b
    sbc b
    ld d, [hl]
    xor [hl]
    ld a, h
    dec de
    add hl, de
    ld h, $22
    ld a, h
    add hl, de
    bit 4, l
    xor c
    ld [hl], l
    add hl, de
    dec d
    add sp, $2e
    ld a, a
    ld a, b
    ld [$f661], a
    db $10

jr_002_6e92:
    sbc d
    ld d, $32
    dec e
    ld [hl], d
    ld hl, $1dc6
    sub b
    ld [hl+], a
    ld a, l
    jr nc, @-$05

    inc de
    add a
    ld a, [de]
    ld a, c
    ld a, [hl]
    dec bc
    ld a, $eb
    ld a, [de]
    push de
    inc e
    xor [hl]
    dec de
    adc c
    dec c
    rst $18
    ld d, $48
    ld e, $1e
    rrca
    ld [de], a
    ld d, b
    db $fc
    ld [hl], $09
    ld h, c
    add hl, de
    db $76
    rra
    ld a, l
    db $fd
    ld [hl-], a
    adc h
    jr c, jr_002_6edc

    ld c, d
    db $76
    ld h, h
    sbc l
    rlca
    ld c, l
    ld [hl+], a
    rst $38
    rlca
    adc $02
    jp c, $aa0e

    ld [bc], a
    rst $38
    inc de
    ld d, d
    ld [bc], a

jr_002_6ed6:
    ld c, c
    dec hl
    db $f4
    inc e
    ld c, c
    dec hl

jr_002_6edc:
    call $9079
    ld h, [hl]
    ld de, $3f39
    ld a, [hl]
    cp a
    ld [bc], a
    xor [hl]
    ld [hl], d
    ld l, [hl]
    ld d, b
    or a
    ld l, d
    sbc h
    ld a, b
    ld sp, hl
    ld l, c
    xor a
    ld c, b
    xor $2b
    ld a, [bc]
    ld [hl+], a
    scf
    ld [bc], a
    and $14
    ld l, d
    ld a, l
    and $14
    ld e, d
    rrca
    rst $20
    ld b, h
    db $fd
    rrca
    ld d, h
    ld e, b
    rst $18
    ld c, c
    or a
    ld [$7d5f], sp
    xor c
    ld a, h
    sbc $4c
    add hl, hl
    ld b, l
    ccf
    rrca
    rst $08
    dec c
    rst $28
    ld b, c
    rst $20
    jr nz, jr_002_6f89

    ld a, [hl]
    ld h, d
    ld a, l
    xor h
    ld a, [hl]
    rst $00
    ld b, c
    rst $30
    ld h, h
    daa
    ld b, c
    rst $18
    ld [de], a
    ld e, h
    ld b, c
    ld a, a
    ld [bc], a
    add l
    ld a, h
    call nc, $2a5a
    ld d, d
    rst $38
    rla
    ld e, h
    dec d
    ld a, b
    ld l, c
    ld d, e
    inc h
    ld [de], a
    ld a, [bc]
    ld c, d
    dec b
    rra
    dec de
    add sp, $5d
    rra
    dec de
    cp a
    ld d, h
    reti


    ld c, b
    add sp, $50
    di
    ld c, l
    add $7c
    pop af
    ld l, c
    inc c
    ld sp, $0df3
    rrca
    ld hl, $35dc
    ld b, a
    dec [hl]
    or d
    ld h, d
    ld a, [de]
    ld l, b
    sub a
    ld e, c
    adc a
    ld b, h
    sub e
    ld b, d
    adc [hl]
    ld sp, $2fbb
    call nz, $b840
    ld e, d
    ld [de], a
    inc l
    ld a, [de]
    ld hl, $3507
    sub $22
    add $1d
    rst $18
    ld d, $95
    inc c
    rst $18
    ld d, $ef
    ld a, h
    ld a, [hl+]
    ld c, l
    ld h, h
    ld b, b
    cpl
    ld h, c
    ld l, l
    ld b, b
    rst $18
    ld c, b
    rst $20

jr_002_6f89:
    inc l
    sbc h
    daa
    ccf
    ld a, l
    sub $19
    xor $10
    or h
    dec hl
    adc l
    ld b, $ff
    dec de
    ld [hl], h
    ld bc, $67ba
    jp nc, $9e02

    ccf
    ret c

    db $10
    or l
    ld d, [hl]
    ld l, e
    dec l
    ld a, [$0a24]
    dec a
    ld l, h
    ld [hl], c
    rst $08
    jr jr_002_6fc6

    ld c, $d3
    db $10
    ld c, a
    ld a, d
    rst $18
    db $10
    scf
    ld a, [hl+]
    ld c, [hl]
    add hl, hl
    db $76
    ld [bc], a
    ld [hl], e
    ld bc, $7d7f
    db $fc
    inc [hl]
    dec l
    ld [hl], e
    rst $00
    add hl, hl

jr_002_6fc6:
    ld [hl-], a
    ld a, d
    ld b, a
    dec a
    ld l, [hl]
    add hl, sp
    add hl, hl
    ld hl, $12df
    rst $18
    inc c
    sub [hl]
    dec sp
    ld d, h
    ld c, $15
    ld a, [hl]
    ld e, $09
    ld e, a
    inc bc
    ld a, [hl-]
    ld l, b
    add hl, de
    ld a, [hl]
    ld l, d
    ld d, h
    ld a, b
    ld a, a
    ld h, $7e
    or e
    ld a, l
    pop af
    db $10
    jp nc, $e536

    dec b
    sbc a
    ld bc, $2906
    ld [hl], l
    ld c, d
    add sp, $60
    sbc a
    ld bc, $4489
    ld d, e
    ld d, d
    add sp, $50
    rst $38
    ld e, $2c
    ld a, d
    inc [hl]
    ld a, $71
    ld c, l
    sub c
    ld l, d
    scf
    add hl, de
    ld d, $67
    jr c, jr_002_7026

    sub d
    ld c, [hl]
    ld h, l
    ld hl, $52b4
    ld d, h
    dec e
    adc d
    ld h, c
    add hl, sp
    add hl, hl
    ld [hl], h
    ld h, d
    ld l, b
    ld e, l
    rst $30

jr_002_701f:
    dec e
    and h
    ld b, b

jr_002_7022:
    sub e
    ld e, $b4
    inc b

jr_002_7026:
    or a
    ld [hl+], a
    xor [hl]
    jr jr_002_7063

    inc hl
    jp hl


    ld a, [bc]
    rst $30
    ld c, c
    pop af
    inc c
    ld [hl], e
    ld c, d
    xor c
    ld [hl], l
    ld a, b
    ld [de], a
    ld c, d
    ld d, l
    inc [hl]
    ld d, d
    pop af
    ld [hl], h
    dec e
    inc de
    inc [hl]
    ld c, h
    ld e, a
    rra
    sbc a
    ld h, l
    rst $38
    rla
    ld c, a
    dec c
    rra
    rla
    rst $28
    ld b, l
    ld e, a
    ld h, $57
    inc l
    ld e, [hl]
    daa
    rra
    ld [bc], a
    ei
    ld c, c
    add $34
    rst $10
    ld l, d
    ld e, l
    dec [hl]
    sbc h
    add hl, sp
    or d
    jr nz, jr_002_7022

jr_002_7063:
    ld [hl], l
    xor [hl]
    ld h, c
    rst $38
    inc bc
    db $d3
    ld c, b
    rst $38
    ld bc, $02b9
    ret c

    ld bc, $0015
    ld d, h
    dec b
    ld c, d
    ld hl, $7eeb
    ld c, [hl]
    ld d, b
    add hl, de
    ld a, a
    ld [hl], b
    ld h, d
    inc c
    rlca
    ld sp, hl
    ld b, b
    ld a, [c]
    ld a, [hl+]
    db $f4
    ld e, h
    adc a
    ld [hl], d
    rst $08
    jr @+$75

    ld [hl], c
    rst $08
    jr jr_002_701f

    inc bc
    ld c, a
    ld l, l
    ld d, l
    ld a, $33
    ld a, h
    add hl, sp
    ld [hl], d
    ld a, [bc]
    ld a, h
    sub d
    ld [hl], e
    dec de
    jr c, @+$01

    inc c
    rst $20
    dec c
    sbc c
    ld [bc], a
    rra
    ld de, $03ea
    and e
    ld [hl], c
    rst $38
    dec a
    adc a
    ld c, b
    ld e, [hl]
    cpl
    rla
    ld [bc], a
    ld e, [hl]
    cpl
    rla
    ld [bc], a
    ld e, [hl]
    cpl
    rla
    ld [bc], a
    ld e, [hl]
    cpl
    rla
    ld [bc], a
    ld e, [hl]
    cpl
    rla
    ld [bc], a
    ld e, [hl]
    cpl
    rla
    ld [bc], a
    rst $30
    ld e, [hl]
    ld sp, $f746
    ld e, [hl]
    ld sp, $5946
    ld [hl-], a
    ld [hl], $15
    dec sp
    ld a, [hl-]
    and a
    ld a, h
    ld e, h
    ld h, $f5
    ld [$3e5a], sp
    xor l
    ld a, [de]
    dec a
    ld [hl-], a
    db $ec
    ld e, b
    ld e, a
    ld b, d
    inc l
    ld hl, $2a5a
    jr nc, jr_002_7117

    add hl, de
    ld [hl-], a
    inc c
    ld hl, $325b
    ld l, b
    ld b, c
    ld e, e
    ld e, $9a
    inc h

jr_002_70f6:
    ld a, b
    ld l, $0d
    ld [bc], a
    rst $30
    dec h
    sbc d
    ld [$3259], sp
    ld [hl], $15
    add hl, sp
    ld [hl-], a
    ld c, b
    ld sp, $3a5e
    dec d
    dec e
    ld e, e
    ld a, [hl-]
    db $ec
    inc [hl]
    ld a, l
    ld a, $35
    dec d
    ld e, [hl]
    ld a, [hl-]
    xor $28
    ld a, l

jr_002_7117:
    ld b, d
    ld d, h
    dec d
    add hl, sp
    ld a, [hl-]
    ret


    add hl, hl
    ld a, b
    ld l, $aa
    ld b, l
    ld e, a
    ld [hl], $e7

jr_002_7125:
    ld hl, $269c
    adc c
    ld e, l
    add hl, de
    ld l, $4d
    ld h, c
    sbc $46
    add [hl]
    ld l, c
    add hl, sp
    ld a, [de]
    dec c
    ld h, l
    ld e, [hl]
    ld a, $0f
    ld e, l
    ld e, d
    ld a, $36
    dec c
    ld e, d
    ld a, $36
    dec c
    jr c, jr_002_7172

    jr z, @+$47

    sbc h
    ld [hl], $ad
    ld c, b
    dec a
    ld a, $14
    dec d
    add hl, de
    ld [hl-], a
    add hl, hl
    dec a
    ld a, h
    ld a, $d8
    jr c, jr_002_70f6

    ld b, d
    ld l, b
    dec e
    sbc $46
    ld hl, sp+$24
    dec sp
    ld a, [hl+]
    ld b, [hl]
    ld c, c
    ld a, $36
    add a
    dec a
    add e
    inc h
    or l
    dec b
    add hl, de
    ld d, $c6
    ld de, $1dd8
    db $e3
    inc [hl]

jr_002_7172:
    sbc $46
    dec hl
    add hl, hl
    ld e, e

jr_002_7177:
    ld e, $9a
    inc h
    rst $18
    ld c, [hl]
    rra

jr_002_717d:
    dec d
    rst $30
    dec h
    dec c
    ld e, l
    inc [hl]
    ld h, $64
    jr z, jr_002_7125

    ld b, d
    ld h, a
    ld sp, $261c
    adc h

jr_002_718d:
    ld e, h
    dec sp
    ld l, $b9
    jr nc, jr_002_718d

    add hl, hl
    ret


    ld a, h
    ld a, [$4d21]
    ld sp, $1639
    xor [hl]
    jr c, jr_002_717d

    ld b, [hl]
    adc d
    ld c, l
    ld a, a
    ld [hl+], a
    adc d
    ld a, [bc]
    ld a, a
    ld [hl+], a
    cpl
    dec bc
    sbc $46
    or e
    jr nc, jr_002_718d

    ld b, [hl]
    ld [$3951], sp
    ld [hl-], a
    add hl, hl
    add hl, sp
    ld a, b
    ld e, $4d
    ld c, l
    ld a, l
    ld [hl], $15
    ld hl, $3e7d
    ld a, [hl-]
    add hl, de
    rst $18
    ld [hl+], a
    ld a, h
    ld d, h
    ld a, $3a
    adc a
    inc a
    ld e, h
    ld b, [hl]
    or $20
    rra
    inc hl
    inc l
    ld c, l
    ld e, $23
    inc l
    ld c, l
    ld a, a
    ld [hl], $d3
    jr nz, jr_002_7177

    ld [hl-], a
    ldh a, [rLCDC]

Call_002_71de:
    ld a, $12
    ld hl, $54ac
    rst $08
    jr c, jr_002_7230

    ld a, [$d19a]
    and $07
    ld e, a
    ld d, $00
    ld hl, $7279
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d841]
    and $03
    add a
    add a
    add a
    ld e, a
    ld d, $00
    add hl, de
    ld e, l
    ld d, h
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d000
    ld b, $08

jr_002_7210:
    ld a, [de]
    push de
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $7319
    add hl, de
    ld e, l
    ld d, h
    pop hl
    ld c, $08

jr_002_7222:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_002_7222

    pop de
    inc de
    dec b
    jr nz, jr_002_7210

    pop af
    ldh [rSVBK], a

jr_002_7230:
    ld a, [$d841]
    and $03
    ld bc, $0040
    ld hl, $7469
    call $30fe
    ld de, $d040
    ld bc, $0040
    ld a, $05
    call $306b
    ld a, [$d19a]
    cp $01
    jr z, jr_002_7253

    cp $02
    ret nz

jr_002_7253:
    ld a, [$dcb5]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $7569
    add hl, de
    ld a, [$d841]
    and $03
    cp $02
    jr c, jr_002_726d

    inc hl
    inc hl
    inc hl
    inc hl

jr_002_726d:
    ld de, $d032
    ld bc, $0004
    ld a, $05
    call $306b
    ret


    adc c
    ld [hl], d
    adc c
    ld [hl], d
    adc c
    ld [hl], d
    xor c
    ld [hl], d
    ret


    ld [hl], d
    jp hl


    ld [hl], d
    xor c
    ld [hl], d
    ret


    ld [hl], d
    nop
    ld bc, $2802
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    jr z, @+$0e

    dec c
    ld c, $0f
    db $10
    ld de, $2912
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $07
    jr nz, jr_002_72d4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $07
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $07
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $07
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp

jr_002_72d4:
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_002_731c

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rst $38
    ld a, a
    ld a, a
    ld h, d
    ld e, [hl]
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    ld [hl], c
    ld a, [hl]
    ld c, $7e
    nop
    nop
    db $fc
    ld b, e
    or l

jr_002_731c:
    ld d, [hl]
    xor l
    dec [hl]
    rst $20
    inc e
    db $fc
    ld b, e
    ld a, a
    ld h, d
    ld e, [hl]
    add hl, de
    rst $20
    inc e
    or $2b
    inc l
    rlca
    push bc
    ld bc, $1ce7
    rst $38
    ld a, a
    adc b
    ld a, l
    add c
    ld a, h
    rst $20
    inc e
    db $fc
    ld b, e
    rst $38
    rra
    rra
    ld b, $e7
    inc e
    db $fc
    ld b, e
    ld e, b
    ld e, $f4
    dec c
    rst $20
    inc e
    db $fc
    ld b, e
    rst $28
    ld a, a
    dec h
    ld a, [hl]
    rst $20
    inc e
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, $01
    nop
    nop
    ei
    ld l, a
    or l
    ld d, [hl]
    xor l
    dec [hl]
    rst $20
    inc e
    ei
    ld l, a
    ld a, a
    ld h, d
    ld e, [hl]
    add hl, de
    rst $20
    inc e
    or $2b
    inc l
    rlca
    push bc
    ld bc, $1ce7
    rst $38
    ld a, a
    adc b
    ld a, l
    add c
    ld a, h
    rst $20
    inc e
    ei
    ld l, a
    rst $38
    rra
    rra
    ld b, $e7
    inc e
    ei
    ld l, a
    ld e, b
    ld e, $f4
    dec c
    rst $20
    inc e
    ei
    ld l, a
    rst $28
    ld a, a
    dec h
    ld a, [hl]
    rst $20
    inc e
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, $01
    nop
    nop
    rst $08
    ld h, c
    ld l, e
    ld c, l
    rst $20
    jr nc, jr_002_73a0

jr_002_73a0:
    nop
    rst $08
    ld h, c
    xor $44
    dec c
    jr nz, jr_002_73a8

jr_002_73a8:
    nop
    rst $08
    ld h, c
    xor b
    ld c, l
    ld h, b
    dec [hl]
    nop
    nop
    rst $08
    ld h, c
    and l
    ld b, h
    ld h, e
    jr z, jr_002_73b8

jr_002_73b8:
    nop
    sbc $2f
    ret nc

    ld c, c
    ret nc

    add hl, hl
    nop
    nop
    rst $08
    ld h, c
    inc l
    dec a
    adc b
    inc d
    nop
    nop
    rst $08
    ld h, c
    adc l
    ld e, l
    dec hl
    ld d, c
    nop
    nop
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, $01
    nop
    nop
    ld hl, $0008
    nop
    nop
    nop
    nop
    nop
    ld hl, $0008
    nop
    nop
    nop
    nop
    nop
    ld hl, $0008
    nop
    nop
    nop
    nop
    nop
    ld hl, $0008
    nop
    nop
    nop
    nop
    nop
    sbc $2f
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $0008
    nop
    nop
    nop
    nop
    nop
    ld hl, $0008
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, $01
    nop
    nop
    sbc [hl]
    ld l, e
    ld [hl], e
    ld c, [hl]
    xor l
    dec [hl]
    rst $20
    inc e

Call_002_7421:
    sbc [hl]
    ld l, e
    ld a, a
    ld h, d
    ld e, [hl]
    add hl, de
    rst $20
    inc e
    ld [de], a
    daa
    adc a
    ld b, $a9
    ld bc, $1ce7
    sbc [hl]
    ld l, e
    rrca
    ld a, [hl]
    add hl, hl
    ld a, l
    rst $20
    inc e
    sbc [hl]
    ld l, e
    rst $38
    rra
    rra
    ld b, $e7
    inc e
    ld a, [de]
    ld b, a
    dec [hl]
    ld e, $b0
    dec c
    rst $20
    inc e
    sbc [hl]
    ld l, e
    ld [hl], c
    ld a, [hl]
    ld c, $7e
    rst $20
    inc e
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, $01
    nop
    nop
    rst $30
    ld a, [hl]
    ld [hl], d
    ld a, [hl]
    adc l
    ld a, l
    rst $20
    inc e
    xor a
    ld l, l
    ld a, [hl+]
    ld d, c
    ld h, h
    ld c, b
    nop
    nop
    db $fc
    ld b, e
    ld a, a
    ld a, [hl+]
    rst $38
    inc b
    nop
    nop
    db $fc
    ld b, e
    ld a, a
    ld a, [hl+]
    ld a, [hl+]
    ld a, l
    nop
    nop
    db $fc
    ld b, e
    ld a, a
    ld a, [hl+]
    rst $20
    ld c, $00
    nop
    db $fc
    ld b, e
    ld a, a
    ld a, [hl+]
    ld c, a
    dec c
    nop
    nop
    db $fc
    ld b, e
    ld a, a
    ld a, [hl+]
    ld e, [hl]
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    or $2b
    inc l
    rlca
    push bc
    ld bc, $1ce7
    db $fc
    ld b, e
    ld e, b
    ld e, $f4
    dec c
    rst $20
    inc e
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    rst $38
    inc b
    nop
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    ld a, [hl+]
    ld a, l
    nop
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    rst $20
    ld c, $00
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    ld c, a
    dec c
    nop
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    ld e, [hl]
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    or $2b
    inc l
    rlca
    push bc
    ld bc, $1ce7
    ei
    ld l, a
    ld e, b
    ld e, $f4
    dec c
    rst $20
    inc e
    rst $08
    ld h, c
    ld a, a
    ld a, [hl+]
    rst $38
    inc b
    nop
    nop
    rst $08
    ld h, c
    ld a, a
    ld a, [hl+]
    ld a, [hl+]
    ld a, l
    nop
    nop
    rst $08
    ld h, c
    ld a, a
    ld a, [hl+]
    rst $20
    ld c, $00
    nop
    rst $08
    ld h, c
    ld a, a
    ld a, [hl+]
    ld c, a
    dec c
    nop
    nop
    rst $08
    ld h, c
    ld a, a
    ld a, [hl+]
    ld e, [hl]
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    rst $08
    ld h, c
    xor b
    ld c, l
    ld h, b
    dec [hl]
    nop
    nop
    rst $08
    ld h, c
    inc l
    dec a
    adc b
    inc d
    nop
    nop
    ld hl, $7f08
    ld a, [hl+]
    rst $38
    inc b
    nop
    nop
    ld hl, $7f08
    ld a, [hl+]
    ld a, [hl+]
    ld a, l

jr_002_7537:
    nop
    nop
    ld hl, $7f08
    ld a, [hl+]
    rst $20
    ld c, $00
    nop
    ld hl, $7f08
    ld a, [hl+]
    ld c, a
    dec c
    nop
    nop
    ld hl, $7f08
    ld a, [hl+]
    ld e, [hl]
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    xor l
    dec [hl]
    nop
    nop
    ld hl, $0008
    nop
    nop
    nop
    nop
    nop
    ld hl, $0008
    nop
    nop
    nop
    nop
    nop
    or l
    ld d, [hl]
    ld l, e
    dec l
    or l
    ld d, [hl]
    ld l, e
    dec l
    ld l, $7e
    ld h, a
    dec a
    add hl, hl
    ld b, l
    push hl
    inc [hl]
    ld l, h
    ld [bc], a
    ld b, [hl]
    ld bc, $1d26
    and h
    jr jr_002_7537

    ld d, [hl]
    ld l, e
    dec l
    or l
    ld d, [hl]
    ld de, $7f1d
    ld [bc], a
    ld e, e
    dec d
    rst $28
    ld [$088b], sp
    ld c, e
    ld b, c
    push bc
    inc e
    add e
    jr nz, jr_002_7598

jr_002_7598:
    nop
    ld e, a
    ld bc, $00d2
    or d
    inc h
    ld de, $711d
    ld a, a
    push hl
    ld a, l
    rlca
    ld e, c
    rst $20
    ld b, b
    sub [hl]
    ld a, [hl+]
    pop de
    dec c
    ld l, e
    dec d
    ld a, [hl+]
    dec e
    rra
    ld de, $2129
    or d
    inc h

jr_002_75b7:
    add hl, hl
    ld hl, $7dd8
    db $ed
    ld d, h
    ld l, h
    ld c, b
    ld l, c
    inc a
    add hl, sp
    inc bc
    inc [hl]
    ld [hl+], a
    adc h
    ld bc, $152a
    ei
    ld b, $77
    ld bc, $056f
    ld c, e
    dec b
    sbc e
    ld a, a
    ld [hl], c
    ld e, d
    adc $49
    ld a, [hl+]
    dec [hl]
    ld [hl], e
    ld b, d
    adc d
    dec a
    add hl, hl
    dec l
    and h
    inc e
    ld l, $7e
    ld h, a
    dec a
    xor c
    ld c, l
    rst $20
    ld b, b
    or l
    ld d, [hl]
    xor l
    dec [hl]
    ld l, e
    ld c, l
    rst $20
    jr nc, jr_002_7651

    db $76
    or c
    ld d, c
    adc $30
    ld l, e
    jr z, @-$07

    ld a, l
    or b
    ld a, h
    db $ec
    ld b, h
    ret z

    jr z, jr_002_75b7

    ld h, [hl]
    db $10
    ld b, d
    xor l
    dec [hl]
    rst $20
    inc e
    or l
    ld d, [hl]
    ld l, e
    dec l
    or l
    ld d, [hl]
    ld l, e
    dec l
    di
    ccf
    rst $18
    ld a, [bc]
    xor h
    dec h

jr_002_7617:
    adc c
    dec c
    ld c, a
    ld a, l
    and a
    inc a
    and [hl]
    ld b, h
    ld b, d
    jr nz, jr_002_7617

    rra
    dec l
    inc de
    ret


    ld hl, $1146
    db $f4
    dec sp
    db $eb
    ld d, $a9
    ld hl, $1126
    ld e, a
    inc bc
    rst $38
    ld bc, $05ad
    ld [$df05], sp
    ld [hl], c
    cp a
    ld d, h

jr_002_763d:
    xor $44
    dec c
    jr nz, jr_002_763d

    ld l, a
    or l
    ld d, [hl]
    xor l
    dec [hl]
    nop
    nop
    ei
    ld l, a
    rst $38
    jr jr_002_76a2

    inc c
    nop
    nop

jr_002_7651:
    ei
    ld l, a
    ld [$c427], a
    dec b
    nop
    nop
    ei
    ld l, a
    adc b
    ld a, l
    add c
    ld a, h
    nop
    nop
    ei
    ld l, a
    rst $38
    rra
    rra
    ld b, $00
    nop
    ei
    ld l, a
    ld d, $22
    db $ed
    inc b
    nop
    nop
    ei
    ld l, a
    rst $28
    ld a, a
    dec h
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld l, e
    ld c, l
    rst $20
    jr nc, jr_002_7680

jr_002_7680:
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    rst $38
    stop
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    jp z, $0051

    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    rst $38
    stop
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    rst $38
    stop
    nop
    ei

jr_002_76a2:
    ld l, a
    ld a, a
    ld a, [hl+]
    rst $38
    stop
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    rst $38
    stop
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    rst $38
    stop
    nop
    ei
    ld l, a
    ld a, a
    ld a, [hl+]
    rst $38
    stop
    nop
    rst $38
    ld a, a
    or l
    ld d, [hl]
    xor l
    dec [hl]
    rst $20
    inc e
    rst $38
    ld a, a
    rst $38
    rra
    rra
    ld b, $e7
    inc e
    rst $38
    ld a, a
    ld a, a
    ld h, d
    ld e, [hl]
    add hl, de
    rst $20
    inc e
    rst $38
    ld a, a
    inc l
    rlca
    push bc
    ld bc, $1ce7
    rst $38
    ld a, a
    adc b
    ld a, l
    add c
    ld a, h
    rst $20
    inc e
    rst $38
    ld a, a
    ld e, b
    ld e, $f4
    dec c
    rst $20
    inc e
    rst $38
    ld a, a
    ld a, [c]
    ld a, [hl]
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld d, $7c
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    reti


    ld [bc], a
    adc a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld d, a
    ld a, a
    ld a, [c]
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    rst $00
    inc c
    rst $00
    inc c
    rst $00
    inc c
    rst $38
    ld a, a
    rst $38
    inc bc
    jp c, $0002

    nop
    db $fc
    ld d, e
    or l
    ld d, [hl]
    xor l
    dec [hl]
    nop
    nop
    db $fc
    ld d, e
    ldh [$03], a
    nop
    ld a, h
    nop
    nop
    db $fc
    ld d, e
    ldh [$03], a
    rst $28
    nop
    nop
    nop
    db $fc
    ld d, e
    rst $38
    ld bc, $00ef
    nop
    nop
    db $fc
    ld d, e
    ldh [$03], a
    nop
    ld a, h
    rra
    nop
    db $fc
    ld d, e
    ldh [$03], a
    rst $28
    nop
    rra
    nop
    db $fc
    ld d, e
    or l
    ld d, [hl]
    xor l
    dec [hl]
    nop
    nop
    db $fc
    ld d, e
    ldh [$03], a
    nop
    ld a, h
    nop
    nop
    db $fc
    ld d, e
    ldh [$03], a
    rst $28
    nop
    nop
    nop
    db $fc
    ld d, e
    ld c, d
    ld a, [hl]
    call $007c
    nop
    db $fc
    ld d, e
    ldh [$03], a
    nop
    ld a, h
    rra
    nop
    db $fc
    ld d, e
    ldh [$03], a
    rst $28
    nop
    rra
    nop
    rst $38
    ld a, a
    sbc $62
    ld d, d
    ld c, d
    nop
    nop
    rst $38
    ld a, a
    ld l, d
    ld a, l
    ld d, d
    ld c, d
    nop
    nop
    rst $38
    ld a, a
    db $ec
    cpl
    ld d, d
    ld c, d
    nop
    nop
    rst $38
    ld a, a
    ld e, l
    rla
    ld d, d
    ld c, d
    nop
    nop
    rst $38
    ld a, a
    jr c, jr_002_7820

    jr @+$29

    nop
    nop
    rst $38
    ld a, a
    ld e, [hl]
    add hl, de
    jr jr_002_77de

    nop
    nop
    rst $38
    ld a, a
    rst $28
    inc bc
    jr jr_002_77e6

    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld a, l
    jr jr_002_77ee

    nop
    nop
    rst $38
    ld a, a
    xor a
    ld a, [hl]
    jr jr_002_77f6

    nop
    nop
    rst $38
    cpl
    rst $38
    dec de
    jr jr_002_77fe

    nop
    nop
    rst $38
    ld a, a
    ld [hl], b
    db $76
    reti


jr_002_77de:
    ld [bc], a
    nop
    nop
    rst $38
    ld a, a
    or l
    ld d, [hl]
    xor l

jr_002_77e6:
    dec [hl]
    nop
    nop
    rst $38
    ld a, a
    ld e, [hl]
    add hl, de
    rra

jr_002_77ee:
    nop
    nop
    nop
    rst $38
    ld a, a
    inc l
    rlca
    push bc

jr_002_77f6:
    ld bc, $0000
    rst $38
    ld a, a
    inc l
    rlca
    ld e, [hl]

jr_002_77fe:
    add hl, de
    nop
    nop
    rst $38
    ld a, a
    rst $38
    dec de
    db $f4
    dec c
    nop
    nop
    rst $38
    ld a, a
    rst $38
    dec de
    xor a
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    rst $38
    dec de
    db $f4
    dec c
    nop
    nop
    rst $38
    ld a, a
    rra
    ld d, a
    cp a
    ld a, l
    nop

jr_002_7820:
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_002_79c9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_002_7ec9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
