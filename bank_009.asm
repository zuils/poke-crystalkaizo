; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    sbc c
    ret nc

    xor h
    ret nc

    cp a
    ret nc

    add [hl]
    ret nc

    ld [hl], e
    ret nc

    ld d, $c6
    ld hl, $21c6
    ld h, [hl]
    inc e
    ld a, [$cf94]
    rst $08
    call Call_009_4085
    call $1ad2
    call $321c
    call Call_009_408f
    ret


    ld hl, $1c66
    ld a, [$cf94]
    rst $08
    call Call_009_4085
    ld a, $00
    ld hl, $3ab2
    rst $08
    call $1ad2
    call $321c
    call Call_009_408f
    ret


    ld hl, $1c66
    ld a, [$cf94]
    rst $08
    call Call_009_4085
    ld a, $00
    ld hl, $3ab2
    rst $08
    call $1ad2
    call $321c
    call Call_009_411a
    ld hl, $cfa5
    set 7, [hl]

jr_009_405a:
    call $045a
    ld a, $40
    ld hl, $432e
    rst $08
    ld a, [$cd2b]
    and a
    jr nz, jr_009_4076

    call Call_009_41ba
    ld a, [$cfa8]
    and c
    jr z, jr_009_405a

    call Call_009_4098
    ret


jr_009_4076:
    ld a, [$cfa4]
    ld c, a
    ld a, [$cfa3]
    call $3105
    ld [$cf88], a
    and a
    ret


Call_009_4085:
    xor a
    ldh [$d4], a
    call $1cbb
    call Call_009_40db
    ret


Call_009_408f:
    call Call_009_411a
    call $1bc9
    call $1ff8

Call_009_4098:
    ld a, [$cf91]
    bit 1, a
    jr z, jr_009_40a6

    call $1bdd
    bit 2, a
    jr nz, jr_009_40c9

jr_009_40a6:
    ld a, [$cf91]
    bit 0, a
    jr nz, jr_009_40b4

    call $1bdd
    bit 1, a
    jr nz, jr_009_40cb

jr_009_40b4:
    ld a, [$cfa4]
    ld c, a
    ld a, [$cfa9]
    dec a
    call $3105
    ld c, a
    ld a, [$cfaa]
    add c
    ld [$cf88], a
    and a
    ret


jr_009_40c9:
    scf
    ret


jr_009_40cb:
    scf
    ret


Call_009_40cd:
    ld a, [$cf92]
    and $0f
    ret


Call_009_40d3:
    ld a, [$cf92]
    swap a
    and $0f
    ret


Call_009_40db:
    ld hl, $cf95
    ld e, [hl]
    inc hl
    ld d, [hl]
    call $1cc6
    call $1d05
    call Call_009_40d3
    ld b, a

jr_009_40eb:
    push bc
    push hl
    call Call_009_40cd
    ld c, a

jr_009_40f1:
    push bc
    ld a, [$cf94]
    call $201c
    inc de
    ld a, [$cf93]
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    dec c
    jr nz, jr_009_40f1

    pop hl
    ld bc, $0028
    add hl, bc
    pop bc
    dec b
    jr nz, jr_009_40eb

    ld hl, $cf98
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    or h
    ret z

    ld a, [$cf97]
    rst $08
    ret


Call_009_411a:
    call $1cc6
    ld a, b
    ld [$cfa1], a
    dec c
    ld a, c
    ld [$cfa2], a
    call Call_009_40d3
    ld [$cfa3], a
    call Call_009_40cd
    ld [$cfa4], a
    call Call_009_4179
    call Call_009_418a
    call Call_009_4193
    ld a, [$cfa4]
    ld e, a
    ld a, [$cf88]
    ld b, a
    xor a
    ld d, $00

jr_009_4146:
    inc d
    add e
    cp b
    jr c, jr_009_4146

    sub e
    ld c, a
    ld a, b
    sub c
    and a
    jr z, jr_009_4157

    cp e
    jr z, jr_009_4159

    jr c, jr_009_4159

jr_009_4157:
    ld a, $01

jr_009_4159:
    ld [$cfaa], a
    ld a, [$cfa3]
    ld e, a
    ld a, d
    and a
    jr z, jr_009_4169

    cp e
    jr z, jr_009_416b

    jr c, jr_009_416b

jr_009_4169:
    ld a, $01

jr_009_416b:
    ld [$cfa9], a
    xor a
    ld [$cfab], a
    ld [$cfac], a
    ld [$cfad], a
    ret


Call_009_4179:
    xor a
    ld hl, $cfa5
    ld [hl+], a
    ld [hl-], a
    ld a, [$cf91]
    bit 5, a
    ret z

    set 5, [hl]
    set 4, [hl]
    ret


Call_009_418a:
    ld a, [$cf93]
    or $20
    ld [$cfa7], a
    ret


Call_009_4193:
    ld hl, $cf91
    ld a, $01
    bit 0, [hl]
    jr nz, jr_009_419e

    or $02

jr_009_419e:
    bit 1, [hl]
    jr z, jr_009_41a4

    or $04

jr_009_41a4:
    ld [$cfa8], a
    ret


    call Call_009_4329
    ld hl, $cfa6
    res 7, [hl]
    ldh a, [$d4]
    push af
    call Call_009_4216
    pop af
    ldh [$d4], a
    ret


Call_009_41ba:
    ld hl, $cfa6
    res 7, [hl]
    ldh a, [$d4]
    push af
    call Call_009_431a
    call Call_009_4249
    jr nc, jr_009_41cd

    call Call_009_4270

jr_009_41cd:
    pop af
    ldh [$d4], a
    call $1bdd
    ld c, a
    ret


    call Call_009_4329

jr_009_41d8:
    call Call_009_431a
    call $402d
    call Call_009_41fa
    jr nc, jr_009_41f9

    call Call_009_4270
    jr c, jr_009_41f9

    ld a, [$cfa5]
    bit 7, a
    jr nz, jr_009_41f9

    call $1bdd
    ld c, a
    ld a, [$cfa8]
    and c
    jr z, jr_009_41d8

jr_009_41f9:
    ret


Call_009_41fa:
jr_009_41fa:
    call Call_009_4259
    ret c

    ld c, $01
    ld b, $03
    call $462d
    ret c

    ld a, $40
    ld hl, $4337
    rst $08
    ret c

    ld a, [$cfa5]
    bit 7, a
    jr z, jr_009_41fa

    and a
    ret


Call_009_4216:
jr_009_4216:
    call Call_009_431a
    call Call_009_4238
    call Call_009_4249
    jr nc, jr_009_4237

    call Call_009_4270
    jr c, jr_009_4237

    ld a, [$cfa5]
    bit 7, a
    jr nz, jr_009_4237

    call $1bdd
    ld b, a
    ld a, [$cfa8]
    and b
    jr z, jr_009_4216

jr_009_4237:
    ret


Call_009_4238:
    ldh a, [$d8]
    push af
    ld a, $01
    ldh [$d8], a
    call $31f6
    pop af
    ldh [$d8], a
    xor a
    ldh [$d4], a
    ret


Call_009_4249:
jr_009_4249:
    call $046f
    call Call_009_4259
    ret c

    ld a, [$cfa5]
    bit 7, a
    jr z, jr_009_4249

    and a
    ret


Call_009_4259:
    ld a, [$cfa5]
    bit 6, a
    jr z, jr_009_4266

    ld hl, $4f62
    ld a, $23
    rst $08

jr_009_4266:
    call $0a57
    call $1bdd
    and a
    ret z

    scf
    ret


Call_009_4270:
    call $1bdd
    bit 0, a
    jp nz, Jump_009_4318

    bit 1, a
    jp nz, Jump_009_4318

    bit 2, a
    jp nz, Jump_009_4318

    bit 3, a
    jp nz, Jump_009_4318

    bit 4, a
    jr nz, jr_009_42fa

    bit 5, a
    jr nz, jr_009_42dc

    bit 6, a
    jr nz, jr_009_42be

    bit 7, a
    jr nz, jr_009_42a0

    and a
    ret


Jump_009_4299:
    ld hl, $cfa6
    set 7, [hl]
    scf
    ret


jr_009_42a0:
    ld hl, $cfa9
    ld a, [$cfa3]
    cp [hl]
    jr z, jr_009_42ac

    inc [hl]
    xor a
    ret


jr_009_42ac:
    ld a, [$cfa5]
    bit 5, a
    jr nz, jr_009_42ba

    bit 3, a
    jp nz, Jump_009_4299

    xor a
    ret


jr_009_42ba:
    ld [hl], $01
    xor a
    ret


jr_009_42be:
    ld hl, $cfa9
    ld a, [hl]
    dec a
    jr z, jr_009_42c8

    ld [hl], a
    xor a
    ret


jr_009_42c8:
    ld a, [$cfa5]
    bit 5, a
    jr nz, jr_009_42d6

    bit 2, a
    jp nz, Jump_009_4299

    xor a
    ret


jr_009_42d6:
    ld a, [$cfa3]
    ld [hl], a
    xor a
    ret


jr_009_42dc:
    ld hl, $cfaa
    ld a, [hl]
    dec a
    jr z, jr_009_42e6

    ld [hl], a
    xor a
    ret


jr_009_42e6:
    ld a, [$cfa5]
    bit 4, a
    jr nz, jr_009_42f4

    bit 1, a
    jp nz, Jump_009_4299

    xor a
    ret


jr_009_42f4:
    ld a, [$cfa4]
    ld [hl], a
    xor a
    ret


jr_009_42fa:
    ld hl, $cfaa
    ld a, [$cfa4]
    cp [hl]
    jr z, jr_009_4306

    inc [hl]
    xor a
    ret


jr_009_4306:
    ld a, [$cfa5]
    bit 4, a
    jr nz, jr_009_4314

    bit 0, a
    jp nz, Jump_009_4299

    xor a
    ret


jr_009_4314:
    ld [hl], $01
    xor a
    ret


Jump_009_4318:
    xor a
    ret


Call_009_431a:
    ld hl, $cfac
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $ed
    jr nz, jr_009_4329

    ld a, [$cfab]
    ld [hl], a

Call_009_4329:
jr_009_4329:
    ld a, [$cfa1]
    ld b, a
    ld a, [$cfa2]
    ld c, a
    call $1d05
    ld a, [$cfa7]
    swap a
    and $0f
    ld c, a
    ld a, [$cfa9]
    ld b, a
    xor a
    dec b
    jr z, jr_009_4348

jr_009_4344:
    add c
    dec b
    jr nz, jr_009_4344

jr_009_4348:
    ld c, $14
    call $30fe
    ld a, [$cfa7]
    and $0f
    ld c, a
    ld a, [$cfaa]
    ld b, a
    xor a
    dec b
    jr z, jr_009_435f

jr_009_435b:
    add c
    dec b
    jr nz, jr_009_435b

jr_009_435f:
    ld c, a
    add hl, bc
    ld a, [hl]
    cp $ed
    jr z, jr_009_436b

    ld [$cfab], a
    ld [hl], $ed

jr_009_436b:
    ld a, l
    ld [$cfac], a
    ld a, h
    ld [$cfad], a
    ret


    ldh a, [rSVBK]
    push af
    ld a, $07
    ldh [rSVBK], a
    ld hl, $cf71
    ld e, [hl]
    inc hl
    ld d, [hl]
    push de
    ld b, $10
    ld hl, $cf81

jr_009_4387:
    ld a, [hl+]
    ld [de], a
    dec de
    dec b
    jr nz, jr_009_4387

    ld a, [$cf81]
    bit 6, a
    jr nz, jr_009_4398

    bit 7, a
    jr z, jr_009_43ae

jr_009_4398:
    ld hl, $cf71
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    set 0, [hl]
    call $1cfd
    call Call_009_43cd
    call $1d19
    call Call_009_43cd
    jr jr_009_43b5

jr_009_43ae:
    pop hl
    push hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    res 0, [hl]

jr_009_43b5:
    pop hl
    call Call_009_43e7
    ld a, h
    ld [de], a
    dec de
    ld a, l
    ld [de], a
    dec de
    ld hl, $cf71
    ld [hl], e
    inc hl
    ld [hl], d
    pop af
    ldh [rSVBK], a
    ld hl, $cf78
    inc [hl]
    ret


Call_009_43cd:
    call $1c53
    inc b
    inc c
    call Call_009_43e7

jr_009_43d5:
    push bc
    push hl

jr_009_43d7:
    ld a, [hl+]
    ld [de], a
    dec de
    dec c
    jr nz, jr_009_43d7

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_009_43d5

    ret


Call_009_43e7:
    ret


    xor a
    ldh [$d4], a
    ldh a, [rSVBK]
    push af
    ld a, $07
    ldh [rSVBK], a
    call $1c7e
    ld a, l
    or h
    jp z, Jump_009_445d

    ld a, l
    ld [$cf71], a
    ld a, h
    ld [$cf72], a
    call $1c47
    ld a, [$cf81]
    bit 0, a
    jr z, jr_009_4411

    ld d, h
    ld e, l
    call $1c23

jr_009_4411:
    call $1c7e
    ld a, h
    or l
    jr z, jr_009_441b

    call $1c47

jr_009_441b:
    pop af
    ldh [rSVBK], a
    ld hl, $cf78
    dec [hl]
    ret


    ld a, [$d0ed]
    bit 0, a
    ret z

    xor a
    call $2fcb
    ld hl, $c4a0
    ld de, $a000
    ld bc, $0168
    call $3026
    call $2fe1
    call $2173
    xor a
    call $2fcb
    ld hl, $a000
    ld de, $c4a0
    ld bc, $0168

jr_009_444c:
    ld a, [hl]
    cp $61
    jr c, jr_009_4452

    ld [de], a

jr_009_4452:
    inc hl
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_009_444c

    call $2fe1
    ret


Jump_009_445d:
    ld hl, $4468
    call $1057
    call $31f6

jr_009_4466:
    jr jr_009_4466

    ld d, $b7
    ld b, [hl]
    ld [hl], c
    ld d, b
    ld a, [$cf91]
    ld b, a
    ld hl, $cfa1
    ld a, [$cf82]
    inc a
    bit 6, b
    jr nz, jr_009_447d

    inc a

jr_009_447d:
    ld [hl+], a
    ld a, [$cf83]
    inc a
    ld [hl+], a
    ld a, [$cf92]
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    bit 5, b
    jr z, jr_009_4492

    set 5, [hl]

jr_009_4492:
    ld a, [$cf81]
    bit 4, a
    jr z, jr_009_449b

    set 6, [hl]

jr_009_449b:
    inc hl
    xor a
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $01
    bit 0, b
    jr nz, jr_009_44a9

    add $02

jr_009_44a9:
    ld [hl+], a
    ld a, [$cf88]
    and a
    jr z, jr_009_44b7

    ld c, a
    ld a, [$cf92]
    cp c
    jr nc, jr_009_44b9

jr_009_44b7:
    ld c, $01

jr_009_44b9:
    ld [hl], c
    inc hl
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


    ld a, [$cf74]
    ld [$cf60], a
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    ld a, [$cf74]
    cp $ff
    ret z

    ld de, $c5b9
    ld a, $72
    ld hl, $4955
    rst $08
    ret


    ld hl, $4547
    call $1d3c
    call $1cbb
    call $1ad2
    call $321c
    ld b, $12
    call $3340
    xor a
    ldh [$d4], a
    ld a, [$d108]
    ld [$cf60], a
    call $3856
    ld de, $8800
    ld a, $3c
    call $2d83
    ld a, [$cf82]
    inc a
    ld b, a
    ld a, [$cf83]
    inc a
    ld c, a
    call $1d05
    ld a, $80
    ldh [$ad], a
    ld bc, $0707
    ld a, $13
    call $2d83
    call $31f6
    ret


    ld hl, $4547
    call $1d3c
    call $1ce1
    call $31f6
    call $333e
    xor a
    ldh [$d4], a
    call $2173
    call $321c
    call $1ad2
    call $0e51
    ret


    ld b, b
    inc b
    ld b, $0d
    ld c, $00
    nop
    ld bc, $1e21
    ret c

    xor a
    ld bc, $0010
    call $3041
    nop
    ld bc, $d71e
    ld de, $d81e
    xor a

jr_009_4561:
    push af
    push bc
    push de
    call Call_009_45a7
    jr c, jr_009_456c

    call Call_009_457d

jr_009_456c:
    pop de
    ld [de], a
    inc de
    pop bc
    ld hl, $0010
    add hl, bc
    ld b, h
    ld c, l
    pop af
    inc a
    cp $10
    jr nz, jr_009_4561

    ret


Call_009_457d:
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_009_45a3

    ld hl, $000c
    add hl, bc
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    cp $ff
    jr nz, jr_009_4598

    ld a, e
    cp $ff
    jr z, jr_009_45a1

    jr jr_009_45a3

jr_009_4598:
    ld b, $02
    call $2e6f
    ld a, c
    and a
    jr nz, jr_009_45a3

jr_009_45a1:
    xor a
    ret


jr_009_45a3:
    ld a, $ff
    scf
    ret


Call_009_45a7:
    call $18f5
    ld a, $ff
    ret c

    xor a
    ret


    xor a
    ld [$cf73], a
    ldh [$d4], a
    inc a
    ldh [$aa], a
    call Call_009_471a
    call Call_009_4764
    call Call_009_47dd
    call Call_009_45f1
    call $321c
    xor a
    ldh [$d4], a
    ret


jr_009_45cb:
    call Call_009_4609
    jp c, Jump_009_45d6

    call z, Call_009_45e1
    jr jr_009_45cb

Jump_009_45d6:
    call $1ff8
    ld [$cf73], a
    ld a, $00
    ldh [$aa], a
    ret


Call_009_45e1:
    call Call_009_45f1
    ld a, $01
    ldh [$d4], a
    ld c, $03
    call $0468
    xor a
    ldh [$d4], a
    ret


Call_009_45f1:
    xor a
    ldh [$d4], a
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call Call_009_47f0
    call Call_009_488b
    call Call_009_48b8
    pop af
    ld [$cfcc], a
    ret


