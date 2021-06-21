; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $047", ROMX[$4000], BANK[$47]

    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld hl, $d10a
    ld a, [hl]
    dec a
    ld e, a
    ld d, $00
    ld hl, $72f0
    add hl, de
    ld a, [hl]
    and a
    jr nz, jr_047_4026

    ldh a, [$e1]
    and $1f
    cp $19
    jr c, jr_047_4021

    sub $19

jr_047_4021:
    ld hl, $7332
    jr jr_047_4033

jr_047_4026:
    ldh a, [$e1]
    and $0f
    cp $0f
    jr c, jr_047_4030

    sub $0f

jr_047_4030:
    ld hl, $73ce

jr_047_4033:
    ld b, $00
    dec c
    jr nz, jr_047_403d

    ld [$d200], a
    jr jr_047_4040

jr_047_403d:
    ld a, [$d200]

jr_047_4040:
    push af
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld h, a
    ld l, c
    pop af
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld l, c
    ld h, a
    ld bc, $c5b9
    pop af
    ldh [rSVBK], a
    call $13e5
    ret


Call_047_405d:
    ld a, e
    or d
    jr z, jr_047_4071

    ld a, e
    and d
    cp $ff
    jr z, jr_047_4071

    push hl
    call Call_047_4156
    pop hl
    call $1078
    and a
    ret


jr_047_4071:
    ld c, l
    ld b, h
    scf
    ret


    push de
    ld a, c
    call Call_047_4254
    pop de
    ld bc, $cd36
    call Call_047_408f
    ret


    push de
    ld a, c
    call Call_047_4254
    pop de
    ld bc, $cd36
    call Call_047_40c6
    ret


Call_047_408f:
    ld l, e
    ld h, d
    push hl
    ld a, $03

jr_047_4094:
    push af
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    push bc
    call Call_047_405d
    jr c, jr_047_40a2

    inc bc

jr_047_40a2:
    ld l, c
    ld h, b
    pop bc
    pop af
    dec a
    jr nz, jr_047_4094

    pop hl
    ld de, $0028
    add hl, de
    ld a, $03

jr_047_40b0:
    push af
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    push bc
    call Call_047_405d
    jr c, jr_047_40be

    inc bc

jr_047_40be:
    ld l, c
    ld h, b
    pop bc
    pop af
    dec a
    jr nz, jr_047_40b0

    ret


Call_047_40c6:
    ld a, [$cf63]
    ld l, a
    ld a, [$cf64]
    ld h, a
    push hl
    ld hl, $c618
    ld a, $00
    ld [hl+], a
    push de
    xor a
    ld [$cf63], a
    ld a, $12
    ld [$cf64], a
    ld a, $06

jr_047_40e1:
    push af
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld d, a
    inc bc
    or e
    jr z, jr_047_4133

    push hl
    push bc
    call Call_047_4156
    call Call_047_414a
    ld e, c
    pop bc
    pop hl
    ld a, e
    or a
    jr z, jr_047_4133

jr_047_40fa:
    ld a, [$cf64]
    cp $12
    jr z, jr_047_4102

    inc e

jr_047_4102:
    cp e
    jr nc, jr_047_411c

    ld a, [$cf63]
    inc a
    ld [$cf63], a
    ld [hl], $4e
    rra
    jr c, jr_047_4113

    ld [hl], $55

jr_047_4113:
    inc hl
    ld a, $12
    ld [$cf64], a
    dec e
    jr jr_047_40fa

jr_047_411c:
    cp $12
    jr z, jr_047_4123

    ld [hl], $7f
    inc hl

jr_047_4123:
    sub e
    ld [$cf64], a
    ld de, $c608

jr_047_412a:
    ld a, [de]
    cp $50
    jr z, jr_047_4133

    inc de
    ld [hl+], a
    jr jr_047_412a

jr_047_4133:
    pop af
    dec a
    jr nz, jr_047_40e1

    ld [hl], $57
    pop bc
    ld hl, $c618
    call $13e5
    pop hl
    ld a, l
    ld [$cf63], a
    ld a, h
    ld [$cf64], a
    ret


Call_047_414a:
    ld c, $00
    ld hl, $c608

jr_047_414f:
    ld a, [hl+]
    cp $50
    ret z

    inc c
    jr jr_047_414f

Call_047_4156:
    ldh a, [rSVBK]
    push af
    ld a, $01
    ldh [rSVBK], a
    ld a, $50
    ld hl, $c608
    ld bc, $000b
    call $3041
    ld a, d
    and a
    jr z, jr_047_419c

    ld hl, $5aac
    dec d
    sla d
    ld c, d
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    push bc
    pop hl
    ld c, e
    ld b, $00
    sla c
    rl b
    sla c
    rl b
    sla c
    rl b
    add hl, bc
    ld bc, $0005

jr_047_418f:
    ld de, $c608
    call $3026
    ld de, $c608
    pop af
    ldh [rSVBK], a
    ret


jr_047_419c:
    ld a, e
    ld [$d265], a
    call $343b
    ld hl, $d073
    ld bc, $000a
    jr jr_047_418f

    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    call Call_047_41b9
    pop af
    ldh [$aa], a
    ret


Call_047_41b9:
    call Call_047_41ca
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    call Call_047_4283
    pop af
    ldh [rSVBK], a
    ret


Call_047_41ca:
    xor a
    ld [$cf63], a
    ld [$cf64], a
    ld [$cf65], a
    ld [$cf66], a
    ld [$cd23], a
    ld [$cd20], a
    ld [$cd21], a
    ld [$cd22], a
    ld [$cd35], a
    ld [$cd2b], a
    ld a, $ff
    ld [$cd24], a
    ld a, [$cfa9]
    dec a
    call Call_047_4254
    call $31f3
    call $300b
    call $0fdb
    call Call_047_5323
    call $32f9
    call $0568
    ld hl, $567e
    ld de, $9000
    ld bc, $0060
    call $3026
    ld hl, $56de
    ld de, $8000
    call $0b50
    call $058a
    ld a, $41
    ld hl, $4061
    rst $08
    ld a, $23
    ld hl, $4f53
    rst $08
    ld a, $05
    ld hl, $500c
    rst $08
    ld a, $10
    ld hl, $4c30
    rst $08
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $c6d0
    ld de, $d100
    ld bc, $0100
    call $3026
    pop af
    ldh [rSVBK], a
    call Call_047_54aa
    call Call_047_53ba
    ret


Call_047_4254:
    push af
    ld a, $04
    call $2fcb
    ld hl, $a007
    pop af
    sla a
    sla a
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    ld de, $cd36
    ld bc, $000c
    call $3026
    call $2fe1
    ret


Call_047_4277:
    ld a, $7f
    ld hl, $c518
    ld bc, $00f0
    call $3041
    ret


Call_047_4283:
jr_047_4283:
    call $0a57
    ldh a, [$a7]
    ldh [$a3], a
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_047_42a2

    call Call_047_42ac
    ld a, $23
    ld hl, $4f69
    rst $08
    ld a, $41
    ld hl, $4061
    rst $08
    jr jr_047_4283

jr_047_42a2:
    ld a, $23
    ld hl, $4f53
    rst $08
    call $300b
    ret


Call_047_42ac:
    ld a, [$cf63]
    ld e, a
    ld d, $00
    ld hl, $42bb
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    jp hl


    ld b, d
    ld b, [hl]
    ld b, e
    ld e, a
    ld b, e
    ld [hl], e
    ld b, e
    jp nz, $ed43

    ld b, e
    inc l
    ld b, l
    dec a
    ld b, l
    ld e, b
    ld b, [hl]
    ld [hl], l
    ld b, [hl]
    cp l
    ld c, c
    jp $ad49


    ld c, d
    or e
    ld c, d
    ld d, d
    ld c, e
    ld h, [hl]
    ld c, e
    push af
    ld c, e
    rst $28
    ld c, h
    inc b
    ld c, l
    jr nz, jr_047_4330

    ld d, h
    ld c, l
    dec bc
    ld c, [hl]
    dec hl
    ld c, [hl]
    ld de, $1a0d
    ld a, $1d
    call $3b2a
    ld de, $420d
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $01
    ld [hl], a
    ld de, $4a10
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $03
    ld [hl], a
    ld de, $5080
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $04
    ld [hl], a
    ld de, $5020
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $05
    ld [hl], a
    ld de, $5010

jr_047_4330:
    ld a, $1d
    call $3b2a
    ld hl, $000c
    add hl, bc
    ld a, $02
    ld [hl], a
    ld hl, $cd23
    set 1, [hl]
    set 2, [hl]
    jp Jump_047_4fb5


    ld a, $09
    ld [$cd2d], a
    ld a, $02
    ld [$cd2e], a
    ld [$cd2f], a
    ld [$cd30], a
    ld de, $cd2d
    call Call_047_4fce
    jp Jump_047_4fb5


    ld hl, $cd2f
    inc [hl]
    inc [hl]
    dec hl
    dec hl
    dec [hl]
    push af
    ld de, $cd2d
    call Call_047_4fce
    pop af
    ret nz

    jp Jump_047_4fb5


    ld hl, $cd30
    inc [hl]
    inc [hl]
    dec hl
    dec hl
    dec [hl]
    push af
    ld de, $cd2d
    call Call_047_4fce
    pop af
    ret nz

    call Call_047_438a
    jp Jump_047_4fb5


Call_047_438a:
    ld hl, $4986
    ld bc, $cd36
    ld a, $06

jr_047_4392:
    push af
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    push de
    pop hl
    ld a, [bc]
    inc bc
    ld e, a
    ld a, [bc]
    inc bc
    ld d, a
    push bc
    or e
    jr z, jr_047_43af

    ld a, e
    and d
    cp $ff
    jr z, jr_047_43af

    call Call_047_405d
    jr jr_047_43b5

jr_047_43af:
    ld de, $43bc
    call $1078

jr_047_43b5:
    pop bc
    pop hl
    pop af
    dec a
    jr nz, jr_047_4392

    ret


    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    ld d, b
    call Call_047_4277
    ld de, $4fbe
    call Call_047_5035
    ld hl, $c52d
    ld de, $44db
    call $1078
    ld hl, $c5e1
    ld de, $451b
    call $1078
    call Call_047_44be
    ld hl, $cd23
    set 0, [hl]
    ld hl, $cd24
    res 0, [hl]
    call Call_047_4fb5
    ld hl, $cd20
    ld de, $ffa3
    ld a, [de]
    and $08
    jr nz, jr_047_4426

    ld a, [de]
    and $02
    jr nz, jr_047_441a

    ld a, [de]
    and $01
    jr nz, jr_047_442c

    ld de, $ffa9
    ld a, [de]
    and $40
    jr nz, jr_047_447c

    ld a, [de]
    and $80
    jr nz, jr_047_4484

    ld a, [de]
    and $20
    jr nz, jr_047_448c

    ld a, [de]
    and $10
    jr nz, jr_047_4498

    ret


jr_047_441a:
    call $2009

jr_047_441d:
    ld hl, $cd24
    set 0, [hl]
    ld a, $0c
    jr jr_047_4475

jr_047_4426:
    ld a, $08
    ld [$cd20], a
    ret


jr_047_442c:
    ld a, [$cd20]
    cp $06
    jr c, jr_047_4472

    sub $06
    jr z, jr_047_4469

    dec a
    jr z, jr_047_441d

    ld hl, $cd36
    ld c, $0c
    xor a

jr_047_4440:
    or [hl]
    inc hl
    dec c
    jr nz, jr_047_4440

    and a
    jr z, jr_047_4460

    ld de, $4fba
    call Call_047_4fce
    ld de, $c4c9
    ld bc, $cd36
    call Call_047_408f
    ld hl, $cd24
    set 0, [hl]
    ld a, $0e
    jr jr_047_4475

jr_047_4460:
    ld hl, $cd24
    set 0, [hl]
    ld a, $11
    jr jr_047_4475

jr_047_4469:
    ld hl, $cd24
    set 0, [hl]
    ld a, $0a
    jr jr_047_4475

jr_047_4472:
    call Call_047_44a5

jr_047_4475:
    ld [$cf63], a
    call $2009
    ret


jr_047_447c:
    ld a, [hl]
    cp $03
    ret c

    sub $03
    jr jr_047_44a3

jr_047_4484:
    ld a, [hl]
    cp $06
    ret nc

    add $03
    jr jr_047_44a3

jr_047_448c:
    ld a, [hl]
    and a
    ret z

    cp $03
    ret z

    cp $06
    ret z

    dec a
    jr jr_047_44a3

jr_047_4498:
    ld a, [hl]
    cp $02
    ret z

    cp $05
    ret z

    cp $08
    ret z

    inc a

jr_047_44a3:
    ld [hl], a
    ret


Call_047_44a5:
    ld hl, $cd23
    res 0, [hl]
    ld a, [$cd2b]
    and a
    jr nz, jr_047_44b7

    xor a
    ld [$cd21], a
    ld a, $06
    ret


jr_047_44b7:
    xor a
    ld [$cd22], a
    ld a, $15
    ret


Call_047_44be:
    ld a, $01
    ld hl, $ce51
    ld bc, $00a0
    call $3041
    ld a, $07
    ld hl, $cef1
    ld bc, $0028
    call $3041

jr_047_44d4:
    ld a, $41
    ld hl, $4061
    rst $08
    ret


    db $fc
    jp nz, $bac9

Call_047_44df:
    call nz, $1f3a
    cp b
    ret nc

    or c
    call c, $cfbe
    cp l
    ld c, [hl]
    or [hl]
    or h
    ret nz

    or d
    call nz, $dbba
    rra
    or h
    rst $10
    inc a
    call nz, $337f
    jp $d9b8


    ld c, [hl]
    cp d
    call nz, $c93a
    rlca
    and [hl]
    db $e3
    ld b, d
    or [hl]
    rst $10
    ld a, a
    or d
    jp c, $b4b6

    ret nz

    or d
    ld c, [hl]
    ret nz

    sbc $2a
    rra
    or h
    rst $10
    sbc $33
    cp b
    jr nc, jr_047_44d4

    or d
    ld d, b
    ld l, $de
    inc a
    cp c
    cp l
    ld a, a
    call nc, $d9d2
    ld a, a
    ld a, a
    ld a, a
    cp c
    rst $18
    jp Jump_047_50b2


    call Call_047_4277
    call Call_047_45f0
    call Call_047_4618
    ld hl, $cd24
    res 1, [hl]
    call Call_047_4fb5
    ld hl, $cd21
    ld de, $ffa3
    ld a, [de]
    and $08
    jr nz, jr_047_457f

    ld a, [de]
    and $04
    jr nz, jr_047_458d

    ld a, [de]
    and $02
    jr nz, jr_047_4589

    ld a, [de]
    and $01
    jr nz, jr_047_456f

    ld de, $ffa9
    ld a, [de]
    and $40
    jr nz, jr_047_45b5

    ld a, [de]
    and $80
    jr nz, jr_047_45bd

    ld a, [de]
    and $20
    jr nz, jr_047_45c5

    ld a, [de]
    and $10
    jr nz, jr_047_45da

    ret


jr_047_456f:
    ld a, [$cd21]
    cp $0f
    jr c, jr_047_459d

    sub $0f
    jr z, jr_047_45ab

    dec a
    jr z, jr_047_4599

    jr jr_047_4589

jr_047_457f:
    ld hl, $cd24
    set 0, [hl]
    ld a, $08
    ld [$cd20], a

jr_047_4589:
    ld a, $04
    jr jr_047_459f

jr_047_458d:
    ld a, [$cd2b]
    xor $01
    ld [$cd2b], a
    ld a, $15
    jr jr_047_459f

jr_047_4599:
    ld a, $13
    jr jr_047_459f

jr_047_459d:
    ld a, $08

jr_047_459f:
    ld hl, $cd24
    set 1, [hl]
    ld [$cf63], a
    call $2009
    ret


jr_047_45ab:
    ld a, [$cd20]
    call Call_047_4a6a
    call $2009
    ret


jr_047_45b5:
    ld a, [hl]
    cp $03
    ret c

    sub $03
    jr jr_047_45ee

jr_047_45bd:
    ld a, [hl]
    cp $0f
    ret nc

    add $03
    jr jr_047_45ee

jr_047_45c5:
    ld a, [hl]
    and a
    ret z

    cp $03
    ret z

    cp $06
    ret z

    cp $09
    ret z

    cp $0c
    ret z

    cp $0f
    ret z

    dec a
    jr jr_047_45ee

jr_047_45da:
    ld a, [hl]
    cp $02
    ret z

    cp $05
    ret z

    cp $08
    ret z

    cp $0b
    ret z

    cp $0e
    ret z

    cp $11
    ret z

    inc a

jr_047_45ee:
    ld [hl], a
    ret


Call_047_45f0:
    ld de, $5a52
    ld bc, $463a
    ld a, $0f

jr_047_45f8:
    push af
    ld a, [bc]
    inc bc
    ld l, a
    ld a, [bc]
    inc bc
    ld h, a
    push bc
    call $1078

jr_047_4603:
    inc de
    ld a, [de]
    cp $50
    jr z, jr_047_4603

    pop bc
    pop af
    dec a
    jr nz, jr_047_45f8

    ld hl, $c5f5
    ld de, $462a
    call $1078
    ret


Call_047_4618:
    ld a, $02
    ld hl, $ce51
    ld bc, $00c8
    call $3041
    ld a, $41
    ld hl, $4061
    rst $08
    ret


    cp c
    cp l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    and c
    db $e3
    inc de
    ld a, a
    ld a, a
    ld a, a
    call nc, $d9d2
    ld d, b
    dec l
    push bc
    inc sp
    push bc
    add hl, sp
    push bc
    ld d, l
    push bc
    ld e, e
    push bc
    ld h, c
    push bc
    ld a, l
    push bc
    add e
    push bc
    adc c
    push bc
    and l
    push bc
    xor e
    push bc

Jump_047_4650:
    or c
    push bc
    call $d3c5
    push bc
    reti


    push bc
    call Call_047_4277
    call Call_047_4770
    ld de, $4fc2
    call Call_047_5035
    call Call_047_49ab
    call Call_047_47bc
    call Call_047_486e
    ld hl, $cd24
    res 3, [hl]
    call Call_047_4fb5
    ld hl, $cd25
    ld de, $ffa3
    ld a, [de]
    and $01
    jr nz, jr_047_46e6

    ld a, [de]
    and $02
    jr nz, jr_047_46f0

    ld a, [de]
    and $08
    jr nz, jr_047_469e

    ld a, [de]
    and $04
    jr z, jr_047_46ce

    ld a, [$cd26]
    and a
    ret z

    sub $0c
    jr nc, jr_047_4699

    xor a

jr_047_4699:
    ld [$cd26], a
    jr jr_047_46c4

jr_047_469e:
    ld hl, $cd28
    ld a, [$cd26]
    add $0c
    cp [hl]
    ret nc

    ld [$cd26], a
    ld a, [hl]
    ld b, a
    ld hl, $cd25
    ld a, [$cd26]
    add [hl]
    jr c, jr_047_46b9

    cp b
    jr c, jr_047_46c4

jr_047_46b9:
    ld a, [$cd28]
    ld hl, $cd26
    sub [hl]
    dec a
    ld [$cd25], a

jr_047_46c4:
    call Call_047_4992
    call Call_047_47bc
    call Call_047_486e
    ret


jr_047_46ce:
    ld de, $ffa9
    ld a, [de]
    and $40
    jr nz, jr_047_4708

    ld a, [de]
    and $80
    jr nz, jr_047_4731

    ld a, [de]
    and $20
    jr nz, jr_047_4746

    ld a, [de]
    and $10
    jr nz, jr_047_4755

    ret


jr_047_46e6:
    call Call_047_48f6
    ld a, $04
    ld [$cd35], a
    jr jr_047_46fc

jr_047_46f0:
    ld a, [$cd2b]
    and a
    jr nz, jr_047_46fa

    ld a, $06
    jr jr_047_46fc

jr_047_46fa:
    ld a, $15

jr_047_46fc:
    ld [$cf63], a
    ld hl, $cd24
    set 3, [hl]
    call $2009
    ret


jr_047_4708:
    ld a, [hl]
    cp $03
    jr c, jr_047_4711

    sub $03
    jr jr_047_476e

jr_047_4711:
    ld a, [$cd26]
    sub $03
    ret c

    ld [$cd26], a
    jr jr_047_46c4

jr_047_471c:
    ld hl, $cd28
    ld a, [$cd26]
    add $0c
    ret c

    cp [hl]
    ret nc

    ld a, [$cd26]
    add $03
    ld [$cd26], a
    jr jr_047_46c4

