; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    ret


    call $05a7
    ld a, [$d269]
    ld [$d848], a
    call Call_023_4117
    ld [$d841], a
    ret


    ld hl, $d846
    bit 7, [hl]
    jr nz, jr_023_406e

    ld a, [$d269]
    ld hl, $d848
    cp [hl]
    jr z, jr_023_406e

    ld a, [$d269]
    ld [$d848], a
    call Call_023_4117
    ld hl, $d841
    cp [hl]
    jr z, jr_023_406e

    ld [$d841], a
    ld hl, $d038
    ldh a, [rSVBK]
    ld b, a
    ld a, $05
    ldh [rSVBK], a
    ld c, $04

jr_023_403f:
    ld d, [hl]
    inc hl
    ld e, [hl]
    inc hl
    push de
    dec c
    jr nz, jr_023_403f

    ld a, b
    ldh [rSVBK], a
    ld b, $09
    call $3340
    ld hl, $d03f
    ldh a, [rSVBK]
    ld d, a
    ld a, $05
    ldh [rSVBK], a
    ld e, $04

jr_023_405b:
    pop bc
    ld [hl], c
    dec hl
    ld [hl], b
    dec hl
    dec e
    jr nz, jr_023_405b

    ld a, d
    ldh [rSVBK], a
    call Call_023_4070
    call $045a
    scf
    ret


jr_023_406e:
    and a
    ret


Call_023_4070:
    ld c, $09
    call Call_023_417c
    call Call_023_414e
    ret


    ld c, $12
    call Call_023_417c
    ld b, $04
    call Call_023_416d
    ret


    call Call_023_40c1
    ld c, $09
    call Call_023_417c
    ld b, $04
    call Call_023_415e
    ret


    call Call_023_40c1
    ld c, $09
    call Call_023_417c
    ld b, $04

jr_023_409c:
    call Call_023_414e
    inc hl
    inc hl
    inc hl
    ld c, $07
    call $0468
    dec b
    jr nz, jr_023_409c

    ret


    ld c, $00
    call Call_023_417c
    ld b, $04
    call Call_023_415e
    ret


    ld c, $09
    call Call_023_417c
    ld b, $04
    call Call_023_416d
    ret


Call_023_40c1:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d000
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld hl, $d008
    ld c, $06

jr_023_40d4:
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_023_40d4

    pop af
    ldh [rSVBK], a
    ret


    ld hl, $410f
    ld a, [$c2d0]
    cp $04
    jr z, jr_023_40fc

    and $07
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    ld [$d847], a
    ret


jr_023_40fc:
    ld a, [$d84c]
    bit 2, a
    jr nz, jr_023_4109

    ld a, $ff
    ld [$d847], a
    ret


jr_023_4109:
    ld a, $aa
    ld [$d847], a
    ret


    db $e4
    ld d, l
    xor d
    nop
    rst $38
    db $e4
    db $e4
    db $e4

Call_023_4117:
    ld a, [$d269]
    ld e, a
    ld d, $00
    ld hl, $4126
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld l, $41
    inc [hl]
    ld b, c
    ld a, $41
    ld b, [hl]
    ld b, c
    ld a, [$d847]
    and $03
    ret


    ld a, [$d847]
    and $0c
    srl a
    srl a
    ret


    ld a, [$d847]
    and $30
    swap a
    ret


    ld a, [$d847]
    and $c0
    rlca
    rlca
    ret


Call_023_414e:
    push hl
    push de
    ld a, [hl+]
    call $0c9f
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    call $0ccb
    pop de
    pop hl
    ret


Call_023_415e:
jr_023_415e:
    call Call_023_414e
    inc hl
    inc hl
    inc hl
    ld c, $02
    call $0468
    dec b
    jr nz, jr_023_415e

    ret


Call_023_416d:
jr_023_416d:
    call Call_023_414e
    dec hl
    dec hl
    dec hl
    ld c, $02
    call $0468
    dec b
    jr nz, jr_023_416d

    ret


Call_023_417c:
    ldh a, [$e6]
    and a
    jr nz, jr_023_4197

    ld a, [$d841]
    and $03
    push bc
    ld c, a
    ld b, $00
    ld hl, $419e
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    ld b, $00
    add hl, bc
    ret


jr_023_4197:
    ld hl, $41fa
    ld b, $00
    add hl, bc
    ret


    and [hl]
    ld b, c
    cp e
    ld b, c
    ret nc

    ld b, c
    push hl
    ld b, c
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $f9
    db $e4
    db $e4
    db $e4
    ret nc

    ret nc

    sub b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $f9
    db $e4
    db $e4
    db $e4
    ret nc

    ret nc

    sub b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $f9
    db $e4
    db $e4
    jp hl


    ret nc

    ret nc

    sub b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    cp $e4
    rst $38
    db $fd
    ret nc

    rst $38
    db $fd
    add b
    rst $38
    nop
    ld b, b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $f9
    ld sp, hl
    ld sp, hl
    db $e4
    db $e4
    db $e4
    sub b
    sub b
    sub b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    call Call_023_426d
    ldh a, [rBGP]
    ld [$cfc7], a
    ldh a, [rOBP0]
    ld [$cfc8], a
    ldh a, [rOBP1]
    ld [$cfc9], a
    call $045a
    ld hl, $ff9e
    ld a, [hl]
    push af
    ld [hl], $01

jr_023_422b:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_023_423a

    call Call_023_4314
    call $045a
    jr jr_023_422b

jr_023_423a:
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
    ld a, $ff
    ld [$cfc7], a
    call $0c9f
    call $045a
    xor a
    ldh [$c6], a
    ldh [$c7], a
    ldh [$c8], a
    ldh [$d0], a
    ld a, $01
    ldh [rSVBK], a
    pop af
    ldh [$9e], a
    call $045a
    ret


Call_023_426d:
    ld a, [$c2dc]
    cp $04
    jr z, jr_023_4288

    ld a, $01
    ld hl, $6454
    rst $08
    call $1ad2
    call $045a
    call Call_023_42a0
    call Call_023_4f4f
    jr jr_023_428b

jr_023_4288:
    call Call_023_42aa

jr_023_428b:
    ld a, $90
    ldh [$d2], a
    call $045a
    xor a
    ldh [$d4], a
    ld hl, $cf63
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_023_46d8
    ret


Call_023_42a0:
    call Call_023_42aa
    ld hl, $9800
    call Call_023_42cf
    ret


Call_023_42aa:
    ld de, $42f4
    ld hl, $8fe0
    ld b, $23
    ld c, $02
    call $0eba
    ldh a, [rVBK]
    push af
    ld a, $01
    ldh [rVBK], a
    ld de, $42f4
    ld hl, $8fe0
    ld b, $23
    ld c, $02
    call $0eba
    pop af
    ldh [rVBK], a
    ret


Call_023_42cf:
    ldh a, [rSVBK]
    push af
    ld a, $06
    ldh [rSVBK], a
    push hl
    ld hl, $d000
    ld bc, $0280

jr_023_42dd:
    ld [hl], $ff
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_023_42dd

    pop hl
    ld de, $d000
    ld b, $23
    ld c, $28
    call $0eba
    pop af
    ldh [rSVBK], a
    ret


    rst $38
    rst $38
    add c
    add c
    jp $e781


    add c
    rst $20
    sbc c
    jp $81bd


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

Call_023_4314:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $4323
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    ld h, l
    ld b, e
    call c, $a145
    ld b, e
    xor e
    ld b, e
    xor e
    ld b, e
    xor e
    ld b, e
    sbc h
    ld b, e
    add sp, $43
    ld [$dc44], sp
    ld b, l
    and c
    ld b, e
    xor e
    ld b, e
    xor e
    ld b, e
    xor e
    ld b, e
    sbc h
    ld b, e
    ld l, b
    ld b, a
    call c, $a145
    ld b, e
    xor e
    ld b, e
    xor e
    ld b, e
    xor e
    ld b, e
    sbc h
    ld b, e
    dec a
    ld b, h
    ld c, a
    ld b, h
    call c, $a145
    ld b, e
    xor e
    ld b, e
    xor e
    ld b, e
    xor e
    ld b, e
    sbc h
    ld b, e
    ld a, b
    ld b, l

jr_023_4361:
    adc a
    ld b, l
    sub e
    ld b, e
    ld de, $0000
    ld a, [$c639]
    add $03
    ld hl, $d213
    cp [hl]
    jr nc, jr_023_4375

    set 0, e

jr_023_4375:
    ld a, [$d19a]
    cp $04
    jr z, jr_023_4386

    cp $05
    jr z, jr_023_4386

    cp $07
    jr z, jr_023_4386

    set 1, e

jr_023_4386:
    ld hl, $438f
    add hl, de
    ld a, [hl]
    ld [$cf63], a
    ret


    ld bc, $1009
    jr jr_023_4361

    dec bc
    jr nc, jr_023_43d5

    add b
    ld [$cf63], a
    ret


Call_023_439c:
    ld hl, $cf63
    inc [hl]
    ret


    call Call_023_439c
    xor a
    ld [$cf64], a
    ldh [$d4], a
    ret


    call Call_023_43b3
    ret nc

    call Call_023_439c
    ret


Call_023_43b3:
    ld a, [$d847]
    cp $ff
    jr z, jr_023_43d5

    ld hl, $cf64
    ld a, [hl]
    inc [hl]
    srl a
    ld e, a
    ld d, $00
    ld hl, $43db
    add hl, de
    ld a, [hl]
    cp $01
    jr z, jr_023_43d5

    ld [$cfc7], a
    call $0c9f
    and a
    ret


jr_023_43d5:
    xor a
    ld [$cf64], a
    scf
    ret


    ld sp, hl
    cp $ff
    cp $f9
    db $e4
    sub b
    ld b, b
    nop
    ld b, b
    sub b
    db $e4
    ld bc, $013e
    ld hl, $5602
    rst $08
    ld a, $05
    ldh [rSVBK], a
    call Call_023_439c
    ld a, $43
    ldh [$c6], a
    xor a
    ldh [$c7], a
    ld a, $90
    ldh [$c8], a
    xor a
    ld [$cf64], a
    ld [$cf65], a
    ret


    ld a, [$cf64]
    cp $60
    jr nc, jr_023_4413

    call Call_023_4419
    ret


jr_023_4413:
    ld a, $20
    ld [$cf63], a
    ret


Call_023_4419:
    ld hl, $cf65
    ld a, [hl]
    inc [hl]
    ld hl, $cf64
    ld d, [hl]
    add [hl]
    ld [hl], a
    ld a, $90
    ld bc, $d100
    ld e, $00

jr_023_442b:
    push af
    push de
    ld a, e
    call Call_023_46f7
    ld [bc], a
    inc bc
    pop de
    ld a, e
    add $02
    ld e, a
    pop af
    dec a
    jr nz, jr_023_442b

    ret


    ld a, $01
    ld hl, $5602
    rst $08
    ld a, $05
    ldh [rSVBK], a
    call Call_023_439c
    xor a
    ld [$cf64], a
    ret


    xor a
    ldh [$d4], a
    ld a, [$cf64]
    ld e, a
    ld d, $00
    ld hl, $4490
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [hl+]
    cp $ff
    jr z, jr_023_447a

    ld [$cf65], a
    call Call_023_44f5
    ld a, $01
    ldh [$d4], a
    call $045a
    call $045a
    ld hl, $cf64
    inc [hl]
    ret


jr_023_447a:
    ld a, $01
    ldh [$d4], a
    call $045a
    call $045a
    call $045a
    xor a
    ldh [$d4], a
    ld a, $20
    ld [$cf63], a
    ret


    nop
    jr c, jr_023_44d8

    add hl, de
    push bc
    nop
    ld a, $45
    call c, $00c4
    ld c, b
    ld b, l
    and c
    call nz, Call_023_5a00
    ld b, l
    and l
    call nz, $6800
    ld b, l
    xor c
    call nz, Call_023_6801
    ld b, l
    xor d
    call nz, Call_023_5a01
    ld b, l
    xor [hl]
    call nz, $4801
    ld b, l
    or d
    call nz, $3e01
    ld b, l
    rst $28
    call nz, $3801
    ld b, l
    ld a, [hl+]
    push bc
    inc bc
    jr c, jr_023_450a

    adc [hl]
    push bc
    inc bc
    ld a, $45
    set 0, l
    inc bc
    ld c, b
    ld b, l
    ld b, $c6
    inc bc
    ld e, d
    ld b, l
    ld [bc], a
    add $03
    ld l, b

jr_023_44d8:
    ld b, l
    cp $c5
    ld [bc], a
    ld l, b
    ld b, l
    db $fd
    push bc
    ld [bc], a
    ld e, d
    ld b, l
    ld sp, hl
    push bc
    ld [bc], a
    ld c, b
    ld b, l
    push af
    push bc
    ld [bc], a
    ld a, $45
    cp b
    push bc
    ld [bc], a
    jr c, @+$47

    ld a, l
    push bc
    rst $38

Call_023_44f5:
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

jr_023_44fc:
    push hl
    ld a, [de]
    ld c, a
    inc de

jr_023_4500:
    ld [hl], $ff
    ld a, [$cf65]
    bit 0, a
    jr z, jr_023_450c

    inc hl

jr_023_450a:
    jr jr_023_450d

jr_023_450c:
    dec hl

jr_023_450d:
    dec c
    jr nz, jr_023_4500

    pop hl
    ld a, [$cf65]
    bit 1, a
    ld bc, $0014
    jr z, jr_023_451e

    ld bc, $ffec

jr_023_451e:
    add hl, bc
    ld a, [de]
    inc de
    cp $ff
    ret z

    and a
    jr z, jr_023_44fc

    ld c, a

jr_023_4528:
    ld a, [$cf65]
    bit 0, a
    jr z, jr_023_4532

    dec hl
    jr jr_023_4533

jr_023_4532:
    inc hl

jr_023_4533:
    dec c
    jr nz, jr_023_4528

    jr jr_023_44fc

    ld [bc], a
    inc bc
    dec b
    inc b
    add hl, bc
    rst $38
    ld bc, $0201
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc bc
    rst $38
    ld [bc], a
    ld bc, $0103
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, $0103
    ld [bc], a
    ld bc, $0101
    ld bc, $04ff
    ld bc, $0004
    inc bc
    ld bc, $0003
    ld [bc], a
    ld bc, $0002
    ld bc, $04ff
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $3eff
    ld bc, $0221
    ld d, [hl]
    rst $08
    ld a, $05
    ldh [rSVBK], a
    call Call_023_439c
    ld a, $10
    ld [$cf64], a
    ld a, $01
    ldh [$d4], a
    ret


    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_023_45a2

    dec [hl]
    ld c, $0c

jr_023_4599:
    push bc
    call Call_023_45b8
    pop bc
    dec c
    jr nz, jr_023_4599

    ret


jr_023_45a2:
    ld a, $01
    ldh [$d4], a
    call $045a
    call $045a
    call $045a
    xor a
    ldh [$d4], a
    ld a, $20
    ld [$cf63], a
    ret


Call_023_45b8:
jr_023_45b8:
    call $2f8c
    cp $12
    jr nc, jr_023_45b8

    ld b, a

jr_023_45c0:
    call $2f8c
    cp $14
    jr nc, jr_023_45c0

    ld c, a
    ld hl, $c48c
    ld de, $0014
    inc b

jr_023_45cf:
    add hl, de
    dec b
    jr nz, jr_023_45cf

    add hl, bc
    ld a, [hl]
    cp $ff
    jr z, jr_023_45b8

    ld [hl], $ff
    ret


    ld a, [$d22f]
    and a
    jp z, Jump_023_4673

    xor a
    ldh [$d4], a
    ld hl, $cdd9
    ld bc, $0168
    inc b
    inc c
    jr jr_023_45f4

jr_023_45f0:
    ld a, [hl]
    or $07
    ld [hl+], a

jr_023_45f4:
    dec c
    jr nz, jr_023_45f0

    dec b
    jr nz, jr_023_45f0

    call Call_023_46b1
    ld hl, $c4b6
    ld b, $10

jr_023_4602:
    push hl
    ld c, $02

jr_023_4605:
    push hl
    ld a, [de]
    inc de

jr_023_4608:
    and a
    jr z, jr_023_4614

    sla a
    jr nc, jr_023_4611

    ld [hl], $fe

jr_023_4611:
    inc hl
    jr jr_023_4608

jr_023_4614:
    pop hl
    push bc
    ld bc, $0008
    add hl, bc
    pop bc
    dec c
    jr nz, jr_023_4605

    pop hl
    push bc
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_023_4602

    ldh a, [$e6]
    and a
    jr nz, jr_023_4639

    ld a, $01
    ldh [$d4], a
    call $045a
    call $045a
    jr jr_023_4673

jr_023_4639:
    ld hl, $46a1
    ld a, [$d841]
    and $03
    cp $03
    jr nz, jr_023_4648

    ld hl, $46a9

jr_023_4648:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    call Call_023_4677
    push hl
    ld de, $d038
    ld bc, $0008
    call $3026
    pop hl
    ld de, $d0b8
    ld bc, $0008
    call $3026
    pop af
    ldh [rSVBK], a
    ld a, $01
    ldh [$e5], a
    call $045a
    call Call_023_4f4f

Jump_023_4673:
jr_023_4673:
    call Call_023_439c
    ret


Call_023_4677:
    ld de, $d038
    call Call_023_4698
    ld de, $d0b8
    call Call_023_4698
    ld de, $d070
    call Call_023_4698
    ld de, $d0f0
    call Call_023_4698
    ld de, $d078
    call Call_023_4698
    ld de, $d0f8

Call_023_4698:
    push hl
    ld bc, $0008
    call $3026
    pop hl
    ret


    ld e, a
    db $76
    ld a, a
    dec a
    cp a
    inc d
    rst $20
    inc e
    ld e, a
    db $76
    cp a
    inc d
    cp a
    inc d
    cp a
    inc d

Call_023_46b1:
    ld a, [$d22f]
    ld de, $46b8
    ret


    inc bc
    ret nz

    rrca
    ldh a, [$3c]
    inc a
    jr nc, jr_023_46cc

    ld h, b
    ld b, $63
    add $c6
    ld h, e
    db $fc
    ccf
    db $fc
    ccf
    add $63

jr_023_46cc:
    ld h, e
    add $60
    ld b, $30
    inc c
    inc a
    inc a
    rrca
    ldh a, [$03]
    ret nz

Call_023_46d8:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $d100
    call Call_023_46ef
    ld hl, $d200
    call Call_023_46ef
    pop af
    ldh [rSVBK], a
    ret


Call_023_46ef:
    xor a
    ld c, $90

jr_023_46f2:
    ld [hl+], a
    dec c
    jr nz, jr_023_46f2

    ret


Call_023_46f7:
    and $3f
    cp $20
    jr nc, jr_023_4702

    call Call_023_470c
    ld a, h
    ret


jr_023_4702:
    and $1f
    call Call_023_470c
    ld a, h
    xor $ff
    inc a
    ret


Call_023_470c:
    ld e, a
    ld a, d
    ld d, $00
    ld hl, $4728
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0000

jr_023_471b:
    srl a
    jr nc, jr_023_4720

    add hl, de

jr_023_4720:
    sla e
    rl d
    and a
    jr nz, jr_023_471b

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
    ld a, $01
    ld hl, $5602
    rst $08
    ld de, $4792

jr_023_4771:
    ld a, [de]
    cp $ff
    jr z, jr_023_478c

    inc de
    ld c, a
    ld a, [de]
    inc de
    ld b, a
    ld a, [de]
    inc de
    ld l, a
    ld a, [de]
    inc de
    ld h, a
    xor a
    ldh [$d4], a
    call $47b7
    call $31f6
    jr jr_023_4771

jr_023_478c:
    ld a, $20
    ld [$cf63], a
    ret


    inc b
    ld [bc], a
    ld c, b
    push bc
    ld b, $04
    inc sp
    push bc
    ld [$1e06], sp
    push bc
    ld a, [bc]
    ld [$c509], sp
    inc c
    ld a, [bc]
    db $f4
    call nz, $0c0e
    rst $18
    call nz, $0e10
    jp z, $12c4

    db $10
    or l
    call nz, $1214
    and b
    call nz, $3eff
    rst $38

jr_023_47b9:
    push bc
    push hl

jr_023_47bb:
    ld [hl+], a
    dec c
    jr nz, jr_023_47bb

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_023_47b9

    ret


    ld a, $01
    ldh [$d4], a
    call $31f6
    xor a
    ldh [$d4], a
    ret


    call $3c55
    ld de, $0053
    call $3c23
    call $3c55
    ret


    ld a, $23
    ld hl, $4084
    rst $08
    ld hl, $d84c
    set 2, [hl]
    ld a, $23
    ld hl, $40e5
    rst $08
    ld a, $23
    ld hl, $4001
    rst $08
    ld b, $09
    call $3340
    ld a, $12
    ld hl, $5409
    rst $08
    ld a, $23
    ld hl, $4079
    rst $08
    ret


    ld a, $23
    ld hl, $4f53
    rst $08
    ld de, $49cc
    ld hl, $8800
    ld bc, $2304
    call $0eba
    ld de, $4893
    ld hl, $8840
    ld bc, $2308
    call $0eba
    call Call_023_4ad3
    ld a, $1b
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $84
    ld a, $90
    ld [$c3b5], a
    ld a, $23
    ld hl, $4f7a
    rst $08
    call Call_023_4913
    ld a, $20
    ld [$cf64], a
    call $3c55
    ld de, $006d
    call $3c23

jr_023_4852:
    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_023_486a

    dec [hl]
    ld a, $90
    ld [$c3b5], a
    ld a, $23
    ld hl, $4f7a
    rst $08
    call $045a
    jr jr_023_4852

jr_023_486a:
    call $2173
    call $31f6
    xor a
    ldh [$d4], a
    ld a, $23
    ld hl, $4f53
    rst $08
    ld hl, $c490
    ld bc, $0010
    xor a
    call $3041
    ld de, $4200
    ld hl, $8800
    ld bc, $3e0c
    call $0f9d
    call $0e4a
    ret


    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    rra
    dec e
    dec l
    dec hl
    ld a, [hl-]
    ccf
    ld a, $27
    add b
    add b

