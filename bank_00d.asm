; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    call $3985
    ld a, [$d0ec]
    and a
    ret nz

    jr jr_00d_401d

    call $3989
    ld a, [$c2dc]
    and a
    jr z, jr_00d_401d

    ld a, [$d430]
    cp $0e
    jr z, jr_00d_401d

    cp $04
    ret nc

jr_00d_401d:
    xor a
    ld [$c6b4], a
    call Call_00d_4084
    ld a, [$c6b4]
    and a
    ret nz

    call Call_00d_5e40

Call_00d_402c:
    ld a, $0d
    call $39e1
    ld c, a
    ld b, $00
    ld hl, $71f4
    add hl, bc
    add hl, bc
    ld a, $09
    call $305d
    ld de, $c68a

jr_00d_4041:
    ld a, $09
    call $304d
    inc hl
    ld [de], a
    inc de
    cp $ff
    jr nz, jr_00d_4041

    ld hl, $c68a
    ld a, l
    ld [$c6b2], a
    ld a, h
    ld [$c6b3], a

jr_00d_4058:
    ld a, [$c6b2]
    ld l, a
    ld a, [$c6b3]
    ld h, a
    ld a, [hl+]
    push af
    ld a, l
    ld [$c6b2], a
    ld a, h
    ld [$c6b3], a
    pop af
    cp $fe
    ret nc

    push bc
    dec a
    ld c, a
    ld b, $00
    ld hl, $7d28
    add hl, bc
    add hl, bc
    pop bc
    ld a, $0f
    call $305d
    call Call_00d_4083
    jr jr_00d_4058

Call_00d_4083:
    jp hl


Call_00d_4084:
    ld a, $10
    call $39e1
    inc a
    jp z, Jump_00d_4385

    xor a
    ld [$c667], a
    ld [$c70d], a
    ld [$c689], a
    ld [$c6f4], a
    ld [$c6fb], a
    ld [$c73e], a
    ld a, $0a
    ld [$c665], a
    ldh a, [$e4]
    and a
    jp nz, Jump_00d_421f

    ld hl, $c66b
    bit 5, [hl]
    jr z, jr_00d_40c0

    res 5, [hl]
    ld hl, $4d27
    call $3ad5
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_40c0:
    ld hl, $c63a
    ld a, [hl]
    and $07
    jr z, jr_00d_4110

    dec a
    ld [$c63a], a
    and $07
    jr z, jr_00d_40dc

    xor a
    ld [$cfca], a
    ld de, HeaderLogo
    call Call_00d_5d00
    jr jr_00d_40f9

jr_00d_40dc:
    ld hl, $4cfa
    call $3ad5
    call Call_00d_41f0
    call $399c
    ld hl, $5f48
    call Call_00d_7e73
    ld a, $01
    ldh [$d4], a
    ld hl, $c668
    res 0, [hl]
    jr jr_00d_4110

jr_00d_40f9:
    ld hl, $4ce7
    call $3ad5
    ld a, [$c6e3]
    cp $ad
    jr z, jr_00d_4110

    cp $d6
    jr z, jr_00d_4110

    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_4110:
    ld hl, $c63a
    bit 5, [hl]
    jr z, jr_00d_412e

    ld a, [$c6e3]
    cp $ac
    jr z, jr_00d_412e

    cp $dd
    jr z, jr_00d_412e

    ld hl, $4d06
    call $3ad5
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_412e:
    ld hl, $c66a
    bit 3, [hl]
    jr z, jr_00d_4143

    res 3, [hl]
    ld hl, $4d1a
    call $3ad5
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_4143:
    ld hl, $c675
    ld a, [hl]
    and a
    jr z, jr_00d_415a

    dec a
    ld [hl], a
    and $0f
    jr nz, jr_00d_415a

    ld [hl], a
    ld [$c6f5], a
    ld hl, $4d39
    call $3ad5

jr_00d_415a:
    ld a, [$c66a]
    add a
    jr nc, jr_00d_419a

    ld hl, $c673
    dec [hl]
    jr nz, jr_00d_4173

    ld hl, $c66a
    res 7, [hl]
    ld hl, $4d81
    call $3ad5
    jr jr_00d_419a

jr_00d_4173:
    ld hl, $4d4f
    call $3ad5
    xor a
    ld [$cfca], a
    ld de, $0103
    call Call_00d_5d00
    call $2f9f
    cp $80
    jr nc, jr_00d_419a

    ld hl, $c66a
    ld a, [hl]
    and $80
    ld [hl], a
    call Call_00d_43a5
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_419a:
    ld a, [$c668]
    add a
    jr nc, jr_00d_41c3

    ld hl, $4ec4
    call $3ad5
    xor a
    ld [$cfca], a
    ld de, $010a
    call Call_00d_5d00
    call $2f9f
    cp $80
    jr c, jr_00d_41c3

    ld hl, $4eda
    call $3ad5
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_41c3:
    ld a, [$c6f5]
    and a
    jr z, jr_00d_41d8

    ld hl, $c6e3
    cp [hl]
    jr nz, jr_00d_41d8

    call Call_00d_438d
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_41d8:
    ld hl, $c63a
    bit 6, [hl]
    ret z

    call $2f9f
    cp $3f
    ret nc

    ld hl, $557d
    call $3ad5
    call Call_00d_41f0
    jp Jump_00d_4385


Call_00d_41f0:
    ld a, $00
    call $39e7
    res 6, [hl]
    ld a, $02
    call $39e7
    ld a, [hl]
    and $ec
    ld [hl], a
    call Call_00d_77be
    ld a, $0c
    call $39e1
    cp $13
    jr z, jr_00d_420f

    cp $5b
    ret nz

jr_00d_420f:
    res 5, [hl]
    res 6, [hl]
    jp Jump_00d_7ece


Call_00d_4216:
Jump_00d_4216:
    call Call_00d_4ffd
    call Call_00d_41f0
    jp Jump_00d_4ffd


Jump_00d_421f:
    ld hl, $c670
    bit 5, [hl]
    jr z, jr_00d_4234

    res 5, [hl]
    ld hl, $4d27
    call $3ad5
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_4234:
    ld hl, $d214
    ld a, [hl]
    and $07
    jr z, jr_00d_4283

    dec a
    ld [$d214], a
    and a
    jr z, jr_00d_4255

    ld hl, $4ce7
    call $3ad5
    xor a
    ld [$cfca], a
    ld de, HeaderLogo
    call Call_00d_5d00
    jr jr_00d_4272

jr_00d_4255:
    ld hl, $4cfa
    call $3ad5
    call Call_00d_41f0
    call $39b0
    ld hl, $6036
    call Call_00d_7e73
    ld a, $01
    ldh [$d4], a
    ld hl, $c66d
    res 0, [hl]
    jr jr_00d_4283

jr_00d_4272:
    ld a, [$c6e4]
    cp $ad
    jr z, jr_00d_4283

    cp $d6
    jr z, jr_00d_4283

    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_4283:
    ld hl, $d214
    bit 5, [hl]
    jr z, jr_00d_42a1

    ld a, [$c6e4]
    cp $ac
    jr z, jr_00d_42a1

    cp $dd
    jr z, jr_00d_42a1

    ld hl, $4d06
    call $3ad5
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_42a1:
    ld hl, $c66f
    bit 3, [hl]
    jr z, jr_00d_42b6

    res 3, [hl]
    ld hl, $4d1a
    call $3ad5
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_42b6:
    ld hl, $c67d
    ld a, [hl]
    and a
    jr z, jr_00d_42cd

    dec a
    ld [hl], a
    and $0f
    jr nz, jr_00d_42cd

    ld [hl], a
    ld [$c6f6], a
    ld hl, $4d39
    call $3ad5

jr_00d_42cd:
    ld a, [$c66f]
    add a
    jr nc, jr_00d_4332

    ld hl, $c67b
    dec [hl]
    jr nz, jr_00d_42e6

    ld hl, $c66f
    res 7, [hl]
    ld hl, $4d81
    call $3ad5
    jr jr_00d_4332

jr_00d_42e6:
    ld hl, $4d4f
    call $3ad5
    xor a
    ld [$cfca], a
    ld de, $0103
    call Call_00d_5d00
    call $2f9f
    cp $80
    jr nc, jr_00d_4332

    ld hl, $c66f
    ld a, [hl]
    and $80
    ld [hl], a
    ld hl, $4d5f
    call $3ad5
    call Call_00d_55dd
    call Call_00d_5612
    call Call_00d_4eee
    xor a
    ld [$cfca], a
    ld de, $0115
    ld a, $07
    call $39e1
    and $60
    call z, Call_00d_5d08
    ld c, $01
    call Call_00d_5d1c
    call Call_00d_5004
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_4332:
    ld a, [$c66d]
    add a
    jr nc, jr_00d_435b

    ld hl, $4ec4
    call $3ad5
    xor a
    ld [$cfca], a
    ld de, $010a
    call Call_00d_5d00
    call $2f9f
    cp $80
    jr c, jr_00d_435b

    ld hl, $4eda
    call $3ad5
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_435b:
    ld a, [$c6f6]
    and a
    jr z, jr_00d_4370

    ld hl, $c6e4
    cp [hl]
    jr nz, jr_00d_4370

    call Call_00d_438d
    call Call_00d_41f0
    jp Jump_00d_4385


jr_00d_4370:
    ld hl, $d214
    bit 6, [hl]
    ret z

    call $2f9f
    cp $3f
    ret nc

    ld hl, $557d
    call $3ad5
    call Call_00d_41f0

Jump_00d_4385:
    ld a, $01
    ld [$c6b4], a
    jp $397d


Call_00d_438d:
    ld a, $02
    call $39e7
    res 4, [hl]
    ld a, $10
    call $39e1
    ld [$d265], a
    call $34f8
    ld hl, $4f02
    jp $3ad5


Call_00d_43a5:
    ld hl, $4d5f
    call $3ad5
    xor a
    ld [$c666], a
    call Call_00d_55dd
    call Call_00d_5612
    call Call_00d_4eee
    xor a
    ld [$cfca], a
    ld de, $0115
    ld a, $07
    call $39e1
    and $60
    call z, Call_00d_5d08
    ld hl, $5f48
    call Call_00d_7e73
    ld a, $01
    ldh [$d4], a
    ld c, $01
    call Call_00d_5d7e
    jp Jump_00d_5004


    ldh a, [$e4]
    and a
    ret nz

    call Call_00d_4548
    ret nz

    ld a, [$c6f4]
    and a
    ret nz

    xor a
    ld [$c6f4], a
    ld a, [$c2dc]
    and a
    ret nz

    ld a, [$cfc0]
    and a
    ret nz

    ld a, $06
    call $395d
    ld a, [$d47b]
    cp [hl]
    jr nz, jr_00d_4407

    inc hl
    ld a, [$d47c]
    cp [hl]
    ret z

jr_00d_4407:
    ld hl, $d857
    bit 7, [hl]
    ld a, $65
    jr nz, jr_00d_4424

    bit 5, [hl]
    ld a, $46
    jr nz, jr_00d_4424

    bit 3, [hl]
    ld a, $32
    jr nz, jr_00d_4424

    bit 1, [hl]
    ld a, $1e
    jr nz, jr_00d_4424

    ld a, $0a

jr_00d_4424:
    ld b, a
    ld c, a
    ld a, [$c639]
    ld d, a
    add b
    ld b, a
    jr nc, jr_00d_4430

    ld b, $ff

jr_00d_4430:
    ld a, c
    cp d
    ret nc

jr_00d_4433:
    call $2f9f
    swap a
    cp b
    jr nc, jr_00d_4433

    cp c
    ret c

    call Call_00d_451f
    ret c

jr_00d_4441:
    call $2f9f
    cp b
    jr nc, jr_00d_4441

    cp c
    jr c, jr_00d_4496

    ld a, d
    sub c
    ld b, a
    call $2f9f
    swap a
    sub b
    jr c, jr_00d_4464

    cp b
    jr nc, jr_00d_4476

    ld hl, $4f44
    call $3ad5
    call Call_00d_43a5
    jp Jump_00d_450c


jr_00d_4464:
    call $2f9f
    add a
    swap a
    and $07
    jr z, jr_00d_4464

    ld [$c63a], a
    ld hl, $4f31
    jr jr_00d_4490

jr_00d_4476:
    call $2f9f
    and $03
    ld hl, $4f19
    and a
    jr z, jr_00d_4490

    ld hl, $4f44
    dec a
    jr z, jr_00d_4490

    ld hl, $4f54
    dec a
    jr z, jr_00d_4490

    ld hl, $4f66

jr_00d_4490:
    call $3ad5
    jp Jump_00d_450c


jr_00d_4496:
    ld a, [$c62f]
    and a
    jr z, jr_00d_4476

    ld a, [$c6f5]
    and a
    jr nz, jr_00d_4476

    ld hl, $c634
    ld de, $c62e
    ld b, $00
    ld c, $04

jr_00d_44ac:
    ld a, [hl+]
    and $3f
    add b
    ld b, a
    dec c
    jr z, jr_00d_44b9

    inc de
    ld a, [de]
    and a
    jr nz, jr_00d_44ac

jr_00d_44b9:
    ld hl, $c634
    ld a, [$d0d5]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and $3f
    cp b
    jr z, jr_00d_4476

    ld a, $01
    ld [$c6f4], a
    ld a, [$cfa3]
    ld b, a
    ld a, [$d0d5]
    ld c, a
    push af

jr_00d_44d7:
    call $2f9f
    and $03
    cp b
    jr nc, jr_00d_44d7

    cp c
    jr z, jr_00d_44d7

    ld [$d0d5], a
    ld hl, $c634
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    and $3f
    jr z, jr_00d_44d7

    ld a, [$d0d5]
    ld c, a
    ld b, $00
    ld hl, $c62e
    add hl, bc
    ld a, [hl]
    ld [$c6e3], a
    call $3985
    call Call_00d_5e40
    call Call_00d_402c
    pop af
    ld [$d0d5], a

Jump_00d_450c:
    xor a
    ld [$c71b], a
    ld [$c6f8], a
    ld hl, $c66c
    res 4, [hl]
    xor a
    ld [$c676], a
    jp Jump_00d_52a3


Call_00d_451f:
    ld a, $0c
    call $39e1
    cp $ad
    jr z, jr_00d_452e

    cp $d6
    jr z, jr_00d_452e

    and a
    ret


jr_00d_452e:
    ld a, $0a
    call $39e1
    and $07
    ret z

    ld hl, $4f7b
    call $3ad5
    call Call_00d_52a3
    scf
    ret


    ld a, $41
    ld hl, $5db0
    rst $08
    ret


Call_00d_4548:
    ldh a, [$e4]
    and a
    ld a, [$c732]
    jr z, jr_00d_4553

    ld a, [$c733]

jr_00d_4553:
    and a
    ret


    call Call_00d_4548
    ret nz

    ld hl, $c634
    ld de, $c66a
    ld bc, $c6dd
    ldh a, [$e4]
    and a
    jr z, jr_00d_4570

    ld hl, $d20e
    ld de, $c66f
    ld bc, $c6dc

jr_00d_4570:
    ld a, [bc]
    inc a
    ld [bc], a
    ld a, $10
    call $39e1
    cp $a5
    ret z

    ld a, [de]
    and $07
    ret nz

    call Call_00d_45ad
    ld a, b
    and a
    jp nz, Jump_00d_52a3

    inc de
    inc de
    ld a, [de]
    bit 3, a
    ret nz

    ldh a, [$e4]
    and a
    ld hl, $dcf6
    ld a, [$d0d4]
    jr z, jr_00d_45a4

    ld a, [$d22d]
    dec a
    jr z, jr_00d_45c5

    ld hl, $d29f
    ld a, [$c663]

jr_00d_45a4:
    call $3927
    push hl
    call Call_00d_460b
    pop hl
    ret c

Call_00d_45ad:
    ldh a, [$e4]
    and a
    ld a, [$d0d5]
    jr z, jr_00d_45b8

    ld a, [$c6e9]

jr_00d_45b8:
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    and $3f
    jr z, jr_00d_45e3

    dec [hl]
    ld b, $00
    ret


jr_00d_45c5:
    ld hl, $d208
    ld a, [$c6e9]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $66
    jr z, jr_00d_45dc

    ld hl, $c735
    add hl, bc
    ld a, [hl]
    cp $66
    ret z

jr_00d_45dc:
    ld hl, $c739
    call Call_00d_45ad
    ret


jr_00d_45e3:
    call Call_00d_7e80
    ld a, $0d
    call $39e1
    ld hl, $4602
    ld de, $0001
    call $30e1
    ld hl, $4fba
    jr c, jr_00d_45fc

    ld hl, $4f99

jr_00d_45fc:
    call $3ad5
    ld b, $01
    ret


    daa
    ld c, e
    sub c
    sub a
    sbc e
    ld [hl], l
    ld a, [de]
    dec de
    rst $38

Call_00d_460b:
    ldh a, [$e4]
    and a
    ld a, [$d0d5]
    jr z, jr_00d_4616

    ld a, [$c6e9]

jr_00d_4616:
    ld c, a
    ld a, $02
    call $3945
    ld a, $10
    call $39e1
    cp $66
    jr z, jr_00d_462f

    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $66
    jr nz, jr_00d_462f

    scf
    ret


jr_00d_462f:
    and a
    ret


    xor a
    ld [$c666], a
    ld a, $0e
    call $39e1
    and a
    ret z

    ldh a, [$e4]
    and a
    ld hl, $d207
    ld a, [$d206]
    jr nz, jr_00d_464d

    ld hl, $c62d
    ld a, [$c62c]

jr_00d_464d:
    ld c, $00
    cp $71
    jr nz, jr_00d_465c

    ld a, [hl]
    cp $1e
    jr nz, jr_00d_4669

    ld c, $02
    jr jr_00d_4692

jr_00d_465c:
    cp $53
    jr nz, jr_00d_4669

    ld a, [hl]
    cp $69
    jr nz, jr_00d_4669

    ld c, $02
    jr jr_00d_4692

jr_00d_4669:
    ld a, $03
    call $39e1
    bit 2, a
    jr z, jr_00d_4673

    inc c

jr_00d_4673:
    ld a, $0c
    call $39e1
    ld de, $0001
    ld hl, $46a3
    push bc
    call $30e1
    pop bc
    jr nc, jr_00d_4687

    inc c
    inc c

jr_00d_4687:
    push bc
    call Call_00d_7db2
    ld a, b
    cp $49
    pop bc
    jr nz, jr_00d_4692

    inc c

jr_00d_4692:
    ld hl, $46ab
    ld b, $00
    add hl, bc
    call $2f9f
    cp [hl]
    ret nc

    ld a, $01
    ld [$c666], a
    ret


    ld [bc], a
    dec c
    ld c, e
    sbc b
    and e
    or c
    xor $ff
    ld de, $4020
    ld d, l
    add b
    add b
    add b
    ld a, [$c689]
    ld b, a
    inc b
    ld hl, $d257
    ld a, [hl-]
    ld e, a
    ld a, [hl+]
    ld d, a

jr_00d_46be:
    dec b
    ret z

    ld a, [hl]
    add e
    ld [hl-], a
    ld a, [hl]
    adc d
    ld [hl+], a
    jr nc, jr_00d_46be

    ld a, $ff
    ld [hl-], a
    ld [hl], a
    ret


    ld hl, $c689
    inc [hl]
    ret


Call_00d_46d2:
    ld a, $0c
    call $39e1
    cp $a5
    ret z

    ld hl, $c64a
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $d224
    ld a, [hl+]
    ld d, a
    ld e, [hl]
    ldh a, [$e4]
    and a
    jr z, jr_00d_46f7

    ld hl, $d224
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $c64a
    ld a, [hl+]
    ld d, a
    ld e, [hl]

jr_00d_46f7:
    ld a, $0f
    call $39e7
    ld [$d265], a
    push hl
    push de
    push bc
    ld a, $3e
    ld hl, $7da4
    rst $08
    pop bc
    pop de
    pop hl
    push de
    push bc
    ld a, $3e
    ld hl, $7e24
    rst $08
    pop bc
    pop de
    ld a, [$d265]
    cp b
    jr z, jr_00d_4720

    cp c
    jr z, jr_00d_4720

    jr jr_00d_473a

jr_00d_4720:
    ld hl, $d257
    ld a, [hl-]
    ld h, [hl]
    ld l, a
    ld b, h
    ld c, l
    srl b
    rr c
    add hl, bc
    ld a, h
    ld [$d256], a
    ld a, l
    ld [$d257], a
    ld hl, $c665
    set 7, [hl]

jr_00d_473a:
    ld a, $0f
    call $39e1
    ld b, a
    ld hl, $4bb1

jr_00d_4743:
    ld a, [hl+]
    cp $ff
    jr z, jr_00d_47b7

    cp $fe
    jr nz, jr_00d_4757

    ld a, $05
    call $39e1
    bit 3, a
    jr nz, jr_00d_47b7

    jr jr_00d_4743

jr_00d_4757:
    cp b
    jr nz, jr_00d_47b3

    ld a, [hl]
    cp d
    jr z, jr_00d_4763

    cp e
    jr z, jr_00d_4763

    jr jr_00d_47b3

jr_00d_4763:
    push hl
    push bc
    inc hl
    ld a, [$c665]
    and $80
    ld b, a
    ld a, [hl]
    and a
    jr nz, jr_00d_4775

    inc a
    ld [$c667], a
    xor a

jr_00d_4775:
    ldh [$b7], a
    add b
    ld [$c665], a
    xor a
    ldh [$b4], a
    ld hl, $d256
    ld a, [hl+]
    ldh [$b5], a
    ld a, [hl-]
    ldh [$b6], a
    call $3119
    ldh a, [$b4]
    ld b, a
    ldh a, [$b5]
    or b
    ld b, a
    ldh a, [$b6]
    or b
    jr z, jr_00d_47ab

    ld a, $0a
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b5]
    ld b, a
    ldh a, [$b6]
    or b
    jr nz, jr_00d_47ab

    ld a, $01
    ldh [$b6], a

jr_00d_47ab:
    ldh a, [$b5]
    ld [hl+], a
    ldh a, [$b6]
    ld [hl], a
    pop bc
    pop hl

jr_00d_47b3:
    inc hl
    inc hl
    jr jr_00d_4743

jr_00d_47b7:
    call Call_00d_47c8
    ld a, [$d265]
    ld b, a
    ld a, [$c665]
    and $80
    or b
    ld [$c665], a
    ret


Call_00d_47c8:
    ld hl, $d224
    ldh a, [$e4]
    and a
    jr z, jr_00d_47d3

    ld hl, $c64a

Call_00d_47d3:
jr_00d_47d3:
    push hl
    push de
    push bc
    ld a, $0f
    call $39e1
    ld d, a
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, $0a
    ld [$d265], a
    ld hl, $4bb1

jr_00d_47e7:
    ld a, [hl+]
    cp $ff
    jr z, jr_00d_482f

    cp $fe
    jr nz, jr_00d_47fb

    ld a, $05
    call $39e1
    bit 3, a
    jr nz, jr_00d_482f

    jr jr_00d_47e7

jr_00d_47fb:
    cp d
    jr nz, jr_00d_4807

    ld a, [hl+]
    cp b
    jr z, jr_00d_480b

    cp c
    jr z, jr_00d_480b

    jr jr_00d_4808

jr_00d_4807:
    inc hl

jr_00d_4808:
    inc hl
    jr jr_00d_47e7

jr_00d_480b:
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ldh [$b5], a
    ld a, [hl+]
    ldh [$b6], a
    ld a, [$d265]
    ldh [$b7], a
    call $3119
    ld a, $0a
    ldh [$b7], a
    push bc
    ld b, $04
    call $3124
    pop bc
    ldh a, [$b6]
    ld [$d265], a
    jr jr_00d_47e7

jr_00d_482f:
    pop bc
    pop de
    pop hl
    ret


Call_00d_4833:
    call Call_00d_47c8
    ld a, [$d265]
    and a
    ld a, $0a
    jr nz, jr_00d_484a

    call $397d
    xor a
    ld [$c665], a
    inc a
    ld [$c667], a
    ret


jr_00d_484a:
    ld [$d265], a
    ret


Call_00d_484e:
    push hl
    push de
    push bc
    ld a, $0a
    ld [$c716], a
    ld hl, $c712
    ld a, [hl]
    and a
    jr z, jr_00d_48b0

    ld d, $04
    ld e, $00