jr_047_4731:
    ld a, [$cd28]
    ld b, a
    ld a, [$cd26]
    add [hl]
    add $03
    cp b
    ret nc

    ld a, [hl]
    cp $09
    jr nc, jr_047_471c

    add $03
    jr jr_047_476e

jr_047_4746:
    ld a, [hl]
    and a
    ret z

    cp $03
    ret z

    cp $06
    ret z

    cp $09
    ret z

    dec a
    jr jr_047_476e

jr_047_4755:
    ld a, [$cd28]
    ld b, a
    ld a, [$cd26]
    add [hl]
    inc a
    cp b
    ret nc

    ld a, [hl]
    cp $02
    ret z

    cp $05
    ret z

    cp $08
    ret z

    cp $0b
    ret z

    inc a

jr_047_476e:
    ld [hl], a
    ret


Call_047_4770:
    xor a
    ld [$cd25], a
    ld [$cd26], a
    ld [$cd27], a
    ld a, [$cd2b]
    and a
    jr nz, jr_047_47ab

    ld a, [$cd21]
    and a
    jr z, jr_047_4799

    dec a
    sla a
    ld hl, $7220
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld [$cd28], a
    ld a, [hl]

jr_047_4795:
    ld [$cd29], a
    ret


jr_047_4799:
    ld a, [$c7d2]
    ld [$cd28], a

jr_047_479f:
    ld c, $0c
    call $3110
    and a
    jr nz, jr_047_47a8

    dec b

jr_047_47a8:
    ld a, b
    jr jr_047_4795

jr_047_47ab:
    ld hl, $c6a8
    ld a, [$cd22]
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld a, [hl]
    ld [$cd28], a
    jr jr_047_479f

Call_047_47bc:
    ld bc, $4854
    ld a, [$cd2b]
    and a
    jr nz, jr_047_4814

    ld a, [$cd21]
    ld d, a
    and a
    jr z, jr_047_47e9

    ld a, [$cd26]
    ld e, a

jr_047_47d0:
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    and l
    cp $ff
    ret z

    push bc
    push de
    call Call_047_405d
    pop de
    pop bc
    inc e
    ld a, [$cd28]
    cp e
    jr nz, jr_047_47d0

    ret


jr_047_47e9:
    ld hl, $d100
    ld a, [$cd26]
    ld e, a
    add hl, de

jr_047_47f1:
    push de
    ld a, [hl+]
    ld e, a
    ld d, $00
    push hl
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    and l
    cp $ff
    jr z, jr_047_4811

    push bc
    call Call_047_405d
    pop bc
    pop hl
    pop de
    inc e
    ld a, [$cd28]
    cp e
    jr nz, jr_047_47f1

    ret


jr_047_4811:
    pop hl
    pop de
    ret


jr_047_4814:
    ld hl, $c648
    ld a, [$cd22]
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl
    ld a, [$cd26]
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [$cd26]
    ld e, a

jr_047_4831:
    push de
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    and l
    cp $ff
    jr z, jr_047_4851

    push bc
    call Call_047_405d
    pop bc
    pop hl
    pop de
    inc e
    ld a, [$cd28]
    cp e
    jr nz, jr_047_4831

Jump_047_4850:
    ret


jr_047_4851:
    pop hl
    pop de
    ret


    ld b, d
    push bc
    ld c, b
    push bc
    ld c, [hl]
    push bc
    ld l, d
    push bc
    ld [hl], b
    push bc
    db $76
    push bc
    sub d
    push bc
    sbc b
    push bc
    sbc [hl]
    push bc
    cp d
    push bc
    ret nz

    push bc
    add $c5
    rst $38
    rst $38

Call_047_486e:
    ld a, [$cd26]
    and a
    jr z, jr_047_488a

    ld hl, $c5f6
    ld de, $48f0
    call $1078
    ld hl, $c5fa
    ld c, $03
    xor a

jr_047_4883:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_047_4883

    jr jr_047_4895

jr_047_488a:
    ld hl, $c5f6
    ld c, $07
    ld a, $7f

jr_047_4891:
    ld [hl+], a
    dec c
    jr nz, jr_047_4891

jr_047_4895:
    ld hl, $cd28
    ld a, [$cd26]
    add $0c
    jr c, jr_047_48b7

    cp [hl]
    jr nc, jr_047_48b7

    ld hl, $c604
    ld de, $48f3
    call $1078
    ld hl, $c5ff
    ld a, $03
    ld c, a

jr_047_48b1:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_047_48b1

    ret


jr_047_48b7:
    ld hl, $c5f1
    ld a, $7f
    ld [hl], a
    ld hl, $c5ff
    ld c, $07

jr_047_48c2:
    ld [hl+], a
    dec c
    jr nz, jr_047_48c2

    ret


    inc a
    push af
    and $0f
    ldh [$b3], a
    pop af
    and $f0
    swap a
    ldh [$b4], a
    xor a
    ldh [$b5], a
    push hl
    ld a, $46
    ld hl, $680c
    rst $08
    pop hl

Jump_047_48df:
    ld a, [$cd63]
    add $f6
    ld [hl+], a
    ld a, [$cd62]
    add $f6
    ld [hl+], a
    ret


    ld b, a
    db $e3
    dec bc
    ld d, b
    rst $08
    or h
    ld d, b
    jp nz, Jump_047_5027

Call_047_48f6:
    ld a, [$cd20]
    call Call_047_495d
    push hl
    ld a, [$cd2b]
    and a
    jr nz, jr_047_4938

    ld a, [$cd21]
    ld d, a
    and a
    jr z, jr_047_4927

    ld hl, $cd26
    ld a, [$cd25]
    add [hl]

jr_047_4911:
    ld e, a

jr_047_4912:
    pop hl
    push de
    call Call_047_405d
    pop de
    ld a, [$cd20]
    ld c, a
    ld b, $00
    ld hl, $cd36
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret


jr_047_4927:
    ld hl, $cd26
    ld a, [$cd25]
    add [hl]
    ld c, a
    ld b, $00
    ld hl, $d100
    add hl, bc
    ld a, [hl]
    jr jr_047_4911

jr_047_4938:
    ld hl, $c648
    ld a, [$cd22]
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    push de
    pop hl
    ld a, [$cd26]
    ld e, a
    ld d, $00
    add hl, de
    add hl, de
    ld a, [$cd25]
    ld e, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    jr jr_047_4912

Call_047_495d:
    sla a
    ld c, a
    ld b, $00
    ld hl, $4986
    add hl, bc
    ld a, [hl+]
    ld c, a
    ld a, [hl]
    ld b, a
    push bc
    push bc
    pop hl
    ld a, $05
    ld c, a
    ld a, $7f

jr_047_4972:
    ld [hl+], a
    dec c
    jr nz, jr_047_4972

    dec hl
    ld bc, $ffec
    add hl, bc
    ld a, $05
    ld c, a
    ld a, $7f

jr_047_4980:
    ld [hl-], a
    dec c
    jr nz, jr_047_4980

    pop hl
    ret


    ret


    call nz, $c4cf
    push de
    call nz, $c4f1
    rst $30
    call nz, $c4fd

Call_047_4992:
    ld a, $08
    ld hl, $c52e

jr_047_4997:
    push af
    ld a, $7f
    push hl
    ld bc, $0011
    call $3041
    pop hl
    ld bc, $0014
    add hl, bc
    pop af
    dec a
    jr nz, jr_047_4997

    ret


Call_047_49ab:
    ld a, $07
    ld hl, $ce51
    ld bc, $00c8
    call $3041
    ld a, $41
    ld hl, $4061
    rst $08
    ret


    ld de, $4a38
    call Call_047_4a7f
    ld hl, $cd2a
    ld de, $ffa3
    ld a, [de]
    and $01
    jr nz, jr_047_49de

    ld a, [de]
    and $02
    jr nz, jr_047_49e9

    ld a, [de]
    and $40
    jr nz, jr_047_49f7

    ld a, [de]
    and $80
    jr nz, jr_047_49fc

    ret


jr_047_49de:
    ld a, [hl]
    and a
    jr nz, jr_047_49e9

    call Call_047_4a5e
    xor a
    ld [$cd20], a

jr_047_49e9:
    ld hl, $cd24
    set 4, [hl]
    ld a, $04
    ld [$cf63], a
    call $2009
    ret


jr_047_49f7:
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret


jr_047_49fc:
    ld a, [hl]
    and a
    ret nz

    inc [hl]
    ret


Call_047_4a01:
    ld hl, $ce73
    ld de, $0014
    ld a, $05
    ld c, a

jr_047_4a0a:
    push hl
    ld a, $06
    ld b, a
    ld a, $07

jr_047_4a10:
    ld [hl+], a
    dec b
    jr nz, jr_047_4a10

    pop hl
    add hl, de
    dec c
    jr nz, jr_047_4a0a

Call_047_4a19:
    ld hl, $cec9
    ld de, $0014
    ld a, $06
    ld c, a

jr_047_4a22:
    push hl
    ld a, $14
    ld b, a
    ld a, $07

jr_047_4a28:
    ld [hl+], a
    dec b
    jr nz, jr_047_4a28

    pop hl
    add hl, de
    dec c
    jr nz, jr_047_4a22

    ld a, $41
    ld hl, $4061
    rst $08
    ret


    call nz, $dbb3
    cp b
    pop bc
    pop hl
    or e
    dec h
    or c
    or d
    cp e
    jp nz, $2e1f

    sbc $3c
    ld c, [hl]
    cp c
    cp h
    jp Jump_047_7fd3


    sub $db
    cp h
    or d
    inc sp
    cp l
    or [hl]
    and $50
    jp z, Jump_047_4eb2

    or d
    or d
    or h
    ld d, b

Call_047_4a5e:
    xor a

jr_047_4a5f:
    push af
    call Call_047_4a6a
    pop af
    inc a
    cp $06
    jr nz, jr_047_4a5f

    ret


Call_047_4a6a:
    ld hl, $cd36
    ld c, a
    ld b, $00
    add hl, bc
    add hl, bc
    ld [hl], b
    inc hl
    ld [hl], b
    call Call_047_495d
    ld de, $43bc
    call $1078
    ret


Call_047_4a7f:
    push de
    ld de, $4fc6
    call Call_047_4fce
    ld de, $4fca
    call Call_047_4fce
    ld hl, $c5b9
    pop de
    call $1078
    ld hl, $c550
    ld de, $4a57
    call $1078
    call Call_047_4a01
    ld a, $01
    ld [$cd2a], a
    ld hl, $cd24
    res 4, [hl]
    call Call_047_4fb5
    ret


    ld de, $4b1c
    call Call_047_4a7f
    ld hl, $cd2a
    ld de, $ffa3
    ld a, [de]
    and $01
    jr nz, jr_047_4ace

    ld a, [de]
    and $02
    jr nz, jr_047_4af9

    ld a, [de]
    and $40
    jr nz, jr_047_4b12

    ld a, [de]
    and $80
    jr nz, jr_047_4b17

    ret


jr_047_4ace:
    call $2009
    ld a, [hl]
    and a
    jr nz, jr_047_4afc

    ld a, [$cd35]
    and a
    jr z, jr_047_4af3

    cp $ff
    jr z, jr_047_4af3

    ld a, $ff
    ld [$cd35], a
    ld hl, $c5b9
    ld de, $4b31
    call $1078
    ld a, $01
    ld [$cd2a], a
    ret


jr_047_4af3:
    ld hl, $cf63
    set 7, [hl]
    ret


jr_047_4af9:
    call $2009

jr_047_4afc:
    ld hl, $cd24
    set 4, [hl]
    ld a, $04
    ld [$cf63], a
    ld a, [$cd35]
    cp $ff
    ret nz

    ld a, $01
    ld [$cd35], a
    ret


jr_047_4b12:
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret


jr_047_4b17:
    ld a, [hl]
    and a
    ret nz

    inc [hl]
    ret


    or c
    or d
    cp e
    jp nz, $c425

    or e
    db $db
    cp b
    rra
    pop bc
    pop hl
    or e
    cp h
    ld c, [hl]
    cp h
    rst $08
    cp l
    or [hl]
    and $50
    call nz, $dbb3
    cp b
    pop bc
    pop hl
    or e
    dec h
    or c
    or d
    cp e
    jp nz, $ce24

    cpl
    sbc $4e
    cp e
    jp c, $becf

    sbc $4a
    sub $db
    cp h
    or d
    ld a, a
    inc sp
    cp l
    or [hl]
    and $50
    ld hl, $4c01
    ld a, [$cfa9]

jr_047_4b58:
    dec a
    jr z, jr_047_4b5f

    inc hl
    inc hl
    jr jr_047_4b58

jr_047_4b5f:
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    call Call_047_4a7f
    ld hl, $cd2a
    ld de, $ffa3
    ld a, [de]
    and $01
    jr nz, jr_047_4b81

    ld a, [de]
    and $02
    jr nz, jr_047_4bd7

    ld a, [de]
    and $40
    jr nz, jr_047_4beb

    ld a, [de]
    and $80
    jr nz, jr_047_4bf0

    ret


jr_047_4b81:
    ld a, [hl]
    and a
    jr nz, jr_047_4bd4

    ld a, $04
    call $2fcb
    ld hl, $a007
    ld a, [$cfa9]
    dec a
    sla a
    sla a
    ld c, a
    sla a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    ld de, $cd36
    ld c, $0c

jr_047_4ba2:
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_047_4ba2

    call $2fe1
    call $2009
    ld de, $4fc6
    call Call_047_4fce
    ld hl, $4c7e
    ld a, [$cfa9]

jr_047_4bba:
    dec a
    jr z, jr_047_4bc1

    inc hl
    inc hl
    jr jr_047_4bba

jr_047_4bc1:
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld hl, $c5b9
    call $1078
    ld hl, $cf63
    inc [hl]
    inc hl
    ld a, $10
    ld [hl], a
    ret


jr_047_4bd4:
    call $2009

jr_047_4bd7:
    ld de, $4fba
    call Call_047_4fce
    call Call_047_438a
    ld hl, $cd24
    set 4, [hl]
    ld a, $04
    ld [$cf63], a
    ret


jr_047_4beb:
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret


jr_047_4bf0:
    ld a, [hl]
    and a
    ret nz

    inc [hl]
    ret


    call $3c55
    ld hl, $cf64
    dec [hl]
    ret nz

    dec hl
    set 7, [hl]
    ret


    add hl, bc
    ld c, h
    inc hl
    ld c, h
    ld b, d
    ld c, h
    ld h, b
    ld c, h
    inc l
    cp d
    cp h
    ld [c], a
    or e
    or [hl]
    or d
    ld a, a
    jp z, $ba4e

    ret


    ld a, a
    or c
    or d
    cp e
    jp nz, Jump_047_7f33

    or d
    or d
    inc sp
    cp l
    or [hl]
    and $50
    ret nz

    or d
    cp [hl]
    sbc $7f
    ld c, d
    jp z, $cf2c

    reti


    call nz, Call_047_7fb7
    jp z, $ba4e

    ret


    ld a, a
    or c
    or d
    cp e
    jp nz, Jump_047_7f33

    or d
    or d
    inc sp
    cp l
    or [hl]
    and $50
    ret nz

    or d
    cp [hl]
    sbc $7f
    dec e
    or [hl]
    rst $18
    ret nz

    call nz, Call_047_7fb7
    jp z, $ba4e

    ret


    ld a, a
    or c
    or d
    cp e
    jp nz, Jump_047_7f33

    or d
    or d
    inc sp
    cp l
    or [hl]
    and $50
    ret nz

    or d
    cp [hl]
    sbc $7f
    dec e
    rst $08
    cp c
    ret nz

    call nz, Call_047_7fb7
    jp z, $ba4e

    ret


    ld a, a
    or c
    or d
    cp e
    jp nz, Jump_047_7f33

    or d
    or d
    inc sp
    cp l
    or [hl]
    and $50
    add [hl]
    ld c, h
    sbc l
    ld c, h
    cp c
    ld c, h
    call nc, $2c4c
    cp d
    cp h
    ld [c], a
    or e
    or [hl]
    or d
    ld a, a
    ret


    ld c, [hl]
    or c
    or d
    cp e
    jp nz, $c41f

    or e
    db $db
    cp b
    cp h
    ret nz

    rst $20
    ld d, b
    ret nz

    or d
    cp [hl]
    sbc $7f
    ld c, d
    jp z, $cf2c

    reti


    call nz, Call_047_7fb7
    ret


    ld c, [hl]
    or c
    or d
    cp e
    jp nz, $c41f

    or e
    db $db
    cp b
    cp h
    ret nz

    rst $20
    ld d, b
    ret nz

    or d
    cp [hl]
    sbc $7f
    dec e
    or [hl]
    rst $18
    ret nz

    call nz, Call_047_7fb7
    ret


    ld c, [hl]
    or c
    or d
    cp e
    jp nz, $c41f

    or e
    db $db
    cp b
    cp h
    ret nz

    rst $20
    ld d, b
    ret nz

    or d
    cp [hl]
    sbc $7f

jr_047_4cd9:
    dec e
    rst $08
    cp c
    ret nz

    call nz, Call_047_7fb7
    ret


    ld c, [hl]
    or c
    or d
    cp e
    jp nz, $c41f

    or e
    db $db
    cp b
    cp h
    ret nz

    rst $20
    ld d, b
    ld de, $4fc6
    call Call_047_4fce
    ld hl, $c5b9
    ld de, $4d10
    call $1078
    call Call_047_4a19
    call Call_047_4fb5
    ld de, $ffa3
    ld a, [de]
    and a
    ret z

    ld a, $04
    ld [$cf63], a
    ret


    push bc
    add $b6
    ld a, a
    cp d
    call nz, $1f3a
    or d
    jp c, $b8c3

    jr nc, jr_047_4cd9

    or d
    ld d, b
    call Call_047_4277
    ld de, $4fc6
    call Call_047_4fce
    ld hl, $c5b9
    ld a, [$cd2b]
    ld [$cd2c], a
    and a
    jr nz, jr_047_4d3a

    ld de, $4dc7
    jr jr_047_4d3d

jr_047_4d3a:
    ld de, $4dd9

jr_047_4d3d:
    call $1078
    ld hl, $c544
    ld de, $4df5
    call $1078
    call Call_047_4daa
    ld hl, $cd24
    res 5, [hl]
    call Call_047_4fb5
    ld hl, $cd2c
    ld de, $ffa3
    ld a, [de]
    and $01
    jr nz, jr_047_4d6f

    ld a, [de]
    and $02
    jr nz, jr_047_4d73

    ld a, [de]
    and $40
    jr nz, jr_047_4d8b

    ld a, [de]
    and $80
    jr nz, jr_047_4d94

    ret


jr_047_4d6f:
    ld a, [hl]
    ld [$cd2b], a

jr_047_4d73:
    ld a, [$cd2b]
    and a
    jr nz, jr_047_4d7d

    ld a, $06
    jr jr_047_4d7f

jr_047_4d7d:
    ld a, $15

jr_047_4d7f:
    ld [$cf63], a
    ld hl, $cd24
    set 5, [hl]
    call $2009
    ret


jr_047_4d8b:
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ld de, $4dc7
    jr jr_047_4d9b

jr_047_4d94:
    ld a, [hl]
    and a
    ret nz

    inc [hl]
    ld de, $4dd9

jr_047_4d9b:
    push de
    ld de, $4fc6
    call Call_047_4fce
    pop de
    ld hl, $c5b9
    call $1078
    ret


Call_047_4daa:
    ld a, $02
    ld hl, $ce51
    ld bc, $0078
    call $3041
    ld a, $07
    ld hl, $cec9
    ld bc, $0050
    call $3041
    ld a, $41
    ld hl, $4061
    rst $08
    ret


    cp d
    call nz, $1f3a
    cp h
    pop hl
    reti


    or d
    dec a
    jp nz, $4ec6

    or h
    rst $10
    dec a
    rst $08
    cp l
    ld d, b
    cp d
    call nz, $1f3a
    add b
    add c
    add d
    add e
    add h
    ld a, a
    ret


    ld c, [hl]
    inc l
    pop hl
    sbc $3a
    sbc $33
    ld a, a
    set 4, d
    or e
    inc l
    ld a, a
    cp h
    rst $08
    cp l
    ld d, b
    cp h
    pop hl
    reti


    or d
    dec a
    jp nz, $a17f

    db $e3
    inc de
    ld c, [hl]
    add b
    add c
    add d
    add e
    add h
    ld a, a
    ld a, a
    and c
    db $e3
    inc de
    ld d, b
    call Call_047_4277
    ld hl, $c52d
    ld de, $4f79
    call $1078
    ld hl, $c5f5
    ld de, $462a
    call $1078
    call Call_047_4618
    ld hl, $cd24
    res 2, [hl]
    call Call_047_4fb5
    ld a, [$cd22]
    sla a
    sla a
    ld c, a
    ld b, $00
    ld hl, $4eb9
    add hl, bc
    ld de, $ffa3
    ld a, [de]
    and $08
    jr nz, jr_047_4e78

    ld a, [de]
    and $04
    jr nz, jr_047_4e86

    ld a, [de]
    and $01
    jr nz, jr_047_4e68

    ld a, [de]
    and $02
    jr nz, jr_047_4e82