jr_023_48a5:
    ret nz

    ld b, b
    ret nz

    ld b, b
    jr nz, @-$1e

    jr c, jr_023_48a5

    inc d
    db $fc
    ld e, h
    db $fc
    db $e4
    db $fc
    ret z

    rst $38
    ld d, d
    ld a, a
    ld [hl], $3f
    ccf

jr_023_48ba:
    dec e
    ld a, a
    inc b
    ld a, [hl]
    ld [$063b], sp
    rrca
    ld bc, $ff03
    ld c, d
    cp $ec
    db $fc
    inc a
    ld hl, sp+$7e
    and b
    ld a, [hl]
    sub b
    ld c, h
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    ld a, [bc]
    ld c, $0f
    rra
    inc de
    jr jr_023_48fd

    ld a, b
    ld l, b
    ldh a, [$90]
    ret z

    jr c, jr_023_48ba

    ld a, [hl]
    ld b, l
    rst $38
    sub a
    rst $38
    ld [hl], d
    cp $24
    ccf
    add hl, hl
    ccf
    dec de
    rra
    ccf
    ld c, $7f
    inc b

jr_023_48fd:
    ld a, [hl]
    ld [$063b], sp

jr_023_4901:
    rrca
    ld bc, $ff01
    dec h
    rst $38
    db $76
    cp $9c
    db $fc
    ld a, [hl]
    and b
    ld a, [hl]
    sub b
    ld c, h
    ldh a, [$f0]
    nop

Call_023_4913:
    xor a
    ldh [$d4], a
    ld a, [$d4de]
    and $0c
    srl a
    ld e, a
    ld d, $00
    ld hl, $4938
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $05
    ld [hl+], a
    ld [hl-], a
    ld bc, $0014
    add hl, bc
    ld [hl+], a
    ld [hl-], a
    call $31f6
    xor a
    ldh [$d4], a
    ret


    ld [hl], b
    push bc
    jr nz, jr_023_4901

    ld b, [hl]
    push bc
    ld c, d
    push bc
    ld a, e
    and $01
    ld [$cf63], a
    call Call_023_496d
    call $3c55
    ld de, $001e
    call $3c23

jr_023_4952:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_023_496c

    ld a, $90
    ld [$c3b5], a
    ld hl, $4f7a
    ld a, $23
    rst $08
    call Call_023_4a0c
    call $045a
    jr jr_023_4952

jr_023_496c:
    ret


Call_023_496d:
    ld hl, $4f53
    ld a, $23
    rst $08
    ld de, $49cc
    ld hl, $8800
    ld bc, $2304
    call $0eba
    ld de, $498c
    ld hl, $8840
    ld bc, $2304
    call $0eba
    ret


    nop
    nop
    nop
    nop
    jr z, jr_023_49ba

    ld d, h
    ld a, h
    add d
    cp $57

jr_023_4997:
    ld a, a
    rst $28
    rst $38
    ld e, l
    ld a, a
    jr z, @+$2a

    ld d, h
    ld a, h
    and d
    cp $55
    rst $38
    ld a, [$54fe]
    db $fc
    db $ec
    ld a, [hl]
    cp b
    ld e, h
    inc c
    rrca
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    inc c
    ld a, [de]
    inc c
    ld b, $0f

jr_023_49ba:
    ld bc, $2007
    ldh [rLCDC], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ld h, b
    jr nc, jr_023_4997

    jr c, jr_023_4a31

    ldh a, [$80]
    ldh [rP1], a
    nop
    inc a
    inc a
    ld a, [hl]
    ld b, d
    db $e3
    sbc l
    rst $18
    and c
    ld a, $c2
    db $fc
    adc h
    ldh a, [$f0]
    ld bc, $0301
    inc bc
    ld b, $06
    ld c, $0a
    ld e, $12
    inc a
    inc h
    ld a, b
    ld a, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld c, $0e
    ld a, $32
    db $fc
    call nz, $3838
    nop
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
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    nop

Call_023_4a0c:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $4a1b
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    inc hl
    ld c, d
    inc a
    ld c, d
    ld e, h
    ld c, d
    ld h, h
    ld c, d
    call Call_023_4ad3
    ld a, $17
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $84

jr_023_4a31:
    ld a, $20
    ld [$cf64], a
    ld hl, $cf63
    inc [hl]
    inc [hl]
    ret


    call Call_023_4a8e
    xor a
    call Call_023_4a73
    ld a, $10
    call Call_023_4a73
    ld a, $20
    call Call_023_4a73
    ld a, $30
    call Call_023_4a73
    ld a, $20
    ld [$cf64], a
    ld hl, $cf63
    inc [hl]
    ret


    ld a, $01
    ldh [$d4], a
    ld hl, $cf63
    inc [hl]
    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_023_4a6d

    dec [hl]
    ret


jr_023_4a6d:
    ld hl, $cf63
    set 7, [hl]
    ret


Call_023_4a73:
    push de
    push af
    ld a, $16
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $80
    ld hl, $000e
    add hl, bc
    ld [hl], $04
    pop af
    ld hl, $000c
    add hl, bc
    ld [hl], a
    pop de
    ret


Call_023_4a8e:
    ld de, $0000
    ld a, [$d197]
    bit 0, a
    jr z, jr_023_4a9a

    set 0, e

jr_023_4a9a:
    ld a, [$d196]
    bit 0, a
    jr z, jr_023_4aa3

    set 1, e

jr_023_4aa3:
    ld a, [$d4de]
    and $0c
    add e
    ld e, a
    ld hl, $4ab3
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


    ld e, b
    ld h, b
    ld c, b
    ld h, b
    ld e, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld e, b
    ld b, b
    ld c, b
    ld b, b
    ld e, b
    ld d, b
    ld c, b
    ld d, b
    jr c, jr_023_4b25

    ld c, b
    ld h, b
    jr c, jr_023_4b19

    ld c, b
    ld d, b
    ld e, b
    ld h, b
    ld l, b
    ld h, b
    ld e, b
    ld d, b
    ld l, b
    ld d, b

Call_023_4ad3:
    ld a, [$d4de]
    and $0c
    srl a
    ld e, a
    ld d, $00
    ld hl, $4ae5
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ret


    ld d, b
    ld l, b
    ld d, b
    ld c, b
    ld b, b
    ld e, b
    ld h, b
    ld e, b
    call $045a
    ld a, [$d0ed]
    push af
    xor a
    ld [$d0ed], a
    call Call_023_4b9b
    ld de, $5450
    ld a, $0a
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $84
    ld hl, $0002
    add hl, bc
    ld [hl], $16
    ld a, $80
    ld [$cf64], a

jr_023_4b14:
    ld a, [$cf63]
    bit 7, a

jr_023_4b19:
    jr nz, jr_023_4b2e

    ld a, $00
    ld [$c3b5], a
    ld hl, $4f7a
    ld a, $23

jr_023_4b25:
    rst $08
    call Call_023_4bc8
    call $045a
    jr jr_023_4b14

jr_023_4b2e:
    pop af
    ld [$d0ed], a
    ret


    call $045a
    ld a, [$d0ed]
    push af
    xor a
    ld [$d0ed], a
    call Call_023_4b9b
    ld de, $fc50
    ld a, $0a
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $84
    ld hl, $0002
    add hl, bc
    ld [hl], $18
    ld hl, $000f
    add hl, bc
    ld [hl], $58
    ld a, $40
    ld [$cf64], a

jr_023_4b60:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_023_4b7a

    ld a, $00
    ld [$c3b5], a
    ld hl, $4f7a
    ld a, $23
    rst $08
    call Call_023_4bc8
    call $045a
    jr jr_023_4b60

jr_023_4b7a:
    pop af
    ld [$d0ed], a
    call Call_023_4b82
    ret


Call_023_4b82:
    ld hl, $c402
    xor a
    ld c, $04

jr_023_4b88:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc a
    dec c
    jr nz, jr_023_4b88

    ld hl, $c410
    ld bc, $0090
    xor a
    call $3041
    ret


Call_023_4b9b:
    ld hl, $4f53
    ld a, $23
    rst $08
    ld de, $49cc
    ld hl, $8800
    ld bc, $2304
    call $0eba
    ld a, [$d109]
    ld hl, $dcd8
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ld [$d265], a
    ld e, $84
    ld a, $23
    ld hl, $69bc
    rst $08
    xor a
    ld [$cf63], a
    ret


Call_023_4bc8:
    call Call_023_4be6
    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_023_4be0

    dec [hl]
    cp $40
    ret c

    and $07
    ret nz

    ld de, $0018
    call $3c23
    ret


jr_023_4be0:
    ld hl, $cf63
    set 7, [hl]
    ret


Call_023_4be6:
    ld hl, $cf65
    ld a, [hl]
    inc [hl]
    and $07
    ret nz

    ld a, [hl]
    and $18
    sla a
    add $40
    ld d, a
    ld e, $00
    ld a, $18
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $80
    ret


    ld a, [$c2dd]
    and a
    jr nz, jr_023_4c14

    ld a, $01
    ld bc, $4060
    ld de, $fca0
    jr jr_023_4c1c

jr_023_4c14:
    ld a, $ff
    ld bc, $c0a0
    ld de, $b460

jr_023_4c1c:
    ld h, a
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld a, h
    ld [$d191], a
    ld a, c
    ld [$d192], a
    ld a, b
    ld [$d193], a
    ld a, e
    ld [$d194], a
    ld a, d
    ld [$d195], a
    ldh a, [$cf]
    push af
    ldh a, [$d0]
    push af
    call Call_023_4cc9
    ld hl, $ff9e
    ld a, [hl]
    push af
    ld [hl], $01

jr_023_4c48:
    ld a, [$cf63]
    and a
    jr z, jr_023_4c66

    bit 7, a
    jr nz, jr_023_4c6b

    ld hl, $4f69
    ld a, $23
    rst $08
    call Call_023_4df7
    call Call_023_4c99
    call $3b0c
    call $045a
    jr jr_023_4c48

jr_023_4c66:
    call Call_023_4eae
    jr jr_023_4c48

jr_023_4c6b:
    pop af
    ldh [$9e], a
    call $31f3
    xor a
    ldh [$c6], a
    ldh [$c7], a
    ldh [$c8], a
    ldh [$cf], a
    ld [$cf68], a
    ld [$cf69], a
    ld [$cf6a], a
    ld [$cf6b], a
    ld [$cf67], a
    call $0fc8
    pop af
    ldh [$d0], a
    pop af
    ldh [$cf], a
    xor a
    ldh [$d4], a
    pop af
    ldh [rSVBK], a
    ret


Call_023_4c99:
    ld hl, $d200
    ld c, $2f
    ld a, [$cf64]
    add a
    ldh [$cf], a
    call Call_023_4cc4
    ld c, $30
    ld a, [$cf65]
    call Call_023_4cc4
    ld c, $31
    ld a, [$cf64]
    add a
    call Call_023_4cc4
    ld a, [$d191]
    ld d, a
    ld hl, $cf64
    ld a, [hl]
    add d
    add d
    ld [hl], a
    ret


Call_023_4cc4:
jr_023_4cc4:
    ld [hl+], a
    dec c
    jr nz, jr_023_4cc4

    ret


Call_023_4cc9:
    call $31f3
    call $300b
    call $0568
    ld hl, $4f53
    ld a, $23
    rst $08
    call Call_023_4dc3
    call Call_023_4d27
    ld a, $90
    ldh [$d2], a
    call $058a
    xor a
    ldh [$d4], a
    ldh [$cf], a
    ldh [$d0], a
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $22
    ld hl, $432c
    rst $08
    pop af
    ldh [rSVBK], a
    ld hl, $8000
    ld c, $04
    call $0eba
    ld hl, $00c0
    add hl, de
    ld d, h
    ld e, l
    ld hl, $8040
    ld c, $04
    call $0eba
    call Call_023_4da6
    ld hl, $cf63
    xor a
    ld [hl+], a
    ld a, [$d192]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $0005
    call $3bbc
    ret


Call_023_4d27:
    ld hl, $9800
    xor a

jr_023_4d2b:
    call Call_023_4d74
    ld b, $10
    call Call_023_4d6c
    inc a
    cp $12
    jr c, jr_023_4d2b

    ld hl, $98c0
    ld de, $4eff
    ld c, $14
    call Call_023_4d65
    ld hl, $98e0
    ld de, $4f13
    ld c, $14
    call Call_023_4d65
    ld hl, $9900
    ld de, $4f27
    ld c, $14
    call Call_023_4d65
    ld hl, $9920
    ld de, $4f3b
    ld c, $14
    call Call_023_4d65
    ret


Call_023_4d65:
jr_023_4d65:
    ld a, [de]
    inc de
    ld [hl+], a
    dec c
    jr nz, jr_023_4d65

    ret


Call_023_4d6c:
jr_023_4d6c:
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    dec b
    jr nz, jr_023_4d6c

    ret


Call_023_4d74:
    push hl
    ld e, a
    ld d, $00
    ld hl, $4d82
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ret


    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld [$1808], sp
    jr @+$21

    rra
    ld sp, $1131
    ld de, $1111
    dec c
    dec c
    ld sp, $0431
    inc b
    jr @+$1a

    ld c, h
    ld c, l
    ld e, h
    ld e, l
    ld c, h
    ld c, l
    ld e, h
    ld e, l

Call_023_4da6:
    ld hl, $d100
    ld bc, $0090
    ld a, [$d192]
    call $3041
    ld hl, $d200
    ld bc, $0090
    ld a, [$d192]
    call $3041
    ld a, $43
    ldh [$c6], a
    ret


Call_023_4dc3:
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld bc, $0080
    ld a, $02
    call $3041
    ld hl, $9880
    ld bc, $0140
    xor a
    call $3041
    ld hl, $99c0
    ld bc, $0080
    ld a, $02
    call $3041
    ld hl, $9907
    ld bc, $0006
    ld a, $04
    call $3041
    ld a, $00
    ldh [rVBK], a
    ret


Call_023_4df7:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $4e06
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    add hl, de
    ld c, [hl]
    ld l, l
    ld c, [hl]
    ld b, a
    ld c, [hl]
    ld l, l
    ld c, [hl]
    ld a, d
    ld c, [hl]
    ld l, l
    ld c, [hl]
    and d
    ld c, [hl]

Call_023_4e14:
    ld hl, $cf63
    inc [hl]
    ret


    ld d, $55
    ld a, [$d195]
    ld e, a
    ld b, $15
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d472]
    bit 0, a
    jr z, jr_023_4e31

    ld b, $1f

jr_023_4e31:
    pop af
    ldh [rSVBK], a
    ld a, b
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $00
    call Call_023_4e14
    ld a, $80
    ld [$cf66], a
    ret


    ld hl, $d193
    ld a, [$cf65]
    cp [hl]
    jr z, jr_023_4e64

    ld e, a
    ld a, [$d191]
    xor $ff
    inc a
    add e
    ld [$cf65], a
    ld hl, $c3c0
    ld a, [$d191]
    add [hl]
    ld [hl], a
    ret


jr_023_4e64:
    call Call_023_4e14
    ld a, $80
    ld [$cf66], a
    ret


    ld hl, $cf66
    ld a, [hl]
    and a
    jr z, jr_023_4e76

    dec [hl]
    ret


jr_023_4e76:
    call Call_023_4e14
    ret


    ld hl, $d194
    ld a, [$cf65]
    cp [hl]
    jr z, jr_023_4e9e

    ld e, a
    ld a, [$d191]
    xor $ff
    inc a
    ld d, a
    ld a, e
    add d
    add d
    ld [$cf65], a
    ld hl, $c3c0
    ld a, [$d191]
    ld d, a
    ld a, [hl]
    add d
    add d
    ld [hl], a
    ret


    ret


jr_023_4e9e:
    call Call_023_4e14
    ret


    ld a, $80
    ld [$cf63], a
    ld de, $00b9
    call $3c23
    ret


Call_023_4eae:
    ld a, $23
    ld hl, $4f69
    rst $08
    call Call_023_4df7
    call Call_023_4c99
    call $3b0c
    call $045a
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, [$d841]
    push af
    ld a, [$d19a]
    push af
    ld a, [$d269]
    and $03
    ld [$d841], a
    ld a, $01
    ld [$d19a], a
    ld b, $09
    call $3340
    call $0485
    ldh a, [rBGP]
    ld [$cfc7], a
    ldh a, [rOBP0]
    ld [$cfc8], a
    ldh a, [rOBP1]
    ld [$cfc9], a
    pop af
    ld [$d19a], a
    pop af
    ld [$d841], a
    pop af
    ldh [rSVBK], a
    ret


    rra
    dec b
    ld b, $0a
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    rra
    inc d
    dec d
    ld d, $1a
    ld a, [de]
    ld a, [de]
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    inc h
    dec h
    ld h, $27
    rlca
    cpl
    add hl, hl
    jr z, @+$2a

    jr z, @+$2a

    jr z, jr_023_4f5c

    add hl, hl
    rlca
    cpl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nz, jr_023_4f5c

    ld l, $1f
    rla
    nop
    ld l, $1f
    rra
    rra
    rra
    rra
    rra
    ld l, $17
    nop
    rra
    ld l, $1f
    rrca

Call_023_4f4f:
    call $3238
    ret


    ld hl, $c300
    ld bc, $00c1

jr_023_4f59:
    ld [hl], $00
    inc hl

jr_023_4f5c:
    dec bc
    ld a, c
    or b
    jr nz, jr_023_4f59

    ret


    call Call_023_4f69
    call $045a
    ret


Call_023_4f69:
    push hl
    push de
    push bc
    push af
    ld a, $00
    ld [$c3b5], a
    call Call_023_4f7a
    pop af
    pop bc
    pop de
    pop hl
    ret


Call_023_4f7a:
    ld hl, $c314
    ld e, $0a

jr_023_4f7f:
    ld a, [hl]
    and a
    jr z, jr_023_4f91

    ld c, l
    ld b, h
    push hl
    push de
    call Call_023_524b
    call Call_023_504c
    pop de
    pop hl
    jr c, jr_023_4fa7

jr_023_4f91:
    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_023_4f7f

    ld a, [$c3b5]
    ld l, a
    ld h, $c4

jr_023_4f9e:
    ld a, l
    cp $a0
    jr nc, jr_023_4fa7

    xor a
    ld [hl+], a
    jr jr_023_4f9e

jr_023_4fa7:
    ret


    ld hl, $c314
    ld e, $0a

jr_023_4fad:
    ld a, [hl]
    and a
    jr z, jr_023_4fbf

    ld c, l
    ld b, h
    push hl
    push de
    call Call_023_524b
    call Call_023_504c
    pop de
    pop hl
    jr c, jr_023_4fd5

jr_023_4fbf:
    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_023_4fad

    ld a, [$c3b5]
    ld l, a
    ld h, $c4

jr_023_4fcc:
    ld a, l
    cp $40
    jr nc, jr_023_4fd5

    xor a
    ld [hl+], a
    jr jr_023_4fcc

jr_023_4fd5:
    ret


Call_023_4fd6:
    push de
    push af
    ld hl, $c314
    ld e, $0a

jr_023_4fdd:
    ld a, [hl]
    and a
    jr z, jr_023_4fec

    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_023_4fdd

    pop af
    pop de
    scf
    ret


jr_023_4fec:
    ld c, l
    ld b, h
    ld hl, $c3b4
    inc [hl]
    ld a, [hl]
    and a
    jr nz, jr_023_4ff7

    inc [hl]

jr_023_4ff7:
    pop af
    ld e, a
    ld d, $00
    ld hl, $51c4
    add hl, de
    add hl, de
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0000
    add hl, bc
    ld a, [$c3b4]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    call Call_023_5109
    ld [hl+], a
    pop de
    ld hl, $0004
    add hl, bc
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    dec a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, c
    ld [$c3b8], a
    ld a, b
    ld [$c3b9], a
    ret


Call_023_5036:
    ld hl, $0000
    add hl, bc
    ld [hl], $00
    ret


    ld hl, $c314
    ld bc, $0010
    ld e, $0a
    xor a

jr_023_5046:
    ld [hl], a
    add hl, bc
    dec e
    jr nz, jr_023_5046

    ret


Call_023_504c:
    call Call_023_50ec
    call Call_023_5132
    cp $fd
    jr z, jr_023_50b9

    cp $fc
    jr z, jr_023_50b6

    call Call_023_51a2
    ld a, [$c3ba]
    add [hl]
    ld [$c3ba], a
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    ld a, [$c3b5]
    ld e, a
    ld d, $c4
    ld a, [hl+]
    ld c, a

jr_023_5071:
    ld a, [$c3bc]
    ld b, a
    ld a, [$c3be]
    add b
    ld b, a
    ld a, [$c3bf]
    add b
    ld b, a
    call Call_023_50be
    add b
    ld [de], a
    inc hl
    inc de
    ld a, [$c3bb]
    ld b, a
    ld a, [$c3bd]
    add b
    ld b, a
    ld a, [$c3c0]
    add b
    ld b, a
    call Call_023_50ce
    add b
    ld [de], a
    inc hl
    inc de
    ld a, [$c3ba]
    add [hl]
    ld [de], a
    inc hl
    inc de
    call Call_023_50de
    ld [de], a
    inc hl
    inc de
    ld a, e
    ld [$c3b5], a
    cp $a0
    jr nc, jr_023_50bb

    dec c
    jr nz, jr_023_5071

    pop bc
    jr jr_023_50b9

jr_023_50b6:
    call Call_023_5036

jr_023_50b9:
    and a
    ret


jr_023_50bb:
    pop bc
    scf
    ret


Call_023_50be:
    push hl
    ld a, [hl]
    ld hl, $c3b8
    bit 6, [hl]
    jr z, jr_023_50cc

    add $08
    xor $ff
    inc a

jr_023_50cc:
    pop hl
    ret