jr_00d_4861:
    ld a, [hl+]
    and a
    jr z, jr_00d_489f

    push hl
    dec a
    ld hl, $5afd
    call Call_00d_7ea1
    and a
    jr z, jr_00d_489b

    inc hl
    call Call_00d_7ebb
    ld hl, $d224
    call Call_00d_47d3
    ld a, [$d265]
    cp $0b
    jr nc, jr_00d_4895

    and a
    jr z, jr_00d_489b

    cp $0a
    jr nc, jr_00d_4891

    ld a, e
    cp $01
    jr nc, jr_00d_489b

    ld e, $01
    jr jr_00d_489b

jr_00d_4891:
    ld e, $02
    jr jr_00d_489b

jr_00d_4895:
    call Call_00d_4931
    pop hl
    jr jr_00d_48d7

jr_00d_489b:
    pop hl
    dec d
    jr nz, jr_00d_4861

jr_00d_489f:
    ld a, e
    cp $02
    jr z, jr_00d_48d7

    call Call_00d_4939
    ld a, e
    and a
    jr nz, jr_00d_48d7

    call Call_00d_4939
    jr jr_00d_48d7

jr_00d_48b0:
    ld a, [$c64a]
    ld b, a
    ld hl, $d224
    call Call_00d_47d3
    ld a, [$d265]
    cp $0b
    jr c, jr_00d_48c4

    call Call_00d_4931

jr_00d_48c4:
    ld a, [$c64b]
    cp b
    jr z, jr_00d_48d7

    call Call_00d_47d3
    ld a, [$d265]
    cp $0b
    jr c, jr_00d_48d7

    call Call_00d_4931

jr_00d_48d7:
    call Call_00d_48de
    pop bc
    pop de
    pop hl
    ret


Call_00d_48de:
    ld de, $d208
    ld b, $05
    ld c, $00
    ld a, [$d265]
    push af

jr_00d_48e9:
    dec b
    jr z, jr_00d_491d

    ld a, [de]
    and a
    jr z, jr_00d_491d

    inc de
    dec a
    ld hl, $5afd
    call Call_00d_7ea1
    and a
    jr z, jr_00d_48e9

    inc hl
    call Call_00d_7ebb
    ld hl, $c64a
    call Call_00d_47d3
    ld a, [$d265]
    and a
    jr z, jr_00d_48e9

    inc c
    cp $0a
    jr c, jr_00d_48e9

    inc c
    inc c
    inc c
    inc c
    inc c
    cp $0a
    jr z, jr_00d_48e9

    ld c, $64
    jr jr_00d_48e9

jr_00d_491d:
    pop af
    ld [$d265], a
    ld a, c
    and a
    jr z, jr_00d_492e

    cp $05
    jr c, jr_00d_4931

    cp $64
    ret c

    jr jr_00d_4939

jr_00d_492e:
    call Call_00d_4931

Call_00d_4931:
jr_00d_4931:
    ld a, [$c716]
    dec a
    ld [$c716], a
    ret


Call_00d_4939:
jr_00d_4939:
    ld a, [$c716]
    inc a
    ld [$c716], a
    ret


    xor a
    ld [$c717], a
    call Call_00d_49f4
    ret c

    ld a, [$c66d]
    bit 4, a
    jr z, jr_00d_4986

    ld a, [$c67f]
    cp $01
    jr nz, jr_00d_4986

    call Call_00d_49f4
    call Call_00d_4b77
    call Call_00d_4b20
    call Call_00d_4a85
    ld a, e
    cp $02
    jr nz, jr_00d_4971

    ld a, [$c716]
    add $30
    ld [$c717], a
    ret


jr_00d_4971:
    call Call_00d_49f4
    sla c
    sla c
    ld b, $ff

jr_00d_497a:
    inc b
    sla c
    jr nc, jr_00d_497a

    ld a, b
    add $30
    ld [$c717], a
    ret


jr_00d_4986:
    call Call_00d_484e
    ld a, [$c716]
    cp $0b
    ret nc

    ld a, [$c6f8]
    and a
    jr z, jr_00d_49d2

    call Call_00d_4a2a
    ld a, [$c716]
    and a
    jr z, jr_00d_49d2

    ld c, a
    call Call_00d_4aa7
    ld a, [$c716]
    cp $ff
    ret z

    ld b, a
    ld a, e
    cp $02
    jr z, jr_00d_49be

    call Call_00d_484e
    ld a, [$c716]
    cp $0a
    ret nc

    ld a, b
    add $10
    ld [$c717], a
    ret


jr_00d_49be:
    ld c, $10
    call Call_00d_484e
    ld a, [$c716]
    cp $0a
    jr nc, jr_00d_49cc

    ld c, $20

jr_00d_49cc:
    ld a, b
    add c
    ld [$c717], a
    ret


jr_00d_49d2:
    call Call_00d_484e
    ld a, [$c716]
    cp $0a
    ret nc

    call Call_00d_49f4
    call Call_00d_4b77
    call Call_00d_4b20
    call Call_00d_4a85
    ld a, e
    cp $02
    ret nz

    ld a, [$c716]
    add $10
    ld [$c717], a
    ret


Call_00d_49f4:
    ld a, [$d280]
    cp $02
    jr c, jr_00d_4a26

    ld d, a
    ld e, $00
    ld b, $20
    ld c, $00
    ld hl, $d2aa

jr_00d_4a05:
    ld a, [$c663]
    cp e
    jr z, jr_00d_4a16

    push bc
    ld b, [hl]
    inc hl
    ld a, [hl-]
    or b
    pop bc
    jr z, jr_00d_4a16

    ld a, c
    or b
    ld c, a

jr_00d_4a16:
    srl b
    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    inc e
    dec d
    jr nz, jr_00d_4a05

    ld a, c
    and a
    jr nz, jr_00d_4a28

jr_00d_4a26:
    scf
    ret


jr_00d_4a28:
    and a
    ret


Call_00d_4a2a:
    ld hl, $d288
    ld a, [$d280]
    ld b, a
    ld c, $20
    ld d, $00
    xor a
    ld [$c716], a

jr_00d_4a39:
    ld a, [$c663]
    cp d
    push hl
    jr z, jr_00d_4a77

    push hl
    push bc
    ld bc, $0022
    add hl, bc
    pop bc
    ld a, [hl+]
    or [hl]
    pop hl
    jr z, jr_00d_4a77

    ld a, [hl]
    ld [$cf60], a
    call $3856
    ld a, [$c6f8]
    dec a
    ld hl, $5afd
    call Call_00d_7ea1
    and a
    jr z, jr_00d_4a77

    inc hl
    call Call_00d_7ebb
    ld hl, $d23d
    call Call_00d_47d3
    ld a, [$d265]
    and a
    jr nz, jr_00d_4a77

    ld a, [$c716]
    or c
    ld [$c716], a

jr_00d_4a77:
    pop hl
    dec b
    ret z

    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    inc d
    srl c
    jr jr_00d_4a39

Call_00d_4a85:
    push bc
    ld a, [$d280]
    ld e, a
    ld hl, $d2aa
    ld b, $20
    ld c, $00

jr_00d_4a91:
    ld a, [hl+]
    or [hl]
    jr z, jr_00d_4a98

    ld a, b
    or c
    ld c, a

jr_00d_4a98:
    srl b
    push bc
    ld bc, $002f
    add hl, bc
    pop bc
    dec e
    jr nz, jr_00d_4a91

    ld a, c
    pop bc
    and c
    ld c, a

Call_00d_4aa7:
    ld a, $ff
    ld [$c716], a
    ld hl, $d28a
    ld b, $20
    ld d, $00
    ld e, $00

jr_00d_4ab5:
    ld a, b
    and c
    jr z, jr_00d_4b00

    push hl
    push bc
    ld b, $04
    ld c, $00

jr_00d_4abf:
    ld a, [hl+]
    and a
    push hl
    jr z, jr_00d_4aef

    dec a
    ld hl, $5afd
    call Call_00d_7ea1
    and a
    jr z, jr_00d_4ae9

    inc hl
    call Call_00d_7ebb
    ld hl, $c64a
    call Call_00d_47d3
    ld a, [$d265]
    cp $0a
    jr c, jr_00d_4ae9

    ld e, $01
    cp $0b
    jr c, jr_00d_4ae9

    ld e, $02
    jr jr_00d_4aef

jr_00d_4ae9:
    pop hl
    dec b
    jr nz, jr_00d_4abf

    jr jr_00d_4af0

jr_00d_4aef:
    pop hl

jr_00d_4af0:
    ld a, e
    pop bc
    pop hl
    cp $02
    jr z, jr_00d_4b0e

    cp $01
    jr nz, jr_00d_4b00

    ld a, d
    or b
    ld d, a
    jr jr_00d_4b00

jr_00d_4b00:
    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    srl b
    jr nc, jr_00d_4ab5

    ld a, d
    ld b, a
    and a
    ret z

jr_00d_4b0e:
    push bc
    sla b
    sla b
    ld c, $ff

jr_00d_4b15:
    inc c
    sla b
    jr nc, jr_00d_4b15

    ld a, c
    ld [$c716], a
    pop bc
    ret


Call_00d_4b20:
    push bc
    ld hl, $d281
    ld b, $20
    ld c, $00

jr_00d_4b28:
    ld a, [hl+]
    cp $ff
    jr z, jr_00d_4b72

    push hl
    ld [$cf60], a
    call $3856
    ld a, [$c6f8]
    and a
    jr z, jr_00d_4b4a

    dec a
    ld hl, $5afd
    call Call_00d_7ea1
    and a
    jr z, jr_00d_4b4a

    inc hl
    call Call_00d_7ebb
    jr jr_00d_4b5d

jr_00d_4b4a:
    ld a, [$c64a]
    ld hl, $d23d
    call Call_00d_47d3
    ld a, [$d265]
    cp $0b
    jr nc, jr_00d_4b6d

    ld a, [$c64b]

jr_00d_4b5d:
    ld hl, $d23d
    call Call_00d_47d3
    ld a, [$d265]
    cp $0b
    jr nc, jr_00d_4b6d

    ld a, b
    or c
    ld c, a

jr_00d_4b6d:
    srl b
    pop hl
    jr jr_00d_4b28

jr_00d_4b72:
    ld a, c
    pop bc
    and c
    ld c, a
    ret


Call_00d_4b77:
    push bc
    ld de, $d281
    ld b, $20
    ld c, $00
    ld hl, $d2aa

jr_00d_4b82:
    ld a, [de]
    inc de
    cp $ff
    jr z, jr_00d_4bac

    push hl
    push bc
    ld b, [hl]
    inc hl
    ld c, [hl]
    inc hl
    inc hl
    srl c
    rl b
    srl c
    rl b
    ld a, [hl-]
    cp c
    ld a, [hl]
    sbc b
    pop bc
    jr nc, jr_00d_4ba1

    ld a, b
    or c
    ld c, a

jr_00d_4ba1:
    srl b
    pop hl
    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    jr jr_00d_4b82

jr_00d_4bac:
    ld a, c
    pop bc
    and c
    ld c, a
    ret


    nop
    dec b
    dec b
    nop
    add hl, bc
    dec b
    inc d
    inc d
    dec b
    inc d
    dec d
    dec b
    inc d
    ld d, $14
    inc d
    add hl, de
    inc d
    inc d
    rlca
    inc d
    inc d
    dec b
    dec b
    inc d
    ld a, [de]
    dec b
    inc d
    add hl, bc
    inc d
    dec d
    inc d
    inc d
    dec d
    dec d
    dec b
    dec d
    ld d, $05
    dec d
    inc b
    inc d
    dec d
    dec b
    inc d
    dec d
    ld a, [de]
    dec b
    rla
    dec d
    inc d
    rla
    rla
    dec b
    rla
    ld d, $05
    rla
    inc b
    nop
    rla
    ld [bc], a
    inc d
    rla
    ld a, [de]
    dec b
    ld d, $14
    dec b
    ld d, $15
    inc d
    ld d, $16
    dec b
    ld d, $03
    dec b
    ld d, $04
    inc d
    ld d, $02
    dec b
    ld d, $07
    dec b
    ld d, $05
    inc d
    ld d, $1a
    dec b
    ld d, $09
    dec b
    add hl, de
    dec d
    dec b
    add hl, de
    ld d, $14
    add hl, de
    add hl, de
    dec b
    add hl, de
    inc b
    inc d
    add hl, de
    ld [bc], a
    inc d
    add hl, de
    ld a, [de]
    inc d
    add hl, de
    add hl, bc
    dec b
    add hl, de
    inc d
    dec b
    ld bc, $1400
    ld bc, $1419
    ld bc, $0503
    ld bc, $0502
    ld bc, $0518
    ld bc, $0507
    ld bc, $1405
    ld bc, $141b
    ld bc, $1409
    inc bc
    ld d, $14
    inc bc
    inc bc
    dec b
    inc bc
    inc b
    dec b
    inc bc
    dec b
    dec b
    inc bc
    ld [$0305], sp
    add hl, bc
    nop
    inc b
    inc d
    inc d
    inc b
    rla
    inc d
    inc b
    ld d, $05
    inc b
    inc bc
    inc d
    inc b
    ld [bc], a
    nop
    inc b
    rlca
    dec b
    inc b
    dec b
    inc d
    inc b
    add hl, bc
    inc d
    ld [bc], a
    rla
    dec b
    ld [bc], a
    ld d, $14
    ld [bc], a
    ld bc, $0214
    rlca
    inc d
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    add hl, bc
    dec b
    jr jr_00d_4c83

    inc d

jr_00d_4c83:
    jr jr_00d_4c88

    inc d
    jr @+$1a

jr_00d_4c88:
    dec b
    jr jr_00d_4ca6

    nop
    jr @+$0b

    dec b
    rlca
    inc d
    dec b
    rlca
    ld d, $14
    rlca
    ld bc, $0705
    inc bc
    dec b
    rlca
    ld [bc], a
    dec b
    rlca
    jr jr_00d_4cb5

    rlca
    ld [$0705], sp
    dec de

jr_00d_4ca6:
    inc d
    rlca
    add hl, bc
    dec b
    dec b
    inc d
    inc d
    dec b
    add hl, de
    inc d
    dec b
    ld bc, $0505
    inc b

jr_00d_4cb5:
    dec b
    dec b
    ld [bc], a
    inc d
    dec b
    rlca
    inc d
    dec b
    add hl, bc
    dec b
    ld [$0000], sp
    ld [$1418], sp
    ld [$051b], sp
    ld [$0509], sp
    ld [$1408], sp
    ld a, [de]
    ld a, [de]
    inc d
    ld a, [de]
    add hl, bc
    dec b
    dec de
    ld bc, $1b05
    jr jr_00d_4cee

    dec de
    ld [$1b14], sp
    dec de
    dec b
    dec de
    add hl, bc
    dec b
    add hl, bc
    inc d
    dec b
    add hl, bc
    dec d
    dec b
    add hl, bc
    rla
    dec b
    add hl, bc
    add hl, de

jr_00d_4cee:
    inc d
    add hl, bc
    dec b
    inc d
    add hl, bc
    add hl, bc
    dec b
    cp $00
    ld [$0100], sp
    ld [$ff00], sp
    ld hl, $d256
    ld a, [hl+]
    and a
    jr nz, jr_00d_4d08

    ld a, [hl]
    cp $02
    ret c

jr_00d_4d08:
    xor a
    ldh [$b4], a
    dec hl
    ld a, [hl+]
    ldh [$b5], a
    ld a, [hl]
    ldh [$b6], a

jr_00d_4d12:
    call $2f9f
    rrca
    cp $d9
    jr c, jr_00d_4d12

    ldh [$b7], a
    call $3119
    ld a, $ff
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b5]
    ld hl, $d256
    ld [hl+], a
    ldh a, [$b6]
    ld [hl], a
    ret


Call_00d_4d32:
    call Call_00d_4d9f
    jp z, Jump_00d_4d8d

    call Call_00d_4daf
    jp nz, Jump_00d_4d8d

    call Call_00d_4df0
    jp z, Jump_00d_4d8d

    call Call_00d_4dcb
    ret nz

    call Call_00d_4e04
    jp nz, Jump_00d_4d8d

    call Call_00d_4e2f
    ret z

    call Call_00d_4e3d
    ret nz

    ld a, $0d
    call $39e1
    cp $11
    ret z

    call Call_00d_4e45
    ld a, [$c613]
    ld b, a
    ldh a, [$e4]
    and a
    jr z, jr_00d_4d6e

    ld a, [$c60c]
    ld b, a

jr_00d_4d6e:
    push bc
    call Call_00d_7dc1
    ld a, b
    cp $4d
    ld a, c
    pop bc
    jr nz, jr_00d_4d81

    ld c, a
    ld a, b
    sub c
    ld b, a
    jr nc, jr_00d_4d81

    ld b, $00

jr_00d_4d81:
    ld a, b
    cp $ff
    jr z, jr_00d_4d8c

    call $2f9f
    cp b
    jr nc, jr_00d_4d8d

jr_00d_4d8c:
    ret


Jump_00d_4d8d:
jr_00d_4d8d:
    ld a, $0d
    call $39e1
    cp $2d
    jr z, jr_00d_4d99

    call $397d

jr_00d_4d99:
    ld a, $01
    ld [$c667], a
    ret


Call_00d_4d9f:
    ld a, $0d
    call $39e1
    cp $08
    ret nz

    ld a, $0b
    call $39e1
    and $07
    ret


Call_00d_4daf:
    ld a, $05
    call $39e1
    bit 2, a
    ret z

    ld c, $28
    call $0468
    ld hl, $567a
    call $3ad5
    ld c, $28
    call $0468
    ld a, $01
    and a
    ret


Call_00d_4dcb:
    ld a, $09
    call $39e7
    bit 5, [hl]
    res 5, [hl]
    ret z

    ld a, $07
    call $39e1
    bit 6, a
    jr z, jr_00d_4dec

    ld a, $0c
    call $39e1
    cp $59
    ret z

    cp $5a
    ret z

    cp $de
    ret z

jr_00d_4dec:
    ld a, $01
    and a
    ret


Call_00d_4df0:
    call Call_00d_7378
    jr z, jr_00d_4e00

    ld a, $0d
    call $39e1
    cp $03
    ret z

    cp $08
    ret z

jr_00d_4e00:
    ld a, $01
    and a
    ret


Call_00d_4e04:
    ld a, $07
    call $39e1
    and $60
    ret z

    bit 6, a
    jr z, jr_00d_4e21

    ld a, $0c
    call $39e1
    cp $10
    ret z

    cp $12
    ret z

    cp $57
    ret z

    cp $ef
    ret


jr_00d_4e21:
    ld a, $0c
    call $39e1
    cp $59
    ret z

    cp $5a
    ret z

    cp $de
    ret


Call_00d_4e2f:
    ld a, $0d
    call $39e1
    cp $98
    ret nz

    ld a, [$c70a]
    cp $01
    ret


Call_00d_4e3d:
    ld a, $03
    call $39e1
    bit 0, a
    ret


Call_00d_4e45:
    ldh a, [$e4]
    and a
    ld hl, $c613
    ld a, [$c6d1]
    ld b, a
    ld a, [$c6da]
    ld c, a
    jr z, jr_00d_4e60

    ld hl, $c60c
    ld a, [$c6d9]
    ld b, a
    ld a, [$c6d2]
    ld c, a

jr_00d_4e60:
    cp b
    jr c, jr_00d_4e6b

    ld a, $05
    call $39e1
    bit 3, a
    ret nz

jr_00d_4e6b:
    ld a, $0e
    sub c
    ld c, a
    xor a
    ldh [$b4], a
    ldh [$b5], a
    ld a, [hl]
    ldh [$b6], a
    push hl
    ld d, $02

jr_00d_4e7a:
    push bc
    ld hl, $4eb2
    dec b
    sla b
    ld c, b
    ld b, $00
    add hl, bc
    pop bc
    ld a, [hl+]
    ldh [$b7], a
    call $3119
    ld a, [hl]
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b6]
    ld b, a
    ldh a, [$b5]
    or b
    jr nz, jr_00d_4ea2

    ldh [$b5], a
    ld a, $01
    ldh [$b6], a

jr_00d_4ea2:
    ld b, c
    dec d
    jr nz, jr_00d_4e7a

    ldh a, [$b5]
    and a
    ldh a, [$b6]
    jr z, jr_00d_4eaf

    ld a, $ff

jr_00d_4eaf:
    pop hl
    ld [hl], a
    ret


    ld hl, $2464
    ld h, h
    dec hl
    ld h, h
    ld [hl-], a
    ld h, h
    inc a
    ld h, h
    ld c, e
    ld h, h
    ld bc, $8501
    ld h, h
    and [hl]
    ld h, h
    ld [bc], a
    ld bc, $64e9
    add l
    ld [hl-], a
    inc bc
    ld bc, $eaaf
    dec c
    rst $00
    call Call_00d_7378
    jr nz, jr_00d_4ee7

    push hl
    ld hl, $c615
    ldh a, [$e4]
    and a
    jr z, jr_00d_4ee1

    ld hl, $c60e

jr_00d_4ee1:
    call $2f9f
    cp [hl]
    pop hl
    ret c

jr_00d_4ee7:
    ld a, $01
    ld [$c70d], a
    and a
    ret


Call_00d_4eee:
    ld a, $03
    call $39e1
    bit 4, a
    ret z

    ld a, $02
    call $39e1
    bit 4, a
    jr nz, jr_00d_4f18

    ld a, $0d
    call $39e1
    cp $27
    jr z, jr_00d_4f21

    cp $4b
    jr z, jr_00d_4f21

    cp $91
    jr z, jr_00d_4f21

    cp $97
    jr z, jr_00d_4f21

    cp $9b
    jr z, jr_00d_4f21

jr_00d_4f18:
    call Call_00d_4f3c
    jr z, jr_00d_4f21

    call Call_00d_4548
    ret nz

jr_00d_4f21:
    call Call_00d_7ed5
    jr c, jr_00d_4f36

    xor a
    ld [$cfca], a
    ld [$cfc3], a
    inc a
    ld [$c689], a
    ld a, $a4
    jp Jump_00d_7e44


jr_00d_4f36:
    call Call_00d_65c3
    jp Jump_00d_7e80


Call_00d_4f3c:
    ld a, $0d
    call $39e1
    cp $75
    jr z, jr_00d_4f4d

    cp $1b
    jr z, jr_00d_4f4d

    ld a, $01
    and a
    ret


jr_00d_4f4d:
    ld a, [$c73e]
    and a
    ld a, $00
    ld [$c73e], a
    ret


    call Call_00d_4eee
    call Call_00d_4f60
    jp Jump_00d_5004


Call_00d_4f60:
    ld a, [$c667]
    and a
    jp nz, Jump_00d_7e80

    ldh a, [$e4]
    and a
    ld de, $c672
    ld a, $01
    jr z, jr_00d_4f76

    ld de, $c67a
    ld a, $04

jr_00d_4f76:
    ld [$cfca], a
    ld a, $0d
    call $39e1
    cp $1d
    jr z, jr_00d_4fb0

    cp $1e
    jr z, jr_00d_4fb0

    cp $2c
    jr z, jr_00d_4fb0

    cp $4d
    jr z, jr_00d_4fb0

    cp $68
    jr z, jr_00d_4f96

    xor a
    ld [$c689], a

jr_00d_4f96:
    ld a, $0c
    call $39e1
    ld e, a
    ld d, $00
    call Call_00d_5d08
    ld a, $0c
    call $39e1
    cp $13
    jr z, jr_00d_4fad

    cp $5b
    ret nz

jr_00d_4fad:
    jp Jump_00d_7ec7


jr_00d_4fb0:
    ld a, [$c689]
    and $01
    xor $01
    ld [$c689], a
    ld a, [de]
    cp $01
    push af
    ld a, $0c
    call $39e1
    ld e, a
    ld d, $00
    pop af
    jp z, Jump_00d_5d08

    xor a
    ld [$cfca], a
    jp Jump_00d_5d08


    ld a, [$c667]
    and a
    jp nz, Jump_00d_7e80

    xor a
    jr jr_00d_4feb

    ld a, [$c667]
    and a
    jp nz, Jump_00d_7e80

    ldh a, [$e4]
    and a
    ld a, $02
    jr z, jr_00d_4feb

    ld a, $05