Call_009_4609:
jr_009_4609:
    call $1bd3
    ldh a, [$a9]
    and $f0
    ld b, a
    ldh a, [$a7]
    and $0f
    or b
    bit 0, a
    jp nz, Jump_009_4644

    bit 1, a
    jp nz, Jump_009_466f

    bit 2, a
    jp nz, Jump_009_4673

    bit 3, a
    jp nz, Jump_009_4695

    bit 4, a
    jp nz, Jump_009_46b5

    bit 5, a
    jp nz, Jump_009_46a1

    bit 6, a
    jp nz, Jump_009_46c9

    bit 7, a
    jp nz, Jump_009_46df

    jr jr_009_4609

    ld a, $ff
    and a
    ret


Jump_009_4644:
    call $1bee
    ld a, [$cfa9]
    dec a
    call Call_009_48d5
    ld a, [$cf74]
    ld [$d106], a
    ld a, [$cf75]
    ld [$d10d], a
    call Call_009_46fc
    dec a
    ld [$cf77], a
    ld [$d107], a
    ld a, [$cf74]
    cp $ff
    jr z, jr_009_466f

    ld a, $01
    scf
    ret


Jump_009_466f:
jr_009_466f:
    ld a, $02
    scf
    ret


Jump_009_4673:
    ld a, [$cf91]
    bit 7, a
    jp z, $2ec8

    ld a, [$cfa9]
    dec a
    call Call_009_48d5
    ld a, [$cf74]
    cp $ff
    jp z, $2ec8

    call Call_009_46fc
    dec a
    ld [$cf77], a
    ld a, $04
    scf
    ret


Jump_009_4695:
    ld a, [$cf91]
    bit 6, a
    jp z, $2ec8

    ld a, $08
    scf
    ret


Jump_009_46a1:
    ld hl, $cfa6
    bit 7, [hl]
    jp z, $2ec8

    ld a, [$cf91]
    bit 3, a
    jp z, $2ec8

    ld a, $20
    scf
    ret


Jump_009_46b5:
    ld hl, $cfa6
    bit 7, [hl]
    jp z, $2ec8

    ld a, [$cf91]
    bit 2, a
    jp z, $2ec8

    ld a, $10
    scf
    ret


Jump_009_46c9:
    ld hl, $cfa6
    bit 7, [hl]
    jp z, $2ec6

    ld hl, $d0e4
    ld a, [hl]
    and a
    jr z, jr_009_46dc

    dec [hl]
    jp $2ec6


jr_009_46dc:
    jp $2ec8


Jump_009_46df:
    ld hl, $cfa6
    bit 7, [hl]
    jp z, $2ec6

    ld hl, $d0e4
    ld a, [$cf92]
    add [hl]
    ld b, a
    ld a, [$d144]
    cp b
    jr c, jr_009_46f9

    inc [hl]
    jp $2ec6


jr_009_46f9:
    jp $2ec8


Call_009_46fc:
    ld a, [$d0e4]
    ld c, a
    ld a, [$cfa9]
    add c
    ld c, a
    ret


    call $1cfd
    ld de, $0014
    add hl, de
    ld de, $0028
    ld a, [$cf92]

jr_009_4713:
    ld [hl], $7f
    add hl, de
    dec a
    jr nz, jr_009_4713

    ret


Call_009_471a:
    ld hl, $cf96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$cf95]
    call $304d
    ld [$d144], a
    ld a, [$cf92]
    ld c, a
    ld a, [$d0e4]
    add c
    ld c, a
    ld a, [$d144]
    inc a
    cp c
    jr nc, jr_009_4748

    ld a, [$cf92]
    ld c, a
    ld a, [$d144]
    inc a
    sub c
    jr nc, jr_009_4745

    xor a

jr_009_4745:
    ld [$d0e4], a

jr_009_4748:
    ld a, [$d0e4]
    ld c, a
    ld a, [$cf88]
    add c
    ld b, a
    ld a, [$d144]
    inc a
    cp b
    jr c, jr_009_475a

    jr nc, jr_009_4763

jr_009_475a:
    xor a
    ld [$d0e4], a
    ld a, $01
    ld [$cf88], a

jr_009_4763:
    ret


Call_009_4764:
    ld a, [$cf91]
    ld c, a
    ld a, [$d144]
    ld b, a
    ld a, [$cf82]
    add $01
    ld [$cfa1], a
    ld a, [$cf83]
    add $00
    ld [$cfa2], a
    ld a, [$cf92]
    cp b
    jr c, jr_009_4786

    jr z, jr_009_4786

    ld a, b
    inc a

jr_009_4786:
    ld [$cfa3], a
    ld a, $01
    ld [$cfa4], a
    ld a, $8c
    bit 2, c
    jr z, jr_009_4796

    set 0, a

jr_009_4796:
    bit 3, c
    jr z, jr_009_479c

    set 1, a

jr_009_479c:
    ld [$cfa5], a
    xor a
    ld [$cfa6], a
    ld a, $20
    ld [$cfa7], a
    ld a, $c3
    bit 7, c
    jr z, jr_009_47b0

    add $04

jr_009_47b0:
    bit 6, c
    jr z, jr_009_47b6

    add $08

jr_009_47b6:
    ld [$cfa8], a
    ld a, [$cfa3]
    ld b, a
    ld a, [$cf88]
    and a
    jr z, jr_009_47c8

    cp b
    jr z, jr_009_47ca

    jr c, jr_009_47ca

jr_009_47c8:
    ld a, $01

jr_009_47ca:
    ld [$cfa9], a
    ld a, $01
    ld [$cfaa], a
    xor a
    ld [$cfac], a
    ld [$cfad], a
    ld [$cfab], a
    ret


Call_009_47dd:
    ld a, [$d144]
    ld c, a
    ld a, [$d0e3]
    and a
    jr z, jr_009_47ef

    dec a
    cp c
    jr c, jr_009_47ef

    xor a
    ld [$d0e3], a

jr_009_47ef:
    ret


Call_009_47f0:
    call $1cf1
    ld a, [$cf91]
    bit 4, a
    jr z, jr_009_480d

    ld a, [$d0e4]
    and a
    jr z, jr_009_480d

    ld a, [$cf82]
    ld b, a
    ld a, [$cf85]
    ld c, a
    call $1d05
    ld [hl], $61

jr_009_480d:
    call $1cfd
    ld bc, $0015
    add hl, bc
    ld a, [$cf92]
    ld b, a
    ld c, $00

jr_009_481a:
    ld a, [$d0e4]
    add c
    ld [$cf77], a
    ld a, c
    call Call_009_48d5
    ld a, [$cf74]
    cp $ff
    jr z, jr_009_4851

    push bc
    push hl
    call Call_009_486e
    pop hl
    ld bc, $0028
    add hl, bc
    pop bc
    inc c
    ld a, c
    cp b
    jr nz, jr_009_481a

    ld a, [$cf91]
    bit 4, a
    jr z, jr_009_4850

    ld a, [$cf84]
    ld b, a
    ld a, [$cf85]
    ld c, a
    call $1d05
    ld [hl], $ee

jr_009_4850:
    ret


jr_009_4851:
    ld a, [$cf91]
    bit 0, a
    jr nz, jr_009_4866

    ld de, $485f
    call $1078
    ret


    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b

jr_009_4866:
    ld d, h
    ld e, l
    ld hl, $cf98
    jp $31be


Call_009_486e:
    push hl
    ld d, h
    ld e, l
    ld hl, $cf98
    call $31be
    pop hl
    ld a, [$cf93]
    and a
    jr z, jr_009_488a

    ld e, a
    ld d, $00
    add hl, de
    ld d, h
    ld e, l
    ld hl, $cf9b
    call $31be

jr_009_488a:
    ret


Call_009_488b:
    ld a, [$d0e3]
    and a
    jr z, jr_009_48b7

    ld b, a
    ld a, [$d0e4]
    cp b
    jr nc, jr_009_48b7

    ld c, a
    ld a, [$cf92]
    add c
    cp b
    jr c, jr_009_48b7

    ld a, b
    sub c
    dec a
    add a
    add $01
    ld c, a
    ld a, [$cf82]
    add c
    ld b, a
    ld a, [$cf83]
    add $00
    ld c, a
    call $1d05
    ld [hl], $ec

jr_009_48b7:
    ret


Call_009_48b8:
    ld a, [$cf91]
    bit 5, a
    ret z

    bit 1, a
    jr z, jr_009_48c7

    ld a, [$d0e3]
    and a
    ret nz

jr_009_48c7:
    ld a, [$cfa9]
    dec a
    call Call_009_48d5
    ld hl, $cf9e
    call $31be
    ret


Call_009_48d5:
    push de
    push hl
    ld e, a
    ld a, [$d0e4]
    add e
    ld e, a
    ld d, $00
    ld hl, $cf96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    ld a, [$cf94]
    cp $01
    jr z, jr_009_48f2

    cp $02
    jr z, jr_009_48f1

jr_009_48f1:
    add hl, de

jr_009_48f2:
    add hl, de
    ld a, [$cf95]
    call $304d
    ld [$cf74], a
    ld [$d106], a
    inc hl
    ld a, [$cf95]
    call $304d
    ld [$cf75], a
    pop hl
    pop de
    ret


    ld a, [$d0e3]
    and a
    jr z, jr_009_493d

    ld b, a
    ld a, [$cf77]
    inc a
    cp b
    jr z, jr_009_4945

    ld a, [$cf77]
    call Call_009_4a5c
    ld a, [hl]
    cp $ff
    ret z

    ld a, [$d0e3]
    dec a
    ld [$d0e3], a
    call Call_009_49a7
    jp c, Jump_009_49d1

    ld a, [$cf77]
    ld c, a
    ld a, [$d0e3]
    cp c
    jr c, jr_009_497a

    jr jr_009_494a

jr_009_493d:
    ld a, [$cf77]
    inc a
    ld [$d0e3], a
    ret


jr_009_4945:
    xor a
    ld [$d0e3], a
    ret


jr_009_494a:
    ld a, [$d0e3]
    call Call_009_4a40
    ld a, [$cf77]
    ld d, a
    ld a, [$d0e3]
    ld e, a
    call Call_009_4a6c
    push bc
    ld a, [$d0e3]
    call Call_009_4a5c
    dec hl
    push hl
    call Call_009_4a80
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    pop bc
    call Call_009_4aab
    ld a, [$cf77]
    call Call_009_4a4d
    xor a
    ld [$d0e3], a
    ret


jr_009_497a:
    ld a, [$d0e3]
    call Call_009_4a40
    ld a, [$cf77]
    ld d, a
    ld a, [$d0e3]
    ld e, a
    call Call_009_4a6c
    push bc
    ld a, [$d0e3]
    call Call_009_4a5c
    ld d, h
    ld e, l
    call Call_009_4a80
    add hl, bc
    pop bc
    call $3026
    ld a, [$cf77]
    call Call_009_4a4d
    xor a
    ld [$d0e3], a
    ret


Call_009_49a7:
    ld a, [$d0e3]
    call Call_009_4a5c
    ld d, h
    ld e, l
    ld a, [$cf77]
    call Call_009_4a5c
    ld a, [de]
    cp [hl]
    jr nz, jr_009_49cd

    ld a, [$cf77]
    call Call_009_4a97
    cp $63
    jr z, jr_009_49cd

    ld a, [$d0e3]
    call Call_009_4a97
    cp $63
    jr nz, jr_009_49cf

jr_009_49cd:
    and a
    ret


jr_009_49cf:
    scf
    ret


Jump_009_49d1:
    ld a, [$d0e3]
    call Call_009_4a5c
    inc hl
    push hl
    ld a, [$cf77]
    call Call_009_4a5c
    inc hl
    ld a, [hl]
    pop hl
    add [hl]
    cp $64
    jr c, jr_009_4a01

    sub $63
    push af
    ld a, [$cf77]
    call Call_009_4a5c
    inc hl
    ld [hl], $63
    ld a, [$d0e3]
    call Call_009_4a5c
    inc hl
    pop af
    ld [hl], a
    xor a
    ld [$d0e3], a
    ret


jr_009_4a01:
    push af
    ld a, [$cf77]
    call Call_009_4a5c
    inc hl
    pop af
    ld [hl], a
    ld hl, $cf96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d0e3]
    cp [hl]
    jr nz, jr_009_4a25

    dec [hl]
    ld a, [$d0e3]
    call Call_009_4a5c
    ld [hl], $ff
    xor a
    ld [$d0e3], a
    ret


jr_009_4a25:
    dec [hl]
    call Call_009_4a80
    push bc
    ld a, [$d0e3]
    call Call_009_4a5c
    pop bc
    push hl
    add hl, bc
    pop de

jr_009_4a34:
    ld a, [hl+]
    ld [de], a
    inc de
    cp $ff
    jr nz, jr_009_4a34

    xor a
    ld [$d0e3], a
    ret


Call_009_4a40:
    call Call_009_4a5c
    ld de, $d002
    call Call_009_4a80
    call $3026
    ret


Call_009_4a4d:
    call Call_009_4a5c
    ld d, h
    ld e, l
    ld hl, $d002
    call Call_009_4a80
    call $3026
    ret


Call_009_4a5c:
    push af
    call Call_009_4a80
    ld hl, $cf96
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    pop af
    call $30fe
    ret


Call_009_4a6c:
    push hl
    call Call_009_4a80
    ld a, d
    sub e
    jr nc, jr_009_4a76

    dec a
    cpl

jr_009_4a76:
    ld hl, $0000
    call $30fe
    ld b, h
    ld c, l
    pop hl
    ret


Call_009_4a80:
    push hl
    ld a, [$cf94]
    ld c, a
    ld b, $00
    ld hl, $4a91
    add hl, bc
    add hl, bc
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    ret


    nop
    nop
    ld bc, $0200
    nop

Call_009_4a97:
    push af
    call Call_009_4a80
    ld a, c
    cp $02
    jr nz, jr_009_4aa7

    pop af
    call Call_009_4a5c
    inc hl
    ld a, [hl]
    ret


jr_009_4aa7:
    pop af
    ld a, $01
    ret


Call_009_4aab:
jr_009_4aab:
    ld a, [hl-]
    ld [de], a
    dec de
    dec bc
    ld a, b
    or c
    jr nz, jr_009_4aab

    ret


    push de
    ld a, [$cf74]
    ld [$d265], a
    call $3468
    pop hl
    call $1078
    ret


    push de
    ld a, [$cf74]
    ld [$d106], a
    ld a, $03
    ld hl, $5427
    rst $08
    ld a, [$d142]
    pop hl
    and a
    jr nz, jr_009_4ae7

    ld de, $0015
    add hl, de
    ld [hl], $f1
    inc hl
    ld de, $cf75
    ld bc, $0102
    call $3198

jr_009_4ae7:
    ret


    ld hl, $4b15
    call $1d3c
    jr jr_009_4b01

    ld hl, $4b1d
    call $1d3c
    jr jr_009_4b01

    ld hl, $4b15
    ld de, $000b
    call $1e2e

jr_009_4b01:
    call $1cbb
    call $1cfd
    ld de, $0015
    add hl, de
    ld de, $d84e
    ld bc, $2306
    call $3198
    ret


    ld b, b
    nop
    dec bc
    ld [bc], a
    inc de
    nop
    nop
    ld bc, $0b40
    nop
    dec c
    ld [$0000], sp
    ld bc, $ab21
    call nz, $0106
    ld c, $07
    call $0fe8
    ld hl, $c4ac
    ld de, $4b89
    call $1078
    ld hl, $c4c5
    ld de, $4b8e
    call $1078
    ld de, $d855
    ld bc, $0204
    ld hl, $c4c1
    call $3198
    ret


    ld hl, $c4a5
    ld b, $03
    ld c, $0d
    call $0fe8
    ld hl, $c4ba
    ld de, $4b83
    call $1078
    ld hl, $c4c0
    ld de, $d84e
    ld bc, $2306
    call $3198
    ld hl, $c4e2
    ld de, $4b89
    call $1078
    ld hl, $c4eb
    ld de, $d855
    ld bc, $0204
    call $3198
    ret


    adc h
    adc [hl]
    adc l
    add h
    sbc b
    ld d, b
    add d
    adc [hl]
    adc b
    adc l
    ld d, b
    ld d, b
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    ld hl, $c4a0
    ld b, $03
    ld c, $07
    call $0fe8
    ld hl, $c4b5
    ld de, $dc7a
    ld bc, $0203
    call $3198
    ld hl, $c4b8
    ld de, $4bcf
    call $1078
    ld hl, $c4dd
    ld de, $4bd4
    call $1078
    ld hl, $c4e1
    ld de, $dc79
    ld bc, $0102
    call $3198
    pop af
    ld [$cfcc], a
    ret


    di
    ei
    or $f6
    ld d, b
    inc e
    db $e3
    and [hl]
    ld a, a
    ld a, a
    ld a, a
    cp d
    ld d, b

Call_009_4bdc:
    ld hl, $c4a0
    ld b, $05
    ld c, $11
    call $0fe8
    ret


    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call Call_009_4bdc
    ld hl, $c505
    ld de, $4c52
    call $1078
    ld hl, $c50c
    ld de, $dc79
    ld bc, $4102
    call $3198
    ld hl, $c4b5
    ld de, $4c4b
    call $1078
    ld a, [$df9c]
    and a
    ld de, $4c59
    jr z, jr_009_4c1e

    ld [$d265], a
    call $343b

jr_009_4c1e:
    ld hl, $c4bc
    call $1078
    ld a, [$df9c]
    and a
    jr z, jr_009_4c3e

    ld hl, $c4dd
    ld de, $4c5e
    call $1078
    ld a, [$dfbb]
    ld h, b
    ld l, c
    inc hl
    ld c, $03
    call $3842

jr_009_4c3e:
    pop af
    ld [$cfcc], a
    ret


    inc e
    db $e3
    and [hl]
    ld a, a
    ld a, a
    ld a, a
    cp d
    ld d, b
    add d
    add b
    sub h
    add [hl]
    add a
    sub e
    ld d, b
    add c
    add b
    adc e
    adc e
    sub d
    sbc h
    ld d, b
    adc l
    xor [hl]
    xor l
    and h
    ld d, b
    adc e
    add h
    sub l
    add h
    adc e
    ld d, b
    ld hl, $d1ea
    xor a
    ld [hl+], a
    dec a
    ld bc, $000a
    call $3041
    ld hl, $4ca0