Call_023_50ce:
    push hl
    ld a, [hl]
    ld hl, $c3b8
    bit 5, [hl]
    jr z, jr_023_50dc

    add $08
    xor $ff
    inc a

jr_023_50dc:
    pop hl
    ret


Call_023_50de:
    ld a, [$c3b8]
    ld b, a
    ld a, [hl]
    xor b
    and $e0
    ld b, a
    ld a, [hl]
    and $1f
    or b
    ret


Call_023_50ec:
    xor a
    ld [$c3b8], a
    ld hl, $0003
    add hl, bc
    ld a, [hl+]
    ld [$c3ba], a
    ld a, [hl+]
    ld [$c3bb], a
    ld a, [hl+]
    ld [$c3bc], a
    ld a, [hl+]
    ld [$c3bd], a
    ld a, [hl+]
    ld [$c3be], a
    ret


Call_023_5109:
    push hl
    push bc
    ld hl, $c300
    ld b, a
    ld c, $0a

jr_023_5111:
    ld a, [hl+]
    cp b
    jr z, jr_023_511c

    inc hl
    dec c
    jr nz, jr_023_5111

    xor a
    jr jr_023_511d

jr_023_511c:
    ld a, [hl]

jr_023_511d:
    pop bc
    pop hl
    ret


Call_023_5120:
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ld hl, $0008
    add hl, bc
    ld [hl], $00
    ld hl, $000a
    add hl, bc
    ld [hl], $ff
    ret


Call_023_5132:
jr_023_5132:
    ld hl, $0008
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_023_5142

    dec [hl]
    call Call_023_5189
    ld a, [hl+]
    push af
    jr jr_023_5163

jr_023_5142:
    ld hl, $000a
    add hl, bc
    inc [hl]
    call Call_023_5189
    ld a, [hl+]
    cp $fe
    jr z, jr_023_517b

    cp $ff
    jr z, jr_023_516d

    push af
    ld a, [hl]
    push hl
    and $3f
    ld hl, $0009
    add hl, bc
    add [hl]
    ld hl, $0008
    add hl, bc
    ld [hl], a
    pop hl

jr_023_5163:
    ld a, [hl]
    and $c0
    srl a
    ld [$c3b8], a
    pop af
    ret


jr_023_516d:
    xor a
    ld hl, $0008
    add hl, bc
    ld [hl], a
    ld hl, $000a
    add hl, bc
    dec [hl]
    dec [hl]
    jr jr_023_5132

jr_023_517b:
    xor a
    ld hl, $0008
    add hl, bc
    ld [hl], a
    dec a
    ld hl, $000a
    add hl, bc
    ld [hl], a
    jr jr_023_5132

Call_023_5189:
    ld hl, $0001
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $56e6
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000a
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, de
    ret


Call_023_51a2:
    ld e, a
    ld d, $00
    ld hl, $594d
    add hl, de
    add hl, de
    add hl, de
    ret


    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    ld de, $6706
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    push bc
    call $0eba
    pop bc
    ret


    ld bc, $0001
    rlca
    inc b
    nop
    ld [$0505], sp
    ld a, [bc]
    ld b, $00
    dec bc
    rlca
    ld b, $0c
    ld [$0d06], sp
    add hl, bc
    rlca
    ld c, $0a
    rlca
    db $10
    dec bc
    rlca
    ld [$050c], sp
    ld de, $0000
    ld [de], a
    dec c
    ld [$0e12], sp
    ld [$0f12], sp
    ld [$1013], sp
    nop
    dec d
    nop
    nop
    ld d, $11
    nop
    rla
    ld [de], a
    nop
    jr jr_023_520e

    nop
    add hl, de
    inc de
    nop
    ld a, [de]
    inc d
    nop
    dec de
    nop
    nop
    dec e
    dec d
    nop
    ld e, $00
    nop
    dec e
    rla

jr_023_520e:
    nop
    rra
    nop
    nop
    inc h
    add hl, de
    nop
    dec h
    nop
    nop
    jr nz, jr_023_522d

    nop
    ld h, $1a
    nop
    dec l
    nop
    nop
    ld l, $00
    nop
    cpl
    nop
    nop
    jr nc, jr_023_5229

jr_023_5229:
    nop
    ld sp, $0000

jr_023_522d:
    ld [hl-], a
    dec de
    nop
    inc sp
    inc e
    nop
    inc [hl]
    nop
    nop
    dec [hl]
    dec e
    nop
    scf
    ld e, $00
    jr c, jr_023_525c

    nop
    add hl, sp
    jr nz, jr_023_5242

jr_023_5242:
    ccf
    ld hl, $3e00
    ld [hl+], a
    nop
    ld b, b
    nop
    nop

Call_023_524b:
    ld hl, $0002
    add hl, bc
    ld e, [hl]
    ld d, $00
    ld hl, $525b
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    and c

jr_023_525c:
    ld d, d
    and d
    ld d, d
    cp c
    ld d, d
    ld [$0252], a
    ld d, e
    ld l, h
    ld d, e
    ld a, d
    ld d, e
    add c
    ld d, e
    jp $2253


    ld d, h
    add hl, hl
    ld d, h
    ld a, $54
    ld [hl], e
    ld d, e
    ld l, [hl]
    ld d, h
    ld a, h
    ld d, h
    ld [hl], l
    ld d, h
    add e
    ld d, h
    ld a, [hl+]
    ld d, l
    ld b, e
    ld d, l
    ld c, d
    ld d, l
    ld a, b
    ld d, l
    ld a, a
    ld d, l
    or b
    ld d, l
    ld [c], a
    ld d, l
    rlca
    ld d, [hl]
    ld e, d
    ld d, e
    or a
    ld d, [hl]
    jr nc, jr_023_52e9

    scf
    ld d, [hl]
    ld a, $56
    ld h, [hl]
    ld d, [hl]
    cp [hl]
    ld d, [hl]
    add b
    ld d, [hl]
    and d
    ld d, [hl]
    xor [hl]
    ld d, [hl]
    ret


    ld a, [$cfa9]
    ld hl, $0000
    add hl, bc
    cp [hl]
    jr z, jr_023_52b9

    ld hl, $0004
    add hl, bc
    ld [hl], $10
    ld hl, $0007
    add hl, bc
    ld [hl], $00
    ret


jr_023_52b9:
    ld hl, $0004
    add hl, bc
    ld [hl], $18
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    ld d, a
    inc [hl]
    and $0f
    ret nz

    ld hl, $000d
    add hl, bc
    ld e, [hl]
    ld hl, $0007
    add hl, bc
    ld a, d
    and $10
    jr z, jr_023_52df

    ld a, e
    and a
    jr z, jr_023_52e6

    cp $01
    jr z, jr_023_52e2

jr_023_52df:
    xor a
    ld [hl], a
    ret


jr_023_52e2:
    ld a, $ff
    ld [hl], a
    ret


jr_023_52e6:
    ld a, $fe
    ld [hl], a

jr_023_52e9:
    ret


    ld a, [$cfa9]
    ld hl, $0000
    add hl, bc
    cp [hl]
    jr z, jr_023_52fb

    ld hl, $0004
    add hl, bc
    ld [hl], $10
    ret


jr_023_52fb:
    ld hl, $0004
    add hl, bc
    ld [hl], $18
    ret


    call Call_023_56c5
    jp hl


    ld a, [bc]
    ld d, e
    ld hl, $cd53
    ret c

    ld d, [hl]
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    ld hl, $000d
    add hl, bc
    and $03
    ld [hl], a
    inc [hl]
    swap a
    ld hl, $000c
    add hl, bc
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $a4
    jr nc, jr_023_5356

    ld hl, $000d
    add hl, bc
    add $04
    ld hl, $0004
    add hl, bc
    ld [hl], a
    ld hl, $0005
    add hl, bc
    inc [hl]
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    sla a
    sla a
    ld d, $02
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    add $03
    ld [hl], a
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ret


jr_023_5356:
    call Call_023_5036
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc a
    ld [hl], a
    ld d, $02
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ret


    ld hl, $5a3b
    ld a, $04
    rst $08
    ret


    ld hl, $60c1
    ld a, $04
    rst $08
    ret


    ld hl, $46ed
    ld a, $39
    rst $08
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_023_53ba

    dec [hl]
    dec [hl]
    ld d, a
    and $1f
    jr nz, jr_023_5395

    ld hl, $000d
    add hl, bc
    dec [hl]

jr_023_5395:
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    push af
    push de
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_023_56e2
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    ld hl, $000b
    add hl, bc
    add [hl]
    ld [hl], a
    ret


jr_023_53ba:
    ld a, $01
    ld [$cf64], a
    call Call_023_5036
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl+]
    or [hl]
    jr z, jr_023_541e

    ld hl, $000f
    add hl, bc
    ld d, [hl]
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    push af
    push de
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_023_56e2
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld hl, $000c
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $000e
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, l
    ld d, h
    ld hl, $000e
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $000c
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fff0
    add hl, de
    ld e, l
    ld d, h
    ld hl, $000c
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    xor $20
    ld [hl], a
    ret


jr_023_541e:
    call Call_023_5036
    ret


    ld hl, $721d
    ld a, $24
    rst $08
    ret


    ld hl, $72ac
    ld a, $24
    rst $08
    ld hl, $cf64
    ld a, [hl]
    cp $02
    ret nz

    ld [hl], $03
    ld a, $0f
    call Call_023_5120
    ret


    ld hl, $000b
    add hl, bc
    ld a, [hl]
    dec [hl]
    ld e, a
    and $01
    jr z, jr_023_5462

    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $78
    jr c, jr_023_5461

    call Call_023_5036
    ld a, $04
    ld [$cf64], a
    ld de, $001e
    call $3c23
    ret


jr_023_5461:
    inc [hl]

jr_023_5462:
    ld a, e
    ld d, $20
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ret


    ld hl, $40ed
    ld a, $38
    rst $08
    ret


    ld hl, $4d41
    ld a, $24
    rst $08
    ret


    ld hl, $61a1
    ld a, $38
    rst $08
    ret


    call Call_023_56c5
    jp hl


    sub e
    ld d, h
    push de
    ld d, h
    and l
    ld d, h
    cp b
    ld d, h
    add sp, $54
    ld h, $55
    ld a, $14
    call Call_023_5120
    ld hl, $000b
    add hl, bc
    ld [hl], $02
    ld hl, $000c
    add hl, bc
    ld [hl], $20
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_023_54af

    dec [hl]
    ret


jr_023_54af:
    call Call_023_56d8
    ld hl, $000c
    add hl, bc
    ld [hl], $40
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    cp $30
    jr c, jr_023_54cd

    dec [hl]
    ld d, $28
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ret


jr_023_54cd:
    ld de, $000c
    call $3c23
    jr jr_023_5526

    ld hl, $000b
    add hl, bc
    ld [hl], $04
    ld hl, $000c
    add hl, bc
    ld [hl], $30
    ld hl, $000d
    add hl, bc
    ld [hl], $24
    ret


    ld hl, $000d
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_023_551c

    ld d, a
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    call Call_023_672c
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld hl, $000c
    add hl, bc
    inc [hl]
    ld a, [hl]
    and $3f
    ret nz

    ld hl, $000c
    add hl, bc
    ld [hl], $20
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    sub $0c
    ld [hl], a
    ld de, $0020
    call $3c23
    ret


jr_023_551c:
    xor a
    ld hl, $0007
    add hl, bc
    ld [hl], a
    call Call_023_56d8
    ret


jr_023_5526:
    call Call_023_5036
    ret


    ld hl, $0004
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    cp $b0
    jr nc, jr_023_553f

    and $03
    ret nz

    ld de, $0003
    call $3c23
    ret


jr_023_553f:
    call Call_023_5036
    ret


    ld hl, $5676
    ld a, $0a
    rst $08
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    cp $80
    jr nc, jr_023_5574

    ld d, a
    add $08
    ld [hl], a
    ld hl, $000b
    add hl, bc
    ld a, [hl]
    xor $20
    ld [hl], a
    push af
    push de
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_023_56e2
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


jr_023_5574:
    call Call_023_5036
    ret


    ld hl, $5640
    ld a, $24
    rst $08
    ret


    ld hl, $000d
    add hl, bc
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0080
    add hl, de
    ld e, l
    ld d, h
    ld hl, $000d
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    push af
    push de
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_023_56e2
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0005
    add hl, bc
    ld a, [hl]
    and a
    ret z

    ld hl, $000d
    add hl, bc
    ld a, [hl]
    inc [hl]
    cp $40
    ret c

    ld hl, $0005
    add hl, bc
    dec [hl]
    dec [hl]
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, a
    cp $40
    jr nc, jr_023_55d3

    add $08
    ld [hl], a

jr_023_55d3:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    inc [hl]
    call Call_023_56e2
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


    ld hl, $0004
    add hl, bc
    ld a, [hl]
    cp $b8
    jr nc, jr_023_5603

    inc [hl]
    inc [hl]
    ld hl, $0005
    add hl, bc
    dec [hl]
    ld d, $40
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    inc [hl]
    call Call_023_56e2
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


jr_023_5603:
    call Call_023_5036
    ret


    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $54
    ret z

    ld hl, $0005
    add hl, bc
    inc [hl]
    inc [hl]
    ld hl, $000f
    add hl, bc
    ld a, [hl]
    ld d, a
    and a
    jr z, jr_023_5621

    sub $02
    ld [hl], a

jr_023_5621:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    inc [hl]
    call Call_023_56e2
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


    ld a, $42
    ld hl, $4bc7
    rst $08
    ret


    ld a, $42
    ld hl, $4be0
    rst $08
    ret


    ld a, [$cf65]
    and a
    jr nz, jr_023_5645

    ret


jr_023_5645:
    ld hl, $0007
    add hl, bc
    ld [hl], $00
    ld hl, $000d
    add hl, bc
    ld a, [hl]
    add $02
    ld [hl], a
    xor $ff
    inc a
    ld d, $20
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ld a, $36
    call Call_023_5120
    ret


    ld hl, $000c
    add hl, bc
    ld a, [hl]
    cp $14
    jr nc, jr_023_567f

    add $02
    ld [hl], a
    xor $ff
    inc a
    ld d, $20
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a

