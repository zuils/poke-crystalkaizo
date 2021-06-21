; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $044", ROMX[$4000], BANK[$44]

Call_044_4000:
Jump_044_4000:
jr_044_4000:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_044_4000

    ret


Call_044_4007:
Jump_044_4007:
jr_044_4007:
    ld a, [hl+]
    ld [de], a
    or a
    ret z

    inc de
    inc bc
    jr jr_044_4007

Call_044_400f:
Jump_044_400f:
    push bc
    ld c, $00
    ld b, a
    dec b

jr_044_4014:
    ld a, [hl+]
    ld [de], a
    or a
    jr z, jr_044_4020

    inc de
    inc c
    dec b
    jr nz, jr_044_4014

    xor a
    ld [de], a

jr_044_4020:
    ld a, c
    pop bc
    add c
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ret


Call_044_4029:
Jump_044_4029:
    xor a
    ld hl, $ca3a
    ld [hl+], a
    ld [hl], a
    ret


    push de
    ld a, [$c988]
    cp $0c
    jr z, jr_044_4047

    cp $0e
    jr z, jr_044_4047

    cp $10
    jr z, jr_044_4047

    xor a
    ld [$c835], a
    ld a, [$c988]

jr_044_4047:
    ld d, $00
    ld e, a
    ld hl, $4070
    add hl, de
    ld a, [hl+]
    ld [$c988], a
    ld a, [hl]
    pop de
    ld hl, $3e60
    push hl
    ld h, a
    ld a, [$c988]
    ld l, a
    push hl
    ld a, $36
    cp l
    jr nz, jr_044_4066

    ld a, $42
    cp h

jr_044_4066:
    call nz, Call_044_40b4
    ld hl, $c986
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    dec d
    ld b, c
    ld [hl], $42
    sub c
    ld b, d
    xor h
    ld b, e
    jr c, jr_044_40be

    add $44
    ld a, b
    ld b, l
    add d
    ld b, l
    adc h
    ld b, l
    db $dd
    ld b, l
    rst $28
    ld b, [hl]
    ld d, a
    ld b, a
    rst $38
    ld b, a
    sbc c
    ld c, b
    and e
    ld c, b
    dec b
    ld c, c
    and h
    ld c, c
    ld sp, hl
    ld c, c
    ld e, e
    ld c, d
    inc a
    ld c, h
    sbc [hl]
    ld c, h
    db $dd
    ld c, l
    cp $51
    cp $53
    call c, $4140
    ld d, l
    sub [hl]
    ld d, l
    dec l
    ld d, [hl]
    inc l
    ld b, e
    adc h
    ld d, h
    db $10
    ld d, [hl]
    xor h
    ld b, e
    dec [hl]
    ld b, d
    ld b, b
    ld d, l

Call_044_40b4:
    push bc

jr_044_40b5:
    di
    ld a, [$c800]
    ld b, a
    ld a, [$c80b]
    ld c, a

jr_044_40be:
    ld a, [$c822]
    ei
    or a
    bit 0, a
    jr z, jr_044_40da

    ld a, b
    or a
    jr nz, jr_044_40b5

    ld a, c
    cp $04
    jr z, jr_044_40b5

    xor a
    ld [$c80f], a
    ld hl, $c821
    set 1, [hl]
    scf

jr_044_40da:
    pop bc
    ret


Call_044_40dc:
    xor a
    ldh [rTAC], a
    ld e, c
    ld b, a
    ld hl, $6089
    add hl, bc
    ld c, [hl]
    inc hl
    ldh a, [rKEY1]
    bit 7, a
    jr nz, jr_044_40f9

    ld a, e
    sra c
    ld a, e
    cp $04
    jr nc, jr_044_40f9

    ld de, $000f
    add hl, de

jr_044_40f9:
    ld a, c
    ldh [rTMA], a
    ldh [rTIMA], a
    ld a, [hl+]
    ld [$c81f], a
    ld [$c816], a
    ld a, [hl]
    ld [$c820], a
    ld [$c815], a
    ld c, $07
    ld a, $02
    ld [c], a
    ld a, $06
    ld [c], a
    ret


    ld hl, $c821
    bit 1, [hl]
    jr nz, jr_044_4120

    xor a
    ld l, a
    ld h, a
    ret


jr_044_4120:
    res 1, [hl]
    ld a, [$c80f]
    ld e, a
    cp $22
    jr z, jr_044_416a

    cp $23
    jr z, jr_044_416a

    cp $25
    jr z, jr_044_416a

    cp $26
    jr z, jr_044_418e

    cp $24
    jr z, jr_044_41a4

    cp $30
    jp z, Jump_044_41f8

    cp $31
    jp z, Jump_044_420d

    cp $32
    jr z, jr_044_41a4

    cp $33
    jr z, jr_044_41a4

    swap a
    and $0f
    cp $01
    jr z, jr_044_416a

    cp $00
    jr z, jr_044_415d

Jump_044_4158:
jr_044_4158:
    ld hl, $0000

Jump_044_415b:
    ld a, e
    ret


jr_044_415d:
    ld a, e
    add $15
    ld e, a
    xor a
    ld hl, $c810
    ld [hl+], a
    ld [hl], a
    ld hl, $c821

jr_044_416a:
    xor a
    ld [$c86d], a
    ld [hl], a
    ld [$c807], a
    inc a
    ld [$c86a], a
    ld hl, $c822
    res 0, [hl]
    res 5, [hl]
    ld hl, $cb47
    xor a
    ld [hl+], a
    inc a
    ld [hl], a
    call Call_044_5686
    ld a, $15
    cp e
    jr nz, jr_044_4158

    jr jr_044_41d7

jr_044_418e:
    ld a, [$c821]
    bit 4, a
    ld a, $01
    jr z, jr_044_416a

    ld a, $02
    ld [$c86a], a
    ld a, [$c805]
    ld [$c807], a
    jr jr_044_4158

jr_044_41a4:
    res 0, [hl]
    ld hl, $c822
    res 5, [hl]
    ld hl, $c821
    res 7, [hl]
    res 6, [hl]
    set 5, [hl]
    xor a
    ld [$c86d], a
    ld [$c9af], a
    ld a, $02
    ld [$c86a], a
    ld a, $04
    ld [$c807], a
    ld a, e
    cp $32
    jr z, jr_044_41d7

    cp $33
    jr z, jr_044_41d7

    cp $30
    jr z, jr_044_41d7

    cp $31
    jp nz, Jump_044_4158

jr_044_41d7:
    ld hl, $c810
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $32
    cp e
    jp nz, Jump_044_415b

    ld a, $03
    cp h
    jp nz, Jump_044_415b

    dec a
    cp l
    jr z, jr_044_41f2

    dec a
    cp l
    jp nz, Jump_044_415b

jr_044_41f2:
    ld bc, $c880
    jp Jump_044_415b


Jump_044_41f8:
    ld a, [$ca3c]
    cp $a4
    jr z, jr_044_41a4

    ld a, $03
    ld [$c86a], a
    ld hl, $c810
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_044_415b


Jump_044_420d:
    ld a, [$c810]
    cp $02
    jr z, jr_044_41a4

    cp $03
    jr z, jr_044_41a4

    ld a, $04
    ld [$c86a], a
    ld hl, $c810
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp Jump_044_415b


Call_044_4226:
Jump_044_4226:
    ld a, $21

jr_044_4228:
    ld [$c80f], a
    ld hl, $c821
    set 1, [hl]
    ret


Call_044_4231:
Jump_044_4231:
    ld a, $20
    jr jr_044_4228

    nop
    ld a, [$c988]
    push af
    push bc
    push hl
    xor a
    ldh [rTAC], a
    ldh a, [rIF]
    and $1b
    ldh [rIF], a
    call Call_044_4029
    ld bc, $0452
    ld hl, $c800

jr_044_424e:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_044_424e

    ld a, [$c822]
    set 6, a
    ld [$c822], a
    pop hl
    ld a, l
    ld [$c981], a
    ld a, h
    ld [$c982], a
    pop bc
    ld hl, $c983
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ld hl, $c86e
    ld a, e
    ld [hl+], a
    ld [hl], d
    xor a
    ld [$c819], a
    ld c, $0c
    call Call_044_40dc
    call Call_044_44b0
    pop af
    cp $35
    jr nz, jr_044_4289

    ld a, $2b
    jr jr_044_428b

jr_044_4289:
    ld a, $0a

jr_044_428b:
    ld [$c86a], a
    jp Jump_044_4432


    ld a, [$c821]
    bit 1, a
    jr z, jr_044_42a6

    ld a, [$c80f]
    cp $14
    jr z, jr_044_42b3

    cp $25
    jr z, jr_044_42b3

    ld a, [$c821]

jr_044_42a6:
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $01
    jp nz, Jump_044_4226

jr_044_42b3:
    xor a
    ldh [rTAC], a
    xor a
    ld [$c819], a
    ld a, l
    ld b, h
    ld hl, $c880
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld a, [$c870]
    ld c, a
    call Call_044_40dc
    ld hl, $c829
    ld a, $72
    ld [hl+], a
    ld a, $c8
    ld [hl], a
    ld de, $cb47
    ld b, $05
    ld hl, $605e
    call Call_044_4000
    ld a, [$c882]
    ld c, a
    or a
    jr z, jr_044_42f2

    cp $80
    jr nc, jr_044_42f2

    ld c, $80
    jr jr_044_42f4

jr_044_42f2:
    ld a, $80

jr_044_42f4:
    ld b, a
    inc a
    ld [de], a
    inc de
    ld a, $80
    add c
    ld hl, $c882
    ld [hl+], a
    ld a, [hl]
    ld [de], a
    inc de
    add $80
    ld [hl], a
    ld hl, $c880
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, b
    call Call_044_4000
    ld a, l
    ld [$c880], a
    ld a, h
    ld [$c881], a
    ld b, c
    inc b
    call Call_044_5f63
    call Call_044_44b0
    ld a, $2e
    ld [$c86a], a
    ld hl, $c821
    res 1, [hl]
    set 0, [hl]
    ret


    ld a, [$c821]
    bit 1, a
    jp nz, Jump_044_4226

    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $01
    jp nz, Jump_044_4226

    xor a
    ldh [rTAC], a
    ld [$c819], a
    ld hl, $c880
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld hl, $c829
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld a, [$c870]
    ld c, a
    call Call_044_40dc
    ld de, $cb47
    ld b, $06
    ld hl, $6046
    call Call_044_4000
    ld a, [$c883]
    ld [de], a
    inc de
    ld a, [$c882]
    ld c, a
    or a
    jr z, jr_044_437f

    cp $80
    jr nc, jr_044_437f

    ld c, $80
    jr jr_044_4381

jr_044_437f:
    ld a, $80

jr_044_4381:
    ld [de], a
    inc de
    ld b, $02
    call Call_044_5f63
    call Call_044_44b0
    ld a, $2d
    ld [$c86a], a
    jp Jump_044_4432


Call_044_4393:
    ld c, $ff
    ld a, [c]
    or $0c
    ld [c], a
    ret


Call_044_439a:
    ld b, $00

jr_044_439c:
    inc b
    jr z, jr_044_43a3

    ld a, [hl+]
    or a
    jr nz, jr_044_439c

jr_044_43a3:
    ld a, b
    cp c
    jr nc, jr_044_43aa

    cp $02
    ret


jr_044_43aa:
    scf
    ret


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $01
    jp nz, Jump_044_4226

    push hl
    ld c, $15
    call Call_044_439a
    jr c, jr_044_43d2

    ld c, $22
    call Call_044_439a
    jr c, jr_044_43d2

    ld c, $12
    call Call_044_439a
    jr nc, jr_044_43d6

jr_044_43d2:
    pop hl
    jp Jump_044_4231


jr_044_43d6:
    xor a
    ldh [rTAC], a
    ld [$c86d], a
    ld [$c97a], a
    ld a, [$c870]
    ld c, a
    call Call_044_40dc
    ld hl, $c829
    ld a, $80
    ld [hl+], a
    ld a, $c8
    ld [hl], a
    call Call_044_4485
    push hl
    ld b, a
    call Call_044_5f63
    ld b, $05
    ld hl, $6037
    ld de, $cb74
    call Call_044_4000
    inc de
    inc de
    pop hl
    ld bc, $0000
    call Call_044_4007
    ld a, c
    ld [$cb7a], a
    ld [$c86b], a
    push de
    inc de
    ld bc, $0000
    ld a, $20
    call Call_044_400f
    ld l, e
    ld h, d
    pop de
    ld a, c
    ld [de], a
    ld a, [$c86b]
    add c
    add $0a
    ld [$cb79], a
    call Call_044_44b0
    ld a, $0b
    ld [$c86a], a

Jump_044_4432:
jr_044_4432:
    ld hl, $c821
    set 0, [hl]
    ret


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $01
    jp nz, Jump_044_4226

    push hl
    ld c, $15
    call Call_044_439a
    jr nc, jr_044_4454

    pop hl
    jp Jump_044_4231


jr_044_4454:
    xor a
    ldh [rTAC], a
    ld [$c97a], a
    ld a, [$c870]
    ld c, a
    call Call_044_40dc
    ld hl, $c98f
    ld a, $81
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $ff
    ld [$c86e], a
    call Call_044_4485
    ld b, a
    call Call_044_5f63
    call Call_044_44b0
    ld a, $0c
    ld [$c86a], a
    jr jr_044_4432

Call_044_4485:
    ld de, $cb47
    ld hl, $601d
    ld b, $06
    call Call_044_4000
    pop bc
    pop hl
    push bc
    ld a, [$c818]
    cp $8c
    jr c, jr_044_449e

    ld a, $03
    jr jr_044_44a1

jr_044_449e:
    ld a, [$c871]

jr_044_44a1:
    ld [de], a
    inc de
    ld bc, $0001
    ld a, $14
    call Call_044_400f
    ld a, c
    ld [$cb4c], a
    ret


Call_044_44b0:
    xor a
    ld [$c81e], a
    call Call_044_4393
    xor a
    ld [$c86b], a
    ld de, $0001
    ld hl, $6000
    ld b, $01
    jp Jump_044_5f07


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $04
    jr z, jr_044_4526

    cp $03
    jr z, jr_044_4526

    cp $02
    jp nz, Jump_044_4226

    ld hl, $c822
    bit 4, [hl]
    jr nz, jr_044_4507

    ld a, $02
    ld [$c86b], a
    ld a, $a2
    ld [$c81e], a
    ld de, $000a
    ld hl, $603c
    ld b, $05
    call Call_044_5f07

jr_044_44fa:
    ld a, $0e
    ld [$c86a], a
    ld hl, $c821
    set 0, [hl]
    res 3, [hl]
    ret


jr_044_4507:
    ld a, [$c807]
    or a
    jr nz, jr_044_451f

    ld a, $01
    ld [$c86a], a
    ld hl, $c822
    res 4, [hl]
    ld hl, $c821
    ld a, [hl]
    and $17
    ld [hl], a
    ret


jr_044_451f:
    ld a, $02
    ld [$c86b], a
    jr jr_044_44fa

jr_044_4526:
    call Call_044_6724
    xor a
    ld [$c86b], a
    ld de, $cb67
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld a, [$c86c]
    ld [de], a
    inc de
    ld b, $01
    call Call_044_5f63
    ld de, $cb47
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld a, $07
    ld [de], a
    inc de
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    ld hl, $60c1
    call Call_044_4007
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld [$c81e], a
    ld hl, $cb47
    ld b, $05
    call Call_044_5f07
    ld a, $0e
    ld [$c86a], a
    jp Jump_044_4432


    ld b, $25
    call Call_044_4596
    or a
    jp nz, Jump_044_75ba

    ret


    ld b, $26
    call Call_044_4596
    or a
    jp nz, Jump_044_759d

    ret


    ld b, $27
    call Call_044_4596
    or a
    jp nz, Jump_044_75ad

    ret


Call_044_4596:
    ld a, [$c821]
    bit 0, a
    jr nz, jr_044_45d9

    ld a, [$c86a]
    cp $01
    jr nz, jr_044_45d9

    ld a, [$c835]
    or a
    ret nz

    ld a, b
    ld [$cb36], a
    xor a
    ldh [rTAC], a
    ld a, e
    ld [$c86e], a
    ld a, d
    ld [$c86f], a
    xor a
    ld [$c819], a
    ld a, [$c870]
    ld c, a
    call Call_044_40dc
    ld hl, $c829
    ld a, $80
    ld [hl+], a
    ld a, $c8
    ld [hl], a
    call Call_044_44b0
    ld a, [$cb36]
    ld [$c86a], a
    xor a
    jp Jump_044_4432


jr_044_45d9:
    pop hl
    jp Jump_044_4226


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $01
    jp nz, Jump_044_4226

    xor a
    ldh [rTAC], a
    ld a, [$c870]
    ld c, a
    call Call_044_40dc
    ld hl, $c98f
    ld a, $81
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $ff
    ld [$c86e], a
    call Call_044_44b0
    ld a, $0d
    ld [$c86a], a
    jp Jump_044_4432


Jump_044_4615:
    ld b, $15
    ld [$c86e], a
    or a
    jr z, jr_044_4625

    dec a
    jr z, jr_044_462c

    dec a
    jp z, Jump_044_46c1

    ret


jr_044_4625:
    ld a, $19
    ld hl, $c83e
    jr jr_044_4631

jr_044_462c:
    ld a, $6e
    ld hl, $c852

Jump_044_4631:
jr_044_4631:
    push hl
    push bc
    ld [$cba2], a
    ld hl, $c829
    ld a, $9d
    ld [hl+], a
    ld a, $cb
    ld [hl], a
    xor a
    ld [$cba1], a
    ld [$c86b], a
    ld [$c9af], a
    ld de, $cb97
    ld hl, $607d
    ld b, $06
    call Call_044_4000
    ld de, $cb47
    ld hl, $6063
    ld b, $05
    call Call_044_4000
    pop bc
    pop hl
    push de
    inc de
    ld a, b
    ld bc, $0000
    call Call_044_400f
    ld a, c
    pop hl
    ld [hl], a
    ld b, c
    call Call_044_5f63
    ld a, [$c86e]
    cp $02
    jr nz, jr_044_46ac

    ld a, [$cabc]
    or a
    jr z, jr_044_46ac

    ld hl, $c995
    ld a, [hl+]
    cp $99
    jr nz, jr_044_46ac

    ld a, [hl+]
    cp $66
    jr nz, jr_044_46ac

    ld a, [hl+]
    cp $23
    jr nz, jr_044_46ac

    ld a, $02
    ld [$c86e], a
    dec a
    ld [$c86b], a
    ld a, $a3
    ld de, $0010
    ld hl, $c995
    call Call_044_5f02
    ld a, $0f
    ld [$c86a], a
    jp Jump_044_4432


jr_044_46ac:
    ld hl, $cb47
    ld a, $a8
    ld [$c81e], a
    ld b, $05
    call Call_044_5f07
    ld a, $0f
    ld [$c86a], a
    jp Jump_044_4432


Jump_044_46c1:
    ld b, $50
    ld hl, $c876
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0007
    add hl, de
    ld de, $c8ff

jr_044_46d0:
    ld a, [hl+]
    ld [de], a
    cp $2f
    jr z, jr_044_46da

    inc de
    dec b
    jr nz, jr_044_46d0

jr_044_46da:
    xor a
    ld [de], a
    dec hl
    ld a, l
    ld [$c876], a
    ld a, h
    ld [$c877], a
    ld hl, $c8ff
    ld a, $50
    ld b, $40
    jp Jump_044_4631


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $02
    jp nz, Jump_044_4226

    ld a, [$c86d]
    or a
    jp nz, Jump_044_4226

    push hl
    ld c, $20
    call Call_044_439a
    jr nc, jr_044_4712

    pop hl
    jp Jump_044_4231


jr_044_4712:
    xor a
    ld [$c86b], a
    ld de, $cba7
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld de, $cbb7
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    inc de
    inc de
    ld bc, $0001
    ld hl, $609e
    call Call_044_4007
    pop hl
    push hl
    ld b, $ff

jr_044_473b:
    inc b
    ld a, [hl+]
    or a
    jr z, jr_044_4744

    cp $40
    jr nz, jr_044_473b

jr_044_4744:
    ld a, c
    add b
    add $02
    ld [$cbbc], a
    pop hl
    call Call_044_4000
    call Call_044_695e
    ld a, $00
    jp Jump_044_4615


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $03
    jp nz, Jump_044_4226

    ld a, [$c98a]
    or a
    jp nz, Jump_044_4226

    push hl

jr_044_476f:
    ld a, [hl+]
    or a
    jr nz, jr_044_476f

    ld a, [hl]
    or a
    jp z, Jump_044_47fb

    pop hl
    push hl
    ld c, $20
    call Call_044_439a
    jr c, jr_044_47fb

jr_044_4781:
    ld c, $81
    call Call_044_439a
    jr c, jr_044_47fb

    xor a
    cp [hl]
    jr nz, jr_044_4781

    call Call_044_6724
    xor a
    ld [$c86b], a
    ld de, $cb47
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld a, [$c86c]
    ld [de], a
    inc de
    ld b, $01
    call Call_044_5f63
    ld de, $cb53
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld de, $cb59
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    ld de, $cb5a
    ld hl, $60a4
    call Call_044_4007
    pop hl
    call Call_044_4007
    ld a, $3e
    ld [de], a
    inc de
    inc c
    ld a, l
    ld [$c87c], a
    ld a, h
    ld [$c87d], a
    call Call_044_695e
    ld a, c
    ld [$cb58], a
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld [$c81e], a
    ld hl, $cb53
    ld d, $00
    ld e, c
    ld b, $05
    call Call_044_5f07
    ld a, $15
    ld [$c86a], a
    jp Jump_044_4432


Jump_044_47fb:
jr_044_47fb:
    pop hl
    jp Jump_044_4231


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $03
    jp nz, Jump_044_4226

    ld a, [$c98a]
    or a
    jp z, Jump_044_4226

    ld a, c
    or b
    jp z, Jump_044_4231

    ld a, l
    ld [$c87c], a
    ld a, h
    ld [$c87d], a
    ld hl, $c87e
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, d
    ld [$c86f], a
    call Call_044_6724
    ld hl, $c98a
    ld a, [hl]
    and $01
    xor $01
    ld [$c86b], a
    inc [hl]
    ld de, $cb47
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld de, $cb4d
    ld a, [$c86c]
    ld [de], a
    inc de
    ld b, $01
    call Call_044_5f63
    ld de, $cbdd
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld de, $cbe3
    ld a, [$c86c]
    ld [de], a
    ld a, [$c86b]
    or a
    jr nz, jr_044_4891

    ld bc, $0001
    ld de, $cbe4
    ld hl, $60ba
    call Call_044_4007
    ld a, c
    ld [$cbe2], a
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld [$c81e], a
    ld de, $0011
    ld hl, $cbdd
    ld b, $05
    call Call_044_5f07

jr_044_4891:
    ld a, $16
    ld [$c86a], a
    jp Jump_044_4432


    ld a, [$c86a]
    cp $03
    jp nz, Jump_044_4226

    jr jr_044_48ab

    ld a, [$c86a]
    cp $04
    jp nz, Jump_044_4226