jr_009_4c73:
    ld a, [hl]
    cp $ff
    jr z, jr_009_4c8d

    push hl
    ld [$d106], a
    ld hl, $d892
    call $2f79
    pop hl
    jr nc, jr_009_4c89

    ld a, [hl]
    call Call_009_4c94

jr_009_4c89:
    inc hl
    inc hl
    jr jr_009_4c73

jr_009_4c8d:
    ld a, [$d1ea]
    and a
    ret nz

    scf
    ret


Call_009_4c94:
    push hl
    ld hl, $d1ea
    inc [hl]
    ld e, [hl]
    ld d, $00
    add hl, de
    ld [hl], a
    pop hl
    ret


    ld d, l
    sbc a
    ld e, c
    and b
    ld e, h
    and l
    ld e, l
    and h
    ld h, c
    and c
    ld h, e
    sbc l
    ld h, l
    and [hl]
    rst $38
    sub d
    sub e
    add b
    sub e
    sub d
    ld d, b
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
    ld d, b
    adc b
    sub e
    add h
    adc h
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    adc h
    adc [hl]
    sub l
    add h
    ld d, b
    adc h
    add b
    adc b
    adc e
    ld d, b
    add h
    sub c
    sub c
    adc [hl]
    sub c
    rst $20
    ld d, b
    nop
    ld bc, $000f
    ld [bc], a
    inc de
    nop
    inc bc
    add hl, sp
    nop
    inc b
    ld b, [hl]
    nop
    ld b, $94
    nop
    dec b
    ld a, a
    nop
    rlca
    ld a, [$0800]
    ld e, e
    nop
    add hl, bc
    ld h, h
    nop
    ld a, [bc]
    add a
    nop
    dec bc
    dec e
    nop
    inc c
    ld sp, hl
    nop
    dec c
    ret nc

    nop
    ld c, $e6
    ld bc, $010f
    ld bc, $0210
    ld bc, $0311
    ld bc, $0412
    ld bc, $0513
    ld bc, $0614
    ld bc, $0715
    rst $38
    xor a
    ldh [$d4], a
    call Call_009_4dd4
    ld a, $23
    ld hl, $6a4a
    rst $08
    ld hl, $4d3f
    call $1d35
    call $4d47
    call Call_009_4d91
    ld a, $01
    ldh [$d4], a
    call Call_009_4d59
    ld [$cf74], a
    call $1c07
    ret


    ld b, b
    nop
    ld b, $11
    inc de
    nop
    nop
    ld bc, $eafa
    pop de
    inc a
    add a
    ld b, a
    ld a, [$cf84]
    sub b
    inc a
    ld [$cf82], a
    call $1cbb
    ret


Call_009_4d59:
jr_009_4d59:
    ld a, $a0
    ld [$cf91], a
    ld a, [$d1ea]
    ld [$cf92], a
    call $1c10
    ld hl, $cfa5
    set 6, [hl]
    call $1bc9
    ld de, $0008
    call $3c23
    ldh a, [$a7]
    bit 0, a
    jr nz, jr_009_4d84

    bit 1, a
    jr nz, jr_009_4d81

    jr jr_009_4d59

jr_009_4d81:
    ld a, $12
    ret


jr_009_4d84:
    ld a, [$cfa9]
    dec a
    ld c, a
    ld b, $00
    ld hl, $d1eb
    add hl, bc
    ld a, [hl]
    ret


Call_009_4d91:
    call $1cfd
    ld bc, $002a
    add hl, bc
    ld de, $d1eb

jr_009_4d9b:
    ld a, [de]
    inc de
    cp $ff
    ret z

    push de
    push hl
    call Call_009_4db0
    pop hl
    call $1078
    ld bc, $0028
    add hl, bc
    pop de
    jr jr_009_4d9b

Call_009_4db0:
    ld hl, $4cda
    ld de, $0003
    call $30e1
    dec hl
    ld a, [hl+]
    cp $01
    jr z, jr_009_4dc8

    inc hl
    ld a, [hl]
    ld [$d265], a
    call $34f8
    ret


jr_009_4dc8:
    inc hl
    ld a, [hl]
    dec a
    ld hl, $4caf
    call $3411
    ld d, h
    ld e, l
    ret


Call_009_4dd4:
    call Call_009_4e68
    ld a, [$d108]
    cp $fd
    jr z, jr_009_4e3f

    ld a, [$c2dc]
    and a
    jr nz, jr_009_4e03

    ld a, $02
    call $3917
    ld d, h
    ld e, l
    ld c, $04

jr_009_4ded:
    push bc
    push de
    ld a, [de]
    and a
    jr z, jr_009_4dfd

    push hl
    call Call_009_4e52
    pop hl
    jr nc, jr_009_4dfd

    call Call_009_4e83

jr_009_4dfd:
    pop de
    inc de
    pop bc
    dec c
    jr nz, jr_009_4ded

jr_009_4e03:
    ld a, $0f
    call Call_009_4e83
    ld a, $10
    call Call_009_4e83
    ld a, $13
    call Call_009_4e83
    ld a, [$c2dc]
    and a
    jr nz, jr_009_4e2f

    push hl
    ld a, $01
    call $3917
    ld d, [hl]
    ld a, $2e
    ld hl, $5e76
    rst $08
    pop hl
    ld a, $14
    jr c, jr_009_4e2c

    ld a, $11

jr_009_4e2c:
    call Call_009_4e83

jr_009_4e2f:
    ld a, [$d1ea]
    cp $08
    jr z, jr_009_4e3b

    ld a, $12
    call Call_009_4e83

jr_009_4e3b:
    call Call_009_4e76
    ret


jr_009_4e3f:
    ld a, $0f
    call Call_009_4e83
    ld a, $10
    call Call_009_4e83
    ld a, $12
    call Call_009_4e83
    call Call_009_4e76
    ret


Call_009_4e52:
    ld b, a
    ld hl, $4cd9

jr_009_4e56:
    ld a, [hl+]
    cp $ff
    jr z, jr_009_4e67

    cp $01
    jr z, jr_009_4e67

    ld d, [hl]
    inc hl
    ld a, [hl+]
    cp b
    jr nz, jr_009_4e56

    ld a, d
    scf

jr_009_4e67:
    ret


Call_009_4e68:
    xor a
    ld [$d1ea], a
    ld hl, $d1eb
    ld bc, $0009
    call $3041
    ret


Call_009_4e76:
    ld a, [$d1ea]
    ld e, a
    ld d, $00
    ld hl, $d1eb
    add hl, de
    ld [hl], $ff
    ret


Call_009_4e83:
    push hl
    push de
    push af
    ld a, [$d1ea]
    ld e, a
    inc a
    ld [$d1ea], a
    ld d, $00
    ld hl, $d1eb
    add hl, de
    pop af
    ld [hl], a
    pop de
    pop hl
    ret


    ld hl, $4ed4
    call $1d3c
    xor a
    ldh [$d4], a
    call $1cbb
    call $1ad2
    call $1c89
    call $31f6
    call $1c66
    ld a, [$cf91]
    bit 7, a
    jr z, jr_009_4ed0

    call $1c10
    ld hl, $cfa5
    set 6, [hl]
    call $1bc9
    ld de, $0008
    call $3c23
    ldh a, [$a7]
    bit 1, a
    jr z, jr_009_4ed2

    ret z

jr_009_4ed0:
    scf
    ret


jr_009_4ed2:
    and a
    ret


    nop
    dec bc
    dec bc
    ld de, $dc13
    ld c, [hl]
    ld bc, $03c0
    sub d
    sub [hl]
    adc b
    sub e
    add d
    add a
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
    ld hl, $4f2c
    call $1d35
    ld a, [$d0d2]
    ld [$cf88], a
    call $2039
    ld a, [$cf88]
    ld [$d0d2], a
    call $1c07
    ret


    ld hl, $4f4e
    call $1d35
    jr jr_009_4f19

    ld hl, $4f89
    call $1d35

jr_009_4f19:
    ld a, [$d0d2]
    ld [$cf88], a
    call $202a
    ld a, [$cf88]
    ld [$d0d2], a
    call $1c07
    ret


    ld b, b
    inc c
    ld [$1311], sp
    inc [hl]
    ld c, a
    ld bc, $2281
    ld b, $09
    dec a
    ld c, a
    add hl, bc
    nop
    nop
    add l
    adc b
    add [hl]
    add a
    sub e
    ld d, b
    ld c, d
    ld d, b
    adc a
    add b
    add d
    adc d
    ld d, b
    sub c
    sub h
    adc l
    ld d, b
    ld b, b
    inc c
    nop
    ld de, $5613
    ld c, a
    ld bc, $2281
    dec bc
    add hl, bc
    ld e, a
    ld c, a
    add hl, bc
    ld a, h
    ld c, a
    adc d
    sbc e
    jp hl


    ret c

    inc e
    db $e3
    and [hl]
    pop af
    ld a, a
    ld a, a
    ld d, b
    add e
    adc d
    db $dd
    push bc
    add hl, hl
    reti


    ld d, b
    or d
    cp h
    db $dd
    push bc
    add hl, hl
    reti


    ld d, b
    add $29
    reti


    ld d, b
    ld hl, $c5b5
    ld de, $dc79
    ld bc, $8102
    call $3198
    ret


    ld b, b
    inc c
    ld [bc], a
    ld de, $9113
    ld c, a
    ld bc, $2281
    inc c
    add hl, bc
    sbc d
    ld c, a
    add hl, bc
    or d
    ld c, a
    add l
    adc b
    add [hl]
    add a
    sub e
    ld d, b
    ld c, d
    ld d, b
    adc a
    add b
    sub c
    adc d
    add c
    add b
    adc e
    adc e
    pop af
    ld a, a
    ld a, a
    ld d, b
    sub c
    sub h
    adc l
    ld d, b
    ld hl, $c5ed
    ld de, $dc79
    ld bc, $8102
    call $3198
    ret


    ld hl, $50ed
    call $1d35
    call Call_009_4ff9
    ret


    ld a, $03
    ld hl, $5486
    rst $08
    ld a, d
    ld [$d1ea], a
    ld a, e
    ld [$d1eb], a
    ld hl, $50f5
    call $1d35
    call Call_009_4ff9
    ret


    ld a, $03
    ld hl, $5486
    rst $08
    ld a, d
    ld [$d1ea], a
    ld a, e
    ld [$d1eb], a
    ld hl, $50fd
    call $1d35
    call Call_009_4ff9
    ret


Call_009_4ff9:
    ld a, $01
    ld [$d10c], a

jr_009_4ffe:
    call Call_009_5072
    call Call_009_500e
    jr nc, jr_009_4ffe

    cp $ff
    jr nz, jr_009_500c

    scf
    ret


jr_009_500c:
    and a
    ret


Call_009_500e:
    call $354b
    bit 1, c
    jr nz, jr_009_502b

    bit 0, c
    jr nz, jr_009_502f

    bit 7, c
    jr nz, jr_009_5033

    bit 6, c
    jr nz, jr_009_503f

    bit 5, c
    jr nz, jr_009_504d

    bit 4, c
    jr nz, jr_009_505f

    and a
    ret


jr_009_502b:
    ld a, $ff
    scf
    ret


jr_009_502f:
    ld a, $00
    scf
    ret


jr_009_5033:
    ld hl, $d10c
    dec [hl]
    jr nz, jr_009_503d

    ld a, [$d10d]
    ld [hl], a

jr_009_503d:
    and a
    ret


jr_009_503f:
    ld hl, $d10c
    inc [hl]
    ld a, [$d10d]
    cp [hl]
    jr nc, jr_009_504b

    ld [hl], $01

jr_009_504b:
    and a
    ret


jr_009_504d:
    ld a, [$d10c]
    sub $0a
    jr c, jr_009_5058

    jr z, jr_009_5058

    jr jr_009_505a

jr_009_5058:
    ld a, $01

jr_009_505a:
    ld [$d10c], a
    and a
    ret


jr_009_505f:
    ld a, [$d10c]
    add $0a
    ld b, a
    ld a, [$d10d]
    cp b
    jr nc, jr_009_506c

    ld b, a

jr_009_506c:
    ld a, b
    ld [$d10c], a
    and a
    ret


Call_009_5072:
    call $1cbb
    call $1cfd
    ld de, $0015
    add hl, de
    ld [hl], $f1
    inc hl
    ld de, $d10c
    ld bc, $8102
    call $3198
    ld a, [$cf86]
    ld e, a
    ld a, [$cf87]
    ld d, a
    ld a, [$cf8a]
    call $2d54
    ret


    ret


    call Call_009_50a9
    call Call_009_50d1
    ret


    call Call_009_50a9
    call Call_009_50c1
    call Call_009_50d1
    ret


Call_009_50a9:
    xor a
    ldh [$b4], a
    ld a, [$d1ea]
    ldh [$b5], a
    ld a, [$d1eb]
    ldh [$b6], a
    ld a, [$d10c]
    ldh [$b7], a
    push hl
    call $3119
    pop hl
    ret


Call_009_50c1:
    push hl
    ld hl, $ffb4
    ld a, [hl]
    srl a
    ld [hl+], a
    ld a, [hl]
    rra
    ld [hl+], a
    ld a, [hl]
    rra
    ld [hl], a
    pop hl
    ret


Call_009_50d1:
    push hl
    ld hl, $ffc3
    ldh a, [$b4]
    ld [hl+], a
    ldh a, [$b5]
    ld [hl+], a
    ldh a, [$b6]
    ld [hl], a
    pop hl
    inc hl
    ld de, $ffc3
    ld bc, $2306
    call $3198
    call $31f6
    ret


    ld b, b
    add hl, bc
    rrca
    dec bc
    inc de
    sub a
    ld d, b
    nop
    ld b, b
    rrca
    rlca
    ld de, $9813
    ld d, b
    rst $38
    ld b, b
    rrca
    rlca
    ld de, $9f13
    ld d, b
    nop
    ld a, [$d0ed]
    push af
    xor a
    ld [$d0ed], a
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call Call_009_513b

jr_009_5117:
    call $05a7
    call $0a57
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_009_5132

    ldh a, [$a9]
    and $02
    jr nz, jr_009_5132

    call Call_009_518e
    call $045a
    jr jr_009_5117

jr_009_5132:
    pop af
    ld [$cfcc], a
    pop af
    ld [$d0ed], a
    ret


Call_009_513b:
    call $31f3
    call $300b
    call $0fc8
    call $0568
    ld a, $22
    ld hl, $433e
    rst $08
    ld hl, $65c3
    ld de, $91c0
    ld bc, $0010
    ld a, $09
    call $0e8d
    ld hl, $5523
    ld de, $9290
    ld bc, $0560
    ld a, $09
    call $0e8d
    call Call_009_5299
    ld hl, $c540
    ld d, $06
    call Call_009_53b0
    call $058a
    call $31f6
    ld b, $15
    call $3340
    call $32f9
    call $31f6
    ld hl, $cf63
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_009_518e:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $519d
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    or [hl]
    ld d, c
    rst $10
    ld d, c
    db $f4
    ld d, c
    ld hl, $4c52
    ld d, d
    ld a, c
    ld d, d
    or b
    ld d, c

Call_009_51ab:
    ld hl, $cf63
    inc [hl]
    ret


    ld hl, $cf63
    set 7, [hl]
    ret


    call $300b
    ld hl, $c540
    ld d, $06
    call Call_009_53b0
    call $31f6
    ld de, $5523
    ld hl, $9290
    ld bc, $0956
    call $0eba
    call Call_009_530a
    call Call_009_51ab
    ret


    call Call_009_5415
    ld hl, $ffa9
    ld a, [hl]
    and $11
    jr nz, jr_009_51e3

    ret


jr_009_51e3:
    ld a, $02
    ld [$cf63], a
    ret


    ld a, [$d858]
    and a
    ret z

    ld a, $04
    ld [$cf63], a
    ret


    call $300b
    ld hl, $c540
    ld d, $06
    call Call_009_53b0
    call $31f6
    ld de, $5583
    ld hl, $9290
    ld bc, $0956
    call $0eba
    ld de, $6043
    ld hl, $8000
    ld bc, $092c
    call $0eba
    call Call_009_536c
    call Call_009_51ab
    ret


    ld hl, $54c9
    call Call_009_5438
    ld hl, $ffa9
    ld a, [hl]
    and $01
    jr nz, jr_009_5246

    ld a, [hl]
    and $20
    jr nz, jr_009_5235

    ret


jr_009_5235:
    ld a, $00
    ld [$cf63], a
    ret


    ld a, [$d858]
    and a
    ret z

    ld a, $04
    ld [$cf63], a
    ret


jr_009_5246:
    ld a, $06
    ld [$cf63], a
    ret


    call $300b
    ld hl, $c540
    ld d, $06
    call Call_009_53b0
    call $31f6
    ld de, $5ae3
    ld hl, $9290
    ld bc, $0956
    call $0eba
    ld de, $6303
    ld hl, $8000
    ld bc, $092c
    call $0eba
    call Call_009_536c
    call Call_009_51ab
    ret


    ld hl, $54c9
    call Call_009_5438
    ld hl, $ffa9
    ld a, [hl]
    and $20
    jr nz, jr_009_528d

    ld a, [hl]
    and $10
    jr nz, jr_009_5293

    ret


jr_009_528d:
    ld a, $02
    ld [$cf63], a
    ret


jr_009_5293:
    ld a, $00
    ld [$cf63], a
    ret