jr_00d_4feb:
    ld [$cfca], a
    xor a
    ld [$c689], a
    ld a, $0c
    call $39e1
    ld e, a
    ld d, $00
    jp Jump_00d_5d08


Call_00d_4ffd:
Jump_00d_4ffd:
    ldh a, [$e4]
    xor $01
    ldh [$e4], a
    ret


Call_00d_5004:
Jump_00d_5004:
    ld a, $03
    call $39e1
    bit 4, a
    ret z

    call Call_00d_7ed5
    jp c, Jump_00d_65af

    xor a
    ld [$cfca], a
    ld [$cfc3], a
    ld a, $02
    ld [$c689], a
    ld a, $a4
    jp Jump_00d_7e44


    ld a, [$c667]
    and a
    ret z

    call Call_00d_50e4
    ld a, $0c
    call $39e7
    cp $13
    jr z, jr_00d_504f

    cp $5b
    jr z, jr_00d_504f

    inc hl
    ld a, [hl]
    cp $1d
    jr z, jr_00d_5049

    cp $2c
    jr z, jr_00d_5049

    cp $4d
    jr z, jr_00d_5049

    jp Jump_00d_52a3


jr_00d_5049:
    call Call_00d_5004
    jp Jump_00d_52a3


jr_00d_504f:
    ld a, $02
    call $39e7
    res 5, [hl]
    res 6, [hl]
    call Call_00d_7ece
    jp Jump_00d_52a3


    ld a, $05
    call $39e1
    bit 5, a
    jr z, jr_00d_5072

    call Call_00d_5c94
    ld b, $00
    jr nc, jr_00d_508b

    ld b, $01
    jr jr_00d_508b

jr_00d_5072:
    call Call_00d_7dc1
    ld a, b
    cp $4f
    ld b, $00
    jr nz, jr_00d_508b

    call $2f9f
    cp c
    jr nc, jr_00d_508b

    call Call_00d_5c94
    ld b, $00
    jr nc, jr_00d_508b

    ld b, $02

jr_00d_508b:
    push bc
    call Call_00d_50bb
    ld c, $00
    ldh a, [$e4]
    and a
    jr nz, jr_00d_509b

    call Call_00d_5d1c
    jr jr_00d_509e

jr_00d_509b:
    call Call_00d_5d7e

jr_00d_509e:
    pop bc
    ld a, b
    and a
    ret z

    dec a
    jr nz, jr_00d_50ab

    ld hl, $4eb0
    jp $3ad5


jr_00d_50ab:
    call Call_00d_7dc1
    ld a, [hl]
    ld [$d265], a
    call $3468
    ld hl, $4e99
    jp $3ad5


Call_00d_50bb:
    ld a, $08
    call $39e1
    bit 4, a
    ret nz

    ld de, $c683
    ldh a, [$e4]
    and a
    jr nz, jr_00d_50ce

    ld de, $c685

jr_00d_50ce:
    ld a, [$d257]
    ld b, a
    ld a, [de]
    add b
    ld [de], a
    dec de
    ld a, [$d256]
    ld b, a
    ld a, [de]
    adc b
    ld [de], a
    ret nc

    ld a, $ff
    ld [de], a
    inc de
    ld [de], a
    ret


Call_00d_50e4:
    ld hl, $5071
    ld de, $5071
    ld a, [$c665]
    and $7f
    jr z, jr_00d_5110

    ld a, $0d
    call $39e1
    cp $94
    ld hl, $54f0
    ld de, $5500
    jr z, jr_00d_5110

    ld hl, $5020
    ld de, $5033
    ld a, [$c666]
    cp $ff
    jr nz, jr_00d_5110

    ld hl, $5061

jr_00d_5110:
    call Call_00d_5157
    xor a
    ld [$c666], a
    ld a, $0d
    call $39e1
    cp $2d
    ret nz

    ld a, [$c665]
    and $7f
    ret z

    ld hl, $d256
    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    srl a
    rr b
    ld [hl], b
    dec hl
    ld [hl+], a
    or b
    jr nz, jr_00d_513e

    inc a
    ld [hl], a

jr_00d_513e:
    ld hl, $5046
    call $3ad5
    ld a, $01
    ld [$c689], a
    call Call_00d_7e36
    ld c, $01
    ldh a, [$e4]
    and a
    jp nz, Jump_00d_5d1c

    jp Jump_00d_5d7e


Call_00d_5157:
Jump_00d_5157:
    ld a, $05
    call $39e1
    bit 2, a
    jr z, jr_00d_5162

    ld h, d
    ld l, e

jr_00d_5162:
    jp $3ad5


    ld a, [$c667]
    and a
    ret z

    ld a, [$c665]
    and $7f
    jp z, Jump_00d_733d

    jp Jump_00d_734e


    ld a, [$c666]
    and a
    jr z, jr_00d_518e

    dec a
    add a
    ld hl, $5193
    ld b, $00
    ld c, a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call $3ad5
    xor a
    ld [$c666], a

jr_00d_518e:
    ld c, $14
    jp $0468


    add [hl]
    ld d, b
    sub a
    ld d, b
    ld hl, $c672
    ldh a, [$e4]
    and a
    jr z, jr_00d_51a2

    ld hl, $c67a

jr_00d_51a2:
    xor a
    ld [hl], a
    ret


    ld a, $02
    call $39e7
    bit 2, a
    ret nz

    ld a, [$c665]
    and $7f
    cp $0a
    ret z

    ld hl, $50aa
    jr nc, jr_00d_51bd

    ld hl, $50c1

jr_00d_51bd:
    jp $3ad5


    ld hl, $d216
    ldh a, [$e4]
    and a
    jr z, jr_00d_51cb

    ld hl, $c63c

jr_00d_51cb:
    ld a, [hl+]
    or [hl]
    ret nz

    ld a, $09
    call $39e1
    bit 6, a
    jr z, jr_00d_5231

    ld hl, $50da
    call $3ad5
    ldh a, [$e4]
    and a
    ld hl, $d219
    ld bc, $c4ca
    ld a, $00
    jr nz, jr_00d_51f2

    ld hl, $c63f
    ld bc, $c55e
    ld a, $01

jr_00d_51f2:
    ld [$d10a], a
    ld a, [hl-]
    ld [$d1ea], a
    ld a, [hl-]
    ld [$d1eb], a
    ld a, [hl]
    ld [$d1ec], a
    xor a
    ld [hl-], a
    ld a, [hl]
    ld [$d1ed], a
    xor a
    ld [hl], a
    ld [$d1ee], a
    ld [$d1ef], a
    ld h, b
    ld l, c
    ld a, $0b
    call $2d83
    call $39c9
    call Call_00d_4ffd
    xor a
    ld [$cfca], a
    ld [$cfc3], a
    inc a
    ld [$c689], a
    ld a, $c2
    call Call_00d_7e44
    call Call_00d_4ffd
    jr jr_00d_524d

jr_00d_5231:
    ld a, $0d
    call $39e1
    cp $1d
    jr z, jr_00d_524a

    cp $2c
    jr z, jr_00d_524a

    cp $4d
    jr z, jr_00d_524a

    cp $68
    jr z, jr_00d_524a

    cp $9a
    jr nz, jr_00d_524d

jr_00d_524a:
    call Call_00d_5004

jr_00d_524d:
    jp Jump_00d_52a3


    jp Jump_00d_5253


Jump_00d_5253:
    ld a, [$c667]
    and a
    ret nz

    ld a, $08
    call $39e1
    bit 6, a
    ret z

    ld de, $c72c
    ldh a, [$e4]
    and a
    jr z, jr_00d_526b

    ld de, $c72b

jr_00d_526b:
    ld a, [de]
    inc a
    ret z

    ld [de], a
    call Call_00d_4ffd
    ld hl, $50f3
    call $3ad5
    jp Jump_00d_4ffd


    ld a, [$d256]
    ld h, a
    ld b, a
    ld a, [$d257]
    ld l, a
    ld c, a
    ldh a, [$e4]
    and a
    ld a, [$c72b]
    jr z, jr_00d_5290

    ld a, [$c72c]

jr_00d_5290:
    and a
    jr z, jr_00d_529a

    dec a
    add hl, bc
    jr nc, jr_00d_5290

    ld hl, $ffff

jr_00d_529a:
    ld a, h
    ld [$d256], a
    ld a, l
    ld [$d257], a
    ret


Call_00d_52a3:
Jump_00d_52a3:
    ld a, [$c6b2]
    ld l, a
    ld a, [$c6b3]
    ld h, a
    ld a, $ff
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_00d_52b1:
    ld a, $00
    call $395d
    ldh a, [$e4]
    and a
    ld a, [hl]
    jr nz, jr_00d_52bf

    ld a, [$d204]

jr_00d_52bf:
    cp $84
    ret nz

    push bc
    call Call_00d_7dc1
    ld a, [hl]
    cp $23
    pop bc
    ret nz

    ld a, c
    srl a
    add c
    ld c, a
    ret nc

    srl b
    ld a, b
    and a
    jr nz, jr_00d_52d8

    inc b

jr_00d_52d8:
    scf
    rr c
    ret


    ldh a, [$e4]
    and a
    jp nz, Jump_00d_53f6

Call_00d_52e2:
    call $397d
    ld hl, $c611
    ld a, [hl+]
    and a
    ld d, a
    ret z

    ld a, [hl]
    cp $14
    jr nc, jr_00d_5315

    ld hl, $d21c
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$c700]
    bit 4, a
    jr z, jr_00d_5302

    sla c
    rl b

jr_00d_5302:
    ld hl, $c640
    call Call_00d_5378
    jr c, jr_00d_533c

    ld hl, $c6c3
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $c6b6
    jr jr_00d_533c

jr_00d_5315:
    ld hl, $d222
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$c700]
    bit 3, a
    jr z, jr_00d_5326

    sla c
    rl b

jr_00d_5326:
    ld hl, $c646
    call Call_00d_5378
    jr c, jr_00d_5337

    ld hl, $c6c9
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $c6bc

jr_00d_5337:
    call Call_00d_53c3
    jr jr_00d_533f

jr_00d_533c:
    call Call_00d_53b5

jr_00d_533f:
    call Call_00d_534d
    ld a, [$c639]
    ld e, a
    call Call_00d_52b1
    ld a, $01
    and a
    ret


Call_00d_534d:
jr_00d_534d:
    ld a, h
    or b
    jr z, jr_00d_536b

    srl b
    rr c
    srl b
    rr c
    ld a, c
    or b
    jr nz, jr_00d_535e

    inc c

jr_00d_535e:
    srl h
    rr l
    srl h
    rr l
    ld a, l
    or h
    jr nz, jr_00d_536b

    inc l

jr_00d_536b:
    ld a, [$c2dc]
    cp $03
    jr z, jr_00d_5376

    ld a, h
    or b
    jr nz, jr_00d_534d

jr_00d_5376:
    ld b, l
    ret


Call_00d_5378:
    ld a, [$c666]
    and a
    scf
    ret z

    push hl
    push bc
    ldh a, [$e4]
    and a
    jr nz, jr_00d_539c

    ld a, [$c612]
    cp $14
    ld a, [$c6cf]
    ld b, a
    ld a, [$c6d8]
    jr nc, jr_00d_53b1

    ld a, [$c6cc]
    ld b, a
    ld a, [$c6d5]
    jr jr_00d_53b1

jr_00d_539c:
    ld a, [$c60b]
    cp $14
    ld a, [$c6d7]
    ld b, a
    ld a, [$c6d0]
    jr nc, jr_00d_53b1

    ld a, [$c6d4]
    ld b, a
    ld a, [$c6cd]

jr_00d_53b1:
    cp b
    pop bc
    pop hl
    ret


Call_00d_53b5:
    push bc
    push de
    ld b, $68
    ld c, $69
    ld d, $76
    call Call_00d_53d1
    pop de
    pop bc
    ret


Call_00d_53c3:
    push bc
    push de
    ld b, $19
    ld c, $19
    ld d, $a3
    call Call_00d_53d1
    pop de
    pop bc
    ret


Call_00d_53d1:
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    push hl
    ld a, $00
    call $395d
    ldh a, [$e4]
    and a
    ld a, [hl]
    jr z, jr_00d_53e3

    ld a, [$d204]

jr_00d_53e3:
    pop hl
    cp b
    jr z, jr_00d_53e9

    cp c
    ret nz

jr_00d_53e9:
    push hl
    call Call_00d_7db2
    ld a, [hl]
    pop hl
    cp d
    ret nz

    sla l
    rl h
    ret


Call_00d_53f6:
Jump_00d_53f6:
    call $397d
    ld hl, $c60a
    ld a, [hl+]
    ld d, a
    and a
    ret z

    ld a, [hl]
    cp $14
    jr nc, jr_00d_5429

    ld hl, $c642
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$c6ff]
    bit 4, a
    jr z, jr_00d_5416

    sla c
    rl b

jr_00d_5416:
    ld hl, $d21a
    call Call_00d_5378
    jr c, jr_00d_5450

    ld hl, $c6b8
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $c6c1
    jr jr_00d_5450

jr_00d_5429:
    ld hl, $c648
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [$c6ff]
    bit 3, a
    jr z, jr_00d_543a

    sla c
    rl b

jr_00d_543a:
    ld hl, $d220
    call Call_00d_5378
    jr c, jr_00d_544b

    ld hl, $c6be
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld hl, $c6c7

jr_00d_544b:
    call Call_00d_53c3
    jr jr_00d_5453

jr_00d_5450:
    call Call_00d_53b5

jr_00d_5453:
    call Call_00d_534d
    ld a, [$d213]
    ld e, a
    call Call_00d_52b1
    ld a, $01
    and a
    ret


    call $397d
    ldh a, [$e4]
    and a
    jp nz, Jump_00d_54ef

    ld a, [$c66a]
    bit 2, a
    jr nz, jr_00d_5482

    ld c, $14
    call $0468
    xor a
    ld [$c672], a
    ld [$d002], a
    ld [$c72d], a
    jr jr_00d_548d

jr_00d_5482:
    ld a, [$c672]
    ld b, a
    ld a, [$dcd7]
    sub b
    ld [$d002], a

jr_00d_548d:
    ld a, [$d002]
    ld hl, $de41
    call $38a2
    ld a, $22
    call Call_00d_55bd
    ld a, [hl+]
    or [hl]
    jp z, Jump_00d_55b0

    ld a, [$d002]
    ld c, a
    ld a, [$d0d4]
    cp [hl]
    ld hl, $c63a
    jr z, jr_00d_54b2

    ld a, $20
    call Call_00d_55bd

jr_00d_54b2:
    ld a, [hl]
    and a
    jp nz, Jump_00d_55b0

    ld a, $01
    ld [$c72d], a
    ld hl, $582d
    call $3ad5
    ld a, [$d206]
    ld [$cf60], a
    call $3856
    ld a, [$d239]
    ld c, a
    push bc
    ld a, $00
    call Call_00d_55bd
    ld a, [hl]
    ld [$cf60], a
    call $3856
    ld a, [$d238]
    pop bc
    ld b, a
    push bc
    ld a, $1f
    call Call_00d_55bd
    ld a, [hl]
    ld e, a
    pop bc
    ld a, [$c611]
    ld d, a
    ret


Jump_00d_54ef:
    ld a, [$c66f]
    bit 2, a
    jr nz, jr_00d_5502

    xor a
    ld [$c67a], a
    ld [$d002], a
    ld [$c72d], a
    jr jr_00d_550d

jr_00d_5502:
    ld a, [$c67a]
    ld b, a
    ld a, [$d280]
    sub b
    ld [$d002], a

jr_00d_550d:
    ld a, [$d22d]
    dec a
    jr z, jr_00d_556b

    ld a, [$c2dc]
    and a
    jr nz, jr_00d_5532

    ld a, [$cfc0]
    and a
    jr nz, jr_00d_5532

    ld a, [$d002]
    ld c, a
    ld b, $00
    ld hl, $d281
    add hl, bc
    ld a, [hl]
    ld [$d265], a
    call $343b
    jr jr_00d_5544

jr_00d_5532:
    ld a, [$d002]
    ld hl, $d3ea
    ld bc, $000b
    call $30fe
    ld de, $d073
    call $3026

jr_00d_5544:
    ld a, $22
    call Call_00d_55bd
    ld a, [hl+]
    or [hl]
    jp z, Jump_00d_55b0

    ld a, [$d002]
    ld b, a
    ld a, [$c663]
    cp b
    ld hl, $d214
    jr z, jr_00d_5560

    ld a, $20
    call Call_00d_55bd

jr_00d_5560:
    ld a, [hl]
    and a
    jr nz, jr_00d_55b0

    ld a, $01
    ld [$c72d], a
    jr jr_00d_557d

jr_00d_556b:
    ld a, [$d206]
    ld [$d265], a
    call $343b
    ld hl, $582d
    call $3ad5
    jp Jump_00d_53f6


jr_00d_557d:
    ld hl, $582d
    call $3ad5
    ld a, [$c62c]
    ld [$cf60], a
    call $3856
    ld a, [$d239]
    ld c, a
    push bc
    ld a, $00
    call Call_00d_55bd
    ld a, [hl]
    ld [$cf60], a
    call $3856
    ld a, [$d238]
    pop bc
    ld b, a
    push bc
    ld a, $1f
    call Call_00d_55bd
    ld a, [hl]
    ld e, a
    pop bc
    ld a, [$c60a]
    ld d, a
    ret


Jump_00d_55b0:
jr_00d_55b0:
    ld b, $12
    jp Jump_00d_7e8c


Call_00d_55b5:
    ld a, [$c72d]
    and a
    ret nz

    jp Jump_00d_734e


Call_00d_55bd:
    push bc
    ld c, a
    ld b, $00
    ldh a, [$e4]
    and a
    ld hl, $dcdf
    jr z, jr_00d_55cc

    ld hl, $d288

jr_00d_55cc:
    ld a, [$d002]
    add hl, bc
    call $3927
    pop bc
    ret


    ld a, [$c667]
    and a
    ret z

    jp $397d


Call_00d_55dd:
    call $397d
    ldh a, [$e4]
    and a
    ld hl, $c642
    ld de, $c6ff
    ld a, [$c639]
    jr z, jr_00d_55f7

    ld hl, $d21c
    ld de, $c700
    ld a, [$d213]

jr_00d_55f7:
    push af
    ld a, [hl+]
    ld b, a
    ld c, [hl]
    ld a, [de]
    bit 4, a
    jr z, jr_00d_5604

    sla c
    rl b

jr_00d_5604:
    dec hl
    dec hl
    dec hl
    ld a, [hl+]
    ld l, [hl]
    ld h, a
    call Call_00d_534d
    ld d, $28
    pop af
    ld e, a
    ret


Call_00d_5612:
    ld a, $0d
    call $39e1
    cp $07
    jr nz, jr_00d_5620

    srl c
    jr nz, jr_00d_5620

    inc c

jr_00d_5620:
    cp $1d
    jr z, jr_00d_562b

    cp $1e
    jr z, jr_00d_562b

    ld a, d
    and a
    ret z

jr_00d_562b:
    ld a, c
    and a
    jr nz, jr_00d_5631

    ld c, $01

jr_00d_5631:
    xor a
    ld hl, $ffb3
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, e
    add a
    jr nc, jr_00d_563e

    ld [hl], $01

jr_00d_563e:
    inc hl
    ld [hl+], a
    ld a, $05
    ld [hl-], a
    push bc
    ld b, $04
    call $3124
    pop bc
    inc [hl]
    inc [hl]
    inc hl
    ld [hl], d
    call $3119
    ld [hl], b
    call $3119
    ld [hl], c
    ld b, $04
    call $3124
    ld [hl], $32
    ld b, $04
    call $3124
    call Call_00d_7db2
    ld a, b
    and a
    jr z, jr_00d_568f

    ld hl, $5703

jr_00d_566c:
    ld a, [hl+]
    cp $ff
    jr z, jr_00d_568f

    cp b
    ld a, [hl+]
    jr nz, jr_00d_566c

    ld b, a
    ld a, $0f
    call $39e1
    cp b
    jr nz, jr_00d_568f

    ld a, c
    add $64
    ldh [$b7], a
    call $3119
    ld a, $64
    ldh [$b7], a
    ld b, $04
    call $3124

jr_00d_568f:
    call Call_00d_56eb
    ld hl, $d256
    ld b, [hl]
    ldh a, [$b6]
    add b
    ldh [$b6], a
    jr nc, jr_00d_56a5

    ldh a, [$b5]
    inc a
    ldh [$b5], a
    and a
    jr z, jr_00d_56d9

jr_00d_56a5:
    ldh a, [$b3]
    ld b, a
    ldh a, [$b4]
    or a
    jr nz, jr_00d_56d9

    ldh a, [$b5]
    cp $03
    jr c, jr_00d_56bd

    cp $04
    jr nc, jr_00d_56d9

    ldh a, [$b6]
    cp $e6
    jr nc, jr_00d_56d9

jr_00d_56bd:
    inc hl
    ldh a, [$b6]
    ld b, [hl]
    add b
    ld [hl-], a
    ldh a, [$b5]
    ld b, [hl]
    adc b
    ld [hl], a
    jr c, jr_00d_56d9

    ld a, [hl]
    cp $03
    jr c, jr_00d_56df

    cp $04
    jr nc, jr_00d_56d9

    inc hl
    ld a, [hl-]
    cp $e6
    jr c, jr_00d_56df

jr_00d_56d9:
    ld a, $03
    ld [hl+], a
    ld a, $e5
    ld [hl-], a

jr_00d_56df:
    inc hl
    ld a, [hl]
    add $02
    ld [hl-], a
    jr nc, jr_00d_56e7

    inc [hl]

jr_00d_56e7:
    ld a, $01
    and a
    ret


Call_00d_56eb:
    ld a, [$c666]
    and a
    ret z

    ldh a, [$b6]
    add a
    ldh [$b6], a
    ldh a, [$b5]
    rl a
    ldh [$b5], a
    ret nc

    ld a, $ff
    ldh [$b5], a
    ldh [$b6], a
    ret


    ld [hl-], a
    nop
    inc sp
    ld bc, $0234
    dec [hl]
    inc bc
    ld [hl], $04
    scf
    dec b
    jr c, jr_00d_5718

    add hl, sp
    ld [$143a], sp
    dec sp
    dec d
    inc a

jr_00d_5718:
    ld d, $3d
    rla
    ld a, $18
    ccf
    add hl, de
    ld b, b
    ld a, [de]
    ld b, c
    dec de
    ld b, d
    add hl, bc
    rst $38
    ld hl, $c639
    ldh a, [$e4]
    and a
    jr z, jr_00d_5731

    ld hl, $d213

jr_00d_5731:
    ld a, $0d
    call $39e1
    cp $57
    ld b, [hl]
    ld a, $00
    jr z, jr_00d_578c

    ld a, $0d
    call $39e1
    cp $58
    jr z, jr_00d_5758

    cp $28
    jr z, jr_00d_576b

    cp $63
    jr z, jr_00d_5792

    ld a, $0e
    call $39e1
    ld b, a
    ld a, $00
    jr jr_00d_578c

jr_00d_5758:
    ld a, b
    srl a
    add b
    ld b, a

jr_00d_575d:
    call $2f9f
    and a
    jr z, jr_00d_575d

    cp b
    jr nc, jr_00d_575d

    ld b, a
    ld a, $00
    jr jr_00d_578c

jr_00d_576b:
    ld hl, $d216
    ldh a, [$e4]
    and a
    jr z, jr_00d_5776

    ld hl, $c63c

jr_00d_5776:
    ld a, [hl+]
    srl a
    ld b, a
    ld a, [hl]
    rr a
    push af
    ld a, b
    pop bc
    and a
    jr nz, jr_00d_578c

    or b
    ld a, $00
    jr nz, jr_00d_578c

    ld b, $01
    jr jr_00d_578c

jr_00d_578c:
    ld hl, $d256
    ld [hl+], a
    ld [hl], b
    ret


jr_00d_5792:
    ld hl, $c63c
    ldh a, [$e4]
    and a
    jr z, jr_00d_579d

    ld hl, $d216