jr_044_48ab:
    ld hl, $c821
    bit 0, [hl]
    jp nz, Jump_044_4226

    call Call_044_6724
    xor a
    ld [$c86b], a
    ld de, $cb67
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld a, [$c86c]
    ld [de], a
    inc de
    ld b, $01
    call Call_044_5f63
    ld de, $cb47
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld a, $07
    ld [de], a
    inc de
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    ld hl, $60c1
    call Call_044_4007
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld [$c81e], a
    ld hl, $cb47
    ld b, $05
    call Call_044_5f07
    ld a, $17
    ld [$c86a], a
    jp Jump_044_4432


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $02
    jp nz, Jump_044_4226

    ld a, [$c86d]
    or a
    jp nz, Jump_044_4226

    xor a
    ld [$c86b], a
    push hl
    ld c, $20
    call Call_044_439a
    jr c, jr_044_492f

    ld c, $22
    call Call_044_439a
    jr nc, jr_044_4933

jr_044_492f:
    pop hl
    jp Jump_044_4231


jr_044_4933:
    ld de, $cba7
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    inc de
    inc de
    ld hl, $60c8
    call Call_044_4007
    pop hl
    push hl
    ld b, $ff

jr_044_494a:
    inc b
    ld a, [hl+]
    or a
    jr z, jr_044_4953

    cp $40
    jr nz, jr_044_494a

jr_044_4953:
    ld a, b
    add $06
    ld c, a
    ld [$cbac], a
    pop hl
    ld de, $cbb3
    call Call_044_4000

jr_044_4961:
    ld a, [hl+]
    or a
    jr nz, jr_044_4961

    call Call_044_695e
    ld a, c
    ld [$cbac], a
    ld bc, $0006
    ld de, $cbf3
    ld a, $20
    call Call_044_400f
    call Call_044_695e
    ld a, c
    ld [$cbec], a
    ld de, $cbe7
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld de, $cbee
    ld hl, $60ce
    ld b, $05
    call Call_044_4000
    ld de, $cbc7
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld a, $01
    jp Jump_044_4615


    ld hl, $c821
    bit 0, [hl]
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $04
    jp nz, Jump_044_4226

    ld a, e
    ld [$c86e], a
    ld a, d
    ld [$c86f], a
    xor a
    ld [$c86b], a
    call Call_044_6729
    ld de, $cb47
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld a, $07
    ld [de], a
    inc de
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    ld hl, $60d4
    call Call_044_4007
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld [$c81e], a
    ld hl, $cb47
    ld b, $05
    call Call_044_5f07
    ld a, $18
    ld [$c86a], a
    jp Jump_044_4432


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $04
    jp nz, Jump_044_4226

    xor a
    ld [$c86b], a
    ld a, e
    ld [$c86e], a
    ld a, d
    ld [$c86f], a
    ld a, l
    or h
    jp z, Jump_044_4231

    push hl
    call Call_044_6729
    ld de, $cb47
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld a, $0d
    ld [de], a
    inc de
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    ld hl, $60db
    call Call_044_4007
    ld de, $cb53
    pop hl
    call Call_044_4d37
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld [$c81e], a
    ld hl, $cb47
    ld b, $05
    call Call_044_5f07
    ld a, $1d
    ld [$c86a], a
    jp Jump_044_4432


    ld a, [$c821]
    bit 2, a
    jr z, jr_044_4a6d

    ld a, [$c86a]
    cp $1a
    jp nz, Jump_044_4226

    jp Jump_044_4af4


jr_044_4a6d:
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $04
    jp nz, Jump_044_4226

    ld a, l
    or h
    jp z, Jump_044_4231

    ld a, l
    ld [$c86e], a
    ld a, h
    ld [$c86f], a
    ld hl, $c827
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc de
    inc de
    dec bc
    dec bc
    ld hl, $c98f
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ld hl, $c829
    ld a, $80
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    xor a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [$c86b], a
    ld de, $cb47
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld a, $0d
    ld [de], a
    inc de
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    ld hl, $60e8
    call Call_044_4007
    ld de, $cb53
    ld hl, $c86e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_044_4d37
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld [$c81e], a
    ld hl, $cb47
    ld b, $05
    call Call_044_5f07
    ld a, $1a
    ld [$c86a], a
    jp Jump_044_4432


Jump_044_4af4:
    ld hl, $c827
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc de
    inc de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld e, [hl]
    ld a, b
    or c
    ld [$c86e], a
    ld [$c86f], a
    jr z, jr_044_4b5c

    dec bc
    dec bc
    ld a, [$c993]
    or a
    jp nz, Jump_044_4bd5

    ld a, [$c994]
    or a
    jr z, jr_044_4b1c

    ld e, a

Jump_044_4b1c:
jr_044_4b1c:
    xor a
    ld [$c994], a
    cp b
    jr nz, jr_044_4b5c

    ld a, e
    cp c
    jr c, jr_044_4b5c

    push bc
    sub c
    ld [hl], a
    ld b, c
    ld hl, $c82d
    ld a, [$c993]
    add c
    ld [hl+], a
    ld a, b
    adc $00
    ld [hl], a
    xor a
    ld [$c993], a
    ld hl, $ca3f
    ld a, [hl+]
    inc hl
    sub e
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    call Call_044_4000
    pop bc
    ld hl, $c827
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_044_4b5c:
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c82d
    ld a, [$c993]
    add e
    ld [hl+], a
    ld a, $00
    adc $00
    ld [hl], a
    xor a
    ld [$c993], a
    ld a, [$c86e]
    or a
    jr z, jr_044_4b9b

    ld b, e
    ld hl, $ca3f
    ld a, [hl+]
    inc hl
    sub e
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    call Call_044_4000
    ld hl, $c829
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a

jr_044_4b9b:
    call Call_044_67f3
    jr z, jr_044_4bbb

    di
    ld hl, $c821
    res 2, [hl]
    ld a, $01
    ld [$c86b], a
    ld de, $000b
    ld a, $95
    ld [$c81e], a
    ld hl, $cbc7
    ld b, $05
    jp Jump_044_5f07


jr_044_4bbb:
    ld a, $04
    ld [$c86a], a
    ld hl, $c821
    res 0, [hl]
    res 2, [hl]
    ld hl, $c827
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $c82d
    ld b, $02
    jp Jump_044_4000


Jump_044_4bd5:
    ld e, a
    xor a
    cp b
    jr nz, jr_044_4c05

    ld a, e
    cp c
    jr c, jr_044_4c05

    ld b, c
    ld hl, $c993
    ld a, [hl]
    sub c
    ld [hl], a
    ld a, $80
    sub e
    ld e, a
    ld d, $00
    ld hl, $c880
    add hl, de
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    call Call_044_4000
    ld hl, $c827
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    ld [hl+], a
    xor a
    ld [hl], a
    ret


jr_044_4c05:
    push hl
    push bc
    ld a, [$c993]
    ld b, a
    ld a, $80
    sub e
    ld e, a
    ld d, $00
    ld hl, $c880
    add hl, de
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    call Call_044_4000
    ld a, e
    ld [$c829], a
    ld a, d
    ld [$c82a], a
    pop bc
    ld a, [$c993]
    ld e, a
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    ld a, [$c994]
    ld e, a
    pop hl
    jp Jump_044_4b1c


    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $04
    jp nz, Jump_044_4226

    ld a, l
    or h
    jp z, Jump_044_4231

    ld a, l
    ld [$c86e], a
    ld a, h
    ld [$c86f], a
    call Call_044_6729
    ld de, $cb47
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld a, $0d
    ld [de], a
    inc de
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    ld hl, $60f5
    call Call_044_4007
    ld de, $cb53
    ld hl, $c86e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_044_4d37
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld [$c81e], a
    ld hl, $cb47
    ld b, $05
    call Call_044_5f07
    ld a, $1b
    ld [$c86a], a
    jp Jump_044_4432


    ld a, [$c821]
    bit 2, a
    jr z, jr_044_4cb0

    ld a, [$c86a]
    cp $1c
    jp nz, Jump_044_4226

    jp Jump_044_4af4


jr_044_4cb0:
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $04
    jp nz, Jump_044_4226

    ld a, l
    or h
    jp z, Jump_044_4231

    ld a, l
    ld [$c86e], a
    ld a, h
    ld [$c86f], a
    ld hl, $c827
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc de
    inc de
    dec bc
    dec bc
    ld hl, $c98f
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ld hl, $c829
    ld a, $80
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    xor a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [$c86b], a
    ld de, $cb47
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    ld a, $0e
    ld [de], a
    inc de
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    ld hl, $6102
    call Call_044_4007
    ld de, $cb52
    ld hl, $c86e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_044_4d37
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld [$c81e], a
    ld hl, $cb47
    ld b, $05
    call Call_044_5f07
    ld a, $1c
    ld [$c86a], a
    jp Jump_044_4432


Call_044_4d37:
    push bc
    push de
    ld b, $00

jr_044_4d3b:
    ld a, $27
    cp h
    jr c, jr_044_4d49

    jr nz, jr_044_4d52

    ld a, $10
    cp l
    jr z, jr_044_4d49

    jr nc, jr_044_4d52

jr_044_4d49:
    inc b
    ld a, b
    ld bc, $d8f0
    add hl, bc
    ld b, a
    jr jr_044_4d3b

jr_044_4d52:
    ld a, $30
    or b
    ld [de], a
    inc de
    ld b, $00

jr_044_4d59:
    ld a, $03
    cp h
    jr c, jr_044_4d67

    jr nz, jr_044_4d70

    ld a, $e8
    cp l
    jr z, jr_044_4d67

    jr nc, jr_044_4d70

jr_044_4d67:
    inc b
    ld a, b
    ld bc, $fc18
    add hl, bc
    ld b, a
    jr jr_044_4d59

jr_044_4d70:
    ld a, $30
    or b
    ld [de], a
    inc de
    ld b, $00

jr_044_4d77:
    ld a, $00
    cp h
    jr nz, jr_044_4d83

    ld a, $64
    cp l
    jr z, jr_044_4d83

    jr nc, jr_044_4d8c

jr_044_4d83:
    inc b
    ld a, b
    ld bc, $ff9c
    add hl, bc
    ld b, a
    jr jr_044_4d77

jr_044_4d8c:
    ld a, $30
    or b
    ld [de], a
    inc de
    ld b, $00
    ld a, l

jr_044_4d94:
    cp $0a
    jr c, jr_044_4d9d

    sub $0a
    inc b
    jr jr_044_4d94

jr_044_4d9d:
    ld l, a
    ld a, $30
    or b
    ld [de], a
    inc de
    ld a, $30
    or l
    ld [de], a
    pop de
    ld l, e
    ld h, d
    ld b, $05

jr_044_4dac:
    ld a, [hl]
    cp $30
    jr nz, jr_044_4db7

    inc hl
    dec b
    jr nz, jr_044_4dac

    jr jr_044_4dd5

jr_044_4db7:
    ld a, $05
    cp b
    jr z, jr_044_4dd5

    sub b
    ld c, a
    ld a, [$cb4c]
    sub c
    ld c, a
    ld [$cb4c], a
    push hl
    ld b, $01

jr_044_4dc9:
    inc b
    ld a, [hl+]
    cp $0d
    jr nz, jr_044_4dc9

    pop hl
    call Call_044_4000
    pop hl
    ret


jr_044_4dd5:
    pop bc

jr_044_4dd6:
    ld a, [de]
    inc de
    cp $0a
    jr nz, jr_044_4dd6

    ret


    ld a, [$c821]
    bit 2, a
    ld a, [$c86a]
    jr z, jr_044_4e00

    cp $13
    jp z, Jump_044_5044

    cp $1f
    jp z, Jump_044_5044

    cp $21
    jp z, Jump_044_5044

    jp Jump_044_4226


Jump_044_4df9:
jr_044_4df9:
    pop hl

Jump_044_4dfa:
    pop hl
    pop hl
    pop hl

jr_044_4dfd:
    jp Jump_044_4231


jr_044_4e00:
    cp $02
    jp nz, Jump_044_4226

    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86d]
    or a
    jp nz, Jump_044_4226

    ld a, l
    ld [$c9b5], a
    ld a, h
    ld [$c9b6], a
    xor a
    ld [$c989], a
    ld [$c9a5], a
    ld [$c98a], a
    ld [$c993], a
    ld a, [hl+]
    ld [$c833], a
    ld a, [hl+]
    ld [$c834], a
    inc hl
    inc hl
    ld a, l
    ld [$c97f], a
    ld a, h
    ld [$c980], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $80
    cp l
    jr nz, jr_044_4e4a

    ld a, $c8
    cp h
    jr z, jr_044_4dfd

jr_044_4e4a:
    push hl
    push de
    push bc
    push hl
    ld b, $07
    ld de, $4fad

jr_044_4e53:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_044_4df9

    inc hl
    dec b
    jr nz, jr_044_4e53

    push hl
    ld b, $23
    ld c, $00
    ld de, $4fd9

jr_044_4e64:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_044_4e70

    inc hl
    dec b
    jr nz, jr_044_4e64

    pop hl
    jr jr_044_4df9

jr_044_4e70:
    pop hl
    push hl
    ld b, $24
    ld c, $00
    ld de, $5020

jr_044_4e79:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_044_4e86

    inc hl
    dec b
    jr nz, jr_044_4e79

    pop hl
    jp Jump_044_4df9


jr_044_4e86:
    pop hl
    push hl
    ld b, $24
    ld c, $00
    ld de, $4ffc

jr_044_4e8f:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_044_4ea2

    inc hl
    dec b
    jr nz, jr_044_4e8f

    pop hl
    ld a, $01
    ld [$c98a], a
    ld c, $01
    jr jr_044_4eb3

jr_044_4ea2:
    pop hl
    ld b, $25
    ld c, $00
    ld de, $4fb4

jr_044_4eaa:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_044_4ecb

    inc hl
    dec b
    jr nz, jr_044_4eaa

jr_044_4eb3:
    ld hl, $c97f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $12
    call Call_044_439a
    jp c, Jump_044_4df9

    ld c, $12
    call Call_044_439a
    jp c, Jump_044_4df9

    ld c, $01

jr_044_4ecb:
    ld a, c
    ld [$c98f], a
    ld [$cabc], a
    pop hl
    call Call_044_51d7
    ld a, b
    cp $04
    jr c, jr_044_4ee3

    jp nz, Jump_044_4dfa

    xor a
    or c
    jp nz, Jump_044_4dfa

jr_044_4ee3:
    ld hl, $c98b
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop bc
    pop de
    pop hl
    ld a, l
    ld [$c876], a
    ld a, h
    ld [$c877], a
    ld hl, $c872
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc hl
    inc hl
    xor a
    ld [$c994], a

Jump_044_4f07:
    ld hl, $c833
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    jr z, jr_044_4f12

    xor a
    ld [hl], a

jr_044_4f12:
    ld hl, $c991
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c866
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    jr nz, jr_044_4f28

    ld a, $02
    jp Jump_044_4615


jr_044_4f28:
    ld a, $02
    ld [$c86e], a
    ld a, $1f
    ld [$cb51], a
    ld a, $90
    ld [$cb52], a
    ld a, $01
    ld [$c86b], a
    ld de, $cb47
    ld hl, $607d
    ld b, $06
    call Call_044_4000
    ld hl, $c866
    ld b, $04
    call Call_044_4000
    inc de
    inc de
    ld b, $06
    call Call_044_5f63
    ld a, [$cabc]
    or a
    jr z, jr_044_4f95

    ld hl, $c995
    ld a, [hl+]
    cp $99
    jr nz, jr_044_4f8a

    ld a, [hl+]
    cp $66
    jr nz, jr_044_4f8a

    ld a, [hl+]
    cp $23
    jr nz, jr_044_4f8a

    ld a, $02
    ld [$c86e], a
    dec a
    ld [$c86b], a
    ld a, $a3
    ld de, $0010
    ld hl, $c995
    call Call_044_5f02
    ld a, $0f
    ld [$c86a], a
    jp Jump_044_4432


jr_044_4f8a:
    ld hl, $cb47
    ld de, $c995
    ld b, $10
    call Call_044_4000

jr_044_4f95:
    ld de, $0010
    ld hl, $cb47
    ld a, $a3
    ld [$c81e], a
    ld b, $05
    call Call_044_5f07
    ld a, $0f
    ld [$c86a], a
    jp Jump_044_4432


    ld l, b
    ld [hl], h
    ld [hl], h
    ld [hl], b
    ld a, [hl-]
    cpl
    cpl
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld l, $64
    ld h, c
    ld [hl], h
    ld h, c
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $6e
    ld h, l
    ld l, $6a
    ld [hl], b
    cpl
    ld h, e
    ld h, a
    ld h, d
    cpl
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld l, $64
    ld h, c
    ld [hl], h
    ld h, c
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $6e
    ld h, l
    ld l, $6a
    ld [hl], b
    cpl
    ld h, e
    ld h, a
    ld h, d
    cpl
    ld [hl], l
    ld [hl], b
    ld l, h
    ld l, a
    ld h, c
    ld h, h
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld l, $64
    ld h, c
    ld [hl], h
    ld h, c
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $6e
    ld h, l
    ld l, $6a
    ld [hl], b
    cpl
    ld h, e
    ld h, a
    ld h, d
    cpl
    ld [hl], l
    ld [hl], h
    ld l, c
    ld l, h
    ld l, c
    ld [hl], h
    ld a, c
    ld h, a
    ld h, c
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld a, c
    ld l, $64
    ld h, c
    ld [hl], h
    ld h, c
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $6e
    ld h, l
    ld l, $6a
    ld [hl], b
    cpl
    ld h, e
    ld h, a
    ld h, d
    cpl
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a

Jump_044_5044:
    ld hl, $c827
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc de
    inc de
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld e, [hl]
    ld a, b
    or c
    ld [$c86e], a
    ld [$c86f], a
    dec bc
    dec bc
    jp z, Jump_044_51ca

    ld a, [$c991]
    or a
    call nz, Call_044_515f
    xor a
    cp e
    jp z, Jump_044_50eb

    xor a
    cp b
    jr nz, jr_044_50ac

    ld a, e
    cp c
    jr c, jr_044_50ac

    push bc
    sub c
    ld [hl], a
    ld b, c
    ld hl, $c82d
    ld a, c
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $ca3f
    ld a, [hl+]
    inc hl
    sub e
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    call Call_044_4000
    pop bc
    ld a, [$c991]
    ld l, a
    ld h, $00
    add hl, bc
    ld c, l
    ld b, h
    xor a
    ld [$c991], a
    ld hl, $c827
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ret


jr_044_50ac:
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $c82d
    ld a, [$c991]
    add e
    ld [hl+], a
    ld a, $00
    adc $00
    ld [hl], a
    xor a
    ld [$c991], a
    ld a, [$c86e]
    or a
    jr z, jr_044_50eb

    ld b, e
    ld hl, $ca3f
    ld a, [hl+]
    inc hl
    sub e
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    call Call_044_4000
    ld hl, $c829
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a

Jump_044_50eb:
jr_044_50eb:
    di
    ld a, $02
    ld [$c989], a
    ld hl, $c821
    res 2, [hl]
    ld a, [$ca3c]
    cp $9f
    jr z, jr_044_5144

    ld de, $000b
    ld a, $95
    ld [$c81e], a
    ld hl, $cb47
    ld b, $05
    call Call_044_5f07
    ld a, $01
    ld [$c86b], a
    ret


    ld hl, $c827
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c82d]
    ld [hl+], a
    ld a, [$c82e]
    ld [hl], a
    ld hl, $c98f
    inc [hl]
    ld a, $0f
    ld [$c86a], a
    ld a, $01
    ld [$c86b], a
    ld a, [$c86d]
    ld [$c86e], a
    xor a
    ld [$c989], a
    ld a, $a3
    ld de, $0010
    ld hl, $c995
    jp Jump_044_5f02


jr_044_5144:
    res 0, [hl]
    ld hl, $c827
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c82d]
    ld [hl+], a
    ld a, [$c82e]
    ld [hl], a
    ld a, $02
    ld [$c86a], a
    xor a
    ld [$c86d], a
    ei
    ret


Call_044_515f:
    ld e, a
    xor a
    cp b
    jr nz, jr_044_5168

    ld a, c
    cp e
    jr c, jr_044_51a2

jr_044_5168:
    push hl
    push bc
    ld b, e
    ld c, e
    ld a, [$c993]
    sub e
    ld e, a
    ld d, $00
    ld hl, $c880
    add hl, de
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    call Call_044_4000
    ld hl, $c829
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld e, c
    ld a, c
    ld hl, $c82d
    ld [hl+], a
    xor a
    ld [hl], a
    pop bc
    ld a, c
    sub e
    ld c, a
    ld a, b
    sbc $00
    ld b, a
    ld a, [$c992]
    ld [$c82b], a
    ld e, a
    pop hl
    ret


jr_044_51a2:
    ld a, e
    sub c
    ld [$c991], a
    ld a, [$c993]
    sub e
    ld e, a
    ld d, $00
    ld hl, $c880
    add hl, de
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    ld b, c
    call Call_044_4000
    ld hl, $c827
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    ld [hl+], a
    xor a
    ld [hl], a
    pop af
    ret


Jump_044_51ca:
    ld hl, $c821
    res 2, [hl]
    ld a, $06
    ld [$c86b], a
    jp Jump_044_6430


Call_044_51d7:
    push hl
    ld hl, $c866
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    pop hl
    jr nz, jr_044_51ee

    ld de, $0007
    add hl, de

jr_044_51e8:
    ld a, [hl+]
    cp $2f
    jr nz, jr_044_51e8

    dec hl

jr_044_51ee:
    ld bc, $ffff

jr_044_51f1:
    ld a, [hl+]
    inc bc
    or a
    jr nz, jr_044_51f1

    ld hl, $c87a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl], a
    ret


    ld a, [$c821]
    bit 2, a
    ld a, [$c86a]
    jp nz, Jump_044_53ea

    cp $02
    jp nz, Jump_044_4226

    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    ld a, [$c86d]
    or a
    jp nz, Jump_044_4226

    xor a
    ld [$c989], a
    ld [$c98a], a
    ld [$c993], a
    push hl
    push de
    push bc
    push hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c833], a
    ld a, [hl+]
    ld [$c834], a
    inc hl
    inc hl
    ld a, l
    ld [$c97f], a
    ld a, h
    ld [$c980], a
    dec hl
    dec hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $80
    cp l
    jr nz, jr_044_5251

    ld a, $c8
    cp h
    jp z, Jump_044_53f7

jr_044_5251:
    ld b, $07
    ld de, $4fad

jr_044_5256:
    ld a, [de]
    inc de
    cp [hl]
    jp nz, Jump_044_53f7

    inc hl
    dec b
    jr nz, jr_044_5256

    push hl
    ld b, $25
    ld c, $00
    ld de, $4fb4

jr_044_5268:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_044_5275

    inc hl
    dec b
    jr nz, jr_044_5268

    pop hl
    jp Jump_044_53f7


jr_044_5275:
    pop hl
    push hl
    ld b, $24
    ld c, $00
    ld de, $5020

jr_044_527e:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_044_528f

    inc hl
    dec b
    jr nz, jr_044_527e

    ld a, $02
    ld [$c98a], a
    pop hl
    jr jr_044_52a0

jr_044_528f:
    pop hl
    ld b, $23
    ld c, $00
    ld de, $4fd9

jr_044_5297:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_044_52cc

    inc hl
    dec b
    jr nz, jr_044_5297

jr_044_52a0:
    ld a, [hl+]
    or a
    jr nz, jr_044_52a0