Call_009_5299:
    ld hl, $c4a0
    ld d, $05
    call Call_009_53b0
    ld hl, $c4ca
    ld de, $52ec
    call $1078
    ld hl, $c4f2
    ld de, $52f9
    call Call_009_53a8
    ld hl, $c4cf
    ld de, $d47d
    call $1078
    ld hl, $c4f5
    ld de, $d47b
    ld bc, $8205
    call $3198
    ld hl, $c51f
    ld de, $d84e
    ld bc, $2306
    call $3198
    ld hl, $c4dd
    ld de, $52fc
    call Call_009_53a8
    ld hl, $c4c2
    ld bc, $0507
    xor a
    ldh [$ad], a
    ld a, $13
    call $2d83
    ret


    adc l
    add b
    adc h
    add h
    di
    ld c, [hl]
    ld c, [hl]
    adc h
    adc [hl]
    adc l
    add h
    sbc b
    ld d, b
    daa
    jr z, @+$01

    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h
    ld h, $ff

Call_009_530a:
    ld hl, $c56a
    ld de, $534c
    call $1078
    ld hl, $c5d6
    ld de, $535c
    call $1078
    ld hl, $de99
    ld b, $20
    call $335f
    ld de, $d265
    ld hl, $c577
    ld bc, $0103
    call $3198
    call Call_009_5415
    ld hl, $c542
    ld de, $5366
    call Call_009_53a8
    ld a, [$d84c]
    bit 0, a
    ret nz

    ld hl, $c555
    ld bc, $0211
    call $0fb6
    ret


    ld d, h
    add e
    add h
    sub a
    ld c, [hl]
    adc a
    adc e
    add b
    sbc b
    ld a, a
    sub e
    adc b
    adc h
    add h
    ld d, b
    ld d, b
    ld a, a
    ld a, a
    add c
    add b
    add e
    add [hl]
    add h
    sub d
    db $ed
    ld d, b
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    rst $38

Call_009_536c:
    ld hl, $c542
    ld de, $53a2
    call Call_009_53a8
    ld hl, $c56a
    ld a, $29
    ld c, $04

jr_009_537c:
    call Call_009_53f4
    inc hl
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_009_537c

    ld hl, $c5a6
    ld a, $51
    ld c, $04

jr_009_538d:
    call Call_009_53f4
    inc hl
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_009_538d

    xor a
    ld [$cf64], a
    ld hl, $54c9
    call Call_009_5448
    ret


    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    rst $38

Call_009_53a8:
jr_009_53a8:
    ld a, [de]
    cp $ff
    ret z

    ld [hl+], a
    inc de
    jr jr_009_53a8

Call_009_53b0:
    ld e, $14

jr_009_53b2:
    ld a, $23
    ld [hl+], a
    dec e
    jr nz, jr_009_53b2

    ld a, $23
    ld [hl+], a
    ld e, $11
    ld a, $7f

jr_009_53bf:
    ld [hl+], a
    dec e
    jr nz, jr_009_53bf

    ld a, $1c
    ld [hl+], a
    ld a, $23
    ld [hl+], a

jr_009_53c9:
    ld a, $23
    ld [hl+], a
    ld e, $12
    ld a, $7f

jr_009_53d0:
    ld [hl+], a
    dec e
    jr nz, jr_009_53d0

    ld a, $23
    ld [hl+], a
    dec d
    jr nz, jr_009_53c9

    ld a, $23
    ld [hl+], a
    ld a, $24
    ld [hl+], a
    ld e, $11
    ld a, $7f

jr_009_53e4:
    ld [hl+], a
    dec e
    jr nz, jr_009_53e4

    ld a, $23
    ld [hl+], a
    ld e, $14

jr_009_53ed:
    ld a, $23
    ld [hl+], a
    dec e
    jr nz, jr_009_53ed

    ret


Call_009_53f4:
    push de
    push hl
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld de, $0011
    add hl, de
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld de, $0011
    add hl, de
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    pop hl
    pop de
    ret


Call_009_5415:
    ld hl, $c59b
    ld de, $d4c4
    ld bc, $0204
    call $3198
    inc hl
    ld de, $d4c6
    ld bc, $8102
    call $3198
    ldh a, [$9b]
    and $1f
    ret nz

    ld hl, $c59f
    ld a, [hl]
    xor $51
    ld [hl], a
    ret


Call_009_5438:
    ldh a, [$9b]
    and $07
    ret nz

    ld a, [$cf64]
    inc a
    and $07
    ld [$cf64], a
    jr jr_009_5448

Call_009_5448:
jr_009_5448:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [de]
    ld c, a
    ld de, $c400
    ld b, $08

jr_009_5453:
    srl c
    push bc
    jr nc, jr_009_5472

    push hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld [$cf66], a
    ld a, [$cf64]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$cf65], a
    call Call_009_547b
    pop hl

jr_009_5472:
    ld bc, $000b
    add hl, bc
    pop bc
    dec b
    jr nz, jr_009_5453

    ret


Call_009_547b:
    ld a, [$cf65]
    and $80
    jr nz, jr_009_5487

    ld hl, $54a7
    jr jr_009_548a

jr_009_5487:
    ld hl, $54b8

jr_009_548a:
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
    ld a, [$cf65]
    and $7f
    add [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [$cf66]
    add [hl]
    ld [de], a
    inc hl
    inc de
    jr jr_009_548a

    nop
    nop
    nop
    nop
    nop
    ld [$0001], sp
    ld [$0200], sp
    nop
    ld [$0308], sp
    nop
    rst $38
    nop
    nop
    ld bc, $0020
    ld [$2000], sp
    ld [$0300], sp
    jr nz, @+$0a

    ld [$2002], sp
    rst $38
    ld d, a
    ret c

    ld l, b
    jr jr_009_54ce

jr_009_54ce:
    nop
    jr nz, @+$26

    and b
    nop
    jr nz, @+$26

    and b
    ld l, b
    jr c, jr_009_54d9

jr_009_54d9:
    inc b
    jr nz, @+$26

    and b
    inc b
    jr nz, @+$26

    and b
    ld l, b
    ld e, b
    nop
    ld [$2420], sp
    and b
    ld [$2420], sp
    and b
    ld l, b
    ld a, b
    nop
    inc c
    jr nz, jr_009_5516

    and b
    inc c
    jr nz, jr_009_551a

    and b
    add b
    jr c, jr_009_54fa

jr_009_54fa:
    db $10
    jr nz, @+$26

    and b
    db $10
    jr nz, jr_009_5525

    and b
    add b
    jr jr_009_5505

jr_009_5505:
    inc d
    jr nz, @+$26

    and b
    inc d
    jr nz, jr_009_5530

    and b
    add b
    ld e, b
    nop
    jr jr_009_5532

    inc h
    and b
    jr jr_009_5536

jr_009_5516:
    inc h
    and b
    add b
    ld a, b

jr_009_551a:
    nop
    inc e
    jr nz, jr_009_5542

    and b
    sbc h
    jr nz, jr_009_5546

    and b
    nop
    rst $38

jr_009_5525:
    nop
    nop
    nop
    nop
    ld e, $1e
    jr nz, jr_009_554d

    ld a, $3e
    ld [bc], a

jr_009_5530:
    ld [bc], a
    inc a

jr_009_5532:
    inc a
    nop
    rst $38
    nop

jr_009_5536:
    nop
    nop
    nop
    ld sp, hl
    ld sp, hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc hl
    ld [hl+], a

jr_009_5542:
    ld [hl+], a
    nop
    rst $38
    nop

jr_009_5546:
    nop
    nop
    nop
    rst $08
    rst $08
    ld [hl+], a
    ld [hl+], a

jr_009_554d:
    ld [hl+], a
    ld [hl+], a
    ld [c], a
    ld [c], a
    ld [hl+], a
    ld [hl+], a
    nop
    rst $38
    nop
    nop
    nop
    nop
    and d
    and d
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc e
    inc e
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    add b
    add b
    ld hl, sp-$08
    ld [$f008], sp
    ldh a, [rP1]
    nop
    nop
    nop
    jr jr_009_5591

    jr jr_009_5593

    nop
    nop
    jr jr_009_5597

    jr jr_009_5599

    nop
    nop
    nop

jr_009_5584:
    nop
    db $fc
    jr nc, jr_009_5584

    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a

jr_009_5591:
    nop
    ld a, [hl]

jr_009_5593:
    nop
    nop
    nop
    nop

jr_009_5597:
    nop
    nop

jr_009_5599:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$110f], sp
    rra
    ld [bc], a
    ccf
    ld b, h

jr_009_55cc:
    ld a, a
    ld c, b
    ld a, a
    add hl, hl
    ccf
    ld de, $3f1f
    rst $38
    ld e, a
    rst $38
    dec a
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    db $ed
    rst $30
    ld [hl], b
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    ld a, h
    db $fc
    inc a
    cp $be
    cp $13
    rra
    dec bc
    rrca
    dec bc
    rrca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0e01
    ld c, $ff
    db $e3
    rst $10
    rst $28
    cp l
    jp $80ff


    adc a
    sub b
    ld c, a
    ld c, h
    cp a
    pop af
    add hl, de
    sbc a
    ld a, [$68fe]
    inc a
    ld e, b
    inc l
    ret nc

    jr z, jr_009_55cc

    ld d, b
    ldh [rSVBK], a
    ret nz

    ldh [$f8], a
    ld hl, sp+$00
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a

jr_009_5667:
    inc bc
    inc b
    rlca
    ld [$111e], sp
    ld e, $11
    dec h
    dec sp
    ld hl, $4f3f
    cp b
    add [hl]
    ld a, c
    add h
    ld a, e
    ld b, b
    rst $38
    and h
    rst $18
    ldh a, [$9f]
    ld a, [c]
    ccf
    or d
    ld l, a
    ret nz

    ret nz

    jr nz, jr_009_5667

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$44
    db $fc
    ld b, h
    db $fc
    add hl, de
    rra
    ld [de], a
    rra
    inc hl
    ld a, $2a
    ld a, $18
    ld e, $04
    rlca
    inc bc
    inc bc
    nop
    nop
    db $fd
    ld c, a
    cp c
    rst $00
    ld a, l
    ld b, l
    ld a, l
    ld b, l
    ccf
    nop
    ccf
    nop
    ld c, $91

jr_009_56b1:
    ld a, [hl]
    ld h, [hl]
    call nz, $04fc
    db $fc

jr_009_56b7:
    ld [bc], a
    cp $02
    cp $14
    db $fc
    jr jr_009_56b7

    jr nc, jr_009_56b1

    ret nz

    ret nz

    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703
    inc b
    ld c, $09
    inc c
    inc de

jr_009_570b:
    inc d
    ld [de], a

jr_009_570d:
    add hl, de
    daa
    add hl, sp
    cpl
    dec de
    ld e, $fb
    scf
    ld d, l
    ld [$5da2], a
    nop
    rst $38
    nop
    cp a
    add hl, bc
    rst $38
    add hl, de
    rst $38
    cp d
    rst $28
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_009_570b

    jr nz, jr_009_570d

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR21]
    rra
    dec c
    add hl, bc
    dec b
    dec b
    ld c, $1d
    jr @+$26

    ld e, $1e
    add hl, bc
    rrca
    inc b
    ld b, $ff
    ld b, l
    jp hl


    dec de
    ld sp, hl
    ld a, [bc]
    ld [hl], e
    ld [$017e], sp
    ccf
    ld h, c
    sbc d
    add a
    ld l, b
    ld a, b
    and b
    ldh [$e0], a
    ld h, b
    ldh [rNR41], a
    db $fc
    ld a, $c7
    ld a, c
    sbc [hl]
    cp $08
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    db $fc
    ld d, b
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld b, $06
    dec b
    inc bc
    ld b, $80
    call nz, RST_00
    ld h, e
    ld h, e
    inc h
    rst $20
    xor b
    ld l, a
    ld d, b
    cp a
    add b
    ld a, a
    rrca
    pop af

jr_009_57c3:
    add b
    ret nz

    jr nc, jr_009_57f7

    ret z

    ret z

    jr z, jr_009_57c3

    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ret c

    db $fc
    inc b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc b
    inc b
    ld [$0608], sp
    ld b, $fc
    add [hl]
    ld a, [hl]
    ld h, d
    ld a, a
    ld b, b
    cp a
    nop
    rra
    and b
    db $db
    sbc h
    ld e, [hl]
    ld h, c
    dec [hl]
    cp e
    ld b, h
    add h
    ld h, h
    or h

jr_009_57f7:
    ldh a, [$28]
    call nc, $f42c
    inc [hl]
    and h
    ld h, h
    jp nz, $02c2

    ld d, d
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc b
    ld b, $04
    inc b
    ld [$0808], sp
    ld [$0c08], sp
    ld b, $06
    dec b
    dec b
    sbc a
    rst $38
    ld e, l
    ld a, [hl]
    ld [hl], a
    jr c, jr_009_58d9

    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $18
    ld h, $e0
    ldh a, [$f8]
    db $fc
    cp $7e
    db $fc
    ld a, h
    cp b
    ld a, b
    db $fc
    inc a
    ld hl, sp+$38
    ld hl, sp+$38
    dec b
    ld bc, $0305
    inc b
    inc b
    ld b, $07
    rlca
    rlca
    dec sp
    ld a, [hl-]
    rst $18
    rst $00
    ld b, $01
    ld sp, hl
    sbc d
    jp hl


    ld a, [de]
    ld a, a
    nop
    ld a, a
    nop
    ld a, e
    sbc h
    rst $38
    rst $20
    rst $18
    ld [hl], e
    ccf
    or e
    or b
    ld a, b
    ret nc

    ld d, b
    ldh a, [$50]
    ldh a, [$50]
    ldh [$a0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ld a, b
    ld hl, sp+$00
    nop
    db $fc
    ld [hl], b
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_58d9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ld e, [hl]
    ld c, d
    ld a, [hl]
    inc hl
    ccf
    ld b, a
    ld a, [hl]
    inc l
    ccf
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld c, $0f
    ld e, $3e
    ld sp, hl
    rst $00
    ldh a, [rIF]
    inc a
    rst $38
    rst $38
    add e
    ld a, a
    nop
    rst $38
    nop
    ld a, b
    add a
    jr c, @+$31

    cp c
    rst $28
    ld h, c
    rst $38
    ld [hl+], a
    rst $38
    add hl, de
    rst $38
    and [hl]
    and $a4
    db $e4
    sbc b
    ld a, b
    dec bc
    ld c, $0b
    inc c
    ld [$0a0e], sp
    ld c, $0a
    ld c, $0a
    rrca
    add hl, bc
    rrca
    nop
    rlca
    cp a
    ld b, b
    ld a, c
    add h
    db $fc
    add l
    call c, $1f85
    nop
    rra
    nop
    ld a, [hl]
    sub c
    db $db
    rst $20
    call nz, $e47c
    inc a
    db $f4
    ld e, h
    or h
    ld e, h
    db $f4
    ld e, [hl]
    ld h, d
    cp $92
    cp $52
    cp $00
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld [$0408], sp
    ld b, $18
    jr jr_009_59ae

    jr nz, @+$12

    db $10
    add hl, bc
    add hl, bc
    add b
    adc a
    ld e, $21
    ld a, $41
    rra
    jr nz, jr_009_59ab

    db $10
    rlca
    ld [$300f], sp
    sbc c
    xor b
    db $10
    sub b
    db $10
    jr nc, jr_009_59d0

    ld e, b
    ld a, h
    adc h

jr_009_59ab:
    ld a, [$ec0a]

jr_009_59ae:
    inc b
    db $ec
    inc b
    db $fc
    inc b
    dec bc
    ld a, [bc]
    rlca
    ld b, $03
    ld [bc], a
    rlca
    dec b
    rlca
    rlca
    ld [$0808], sp
    dec bc

jr_009_59c1:
    db $10
    db $10
    or [hl]
    ld c, [hl]
    or l
    ld c, l
    ld hl, sp+$07
    ld a, a
    add b
    ld a, c

jr_009_59cc:
    add [hl]
    rst $30
    ret z

    inc a

jr_009_59d0:
    cp e
    rra
    ld a, h
    ld a, h
    inc b
    add sp, -$78
    ldh [$30], a
    or b
    jr nc, jr_009_59cc

    db $10
    ldh [$60], a
    jr nz, jr_009_59c1

    ret nz

    ret nz

    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f01
    rra
    dec l
    inc sp
    ld [$2127], sp
    cpl
    inc hl
    ccf
    inc de
    ld e, $09
    ld c, $06
    rst $38
    ld [$805f], sp
    ld a, a
    adc c
    rst $38
    adc a
    rst $38
    rst $08
    ld a, b
    rst $28
    jr c, @+$01

    db $10
    ld h, [hl]
    cp $11
    rst $38
    ld c, b
    cp a
    cp h
    rst $08
    db $e4
    db $dd
    push bc
    cp $c6
    ld a, a
    ld b, d
    rst $38
    dec b
    ld b, $04
    rlca
    add hl, bc
    rrca
    ld de, $211f
    ccf
    inc l
    ccf
    add hl, de
    rra
    ld b, $06
    ld a, [hl]
    add c
    ld a, d
    ld b, [hl]
    ld l, [hl]
    ld b, d
    rrca
    nop
    rrca
    add b
    cp a
    ret z

    ld l, l
    ld [hl], e
    rra
    rra
    db $e3
    ccf
    ld h, e
    cp a
    ld b, e
    cp a
    ret nz

    ld a, a
    ldh [$7f], a
    ld [hl], c
    rst $38
    adc h
    adc a
    inc bc
    inc bc
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld [de], a
    ld [de], a
    rra
    rra
    ld de, $1f11
    rra
    nop
    rst $38
    nop
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld a, l
    ld a, l
    ld b, l
    ld b, l
    nop
    rst $38
    nop
    nop
    nop
    nop
    db $e3
    db $e3
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    db $e3
    db $e3
    nop
    rst $38
    nop
    nop
    nop
    nop
    sbc [hl]
    sbc [hl]
    db $10
    db $10
    sbc $de
    ld d, b
    ld d, b
    sbc [hl]
    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    add b
    add b
    ld hl, sp-$08
    ld [$f008], sp
    ldh a, [rP1]
    rst $38
    nop
    nop
    jr c, jr_009_5b11

    jr jr_009_5af3

    jr jr_009_5af5

    jr jr_009_5af7

    jr jr_009_5af9

    inc a
    inc a
    nop

jr_009_5ae4:
    nop
    db $fc
    jr nc, jr_009_5ae4

    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]