Jump_047_4e50:
    ld de, $ffa9
    ld a, [de]
    and $40
    jr nz, jr_047_4eb1

    ld a, [de]
    and $80
    jr nz, jr_047_4eaf

    ld a, [de]
    and $20
    jr nz, jr_047_4eae

    ld a, [de]
    and $10
    jr nz, jr_047_4eb0

    ret


jr_047_4e68:
    ld a, [$cd22]
    cp $2d
    jr c, jr_047_4e92

    sub $2d
    jr z, jr_047_4ea4

    dec a
    jr z, jr_047_4e96

    jr jr_047_4e82

jr_047_4e78:
    ld hl, $cd24
    set 0, [hl]
    ld a, $08
    ld [$cd20], a

jr_047_4e82:
    ld a, $04
    jr jr_047_4e98

jr_047_4e86:
    ld a, [$cd2b]
    xor $01
    ld [$cd2b], a
    ld a, $06
    jr jr_047_4e98

jr_047_4e92:
    ld a, $08
    jr jr_047_4e98

jr_047_4e96:
    ld a, $13

jr_047_4e98:
    ld [$cf63], a
    ld hl, $cd24
    set 2, [hl]
    call $2009
    ret


jr_047_4ea4:
    ld a, [$cd20]
    call Call_047_4a6a
    call $2009
    ret


jr_047_4eae:
    inc hl

jr_047_4eaf:
    inc hl

jr_047_4eb0:
    inc hl

jr_047_4eb1:
    ld a, [hl]

Jump_047_4eb2:
    cp $ff
    ret z

    ld [$cd22], a
    ret


    rst $38
    ld bc, $ff05
    rst $38
    ld [bc], a
    ld b, $00
    rst $38
    inc bc
    rlca
    ld bc, $04ff
    ld [$ff02], sp
    inc d
    add hl, bc
    inc bc
    nop
    ld b, $0a
    rst $38
    ld bc, $0b07
    dec b
    ld [bc], a
    ld [$060c], sp
    inc bc
    add hl, bc
    dec c
    rlca
    inc b
    add hl, de
    ld c, $08
    dec b
    dec bc
    rrca
    rst $38
    ld b, $0c
    db $10
    ld a, [bc]
    rlca
    dec c
    ld de, $080b
    ld c, $12
    inc c
    add hl, bc
    ld e, $13
    dec c
    ld a, [bc]
    db $10
    dec l
    rst $38
    dec bc
    ld de, $0f2d
    inc c
    ld [de], a
    dec l
    db $10
    dec c
    inc de
    dec l
    ld de, $260e
    dec l
    ld [de], a
    rst $38
    dec d
    add hl, de
    inc b
    rst $38
    ld d, $1a
    inc d
    rst $38
    rla
    dec de
    dec d
    rst $38
    jr @+$1e

    ld d, $ff
    inc hl
    dec e
    rla
    inc d
    ld a, [de]
    ld e, $09
    dec d
    dec de
    rra
    add hl, de
    ld d, $1c
    jr nz, jr_047_4f43

    rla
    dec e
    ld hl, $181b
    dec hl
    ld [hl+], a
    inc e
    add hl, de
    rra
    ld h, $0e
    ld a, [de]
    jr nz, @+$29

    ld e, $1b
    ld hl, $1f28
    inc e
    ld [hl+], a
    add hl, hl
    jr nz, @+$1f

    inc l

jr_047_4f43:
    ld a, [hl+]
    ld hl, $24ff
    dec hl
    jr @+$01

    dec h
    dec hl
    inc hl
    rst $38
    rst $38
    dec hl
    inc h
    ld e, $27
    ld l, $13
    rra
    jr z, @+$30

    ld h, $20
    add hl, hl
    ld l, $27
    ld hl, $2e2a
    jr z, jr_047_4f84

    rst $38
    ld l, $29
    inc hl
    rst $38
    inc l
    dec e
    dec hl
    rst $38
    cpl
    ld [hl+], a
    rrca
    ld l, $ff
    rst $38
    ld h, $2f
    rst $38
    dec l
    inc l
    rst $38
    rst $38
    ld l, $b1
    or d
    or e
    or h
    or l
    ld a, a
    push bc
    add $c7
    ret z

    ret


jr_047_4f84:
    ld a, a
    call nc, $d57f
    ld a, a
    sub $4e
    or [hl]
    or a
    cp b
    cp c
    cp d
    ld a, a
    jp z, $cccb

    call Call_047_7fce
    call c, $bb4e
    cp h
    cp l
    cp [hl]
    cp a
    ld a, a
    rst $08
    ret nc

    pop de
    jp nc, Jump_047_7fd3

    cp a
    ret


    ret nz

    ld c, [hl]
    ret nz

    pop bc
    jp nz, $c4c3

    ld a, a
    rst $10
    ret c

    reti


    jp c, Jump_047_50db

Call_047_4fb5:
Jump_047_4fb5:
    ld hl, $cf63
    inc [hl]
    ret


    nop
    nop
    inc d
    ld b, $00
    ld c, $14
    inc b
    nop
    ld b, $14
    ld a, [bc]
    nop
    inc c
    inc d
    ld b, $0e
    rlca
    ld b, $05

Call_047_4fce:
    ld hl, $c4a0
    ld bc, $0014
    ld a, [de]
    inc de
    push af
    ld a, [de]
    inc de
    and a

jr_047_4fda:
    jr z, jr_047_4fe0

    add hl, bc
    dec a
    jr jr_047_4fda

jr_047_4fe0:
    pop af
    ld c, a
    ld b, $00
    add hl, bc
    push hl
    ld a, $79
    ld [hl+], a
    ld a, [de]
    inc de
    dec a
    dec a
    jr z, jr_047_4ff6

    ld c, a
    ld a, $7a

jr_047_4ff2:
    ld [hl+], a
    dec c
    jr nz, jr_047_4ff2

jr_047_4ff6:
    ld a, $7b
    ld [hl], a
    pop hl
    ld bc, $0014
    add hl, bc
    ld a, [de]
    dec de
    dec a
    dec a
    jr z, jr_047_5022

    ld b, a

jr_047_5005:
    push hl
    ld a, $7c
    ld [hl+], a
    ld a, [de]
    dec a
    dec a
    jr z, jr_047_5015

    ld c, a
    ld a, $7f

jr_047_5011:
    ld [hl+], a
    dec c
    jr nz, jr_047_5011

jr_047_5015:
    ld a, $7c
    ld [hl], a
    pop hl
    push bc
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_047_5005

jr_047_5022:
    ld a, $7d
    ld [hl+], a
    ld a, [de]
    dec a

Call_047_5027:
Jump_047_5027:
    dec a
    jr z, jr_047_5031

    ld c, a

Call_047_502b:
    ld a, $7a

jr_047_502d:
    ld [hl+], a
    dec c
    jr nz, jr_047_502d

jr_047_5031:
    ld a, $7e

Jump_047_5033:
    ld [hl], a
    ret


Call_047_5035:
    ld hl, $c4a0
    ld bc, $0014
    ld a, [de]
    inc de
    push af
    ld a, [de]
    inc de
    and a

jr_047_5041:
    jr z, jr_047_5047

    add hl, bc
    dec a
    jr jr_047_5041

jr_047_5047:
    pop af
    ld c, a
    ld b, $00
    add hl, bc
    push hl
    ld a, $79
    ld [hl], a

Call_047_5050:
Jump_047_5050:
    pop hl
    push hl
    ld a, [de]
    dec a
    inc de
    ld c, a
    add hl, bc
    ld a, $7b
    ld [hl], a
    call Call_047_50ac
    ld a, $7e
    ld [hl], a
    pop hl
    push hl
    call Call_047_50ac
    ld a, $7d
    ld [hl], a
    pop hl
    push hl
    inc hl
    push hl
    call Call_047_50ac
    pop bc
    dec de
    ld a, [de]
    cp $02
    jr z, jr_047_5082

    dec a
    dec a

jr_047_5078:
    push af
    ld a, $7a
    ld [hl+], a
    ld [bc], a
    inc bc
    pop af
    dec a
    jr nz, jr_047_5078

jr_047_5082:
    pop hl
    ld bc, $0014
    add hl, bc
    push hl
    ld a, [de]
    dec a
    ld c, a
    ld b, $00
    add hl, bc
    pop bc
    inc de
    ld a, [de]
    cp $02
    ret z

    push bc
    dec a
    dec a
    ld c, a
    ld b, a
    ld de, $0014

jr_047_509c:
    ld a, $7c
    ld [hl], a
    add hl, de
    dec c
    jr nz, jr_047_509c

    pop hl

jr_047_50a4:
    ld a, $7c
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_047_50a4

    ret


Call_047_50ac:
    ld a, [de]
    dec a
    ld bc, $0014

Call_047_50b1:
jr_047_50b1:
    add hl, bc

Call_047_50b2:
Jump_047_50b2:
    dec a

Call_047_50b3:
    jr nz, jr_047_50b1

    ret


Jump_047_50b6:
    ld hl, $000c

Call_047_50b9:
Jump_047_50b9:
    add hl, bc
    ld a, [hl]
    ld e, a
    ld d, $00

Call_047_50be:
    ld hl, $50c7
    add hl, de
    add hl, de

Jump_047_50c3:
    ld a, [hl+]
    ld h, [hl]

Call_047_50c5:
Jump_047_50c5:
    ld l, a
    jp hl


    db $dd
    ld d, b
    jp hl


Jump_047_50ca:
    ld d, b
    push af

Call_047_50cc:
    ld d, b

Call_047_50cd:
Jump_047_50cd:
    rrca
    ld d, c
    inc [hl]

Call_047_50d0:
    ld d, c
    ld b, l

Jump_047_50d2:
    ld d, c

Jump_047_50d3:
    ld d, [hl]

Jump_047_50d4:
    ld d, c

Call_047_50d5:
    ld [hl], l
    ld d, c
    rst $10

Call_047_50d8:
Jump_047_50d8:
    ld d, c

Call_047_50d9:
Jump_047_50d9:
    pop de
    ld d, c

Call_047_50db:
Jump_047_50db:
    db $fc
    ld d, c

Jump_047_50dd:
    ld a, [$cd20]
    sla a
    ld hl, $5208
    ld e, $01
    jr jr_047_511e

    ld a, [$cd21]
    sla a
    ld hl, $521a
    ld e, $02
    jr jr_047_511e

    ld hl, $52be
    ld a, [$cd22]
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]
    call $3b3c
    ld a, [$cd22]
    sla a
    ld hl, $523e
    ld e, $04
    jr jr_047_511e

    ld a, $27
    call $3b3c
    ld a, [$cd25]
    sla a
    ld hl, $529e
    ld e, $08

jr_047_511e:
    push de
    ld e, a
    ld d, $00
    add hl, de
    push hl
    pop de
    ld hl, $0004
    add hl, bc
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    pop de
    ld a, e
    call $52ee
    ret


    ld a, $27
    call $3b3c
    ld a, [$cd2a]
    sla a
    ld hl, $52b6
    ld e, $10
    jr jr_047_511e

    ld a, $27
    call $3b3c
    ld a, [$cd2c]
    sla a
    ld hl, $52ba
    ld e, $20
    jr jr_047_511e

    ld a, $2a
    call $3b3c
    ld a, [$cd4a]
    sla a
    sla a
    sla a
    add $18
    ld hl, $0004
    add hl, bc
    ld [hl+], a
    ld a, $30
    ld [hl], a
    ld a, $01
    ld e, a
    call $52ee
    ret


    ld a, [$cd4d]
    cp $04
    jr z, jr_047_5180

    ld a, $28
    jr jr_047_5182

jr_047_5180:
    ld a, $26

jr_047_5182:
    call $3b3c
    ld a, [$cd4d]
    cp $04
    jr z, jr_047_51b1

    ld a, [$cd4c]
    sla a
    sla a
    sla a
    add $20
    ld hl, $0004
    add hl, bc
    ld [hl+], a
    ld a, [$cd4d]
    sla a
    sla a
    sla a
    sla a
    add $48
    ld [hl], a
    ld a, $02
    ld e, a
    call $52ee
    ret


jr_047_51b1:
    ld a, [$cd4c]
    sla a
    sla a
    sla a
    ld e, a
    sla a
    sla a
    add e
    add $18
    ld hl, $0004
    add hl, bc
    ld [hl+], a
    ld a, $8a
    ld [hl], a
    ld a, $02
    ld e, a
    call $52ee
    ret


    ld d, $98
    ld a, $2c
    jr jr_047_51db

    ld d, $10
    ld a, $2b

jr_047_51db:
    push de
    call $3b3c
    ld a, [$cd4a]
    sla a
    sla a
    sla a
    ld e, a
    sla a
    add e
    add $40
    ld hl, $0005
    add hl, bc
    ld [hl-], a
    pop af
    ld [hl], a
    ld a, $04
    ld e, a
    call $52ee
    ret


    ld a, $26
    call $3b3c
    ld a, $08
    ld e, a
    call $52ee
    ret


    dec c
    ld a, [de]
    dec a
    ld a, [de]
    ld l, l
    ld a, [de]
    dec c
    ld a, [hl+]
    dec a
    ld a, [hl+]
    ld l, l
    ld a, [hl+]
    dec c
    adc d
    dec a
    adc d
    ld l, l
    adc d
    dec c
    ld b, d
    dec a
    ld b, d
    ld l, l
    ld b, d
    dec c
    ld d, d
    dec a
    ld d, d
    ld l, l
    ld d, d
    dec c
    ld h, d
    dec a
    ld h, d
    ld l, l
    ld h, d
    dec c
    ld [hl], d
    dec a
    ld [hl], d
    ld l, l
    ld [hl], d
    dec c
    add d
    dec a
    add d
    ld l, l
    add d
    dec c
    sub d
    dec a
    sub d
    ld l, l
    sub d
    db $10
    ld c, b
    jr jr_047_528a

    jr nz, jr_047_528c

    jr z, jr_047_528e

    jr nc, jr_047_5290

    db $10
    ld e, b
    jr jr_047_52a4

    jr nz, jr_047_52a6

    jr z, jr_047_52a8

    jr nc, jr_047_52aa

    db $10
    ld l, b
    jr jr_047_52be

    jr nz, jr_047_52c0

    jr z, jr_047_52c2

    jr nc, jr_047_52c4

    db $10
    ld a, b
    jr jr_047_52d8

    jr nz, jr_047_52da

    jr z, jr_047_52dc

    jr nc, jr_047_52de

    ld b, b
    ld c, b
    ld c, b
    ld c, b
    ld d, b
    ld c, b
    ld e, b
    ld c, b
    ld h, b
    ld c, b
    ld b, b
    ld e, b
    ld c, b
    ld e, b
    ld d, b
    ld e, b
    ld e, b
    ld e, b
    ld h, b
    ld e, b
    ld b, b
    ld l, b
    ld c, b
    ld l, b
    ld d, b
    ld l, b
    ld e, b
    ld l, b
    ld h, b
    ld l, b
    ld [hl], b
    ld c, b
    add b
    ld c, b
    sub b
    ld c, b

jr_047_528a:
    ld b, b
    ld a, b

jr_047_528c:
    ld c, b
    ld a, b

jr_047_528e:
    ld d, b
    ld a, b

jr_047_5290:
    ld e, b
    ld a, b
    ld h, b
    ld a, b
    ld [hl], b
    ld e, b
    ld [hl], b
    ld l, b
    dec c
    sub d
    dec a
    sub d
    ld l, l
    sub d
    db $10
    ld d, b
    ld b, b
    ld d, b
    ld [hl], b
    ld d, b

jr_047_52a4:
    db $10
    ld h, b

jr_047_52a6:
    ld b, b
    ld h, b

jr_047_52a8:
    ld [hl], b
    ld h, b

jr_047_52aa:
    db $10
    ld [hl], b
    ld b, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    db $10
    add b
    ld b, b
    add b
    ld [hl], b
    add b
    add b
    ld d, b
    add b
    ld h, b
    jr nz, jr_047_530c

    jr nz, @+$62

jr_047_52be:
    jr z, jr_047_52e8

jr_047_52c0:
    jr z, jr_047_52ea

jr_047_52c2:
    jr z, @+$2a

jr_047_52c4:
    jr z, @+$2a

    jr z, jr_047_52f0

    jr z, @+$2a

    jr z, jr_047_52f4

    jr z, @+$2a

    jr z, jr_047_52f8

    jr z, @+$2a

    jr z, @+$2a

    jr z, jr_047_52fe

    jr z, jr_047_5300

jr_047_52d8:
    jr z, @+$2a

jr_047_52da:
    jr z, jr_047_5304

jr_047_52dc:
    jr z, @+$2a

jr_047_52de:
    jr z, jr_047_5308

    jr z, jr_047_530a

    jr z, jr_047_530c

    jr z, @+$2a

    jr z, @+$2a

jr_047_52e8:
    jr z, jr_047_5312

jr_047_52ea:
    add hl, hl
    ld h, $26
    ld h, $21
    inc h

jr_047_52f0:
    call $20a6
    ld [hl+], a

jr_047_52f4:
    ld a, e
    ld hl, $cd23

jr_047_52f8:
    and [hl]
    jr z, jr_047_530f

    ld hl, $000e

jr_047_52fe:
    add hl, bc
    ld a, [hl]

jr_047_5300:
    and a
    jr z, jr_047_5305

    dec [hl]

jr_047_5304:
    ret


jr_047_5305:
    ld a, $00
    ld [hl-], a

jr_047_5308:
    ld a, $01

jr_047_530a:
    xor [hl]
    ld [hl], a

jr_047_530c:
    and a
    jr nz, jr_047_5316

jr_047_530f:
    ld hl, $0007

jr_047_5312:
    add hl, bc
    xor a
    ld [hl], a
    ret


jr_047_5316:
    ld hl, $0005
    add hl, bc
    ld a, $b0
    sub [hl]
    ld hl, $0007
    add hl, bc
    ld [hl], a
    ret


Call_047_5323:
    ldh a, [rSVBK]
    push af
    ld a, $05
    ldh [rSVBK], a
    ld hl, $533a
    ld de, $d000
    ld bc, $0080
    call $3026
    pop af
    ldh [rSVBK], a
    ret


    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
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

Call_047_53ba:
    ldh a, [rSVBK]
    push af
    ld hl, $c648
    ld a, $00
    ld [$cd2d], a
    ld [hl+], a
    ld a, $d8
    ld [$cd2e], a
    ld [hl], a
    ld a, $fe
    ld [$cd2f], a
    ld a, $54
    ld [$cd30], a
    ld a, $a8
    ld [$cd31], a
    ld a, $c6
    ld [$cd32], a
    ld a, $4a
    ld [$cd33], a
    ld a, $c6
    ld [$cd34], a
    ld hl, $723c
    ld a, $2d

Jump_047_53ef:
    push af
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld hl, $d000
    add hl, de
    ld a, [$cd2d]
    ld e, a
    ld a, [$cd2e]
    ld d, a
    push bc

jr_047_5406:
    ld a, $03
    ldh [rSVBK], a
    ld a, [hl+]
    push af
    ld a, $05
    ldh [rSVBK], a
    pop af
    ld [de], a
    inc de
    ld a, $03
    ldh [rSVBK], a
    ld a, [hl+]
    push af
    ld a, $05
    ldh [rSVBK], a
    pop af
    ld [de], a
    inc de
    dec bc
    ld a, c
    or b
    jr nz, jr_047_5406

    ld a, [$cd2f]
    ld l, a
    ld a, [$cd30]
    ld h, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, l
    ld [$cd2f], a
    ld a, h
    ld [$cd30], a
    push bc
    pop hl
    ld c, $00

jr_047_543d:
    ld a, [hl]
    cp $ff
    jr z, jr_047_5453

    call Call_047_5493
    jr nz, jr_047_544a

    inc hl
    jr jr_047_543d

jr_047_544a:
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de

Jump_047_5450:
    inc c
    jr jr_047_543d