jr_044_52a4:
    ld a, [hl-]
    cp $2f
    jr nz, jr_044_52a4

    inc hl
    inc hl
    ld a, [hl]
    cp $30
    jr c, jr_044_52cc

    cp $3a
    jr nc, jr_044_52cc

    ld hl, $c97f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $12
    call Call_044_439a
    jp c, Jump_044_53f7

    ld c, $12
    call Call_044_439a
    jp c, Jump_044_53f7

    ld c, $01

jr_044_52cc:
    ld a, c
    ld [$c98f], a
    ld [$cabc], a
    pop hl
    ld de, $0006
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_044_51d7
    ld a, b
    cp $04
    jr c, jr_044_52eb

    jp nz, Jump_044_53f8

    xor a
    or c
    jp nz, Jump_044_53f8

jr_044_52eb:
    pop bc
    pop de
    pop hl
    ld a, l
    ld [$c876], a
    ld a, h
    ld [$c877], a
    ld hl, $c872
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc hl
    inc hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    call Call_044_5335
    ld hl, $c876
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c9aa], a
    ld a, [hl+]
    ld [$c9ab], a
    ld a, [hl+]
    ld [$c9ac], a
    ld a, [hl+]
    ld [$c9ad], a
    inc hl
    inc hl
    ld a, [hl+]
    ld [$c876], a
    ld a, [hl]
    ld [$c877], a
    ld a, [$c98f]
    xor $01
    ld [$c994], a
    jp Jump_044_4f07


Call_044_5335:
    ld hl, $c876
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ld [$c8c9], a

jr_044_5344:
    ld de, $8ad0
    add hl, de
    jr nc, jr_044_534e

    add $03
    jr jr_044_5344

jr_044_534e:
    ld de, $7530
    add hl, de

jr_044_5352:
    ld de, $d8f0
    add hl, de
    jr nc, jr_044_535b

    inc a
    jr jr_044_5352

jr_044_535b:
    ld de, $2710
    add hl, de
    ld [$c8c6], a
    xor a

jr_044_5363:
    ld de, $f448
    add hl, de
    jr nc, jr_044_536d

    add $30
    jr jr_044_5363

jr_044_536d:
    ld de, $0bb8
    add hl, de

jr_044_5371:
    ld de, $fc18
    add hl, de
    jr nc, jr_044_537b

    add $10
    jr jr_044_5371

jr_044_537b:
    ld de, $03e8
    add hl, de

jr_044_537f:
    ld de, $fed4
    add hl, de
    jr nc, jr_044_5389

    add $03
    jr jr_044_537f

jr_044_5389:
    ld de, $012c
    add hl, de

jr_044_538d:
    ld de, $ff9c
    add hl, de
    jr nc, jr_044_5396

    inc a
    jr jr_044_538d

jr_044_5396:
    ld de, $0064
    add hl, de
    ld [$c8c7], a
    xor a

jr_044_539e:
    ld de, $ffe2
    add hl, de
    jr nc, jr_044_53a8

    add $30
    jr jr_044_539e

jr_044_53a8:
    ld de, $001e
    add hl, de

jr_044_53ac:
    ld de, $fff6
    add hl, de
    jr nc, jr_044_53b6

    add $10
    jr jr_044_53ac

jr_044_53b6:
    ld de, $000a
    add hl, de
    add l
    ld [$c8c8], a
    ld de, $c9a5
    ld hl, $c8c6
    ld a, [hl+]
    or $30
    ld [de], a
    inc de
    ld a, [hl]
    swap a
    and $0f
    or $30
    ld [de], a
    inc de
    ld a, [hl+]
    and $0f
    or $30
    ld [de], a
    inc de
    ld a, [hl]
    swap a
    and $0f
    or $30
    ld [de], a
    inc de
    ld a, [hl]
    and $0f
    or $30
    ld [de], a
    inc de
    ret


Jump_044_53ea:
    cp $14
    jp z, Jump_044_5044

    cp $24
    jp z, Jump_044_5044

    jp Jump_044_4226


Jump_044_53f7:
    pop hl

Jump_044_53f8:
    pop hl
    pop hl
    pop hl
    jp Jump_044_4231


    ld a, [$c822]
    bit 4, a
    jp z, Jump_044_547f

    bit 7, a
    jp nz, Jump_044_547f

    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_547f

jr_044_5413:
    ld a, [$c800]
    or a
    jr nz, jr_044_5413

    di
    ld a, [$c821]
    bit 3, a
    jp nz, Jump_044_547b

    ld a, [$c807]
    or a
    jr nz, jr_044_5436

    ld hl, $c821
    set 1, [hl]
    ld a, $23
    ld [$c80f], a
    ld a, $ff
    ei
    ret


jr_044_5436:
    xor a
    ld [$c86b], a
    push hl
    ld hl, $c829
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld de, $cb47
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    pop hl
    ld a, [hl+]
    or a
    jr z, jr_044_5485

    cp $81
    jr nc, jr_044_5485

    ld c, a
    inc a
    inc a
    ld [de], a
    inc de
    ld a, $ff
    ld [de], a
    inc de
    ld a, c
    ld [de], a
    inc de
    ld b, c
    call Call_044_4000
    ld b, c
    inc b
    inc b
    call Call_044_5f63
    ld hl, $c822
    set 7, [hl]
    ld hl, $c821
    set 0, [hl]
    ld a, $00
    ei
    ret


Jump_044_547b:
    ei
    ld a, $01
    ret


Jump_044_547f:
    call Call_044_4226
    ld a, $ff
    ret


jr_044_5485:
    ei
    call Call_044_4231
    ld a, $ff
    ret


    ld a, [$c822]
    bit 4, a
    jp z, Jump_044_4226

    ld a, [$c821]
    bit 0, a
    jp nz, Jump_044_4226

    bit 3, a
    jp z, Jump_044_4226

    ld e, l
    ld d, h
    ld a, [$c992]
    or a
    jr nz, jr_044_5507

    ld a, [$c993]
    ld c, a
    ld b, $00
    ld hl, $ca40
    add hl, bc
    ld a, [hl+]
    or a
    jr z, jr_044_54bb

    cp $81
    jr c, jr_044_54bd

jr_044_54bb:
    ld a, $80

jr_044_54bd:
    ld b, a
    inc c
    add c
    ld [$c993], a
    ld a, [$c994]
    dec a
    sub b
    ld c, a
    ld [$c994], a
    ld a, b
    ld [de], a
    inc de
    call Call_044_4000

jr_044_54d2:
    xor a
    or c
    jr nz, jr_044_54dc

    ld hl, $c821
    res 3, [hl]
    ret


jr_044_54dc:
    ld a, [hl+]
    or a
    jr z, jr_044_54e4

    cp $81
    jr c, jr_044_54e6

jr_044_54e4:
    ld a, $80

jr_044_54e6:
    cp c
    ret c

    ld [$c991], a
    dec c
    ld a, c
    or a
    jr z, jr_044_5500

    ld [$c992], a
    ld b, a
    ld de, $c880
    call Call_044_4000

jr_044_54fa:
    ld hl, $c821
    res 3, [hl]
    ret


jr_044_5500:
    ld a, $ff
    ld [$c992], a
    jr jr_044_54fa

jr_044_5507:
    cp $ff
    jr nz, jr_044_550c

    xor a

jr_044_550c:
    ld b, a
    ld a, [$c991]
    sub b
    ld c, a
    ld hl, $c880
    ld a, [$c991]
    ld [de], a
    inc de
    ld a, b
    or a
    jr z, jr_044_5521

    call Call_044_4000

jr_044_5521:
    ld hl, $ca41
    ld b, c
    call Call_044_4000
    push hl
    ld a, c
    inc a
    ld [$c993], a
    ld b, a
    ld a, [$ca3f]
    sub b
    ld [$c994], a
    ld c, a
    xor a
    ld hl, $c991
    ld [hl+], a
    ld [hl], a
    pop hl
    jr jr_044_54d2

    nop
    ld hl, $c821
    bit 0, [hl]
    jp nz, Jump_044_4226

    ld a, [$c86a]
    cp $05
    jp nc, Jump_044_4226

    ld [$c985], a
    ld a, e
    ld [$c86e], a
    ld a, d
    ld [$c86f], a
    ld a, [$c807]
    cp $02
    jr c, jr_044_5582

    xor a
    ld [$c86b], a
    ld a, $97
    ld hl, $602d
    call Call_044_5eff

jr_044_556f:
    ld a, [$c988]
    cp $40
    jr nz, jr_044_557a

    ld a, $2c
    jr jr_044_557c

jr_044_557a:
    ld a, $1e

jr_044_557c:
    ld [$c86a], a
    jp Jump_044_4432


jr_044_5582:
    xor a
    ldh [rTAC], a
    ld a, [$c870]
    ld c, a
    call Call_044_40dc
    call Call_044_44b0
    ld a, $01
    ld [$c86b], a
    jr jr_044_556f

    ld hl, $c86a
    ld a, [hl]
    cp $01
    jp z, Jump_044_4226

    cp $2a
    jp z, Jump_044_4226

    ld a, [$c800]
    bit 1, a
    jr nz, jr_044_55af

    ld a, $2a
    jr jr_044_55e4

jr_044_55af:
    ld a, [$c81e]
    cp $92
    jr nz, jr_044_55dd

    ld a, $2a
    ld b, $00
    di
    ld [hl+], a
    ld [hl], b
    ld hl, $c822
    res 5, [hl]
    res 0, [hl]
    xor a
    ld [$c80b], a
    ld [$c800], a
    ld a, $08
    ld [$c807], a
    call Call_044_4029
    call Call_044_564f
    ld hl, $c821
    set 0, [hl]
    ei
    ret


jr_044_55dd:
    ld a, $2a
    ld [hl+], a
    ld a, $01
    ld [hl], a
    ret


jr_044_55e4:
    di
    push af
    ld hl, $c821
    set 0, [hl]
    ld a, $01
    ld [$c86b], a
    ld a, [$c86d]
    or a
    ld a, [$ca3c]
    jr z, jr_044_5609

    cp $9f
    jr z, jr_044_560d

    cp $a4
    jr z, jr_044_560d

jr_044_5601:
    call Call_044_6430

jr_044_5604:
    pop af
    ld [$c86a], a
    ret


jr_044_5609:
    cp $a3
    jr z, jr_044_5601

jr_044_560d:
    ei
    jr jr_044_5604

    ld hl, $c86a
    ld a, [hl]
    dec a
    jp z, Jump_044_4226

    dec a
    jp z, Jump_044_4226

    ld a, [$c800]
    or a
    jr nz, jr_044_5626

    ld a, $28
    jr jr_044_55e4

jr_044_5626:
    ld a, $28
    ld b, $02
    ld [hl+], a
    ld [hl], b
    ret


    ld a, [$c86a]
    cp $01
    jp nz, Jump_044_4226

    xor a
    ld hl, $cb47
    ld [hl+], a
    ld [hl], a
    call Call_044_5686
    call Call_044_4029
    ld bc, $0452
    ld hl, $c800

jr_044_5647:
    xor a
    ld [hl+], a
    dec bc
    ld a, c
    or b
    jr nz, jr_044_5647

    ret


Call_044_564f:
    ld hl, $c815
    xor a
    ld [hl+], a
    ld a, [$c81f]
    ld b, a
    ld a, [$c818]
    ld a, b
    srl a
    srl a
    add b
    add b
    ld [hl], a
    ret


Call_044_5664:
    ld hl, $ca3a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [$c81e]
    cp $ff
    jr z, jr_044_5679

    ld a, [$c822]
    bit 0, a
    jr z, jr_044_567c

jr_044_5679:
    ld hl, $ca2f

jr_044_567c:
    add hl, de
    ld [hl], c
    inc de
    ld hl, $ca3a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Call_044_5686:
    xor a
    ldh [rTAC], a
    ld c, $ff
    ld a, [c]
    and $f3
    ld [c], a
    ld a, [$cb48]
    ld [$c86a], a
    ld a, [$cb47]
    ld c, a
    ld hl, $c821
    ld a, [hl]
    or c
    ld [hl], a
    ret


Jump_044_56a0:
    ld a, $01
    jr jr_044_56a9

Jump_044_56a4:
    set 1, [hl]
    ld a, [$c86a]

jr_044_56a9:
    ld [$cb48], a
    ld hl, $c815
    xor a
    ld [hl+], a
    ld a, [$c81f]
    rla
    ld [hl], a
    ld hl, $c821
    ld a, [hl]
    ld b, a
    and $0d
    ld [hl], a
    ld a, $02
    and b
    ld [$cb47], a
    ret


    ld a, [$c800]
    rrca
    jp nc, Jump_044_58bc

    rrca
    jp c, Jump_044_57e7

    ld hl, $c801
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    dec de
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl], a
    cp $02
    jp nc, Jump_044_58bc

    ld a, d
    or a
    jp nz, Jump_044_58bc

    ld hl, $c808
    add hl, de
    ldh a, [rSB]
    ld [hl], a
    ld a, $08
    cp l
    jp nz, Jump_044_58bc

    ld a, [$c81e]
    cp $ff
    jr z, jr_044_5716

    ld a, $f2
    cp [hl]
    jp z, Jump_044_5796

    dec a
    cp [hl]
    jp z, Jump_044_57a0

    dec a
    cp [hl]
    jp z, Jump_044_57a0

    ld a, [$c807]
    cp $01
    jr nz, jr_044_5716

    ld a, [$c806]
    or a
    jr z, jr_044_5778

jr_044_5716:
    ld a, [$c81e]
    cp $ff
    jr z, jr_044_5730

    cp $ee
    jr z, jr_044_5727

    cp $9f
    jr nz, jr_044_5727

    ld a, $95

jr_044_5727:
    cp [hl]
    jr nz, jr_044_579a

    ld a, [$c818]
    or a
    jr z, jr_044_5730

jr_044_5730:
    xor a
    ld [$c819], a
    ld a, $03
    ld [$c800], a
    xor a
    ld hl, $c80a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $c81f
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld hl, $c815
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, [$c822]
    bit 0, a
    jr z, jr_044_5757

    ld a, $0b
    jr jr_044_5774

jr_044_5757:
    ld a, [$c81e]
    cp $ff
    jr z, jr_044_576e

    cp $92
    jr z, jr_044_5772

    cp $a3
    jr z, jr_044_5772

    cp $a8
    jr z, jr_044_5772

    ld a, $20
    jr jr_044_5774

jr_044_576e:
    ld a, $03
    jr jr_044_5774

jr_044_5772:
    ld a, $60

jr_044_5774:
    ld [hl], a
    jp Jump_044_58bc


jr_044_5778:
    xor a
    ld [$c800], a

Jump_044_577c:
    ld hl, $c820
    ld a, [hl-]
    ld e, a
    ld a, [hl]
    dec a
    ld b, $03

jr_044_5785:
    or a
    rra
    rr e
    dec b
    jr nz, jr_044_5785

    or a
    inc a
    ld hl, $c816
    ld [hl-], a
    ld [hl], e
    jp Jump_044_58bc


Jump_044_5796:
    ld b, $0a
    jr jr_044_57a2

jr_044_579a:
    xor a
    ld [hl+], a
    ld [hl], a
    jp Jump_044_58bc


Jump_044_57a0:
    ld b, $03

jr_044_57a2:
    ld hl, $c822
    set 3, [hl]
    ld hl, $c815
    ld a, [$c820]
    ld [hl+], a
    ld a, [$c81f]
    ld [hl], a
    xor a
    ld [$c800], a
    ld hl, $c819
    inc [hl]
    ld a, b
    cp [hl]
    jp nc, Jump_044_58bc

    xor a
    ld hl, $c806
    ld [hl+], a
    ld [$c800], a
    ld a, $06
    ld [hl], a
    ld hl, $c821
    set 1, [hl]
    ld a, $15
    ld [$c80f], a
    ld hl, $c810
    ld a, [$c808]
    and $0f
    cp $02
    jr nz, jr_044_57e1

    inc a

jr_044_57e1:
    ld [hl+], a
    xor a
    ld [hl], a
    jp Jump_044_58bc


Jump_044_57e7:
    ld a, [$c80b]
    or a
    jr z, jr_044_57f8

    dec a
    jp z, Jump_044_586e

    dec a
    jp z, Jump_044_5884

    jp Jump_044_5892


jr_044_57f8:
    ld hl, $c80a
    ld a, [hl]
    or a
    jr nz, jr_044_5803

    ld b, $99
    jr jr_044_5805

jr_044_5803:
    ld b, $66

jr_044_5805:
    ldh a, [rSB]
    cp b
    jr z, jr_044_5840

    cp $d2
    jr nz, jr_044_5817

    xor a
    ld [$c9ae], a

jr_044_5812:
    xor a
    ld [hl], a
    jp Jump_044_58bc


jr_044_5817:
    ld a, [$c9ae]
    inc a
    ld [$c9ae], a
    cp $14
    jr c, jr_044_5812

    ld a, $06
    ld [$c807], a
    ld a, $10
    ld [$c80f], a
    xor a
    ld [$c800], a
    ld hl, $c822
    res 0, [hl]
    ld hl, $c821
    ld a, [hl]
    set 1, a
    and $0f
    ld [hl], a
    jr jr_044_58bc

jr_044_5840:
    inc [hl]
    ld a, $02
    cp [hl]
    jr nz, jr_044_58bc

    xor a
    ld [hl+], a
    inc [hl]
    ld hl, $c812
    ld b, $03

jr_044_584e:
    ld [hl+], a
    dec b
    jr nz, jr_044_584e

    ld a, [$c822]
    bit 4, a
    jr z, jr_044_5864

    ld b, a
    ld a, [$c821]
    bit 3, a
    jr nz, jr_044_5864

    jp Jump_044_577c


jr_044_5864:
    ld a, [$c820]
    ld [hl+], a
    ld a, [$c81f]
    ld [hl], a
    jr jr_044_58bc

Jump_044_586e:
    call Call_044_58c2
    ld a, $04
    cp [hl]
    jr nz, jr_044_58bc

    xor a
    ld [hl+], a
    ldh a, [rSB]
    ld [$c80c], a
    inc [hl]
    or a
    jr nz, jr_044_58bc

    inc [hl]
    jr jr_044_58bc

Jump_044_5884:
    call Call_044_58c2
    ld a, [$c80c]
    cp [hl]
    jr nz, jr_044_58bc

    xor a
    ld [hl+], a
    inc [hl]
    jr jr_044_58bc

Jump_044_5892:
    ldh a, [rSB]
    ld c, a
    call Call_044_5664
    ld hl, $c80a
    inc [hl]
    ld a, $02
    cp [hl]
    jr c, jr_044_58b4

    ld a, [$c80a]
    add $11
    ld e, a
    ld d, $c8
    ld a, [de]
    cp c
    jr z, jr_044_58bc

    ld a, $01
    ld [$c814], a
    jr jr_044_58bc

jr_044_58b4:
    ld a, $04
    cp [hl]
    jr nz, jr_044_58bc

    xor a
    ld [hl+], a
    inc [hl]

Jump_044_58bc:
jr_044_58bc:
    ld hl, $c822
    res 1, [hl]
    ret


Call_044_58c2:
    ldh a, [rSB]
    ld c, a
    ld b, $00
    ld hl, $c812
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    add hl, bc
    ld a, h
    ld [$c812], a
    ld a, l
    ld [$c813], a
    call Call_044_5664
    ld hl, $c80a
    inc [hl]
    ret


    ld a, [$c80b]
    cp $04
    call z, Call_044_5b3c
    call Call_044_614e
    ld hl, $c807
    ld a, [hl+]
    cp $02
    jr c, jr_044_5927

    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ld c, a
    and b
    cp $ff
    jr z, jr_044_58fe

    ld a, c
    or b
    jr nz, jr_044_5927

jr_044_58fe:
    ld hl, $c807
    ld a, $06
    cp [hl]
    jp z, Jump_044_5b3b

    ld [hl], a
    ld a, $10
    ld [$c80f], a
    xor a
    ld [$c800], a
    ld hl, $c822
    res 0, [hl]
    ld hl, $c821
    ld a, [hl]
    and $0f
    or $02
    ld [hl], a
    ld a, $10
    ld [$c80f], a
    jp Jump_044_5b3b


jr_044_5927:
    ld a, [$c800]
    cp $01
    jp z, Jump_044_5b21

    cp $03
    jp z, Jump_044_5a2a

    ld a, [$c807]
    cp $01
    jp c, Jump_044_5b3b

    ld hl, $c815
    dec [hl]
    jp nz, Jump_044_5b3b

    inc hl
    dec [hl]
    jp nz, Jump_044_5b3b

    ld hl, $c807
    ld a, [$c822]
    bit 3, a
    jp nz, Jump_044_5a0b

    bit 4, a
    jr nz, jr_044_599c

    ld a, [hl]
    cp $01
    jp z, Jump_044_59f0

    cp $0a
    jr z, jr_044_5984

    cp $08
    jr z, jr_044_597d

    ld a, [$c86a]
    cp $2a
    jr z, jr_044_5991

    cp $0d
    jr nz, jr_044_5977

    ld a, [$c86b]
    cp $04
    jr nc, jr_044_599c

jr_044_5977:
    call Call_044_5f97
    jp Jump_044_5b3b


jr_044_597d:
    ld a, [$c805]
    ld [hl], a
    jp Jump_044_5b3b


jr_044_5984:
    xor a
    ld [hl], a
    ld hl, $c821
    res 0, [hl]
    call Call_044_5686
    jp Jump_044_5b3b


jr_044_5991:
    xor a
    ld [hl], a
    ld [$c821], a
    call Call_044_5686
    jp Jump_044_5b3b


jr_044_599c:
    ld b, a
    ld [hl], a
    or a
    jp z, Jump_044_5b3b

    ld a, [$c822]
    bit 7, a
    jr nz, jr_044_59be

jr_044_59a9:
    ld a, [$c821]
    bit 3, a
    jr nz, jr_044_5977

    ld de, $000b
    ld hl, $6072
    ld a, $95
    call Call_044_5f02
    jp Jump_044_5b3b


jr_044_59be:
    ld a, [$c821]
    bit 3, a
    jr nz, jr_044_59dd

    ld a, [$cb4c]
    add $0a
    ld e, a
    ld d, $00
    ld a, $95
    ld [$c81e], a
    ld hl, $cb47
    ld b, $05
    call Call_044_5f07
    jp Jump_044_5b3b


jr_044_59dd:
    ld hl, $c821
    set 1, [hl]
    res 0, [hl]
    ld hl, $c822
    res 7, [hl]
    ld a, $21
    ld [$c80f], a
    jr jr_044_59a9

Jump_044_59f0:
    ld a, $90
    ld [$c81e], a
    ld [$c808], a
    ld b, $05
    ld de, $0012
    ld hl, $6001
    call Call_044_5f07
    ld a, $01
    ld [$c806], a
    jp Jump_044_5b3b


Jump_044_5a0b:
    ld a, [hl]
    cp $06
    jp z, Jump_044_5b3b

    ld hl, $c822
    res 3, [hl]
    res 0, [hl]
    ld hl, $c81a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $05
    call Call_044_5f07
    jp Jump_044_5b3b


Jump_044_5a2a:
    ld hl, $c80b
    ld a, [hl-]
    or a
    jr z, jr_044_5a47

    cp $03
    jr nz, jr_044_5a40

    ld a, [hl]
    cp $02
    jp z, Jump_044_5ab9

    cp $03
    jp z, Jump_044_5abd