jr_009_5af3:
    nop
    nop

jr_009_5af5:
    nop
    nop

jr_009_5af7:
    nop
    nop

jr_009_5af9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_5b11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$110f], sp
    rra
    ld [bc], a
    ccf
    ld b, h

jr_009_5b2c:
    ld a, a
    ld c, b
    ld a, a
    add hl, hl
    ccf
    ld de, $3f1f
    rst $38
    ld e, a
    rst $38
    dec a
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    db $ed
    rst $30
    ld [hl], b
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    ld a, h
    db $fc
    inc a
    cp $be
    cp $13
    rra
    dec bc
    rrca
    dec bc
    rrca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0e01
    ld c, $ff
    db $e3
    rst $10
    rst $28
    cp l
    jp $80ff


    adc a
    sub b
    ld c, a
    ld c, h
    cp a
    pop af
    add hl, de
    sbc a
    ld a, [$68fe]
    inc a
    ld e, b
    inc l
    ret nc

    jr z, jr_009_5b2c

    ld d, b
    ldh [rSVBK], a
    ret nz

    ldh [$f8], a
    ld hl, sp+$00
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a

jr_009_5bc7:
    inc bc
    inc b
    rlca
    ld [$111e], sp
    ld e, $11
    dec h
    dec sp
    ld hl, $4f3f
    cp b
    add [hl]
    ld a, c
    add h
    ld a, e
    ld b, b
    rst $38
    and h
    rst $18
    ldh a, [$9f]
    ld a, [c]
    ccf
    or d
    ld l, a
    ret nz

    ret nz

    jr nz, jr_009_5bc7

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$44
    db $fc
    ld b, h
    db $fc
    add hl, de
    rra
    ld [de], a
    rra
    inc hl
    ld a, $2a
    ld a, $18
    ld e, $04
    rlca
    inc bc
    inc bc
    nop
    nop
    db $fd
    ld c, a
    cp c
    rst $00
    ld a, l
    ld b, l
    ld a, l
    ld b, l
    ccf
    nop
    ccf
    nop
    ld c, $91

jr_009_5c11:
    ld a, [hl]
    ld h, [hl]
    call nz, $04fc
    db $fc

jr_009_5c17:
    ld [bc], a
    cp $02
    cp $14
    db $fc
    jr jr_009_5c17

    jr nc, jr_009_5c11

    ret nz

    ret nz

    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703
    inc b
    ld c, $09
    inc c
    inc de

jr_009_5c6b:
    inc d
    ld [de], a

jr_009_5c6d:
    add hl, de
    daa
    add hl, sp
    cpl
    dec de
    ld e, $fb
    scf
    ld d, l
    ld [$5da2], a
    nop
    rst $38
    nop
    cp a
    add hl, bc
    rst $38
    add hl, de
    rst $38
    cp d
    rst $28
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_009_5c6b

    jr nz, jr_009_5c6d

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR21]
    rra
    dec c
    add hl, bc
    dec b
    dec b
    ld c, $1d
    jr @+$26

    ld e, $1e
    add hl, bc
    rrca
    inc b
    ld b, $ff
    ld b, l
    jp hl


    dec de
    ld sp, hl
    ld a, [bc]
    ld [hl], e
    ld [$017e], sp
    ccf
    ld h, c
    sbc d
    add a
    ld l, b
    ld a, b
    and b
    ldh [$e0], a
    ld h, b
    ldh [rNR41], a
    db $fc
    ld a, $c7
    ld a, c
    sbc [hl]
    cp $08
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    db $fc
    ld d, b
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec b
    ld b, $06
    dec b
    inc bc
    ld b, $80
    call nz, RST_00
    ld h, e
    ld h, e
    inc h
    rst $20
    xor b
    ld l, a
    ld d, b
    cp a
    add b
    ld a, a
    rrca
    pop af

jr_009_5d23:
    add b
    ret nz

    jr nc, jr_009_5d57

    ret z

    ret z

    jr z, jr_009_5d23

    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ret c

    db $fc
    inc b
    dec b
    dec b
    inc b
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc b
    inc b
    ld [$0608], sp
    ld b, $fc
    add [hl]
    ld a, [hl]
    ld h, d
    ld a, a
    ld b, b
    cp a
    nop
    rra
    and b
    db $db
    sbc h
    ld e, [hl]
    ld h, c
    dec [hl]
    cp e
    ld b, h
    add h
    ld h, h
    or h

jr_009_5d57:
    ldh a, [$28]
    call nc, $f42c
    inc [hl]
    and h
    ld h, h
    jp nz, $02c2

    ld d, d
    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld [de], a
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc b
    ld b, $04
    inc b
    ld [$0808], sp
    ld [$0c08], sp
    ld b, $06
    dec b
    dec b
    sbc a
    rst $38
    ld e, l
    ld a, [hl]
    ld [hl], a
    jr c, jr_009_5e39

    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $18
    ld h, $e0
    ldh a, [$f8]
    db $fc
    cp $7e
    db $fc
    ld a, h
    cp b
    ld a, b
    db $fc
    inc a
    ld hl, sp+$38
    ld hl, sp+$38
    dec b
    ld bc, $0305
    inc b
    inc b
    ld b, $07
    rlca
    rlca
    dec sp
    ld a, [hl-]
    rst $18
    rst $00
    ld b, $01
    ld sp, hl
    sbc d
    jp hl


    ld a, [de]
    ld a, a
    nop
    ld a, a
    nop
    ld a, e
    sbc h
    rst $38
    rst $20
    rst $18
    ld [hl], e
    ccf
    or e
    or b
    ld a, b
    ret nc

    ld d, b
    ldh a, [$50]
    ldh a, [$50]
    ldh [$a0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ld a, b

Call_009_5e02:
    ld hl, sp+$00
    nop
    db $fc
    ld [hl], b
    db $fc
    ld b, d
    db $fc
    ld [hl], d
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_5e39:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ld e, [hl]
    ld c, d
    ld a, [hl]
    inc hl
    ccf
    ld b, a
    ld a, [hl]
    inc l
    ccf
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld c, $0f
    ld e, $3e
    ld sp, hl
    rst $00
    ldh a, [rIF]
    inc a
    rst $38
    rst $38
    add e
    ld a, a
    nop
    rst $38
    nop
    ld a, b
    add a
    jr c, @+$31

    cp c
    rst $28
    ld h, c
    rst $38
    ld [hl+], a
    rst $38
    add hl, de
    rst $38
    and [hl]
    and $a4
    db $e4
    sbc b
    ld a, b
    dec bc
    ld c, $0b
    inc c
    ld [$0a0e], sp
    ld c, $0a
    ld c, $0a
    rrca
    add hl, bc
    rrca
    nop
    rlca
    cp a
    ld b, b
    ld a, c
    add h
    db $fc
    add l
    call c, $1f85
    nop
    rra
    nop
    ld a, [hl]
    sub c
    db $db
    rst $20
    call nz, $e47c
    inc a
    db $f4
    ld e, h
    or h
    ld e, h
    db $f4
    ld e, [hl]
    ld h, d
    cp $92
    cp $52
    cp $00
    nop
    db $fc
    ld [hl], b
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [de], a
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld [$0408], sp
    ld b, $18
    jr jr_009_5f0e

    jr nz, @+$12

    db $10
    add hl, bc
    add hl, bc
    add b
    adc a
    ld e, $21
    ld a, $41
    rra
    jr nz, jr_009_5f0b

    db $10
    rlca
    ld [$300f], sp
    sbc c
    xor b
    db $10
    sub b
    db $10
    jr nc, jr_009_5f30

    ld e, b
    ld a, h
    adc h

jr_009_5f0b:
    ld a, [$ec0a]

jr_009_5f0e:
    inc b
    db $ec
    inc b
    db $fc
    inc b
    dec bc
    ld a, [bc]
    rlca
    ld b, $03
    ld [bc], a
    rlca
    dec b
    rlca
    rlca
    ld [$0808], sp
    dec bc

jr_009_5f21:
    db $10
    db $10
    or [hl]
    ld c, [hl]
    or l
    ld c, l
    ld hl, sp+$07
    ld a, a
    add b
    ld a, c

jr_009_5f2c:
    add [hl]
    rst $30
    ret z

    inc a

jr_009_5f30:
    cp e
    rra
    ld a, h
    ld a, h
    inc b
    add sp, -$78
    ldh [$30], a
    or b
    jr nc, jr_009_5f2c

    db $10
    ldh [$60], a
    jr nz, jr_009_5f21

    ret nz

    ret nz

    nop
    nop
    db $fc
    ld [hl], b
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld d, d
    db $fc
    ld [hl], d
    db $fc
    ld [bc], a
    nop
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f01
    rra
    dec l
    inc sp
    ld [$2127], sp
    cpl
    inc hl
    ccf
    inc de
    ld e, $09
    ld c, $06
    rst $38
    ld [$805f], sp
    ld a, a
    adc c
    rst $38
    adc a
    rst $38
    rst $08
    ld a, b
    rst $28
    jr c, @+$01

    db $10
    ld h, [hl]
    cp $11
    rst $38
    ld c, b
    cp a
    cp h
    rst $08
    db $e4
    db $dd
    push bc
    cp $c6
    ld a, a
    ld b, d
    rst $38
    dec b
    ld b, $04
    rlca
    add hl, bc
    rrca
    ld de, $211f
    ccf
    inc l
    ccf
    add hl, de
    rra
    ld b, $06
    ld a, [hl]
    add c
    ld a, d
    ld b, [hl]
    ld l, [hl]
    ld b, d
    rrca
    nop
    rrca
    add b
    cp a
    ret z

    ld l, l
    ld [hl], e
    rra
    rra
    db $e3
    ccf
    ld h, e
    cp a
    ld b, e
    cp a
    ret nz

    ld a, a
    ldh [$7f], a
    ld [hl], c
    rst $38
    adc h
    adc a
    inc bc
    inc bc
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld [de], a
    ld [de], a
    rra
    rra
    ld de, $1f11
    rra
    nop
    rst $38
    nop
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    ld b, l
    ld b, l
    ld b, l
    ld b, l
    ld a, l
    ld a, l
    ld b, l
    ld b, l
    nop
    rst $38
    nop
    nop
    nop
    nop
    db $e3
    db $e3
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    db $e3
    db $e3
    nop
    rst $38
    nop
    nop
    nop
    nop
    sbc [hl]
    sbc [hl]
    db $10
    db $10
    sbc $de
    ld d, b
    ld d, b
    sbc [hl]
    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld a, b
    ld a, b
    add b
    add b
    ld hl, sp-$08
    ld [$f008], sp
    ldh a, [rP1]
    rst $38
    nop
    nop
    jr c, jr_009_6071

jr_009_6039:
    jr jr_009_6053

    jr jr_009_6055

    jr jr_009_6057

    jr jr_009_6059

    inc a
    inc a
    rrca
    rrca
    ccf
    jr nc, jr_009_6039

    adc $c5
    cp d
    push de
    xor d
    rst $10
    xor e
    sub $aa
    sub $aa

jr_009_6053:
    ldh a, [$f0]

jr_009_6055:
    db $fc
    inc c

jr_009_6057:
    adc a
    ld [hl], e

jr_009_6059:
    and e
    ld e, l
    xor e
    ld d, l
    db $eb
    push de
    ld l, e
    ld d, l
    ld l, e
    ld d, l
    sub $aa
    sub $aa
    sub $aa
    sbc $ae
    ret c

    xor b
    ld hl, sp-$48
    ldh [$a0], a

jr_009_6071:
    ldh [$e0], a
    ld l, e
    ld d, l
    ld l, e
    ld d, l
    ld l, e
    ld d, l
    ld a, e
    ld [hl], l
    dec de
    dec d
    rra
    dec e
    rlca
    dec b
    rlca
    rlca
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    ccf
    jr nz, jr_009_610a

    ld b, c
    ld a, h
    ld b, e
    db $fc
    add e
    cp $81
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    inc b
    db $fc
    add d
    cp $c2

jr_009_609e:
    cp $c1
    rst $38
    add c
    rst $38
    di
    adc h
    pop hl
    sbc [hl]
    ld h, c
    ld e, [hl]
    ld [hl], e
    ld c, h
    ccf
    jr nz, @+$41

    jr nc, jr_009_60bf

    inc c

jr_009_60b1:
    inc bc
    inc bc
    ld sp, $79ff
    rst $38
    ld a, d
    cp $32
    cp $04
    db $fc
    inc c
    db $fc

jr_009_60bf:
    jr nc, jr_009_60b1

    ret nz

    ret nz

    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_009_614f

    ld b, b
    rst $38

jr_009_60d2:
    add b
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @-$16

    jr jr_009_60d2

    inc c
    ld a, [$fd06]
    inc bc
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$21

    db $10
    rrca
    ld [$0407], sp
    ld [bc], a
    inc bc
    ld bc, $fd01
    inc bc
    ld a, [$f406]
    inc c
    add sp, $18
    ret nc

    jr nc, jr_009_609e

    ld h, b
    ld b, b
    ret nz

    add b
    add b
    rlca
    rlca
    rra
    jr @+$41

    jr nz, jr_009_6187

jr_009_610a:
    ld b, d
    ld a, c
    ld b, [hl]
    pop af
    adc [hl]
    rst $38
    add b
    rst $38
    add b
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp [hl]
    ld b, d
    sbc [hl]
    ld h, d
    adc l
    ld [hl], e
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_009_6149

    db $10
    rrca
    ld [$0607], sp
    ld bc, $0001
    nop
    ld a, [$fa06]
    ld b, $f4
    inc c
    adc b
    ld a, b
    ldh a, [rSVBK]
    ldh [rNR41], a
    ldh a, [$90]
    ld a, b
    ld a, b
    rlca
    rlca
    rrca
    ld [$1619], sp

jr_009_6149:
    ld [hl-], a
    dec l
    ld h, l
    ld e, d
    res 6, h

jr_009_614f:
    rst $10
    xor b
    xor $91
    ldh [$e0], a
    ldh a, [rNR10]
    ld a, b
    adc b
    db $e4
    inc e
    jp nz, $853e

    ld a, e
    add hl, bc
    rst $30
    dec d
    db $eb
    call c, $f8a3
    add a
    ldh a, [$8f]
    ld h, c
    ld e, [hl]
    ld [hl+], a
    dec a
    dec d
    ld a, [de]
    ld [$070f], sp
    rlca
    dec l
    db $d3
    ld e, c
    and a
    or c
    ld c, a
    ld h, d
    sbc [hl]
    call nz, $883c
    ld a, b
    db $10
    ldh a, [$e0]
    ldh [rIF], a
    rrca
    ld a, a
    ld a, b

jr_009_6187:
    ld a, [hl]
    ld b, a
    db $76
    ld e, a
    or $df
    or $bf
    or $bf
    or $bf
    ldh a, [$f0]
    cp $1e
    cp $e2
    ld [$ebfe], a
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    ret nz

    cp a
    rst $38
    cp a
    rst $38
    cp a
    ldh [$df], a
    ld a, a
    ld e, a
    ld b, a
    ld a, a
    ld a, b
    ld a, a
    rrca
    rrca
    dec l
    rst $38
    xor l
    rst $38
    add c
    rst $38
    dec sp
    rst $38
    ld a, [$f2fe]
    cp $0e
    cp $f0
    ldh a, [rSB]
    ld bc, $0607
    rra
    jr jr_009_6243

    ld h, [hl]
    rst $30
    adc b
    db $dd
    and d
    rst $00
    cp b
    pop de
    xor [hl]
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$66
    sbc [hl]
    ld de, $45ef
    cp e
    dec e
    db $e3
    ld [hl], l
    adc e
    rst $10
    xor b
    db $dd
    and d
    reti


    and [hl]
    rst $20
    sbc b
    ld a, c
    ld h, [hl]
    rra
    jr jr_009_61f7

    ld b, $01
    ld bc, $eb15
    ld b, l
    cp e

jr_009_61f7:
    ld h, l
    sbc e
    add hl, de
    rst $20
    ld h, [hl]
    sbc [hl]
    jr jr_009_61f7

    ld h, b
    ldh [$80], a
    add b
    ccf
    ccf
    jr c, jr_009_622e

    ld a, b
    ld h, a
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $30
    adc h
    di
    add [hl]
    ld sp, hl
    db $fc
    db $fc
    db $fc
    db $e4
    cp $e6
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    sbc a
    add b
    rst $38
    ld [hl], b
    ld a, a
    jr c, @+$41

    inc e
    dec de
    inc c
    dec bc
    inc c

jr_009_622e:
    rrca
    inc b
    rlca
    inc bc
    inc bc
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$28
    ldh a, [$d0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

jr_009_6243:
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @+$22

    db $10
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    db $10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

jr_009_62bb:
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$0e09], sp
    add hl, bc
    ld c, $09
    ld c, $09
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_009_62bb

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$0e]
    add hl, bc
    ld c, $09
    ld c, $09
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    rrca
    rrca
    ccf
    jr nc, @-$0d

    adc $c5
    cp d
    push de
    xor d
    rst $10
    xor e
    sub $aa
    sub $aa
    ldh a, [$f0]
    db $fc
    inc c
    adc a
    ld [hl], e
    and e
    ld e, l
    xor e
    ld d, l
    db $eb
    push de
    ld l, e
    ld d, l
    ld l, e
    ld d, l
    sub $aa
    sub $aa
    sub $aa
    sbc $ae
    ret c

    xor b
    ld hl, sp-$48
    ldh [$a0], a
    ldh [$e0], a
    ld l, e
    ld d, l
    ld l, e
    ld d, l
    ld l, e
    ld d, l
    ld a, e
    ld [hl], l
    dec de
    dec d
    rra
    dec e
    rlca
    dec b
    rlca
    rlca
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    ccf
    jr nz, jr_009_63ca

    ld b, c
    ld a, h
    ld b, e
    db $fc
    add e
    cp $81
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    db $fc
    inc b
    db $fc
    add d
    cp $c2