jr_047_5453:
    pop hl
    ld b, $00
    add hl, bc
    push hl
    pop bc
    ld a, [$cd31]
    ld l, a
    ld a, [$cd32]
    ld h, a
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl+], a
    ld a, l
    ld [$cd31], a
    ld a, h
    ld [$cd32], a
    ld a, [$cd33]
    ld l, a
    ld a, [$cd34]
    ld h, a
    ld a, e
    ld [$cd2d], a
    ld [hl+], a
    ld a, d
    ld [$cd2e], a
    ld [hl+], a
    ld a, l
    ld [$cd33], a
    ld a, h
    ld [$cd34], a
    pop hl
    pop af
    dec a
    jr z, jr_047_548f

    jp Jump_047_53ef


jr_047_548f:
    pop af
    ldh [rSVBK], a
    ret


Call_047_5493:
    push hl
    push bc
    push de
    dec a
    ld hl, $ff70
    ld e, $01
    ld [hl], e
    call $339b
    ld hl, $ff70
    ld e, $05
    ld [hl], e
    pop de
    pop bc
    pop hl
    ret


Call_047_54aa:
    ldh a, [rSVBK]
    push af
    ld a, $03
    ldh [rSVBK], a
    ld hl, $5aac
    ld bc, $7220
    xor a
    ld [$cd2d], a
    inc a
    ld [$cd2e], a
    ld a, $0e

jr_047_54c1:
    push af
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld hl, $0005
    add hl, de
    ld a, [bc]
    inc bc
    inc bc
    push bc

jr_047_54cf:
    push af
    push hl
    ld a, [hl+]
    ld e, a
    ld a, [hl]
    ld d, a
    ld hl, $d000
    add hl, de
    ld a, [$cd2d]
    ld [hl+], a
    inc a
    ld [$cd2d], a
    ld a, [$cd2e]
    ld [hl], a
    pop hl
    ld de, $0008
    add hl, de
    pop af
    dec a
    jr nz, jr_047_54cf

    ld hl, $cd2d
    xor a
    ld [hl+], a
    inc [hl]
    pop bc
    pop hl
    pop af
    dec a
    jr nz, jr_047_54c1

    pop af
    ldh [rSVBK], a
    ret


    ld e, b
    ld d, l
    ld e, a
    ld d, l
    ld h, l
    ld d, l
    ld l, h
    ld d, l
    ld [hl], h
    ld d, l
    ld a, a
    ld d, l
    adc [hl]
    ld d, l
    sbc b
    ld d, l
    sbc a
    ld d, l
    and e
    ld d, l
    or d
    ld d, l
    cp e
    ld d, l
    ret nz

    ld d, l
    ret z

    ld d, l
    bit 2, l
    call $d155
    ld d, l
    call nc, $d655
    ld d, l
    call c, $e755
    ld d, l
    ld [$f755], a
    ld d, l
    ld sp, hl
    ld d, l
    db $fc
    ld d, l
    cp $55
    ld c, $56
    dec e
    ld d, [hl]
    ld l, $56
    ld [hl], $56
    ld a, $56
    ld c, c
    ld d, [hl]
    ld c, [hl]
    ld d, [hl]
    ld d, c
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld e, d
    ld d, [hl]
    ld h, b
    ld d, [hl]
    ld h, d
    ld d, [hl]
    ld h, l
    ld d, [hl]
    ld l, l
    ld d, [hl]
    ld [hl], c
    ld d, [hl]
    ld [hl], h
    ld d, [hl]
    ld a, b
    ld d, [hl]
    ld a, d
    ld d, [hl]
    ld a, l
    ld d, [hl]
    rla
    jr jr_047_55d2

    xor b
    sbc a
    ret


    rst $38
    add l
    ld c, d
    and a
    db $dd
    ld e, a
    rst $38
    dec sp
    cp c
    ld b, [hl]
    ld b, a
    jp nz, $ffdc

    db $e3
    cp [hl]
    call nz, $ef6b
    ld a, l
    db $f4
    rst $38
    and b
    and d
    ldh [$39], a
    and c
    ld [$1615], a
    adc e
    adc d
    rst $38
    ld a, [hl-]
    ld b, h
    sub l
    ld a, a
    adc a
    adc h
    adc l
    db $ed
    ld [$5309], sp
    ld l, b
    ld l, c
    ld [hl], e
    rst $38
    ret nz

    ld a, [bc]
    add d
    ld c, [hl]
    ld h, $cb
    or [hl]
    and $63
    rst $38
    inc l
    call z, Call_047_62cf
    jp nc, $ffa9

    ccf
    ld e, [hl]
    add b
    rst $38
    add c
    ld d, c
    ld e, h
    ld e, l
    ld b, e
    ld c, $36
    rst $20
    inc de
    scf
    ld a, [hl+]
    ld c, h
    ld c, e
    jr nc, @+$01

    ld l, a
    rst $30
    sbc $6a
    sub c
    add a
    dec de
    inc e
    rst $38
    ld [hl], l
    ld e, d
    add [hl]
    ld d, a
    rst $38
    push af
    ld a, c
    ld a, e
    add hl, hl
    rrca
    ld h, c
    ld h, b
    rst $38
    rlca
    ei
    rst $38
    jp z, $33ff

    ld [hl], h
    ld h, [hl]
    rst $38
    sbc b

jr_047_55d2:
    xor d
    rst $38
    push de
    rst $38
    ld [hl-], a
    rst $18
    pop hl
    db $e4
    or l
    rst $38
    ld d, h
    ld d, l
    db $eb
    ld l, l
    ld c, c
    or b
    xor a
    db $76
    dec bc
    add sp, -$01
    dec hl
    ld h, a
    rst $38
    ld [hl+], a
    rra
    jr nz, jr_047_560b

    ld e, $21
    inc [hl]
    rst $10
    dec a
    cp d
    ld a, $3c
    rst $38
    jp $b1ff


    or d
    rst $38
    adc $ff
    ld d, [hl]
    ret nc

    sbc l
    sub h
    inc c
    call nc, $f2bb
    ld l, $2f
    db $d3
    ld a, d
    db $ec

jr_047_560b:
    ld e, e
    ld hl, sp-$01
    xor l
    dec c
    add hl, de
    inc h
    ld [de], a
    ld de, $23ac
    inc b
    ld a, b
    sbc e
    cp a
    ret c

    ld h, h
    rst $38
    sub d
    adc b
    ld b, c
    ld a, [hl]
    call $0228
    ld bc, $8e03
    ldh a, [$ae]
    push bc

jr_047_562a:
    sub b
    daa
    pop de
    rst $38
    sbc c
    ld e, b
    ld e, c
    sub $e5
    dec [hl]
    ld l, h
    rst $38
    ld a, [$10a3]
    ld c, l
    cp h
    adc c
    jp hl


    rst $38
    db $db
    jp c, $459c

    ld l, [hl]
    or a
    cp b
    ld h, l
    jr c, jr_047_562a

    rst $38
    sub e
    sub a
    sub [hl]
    pop af
    rst $38
    ret z

    xor $ff
    sbc d
    add h
    ld c, b
    or e
    rst $38
    or h
    ld sp, $ff72
    rst $00
    ld d, b
    ld c, a
    add $c1
    rst $38
    ld b, b
    rst $38
    or $a4
    rst $38
    di
    ld a, [de]
    ld [hl], c
    inc d
    add e
    dec l
    xor e
    rst $38
    dec b
    ld b, $d9
    rst $38
    ld a, h
    ld sp, hl
    rst $38
    ld d, d
    and [hl]
    and l
    rst $38
    dec h
    rst $38
    cp l
    sbc [hl]
    ld b, d
    rst $38
    rst $38
    rst $38
    jp hl


    jp hl


    set 1, e
    adc c
    adc c
    adc l
    adc l
    call $e9cd
    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    inc l
    inc l
    ld l, l
    ld l, l
    inc l
    inc l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    inc h
    inc h
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
    sub c
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    sbc e
    sbc e
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
    sub c
    cp e
    cp e
    sbc e
    sbc e
    db $db
    db $db
    db $db
    db $db
    sbc e
    sbc e
    rst $38
    rst $38
    rst $38
    rst $38
    or c
    or c
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    inc de
    inc de
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rla
    or e
    or e
    or c
    or c
    or c
    or c
    or e
    or e
    or a
    or a
    rst $38
    rst $38
    db $e3
    ld l, a
    inc bc
    nop
    rlca
    inc bc
    inc c
    rlca

jr_047_56e6:
    inc c
    rlca

jr_047_56e8:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_047_7e81


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
    jr nc, jr_047_56e6

    jr nc, jr_047_56e8

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

jr_047_5716:
    inc c
    rlca

jr_047_5718:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_047_7e81


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
    jr nc, jr_047_5716

    jr nc, jr_047_5718

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

jr_047_5746:
    inc c
    rlca

jr_047_5748:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_047_7e81


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
    jr nc, jr_047_5746

    jr nc, jr_047_5748

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

jr_047_5776:
    inc c
    rlca

jr_047_5778:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_047_7e81


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
    jr nc, jr_047_5776

    jr nc, jr_047_5778

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

jr_047_57a6:
    inc c
    rlca

jr_047_57a8:
    ld b, $03
    rlca
    inc bc
    dec c
    rlca
    dec c
    rlca
    add c
    nop
    jp Jump_047_7e81


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
    jr nc, jr_047_57a6

    jr nc, jr_047_57a8

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

    jr c, jr_047_581d

    jr c, jr_047_5857

    nop
    nop
    nop
    nop
    nop
    inc c
    rlca

jr_047_57e2:
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
    jr nc, jr_047_57e2

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

jr_047_5812:
    dec c
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rra
    ld bc, $0f1f
    rra

jr_047_581d:
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
    jr nc, jr_047_5812

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

jr_047_5842:
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

jr_047_5857:
    ld a, [hl]
    rst $38
    nop
    rst $38
    rst $38
    sbc h
    rst $30
    inc e
    rst $30
    jr nc, jr_047_5842

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

jr_047_58a2:
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
    jr nc, jr_047_58a2

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

jr_047_5943:
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
    jr c, jr_047_5943

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
    jr jr_047_59f5

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

jr_047_59f5:
    nop
    nop
    nop
    rra
    rra
    ccf
    jr nz, jr_047_5a5d

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
    ld b, e
    adc b
    and c
    xor e
    ld d, b
    ld d, b
    adc a
    add c
    ld b, d
    ld d, b
    ld d, b

jr_047_5a5d:
    ld d, b
    or c
    or d
    cp e
    jp nz, Jump_047_5050

    set 0, h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    add hl, de
    sub e
    and [hl]
    ld d, b
    ld d, b
    ld d, b
    cp d
    or h
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    or [hl]
    or d
    call c, Call_047_5050
    ld d, b
    or a
    db $d3
    pop bc
    ld d, b
    ld d, b
    ld d, b
    inc l
    ld [c], a
    or e
    ret nz

    or d
    ld d, b
    cp [hl]
    or d
    or [hl]
    jp nz, Jump_047_5050

    cp h
    pop hl
    ret nc

    ld d, b
    ld d, b
    ld d, b
    cp d
    or e
    inc [hl]
    or e
    ld d, b
    ld d, b
    inc l
    or [hl]
    sbc $50
    ld d, b
    ld d, b
    pop de
    cp l
    dec sp
    ld d, b
    ld d, b
    ld d, b
    or c
    jp c, $daba

    ld d, b
    ld d, b
    ret z

    ld e, d
    ld e, b
    ld e, e
    ld a, b
    ld e, h
    and b
    ld e, [hl]
    ret z

    ld h, b
    ret c

    ld h, d
    add sp, $64
    db $10
    ld h, a
    jr nz, jr_047_5b27

    ld e, b
    ld l, d
    sub b
    ld l, e
    cp b
    ld l, l
    ldh a, [$6e]
    nop
    ld [hl], c
    or c
    cp b
    ld d, b
    ld d, b
    ld d, b
    ld h, $00
    nop
    or d
    call c, Call_047_5050
    ld d, b
    xor d
    nop
    nop
    add e
    adc h
    ld b, b
    db $e3
    ld d, b
    jp c, RST_00

    or [hl]
    cp b
    call nz, Call_047_50b3
    ld c, [hl]
    ld bc, $b800
    cp e
    ld d, b
    ld d, b
    ld d, b
    cp d
    ld bc, $0900
    db $e3
    adc h
    sub e
    ld d, b
    db $e4
    ld bc, $ba00
    or l
    ret c

    ld d, b
    ld d, b
    and $01
    nop
    inc l
    jp nc, $50de

    ld d, b
    ld l, b
    ld [bc], a
    nop
    adc a
    add c
    ld b, d
    ld d, b
    ld d, b
    add sp, $02
    nop
    inc sp
    sbc $b7
    ld d, b
    ld d, b
    adc [hl]
    inc bc
    nop
    inc [hl]
    cp b
    ld d, b
    ld d, b
    ld d, b
    xor [hl]
    inc bc
    nop
    inc de
    and l
    add hl, bc
    xor e
    ld d, b
    cp h
    inc bc

jr_047_5b27:
    nop
    sbc b
    db $e3
    sbc l
    and [hl]
    ld d, b
    ld [hl+], a
    inc b
    nop
    jp z, $c826

    ld d, b
    ld d, b
    ld [hl], $04
    nop
    res 7, d
    or e
    ld d, b
    ld d, b
    ld e, [hl]
    inc b
    nop
    adc $c9
    or l
    ld d, b
    ld d, b
    or d
    inc b
    nop
    ret nc

    dec l
    ld d, b
    ld d, b
    ld d, b
    db $f4
    inc b
    nop
    pop de
    cp h
    ld d, b
    ld d, b
    ld d, b
    ld [de], a
    dec b
    nop
    or c
    ret c

    ld h, $c4
    ld d, b
    ld e, b
    nop
    nop
    or c
    ret c

    ld h, $c4
    or e
    ld e, d
    nop
    nop
    or d
    cp b
    ld l, $e7
    ld d, b
    add b
    nop
    nop
    or d
    cp b
    sub $e7
    ld d, b
    add d
    nop
    nop
    or d
    cp b
    call c, $e7d6
    add h
    nop
    nop
    or d
    call nc, $50e3
    ld d, b
    and [hl]
    nop
    nop
    or l
    rst $18
    cp l
    ld d, b
    ld d, b
    ld a, [bc]
    ld bc, $b500
    jp z, $33c2

    cp l
    ld [hl+], a
    ld bc, $b500
    jp nc, $c433

    or e
    ld a, [hl+]
    ld bc, $2a00
    jp nc, $50de

    ld d, b
    ld hl, sp+$01
    nop
    ld a, [hl+]
    jp nc, $d6de

    ld d, b
    ld a, [$0001]
    cp d
    rst $10
    rst $18
    ld d, b
    ld d, b
    db $fc
    ld bc, $ba00
    sbc $c1
    jp z, $0ae7

    ld [bc], a
    nop
    cp d
    sbc $c6
    pop bc
    jp z, $0210

    nop
    cp e
    sub $b3
    push bc
    rst $10
    jr z, jr_047_5bd1

    nop
    adc d

jr_047_5bd1:
    xor e
    add [hl]
    xor [hl]
    db $e3
    ld l, $02
    nop
    cp e
    sbc $2c
    ld [c], a
    or e
    jr nc, jr_047_5be1

    nop
    cp h

jr_047_5be1:
    rst $18
    cp c
    or d
    ld d, b
    ld c, b
    ld [bc], a
    nop
    cp h
    jp nz, $b2da

    ld d, b
    ld c, h
    ld [bc], a
    nop
    inc l
    ldh [$e3], a
    ret z

    ld d, b
    ld l, h
    ld [bc], a
    nop
    cp l
    or d
    rst $08
    cp [hl]
    sbc $8c
    ld [bc], a
    nop
    cp a
    jp c, $e02c

    ld d, b
    jp z, $0002

    inc [hl]
    or e
    db $d3
    ld d, b
    ld d, b
    and [hl]
    inc bc
    nop
    push bc
    sbc $2c
    ldh [$50], a
    xor $03
    nop
    sbc c
    db $e3
    add c
    ld d, b
    ld d, b
    inc l
    inc b
    nop
    jp z, $cab2

    or d
    ld d, b
    ld [hl-], a
    inc b
    nop
    add hl, de
    add c
    add hl, de
    add c
    ld d, b
    inc [hl]
    inc b
    nop
    call $5081
    ld d, b
    ld d, b
    adc d
    inc b
    nop
    rst $08
    ret nz

    ret z

    ld d, b
    ld d, b
    sbc $04
    nop
    db $d3
    cp h
    db $d3
    cp h
    ld d, b
    ld [hl-], a
    dec b
    nop
    call nc, Call_047_50b1
    ld d, b
    ld d, b
    ld a, $05
    nop
    call nc, $cedf
    db $e3
    ld d, b
    ld c, [hl]
    dec b
    nop
    sub $b3
    ld d, b
    ld d, b
    ld d, b
    ld h, d
    dec b
    nop
    sub $b3
    cp d
    cp a
    ld d, b
    ld h, h
    dec b
    nop
    sub $db
    cp h
    cp b
    ld d, b
    add b
    dec b
    nop
    rst $10
    rst $18
    cp h
    ldh [$b2], a
    sub h
    dec b
    nop
    or c
    or d
    jp Jump_047_5050


    inc e
    nop
    nop
    or c
    ret nz

    cp h
    ld d, b
    ld d, b
    ld [hl], $00
    nop
    or c
    push bc
    ret nz

    ld d, b
    ld d, b
    ld b, b
    nop
    nop
    or c
    push bc
    ret nz

    ld h, $50
    ld b, d
    nop
    nop
    or c
    push bc
    ret nz

    add $50
    ld b, h
    nop
    nop
    or c
    push bc
    ret nz

    ret


    ld d, b
    ld b, [hl]
    nop
    nop
    or c
    push bc
    ret nz

    jp z, Jump_047_4850

    nop
    nop
    or c
    push bc
    ret nz

    db $dd
    ld d, b
    ld c, d
    nop
    nop
    or l
    or [hl]
    or c
    cp e
    sbc $e8
    nop
    nop
    or l
    inc l
    or d
    cp e
    sbc $fc
    nop
    nop
    or l
    inc l
    cp e
    sbc $50
    ld [bc], a
    ld bc, $b500
    call nz, $bbb3
    sbc $0e
    ld bc, $b500
    call nz, $c9ba
    cp d
    db $10
    ld bc, $b500
    call nz, Call_047_50c5
    ld d, b
    inc d
    ld bc, $b500
    add $b2
    cp e
    sbc $16
    ld bc, $b500
    ret z

    or h
    cp e
    sbc $18
    ld bc, $b500
    ld a, [hl-]
    or c
    cp e
    sbc $1c
    ld bc, $b500
    ld a, [hl-]
    cp e
    sbc $50
    jr nz, jr_047_5d08

    nop

jr_047_5d08:
    or l
    jp c, $cfbb

    ld d, b
    inc [hl]
    ld bc, $b500
    sbc $c5
    ret


    cp d
    ld a, [hl-]
    ld bc, $0500
    db $e3
    and [hl]
    ld d, b
    ld d, b
    ld b, b
    ld bc, $b600
    cpl
    cp b
    ld d, b
    ld d, b
    ld d, d
    ld bc, $b600
    ret


    inc l
    ld [c], a
    ld d, b
    ld [hl], d
    ld bc, $b600
    jp c, Jump_047_5050

    ld d, b
    ld a, h
    ld bc, $b700
    ret nc

    ld d, b
    ld d, b
    ld d, b
    sbc d
    ld bc, $b700
    ret nc

    ld h, $50
    ld d, b
    sbc h
    ld bc, $b700
    ret nc

    add $50
    ld d, b
    sbc [hl]
    ld bc, $b700
    ret nc

    ret


    ld d, b
    ld d, b
    and b
    ld bc, $b700
    ret nc

    jp z, Jump_047_5050

    and d
    ld bc, $b700
    ret nc

    db $dd
    ld d, b
    ld d, b
    and h
    ld bc, $0600
    xor l
    and [hl]
    ld d, b
    ld d, b
    xor [hl]
    ld bc, $b700
    ld [c], a
    or e
    jr nc, @-$4c

    or d
    ld bc, $ba00
    inc [hl]
    db $d3
    ld d, b
    ld d, b
    ldh a, [rSB]
    nop
    inc l
    inc a
    sbc $50
    ld d, b
    ld d, h
    ld [bc], a
    nop
    inc l
    inc a
    sbc $26

jr_047_5d8c:
    ld d, b
    ld d, [hl]
    ld [bc], a
    nop
    inc l
    inc a
    sbc $c6

jr_047_5d94:
    ld d, b
    ld e, b
    ld [bc], a
    nop
    inc l
    inc a
    sbc $c9