jr_044_5a40:
    ld a, $4b

Jump_044_5a42:
jr_044_5a42:
    ldh [rSB], a
    jp Jump_044_5b2e


jr_044_5a47:
    ld hl, $c815
    dec [hl]
    jr nz, jr_044_5a40

    inc hl
    dec [hl]
    jr nz, jr_044_5a40

    inc hl
    dec [hl]
    jr z, jr_044_5a63

    ld hl, $c81f
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ld hl, $c815
    ld [hl+], a
    ld a, d
    ld [hl+], a
    jr jr_044_5a40

jr_044_5a63:
    di
    ld a, [$c86a]
    cp $2a
    jr z, jr_044_5aa8

    ld hl, $c9b2
    inc [hl]
    ld a, [hl]
    cp $01
    jr z, jr_044_5a91

    ld hl, $c822
    res 5, [hl]
    res 0, [hl]
    ld hl, $c821
    res 4, [hl]
    ld a, $00
    ld [$c805], a
    ld a, $29
    ld [$c86a], a
    ld a, $01
    ld [$c806], a
    jr jr_044_5aa8

jr_044_5a91:
    ld a, $29
    ld [$c86a], a
    xor a
    ld [$c806], a
    ld [$c86b], a
    ld [$c80b], a
    ld [$c800], a
    ld a, $08
    ld [$c807], a

jr_044_5aa8:
    call Call_044_4029
    call Call_044_564f
    ld hl, $c822
    res 5, [hl]
    res 0, [hl]
    ei
    jp Jump_044_5b3b


Jump_044_5ab9:
    ld a, $80
    jr jr_044_5a42

Jump_044_5abd:
    ld a, [$c814]
    or a
    jr nz, jr_044_5acb

    ld a, [$ca3c]
    xor $80
    jp Jump_044_5a42


jr_044_5acb:
    ld hl, $c819
    inc [hl]
    ld a, $03
    cp [hl]
    jr z, jr_044_5afe

    call Call_044_4029
    ld a, $03
    ld [$c800], a
    xor a
    ld hl, $c80a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $c815
    ld a, [$c820]
    ld [hl+], a
    ld a, [$c81f]
    ld [hl+], a
    ld a, [$c822]
    bit 0, a
    jr z, jr_044_5af9

    ld a, $0b
    jr jr_044_5afb

jr_044_5af9:
    ld a, $20

jr_044_5afb:
    ld [hl+], a
    jr jr_044_5b1c

jr_044_5afe:
    ld hl, $c806
    xor a
    ld [hl+], a
    ld [$c800], a
    ld a, $06
    ld [hl], a
    ld hl, $c821
    set 1, [hl]
    ld a, $15
    ld [$c80f], a
    ld a, $02
    ld [$c810], a
    xor a
    ld [$c811], a

jr_044_5b1c:
    ld a, $f1
    jp Jump_044_5a42


Jump_044_5b21:
    ld hl, $c803
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [de]
    ldh [rSB], a
    inc de
    ld a, d
    ld [hl-], a
    ld [hl], e

Jump_044_5b2e:
    ld hl, $c822
    set 1, [hl]
    ld a, $03
    ldh [rSC], a
    ld a, $83
    ldh [rSC], a

Jump_044_5b3b:
    ret


Call_044_5b3c:
    xor a
    ld [$c819], a
    ld [$c80b], a
    ld hl, $c9b1
    ld [hl+], a
    ld [hl], a
    ld [$c800], a
    ld hl, $c822
    res 5, [hl]
    bit 0, [hl]
    jr z, jr_044_5b59

    ld a, [$ca2f]
    jr jr_044_5b5c

Jump_044_5b59:
jr_044_5b59:
    ld a, [$ca3c]

jr_044_5b5c:
    cp $9f
    jr nz, jr_044_5b62

    ld a, $95

jr_044_5b62:
    ld b, a
    ld hl, $5e28
    push hl
    cp $ee
    jp z, Jump_044_5e2b

    ld a, [$c81e]
    cp $ff
    jp z, Jump_044_5ef8

    cp $95
    jp z, Jump_044_5c17

    cp $a8
    jp z, Jump_044_5d23

    cp $a3
    jr z, jr_044_5bbe

    cp $a4
    jr z, jr_044_5bbe

    cp $93
    jr z, jr_044_5be0

    cp $99
    jr z, jr_044_5bf0

    cp $9a
    jp z, Jump_044_5c06

    cp $97
    jp z, Jump_044_5d70

    cp $a1
    jr z, jr_044_5bd0

    cp $a2
    jr z, jr_044_5bca

    cp $90
    jp z, Jump_044_5d39

    cp $94
    jp z, Jump_044_5d65

    cp $92
    jp z, Jump_044_5d65

    ld hl, $c822
    res 0, [hl]
    ld a, $0a
    ld [$c807], a
    xor a
    ld [$c800], a
    ret


jr_044_5bbe:
    ld a, [$ca40]
    ld [$c86c], a
    ld a, $04
    ld [$c807], a
    ret


jr_044_5bca:
    ld a, $03
    ld [$c807], a
    ret


jr_044_5bd0:
    ld a, $04
    ld [$c807], a
    ld de, $c823
    ld hl, $ca40
    ld b, $04
    jp Jump_044_4000


jr_044_5be0:
    ld a, $02
    ld [$c807], a
    ld hl, $c822
    res 4, [hl]
    ld hl, $c821
    res 4, [hl]
    ret


jr_044_5bf0:
    ld hl, $c829
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $ca3f
    ld a, [hl+]
    dec a
    ld b, a
    inc hl
    call Call_044_4000
    ld a, $02
    ld [$c807], a
    ret


Jump_044_5c06:
    ld de, $c872
    ld hl, $ca40
    ld b, $02
    call Call_044_4000
    ld a, $02
    ld [$c807], a
    ret


Jump_044_5c17:
    ld a, [$ca3c]
    cp $9f
    jp z, Jump_044_5d07

    ld a, [$c86f]
    ld b, a
    ld a, [$c86e]
    or b
    jp z, Jump_044_5d07

    ld hl, $c82b
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [$ca3f]
    dec a
    jp z, Jump_044_5d07

    ld c, a
    ld a, [$c822]
    bit 4, a
    jp z, Jump_044_5cc2

    ld a, [$c992]
    or a
    jr nz, jr_044_5c89

    ld a, [$ca41]
    or a
    jr z, jr_044_5c50

    cp $81
    jr c, jr_044_5c52

jr_044_5c50:
    ld a, $80

jr_044_5c52:
    ld b, a
    ld a, [$ca3f]
    dec a
    dec a
    cp b
    jr c, jr_044_5c6e

jr_044_5c5b:
    ld hl, $c821
    set 3, [hl]
    ld hl, $c993
    ld a, $01
    ld [hl+], a
    ld a, [$ca3f]
    dec a
    ld [hl], a
    jp Jump_044_5d07


jr_044_5c6e:
    ld hl, $c992
    or a
    jr z, jr_044_5c83

    ld [hl-], a
    ld [hl], b
    ld b, a
    ld hl, $ca42
    ld de, $c880
    call Call_044_4000
    jp Jump_044_5d07


jr_044_5c83:
    ld a, $ff
    ld [hl-], a
    ld [hl], b
    jr jr_044_5d07

jr_044_5c89:
    cp $ff
    jr nz, jr_044_5c9d

    ld hl, $c991
    ld a, [hl+]
    ld b, a
    ld a, [$ca3f]
    dec a
    cp b
    jr nc, jr_044_5c5b

    jr z, jr_044_5c5b

    xor a
    ld [hl], a

jr_044_5c9d:
    ld hl, $c991
    ld a, [hl+]
    sub [hl]
    ld b, a
    ld a, [$ca3f]
    dec a
    cp b
    jr nc, jr_044_5c5b

    jr z, jr_044_5c5b

    ld b, a
    ld l, [hl]
    ld h, $00
    add l
    ld [$c992], a
    ld de, $c880
    add hl, de
    ld e, l
    ld d, h
    ld hl, $ca41
    call Call_044_4000
    jr jr_044_5d07

Jump_044_5cc2:
    xor a
    cp d
    jr nz, jr_044_5cda

    ld a, c
    cp e
    jr c, jr_044_5cda

    jr z, jr_044_5cda

    ld a, [$c821]
    set 2, a
    ld [$c821], a
    ld a, c
    sub e
    ld c, e
    ld e, a
    jr jr_044_5ce1

jr_044_5cda:
    ld a, e
    sub c
    ld e, a
    ld a, d
    sbc $00
    ld d, a

jr_044_5ce1:
    ld a, d
    ld [hl-], a
    ld [hl], e
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    ld hl, $ca41
    ld a, c
    or a
    jr z, jr_044_5d07

    ld b, a
    call Call_044_4000
    ld hl, $c829
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld de, $0003
    add hl, de
    ld a, [hl]
    add c
    ld [hl+], a
    jr nc, jr_044_5d07

    inc [hl]

Jump_044_5d07:
jr_044_5d07:
    ld a, [$c822]
    bit 4, a
    jr z, jr_044_5d1c

    bit 7, a
    jr z, jr_044_5d1c

    ld hl, $c822
    res 7, [hl]
    ld hl, $c821
    res 0, [hl]

jr_044_5d1c:
    ld a, [$c805]
    ld [$c807], a
    ret


Jump_044_5d23:
    ld a, [$c829]
    ld e, a
    ld a, [$c82a]
    ld d, a
    ld hl, $ca40
    ld b, $04
    call Call_044_4000
    ld a, $04
    ld [$c807], a
    ret


Jump_044_5d39:
    ld de, $ca3f
    ld hl, $6006
    ld b, $09

jr_044_5d41:
    ld a, [de]
    inc de
    cp [hl]
    jr nz, jr_044_5d4a

    inc hl
    dec b
    jr nz, jr_044_5d41

jr_044_5d4a:
    ld a, b
    or a
    jr nz, jr_044_5d59

    ld a, [$ca4a]
    cp $80
    jr c, jr_044_5d62

    cp $90
    jr nc, jr_044_5d62

jr_044_5d59:
    ld [$c818], a
    ld a, $02
    ld [$c807], a
    ret


jr_044_5d62:
    xor a
    jr jr_044_5d59

Jump_044_5d65:
    ld a, $03
    ld [$c807], a
    ld hl, $c821
    set 4, [hl]
    ret


Jump_044_5d70:
    ld hl, $c822
    bit 0, [hl]
    jr z, jr_044_5dc0

    ld a, [$c805]
    ld [$c807], a
    ld a, [$ca33]
    ld b, a
    call Call_044_5dd9
    call Call_044_5e15
    res 0, [hl]
    ld a, b
    cp $07
    jr z, jr_044_5da9

    or a
    ret nz

    ld hl, $c821
    res 4, [hl]
    set 1, [hl]
    ld a, [$c822]
    bit 4, a
    jr nz, jr_044_5dbb

    ld a, $23
    ld [$c80f], a
    ld a, $06
    ld [$c807], a
    ret


jr_044_5da9:
    ld hl, $c821
    res 4, [hl]
    set 1, [hl]
    ld a, $11
    ld [$c80f], a
    ld a, $06
    ld [$c807], a
    ret


jr_044_5dbb:
    xor a
    ld [$c807], a
    ret


jr_044_5dc0:
    ld hl, $c86e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca40]
    ld b, a
    call Call_044_5dd9
    call Call_044_5e15
    ld a, b
    ld [hl], a
    ld a, [$c805]
    ld [$c807], a
    ret


Call_044_5dd9:
    cp $ff
    jr z, jr_044_5de7

    or a
    ret z

    cp $04
    jr z, jr_044_5dea

    cp $05
    jr z, jr_044_5e12

jr_044_5de7:
    ld b, $07
    ret


jr_044_5dea:
    ld b, $05
    ld a, [$c822]
    bit 0, a
    jr z, jr_044_5df8

    ld a, [$c86a]
    jr jr_044_5dfb

jr_044_5df8:
    ld a, [$c985]

jr_044_5dfb:
    cp $04
    ret z

    cp $1c
    ret z

    cp $1a
    ret z

    dec b
    cp $03
    ret z

    ld b, $01
    ld a, [$c822]
    bit 4, a
    ret z

    inc b
    ret


jr_044_5e12:
    ld b, $03
    ret


Call_044_5e15:
    ld a, b
    and $07
    rrca
    rrca
    rrca
    push hl
    ld l, a
    ld a, [$c821]
    and $1f
    or l
    ld [$c821], a
    pop hl
    ret


    jp Jump_044_4029


Jump_044_5e2b:
    ld a, [$c81e]
    cp $ff
    jp z, Jump_044_5ef8

    ld a, [$c86a]
    cp $0d
    jr z, jr_044_5e48

    cp $2a
    jr z, jr_044_5e48

    ld a, $06
    ld [$c807], a
    ld hl, $c821
    set 1, [hl]

jr_044_5e48:
    ld a, [$c822]
    bit 0, a
    jr z, jr_044_5e54

    ld hl, $ca33
    jr jr_044_5e57

jr_044_5e54:
    ld hl, $ca40

jr_044_5e57:
    ld a, [hl+]
    ld [$c80e], a
    cp $10
    jr z, jr_044_5e88

    cp $12
    jr z, jr_044_5e8c

    cp $13
    jr z, jr_044_5ea1

    cp $15
    jr z, jr_044_5eae

    cp $19
    jr z, jr_044_5edc

    cp $21
    jr z, jr_044_5ee0

    cp $22
    jr z, jr_044_5ea1

    cp $23
    jr z, jr_044_5ee4

    cp $24
    jr z, jr_044_5eed

    cp $28
    jr z, jr_044_5ee9

    ld a, [hl]

jr_044_5e84:
    ld [$c80f], a
    ret


jr_044_5e88:
    ld a, $10
    jr jr_044_5e84

jr_044_5e8c:
    ld a, [hl]
    or $00
    jr z, jr_044_5e9d

    cp $02
    jr z, jr_044_5e99

    ld a, $13
    jr jr_044_5e84

jr_044_5e99:
    ld a, $17
    jr jr_044_5e84

jr_044_5e9d:
    ld a, $12
    jr jr_044_5e84

jr_044_5ea1:
    ld hl, $c821
    res 1, [hl]
    res 4, [hl]
    ld a, $02
    ld [$c807], a
    ret


jr_044_5eae:
    ld a, [hl]
    cp $01
    jr nz, jr_044_5ed3

    ld a, [$c822]
    bit 4, a
    jr z, jr_044_5ed3

    res 4, a
    ld [$c822], a
    ld hl, $c821
    ld a, [hl]
    and $0f
    or $02
    ld [hl], a
    ld a, $23
    ld [$c80f], a
    ld a, $06
    ld [$c807], a
    ret


jr_044_5ed3:
    ld hl, $c822
    res 5, [hl]
    ld a, $24
    jr jr_044_5e84

jr_044_5edc:
    ld a, $14
    jr jr_044_5e84

jr_044_5ee0:
    ld a, $22
    jr jr_044_5e84

jr_044_5ee4:
    ld hl, $c821
    res 1, [hl]

jr_044_5ee9:
    ld a, $24
    jr jr_044_5e84

jr_044_5eed:
    ld hl, $c821
    res 1, [hl]
    ld a, $03
    ld [$c807], a
    ret


Jump_044_5ef8:
    ld a, [$c805]
    ld [$c807], a
    ret


Call_044_5eff:
Jump_044_5eff:
    ld de, $000a

Call_044_5f02:
Jump_044_5f02:
    ld [$c81e], a
    ld b, $05

Call_044_5f07:
Jump_044_5f07:
    call Call_044_40b4
    ret c

    ld a, [$c800]
    cp $00
    jr z, jr_044_5f17

    call Call_044_4226
    scf
    ret


jr_044_5f17:
    ldh a, [rSC]
    and $80
    jr nz, jr_044_5f17

    di
    ld a, [$c81e]
    cp $ff
    jr z, jr_044_5f35

    ld a, l
    ld [$c81c], a
    ld a, h
    ld [$c81d], a
    ld a, e
    ld [$c81a], a
    ld a, d
    ld [$c81b], a

jr_044_5f35:
    ld a, e
    ld [$c801], a
    ld a, d
    ld [$c802], a
    ld a, l
    ld [$c803], a
    ld a, h
    ld [$c804], a
    ld hl, $c807
    ld a, [hl]
    cp b
    jr z, jr_044_5f4f

    ld [$c805], a

jr_044_5f4f:
    ld a, b
    ld [$c807], a
    xor a
    ld [$c806], a
    ld a, $01
    ld [$c800], a
    ld hl, $c822
    set 5, [hl]
    ei
    ret


Call_044_5f63:
    push de
    ld hl, $0000
    ld c, b
    xor a
    cp b
    jr z, jr_044_5f71

jr_044_5f6c:
    call Call_044_5f8d
    jr nz, jr_044_5f6c

jr_044_5f71:
    ld b, $04

jr_044_5f73:
    call Call_044_5f8d
    jr nz, jr_044_5f73

    ld e, l
    ld d, h
    ld hl, $000a
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, $80
    ld [hl+], a
    xor a
    ld [hl], a
    ld e, c
    ld d, b
    ret


Call_044_5f8d:
    dec de
    ld a, [de]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    dec b
    ret


Call_044_5f97:
Jump_044_5f97:
    ld hl, $c822
    bit 0, [hl]
    ret nz

    ld a, [$c807]
    cp $02
    jr c, jr_044_5fcb

    cp $05
    jr z, jr_044_5fcb

    cp $06
    jr nz, jr_044_5fcd

    ld a, [$c80f]
    cp $22
    jr z, jr_044_5fcb

    cp $23
    jr z, jr_044_5fcb

    cp $26
    jr z, jr_044_5fcb

    swap a
    and $0f
    cp $01
    jr z, jr_044_5fcb

    cp $00
    jr z, jr_044_5fcb

    cp $08
    jr nz, jr_044_5fcd

jr_044_5fcb:
    scf
    ret


jr_044_5fcd:
    ld b, $05
    ld hl, $c81e
    ld a, [hl]
    cp $ff
    jr z, jr_044_5fe9

    ld a, $97
    ld [hl], a
    ld hl, $602d
    ld de, $000a
    call Call_044_5f07
    ld hl, $c822
    set 0, [hl]
    ret


jr_044_5fe9:
    ld hl, $6001
    ld de, $0012
    jp Jump_044_5f07


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    sbc c
    ld h, [hl]
    stop
    nop
    ld [$494e], sp
    ld c, [hl]
    ld d, h
    ld b, l
    ld c, [hl]
    ld b, h
    ld c, a
    ld [bc], a
    ld [hl], a
    add b
    nop
    sbc c
    ld h, [hl]
    ld de, $0000
    nop
    nop
    ld de, $0080
    sbc c
    ld h, [hl]
    ld [de], a
    nop
    nop
    nop
    sbc c
    ld h, [hl]
    inc de
    nop
    nop
    nop
    nop
    inc de
    add b
    nop
    sbc c
    ld h, [hl]
    rla
    nop
    nop
    nop
    nop
    rla
    add b
    nop
    sbc c
    ld h, [hl]
    ld hl, $0000
    sbc c
    ld h, [hl]
    ld [hl+], a
    nop
    nop
    nop
    nop
    ld [hl+], a
    add b
    nop
    sbc c
    ld h, [hl]
    add hl, de
    nop
    nop
    ld [bc], a
    nop
    ld h, b
    nop
    ld a, e
    add b
    nop
    sbc c
    ld h, [hl]
    add hl, de
    nop
    nop
    ld [bc], a
    ld h, b
    ld h, b
    nop
    db $db
    add b
    nop
    sbc c
    ld h, [hl]
    ld a, [de]
    nop
    nop
    sbc c
    ld h, [hl]
    jr z, jr_044_6067

jr_044_6067:
    nop
    sbc c
    ld h, [hl]
    inc d
    nop
    nop
    nop
    nop
    inc d
    add b
    nop
    sbc c
    ld h, [hl]
    dec d
    nop
    nop
    ld bc, $01ff
    dec d
    add b
    nop
    sbc c
    ld h, [hl]
    inc hl
    nop
    nop
    ld b, $99
    ld h, [hl]
    inc h
    nop
    nop
    ld bc, $14ec
    ret


    db $e4
    rrca
    ld c, $e0
    inc c
    ld d, e
    call nz, $9407
    or b
    dec b
    xor $ec
    db $10
    or h
    db $e4
    inc c
    db $dd
    ld c, b
    ld b, l
    ld c, h
    ld c, a
    jr nz, jr_044_60a4

jr_044_60a4:
    ld c, l
    ld b, c
    ld c, c
    ld c, h
    jr nz, jr_044_60f0

    ld d, d
    ld c, a
    ld c, l
    ld a, [hl-]
    inc a
    nop
    ld d, d
    ld b, e
    ld d, b
    ld d, h
    jr nz, @+$56

    ld c, a
    ld a, [hl-]
    inc a
    nop
    ld b, h
    ld b, c
    ld d, h
    ld b, c
    dec c
    ld a, [bc]
    nop
    ld d, c
    ld d, l
    ld c, c
    ld d, h
    dec c
    ld a, [bc]
    nop
    ld d, l
    ld d, e
    ld b, l
    ld d, d
    jr nz, jr_044_60ce

jr_044_60ce:
    ld d, b
    ld b, c
    ld d, e
    ld d, e
    jr nz, jr_044_60d4

jr_044_60d4:
    ld d, e
    ld d, h
    ld b, c
    ld d, h
    dec c
    ld a, [bc]
    nop
    ld c, h
    ld c, c
    ld d, e
    ld d, h
    jr nz, jr_044_6111

    jr nc, jr_044_6113

    jr nc, jr_044_6115

    dec c
    ld a, [bc]
    nop
    ld d, d
    ld b, l
    ld d, h
    ld d, d
    jr nz, jr_044_611e

    jr nc, jr_044_6120

jr_044_60f0:
    jr nc, jr_044_6122

    dec c
    ld a, [bc]
    nop
    ld b, h
    ld b, l
    ld c, h
    ld b, l
    jr nz, jr_044_612b

    jr nc, @+$32

    jr nc, jr_044_612f

    dec c
    ld a, [bc]
    nop
    ld d, h
    ld c, a
    ld d, b
    jr nz, jr_044_6137

    jr nc, jr_044_6139

    jr nc, jr_044_613b

    jr nz, jr_044_613d

    dec c
    ld a, [bc]
    nop
    ld b, a

jr_044_6111:
    ld b, l
    ld d, h

jr_044_6113:
    jr nz, jr_044_6115

jr_044_6115:
    jr nz, jr_044_615f

    ld d, h
    ld d, h
    ld d, b
    cpl
    ld sp, $302e

jr_044_611e:
    dec c
    ld a, [bc]

jr_044_6120:
    nop
    ld d, l

jr_044_6122:
    ld [hl], e
    ld h, l
    ld [hl], d
    dec l
    ld b, c
    ld h, a
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_044_612b:
    ld a, [hl-]
    jr nz, @+$45

    ld b, a

jr_044_612f:
    ld b, d
    dec l
    nop
    dec c
    ld a, [bc]
    dec c
    ld a, [bc]
    nop

jr_044_6137:
    ld d, b
    ld c, a

jr_044_6139:
    ld d, e
    ld d, h

jr_044_613b:
    jr nz, jr_044_613d