jr_009_635e:
    cp $c1
    rst $38
    add c
    rst $38
    di
    adc h
    pop hl
    sbc [hl]
    ld h, c
    ld e, [hl]
    ld [hl], e
    ld c, h
    ccf
    jr nz, @+$41

    jr nc, jr_009_637f

    inc c

jr_009_6371:
    inc bc
    inc bc
    ld sp, $79ff
    rst $38
    ld a, d
    cp $32
    cp $04
    db $fc
    inc c
    db $fc

jr_009_637f:
    jr nc, jr_009_6371

    ret nz

    ret nz

    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    ld [$101f], sp
    ccf
    jr nz, jr_009_640f

    ld b, b
    rst $38

jr_009_6392:
    add b
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, @-$16

    jr jr_009_6392

    inc c
    ld a, [$fd06]
    inc bc
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$21

    db $10
    rrca
    ld [$0407], sp
    ld [bc], a
    inc bc
    ld bc, $fd01
    inc bc
    ld a, [$f406]
    inc c
    add sp, $18
    ret nc

    jr nc, jr_009_635e

    ld h, b
    ld b, b
    ret nz

    add b
    add b
    rlca
    rlca
    rra
    jr @+$41

    jr nz, jr_009_6447

jr_009_63ca:
    ld b, d
    ld a, c
    ld b, [hl]
    pop af
    adc [hl]
    rst $38
    add b
    rst $38
    add b
    ldh [$e0], a
    ld hl, sp+$18
    db $fc
    inc b
    cp [hl]
    ld b, d
    sbc [hl]
    ld h, d
    adc l
    ld [hl], e
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_009_6409

    db $10
    rrca
    ld [$0607], sp
    ld bc, $0001
    nop
    ld a, [$fa06]
    ld b, $f4
    inc c
    adc b
    ld a, b
    ldh a, [rSVBK]
    ldh [rNR41], a
    ldh a, [$90]
    ld a, b
    ld a, b
    rlca
    rlca
    rrca
    ld [$1619], sp

jr_009_6409:
    ld [hl-], a
    dec l
    ld h, l
    ld e, d
    res 6, h

jr_009_640f:
    rst $10
    xor b
    xor $91
    ldh [$e0], a
    ldh a, [rNR10]
    ld a, b
    adc b
    db $e4
    inc e
    jp nz, $853e

    ld a, e
    add hl, bc
    rst $30
    dec d
    db $eb
    call c, $f8a3
    add a
    ldh a, [$8f]
    ld h, c
    ld e, [hl]
    ld [hl+], a
    dec a
    dec d
    ld a, [de]
    ld [$070f], sp
    rlca
    dec l
    db $d3
    ld e, c
    and a
    or c
    ld c, a
    ld h, d
    sbc [hl]
    call nz, $883c
    ld a, b
    db $10
    ldh a, [$e0]
    ldh [rIF], a
    rrca
    ld a, a
    ld a, b

jr_009_6447:
    ld a, [hl]
    ld b, a
    db $76
    ld e, a
    or $df
    or $bf
    or $bf
    or $bf
    ldh a, [$f0]
    cp $1e
    cp $e2
    ld [$ebfe], a
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    ret nz

    cp a
    rst $38
    cp a
    rst $38
    cp a
    ldh [$df], a
    ld a, a
    ld e, a
    ld b, a
    ld a, a
    ld a, b
    ld a, a
    rrca
    rrca
    dec l
    rst $38
    xor l
    rst $38
    add c
    rst $38
    dec sp
    rst $38
    ld a, [$f2fe]
    cp $0e
    cp $f0
    ldh a, [rSB]
    ld bc, $0607
    rra
    jr jr_009_6503

    ld h, [hl]
    rst $30
    adc b
    db $dd
    and d
    rst $00
    cp b
    pop de
    xor [hl]
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$66
    sbc [hl]
    ld de, $45ef
    cp e
    dec e
    db $e3
    ld [hl], l
    adc e
    rst $10
    xor b
    db $dd
    and d
    reti


    and [hl]
    rst $20
    sbc b
    ld a, c
    ld h, [hl]
    rra
    jr jr_009_64b7

    ld b, $01
    ld bc, $eb15
    ld b, l
    cp e

jr_009_64b7:
    ld h, l
    sbc e
    add hl, de
    rst $20
    ld h, [hl]
    sbc [hl]
    jr jr_009_64b7

    ld h, b
    ldh [$80], a
    add b
    ccf
    ccf
    jr c, jr_009_64ee

    ld a, b
    ld h, a
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $30
    adc h
    di
    add [hl]
    ld sp, hl
    db $fc
    db $fc
    db $fc
    db $e4
    cp $e6
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    sbc a
    add b
    rst $38
    ld [hl], b
    ld a, a
    jr c, @+$41

    inc e
    dec de
    inc c
    dec bc
    inc c

jr_009_64ee:
    rrca
    inc b
    rlca
    inc bc
    inc bc
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$28
    ldh a, [$d0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

jr_009_6503:
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @+$22

    db $10
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rrca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    db $10
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ld b, b
    ret nz

jr_009_657b:
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$0e09], sp
    add hl, bc
    ld c, $09
    ld c, $09
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_009_657b

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$0e]
    add hl, bc
    ld c, $09
    ld c, $09
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    rst $38
    ld c, $71
    ld c, $31
    ld c, $11
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $de21
    ld h, [hl]
    call $1d4f
    call $1dcf
    jr c, jr_009_65e1

    call Call_009_65ee

jr_009_65e1:
    ld hl, $674c
    call $1057
    call $0a36
    call $1c07
    ret


Call_009_65ee:
    ld hl, $66e3
    call $1057
    call Call_009_6616
    call $3c23
    call $0a36
    call $3c55
    ret


    call Call_009_6616
    push de
    ld de, $0000
    call $3b97
    pop de
    call $3c23
    call $0a36
    call $3c55
    ret


Call_009_6616:
    ld hl, $deb9
    ld b, $20
    call $335f
    ld [$d002], a
    ld hl, $de99
    ld b, $20
    call $335f
    ld [$d003], a
    call Call_009_6647
    ld hl, $66e8
    call $1057
    call $0a36
    ld a, [$d003]
    ld hl, $667f
    call Call_009_666b
    push de
    call $1057
    pop de
    ret


Call_009_6647:
    ld hl, $d099
    ld de, $d002
    call Call_009_665a
    ld hl, $d0ac
    ld de, $d003
    call Call_009_665a
    ret


Call_009_665a:
    push hl
    ld a, $50
    ld bc, $000d
    call $3041
    pop hl
    ld bc, $4103
    call $3198
    ret


Call_009_666b:
    nop
    ld c, a

jr_009_666d:
    ld a, [hl+]
    cp c
    jr nc, jr_009_6677

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_009_666d

jr_009_6677:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    add hl, bc
    sbc a
    nop
    db $ed
    ld h, [hl]
    inc de
    sbc a
    nop
    ld a, [c]
    ld h, [hl]
    ld [hl+], a
    add hl, bc
    nop
    rst $30
    ld h, [hl]
    ld sp, $0009
    db $fc
    ld h, [hl]
    ld b, b
    nop
    nop
    ld bc, $4f67
    nop
    nop
    ld b, $67
    ld e, [hl]
    ld a, [bc]
    nop
    dec bc
    ld h, a
    ld l, l
    ld a, [bc]
    nop
    db $10
    ld h, a
    ld a, h
    ld [bc], a
    nop
    dec d
    ld h, a
    adc e
    ld [bc], a
    nop
    ld a, [de]
    ld h, a
    sbc d
    and b
    nop
    rra
    ld h, a
    xor c
    and b
    nop
    inc h
    ld h, a
    cp b
    and c
    nop
    add hl, hl
    ld h, a
    rst $00
    and c
    nop
    ld l, $67
    sub $a2
    nop
    inc sp
    ld h, a
    push hl
    and d
    nop
    jr c, jr_009_6736

    rst $28
    and e
    nop
    dec a
    ld h, a
    ld hl, sp-$5d
    nop
    ld b, d
    ld h, a
    rst $38
    and e
    nop
    ld b, a
    ld h, a
    ld d, $15
    ld d, l
    ld [hl], b
    ld d, b
    ld d, $33
    ld d, l
    ld [hl], b
    ld d, b
    ld d, $53
    ld d, l
    ld [hl], b
    ld d, b
    ld d, $85
    ld d, l
    ld [hl], b
    ld d, b
    ld d, $a5
    ld d, l
    ld [hl], b
    ld d, b
    ld d, $d5
    ld d, l
    ld [hl], b
    ld d, b
    ld d, $11
    ld d, [hl]
    ld [hl], b
    ld d, b
    ld d, $4f
    ld d, [hl]
    ld [hl], b
    ld d, b
    ld d, $8c
    ld d, [hl]
    ld [hl], b
    ld d, b
    ld d, $ca
    ld d, [hl]
    ld [hl], b
    ld d, b
    ld d, $09
    ld d, a
    ld [hl], b
    ld d, b
    ld d, $3b
    ld d, a
    ld [hl], b
    ld d, b
    ld d, $73
    ld d, a
    ld [hl], b
    ld d, b
    ld d, $a4
    ld d, a
    ld [hl], b
    ld d, b
    ld d, $e0
    ld d, a
    ld [hl], b
    ld d, b
    ld d, $12
    ld e, b
    ld [hl], b
    ld d, b
    ld d, $53
    ld e, b
    ld [hl], b
    ld d, b
    ld d, $8b
    ld e, b

jr_009_6736:
    ld [hl], b
    ld d, b
    ld d, $bc
    ld e, b
    ld [hl], b
    ld d, b
    ld d, $f7
    ld e, b
    ld [hl], b
    ld d, b
    ld d, $32
    ld e, c
    ld [hl], b
    ld d, b
    ld d, $6b
    ld e, c
    ld [hl], b
    ld d, b
    ld d, $aa
    ld e, c
    ld [hl], b
    ld d, b
    ld a, $02
    ld [$dc0f], a
    ld a, $10
    ld [$dc12], a
    ret


    ld a, [$cf76]
    push af
    ld hl, $679a
    call $1d35
    xor a
    ld [$d1ee], a
    ld a, $01
    ld [$d1ef], a

jr_009_676f:
    ld a, [$d1ef]
    ld [$cf88], a
    call Call_009_6806
    call $1e5d
    ld a, [$cfa9]
    ld [$d1ef], a
    jr c, jr_009_678e

    ld a, [$cf74]
    ld hl, $67aa
    call $1fa7
    jr nc, jr_009_676f

jr_009_678e:
    call $1c07
    pop af
    ld [$cf76], a
    ld a, [$d1ee]
    ld c, a
    ret


    ld b, b
    nop
    dec b
    ld de, $a213
    ld h, a
    ld bc, $00a0
    ld [bc], a
    ret nc

    adc l
    rra
    xor d
    ld h, a
    or l
    ld l, b
    jp z, $ca67

    ld l, b
    adc $67
    rst $18
    ld l, b
    push de
    ld h, a
    di
    ld l, b
    db $db
    ld h, a
    ld [$e269], sp
    ld h, a
    dec e
    ld l, c
    rst $28
    ld h, a
    ld b, l
    ld l, c
    ld hl, sp+$67
    ld e, c
    ld l, c
    ld bc, $8168
    add h
    add e
    ld d, b
    add d
    add b
    sub c
    adc a
    add h
    sub e
    ld d, b
    adc a
    adc e
    add b
    adc l
    sub e
    ld d, b
    adc a
    adc [hl]
    sub d
    sub e
    add h
    sub c
    ld d, b
    add [hl]
    add b
    adc h
    add h
    ld a, a
    add d
    adc [hl]
    adc l
    sub d
    adc [hl]
    adc e
    add h
    ld d, b
    adc [hl]
    sub c
    adc l
    add b
    adc h
    add h
    adc l
    sub e
    ld d, b
    add c
    adc b
    add [hl]
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    ld d, b
    add h
    sub a
    adc b
    sub e
    ld d, b

Call_009_6806:
    xor a
    ld [$cf76], a
    call Call_009_6822
    call Call_009_683a
    ld a, $07
    call Call_009_6830
    ld hl, $d086
    ld de, $d002
    ld bc, $000d
    call $3026
    ret


Call_009_6822:
    ld hl, $d086
    xor a
    ld [hl+], a
    ld bc, $000c
    ld a, $ff
    call $3041
    ret


Call_009_6830:
    ld hl, $d086
    inc [hl]
    ld e, [hl]
    ld d, $00
    add hl, de
    ld [hl], a
    ret


Call_009_683a:
    ld hl, $6855

jr_009_683d:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    or e
    jr z, jr_009_6854

    push hl
    call $2fed
    pop hl
    jr nc, jr_009_6851

    ld a, [hl]
    push hl
    call Call_009_6830
    pop hl

jr_009_6851:
    inc hl
    jr jr_009_683d

jr_009_6854:
    ret


    cp l
    ld l, b
    nop
    jp nc, $0168

    rst $20
    ld l, b
    ld [bc], a
    ei
    ld l, b
    inc bc
    db $10
    ld l, c
    inc b
    dec h
    ld l, c
    dec b
    ld c, l
    ld l, c
    ld b, $00
    nop

Call_009_686c:
    xor a
    ld hl, $d002
    ld [hl+], a
    ld a, $ff
    ld bc, $0010
    call $3041
    ret


Call_009_687a:
jr_009_687a:
    ld a, [hl+]
    cp $ff
    jr z, jr_009_6890

    push hl
    push af
    ld b, $02
    call Call_009_6a3b
    ld a, c
    and a
    pop bc
    ld a, b
    call nz, Call_009_6891
    pop hl
    jr jr_009_687a

jr_009_6890:
    ret


Call_009_6891:
    ld hl, $d002
    inc [hl]
    ld e, [hl]
    ld d, $00
    add hl, de
    ld [hl], a
    ret


Jump_009_689b:
    push bc
    push hl
    call Call_009_686c
    pop hl
    call Call_009_687a
    pop bc
    ld a, [$d002]
    and a
    ret z

    ld a, c
    call Call_009_6891
    ld a, $00
    call Call_009_6891
    scf
    ret


    call Call_009_68bd
    call Call_009_695b
    xor a
    ret


Call_009_68bd:
    ld hl, $68c5
    ld c, $01
    jp Jump_009_689b


    ld [bc], a
    inc bc
    inc b
    dec b
    rst $38
    call Call_009_68d2
    call Call_009_695b
    xor a
    ret


Call_009_68d2:
    ld hl, $68da
    ld c, $06
    jp Jump_009_689b


    rlca
    ld [$0a09], sp
    rst $38
    call Call_009_68e7
    call Call_009_695b
    xor a
    ret


Call_009_68e7:
    ld hl, $68ef
    ld c, $0b
    jp Jump_009_689b


    inc c
    dec c
    ld c, $ff
    call Call_009_68fb
    call Call_009_695b
    xor a
    ret


Call_009_68fb:
    ld hl, $6903
    ld c, $0f
    jp Jump_009_689b


    db $10
    ld de, $1312
    rst $38
    call Call_009_6910
    call Call_009_695b
    xor a
    ret


Call_009_6910:
    ld hl, $6918
    ld c, $14
    jp Jump_009_689b


    dec d
    ld d, $17
    jr @+$01

    call Call_009_6925
    call Call_009_695b
    xor a
    ret


Call_009_6925:
    ld hl, $692d
    ld c, $1d
    jp Jump_009_689b


    ld e, $1f
    jr nz, jr_009_6952

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_009_6972

    ld [hl-], a
    inc sp
    inc [hl]
    rst $38
    call Call_009_694d
    call Call_009_695b
    xor a
    ret


Call_009_694d:
    ld hl, $6955
    ld c, $19

jr_009_6952:
    jp Jump_009_689b


    ld a, [de]
    dec de
    inc e
    rst $38
    scf
    ret


Call_009_695b:
    ld a, [$d002]
    and a
    jr z, jr_009_69a9

    cp $08
    jr nc, jr_009_697b

    xor a
    ld [$cf76], a
    ld hl, $69b5
    call $1d35
    call $1e5d

jr_009_6972:
    jr c, jr_009_6977

    call Call_009_6a02

jr_009_6977:
    call $1c07
    ret


jr_009_697b:
    ld hl, $d002
    ld e, [hl]
    dec [hl]
    ld d, $00
    add hl, de
    ld [hl], $ff
    call $1d6e
    ld hl, $69c5
    call $1d3c
    xor a
    ldh [$d4], a
    call $352f
    xor a
    ld [$d0e4], a
    call $350c
    ld a, [$cf73]
    cp $02
    jr z, jr_009_69a5

    call Call_009_6a02

jr_009_69a5:
    call $1c07
    ret


jr_009_69a9:
    ld hl, $69b0
    call $1d67
    ret


    ld d, $71
    ld b, h
    ld l, a
    ld d, b
    ld b, b
    nop
    nop
    ld de, $bd13
    ld l, c
    ld bc, $00a0
    ld [bc], a
    ret nc

    di
    ld l, c
    ld c, a
    ld l, d
    ld b, b
    ld bc, $1001
    ld [de], a
    call $0169
    db $10
    ld [$0100], sp
    nop
    ld [bc], a
    ret nc

    add hl, bc
    di
    ld l, c
    nop
    nop
    nop
    nop
    nop
    nop

Call_009_69dd:
    ld hl, $6a4f
    ld bc, $0006
    call $30fe
    ret


Call_009_69e7:
    push hl
    call Call_009_69dd
    call Call_009_6c72
    pop hl
    call $30d9
    ret


    ld a, [$cf74]
    push de
    call Call_009_69dd
    call Call_009_6c72
    pop hl
    call $1078
    ret


Call_009_6a02:
    ld a, [$cf74]
    call Call_009_69dd
    ld de, $0002
    add hl, de
    ld a, [hl]
    ld hl, $6a12
    rst $28
    ret


    db $e3
    ld l, h
    push hl
    ld l, h
    db $eb
    ld l, h
    pop af
    ld l, h
    rst $30
    ld l, h
    db $fd
    ld l, h
    inc bc
    ld l, l
    add hl, bc
    ld l, l
    rrca
    ld l, l
    dec d
    ld l, l
    dec de
    ld l, l
    ld hl, $276d
    ld l, l
    or e
    ld l, l
    ret


    ld l, l