jr_00d_579d:
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld a, [hl+]
    ldh [$b5], a
    ld a, [hl+]
    ldh [$b6], a
    ld a, $30
    ldh [$b7], a
    call $3119
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    ldh [$b7], a
    ld a, b
    and a
    jr z, jr_00d_57d6

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

jr_00d_57d6:
    ld b, $04
    call $3124
    ldh a, [$b6]
    ld b, a
    ld hl, $5807

jr_00d_57e1:
    ld a, [hl+]
    cp b
    jr nc, jr_00d_57e8

    inc hl
    jr jr_00d_57e1

jr_00d_57e8:
    ldh a, [$e4]
    and a
    ld a, [hl]
    jr nz, jr_00d_57f8

    ld hl, $c611
    ld [hl], a
    push hl
    call Call_00d_52e2
    jr jr_00d_5800

jr_00d_57f8:
    ld hl, $c60a
    ld [hl], a
    push hl
    call Call_00d_53f6

jr_00d_5800:
    call Call_00d_5612
    pop hl
    ld [hl], $01
    ret


    ld bc, $04c8
    sub [hl]
    add hl, bc
    ld h, h
    db $10
    ld d, b
    jr nz, @+$2a

    jr nc, jr_00d_5827

    ld a, $01
    ld [$c667], a
    ld a, $12
    call $39e1
    and a
    ret z

    ld b, a
    ld hl, $45ec
    ld a, $0f
    rst $08
    ld a, b

jr_00d_5827:
    cp $59
    ret z

    call Call_00d_4833
    ld a, [$d265]
    and a
    ret z

    call Call_00d_6abf
    ret z

    ld a, $12
    call $39e1
    dec a
    ld de, $d073
    call Call_00d_7ead
    ld a, [$d075]
    and a
    ret z

    ld a, [$d076]
    cp $14
    ret nc

    ld hl, $d256
    ld a, [hl+]
    or [hl]
    ret z

    ld a, [hl]
    add a
    ld [hl-], a
    ld a, [hl]
    adc a
    ld [hl], a
    jr nc, jr_00d_585f

    ld a, $ff
    ld [hl+], a
    ld [hl], a

jr_00d_585f:
    xor a
    ld [$c667], a
    ret


    ld hl, $d208
    ld de, $c67e
    ldh a, [$e4]
    and a
    jr z, jr_00d_5875

    ld hl, $c62e
    ld de, $c676

jr_00d_5875:
    ld a, $14
    call $39e1
    and a
    jp z, Jump_00d_5923

    cp $a5
    jp z, Jump_00d_5923

    cp $e3
    jp z, Jump_00d_5923

    cp $77
    jp z, Jump_00d_5923

    ld b, a

jr_00d_588e:
    ld a, [hl+]
    cp b
    jr nz, jr_00d_588e

    ld bc, $0005
    add hl, bc
    ld a, [hl]
    and $3f
    jp z, Jump_00d_5923

    ld a, [$c667]
    and a
    jp nz, Jump_00d_5923

    ld a, $09
    call $39e7
    bit 4, [hl]
    jp nz, Jump_00d_5923

    set 4, [hl]
    call $2f9f
    and $03
    inc a
    inc a
    inc a
    ld [de], a
    call Call_00d_6abf
    jr nz, jr_00d_591a

    ldh a, [$e4]
    and a
    jr z, jr_00d_58ef

    push hl
    ld a, [$c71b]
    ld b, a
    ld c, $00
    ld hl, $c62e

jr_00d_58cc:
    ld a, [hl+]
    cp b
    jr z, jr_00d_58dd

    inc c
    ld a, c
    cp $04
    jr c, jr_00d_58cc

    pop hl
    res 4, [hl]
    xor a
    ld [de], a
    jr jr_00d_5923

jr_00d_58dd:
    pop hl
    ld a, c
    ld [$d0d5], a
    ld a, b
    ld [$c6e3], a
    dec a
    ld de, $c60f
    call Call_00d_7ead
    jr jr_00d_591a

jr_00d_58ef:
    push hl
    ld a, [$c71c]
    ld b, a
    ld c, $00
    ld hl, $d208

jr_00d_58f9:
    ld a, [hl+]
    cp b
    jr z, jr_00d_590a

    inc c
    ld a, c
    cp $04
    jr c, jr_00d_58f9

    pop hl
    res 4, [hl]
    xor a
    ld [de], a
    jr jr_00d_5923

jr_00d_590a:
    pop hl
    ld a, c
    ld [$c6e9], a
    ld a, b
    ld [$c6e4], a
    dec a
    ld de, $c608
    call Call_00d_7ead

jr_00d_591a:
    call Call_00d_7e01
    ld hl, $5109
    jp $3ad5


Jump_00d_5923:
jr_00d_5923:
    jp Jump_00d_7366


    ld a, [$c667]
    and a
    jp nz, Jump_00d_59cd

    call Call_00d_7378
    jp nz, Jump_00d_59cd

    call Call_00d_7e01
    ld hl, $c63f
    ld de, $d219
    call Call_00d_597d
    ld a, $01
    ld [$d10a], a
    ld hl, $c55e
    ld a, $0b
    call $2d83
    ld hl, $d216
    ld a, [hl+]
    ld [$d1ed], a
    ld a, [hl+]
    ld [$d1ec], a
    ld a, [hl+]
    ld [$d1eb], a
    ld a, [hl]
    ld [$d1ea], a
    call Call_00d_59ac
    xor a
    ld [$d10a], a
    call $397d
    ld hl, $c4ca
    ld a, $0b
    call $2d83
    ld a, $5e
    ld hl, $4000
    rst $08
    ld hl, $511b
    jp $3ad5


Call_00d_597d:
    ld a, [hl-]
    ld [$d1ea], a
    ld a, [hl-]
    ld [$d1eb], a
    ld a, [hl-]
    ld b, a
    ld [$d1ec], a
    ld a, [hl]
    ld [$d1ed], a
    dec de
    dec de
    ld a, [de]
    dec de
    add b
    ld [$d257], a
    ld b, [hl]
    ld a, [de]
    adc b
    srl a
    ld [$d256], a
    ld a, [$d257]
    rr a
    ld [$d257], a
    inc hl
    inc hl
    inc hl
    inc de
    inc de
    inc de

Call_00d_59ac:
    ld c, [hl]
    dec hl
    ld a, [$d257]
    sub c
    ld b, [hl]
    dec hl
    ld a, [$d256]
    sbc b
    jr nc, jr_00d_59c2

    ld a, [$d256]
    ld b, a
    ld a, [$d257]
    ld c, a

jr_00d_59c2:
    ld a, c
    ld [hl-], a
    ld [$d1ee], a
    ld a, b
    ld [hl+], a
    ld [$d1ef], a
    ret


Jump_00d_59cd:
    jp Jump_00d_7366


    ld a, $0a
    call $39e1
    and $07
    ret nz

    call $397d
    ld a, $01
    ld [$c667], a
    call Call_00d_7354
    jp Jump_00d_52a3


    ld a, [$c667]
    and a
    jr nz, jr_00d_5a50

    ld hl, $c64a
    ldh a, [$e4]
    and a
    jr z, jr_00d_59f7

    ld hl, $d224

jr_00d_59f7:
    ld a, $12
    call $39e1
    and a
    jr z, jr_00d_5a50

    push hl
    dec a
    ld hl, $5afe
    call Call_00d_7ea1
    ld d, a
    pop hl
    cp $13
    jr z, jr_00d_5a50

    call Call_00d_7e01
    call Call_00d_4ffd

jr_00d_5a13:
    call $2f9f
    and $1f
    cp $0a
    jr c, jr_00d_5a24

    cp $14
    jr c, jr_00d_5a13

    cp $1c
    jr nc, jr_00d_5a13

jr_00d_5a24:
    ld [hl+], a
    ld [hl-], a
    push hl
    ld a, $0f
    call $39e7
    push af
    push hl
    ld a, d
    ld [hl], a
    call Call_00d_47c8
    pop hl
    pop af
    ld [hl], a
    pop hl
    ld a, [$d265]
    cp $0a
    jr nc, jr_00d_5a13

    call Call_00d_4ffd
    ld a, [hl]
    ld [$d265], a
    ld a, $29
    call $2d83
    ld hl, $5452
    jp $3ad5


jr_00d_5a50:
    jp Jump_00d_7354


    call Call_00d_7378
    jr nz, jr_00d_5a6e

    ld a, [$c667]
    and a
    jr nz, jr_00d_5a6e

    ld a, $09
    call $39e7
    set 5, [hl]
    call Call_00d_7e01
    ld hl, $5136
    jp $3ad5


jr_00d_5a6e:
    call Call_00d_7e77
    jp Jump_00d_7360


    call Call_00d_72d8
    ld a, [$c2dc]
    and a
    jr z, jr_00d_5a83

    call Call_00d_7e77
    jp Jump_00d_7343


jr_00d_5a83:
    call Call_00d_7378
    jp nz, Jump_00d_5b10

    ld a, $09
    call $39e7
    bit 3, [hl]
    jp nz, Jump_00d_5b10

    ld a, $02
    call $3945
    ld d, h
    ld e, l
    ld hl, $c62e
    ldh a, [$e4]
    and a
    jr z, jr_00d_5aa5

    ld hl, $d208

jr_00d_5aa5:
    ld a, $12
    call $39e1
    ld [$d265], a
    ld b, a
    and a
    jr z, jr_00d_5b10

    cp $a5
    jr z, jr_00d_5b10

    ld c, $04

jr_00d_5ab7:
    ld a, [hl+]
    cp b
    jr z, jr_00d_5b10

    dec c
    jr nz, jr_00d_5ab7

    dec hl
    ld c, $04

jr_00d_5ac1:
    dec c
    ld a, [hl-]
    cp $a6
    jr nz, jr_00d_5ac1

    inc hl
    ld a, b
    ld [hl], a
    push bc
    push hl
    dec a
    ld hl, $5b00
    call Call_00d_7ea1
    pop hl
    ld bc, $0006
    add hl, bc
    ld [hl], a
    pop bc
    ldh a, [$e4]
    and a
    jr z, jr_00d_5af6

    ld a, [$d22d]
    dec a
    jr nz, jr_00d_5af6

    ld a, [hl]
    push bc
    ld hl, $c739
    ld b, $00
    add hl, bc
    ld [hl], a
    ld hl, $c735
    add hl, bc
    pop bc
    ld [hl], b
    jr jr_00d_5b04

jr_00d_5af6:
    ld a, [hl]
    push af
    ld l, c
    ld h, $00
    add hl, de
    ld a, b
    ld [hl], a
    pop af
    ld de, $0015
    add hl, de
    ld [hl], a

jr_00d_5b04:
    call $34f8
    call Call_00d_7e01
    ld hl, $5143
    jp $3ad5


Jump_00d_5b10:
jr_00d_5b10:
    call Call_00d_7e77
    jp Jump_00d_7360


    call Call_00d_7e01
    ld a, $0b
    call $39e7
    call Call_00d_60dd
    ld a, $0d
    call $39e7
    ld a, [hl]
    push hl
    push af
    ld a, $0a
    ld [hl], a
    call Call_00d_61e4
    pop af
    pop hl
    ld [hl], a
    ret


    call Call_00d_72d8
    ld a, [$c667]
    and a
    jr nz, jr_00d_5ba3

    ldh a, [$e4]
    and a
    ld hl, $c62f
    ld a, [$c6f5]
    ld d, a
    jr z, jr_00d_5b4f

    ld hl, $d209
    ld a, [$c6f6]
    ld d, a

jr_00d_5b4f:
    ld a, $0a
    call $39e1
    and $07
    jr z, jr_00d_5ba3

    ld a, [hl]
    and a
    jr z, jr_00d_5ba3

    call Call_00d_5ba9
    jr c, jr_00d_5ba3

    dec hl

jr_00d_5b62:
    push hl
    call $2f9f
    and $03
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_00d_5b62

    ld e, a
    ld a, $0c
    call $39e1
    cp e
    jr z, jr_00d_5b62

    ld a, e
    cp d
    jr z, jr_00d_5b62

    call Call_00d_5bdf
    jr z, jr_00d_5b62

    ld a, $10
    call $39e7
    ld a, e
    ld [hl], a
    call Call_00d_4548
    jr nz, jr_00d_5b9a

    ld a, [$c689]
    push af
    call Call_00d_4eee
    pop af
    ld [$c689], a

jr_00d_5b9a:
    call Call_00d_7e36
    call Call_00d_5e40
    jp Jump_00d_747b


jr_00d_5ba3:
    call Call_00d_7e77
    jp Jump_00d_7349


Call_00d_5ba9:
    push hl
    push de
    push bc
    call Call_00d_5bb3
    pop bc
    pop de
    pop hl
    ret


Call_00d_5bb3:
    ldh a, [$e4]
    and a
    ld a, [$c6f5]
    jr z, jr_00d_5bbe

    ld a, [$c6f6]

jr_00d_5bbe:
    ld b, a
    ld a, $10
    call $39e1
    ld c, a
    dec hl
    ld d, $04

jr_00d_5bc8:
    ld a, [hl]
    and a
    jr z, jr_00d_5bdb

    cp c
    jr z, jr_00d_5bd7

    cp b
    jr z, jr_00d_5bd7

    call Call_00d_5bdf
    jr nz, jr_00d_5bdd

jr_00d_5bd7:
    inc hl
    dec d
    jr nz, jr_00d_5bc8

jr_00d_5bdb:
    scf
    ret


jr_00d_5bdd:
    and a
    ret


Call_00d_5bdf:
    push hl
    push de
    push bc
    ld b, a
    ld hl, $45ec
    ld a, $0f
    rst $08
    ld a, b
    pop bc
    pop de
    pop hl
    cp $91
    ret z

    cp $27
    ret z

    cp $4b
    ret z

    cp $97
    ret z

    cp $9b
    ret z

    cp $1a
    ret


    ld a, $04
    call $39e7
    set 6, [hl]
    call Call_00d_7e01
    ld hl, $5156
    jp $3ad5


    ld a, [$c667]
    and a
    jp nz, Jump_00d_5c91

    ld bc, $0030
    ld hl, $d208
    ldh a, [$e4]
    and a
    jr z, jr_00d_5c24

    ld hl, $c62e

jr_00d_5c24:
    ld a, $12
    call $39e1
    and a
    jr z, jr_00d_5c91

    cp $a5
    jr z, jr_00d_5c91

    ld b, a
    ld c, $ff

jr_00d_5c33:
    inc c
    ld a, [hl+]
    cp b
    jr nz, jr_00d_5c33

    ld [$d265], a
    dec hl
    ld b, $00
    push bc
    ld c, $06
    add hl, bc
    pop bc
    ld a, [hl]
    and $3f
    jr z, jr_00d_5c91

    push bc
    call $34f8
    call $2f9f
    and $03
    inc a
    inc a
    ld b, a
    ld a, [hl]
    and $3f
    cp b
    jr nc, jr_00d_5c5b

    ld b, a

jr_00d_5c5b:
    ld a, [hl]
    sub b
    ld [hl], a
    push af
    ld a, $17
    call $3951
    ld d, b
    pop af
    pop bc
    add hl, bc
    ld e, a
    ld a, $09
    call $39e1
    bit 3, a
    jr nz, jr_00d_5c82

    ldh a, [$e4]
    and a
    jr nz, jr_00d_5c81

    ld a, [$d22d]
    dec a
    jr nz, jr_00d_5c81

    ld hl, $c739
    add hl, bc

jr_00d_5c81:
    ld [hl], e

jr_00d_5c82:
    push de
    call Call_00d_7e01
    pop de
    ld a, d
    ld [$d265], a
    ld hl, $517f
    jp $3ad5


Jump_00d_5c91:
jr_00d_5c91:
    jp Jump_00d_7366


Call_00d_5c94:
    ld hl, $d216
    ldh a, [$e4]
    and a
    jr z, jr_00d_5c9f

    ld hl, $c63c

jr_00d_5c9f:
    ld de, $d256
    ld c, $02
    push hl
    push de
    call $31db
    pop de
    pop hl
    jr c, jr_00d_5cc7

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    dec a
    ld [de], a
    inc a
    jr nz, jr_00d_5cba

    dec de
    ld a, [de]
    dec a
    ld [de], a

jr_00d_5cba:
    ld a, [$c666]
    cp $02
    jr nz, jr_00d_5cc5

    xor a
    ld [$c666], a

jr_00d_5cc5:
    scf
    ret


jr_00d_5cc7:
    and a
    ret


    ld a, $00
    call $39e7
    res 0, [hl]
    ld de, $dcff
    ldh a, [$e4]
    and a
    jr z, jr_00d_5cdb

    ld de, $d2a8

jr_00d_5cdb:
    ld a, $0a
    call $39e7
    xor a
    ld [hl], a
    ld h, d
    ld l, e
    ld bc, $0030
    ld d, $06

jr_00d_5ce9:
    ld [hl], a
    add hl, bc
    dec d
    jr nz, jr_00d_5ce9

    call Call_00d_7e01
    ld hl, $51a0
    call $3ad5
    ldh a, [$e4]
    and a
    jp z, Jump_00d_65d7

    jp Jump_00d_65fd


Call_00d_5d00:
    ld a, $02
    call $39e1
    and $60
    ret nz

Call_00d_5d08:
Jump_00d_5d08:
    ld a, e
    ld [$cfc2], a
    ld a, d
    ld [$cfc3], a
    ld c, $03
    call $0468
    ld hl, $40d6
    ld a, $33
    rst $08
    ret


Call_00d_5d1c:
Jump_00d_5d1c:
    ld hl, $d256
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    or b
    jr z, jr_00d_5d7b

    ld a, c
    and a
    jr nz, jr_00d_5d31

    ld a, [$c670]
    bit 4, a
    jp nz, Jump_00d_5de0

jr_00d_5d31:
    ld a, [hl-]
    ld b, a
    ld a, [$d217]
    ld [$d1ec], a
    sub b
    ld [$d217], a
    ld a, [hl]
    ld b, a
    ld a, [$d216]
    ld [$d1ed], a
    sbc b
    ld [$d216], a
    jr nc, jr_00d_5d59

    ld a, [$d1ed]
    ld [hl+], a
    ld a, [$d1ec]
    ld [hl], a
    xor a
    ld hl, $d216
    ld [hl+], a
    ld [hl], a

jr_00d_5d59:
    ld hl, $d218
    ld a, [hl+]
    ld [$d1eb], a
    ld a, [hl]
    ld [$d1ea], a
    ld hl, $d216
    ld a, [hl+]
    ld [$d1ef], a
    ld a, [hl]
    ld [$d1ee], a
    ld hl, $c4ca
    xor a
    ld [$d10a], a
    ld a, $0b
    call $2d83

jr_00d_5d7b:
    jp $39c9


Call_00d_5d7e:
Jump_00d_5d7e:
    ld hl, $d256
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    or b
    jr z, jr_00d_5ddd

    ld a, c
    and a
    jr nz, jr_00d_5d93

    ld a, [$c66b]
    bit 4, a
    jp nz, Jump_00d_5de0

jr_00d_5d93:
    ld a, [hl-]
    ld b, a
    ld a, [$c63d]
    ld [$d1ec], a
    sub b
    ld [$c63d], a
    ld [$d1ee], a
    ld b, [hl]
    ld a, [$c63c]
    ld [$d1ed], a
    sbc b
    ld [$c63c], a
    ld [$d1ef], a
    jr nc, jr_00d_5dc5

    ld a, [$d1ed]
    ld [hl+], a
    ld a, [$d1ec]
    ld [hl], a
    xor a
    ld hl, $c63c
    ld [hl+], a
    ld [hl], a
    ld hl, $d1ee
    ld [hl+], a
    ld [hl], a

jr_00d_5dc5:
    ld hl, $c63e
    ld a, [hl+]
    ld [$d1eb], a
    ld a, [hl]
    ld [$d1ea], a
    ld hl, $c55e
    ld a, $01
    ld [$d10a], a
    ld a, $0b
    call $2d83

jr_00d_5ddd:
    jp $39c9


Jump_00d_5de0:
    ld hl, $53ad
    call $3ad5
    ld de, $c6e0
    ldh a, [$e4]
    and a
    jr z, jr_00d_5df1

    ld de, $c6df

jr_00d_5df1:
    ld hl, $d256
    ld a, [hl+]
    and a
    jr nz, jr_00d_5dff

    ld a, [de]
    sub [hl]
    ld [de], a
    jr z, jr_00d_5dff

    jr nc, jr_00d_5e3d

jr_00d_5dff:
    ld a, $08
    call $39e7
    res 4, [hl]
    ld hl, $53d0
    call $3ad5
    call Call_00d_4ffd
    call Call_00d_65c3
    ld a, $02
    call $39e1
    and $60
    call z, Call_00d_7ec7
    call Call_00d_4ffd
    ld a, $0d
    call $39e7
    cp $1d
    jr z, jr_00d_5e3a

    cp $2c
    jr z, jr_00d_5e3a

    cp $4d
    jr z, jr_00d_5e3a

    cp $68
    jr z, jr_00d_5e3a

    cp $9a
    jr z, jr_00d_5e3a

    xor a
    ld [hl], a

jr_00d_5e3a:
    call $39c9

jr_00d_5e3d:
    jp $397d


Call_00d_5e40:
    ld a, $0c
    call $39e7
    ld d, h
    ld e, l
    ld a, $10
    call $39e1
    ld [$cf60], a
    ld [$d265], a
    dec a
    call Call_00d_7ead
    call $34f8
    jp $30d6


    call Call_00d_7dc1
    ld a, b
    cp $17
    jr nz, jr_00d_5e70

    ld a, [hl]
    ld [$d265], a
    call $3468
    ld hl, $55a9
    jr jr_00d_5ec6

jr_00d_5e70:
    ld a, $0b
    call $39e7
    ld d, h
    ld e, l
    ld a, [de]
    and $07
    ld hl, $51c1
    jr nz, jr_00d_5ec6

    ld a, [$c667]
    and a
    jp nz, Jump_00d_7366

    ld hl, $550c
    call Call_00d_5ece
    jr c, jr_00d_5ec6

    ld a, [de]
    and a
    jr nz, jr_00d_5ec6

    call Call_00d_7378
    jr nz, jr_00d_5ec6

    call Call_00d_7e01
    ld b, $07
    ld a, [$cfc0]
    and a
    jr z, jr_00d_5ea4

    ld b, $03

jr_00d_5ea4:
    call $2f9f
    and b
    jr z, jr_00d_5ea4

    cp $07
    jr z, jr_00d_5ea4

    inc a
    ld [de], a
    call $398e
    call $39c9
    ld hl, $51b1
    call $3ad5
    ld a, $0f
    ld hl, $5de9
    rst $08
    jp z, Jump_00d_4216

    ret


jr_00d_5ec6:
    push hl
    call Call_00d_7e77
    pop hl
    jp $3ad5


Call_00d_5ece:
    ldh a, [$e4]
    and a
    jr z, jr_00d_5eec

    ld a, [$c2dc]
    and a
    jr nz, jr_00d_5eec

    ld a, [$cfc0]
    and a
    jr nz, jr_00d_5eec

    ld a, [$c66c]
    bit 5, a
    jr nz, jr_00d_5eec

    call $2f9f
    cp $40
    ret c

jr_00d_5eec:
    xor a
    ret


    call Call_00d_7378
    ret nz

    ld a, $0b
    call $39e7
    and a
    ret nz

    ld a, [$c665]
    and $7f
    ret z

    call Call_00d_5fe1
    ret z

    call Call_00d_7dc1
    ld a, b
    cp $14
    ret z

    ld a, [$c70d]
    and a
    ret nz

    call Call_00d_7962
    ret nz

    call Call_00d_5ff5
    ld de, $0106
    call Call_00d_7e54
    call $39c9
    ld hl, $51d5
    call $3ad5
    ld a, $0f
    ld hl, $5de9
    rst $08
    ret


    ld hl, $5071
    ld a, [$c665]
    and $7f
    jp z, Jump_00d_5fb8

    call Call_00d_5fe1
    jp z, Jump_00d_5fb8

    ld a, $0b
    call $39e1
    ld b, a
    ld hl, $51fa
    and $08
    jp nz, Jump_00d_5fb8

    call Call_00d_7dc1
    ld a, b
    cp $14
    jr nz, jr_00d_5f5f

    ld a, [hl]
    ld [$d265], a
    call $3468
    ld hl, $55a9
    jr jr_00d_5fb8