jr_044_613d:
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    dec l
    ld c, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld [hl], h
    ld l, b
    ld a, [hl-]
    jr nz, jr_044_614e

Call_044_614e:
jr_044_614e:
    ld a, [$c822]
    bit 5, a
    ret nz

    ld a, [$c86a]
    cp $0a
    ret c

    ld c, a
    cp $0d
    jr z, jr_044_6187

jr_044_615f:
    cp $0f
    jr z, jr_044_6196

    cp $29
    jr z, jr_044_6175

    cp $2a
    jr z, jr_044_6175

    cp $28
    jr z, jr_044_6175

jr_044_616f:
    ld a, [$c807]
    cp $06
    ret z

jr_044_6175:
    ld b, $00
    sla c
    ld hl, $6198
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $c86b
    inc [hl]
    ld a, [hl]
    ret


jr_044_6187:
    ld c, a
    ld a, [$c86b]
    cp $01
    jr nz, jr_044_616f

    ld hl, $c821
    res 1, [hl]
    jr jr_044_6175

jr_044_6196:
    ld c, a
    ld a, [$c80f]
    cp $24
    jr nz, jr_044_616f

    ld a, [$c86b]
    cp $01
    jr nz, jr_044_616f

    ld hl, $c821
    res 1, [hl]
    jr jr_044_6175

    or $61
    ld [hl], c
    ld h, d
    ld [hl], e
    ld h, e
    or [hl]
    ld h, e
    pop hl
    ld h, e
    ld d, c
    ld h, h
    dec d
    ld h, a
    ld a, [hl-]
    ld h, a
    sbc h
    ld l, c
    inc sp
    ld l, l
    inc sp
    ld l, l
    ld b, b
    ld l, b
    db $db
    ld l, b
    ld l, c
    ld l, c
    ld d, [hl]
    ld l, d
    ld [hl], c
    ld l, e
    db $ec
    ld l, e
    cp e
    ld l, e
    db $ec
    ld l, e
    ld [hl], c
    ld l, e
    bit 6, h
    inc sp
    ld l, l
    inc sp
    ld l, l
    inc sp
    ld l, l
    inc sp
    ld l, l
    inc sp
    ld l, l
    inc sp
    ld l, l
    add hl, de
    ld [hl], l
    add hl, de
    ld [hl], l
    add hl, de
    ld [hl], l
    ld b, d
    ld a, [hl]
    ld a, [c]
    ld a, [hl]
    dec l
    ld a, a
    or $61
    bit 6, h
    ld [hl], d
    db $76
    ld h, $76
    dec a
    jr z, jr_044_61fe

    dec a
    jr z, jr_044_6210

    dec [hl]
    ret


jr_044_61fe:
    ld a, [$c818]
    or a
    jr z, jr_044_6206

    jr jr_044_6269

jr_044_6206:
    ld a, $10
    call Call_044_625d
    res 0, [hl]
    set 1, [hl]
    ret


jr_044_6210:
    ld hl, $c86e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c818]
    cp $88
    jr c, jr_044_6249

    sub $88
    ld [hl], a
    cp $04
    jr c, jr_044_6226

    ld a, $03

jr_044_6226:
    cp $03
    jr nz, jr_044_622b

    dec a

jr_044_622b:
    ld b, a
    ld a, $04
    sub b
    ld d, a
    rlca
    add d
    ld c, a
    xor a
    cp b
    jr z, jr_044_623a

    ld a, $03
    xor b

jr_044_623a:
    ld hl, $c871
    ld [hl-], a
    ld [hl], c
    ld a, [$c86a]
    cp $0a
    jr nz, jr_044_6251

    jp Jump_044_56a0


jr_044_6249:
    ld a, $10
    call Call_044_625d
    jp Jump_044_56a4


Jump_044_6251:
jr_044_6251:
    xor a
    ld [$c821], a
    ld [$c807], a
    inc a
    ld [$c86a], a
    ret


Call_044_625d:
    ld [$c80f], a
    ld a, $05
    ld [$c86a], a
    ld hl, $c821
    ret


Jump_044_6269:
jr_044_6269:
    ld a, $91
    ld hl, $6013
    jp Jump_044_5eff


    dec a
    jr z, jr_044_628c

    dec a
    jr z, jr_044_6292

    dec a
    jr z, jr_044_62a1

    dec a
    jp z, Jump_044_6309

    dec a
    jp z, Jump_044_6326

    dec a
    jp z, Jump_044_6335

    dec a
    jp z, Jump_044_6342

    dec [hl]
    ret


jr_044_628c:
    ld hl, $6046
    jp Jump_044_636b


jr_044_6292:
    ld hl, $c829
    ld a, $e0
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    ld hl, $6052
    jp Jump_044_636b


jr_044_62a1:
    ld hl, $c880
    ld a, [hl+]
    cp $4d
    jr nz, jr_044_62f5

    ld a, [hl-]
    cp $41
    jr nz, jr_044_62f5

    ld b, $be
    ld de, $0000

jr_044_62b3:
    ld a, [hl+]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec b
    jr nz, jr_044_62b3

    ld a, [hl+]
    cp d
    jr nz, jr_044_62fc

    ld a, [hl]
    cp e
    jr nz, jr_044_62fc

    ld hl, $c884
    ld de, $c836
    ld b, $08
    call Call_044_4000
    ld hl, $c8ca
    ld b, $2c
    call Call_044_4000
    ld a, [$cb79]
    ld c, a
    sub $08
    ld e, a
    ld d, $00
    ld hl, $cb7a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c836
    ld b, $08
    call Call_044_4000
    ld b, c
    call Call_044_5f63
    jr jr_044_635a

jr_044_62f5:
    ld a, $25
    ld [$c872], a
    jr jr_044_6301

jr_044_62fc:
    ld a, $14
    ld [$c872], a

jr_044_6301:
    ld a, $06
    ld [$c86b], a
    jp Jump_044_6269


Jump_044_6309:
    ld a, [$c821]
    and $e0
    jr nz, jr_044_6314

    ld b, $92
    jr jr_044_634b

jr_044_6314:
    cp $e0
    ld a, $11
    jr z, jr_044_631b

    inc a

jr_044_631b:
    ld [$c872], a
    ld a, $06
    ld [$c86b], a
    jp Jump_044_6269


Jump_044_6326:
    ld d, a
    ld a, [$cb79]
    add $0a
    ld e, a
    ld hl, $cb74
    ld a, $a1
    jp Jump_044_5f02


Jump_044_6335:
    ld a, $02
    ld [$c86a], a
    ld hl, $c821
    res 0, [hl]
    set 5, [hl]
    ret


Jump_044_6342:
    ld a, [$c872]
    call Call_044_625d
    jp Jump_044_56a4


Jump_044_634b:
jr_044_634b:
    ld a, [$cb4c]
    add $0a
    ld e, a
    ld d, $00
    ld hl, $cb47
    ld a, b
    jp Jump_044_5f02


jr_044_635a:
    ld hl, $c86e
    ld a, $80
    ld [hl+], a
    ld a, $c8
    ld [hl], a
    ld a, $97
    ld hl, $602d
    jp Jump_044_5eff


Jump_044_636b:
    ld a, $99
    ld de, $000c
    jp Jump_044_5f02


    dec a
    jr z, jr_044_635a

    dec a
    jr z, jr_044_6381

    dec a
    jr z, jr_044_639b

    dec a
    jr z, jr_044_63ad

    dec [hl]
    ret


jr_044_6381:
    ld a, [$c821]
    and $e0
    jr nz, jr_044_638c

    ld b, $92
    jr jr_044_634b

jr_044_638c:
    cp $e0
    ld a, $11
    jr z, jr_044_6393

    inc a

jr_044_6393:
    ld a, $03
    ld [$c86b], a
    jp Jump_044_6269


jr_044_639b:
    ld hl, $c822
    set 4, [hl]
    ld a, $02
    ld [$c86a], a
    ld hl, $c821
    res 0, [hl]
    set 6, [hl]
    ret


jr_044_63ad:
    ld a, [$c872]
    call Call_044_625d
    jp Jump_044_56a4


    dec a
    jr z, jr_044_63be

    dec a
    jr z, jr_044_63c6

    ret


jr_044_63bd:
    dec [hl]

jr_044_63be:
    ld a, $94
    ld hl, $6068
    jp Jump_044_5eff


jr_044_63c6:
    ld a, [$ca3c]
    cp $ee
    jr z, jr_044_63bd

    ld hl, $c822
    set 4, [hl]
    ld a, $02
    ld [$c86a], a
    ld hl, $c821
    res 0, [hl]
    set 6, [hl]
    set 5, [hl]
    ret


    dec a
    jr z, jr_044_63f2

    dec a
    jr z, jr_044_640a

    dec a
    jr z, jr_044_6416

    dec a
    jr z, jr_044_641e

    dec a
    jr z, jr_044_6421

    dec [hl]
    ret


jr_044_63f2:
    ld a, [$ca3c]
    cp $9f
    jr z, jr_044_6408

    call Call_044_67e1
    jr z, jr_044_6408

    ld hl, $c86b
    dec [hl]
    ld hl, $cb67
    jp Jump_044_67c5


jr_044_6408:
    jr jr_044_6430

jr_044_640a:
    xor a
    ld [$c86d], a
    ld a, $a2
    ld hl, $603c
    jp Jump_044_5eff


jr_044_6416:
    ld a, $93
    ld hl, $6023
    jp Jump_044_5eff


jr_044_641e:
    jp Jump_044_6269


jr_044_6421:
    ld hl, $c822
    res 4, [hl]
    ld hl, $c821
    ld a, [hl]
    and $0f
    ld [hl], a
    jp Jump_044_56a0


Call_044_6430:
Jump_044_6430:
jr_044_6430:
    ld a, $03
    ld [$c807], a
    ld de, $cb47
    ld hl, $6083
    ld b, $06
    call Call_044_4000
    ld a, [$c86c]
    ld [de], a
    inc de
    inc b
    call Call_044_5f63
    ld a, $a4
    ld hl, $cb47
    jp Jump_044_5f02


    dec a
    jr z, jr_044_6458

    dec a
    jr z, jr_044_6496

    ret


jr_044_6458:
    ld b, $06
    ld de, $cba3
    call Call_044_5f63
    ld a, [$c86e]
    inc a
    cp $03
    jr nz, jr_044_648b

    ld a, [$cabc]
    or a
    jr z, jr_044_648b

    ld hl, $c995
    ld a, [hl+]
    cp $99
    jr nz, jr_044_6480

    ld a, [hl+]
    cp $66
    jr nz, jr_044_6480

    ld a, [hl+]
    cp $23
    jr z, jr_044_648b

jr_044_6480:
    ld hl, $cb97
    ld de, $c995
    ld b, $10
    call Call_044_4000

jr_044_648b:
    ld a, $a3
    ld de, $0010
    ld hl, $cb97
    jp Jump_044_5f02


jr_044_6496:
    ld a, [$ca3c]
    cp $a3
    jr z, jr_044_64ce

    ld a, [$c822]
    bit 3, a
    jr z, jr_044_64ab

    dec [hl]
    ld a, $03
    ld [$c807], a
    ret


jr_044_64ab:
    ld a, [$c9af]
    cp $05
    jr c, jr_044_64b8

    ld hl, $c821
    set 1, [hl]
    ret


jr_044_64b8:
    dec [hl]
    ld hl, $c9af
    inc [hl]
    ld hl, $c822
    set 3, [hl]
    ld hl, $c815
    ld a, [$c820]
    ld [hl+], a
    ld a, [$c81f]
    ld [hl], a
    ret


jr_044_64ce:
    xor a
    ld [$c9af], a
    ld a, [$c86e]
    inc a
    ld [$c86d], a
    dec a
    jp z, Jump_044_661c

    dec a
    jp z, Jump_044_6654

    dec a
    jp z, Jump_044_6597

    dec a
    jp z, Jump_044_6566

    call Call_044_65c7
    push de
    ld de, $c880
    ld hl, $c827
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, $01
    ld [$c86e], a
    ld a, $fa
    ld [hl+], a
    xor a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    pop de
    ld a, $01
    ld [$c994], a
    call Call_044_669b
    ld a, $05
    ld [$c86b], a
    call Call_044_6534
    ld a, [$c9a5]
    or a
    jr z, jr_044_6521

    ld a, $01

jr_044_6521:
    add $23
    ld [$c86a], a
    ld a, [$c98a]
    cp $02
    jr nz, jr_044_6531

    xor a
    ld [$c9a5], a

jr_044_6531:
    jp Jump_044_65bf


Call_044_6534:
    ld b, $fa
    ld hl, $c880
    xor a

jr_044_653a:
    ld [hl+], a
    dec b
    jr nz, jr_044_653a

    ld a, [$c876]
    ld [$c87c], a
    ld a, [$c877]
    ld [$c87d], a
    ld a, [$c87a]
    ld [$c87e], a
    ld a, [$c87b]
    ld [$c87f], a
    ld a, c
    ld [$cb58], a
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld hl, $cb53
    jp Jump_044_5f02


Jump_044_6566:
    call Call_044_65c7
    ld a, [$cb5a]
    and $01
    or a
    jr nz, jr_044_657d

    ld a, [$c98a]
    cp $02
    jr nz, jr_044_657d

    ld a, $01
    ld [$c994], a

jr_044_657d:
    call Call_044_669b
    ld a, $05
    ld [$c86b], a
    call Call_044_6534
    ld a, [$c9a5]
    or a
    jr z, jr_044_6590

    ld a, $01

jr_044_6590:
    add $21
    ld [$c86a], a
    jr jr_044_65bf

Jump_044_6597:
    call Call_044_65c7
    call Call_044_669b
    ld a, $05
    ld [$c86b], a
    call Call_044_6534
    ld a, [$c98f]
    ld b, a
    ld a, [$c994]
    and $01
    add $13
    bit 0, b
    jr z, jr_044_65bc

    sub $13
    add $1f
    dec b
    sla b
    add b

jr_044_65bc:
    ld [$c86a], a

Jump_044_65bf:
jr_044_65bf:
    ld hl, $c821
    set 0, [hl]
    res 2, [hl]
    ret


Call_044_65c7:
    ld hl, $c872
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld a, [$c994]
    and $01
    xor $01
    ld [$c86b], a
    ld hl, $c827
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc de
    inc de
    ld a, $80
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    dec bc
    dec bc
    ld a, $fa
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld de, $cb47
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld a, [$c86c]
    ld [de], a
    inc de
    ld b, $01
    call Call_044_5f63
    ld de, $cb53
    ld hl, $6072
    ld b, $05
    call Call_044_4000
    inc de
    ld a, [$c86c]
    ld [de], a
    inc de
    ret


Jump_044_661c:
    xor a
    ld [$c86b], a
    ld a, [$c86c]
    ld [$cbbd], a
    ld de, $cbad
    ld [de], a
    inc de
    ld b, $01
    call Call_044_5f63
    call Call_044_6724
    ld a, [$cbbc]
    ld b, a
    ld de, $cbbd
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_044_5f63
    ld hl, $cba7
    call Call_044_67c5
    ld a, $11
    ld [$c86a], a

jr_044_664e:
    ld hl, $c821
    set 0, [hl]
    ret


Jump_044_6654:
    xor a
    ld [$c86b], a
    ld a, [$c86c]
    ld [$cbad], a
    ld [$cbed], a
    ld de, $cbcd
    ld [de], a
    inc de
    ld b, $01
    call Call_044_5f63
    call Call_044_6724
    ld a, [$cbec]
    ld b, a
    ld de, $cbed
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_044_5f63
    ld a, [$cbac]
    ld b, a
    ld de, $cbad
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_044_5f63
    ld hl, $cbc7
    call Call_044_67c5
    ld a, $12
    ld [$c86a], a
    jr jr_044_664e

Call_044_669b:
    ld bc, $0001
    ld hl, $6110
    ld a, [$c994]
    or a
    call nz, Call_044_66ac
    call Call_044_4007
    ret


Call_044_66ac:
    ld hl, $6137
    ret


Call_044_66b0:
    ld hl, $6115
    jp Jump_044_4007


Call_044_66b6:
    ld hl, $6121
    call Call_044_4007
    ld hl, HeaderManufacturerCode
    ld b, $04
    call Call_044_4000
    ld a, $2d
    ld [de], a
    inc de
    ld a, [HeaderMaskROMVersion]
    and $f0
    swap a
    or $30
    ld [de], a
    inc de
    ld a, [HeaderMaskROMVersion]
    and $0f
    or $30
    ld [de], a
    inc de
    ld a, $07
    add c
    ld c, a
    ld hl, $6132
    jp Jump_044_4007


Call_044_66e6:
    xor a
    ld [$c86b], a
    ld hl, $613d
    call Call_044_4007
    ld hl, $c9a5
    ld b, $05

jr_044_66f5:
    ld a, [hl]
    cp $30
    jr nz, jr_044_6701

    inc hl
    dec b
    ld a, $01
    cp b
    jr nz, jr_044_66f5

jr_044_6701:
    push bc
    call Call_044_4000
    ld a, $0d
    ld [de], a
    inc de
    ld a, $0a
    ld [de], a
    inc de
    pop bc
    ld a, b
    add $02
    add c
    ld c, a
    or c
    ret


    xor a
    ld [$c86c], a
    ld a, $02
    ld [$c86a], a
    ld hl, $c821
    res 0, [hl]
    ret


Call_044_6724:
    ld a, $ff
    ld [$c86e], a

Call_044_6729:
    push hl
    ld hl, $c82c
    xor a
    ld [hl-], a
    ld a, $ff
    ld [hl-], a
    ld a, $c8
    ld [hl-], a
    ld a, $80
    ld [hl], a
    pop hl
    ret


    dec a
    jr z, jr_044_6752

    dec a
    jr z, jr_044_678f

    dec a
    jr z, jr_044_6744

    ret


jr_044_6744:
    xor a
    ld [$c86d], a
    ld a, $30
    call Call_044_625d
    set 1, [hl]
    res 0, [hl]
    ret


jr_044_6752:
    call Call_044_67e1
    jr nz, jr_044_677a

    ld hl, $c880
    call Call_044_6b11
    ld a, $02
    cp d
    jr nz, jr_044_67b7

    ld a, $20
    cp e
    jr nz, jr_044_67b7

    call Call_044_6724
    ld a, [$cbbc]
    add $0a
    ld e, a
    ld d, $00
    ld a, $95
    ld hl, $cbb7
    jp Jump_044_5f02


jr_044_677a:
    ld a, [$ca3c]
    cp $9f
    jr z, jr_044_67cd

    ld hl, $c86b
    dec [hl]
    xor a
    ld [$ca3f], a
    ld hl, $cba7
    jp Jump_044_67c5


jr_044_678f:
    call Call_044_67e1
    jr nz, jr_044_677a

    ld hl, $c880
    call Call_044_6b11
    ld a, $02
    cp d
    jr nz, jr_044_67b7

    ld a, $50
    cp e
    jr nz, jr_044_67b7

    ld a, $03
    ld [$c86a], a
    ld hl, $c821
    ld a, [hl]
    and $d6
    or $80
    ld [hl], a
    xor a
    ld [$c98a], a
    ret


jr_044_67b7:
    ld hl, $c810
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $02
    ld [$c86b], a
    jp Jump_044_6430


Call_044_67c5:
Jump_044_67c5:
    ld de, $000b
    ld a, $95
    jp Jump_044_5f02


Jump_044_67cd:
jr_044_67cd:
    ld hl, $c810
    xor a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c86d], a
    ld a, $30
    call Call_044_625d
    set 1, [hl]
    res 0, [hl]
    ret


Call_044_67e1:
    call Call_044_6807
    ld hl, $c832

jr_044_67e7:
    ld a, [hl+]
    cp $0d
    ret nz

    ld a, [hl]
    cp $0a
    ret nz

    ld a, $20
    ld [hl], a
    ret


Call_044_67f3:
    call Call_044_6807
    ld hl, $c82f
    ld a, [hl+]
    cp $0d
    ret nz

    ld a, [hl+]
    cp $0a
    ret nz

    ld a, [hl+]
    cp $2e
    ret nz

    jr jr_044_67e7

Call_044_6807:
    push bc
    push de
    ld hl, $ca3f
    ld a, [hl]
    dec a
    jr z, jr_044_682d

    ld c, a
    cp $05
    jr nc, jr_044_6830

    ld a, $05
    sub c
    ld b, a
    ld e, c
    ld d, $00
    ld hl, $c82f
    add hl, de
    ld de, $c82f
    call Call_044_4000
    ld hl, $ca41
    ld b, c

jr_044_682a:
    call Call_044_4000

jr_044_682d:
    pop de
    pop bc
    ret


jr_044_6830:
    sub $05
    ld c, a
    ld b, $00
    ld hl, $ca41
    add hl, bc
    ld b, $05
    ld de, $c82f
    jr jr_044_682a

    dec a
    jr z, jr_044_6844

    ret


jr_044_6844:
    call Call_044_67e1
    jr nz, jr_044_68ab

    ld hl, $c880
    ld a, [hl+]
    cp $32
    jr nz, jr_044_68bd

    ld a, [hl+]
    cp $35
    jr nz, jr_044_68bd

    call Call_044_6724
    ld hl, $c87c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    or a
    jr z, jr_044_689d

    push hl
    ld hl, $c86b
    dec [hl]
    ld bc, $0001
    ld de, $cb5a
    ld hl, $60b0
    call Call_044_4007
    pop hl
    ld a, $80
    call Call_044_400f
    ld a, $3e
    ld [de], a
    inc de
    inc c
    ld a, l
    ld [$c87c], a
    ld a, h
    ld [$c87d], a
    call Call_044_695e
    ld a, c
    ld [$cb58], a
    ld b, c
    call Call_044_5f63
    ld hl, $cb53
    ld d, $00
    ld e, c
    ld a, $95
    jp Jump_044_5f02


jr_044_689d:
    ld a, $03
    ld [$c86a], a
    call Call_044_68d3
    ld a, $01
    ld [$c98a], a
    ret


jr_044_68ab:
    ld a, [$ca3c]
    cp $9f
    jp z, Jump_044_67cd

    ld hl, $c86b
    dec [hl]
    ld hl, $cb47
    jp Jump_044_67c5


Jump_044_68bd:
jr_044_68bd:
    ld hl, $c880
    call Call_044_6b11
    ld hl, $c810
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $30
    call Call_044_625d
    set 1, [hl]
    res 0, [hl]
    ret


Call_044_68d3:
Jump_044_68d3:
    ld hl, $c821
    res 0, [hl]
    res 2, [hl]
    ret


    dec a
    jr z, jr_044_6947

    dec a
    jr z, jr_044_68e5

    dec a
    jr z, jr_044_6913

    ret


jr_044_68e5:
    ld a, [$ca3c]
    cp $9f
    jp z, Jump_044_67cd

    call Call_044_7482
    ld a, [$c86f]
    or a
    jr nz, jr_044_6901

    ld a, $03
    ld [$c86a], a
    ld hl, $c821
    res 0, [hl]
    ret


jr_044_6901:
    call Call_044_6724
    ld de, $cb4c
    ld a, $01
    ld [de], a
    inc de
    inc de
    ld b, $01
    call Call_044_5f63
    jr jr_044_6941