jr_023_567f:
    ret


    ld hl, $000b
    add hl, bc
    ld d, [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld hl, $000c
    add hl, bc
    ld a, [hl]
    push af
    push de
    call Call_023_56de
    ld hl, $0007
    add hl, bc
    ld [hl], a
    pop de
    pop af
    call Call_023_56e2
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ret


    ld a, [$cf64]
    cp $40
    ret nz

    ld a, $3d
    call Call_023_5120
    ret


    ld hl, $0005
    add hl, bc
    ld a, [hl]
    add $10
    ld [hl], a
    ret


    ld a, $47
    ld hl, $50b6
    rst $08
    ret


    ld a, $12
    ld hl, $5aa2
    rst $08
    ret


Call_023_56c5:
    ld hl, sp+$00
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc de
    ld hl, $000b
    add hl, bc
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


Call_023_56d8:
    ld hl, $000b
    add hl, bc
    inc [hl]
    ret


Call_023_56de:
    call Call_023_672c
    ret


Call_023_56e2:
    call Call_023_672a
    ret


    ld l, d
    ld d, a
    ld l, l
    ld d, a
    ld [hl], d
    ld d, a
    ld [hl], a
    ld d, a
    ld a, h
    ld d, a
    add c
    ld d, a
    add [hl]
    ld d, a
    and [hl]
    ld d, a
    xor e
    ld d, a
    or b
    ld d, a
    or l
    ld d, a
    call nc, $d957
    ld d, a
    ld [c], a
    ld d, a
    db $eb
    ld d, a
    db $f4
    ld d, a
    rst $38
    ld d, a
    adc e
    ld d, a
    ld [bc], a
    ld e, b
    dec b
    ld e, b
    ld [$1158], sp
    ld e, b
    jr @+$5a

    dec e
    ld e, b
    ld [hl+], a
    ld e, b
    dec h
    ld e, b
    inc l
    ld e, b
    cpl
    ld e, b
    ld h, c
    ld e, b
    ld h, h
    ld e, b
    ld h, a
    ld e, b
    ld [hl], h
    ld e, b
    ld [hl], a
    ld e, b
    ld a, d
    ld e, b
    ld a, l
    ld e, b
    add b
    ld e, b
    add e
    ld e, b
    sub b
    ld e, b
    sbc c
    ld e, b
    sbc h
    ld e, b
    sbc a
    ld e, b
    and d
    ld e, b
    and l
    ld e, b
    xor b
    ld e, b
    xor e
    ld e, b
    sub h
    ld d, a
    sbc l
    ld d, a
    xor [hl]
    ld e, b
    call $ec58
    ld e, b
    pop af

jr_023_574b:
    ld e, b
    db $f4
    ld e, b
    rst $30
    ld e, b
    cp $58
    rlca
    ld e, c
    inc c
    ld e, c
    inc de
    ld e, c
    ld d, $59
    dec e
    ld e, c
    inc h
    ld e, c
    dec hl
    ld e, c
    ld [hl-], a
    ld e, c
    dec a
    ld e, c
    ld b, b
    ld e, c
    ld b, e
    ld e, c
    ld c, b
    ld e, c
    nop
    jr nz, @+$01

    nop
    ld [$0801], sp
    cp $3d
    ld [$083e], sp
    cp $3f
    ld [$0840], sp
    cp $00
    inc b
    ld bc, $fe04
    dec a
    inc b
    ld a, $04
    cp $3f
    inc b
    ld b, b
    inc b
    cp $00
    ld [$0801], sp
    nop
    ld [$4801], sp
    cp $63
    ld [$0864], sp
    ld h, e
    ld [$4864], sp
    cp $65
    ld [$0866], sp
    ld h, l
    ld [$4866], sp
    cp $1e
    ld bc, $011f
    cp $20
    ld bc, $01fd
    cp $21
    ld bc, $01fd
    cp $81
    inc c
    add d
    ld bc, $0183
    add d
    inc b
    add c
    inc c
    add d
    inc c
    add e
    inc b
    add h
    jr nz, jr_023_574b

    inc bc
    add [hl]
    inc bc
    add a
    inc b
    adc b
    inc b
    adc c
    inc b
    adc d
    ld a, [bc]
    adc e
    rlca
    rst $38
    inc hl
    inc bc
    inc hl
    add e
    cp $24
    ld [bc], a
    dec h
    ld [bc], a
    ld h, $02
    dec h
    ld [bc], a
    cp $27
    rlca
    jr z, jr_023_57ed

    daa
    add a
    jr z, @+$49

    cp $29
    rlca

jr_023_57ed:
    ld a, [hl+]
    rlca
    add hl, hl
    rlca
    dec hl
    rlca
    cp $29
    rlca
    inc l
    rlca
    dec l
    rlca
    inc l
    rlca
    add hl, hl
    rlca
    rst $38
    ld l, $14
    rst $38
    cpl
    jr nz, @+$01

    jr nc, jr_023_5827

    rst $38
    jr nc, jr_023_580d

    ld sp, $3003

jr_023_580d:
    inc bc
    ld sp, $fe43
    ld [hl-], a
    inc b
    inc sp
    inc b
    inc [hl]
    inc b
    db $fc
    dec [hl]
    inc bc
    ld [hl], $03
    cp $37
    rlca
    jr c, jr_023_5828

    cp $39
    jr nz, @+$01

    dec sp
    ld [bc], a

jr_023_5827:
    ld a, [hl-]

jr_023_5828:
    ld [bc], a
    dec sp
    ld [bc], a
    rst $38
    inc a
    jr nz, @+$01

    ld b, c
    ld [$0842], sp
    ld b, c
    ld [$4842], sp
    cp $43
    ld [$0844], sp
    cp $45
    ld [$0846], sp
    cp $47
    ld [$0848], sp
    cp $49
    ld bc, $4149
    ld c, c
    pop bc
    ld c, c
    add c
    cp $4a
    jr nz, @+$01

    ld c, e
    jr nz, @+$01

    ld c, h
    jr nz, @+$01

    ld c, l
    jr nz, @+$01

    ld c, [hl]
    inc bc
    db $fd
    inc bc
    cp $fd
    jr nz, @+$01

    ld c, a
    jr nz, @+$01

    ld d, b
    ld [bc], a
    ld d, c
    db $10
    db $fd
    ld bc, $0152
    db $fd
    ld bc, $0153
    db $fc
    ld d, h
    jr nz, @+$01

    ld d, l
    jr nz, @+$01

    ld d, l
    ld h, b
    rst $38
    ld d, l
    and b
    rst $38
    ld d, l
    ldh [rIE], a
    ld d, [hl]
    ld a, [bc]
    ld d, a
    add hl, bc
    ld e, b
    ld a, [bc]
    ld e, c
    ld a, [bc]
    ld e, b
    add hl, bc
    ld e, d
    ld a, [bc]
    cp $50
    ld [bc], a
    ld e, e
    ld [bc], a
    ld d, b
    ld [bc], a
    ld e, e
    ld b, d
    cp $5c
    ld [bc], a
    rst $38
    ld e, l
    ld [bc], a
    rst $38
    ld e, [hl]
    ld [bc], a
    rst $38
    ld e, a
    ld [bc], a
    rst $38
    ld h, b
    ld [bc], a
    rst $38
    ld h, c
    ld [bc], a
    rst $38
    ld h, d
    ld [bc], a
    rst $38
    ld [hl-], a
    inc bc
    inc sp
    inc bc
    inc [hl]
    inc bc
    jr nc, jr_023_58b9

    ld sp, $3003

jr_023_58b9:
    inc bc
    ld sp, $3043
    inc bc
    ld sp, $3003
    inc bc
    ld sp, $3043
    inc bc
    ld sp, $3003
    inc bc
    ld sp, $ff43
    jr nc, jr_023_58d2

    ld sp, $3003

jr_023_58d2:
    inc bc
    ld sp, $3043
    inc bc
    ld sp, $3003
    inc bc
    ld sp, $3043
    inc bc
    ld sp, $3003
    inc bc
    ld sp, $3243
    inc bc
    inc sp
    inc bc
    inc [hl]
    inc bc
    db $fc
    ld h, a
    inc bc
    ld l, b
    inc bc
    cp $6c
    inc bc
    rst $38
    ld l, l
    inc bc
    rst $38
    ld l, c
    ld [bc], a
    ld l, d
    ld [bc], a
    ld l, e
    ld [bc], a
    db $fc
    ld l, [hl]
    inc bc
    ld l, a
    inc bc
    ld [hl], b
    inc bc
    ld [hl], c
    inc bc
    cp $71
    inc bc
    ld l, [hl]
    rlca
    rst $38
    ld [hl], d
    jr nz, jr_023_5982

    rlca
    ld [hl], h
    rlca
    rst $38
    ld [hl], l
    inc bc
    rst $38
    db $76
    inc bc
    ld [hl], a
    inc bc
    ld a, b
    rlca
    db $fc
    db $76
    ld b, e
    ld [hl], a
    ld b, e
    ld a, b
    ld b, a
    db $fc
    db $76
    add e
    ld [hl], a
    add e
    ld a, b
    add a
    db $fc
    db $76
    jp $c377


    ld a, b
    rst $00
    db $fc
    ld a, c
    inc bc
    ld a, d
    inc bc
    ld a, e
    inc bc
    ld a, h
    rlca
    ld a, l
    rlca
    rst $38
    ld a, [hl]
    inc bc
    rst $38
    db $fd
    nop
    rst $38
    ld a, a
    ld [$0880], sp
    rst $38
    ld a, a
    ld c, b
    add b
    ld c, b
    rst $38
    nop
    adc d
    ld e, l
    inc b
    adc d
    ld e, l
    ld c, h
    pop af
    ld e, d
    ld e, h
    pop af
    ld e, d
    ld l, h
    or $5a
    ld l, [hl]
    or $5a
    dec l
    ldh a, [$5d]
    ld c, l
    ldh a, [$5d]
    ld h, b
    add hl, bc
    ld e, [hl]
    nop
    add hl, bc
    ld e, [hl]
    nop
    add hl, bc
    ld e, [hl]
    ld b, $09
    ld e, [hl]
    inc c
    ld a, [hl]
    ld e, [hl]
    dec c
    pop af
    ld e, d
    nop
    ld d, e
    ld e, h
    inc b
    ld d, e
    ld e, h
    ld [$5c53], sp
    ld b, b
    ld d, e

jr_023_5982:
    ld e, h
    ld b, h
    ld d, e
    ld e, h
    ld c, b
    ld d, e
    ld e, h
    ld c, h
    ld d, e
    ld e, h
    add b
    add a
    ld e, [hl]
    add l
    add a
    ld e, [hl]
    adc d
    add a
    ld e, [hl]
    nop
    add hl, hl
    ld e, e
    ld bc, $5b5c
    add hl, bc
    sbc l
    ld e, e
    db $10
    sub h
    ld e, h
    add hl, hl
    sub h
    ld e, h
    ld b, d
    sub h
    ld e, h
    ld hl, sp+$7e
    ld h, c
    ld a, [$617e]
    nop
    or d
    ld e, [hl]
    nop
    jp $005e


    db $ec
    ld e, [hl]
    rrca
    rlca
    ld e, e
    ld de, $5af1
    ld [de], a
    pop af
    ld e, d
    inc de
    pop af
    ld e, d
    nop
    add hl, hl
    ld e, a
    ld [$5f29], sp
    db $10
    ld b, d
    ld e, a
    db $10
    ld e, e
    ld e, a
    db $10
    ld [hl], h
    ld e, a
    db $10
    adc l
    ld e, a
    db $10
    and [hl]
    ld e, a
    ld a, [hl-]
    pop af
    ld e, d
    nop
    adc d
    ld e, l
    nop
    jr jr_023_5a3b

    ld [bc], a
    sbc e
    ld e, l
    ld b, $5c
    ld e, e
    ld a, [bc]
    ld e, h
    ld e, e
    ld c, $5c
    ld e, e
    ld [de], a
    ld a, [hl-]
    ld e, e
    inc de
    ld a, [hl-]
    ld e, e
    nop
    adc d
    ld e, l
    inc b
    adc d
    ld e, l
    db $10
    ld e, h
    ld e, e
    nop
    sbc e
    ld e, l
    inc b
    pop af

Call_023_5a00:
    ld e, d

Call_023_5a01:
    nop
    cp a
    ld e, a
    nop
    xor h
    ld e, l
    nop
    cp l
    ld e, l
    nop
    adc $5d
    nop
    rst $18
    ld e, l
    nop
    sbc e
    ld e, l
    inc b
    sbc e
    ld e, l
    nop
    ld l, $5c
    jr nc, jr_023_5a49

    ld e, h
    inc bc
    ld l, $5c
    inc sp
    ld l, $5c
    ld b, $2e
    ld e, h
    ld [hl], $2e
    ld e, h
    add hl, bc
    ld l, $5c
    add hl, sp
    ld l, $5c
    inc c
    call z, $0c5f
    push hl
    ld e, a
    inc a
    pop af
    ld e, d
    ld a, $f1
    ld e, d
    nop

jr_023_5a3b:
    sbc h
    ld e, [hl]
    nop
    and c
    ld e, [hl]
    nop
    or $5f
    nop
    rlca
    ld h, b
    nop
    jr jr_023_5aa9

jr_023_5a49:
    nop
    pop af
    ld e, d
    ld bc, $5af1
    nop
    add hl, hl
    ld h, b
    nop
    db $76
    ld h, b
    nop
    or a
    ld h, b
    nop
    db $f4
    ld h, b
    nop
    add hl, sp
    ld h, c
    inc b
    and c
    ld e, [hl]
    nop
    add e
    ld h, c
    nop
    or h
    ld h, c
    nop
    cp c
    ld h, c
    nop
    jp z, $0061

    db $eb
    ld h, c
    nop
    ldh a, [$61]
    nop
    ld sp, hl
    ld h, c
    nop
    ld [bc], a
    ld h, d
    inc b
    ld [bc], a
    ld h, d
    nop
    inc de
    ld h, d
    inc b
    inc de
    ld h, d
    jr nz, jr_023_5aa8

    ld h, d
    ld hl, $6224
    ld [hl+], a
    ld c, e
    ld h, d
    inc hl
    ld e, h
    ld h, d
    daa
    ld a, l
    ld h, d
    ld a, [hl+]
    add hl, hl
    ld h, d
    ld a, [hl+]
    ld a, [hl-]
    ld h, d
    nop
    xor [hl]
    ld h, d
    ld [$633f], sp
    ld h, b
    or b
    ld h, e
    ld l, b
    add hl, hl
    ld h, h
    nop
    and [hl]
    ld h, h
    dec b
    and [hl]

jr_023_5aa8:
    ld h, h

jr_023_5aa9:
    ld a, [bc]
    and [hl]
    ld h, h
    ld d, b
    dec bc
    ld h, l
    nop
    ld c, h
    ld h, l
    ld bc, $6551
    inc b
    ld e, [hl]
    ld h, l
    nop
    add hl, hl
    ld e, e
    ld bc, $657b
    inc bc
    sbc h
    ld h, l
    ld [$65cd], sp
    inc e
    call $8065
    ld e, $66
    nop
    ld l, a
    ld h, [hl]
    inc b
    ld l, a
    ld h, [hl]
    ret nc

    add b
    ld h, [hl]
    db $d3
    add b
    ld h, [hl]
    sub $80
    ld h, [hl]
    ld l, h
    and l
    ld h, [hl]
    ld l, b
    and l
    ld h, [hl]
    ld h, h
    and l
    ld h, [hl]
    ld h, b
    and l
    ld h, [hl]
    inc c
    and l
    ld h, [hl]
    ld [$66a5], sp
    inc b
    and l
    ld h, [hl]
    nop
    and l
    ld h, [hl]
    ld bc, $fcfc
    nop
    nop
    inc b
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$10
    nop
    nop
    nop
    ld de, $0400
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    nop
    jr nz, jr_023_5b11

jr_023_5b11:
    ld hl, sp+$01
    nop
    nop
    nop
    ld bc, $0420
    ld hl, sp-$08
    nop
    add b
    ld hl, sp+$00
    nop
    and b
    nop
    ld hl, sp+$01
    add b
    nop
    nop
    ld bc, $04a0
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    nop
    jr nz, jr_023_5b33

jr_023_5b33:
    ld hl, sp+$00
    ld b, b
    nop
    nop
    nop
    ld h, b
    inc b
    ld hl, sp-$08
    nop
    rlca
    ld hl, sp+$00
    nop
    daa
    nop
    ld hl, sp+$00
    ld b, a
    nop
    nop
    nop
    ld h, a
    inc b
    ld hl, sp-$08
    nop
    add b
    ld hl, sp+$00
    nop
    and b
    nop
    ld hl, sp+$00
    ret nz

    nop
    nop
    nop
    ldh [rNR10], a
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    ld bc, $f800
    ldh a, [rSC]
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [rP1]
    ld bc, $f020

jr_023_5b72:
    ld [$2000], sp
    ld hl, sp+$00
    inc bc
    jr nz, jr_023_5b72

    ld [$2002], sp
    nop
    ldh a, [rSC]
    ld b, b
    nop
    ld hl, sp+$03
    ld b, b
    ld [$00f0], sp
    ld b, b
    ld [$01f8], sp
    ld b, b
    nop
    nop
    inc bc
    ld h, b
    nop
    ld [$6002], sp
    ld [$0100], sp
    ld h, b
    ld [$0008], sp
    ld h, b
    inc h
    add sp, -$18
    nop
    nop
    add sp, -$10
    ld bc, $e800
    ld hl, sp+$02
    nop
    ldh a, [$e8]
    inc bc
    nop
    ldh a, [$f0]
    inc b
    nop
    ldh a, [$f8]
    dec b
    nop
    ld hl, sp-$18
    ld b, $00
    ld hl, sp-$10
    dec b
    nop
    ld hl, sp-$08
    dec b
    nop
    add sp, $00
    ld [bc], a
    jr nz, @-$16

    ld [$2001], sp
    add sp, $10
    nop
    jr nz, @-$0e

    nop
    dec b
    jr nz, @-$0e

jr_023_5bd3:
    ld [$2004], sp
    ldh a, [rNR10]
    inc bc
    jr nz, jr_023_5bd3

    nop
    dec b
    jr nz, @-$06

    ld [$2005], sp
    ld hl, sp+$10
    ld b, $20
    nop
    add sp, $06
    ld b, b
    nop
    ldh a, [rTIMA]
    ld b, b
    nop
    ld hl, sp+$05
    ld b, b
    ld [$03e8], sp
    ld b, b
    ld [$04f0], sp
    ld b, b
    ld [$05f8], sp
    ld b, b
    db $10
    add sp, $00
    ld b, b
    db $10
    ldh a, [rSB]
    ld b, b
    db $10
    ld hl, sp+$02
    ld b, b
    nop
    nop
    dec b
    ld h, b
    nop
    ld [$6005], sp
    nop
    db $10
    ld b, $60
    ld [$0500], sp
    ld h, b
    ld [$0408], sp
    ld h, b
    ld [$0310], sp
    ld h, b
    stop
    ld [bc], a
    ld h, b
    db $10
    ld [$6001], sp
    db $10
    stop
    ld h, b
    add hl, bc
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
    stop
    db $fc
    db $fc
    ld de, $fc00
    inc b
    ld [de], a
    nop
    inc b
    db $f4
    jr nz, jr_023_5c4b

jr_023_5c4b:
    inc b
    db $fc
    ld hl, $0400
    inc b
    ld [hl+], a
    nop
    db $10
    ldh a, [$f0]
    nop
    nop
    ldh a, [$f8]
    ld bc, $f000
    nop
    ld [bc], a
    nop
    ldh a, [$08]
    inc bc
    nop
    ld hl, sp-$10
    stop
    ld hl, sp-$08
    ld de, $f800
    nop
    ld [de], a
    nop
    ld hl, sp+$08
    inc de
    nop
    nop
    ldh a, [rNR41]
    nop
    nop
    ld hl, sp+$21
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    ld [$0023], sp
    ld [$30f0], sp
    nop
    ld [$31f8], sp
    nop
    ld [$3200], sp
    nop
    ld [$3308], sp
    nop
    add hl, de
    db $ec
    db $ec
    nop
    nop
    db $f4
    db $ec
    ld bc, $fc00
    db $ec
    ld [bc], a
    nop
    inc b
    db $ec
    inc bc
    nop
    inc c
    db $ec
    inc b
    nop
    db $ec
    db $f4
    dec b
    nop
    db $f4
    db $f4
    ld b, $00
    db $fc
    db $f4
    rlca
    nop
    inc b
    db $f4
    ld [$0c00], sp
    db $f4
    add hl, bc
    nop
    db $ec
    db $fc
    ld a, [bc]
    nop
    db $f4
    db $fc
    dec bc
    nop
    db $fc
    db $fc
    inc c
    nop
    inc b
    db $fc
    dec c
    nop
    inc c
    db $fc
    ld c, $00
    db $ec
    inc b
    rrca
    nop
    db $f4
    inc b
    stop
    db $fc
    inc b
    ld de, $0400
    inc b
    ld [de], a
    nop
    inc c
    inc b
    inc de
    nop
    db $ec
    inc c
    inc d
    nop
    db $f4
    inc c
    dec d
    nop
    db $fc
    inc c
    ld d, $00
    inc b
    inc c
    rla
    nop
    inc c
    inc c
    jr jr_023_5cf9

jr_023_5cf9:
    inc h
    add sp, -$18
    nop
    nop
    add sp, -$10
    ld bc, $e800
    ld hl, sp+$02
    nop
    add sp, $00
    inc bc
    nop
    add sp, $08
    inc b
    nop
    add sp, $10
    dec b
    nop
    ldh a, [$e8]
    ld b, $00
    ldh a, [$f0]
    rlca
    nop
    ldh a, [$f8]
    ld [$f000], sp
    nop
    add hl, bc
    nop
    ldh a, [$08]
    ld a, [bc]
    nop
    ldh a, [rNR10]
    dec bc
    nop
    ld hl, sp-$18
    inc c
    nop
    ld hl, sp-$10
    dec c
    nop
    ld hl, sp-$08
    ld c, $00
    ld hl, sp+$00
    rrca
    nop
    ld hl, sp+$08
    stop
    ld hl, sp+$10
    ld de, $0000
    add sp, $12
    nop
    nop
    ldh a, [rNR13]
    nop
    nop
    ld hl, sp+$14
    nop
    nop
    nop
    dec d
    nop
    nop
    ld [$0016], sp
    nop
    db $10
    rla
    nop
    ld [$18e8], sp
    nop
    ld [$19f0], sp
    nop
    ld [$1af8], sp
    nop
    ld [$1b00], sp
    nop
    ld [$1c08], sp
    nop
    ld [$1d10], sp
    nop
    db $10
    add sp, $1e
    nop
    db $10
    ldh a, [$1f]
    nop
    db $10
    ld hl, sp+$20
    nop
    stop
    ld hl, $1000
    ld [$0022], sp
    db $10
    db $10
    inc hl
    nop
    inc b
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$02
    nop
    nop
    nop
    inc bc
    nop
    inc b
    ld hl, sp-$08
    nop
    add b
    ld hl, sp+$00
    ld bc, $0080
    ld hl, sp+$02
    add b
    nop
    nop
    inc bc
    add b
    inc b
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$08
    nop
    nop
    nop
    inc bc
    nop
    inc b
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    nop
    ld hl, sp+$08
    nop
    nop
    nop
    rlca
    nop
    inc b
    ld hl, sp-$08
    nop
    nop
    ld hl, sp+$00
    ld bc, $0000
    ld hl, sp+$09
    nop
    nop
    nop
    inc bc
    nop
    inc b
    ld hl, sp-$08
    inc b
    nop
    ld hl, sp+$00
    dec b
    nop
    nop
    ld hl, sp+$09
    nop
    nop
    nop
    rlca
    nop
    ld b, $f8
    db $f4
    nop
    ld bc, $fcf8
    ld bc, $f801
    inc b
    ld [bc], a
    ld bc, $f400
    db $10
    ld bc, $fc00
    ld de, $0001
    inc b
    ld [de], a
    ld bc, $e81d
    add sp, $00
    nop
    add sp, -$10
    ld bc, $e800
    ld hl, sp+$02
    nop
    add sp, $00
    inc bc
    nop
    ldh a, [$e8]
    stop
    ldh a, [$f0]
    ld de, $f000
    ld hl, sp+$12
    nop
    ldh a, [rP1]
    inc de
    nop
    ld hl, sp-$18
    jr nz, jr_023_5e2e

jr_023_5e2e:
    ld hl, sp-$10
    ld hl, $f800
    ld hl, sp+$22
    nop
    ld hl, sp+$00
    inc hl
    nop
    ld hl, sp+$08
    inc h
    nop
    nop
    add sp, $30
    add b
    nop
    ldh a, [$31]
    add b
    nop
    ld hl, sp+$32
    add b
    nop
    nop
    inc sp
    add b
    nop
    ld [$8034], sp
    ld [$40e8], sp
    add b
    ld [$41f0], sp
    add b
    ld [$42f8], sp
    add b
    ld [$4300], sp
    add b
    ld [$4408], sp
    add b
    ld [$4510], sp
    add b
    db $10
    ldh a, [rHDMA1]
    add b
    db $10
    ld hl, sp+$52
    add b
    stop
    ld d, e
    add b
    db $10
    ld [$8054], sp
    db $10
    db $10
    ld d, l
    add b
    ld [bc], a
    ld hl, sp-$04
    nop
    nop
    nop
    db $fc
    stop
    dec b
    ldh a, [rNR23]
    nop
    nop
    ldh a, [rNR41]
    ld bc, $f800
    db $10
    ld [bc], a
    nop
    ld hl, sp+$18
    inc bc
    nop
    nop
    db $10
    inc b
    nop
    ld bc, $fcfc
    nop
    ld b, $04
    ld hl, sp-$08
    nop
    ld b, $f8
    nop
    ld bc, $0006
    ld hl, sp+$02
    ld b, $00
    nop
    inc bc
    ld b, $04
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    jr nz, jr_023_5ebc

jr_023_5ebc:
    rst $38
    nop
    ld b, b
    nop
    nop
    nop
    ld h, b
    ld a, [bc]
    rst $38
    nop
    nop
    nop
    rst $38
    ld [$0001], sp
    rst $38
    db $10
    ld bc, $ff00
    jr jr_023_5ed4

    nop

jr_023_5ed4:
    rst $38
    jr nz, jr_023_5ed7

jr_023_5ed7:
    jr nz, jr_023_5ed9

jr_023_5ed9:
    nop
    nop
    ld b, b
    nop
    ld [$4001], sp
    nop
    db $10
    ld bc, $0040
    jr jr_023_5ee8

    ld b, b

jr_023_5ee8:
    nop
    jr nz, jr_023_5eeb

jr_023_5eeb:
    ld h, b
    rrca
    db $ec
    db $f4
    nop
    ld de, $fcec
    ld bc, $ec11
    inc b
    ld [bc], a
    ld de, $f4f4
    inc bc
    ld de, $fcf4
    inc b
    ld de, $04f4
    dec b
    ld de, $f4fc
    ld b, $11
    db $fc
    db $fc
    rlca
    ld de, $04fc
    ld [$0411], sp
    db $f4
    add hl, bc
    ld de, $fc04
    ld a, [bc]
    ld de, $0404
    dec bc
    ld de, $f40c
    inc c
    ld de, $fc0c
    dec c
    ld de, $040c
    ld c, $11
    ld b, $f4
    db $f4
    nop
    dec d
    db $f4
    db $fc
    ld [bc], a
    dec d
    db $f4
    inc b
    nop
    dec [hl]
    inc b
    db $f4
    inc b
    dec d
    inc b
    db $fc
    ld b, $15
    inc b
    inc b
    inc b
    dec [hl]
    ld b, $f4
    db $f4
    nop
    ld d, $f4
    db $fc
    ld [bc], a
    ld d, $f4
    inc b
    inc b
    ld d, $04
    db $f4
    ld b, $16
    inc b
    db $fc
    ld [$0416], sp
    inc b
    ld a, [bc]
    ld d, $06
    db $f4
    db $f4
    nop
    ld d, $f4
    db $fc
    ld [bc], a
    ld d, $f4
    inc b
    inc b
    ld d, $04
    db $f4
    inc c
    ld d, $04
    db $fc
    ld c, $16
    inc b
    inc b
    db $10
    ld d, $06
    db $f4
    db $f4
    nop
    ld d, $f4
    db $fc
    ld [bc], a
    ld d, $f4
    inc b
    inc b
    ld d, $04
    db $f4
    ld [de], a
    ld d, $04
    db $fc
    inc d
    ld d, $04
    inc b
    ld d, $16
    ld b, $f4
    db $f4
    nop
    ld d, $f4
    db $fc
    ld [bc], a
    ld d, $f4
    inc b
    inc b
    ld d, $04
    db $f4
    jr jr_023_5fb4

    inc b
    db $fc
    ld a, [de]
    ld d, $04
    inc b
    inc e
    ld d, $06
    db $f4
    db $f4
    ld e, $16
    db $f4
    db $fc
    jr nz, jr_023_5fc5

    db $f4
    inc b
    ld [hl+], a
    ld d, $04

jr_023_5fb4:
    db $f4
    inc h
    ld d, $04
    db $fc
    ld h, $16
    inc b
    inc b
    jr z, jr_023_5fd5

    inc bc
    db $f4
    db $fc
    nop
    db $10
    db $fc

jr_023_5fc5:
    db $fc
    nop
    db $10
    inc b
    db $fc
    nop
    db $10
    ld b, $00
    nop
    nop
    nop
    nop
    ld [$0001], sp

jr_023_5fd5:
    nop
    db $10
    ld bc, $0000
    jr jr_023_5fdd

    nop

jr_023_5fdd:
    nop
    jr nz, jr_023_5fe2

    nop
    nop

jr_023_5fe2:
    jr z, jr_023_5fe7

    nop
    inc b
    nop

jr_023_5fe7:
    nop
    nop
    nop
    nop
    ld [$0001], sp
    nop
    db $10
    ld [bc], a
    nop
    nop
    jr @+$05

    nop
    inc b
    ld hl, sp-$0a
    nop
    ld b, $f8
    ld [bc], a
    ld bc, $0006
    or $02
    ld b, $00
    ld [bc], a
    inc bc
    ld b, $04
    ld hl, sp-$0c
    nop
    ld b, $f8
    inc b
    ld bc, $0006
    db $f4
    ld [bc], a
    ld b, $00
    inc b
    inc bc
    ld b, $04
    ld hl, sp-$10
    nop
    ld b, $f8
    ld [$0601], sp
    nop
    ldh a, [rSC]
    ld b, $00
    ld [$0603], sp
    inc de
    ld hl, sp-$20
    nop
    nop
    ldh a, [$e8]
    ld [bc], a
    nop
    nop
    add sp, $04
    nop
    add sp, -$10
    ld b, $00
    ld hl, sp-$10
    ld [$0800], sp
    ldh a, [$0a]
    nop
    add sp, -$08
    inc c
    nop
    ld hl, sp-$08
    ld c, $00
    ld [$10f8], sp
    nop
    add sp, $00
    ld [de], a
    nop
    ld hl, sp+$00
    inc d
    nop
    ld [$1600], sp
    nop
    add sp, $08
    jr jr_023_605e

jr_023_605e:
    ld hl, sp+$08
    ld a, [de]
    nop
    ld [$1c08], sp
    nop
    ld hl, sp+$10
    ld e, $00
    ld [$2010], sp
    nop
    ldh a, [rNR23]
    ld [hl+], a
    nop
    nop
    jr jr_023_6099

    nop
    db $10
    ld hl, sp-$20
    nop
    nop
    ldh a, [$e8]
    ld [bc], a
    nop
    nop
    add sp, $04
    nop
    ld hl, sp-$10
    ld h, $00
    ld [$0af0], sp
    nop
    add sp, -$08
    jr z, jr_023_608f

jr_023_608f:
    ld hl, sp-$08
    ld a, [hl+]
    nop
    ld [$10f8], sp
    nop
    ld hl, sp+$00

jr_023_6099:
    inc l
    nop
    ld [$1600], sp
    nop
    ld hl, sp+$08
    jr nc, jr_023_60a3

jr_023_60a3:
    ld [$1c08], sp
    nop
    ld hl, sp+$10
    ld e, $00
    ld [$2010], sp
    nop
    ldh a, [rNR23]
    ld [hl+], a
    nop
    nop
    jr @+$26

    nop
    rrca
    ld hl, sp-$20
    nop
    nop
    ldh a, [$e8]
    ld [bc], a
    nop
    nop
    add sp, $32
    nop
    ld hl, sp-$10
    inc [hl]
    nop
    ld [$36f0], sp
    nop
    ld hl, sp-$08
    jr c, jr_023_60d0

jr_023_60d0:
    ld [$3af8], sp
    nop
    ld hl, sp+$00
    inc a
    nop
    ld [$3e00], sp
    nop
    ld hl, sp+$08
    jr nc, jr_023_60e0

jr_023_60e0:
    ld [$1c08], sp
    nop
    ld hl, sp+$10
    ld e, $00
    ld [$2010], sp
    nop
    ldh a, [rNR23]
    ld [hl+], a
    nop
    nop
    jr jr_023_6117

    nop
    ld de, $e0f8
    nop
    nop
    ldh a, [$e8]

jr_023_60fb:
    ld [bc], a
    nop
    nop
    add sp, $04
    nop
    ld hl, sp-$10
    ld b, b
    nop
    ld [$42f0], sp
    nop
    jr jr_023_60fb

    ld b, h
    nop
    ld hl, sp-$08

jr_023_610f:
    ld b, [hl]
    nop
    ld [$48f8], sp
    nop
    jr jr_023_610f

jr_023_6117:
    ld c, d
    nop
    ld hl, sp+$00
    ld c, h
    nop
    ld [$4e00], sp
    nop
    ld hl, sp+$08
    jr nc, jr_023_6125

jr_023_6125:
    ld [$1c08], sp
    nop
    ld hl, sp+$10
    ld e, $00
    ld [$2010], sp
    nop
    ldh a, [rNR23]
    ld [hl+], a
    nop
    nop
    jr jr_023_615c

    nop
    ld de, $e0f8
    nop
    nop
    ldh a, [$e8]
    ld [bc], a
    nop
    nop
    add sp, $04
    nop
    ld hl, sp-$10
    ld d, b
    nop
    ld [$0af0], sp
    nop
    add sp, -$08
    ld d, d
    nop
    ld hl, sp-$08
    ld d, h
    nop
    ld [$10f8], sp
    nop
    add sp, $00

jr_023_615c:
    ld d, [hl]
    nop
    ld hl, sp+$00
    ld l, $00
    ld [$1600], sp
    nop
    ld hl, sp+$08
    jr nc, jr_023_616a

jr_023_616a:
    ld [$1c08], sp
    nop
    ld hl, sp+$10
    ld e, $00
    ld [$2010], sp
    nop
    ldh a, [rNR23]
    ld [hl+], a
    nop
    nop
    jr @+$26

    nop
    ld bc, $fcfc
    nop
    ld de, $000c
    nop
    jr nc, jr_023_6188

jr_023_6188:
    nop
    ld [$0031], sp
    nop
    db $10
    ld sp, $0000
    jr @+$33

    nop
    nop
    jr nz, @+$33

    nop
    nop
    jr z, jr_023_61cd

    nop
    ld [$3300], sp
    nop
    ld [$3408], sp
    nop
    ld [$3410], sp
    nop
    ld [$3418], sp
    nop
    ld [$3420], sp
    nop
    ld [$3528], sp
    nop
    ld bc, $0000
    db $ed
    nop
    inc b
    rst $38
    rst $38
    jr nc, jr_023_61be

jr_023_61be:
    rst $38
    ld bc, $0032
    ld bc, $33ff
    nop
    ld bc, $3501
    nop
    ld [$ffff], sp

jr_023_61cd:
    jr nc, jr_023_61cf

jr_023_61cf:
    rst $38
    inc b
    ld sp, $ff00
    inc c
    ld sp, $ff00
    ld de, $0032
    ld bc, $33ff
    nop
    ld bc, $3404
    nop
    ld bc, $340c
    nop
    ld bc, $3511
    nop
    ld bc, $0000
    inc [hl]
    nop
    ld [bc], a
    nop
    nop
    jr nc, jr_023_61f5

jr_023_61f5:
    ld [$3300], sp
    nop
    ld [bc], a
    nop
    nop
    ld [hl-], a
    nop
    ld [$3500], sp
    nop
    inc b
    ld hl, sp-$08
    nop
    ld bc, $00f8
    ld bc, $0001
    ld hl, sp+$02
    ld bc, $0000
    inc bc
    ld bc, $f804
    ld hl, sp+$00
    add c
    ld hl, sp+$00
    ld bc, $0081
    ld hl, sp+$02
    add c
    nop
    nop
    inc bc
    add c
    ld bc, $fcfc
    nop
    ld [bc], a
    inc b
    ldh a, [$fc]
    nop
    inc bc
    ld hl, sp-$04
    ld bc, $0003
    db $fc
    ld [bc], a
    inc bc
    ld [$03fc], sp
    inc bc
    inc b
    ldh a, [$fc]
    inc bc
    ld b, h
    ld hl, sp-$04
    ld [bc], a
    ld b, h
    nop
    db $fc
    ld bc, $0844
    db $fc
    nop
    ld b, h
    inc b
    ld hl, sp-$08
    nop
    ld bc, $00f8
    nop
    ld hl, $f800
    nop
    ld b, c
    nop
    nop
    nop
    ld h, c
    ld [$f4f4], sp
    nop
    ld bc, $fcf4
    ld bc, $f401
    inc b
    nop
    ld hl, $f4fc
    ld [bc], a
    ld bc, $04fc
    ld [bc], a
    ld hl, $f404
    nop
    ld b, c
    inc b
    db $fc
    ld bc, $0441
    inc b
    nop
    ld h, c
    inc c
    ldh a, [$f0]
    nop
    ld bc, $f8f0
    ld bc, $f801
    ldh a, [rSC]
    ld bc, $00f0
    ld bc, $f021
    ld [$2100], sp
    ld hl, sp+$08
    ld [bc], a
    ld hl, $f000
    ld [bc], a
    ld b, c
    ld [$00f0], sp
    ld b, c
    ld [$01f8], sp
    ld b, c
    nop
    ld [$6102], sp
    ld [$0100], sp
    ld h, c
    ld [$0008], sp
    ld h, c
    inc h
    add sp, $08
    dec b
    nop
    add sp, $10
    ld b, $00
    add sp, $18
    rlca
    nop
    ldh a, [$e8]
    ld de, $f000
    ldh a, [rNR12]
    nop
    ldh a, [$f8]
    inc de
    nop
    ldh a, [rP1]
    inc d
    nop
    ldh a, [$08]
    dec d
    nop
    ldh a, [rNR10]
    ld d, $00
    ldh a, [rNR23]
    rla
    nop
    ld hl, sp-$20
    jr nz, jr_023_62db

jr_023_62db:
    ld hl, sp-$18
    ld hl, $f800
    ldh a, [rNR43]
    nop
    ld hl, sp-$08
    inc hl
    nop
    ld hl, sp+$00
    inc h
    nop
    ld hl, sp+$08
    dec h
    nop
    ld hl, sp+$10
    ld h, $00
    ld hl, sp+$18
    daa
    nop
    nop
    ldh [$30], a
    nop
    nop
    add sp, $31
    nop
    nop
    ldh a, [$32]
    nop
    nop
    ld hl, sp+$33
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    ld [$0035], sp
    nop
    db $10
    ld [hl], $00
    ld [$40e0], sp
    nop
    ld [$41e8], sp
    nop
    ld [$42f0], sp
    nop
    ld [$43f8], sp
    nop
    ld [$4400], sp
    nop
    ld [$4508], sp
    nop
    ld [$4610], sp
    nop
    ld [$4718], sp
    nop
    db $10
    ldh [$50], a
    nop
    db $10
    add sp, $51
    nop
    db $10
    jr @+$59

    nop
    inc e
    add sp, $00
    inc b
    nop
    add sp, $08
    dec b
    nop
    add sp, $10
    ld b, $00
    ldh a, [$e8]
    ld de, $f000
    ldh a, [rNR12]
    nop
    ldh a, [$f8]
    inc de
    nop
    ldh a, [rP1]
    inc d
    nop
    ldh a, [$08]
    dec d
    nop
    ldh a, [rNR10]
    ld d, $00
    ld hl, sp-$18
    ld hl, $f800
    ldh a, [rNR43]
    nop
    ld hl, sp-$08
    inc hl
    nop
    ld hl, sp+$00
    inc h
    nop
    ld hl, sp+$08
    dec h
    nop
    ld hl, sp+$10
    ld h, $00
    nop
    ldh [$30], a
    nop
    nop
    add sp, $31
    nop
    nop
    ldh a, [$32]
    nop
    nop
    ld hl, sp+$33
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    ld [$0035], sp
    ld [$42f0], sp
    nop
    ld [$43f8], sp
    nop
    ld [$4400], sp
    nop
    ld [$4508], sp
    nop
    db $10
    ld hl, sp+$53
    nop
    stop
    ld d, h
    nop
    db $10
    ld [$0055], sp
    ld e, $e8
    nop
    inc b
    nop
    add sp, $08
    dec b
    nop
    ldh a, [$e8]
    ld de, $f000
    ldh a, [rNR12]
    nop
    ldh a, [$f8]
    inc de
    nop
    ldh a, [rP1]
    inc d
    nop
    ldh a, [$08]
    dec d
    nop
    ldh a, [rNR10]
    ld d, $00
    ldh a, [rNR23]
    rla
    nop
    ld hl, sp-$20
    jr nz, jr_023_63d9

jr_023_63d9:
    ld hl, sp-$18
    ld hl, $f800
    ldh a, [rNR43]
    nop
    ld hl, sp-$08
    inc hl
    nop
    ld hl, sp+$00
    inc h
    nop
    ld hl, sp+$08
    dec h
    nop
    ld hl, sp+$10
    ld h, $00
    nop
    ldh [$30], a
    nop
    nop
    add sp, $31
    nop
    nop
    ldh a, [$32]
    nop
    nop
    ld hl, sp+$33
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    ld [$0035], sp
    ld [$42f0], sp
    nop
    ld [$43f8], sp
    nop
    ld [$4400], sp
    nop
    ld [$4508], sp
    nop
    db $10
    ldh a, [rHDMA2]
    nop
    db $10
    ld hl, sp+$53
    nop
    stop
    ld d, h
    nop
    db $10
    ld [$0055], sp
    rra
    ldh a, [$e8]
    ld de, $f000
    ldh a, [rNR12]
    nop
    ldh a, [$f8]
    inc de
    nop
    ldh a, [rP1]
    inc d
    nop
    ldh a, [$08]
    dec d
    nop
    ldh a, [rNR10]
    ld d, $00
    ldh a, [rNR23]
    rla
    nop
    ld hl, sp-$20
    jr nz, jr_023_644a

jr_023_644a:
    ld hl, sp-$18
    ld hl, $f800
    ldh a, [rNR43]
    nop
    ld hl, sp-$08
    inc hl
    nop
    ld hl, sp+$00
    inc h
    nop
    ld hl, sp+$08
    dec h
    nop
    ld hl, sp+$10
    ld h, $00
    ld hl, sp+$18
    daa
    nop
    nop
    ldh [$30], a
    nop
    nop
    add sp, $31
    nop
    nop
    ldh a, [$32]
    nop
    nop
    ld hl, sp+$33
    nop
    nop
    nop
    inc [hl]
    nop
    nop
    ld [$0035], sp
    nop
    db $10
    ld [hl], $00
    ld [$41e8], sp
    nop
    ld [$42f0], sp
    nop
    ld [$43f8], sp
    nop
    ld [$4400], sp
    nop
    ld [$4508], sp
    nop
    db $10
    add sp, $51
    nop
    db $10
    ldh a, [rHDMA2]
    nop
    stop
    ld d, h
    nop
    db $10
    ld [$0055], sp
    add hl, de
    db $ec
    db $ec
    nop
    add hl, bc
    db $ec
    db $f4
    ld bc, $ec09
    db $fc
    ld [bc], a
    add hl, bc
    db $ec
    inc b
    inc bc
    add hl, bc
    db $ec
    inc c
    inc b
    add hl, bc
    db $f4
    db $ec
    db $10
    add hl, bc
    db $f4
    db $f4
    ld de, $f409
    db $fc
    ld [de], a
    add hl, bc
    db $f4
    inc b
    inc de
    add hl, bc
    db $f4
    inc c
    inc d
    add hl, bc
    db $fc
    db $ec
    jr nz, jr_023_64dc

    db $fc
    db $f4
    ld hl, $fc09
    db $fc
    ld [hl+], a
    add hl, bc
    db $fc

jr_023_64dc:
    inc b
    inc hl
    add hl, bc
    db $fc
    inc c
    inc h
    add hl, bc
    inc b
    db $ec
    jr nc, jr_023_64f0

    inc b
    db $f4
    ld sp, $0409
    db $fc
    ld [hl-], a
    add hl, bc
    inc b

jr_023_64f0:
    inc b
    inc sp
    add hl, bc
    inc b
    inc c
    inc [hl]
    add hl, bc
    inc c
    db $ec
    ld b, b
    add hl, bc
    inc c
    db $f4
    ld b, c
    add hl, bc
    inc c
    db $fc
    ld b, d
    add hl, bc
    inc c
    inc b
    ld b, e
    add hl, bc
    inc c
    inc c
    ld b, h
    add hl, bc
    db $10
    ldh a, [$ec]
    nop
    ld a, [bc]
    ldh a, [$f4]
    ld bc, $f00a
    db $fc
    ld [bc], a
    ld a, [bc]
    ldh a, [rDIV]
    inc bc
    ld a, [bc]
    ld hl, sp-$14
    inc b
    ld a, [bc]
    ld hl, sp-$0c
    dec b
    ld a, [bc]
    ld hl, sp-$04
    ld b, $0a
    ld hl, sp+$04
    rlca
    ld a, [bc]
    nop
    db $ec
    ld [$000a], sp
    db $f4
    add hl, bc
    ld a, [bc]
    nop
    db $fc
    ld a, [bc]
    ld a, [bc]
    nop
    inc b
    dec bc
    ld a, [bc]
    ld [$0cec], sp
    ld a, [bc]
    ld [$0df4], sp
    ld a, [bc]
    ld [$0efc], sp
    ld a, [bc]
    ld [$0f04], sp
    ld a, [bc]
    ld bc, $fcfc
    nop
    nop
    inc bc
    nop
    ld hl, sp+$00
    nop
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld [bc], a
    nop
    rlca
    ld [$00f0], sp
    nop
    nop
    ldh a, [rSB]
    nop
    ld hl, sp-$10
    ld [bc], a
    nop
    ld hl, sp-$08
    inc bc
    nop
    ldh a, [$f8]
    inc b
    nop
    ldh a, [rP1]
    dec b
    nop
    ldh a, [$08]
    ld b, $00
    ld [$f0f8], sp
    nop
    nop
    ld hl, sp-$08
    ld bc, $f800
    nop
    ld bc, $f820
    ld [$2000], sp
    nop
    ldh a, [rP1]
    ld b, b
    nop
    ld hl, sp+$01
    ld b, b
    nop
    nop
    ld bc, $0060
    ld [$6000], sp
    inc c
    add sp, -$08
    nop
    nop
    ldh a, [$f8]
    ld bc, $f800
    ld hl, sp+$02
    nop
    add sp, $00
    nop
    jr nz, @-$0e

    nop
    ld bc, $f820
    nop
    ld [bc], a
    jr nz, jr_023_65b6

jr_023_65b6:
    ld hl, sp+$02
    ld b, b
    ld [$01f8], sp
    ld b, b
    db $10
    ld hl, sp+$00
    ld b, b
    nop
    nop
    ld [bc], a
    ld h, b
    ld [$0100], sp
    ld h, b
    stop
    nop
    ld h, b
    inc d
    db $ec
    ldh a, [rP1]
    nop
    db $ec
    ld hl, sp+$01
    nop
    db $ec
    nop
    ld [bc], a
    nop
    db $ec
    ld [$0003], sp
    db $f4
    ldh a, [rDIV]
    nop
    db $f4
    ld hl, sp+$05
    nop
    db $f4
    nop
    ld b, $00
    db $f4
    ld [$0007], sp
    db $fc
    ldh a, [$08]
    nop
    db $fc
    ld hl, sp+$09
    nop
    db $fc
    nop
    ld a, [bc]
    nop
    db $fc
    ld [$000b], sp
    inc b
    ldh a, [$0c]
    nop
    inc b
    ld hl, sp+$0d
    nop
    inc b
    nop
    ld c, $00
    inc b
    ld [$000f], sp
    inc c
    ldh a, [rNR10]
    nop
    inc c
    ld hl, sp+$11
    nop
    inc c
    nop
    ld [de], a
    nop
    inc c
    ld [$0013], sp
    inc d
    nop
    ld [$8100], sp
    ld [$0010], sp
    add c
    db $10
    jr jr_023_662a

jr_023_662a:
    add c
    jr jr_023_664d

    nop
    add c
    jr nz, jr_023_6659

    nop
    add c
    jr @+$32

    nop
    add c
    db $10
    jr c, jr_023_663a

jr_023_663a:
    add c
    ld [$0040], sp
    add c
    nop
    ld c, b
    nop
    add c
    ld [$0050], sp
    add c
    db $10
    ld e, b
    nop
    add c
    jr @+$62

jr_023_664d:
    nop
    add c
    jr nz, jr_023_66b9

    nop
    add c
    jr jr_023_66c5

    nop
    add c
    db $10
    ld a, b

jr_023_6659:
    nop
    add c
    ld [$0080], sp
    add c
    nop
    adc b
    nop
    add c
    ld [$0090], sp
    add c
    db $10
    sbc b
    nop
    add c
    jr @-$5e

    nop
    add c
    inc b
    ld hl, sp-$08
    nop
    ld [bc], a
    ld hl, sp+$00
    ld bc, $0002
    ld hl, sp+$02
    ld [bc], a
    nop
    nop
    inc bc
    ld [bc], a
    add hl, bc
    ldh a, [$f4]
    nop
    ld bc, $fcf0
    ld bc, $f001
    inc b
    ld [bc], a
    ld bc, $f4f8
    db $10
    ld bc, $fcf8
    ld de, $f801
    inc b
    ld [de], a
    ld bc, $f400
    jr nz, jr_023_669e

    nop

jr_023_669e:
    db $fc
    ld hl, $0001
    inc b
    ld [hl+], a
    ld bc, $d818
    db $f4
    nop
    ld bc, $fcd8
    ld bc, $d801
    inc b
    ld [bc], a
    ld bc, $0cd8
    inc bc
    ld bc, $f4e0
    db $10

jr_023_66b9:
    ld bc, $fce0
    ld de, $e001
    inc b
    ld [de], a
    ld bc, $0ce0
    inc de

jr_023_66c5:
    ld bc, $f4e8
    jr nz, @+$03

    add sp, -$04
    ld hl, $e801
    inc b
    ld [hl+], a
    ld bc, $0ce8
    inc hl
    ld bc, $f4f0
    jr nc, @+$03

    ldh a, [$fc]
    ld sp, $f001
    inc b
    ld [hl-], a
    ld bc, $0cf0
    inc sp
    ld bc, $f4f8
    ld b, b
    ld bc, $fcf8
    ld b, c
    ld bc, $04f8
    ld b, d
    ld bc, $0cf8
    ld b, e
    ld bc, $f400
    ld d, b
    ld bc, $fc00
    ld d, c
    ld bc, $0400
    ld d, d
    ld bc, $0c00
    ld d, e
    ld bc, $0180
    ld a, [hl+]
    ld h, a
    add b
    ld bc, $672a
    add b
    ld bc, $672a
    add b
    ld bc, $672a
    db $10
    scf
    ld a, [hl+]
    ld h, a
    db $10
    ld de, $672a
    db $10
    add hl, sp
    ld a, [hl+]
    ld h, a
    db $10
    inc h
    ld a, [hl+]
    ld h, a
    db $10
    ld hl, $672a

Call_023_672a:
    add $10

Call_023_672c:
    and $3f
    cp $20
    jr nc, jr_023_6737

    call Call_023_6741
    ld a, h
    ret


jr_023_6737:
    and $1f
    call Call_023_6741
    ld a, h
    xor $ff
    inc a
    ret


Call_023_6741:
    ld e, a
    ld a, d
    ld d, $00
    ld hl, $675d
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0000

jr_023_6750:
    srl a
    jr nc, jr_023_6755

    add hl, de

jr_023_6755:
    sla e
    rl d
    and a
    jr nz, jr_023_6750

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
    ldh a, [$e7]
    ld de, $67f4
    and a
    jr z, jr_023_67a8

    ld de, $6804

jr_023_67a8:
    ld hl, $8000
    ld bc, $2301
    call $0eba
    ld c, $08
    ld d, $00

jr_023_67b5:
    push bc
    call Call_023_67c6
    call $045a
    pop bc
    inc d
    inc d
    dec c
    jr nz, jr_023_67b5

    call $300b
    ret


Call_023_67c6:
    ld hl, $c400
    ld c, $08

jr_023_67cb:
    ld a, c
    and a
    ret z

    dec c
    ld a, c
    sla a
    sla a
    sla a
    push af
    push de
    push hl
    call Call_023_672c
    pop hl
    pop de
    add $68
    ld [hl+], a
    pop af
    push de
    push hl
    call Call_023_672a
    pop hl
    pop de
    add $54
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld a, $06
    ld [hl+], a
    jr jr_023_67cb

    nop
    nop
    jr jr_023_67f8

jr_023_67f8:
    inc h
    jr @+$44

    inc a
    ld b, d
    inc a
    inc h
    jr @+$1a

Call_023_6801:
    nop
    nop
    nop
    nop
    nop
    jr jr_023_6820

    inc h
    inc h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    inc h
    inc h
    jr jr_023_682a

    nop
    nop
    push hl
    push de
    push bc
    push af
    ld hl, $c300
    ld bc, $00c1

jr_023_681e:
    ld [hl], $00

jr_023_6820:
    inc hl
    dec bc
    ld a, c
    or b
    jr nz, jr_023_681e

    pop af
    pop bc
    pop de
    pop hl

jr_023_682a:
    ret


    ld a, e
    call Call_023_6ab3
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $6bbf
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld b, $23
    ld c, $08
    ret


    push hl
    push de
    push bc
    call Call_023_6849
    pop bc
    pop de
    pop hl
    ret


Call_023_6849:
    ld d, $00
    ld hl, $6854
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    push de
    ld l, b
    ld h, c
    ld l, c
    ld a, l
    ld l, c
    sbc d
    ld l, c
    sbc b
    ld l, b
    or c
    ld l, b
    ld h, d
    ld l, b
    call Call_023_6908
    call Call_023_686c
    call Call_023_6936
    ret


Call_023_686c:
    push bc
    ldh a, [$b0]
    ld hl, $dce0
    ld bc, $0030
    call $30fe
    pop bc
    ld a, [hl]
    and a
    jr z, jr_023_6890

    push hl
    push bc
    ld d, a
    ld hl, $5e76
    ld a, $2e
    rst $08
    pop bc
    pop hl
    jr c, jr_023_688e

    ld a, $06
    jr jr_023_6892

jr_023_688e:
    ld a, $05

jr_023_6890:
    ld a, $04

jr_023_6892:
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ret


    call Call_023_68d5
    ld hl, $0002
    add hl, bc
    ld a, $00
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, $48
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, $48
    ld [hl], a
    ret


    call Call_023_6908
    call Call_023_6936
    ld hl, $0002
    add hl, bc
    ld a, $00
    ld [hl], a
    ld hl, $0004
    add hl, bc
    ld a, $18
    ld [hl], a
    ld hl, $0005
    add hl, bc
    ld a, $60
    ld [hl], a
    ld a, c
    ld [$c608], a
    ld a, b
    ld [$c609], a
    ret


Call_023_68d5:
    call Call_023_6908
    call Call_023_68df
    call Call_023_6936
    ret


Call_023_68df:
    push bc
    ldh a, [$b0]
    ld hl, $dce0
    ld bc, $0030
    call $30fe
    pop bc
    ld a, [hl]
    and a
    ret z

    push hl
    push bc
    ld d, a
    ld hl, $5e76
    ld a, $2e
    rst $08
    pop bc
    pop hl
    jr c, jr_023_6900

    ld a, $03
    jr jr_023_6902

jr_023_6900:
    ld a, $02

jr_023_6902:
    ld hl, $0001
    add hl, bc
    ld [hl], a
    ret


Call_023_6908:
    ld a, [$c3b7]
    push af
    ldh a, [$b0]
    ld hl, $dcd8
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    call Call_023_6ab3
    ld [$c3b6], a
    call Call_023_69db
    ldh a, [$b0]
    add a
    add a
    add a
    add a
    add $1c
    ld d, a
    ld e, $10
    ld a, $00
    call Call_023_4fd6
    pop af
    ld hl, $0003
    add hl, bc
    ld [hl], a
    ret


Call_023_6936:
    push bc
    ldh a, [$b0]
    ld b, a
    call Call_023_694c
    ld a, b
    pop bc
    ld hl, $0009
    add hl, bc
    ld [hl], a
    rlca
    rlca
    ld hl, $000d
    add hl, bc
    ld [hl], a
    ret


Call_023_694c:
    ld a, $14
    ld hl, $4117
    rst $08
    call $3353
    ld e, d
    ld d, $00
    ld hl, $695e
    add hl, de
    ld b, [hl]
    ret


    nop
    ld b, b
    add b
    ld a, [$d265]
    call Call_023_6ab3
    ld [$c3b6], a
    xor a
    call Call_023_69de
    ld de, $2420
    ld a, $00
    call Call_023_4fd6
    ld hl, $0002
    add hl, bc
    ld [hl], $00
    ret


    ld a, [$d265]
    call Call_023_6ab3
    ld [$c3b6], a
    xor a
    call Call_023_69de
    ld d, $1a
    ld e, $24
    ld a, $00
    call Call_023_4fd6
    ld hl, $0002
    add hl, bc
    ld [hl], $00
    ret


    ld a, [$d265]
    call Call_023_6ab3
    ld [$c3b6], a
    ld a, $62
    ld [$c3b7], a
    call Call_023_69db
    ret


    push de
    ld a, [$d265]
    call Call_023_6ab3
    ld [$c3b6], a
    pop de
    ld a, e
    call Call_023_69de
    ret


    push de
    ld a, [$d265]
    call Call_023_6ab3
    ld [$c3b6], a
    pop de
    ld a, e
    call Call_023_6a1b
    ret


    push de
    ld a, [$d265]
    call Call_023_6ab3
    ld [$c3b6], a
    pop de
    call Call_023_6a17
    ret


Call_023_69db:
    ld a, [$c3b7]

Call_023_69de:
    call Call_023_6a1b
    ld de, $0080
    add hl, de
    ld de, $69f7
    ld bc, $2302
    call Call_023_6a3f
    ld a, [$c3b7]
    add $0a
    ld [$c3b7], a
    ret


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

Call_023_6a17:
    ld l, e
    ld h, d
    jr jr_023_6a1e

Call_023_6a1b:
    ld l, a
    ld h, $00

jr_023_6a1e:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $8000
    add hl, de
    push hl
    ld a, [$c3b6]
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $6bbf
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    pop hl
    ld bc, $2308
    call Call_023_6a3f
    pop hl
    ret


Call_023_6a3f:
    ld a, [$c2dc]
    cp $04
    jp nz, $0eba

    jp $0dc9


    ld hl, $c314
    ld e, $06
    ld a, [$cfa9]
    ld d, a

jr_023_6a53:
    ld a, [hl]
    and a
    jr z, jr_023_6a69

    cp d
    jr z, jr_023_6a5e

    ld a, $00
    jr jr_023_6a60

jr_023_6a5e:
    ld a, $02

jr_023_6a60:
    push hl
    ld c, l
    ld b, h
    ld hl, $0002
    add hl, bc
    ld [hl], a
    pop hl

jr_023_6a69:
    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_023_6a53

    ret


    ld hl, $c314
    ld e, $06

jr_023_6a76:
    ld a, [hl]
    and a
    jr z, jr_023_6a84

    push hl
    ld c, l
    ld b, h
    ld hl, $0002
    add hl, bc
    ld [hl], $01
    pop hl

jr_023_6a84:
    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_023_6a76

    ret


    ld hl, $c314
    ld e, $06
    ld a, [$d0e3]
    ld d, a

jr_023_6a95:
    ld a, [hl]
    and a
    jr z, jr_023_6aab

    cp d
    jr z, jr_023_6aa0

    ld a, $03
    jr jr_023_6aa2

jr_023_6aa0:
    ld a, $02

jr_023_6aa2:
    push hl
    ld c, l
    ld b, h
    ld hl, $0002
    add hl, bc
    ld [hl], a
    pop hl

jr_023_6aab:
    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_023_6a95

    ret


Call_023_6ab3:
    cp $fd
    jr z, jr_023_6ac1

    dec a
    ld hl, $6ac4
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    ret


jr_023_6ac1:
    ld a, $1c
    ret


    ld d, $16
    ld d, $17
    rla
    ld h, $15
    dec d
    dec d
    jr @+$1a

    ld e, $18
    jr jr_023_6ade

    rlca
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    inc de
    inc de
    inc b
    inc b

jr_023_6ade:
    ld [$0f08], sp
    rrca
    ld [$0f0f], sp
    ld [$0909], sp
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    rra
    rra
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    jr jr_023_6b13

    inc bc
    inc bc
    rrca
    rrca
    ld [$1b08], sp
    dec de
    rrca
    rrca
    ld bc, $0101
    ld c, $0e
    ld c, $1b
    dec de
    dec de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec e
    dec e
    ld a, [de]
    ld a, [de]
    ld a, [de]
    db $10
    db $10
    inc h

jr_023_6b13:
    inc h
    inc d
    inc d
    rlca
    rlca
    rlca
    dec c
    dec c
    ld [de], a
    ld [de], a
    ld de, $0c11
    inc c
    inc c
    inc de
    ld c, $0e
    ld de, $1411
    inc d
    ld a, [bc]
    ld a, [bc]
    ld [$1b08], sp
    dec de
    ld [$1212], sp
    db $10
    ld [$0a09], sp
    ld [$0606], sp
    ld b, $06
    dec b
    dec b
    ld c, $0b
    ld c, $0e
    ld c, $0b
    db $10
    ld b, $23
    dec c
    ld [de], a
    rrca
    rrca
    rrca
    rrca
    inc d
    ld de, $1111
    ld de, $2007
    rlca
    rlca
    rlca
    inc de
    inc de
    ld h, $0e
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    ld [$0808], sp
    rrca
    rrca
    rlca
    rlca
    dec bc
    dec bc
    dec bc
    dec bc
    rra
    ld b, $06
    inc b
    add hl, bc
    ld [bc], a
    add hl, bc
    rlca
    rlca
    rlca
    rrca
    ld [$0a08], sp
    ld [bc], a
    ld [bc], a
    dec h
    ld bc, $0a0a
    ld a, [bc]
    ld [$0a0a], sp
    dec bc
    ld [$0f08], sp
    rrca
    rlca
    inc h
    inc c
    add hl, de
    inc c
    db $10
    dec bc
    dec bc
    inc de
    dec bc
    inc de
    ld [$0608], sp
    dec bc
    dec bc
    dec bc
    rrca
    ld [$1208], sp
    ld [de], a
    db $10
    db $10
    ld de, $0606
    ld [$0706], sp
    rrca
    rrca
    ld h, $10
    db $10
    inc d
    db $10
    ld [$1b1b], sp
    ld c, $0e
    ld c, $10
    add hl, bc
    rrca
    rrca
    rrca
    ld [$0808], sp
    ld [hl+], a
    ld hl, $0d0e
    ld l, h
    dec c
    ld l, h
    adc l
    ld l, h
    dec c
    ld l, l
    adc l
    ld l, l
    dec c
    ld l, [hl]
    adc l
    ld l, [hl]
    dec c
    ld l, a
    adc l
    ld l, a
    dec c
    ld [hl], b
    adc l
    ld [hl], b
    dec c
    ld [hl], c
    adc l
    ld [hl], c
    dec c
    ld [hl], d
    adc l
    ld [hl], d
    dec c
    ld [hl], e
    adc l
    ld [hl], e
    dec c
    ld [hl], h
    adc l
    ld [hl], h
    dec c
    ld [hl], l
    adc l
    ld [hl], l
    dec c
    db $76
    adc l
    db $76
    dec c
    ld [hl], a
    adc l
    ld [hl], a
    dec c
    ld a, b
    adc l
    ld a, b
    dec c
    ld a, c
    adc l
    ld a, c
    dec c
    ld a, d
    adc l
    ld a, d
    dec c
    ld a, e
    adc l
    ld a, e
    dec c
    ld a, h
    adc l
    ld a, h
    dec c
    ld a, l
    adc l
    ld a, l
    dec c
    ld a, [hl]
    adc l
    ld a, [hl]
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    dec de
    ccf
    dec hl
    inc a
    daa
    ld a, a
    ld a, a
    ld a, a
    ld [hl], b
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$60], a
    ldh a, [$50]
    db $fc
    sbc h
    cp $f2
    cp $3a
    ld a, a
    ld h, a
    ld a, a
    ld l, b
    ld a, a
    ld l, e
    ccf
    jr nc, jr_023_6c55

    rra
    jr c, jr_023_6c71

    nop
    nop
    nop
    nop
    cp $9a
    cp $5a
    cp $9a
    db $fc
    inc [hl]
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    dec de
    ccf
    dec hl