jr_00d_5f5f:
    ld hl, $550c
    ld a, $0b
    call $39e1
    and a
    jr nz, jr_00d_5fb8

    ldh a, [$e4]
    and a
    jr z, jr_00d_5f89

    ld a, [$c2dc]
    and a
    jr nz, jr_00d_5f89

    ld a, [$cfc0]
    and a
    jr nz, jr_00d_5f89

    ld a, [$c66c]
    bit 5, a
    jr nz, jr_00d_5f89

    call $2f9f
    cp $40
    jr c, jr_00d_5fb8

jr_00d_5f89:
    call Call_00d_7378
    jr nz, jr_00d_5fb8

    ld a, [$c667]
    and a
    jr nz, jr_00d_5fb8

    call Call_00d_5fc9
    jr z, jr_00d_5fa4

    call Call_00d_5fc0
    ld hl, $51d5
    call $3ad5
    jr jr_00d_5fb1

jr_00d_5fa4:
    set 0, [hl]
    xor a
    ld [de], a
    call Call_00d_5fc0
    ld hl, $51e6
    call $3ad5

jr_00d_5fb1:
    ld a, $0f
    ld hl, $5de9
    rst $08
    ret


Jump_00d_5fb8:
jr_00d_5fb8:
    push hl
    call Call_00d_7e77
    pop hl
    jp $3ad5


Call_00d_5fc0:
    call Call_00d_7e01
    call Call_00d_5ff5
    jp $39c9


Call_00d_5fc9:
    ld a, $09
    call $39e7
    ldh a, [$e4]
    and a
    ld de, $c67c
    jr z, jr_00d_5fd9

    ld de, $c674

jr_00d_5fd9:
    ld a, $0d
    call $39e1
    cp $21
    ret


Call_00d_5fe1:
    ld de, $d224
    ldh a, [$e4]
    and a
    jr z, jr_00d_5fec

    ld de, $c64a

jr_00d_5fec:
    ld a, [de]
    inc de
    cp $03
    ret z

    ld a, [de]
    cp $03
    ret


Call_00d_5ff5:
    ld a, $0b
    call $39e7
    set 3, [hl]
    jp $398e


    call Call_00d_6011
    ld hl, $5210
    jp $3ad5


    call Call_00d_6011
    ld hl, $5227
    jp $3ad5


Call_00d_6011:
    ld hl, $d256
    ld a, [hl+]
    srl a
    ldh [$b3], a
    ld b, a
    ld a, [hl]
    rr a
    ldh [$b4], a
    or b
    jr nz, jr_00d_6026

    ld a, $01
    ldh [$b4], a

jr_00d_6026:
    ld hl, $c63c
    ld de, $c63e
    ldh a, [$e4]
    and a
    jr z, jr_00d_6037

    ld hl, $d216
    ld de, $d218

jr_00d_6037:
    ld bc, $d1ed
    ld a, [hl+]
    ld [bc], a
    ld a, [hl]
    dec bc
    ld [bc], a
    ld a, [de]
    dec bc
    ld [bc], a
    inc de
    ld a, [de]
    dec bc
    ld [bc], a
    ldh a, [$b4]
    ld b, [hl]
    add b
    ld [hl-], a
    ld [$d1ee], a
    ldh a, [$b3]
    ld b, [hl]
    adc b
    ld [hl+], a
    ld [$d1ef], a
    jr c, jr_00d_6064

    ld a, [hl-]
    ld b, a
    ld a, [de]
    dec de
    sub b
    ld a, [hl+]
    ld b, a
    ld a, [de]
    inc de
    sbc b
    jr nc, jr_00d_6070

jr_00d_6064:
    ld a, [de]
    ld [hl-], a
    ld [$d1ee], a
    dec de
    ld a, [de]
    ld [hl+], a
    ld [$d1ef], a
    inc de

jr_00d_6070:
    ldh a, [$e4]
    and a
    ld hl, $c55e
    ld a, $01
    jr z, jr_00d_607e

    ld hl, $c4ca
    xor a

jr_00d_607e:
    ld [$d10a], a
    ld a, $0b
    call $2d83
    call $39c9
    jp $399c


    xor a
    ld [$cfca], a
    call Call_00d_7378
    ret nz

    ld a, $0b
    call $39e7
    and a
    jp nz, Jump_00d_60dd

    ld a, [$c665]
    and $7f
    ret z

    call Call_00d_6e5b
    ret z

    call Call_00d_7dc1
    ld a, b
    cp $15
    ret z

    ld a, [$c70d]
    and a
    ret nz

    call Call_00d_7962
    ret nz

    ld a, $0b
    call $39e7
    set 4, [hl]
    call $398e
    ld hl, $6c76
    call Call_00d_7e73
    ld de, $0105
    call Call_00d_7e54
    call $39c9
    ld hl, $523c
    call $3ad5
    ld a, $0f
    ld hl, $5de9
    rst $08
    ret


Call_00d_60dd:
Jump_00d_60dd:
    ld a, [hl]
    and $20
    ret z

    xor a
    ld [hl], a
    ldh a, [$e4]
    and a
    ld a, [$c663]
    ld hl, $d2a8
    jr z, jr_00d_60f4

    ld hl, $dcff
    ld a, [$d0d4]

jr_00d_60f4:
    call $3927
    xor a
    ld [hl], a
    call $398e
    ld hl, $524b
    jp $3ad5


    xor a
    ld [$cfca], a
    call Call_00d_7378
    ret nz

    ld a, $0b
    call $39e7
    and a
    ret nz

    ld a, [$c665]
    and $7f
    ret z

    ld a, [$c70a]
    cp $02
    ret z

    call Call_00d_6e5b
    ret z

    call Call_00d_7dc1
    ld a, b
    cp $16
    ret z

    ld a, [$c70d]
    and a
    ret nz

    call Call_00d_7962
    ret nz

    ld a, $0b
    call $39e7
    set 5, [hl]
    call $398e
    ld de, $0108
    call Call_00d_7e54
    call $39c9
    ld hl, $525d
    call $3ad5
    ld a, $0f
    ld hl, $5de9
    rst $08
    ret nz

    call Call_00d_4216
    call Call_00d_6f13
    ld hl, $c740
    ldh a, [$e4]
    and a
    jr z, jr_00d_6162

    ld hl, $c73f

jr_00d_6162:
    ld [hl], $01
    ret


    xor a
    ld [$cfca], a
    call Call_00d_7378
    ret nz

    ld a, $0b
    call $39e7
    and a
    ret nz

    ld a, [$c665]
    and $7f
    ret z

    call Call_00d_7dc1
    ld a, b
    cp $18
    ret z

    ld a, [$c70d]
    and a
    ret nz

    call Call_00d_7962
    ret nz

    ld a, $0b
    call $39e7
    set 6, [hl]
    call $398e
    ld hl, $6c39
    call Call_00d_7e73
    ld de, $0109
    call Call_00d_7e54
    call $39c9
    call Call_00d_7372
    ld hl, $5de9
    jp Jump_00d_7e73


Call_00d_61ac:
    ld b, $00
    jr jr_00d_61e4

Call_00d_61b0:
    ld b, $01
    jr jr_00d_61e4

Call_00d_61b4:
    ld b, $02
    jr jr_00d_61e4

Call_00d_61b8:
    ld b, $03
    jr jr_00d_61e4

Call_00d_61bc:
    ld b, $04
    jr jr_00d_61e4

    ld b, $05
    jr jr_00d_61e4

    ld b, $06
    jr jr_00d_61e4

Call_00d_61c8:
    ld b, $10
    jr jr_00d_61e4

    ld b, $11
    jr jr_00d_61e4

    ld b, $12
    jr jr_00d_61e4

    ld b, $13
    jr jr_00d_61e4

    ld b, $14
    jr jr_00d_61e4

    ld b, $15
    jr jr_00d_61e4

    ld b, $16
    jr jr_00d_61e4

Call_00d_61e4:
jr_00d_61e4:
    call Call_00d_61ef
    ld a, [$c70e]
    and a
    ret nz

    jp Jump_00d_6281


Call_00d_61ef:
    ld a, b
    ld [$c70c], a
    ld hl, $c6cc
    ldh a, [$e4]
    and a
    jr z, jr_00d_61fe

    ld hl, $c6d4

jr_00d_61fe:
    ld a, [$c667]
    and a
    jp nz, Jump_00d_627b

    ld a, [$c70d]
    and a
    jp nz, Jump_00d_627b

    ld a, [$c70c]
    and $0f
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    inc b
    ld a, $0d
    cp b
    jp c, Jump_00d_6270

    ld a, [$c70c]
    and $f0
    jr z, jr_00d_622b

    inc b
    ld a, $0d
    cp b
    jr nc, jr_00d_622b

    ld b, a

jr_00d_622b:
    ld [hl], b
    push hl
    ld a, c
    cp $05
    jr nc, jr_00d_6268

    ld hl, $c641
    ld de, $c6b6
    ldh a, [$e4]
    and a
    jr z, jr_00d_6243

    ld hl, $d21b
    ld de, $c6c1

jr_00d_6243:
    push bc
    sla c
    ld b, $00
    add hl, bc
    ld a, c
    add e
    ld e, a
    jr nc, jr_00d_624f

    inc d

jr_00d_624f:
    pop bc
    ld a, [hl-]
    sub $e7
    jr nz, jr_00d_625b

    ld a, [hl]
    sbc $03
    jp z, Jump_00d_626e

jr_00d_625b:
    ldh a, [$e4]
    and a
    jr z, jr_00d_6265

    call Call_00d_65fd
    jr jr_00d_6268

jr_00d_6265:
    call Call_00d_65d7

jr_00d_6268:
    pop hl
    xor a
    ld [$c70e], a
    ret


Jump_00d_626e:
    pop hl
    dec [hl]

Jump_00d_6270:
    ld a, $02
    ld [$c70e], a
    ld a, $01
    ld [$c667], a
    ret


Jump_00d_627b:
    ld a, $01
    ld [$c70e], a
    ret


Jump_00d_6281:
    ld bc, $c6fe
    ld hl, $7447
    ldh a, [$e4]
    and a
    jr z, jr_00d_6292

    ld bc, $c6fa
    ld hl, $7486

jr_00d_6292:
    ld a, $0c
    call $39e1
    cp $6b
    ret nz

    ld a, $01
    ld [bc], a
    call Call_00d_7ed5
    ret nc

    xor a
    ldh [$d4], a
    call Call_00d_7e73
    call $31f6
    jp Jump_00d_7e80


    ld a, $00
    jr jr_00d_62e3

    ld a, $01
    jr jr_00d_62e3

    ld a, $02
    jr jr_00d_62e3

    ld a, $03
    jr jr_00d_62e3

    ld a, $04
    jr jr_00d_62e3

    ld a, $05
    jr jr_00d_62e3

    ld a, $06
    jr jr_00d_62e3

    ld a, $10
    jr jr_00d_62e3

    ld a, $11
    jr jr_00d_62e3

    ld a, $12
    jr jr_00d_62e3

    ld a, $13
    jr jr_00d_62e3

    ld a, $14
    jr jr_00d_62e3

    ld a, $15
    jr jr_00d_62e3

    ld a, $16

jr_00d_62e3:
    ld [$c70c], a
    call Call_00d_6391
    jp nz, Jump_00d_6386

    ld hl, $c6d4
    ldh a, [$e4]
    and a
    jr z, jr_00d_62f7

    ld hl, $c6cc

jr_00d_62f7:
    ld a, [$c70c]
    and $0f
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    dec b
    jp z, Jump_00d_6372

    ld a, [$c70c]
    and $f0
    jr z, jr_00d_6310

    dec b
    jr nz, jr_00d_6310

    inc b

jr_00d_6310:
    ldh a, [$e4]
    and a
    jr z, jr_00d_6338

    ld a, [$c2dc]
    and a
    jr nz, jr_00d_6338

    ld a, [$cfc0]
    and a
    jr nz, jr_00d_6338

    ld a, [$c66c]
    bit 5, a
    jr nz, jr_00d_6338

    ld a, $0d
    call $39e1
    cp $49
    jr z, jr_00d_6338

    call $2f9f
    cp $40
    jr c, jr_00d_637d

jr_00d_6338:
    call Call_00d_7378
    jr nz, jr_00d_637d

    ld a, [$c667]
    and a
    jr nz, jr_00d_637d

    ld a, [$c70d]
    and a
    jr nz, jr_00d_637d

    call Call_00d_7daa
    jr nz, jr_00d_637d

    ld [hl], b
    ld a, c
    cp $05
    jr nc, jr_00d_636c

    push hl
    ld hl, $d21b
    ld de, $c6c1
    ldh a, [$e4]
    and a
    jr z, jr_00d_6366

    ld hl, $c641
    ld de, $c6b6

jr_00d_6366:
    call Call_00d_641a
    pop hl
    jr z, jr_00d_6371

jr_00d_636c:
    xor a
    ld [$c70e], a
    ret


jr_00d_6371:
    inc [hl]

Jump_00d_6372:
    ld a, $03
    ld [$c70e], a
    ld a, $01
    ld [$c667], a
    ret


jr_00d_637d:
    ld a, $01
    ld [$c70e], a
    ld [$c667], a
    ret


Jump_00d_6386:
    ld a, $02
    ld [$c70e], a
    ld a, $01
    ld [$c667], a
    ret


Call_00d_6391:
    ld a, $0d
    call $39e1
    cp $12
    jr c, jr_00d_63ae

    cp $19
    jr c, jr_00d_63b0

    cp $3a
    jr c, jr_00d_63ae

    cp $41
    jr c, jr_00d_63b0

    cp $44
    jr c, jr_00d_63ae

    cp $4b
    jr c, jr_00d_63b0

jr_00d_63ae:
    xor a
    ret


jr_00d_63b0:
    ld a, $08
    call $39e1
    bit 1, a
    ret


Call_00d_63b8:
Jump_00d_63b8:
    ld a, [$c70e]
    and a
    ret nz

    ld a, [$c70c]
    and $0f
    ld b, a
    inc b
    call Call_00d_648f
    ld hl, $63cd
    jp $3ac3


    ld d, $c6
    ld c, h
    ld [hl], b
    ld [$e421], sp
    ld h, e
    ld a, [$c70c]
    and $f0
    ret z

    ld hl, $63df
    ret


    ld d, $d0
    ld c, h
    ld [hl], b
    ld d, b
    ld d, $e0
    ld c, h
    ld [hl], b
    ld d, b

Call_00d_63e9:
    ld a, [$c70e]
    and a
    ret nz

    ld a, [$c70c]
    and $0f
    ld b, a
    inc b
    call Call_00d_648f
    ld hl, $63fe
    jp $3ac3


    ld d, $eb
    ld c, h
    ld [hl], b
    ld [$1521], sp
    ld h, h
    ld a, [$c70c]
    and $f0
    ret z

    ld hl, $6410
    ret


    ld d, $f5
    ld c, h
    ld [hl], b
    ld d, b
    ld d, $06
    ld c, l
    ld [hl], b
    ld d, b

Call_00d_641a:
    push bc
    sla c
    ld b, $00
    add hl, bc
    ld a, c
    add e
    ld e, a
    jr nc, jr_00d_6426

    inc d

jr_00d_6426:
    pop bc
    ld a, [hl-]
    sub $01
    jr nz, jr_00d_642f

    ld a, [hl]
    and a
    ret z

jr_00d_642f:
    ldh a, [$e4]
    and a
    jr z, jr_00d_643f

    call Call_00d_4ffd
    call Call_00d_65d7
    call Call_00d_4ffd
    jr jr_00d_6448

jr_00d_643f:
    call Call_00d_4ffd
    call Call_00d_65fd
    call Call_00d_4ffd

jr_00d_6448:
    ld a, $01
    and a
    ret


    ld a, [$c70e]
    and a
    ret z

    push af
    call Call_00d_7e80
    pop af
    dec a
    jp z, Jump_00d_7349

    ld a, [$c70c]
    and $0f
    ld b, a
    inc b
    call Call_00d_648f
    ld hl, $5272
    jp $3ad5


    ld a, [$c70e]
    and a
    ret z

    push af
    call Call_00d_7e80
    pop af
    dec a
    jp z, Jump_00d_7349

    dec a
    ld hl, $5321
    jp z, $3ad5

    ld a, [$c70c]
    and $0f
    ld b, a
    inc b
    call Call_00d_648f
    ld hl, $528f
    jp $3ad5


Call_00d_648f:
    ld hl, $64a6
    ld c, $50

jr_00d_6494:
    dec b
    jr z, jr_00d_649d

jr_00d_6497:
    ld a, [hl+]
    cp c
    jr z, jr_00d_6494

    jr jr_00d_6497

jr_00d_649d:
    ld de, $d086
    ld bc, $0013
    jp $3026


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
    add d
    adc e
    add sp, -$80
    sub e
    adc d
    ld d, b
    sub d
    adc a
    add d
    adc e
    add sp, -$7d
    add h
    add l
    ld d, b
    add b
    add d
    add d
    sub h
    sub c
    add b
    add d
    sbc b
    ld d, b
    add h
    sub l
    add b
    sub d
    adc b
    adc [hl]
    adc l
    ld d, b
    add b
    add c
    adc b
    adc e
    adc b
    sub e
    sbc b
    ld d, b
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
    ld bc, $2dcd
    ld h, l
    call Call_00d_61ac
    call Call_00d_63b8
    call Call_00d_652d
    call Call_00d_61b0
    call Call_00d_63b8
    call Call_00d_652d
    call Call_00d_61b4
    call Call_00d_63b8
    call Call_00d_652d
    call Call_00d_61b8
    call Call_00d_63b8
    call Call_00d_652d
    call Call_00d_61bc
    jp Jump_00d_63b8


Call_00d_652d:
    xor a
    ld [$c667], a
    ret


Call_00d_6532:
    ld [$c70c], a
    ld hl, $c6cc
    ldh a, [$e4]
    and a
    jr z, jr_00d_6540

    ld hl, $c6d4

jr_00d_6540:
    ld a, [$c70c]
    and $0f
    ld c, a
    ld b, $00
    add hl, bc
    ld b, [hl]
    dec b
    jr z, jr_00d_6589

    ld a, [$c70c]
    and $f0
    jr z, jr_00d_6558

    dec b
    jr nz, jr_00d_6558

    inc b

jr_00d_6558:
    ld [hl], b
    ld a, c
    cp $05
    jr nc, jr_00d_6576

    push hl
    ld hl, $c641
    ld de, $c6b6
    ldh a, [$e4]
    and a
    jr z, jr_00d_6570

    ld hl, $d21b
    ld de, $c6c1

jr_00d_6570:
    call Call_00d_641a
    pop hl
    jr z, jr_00d_6588

jr_00d_6576:
    ldh a, [$e4]
    and a
    jr z, jr_00d_6580

    call Call_00d_65fd
    jr jr_00d_6583

jr_00d_6580:
    call Call_00d_65d7

jr_00d_6583:
    xor a
    ld [$c70e], a
    ret


jr_00d_6588:
    inc [hl]

jr_00d_6589:
    ld a, $02
    ld [$c70e], a
    ret


    call $4ecc

jr_00d_6592:
    call $2f9f
    swap a
    and $03
    jr z, jr_00d_6592

    dec a
    ld hl, $65a1
    rst $28
    ret


    ld h, l
    ld h, c
    ld [bc], a
    ld h, c
    adc h
    ld h, b
    ld a, $01
    call $39e7
    set 0, [hl]
    ret


Call_00d_65af:
Jump_00d_65af:
    ld hl, $743d
    ldh a, [$e4]
    and a
    jr z, jr_00d_65ba

    ld hl, $747c

jr_00d_65ba:
    xor a
    ldh [$d4], a
    call Call_00d_7e73
    jp $31f6


Call_00d_65c3:
    ld hl, $7447
    ldh a, [$e4]
    and a
    jr z, jr_00d_65ce

    ld hl, $7486

jr_00d_65ce:
    xor a
    ldh [$d4], a
    call Call_00d_7e73
    jp $31f6


Call_00d_65d7:
Jump_00d_65d7:
    ld hl, $c6cc
    ld de, $c6b6
    ld bc, $c640
    ld a, $05
    call Call_00d_661d
    ld hl, $6d45
    call Call_00d_7e73
    call Call_00d_4ffd
    ld hl, $6c39
    call Call_00d_7e73
    ld hl, $6c76
    call Call_00d_7e73
    jp Jump_00d_4ffd


Call_00d_65fd:
Jump_00d_65fd:
    ld hl, $c6d4
    ld de, $c6c1
    ld bc, $d21a
    ld a, $05
    call Call_00d_661d
    call Call_00d_4ffd
    ld hl, $6c39
    call Call_00d_7e73
    ld hl, $6c76
    call Call_00d_7e73
    jp Jump_00d_4ffd


Call_00d_661d:
jr_00d_661d:
    push af
    ld a, [hl+]
    push hl
    push bc
    ld c, a
    dec c
    ld b, $00
    ld hl, $64e6
    add hl, bc
    add hl, bc
    xor a
    ldh [$b4], a
    ld a, [de]
    ldh [$b5], a
    inc de
    ld a, [de]
    ldh [$b6], a
    inc de
    ld a, [hl+]
    ldh [$b7], a
    call $3119
    ld a, [hl]
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b5]
    ld b, a
    ldh a, [$b6]
    or b
    jr nz, jr_00d_6651

    ld a, $01
    ldh [$b6], a
    jr jr_00d_6662

jr_00d_6651:
    ldh a, [$b6]
    cp $e7
    ld a, b
    sbc $03
    jr c, jr_00d_6662

    ld a, $e7
    ldh [$b6], a
    ld a, $03
    ldh [$b5], a

jr_00d_6662:
    pop bc
    ldh a, [$b5]
    ld [bc], a
    inc bc
    ldh a, [$b6]
    ld [bc], a
    inc bc
    pop hl
    pop af
    dec a
    jr nz, jr_00d_661d

    ret


    ld a, $02
    call $39e1
    bit 0, a
    ret z

    ld hl, $c672
    ldh a, [$e4]
    and a
    jr z, jr_00d_6684

    ld hl, $c67a

jr_00d_6684:
    dec [hl]
    jr nz, jr_00d_66dc

    ld a, $02
    call $39e7
    res 0, [hl]
    ld hl, $4e84
    call $3ad5
    ld a, $0e
    call $39e7
    ld a, $01
    ld [hl], a
    ld hl, $c683
    ld de, $c732
    ldh a, [$e4]
    and a
    jr z, jr_00d_66ad

    ld hl, $c685
    ld de, $c733

jr_00d_66ad:
    ld a, [hl-]
    add a
    ld b, a
    ld [$d257], a
    ld a, [hl]
    rl a
    ld [$d256], a
    jr nc, jr_00d_66c3

    ld a, $ff
    ld [$d256], a
    ld [$d257], a

jr_00d_66c3:
    or b
    jr nz, jr_00d_66cb

    ld a, $01
    ld [$c667], a

jr_00d_66cb:
    xor a
    ld [hl+], a
    ld [hl], a
    ld [de], a
    ld a, $0c
    call $39e7
    ld a, $75
    ld [hl], a
    ld b, $22
    jp Jump_00d_7e8c


jr_00d_66dc:
    ld hl, $4e6e
    call $3ad5
    jp Jump_00d_52a3


    ld de, $c682
    ld bc, $c672
    ldh a, [$e4]
    and a
    jr z, jr_00d_66f6

    ld de, $c684
    ld bc, $c67a

jr_00d_66f6:
    ld a, $02
    call $39e7
    set 0, [hl]
    xor a
    ld [de], a
    inc de
    ld [de], a
    ld [$c610], a
    ld [$c609], a
    call $2f9f
    and $01
    inc a
    inc a
    ld [bc], a
    ld a, $01
    ld [$c689], a
    call Call_00d_7e01
    jp Jump_00d_52a3


    ld de, $c672
    ldh a, [$e4]
    and a
    jr z, jr_00d_6725

    ld de, $c67a

jr_00d_6725:
    ld a, $02
    call $39e7
    bit 1, [hl]
    ret z

    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_00d_674c

    res 1, [hl]
    call Call_00d_4ffd
    call Call_00d_7962
    push af
    call Call_00d_4ffd
    pop af
    jr nz, jr_00d_674c

    set 7, [hl]
    call $2f9f
    and $01
    inc a
    inc a
    inc de
    ld [de], a