jr_047_5d9c:
    ld d, b
    ld e, d
    ld [bc], a
    nop
    inc l
    inc a
    sbc $ca

jr_047_5da4:
    ld d, b
    ld e, h
    ld [bc], a
    nop
    inc l
    inc a
    sbc $dd

jr_047_5dac:
    ld d, b
    ld e, [hl]
    ld [bc], a
    nop
    jr nc, jr_047_5d8c

    ld d, b
    ld d, b

jr_047_5db4:
    ld d, b
    jr jr_047_5dba

    nop
    jr nc, jr_047_5d94

jr_047_5dba:
    or [hl]
    ld d, b

jr_047_5dbc:
    ld d, b
    ld a, [de]
    inc bc
    nop
    jr nc, jr_047_5d9c

    ld h, $50
    ld d, b
    inc e
    inc bc
    nop
    jr nc, jr_047_5da4

    add $50
    ld d, b
    ld e, $03
    nop
    jr nc, jr_047_5dac

    ret


    ld d, b
    ld d, b
    jr nz, jr_047_5dda

    nop
    jr nc, jr_047_5db4

jr_047_5dda:
    db $d3
    ld d, b
    ld d, b
    ld [hl+], a
    inc bc
    nop
    jr nc, jr_047_5dbc

    db $dd
    ld d, b
    ld d, b
    inc h
    inc bc
    nop
    pop bc
    ldh [$de], a
    ld d, b
    ld d, b
    jr c, @+$05

    nop
    call nz, $30d3
    pop bc
    ld d, b
    cp b
    inc bc
    nop
    push bc
    or [hl]
    rst $08
    ld d, b
    ld d, b
    call nc, $0003
    set 0, h
    ld d, b
    ld d, b
    ld d, b
    ld h, d
    inc b
    nop
    inc e
    db $e3
    add c
    ld d, b
    ld d, b
    sbc b
    inc b
    nop
    inc e
    add a
    ld d, b
    ld d, b
    ld d, b
    and b
    inc b
    nop
    inc e
    add a
    ld h, $50
    ld d, b
    and d
    inc b
    nop
    inc e
    add a
    add $50
    ld d, b
    and h
    inc b
    nop
    inc e
    add a
    ret


    ld d, b
    ld d, b
    and [hl]
    inc b
    nop
    inc e
    add a
    jp z, Jump_047_5050

    xor b
    inc b
    nop
    inc e
    add a
    db $dd
    ld d, b
    ld d, b
    xor d
    inc b
    nop
    ret nc

    sbc $c5
    ld d, b
    ld d, b
    inc b
    dec b
    nop
    ret nc

    sbc $c5
    ld h, $50
    ld b, $05
    nop
    ret nc

    sbc $c5
    add $50
    ld [$0005], sp
    ret nc

    sbc $c5
    ret


    ld d, b
    ld a, [bc]
    dec b
    nop
    ret nc

    sbc $c5
    jp z, $0c50

    dec b
    nop
    and l
    add c
    add hl, de
    and [hl]
    ld d, b
    adc d
    dec b
    nop
    call c, $bcc0
    ld d, b
    ld d, b
    jp nz, $0005

    call c, $bcc0
    ld h, $50
    call nz, $0005
    call c, $bcc0
    add $50
    add $05
    nop
    call c, $bcc0
    ret


    ld d, b
    ret z

    dec b
    nop
    call c, $bcc0
    jp z, $ca50

    dec b
    nop
    call c, $bcc0
    db $dd
    ld d, b
    call z, $0005
    or c
    or d
    cp h
    ld [c], a
    or e
    jr jr_047_5ea7

jr_047_5ea7:
    nop
    or d
    cp c
    rst $20
    ld d, b
    ld d, b
    adc b
    nop
    nop
    or d
    pop bc
    ld a, [hl-]
    sbc $50
    sub [hl]
    nop
    nop
    or [hl]
    cp b
    ld a, [hl+]
    ld d, b
    ld d, b
    ld c, h
    ld bc, $b600
    ret nz

    cp [hl]
    jp Jump_047_5450


    ld bc, $b600
    pop bc
    ld d, b
    ld d, b
    ld d, b
    ld d, [hl]
    ld bc, $b600
    jp nz, Jump_047_5050

    ld d, b
    ld e, b
    ld bc, $b600
    rst $18
    ret nz

    ld d, b
    ld d, b
    ld h, b
    ld bc, $b600
    rst $18
    ret nz

    rst $10
    ld d, b
    ld h, d
    ld bc, $b600
    rst $18
    jp Jump_047_5050


    ld h, h
    ld bc, $b600
    jp $b2c5


    ld d, b
    ld h, [hl]
    ld bc, $b600
    jp Jump_047_50d9


    ld d, b
    ld l, b
    ld bc, $b600
    push bc
    call c, $b2c5
    ld [hl], b
    ld bc, $b700
    or c
    or d
    ld d, b
    ld d, b
    add h
    ld bc, $b700
    jp nc, $50c0

    ld d, b
    xor b
    ld bc, $b700
    ret c

    call z, $5030
    or [hl]
    ld bc, $b800
    rst $10
    or h
    ld d, b
    ld d, b
    jp nz, $0001

    cp d
    or d
    rst $20
    ld d, b
    ld d, b
    jp c, $0001

    cp d
    or e
    add hl, hl
    or a
    ld d, b
    ldh [rSB], a
    nop
    cp d
    or e
    cp e
    sbc $50
    ld [c], a
    ld bc, $ba00
    sbc $2c
    ld [c], a
    or e
    ld [$0002], sp
    cp e
    or d
    ret


    or e
    ld d, b
    ld d, $02
    nop
    cp e
    cp b
    cp [hl]
    sbc $50
    ld a, [de]
    ld [bc], a
    nop
    cp e
    ld a, [hl-]
    or a
    ld d, b
    ld d, b
    ld [hl+], a
    ld [bc], a
    nop
    cp h
    ld [c], a
    or e
    inc a
    ld d, b
    ld a, [hl]
    ld [bc], a
    nop
    cp h
    ld [c], a
    or e
    ret c

    ld d, b
    add b
    ld [bc], a
    nop
    cp [hl]
    jp nc, Jump_047_5050

    ld d, b
    or h
    ld [bc], a
    nop
    adc l
    xor e
    adc h
    ld d, b
    ld d, b
    or [hl]
    ld [bc], a
    nop
    ret nz

    or d
    cp [hl]
    sbc $50
    and $02
    nop
    ret nz

    ret nz

    or [hl]
    or d
    ld d, b
    or $02
    nop
    pop bc
    or [hl]
    rst $10
    ld d, b
    ld d, b
    ld [hl-], a
    inc bc
    nop
    sub b
    xor l
    and a
    xor e
    dec bc
    ld [hl], $03
    nop
    jp nz, $b2d6

    ld d, b
    ld d, b
    ld e, b
    inc bc
    nop
    jp nz, $bdd6

    daa
    ld d, b
    ld e, d
    inc bc
    nop
    jp nz, $b2d7

    ld d, b
    ld d, b
    ld e, h
    inc bc
    nop
    jp nz, $b6d7

    rst $18
    ret nz

    ld e, [hl]
    inc bc
    nop
    jp $29b6


    sbc $50
    ld l, h
    inc bc
    nop
    jp $50b7


    ld d, b
    ld d, b
    ld l, [hl]
    inc bc
    nop
    jp $bbde


    or d
    ld d, b
    sub b
    inc bc
    nop
    inc sp
    sbc $be
    jp nz, $9450

    inc bc
    nop
    sub e
    and a
    db $e3
    sub h
    db $e3
    add $03
    nop
    add $29
    ld d, b
    ld d, b
    ld d, b
    inc b
    inc b
    nop
    rst $00
    reti


    or d
    ld d, b
    ld d, b
    db $10
    inc b
    nop
    ret z

    rst $10
    or e
    ld d, b
    ld d, b
    ld d, $04
    nop
    add hl, de
    sub e
    and [hl]
    ld d, b
    ld d, b
    ld c, d
    inc b
    nop
    sbc e
    jp hl


    add c
    sub e
    ld d, b
    ld [hl], d
    inc b
    nop
    call z, $b6df
    jp nz, Jump_047_7850

    inc b
    nop
    ld b, e
    add c
    xor e
    sub e
    ld d, b
    sub h
    inc b
    nop
    ld b, e
    adc b
    and c
    xor e
    ld d, b
    xor h
    inc b
    nop
    adc $de
    or a
    ld d, b
    ld d, b
    cp h
    inc b
    nop
    rst $08
    or d
    rst $18
    ret nz

    rst $20
    call nz, $0004
    rst $08
    cp c
    ld d, b
    ld d, b
    ld d, b
    ret z

    inc b
    nop
    rst $08
    cp c
    ret nz

    rst $10
    ld d, b
    jp z, $0004

    rst $08
    cp c
    jp Jump_047_5050


    call z, $0004
    rst $08
    cp c
    reti


    ld d, b
    ld d, b
    adc $04
    nop
    rst $08
    db $d3
    ret c

    ld d, b
    ld d, b
    ld [$0004], a
    ret nc

    or [hl]
    ret nz

    ld d, b
    ld d, b
    ld a, [c]
    inc b
    nop
    ret nc

    call nz, $c5d2
    or d
    cp $04
    nop
    ret nc

    call nz, $d9d2
    ld d, b
    nop
    dec b
    nop
    pop de
    jp $50b7


    ld d, b
    ld d, $05
    nop
    db $d3
    rst $10
    rst $18
    ret nz

    rst $20
    inc a
    dec b
    nop
    sub $d5
    or e
    ld d, b
    ld d, b
    ld a, d
    dec b
    nop
    sub $dc
    or d
    ld d, b
    ld d, b
    add d
    dec b
    nop
    sub $dc
    cp l
    daa
    ld d, b
    add h
    dec b
    nop
    rst $10
    cp b
    cp h
    ld [c], a
    or e
    adc [hl]
    dec b
    nop
    ret c

    db $e3
    rrca
    db $e3
    ld d, b
    sbc [hl]
    dec b
    nop
    and [hl]
    db $e3
    and [hl]
    ld d, b
    ld d, b
    and b
    dec b
    nop
    and a
    dec a
    and [hl]
    ld d, b
    ld d, b
    and [hl]
    dec b
    nop
    call c, Call_047_502b
    ld d, b
    ld d, b
    cp [hl]
    dec b
    nop
    rst $20
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    nop
    rst $20
    rst $20
    ld d, b
    ld d, b
    ld d, b
    ld [bc], a
    nop
    nop
    rst $20
    and $50
    ld d, b
    ld d, b
    inc b
    nop
    nop
    and $50
    ld d, b
    ld d, b
    ld d, b
    ld b, $00
    nop
    ld [hl], l
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [$0000], sp
    ld [hl], l
    rst $20
    ld d, b
    ld d, b
    ld d, b
    ld a, [bc]
    nop
    nop
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld d, b
    ld d, b
    inc c
    nop
    nop
    db $e3
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld c, $00
    nop
    db $e3
    db $e3
    db $e3
    ld d, b
    ld d, b
    stop
    nop
    or c
    db $e3
    or c
    ld d, b
    ld d, b
    inc d
    nop
    nop
    or c
    db $e3
    sbc $50
    ld d, b
    ld d, $00
    nop
    or c
    jp z, $e3ca

    ld d, b
    ld d, d
    nop
    nop
    or c
    rst $10
    ld d, b
    ld d, b
    ld d, b
    ld d, h
    nop
    nop
    or d
    or h
    ld d, b
    ld d, b
    ld d, b
    ld [hl], d
    nop
    nop
    add c
    add e
    adc h
    ld d, b
    ld d, b
    ld [hl], h
    nop
    nop
    or e
    or e
    ld d, b
    ld d, b
    ld d, b
    xor h
    nop
    nop
    or e
    db $e3
    sbc $50
    ld d, b
    xor [hl]
    nop
    nop
    or e
    or l
    db $e3
    rst $20
    ld d, b
    or b
    nop
    nop
    or e
    or l
    ret c

    ldh [$e3], a
    or d
    nop
    nop
    or e
    set 4, d
    db $e3
    ld d, b
    cp h
    nop
    nop
    or e
    call z, Call_047_50cc
    ld d, b
    cp [hl]
    nop
    nop
    or e
    call c, $50e3
    ld d, b
    jp z, RST_00

    or e
    call c, $dee3
    ld d, b
    call z, RST_00
    or h
    or h
    ld d, b
    ld d, b
    ld d, b
    jp nc, RST_00

    or h
    db $e3
    ld d, b
    ld d, b
    ld d, b
    call nc, RST_00
    or h
    db $e3
    sbc $50
    ld d, b
    sub $00
    nop
    or h
    call Call_047_50cd
    ld d, b
    call c, RST_00
    or l
    or d
    or l
    or d
    ld d, b
    ldh [rP1], a
    nop
    or l
    or l
    ld d, b
    ld d, b
    ld d, b
    ld [c], a
    nop
    nop
    or l
    rst $18
    call nz, Call_047_5050
    inc c
    ld bc, $2600
    db $e3
    sbc $50
    ld d, b
    ld b, d
    ld bc, $8600
    xor l
    db $e3
    ld d, b
    ld d, b
    xor d
    ld bc, $0600
    xor l
    db $e3
    ld d, b
    ld d, b
    xor h
    ld bc, $2800
    call z, $cccc
    call z, $01bc
    nop
    add hl, hl
    rst $18
    ld d, b
    ld d, b
    ld d, b
    adc $01
    nop
    cp h
    cp b
    cp h
    cp b
    ld d, b
    ld a, $02
    nop
    pop bc
    or h
    rst $18
    ld d, b
    ld d, b
    ld l, $03
    nop
    jp Jump_047_50cd


    ld d, b
    ld d, b
    add [hl]
    inc bc
    nop
    sbc b
    db $e3
    ld d, b
    ld d, b
    ld d, b
    jr nz, jr_047_6203

    nop
    jp z, $e3b1

jr_047_6203:
    ld d, b
    ld d, b
    ld a, [hl+]
    inc b
    nop
    jp z, Jump_047_50b2

    ld d, b
    ld d, b
    jr nc, jr_047_6213

    nop
    jp z, $cadf

jr_047_6213:
    rst $18
    jp z, $0448

    nop
    res 6, d
    db $e3
    ld d, b
    ld d, b
    ld d, [hl]
    inc b
    nop
    set 4, b
    or c
    ld d, b
    ld d, b
    ld l, d
    inc b
    nop
    call z, $ccdf
    rst $18
    call z, $047c
    nop
    call z, $e0c6
    ld d, b
    ld d, b
    ld a, [hl]
    inc b
    nop
    ld b, d
    ld b, d
    ld d, b
    ld d, b
    ld d, b
    add b
    inc b
    nop
    call z, $decc
    ld d, b
    ld d, b
    add d
    inc b
    nop
    call z, $50de
    ld d, b
    ld d, b
    adc b
    inc b
    nop
    call $cddf
    rst $18
    call $048e
    nop
    call $e3cd
    ld d, b
    ld d, b
    sub b
    inc b
    nop
    adc $e3
    adc $ce
    adc $9c
    inc b
    nop
    adc $d7
    ld d, b
    ld d, b
    ld d, b
    or [hl]
    inc b
    nop
    rst $08
    or c
    ld d, b
    ld d, b
    ld d, b
    ret nz

    inc b
    nop
    pop de
    or a
    db $e3
    rst $20
    rst $20
    db $10
    dec b
    nop
    pop de
    call z, $50e3
    ld d, b
    jr jr_047_628c

    nop
    pop de
    call z, Call_047_50cc

jr_047_628c:
    ld d, b
    ld a, [de]
    dec b
    nop
    pop de
    pop de
    ld d, b
    ld d, b
    ld d, b
    inc e
    dec b
    nop
    sub $e3
    cp h
    ld d, b
    ld d, b
    ld l, d
    dec b
    nop
    sub $bc
    rst $20
    ld d, b
    ld d, b
    ld [hl], d
    dec b
    nop
    and l
    and l
    and l
    ld d, b
    ld d, b
    sbc b
    dec b
    nop
    call c, $b2e3
    ld d, b
    ld d, b
    xor h
    dec b
    nop
    call c, $dee3
    rst $20
    rst $20
    or b
    dec b
    nop
    xor c
    add h
    ld d, b
    ld d, b
    ld d, b
    or d
    dec b
    nop
    call c, $e7df
    rst $20
    ld d, b
    adc $05

Call_047_62cf:
    nop
    call c, $caca
    jp z, $d0e7

    dec b
    nop
    or c
    ret


    ret z

    ld d, b
    ld d, b
    ld d, b
    nop
    nop
    or c
    sbc $cf
    ret c

    ld d, b
    ld l, [hl]
    nop
    nop
    or d
    inc l
    call c, Call_047_50d9
    adc [hl]
    nop
    nop
    or e
    cp a
    ld d, b
    ld d, b
    ld d, b
    or [hl]
    nop
    nop
    or e
    pop de
    ld d, b
    ld d, b
    ld d, b
    call nz, RST_00
    or l
    db $e3
    or d
    ld d, b
    ld d, b
    db $e4
    nop
    nop
    or l
    cp l
    cp l
    jp nc, $0650

    ld bc, $b500
    ld a, [hl-]
    or [hl]
    cp e
    sbc $1e
    ld bc, $b600
    push bc
    ret c

    ld d, b
    ld d, b
    ld l, [hl]
    ld bc, $b600
    rst $10
    ld d, b
    ld d, b
    ld d, b
    ld a, d
    ld bc, $b700
    inc a
    sbc $50
    ld d, b
    sbc b
    ld bc, $b900
    inc [hl]
    ld d, b
    ld d, b
    ld d, b
    sub $01
    nop
    cp d
    cp a
    ld d, b
    ld d, b
    ld d, b
    ld [$0001], a
    cp d
    call nz, Call_047_5050
    ld d, b
    xor $01
    nop
    cp e
    or c
    ld d, b
    ld d, b
    ld d, b
    ld [de], a
    ld [bc], a
    nop
    cp e
    rst $18
    ld b, h
    ret c

    ld d, b
    ld e, $02
    nop
    cp e
    jp Jump_047_5050


    ld d, b
    jr nz, jr_047_6361

    nop
    inc l

jr_047_6361:
    pop hl
    or e
    inc a
    sbc $72
    ld [bc], a
    nop
    cp l
    jr z, jr_047_63bb

    ld d, b
    ld d, b
    sub h
    ld [bc], a
    nop
    cp l
    ld a, [hl+]
    cp b
    ld d, b
    ld d, b
    sbc b
    ld [bc], a
    nop
    cp l
    cp d
    cp h
    jp z, $9a50

    ld [bc], a
    nop
    cp l
    rst $18
    rst $18
    ld a, [hl+]
    or d
    and b
    ld [bc], a
    nop
    ld l, $e3
    sbc $2e
    sbc $b0
    ld [bc], a
    nop
    ld l, $df
    ret nz

    or d
    ld d, b
    or d
    ld [bc], a
    nop
    cp a
    jp c, Jump_047_5033

    ld d, b
    adc $02
    nop
    jr nc, @-$45

    ld d, b
    ld d, b
    ld d, b
    ld a, [c]
    ld [bc], a
    nop
    jr nc, @-$1f

    jp Jump_047_5050


    db $fc
    ld [bc], a
    nop
    ret nz

    inc a
    sbc $50
    ld d, b
    ld b, $03
    nop
    ret nz

    rst $10
    ld d, b