jr_023_6c55:
    inc a
    daa
    ld a, a
    ld a, a
    ld a, a
    ld [hl], b
    ld a, a
    ld h, a
    nop
    nop
    add b
    add b
    ldh [$60], a
    ldh a, [$50]
    or $96
    rst $38
    ld sp, hl
    rst $38
    add hl, sp
    rst $38
    sbc c
    ld a, a
    ld l, b
    ld a, a
    ld l, e

jr_023_6c71:
    ccf
    jr nc, jr_023_6c93

    rra
    inc c
    inc c
    jr jr_023_6c91

    nop
    nop
    nop
    nop
    rst $38
    ld e, c
    cp $9a
    db $fc
    inc [hl]
    ld hl, sp-$08
    ret nz

    ret nz

    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], e

jr_023_6c91:
    ld a, a
    ld c, h

jr_023_6c93:
    ld a, a
    ld h, h
    ccf
    ld [hl+], a
    ld a, a
    ld c, l
    ld a, a
    ld d, [hl]
    ld a, a
    ld e, [hl]
    nop
    nop
    adc $ce
    cp $32
    ld a, [hl]
    add $fc
    ld b, h
    cp $b2
    cp $6a
    cp $7a
    ld a, a
    ld c, h
    rst $38
    add c
    ld a, a
    ld h, b
    ccf
    jr nc, jr_023_6cd5

    inc e
    ccf
    inc hl
    inc e
    inc e
    nop
    nop
    cp $32
    rst $38
    add c
    cp $06
    db $fc
    inc c
    ld hl, sp+$38
    db $fc
    call nz, $3838
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], e
    ld a, a
    ld c, h