jr_00d_674c:
    ld b, $3d
    jp Jump_00d_7e8c


    ld a, $0a
    call $39e1
    and $07
    ret nz

    ld de, $c672
    ldh a, [$e4]
    and a
    jr z, jr_00d_6764

    ld de, $c67a

jr_00d_6764:
    ld a, $02
    call $39e7
    set 1, [hl]
    call $2f9f
    and $01
    inc a
    ld [de], a
    ld a, $01
    ld [$c73e], a
    ret


    ld a, [$d230]
    cp $07
    jr z, jr_00d_67b9

    cp $09
    jr z, jr_00d_67b9

    cp $0b
    jr z, jr_00d_67b9

    cp $0c
    jr z, jr_00d_67b9

    ld a, $09
    call $39e1
    bit 7, a
    jr nz, jr_00d_67b9

    ldh a, [$e4]
    and a
    jr nz, jr_00d_67bf

    ld a, [$d22d]
    dec a
    jr nz, jr_00d_67b9

    ld a, [$d143]
    ld b, a
    ld a, [$c639]
    cp b
    jr nc, jr_00d_67df

    add b
    ld c, a
    inc c

jr_00d_67ac:
    call $2f9f
    cp c
    jr nc, jr_00d_67ac

    srl b
    srl b
    cp b
    jr nc, jr_00d_67df

jr_00d_67b9:
    call Call_00d_7e77
    jp Jump_00d_734e


jr_00d_67bf:
    ld a, [$d22d]
    dec a
    jr nz, jr_00d_67b9

    ld a, [$c639]
    ld b, a
    ld a, [$d143]
    cp b
    jr nc, jr_00d_67df

    add b
    ld c, a
    inc c

jr_00d_67d2:
    call $2f9f
    cp c
    jr nc, jr_00d_67d2

    srl b
    srl b
    cp b
    jr nc, jr_00d_67df

jr_00d_67df:
    call $399c
    xor a
    ld [$cfca], a
    inc a
    ld [$d232], a
    ld [$c689], a
    call Call_00d_6804
    call Call_00d_4eee
    call Call_00d_7e36
    ld c, $14
    call $0468
    call Call_00d_6804
    ld hl, $52ac
    jp $3ad5


Call_00d_6804:
    ld a, [$d0ee]
    and $c0
    or $02
    ld [$d0ee], a
    ret


    ld a, [$d230]
    cp $07
    jp z, Jump_00d_6969

    cp $09
    jp z, Jump_00d_6969

    cp $0b
    jp z, Jump_00d_6969

    cp $0c
    jp z, Jump_00d_6969

    ldh a, [$e4]
    and a
    jp nz, Jump_00d_68cd

    ld a, [$c667]
    and a
    jr nz, jr_00d_6852

    ld a, [$d22d]
    dec a
    jr nz, jr_00d_6869

    ld a, [$d143]
    ld b, a
    ld a, [$c639]
    cp b
    jr nc, jr_00d_6855

    add b
    ld c, a
    inc c

jr_00d_6845:
    call $2f9f
    cp c
    jr nc, jr_00d_6845

    srl b
    srl b
    cp b
    jr nc, jr_00d_6855

jr_00d_6852:
    jp Jump_00d_6969


jr_00d_6855:
    call $399c
    xor a
    ld [$cfca], a
    inc a
    ld [$d232], a
    call Call_00d_6804
    ld a, [$c60f]
    jp Jump_00d_6975


jr_00d_6869:
    call Call_00d_49f4
    jr c, jr_00d_68ca

    ld a, [$c70f]
    and a
    jr z, jr_00d_68ca

    call $39b0
    ld a, $01
    ld [$c689], a
    call Call_00d_7e01
    ld c, $14
    call $0468
    ld hl, $c4a1
    ld bc, $040a
    call $0fb6
    ld c, $14
    call $0468
    ld a, [$d280]
    ld b, a
    ld a, [$c663]
    ld c, a

jr_00d_689a:
    call $2f9f
    and $07
    cp b
    jr nc, jr_00d_689a

    cp c
    jr z, jr_00d_689a

    push af
    push bc
    ld hl, $d2aa
    call $3927
    ld a, [hl+]
    or [hl]
    pop bc
    pop de
    jr z, jr_00d_689a

    ld a, d
    inc a
    ld [$c718], a
    ld hl, $54c3
    ld a, $0f
    rst $08
    ld hl, $5544
    call $3ad5
    ld hl, $5c23
    jp Jump_00d_7e73


jr_00d_68ca:
    jp Jump_00d_6969


Jump_00d_68cd:
    ld a, [$c667]
    and a
    jr nz, jr_00d_68f3

    ld a, [$d22d]
    dec a
    jr nz, jr_00d_6908

    ld a, [$c639]
    ld b, a
    ld a, [$d143]
    cp b
    jr nc, jr_00d_68f5

    add b
    ld c, a
    inc c

jr_00d_68e6:
    call $2f9f
    cp c
    jr nc, jr_00d_68e6

    srl b
    srl b
    cp b
    jr nc, jr_00d_68f5

jr_00d_68f3:
    jr jr_00d_6969

jr_00d_68f5:
    call $399c
    xor a
    ld [$cfca], a
    inc a
    ld [$d232], a
    call Call_00d_6804
    ld a, [$c608]
    jr jr_00d_6975

jr_00d_6908:
    call Call_00d_6994
    jr c, jr_00d_6969

    ld a, [$c70f]
    cp $01
    jr z, jr_00d_68ca

    call $399c
    ld a, $01
    ld [$c689], a
    call Call_00d_7e01
    ld c, $14
    call $0468
    ld hl, $c535
    ld bc, $050b
    call $0fb6
    ld c, $14
    call $0468
    ld a, [$dcd7]
    ld b, a
    ld a, [$d0d4]
    ld c, a

jr_00d_693a:
    call $2f9f
    and $07
    cp b
    jr nc, jr_00d_693a

    cp c
    jr z, jr_00d_693a

    push af
    push bc
    ld hl, $dd01
    call $3927
    ld a, [hl+]
    or [hl]
    pop bc
    pop de
    jr z, jr_00d_693a

    ld a, d
    ld [$d109], a
    ld hl, $5b32
    call Call_00d_7e73
    ld hl, $5544
    call $3ad5
    ld hl, $5c23
    jp Jump_00d_7e73


Jump_00d_6969:
jr_00d_6969:
    call Call_00d_4eee
    call Call_00d_7e80
    call Call_00d_5004
    jp Jump_00d_734e


Jump_00d_6975:
jr_00d_6975:
    push af
    call Call_00d_6804
    ld a, $01
    ld [$c689], a
    call Call_00d_7e01
    ld c, $14
    call $0468
    pop af
    ld hl, $52c1
    cp $2e
    jr z, jr_00d_6991

    ld hl, $52d2

jr_00d_6991:
    jp $3ad5


Call_00d_6994:
    ld a, [$dcd7]
    ld d, a
    ld e, $00
    ld bc, $0030

jr_00d_699d:
    ld a, [$d0d4]
    cp e
    jr z, jr_00d_69ae

    ld a, e
    ld hl, $dd01
    call $30fe
    ld a, [hl+]
    or [hl]
    jr nz, jr_00d_69b4

jr_00d_69ae:
    inc e
    dec d
    jr nz, jr_00d_699d

    scf
    ret


jr_00d_69b4:
    and a
    ret


    ld de, $c672
    ld bc, $c682
    ldh a, [$e4]
    and a
    jr z, jr_00d_69c7

    ld de, $c67a
    ld bc, $c684

jr_00d_69c7:
    ld a, $02
    call $39e7
    bit 2, [hl]
    jp nz, Jump_00d_6a43

    set 2, [hl]
    ld a, $0d
    call $39e7
    ld a, [hl]
    cp $4d
    jr z, jr_00d_6a3f

    cp $2c
    ld a, $01
    jr z, jr_00d_6a3a

    ld a, [hl]
    cp $9a
    jr z, jr_00d_69fb

    cp $68
    jr nz, jr_00d_6a2b

jr_00d_69ec:
    call $2f9f
    and $03
    jr z, jr_00d_69ec

    dec a
    jr nz, jr_00d_6a3a

    ld a, $01
    ld [bc], a
    jr jr_00d_6a48

jr_00d_69fb:
    ldh a, [$e4]
    and a
    jr nz, jr_00d_6a0b

    ld a, [$dcd7]
    cp $01
    jp z, Jump_00d_6a1e

    dec a
    jr jr_00d_6a3a

jr_00d_6a0b:
    ld a, [$d22d]
    cp $01
    jp z, Jump_00d_6a1e

    ld a, [$d280]
    cp $01
    jp z, Jump_00d_6a1e

    dec a
    jr jr_00d_6a3a

Jump_00d_6a1e:
    ld a, $02
    call $39e7
    res 2, [hl]
    call Call_00d_55b5
    jp Jump_00d_52a3


jr_00d_6a2b:
    call $2f9f
    and $03
    cp $02
    jr c, jr_00d_6a39

    call $2f9f
    and $03

jr_00d_6a39:
    inc a

jr_00d_6a3a:
    ld [de], a
    inc a
    ld [bc], a
    jr jr_00d_6a6b

jr_00d_6a3f:
    ld a, $01
    jr jr_00d_6a3a

Jump_00d_6a43:
    ld a, [de]
    dec a
    ld [de], a
    jr nz, jr_00d_6a6b

jr_00d_6a48:
    ld a, $02
    call $39e7
    res 2, [hl]
    ld hl, $52e5
    ldh a, [$e4]
    and a
    jr z, jr_00d_6a5a

    ld hl, $52f8

jr_00d_6a5a:
    push bc
    ld a, $0d
    call $39e1
    cp $9a
    jr z, jr_00d_6a67

    call $3ad5

jr_00d_6a67:
    pop bc
    xor a
    ld [bc], a
    ret


jr_00d_6a6b:
    ld a, [$c6b3]
    ld h, a
    ld a, [$c6b2]
    ld l, a

jr_00d_6a73:
    ld a, [hl-]
    cp $05
    jr nz, jr_00d_6a73

    inc hl
    ld a, h
    ld [$c6b3], a
    ld a, l
    ld [$c6b2], a
    ret


    ld a, [$c667]
    and a
    ret nz

    call Call_00d_7378
    jr nz, jr_00d_6a9a

    ld a, $0b
    call $39e1
    and $27
    jr nz, jr_00d_6a9a

    call Call_00d_6abf
    jr z, jr_00d_6ab5

jr_00d_6a9a:
    ld a, $01
    ld [$c667], a
    ret


    call Call_00d_7378
    ret nz

    ld a, $0b
    call $39e1
    and $27
    ret nz

    call Call_00d_6abf
    ret nz

    ld a, [$c70d]
    and a
    ret nz

jr_00d_6ab5:
    ld a, $07
    call $39e7
    set 3, [hl]
    jp Jump_00d_6f13


Call_00d_6abf:
    push bc
    ld a, [$c70f]
    ld b, a
    ldh a, [$e4]
    xor b
    pop bc
    ret


    ld a, [$c667]
    and a
    ret nz

    call Call_00d_7db2
    ld a, b
    cp $4b
    ret nz

    call Call_00d_7378
    ret nz

    ld a, $0d
    call $39e7
    ld d, h
    ld e, l
    call Call_00d_7db2
    call $2f9f
    cp c
    ret nc

    call Call_00d_6f13
    ld a, $07
    call $39e7
    set 3, [hl]
    ret


    call $397d
    ld a, [$c665]
    and $7f
    jr z, jr_00d_6b2f

    ld hl, $d213
    ld de, $c639
    ld bc, $c613
    ldh a, [$e4]
    and a
    jr z, jr_00d_6b12

    push hl
    ld h, d
    ld l, e
    pop de
    ld bc, $c60c

jr_00d_6b12:
    ld a, [de]
    sub [hl]
    jr c, jr_00d_6b2f

    add a
    ld e, a
    ld a, [bc]
    add e
    jr nc, jr_00d_6b1e

    ld a, $ff

jr_00d_6b1e:
    ld [bc], a
    call Call_00d_4d32
    ld hl, $d256
    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ld a, $02
    ld [$c666], a
    ret


jr_00d_6b2f:
    ld a, $ff
    ld [$c666], a
    ld a, $01
    ld [$c667], a
    ret


    ld a, $02
    call $39e7
    bit 4, [hl]
    ret z

    res 4, [hl]
    res 5, [hl]
    res 6, [hl]
    ld b, $39
    jp Jump_00d_7e8c


    call Call_00d_7e85
    ld a, $0a
    call $39e1
    and $07
    jr z, jr_00d_6b65

    call Call_00d_7e80
    call Call_00d_5004
    call Call_00d_734e
    jp Jump_00d_52a3


jr_00d_6b65:
    ld a, $02
    call $39e7
    set 4, [hl]
    ld hl, $5850
    ld a, [$c6f4]
    and a
    call nz, $3ad5
    call Call_00d_4eee
    xor a
    ld [$cfca], a
    inc a
    ld [$c689], a
    call Call_00d_7e36
    ld a, $0c
    call $39e1
    cp $13
    jr z, jr_00d_6b96

    cp $5b
    jr z, jr_00d_6b96

    call Call_00d_5004
    jr jr_00d_6b99

jr_00d_6b96:
    call Call_00d_7ec0

jr_00d_6b99:
    ld a, $02
    call $39e7
    ld a, $0c
    call $39e1
    ld b, a
    cp $13
    jr z, jr_00d_6bb0

    cp $5b
    jr nz, jr_00d_6bb2

    set 5, [hl]
    jr jr_00d_6bb2

jr_00d_6bb0:
    set 6, [hl]

jr_00d_6bb2:
    call Call_00d_4548
    jr nz, jr_00d_6bc3

    ld a, $11
    call $39e7
    ld [hl], b
    ld a, $13
    call $39e7
    ld [hl], b

jr_00d_6bc3:
    call $397d
    ld hl, $6bdb
    call $3ac3
    ld a, $0d
    call $39e1
    cp $91
    ld b, $fe
    jp z, Jump_00d_7e8c

    jp Jump_00d_52a3


    ld d, $0e
    ld c, l
    ld [hl], b
    ld [$0c3e], sp
    call $39e1
    cp $0d
    ld hl, $6c0e
    jr z, jr_00d_6c0d

    cp $4c
    ld hl, $6c13
    jr z, jr_00d_6c0d

    cp $82
    ld hl, $6c18
    jr z, jr_00d_6c0d

    cp $8f
    ld hl, $6c1d
    jr z, jr_00d_6c0d

    cp $13
    ld hl, $6c22
    jr z, jr_00d_6c0d

    cp $5b
    ld hl, $6c27

jr_00d_6c0d:
    ret


    ld d, $12
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $26
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $3a
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $4e
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $5c
    ld c, l
    ld [hl], b
    ld d, b
    ld d, $6c
    ld c, l
    ld [hl], b
    ld d, b
    ret


    ld a, [$c667]
    and a
    ret nz

    ld hl, $c731
    ld de, $c72f
    ldh a, [$e4]
    and a
    jr z, jr_00d_6c43

    ld hl, $c730
    ld de, $c72e

jr_00d_6c43:
    ld a, [hl]
    and a
    ret nz

    ld a, $08
    call $39e1
    bit 4, a
    ret nz

    call $2f9f
    and $03
    inc a
    inc a
    inc a
    ld [hl], a
    ld a, $0c
    call $39e1
    ld [de], a
    ld b, a
    ld hl, $6c6f

jr_00d_6c61:
    ld a, [hl+]
    cp b
    jr z, jr_00d_6c69

    inc hl
    inc hl
    jr jr_00d_6c61

jr_00d_6c69:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp $3ad5


    inc d
    ld de, $234e
    ld b, h
    ld c, [hl]
    ld d, e
    inc [hl]
    ld c, [hl]
    add b
    ld e, c
    ld c, [hl]
    ld a, [$4e24]
    ld a, $03
    call $39e7
    bit 1, [hl]
    jr nz, jr_00d_6c92

    set 1, [hl]
    call Call_00d_7e01
    ld hl, $530b
    jp $3ad5


jr_00d_6c92:
    call Call_00d_7e77
    jp Jump_00d_734e


    ld a, $03
    call $39e7
    bit 2, [hl]
    jr nz, jr_00d_6cac

    set 2, [hl]
    call Call_00d_7e01
    ld hl, $5338
    jp $3ad5


jr_00d_6cac:
    call Call_00d_7e77
    jp Jump_00d_734e


    ld hl, $c63e
    ldh a, [$e4]
    and a
    jr z, jr_00d_6cbd

    ld hl, $d218

jr_00d_6cbd:
    ld a, $0c
    call $39e1
    ld d, a
    ld a, [$d256]
    ld b, a
    ld a, [$d257]
    ld c, a
    srl b
    rr c
    srl b
    rr c
    ld a, b
    or c
    jr nz, jr_00d_6cd8

    inc c

jr_00d_6cd8:
    ld a, [hl+]
    ld [$d1eb], a
    ld a, [hl]
    ld [$d1ea], a
    dec hl
    dec hl
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
    jr nc, jr_00d_6cfe

    xor a
    ld [hl+], a
    ld [hl], a
    ld hl, $d1ee
    ld [hl+], a
    ld [hl], a

jr_00d_6cfe:
    ld hl, $c55e
    ldh a, [$e4]
    and a
    ld a, $01
    jr z, jr_00d_6d0c

    ld hl, $c4ca
    xor a

jr_00d_6d0c:
    ld [$d10a], a
    ld a, $0b
    call $2d83
    call $39c9
    ld hl, $534d
    jp $3ad5


    call Call_00d_7dc1
    ld a, b
    cp $19
    ret z

    ld a, [$c70d]
    and a
    ret nz

    call Call_00d_7962
    ret nz

    call Call_00d_7378
    ret nz

    ld a, $07
    call $39e7
    bit 7, [hl]
    ret nz

    jr jr_00d_6d70

    call Call_00d_7dc1
    ld a, b
    cp $19
    jr nz, jr_00d_6d53

    ld a, [hl]
    ld [$d265], a
    call $3468
    call Call_00d_7e77
    ld hl, $55a9
    jp $3ad5


jr_00d_6d53:
    ld a, $07
    call $39e7
    bit 7, [hl]
    jr z, jr_00d_6d65

    call Call_00d_7e77
    ld hl, $4dcc
    jp $3ad5


jr_00d_6d65:
    call Call_00d_7378
    jr nz, jr_00d_6db6

    ld a, [$c667]
    and a
    jr nz, jr_00d_6db6

jr_00d_6d70:
    ld bc, $c67b
    ldh a, [$e4]
    and a
    jr z, jr_00d_6d7b

    ld bc, $c673

jr_00d_6d7b:
    set 7, [hl]
    call $2f9f
    and $03
    inc a
    inc a
    ld [bc], a
    ld a, $0d
    call $39e1
    cp $4c
    jr z, jr_00d_6d99

    cp $5c
    jr z, jr_00d_6d99

    cp $76
    jr z, jr_00d_6d99

    call Call_00d_7e01

jr_00d_6d99:
    ld de, $0103
    call Call_00d_7e54
    ld hl, $4d97
    call $3ad5
    call Call_00d_7dc1
    ld a, b
    cp $0f
    jr z, jr_00d_6db0

    cp $10
    ret nz

jr_00d_6db0:
    ld hl, $5e51
    jp Jump_00d_7e73


jr_00d_6db6:
    ld a, $0d
    call $39e1
    cp $4c
    ret z

    cp $5c
    ret z

    cp $76
    ret z

    jp Jump_00d_7366


    ld a, $0b
    call $39e1
    bit 6, a
    jr nz, jr_00d_6e49

    ld a, [$c665]
    and $7f
    jr z, jr_00d_6e55

    call Call_00d_7dc1
    ld a, b
    cp $18
    jr nz, jr_00d_6def

    ld a, [hl]
    ld [$d265], a
    call $3468
    call Call_00d_7e77
    ld hl, $55a9
    jp $3ad5


jr_00d_6def:
    ldh a, [$e4]
    and a
    jr z, jr_00d_6e0e

    ld a, [$c2dc]
    and a
    jr nz, jr_00d_6e0e

    ld a, [$cfc0]
    and a
    jr nz, jr_00d_6e0e

    ld a, [$c66c]
    bit 5, a
    jr nz, jr_00d_6e0e

    call $2f9f
    cp $40
    jr c, jr_00d_6e52

jr_00d_6e0e:
    ld a, $0b
    call $39e7
    and a
    jr nz, jr_00d_6e52

    ld a, [$c667]
    and a
    jr nz, jr_00d_6e52

    call Call_00d_7378
    jr nz, jr_00d_6e52

    ld c, $1e
    call $0468
    call Call_00d_7e01
    ld a, $01
    ldh [$d4], a
    ld a, $0b
    call $39e7
    set 6, [hl]
    call $398e
    ld hl, $6c39
    call Call_00d_7e73
    call $39d4
    call Call_00d_7372
    ld hl, $5de9
    jp Jump_00d_7e73


jr_00d_6e49:
    call Call_00d_7e77
    ld hl, $5592
    jp $3ad5


jr_00d_6e52:
    jp Jump_00d_7366


jr_00d_6e55:
    call Call_00d_7e77
    jp Jump_00d_733d


Call_00d_6e5b:
    push hl
    ld hl, $d224
    ldh a, [$e4]
    and a
    jr z, jr_00d_6e67

    ld hl, $c64a

jr_00d_6e67:
    ld a, $0f
    call $39e1
    cp $00
    jr z, jr_00d_6e77

    cp [hl]
    jr z, jr_00d_6e75

    inc hl
    cp [hl]

jr_00d_6e75:
    pop hl
    ret


jr_00d_6e77:
    ld a, $01
    and a
    pop hl
    ret


    call Call_00d_7e80
    ld hl, $c63e
    ld de, $c6df
    ldh a, [$e4]
    and a
    jr z, jr_00d_6e90

    ld hl, $d218
    ld de, $c6e0

jr_00d_6e90:
    ld a, $03
    call $39e1
    bit 4, a
    jr nz, jr_00d_6ef4

    ld a, [hl+]
    ld b, [hl]
    srl a
    rr b
    srl a
    rr b
    dec hl
    dec hl
    ld a, b
    ld [de], a
    ld a, [hl-]
    sub b
    ld e, a
    ld a, [hl]
    sbc $00
    ld d, a
    jr c, jr_00d_6eff

    ld a, d
    or e
    jr z, jr_00d_6eff

    ld [hl], d
    inc hl
    ld [hl], e
    ld a, $03
    call $39e7
    set 4, [hl]
    ld hl, $c730
    ld de, $c72e
    ldh a, [$e4]
    and a
    jr z, jr_00d_6ecf

    ld hl, $c731
    ld de, $c72f

jr_00d_6ecf:
    xor a
    ld [hl], a
    ld [de], a
    call Call_00d_7ed5
    jr c, jr_00d_6ee8

    xor a
    ld [$cfca], a
    ld [$cfc3], a
    ld [$c689], a
    ld a, $a4
    call Call_00d_7e44
    jr jr_00d_6eeb

jr_00d_6ee8:
    call Call_00d_65af

jr_00d_6eeb:
    ld hl, $5362
    call $3ad5
    jp $39c9


jr_00d_6ef4:
    call Call_00d_4548
    call nz, Call_00d_5004
    ld hl, $5378
    jr jr_00d_6f08

jr_00d_6eff:
    call Call_00d_4548
    call nz, Call_00d_5004
    ld hl, $538d

jr_00d_6f08:
    jp $3ad5


    ld a, $03
    call $39e7
    set 5, [hl]
    ret


Call_00d_6f13:
Jump_00d_6f13:
    push hl
    ld a, $08
    call $39e7
    res 5, [hl]
    pop hl
    ret


    ld a, $03
    call $39e7
    set 6, [hl]
    ret


    ld a, $07
    call $39e1
    bit 6, a
    ret z

    jr jr_00d_6f37

    ld a, $07
    call $39e1
    bit 5, a
    ret z

jr_00d_6f37:
    ld hl, $d257
    sla [hl]
    dec hl
    rl [hl]
    jr nc, jr_00d_6f45

    ld a, $ff
    ld [hl+], a
    ld [hl], a