jr_047_63bb:
    ld d, b
    ld d, b
    inc d
    inc bc
    nop
    pop bc
    ld [c], a
    db $e3
    ld d, b
    ld d, b
    ld a, [hl-]
    inc bc
    nop
    pop bc
    ld [c], a
    rst $18
    call nz, $3c50
    inc bc
    nop
    rst $18
    ret nz

    rst $10
    ld d, b
    ld d, b
    ld c, [hl]
    inc bc
    nop
    rst $18
    jp Jump_047_5050


    ld d, b
    ld d, b
    inc bc
    nop
    jp $b3b2


    or [hl]
    ld d, b
    ld h, d
    inc bc
    nop
    inc sp
    db $d3
    ld d, b
    ld d, b
    ld d, b
    adc b
    inc bc
    nop
    inc [hl]
    or e
    cp h
    jp $9cd3


    inc bc
    nop
    call nz, $2eb3
    sbc $50
    and b
    inc bc
    nop
    inc [hl]
    or e
    cpl
    ld d, b
    ld d, b
    and d
    inc bc
    nop
    call nz, $b1d8
    or h
    dec l
    cp [hl]
    inc bc
    nop
    push bc
    or c
    ld d, b
    ld d, b
    ld d, b
    call z, $0003
    push bc
    sbc $c3
    ld d, b
    ld d, b
    db $f4
    inc bc
    nop
    push bc
    sbc $33
    db $d3
    ld d, b
    db $fc
    inc bc
    nop
    push bc
    sbc $c4
    or [hl]
    ld d, b
    cp $03
    nop
    add $ca
    ld d, b
    ld d, b
    ld d, b
    ld [$0004], sp
    add hl, de
    xor h
    sub b
    ret c

    ld d, b
    ld b, [hl]
    inc b
    nop
    ld a, [hl-]
    ret c

    ld a, [hl-]
    ret c

    ld d, b
    ld d, d
    inc b
    nop
    adc $34
    ld d, b
    ld d, b
    ld d, b
    or b
    inc b
    nop
    adc $de
    call nz, Call_047_5050
    cp [hl]
    inc b
    nop
    rst $08
    cp e
    add $50
    ld d, b
    ret nc

    inc b
    nop
    sbc l
    dec bc
    ld d, b
    ld d, b
    ld d, b
    jp nc, $0004

    sbc l
    dec bc
    inc sp
    ld d, b
    ld d, b
    call nc, $0004
    rst $08
    rst $18
    ret nz

    cp b
    ld d, b
    db $e4
    inc b
    nop
    rst $08
    inc sp
    ld d, b
    ld d, b
    ld d, b
    and $04
    nop
    rst $08
    reti


    inc sp
    ld d, b
    ld d, b
    db $ec
    inc b
    nop
    sbc a
    db $e3
    inc de
    ld d, b
    ld d, b
    ld c, $05
    nop
    pop de
    cp h
    db $db
    ld d, b
    ld d, b
    inc d
    dec b
    nop
    jp nc, $e0c1

    ld d, b
    ld d, b
    inc h
    dec b
    nop
    jp nc, Jump_047_48df

    or e
    ld d, b
    jr z, jr_047_64ac

    nop
    db $d3
    or e
    ld d, b
    ld d, b

jr_047_64ac:
    ld d, b
    inc l
    dec b
    nop
    and c
    db $e3
    inc de
    ld d, b
    ld d, b
    ld l, $05
    nop
    db $d3
    rst $18
    call nz, Call_047_5050
    ld [hl], $05
    nop
    db $d3
    jp z, Jump_047_50d4

    ld d, b
    jr c, jr_047_64cc

    nop
    call nc, $c4df
    ld d, b

jr_047_64cc:
    ld d, b
    ld c, d
    dec b
    nop
    call nc, Call_047_44df
    ret c

    ld d, b
    ld c, h
    dec b
    nop
    sub $d8
    ld d, b
    ld d, b
    ld d, b
    ld a, h
    dec b
    nop
    jp c, $503a

    ld d, b
    ld d, b
    and h
    dec b
    nop
    or c
    or d
    ret nz

    or d
    ld d, b
    ld a, [de]
    nop
    nop
    or c
    cp a
    dec sp
    ret nz

    or d
    ld [hl-], a
    nop
    nop
    or d
    or a
    ret nz

    or d
    ld d, b
    ld a, h
    nop
    nop
    or e
    or [hl]
    jp c, Jump_047_50c3

    or h
    nop
    nop
    or e
    jp c, $b2bc

    ld d, b
    add $00
    nop
    or e
    jp c, $bbbc

    ld d, b
    ret z

    nop
    nop
    add e
    add [hl]
    adc d
    add c
    sub e
    ret c

    nop
    nop
    or h
    rst $10
    or d
    ld d, b
    ld d, b
    sbc $00
    nop
    or l
    or [hl]
    cp h
    or d
    ld d, b
    db $ec
    nop
    nop
    add h
    xor h
    adc b
    db $e3
    ld d, b
    ld [$0001], sp
    or [hl]
    or h
    ret c

    ret nz

    or d
    ld c, b
    ld bc, $2600
    rst $18
    cp b
    cp h
    ld d, b
    ld e, d
    ld bc, $b600
    push bc
    cp h
    or d
    ld d, b
    ld l, h
    ld bc, $2600
    sbc $3a
    rst $18
    jp $0180


    nop
    or a
    ld h, $bc
    push bc
    or d
    add [hl]
    ld bc, $b700
    ld h, $bd
    reti


    ld d, b
    adc b
    ld bc, $b700
    or a
    ret nz

    or d
    ld d, b
    adc d
    ld bc, $b700
    add $c5
    reti


    ld d, b
    sub b
    ld bc, $b700
    ret


    cp [hl]
    or d
    ld d, b
    sub [hl]
    ld bc, $b700
    rst $10
    or d
    ld d, b
    ld d, b
    or h
    ld bc, $b800
    call nc, $b2bc

jr_047_658c:
    ld d, b
    cp [hl]
    ld bc, $b800
    call nc, $bbbc
    ld d, b
    ret nz

    ld bc, $bb00
    ret nc

    cp h
    or d

jr_047_659c:
    ld d, b
    inc h
    ld [bc], a
    nop
    dec hl
    sbc $c8
    sbc $50
    ld [hl-], a
    ld [bc], a
    nop
    cp h
    or c
    call c, Call_047_50be
    ld [hl], $02
    nop
    cp h
    ret nz

    or d
    ld d, b
    ld d, b
    ld b, h
    ld [bc], a
    nop
    cp h
    ret nz

    cp b
    push bc
    or d
    ld b, [hl]
    ld [bc], a
    nop
    cp h
    rst $08
    rst $18
    ret nz

    ld d, b
    ld h, h
    ld [bc], a
    nop
    cp h
    ld [c], a
    sbc $3e
    ret c

    add d
    ld [bc], a
    nop
    cp l
    or a
    ld d, b
    ld d, b
    ld d, b
    sub d
    ld [bc], a
    nop
    jr nc, jr_047_658c

    or a
    rst $10
    or d
    jp c, $0002

    ret nz

    or d
    cp b
    jp nz, $dc50

    ld [bc], a
    nop
    jr nc, jr_047_659c

    inc l
    ld d, b
    ld d, b
    sbc $02
    nop
    jr nc, @-$4c

    cp l
    or a
    ld d, b
    db $e4
    ld [bc], a
    nop
    ret nz

    or d
    call $50de
    ld [$0002], a
    ret nz

    ret


    cp h
    or d
    ld d, b
    nop
    inc bc
    nop
    ret nz

    ret


    cp h
    cp l
    daa
    ld [bc], a
    inc bc
    nop
    ret nz

    dec a
    ret nz

    or d
    ld d, b
    ld [$0003], sp
    rrca
    and b
    rrca
    and b
    ld d, b
    ld c, $03
    nop
    ret nz

    ret c

    push bc
    or d
    ld d, b
    ld d, $03
    nop
    pop bc
    cp b
    cp h
    ld [c], a
    db $e3
    inc [hl]
    inc bc
    nop
    inc [hl]
    or e
    cp h
    sub $b3
    sbc [hl]
    inc bc
    nop
    inc de
    add [hl]
    inc de
    add [hl]
    ld d, b
    xor h
    inc bc
    nop
    sub h
    add c
    adc h
    ld d, b
    ld d, b
    ret nc

    inc bc
    nop
    ret


    ret nc

jr_047_664a:
    ret nz

    or d
    ld d, b
    ld h, $04
    nop
    dec sp
    rst $18
    cp b
    ret c

    ld d, b
    ld h, b
    inc b
    nop
    call z, $deb1
    ld d, b
    ld d, b
    ld [hl], h
    inc b
    nop
    call z, $ccd7
    rst $10
    ld d, b
    add [hl]
    inc b
    nop
    adc $bc
    or d
    ld d, b
    ld d, b
    xor [hl]
    inc b
    nop
    inc e
    xor b
    inc e
    xor b
    ld d, b
    cp b
    inc b
    nop
    rst $08
    jr nc, jr_047_664a

    jr nc, jr_047_66cd

    ldh [rDIV], a
    nop
    rst $08
    jp $b2c5


    ld d, b
    add sp, $04
    nop
    rst $08
    sbc $2f
    cp b
    ld d, b
    ldh a, [rDIV]
    nop
    ret nc

    ret nz

    or d
    ld d, b
    ld d, b
    ld hl, sp+$04
    nop
    jp nc, $d72d

    cp h
    or d
    ld [hl+], a
    dec b
    nop
    and b
    and l
    and b
    and l
    ld d, b
    ld a, [hl+]
    dec b
    nop
    call nc, $5030
    ld d, b
    ld d, b
    ld b, [hl]
    dec b
    nop
    call nc, $c0df
    db $e3
    ld d, b
    ld c, b
    dec b
    nop
    call nc, $b23a
    ld d, b
    ld d, b
    ld d, b
    dec b
    nop
    call nc, $bd3a
    daa
    reti


    ld d, d
    dec b
    nop
    call nc, $dad7
    ret nz

    ld d, b

jr_047_66cd:
    ld d, h
    dec b
    nop
    call nc, $dad7
    jp $5650


    dec b
    nop
    sub $b6
    rst $18
    ret nz

    ld d, b
    ld l, [hl]
    dec b
    nop
    and l
    dec de
    and l
    dec de
    ld d, b
    sub [hl]
    dec b
    nop
    xor b
    sbc l
    xor e
    ld d, b
    ld d, b
    xor b
    dec b
    nop
    db $db
    sbc $26
    or d
    ld d, b
    xor d
    dec b
    nop
    call c, $d7b6
    ld d, b
    ld d, b
    or h
    dec b
    nop
    call c, $d8b6
    ld d, b
    ld d, b
    or [hl]
    dec b
    nop
    call c, $dcb8
    cp b
    ld d, b
    cp d
    dec b
    nop
    or c
    jp nz, Jump_047_50b2

    ld d, b
    jr c, jr_047_6717

jr_047_6717:
    nop
    or c
    rst $18
    ret nz

    ld d, b
    ld d, b
    ld a, [hl-]
    nop
    nop
    or c
    ret c

    ld d, b
    ld d, b
    ld d, b
    ld d, [hl]
    nop
    nop
    or c
    reti


    ld d, b
    ld d, b
    ld d, b
    ld e, [hl]
    nop
    nop
    or c
    call c, $c3c3
    ld d, b
    ld l, d
    nop
    nop
    or d
    or d
    ld d, b
    ld d, b
    ld d, b
    ld [hl], b
    nop
    nop
    or d
    or [hl]
    ld d, b
    ld d, b
    ld d, b
    halt
    nop
    add c
    add l
    adc h
    ld d, b
    ld d, b
    ld a, b
    nop
    nop
    or d
    or a
    or l
    or d
    ld d, b
    ld a, d
    nop
    nop
    or d
    cp c
    reti


    ld d, b
    ld d, b
    adc d
    nop
    nop
    or d
    inc l
    ld [c], a
    or e
    ld d, b
    adc h
    nop
    nop
    or d
    cp a
    ld h, $bc
    or d
    sub b
    nop
    nop
    or d
    rst $18
    cp h
    ld [c], a
    add $9a
    nop
    nop
    or d
    rst $18
    ld b, h
    or d
    ld d, b
    sbc h
    nop
    nop
    or d
    push bc
    or d
    ld d, b
    ld d, b
    and b
    nop
    nop
    or d
    call nc, Call_047_5050
    ld d, b
    and h
    nop
    nop
    or d
    reti


    ld d, b
    ld d, b
    ld d, b
    xor b
    nop
    nop
    or e
    rst $08
    or d
    ld d, b
    ld d, b
    ret nz

    nop
    nop
    or e
    rst $08
    cp b
    ld d, b
    ld d, b
    jp nz, RST_00

    or l
    or l
    or a
    or d
    ld d, b
    and $00
    nop
    or l
    cp b
    jp c, Jump_047_5050

    ld a, [c]
    nop
    nop
    or l
    cp h
    or d
    ld d, b
    ld d, b
    ld a, [$0000]
    or l
    db $d3
    cp h
    db $db
    or d
    inc l
    ld bc, $b500
    db $d3
    cp h
    db $db
    cp b
    ld l, $01
    nop
    or [hl]
    rst $18
    cp d
    or d
    or d
    ld e, h
    ld bc, $b600
    call c, $b2b2
    ld d, b
    ld a, [hl]
    ld bc, $b600
    sbc $47
    or a
    ld d, b
    add d
    ld bc, $b900
    rst $18
    cp d
    or e
    ld d, b
    ret nc

    ld bc, $2900
    sbc $b7
    ld d, b

jr_047_67f4:
    ld d, b
    ret c

    ld bc, $ba00
    call c, Call_047_50b2
    ld d, b
    ld b, $02
    nop
    cp e
    or d
    cp d
    or e
    ld d, b
    inc d
    ld [bc], a
    nop
    cp e
    pop de
    or d
    ld d, b
    ld d, b
    ld h, $02

jr_047_680f:
    nop
    cp e
    call c, $b6d4
    ld d, b
    inc l
    ld [bc], a
    nop
    cp h
    or [hl]
    ret nz

    push bc
    or d
    jr c, jr_047_6821

    nop
    cp l

jr_047_6821:
    ld a, [hl+]
    or d
    ld d, b
    ld d, b
    sub [hl]
    ld [bc], a
    nop
    cp l
    ld a, [hl+]
    cp l
    daa

jr_047_682c:
    ld d, b
    sbc h
    ld [bc], a
    nop
    cp l
    jp $50b7


    ld d, b
    and h
    ld [bc], a
    nop
    ret nz

    or d
    cp h
    ret nz

    ld d, b
    ldh [rSC], a
    nop
    jr nc, jr_047_67f4

    inc l
    ld [c], a
    inc a
    ld [c], a
    ld [bc], a
    nop
    ret nz

    or [hl]
    or d
    ld d, b
    ld d, b
    db $ec
    ld [bc], a
    nop
    ret nz

    jr nc, jr_047_680f

    or d
    ld d, b
    ld hl, sp+$02
    nop
    jr nc, jr_047_682c

    ld d, b
    ld d, b
    ld d, b
    inc c
    inc bc
    nop
    pop bc
    or d
    cp e
    or d
    ld d, b
    inc l
    inc bc
    nop
    pop bc
    ld h, $b3
    ld d, b
    ld d, b
    jr nc, @+$05

    nop
    jp nz, $dab6

    ld d, b
    ld d, b
    ld c, b
    inc bc
    nop
    call nz, $b2b8
    ld d, b
    ld d, b
    or b
    inc bc
    nop
    call nz, $d7cf
    push bc
    or d
    or [hl]
    inc bc
    nop
    push bc
    or d
    ld d, b
    ld d, b
    ld d, b
    adc $03
    nop
    push bc
    or [hl]
    rst $18
    ret nz

    ld d, b
    jp nc, $0003

    push bc
    cp h
    ld d, b
    ld d, b
    ld d, b
    ret c

    inc bc
    nop
    push bc
    rst $18
    jp Jump_047_5050


    call c, $0003
    jp z, $b2d4

    ld d, b
    ld d, b
    ld d, b
    inc b
    nop
    res 6, [hl]
    reti


    ld d, b
    ld d, b
    ld e, d
    inc b
    nop
    res 7, b
    or d
    ld d, b
    ld d, b
    ld e, h
    inc b
    nop
    swap h
    or d
    ld d, b
    ld d, b
    ld h, h
    inc b
    nop
    set 0, h
    ret c

    inc sp
    ld d, b
    ld h, [hl]
    inc b
    nop
    set 1, a
    ld d, b
    ld d, b
    ld d, b
    ld l, b
    inc b
    nop
    call z, $b8bf
    ld d, b
    ld d, b
    db $76
    inc b
    nop
    call $50c0
    ld d, b
    ld d, b
    adc h
    inc b
    nop
    rst $08
    pop bc
    ld h, $df
    jp $04e2


    nop
    call nc, $bcbb
    or d
    ld d, b
    ld b, d
    dec b
    nop
    sub $b8
    ld d, b
    ld d, b
    ld d, b
    ld [hl], b
    dec b
    nop
    sub $dc
    rst $18
    jp $8650


    dec b
    nop
    rst $10
    cp b
    ld d, b
    ld d, b
    ld d, b
    adc h
    dec b
    nop
    rst $10
    cp h
    or d
    ld d, b
    ld d, b
    sub b
    dec b
    nop
    call c, $b2d9
    ld d, b
    ld d, b
    call nc, $0005
    add b
    and [hl]
    add hl, de
    add c
    sub e
    ld h, h
    nop
    nop
    or e
    pop bc
    ld d, b
    ld d, b
    ld d, b
    cp d
    nop
    nop
    or l
    or [hl]
    ret z

    ld d, b
    ld d, b
    xor $00
    nop
    or l
    cp d
    ld [hl-], a
    or [hl]
    or d
    db $f4
    nop
    nop
    or l
    call z, Call_047_50db
    ld d, b
    inc h
    ld bc, $2600
    rst $18
    cp d
    or e
    ld d, b
    ld e, [hl]
    ld bc, $b700
    ret z

    sbc $50
    ld d, b
    sub d
    ld bc, $0700
    and [hl]
    db $e3
    ld b, d
    ld d, b
    add $01
    nop
    ld [$93ac], sp
    ld d, b
    ld d, b
    jp nc, $0001

    cp d
    or e
    or [hl]
    sbc $50
    sbc $01
    nop
    cp h
    ld a, [hl+]
    call nz, Call_047_5050
    ld b, b
    ld [bc], a
    nop
    cp h
    pop hl
    daa
    ld [c], a
    or e
    ld [hl], h
    ld [bc], a
    nop
    inc l
    pop hl
    daa
    ld [c], a
    or e
    db $76
    ld [bc], a
    nop
    inc l
    pop hl
    cp b
    ld d, b
    ld d, b
    ld a, b
    ld [bc], a
    nop
    cp h
    sbc $b6
    ld d, b
    ld d, b
    adc b
    ld [bc], a
    nop
    dec l
    or [hl]
    sbc $50
    ld d, b
    sub b
    ld [bc], a
    nop
    cp [hl]
    or d
    or [hl]
    jp nz, $ae50

    ld [bc], a
    nop
    cp [hl]
    sbc $be
    or d
    ld d, b
    cp b
    ld [bc], a
    nop
    adc l
    xor e
    adc a
    db $e3
    ld d, b
    cp d
    ld [bc], a
    nop
    adc a
    xor c
    db $e3
    ld d, b
    ld d, b
    jr z, @+$05

    nop
    jp nz, $bcb3

    sbc $50
    ld b, b
    inc bc
    nop
    sub d
    adc h
    sub e
    ld d, b
    ld d, b
    ld a, [hl]
    inc bc
    nop
    sub d
    and a
    ld a, [de]
    ld d, b
    ld d, b
    adc h
    inc bc
    nop
    inc sp
    sbc $dc
    ld d, b
    ld d, b
    sub [hl]
    inc bc
    nop
    inc [hl]
    or e
    jr z, @+$52

    ld d, b
    sbc d
    inc bc
    nop
    sub e
    and a
    db $e3
    inc de
    ld d, b
    call nz, $0003
    push bc
    rst $08
    or h
    ld d, b
    ld d, b
    add sp, $03
    nop
    sub l
    xor [hl]
    db $e3
    adc h
    ld d, b
    ld a, [bc]
    inc b
    nop
    add $de
    or a
    ld d, b
    ld d, b
    inc c
    inc b
    nop
    ld b, b
    db $e3
    sub d
    or b
    db $e3
    ld l, $04
    nop
    dec a
    sbc $b7
    ld [c], a
    or e
    sub d
    inc b
    nop
    sbc l
    adc e
    xor e
    ld d, b
    ld d, b
    sub $04
    nop
    jp nc, $bcb2

    ld d, b
    ld d, b
    ld e, $05
    nop
    and b
    xor h
    adc l
    db $e3
    dec bc
    ld h, $05
    nop
    db $d3
    sub $b3
    ld h, $b4
    ld a, [hl-]
    dec b
    nop
    push de
    jp nc, Jump_047_5050

    ld d, b
    ld e, d
    dec b
    nop
    sub $b3
    pop bc
    or h
    sbc $66
    dec b
    nop
    and l
    dec bc
    add h
    ld d, b
    ld d, b
    sub d
    dec b
    nop
    xor c
    db $e3
    and [hl]
    inc de
    ld d, b
    xor [hl]
    dec b
    nop
    add b
    add c
    inc de
    and [hl]
    ld d, b
    ld e, $00
    nop
    add b
    sub l
    and b
    ld d, b
    ld d, b
    ld c, h
    nop
    nop
    or e
    ret nz

    ld d, b
    ld d, b
    ld d, b
    cp b
    nop
    nop
    or h
    or d
    ld h, $50
    ld d, b
    ret nc

    nop
    nop
    or l
    or [hl]
    cp h
    ld d, b
    ld d, b
    ld [$0000], a
    or l
    cp h
    ldh [$3d], a
    ret c

    inc b
    ld bc, $b500
    rst $08
    rst $08
    ld a, [hl+]
    call nz, $0128
    nop
    or l
    db $d3
    pop bc
    ldh [$50], a
    jr nc, jr_047_6a98

    nop