jr_023_6cd5:
    ld a, a
    ld h, h
    ccf
    ld [hl+], a
    ld a, a
    ld c, l
    ld a, a
    ld d, [hl]
    nop
    nop
    nop
    nop
    adc $ce
    cp $32
    ld a, [hl]
    add $fc
    ld b, h
    cp $b2
    cp $6a
    ld a, a
    ld e, [hl]
    ld a, a
    ld c, h
    ld a, a
    ld b, c
    ccf
    jr z, jr_023_6d35

    jr nc, jr_023_6d77

    ld c, h
    dec sp
    dec sp
    nop
    nop
    cp $7a
    cp $32
    cp $82
    db $fc
    inc d
    db $fc
    inc c
    cp $32
    call c, $00dc
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    inc d
    rra
    jr nz, @+$41

    daa
    ccf
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$90]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$27
    ccf
    jr nz, @+$41

    jr nz, @+$41

    dec sp
    ccf

jr_023_6d35:
    ld a, a
    ld b, h
    ccf
    ccf
    nop
    nop
    nop
    nop
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$3c
    db $fc
    cp $e6
    cp h
    cp h
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
    inc c
    rrca
    db $10
    rra
    ld [de], a
    rra
    jr nz, jr_023_6d9a

    ld hl, $003f
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$50]
    ldh a, [$08]
    ld hl, sp-$38
    ld hl, sp+$21
    ccf
    jr nz, jr_023_6db0

    jr nz, jr_023_6db2

    dec sp
    ccf
    ld a, a
    ld b, h

jr_023_6d77:
    ccf
    ccf
    nop
    nop
    nop
    nop
    ret z

    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$3c
    db $fc
    cp $e6
    cp h
    cp h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $28
    ld a, a
    ld b, b
    ccf

jr_023_6d9a:
    jr z, jr_023_6dd9

    ld [hl+], a
    nop
    nop
    rrca
    rrca
    rra
    ld de, $797f
    cp $ba
    db $fc
    inc d
    ld hl, sp-$58
    cp $26
    ld a, d
    ld b, l
    ld e, a

jr_023_6db0:
    ld h, b
    ld a, a

jr_023_6db2:
    ld b, b
    ld e, a
    ld h, b
    ld a, a

jr_023_6db6:
    ld b, b
    ccf
    daa
    jr jr_023_6dd3

    nop
    nop
    cp $12
    call nz, $e83c
    jr @-$2e

    jr nc, jr_023_6db6

    db $10
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a

jr_023_6dd3:
    ld hl, sp-$08
    ld a, a
    ld h, a
    ld a, a
    ld b, b

jr_023_6dd9:
    ccf
    jr z, @+$3f

    ld [hl+], a
    nop
    nop
    nop
    nop
    jr c, jr_023_6e1b

    rst $38
    rst $38
    rst $38
    ld sp, $12fe
    db $fc
    and h
    ld hl, sp+$28
    ld a, d
    ld b, l
    ld e, a
    ld h, b
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld a, a

jr_023_6df6:
    ld b, b
    ccf
    daa
    jr jr_023_6e13

    nop
    nop
    cp $16
    adc $32
    db $e4
    inc e
    ret c

    jr c, jr_023_6df6

    db $10
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a

jr_023_6e13:
    ld [bc], a
    inc bc
    dec b
    rlca
    dec sp
    ld a, $77
    ld c, l

jr_023_6e1b:
    ld c, [hl]
    ld a, e
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$dc], a
    ld a, h
    xor $b2
    ld [hl], d
    sbc $2e
    dec sp
    rra
    add hl, de
    rla
    inc e
    inc de
    ld e, $21
    ccf
    ld h, $3e
    jr c, jr_023_6e73

    nop
    nop
    ld [hl], h
    call c, $98f8
    add sp, $38
    ret z

    ld a, b
    add h
    db $fc
    ld h, h
    ld a, h
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    rlca
    dec sp
    ld a, $77
    ld c, h
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$dc], a
    ld a, h
    xor $32
    ld c, a
    ld a, c
    ld l, $3b
    ld e, $1b

jr_023_6e73:
    rla
    dec e
    inc hl
    ld a, $27
    ccf
    jr c, jr_023_6eb3

    nop
    nop
    ld a, [c]
    sbc [hl]
    ld [hl], h
    call c, $d878
    add sp, -$48
    call nz, $e47c
    db $fc
    inc e
    inc e
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    rlca
    inc b
    dec de
    rra
    jr nz, @+$41

    jr nz, @+$41

    ld c, [hl]
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld h, $e6
    ld e, $fa
    ld c, [hl]
    ld [hl], l
    ld l, a
    ld d, c
    ld h, c
    ld a, [hl]

jr_023_6eb3:
    ld h, c
    ld e, [hl]
    ld hl, $183f
    rra
    rlca
    rlca
    nop
    nop
    ld c, $f2
    adc [hl]
    ld a, [c]
    sbc [hl]
    ld a, [c]
    sbc [hl]
    ld a, [$f696]
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    dec de
    rra
    jr nz, jr_023_6f18

    jr nz, jr_023_6f1a

    ld c, [hl]
    ld [hl], c
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add $c6
    ld l, $ea
    ld e, $f2
    ld c, [hl]
    ld [hl], l
    ld l, [hl]
    ld d, c
    ld h, c
    ld a, a
    ld h, c
    ld e, [hl]
    ld hl, $183f
    rra
    rlca
    rlca
    nop
    nop
    ld c, $f2
    adc $f2
    sbc $7a
    sub $76
    ret nc

    ldh a, [$e0]
    ldh [$80], a

jr_023_6f0a:
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    rrca
    add hl, bc
    rlca
    ld b, $09

jr_023_6f18:
    ld c, $0c

jr_023_6f1a:
    rrca

jr_023_6f1b:
    add hl, bc
    rrca
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ldh a, [$90]
    ldh [$60], a
    sub b
    ld [hl], b
    jr nc, jr_023_6f1b

    sub b
    ldh a, [$03]
    ld c, $0f
    add hl, bc
    rrca
    ld [$1817], sp
    rla
    jr jr_023_6f43

    inc c
    inc bc
    ld [bc], a
    dec b
    rlca
    ld b, b
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]