jr_00d_6f45:
    ret


    call Call_00d_72d8
    call Call_00d_7e80
    ld a, [$c667]
    and a
    jr nz, jr_00d_6f9a

    ld hl, $c62e
    ldh a, [$e4]
    and a
    jr z, jr_00d_6f5d

    ld hl, $d208

jr_00d_6f5d:
    call Call_00d_7daa
    jr nz, jr_00d_6f9a

    ld a, $12
    call $39e1
    and a
    jr z, jr_00d_6f9a

    cp $a5
    jr z, jr_00d_6f9a

    ld b, a
    ld c, $04

jr_00d_6f71:
    ld a, [hl+]
    cp b
    jr z, jr_00d_6f9a

    dec c
    jr nz, jr_00d_6f71

    dec hl

jr_00d_6f79:
    ld a, [hl-]
    cp $66
    jr nz, jr_00d_6f79

    inc hl
    ld a, $12
    call $39e1
    ld [hl], a
    ld [$d265], a
    ld bc, $0006
    add hl, bc
    ld [hl], $05
    call $34f8
    call Call_00d_7e01
    ld hl, $53e6
    jp $3ad5


jr_00d_6f9a:
    jp Jump_00d_7357


    ld a, [$c667]
    and a
    jr nz, jr_00d_6fd8

    call Call_00d_7378
    jr nz, jr_00d_6fd8

    ld de, $d224
    ldh a, [$e4]
    and a
    jr z, jr_00d_6fb3

    ld de, $c64a

jr_00d_6fb3:
    ld a, [de]
    cp $16
    jr z, jr_00d_6fd2

    inc de
    ld a, [de]
    cp $16
    jr z, jr_00d_6fd2

    ld a, $08
    call $39e7
    bit 7, [hl]
    jr nz, jr_00d_6fd8

    set 7, [hl]
    call Call_00d_7e01
    ld hl, $53f8
    jp $3ad5


jr_00d_6fd2:
    call Call_00d_7e77
    jp Jump_00d_733d


jr_00d_6fd8:
    call Call_00d_7e77
    ld hl, $5407
    jp $3ad5


    call Call_00d_7e01
    ld a, $41
    ld hl, $60e5
    rst $08
    jp Jump_00d_7343


    ld a, [$c667]
    and a
    jr nz, jr_00d_7059

    ld de, $c67d
    ld hl, $d208
    ldh a, [$e4]
    and a
    jr z, jr_00d_7004

    ld de, $c675
    ld hl, $c62e

jr_00d_7004:
    ld a, [de]
    and a
    jr nz, jr_00d_7059

    ld a, $12
    call $39e1
    and a
    jr z, jr_00d_7059

    cp $a5
    jr z, jr_00d_7059

    ld b, a
    ld c, $ff

jr_00d_7017:
    inc c
    ld a, [hl+]
    cp b
    jr nz, jr_00d_7017

    ldh a, [$e4]
    and a
    ld hl, $d20e
    jr z, jr_00d_7027

    ld hl, $c634

jr_00d_7027:
    ld b, $00
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_00d_7059

jr_00d_702e:
    call $2f9f
    and $07
    jr z, jr_00d_702e

    inc a
    inc c
    swap c
    add c
    ld [de], a
    call Call_00d_7e01
    ld hl, $c6f5
    ldh a, [$e4]
    and a
    jr nz, jr_00d_7047

    inc hl

jr_00d_7047:
    ld a, $12
    call $39e1
    ld [hl], a
    ld [$d265], a
    call $34f8
    ld hl, $541d
    jp $3ad5


jr_00d_7059:
    jp Jump_00d_7354


    xor a
    ld hl, $d073
    ld [hl+], a
    ldh a, [$e4]
    and a
    ld a, [$c639]
    jr z, jr_00d_706c

    ld a, [$d213]

jr_00d_706c:
    add a
    ld hl, $c6ee
    add [hl]
    ld [hl-], a
    jr nc, jr_00d_7079

    inc [hl]
    dec hl
    jr nz, jr_00d_7079

    inc [hl]

jr_00d_7079:
    ld hl, $5435
    jp $3ad5


    ld hl, $c62e
    ld de, $c64a
    ldh a, [$e4]
    and a
    jr z, jr_00d_7090

    ld hl, $d208
    ld de, $d224

jr_00d_7090:
    push de
    ld c, $00
    ld de, $d073

jr_00d_7096:
    push hl
    ld b, $00
    add hl, bc
    ld a, [hl]
    pop hl
    and a
    jr z, jr_00d_70b2

    push hl
    push bc
    dec a
    ld hl, $5afe
    call Call_00d_7ea1
    ld [de], a
    inc de
    pop bc
    pop hl
    inc c
    ld a, c
    cp $04
    jr c, jr_00d_7096

jr_00d_70b2:
    ld a, $ff
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld [de], a
    pop de
    ld hl, $d073

jr_00d_70bd:
    ld a, [hl]
    cp $ff
    jr z, jr_00d_70d3

    cp $13
    jr z, jr_00d_70d0

    ld a, [de]
    cp [hl]
    jr z, jr_00d_70d0

    inc de
    ld a, [de]
    dec de
    cp [hl]
    jr nz, jr_00d_70d9

jr_00d_70d0:
    inc hl
    jr jr_00d_70bd

jr_00d_70d3:
    call Call_00d_7e77
    jp Jump_00d_734e


jr_00d_70d9:
    call $2f9f
    and $03
    ld c, a
    ld b, $00
    ld hl, $d073
    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_00d_70d9

    cp $13
    jr z, jr_00d_70d9

    ld a, [de]
    cp [hl]
    jr z, jr_00d_70d9

    inc de
    ld a, [de]
    dec de
    cp [hl]
    jr z, jr_00d_70d9

    ld a, [hl]
    ld [de], a
    inc de
    ld [de], a
    ld [$d265], a
    ld a, $14
    ld hl, $4964
    rst $08
    call Call_00d_7e01
    ld hl, $5452
    jp $3ad5


    ld a, $07
    ld hl, $c6cc
    call Call_00d_7137
    ld hl, $c6d4
    call Call_00d_7137
    ldh a, [$e4]
    push af
    call $3985
    call Call_00d_65d7
    call $3989
    call Call_00d_65fd
    pop af
    ldh [$e4], a
    call Call_00d_7e01
    ld hl, $5476
    jp $3ad5


Call_00d_7137:
    ld b, $08

jr_00d_7139:
    ld [hl+], a
    dec b
    jr nz, jr_00d_7139

    ret


    ld de, $c63c
    ld hl, $c63e
    ldh a, [$e4]
    and a
    jr z, jr_00d_714f

    ld de, $d216
    ld hl, $d218

jr_00d_714f:
    ld a, $0c
    call $39e1
    ld b, a
    push hl
    push de
    push bc
    ld c, $02
    call $31db
    pop bc
    pop de
    pop hl
    jp z, Jump_00d_71c4

    ld a, b
    cp $9c
    jr nz, jr_00d_7199

    push hl
    push de
    push af
    call Call_00d_7e80
    ld a, $04
    call $39e7
    res 0, [hl]
    ld a, $0a
    call $39e7
    ld a, [hl]
    and a
    ld [hl], $03
    ld hl, $4fd7
    jr z, jr_00d_7186

    ld hl, $4fe9

jr_00d_7186:
    call $3ad5
    ldh a, [$e4]
    and a
    jr nz, jr_00d_7193

    call Call_00d_65d7
    jr jr_00d_7196

jr_00d_7193:
    call Call_00d_65fd

jr_00d_7196:
    pop af
    pop de
    pop hl

jr_00d_7199:
    jr z, jr_00d_71a3

    ld hl, $4c9f
    call Call_00d_7e73
    jr jr_00d_71a9

jr_00d_71a3:
    ld hl, $4cac
    call Call_00d_7e73

jr_00d_71a9:
    call Call_00d_7e01
    call Call_00d_4ffd
    ld hl, $4cef
    call Call_00d_7e73
    call Call_00d_4ffd
    call $3995
    call $39c9
    ld hl, $500c
    jp $3ad5


Jump_00d_71c4:
    call Call_00d_7e77
    ld hl, $5534
    jp $3ad5


    call Call_00d_72d8
    ld a, $09
    call $39e7
    bit 3, [hl]
    jp nz, Jump_00d_72d2

    call Call_00d_7daa
    jp nz, Jump_00d_72d2

    xor a
    ld [$cfca], a
    ld [$cfc3], a
    ld a, $01
    ld [$c689], a
    ld a, $03
    call $39e7
    bit 4, [hl]
    push af
    jr z, jr_00d_7200

    call Call_00d_4548
    jr nz, jr_00d_7200

    ld a, $a4
    call Call_00d_7e44

jr_00d_7200:
    ld a, $04
    call $39e7
    set 3, [hl]
    call Call_00d_72e7
    ld hl, $c62c
    ld de, $d206
    ldh a, [$e4]
    and a
    jr nz, jr_00d_721f

    ld hl, $d206
    ld de, $c62c
    xor a
    ld [$d0d5], a

jr_00d_721f:
    push hl
    ld a, [hl+]
    ld [de], a
    inc hl
    inc de
    inc de
    ld bc, $0004
    call $3026
    ldh a, [$e4]
    and a
    jr z, jr_00d_723a

    ld a, [de]
    ld [$c6f2], a
    inc de
    ld a, [de]
    ld [$c6f3], a
    dec de

jr_00d_723a:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $000c
    add hl, bc
    push hl
    ld h, d
    ld l, e
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld bc, $000c
    call $3026
    ld bc, $ffe2
    add hl, bc
    push de
    ld d, h
    ld e, l
    pop hl
    ld bc, $ffe8
    add hl, bc
    ld b, $04

jr_00d_725f:
    ld a, [de]
    inc de
    and a
    jr z, jr_00d_726c

    cp $a6
    ld a, $01
    jr z, jr_00d_726c

    ld a, $05

jr_00d_726c:
    ld [hl+], a
    dec b
    jr nz, jr_00d_725f

    pop hl
    ld a, [hl]
    ld [$d265], a
    call $343b
    ld hl, $c6c1
    ld de, $c6b6
    ld bc, $000a
    call Call_00d_72c6
    ld hl, $c6d4
    ld de, $c6cc
    ld bc, $0008
    call Call_00d_72c6
    call Call_00d_7ed5
    jr c, jr_00d_72a8

    ldh a, [$e4]
    and a
    ld a, [$c6fe]
    jr z, jr_00d_72a0

    ld a, [$c6fa]

jr_00d_72a0:
    and a
    jr nz, jr_00d_72a8

    call Call_00d_7e36
    jr jr_00d_72ae

jr_00d_72a8:
    call Call_00d_7e80
    call Call_00d_65af

jr_00d_72ae:
    xor a
    ld [$cfca], a
    ld [$cfc3], a
    ld a, $02
    ld [$c689], a
    pop af
    ld a, $a4
    call nz, Call_00d_7e44
    ld hl, $5499
    jp $3ad5


Call_00d_72c6:
    ldh a, [$e4]
    and a
    jr z, jr_00d_72cf

    push hl
    ld h, d
    ld l, e
    pop de

jr_00d_72cf:
    jp $3026


Jump_00d_72d2:
    call Call_00d_7e77
    jp Jump_00d_734e


Call_00d_72d8:
    ld a, $11
    call $39e7
    xor a
    ld [hl], a
    ld a, $13
    call $39e7
    xor a
    ld [hl], a
    ret


Call_00d_72e7:
    ldh a, [$e4]
    and a
    jr z, jr_00d_72f4

    xor a
    ld [$c67d], a
    ld [$c6f6], a
    ret


jr_00d_72f4:
    xor a
    ld [$c675], a
    ld [$c6f5], a
    ret


    ld hl, $c6ff
    ld bc, $c702
    ldh a, [$e4]
    and a
    jr z, jr_00d_730d

    ld hl, $c700
    ld bc, $c706

jr_00d_730d:
    ld a, $0d
    call $39e1
    cp $23
    jr nz, jr_00d_7324

    bit 3, [hl]
    jr nz, jr_00d_7337

    set 3, [hl]
    ld a, $05
    ld [bc], a
    ld hl, $54b4
    jr jr_00d_7331

jr_00d_7324:
    bit 4, [hl]
    jr nz, jr_00d_7337

    set 4, [hl]
    inc bc
    ld a, $05
    ld [bc], a
    ld hl, $54c7

jr_00d_7331:
    call Call_00d_7e01
    jp $3ad5


jr_00d_7337:
    call Call_00d_7e77
    jp Jump_00d_734e


Jump_00d_733d:
    ld hl, $5071
    jp $3ad5


Jump_00d_7343:
    ld hl, $54d9
    jp $3ad5


Jump_00d_7349:
    ld a, [$c6fb]
    and a
    ret nz

Call_00d_734e:
Jump_00d_734e:
    ld hl, $54f0
    jp $3ad5


Call_00d_7354:
Jump_00d_7354:
    call Call_00d_7e77

Jump_00d_7357:
    ld hl, $54f0
    ld de, $5500
    jp Jump_00d_5157


Jump_00d_7360:
    ld hl, $550c
    jp $3ad5


Jump_00d_7366:
    call Call_00d_7e77
    ld hl, $550c
    ld de, $5520
    jp Jump_00d_5157


Call_00d_7372:
    ld hl, $5558
    jp $3ad5


Call_00d_7378:
    ld a, $08
    call $39e1
    bit 4, a
    ret


    ld a, $41
    ld hl, $610d
    rst $08
    ld a, $04
    ld [$cfca], a
    ld c, $03
    call $0468
    ld a, $0a
    call $39e7
    xor a
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld [hl], a
    ld a, $01
    ld [$c689], a
    call Call_00d_4eee
    call Call_00d_7e36
    ld a, $03
    call $39e7
    res 7, [hl]
    ld a, $09
    call $39e7
    res 6, [hl]
    call Call_00d_7ed5
    ret nc

    ld a, $0f
    ld hl, $5f58
    rst $08
    ld a, $0f
    ld hl, $6043
    rst $08
    call $31f6
    jp $39c9


    call Call_00d_72d8
    ld a, $10
    call $39e7
    ld a, $12
    call $39e1
    and a
    jr z, jr_00d_73de

    call Call_00d_7462
    jr nz, jr_00d_73ea

jr_00d_73de:
    call Call_00d_7e77
    ld hl, $55c1
    call $3ad5
    jp Jump_00d_52a3


jr_00d_73ea:
    ld a, b
    ld [hl], a
    ld [$d265], a
    push af
    ld a, $0c
    call $39e7
    ld d, h
    ld e, l
    pop af
    dec a
    call Call_00d_7ead
    call $34f8
    call $30d6
    call Call_00d_4548
    jr nz, jr_00d_7412

    ld a, [$c689]
    push af
    call Call_00d_4eee
    pop af
    ld [$c689], a

jr_00d_7412:
    call Call_00d_7e80
    jp Jump_00d_747b


    call Call_00d_72d8
    call Call_00d_4548
    jr nz, jr_00d_742b

    ld a, [$c689]
    push af
    call Call_00d_4eee
    pop af
    ld [$c689], a

jr_00d_742b:
    call Call_00d_7e36

jr_00d_742e:
    call $2f9f
    cp $fc
    jr nc, jr_00d_742e

    push af
    ld de, $0001
    ld hl, $7454
    call $30e1
    pop bc
    jr c, jr_00d_742e

    ld a, b
    call Call_00d_7462
    jr z, jr_00d_742e

    ld a, $10
    call $39e7
    ld [hl], b
    call Call_00d_5e40
    jp Jump_00d_747b


    nop
    db $76
    and l
    and [hl]
    ld h, [hl]
    ld b, h
    di
    or [hl]
    push bc
    set 0, d
    sub $a8
    rst $38

Call_00d_7462:
    ld b, a
    ld de, $c62e
    ldh a, [$e4]
    and a
    jr z, jr_00d_746e

    ld de, $d208

jr_00d_746e:
    ld c, $04

jr_00d_7470:
    ld a, [de]
    inc de
    cp b
    ret z

    dec c
    jr nz, jr_00d_7470

    ld a, $01
    and a
    ret


Jump_00d_747b:
    ld hl, $c732
    ldh a, [$e4]
    and a
    jr z, jr_00d_7486

    ld hl, $c733

jr_00d_7486:
    ld [hl], $01
    xor a
    ld [$c6f4], a
    call Call_00d_402c
    jp Jump_00d_52a3


    ldh a, [$e4]
    and a
    jr nz, jr_00d_74ce

    call Call_00d_7501
    ld a, [hl]
    and a
    ret nz

    call Call_00d_750c
    ld a, [hl]
    and a
    ret z

    ld [$d265], a
    ld d, a
    ld a, $2e
    ld hl, $5e76
    rst $08
    ret c

    ld a, [$c70d]
    and a
    ret nz

    ld a, [$c2dc]
    and a
    jr z, jr_00d_74be

    ld a, [$d22d]
    dec a
    ret z

jr_00d_74be:
    call Call_00d_750c
    xor a
    ld [hl], a
    ld [de], a
    call Call_00d_7501
    ld a, [$d265]
    ld [hl], a
    ld [de], a
    jr jr_00d_74f8

jr_00d_74ce:
    call Call_00d_750c
    ld a, [hl]
    and a
    ret nz

    call Call_00d_7501
    ld a, [hl]
    and a
    ret z

    ld [$d265], a
    ld d, a
    ld a, $2e
    ld hl, $5e76
    rst $08
    ret c

    ld a, [$c70d]
    and a
    ret nz

    call Call_00d_7501
    xor a
    ld [hl], a
    ld [de], a
    call Call_00d_750c
    ld a, [$d265]
    ld [hl], a
    ld [de], a

jr_00d_74f8:
    call $3468
    ld hl, $55da
    jp $3ad5


Call_00d_7501:
    ld a, $01
    call $395d
    ld d, h
    ld e, l
    ld hl, $c62d
    ret


Call_00d_750c:
    ld a, $01
    call $396d
    ld d, h
    ld e, l
    ld hl, $d207
    ret


    call Call_00d_7daa
    jr nz, jr_00d_7530

    ld a, $04
    call $39e7
    bit 7, [hl]
    jr nz, jr_00d_7530

    set 7, [hl]
    call Call_00d_7e01
    ld hl, $55f7
    jp $3ad5


jr_00d_7530:
    call Call_00d_7e77
    jp Jump_00d_734e


    call Call_00d_7daa
    jr nz, jr_00d_755d

    call Call_00d_7378
    jr nz, jr_00d_755d

    ld a, $0b
    call $39e7
    and $07
    jr z, jr_00d_755d

    ld a, $05
    call $39e7
    bit 0, [hl]
    jr nz, jr_00d_755d

    set 0, [hl]
    call Call_00d_7e01
    ld hl, $560b
    jp $3ad5


jr_00d_755d:
    call Call_00d_7e77
    jp Jump_00d_734e


    ld a, $0a
    call $39e7
    bit 5, [hl]
    ret z

    res 5, [hl]
    ldh a, [$e4]
    and a
    jr z, jr_00d_7578

    ld a, [$d22d]
    dec a
    jr z, jr_00d_757f

jr_00d_7578:
    ld a, $20
    call $3945
    res 5, [hl]

jr_00d_757f:
    call $39c9
    ld hl, $562b
    jp $3ad5


    ld de, $c64a
    ld bc, $c6cc
    ldh a, [$e4]
    and a
    jr z, jr_00d_7599

    ld de, $d224
    ld bc, $c6d4

jr_00d_7599:
    ld a, [de]
    cp $08
    jr z, jr_00d_75d7

    inc de
    ld a, [de]
    cp $08
    jr z, jr_00d_75d7

    ld a, [bc]
    cp $0d
    jr c, jr_00d_75af

    inc bc
    ld a, [bc]
    cp $0d
    jr nc, jr_00d_760a

jr_00d_75af:
    ld a, $01
    ld [$c689], a
    call Call_00d_7e01
    ld a, $02
    call Call_00d_6532
    call Call_00d_4ffd
    call Call_00d_63e9
    call Call_00d_652d
    call Call_00d_4ffd
    call Call_00d_61ac
    call Call_00d_63b8
    call Call_00d_652d
    call Call_00d_61b0
    jp Jump_00d_63b8


jr_00d_75d7:
    call Call_00d_7daa
    jr nz, jr_00d_7604

    call Call_00d_7378
    jr nz, jr_00d_7604

    ld a, $05
    call $39e7
    bit 1, [hl]
    jr nz, jr_00d_7604

    set 1, [hl]
    call Call_00d_7e01
    ld hl, $4c9f
    call Call_00d_7e73
    ld hl, $4c3f
    call Call_00d_7e73
    call $3995
    ld hl, $563d
    jp $3ad5


jr_00d_7604:
    call Call_00d_7e77
    jp Jump_00d_734e


jr_00d_760a:
    ld b, $08
    call Call_00d_648f
    call Call_00d_7e77
    ld hl, $5272
    jp $3ad5


    call Call_00d_762c
    ret c

    ld a, $00
    call $39e7
    set 2, [hl]
    call Call_00d_7e01
    ld hl, $5665
    jp $3ad5


Call_00d_762c:
    ld de, $c679
    ldh a, [$e4]
    and a
    jr z, jr_00d_7637

    ld de, $c681

jr_00d_7637:
    call Call_00d_6abf
    jr nz, jr_00d_7665

    ld a, $03
    call $39e1
    bit 4, a
    jr nz, jr_00d_7665

    ld b, $ff
    ld a, [de]
    ld c, a

jr_00d_7649:
    ld a, c
    and a
    jr z, jr_00d_7656

    dec c
    srl b
    ld a, b
    and a
    jr nz, jr_00d_7649

    jr jr_00d_7665

jr_00d_7656:
    call $2f9f
    and a
    jr z, jr_00d_7656

    dec a
    cp b
    jr nc, jr_00d_7665

    ld a, [de]
    inc a
    ld [de], a
    and a
    ret


jr_00d_7665:
    xor a
    ld [de], a
    call Call_00d_7e77
    call Call_00d_734e
    scf
    ret


    call Call_00d_762c
    ret c

    ld a, $00
    call $39e7
    set 5, [hl]
    call Call_00d_7e01
    ld hl, $56f9
    jp $3ad5


    ld hl, $c700
    ldh a, [$e4]
    and a
    jr z, jr_00d_768e

    ld hl, $c6ff

jr_00d_768e:
    bit 0, [hl]
    jr nz, jr_00d_769d

    set 0, [hl]
    call Call_00d_7e01
    ld hl, $5691
    jp $3ad5


jr_00d_769d:
    jp Jump_00d_7354


    ld a, [$c667]
    and a
    jr nz, jr_00d_76bf

    call Call_00d_7daa
    jr nz, jr_00d_76bf

    ld a, $05
    call $39e7
    bit 3, [hl]
    jr nz, jr_00d_76bf

    set 3, [hl]
    call Call_00d_7e01
    ld hl, $56b1
    jp $3ad5


jr_00d_76bf:
    jp Jump_00d_7354


    ld hl, $c668
    ld de, $c66d
    bit 4, [hl]
    jr z, jr_00d_76d1

    ld a, [de]
    bit 4, a
    jr nz, jr_00d_76f2

jr_00d_76d1:
    bit 4, [hl]
    jr nz, jr_00d_76dc

    set 4, [hl]
    ld a, $04
    ld [$c677], a

jr_00d_76dc:
    ld a, [de]
    bit 4, a
    jr nz, jr_00d_76e9

    set 4, a
    ld [de], a
    ld a, $04
    ld [$c67f], a

jr_00d_76e9:
    call Call_00d_7e01
    ld hl, $56c2
    jp $3ad5


jr_00d_76f2:
    call Call_00d_7e77
    jp Jump_00d_734e


    ld a, [$c70a]
    cp $03
    jr z, jr_00d_7712

    ld a, $03
    ld [$c70a], a
    ld a, $05
    ld [$c70b], a
    call Call_00d_7e01
    ld hl, $56e4
    jp $3ad5


jr_00d_7712:
    call Call_00d_7e77
    jp Jump_00d_734e


    ld de, $c672
    ldh a, [$e4]
    and a
    jr z, jr_00d_7723

    ld de, $c67a