Call_009_6a30:
    call Call_009_69dd
    ld de, $0003
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ret


Call_009_6a3b:
Jump_009_6a3b:
    push bc
    call Call_009_6a30
    pop bc
    call $2e6f
    ret


    ld a, c
    call Call_009_69dd
    ld de, $0005
    add hl, de
    ld a, [hl]
    ld c, a
    ret


    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0201
    nop
    nop
    nop
    ld [bc], a
    ld [de], a
    ld bc, $02a4
    dec de
    ld [bc], a
    inc d
    ld bc, $02a5
    inc e
    ld [bc], a
    dec d
    ld bc, $02a6
    dec e
    ld [bc], a
    inc de
    ld bc, $02a7
    ld e, $01
    ld bc, $0004
    nop
    nop
    inc bc
    ld d, $03
    xor b
    ld [bc], a
    ld [$1703], sp
    inc bc
    xor c
    ld [bc], a
    dec bc
    inc bc
    jr @+$05

    xor d
    ld [bc], a
    ld c, $03
    add hl, de
    inc bc
    xor e
    ld [bc], a
    ld de, $0101
    ld b, $00
    nop
    nop
    ld bc, $0502
    xor h
    ld [bc], a
    jr nz, jr_009_6a9f

    inc bc

jr_009_6a9f:
    dec b
    xor l
    ld [bc], a
    ld hl, $0401
    dec b
    xor [hl]
    ld [bc], a
    ld [hl+], a
    ld bc, $0801
    nop
    nop
    nop
    ld bc, $0705
    xor a
    ld [bc], a
    rra
    inc b
    add hl, de
    rlca
    or b
    ld [bc], a
    inc hl
    inc b
    inc hl
    rlca
    or c
    ld [bc], a
    inc h
    inc b
    daa
    rlca
    or d
    ld [bc], a
    dec h
    ld bc, $0a01
    nop
    nop
    nop
    ld bc, $0906
    or e
    ld [bc], a
    ld e, h
    ld bc, $0907
    or h
    ld [bc], a
    ld e, e
    ld bc, $0908
    or l
    ld [bc], a
    ld d, c
    ld bc, $0909
    or [hl]
    ld [bc], a
    ld d, a
    ld bc, $0c01
    nop
    nop
    nop
    ld b, $8f
    dec bc
    rst $08
    ld [bc], a
    inc sp
    ld b, $5f
    dec bc
    ret nc

    ld [bc], a
    ld d, b
    ld b, $83
    dec bc
    pop de
    ld [bc], a
    ld b, a
    ld bc, $0e01
    nop
    nop
    nop
    dec b
    add hl, de
    dec c
    or a
    ld [bc], a
    adc [hl]
    ld bc, $0d0c
    cp b
    ld [bc], a
    inc [hl]
    dec b
    inc hl
    dec c
    cp c
    ld [bc], a
    adc a
    dec b
    daa
    dec c
    cp d
    ld [bc], a
    sub h
    dec b
    ld bc, $bb0d
    ld [bc], a
    sub e
    dec b
    inc b
    dec c
    cp h
    ld [bc], a
    sub b
    dec b
    rlca
    dec c
    cp l
    ld [bc], a
    adc c
    dec b
    inc a
    dec c
    cp [hl]
    ld [bc], a
    adc l
    dec b
    ld [hl-], a
    dec c
    cp a
    ld [bc], a
    adc h
    dec b
    ld a, b
    dec c
    ret nz

    ld [bc], a
    sub d
    dec b
    add c
    dec c
    pop bc
    ld [bc], a
    adc b
    dec b
    dec hl
    dec c
    jp nz, $8502

    dec b
    ld e, [hl]
    dec c
    jp $8602


    dec b
    ld e, d
    dec c
    call nz, $8402
    dec b
    ld e, b
    dec c
    push bc
    ld [bc], a
    sub l
    dec b
    ld h, h
    dec c
    add $02
    sbc e
    dec b
    dec c
    dec c
    rst $00
    ld [bc], a
    add e
    dec b
    ret


    dec c
    ret z

    ld [bc], a
    add b
    dec b
    ld c, d
    dec c
    ret


    ld [bc], a
    add c
    dec b
    ld b, d
    dec c
    jp z, $9a02

    dec b
    ld c, b
    dec c
    rlc d
    sbc b
    ld bc, $0d0a
    call Call_009_5e02
    ld bc, $0d0b
    adc $02
    ld e, a
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    adc a
    sub h
    sub e
    ld a, a
    adc b
    sub e
    ld a, a
    add b
    sub [hl]
    add b
    sbc b
    ld d, b
    adc h
    add b
    add [hl]
    adc l
    add b
    adc a
    adc e
    add b
    adc l
    sub e
    ld d, b
    sub e
    sub c
    adc [hl]
    adc a
    adc b
    add d
    adc a
    adc e
    add b
    adc l
    sub e
    ld d, b
    adc c
    sub h
    adc h
    add c
    adc [hl]
    adc a
    adc e
    add b
    adc l
    sub e
    ld d, b
    sub e
    adc [hl]
    sub [hl]
    adc l
    ld a, a
    adc h
    add b
    adc a
    ld d, b
    adc l
    add h
    sub d
    ld d, b
    sub d
    sub h
    adc a
    add h
    sub c
    ld a, a
    adc l
    add h
    sub d
    ld d, b
    adc l
    adc b
    adc l
    sub e
    add h
    adc l
    add e
    adc [hl]
    ld a, a
    db $fc
    ld a, [$9550]
    adc b
    sub c
    sub e
    sub h
    add b
    adc e
    ld a, a
    add c
    adc [hl]
    sbc b
    ld d, b
    add [hl]
    adc [hl]
    adc e
    add e
    ld a, a
    sub e
    sub c
    adc [hl]
    adc a
    add a
    sbc b
    ld d, b
    sub d
    adc b
    adc e
    sub l
    add h
    sub c
    ld a, a
    sub e
    sub c
    adc [hl]
    adc a
    add a
    sbc b
    ld d, b
    sub d
    sub h
    sub c
    add l
    ld a, a
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    ld d, b
    ld a, a
    add c
    add h
    add e
    ld d, b
    ld a, a
    add d
    add b
    sub c
    adc a
    add h
    sub e
    ld d, b
    ld a, a
    adc a
    adc [hl]
    sub d
    sub e
    add h
    sub c
    ld d, b
    ld a, a
    add e
    adc [hl]
    adc e
    adc e
    ld d, b
    add c
    adc b
    add [hl]
    ld a, a
    ld d, b
    add l
    add h
    add b
    sub e
    add a
    add h
    sub c
    sbc b
    ld d, b
    adc a
    adc b
    adc d
    add b
    add d
    add a
    sub h
    ld d, b
    adc a
    adc b
    adc l
    adc d
    ld d, b
    adc a
    adc [hl]
    adc e
    adc d
    add b
    add e
    adc [hl]
    sub e
    ld d, b
    sub c
    add h
    add e
    ld d, b
    add c
    adc e
    sub h
    add h
    ld d, b
    sbc b
    add h
    adc e
    adc e
    adc [hl]
    sub [hl]
    ld d, b
    add [hl]
    sub c
    add h
    add h
    adc l
    ld d, b

Call_009_6c72:
    ld a, [hl+]
    ld e, [hl]
    ld bc, $d086
    push bc
    ld hl, $6c7e
    rst $28
    pop de
    ret


    adc h
    ld l, h
    adc l
    ld l, h
    sub b
    ld l, h
    sub a
    ld l, h
    sbc [hl]
    ld l, h
    and [hl]
    ld l, h
    xor [hl]
    ld l, h
    ret


Call_009_6c8d:
    ld a, e
    jr jr_009_6cca

    call Call_009_6c8d
    ld a, $0d
    jr jr_009_6cca

    call Call_009_6c8d
    ld a, $0e
    jr jr_009_6cca

    ld a, e
    call Call_009_6cc0
    ld a, $0f
    jr jr_009_6cca

    ld a, e
    call Call_009_6cc0
    ld a, $10
    jr jr_009_6cca

    push de
    ld a, $11
    call Call_009_6cca
    pop de
    ld a, e
    jr jr_009_6cc0

    push de
    call Call_009_6cca
    pop de
    ld a, e
    jr jr_009_6cca

Call_009_6cc0:
jr_009_6cc0:
    push bc
    ld [$d265], a
    call $343b
    pop bc
    jr jr_009_6cda

Call_009_6cca:
jr_009_6cca:
    call Call_009_6ccf
    jr jr_009_6cda

Call_009_6ccf:
    push bc
    ld hl, $6b8d
    call $3411
    ld d, h
    ld e, l
    pop bc
    ret


jr_009_6cda:
    ld h, b
    ld l, c
    call $30d9
    dec hl
    ld b, h
    ld c, l
    ret


    scf
    ret


    ld hl, $dc0f
    jp Jump_009_6d2d


    ld hl, $dc0f
    jp Jump_009_6d86


    ld hl, $dc10
    jp Jump_009_6d2d


    ld hl, $dc10
    jp Jump_009_6d86


    ld hl, $dc11
    jp Jump_009_6d2d


    ld hl, $dc11
    jp Jump_009_6d86


    ld hl, $dc12
    jp Jump_009_6d2d


    ld hl, $dc12
    jp Jump_009_6d86


    ld hl, $dc13
    jp Jump_009_6d2d


    ld hl, $dc13
    jp Jump_009_6d86


    ld hl, $dc16
    jp Jump_009_6d2d


    ld hl, $dc16
    jp Jump_009_6d86


Jump_009_6d2d:
    ld a, [hl]
    ld [$d1ea], a
    push hl
    call Call_009_6d46
    jr c, jr_009_6d43

    ld a, $01
    ld [$d1ee], a
    pop hl
    ld a, [$cf74]
    ld [hl], a
    xor a
    ret


jr_009_6d43:
    pop hl
    xor a
    ret


Call_009_6d46:
    ld a, [$d1ea]
    and a
    jr z, jr_009_6d6d

    ld b, a
    ld a, [$cf74]
    cp b
    jr z, jr_009_6d7e

    ld a, [$cf74]
    ld hl, $d0ac
    call Call_009_69e7
    ld a, [$d1ea]
    ld hl, $d099
    call Call_009_69e7
    ld hl, $6ee0
    call $1d67
    xor a
    ret


jr_009_6d6d:
    ld a, [$cf74]
    ld hl, $d099
    call Call_009_69e7
    ld hl, $6edb
    call $1d67
    xor a
    ret


jr_009_6d7e:
    ld hl, $6ee5
    call $1d67
    scf
    ret


Jump_009_6d86:
    ld a, [hl]
    ld [$d1ea], a
    xor a
    ld [hl], a
    ld a, [$d1ea]
    and a
    jr z, jr_009_6dab

    ld a, $01
    ld [$d1ee], a
    ld a, [$d1ea]
    ld [$cf74], a
    ld hl, $d099
    call Call_009_69e7
    ld hl, $6ed1
    call $1d67
    xor a
    ret


jr_009_6dab:
    ld hl, $6ed6
    call $1d67
    xor a
    ret


    ld hl, $6e41
    call Call_009_6e70
    jr c, jr_009_6dc7

    call Call_009_6de3
    jr c, jr_009_6dc7

    ld a, $01
    ld [$d1ee], a
    jr jr_009_6dd6

jr_009_6dc7:
    xor a
    ret


    ld hl, $6e6b
    call Call_009_6e70
    jr nc, jr_009_6dd3

    xor a
    ret


jr_009_6dd3:
    call Call_009_6e46

jr_009_6dd6:
    call Call_009_6e9a
    ld a, [$d1ec]
    ld [hl], a
    ld a, [$d1ed]
    ld [de], a
    xor a
    ret


Call_009_6de3:
    ld a, [$d1ec]
    and a
    jr z, jr_009_6e11

    ld b, a
    ld a, [$cf74]
    cp b
    jr z, jr_009_6e2b

    ld a, b
    ld hl, $d099
    call Call_009_69e7
    ld a, [$cf74]
    ld hl, $d0ac
    call Call_009_69e7
    ld a, [$cf74]
    ld [$d1ec], a
    call Call_009_6e33
    ld hl, $6ee0
    call $1d67
    xor a
    ret


jr_009_6e11:
    ld a, [$cf74]
    ld [$d1ec], a
    call Call_009_6e33
    ld a, [$cf74]
    ld hl, $d099
    call Call_009_69e7
    ld hl, $6edb
    call $1d67
    xor a
    ret


jr_009_6e2b:
    ld hl, $6ee5
    call $1d67
    scf
    ret


Call_009_6e33:
    ld a, [$cf74]
    ld b, a
    ld a, [$d1ed]
    cp b
    ret nz

    xor a
    ld [$d1ed], a
    ret


    ld d, $8c
    ld b, h
    ld l, a
    ld d, b

Call_009_6e46:
    ld a, [$d1ec]
    and a
    jr z, jr_009_6e63

    ld hl, $d099
    call Call_009_69e7
    ld a, $01
    ld [$d1ee], a
    xor a
    ld [$d1ec], a
    ld hl, $6ed1
    call $1d67
    xor a
    ret


jr_009_6e63:
    ld hl, $6ed6
    call $1d67
    xor a
    ret


    ld d, $b2
    ld b, h
    ld l, a
    ld d, b

Call_009_6e70:
    call $1d4f
    ld hl, $6eab
    call $1dab
    call $1c07
    call $1c66
    jr c, jr_009_6e98

    ld a, [$cfa9]
    cp $03
    jr z, jr_009_6e98

    ld [$d1eb], a
    call Call_009_6e9a
    ld a, [hl]
    ld [$d1ec], a
    ld a, [de]
    ld [$d1ed], a
    xor a
    ret


jr_009_6e98:
    scf
    ret


Call_009_6e9a:
    ld hl, $dc15
    ld de, $dc14
    ld a, [$d1eb]
    cp $01
    ret z

    push hl
    ld h, d
    ld l, e
    pop de
    ret


    ld b, b
    nop
    nop
    rlca
    dec c
    or e
    ld l, [hl]
    ld bc, $0380
    sub c
    adc b
    add [hl]
    add a
    sub e
    ld a, a
    sub d
    adc b
    add e
    add h
    ld d, b
    adc e
    add h
    add l
    sub e
    ld a, a
    sub d
    adc b
    add e
    add h
    ld d, b
    add d
    add b
    adc l
    add d
    add h
    adc e
    ld d, b
    ld d, $d7
    ld b, h
    ld l, a
    ld d, b
    ld d, $ec
    ld b, h
    ld l, a
    ld d, b
    ld d, $09
    ld b, l
    ld l, a
    ld d, b
    ld d, $1c
    ld b, l
    ld l, a
    ld d, b
    ld d, $46
    ld b, l
    ld l, a
    ld d, b

Call_009_6eea:
    ld a, c
    ld h, d
    ld l, e
    call Call_009_69e7
    ret


    ld a, c
    jp Jump_009_6a3b


    ld a, c
    call Call_009_6f0c
    ld hl, $d073
    push hl
    call Call_009_69e7
    pop de
    ret


    ld a, c
    call Call_009_6f0c
    ld b, $01
    call Call_009_6a3b
    ret


Call_009_6f0c:
    push hl
    push de
    ld e, a
    ld d, $00
    ld hl, $6f2b
    add hl, de
    ld a, [hl]
    pop de
    pop hl
    ret


    ld hl, $6f2b

jr_009_6f1c:
    ld a, [hl+]
    cp $ff
    jr z, jr_009_6f2a

    push hl
    ld b, $01
    call Call_009_6a3b
    pop hl
    jr jr_009_6f1c

jr_009_6f2a:
    ret


    ld [bc], a
    inc bc
    inc b
    dec b
    rlca
    ld [$0a09], sp
    inc c
    dec c
    ld c, $10
    ld de, $1312
    dec d
    ld d, $17
    jr jr_009_6f5d

    rra
    jr nz, jr_009_6f63

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_009_6f83

    ld [hl-], a
    ld a, [de]
    dec de
    inc e
    inc sp
    inc [hl]
    rst $38
    ld a, b
    ld hl, $6f5f

jr_009_6f5d:
    rst $28
    ret


    ld l, c
    ld l, a
    cp c
    ld l, a

jr_009_6f63:
    cp [hl]
    ld l, a
    db $dd
    ld l, a
    jp $fa6f


    ld [de], a
    call c, $8421
    ld l, a
    ld de, $0003
    call $30e1
    jr c, jr_009_6f7d

    ld de, $6fb8
    ld b, $09
    ret


jr_009_6f7d:
    ld b, $09
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a

jr_009_6f83:
    ret


    db $10
    sub c
    ld l, a
    ld de, $6fa0
    ld [de], a
    xor b
    ld l, a
    inc de
    or b
    ld l, a
    rst $38
    ld b, a
    ld c, h
    sbc e
    ld l, a
    ld d, h
    rrca
    ld h, $00
    ld c, c
    sub c
    ld d, $5d
    ld b, l
    ld l, a
    ld d, b
    ld d, e
    and e
    ld l, a
    ld d, $70
    ld b, l
    ld l, a
    ld d, b
    ld d, e
    xor e
    ld l, a
    ld d, $91
    ld b, l
    ld l, a
    ld d, b
    ld d, e
    or e
    ld l, a
    ld d, $b3
    ld b, l
    ld l, a
    ld d, b
    sub c
    ld a, [$dc14]
    jr jr_009_6fc8

    ld a, [$dc15]
    jr jr_009_6fc8

    ld a, [$dc13]
    jr jr_009_6fc8

jr_009_6fc8:
    ld c, a
    ld de, $d099
    call Call_009_6eea
    ld b, $09
    ld de, $6fd5
    ret


    ld d, e
    ret c

    ld l, a
    ld d, $d7
    ld b, l
    ld l, a
    ld d, b
    ld b, $09
    ld de, $6fe3
    ret


    ld d, e
    and $6f
    ld d, $ef
    ld b, l
    ld l, a
    ld d, b
    ld de, $0004
    ld a, [$dc0f]
    call Call_009_7037
    ld de, $0704
    ld a, [$dc11]
    call Call_009_7037
    ld de, $0600
    ld a, [$dc12]
    call Call_009_7037
    call Call_009_7027
    ld de, $0000
    call Call_009_7092
    ld a, [$dc10]
    and a
    ret z

    call Call_009_7085
    ld [hl], a
    push af
    ld de, $0002
    call Call_009_7092
    pop af
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    dec a
    ld [hl], a
    ret