jr_023_6f43:
    add sp, $18
    add sp, $18
    ret nc

    jr nc, jr_023_6f0a

    ld b, b
    and b
    ldh [rP1], a
    nop
    ld c, $0e
    cpl
    add hl, hl
    ld h, a
    ld h, [hl]
    xor c
    xor $dc
    cp a
    ret


    rst $38
    db $e3
    ld e, $00
    nop
    ld [hl], b
    ld [hl], b
    db $f4
    sub h
    and $66
    sub l
    ld [hl], a
    dec sp

jr_023_6f68:
    db $fd
    sub e
    rst $38
    ld b, a
    ld hl, sp-$01
    ret


    ld a, a
    ld c, b
    scf
    jr c, @+$19

    jr jr_023_6f81

    inc c
    rlca
    rlca
    inc b
    inc b
    nop
    nop
    rst $38
    sub e
    cp $12

jr_023_6f81:
    db $ec
    inc e
    add sp, $18
    ret nc

    jr nc, jr_023_6f68

    ldh [rNR41], a
    jr nz, jr_023_6f8c

jr_023_6f8c:
    nop
    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, @+$31

    inc d
    rra
    daa
    ld a, $20
    ccf
    dec e
    ld e, $80
    add b

jr_023_6f9f:
    cp $7e
    sbc $72
    inc c
    db $f4
    jr z, jr_023_6f9f

    db $e4
    ld a, h
    inc b
    db $fc
    cp b
    ld a, b
    cpl
    dec sp
    ld d, a
    ld a, h
    sub e
    rst $38
    ld [hl], a
    ld a, b
    rra
    jr jr_023_6fe7

    inc a
    scf
    dec hl
    inc e
    inc e
    db $f4
    call c, $3eea
    ret


    rst $38
    xor $1e
    ld hl, sp+$18
    db $f4
    inc a
    db $ec
    call nc, $3838
    nop
    nop
    ld bc, $7f01
    ld a, [hl]
    ld a, e
    ld c, [hl]
    jr nc, jr_023_7006

    inc d
    rra
    daa
    ld a, $e0
    rst $38
    nop
    nop
    add b
    add b

jr_023_6fe1:
    cp $7e
    sbc $72
    inc c
    db $f4

jr_023_6fe7:
    jr z, jr_023_6fe1

    db $e4
    ld a, h
    rlca
    rst $38
    sbc l
    cp $8f
    ei
    ld d, a
    ld a, h
    inc sp
    ccf
    scf
    jr c, jr_023_7027

    inc a
    scf
    dec hl
    inc e
    inc e
    cp c
    ld a, a
    pop af
    rst $18
    ld [$cc3e], a
    db $fc
    db $ec

jr_023_7006:
    inc e
    db $f4
    inc a
    db $ec
    call nc, $3838
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, l
    ld l, [hl]
    ld a, $33
    rra
    ld de, $243f
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $3e
    cp [hl]
    db $76

jr_023_7027:
    ld a, h
    call z, $88f8
    db $fc
    inc h
    ccf
    jr nz, jr_023_70a7

    ld c, c
    rst $18
    and b
    ld a, a
    ld h, b
    cpl
    jr nc, jr_023_704f

    jr jr_023_7043

    rrca
    ld b, $06
    db $fc
    inc b
    xor $92
    ei
    dec b

jr_023_7043:
    cp $06
    db $f4
    inc c
    add sp, $18
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop

jr_023_704f:
    inc bc
    inc bc
    ld a, a
    ld a, h
    ld a, l
    ld l, [hl]
    ld a, $33
    rra
    ld de, $243f
    ld a, a
    ld h, b
    nop
    nop
    ret nz

    ret nz

    cp $3e
    cp [hl]
    db $76
    ld a, h
    call z, $88f8
    db $fc
    inc h
    cp $06
    rst $30
    adc c
    ld e, a
    ld h, b
    ccf
    jr nz, jr_023_70a3

    jr nc, jr_023_708d

    jr @+$12

    rra
    add hl, bc
    rrca
    ld b, $06
    rst $28
    sub c
    ld a, [$fc06]
    inc b
    db $f4
    inc c
    add sp, $18
    ld [$90f8], sp
    ldh a, [$60]
    ld h, b

jr_023_708d:
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $4a31
    ld a, e
    ld b, [hl]
    ld a, a
    ld [hl+], a
    ccf
    add hl, de
    rra
    nop
    nop
    nop
    nop
    add b
    add b

jr_023_70a3:
    ld b, [hl]
    add $29
    rst $28

jr_023_70a7:
    ld sp, $22ff
    cp $4c
    db $fc
    rlca
    rlca
    rrca
    rrca
    rra
    ld e, $1f
    rra
    rrca
    rrca
    inc bc
    inc bc
    rrca
    rrca
    nop
    nop
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    cp h
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    jr jr_023_70e9

    dec h
    dec a
    ld [hl+], a
    ccf
    ld [de], a
    rra
    ld [de], a
    rra
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    adc h
    adc h
    ld d, d
    sbc $32
    cp $24
    db $fc
    inc h
    db $fc

jr_023_70e9:
    ld c, b
    ld hl, sp-$10
    ldh a, [rIF]
    rrca
    rra
    ld e, $1f
    rra
    rrca
    rrca
    inc bc
    inc bc
    ld b, $06
    rrca
    rrca
    nop
    nop
    ld hl, sp-$08
    db $fc
    cp h
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    jr nc, jr_023_7139

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld b, $3f
    jr c, jr_023_7167

    ld c, h
    rrca
    inc c
    ccf
    jr c, jr_023_711e

jr_023_711e:
    nop
    nop
    nop
    add b
    add b
    ldh [$60], a
    db $fc
    inc e
    ld a, [c]
    ld [hl-], a
    ldh a, [$30]
    db $fc
    inc e
    ld a, a
    ld c, h
    ei
    adc e
    db $f4
    sub a
    or $97
    push af
    sub a
    ld [hl], d
    ld d, e

jr_023_7139:
    ld sp, $0031
    nop
    cp $32
    rst $18
    pop de
    cpl
    jp hl


    ld l, a
    jp hl


    xor a
    jp hl


    ld c, [hl]
    jp z, $8c8c

    nop
    nop
    nop
    nop
    ld bc, $0701
    ld b, $0f
    ld [$3c3f], sp
    ld c, a
    ld c, h
    rrca
    ld [$0407], sp
    nop
    nop
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    db $fc
    inc a

jr_023_7167:
    ld a, [c]
    ld [hl-], a
    ldh a, [rNR10]
    ldh [rNR41], a
    dec de
    dec de
    inc a
    cpl
    ld a, l
    ld b, a
    ld a, [hl]
    ld b, a
    ld a, l
    ld b, a
    ld a, $23
    rra
    add hl, de
    ld b, $06
    ret c

    ret c

    inc a
    db $f4
    cp [hl]
    ld [c], a
    ld a, [hl]
    ld [c], a
    cp [hl]
    ld [c], a
    ld a, h
    call nz, $98f8
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc b
    inc b
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ccf
    dec sp
    ccf
    add hl, sp
    nop
    nop
    nop
    nop
    jr nz, jr_023_71c3

    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    call c, $9cfc
    ccf
    ccf
    ld a, l
    ld a, d
    ld a, l
    ld a, [hl]
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    cp [hl]
    ld e, [hl]
    cp [hl]
    ld a, [hl]

jr_023_71c3:
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld [hl-], a
    ccf
    ccf
    ccf
    ccf
    rra
    dec de
    ccf
    add hl, sp
    ccf
    ccf
    nop
    nop
    nop
    nop
    ld c, h
    ld c, h
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$28
    db $fc
    sbc h
    db $fc
    db $fc
    ld a, l
    ld [hl], d
    ld a, l
    ld a, d
    dec a
    ld a, $1f
    rra
    rra
    rra
    inc c
    inc c
    nop
    nop
    nop
    nop
    cp [hl]
    ld c, [hl]
    cp [hl]
    ld e, [hl]
    cp h
    ld a, h
    ld hl, sp-$08
    ld hl, sp-$08
    jr nc, jr_023_7239

    nop
    nop
    nop
    nop
    inc e
    inc e
    inc sp
    cpl
    db $10
    rra
    inc l
    inc sp
    ld c, l
    ld a, e
    ld c, l
    ld [hl], e
    ld b, c
    ld a, a
    dec a
    ccf
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ldh a, [$b0]
    add hl, de
    rla
    jr jr_023_7248

    jr c, jr_023_725a

    jr nc, jr_023_7264

    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a

jr_023_7239:
    jr c, jr_023_7262

    ld e, $19
    db $fc
    inc c
    cp $82
    cp $82
    rst $38
    add c
    ld a, a
    db $e3
    dec e

jr_023_7248:
    rst $38
    ld [bc], a
    cp $ac
    ld e, h
    nop
    nop
    inc e
    inc e
    inc sp
    cpl
    db $10
    rra
    inc l
    inc sp
    ld c, l
    ld a, e
    ld c, l

jr_023_725a:
    ld [hl], e
    ld b, c
    ld a, a
    nop
    nop
    nop
    nop
    nop

jr_023_7262:
    nop
    add b

jr_023_7264:
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    dec a
    ccf
    dec c
    dec bc
    inc e
    inc de
    jr jr_023_728c

    jr c, jr_023_729e

    jr c, @+$29

    inc e
    inc de
    dec c
    ld c, $f0
    or b
    db $fc
    inc c
    cp $82
    cp $82
    rst $38
    add c
    ld a, a
    db $e3
    dec e
    rst $38
    ld e, d

jr_023_728c:
    and [hl]
    nop
    nop
    dec sp
    dec sp
    ccf
    inc a
    rra
    jr jr_023_72b5

    ld [de], a
    rra
    db $10
    ld a, $39
    ld a, a
    ld c, h
    nop

jr_023_729e:
    nop
    call c, $fcdc
    inc a
    ld hl, sp+$18
    ld hl, sp+$48
    ld hl, sp+$08
    ld a, b
    sbc b
    db $fc
    inc a
    ld a, e
    ld c, a
    jr nc, jr_023_72f0

    ld de, $091f
    rrca

jr_023_72b5:
    inc e
    rla
    rra
    inc de
    inc c
    inc c
    nop
    nop
    sbc $f2
    ld e, $f2
    adc h
    db $fc
    sub b
    ldh a, [$38]
    add sp, -$08
    ret z

    jr nc, jr_023_72fb

    nop
    nop
    nop
    nop
    dec sp
    dec sp
    ccf
    inc a
    rra
    jr jr_023_72f5

    ld [de], a
    rra
    db $10
    ld e, $19
    ccf
    inc a
    nop
    nop
    call c, $fcdc
    inc a
    ld hl, sp+$18
    ld hl, sp+$48
    ld hl, sp+$08
    ld a, h
    sbc h
    cp $32
    ld a, e
    ld c, a
    ld a, b

jr_023_72f0:
    ld c, a
    ld sp, $093f
    rrca

jr_023_72f5:
    inc e
    rla
    rra
    inc de
    inc c
    inc c

jr_023_72fb:
    nop
    nop
    sbc $f2
    inc c
    db $fc
    adc b
    ld hl, sp-$70
    ldh a, [$38]
    add sp, -$08
    ret z

    jr nc, jr_023_733b

    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, @+$22

    ld e, e
    ld a, e
    ld c, a
    ld [hl], h
    inc a
    inc hl
    ccf
    jr z, jr_023_739b

    ld c, h
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld l, b
    ld a, b
    ret z

    cp b
    ldh a, [rNR10]
    or $56
    ld sp, hl
    rst $08
    ld a, a
    ld b, b
    ccf
    inc hl
    ccf
    jr c, jr_023_735b

    ccf
    jr jr_023_734e

    ld e, $13
    rrca
    rrca

jr_023_733b:
    nop
    nop
    ld sp, hl
    rrca
    db $fd
    rla
    xor $76
    add h
    db $fc
    ld h, h
    sbc h
    ld hl, sp-$68
    ldh [$e0], a
    nop
    nop
    nop

jr_023_734e:
    nop
    nop
    nop
    jr nz, @+$22

    ld e, a
    ld a, a
    ld h, e
    ld a, [hl]
    ld a, a
    ld b, b
    ld a, a
    ld b, d

jr_023_735b:
    rst $38
    and $00
    nop
    nop
    nop
    ld b, b
    ld b, b
    and b
    ldh [$a0], a
    ld h, b
    ldh a, [rSVBK]
    or $16
    ld sp, hl
    cpl
    rst $38
    add b

jr_023_736f:
    ld a, a
    ld e, b
    ccf
    ld sp, $3f2e
    jr jr_023_738e

    ld e, $13
    rrca
    rrca
    nop
    nop
    ld sp, hl
    cpl
    db $dd
    ld h, a
    cp [hl]
    add $1c
    db $e4
    ld l, h
    sub h
    ld hl, sp-$68
    ldh [$e0], a
    nop
    nop
    nop

jr_023_738e:
    nop
    inc bc
    inc bc
    inc e
    rra
    ccf
    daa
    inc e
    inc de
    jr z, jr_023_73d8

    ld l, $39

jr_023_739b:
    ld l, $3b
    nop
    nop
    ret nz

    ret nz

    jr c, jr_023_739b

    db $fc
    db $e4
    jr c, jr_023_736f

    inc d
    db $fc
    ld [hl], h
    sbc h
    ld [hl], h
    call c, $3f28
    inc h
    ccf
    daa
    dec a
    ld [hl+], a
    ccf
    ld de, $121f
    ld e, $1e
    ld [de], a
    inc c
    inc c
    inc d
    db $fc
    inc h
    db $fc
    db $e4
    cp h
    ld b, h
    db $fc
    adc b
    ld hl, sp+$48
    ld a, b
    ld a, b
    ld c, b
    jr nc, jr_023_73fd

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_023_73d3:
    jr jr_023_73f4

    ccf
    daa
    inc a

jr_023_73d8:
    inc sp
    jr z, jr_023_741a

    ld l, $39

jr_023_73dd:
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_023_73d3

    jr jr_023_73dd

    db $fc
    db $e4
    inc a
    call z, $fc14
    ld [hl], h
    sbc h
    ld l, $3b
    jr z, jr_023_7430

    inc h
    ccf
    daa

jr_023_73f4:
    dec a
    inc de
    rra
    ld [de], a
    ld e, $1e
    ld [de], a
    inc c
    inc c

jr_023_73fd:
    ld [hl], h
    call c, $fc14
    inc h
    db $fc
    db $e4
    cp h
    ret z

    ld hl, sp+$48
    ld a, b
    ld a, b
    ld c, b
    jr nc, jr_023_743d

    nop
    nop
    nop
    nop
    ld b, $06
    rra
    add hl, de
    ccf
    jr nz, jr_023_7454

    inc hl
    ld a, e

jr_023_741a:
    ld b, h
    ld [hl], a
    ld c, b
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$78
    db $fc
    ld b, h
    cp $02
    ld a, [$fa06]
    ld c, $6f
    ld d, b
    ld l, a

jr_023_7430:
    ld d, b
    ccf
    jr nz, @+$41

    jr nz, jr_023_7452

    inc de
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop

jr_023_743d:
    call c, $de24
    ld [hl+], a
    cp d
    ld b, [hl]
    ld a, h
    add h
    db $f4
    inc c
    sbc b
    ld a, b
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    rrca

jr_023_7452:
    rrca
    rra

jr_023_7454:
    db $10
    ccf
    jr nz, jr_023_74d1

    ld b, [hl]
    ld [hl], a
    ld c, b
    ld l, a
    ld d, b
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$48
    call c, $fe24
    ld [bc], a
    ld a, [$de06]
    ld h, $6f
    ld d, b
    ccf
    jr nz, jr_023_74b1

    jr nz, jr_023_74b0

    inc sp
    rra
    ld e, $0f
    rrca
    inc bc
    inc bc
    nop
    nop
    sbc $22
    cp d
    ld b, [hl]
    ld a, h
    add h
    db $f4
    inc c
    sbc h
    ld a, h
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    add hl, bc
    ld c, $08
    rrca
    ld e, $13
    rla
    jr jr_023_749e

jr_023_749e:
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    sub b
    ld [hl], b
    db $10
    ldh a, [$38]
    ret z

    add sp, $58
    jr nc, jr_023_74de

    ld a, b

jr_023_74b0:
    ld b, a

jr_023_74b1:
    ld e, a
    ld h, b
    ld b, e
    ld a, h
    jr nz, jr_023_74f6

    ld e, $1f
    ld bc, $0001
    nop
    inc c
    db $f4
    ld e, $e2
    ld a, [c]
    ld c, $c2
    ld a, $1c
    db $fc
    jr nz, @-$1e

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_023_74d1:
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    add hl, bc
    ld c, $08
    rrca
    ld a, $33
    nop

jr_023_74de:
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    sub b
    ld [hl], b
    db $10
    ldh a, [$38]
    ret z

    ld b, a
    ld a, b
    ret nz

    cp a
    ld hl, sp-$79
    adc a
    ldh a, [$60]

jr_023_74f6:
    ld a, a
    inc e
    rra
    inc bc
    inc bc
    nop
    nop
    or $2e
    rlca
    ld sp, hl
    rra
    pop hl
    pop af
    rrca
    ld a, $fe
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    rlca
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $15
    ld c, $09
    nop
    nop

jr_023_751f:
    add b
    add b
    ld b, b
    ret nz

    ldh [$e0], a
    db $10
    ldh a, [$38]
    ret z

    ld a, b
    xor b
    ld [hl], b
    sub b
    inc b
    rlca
    ld a, [bc]
    rrca
    dec bc
    dec c
    inc de
    inc e
    inc d
    dec de
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    jr nz, jr_023_751f

    ld d, b
    ldh a, [$d0]
    or b
    ret z

    jr c, @+$2a

    ret c

    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    rlca
    rlca
    ld [$1c0f], sp
    inc de
    ld e, $15
    nop
    nop
    nop
    nop

jr_023_7561:
    add b
    add b
    ld b, b
    ret nz

    ldh [$e0], a
    db $10
    ldh a, [$38]
    ret z

    ld a, b
    xor b
    ld c, $09
    inc b
    rlca
    ld a, [bc]
    rrca
    rla
    add hl, de
    inc de
    inc e
    inc d
    dec de
    rrca
    ld [$0707], sp
    ld [hl], b
    sub b
    jr nz, jr_023_7561

    ld d, b
    ldh a, [$e8]
    sbc b
    ret z

    jr c, jr_023_75b0

    ret c

    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_023_7595:
    ld de, $111e
    ld e, $2c
    ccf
    ld l, $33
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_023_7595

    adc b
    ld a, b
    adc b
    ld a, b
    inc [hl]
    db $fc
    ld [hl], h
    call z, $332e
    ld a, [hl-]

jr_023_75b0:
    daa
    rra
    db $10
    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [hl], h
    call z, $e45c
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$30]
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
    inc bc
    inc bc
    inc c
    rrca

jr_023_75d5:
    ld de, $111e
    ld e, $20
    ccf
    inc l
    ccf
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_023_75d5

    adc b
    ld a, b
    adc b
    ld a, b
    inc b
    db $fc

jr_023_75eb:
    inc [hl]
    db $fc
    ld l, $33
    ld l, $33
    jr jr_023_760a

    rra
    db $10
    rrca
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [hl], h
    call z, $cc74
    jr jr_023_75eb

    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ret nz

    nop

jr_023_760a:
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca

jr_023_7613:
    db $10
    rra
    inc h
    ccf
    inc h
    ccf
    jr nz, jr_023_765a

    inc de
    rra
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_023_7613

    ld [$24f8], sp
    db $fc
    inc h
    db $fc
    inc b
    db $fc
    ret z

    ld hl, sp+$38
    ccf
    ld c, a
    ld a, e
    ld c, a
    ld a, h
    ccf
    inc sp
    rra
    jr @+$31

    inc a
    inc hl
    ccf
    inc e
    inc e
    inc e
    db $fc
    ld a, [c]
    sbc $f2
    ld a, $fc
    call z, $18f8
    db $f4
    inc a
    call nz, $38fc
    jr c, jr_023_764e

jr_023_764e:
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld [$100f], sp
    rra
    inc d

jr_023_765a:
    rra
    inc d
    rra
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$18
    rra
    ccf
    inc sp
    ld c, a
    ld a, h
    ld c, a
    ld a, e
    ccf
    jr nc, jr_023_76a7

    inc a
    inc hl
    ccf
    inc e
    inc e
    jr @-$06

    cp $ce
    ld a, [c]
    ld a, $f2
    sbc $fe
    inc c
    db $f4
    inc a
    call nz, $38fc
    jr c, jr_023_768e

jr_023_768e:
    nop
    ld bc, $0301
    inc bc
    rrca
    dec c
    rra
    ld [de], a
    ccf
    inc h
    ccf
    inc l
    ld d, e
    ld a, a
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh a, [rSVBK]
    ld hl, sp+$28

jr_023_76a7:
    db $fc
    inc d
    db $fc
    inc [hl]
    jp z, $50fe

    ld a, a
    xor h
    rst $38
    xor [hl]
    rst $30
    and [hl]
    rst $38
    ld d, b
    ld a, a
    ld c, h
    ld a, a
    inc sp
    inc sp
    nop
    nop
    ld a, [bc]
    cp $35
    rst $38
    ld [hl], l
    rst $28
    ld h, l
    rst $38
    ld a, [bc]
    cp $32
    cp $cc
    call z, RST_00
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rra
    add hl, de
    ccf
    ld h, $7f
    ld l, h
    ld d, e
    ld a, a
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$60], a
    ld hl, sp+$58
    db $fc
    inc [hl]
    db $fc
    inc a
    jp z, $50fe

    ld a, a
    and b
    rst $38
    xor h
    rst $38
    and d
    rst $38
    ld d, b
    ld a, a
    ld c, h
    ld a, a
    inc sp
    inc sp
    nop
    nop
    ld a, [bc]
    cp $05
    rst $38
    dec [hl]
    rst $38
    ld b, l
    rst $38
    ld a, [bc]
    cp $32
    cp $cc
    call z, RST_00
    nop
    nop
    rlca
    rlca
    ld [$080f], sp
    rrca
    inc d
    rra
    inc d
    rra
    db $10
    rra
    jr nc, jr_023_775c

    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$a4], a
    db $e4
    ld a, [hl+]
    xor $3a
    cp $48
    ld a, a
    ld b, a
    ld a, a
    cpl
    jr c, @+$21

    db $10
    ccf
    jr nc, @+$51

    ld a, b
    ld b, a
    ld a, a
    jr c, @+$3a

    ld c, d
    cp $8a
    cp $d2
    ld a, [hl]
    ld [c], a
    ld a, $f4
    inc a
    ret z

    ld a, b
    adc b
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    rlca
    rlca
    ld [$080f], sp
    rrca
    inc d
    rra
    inc d
    rra
    db $10
    rra
    db $10