jr_00d_7723:
    ld a, $00
    call $39e1
    bit 6, a
    jr z, jr_00d_7731

    ld b, $04
    jp Jump_00d_7e8c


jr_00d_7731:
    xor a
    ld [de], a
    ret


    ld a, $0a
    call $39e1
    and $07
    ret nz

    ld hl, $c672
    ldh a, [$e4]
    and a
    jr z, jr_00d_7747

    ld hl, $c67a

jr_00d_7747:
    ld a, [hl]
    and a
    jr nz, jr_00d_7750

    ld a, $01
    ld [$c73e], a

jr_00d_7750:
    ld a, [$c667]
    and a
    jr z, jr_00d_775e

    ld a, $00
    call $39e7
    res 6, [hl]
    ret


jr_00d_775e:
    inc [hl]
    ld a, [hl]
    ld b, a
    cp $05
    jr c, jr_00d_776e

    ld a, $00
    call $39e7
    res 6, [hl]
    jr jr_00d_7775

jr_00d_776e:
    ld a, $00
    call $39e7
    set 6, [hl]

jr_00d_7775:
    ld a, $01
    call $39e1
    bit 0, a
    jr z, jr_00d_777f

    inc b

jr_00d_777f:
    dec b
    jr z, jr_00d_7790

    ld hl, $d257
    sla [hl]
    dec hl
    rl [hl]
    jr nc, jr_00d_777f

    ld a, $ff
    ld [hl+], a
    ld [hl], a

jr_00d_7790:
    ret


    ret


    ld hl, $c678
    ldh a, [$e4]
    and a
    jr z, jr_00d_779d

    ld hl, $c680

jr_00d_779d:
    ld a, [$c667]
    and a
    jp nz, Jump_00d_77be

    inc [hl]
    ld a, [hl]
    ld b, a
    cp $06
    jr c, jr_00d_77ad

    ld b, $05

jr_00d_77ad:
    dec b
    ret z

    ld hl, $d257
    sla [hl]
    dec hl
    rl [hl]
    jr nc, jr_00d_77ad

    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ret


Call_00d_77be:
Jump_00d_77be:
    push hl
    ld hl, $c678
    ldh a, [$e4]
    and a
    jr z, jr_00d_77ca

    ld hl, $c680

jr_00d_77ca:
    xor a
    ld [hl], a
    pop hl
    ret


    ld a, [$c667]
    and a
    jr nz, jr_00d_77f2

    call Call_00d_77f5
    jr c, jr_00d_77f2

    call Call_00d_7daa
    jr nz, jr_00d_77f2

    ld a, $05
    call $39e7
    bit 7, [hl]
    jr nz, jr_00d_77f2

    set 7, [hl]
    call Call_00d_7e01
    ld hl, $570b
    jp $3ad5


jr_00d_77f2:
    jp Jump_00d_7354


Call_00d_77f5:
    ld a, $00
    call $395d
    ld a, [hl]
    ld [$d108], a
    ld a, [$d0d4]
    ld [$d109], a
    xor a
    ld [$cf5f], a
    ld a, $14
    ld hl, $4bdd
    rst $08
    jr c, jr_00d_7849

    ld b, $01
    jr nz, jr_00d_7815

    dec b

jr_00d_7815:
    push bc
    ld a, [$d204]
    ld [$d108], a
    ld hl, $d20c
    ld a, [$c671]
    bit 3, a
    jr z, jr_00d_7829

    ld hl, $c6f2

jr_00d_7829:
    ld a, [hl+]
    ld [$d123], a
    ld a, [hl]
    ld [$d124], a
    ld a, $03
    ld [$cf5f], a
    ld a, $14
    ld hl, $4bdd
    rst $08
    pop bc
    jr c, jr_00d_7849

    ld a, $01
    jr nz, jr_00d_7844

    dec a

jr_00d_7844:
    xor b
    jr z, jr_00d_7849

    and a
    ret


jr_00d_7849:
    scf
    ret


    push bc
    ld hl, $c638
    ldh a, [$e4]
    and a
    jr z, jr_00d_7857

    ld hl, $d212

jr_00d_7857:
    xor a
    ldh [$b4], a
    ldh [$b5], a
    ld a, [hl]
    ldh [$b6], a
    ld a, $0a
    ldh [$b7], a
    call $3119
    ld a, $19
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b6]
    ld d, a
    pop bc
    ret


    ld a, [$c2dc]
    cp $03
    jr z, jr_00d_787d

    push bc
    push de

jr_00d_787d:
    call Call_00d_46d2
    ld a, [$c2dc]
    cp $03
    jr z, jr_00d_7889

    pop de
    pop bc

jr_00d_7889:
    ld a, [$d265]
    and a
    jp z, Jump_00d_7e77

    ld a, [$c667]
    and a
    jp nz, Jump_00d_7e77

    push bc
    call $2f9f
    ld b, a
    ld hl, $7907
    ld c, $00

jr_00d_78a1:
    ld a, [hl+]
    cp $ff
    jr z, jr_00d_78b7

    cp b
    jr nc, jr_00d_78ad

    inc c
    inc hl
    jr jr_00d_78a1

jr_00d_78ad:
    ld a, c
    ld [$c689], a
    call Call_00d_7de9
    ld d, [hl]
    pop bc
    ret


jr_00d_78b7:
    pop bc
    ld a, $03
    ld [$c689], a

jr_00d_78bd:
    call Call_00d_7e01
    call Call_00d_4ffd
    ld hl, $5246
    ldh a, [$e4]
    and a
    jr z, jr_00d_78ce

    ld hl, $5251

jr_00d_78ce:
    ld a, $0e
    rst $08
    jr c, jr_00d_78f3

    ld hl, $4c8e
    call Call_00d_7e73
    call Call_00d_4ffd
    ld hl, $4cef
    call Call_00d_7e73
    call Call_00d_4ffd
    ld hl, $500c
    call $3ad5
    call Call_00d_4ffd
    call $398e
    jr jr_00d_7904

jr_00d_78f3:
    call Call_00d_4ffd
    call Call_00d_7ed5
    jr nc, jr_00d_7904

    call Call_00d_7e77
    ld hl, $583b
    call $3ad5

jr_00d_7904:
    jp Jump_00d_52a3


    ld h, [hl]
    jr z, jr_00d_78bd

    ld d, b
    call z, $ff78
    push bc
    ld hl, $c638
    ldh a, [$e4]
    and a
    jr z, jr_00d_791a

    ld hl, $d212

jr_00d_791a:
    ld a, $ff
    sub [hl]
    ldh [$b6], a
    xor a
    ldh [$b4], a
    ldh [$b5], a
    ld a, $0a
    ldh [$b7], a
    call $3119
    ld a, $19
    ldh [$b7], a
    ld b, $04
    call $3124
    ldh a, [$b6]
    ld d, a
    pop bc
    ret


    ld hl, $c6ff
    ld de, $c701
    ldh a, [$e4]
    and a
    jr z, jr_00d_794a

    ld hl, $c700
    ld de, $c705

jr_00d_794a:
    bit 2, [hl]
    jr nz, jr_00d_795c

    set 2, [hl]
    ld a, $05
    ld [de], a
    call Call_00d_7e01
    ld hl, $571c
    jp $3ad5


jr_00d_795c:
    call Call_00d_7e77
    jp Jump_00d_734e


Call_00d_7962:
    push hl
    ld hl, $c700
    ldh a, [$e4]
    and a
    jr z, jr_00d_796e

    ld hl, $c6ff

jr_00d_796e:
    bit 2, [hl]
    pop hl
    ret


    ld hl, $c700
    ldh a, [$e4]
    and a
    jr z, jr_00d_797d

    ld hl, $c6ff

jr_00d_797d:
    bit 2, [hl]
    ret z

    ld a, $01
    ld [$c667], a
    call Call_00d_7e80
    ld hl, $5733
    call $3ad5
    jp Jump_00d_52a3


    push bc
    call $2f9f
    ld b, a
    ld hl, $79b4

jr_00d_7999:
    ld a, [hl+]
    cp b
    jr nc, jr_00d_79a1

    inc hl
    inc hl
    jr jr_00d_7999

jr_00d_79a1:
    ld d, [hl]
    push de
    inc hl
    ld a, [hl]
    ld [$d265], a
    call Call_00d_7e80
    ld hl, $5751
    call $3ad5
    pop de
    pop bc
    ret


    dec c
    ld a, [bc]
    inc b
    ld h, $1e
    dec b
    ld e, c
    ld [hl-], a
    ld b, $a6
    ld b, [hl]
    rlca
    reti


    ld e, d
    ld [$6ef2], sp
    add hl, bc
    rst $38
    sub [hl]
    ld a, [bc]
    ldh a, [$e4]
    and a
    jp nz, Jump_00d_7a25

    call Call_00d_7ae9
    jp z, Jump_00d_7aab

    call $399c
    call Call_00d_7e01
    ld c, $32
    call $0468
    call $1d6e
    ld a, $0f
    ld hl, $52f7
    rst $08
    ld a, $0f
    ld hl, $5380
    rst $08
    call $3317
    ld a, $0f
    ld hl, $6d9f
    rst $08
    call $1c17
    call $300b
    ld hl, $c4a1
    ld bc, $040a
    call $0fb6
    ld b, $01
    call $3340
    call $32f9
    call Call_00d_7a67
    ld a, $0f
    ld hl, $52e0
    rst $08
    jp c, Jump_00d_52a3

    ld hl, $6459
    call Call_00d_7e73
    call Call_00d_7ab1
    ret


Jump_00d_7a25:
    ld a, [$d22d]
    dec a
    jp z, Jump_00d_7aab

    call Call_00d_7af6
    jp z, Jump_00d_7aab

    call $39b0
    call Call_00d_7e01
    call Call_00d_7a82
    ld a, $0f
    ld hl, $52e0
    rst $08
    jp c, Jump_00d_52a3

    xor a
    ld [$c718], a
    ld hl, $5517
    call Call_00d_7e73
    ld hl, $557a
    call Call_00d_7e73
    ld a, $01
    ld [$d265], a
    ld hl, $6cab
    call Call_00d_7e73
    ld hl, $5c23
    call Call_00d_7e73
    jr jr_00d_7ab1

Call_00d_7a67:
    ld a, [$c2dc]
    and a
    ret z

    ld a, $01
    ld [$d0ec], a
    call $1d6e
    ld hl, $68e4
    call Call_00d_7e73
    call $1c17
    xor a
    ld [$d0ec], a
    ret


Call_00d_7a82:
    ld a, [$c2dc]
    and a
    ret z

    call $1d6e
    ld hl, $68e4
    call Call_00d_7e73
    ld a, [$d280]
    add $04
    ld b, a
    ld a, [$d430]
    cp $04
    jr c, jr_00d_7aa0

    cp b
    jr c, jr_00d_7aa8

jr_00d_7aa0:
    ld a, [$c663]
    add $04
    ld [$d430], a

jr_00d_7aa8:
    jp $1c17


Jump_00d_7aab:
    call Call_00d_7e77
    jp Jump_00d_734e


Call_00d_7ab1:
jr_00d_7ab1:
    ld a, $0a
    call $39e1
    and $07
    jr nz, jr_00d_7ac1

    ld a, $00
    call $39e7
    res 0, [hl]

jr_00d_7ac1:
    call Call_00d_72e7
    ld hl, $c668
    res 7, [hl]
    ld hl, $c66d
    res 7, [hl]
    ld hl, $c66c
    ld a, $04
    call $39e7
    res 3, [hl]
    res 4, [hl]
    ld a, $13
    call $39e7
    ld [hl], $00
    xor a
    ld [$c730], a
    ld [$c731], a
    ret


Call_00d_7ae9:
    ld hl, $dd01
    ld a, [$dcd7]
    ld d, a
    ld a, [$d0d4]
    ld e, a
    jr jr_00d_7b01

Call_00d_7af6:
    ld hl, $d2aa
    ld a, [$d280]
    ld d, a
    ld a, [$c663]
    ld e, a

jr_00d_7b01:
    xor a
    ld b, a
    ld c, a

jr_00d_7b04:
    ld a, c
    cp d
    jr z, jr_00d_7b1a

    cp e
    jr z, jr_00d_7b11

    ld a, [hl+]
    or b
    ld b, a
    ld a, [hl-]
    or b
    ld b, a

jr_00d_7b11:
    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    inc c
    jr jr_00d_7b04

jr_00d_7b1a:
    ld a, b
    and a
    ret


    ld hl, $c711
    ldh a, [$e4]
    and a
    jr z, jr_00d_7b28

    ld hl, $c710

jr_00d_7b28:
    ld a, [hl]
    and a
    ret z

    ld hl, $d257
    sla [hl]
    dec hl
    rl [hl]
    ret nc

    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ret


    ld a, $03
    call $39e7
    bit 7, [hl]
    jr z, jr_00d_7b4a

    res 7, [hl]
    ld hl, $577a
    call $3ad5

jr_00d_7b4a:
    ld hl, $c6ff
    ld de, $c730
    ldh a, [$e4]
    and a
    jr z, jr_00d_7b5b

    ld hl, $c700
    ld de, $c731

jr_00d_7b5b:
    bit 0, [hl]
    jr z, jr_00d_7b69

    res 0, [hl]
    ld hl, $578e
    push de
    call $3ad5
    pop de

jr_00d_7b69:
    ld a, [de]
    and a
    ret z

    xor a
    ld [de], a
    ld hl, $5764
    jp $3ad5


    ld b, $00
    jr jr_00d_7b7e

    ld b, $01
    jr jr_00d_7b7e

    ld b, $02

jr_00d_7b7e:
    ld hl, $c63e
    ld de, $c63c
    ldh a, [$e4]
    and a
    jr z, jr_00d_7b8f

    ld hl, $d218
    ld de, $d216

jr_00d_7b8f:
    ld c, $02
    push bc
    call $31db
    pop bc
    jr z, jr_00d_7bd7

    ld a, [$c2dc]
    and a
    jr nz, jr_00d_7ba5

    ld a, [$d269]
    cp b
    jr z, jr_00d_7ba5

    dec c

jr_00d_7ba5:
    ld a, [$c70a]
    and a
    jr z, jr_00d_7bb2

    inc c
    cp $02
    jr z, jr_00d_7bb2

    dec c
    dec c

jr_00d_7bb2:
    ld b, $00
    ld hl, $7be0
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0f
    rst $08
    call Call_00d_7e01
    call Call_00d_4ffd
    ld hl, $4cef
    ld a, $0f
    rst $08
    call Call_00d_4ffd
    call $3995
    ld hl, $500c
    jp $3ad5


jr_00d_7bd7:
    call Call_00d_7e77
    ld hl, $5534
    jp $3ad5


    add e
    ld c, h
    adc [hl]
    ld c, h
    sbc a
    ld c, h
    xor h
    ld c, h
    ld a, [$c667]
    and a
    ret nz

    ld a, $3e
    ld hl, $7ced
    rst $08
    ret


    ld a, $01
    ld [$c70a], a
    ld a, $05
    ld [$c70b], a
    call Call_00d_7e01
    ld hl, $57a3
    jp $3ad5


    ld a, $02
    ld [$c70a], a
    ld a, $05
    ld [$c70b], a
    call Call_00d_7e01
    ld hl, $57b8
    jp $3ad5


    call Call_00d_61c8
    ld a, [$c667]
    and a
    jr nz, jr_00d_7c4f

    ld hl, $4c9f
    ld a, $0f
    rst $08
    ld hl, $4cde
    ld a, $0f
    rst $08
    jr nc, jr_00d_7c4f

    push bc
    call Call_00d_7e01
    pop bc
    ld hl, $4c3f
    ld a, $0f
    rst $08
    call $3995
    ld a, $05

jr_00d_7c41:
    push af
    call Call_00d_61c8
    pop af
    dec a
    jr nz, jr_00d_7c41

    ld hl, $57d2
    jp $3ad5


jr_00d_7c4f:
    call Call_00d_7e77
    jp Jump_00d_734e


    ld hl, $c6d4
    ld de, $c6cc
    ldh a, [$e4]
    and a
    jr z, jr_00d_7c64

    push hl
    ld h, d
    ld l, e
    pop de

jr_00d_7c64:
    push hl
    ld b, $08

jr_00d_7c67:
    ld a, [hl+]
    cp $07
    jr nz, jr_00d_7c76

    dec b
    jr nz, jr_00d_7c67

    pop hl
    call Call_00d_7e77
    jp Jump_00d_734e


jr_00d_7c76:
    pop hl
    ld b, $08

jr_00d_7c79:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00d_7c79

    ldh a, [$e4]
    and a
    jr nz, jr_00d_7c89

    call Call_00d_65d7
    jr jr_00d_7c8c

jr_00d_7c89:
    call Call_00d_65fd

jr_00d_7c8c:
    call Call_00d_7e01
    ld hl, $57f6
    jp $3ad5


    ld a, $01
    ld [$c667], a
    ld a, $12
    call $39e1
    and a
    ret z

    ld b, a
    ld hl, $45ec
    ld a, $0f
    rst $08
    ld a, b
    cp $90
    ret z

    call Call_00d_4833
    ld a, [$d265]
    and a
    ret z

    call Call_00d_6abf
    ret z

    ld a, $12
    call $39e1
    dec a
    ld de, $d073
    call Call_00d_7ead
    ld a, [$d075]
    and a
    ret z

    ld a, [$d076]
    cp $14
    ret c

    ld hl, $d256
    ld a, [hl+]
    or [hl]
    ret z

    ld a, [hl]
    add a
    ld [hl-], a
    ld a, [hl]
    adc a
    ld [hl], a
    jr nc, jr_00d_7ce1

    ld a, $ff
    ld [hl+], a
    ld [hl], a

jr_00d_7ce1:
    xor a
    ld [$c667], a
    ret


    ld hl, $c6fa
    ldh a, [$e4]
    and a
    jr z, jr_00d_7cf1

    ld hl, $c6fe

jr_00d_7cf1:
    ld a, [hl]
    and a
    ret z

    ld hl, $d257
    sla [hl]
    dec hl
    rl [hl]
    ret nc

    ld a, $ff
    ld [hl+], a
    ld [hl], a
    ret


    ld a, [$c70a]
    cp $02
    ret nz

    ld b, $39
    jp Jump_00d_7e8c


    ld hl, $c71d
    ld de, $c727
    ldh a, [$e4]
    and a
    jr z, jr_00d_7d1e

    ld hl, $c71e
    ld de, $c729

jr_00d_7d1e:
    ld a, [hl]
    and a
    ret z

    cp $01
    ret nz

    ld [hl], $00
    ld a, [de]
    inc de
    ld [$d256], a
    ld a, [de]
    ld [$d257], a
    ld b, $9c
    jp Jump_00d_7e8c


    call Call_00d_4548
    jr nz, jr_00d_7d4b

    ld a, $0c
    call $39e1
    ld b, a
    ld a, $11
    call $39e7
    ld [hl], b
    ld a, $13
    call $39e7
    ld [hl], b

jr_00d_7d4b:
    ld hl, $c71d
    ldh a, [$e4]
    and a
    jr z, jr_00d_7d56

    ld hl, $c71e

jr_00d_7d56:
    ld a, [hl]
    and a
    jr nz, jr_00d_7d87

    ld a, $04
    ld [hl], a
    call Call_00d_4eee
    call Call_00d_7e80
    ld hl, $5817
    call $3ad5
    call Call_00d_5004
    ld de, $c727
    ldh a, [$e4]
    and a
    jr z, jr_00d_7d77

    ld de, $c729

jr_00d_7d77:
    ld hl, $d256
    ld a, [hl]
    ld [de], a
    ld [hl], $00
    inc hl
    inc de
    ld a, [hl]
    ld [de], a
    ld [hl], $00
    jp Jump_00d_52a3


jr_00d_7d87:
    pop bc
    call $397d
    call Call_00d_7e77
    call Call_00d_734e
    jp Jump_00d_52a3


    ld a, $0f
    call $39e7
    inc hl
    ld a, [$c70a]
    cp $01
    jr z, jr_00d_7da7

    cp $02
    ret nz

    ld [hl], $80
    ret


jr_00d_7da7:
    ld [hl], $ff
    ret


Call_00d_7daa:
    ld a, $07
    call $39e1
    and $60
    ret


Call_00d_7db2:
    ld hl, $c62d
    ldh a, [$e4]
    and a
    jr z, jr_00d_7dbd

    ld hl, $d207

jr_00d_7dbd:
    ld b, [hl]
    jp Jump_00d_7dd0


Call_00d_7dc1:
    ld hl, $d207
    ldh a, [$e4]
    and a
    jr z, jr_00d_7dcc

    ld hl, $c62d

jr_00d_7dcc:
    ld b, [hl]
    jp Jump_00d_7dd0


Jump_00d_7dd0:
    ld a, b
    and a
    ret z

    push hl
    ld hl, $67c3
    dec a
    ld c, a
    ld b, $00
    ld a, $07
    call $30fe
    ld a, $01
    call $305d
    ld b, l
    ld c, h
    pop hl
    ret


Call_00d_7de9:
    push hl
    push de
    push bc
    ld a, [$c689]
    push af
    call Call_00d_4eee
    pop af
    ld [$c689], a
    call Call_00d_7e19
    call Call_00d_5004
    pop bc
    pop de
    pop hl
    ret


Call_00d_7e01:
    push hl
    push de
    push bc
    ld a, [$c689]
    push af
    call Call_00d_4eee
    pop af
    ld [$c689], a
    call Call_00d_7e36
    call Call_00d_5004
    pop bc
    pop de
    pop hl
    ret


Call_00d_7e19:
    xor a
    ld [$cfc3], a
    ld a, $0c
    call $39e1
    and a
    ret z

    ld [$cfc2], a
    ldh a, [$e4]
    and a
    ld a, $01
    jr z, jr_00d_7e30

    ld a, $04

jr_00d_7e30:
    ld [$cfca], a
    jp Jump_00d_7e47


Call_00d_7e36:
    xor a
    ld [$cfca], a
    ld [$cfc3], a
    ld a, $0c
    call $39e1
    and a
    ret z

Call_00d_7e44:
Jump_00d_7e44:
    ld [$cfc2], a

Jump_00d_7e47:
    push hl
    push de
    push bc
    ld hl, $40d6
    ld a, $33
    rst $08
    pop bc
    pop de
    pop hl
    ret


Call_00d_7e54:
    ld a, e
    ld [$cfc2], a
    ld a, d
    ld [$cfc3], a
    xor a
    ld [$cfca], a
    push hl
    push de
    push bc
    call Call_00d_4ffd
    ld hl, $40d6
    ld a, $33
    rst $08
    call Call_00d_4ffd
    pop bc
    pop de
    pop hl
    ret


Call_00d_7e73:
Jump_00d_7e73:
    ld a, $0f
    rst $08
    ret


Call_00d_7e77:
Jump_00d_7e77:
    call Call_00d_4eee
    call Call_00d_7e80
    jp Jump_00d_5004


Call_00d_7e80:
Jump_00d_7e80:
    ld c, $28
    jp $0468


Call_00d_7e85:
    ld hl, $7e8b
    jp $3ac3


    ld d, b

Jump_00d_7e8c:
    ld a, [$c6b3]
    ld h, a
    ld a, [$c6b2]
    ld l, a

jr_00d_7e94:
    ld a, [hl+]
    cp b
    jr nz, jr_00d_7e94

    ld a, h
    ld [$c6b3], a
    ld a, l
    ld [$c6b2], a
    ret


Call_00d_7ea1:
    push bc
    ld bc, $0007
    call $30fe
    call Call_00d_7ebb
    pop bc
    ret


Call_00d_7ead:
    ld hl, $5afb
    ld bc, $0007
    call $30fe
    ld a, $10
    jp $0e8d


Call_00d_7ebb:
    ld a, $10
    jp $304d


Call_00d_7ec0:
    ld a, $3e
    ld hl, $7d54
    rst $08
    ret


Call_00d_7ec7:
Jump_00d_7ec7:
    ld a, $3e
    ld hl, $7d71
    rst $08
    ret


Call_00d_7ece:
Jump_00d_7ece:
    ld a, $3e
    ld hl, $7d69
    rst $08
    ret


Call_00d_7ed5:
    push hl
    push de
    push bc
    ld a, $13
    ld hl, $6a44
    rst $08
    pop bc
    pop de
    pop hl
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