jr_044_6913:
    call Call_044_67e1
    jr nz, jr_044_693d

    ld a, [$ca3c]
    cp $9f
    jp z, Jump_044_67cd

    ld hl, $c880
    call Call_044_6b11
    ld a, d
    cp $02
    jr nz, jr_044_695b

    ld a, e
    cp $50
    jr nz, jr_044_695b

    ld a, $03
    ld [$c86a], a
    call Call_044_68d3
    xor a
    ld [$c98a], a
    ret


jr_044_693d:
    ld hl, $c86b
    dec [hl]

jr_044_6941:
    ld hl, $cb47
    jp Jump_044_67c5


jr_044_6947:
    call Call_044_67e1
    jr nz, jr_044_693d

    ld hl, $c880
    call Call_044_6b11
    ld a, d
    cp $03
    jr nz, jr_044_695b

    ld a, e
    cp $54
    ret z

jr_044_695b:
    jp Jump_044_68bd


Call_044_695e:
    ld a, $0d
    ld [de], a
    inc de
    inc c
    ld a, $0a
    ld [de], a
    inc de
    inc c
    ret


    dec a
    jr z, jr_044_6970

    dec a
    jr z, jr_044_6989

    ret


jr_044_6970:
    ld a, [$ca3c]
    cp $9f
    jr z, jr_044_6986

    call Call_044_67e1
    jr z, jr_044_6986

    ld hl, $c86b
    dec [hl]
    ld hl, $cb67
    jp Jump_044_67c5


jr_044_6986:
    jp Jump_044_6430


jr_044_6989:
    xor a
    ld [$c86d], a
    ld a, $02
    ld [$c86a], a
    ld hl, $c821
    res 0, [hl]
    res 7, [hl]
    set 5, [hl]
    ret


    dec a
    jr z, jr_044_69aa

    dec a
    jr z, jr_044_69c9

    dec a
    jr z, jr_044_69e7

    dec a
    jp z, Jump_044_6a1d

    ret


jr_044_69aa:
    call Call_044_67e1
    jr nz, jr_044_69fe

    ld a, [$c880]
    cp $2b
    jr nz, jr_044_6a0f

    call Call_044_6724
    ld a, [$cbac]
    add $0a
    ld e, a
    ld d, $00
    ld a, $95
    ld hl, $cba7
    jp Jump_044_5f02


jr_044_69c9:
    ld d, a
    call Call_044_67e1
    jr nz, jr_044_69fe

    ld a, [$c880]
    cp $2b
    jr nz, jr_044_6a0f

    call Call_044_6724
    ld a, [$cbec]
    add $0a
    ld e, a
    ld a, $95
    ld hl, $cbe7
    jp Jump_044_5f02


jr_044_69e7:
    call Call_044_67e1
    jr nz, jr_044_69fe

    ld a, [$c880]
    cp $2b
    jr nz, jr_044_6a0f

    ld a, $04
    ld [$c86a], a
    call Call_044_68d3
    set 7, [hl]
    ret


jr_044_69fe:
    ld a, [$ca3c]
    cp $9f
    jr z, jr_044_6a42

    ld hl, $c86b
    dec [hl]
    ld hl, $cbc7
    jp Jump_044_67c5


jr_044_6a0f:
    ld a, [$c86b]
    ld [$cb67], a
    ld a, $03
    ld [$c86b], a
    jp Jump_044_6430


Jump_044_6a1d:
    xor a
    ld [$c86d], a
    ld de, $0002
    ld a, [$cb67]
    cp $01
    jr z, jr_044_6a2c

    inc de

Jump_044_6a2c:
jr_044_6a2c:
    ld hl, $c821
    set 1, [hl]
    res 0, [hl]
    ld hl, $c80f
    ld a, $31
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $05
    ld [$c86a], a
    ret


Jump_044_6a42:
jr_044_6a42:
    ld hl, $c810
    xor a
    ld [hl+], a
    ld [hl], a
    xor a
    ld [$c86d], a
    ld a, $31
    call Call_044_625d
    set 1, [hl]
    res 0, [hl]
    ret


    dec a
    jr z, jr_044_6a5a

    ret


jr_044_6a5a:
    call Call_044_67e1
    jr nz, jr_044_6a95

    ld hl, $c880
    ld a, [hl+]
    cp $2b
    jr nz, jr_044_6aa6

jr_044_6a67:
    ld a, [hl+]
    cp $20
    jr nz, jr_044_6a67

    call Call_044_6aac
    ld a, [$c86e]
    ld c, a
    ld a, [$c86f]
    ld b, a
    ld a, e
    ld [bc], a
    inc bc
    ld a, d
    ld [bc], a
    call Call_044_6aac
    ld hl, $c86e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, $04
    ld [$c86a], a
    jp Jump_044_68d3


jr_044_6a95:
    ld a, [$ca3c]
    cp $9f
    jr z, jr_044_6a42

    ld hl, $c86b
    dec [hl]
    ld hl, $cbc7
    jp Jump_044_67c5


jr_044_6aa6:
    ld de, $0005
    jp Jump_044_6a2c


Call_044_6aac:
    ld a, [$c872]
    push af
    ld a, [$c873]
    push af
    ld a, [$c874]
    push af
    ld bc, $0000
    ld de, $0000

jr_044_6abe:
    ld a, [hl+]
    cp $0d
    jr z, jr_044_6b04

    cp $20
    jr z, jr_044_6b04

    and $0f
    ld b, a
    sla e
    rl d
    rl c
    ld a, e
    ld [$c872], a
    ld a, d
    ld [$c873], a
    ld a, c
    ld [$c874], a
    sla e
    rl d
    rl c
    sla e
    rl d
    rl c
    ld a, [$c872]
    add e
    ld e, a
    ld a, [$c873]
    adc d
    ld d, a
    ld a, [$c874]
    adc c
    ld c, a
    ld a, b
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    ld a, $00
    adc c
    ld c, a
    jr jr_044_6abe

jr_044_6b04:
    pop af
    ld [$c874], a
    pop af
    ld [$c873], a
    pop af
    ld [$c872], a
    ret


Call_044_6b11:
    ld a, [$c872]
    push af
    ld a, [$c873]
    push af
    ld a, [$c874]
    push af
    ld bc, $0300
    ld de, $c872
    call Call_044_6b60
    call nc, Call_044_6b60
    call nc, Call_044_6b60
    dec hl

jr_044_6b2d:
    ld a, [hl+]
    cp $0d
    jr z, jr_044_6b36

    cp $20
    jr nz, jr_044_6b2d

jr_044_6b36:
    push hl
    ld hl, $c872
    ld de, $0000
    ld a, b
    or a
    jr z, jr_044_6b49

    dec a
    jr z, jr_044_6b4b

    dec a
    jr z, jr_044_6b4f

    jr jr_044_6b52

jr_044_6b49:
    ld a, [hl+]
    ld d, a

jr_044_6b4b:
    ld a, [hl+]
    swap a
    ld e, a

jr_044_6b4f:
    ld a, [hl+]
    or e
    ld e, a

jr_044_6b52:
    pop hl
    pop af
    ld [$c874], a
    pop af
    ld [$c873], a
    pop af
    ld [$c872], a
    ret


Call_044_6b60:
    ld a, [hl+]
    cp $30
    jr c, jr_044_6b6f

    cp $3a
    jr nc, jr_044_6b6f

    and $0f
    ld [de], a
    inc de
    dec b
    ret


jr_044_6b6f:
    scf
    ret


    dec a
    jr z, jr_044_6b75

    ret


jr_044_6b75:
    call Call_044_67e1
    jr nz, jr_044_6ba3

    ld hl, $c880
    ld a, [hl+]
    cp $2b
    jr nz, jr_044_6bb5

jr_044_6b82:
    ld a, [hl+]
    cp $20
    jr nz, jr_044_6b82

jr_044_6b87:
    ld a, [hl+]
    cp $20
    jr nz, jr_044_6b87

    call Call_044_6aac
    ld hl, $c86e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld a, $04
    ld [$c86a], a
    jp Jump_044_68d3


jr_044_6ba3:
    ld a, [$ca3c]
    cp $9f
    jp z, Jump_044_6a42

    ld hl, $c86b
    dec [hl]
    ld hl, $cbc7
    jp Jump_044_67c5


jr_044_6bb5:
    ld de, $0004
    jp Jump_044_6a2c


    dec a
    jr z, jr_044_6bbf

    ret


jr_044_6bbf:
    call Call_044_67e1
    jr nz, jr_044_6bd4

    ld hl, $c880
    ld a, [hl+]
    cp $2b
    jr nz, jr_044_6be6

    ld a, $04
    ld [$c86a], a
    jp Jump_044_68d3


jr_044_6bd4:
    ld a, [$ca3c]
    cp $9f
    jp z, Jump_044_6a42

    ld hl, $c86b
    dec [hl]
    ld hl, $cbc7
    jp Jump_044_67c5


jr_044_6be6:
    ld de, $0004
    jp Jump_044_6a2c


    dec a
    jr z, jr_044_6bf7

    dec a
    jp z, Jump_044_6cdb

    dec a
    ret nz

    dec [hl]
    ret


jr_044_6bf7:
    ld a, [$c880]
    cp $2d
    jr nz, jr_044_6c03

    call Call_044_67e1
    jr z, jr_044_6c0b

jr_044_6c03:
    ld a, [$c821]
    bit 2, a
    jp z, Jump_044_6cef

jr_044_6c0b:
    ld hl, $c86b
    inc [hl]
    ld hl, $c880
    ld a, [hl+]
    cp $2b
    jp nz, Jump_044_6d20

    ld b, $7f

jr_044_6c1a:
    ld a, [hl+]
    dec b
    cp $0a
    jr nz, jr_044_6c1a

    push hl
    ld hl, $c98f
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, b
    ld [$c82d], a
    ld a, [hl+]
    ld h, [hl]
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr nc, jr_044_6c56

    cp $ff
    jr nz, jr_044_6c56

    ld hl, $c991
    ld a, [hl+]
    ld c, a
    inc hl
    ld a, b
    sub c
    ld [hl+], a
    ld a, [$c82b]
    ld [hl], a
    ld hl, $c827
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    ld [hl+], a
    xor a
    ld [hl], a
    pop hl
    ld b, c
    jp Jump_044_4000


jr_044_6c56:
    ld [$c993], a
    ld a, [$c82b]
    ld c, a
    ld [$c994], a
    push hl
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    jr nc, jr_044_6c9f

    cp $ff
    jr nz, jr_044_6c9f

    ld a, c
    ld [$ca3d], a
    ld a, [$ca3f]
    sub c
    pop hl
    ld c, l
    pop hl
    push af
    call Call_044_4000
    pop af
    push de
    ld hl, $ca40
    ld e, a
    ld d, $00
    add hl, de
    pop de
    ld b, c
    call Call_044_4000
    ld a, [$ca3d]
    sub c
    ld [$c994], a
    ld hl, $c827
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c991]
    ld [hl+], a
    xor a
    ld [hl], a
    ret


jr_044_6c9f:
    ld [$c994], a
    ld a, l
    ld [$c82b], a
    ld a, h
    ld [$c82c], a
    pop hl
    pop hl
    call Call_044_4000
    ld a, [$ca3f]
    sub c
    push de
    ld hl, $ca40
    ld e, a
    ld d, $00
    add hl, de
    pop de
    ld b, c
    call Call_044_4000
    ld a, [$c82d]
    add c
    ld [$c82d], a
    ld a, [$c82e]
    adc $00
    ld [$c82e], a
    ld hl, $c829
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld hl, $c821
    res 2, [hl]

Jump_044_6cdb:
    ld a, [$c821]
    bit 2, a
    jr z, jr_044_6cea

    ld a, $02
    ld [$c86b], a
    jp Jump_044_6d09


jr_044_6cea:
    call Call_044_67f3
    jr z, jr_044_6d01

Jump_044_6cef:
    ld a, [$ca3c]
    cp $9f
    jp z, Jump_044_6a42

    ld hl, $c86b
    dec [hl]
    ld hl, $cbc7
    jp Jump_044_67c5


jr_044_6d01:
    ld a, $04
    ld [$c86a], a
    call Call_044_68d3

Jump_044_6d09:
    ld a, [$c86e]
    ld l, a
    ld a, [$c86f]
    or l
    ret z

    ld hl, $c827
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $c82d
    ld b, $02
    jp Jump_044_4000


Jump_044_6d20:
    ld a, [$c86a]
    cp $1a
    jr nz, jr_044_6d2d

    ld de, $0004
    jp Jump_044_6a2c


jr_044_6d2d:
    ld de, $0004
    jp Jump_044_6a2c


    dec a
    jr z, jr_044_6d87

    dec a
    jr z, jr_044_6d9f

    dec a
    jp z, Jump_044_6e46

    dec a
    jr z, jr_044_6d4d

    dec a
    jp z, Jump_044_7317

    dec a
    jp z, Jump_044_7386

    dec a
    jp Jump_044_6e46


    ret


jr_044_6d4d:
    ld a, [$c86a]
    cp $23
    jr z, jr_044_6d6d

    cp $1f
    jr z, jr_044_6d60

    cp $20
    jr z, jr_044_6d6d

    cp $22
    jr nz, jr_044_6d82

jr_044_6d60:
    ld hl, $c98b
    ld a, [hl+]
    cp $01
    jr nz, jr_044_6d82

    ld a, [hl]
    cp $04
    jr nz, jr_044_6d82

jr_044_6d6d:
    ld hl, $c86e
    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $c82b
    ld [hl+], a
    ld [hl], a
    ld hl, $c821
    res 2, [hl]
    ld hl, $c86b
    dec [hl]
    dec [hl]

jr_044_6d82:
    ld hl, $c86b
    dec [hl]
    ret


jr_044_6d87:
    call Call_044_7482
    ld de, $cb47
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld a, [$c86c]
    ld [de], a
    inc de
    ld b, $01
    call Call_044_5f63

jr_044_6d9f:
    ld a, [$c821]
    bit 2, a
    jr z, jr_044_6dab

    ld a, $03
    ld [hl], a
    jr jr_044_6dc1

jr_044_6dab:
    ld a, [$ca3c]
    cp $9f
    jr z, jr_044_6dc1

    ld hl, $c86b
    dec [hl]
    ld de, $000b
    ld hl, $cb47
    ld b, $05
    jp Jump_044_5f07


jr_044_6dc1:
    ld a, [$c989]
    cp $02
    jr nc, jr_044_6df2

    call Call_044_6f61
    bit 2, a
    ret nz

    cp $03
    jr z, jr_044_6e38

    cp $01
    jr nz, jr_044_6df2

    ld a, [$c86a]
    cp $1f
    jr z, jr_044_6de1

    cp $20
    jr nz, jr_044_6df2

jr_044_6de1:
    ld hl, $c98b
    ld a, [hl+]
    cp $01
    jr nz, jr_044_6df2

    ld a, $04
    cp [hl]
    jr nz, jr_044_6df2

    xor a
    ld [$c990], a

jr_044_6df2:
    ld a, [$c86e]
    ld l, a
    ld a, [$c86f]
    or l
    ret z

    ld a, [$c86a]
    cp $13
    jr z, jr_044_6e21

    cp $14
    jr z, jr_044_6e21

    cp $20
    ret z

    cp $22
    ret z

    cp $23
    ret z

    cp $1f
    jr nz, jr_044_6e21

    ld hl, $c98b
    ld a, [hl+]
    cp $00
    ret nz

    ld a, $02
    cp [hl]
    ret nz

    ld a, [$c86a]

jr_044_6e21:
    cp $24
    jr nz, jr_044_6e2a

    ld hl, $c878
    jr jr_044_6e2d

jr_044_6e2a:
    ld hl, $c827

jr_044_6e2d:
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $c82d
    ld b, $02
    jp Jump_044_4000


jr_044_6e38:
    ld hl, $c821
    set 1, [hl]
    res 0, [hl]
    ld de, $c98b
    ld a, $24
    jr jr_044_6e95

Jump_044_6e46:
    ld a, [$c86a]
    cp $1f
    jr z, jr_044_6ea6

    cp $20
    jr z, jr_044_6ea6

    ld a, [$c98a]
    cp $01
    jr z, jr_044_6e65

    ld a, [$c86a]
    cp $21
    jp z, Jump_044_6eea

    cp $22
    jp z, Jump_044_6eea

jr_044_6e65:
    ld a, [$c990]
    or a
    jp z, Jump_044_6f3d

Jump_044_6e6c:
jr_044_6e6c:
    ld hl, $c98c
    ld a, [hl-]
    cp $03
    jr nz, jr_044_6e7f

    ld a, [hl]
    or a
    jr z, jr_044_6e7f

    cp $03
    jr nc, jr_044_6e7f

    call Call_044_73fe

Jump_044_6e7f:
jr_044_6e7f:
    ld hl, $c821
    set 1, [hl]
    res 0, [hl]
    ld de, $c98b
    ld a, [$c990]
    cp $01
    ld a, $32
    jr z, jr_044_6e95

    inc de
    inc de
    inc a

jr_044_6e95:
    ld [$c80f], a
    ld hl, $c810
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ld a, $05
    ld [$c86a], a
    ret


jr_044_6ea6:
    ld hl, $c98b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    cp $00
    jr nz, jr_044_6ec1

    ld a, $02
    cp h
    jr nz, jr_044_6ec1

    ld a, [$c98d]
    ld b, a
    ld a, [$c98e]
    or b
    jr nz, jr_044_6e6c

    jr jr_044_6f3d

jr_044_6ec1:
    ld a, $01
    cp l
    jr nz, jr_044_6e6c

    ld a, $04
    cp h
    jr nz, jr_044_6e6c

    ld a, [$c9a5]
    or a
    jr nz, jr_044_6efb

    ld a, [$c86e]
    ld l, a
    ld a, [$c86f]
    or l
    jr nz, jr_044_6efb

    ld a, $02
    ld [$c86a], a
    xor a
    ld [$c86d], a
    ld hl, $c821
    res 0, [hl]
    ret


Jump_044_6eea:
    ld hl, $c98b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    cp $00
    jp nz, Jump_044_6e6c

    ld a, $02
    cp h
    jp nz, Jump_044_6e6c

jr_044_6efb:
    ld a, [$c98d]
    ld b, a
    ld a, [$c98e]
    cp b
    jp nz, Jump_044_6e6c

    or a
    jr z, jr_044_6f13

    cp $01
    jp nz, Jump_044_6e6c

    ld a, $01
    ld [$c993], a

jr_044_6f13:
    ld a, [$c86b]
    cp $07
    jr z, jr_044_6f3d

    ld hl, $c98f
    inc [hl]
    ld a, $0f
    ld [$c86a], a
    ld a, $01
    ld [$c86b], a
    ld a, [$c86d]
    ld [$c86e], a
    xor a
    ld [$c989], a
    ld a, $a3
    ld de, $0010
    ld hl, $c995
    jp Jump_044_5f02


Jump_044_6f3d:
jr_044_6f3d:
    ld a, [$c993]
    cp $01
    jr nz, jr_044_6f52

    ld a, $02
    ld [$c990], a
    ld hl, $c98d
    dec a
    ld [hl+], a
    ld [hl], a
    jp Jump_044_6e7f


jr_044_6f52:
    ld a, $02
    ld [$c86a], a
    xor a
    ld [$c86d], a
    ld hl, $c821
    res 0, [hl]
    ret


Call_044_6f61:
    ld hl, $c989
    ld a, [hl]
    or a
    jr nz, jr_044_6f8a

    inc [hl]
    ld hl, $c880
    ld de, $0008
    add hl, de

jr_044_6f70:
    ld a, [hl+]
    cp $20
    jr z, jr_044_6f70

    dec hl
    ld d, $00
    cp $32
    jr z, jr_044_6f7d

    inc d

jr_044_6f7d:
    ld a, d
    ld [$c990], a
    call Call_044_6b11
    ld hl, $c98b
    ld a, e
    ld [hl+], a
    ld [hl], d

jr_044_6f8a:
    ld hl, $c880
    ld a, [$c82d]
    ld b, a
    or a
    jr nz, jr_044_6fa1

    ld hl, $c98b
    ld a, $00
    ld [hl+], a
    ld [hl], a
    ld a, $01
    ld [$c990], a
    ret


jr_044_6fa1:
    call Call_044_6fd5
    call Call_044_7008
    call Call_044_7026
    call Call_044_7054
    call Call_044_7167
    call Call_044_7180
    call Call_044_7268
    jr c, jr_044_6fc9

    ld a, $0d
    cp [hl]
    jr z, jr_044_6fc2

    ld a, $0a
    cp [hl]
    jr nz, jr_044_6fa1

jr_044_6fc2:
    ld hl, $c990
    res 2, [hl]
    jr jr_044_6fce

jr_044_6fc9:
    ld hl, $c990
    set 2, [hl]

jr_044_6fce:
    call Call_044_706b
    ld a, [$c990]
    ret


Call_044_6fd5:
    ld de, $7001
    push hl
    call Call_044_7281
    jr nc, jr_044_6fe0

    pop hl
    ret


jr_044_6fe0:
    pop de
    push bc
    push de
    push hl
    ld b, $00

jr_044_6fe6:
    inc b
    ld a, [hl+]
    cp $0a
    jr nz, jr_044_6fe6

    pop hl
    ld c, b
    ld a, [$c833]
    ld e, a
    ld a, [$c834]
    ld d, a
    or e
    jr z, jr_044_6ffe

    call Call_044_4000
    xor a
    ld [de], a

jr_044_6ffe:
    pop hl
    pop bc
    ret


    ld h, h
    ld h, c
    ld [hl], h
    ld h, l
    ld a, [hl-]
    jr nz, jr_044_7008

Call_044_7008:
jr_044_7008:
    ld de, $72a6
    push hl
    call Call_044_7273
    jr nc, jr_044_7013

    pop hl
    ret


jr_044_7013:
    call Call_044_6b11
    ld hl, $c98d
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop hl
    ld a, d
    or e
    ret z

    ld a, $02
    ld [$c990], a
    ret


Call_044_7026:
    ld de, $72b2
    push hl
    call Call_044_7273
    jr nc, jr_044_7031

    pop hl
    ret


jr_044_7031:
    pop hl
    push bc
    push hl
    push hl
    ld b, $00

jr_044_7037:
    inc b
    ld a, [hl+]
    cp $0a
    jr nz, jr_044_7037

    pop hl
    ld c, b
    ld de, $cb59
    call Call_044_4000
    ld hl, $cb59
    ld de, $c9b5
    ld b, c
    call Call_044_4000
    xor a
    ld [de], a
    pop hl
    pop bc
    ret


Call_044_7054:
    ld de, $72bf
    push hl
    call Call_044_7273
    jr nc, jr_044_705f

    pop hl
    ret


jr_044_705f:
    push bc
    ld de, $c9b5
    ld b, $30
    call Call_044_76c1
    pop bc
    pop hl
    ret


Call_044_706b:
    ld hl, $c880
    ld a, [$c82d]
    ld b, a

jr_044_7072:
    call Call_044_7268
    jp nc, Jump_044_7089

    ld a, [$ca3c]
    cp $9f
    jp nz, Jump_044_71a9

    push hl
    ld hl, $c990
    res 2, [hl]
    pop hl
    jr jr_044_7095

Jump_044_7089:
    ld a, [hl]
    cp $0d
    jr z, jr_044_7094

    cp $0a
    jr z, jr_044_7095

    jr jr_044_7072

jr_044_7094:
    inc hl