jr_023_775c:
    rra
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$a0], a
    ldh [rNR43], a
    ld [c], a
    dec h
    rst $20
    jr c, jr_023_77ae

    ld c, a
    ld a, a
    ld c, a
    ld a, b
    ccf
    jr nc, @+$41

    jr nc, jr_023_77c7

    ld a, b
    ld b, a
    ld a, a
    jr c, @+$3a

    ld [hl], l
    rst $30
    call $c9ff
    ld a, a
    ld a, [c]
    ld a, $f2
    ld a, $cc
    ld a, h
    adc b
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    inc de
    rra
    jr nz, jr_023_77d6

    inc h
    ccf
    jr nz, jr_023_77da

    daa
    ccf
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$27]

jr_023_77ae:
    ccf
    db $10
    rra
    rrca
    rrca
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    db $10
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    db $76
    or $4f
    ld sp, hl

jr_023_77c7:
    adc a
    ld sp, hl

jr_023_77c9:
    ld c, $fe

jr_023_77cb:
    ldh a, [$f0]

jr_023_77cd:
    nop
    nop
    ld b, $06
    rra
    add hl, de
    ld h, $3f
    ld b, b

jr_023_77d6:
    ld a, a
    ld c, c
    ld a, a
    ld b, b

jr_023_77da:
    ld a, a
    ld c, [hl]
    ld a, a
    nop
    nop

jr_023_77df:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_023_77c7

    jr nz, jr_023_77c9

    jr nz, jr_023_77cb

    jr nz, jr_023_77cd

    ld c, [hl]
    ld a, a
    jr nz, jr_023_7830

    rra
    rra
    ld [$080f], sp
    rrca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    jr nz, jr_023_77df

    ld b, b
    ret nz

    add [hl]
    add [hl]
    ld a, a
    ld sp, hl
    ld c, a
    ld sp, hl
    adc [hl]
    cp $08
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    ld b, $0f
    inc c
    rrca
    dec bc
    rrca
    dec bc
    rrca
    inc c
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$60], a
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    rlca
    ld b, $03

jr_023_7830:
    inc bc
    ld bc, $0101
    ld bc, $0303
    ld b, $06
    nop
    nop
    nop
    nop
    ldh [$60], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ld h, b
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
    rlca
    ld b, $0f
    inc c
    rrca
    ld [$080f], sp
    rrca
    inc c
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$60], a
    ldh a, [$30]
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [$30]
    rlca
    ld b, $03
    inc bc
    ld bc, $0101
    ld bc, $0303
    ld b, $06
    nop
    nop
    nop
    nop
    ldh [$60], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    res 7, e
    adc a
    db $fc
    ld d, e
    ld a, h
    sbc h
    di
    sbc a
    ldh [$9f], a
    db $ec
    nop
    nop
    ld c, $0e
    db $d3
    db $dd
    pop af
    ccf
    jp z, $093e

    rst $38
    ld bc, $31ff
    rst $38
    ld a, [hl]
    ld h, e
    ld a, $23
    db $10
    rra
    inc de
    rra
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld b, [hl]
    cp $44
    db $fc
    ld [$c8f8], sp
    ld hl, sp+$30
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec sp
    dec sp
    ld h, a
    ld e, h
    ld b, a
    ld a, h
    ld l, h
    ld a, e
    adc a
    ldh a, [$9f]
    db $ec
    nop
    nop
    nop
    nop
    call c, $e6dc
    ld a, [hl-]
    ld [c], a
    ld a, $16
    cp $01
    rst $38
    ld sp, $beff
    db $e3
    ld a, [hl]
    ld h, e
    db $10
    rra
    inc de
    rra
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld b, l
    rst $38
    ld b, [hl]
    cp $08
    ld hl, sp-$38
    ld hl, sp+$30
    ldh a, [$c0]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld l, c
    ld l, a
    sub b
    rst $38
    sub h
    rst $38
    and $fb
    and [hl]
    ei
    sub b
    rst $38
    nop
    nop
    ld h, b
    ld h, b
    sbc [hl]
    cp $09
    rst $38
    add hl, hl
    rst $38
    ld h, a
    rst $18
    ld h, l
    rst $18
    add hl, bc
    rst $38
    adc e
    rst $38
    ld d, h
    ld a, a
    inc sp
    ccf
    jr jr_023_7954

    rra
    rra
    cpl
    ccf
    scf
    dec hl
    inc e
    inc e

jr_023_793d:
    pop de
    rst $38
    ld a, [hl+]
    cp $cc
    db $fc
    jr jr_023_793d

    ld hl, sp-$08
    db $f4
    db $fc
    db $ec

jr_023_794a:
    call nc, $3838
    nop
    nop
    nop
    nop
    ld b, $06
    add hl, bc

jr_023_7954:
    rrca
    jr nc, jr_023_7996

    ld c, h
    ld a, a
    adc $fb
    or $fb
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    sbc b
    ld hl, sp+$1c
    db $fc
    ld [hl-], a
    cp $73
    rst $18
    ld l, a
    rst $18
    sub b
    rst $38
    adc e
    rst $38
    ld d, h
    ld a, a
    inc sp
    ccf
    jr jr_023_7996

    ld e, a
    ld a, a
    ld l, a
    ld d, a
    jr c, @+$3a

    add hl, bc
    rst $38

jr_023_797f:
    pop de
    rst $38
    ld a, [hl+]
    cp $cc
    db $fc
    jr jr_023_797f

    ld a, [$f6fe]
    ld [$1c1c], a
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra

jr_023_7996:
    db $10
    ccf
    jr nz, jr_023_79d9

    jr nz, jr_023_7a1b

    ld b, b
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

    and b
    ld h, b
    ret nc

    jr nc, @-$2e

    jr nc, jr_023_7a2d

    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_023_79f3

    jr nz, jr_023_79d5

    db $10
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    ret z

    jr c, @-$36

    jr c, jr_023_794a

    ld a, b
    sub b
    ld [hl], b
    db $10
    ldh a, [$60]
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_79d5:
    inc bc
    inc bc
    rlca
    inc b

jr_023_79d9:
    rrca
    ld [$080f], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$08
    db $fc
    inc b
    db $fc
    inc b
    ld a, [$1f06]
    db $10
    rra
    db $10
    rra
    db $10

jr_023_79f3:
    rrca
    ld [$080f], sp
    ld b, $07

jr_023_79f9:
    ld bc, $0001
    nop
    ld a, [$f206]
    ld c, $f4
    inc c
    db $e4
    inc e
    adc b
    ld a, b
    jr nc, jr_023_79f9

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rla
    ld e, $17
    ld e, $3f
    ld a, $3f
    inc l

jr_023_7a1b:
    ccf
    jr nz, jr_023_7a1e

jr_023_7a1e:
    nop
    ret nz

    ret nz

    ldh a, [$30]
    add sp, $78
    add sp, $78
    db $fc
    ld a, h
    db $fc
    inc [hl]
    db $fc
    inc b

jr_023_7a2d:
    cpl
    jr nc, jr_023_7a4f

    inc e
    ld a, [hl+]
    ccf
    ld c, e
    ld a, a
    ld a, d
    ld d, [hl]
    inc a
    inc h
    jr jr_023_7a53

    nop
    nop
    db $f4
    inc c
    ld hl, sp+$38
    ld d, h
    db $fc
    jp nc, $5efe

    ld l, d
    inc a
    inc h
    jr jr_023_7a63

    nop
    nop
    nop
    nop

jr_023_7a4f:
    nop
    nop
    inc bc
    inc bc

jr_023_7a53:
    rrca
    inc c
    rla
    ld e, $17
    ld e, $3f
    ld a, $3f
    inc l
    nop
    nop
    nop
    nop
    ret nz

    ret nz

jr_023_7a63:
    ldh a, [$30]
    add sp, $78
    add sp, $78
    db $fc
    ld a, h
    db $fc
    inc [hl]
    cpl
    jr nc, jr_023_7aef

    ld a, h
    adc d
    rst $38
    ld a, [c]
    cp a
    ld a, a
    ld b, a
    jr c, jr_023_7ab1

    nop
    nop
    nop
    nop
    db $f4
    inc c
    cp $3e
    ld d, c
    rst $38
    ld c, a
    db $fd
    cp $e2
    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    ld [hl], c
    ei
    adc e
    rst $08
    or l
    rst $08
    or l
    rst $38
    add a
    ld a, a
    ld b, e
    nop
    nop
    nop
    nop
    add [hl]
    add [hl]
    rst $18
    reti


    di
    xor l
    di
    xor l
    rst $38
    pop hl
    cp $c2
    ld a, l
    ld b, a
    ld a, $27

jr_023_7ab1:
    ld a, l
    ld b, a
    ld a, [hl]
    ld b, e
    ld a, l
    ld b, l
    jr c, jr_023_7af1

    nop
    nop
    nop
    nop
    cp [hl]
    ld [c], a
    ld a, h
    db $e4
    cp [hl]
    ld [c], a
    ld a, [hl]
    jp nz, $a2be

    inc e
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_023_7ae9

    dec a
    dec h
    ccf
    inc hl
    ld h, a
    ld e, l
    ld h, a
    ld e, l
    ld a, a
    ld b, a
    ccf
    inc hl
    nop
    nop
    jr jr_023_7af9

    cp h
    and h
    db $fc
    call nz, $bae6
    and $ba

jr_023_7ae9:
    cp $e2
    db $fc
    call nz, $273d

jr_023_7aef:
    ld e, $17

jr_023_7af1:
    dec a
    daa
    ld a, $23
    rra
    inc de
    ld e, $12

jr_023_7af9:
    inc c
    inc c
    nop
    nop
    cp h
    db $e4
    ld a, b
    add sp, -$44
    db $e4
    ld a, h
    call nz, $c8f8
    ld a, b
    ld c, b
    jr nc, jr_023_7b3b

    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    jr c, jr_023_7b4d

    ld a, b
    ld a, b
    ld e, l
    ld a, l
    adc a
    rst $38
    rst $10
    db $fd
    nop
    nop
    nop
    nop
    jr nc, jr_023_7b53

    inc e
    inc e
    ld e, $1e
    cp d
    cp [hl]
    pop af
    rst $38
    db $eb
    cp a
    and a
    cp a
    inc a
    ccf
    ld h, $27
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_7b3b:
    nop
    nop
    push hl
    db $fd
    inc a
    db $fc
    ld h, h
    db $e4
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

jr_023_7b4d:
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_7b53:
    nop
    nop
    ld bc, $0701
    rlca
    rla
    dec d
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    add sp, -$58
    db $fc
    db $fc
    ld a, h
    ld a, a
    cp $ff
    ei
    ei
    ldh a, [$f0]
    ldh [$e0], a
    ld h, b
    ld h, b
    jr nc, @+$32

    nop
    nop
    ld a, $fe
    ld a, a
    rst $38
    rst $18
    rst $18
    rrca
    rrca
    rlca
    rlca
    ld b, $06
    inc c
    inc c
    nop
    nop
    nop
    nop
    inc c
    inc c
    rra
    rra
    rra
    add hl, de
    ccf
    ld [hl], $3f
    jr nc, jr_023_7bd9

    inc sp
    rra
    inc e
    nop
    nop
    jr nc, jr_023_7bd1

    ld hl, sp-$08
    ld hl, sp-$68
    db $fc
    ld l, h
    db $fc
    inc c
    db $fc
    call z, $38f8
    ld a, a
    ld [hl], b
    rst $38
    or b
    rst $38
    or b
    ld a, a
    ld a, b
    inc a
    daa
    ccf
    daa
    dec de
    dec de
    nop
    nop
    cp $0e
    rst $38
    dec c
    rst $38
    dec c
    cp $1e
    inc a
    db $e4
    db $fc
    db $e4
    ret c

    ret c

    nop
    nop
    nop
    nop
    inc c
    inc c

jr_023_7bd1:
    rra
    rra
    rra
    add hl, de
    ccf
    ld [hl], $3f
    inc sp

jr_023_7bd9:
    ccf
    inc a
    rra
    stop
    nop
    jr nc, jr_023_7c11

    ld hl, sp-$08
    ld hl, sp-$68
    db $fc
    ld l, h
    db $fc
    call z, $3cfc
    ld hl, sp+$08
    ld a, a
    ld h, b
    rst $38
    and b
    rst $38
    or b
    ld a, a
    ld a, h
    inc a
    daa
    ccf
    daa
    dec de
    dec de
    nop
    nop
    cp $06
    rst $38
    dec b
    rst $38
    dec c
    cp $1e
    inc a
    db $e4
    db $fc
    db $e4
    ret c

    ret c

    nop
    nop
    nop
    nop
    ld [hl], $36

jr_023_7c11:
    ld c, a
    ld a, c
    adc $bb
    ld h, a
    ld a, l
    rst $08
    cp c
    ld l, a
    ld a, b
    rst $00
    cp h
    nop
    nop
    ld l, h
    ld l, h
    ld a, [c]
    sbc [hl]
    ld [hl], e
    db $dd
    ld h, $fe
    rst $00
    ld sp, hl
    adc [hl]
    cp $86
    ld a, [$5d6a]
    add hl, sp
    cpl
    add hl, de
    rra
    inc b
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    ld [bc], a
    ld [bc], a

jr_023_7c3d:
    call c, $fcec
    ld b, h
    ld hl, sp-$08
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    dec bc
    rra
    dec e
    ccf
    add hl, hl
    ccf
    jr z, jr_023_7c71

    inc e
    ld a, [hl+]
    dec a
    nop
    nop
    ld h, b
    ld h, b
    ldh a, [$90]
    jr c, jr_023_7c3d

    inc a
    db $e4
    db $fc
    db $e4
    sbc b
    ld hl, sp-$38
    ld hl, sp+$49
    ld a, a
    ld c, c
    ld a, a

jr_023_7c71:
    ld b, h
    ld a, a
    rst $18
    xor l
    rst $38
    xor l
    ld a, a
    ld l, l
    ld [hl-], a
    ld [hl-], a
    nop
    nop
    call nz, $c27c
    cp $a2
    cp [hl]
    dec hl
    dec [hl]
    ccf
    dec h
    ld e, $16
    inc c
    inc c
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    db $10
    ccf
    cpl
    ld a, a
    ld d, e
    ld a, a
    ld e, a
    ld a, a
    ld b, c
    ccf
    dec a
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ld [bc], a
    ld [bc], a
    ld [hl], a
    ld [hl], l
    rst $38
    xor l
    rrca
    add hl, bc
    rra
    db $10
    rra
    db $10
    daa
    jr c, jr_023_7cd7

    ld a, $11
    rra
    rrca
    ld c, $01
    ld bc, $09ff
    cp $f2
    cp $1e
    rst $38
    add c
    rst $38
    add l
    cp $d2
    db $fc
    inc a
    ldh [$e0], a
    nop
    nop
    ld e, $1e
    ccf
    ld hl, $5f7f
    rst $38
    and a

jr_023_7cd7:
    cp $be
    rst $38
    add e
    ld a, a
    ld a, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_023_7d17

    db $fc
    call z, $0afe
    cp $0a
    rra
    ld de, $101f
    rra
    db $10
    daa
    jr c, jr_023_7d17

    ld a, $11
    rra
    rrca
    ld c, $01
    ld bc, $12fe
    cp $7e
    rst $38
    ld bc, $85ff
    cp $d2
    db $fc
    inc a
    ldh a, [rNR10]
    ldh [$e0], a
    nop
    nop
    ld b, $06
    ld e, $1e
    ccf
    ccf
    inc a
    ccf

jr_023_7d17:
    ld a, a
    ld a, a
    ld a, b
    ld [hl], a
    ret c

    or a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$9c08], sp
    sub h
    ld a, h
    db $e4
    ld a, [hl]
    jp z, $e25e

    ld h, b
    ld e, a
    ld h, e
    ld e, a
    rst $20
    call c, $d8ef
    rst $10
    or l
    ld h, d
    ld h, d
    nop
    nop
    nop
    nop
    ld c, h
    db $f4
    ld c, b
    ld hl, sp-$74
    db $fc
    adc d
    cp $72
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    inc a
    inc a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ld e, $1f
    ccf
    ccf
    inc a
    dec sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    add h
    ld c, [hl]
    jp z, $f2be

    ccf
    push hl
    ld l, h
    ld e, e
    ld sp, $732f
    ld l, [hl]
    ld h, a
    ld e, [hl]
    dec sp
    ld a, [hl-]
    ld bc, $0001
    nop
    nop
    nop
    cpl
    pop af
    and [hl]
    ld a, [$7ce4]
    add $7e
    rst $00
    cp $f9
    ld a, $c3
    inc a
    ld a, [hl]
    nop
    jr c, jr_023_7dc7

    ld b, a
    ld a, a
    ld d, b
    ld a, a
    ld a, h
    ld h, e
    inc a
    dec hl
    inc a
    inc hl
    ld a, a
    ld b, b
    ld a, a
    ld c, a
    jr c, jr_023_7dd7

    call nz, $14fc
    db $fc
    ld a, h
    adc h
    ld a, b
    xor b
    ld a, b
    adc b
    db $fc
    inc b
    db $fc
    db $e4
    ccf
    jr nz, jr_023_7dcf

    rra
    db $10
    rra
    db $10
    rra
    jr nz, @+$41

    jr nz, @+$41

    inc de
    rra
    inc c
    inc c
    ld hl, sp+$08
    ldh a, [$f0]
    ld [$08f8], sp
    ld hl, sp+$04
    db $fc

jr_023_7dc7:
    inc b
    db $fc
    adc b
    ld hl, sp+$70
    ld [hl], b
    inc e
    inc e

jr_023_7dcf:
    inc hl
    ccf
    jr z, jr_023_7e12

    ld a, $31
    ld e, $15

jr_023_7dd7:
    ld e, $11
    ccf
    jr nz, jr_023_7e1b

    daa
    inc e
    inc e
    ld [c], a
    cp $0a
    cp $3e
    add $3c
    call nc, $c43c
    cp $02
    cp $f2
    rra
    db $10
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    jr nz, jr_023_7e36

    jr nz, jr_023_7e38

    inc de
    rra
    inc c
    inc c
    db $fc
    inc b
    ld hl, sp-$08
    ld [$08f8], sp
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    adc b
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    ld bc, $3b01

jr_023_7e12:
    ld a, [hl-]
    ld h, a
    ld e, [hl]
    db $d3
    xor [hl]
    and e
    call c, $fe83

jr_023_7e1b:
    ld b, l
    ld a, l
    inc e
    inc e
    or d
    xor [hl]
    jp hl


    ld d, a
    pop de
    ld l, a
    pop bc
    ccf
    ld [c], a
    ld a, $7c
    cp h
    ld h, b
    and b
    add hl, sp
    add hl, sp
    ld bc, $0301
    ld [bc], a
    rlca
    ld b, $0f

jr_023_7e36:
    inc c
    rrca

jr_023_7e38:
    ld [$0c0f], sp
    rlca
    rlca
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    and b
    ld h, b
    or b
    ld d, b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    jr c, jr_023_7e87

    ld c, l
    ld [hl], l
    sub a
    ld [$f68b], a
    add e
    db $fc
    ld b, a
    ld a, h
    ld a, $3d
    ld b, $05
    nop
    nop
    add b
    add b
    call c, $e65c
    ld a, d
    bit 6, l
    push bc
    dec sp
    pop bc
    ld a, a
    and d
    cp [hl]
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    dec b
    ld b, $0d
    ld a, [bc]
    rrca
    ld [$0c0f], sp
    rlca
    rlca
    sbc h
    sbc h
    add b
    add b
    ret nz

    ld b, b
    ldh [$60], a
    ldh a, [$30]

jr_023_7e87:
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    ld [hl], e
    ld [hl], e

jr_023_7e8f:
    ld e, h
    ld l, a
    inc l
    scf
    jr jr_023_7eb4

    inc e
    rla
    ld a, $37
    ld h, b
    ld a, a
    ld a, [$cebf]
    adc $3a
    or $34
    db $ec
    jr @-$06

    jr c, jr_023_7e8f

    ld a, h
    db $ec
    ld b, $fe
    ld e, a
    db $fd
    cp h
    rst $38
    rst $28
    rst $38
    ld d, e
    ld a, h
    rst $10

jr_023_7eb4:
    cp b
    ld e, a
    ld a, b
    daa
    inc a
    scf
    dec hl
    inc e
    inc e
    dec a
    rst $38
    rst $30
    rst $38
    jp z, $eb3e

    dec e
    ld a, [$e41e]
    inc a
    db $ec
    call nc, $3838
    nop
    nop
    nop
    nop
    ld [hl], e
    ld [hl], e
    ld e, h
    ld l, a
    inc l
    scf
    jr jr_023_7ef8

    ld a, h
    ld [hl], a
    cp $b7
    nop
    nop
    nop
    nop

jr_023_7ee1:
    adc $ce
    ld a, [hl-]
    or $34
    db $ec
    jr jr_023_7ee1

    ld a, $ee
    ld a, a
    db $ed
    and b
    rst $38
    ld a, [$7cff]
    ld a, a
    rst $28
    cp a
    ld e, a
    ld a, b
    daa

jr_023_7ef8:
    inc a
    scf
    dec hl
    inc e
    inc e
    dec b
    rst $38
    ld e, a
    rst $38
    ld a, $fe
    rst $30
    db $fd
    ld a, [$e41e]
    inc a
    db $ec
    call nc, $3838
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