Call_009_7027:
    ld b, $01
    ld a, [$dc12]
    and a
    jr nz, jr_009_7031

    ld b, $00

jr_009_7031:
    ld de, $02cc
    jp $2e6f


Call_009_7037:
    push af
    call Call_009_7092
    pop af
    and a
    ret z

    call Call_009_7085
    ld [hl], a
    ret


    ld de, $0741
    ld hl, $d82e
    ld a, [$dc13]
    call Call_009_7074
    ld de, $0742
    ld hl, $d82f
    ld a, [$dc14]
    call Call_009_7074
    ld de, $0743
    ld hl, $d830
    ld a, [$dc15]
    call Call_009_7074
    ld de, $0744
    ld hl, $d831
    ld a, [$dc16]
    call Call_009_7074
    ret


Call_009_7074:
    and a
    jr z, jr_009_7080

    call Call_009_7085
    ld [hl], a
    ld b, $00
    jp $2e6f


jr_009_7080:
    ld b, $01
    jp $2e6f


Call_009_7085:
    ld c, a
    push de
    push hl
    ld a, $09
    ld hl, $6a44
    rst $08
    pop hl
    pop de
    ld a, c
    ret


Call_009_7092:
    ld a, d
    add $04
    ld d, a
    ld a, e
    add $04
    ld e, a
    call $2a66
    ret


    ld a, [$d109]
    ld hl, $dcfd
    call $3927
    ld a, [hl]
    and $7f
    ld d, a
    ld a, [$dcb5]
    ld b, a
    ld a, [$dcb6]
    ld c, a
    call $2caf
    cp d
    ld c, $01
    jr nz, jr_009_70bd

    ld c, $13

jr_009_70bd:
    ld hl, $71c2
    ld a, $01
    rst $08
    ret


    push hl
    ld a, [$d22f]
    dec a
    ld c, a
    ld b, $00
    ld hl, $70d6
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    pop hl
    ret


    ld a, [$faaa]
    xor d
    ld a, [$faaa]
    xor d
    ld a, [$faaa]
    xor d
    ld a, [$faaa]
    xor d
    ld a, [$98aa]
    adc b
    ld a, [$faaa]
    xor d
    ld a, [$aaaa]
    xor d
    ld a, [$faaa]
    xor d
    ld a, [$aaaa]
    xor d
    xor d
    xor d
    sbc b
    adc b
    ld a, [$98aa]
    adc b
    sbc b
    adc b
    sbc b
    adc b
    ld e, b
    adc b
    xor d
    xor d
    ret c

    ret z

    ld a, h
    ret z

    ld l, c
    ret z

    xor d
    xor d
    db $fd
    db $fd
    sbc b
    adc b
    sbc b
    adc b
    ld l, b
    adc b
    ld a, [$98aa]
    adc b
    sbc b
    adc b
    sbc b
    adc b
    ld a, b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    ld a, [$98aa]
    adc b
    xor b
    adc b
    sbc b
    adc b
    xor d
    xor d
    sbc b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    ld a, [$98aa]
    adc b
    ld l, d
    xor b
    sbc b
    adc b
    ld a, [$98aa]
    adc b
    ld a, b
    adc b
    sbc b
    adc b
    sbc b
    adc b
    ld l, b
    adc d
    ld l, b
    xor b
    ld l, l
    adc b
    xor d
    xor d
    xor d
    xor d
    sbc b
    adc b
    ld a, [hl]
    db $fd
    ld a, [$cdaa]
    di
    ld sp, $c8cd
    rrca
    ld a, [$d230]
    cp $03
    jr z, jr_009_7171

    ld a, $0f
    ld hl, $743d
    rst $08
    jr jr_009_7177

jr_009_7171:
    ld a, $0f
    ld hl, $7bff
    rst $08

jr_009_7177:
    ld a, $0f
    ld hl, $747c
    rst $08
    ld a, $0f
    ld hl, $6d9f
    rst $08
    call $333e
    call $1c17
    call $1d6e
    call $31f6
    jp $32f9


    push hl
    push de
    push bc
    ldh a, [$e4]
    and a
    ld hl, $d289
    ld de, $d207
    ld a, [$c663]
    jr z, jr_009_71ac

    ld hl, $dce0
    ld de, $c62d
    ld a, [$d0d4]

jr_009_71ac:
    push hl
    push af
    ld a, [de]
    ld b, a
    ld a, $0d
    ld hl, $7dd0
    rst $08
    ld hl, $71de

jr_009_71b9:
    ld a, [hl+]
    cp b
    jr z, jr_009_71c6

    inc a
    jr nz, jr_009_71b9

    pop af
    pop hl
    pop bc
    pop de
    pop hl
    ret


jr_009_71c6:
    xor a
    ld [de], a
    pop af
    pop hl
    call $3927
    ldh a, [$e4]
    and a
    jr nz, jr_009_71d8

    ld a, [$d22d]
    dec a
    jr z, jr_009_71da

jr_009_71d8:
    ld [hl], $00

jr_009_71da:
    pop bc
    pop de
    pop hl
    ret


    ld bc, $0502
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $47
    ld c, b
    ld c, c
    rst $38
    ld l, $73
    ld b, b
    ld [hl], e
    ld b, a
    ld [hl], e
    ld e, d
    ld [hl], e
    ld l, l
    ld [hl], e
    add b
    ld [hl], e
    sub e
    ld [hl], e
    and [hl]
    ld [hl], e
    cp c
    ld [hl], e
    bit 6, e
    ret nc

    ld [hl], e
    jp c, $e473

    ld [hl], e
    xor $73
    ld hl, sp+$73
    ld [bc], a
    ld [hl], h
    inc c
    ld [hl], h
    ld l, $73
    ld e, l
    ld [hl], h
    ld l, b
    ld [hl], h
    ld [hl], e
    ld [hl], h
    ld a, [hl]
    ld [hl], h
    adc c
    ld [hl], h
    sub h
    ld [hl], h
    sbc a
    ld [hl], h
    rst $10
    ld [hl], l
    call c, $ea75
    ld [hl], l
    rst $38
    ld [hl], l
    dec b
    db $76
    jp nc, $3775

    db $76
    adc [hl]
    db $76
    xor a
    db $76
    cp a
    ld [hl], l
    sbc b
    db $76
    sbc l
    db $76
    ld l, $73
    ld c, d
    db $76
    inc e
    ld [hl], a
    ld e, b
    ld [hl], a
    ld e, b
    ld [hl], a
    ld b, l
    ld [hl], a
    ld l, $73
    dec b
    db $76
    ld l, $73
    ld l, d
    db $76
    ld l, a
    db $76
    ld d, a
    db $76
    ld [hl], h
    db $76
    rla
    ld [hl], h
    ld hl, $2b74
    ld [hl], h
    dec [hl]
    ld [hl], h
    ccf
    ld [hl], h
    ld c, c
    ld [hl], h
    ld d, e
    ld [hl], h
    sub e
    db $76
    xor d
    ld [hl], h
    or l
    ld [hl], h
    ret nz

    ld [hl], h
    bit 6, h
    sub $74
    pop hl
    ld [hl], h
    db $ec
    ld [hl], h
    sbc b
    db $76
    xor a
    db $76
    or a
    db $76
    rst $30
    ld [hl], h
    dec bc
    ld [hl], l
    jr nz, @+$77

    inc [hl]
    ld [hl], l
    ld c, b
    ld [hl], l
    ld e, h
    ld [hl], l
    ld [hl], b
    ld [hl], l
    cp a
    db $76
    ld a, e
    db $76
    dec e
    db $76
    ld l, $73
    push de
    db $76
    jp c, $ec76

    halt
    ld [hl], a
    ld b, $77
    dec bc
    ld [hl], a
    ld de, $1677
    ld [hl], a
    ld e, b
    ld [hl], a
    ld e, b
    ld [hl], a
    ld [hl], e
    ld [hl], a
    ld a, [hl]
    ld [hl], a
    add h
    ld [hl], a
    adc d
    ld [hl], a
    sbc a
    ld [hl], a
    and l
    ld [hl], a
    xor e
    ld [hl], a
    or b
    ld [hl], a
    or l
    ld [hl], a
    cp d
    ld [hl], a
    ld h, l
    ld [hl], a
    cp a
    ld [hl], a
    push bc
    ld [hl], a
    ret c

    ld [hl], a
    ld l, $73
    db $dd
    ld [hl], a
    rst $30
    ld [hl], a
    dec bc
    ld a, b
    db $10
    ld a, b
    dec d
    ld a, b
    add hl, hl
    ld a, b
    ld l, $73
    ld l, $78
    inc sp
    ld a, b
    jr c, @+$7a

    ld a, $78
    ld b, e
    ld a, b
    ld c, b
    ld a, b
    ld c, l
    ld a, b
    ld h, c
    ld a, b
    ld [hl], c
    ld a, b
    add h
    ld a, b
    adc d
    ld a, b
    sbc l
    ld a, b
    or b
    ld a, b
    jp $c878


    ld a, b
    call c, $f078
    ld a, b
    push af
    ld a, b
    ld [$2e79], sp
    ld [hl], e
    ld l, $73
    dec de
    ld a, c
    jr nz, jr_009_7379

    dec h
    ld a, c
    ld a, [hl+]
    ld a, c
    inc a
    ld a, c
    ld b, c
    ld a, c
    add h
    ld [hl], l
    sbc b
    ld [hl], l
    xor h
    ld [hl], l
    ld b, [hl]
    ld a, c
    ld c, [hl]
    ld a, c
    ld d, e
    ld a, c
    ld e, b
    ld a, c
    ld h, e
    ld a, c
    ld a, d
    ld a, c
    adc [hl]
    ld a, c
    and c
    ld a, c
    or b
    ld a, c
    jp nz, $d679

    ld a, c
    db $eb
    ld a, c
    rst $38
    ld a, c
    inc b
    ld a, d
    jr nc, @+$79

    dec e
    ld a, d
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld h, l
    inc d
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    dec d
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c

jr_009_7379:
    ld c, $0f
    db $10
    ld de, $1712
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $1812
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $1912
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$1a09], sp
    dec bc
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld d, $11
    ld [de], a
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec de
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [hl], b
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [hl], c
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [hl], d
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [hl], e
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [hl], h
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [hl], l
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld a, [bc]
    db $76
    sub d
    and a
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [hl], a
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld a, b
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld a, c
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld a, d
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld a, e
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld a, h
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld a, l
    ld a, [bc]
    sub d
    inc c
    adc h
    adc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld a, [hl]
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld a, a
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    add b
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    add c
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    add d
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    add e
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    add h
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    add l
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    add [hl]
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    add a
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    adc b
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    adc c
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    adc d
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    adc e
    ld a, [bc]
    sub c
    inc c
    adc l
    adc a
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $7e12
    adc l
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $9012
    ld a, a
    adc l
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $8012
    adc l
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $8112
    adc l
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $8212
    adc l
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $8312
    adc l
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $8412
    adc l
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $7112
    adc h
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $7012
    adc h
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $a412
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld e, $11
    ld [de], a
    ld c, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    rra
    rst $38
    ld [bc], a
    inc bc
    inc b
    jr nz, @+$01

    ld hl, $0402
    inc bc
    ld [hl+], a
    and e
    add hl, bc
    xor e
    and l
    ld c, $11
    ld [de], a
    ld c, l
    rst $38
    ld a, $02
    inc b
    dec a
    inc bc
    add hl, bc
    dec b
    ld b, $62
    rlca
    ld [$aba9], sp
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    inc hl
    rst $38
    ld [bc], a
    inc bc
    inc b
    xor [hl]
    ld a, [bc]
    add hl, bc
    dec b
    ld b, $62
    rlca
    ld [$0ba9], sp
    dec c
    ld c, $0f
    jr c, @-$51

    ld de, $2412
    inc c
    ld c, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    xor [hl]
    ld a, [bc]
    add hl, bc
    sub b
    dec b
    ld b, $62
    rlca
    ld [$0ba9], sp
    dec c
    ld c, $0f
    jr c, @-$51

    ld de, $2412
    inc c
    ld c, l
    inc de
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $2512
    rst $38
    ld [bc], a
    inc bc
    inc b
    rlca
    ld h, $ab
    dec c
    ld c, $0f
    db $10
    ld de, $ff12
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    daa
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    jr z, @+$01

    ld [bc], a
    inc bc
    inc b
    add hl, hl
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld h, l
    ld a, [hl+]
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $2b12
    rst $38
    ld [bc], a
    inc bc
    inc b
    inc l
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec l
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld l, $ff
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld de, $ac12
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    rlca
    ld h, l
    cpl
    rst $38
    ld [bc], a
    inc bc
    inc b
    rlca
    add hl, bc
    ld h, l
    jr nc, @+$01

    ld a, [hl-]
    ld [bc], a
    inc b
    add hl, sp
    inc bc
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $2512
    ld c, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld sp, $02ff
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld [hl-], a
    ld de, $ff12
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    add hl, bc
    and d
    ld [$0dab], sp
    sub a
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    inc sp
    rst $38
    ld [bc], a
    inc bc
    inc b
    inc [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    dec [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [hl], $ff
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    scf
    rst $38
    ld a, [hl-]
    ld [bc], a
    inc b
    add hl, sp
    inc bc
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld a, [hl-]
    ld [bc], a
    inc b
    add hl, sp
    inc bc
    dec b
    ld b, $62
    rlca
    ld [$0b09], sp
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    dec b
    ld b, $62
    rlca
    ld [$aba9], sp
    dec c
    ld c, $0f
    db $10
    ld de, $3b12
    rst $38
    ld [bc], a
    inc bc
    inc b
    ccf
    add hl, bc
    and e
    xor e
    dec c
    ld c, $11
    ld [de], a
    ld c, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    ccf
    rlca
    add hl, bc
    xor e
    dec c
    ld c, $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld b, b
    xor e
    dec c
    ld c, $11
    ld [de], a
    ld c, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld b, c
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld b, d
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    ld b, e
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $2512

jr_009_779d:
    ld c, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld b, h
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld b, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld b, [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld b, a
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld c, b
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld c, c
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld c, d
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$094b], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld c, h
    rst $38
    ld [bc], a
    inc bc
    inc b
    xor [hl]
    ld a, [bc]
    add hl, bc
    dec b
    ld b, $62
    ld c, [hl]
    rlca
    ld [$0ba9], sp
    dec c
    ld c, $0f
    jr c, jr_009_779d

    ld de, $4f12
    inc h
    inc c
    ld c, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld d, b
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld d, c
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld d, d
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld d, e
    ld de, $1712
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld d, h
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld d, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld d, [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld d, a
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld e, b
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld e, c
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld e, d
    rst $38
    ld e, e
    ld [bc], a
    inc b
    inc bc
    dec b
    ld b, $62
    rlca
    add hl, bc
    ld e, h
    ld [$0dab], sp
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    sub e
    ld [hl], a
    sub e
    ld a, [bc]
    sub d
    inc c
    dec c
    sub e
    adc h
    sub e
    dec hl
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    add hl, bc
    ld e, [hl]
    ld [$0dab], sp
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    ld e, a
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $60
    ld h, d
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    dec b
    ld b, $61
    ld h, d
    rlca
    ld [$0da9], sp
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $63
    ld h, d
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld h, h
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$9009], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld d, e
    ld de, $1712
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $66
    ld h, d
    rlca
    ld [$9909], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld h, a
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$0968], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld l, c
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld l, d
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld l, e
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld l, h
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld l, l
    ld h, d
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld l, [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld l, a
    rst $38
    ld [bc], a
    inc bc
    inc b
    add hl, bc
    sub h
    xor e
    dec c
    rst $38
    ld [bc], a
    inc bc
    inc b
    sub l
    rst $38
    ld [bc], a
    inc bc
    inc b
    sub [hl]
    rst $38
    ld [bc], a
    inc bc
    inc b
    sbc d
    xor e
    dec c
    ld c, $11
    ld [de], a
    ld c, l
    rst $38
    ld a, [hl-]
    ld [bc], a
    inc b
    add hl, sp
    inc bc
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    cp $71
    adc h
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$0998], sp
    sub b
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $2512
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$0999], sp
    sub b
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $ff12
    sbc e
    ld [bc], a
    inc bc
    inc b
    ld b, $62
    sbc h
    ld [$0b09], sp
    dec c
    ld c, $11
    ld [de], a
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$0998], sp
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $ff12
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    rlca
    ld [$099d], sp
    sub b
    xor e
    dec c
    ld c, $0f
    db $10
    ld de, $2512
    rst $38
    ld a, [hl-]
    ld [bc], a
    inc b
    sbc [hl]
    add hl, sp
    inc bc
    dec b
    ld b, $62
    rlca
    ld [$ab09], sp
    dec c
    ld c, $0f
    db $10
    ld de, $4d12
    rst $38
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $62
    sbc a
    add hl, bc
    sub b
    rlca
    ld [$0dab], sp
    ld c, $0f
    db $10
    ld de, $1912
    rst $38
    ld [bc], a
    inc bc
    inc b
    and b
    rst $38
    ld [bc], a
    inc bc
    xor d
    inc b
    xor [hl]
    ld a, [bc]
    add hl, bc
    dec b
    and c
    ld h, d
    ld [$0ba9], sp
    dec c
    ld c, $0f
    jr c, jr_009_7a26

    ld de, $2412
    xor b
    inc c
    ld c, l
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [hl], c
    xor a
    ld a, [bc]
    sub d
    inc c
    adc h

jr_009_7a26:
    adc [hl]
    rst $38
    call Call_009_500e
    ld b, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