jr_044_7095:
    inc hl
    push bc
    ld a, [$c872]
    ld b, a
    ld a, [$c873]
    or b
    pop bc
    jr z, jr_044_70b3

    ld a, [$c86a]
    cp $23
    jr z, jr_044_70b3

    cp $20
    jr z, jr_044_70b3

    cp $22
    jr z, jr_044_70b3

    jr jr_044_70d6

jr_044_70b3:
    xor a
    ld hl, $c86e
    ld [hl+], a
    ld [hl], a
    ld hl, $c821
    res 2, [hl]
    ld a, [$c86a]
    cp $13
    jr z, jr_044_70c8

    cp $14
    ret nz

jr_044_70c8:
    ld a, $06
    ld [$c86b], a
    ld a, [$ca3c]
    cp $9f
    ret z

    jp Jump_044_6430


jr_044_70d6:
    ld a, [$c82b]
    ld c, a
    dec b
    dec b
    ld a, b
    ld [$c82d], a
    jr z, jr_044_710d

    ld a, [$c873]
    ld d, a
    ld a, [$c872]
    ld e, a
    dec de
    dec de
    xor a
    or d
    jr nz, jr_044_70f5

    ld a, e
    cp b
    jp c, Jump_044_7206

jr_044_70f5:
    ld a, e
    sub b
    ld [$c82b], a
    ld a, d
    sbc $00
    ld [$c82c], a
    ld a, [$c874]
    ld e, a
    ld a, [$c875]
    ld d, a
    inc de
    inc de
    call Call_044_4000

jr_044_710d:
    ld a, [$ca3c]
    cp $9f
    jr z, jr_044_7150

    ld a, [$ca3f]
    or a
    jr z, jr_044_7150

    ld l, c
    sub c
    ld c, a
    ld a, l
    ld hl, $ca40
    add hl, bc
    ld b, a
    push de
    ld a, [$c82b]
    ld e, a
    ld a, [$c82c]
    ld d, a
    xor a
    or d
    jr nz, jr_044_7135

    ld a, e
    cp b
    jp c, Jump_044_7245

jr_044_7135:
    pop de
    push hl
    ld hl, $c82d
    ld a, [hl]
    add b
    ld [hl+], a
    ld a, [hl]
    adc $00
    ld [hl], a
    ld c, b
    pop hl
    call Call_044_4000
    ld hl, $c82b
    ld a, [hl]
    sub c
    ld [hl+], a
    ld a, [hl]
    sbc $00
    ld [hl], a

jr_044_7150:
    ld hl, $c829
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld hl, $c821
    res 2, [hl]
    ld a, $01
    ld [$c86b], a
    ld a, $02
    ld [$c989], a
    ret


Call_044_7167:
    ld de, $72ff
    push hl
    call Call_044_7273
    jr nc, jr_044_7172

    pop hl
    ret


jr_044_7172:
    pop de
    push bc
    push de
    push hl
    ld b, $00

jr_044_7178:
    inc b
    ld a, [hl+]
    cp $0a
    jr nz, jr_044_7178

    jr jr_044_7197

Call_044_7180:
    ld de, $730c
    push hl
    call Call_044_7273
    jr nc, jr_044_718b

    pop hl
    ret


jr_044_718b:
    pop de
    push bc
    push de
    push hl
    ld b, $00

jr_044_7191:
    inc b
    ld a, [hl+]
    cp $0a
    jr nz, jr_044_7191

jr_044_7197:
    pop hl
    ld c, b
    ld de, $cb57
    ld a, b
    ld [de], a
    inc de
    dec b
    dec b
    call Call_044_4000
    xor a
    ld [de], a
    pop hl
    pop bc
    ret


Jump_044_71a9:
    ld hl, $c979
    ld de, $c880
    ld b, $00
    ld c, b
    ld a, [hl]
    cp $0a
    jr z, jr_044_71c4

jr_044_71b7:
    ld a, [hl-]
    inc b
    cp $0a
    jr nz, jr_044_71b7

    inc hl
    inc hl
    dec b
    ld c, b
    call Call_044_4000

jr_044_71c4:
    ld a, [$c82b]
    ld b, a
    add c
    ld c, a
    push bc
    ld a, $ff
    sub b
    ld c, a
    ld b, $00
    ld hl, $ca40
    add hl, bc
    pop bc
    call Call_044_4000
    ld a, c
    ld [$c82d], a
    ld a, $fa
    sub c
    ld [$c82b], a
    ld hl, $c829
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld l, e
    ld h, d
    ld de, $c97a

jr_044_71ef:
    xor a
    ld [hl+], a
    ld a, l
    cp e
    jr nz, jr_044_71ef

    ld a, d
    cp h
    jr nz, jr_044_71ef

    ld hl, $c821
    res 2, [hl]
    ld hl, $c86b
    dec [hl]
    dec [hl]
    ld a, $04
    ret


Jump_044_7206:
    ld a, b
    sub e
    ld [$c991], a
    ld a, [$c821]
    bit 2, a
    ld a, c
    jr nz, jr_044_7214

    xor a

jr_044_7214:
    ld [$c992], a
    ld b, e
    ld c, e
    ld a, [$c874]
    ld e, a
    ld a, [$c875]
    ld d, a
    inc de
    inc de
    call Call_044_4000
    ld a, [$c991]
    ld [$c993], a
    ld b, a
    ld de, $c880
    call Call_044_4000
    ld hl, $c82d
    ld a, c
    ld [hl+], a
    xor a
    ld [hl], a
    ld hl, $c821
    set 2, [hl]
    ld a, $03
    ld [$c86b], a
    ret


Jump_044_7245:
    ld a, b
    sub e
    ld [$c992], a
    ld [$c82b], a
    ld b, e
    ld c, e
    pop de
    call Call_044_4000
    ld hl, $c82d
    ld a, c
    add [hl]
    ld [hl+], a
    ld a, $00
    adc [hl]
    ld [hl], a
    ld hl, $c821
    set 2, [hl]
    ld a, $03
    ld [$c86b], a
    ret


Call_044_7268:
jr_044_7268:
    dec b
    ld a, [hl+]
    cp $0a
    ret z

    xor a
    or b
    jr nz, jr_044_7268

    scf
    ret


Call_044_7273:
    ld c, $00

jr_044_7275:
    ld a, [de]
    inc de
    or a
    ret z

    xor [hl]
    inc hl
    or c
    ld c, a
    jr z, jr_044_7275

    scf
    ret


Call_044_7281:
    ld c, $00
    push hl
    ld l, e
    ld h, d
    pop de

jr_044_7287:
    ld a, [de]
    inc de
    call Call_044_729d
    xor [hl]
    inc hl
    or c
    ld c, a
    xor a
    cp [hl]
    jr z, jr_044_7298

    cp c
    jr z, jr_044_7287

    scf

jr_044_7298:
    push hl
    ld l, e
    ld h, d
    pop de
    ret


Call_044_729d:
    cp $41
    ret c

    cp $5b
    ret nc

    or $20
    ret


    ld b, a
    ld h, d
    dec l
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], e
    ld a, [hl-]
    jr nz, jr_044_72b2

jr_044_72b2:
    ld b, a
    ld h, d
    dec l
    ld b, c
    ld [hl], l
    ld [hl], h
    ld l, b
    dec l
    ld c, c
    ld b, h
    ld a, [hl-]
    jr nz, jr_044_72bf

jr_044_72bf:
    ld d, a
    ld d, a
    ld d, a
    dec l
    ld b, c
    ld [hl], l
    ld [hl], h
    ld l, b
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], h
    ld h, l
    ld a, [hl-]
    jr nz, jr_044_7319

    ld b, d
    jr nc, jr_044_7305

    jr nz, @+$70

    ld h, c
    ld l, l
    ld h, l
    dec a
    ld [hl+], a
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    dec l
    ld d, h
    ld a, c
    ld [hl], b
    ld h, l
    ld a, [hl-]
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    cpl
    ld a, b
    dec l
    ld h, e
    ld h, a
    ld h, d
    dec c
    ld a, [bc]
    nop
    ld d, l
    ld d, d
    ld c, c
    dec l
    ld l, b
    ld h, l

jr_044_7305:
    ld h, c
    ld h, h
    ld h, l
    ld [hl], d
    ld a, [hl-]
    jr nz, jr_044_730c

jr_044_730c:
    ld c, h
    ld l, a
    ld h, e
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, jr_044_7317

Jump_044_7317:
jr_044_7317:
    ld a, $01

jr_044_7319:
    ld [$c86b], a
    ld de, $cb59
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    call Call_044_66b0
    ld hl, $72dd
    ld a, [$c9a5]
    or a
    call nz, Call_044_4007
    ld a, [$c86a]
    cp $22
    jr nz, jr_044_7344

    ld a, [$c98a]
    cp $02
    jr nz, jr_044_7351

    jr jr_044_7348

jr_044_7344:
    cp $24
    jr nz, jr_044_7351

jr_044_7348:
    ld a, [$c9a5]
    or a
    jr z, jr_044_736a

    call Call_044_73de

jr_044_7351:
    ld hl, $c9b5
    call Call_044_4007
    call Call_044_66b6
    ld a, c
    ld [$cb58], a
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld hl, $cb53
    jp Jump_044_5f02


jr_044_736a:
    ld hl, $7372
    call Call_044_4007
    jr jr_044_7351

    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    dec l
    ld c, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld [hl], h
    ld l, b
    ld a, [hl-]
    jr nz, jr_044_73b3

    dec c
    ld a, [bc]
    nop

Jump_044_7386:
    call Call_044_7482
    ld a, $01
    ld [$c86b], a
    ld de, $cb47
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld a, [$c86c]
    ld [de], a
    inc de
    ld b, $01
    call Call_044_5f63
    ld de, $cb53
    ld hl, $6072
    ld b, $06
    call Call_044_4000
    ld a, [$c86d]
    cp $03

jr_044_73b3:
    jp nz, Jump_044_7317

    ld de, $cb59
    ld a, [$c86c]
    ld [de], a
    inc de
    ld bc, $0001
    call Call_044_66b0
    ld a, [$c994]
    or a
    call nz, Call_044_73de
    call Call_044_66b6
    ld a, c
    ld [$cb58], a
    ld b, c
    call Call_044_5f63
    ld a, $95
    ld hl, $cb53
    jp Jump_044_5f02


Call_044_73de:
    call Call_044_66e6
    xor a
    ld [$c86b], a
    ld a, [$c9aa]
    ld [$c87c], a
    ld a, [$c9ab]
    ld [$c87d], a
    ld a, [$c9ac]
    ld [$c87e], a
    ld a, [$c9ad]
    ld [$c87f], a
    ret


Call_044_73fe:
    ld hl, $cb58
    ld a, [hl+]
    cp $68
    jr nz, jr_044_7432

    ld a, [hl+]
    cp $74
    jr nz, jr_044_7432

    ld a, [hl+]
    cp $74
    jr nz, jr_044_7432

    ld a, [hl+]
    cp $70
    jr nz, jr_044_7432

    ld a, [hl+]
    cp $3a
    jr nz, jr_044_7432

    ld a, [hl+]
    cp $2f
    jr nz, jr_044_7432

    ld a, [hl+]
    cp $2f
    jr nz, jr_044_7432

    ld hl, $cb57
    ld de, $c880
    ld a, [hl+]
    ld b, a
    call Call_044_4000
    xor a
    ld [de], a
    ret


jr_044_7432:
    ld a, [$cb58]
    cp $2f
    jr z, jr_044_7460

    ld de, $c880
    ld hl, $c9b5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_044_4007
    ld l, e
    ld h, d

jr_044_744c:
    ld a, [hl-]
    cp $2f
    jr nz, jr_044_744c

    inc hl
    inc hl
    ld e, l
    ld d, h

jr_044_7455:
    ld hl, $cb57
    ld a, [hl+]
    ld b, a
    call Call_044_4000
    xor a
    ld [de], a
    ret


jr_044_7460:
    ld de, $c880
    ld hl, $c9b5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $2f
    jr z, jr_044_7478

    ld b, $07
    call Call_044_4000

jr_044_7478:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $2f
    jr nz, jr_044_7478

    dec de
    jr jr_044_7455

Call_044_7482:
    ld hl, $c87f
    ld a, [hl-]
    ld b, a
    ld a, [hl-]
    ld c, a
    ld a, b
    or c
    ret z

    pop hl
    ld hl, $ff02
    add hl, bc
    jr c, jr_044_7496

    xor a
    ld l, a
    ld h, a

jr_044_7496:
    ld e, l
    ld d, h
    ld hl, $c87f
    ld a, d
    ld [hl-], a
    ld a, e
    ld [hl-], a
    jr nc, jr_044_74a3

    ld c, $fe

jr_044_74a3:
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    ld a, c
    inc a
    ld [$cb4c], a
    ld de, $cb4e
    ld b, c
    call Call_044_4000
    ld a, l
    ld [$c87c], a
    ld a, h
    ld [$c87d], a
    ld b, c
    inc b
    call Call_044_5f63
    ld hl, $c86b
    dec [hl]
    ld hl, $cb47
    ld a, $95
    jp Jump_044_5f02


    dec a
    jr z, jr_044_74d9

    dec a
    jr z, jr_044_74f4

    dec a
    jr z, jr_044_74fc

    dec a
    jr z, jr_044_750e

    dec [hl]
    ret


jr_044_74d9:
    ld a, [$ca40]
    cp $00
    jr z, jr_044_74f0

    cp $ff
    jr z, jr_044_74f0

    ld a, [$c985]
    ld [$c86a], a
    ld hl, $c821
    res 0, [hl]
    ret


jr_044_74f0:
    inc [hl]
    inc [hl]
    jr jr_044_74fc

jr_044_74f4:
    ld a, $97
    ld hl, $602d
    jp Jump_044_5eff


jr_044_74fc:
    ld hl, $c86e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$ca42]
    cp $f0
    jr c, jr_044_750b

    set 7, [hl]

jr_044_750b:
    jp Jump_044_6269


jr_044_750e:
    ld a, [$c86a]
    cp $1e
    jp nz, Jump_044_6251

    jp Jump_044_56a0


    dec a
    jr z, jr_044_7527

    dec a
    jr z, jr_044_752d

    dec a
    jr z, jr_044_753c

    dec a
    jr z, jr_044_753f

    dec [hl]
    ret


jr_044_7527:
    ld hl, $6046
    jp Jump_044_636b


jr_044_752d:
    ld hl, $c829
    ld a, $e0
    ld [hl+], a
    ld a, $c8
    ld [hl+], a
    ld hl, $6052
    jp Jump_044_636b


jr_044_753c:
    jp Jump_044_6269


jr_044_753f:
    ld hl, $c880
    ld a, [hl+]
    cp $4d
    jr nz, jr_044_7586

    ld a, [hl-]
    cp $41
    jr nz, jr_044_7586

    ld b, $be
    ld de, $0000

jr_044_7551:
    ld a, [hl+]
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    dec b
    jr nz, jr_044_7551

    ld a, [hl+]
    cp d
    jr nz, jr_044_758a

    ld a, [hl]
    cp e
    jr nz, jr_044_758a

    ld a, [$c86e]
    ld e, a
    ld a, [$c86f]
    ld d, a
    ld hl, $757e
    push hl
    ld a, [$c86a]
    cp $25
    jr z, jr_044_75ba

    cp $26
    jr z, jr_044_759d

    cp $27
    jr z, jr_044_75ad

    ld a, $01
    ld [$c835], a
    jp Jump_044_56a0


jr_044_7586:
    ld a, $25
    jr jr_044_758c

jr_044_758a:
    ld a, $14

jr_044_758c:
    call Call_044_625d
    jp Jump_044_56a4


Call_044_7592:
    push de
    ld l, e
    ld h, d
    xor a
    ld [hl], a
    inc de
    call Call_044_4000
    pop de
    ret


Jump_044_759d:
jr_044_759d:
    ld b, $20
    call Call_044_7592
    ld a, $21
    ld hl, $c88c
    call Call_044_400f
    xor a
    ld [de], a
    ret


Jump_044_75ad:
jr_044_75ad:
    ld b, $1e
    call Call_044_7592
    ld a, $1f
    ld hl, $c8ac
    jp Jump_044_400f


Jump_044_75ba:
jr_044_75ba:
    ld b, $65
    call Call_044_7592
    ld hl, $c8f6
    call Call_044_75eb
    ld a, $11
    ld hl, $c8fe
    call Call_044_400f
    inc de
    ld hl, $c90e
    call Call_044_75eb
    ld a, $11
    ld hl, $c916
    call Call_044_400f
    inc de
    ld hl, $c926
    call Call_044_75eb
    ld a, $11
    ld hl, $c92e
    jp Jump_044_400f


Call_044_75eb:
    ld b, $08

jr_044_75ed:
    ld a, [hl]
    swap a
    and $0f
    cp $0f
    jr z, jr_044_761c

    or $30
    cp $3a
    call z, Call_044_7620
    cp $3b
    call z, Call_044_7623
    ld [de], a
    inc de
    ld a, [hl+]
    and $0f
    cp $0f
    jr z, jr_044_761c

    or $30
    cp $3a
    call z, Call_044_7620
    cp $3b
    call z, Call_044_7623
    ld [de], a
    inc de
    dec b
    jr nz, jr_044_75ed

jr_044_761c:
    xor a
    ld [de], a
    inc de
    ret


Call_044_7620:
    ld a, $23
    ret


Call_044_7623:
    ld a, $2a
    ret


    dec a
    jr z, jr_044_7634

    dec a
    jr z, jr_044_7639

    dec a
    jr z, jr_044_766c

    dec a
    jr z, jr_044_766f

    dec [hl]
    ret


jr_044_7634:
    ld b, $9a
    jp Jump_044_634b


jr_044_7639:
    ld a, [$c882]
    or a
    jr nz, jr_044_7642

    inc [hl]
    jr jr_044_766c

jr_044_7642:
    ld de, $cb4c
    ld c, a
    inc a
    ld [de], a
    inc de
    ld a, $80
    ld [de], a
    inc de
    ld hl, $c880
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, c
    call Call_044_4000
    ld b, c
    inc b
    call Call_044_5f63
    ld a, [$cb4c]
    add $0a
    ld e, a
    ld d, $00
    ld a, $9a
    ld hl, $cb47
    jp Jump_044_5f02


jr_044_766c:
    jp Jump_044_6269


jr_044_766f:
    jp Jump_044_56a0


    dec a
    jr z, jr_044_7680

    dec a
    jr z, jr_044_7686

    dec a
    jr z, jr_044_76bb

    dec a
    jr z, jr_044_76be

    dec [hl]
    ret


jr_044_7680:
    ld hl, $cb47
    jp Jump_044_636b


jr_044_7686:
    ld a, [$c882]
    or a
    jr z, jr_044_7693

    cp $81
    jr nc, jr_044_7693

    inc [hl]
    jr jr_044_76bb

jr_044_7693:
    ld hl, $cb4e
    sub $80
    ld [hl-], a
    ld a, $80
    ld [hl], a
    ld de, $cb4f
    ld b, $02
    call Call_044_5f63
    ld hl, $c880
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    ld e, h
    ld a, l
    ld hl, $c829
    ld [hl+], a
    ld [hl], e
    ld hl, $cb47
    jp Jump_044_636b


jr_044_76bb:
    jp Jump_044_6269


jr_044_76be:
    jp Jump_044_56a0


Call_044_76c1:
    xor a
    ld [$cc28], a
    ld a, l
    ld [$cc07], a
    ld a, h
    ld [$cc08], a
    ld hl, $cc09
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld hl, $cc07
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cb67
    ld b, $30
    ld c, b
    call Call_044_4000
    ld hl, $c97f
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_044_76eb:
    ld a, [hl+]
    or a
    jr nz, jr_044_76eb

    call Call_044_4007
    ld a, $37
    cp c
    inc a
    jr nc, jr_044_76ff

    ld a, $02
    ld [$cc28], a
    ld a, $78

jr_044_76ff:
    sub c
    ld b, a
    ld a, $80
    ld [de], a
    inc de
    xor a

jr_044_7706:
    dec b
    jr z, jr_044_770d

    ld [de], a
    inc de
    jr jr_044_7706

jr_044_770d:
    or a
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    ld l, e
    ld h, d
    ld b, $06
    xor a

jr_044_7725:
    ld [hl+], a
    dec b
    jr nz, jr_044_7725

    ld de, $cbe7
    ld hl, $7b7e
    ld b, $10
    call Call_044_4000

Jump_044_7734:
    ld hl, $cc0c
    ld a, $8e
    ld [hl+], a
    ld a, $7b
    ld [hl], a
    ld hl, $cc0e
    ld a, $70
    ld [hl+], a
    ld a, $7a
    ld [hl], a
    ld hl, $cbe7
    ld de, $cc18
    ld b, $10
    call Call_044_4000

Jump_044_7751:
    ld hl, $cc0e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld c, a
    push hl
    call Call_044_7909
    ld hl, $cbf7
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    call Call_044_7a32
    pop hl
    ld a, [hl+]
    ld d, [hl]
    inc hl
    ld e, a
    push hl
    ld a, [$cc28]
    bit 0, a
    jr z, jr_044_777c

    ld hl, $0040
    add hl, de
    ld e, l
    ld d, h

jr_044_777c:
    ld hl, $cb67
    add hl, de
    ld e, l
    ld d, h
    ld hl, $cbff
    call Call_044_7a32
    ld hl, $cc0c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    call Call_044_7a32
    pop hl
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [$cc0e], a
    ld a, h
    ld [$cc0f], a
    ld hl, $cbff
    call Call_044_7a40
    ld hl, $cbf9
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    call Call_044_7a32
    ld hl, $cbf7
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    ld b, $04
    call Call_044_4000
    ld hl, $cc0c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, h
    ld [$cc0d], a
    ld a, l
    ld [$cc0c], a
    cp $8e
    jp nz, Jump_044_7751

    ld de, $cc18
    ld hl, $cbe7
    call Call_044_7a32
    ld de, $cc1c
    call Call_044_7a32
    ld de, $cc20
    call Call_044_7a32
    ld de, $cc24
    call Call_044_7a32
    ld hl, $cc28
    bit 1, [hl]
    jr z, jr_044_77fc

    dec [hl]
    jp Jump_044_7734


jr_044_77fc:
    ld hl, $cb67
    ld de, $cb97
    ld bc, $0030
    call Call_044_7d66
    ld hl, $cc09
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $7a55
    call Call_044_4007
    ld hl, $cb97
    ld bc, $0020
    call Call_044_7c8e
    ld a, l
    ld [$cc09], a
    ld a, h
    ld [$cc0a], a
    ld b, $12
    ld hl, $cb97
    ld de, $cb67

jr_044_782d:
    ld a, $40
    and [hl]
    rlca
    ld c, a
    ld a, [hl+]
    bit 4, a
    jr z, jr_044_7839

    set 6, c

jr_044_7839:
    bit 2, a
    jr z, jr_044_783f

    set 5, c

jr_044_783f:
    bit 0, a
    jr z, jr_044_7845

    set 4, c

jr_044_7845:
    ld a, [hl+]
    bit 6, a
    jr z, jr_044_784c

    set 3, c

jr_044_784c:
    bit 4, a
    jr z, jr_044_7852

    set 2, c

jr_044_7852:
    bit 2, a
    jr z, jr_044_7858

    set 1, c

jr_044_7858:
    bit 0, a
    jr z, jr_044_785e

    set 0, c