jr_047_6a98:
    or l
    sbc $26
    cp b
    ld d, b
    jr c, jr_047_6aa0

    nop

jr_047_6aa0:
    add l
    db $e3
    inc de
    ld d, b
    ld d, b
    ld a, $01
    nop
    or [hl]
    or d
    db $d3
    ret


    ld d, b
    ld b, [hl]
    ld bc, $0700
    and [hl]
    and b
    ld d, b
    ld d, b
    ret z

    ld bc, $0800
    db $e3
    sbc a
    ld d, b
    ld d, b
    call z, $0001
    dec hl
    rst $18
    cp h
    ld d, b
    ld d, b
    inc e
    ld [bc], a
    nop
    cp e
    sbc $48
    ld d, b
    ld d, b
    inc [hl]
    ld [bc], a
    nop
    inc l
    jp $bcde


    ldh [$50], a
    ld [bc], a
    nop
    cp h
    pop hl
    ret nc

    ld d, b
    ld d, b
    ld a, d
    ld [bc], a
    nop
    adc h
    ld b, e
    db $e3
    sub c
    ld d, b
    xor b
    ld [bc], a
    nop
    rrca
    add c
    add e
    xor h
    sub e
    ret c

    ld [bc], a
    nop
    ret nz

    or [hl]
    rst $10
    db $d3
    ret


    ldh a, [rSC]
    nop
    ret nz

    dec sp
    ld d, b
    ld d, b
    ld d, b

jr_047_6afd:
    inc b
    inc bc
    nop
    rrca
    xor e
    adc h
    ld d, b
    ld d, b
    ld a, [hl+]
    inc bc
    nop
    jp nz, Jump_047_50d8

    ld d, b
    ld d, b
    ld h, b
    inc bc
    nop
    ld [de], a
    db $e3
    sub e
    ld d, b
    ld d, b
    ld l, d
    inc bc
    nop
    inc sp
    sbc $bc
    ldh [$50], a
    sub d
    inc bc
    nop
    rst $00
    or d
    jr z, jr_047_6afd

    ret nc

    ld c, $04
    nop
    ld b, b
    adc [hl]
    adc c
    xor e
    ld d, b
    ld a, $04
    nop
    jp z, Jump_047_50c5

    ld d, b
    ld d, b
    ld c, h
    inc b
    nop
    sbc d
    db $e3
    xor b
    db $e3
    ld d, b
    ld e, b
    inc b
    nop
    set 3, c
    ret z

    ld d, b
    ld d, b
    ld l, [hl]
    inc b
    nop
    sbc d
    xor b
    add c
    xor e
    ld d, b
    ld [hl], b
    inc b
    nop
    ld a, $b3
    cp c
    sbc $50
    sub [hl]
    inc b
    nop
    inc e
    db $e3
    inc de
    ld d, b
    ld d, b
    sbc d
    inc b
    nop
    inc e
    db $e3
    and [hl]
    ld d, b
    ld d, b
    sbc [hl]
    inc b
    nop
    adc $de
    ld d, b
    ld d, b
    ld d, b
    cp d
    inc b
    nop
    sbc l
    xor e
    dec b
    ld d, b
    ld d, b
    xor $04
    nop
    call nc, $bfb8
    cp b
    ld d, b
    ld b, b
    dec b
    nop
    call nc, $d0bd
    ld d, b
    ld d, b
    ld b, h
    dec b
    nop
    sub $c3
    or d
    ld d, b
    ld d, b
    ld [hl], h
    dec b
    nop
    or c
    or e
    ld d, b
    ld d, b
    ld d, b
    jr nz, jr_047_6b97

jr_047_6b97:
    nop
    or c
    or a
    rst $10
    jp nc, $2450

    nop
    nop
    or c
    add hl, hl
    reti


    ld d, b
    ld d, b
    jr z, jr_047_6ba7

jr_047_6ba7:
    nop
    or c
    cp [hl]
    reti


    ld d, b
    ld d, b
    ld l, $00
    nop
    or c
    cp a
    dec sp
    ld d, b
    ld d, b
    jr nc, jr_047_6bb7

jr_047_6bb7:
    nop
    or c
    cp a
    inc a
    ld d, b
    ld d, b
    inc [hl]
    nop
    nop
    or c
    jp nz, Jump_047_50d2

    ld d, b
    ld a, $00
    nop
    or c
    reti


    or a
    ld d, b
    ld d, b
    ld h, b
    nop
    nop
    or c
    reti


    cp b
    ld d, b
    ld d, b
    ld h, d
    nop
    nop
    or d
    cp b
    ld d, b
    ld d, b
    ld d, b
    ld a, [hl]
    nop
    nop
    or d
    cp c
    ld d, b
    ld d, b
    ld d, b
    add [hl]
    nop
    nop
    or l
    or a
    ld d, b
    ld d, b
    ld d, b
    ldh a, [rP1]
    nop
    or l
    cp d
    ret c

    ld d, b
    ld d, b
    or $00
    nop
    or l
    cp d
    reti


    ld d, b
    ld d, b
    ld hl, sp+$00
    nop
    or l
    cp h
    or h
    ld d, b
    ld d, b
    cp $00
    nop
    or l
    cp h
    or h
    jp TimerOverflowInterrupt


    ld bc, $b500
    ret z

    ld h, $b2
    ld d, b
    ld a, [de]
    ld bc, $b500
    ld a, $b4
    ld d, b
    ld d, b
    ld h, $01
    nop
    or [hl]
    or h
    reti


    ld d, b
    ld d, b
    ld c, d
    ld bc, $2600
    rst $08
    sbc $50
    ld d, b
    ld [hl], h
    ld bc, $b700
    cp b
    ld d, b
    ld d, b
    ld d, b
    adc h
    ld bc, $b700
    ret nz

    or h
    ld d, b
    ld d, b
    adc [hl]
    ld bc, $b700
    jp nc, Jump_047_5050

    ld d, b
    and [hl]
    ld bc, $b800
    reti


    ld d, b
    ld d, b
    ld d, b
    call nz, $0001
    cp e
    ld h, $bc
    ld d, b
    ld d, b
    jr jr_047_6c59

    nop
    cp e

jr_047_6c59:
    call c, Call_047_5027
    ld d, b
    ld a, [hl+]
    ld [bc], a
    nop
    cp h
    ret nz

    ld d, b
    ld d, b
    ld d, b
    ld b, d
    ld [bc], a
    nop
    cp h
    rst $18
    jp Jump_047_5050


    ld c, d
    ld [bc], a
    nop
    cp h
    jp Jump_047_5050


    ld d, b
    ld c, [hl]
    ld [bc], a
    nop
    cp h
    push bc
    or d
    ld d, b
    ld d, b
    ld d, d
    ld [bc], a
    nop
    cp h
    rst $08
    or e
    ld d, b
    ld d, b
    ld h, b
    ld [bc], a
    nop
    inc l
    rst $08
    sbc $50
    ld d, b
    ld h, [hl]
    ld [bc], a
    nop
    cp h
    rst $10
    push bc
    or d
    ld d, b
    add h
    ld [bc], a
    nop
    cp h
    reti


    ld d, b
    ld d, b
    ld d, b
    add [hl]
    ld [bc], a
    nop
    cp h
    sbc $2c
    jp $8a50


    ld [bc], a
    nop
    cp l
    reti


    ld d, b
    ld d, b
    ld d, b
    xor d
    ld [bc], a
    nop
    ret nz

    dec a
    reti


    ld d, b
    ld d, b
    ld a, [bc]
    inc bc
    nop
    jp nz, $b3b6

    ld d, b
    ld d, b
    ld b, d
    inc bc
    nop
    jp nz, $b4b6

    ld d, b
    ld d, b
    ld b, h
    inc bc
    nop
    jp nz, $dfb6

    jp Jump_047_4650


    inc bc
    nop
    inc sp
    or a
    push bc
    or d
    ld d, b
    ld [hl], b
    inc bc
    nop
    inc sp
    or a
    reti


    ld d, b
    ld d, b
    ld [hl], d
    inc bc
    nop
    inc sp
    push bc
    or d
    ld d, b
    ld d, b
    add h
    inc bc
    nop
    inc sp
    reti


    ld d, b
    ld d, b
    ld d, b
    adc d
    inc bc
    nop
    push bc
    add hl, hl
    reti


    ld d, b
    ld d, b
    sub $03
    nop
    push bc
    call nc, Call_047_50d0
    ld d, b
    ld [$0003], a
    ret z

    rst $10
    jp c, Jump_047_5050

    jr jr_047_6d0b

    nop
    ret z

    reti


    ld d, b

jr_047_6d0b:
    ld d, b
    ld d, b
    ld a, [de]
    inc b
    nop
    ret


    ld h, $bc
    ld d, b
    ld d, b
    inc h
    inc b
    nop
    ret


    pop de
    ld d, b
    ld d, b
    ld d, b
    jr z, jr_047_6d23

    nop
    jp z, $d8bc

jr_047_6d23:
    ld d, b
    ld d, b
    ld a, [hl-]
    inc b
    nop
    jp z, $d9bc

    ld d, b
    ld d, b
    inc a
    inc b
    nop
    jp z, $d7c0

    or a
    ld d, b
    ld b, b
    inc b
    nop
    jp z, $d7c0

    cp b
    ld d, b
    ld b, d
    inc b
    nop
    jp z, $dfcf

    jp Jump_047_4e50


    inc b
    nop
    inc a
    jp nz, Jump_047_50b9

    ld d, b
    ld a, d
    inc b
    nop
    adc $d2
    ld d, b
    ld d, b
    ld d, b
    or h
    inc b
    nop
    ret nc

    cp [hl]
    jp Jump_047_5050


    or $04
    nop
    ret nc

    jp Jump_047_5050


    ld d, b
    db $fc
    inc b
    nop
    ret nc

    reti


    ld d, b
    ld d, b
    ld d, b
    ld [bc], a
    dec b
    nop
    jp nc, $bd2b

    ld d, b
    ld d, b
    jr nz, @+$07

    nop
    db $d3
    rst $18
    jp Jump_047_5050


    inc [hl]
    dec b
    nop
    push de
    dec l
    reti


    ld d, b
    ld d, b
    ld e, b
    dec b
    nop
    push de
    reti


    cp l
    ld d, b
    ld d, b
    ld e, h
    dec b
    nop
    push de
    reti


    cp [hl]
    ld d, b
    ld d, b
    ld e, [hl]
    dec b
    nop
    rst $10
    jp c, $b2c5

    ld d, b
    sbc d
    dec b
    nop
    rst $10
    jp c, Jump_047_50d9

    ld d, b
    sbc h
    dec b
    nop
    call c, $d9b6
    ld d, b
    ld d, b
    cp b
    dec b
    nop
    call c, $dabd
    ld d, b
    ld d, b
    ret nz

    dec b
    nop
    or c
    or a
    ld d, b
    ld d, b
    ld d, b
    ld [hl+], a
    nop
    nop
    or c
    cp e
    ld d, b
    ld d, b
    ld d, b
    ld a, [hl+]
    nop
    nop
    or c
    cp h
    ret nz

    ld d, b
    ld d, b
    inc l
    nop
    nop
    or d
    pop bc
    add $c1
    ld d, b
    sub h
    nop
    nop
    or d
    jp nz, Jump_047_50b6

    ld d, b
    sbc b
    nop
    nop
    or d
    jp nz, Jump_047_50d3

    ld d, b
    sbc [hl]
    nop
    nop
    or d
    rst $08
    ld d, b
    ld d, b
    ld d, b
    and d
    nop
    nop
    or h
    or d
    or h
    sbc $50
    adc $00
    nop
    or l
    call nz, $b2c4
    ld d, b
    ld [de], a
    ld bc, $b500
    call c, Call_047_50d8
    ld d, b
    ld [hl], $01
    nop
    or [hl]
    sub $b3
    dec sp
    ld d, b
    ld a, b
    ld bc, $b700
    ret


    or e
    ld d, b
    ld d, b
    sub h
    ld bc, $b700
    ld [c], a
    or e
    ld d, b
    ld d, b
    or b
    ld bc, $b700
    sbc $d6
    or e
    dec sp
    cp b
    ld bc, $2900
    jp nz, $b3d6

    dec sp
    call nc, $0001
    cp d
    ret


    or c
    call nz, $f450
    ld bc, $ba00
    ret


    rst $08
    or h
    ld d, b
    or $01
    nop
    cp d
    sbc $34
    ld d, b
    ld d, b
    inc c
    ld [bc], a
    nop
    inc l
    or [hl]
    sbc $50
    ld d, b
    inc a
    ld [bc], a
    nop
    inc l
    pop hl
    or e
    ret z

    sbc $70
    ld [bc], a
    nop
    cp l
    or d
    sub $b3
    dec sp
    adc [hl]
    ld [bc], a
    nop
    adc h
    adc a
    db $e3
    sub e
    ld d, b
    sbc [hl]
    ld [bc], a
    nop
    dec l
    rst $18
    call nz, Call_047_5050
    and d
    ld [bc], a
    nop
    adc h
    sub e
    xor h
    ld b, d
    ld d, b
    and [hl]
    ld [bc], a
    nop
    cp a
    ret


    or e
    pop bc
    ld d, b
    call nz, $0002
    jp nz, $c6b2

    ld d, b
    ld d, b
    ld a, $03
    nop
    jp nz, Jump_047_5027

    ld d, b
    ld d, b
    ld c, d
    inc bc
    nop
    inc [hl]
    sub $b3
    dec sp
    ld d, b
    cp d
    inc bc
    nop
    push bc
    jp nz, Jump_047_5050

    ld d, b
    jp c, $0003

    add $c1
    sub $b3
    dec sp
    ld b, $04
    nop
    jp z, $d22c

    ld d, b
    ld d, b
    jr c, jr_047_6eb3

    nop
    jp z, Jump_047_50d9

jr_047_6eb3:
    ld d, b
    ld d, b
    ld d, h
    inc b
    nop
    set 3, c
    ld d, b
    ld d, b
    ld d, b
    ld l, h
    inc b
    nop
    call z, Call_047_50d5
    ld d, b
    ld d, b
    add h
    inc b
    nop
    rst $08
    or d
    add $c1
    ld d, b
    add $04
    nop
    db $d3
    cp b
    sub $b3
    dec sp
    jr nc, jr_047_6edc

    nop
    sub $c5
    or [hl]
    ld d, b

jr_047_6edc:
    ld d, b
    db $76
    dec b
    nop
    sub $d9
    ld d, b
    ld d, b
    ld d, b
    ld a, [hl]
    dec b
    nop
    rst $10
    or d
    cp h
    pop hl
    or e
    adc b
    dec b
    nop
    or d
    ret nz

    cp h
    rst $08
    cp l
    sub d
    nop
    nop
    or l
    ret c

    rst $08
    cp l
    ld d, b
    ld [hl-], a
    ld bc, $b600
    rst $20
    and $50
    ld d, b
    inc a
    ld bc, $b600
    or d
    and $50
    ld d, b
    ld b, h
    ld bc, $b600
    cp h
    rst $10
    and $50
    ld d, b
    ld bc, $b600
    push bc
    and $50
    ld d, b
    ld l, d
    ld bc, $b600
    db $d3
    ld d, b
    ld d, b
    ld d, b
    db $76
    ld bc, $b800
    jp c, Jump_047_5050

    ld d, b
    jp z, $0001

    ld a, [hl+]
    dec hl
    or d
    rst $08
    cp l
    add sp, $01
    nop

jr_047_6f38:
    cp h
    ld h, $c1
    ld d, b
    ld d, b
    ld a, [hl-]
    ld [bc], a
    nop
    cp h
    rst $08
    cp l
    ld d, b
    ld d, b
    ld h, d
    ld [bc], a
    nop
    inc l
    ldh [$50], a
    ld d, b
    ld d, b
    ld l, d
    ld [bc], a
    nop
    inc l
    ldh [$de], a
    ld d, b
    ld d, b
    ld l, [hl]
    ld [bc], a
    nop
    cp h
    sub $b3
    ld d, b
    ld d, b
    ld a, h
    ld [bc], a
    nop
    ld l, $e7

jr_047_6f62:
    ld d, b
    ld d, b
    ld d, b
    xor h
    ld [bc], a
    nop
    cpl
    rst $20
    ld d, b
    ld d, b
    ld d, b
    cp h
    ld [bc], a
    nop
    ret nz

jr_047_6f71:
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    call nc, $0002

jr_047_6f78:
    jr nc, jr_047_6fca

    ld d, b
    ld d, b
    ld d, b
    sub $02
    nop

jr_047_6f80:
    jr nc, jr_047_6f38

    rst $10
    ret z

    ld d, b
    xor $02
    nop
    jr nc, jr_047_6fb8

    ld d, b
    ld d, b
    ld d, b
    db $f4

jr_047_6f8e:
    ld [bc], a
    nop
    jr nc, jr_047_6f71

    ret nz

    ld d, b
    ld d, b
    ld a, [$0002]
    jr nc, jr_047_6f62

    ld d, b
    ld d, b
    ld d, b
    cp $02
    nop
    jr nc, jr_047_6f78

    ld d, b
    ld d, b
    ld d, b
    db $10
    inc bc
    nop
    jr nc, jr_047_6f80

    ret z

    db $e3
    rst $20
    ld [de], a
    inc bc
    nop
    jr nc, jr_047_6f8e

    ld d, b
    ld d, b
    ld d, b
    ld h, $03
    nop

jr_047_6fb8:
    xor h
    adc h
    ld d, b
    ld d, b
    ld d, b
    ld c, h
    inc bc
    nop
    rst $18
    jp $deb6


    inc l
    ld d, d
    inc bc
    nop
    rst $18
    ld b, h

jr_047_6fca:
    push bc
    cp h
    ld d, b
    ld d, h
    inc bc
    nop
    jp nz, $d8d3

    ld d, b
    ld d, b
    ld d, [hl]
    inc bc
    nop
    jp $c5b2


    or d
    ld d, b
    ld h, h
    inc bc
    nop
    jp $d9b2


    ld d, b
    ld d, b
    ld h, [hl]
    inc bc
    nop
    inc sp
    db $e3
    cp l
    rst $20
    ld d, b
    ld l, b
    inc bc
    nop
    inc sp
    cp h
    ret nz

    ld d, b
    ld d, b
    ld [hl], h
    inc bc
    nop
    inc sp
    cp h
    ld [c], a
    and $50
    db $76
    inc bc
    nop
    inc sp
    cp h
    ld [c], a
    db $e3
    rst $20
    ld a, b
    inc bc
    nop
    inc sp
    cp l
    ld d, b
    ld d, b
    ld d, b
    ld a, d
    inc bc
    nop
    inc sp
    cp l
    or [hl]
    and $50
    ld a, h
    inc bc
    nop
    inc sp
    cp l
    sub $50
    ld d, b
    add b
    inc bc
    nop
    inc sp
    cp l
    call c, Call_047_5050
    add d
    inc bc
    nop
    inc [hl]
    or e
    push bc
    ret


    and $a4
    inc bc
    nop
    inc [hl]
    or e
    sub $e6
    ld d, b
    xor b
    inc bc
    nop
    call nz, $b2b6
    rst $18
    jp $03aa


    nop
    push bc
    ret


    ld d, b
    ld d, b
    ld d, b
    ldh [$03], a
    nop
    push bc
    ret


    or [hl]
    ld d, b
    ld d, b
    ld [c], a
    inc bc
    nop
    push bc
    ret


    jr nc, jr_047_70a4

    ld d, b
    db $e4
    inc bc
    nop
    push bc
    ret


    sub $50
    ld d, b
    and $03
    nop
    push bc
    sbc $30
    ret z

    ld d, b
    ld a, [c]
    inc bc
    nop
    push bc
    sbc $33
    cp l
    ld d, b
    ld hl, sp+$03
    nop
    push bc
    sbc $c3
    ret z

    ld d, b
    ld a, [$0003]
    ret z

    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld [de], a
    inc b
    nop
    ret z

    db $e3
    ld d, b
    ld d, b
    ld d, b
    inc d
    inc b
    nop
    ret


    ld d, b
    ld d, b
    ld d, b
    ld d, b
    inc e
    inc b
    nop
    ret


    and $50
    ld d, b
    ld d, b
    ld e, $04
    nop
    ld a, [hl-]
    rst $18
    or [hl]
    ret c

    ld d, b
    ld b, h
    inc b
    nop
    rst $08
    db $e3
    cp l
    rst $20