jr_044_785e:
    ld a, c
    ld [de], a
    inc de
    dec b
    jr nz, jr_044_782d

    ld b, $12
    ld hl, $cbba
    ld de, $cb8a

jr_044_786c:
    ld a, $02
    and [hl]
    rrca
    ld c, a
    ld a, [hl-]
    bit 3, a
    jr z, jr_044_7878

    set 1, c

jr_044_7878:
    bit 5, a
    jr z, jr_044_787e

    set 2, c

jr_044_787e:
    bit 7, a
    jr z, jr_044_7884

    set 3, c

jr_044_7884:
    ld a, [hl-]
    bit 1, a
    jr z, jr_044_788b

    set 4, c

jr_044_788b:
    bit 3, a
    jr z, jr_044_7891

    set 5, c

jr_044_7891:
    bit 5, a
    jr z, jr_044_7897

    set 6, c

jr_044_7897:
    bit 7, a
    jr z, jr_044_789d

    set 7, c

jr_044_789d:
    ld a, c
    ld [de], a
    dec de
    dec b
    jr nz, jr_044_786c

    ld b, $10
    ld de, $cb97
    ld hl, $cbe7
    call Call_044_4000
    ld bc, $0010
    ld hl, $c97f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_044_4007
    ld a, $24
    sub c
    ld b, a
    ld l, e
    ld h, d
    ld a, $ff

jr_044_78c2:
    ld [hl+], a
    dec b
    jr nz, jr_044_78c2

    xor a
    ld [hl], a
    ld b, $24
    ld hl, $cb67
    ld de, $cb97

jr_044_78d0:
    ld a, [de]
    inc de
    xor [hl]
    ld c, $00
    bit 0, a
    jr z, jr_044_78db

    set 3, c

jr_044_78db:
    bit 3, a
    jr z, jr_044_78e1

    set 6, c

jr_044_78e1:
    bit 6, a
    jr z, jr_044_78e7

    set 0, c

jr_044_78e7:
    and $b6
    or c
    ld [hl+], a
    dec b
    jr nz, jr_044_78d0

    ld hl, $cc09
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cb67
    ld bc, $0024
    call Call_044_7c8e
    ld a, $22
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    ld a, $0a
    ld [hl+], a
    xor a
    ld [hl], a
    ret


Call_044_7909:
    call Call_044_791e
    ld a, c
    and $f0
    swap a
    or a
    jr z, jr_044_792f

    dec a
    jr z, jr_044_7973

    dec a
    jp z, Jump_044_79b7

    jp Jump_044_79de


Call_044_791e:
    and $0f
    ld e, a
    ld d, $00
    ld hl, $7b70
    add hl, de
    ld de, $cbf7
    ld b, $08
    jp Jump_044_4000


jr_044_792f:
    ld hl, $cbf9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cbff
    ld b, $04
    call Call_044_4000
    ld hl, $cbfb
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    call Call_044_7a0b
    ld hl, $cbf9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cc03
    ld b, $04
    call Call_044_4000
    ld hl, $cc03
    call Call_044_7a1f
    ld hl, $cbfd
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cc03
    call Call_044_7a0b
    ld hl, $cbff
    ld de, $cc03
    call Call_044_7a15
    ret


jr_044_7973:
    ld hl, $cbf9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cbff
    ld b, $04
    call Call_044_4000
    ld hl, $cbfd
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    call Call_044_7a0b
    ld hl, $cbfd
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cc03
    ld b, $04
    call Call_044_4000
    ld hl, $cc03
    call Call_044_7a1f
    ld hl, $cbfb
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cc03
    call Call_044_7a0b
    ld hl, $cbff
    ld de, $cc03
    call Call_044_7a15
    ret


Jump_044_79b7:
    ld hl, $cbf9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cbff
    ld b, $04
    call Call_044_4000
    ld hl, $cbfb
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    call Call_044_7a28
    ld hl, $cbfd
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    call Call_044_7a28
    ret


Jump_044_79de:
    ld hl, $cbfd
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $cbff
    ld b, $04
    call Call_044_4000
    ld hl, $cbff
    call Call_044_7a1f
    ld hl, $cbf9
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    call Call_044_7a15
    ld hl, $cbfb
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $cbff
    call Call_044_7a28
    ret


Call_044_7a0b:
    ld b, $04

jr_044_7a0d:
    ld a, [de]
    inc de
    and [hl]
    ld [hl+], a
    dec b
    jr nz, jr_044_7a0d

    ret


Call_044_7a15:
    ld b, $04

jr_044_7a17:
    ld a, [de]
    inc de
    or [hl]
    ld [hl+], a
    dec b
    jr nz, jr_044_7a17

    ret


Call_044_7a1f:
    ld b, $04

jr_044_7a21:
    ld a, [hl]
    cpl
    ld [hl+], a
    dec b
    jr nz, jr_044_7a21

    ret


Call_044_7a28:
    ld b, $04

jr_044_7a2a:
    ld a, [de]
    inc de
    xor [hl]
    ld [hl+], a
    dec b
    jr nz, jr_044_7a2a

    ret


Call_044_7a32:
    ld a, [de]
    inc de
    add [hl]
    ld [hl+], a
    ld b, $03

jr_044_7a38:
    ld a, [de]
    inc de
    adc [hl]
    ld [hl+], a
    dec b
    jr nz, jr_044_7a38

    ret


Call_044_7a40:
jr_044_7a40:
    or a
    push hl
    ld a, [hl+]
    rla
    ld a, [hl]
    rla
    ld [hl+], a
    ld a, [hl]
    rla
    ld [hl+], a
    ld a, [hl]
    rla
    ld [hl], a
    pop hl
    ld a, [hl]
    rla
    ld [hl], a
    dec b
    jr nz, jr_044_7a40

    ret


    ld b, c
    ld [hl], l
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], d
    ld l, c
    ld a, d
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    jr nz, @+$49

    ld b, d
    jr nc, jr_044_7a98

    jr nz, jr_044_7ad8

    ld h, c
    ld l, l
    ld h, l
    dec a
    ld [hl+], a
    nop
    nop
    nop
    nop
    rlca
    ld b, $04
    nop
    inc c
    inc b
    ld [$1100], sp
    ld [bc], a
    inc c
    nop
    ld d, $00
    stop
    rlca
    ld b, $14
    nop
    inc c
    inc b
    jr jr_044_7a8b

jr_044_7a8b:
    ld de, $1c02
    nop
    ld d, $00
    jr nz, jr_044_7a93

jr_044_7a93:
    rlca
    ld b, $24
    nop
    inc c

jr_044_7a98:
    inc b
    jr z, jr_044_7a9b

jr_044_7a9b:
    ld de, $2c02
    nop
    ld d, $00
    jr nc, jr_044_7aa3

jr_044_7aa3:
    rlca
    ld b, $34
    nop
    inc c
    inc b
    jr c, jr_044_7aab

jr_044_7aab:
    ld de, $3c02
    nop
    ld d, $10
    inc b
    nop
    dec b
    ld d, $18
    nop
    add hl, bc
    inc d
    inc l
    nop
    ld c, $12
    nop
    nop
    inc d
    db $10
    inc d
    nop
    dec b
    ld d, $28
    nop
    add hl, bc
    inc d
    inc a
    nop
    ld c, $12
    stop
    inc d
    db $10
    inc h
    nop
    dec b
    ld d, $38
    nop
    add hl, bc

jr_044_7ad8:
    inc d
    inc c
    nop
    ld c, $12
    jr nz, jr_044_7adf

jr_044_7adf:
    inc d
    db $10
    inc [hl]
    nop
    dec b
    ld d, $08
    nop
    add hl, bc
    inc d
    inc e
    nop
    ld c, $12
    jr nc, jr_044_7aef

jr_044_7aef:
    inc d
    jr nz, jr_044_7b06

    nop
    inc b
    ld h, $20
    nop
    dec bc
    inc h
    inc l
    nop
    db $10
    ld [hl+], a
    jr c, jr_044_7aff

jr_044_7aff:
    rla
    jr nz, jr_044_7b06

    nop
    inc b
    ld h, $10

jr_044_7b06:
    nop
    dec bc
    inc h
    inc e
    nop
    db $10
    ld [hl+], a
    jr z, jr_044_7b0f

jr_044_7b0f:
    rla
    jr nz, jr_044_7b46

    nop
    inc b
    ld h, $00
    nop
    dec bc
    inc h
    inc c
    nop
    db $10
    ld [hl+], a
    jr jr_044_7b1f

jr_044_7b1f:
    rla
    jr nz, jr_044_7b46

    nop
    inc b
    ld h, $30
    nop
    dec bc
    inc h
    inc a
    nop
    db $10
    ld [hl+], a
    ld [$1700], sp
    jr nc, jr_044_7b32

jr_044_7b32:
    nop
    ld b, $36
    inc e
    nop
    ld a, [bc]
    inc [hl]
    jr c, jr_044_7b3b

jr_044_7b3b:
    rrca
    ld [hl-], a
    inc d
    nop
    dec d
    jr nc, @+$32

    nop
    ld b, $36
    inc c

jr_044_7b46:
    nop
    ld a, [bc]
    inc [hl]
    jr z, jr_044_7b4b

jr_044_7b4b:
    rrca
    ld [hl-], a
    inc b
    nop
    dec d
    jr nc, @+$22

jr_044_7b52:
    nop
    ld b, $36
    inc a
    nop
    ld a, [bc]
    inc [hl]
    jr jr_044_7b5b

jr_044_7b5b:
    rrca
    ld [hl-], a
    inc [hl]
    nop
    dec d
    jr nc, @+$12

    nop
    ld b, $36
    inc l
    nop
    ld a, [bc]
    inc [hl]
    ld [$0f00], sp
    ld [hl-], a
    inc h
    nop
    dec d
    rst $20
    set 5, e
    set 5, a
    set 6, e
    set 4, a
    set 5, e
    set 5, a
    rlc c
    inc hl
    ld b, l
    ld h, a
    adc c
    xor e
    call $feef
    call c, $98ba
    db $76
    ld d, h
    ld [hl-], a
    db $10
    ld a, b
    and h
    ld l, d
    rst $10
    ld d, [hl]
    or a
    rst $00
    add sp, -$25
    ld [hl], b
    jr nz, jr_044_7bbe

    xor $ce
    cp l
    pop bc
    xor a
    rrca
    ld a, h
    push af
    ld a, [hl+]
    add $87
    ld b, a
    inc de
    ld b, [hl]
    jr nc, jr_044_7b52

    ld bc, $4695
    db $fd
    ret c

    sbc b
    add b
    ld l, c
    xor a
    rst $30
    ld b, h
    adc e
    or c
    ld e, e
    rst $38
    rst $38
    cp [hl]
    rst $10
    ld e, h
    adc c

jr_044_7bbe:
    ld [hl+], a
    ld de, $6b90
    sub e
    ld [hl], c
    sbc b
    db $fd
    adc [hl]
    ld b, e
    ld a, c
    and [hl]
    ld hl, $b408
    ld c, c
    ld h, d
    dec h
    ld e, $f6
    ld b, b
    or e
    ld b, b
    ret nz

    ld d, c
    ld e, d
    ld e, [hl]
    ld h, $aa
    rst $00
    or [hl]
    jp hl


    ld e, l
    db $10
    cpl
    sub $53
    inc d
    ld b, h
    ld [bc], a
    add c
    and $a1
    ret c

    ret z

    ei
    db $d3
    rst $20
    and $cd
    pop hl
    ld hl, $07d6
    scf
    jp $0d87


    push de
    db $f4
    db $ed
    inc d
    ld e, d
    ld b, l
    dec b
    jp hl


    db $e3
    xor c

jr_044_7c02:
    ld hl, sp-$5d
    rst $28
    db $fc
    reti


    ld [bc], a
    ld l, a
    ld h, a
    adc d
    ld c, h
    ld a, [hl+]
    adc l
    ld b, d
    add hl, sp
    ld a, [$81ff]
    or $71
    add a
    ld [hl+], a
    ld h, c
    sbc l
    ld l, l
    inc c
    jr c, jr_044_7c02

    db $fd
    ld b, h
    ld [$a4be], a
    xor c
    rst $08
    sbc $4b
    ld h, b
    ld c, e
    cp e
    or $70
    cp h
    cp a

jr_044_7c2d:
    cp [hl]
    add $7e
    sbc e
    jr z, jr_044_7c2d

    daa
    and c
    ld [$3085], a
    rst $28
    call nc, $1d05
    adc b
    inc b
    add hl, sp
    ret nc

    call nc, $e5d9
    sbc c
    db $db
    and $f8
    ld a, h
    and d
    rra
    ld h, l
    ld d, [hl]
    xor h
    call nz, $2244
    add hl, hl
    db $f4
    sub a
    rst $38
    ld a, [hl+]
    ld b, e
    and a
    inc hl
    sub h
    xor e
    add hl, sp
    and b
    sub e
    db $fc
    jp Jump_044_5b59


    ld h, l
    sub d
    call z, $8f0c
    ld a, l
    db $f4
    rst $28
    rst $38
    pop de
    ld e, l
    add h
    add l
    ld c, a
    ld a, [hl]
    xor b
    ld l, a
    ldh [$e6], a
    inc l
    cp $14
    ld b, e
    ld bc, $a1a3
    ld de, $4e08
    add d
    ld a, [hl]
    ld d, e
    rst $30
    dec [hl]
    ld a, [c]
    ld a, [hl-]
    cp l
    cp e
    jp nc, $2ad7

    sub c
    db $d3
    add [hl]
    db $eb

Call_044_7c8e:
    ld a, c
    ld [$cc10], a
    ld a, b
    ld [$cc11], a
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    xor a
    ld [$cc16], a

Jump_044_7ca0:
    ld b, $03
    push hl
    ld hl, $cc12

jr_044_7ca6:
    ld a, [de]
    inc de
    ld [hl+], a
    dec b
    jr nz, jr_044_7ca6

    ld a, [$cc10]
    ld c, a
    ld a, [$cc11]
    ld b, a
    xor a
    or b
    jr nz, jr_044_7ccf

    ld a, $02
    cp c
    jr c, jr_044_7ccf

    push hl
    dec hl
    ld a, c
    ld [$cc16], a

jr_044_7cc3:
    xor a
    ld [hl-], a
    inc c
    ld a, $03
    cp c
    jr nz, jr_044_7cc3

    pop hl
    ld bc, $0003

jr_044_7ccf:
    dec bc
    dec bc
    dec bc
    ld a, c
    ld [$cc10], a
    ld a, b
    ld [$cc11], a
    push de
    dec hl
    ld c, [hl]
    dec hl
    ld b, [hl]
    dec hl
    ld a, [hl]
    ld d, a
    srl a
    srl a
    ld [hl+], a
    ld a, $03
    and d
    ld d, a
    ld a, $f0
    and b
    or d
    swap a
    ld [hl+], a
    ld a, $0f
    and b
    ld d, a
    ld a, c
    and $c0
    or d
    rlca
    rlca
    ld [hl+], a
    ld a, $3f
    and c
    ld [hl-], a
    dec hl
    dec hl
    pop de
    ld b, h
    ld c, l
    pop hl
    ld a, [bc]
    inc bc
    call Call_044_7d47
    ld [hl+], a
    ld a, [bc]
    inc bc
    call Call_044_7d47
    ld [hl+], a
    ld a, [bc]
    inc bc
    call Call_044_7d47
    ld [hl+], a
    ld a, [bc]
    inc bc
    call Call_044_7d47
    ld [hl+], a
    ld a, [$cc10]
    cp $00
    jp nz, Jump_044_7ca0

    ld a, [$cc11]
    cp $00
    jp nz, Jump_044_7ca0

    ld a, [$cc16]
    cp $00
    jr z, jr_044_7d43

    push hl
    dec hl
    ld b, a

jr_044_7d39:
    ld a, $3d
    ld [hl-], a
    inc b
    ld a, $03
    cp b
    jr nz, jr_044_7d39

    pop hl

jr_044_7d43:
    ld a, $00
    ld [hl], a
    ret


Call_044_7d47:
    cp $1a
    jr c, jr_044_7d5a

    cp $34
    jr c, jr_044_7d5d

    cp $3e
    jr c, jr_044_7d60

    cp $3e
    jr z, jr_044_7d63

    ld a, $2f
    ret


jr_044_7d5a:
    add $41
    ret


jr_044_7d5d:
    add $47
    ret


jr_044_7d60:
    sub $04
    ret


jr_044_7d63:
    ld a, $2b
    ret


Call_044_7d66:
    ld a, c
    ld [$cc10], a
    ld a, b
    ld [$cc11], a
    ld c, e
    ld b, d
    ld e, l
    ld d, h
    ld l, c
    ld h, b

Jump_044_7d74:
jr_044_7d74:
    ld a, [$cc11]
    or a
    jr nz, jr_044_7d82

    ld a, [$cc10]
    cp $04
    jp c, Jump_044_7e26

jr_044_7d82:
    ld b, $04
    push hl
    ld hl, $cc12

jr_044_7d88:
    ld a, [de]
    inc de
    call Call_044_7dfa
    ld [hl+], a
    dec b
    jr nz, jr_044_7d88

    ld a, [$cc10]
    ld c, a
    ld a, [$cc11]
    ld b, a
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, b
    or c
    jr z, jr_044_7dae

jr_044_7da1:
    ld a, [de]
    cp $0d
    jr z, jr_044_7daa

    cp $0a
    jr nz, jr_044_7dae

jr_044_7daa:
    inc de
    dec bc
    jr jr_044_7da1

jr_044_7dae:
    ld a, c
    ld [$cc10], a
    ld a, b
    ld [$cc11], a
    push de
    dec hl
    ld d, [hl]
    dec hl
    ld c, [hl]
    dec hl
    ld b, [hl]
    dec hl
    ld a, [hl]
    sla b
    sla b
    sla b
    rla
    sla b
    rla
    ld [hl+], a
    ld [hl], b
    inc hl
    rrc c
    rrc c
    ld [hl], c
    dec hl
    ld a, $0f
    and c
    or [hl]
    ld [hl+], a
    ld a, [hl+]
    and $c0
    or [hl]
    dec hl
    ld [hl-], a
    dec hl
    pop de
    ld b, h
    ld c, l
    pop hl
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    ld a, [$cc10]
    or a
    jr nz, jr_044_7d74

    ld a, [$cc11]
    or a
    jp nz, Jump_044_7d74

    xor a
    ld [hl], a
    ret


Call_044_7dfa:
    cp $2b
    jr c, jr_044_7e24

    jr z, jr_044_7e31

    cp $2f
    jr c, jr_044_7e24

    jr z, jr_044_7e34

    cp $30
    jr c, jr_044_7e24

    cp $3a
    jr c, jr_044_7e37

    cp $3d
    jr c, jr_044_7e24

    jr z, jr_044_7e3a

    cp $41
    jr c, jr_044_7e24

    cp $5b
    jr c, jr_044_7e3c

    cp $61
    jr c, jr_044_7e24

    cp $7b
    jr c, jr_044_7e3f

jr_044_7e24:
    pop hl
    pop hl

Jump_044_7e26:
    ld hl, $c821
    set 1, [hl]
    ld a, $20
    ld [$c80f], a
    ret


jr_044_7e31:
    ld a, $3e
    ret


jr_044_7e34:
    ld a, $3f
    ret


jr_044_7e37:
    add $04
    ret


jr_044_7e3a:
    xor a
    ret


jr_044_7e3c:
    sub $41
    ret


jr_044_7e3f:
    sub $47
    ret


    dec a
    jr z, jr_044_7e4f

    dec a
    jr z, jr_044_7e85

    dec a
    jr z, jr_044_7ea8

    dec a
    jr z, jr_044_7eb0

    ret


jr_044_7e4f:
    ld a, [$c807]
    cp $08
    jr nz, jr_044_7e58

jr_044_7e56:
    dec [hl]
    ret


jr_044_7e58:
    xor a
    ld [$c86d], a
    ld a, $02
    ld [$c86a], a
    ld hl, $c821
    ld a, [hl]
    and $10
    set 5, a
    ld [hl], a
    jp Jump_044_7eb8


Jump_044_7e6d:
    ld a, [$c86d]
    or a
    ld a, [$ca3c]
    jr z, jr_044_7e81

    cp $9f
    jr z, jr_044_7e85

    cp $a4
    jr z, jr_044_7e85

jr_044_7e7e:
    jp Jump_044_6430


jr_044_7e81:
    cp $a3
    jr z, jr_044_7e7e

jr_044_7e85:
    xor a
    ld [$c86d], a
    ld [$c81e], a
    ld a, $02
    ld [$c86a], a
    ld a, $03
    ld [$c807], a
    ld hl, $c821
    ld a, [hl]
    and $10
    set 5, a
    ld [hl], a
    ld hl, $c822
    bit 0, [hl]
    call z, Call_044_5f97
    ret


jr_044_7ea8:
    ld a, [$c807]
    cp $08
    jr z, jr_044_7e56

    ret


jr_044_7eb0:
    ld a, $01
    ld [$c86b], a
    jp Jump_044_7e6d


Jump_044_7eb8:
jr_044_7eb8:
    ld a, $ff
    ld [$c81e], a
    ld hl, $c822
    res 5, [hl]
    res 0, [hl]
    jp Jump_044_5f97


    ld hl, $c822
    ld a, [hl]
    push af
    res 3, [hl]
    res 0, [hl]
    ld hl, $c81a
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl-]
    dec hl
    xor $80
    ld [$c81e], a
    ld b, $05
    call Call_044_5f07
    pop af
    bit 0, a
    ret z

    ld hl, $c822
    set 0, [hl]
    ret


    dec a
    jr z, jr_044_7efa

    dec a
    jr z, jr_044_7f03

    dec [hl]
    ret


jr_044_7efa:
    ld a, [$c807]
    cp $08
    jr nz, jr_044_7eb8

    dec [hl]
    ret


jr_044_7f03:
    ld a, $26
    call Call_044_625d
    ld a, $2a
    ld [$c86a], a
    ld hl, $c820
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    ld e, l
    ld d, h
    add hl, de
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c815
    ld e, a
    ld [hl+], a
    ld a, d
    ld [hl], a
    xor a
    ld [$c800], a
    ld hl, $cb47
    ld a, $02
    ld [hl+], a
    dec a
    ld [hl], a
    ret


    dec a
    jr z, jr_044_7f35

    dec a
    jr z, jr_044_7f4f

    dec [hl]
    ret


jr_044_7f35:
    ld a, [$c807]
    cp $08
    jr nz, jr_044_7f3e

    dec [hl]
    ret


jr_044_7f3e:
    xor a
    ld [$ca3c], a
    ld [$ca2f], a
    ld a, [$c81e]
    cp $91
    jr z, jr_044_7f4f

    jp Jump_044_7eb8


jr_044_7f4f:
    xor a
    ld [$c86d], a
    ld hl, $c821
    set 0, [hl]
    ld hl, $c822
    xor a
    ld [hl], a
    xor a
    ld [$c80b], a
    xor a
    ld [$cb47], a
    ld hl, $c820
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    ld e, l
    ld d, h
    add hl, de
    add hl, de
    ld e, l
    ld d, h
    ld hl, $c815
    ld e, a
    ld [hl+], a
    ld a, d
    ld [hl], a
    xor a
    ld [$c800], a
    ld hl, $cb47
    xor a
    ld [hl+], a
    inc a
    ld [hl], a
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