jr_047_70a4:
    ld d, b
    jp nz, $0004

    rst $08
    cp l
    ld d, b
    ld d, b
    ld d, b
    ret c

    inc b
    nop
    rst $08
    cp l
    call c, Call_047_5050
    jp c, $0004

    rst $08
    cp [hl]
    sbc $50
    ld d, b
    call c, $0004
    ret nc

    ret nz

    or d
    push bc
    ld d, b
    ld a, [$0004]
    sub $e7
    ld d, b
    ld d, b
    ld d, b
    ld h, b
    dec b
    nop
    sub $e3
    ld d, b
    ld d, b
    ld d, b
    ld l, b
    dec b
    nop
    sub $e3
    sbc $50
    ld d, b
    ld l, h
    dec b
    nop
    sub $c8
    ld d, b
    ld d, b
    ld d, b
    ld a, b
    dec b
    nop
    reti


    sub $50
    ld d, b
    ld d, b
    and d
    dec b
    nop
    call c, Call_047_50b9
    ld d, b
    ld d, b
    cp h
    dec b
    nop
    call c, $e7d6
    ld d, b
    ld d, b
    jp nc, $0005

    or c
    or c
    ld d, b
    ld d, b
    ld d, b
    ld [de], a
    nop
    nop
    or c
    rst $18
    pop bc
    ld d, b
    ld d, b
    inc a
    nop
    nop
    or c
    ret


    ld d, b
    ld d, b
    ld d, b
    ld c, [hl]
    nop
    nop
    or c
    ret c

    ldh [$50], a
    ld d, b
    ld e, h
    nop
    nop
    or c
    jp c, Jump_047_5050

    ld d, b
    ld h, [hl]
    nop
    nop
    or c
    jp c, Jump_047_50ca

    ld d, b
    ld l, b
    nop
    nop
    or c
    sbc $c5
    ld d, b
    ld d, b
    ld l, h
    nop
    nop
    cp d
    or e
    ld d, b
    ld d, b
    ld d, b
    call c, $0001
    cp d
    rst $18
    pop bc
    ld d, b
    ld d, b
    db $ec
    ld bc, $ba00
    ret


    ld d, b
    ld d, b
    ld d, b
    ld a, [c]
    ld bc, $ba00
    ret c

    ldh [$50], a
    ld d, b
    cp $01
    nop
    cp d
    jp c, Jump_047_5050

    ld d, b
    nop
    ld [bc], a
    nop
    cp d
    jp c, $e730

    ld d, b
    ld [bc], a
    ld [bc], a
    nop
    cp d
    jp c, Jump_047_50ca

    ld d, b
    inc b
    ld [bc], a
    nop
    cp d
    sbc $c5
    ld d, b
    ld d, b
    ld c, $02
    nop
    cp a
    or e
    ld d, b
    ld d, b
    ld d, b
    cp [hl]
    ld [bc], a
    nop
    cp a
    rst $18
    pop bc
    ld d, b
    ld d, b
    ret nz

    ld [bc], a
    nop
    cp a
    ret


    ld d, b
    ld d, b
    ld d, b
    jp nz, $0002

    cp a
    ret c

    ldh [$50], a
    ld d, b
    add $02
    nop
    cp a
    jp c, Jump_047_5050

    ld d, b
    ret z

    ld [bc], a
    nop
    cp a
    jp c, $e730

    ld d, b
    call z, $0002
    cp a
    jp c, Jump_047_50ca

    ld d, b
    ret nc

    ld [bc], a
    nop
    cp a
    sbc $c5
    ld d, b
    ld d, b
    jp nc, $0002

    inc [hl]
    or e
    ld d, b
    ld d, b
    ld d, b
    sbc b
    inc bc
    nop
    inc [hl]
    rst $18
    pop bc
    ld d, b
    ld d, b
    or d
    inc bc
    nop
    inc [hl]
    ret


    ld d, b
    ld d, b
    ld d, b
    or h
    inc bc
    nop
    inc [hl]
    ret c

    ldh [$50], a
    ld d, b
    ret nz

    inc bc
    nop
    inc [hl]
    jp c, Jump_047_5050

    ld d, b
    jp nz, $0003

    inc [hl]
    jp c, Jump_047_50dd

    ld d, b
    ret z

    inc bc
    nop
    inc [hl]
    sbc $c5
    ld d, b
    ld d, b
    jp z, $0003

    push bc
    add $50
    ld d, b
    ld d, b
    sbc $03
    nop
    push bc
    sbc $b6
    ld d, b
    ld d, b
    db $ec
    inc bc
    nop
    push bc
    sbc $30
    ld d, b
    ld d, b
    ldh a, [$03]
    nop
    push bc
    sbc $33
    ld d, b
    ld d, b
    or $03
    nop
    push bc
    sbc $c5
    sbc $30
    nop
    inc b
    nop
    push bc
    sbc $c9
    ld d, b
    ld d, b
    ld [bc], a
    inc b
    nop
    ld [de], a
    ld bc, $0224
    ld b, l
    dec b
    ld b, l
    dec b
    ld b, d
    dec b
    ld b, d
    dec b
    ld b, l
    dec b
    ld b, d
    dec b
    daa
    inc bc
    daa
    inc bc
    ld b, l
    dec b
    daa
    inc bc
    ld b, d
    dec b
    inc h
    ld [bc], a
    ld [de], a
    nop
    cpl
    nop
    ld [hl], b
    nop
    ld e, $00
    xor h
    nop
    ld de, $ce00
    nop
    add hl, bc
    nop
    ldh [rP1], a
    ld l, $00
    inc a
    ld bc, $0024
    add h
    ld bc, $001b
    cp d
    ld bc, $0009
    call z, $0701
    nop
    jp c, $1c01

    nop
    ld [de], a
    ld [bc], a
    ld [de], a
    nop
    ld [hl], $02
    dec hl
    nop
    adc h
    ld [bc], a
    stop
    xor h
    ld [bc], a
    ld [$bc00], sp
    ld [bc], a
    inc c
    nop
    call nc, $2c02
    nop
    inc l
    inc bc
    add hl, bc
    nop
    ld a, $03
    ld [de], a
    nop
    ld h, d
    inc bc
    dec de
    nop
    sbc b
    inc bc
    ld a, [de]
    nop
    call z, $1c03
    nop
    inc b
    inc b
    dec b
    nop
    ld c, $04
    ld [bc], a
    nop
    ld [de], a
    inc b
    dec b
    nop
    inc e
    inc b
    rlca
    nop
    ld a, [hl+]
    inc b
    ld d, $00
    ld d, [hl]
    inc b
    ld c, $00
    ld [hl], d
    inc b
    inc c
    nop
    adc d
    inc b
    dec b
    nop
    sub h
    inc b
    ld d, $00
    ret nz

    inc b
    add hl, de
    nop
    ld a, [c]
    inc b
    ld c, $00
    ld c, $05
    ld [$1e00], sp
    dec b
    rlca
    nop
    inc l
    dec b
    add hl, bc
    nop
    ld a, $05
    dec c
    nop
    ld e, b
    dec b
    inc b
    nop
    ld h, b
    dec b
    inc d
    nop
    adc b
    dec b
    dec bc
    nop
    sbc [hl]
    dec b
    ld bc, $a000
    dec b
    ld [bc], a
    nop
    and h
    dec b
    ld [bc], a
    nop
    xor b
    dec b
    ld [bc], a
    nop
    xor h
    dec b
    dec d
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0001
    ld bc, $0001
    nop
    nop
    ld bc, $0101
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
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $7338
    ld l, d
    ld [hl], e
    sbc h
    ld [hl], e
    ld l, $74
    dec a
    ld [hl], h
    ld c, h
    ld [hl], h
    ld e, e
    ld [hl], h
    ld l, d
    ld [hl], h
    ld a, c
    ld [hl], h
    adc b
    ld [hl], h
    sub a
    ld [hl], h
    and [hl]
    ld [hl], h
    or l
    ld [hl], h
    call nz, $d374
    ld [hl], h
    ld [c], a
    ld [hl], h
    pop af
    ld [hl], h
    nop
    ld [hl], l
    rrca
    ld [hl], l
    ld e, $75
    dec l
    ld [hl], l
    inc a
    ld [hl], l
    ld c, e
    ld [hl], l
    ld e, d
    ld [hl], l
    ld l, c
    ld [hl], l
    ld a, b
    ld [hl], l
    add a
    ld [hl], l
    sub [hl]
    ld [hl], l
    inc sp
    ld [hl], h
    ld b, d
    ld [hl], h
    ld d, c
    ld [hl], h
    ld h, b
    ld [hl], h
    ld l, a
    ld [hl], h
    ld a, [hl]
    ld [hl], h
    adc l
    ld [hl], h
    sbc h
    ld [hl], h
    xor e
    ld [hl], h
    cp d
    ld [hl], h
    ret


    ld [hl], h
    ret c

    ld [hl], h
    rst $20
    ld [hl], h
    or $74
    dec b
    ld [hl], l
    inc d
    ld [hl], l
    inc hl
    ld [hl], l
    ld [hl-], a
    ld [hl], l
    ld b, c
    ld [hl], l
    ld d, b
    ld [hl], l
    ld e, a
    ld [hl], l
    ld l, [hl]
    ld [hl], l
    ld a, l
    ld [hl], l
    adc h
    ld [hl], l
    sbc e
    ld [hl], l
    jr c, jr_047_7412

    ld b, a
    ld [hl], h
    ld d, [hl]
    ld [hl], h
    ld h, l
    ld [hl], h
    ld [hl], h
    ld [hl], h
    add e
    ld [hl], h
    sub d
    ld [hl], h
    and c
    ld [hl], h
    or b
    ld [hl], h
    cp a
    ld [hl], h
    adc $74
    db $dd
    ld [hl], h
    db $ec
    ld [hl], h
    ei
    ld [hl], h
    ld a, [bc]
    ld [hl], l
    add hl, de
    ld [hl], l
    jr z, jr_047_7433

    scf
    ld [hl], l
    ld b, [hl]
    ld [hl], l
    ld d, l
    ld [hl], l
    ld h, h
    ld [hl], l
    ld [hl], e
    ld [hl], l
    add d
    ld [hl], l
    sub c
    ld [hl], l
    and b
    ld [hl], l
    call nc, $f273
    ld [hl], e
    db $10
    ld [hl], h
    and l
    ld [hl], l
    or h
    ld [hl], l
    jp $d275


    ld [hl], l
    pop hl
    ld [hl], l
    ldh a, [$75]
    rst $38
    ld [hl], l
    ld c, $76
    dec e
    db $76
    inc l
    db $76
    dec sp
    db $76
    ld c, d
    db $76
    ld e, c
    db $76
    ld l, b
    db $76
    ld [hl], a
    db $76
    xor d
    ld [hl], l
    cp c
    ld [hl], l
    ret z

    ld [hl], l
    rst $10
    ld [hl], l
    and $75
    push af
    ld [hl], l
    inc b
    db $76
    inc de
    db $76
    ld [hl+], a
    db $76
    ld sp, $4076
    db $76
    ld c, a
    db $76
    ld e, [hl]
    db $76
    ld l, l
    db $76
    ld a, h
    db $76
    xor a
    ld [hl], l

jr_047_7412:
    cp [hl]
    ld [hl], l
    call $dc75
    ld [hl], l
    db $eb
    ld [hl], l
    ld a, [$0975]
    db $76
    jr jr_047_7496

    daa
    db $76
    ld [hl], $76
    ld b, l
    db $76
    ld d, h
    db $76
    ld h, e
    db $76
    ld [hl], d
    db $76
    add c
    db $76
    ld d, $00
    ld b, b
    ld a, e
    ld d, b

jr_047_7433:
    ld d, $3b
    ld b, b
    ld a, e
    ld d, b
    ld d, $60
    ld b, b
    ld a, e
    ld d, b
    ld d, $80
    ld b, b
    ld a, e
    ld d, b
    ld d, $a3
    ld b, b
    ld a, e
    ld d, b
    ld d, $c4
    ld b, b
    ld a, e
    ld d, b
    ld d, $e1
    ld b, b
    ld a, e
    ld d, b
    ld d, $08
    ld b, c
    ld a, e
    ld d, b
    ld d, $2a
    ld b, c
    ld a, e
    ld d, b
    ld d, $4d
    ld b, c
    ld a, e
    ld d, b
    ld d, $6f
    ld b, c
    ld a, e
    ld d, b
    ld d, $90
    ld b, c
    ld a, e
    ld d, b
    ld d, $ae
    ld b, c
    ld a, e
    ld d, b
    ld d, $d0
    ld b, c
    ld a, e
    ld d, b
    ld d, $f4
    ld b, c
    ld a, e
    ld d, b
    ld d, $16
    ld b, d
    ld a, e
    ld d, b
    ld d, $38
    ld b, d
    ld a, e
    ld d, b
    ld d, $59
    ld b, d
    ld a, e
    ld d, b
    ld d, $7b
    ld b, d
    ld a, e
    ld d, b
    ld d, $a0
    ld b, d
    ld a, e
    ld d, b
    ld d, $c0
    ld b, d
    ld a, e

jr_047_7496:
    ld d, b
    ld d, $d9
    ld b, d
    ld a, e
    ld d, b
    ld d, $fe
    ld b, d
    ld a, e
    ld d, b
    ld d, $20
    ld b, e
    ld a, e
    ld d, b
    ld d, $3f
    ld b, e
    ld a, e
    ld d, b
    ld d, $6c
    ld b, e
    ld a, e
    ld d, b
    ld d, $89
    ld b, e
    ld a, e
    ld d, b
    ld d, $ad
    ld b, e
    ld a, e
    ld d, b
    ld d, $c5
    ld b, e
    ld a, e
    ld d, b
    ld d, $e5
    ld b, e
    ld a, e
    ld d, b
    ld d, $02
    ld b, h
    ld a, e
    ld d, b
    ld d, $11
    ld b, h
    ld a, e
    ld d, b
    ld d, $1f
    ld b, h
    ld a, e
    ld d, b
    ld d, $2e
    ld b, h
    ld a, e
    ld d, b
    ld d, $61
    ld b, h
    ld a, e
    ld d, b
    ld d, $a0
    ld b, h
    ld a, e
    ld d, b
    ld d, $d6
    ld b, h
    ld a, e
    ld d, b
    ld d, $f5
    ld b, h
    ld a, e
    ld d, b
    ld d, $12
    ld b, l
    ld a, e
    ld d, b
    ld d, $32
    ld b, l
    ld a, e
    ld d, b
    ld d, $4b
    ld b, l
    ld a, e
    ld d, b
    ld d, $65
    ld b, l
    ld a, e
    ld d, b
    ld d, $80
    ld b, l
    ld a, e
    ld d, b
    ld d, $9d
    ld b, l
    ld a, e
    ld d, b
    ld d, $b5
    ld b, l
    ld a, e
    ld d, b
    ld d, $d3
    ld b, l
    ld a, e
    ld d, b
    ld d, $ee
    ld b, l
    ld a, e
    ld d, b
    ld d, $0d
    ld b, [hl]
    ld a, e
    ld d, b
    ld d, $31
    ld b, [hl]
    ld a, e
    ld d, b
    ld d, $51
    ld b, [hl]
    ld a, e
    ld d, b
    ld d, $8f
    ld b, [hl]
    ld a, e
    ld d, b
    ld d, $b1
    ld b, [hl]
    ld a, e
    ld d, b
    ld d, $d0
    ld b, [hl]
    ld a, e
    ld d, b
    ld d, $08
    ld b, a
    ld a, e
    ld d, b
    ld d, $20
    ld b, a
    ld a, e
    ld d, b
    ld d, $3e
    ld b, a
    ld a, e
    ld d, b
    ld d, $5b
    ld b, a
    ld a, e
    ld d, b
    ld d, $7f
    ld b, a
    ld a, e
    ld d, b
    ld d, $98
    ld b, a
    ld a, e
    ld d, b
    ld d, $bb
    ld b, a
    ld a, e
    ld d, b
    ld d, $d8
    ld b, a
    ld a, e
    ld d, b
    ld d, $18
    ld c, b
    ld a, e
    ld d, b
    ld d, $37
    ld c, b
    ld a, e
    ld d, b
    ld d, $58
    ld c, b
    ld a, e
    ld d, b
    ld d, $76
    ld c, b
    ld a, e
    ld d, b
    ld d, $98
    ld c, b
    ld a, e
    ld d, b
    ld d, $b1
    ld c, b
    ld a, e
    ld d, b
    ld d, $d5
    ld c, b
    ld a, e
    ld d, b
    ld d, $f0
    ld c, b
    ld a, e
    ld d, b
    ld d, $11
    ld c, c
    ld a, e
    ld d, b
    ld d, $28
    ld c, c
    ld a, e
    ld d, b
    ld d, $49
    ld c, c
    ld a, e
    ld d, b
    ld d, $69
    ld c, c
    ld a, e
    ld d, b
    ld d, $86
    ld c, c
    ld a, e
    ld d, b
    ld d, $9b
    ld c, c
    ld a, e
    ld d, b
    ld d, $bd
    ld c, c
    ld a, e
    ld d, b
    ld d, $d9
    ld c, c
    ld a, e
    ld d, b
    ld d, $f7
    ld c, c
    ld a, e
    ld d, b
    ld d, $0a
    ld c, d
    ld a, e
    ld d, b
    ld d, $2a
    ld c, d
    ld a, e
    ld d, b
    ld d, $47
    ld c, d
    ld a, e
    ld d, b
    ld d, $64
    ld c, d
    ld a, e
    ld d, b
    ld d, $82
    ld c, d
    ld a, e
    ld d, b
    ld d, $9d
    ld c, d
    ld a, e
    ld d, b
    ld d, $bf
    ld c, d
    ld a, e
    ld d, b
    ld d, $de
    ld c, d
    ld a, e
    ld d, b
    ld d, $fa
    ld c, d
    ld a, e
    ld d, b
    ld d, $19
    ld c, e
    ld a, e
    ld d, b
    ld d, $37
    ld c, e
    ld a, e
    ld d, b
    ld d, $55
    ld c, e
    ld a, e
    ld d, b
    ld d, $70
    ld c, e
    ld a, e
    ld d, b
    ld d, $92
    ld c, e
    ld a, e
    ld d, b
    ld d, $b6
    ld c, e
    ld a, e
    ld d, b
    ld d, $d9
    ld c, e
    ld a, e
    ld d, b
    ld d, $f3
    ld c, e
    ld a, e
    ld d, b
    ld d, $15
    ld c, h
    ld a, e
    ld d, b
    ld d, $39
    ld c, h
    ld a, e
    ld d, b
    ld d, $55
    ld c, h
    ld a, e
    ld d, b
    ld d, $75
    ld c, h
    ld a, e
    ld d, b
    ld d, $92
    ld c, h
    ld a, e
    ld d, b
    ld d, $a7
    ld c, h
    ld a, e
    ld d, b
    ld d, $c1
    ld c, h
    ld a, e
    ld d, b
    ld d, $d7
    ld c, h
    ld a, e
    ld d, b
    ld d, $ef
    ld c, h
    ld a, e
    ld d, b
    ld d, $0e
    ld c, l
    ld a, e
    ld d, b
    ld d, $2b
    ld c, l
    ld a, e
    ld d, b
    ld d, $4d
    ld c, l
    ld a, e
    ld d, b
    ld d, $6b
    ld c, l
    ld a, e
    ld d, b
    ld d, $8d
    ld c, l
    ld a, e
    ld d, b
    ld d, $af
    ld c, l
    ld a, e
    ld d, b
    ld d, $cf
    ld c, l
    ld a, e
    ld d, b
    ld d, $ed
    ld c, l
    ld a, e
    ld d, b
    ld d, $0d
    ld c, [hl]
    ld a, e
    ld d, b
    ld d, $2a
    ld c, [hl]
    ld a, e
    ld d, b
    ld d, $4b
    ld c, [hl]
    ld a, e
    ld d, b
    ld d, $70
    ld c, [hl]
    ld a, e
    ld d, b
    ld d, $8a
    ld c, [hl]
    ld a, e
    ld d, b
    ld d, $a8
    ld c, [hl]
    ld a, e
    ld d, b
    ld d, $c9
    ld c, [hl]
    ld a, e
    ld d, b
    ld d, $e8
    ld c, [hl]
    ld a, e
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

Jump_047_7850:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_047_7e81:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_047_7f33:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_047_7fb7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_047_7fce:
    nop
    nop
    nop
    nop
    nop

Jump_047_7fd3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
