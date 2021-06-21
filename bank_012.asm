; Disassembly of "crystalkaizo.gbc"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $012", ROMX[$4000], BANK[$12]

Call_012_4000:
    ld a, $01
    ld [$d474], a
    xor a
    ld [$d473], a
    ld [$d472], a
    ld [$d475], a
    ld [$d476], a
    ld [$d477], a
    ld [$d478], a
    ld [$d002], a
    ld [$d003], a
    ld a, [$d479]
    res 0, a
    ld [$d479], a
    ld a, [$d479]
    res 1, a
    ld [$d479], a
    ret


Call_012_402f:
    xor a
    set 6, a
    ld [$d002], a
    ld hl, $d003
    set 0, [hl]
    ld a, c
    and a
    call z, Call_012_4000
    call $31f3
    call Call_012_4d3d
    ld a, [$d479]
    bit 1, a
    jr z, jr_012_405a

    ld a, [$d003]
    set 0, a
    set 1, a
    set 2, a
    set 3, a
    ld [$d003], a

jr_012_405a:
    call Call_012_46bf
    call $0e5f
    ld de, $48c3
    ld hl, $9100
    ld bc, $1201
    call $0f1e
    ld de, $48cb
    ld hl, $9110
    ld bc, $1201
    call $0f1e
    call Call_012_63a7
    call $31f3
    ld a, [$d002]
    bit 6, a
    jr z, jr_012_408a

    call Call_012_4689
    jr jr_012_40d7

jr_012_408a:
    ld a, $05
    ld [$c2a7], a
    ld a, $5e
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    ld c, $14
    call $0468
    ld b, $01
    call $530f
    call $31f3
    ld hl, $c4a0
    ld b, $02
    ld c, $14
    call $0fb6
    ld hl, $c4b4
    ld a, $0c
    ld [hl], a
    ld bc, $0013
    add hl, bc
    ld [hl], a
    ld de, $4471
    ld hl, $c4b5
    call $1078
    ld hl, $c4c8
    ld b, $0a
    ld c, $12
    call Call_012_4cdc
    ld hl, $c4f2
    ld de, $4482
    call $1078

jr_012_40d7:
    ld hl, $c51a
    ld de, $4489
    call $1078
    ld hl, $c542
    ld de, $448d
    call $1078
    ld hl, $c56a
    ld de, $4495
    call $1078
    ld hl, $c592
    ld de, $449e
    call $1078
    ld a, [$d002]
    bit 6, a
    jr nz, jr_012_4113

    ld a, [$d472]
    ld hl, $44fb
    call $3411
    ld d, h
    ld e, l
    ld hl, $c4fb
    call $1078

jr_012_4113:
    ld hl, $c523
    call Call_012_47ec
    ld a, [$d474]
    dec a
    ld hl, $455b
    call $3411
    ld d, h
    ld e, l
    ld hl, $c54b
    call $1078
    ld hl, $c573
    call Call_012_49ea
    ld hl, $c5b8
    ld b, $02
    ld c, $12
    call $0fe8
    ld hl, $c5e1
    ld de, $4275
    call $1078
    call Call_012_4187
    call $3200
    call $32f9
    call $1bc9
    ld hl, $cfa9
    ld b, [hl]
    push bc
    jr jr_012_415f

Jump_012_4157:
    call $1bd3
    ld hl, $cfa9
    ld b, [hl]
    push bc

jr_012_415f:
    bit 0, a
    jp nz, Jump_012_420d

    ld b, a
    ld a, [$d002]
    bit 6, a
    jr z, jr_012_4177

    ld hl, $d479
    bit 1, [hl]
    jr z, jr_012_4177

    bit 1, b
    jr nz, jr_012_417a

jr_012_4177:
    jp Jump_012_4272


jr_012_417a:
    call $31f3
    call Call_012_4d30
    pop bc
    call $0fc8
    ld a, $ff
    ret


Call_012_4187:
    ld a, [$d479]
    bit 1, a
    jr nz, jr_012_41f1

    ld a, [$d003]
    ld d, a
    call Call_012_4725
    jr c, jr_012_41a2

    ld bc, HeaderLogo
    ld hl, $c592
    call $0fb6
    jr jr_012_41ad

jr_012_41a2:
    push de
    ld hl, $c592
    ld de, $449e
    call $1078
    pop de

jr_012_41ad:
    ld a, [$d002]
    bit 6, a
    jr nz, jr_012_41c1

    bit 0, d
    jr nz, jr_012_41c1

    ld bc, $0108
    ld hl, $c4fb
    call $0fb6

jr_012_41c1:
    bit 1, d
    jr nz, jr_012_41ce

    ld bc, $0108
    ld hl, $c523
    call $0fb6

jr_012_41ce:
    bit 2, d
    jr nz, jr_012_41db

    ld bc, $0208
    ld hl, $c537
    call $0fb6

jr_012_41db:
    bit 3, d
    jr nz, jr_012_41f1

    ld a, [$d479]
    bit 0, a
    jr nz, jr_012_41f8

    ld bc, $0108
    ld hl, $c573
    call $0fb6
    jr jr_012_4201

jr_012_41f1:
    ld a, [$d479]
    bit 0, a
    jr nz, jr_012_4201

jr_012_41f8:
    ld hl, $c573
    ld de, $4202
    call $1078

jr_012_4201:
    ret


    sub e
    and h
    xor e
    xor e
    ld a, a
    adc e
    and b
    or e
    and h
    or c
    ld d, b

Jump_012_420d:
    call $1bee
    ld hl, $cfa9
    ld a, [hl]
    push af
    ld a, [$d002]
    bit 6, a
    jr z, jr_012_421f

    pop af
    inc a
    push af

jr_012_421f:
    pop af
    cp $01
    jr z, jr_012_428d

    cp $02
    jp z, Jump_012_476f

    cp $03
    jp z, Jump_012_4304

    cp $04
    jp z, Jump_012_48d3

    ld a, $02
    call $1ff8
    ld a, [$d002]
    bit 6, a
    jr z, jr_012_425c

    jr jr_012_425c

    ld hl, $c5cd
    ld b, $02
    ld c, $12
    call $0fb6
    ld de, $44a1

Jump_012_424e:
    ld hl, $c5e1
    call $1078
    call $31f6
    ld c, $30
    call $0468

jr_012_425c:
    call $31f3
    call Call_012_4d30
    pop bc
    call $0fc8
    ld b, $08
    call $3340
    ld hl, $d479
    set 1, [hl]
    xor a
    ret


Jump_012_4272:
    jp Jump_012_440c


    adc a
    and h
    or c
    or d
    xor [hl]
    xor l
    and b
    xor e
    ld a, a
    adc b
    xor l
    and l
    xor [hl]
    ld d, b

Call_012_4283:
    ld bc, $0212
    ld hl, $c5cd
    call $0fb6
    ret


jr_012_428d:
    call Call_012_4283
    ld hl, $c5e1
    ld de, $44b1
    call $1078
    ld hl, $44f1
    call $1d35
    call Call_012_473c
    ld hl, $c4d3
    ld b, $04
    ld c, $07
    call Call_012_4cdc
    ld hl, $c4fd
    ld de, $44fb
    call $1078
    ld hl, $c525
    ld de, $44ff
    call $1078
    call $31f6
    ld a, [$d472]
    inc a
    ld [$cf88], a
    call $1bc9
    call $2009
    call $1c07
    bit 0, a
    jp z, Jump_012_440c

    ld hl, $cfa9
    ld a, [hl]
    ld hl, $44fb
    cp $01
    jr z, jr_012_42ed

jr_012_42e1:
    ld a, [hl+]
    cp $50
    jr nz, jr_012_42e1

    ld a, $01
    ld [$d472], a
    jr jr_012_42f1

jr_012_42ed:
    xor a
    ld [$d472], a

jr_012_42f1:
    ld d, h
    ld e, l
    ld hl, $c4fb
    call $1078
    ld a, [$d003]
    set 0, a
    ld [$d003], a
    jp Jump_012_440c


Jump_012_4304:
    call Call_012_4283
    ld hl, $c5e1
    ld de, $44cf
    call $1078
    ld hl, $4504
    call $1d35
    ld hl, $4513
    call $1d35
    ld hl, $c4aa
    ld b, $0c
    ld c, $08
    call Call_012_4cdc
    ld a, [$cf88]
    ld b, a
    ld a, [$d0e4]
    ld c, a
    push bc
    ld a, [$d474]
    dec a
    cp $29
    jr c, jr_012_433f

    sub $29
    inc a
    ld [$cf88], a
    ld a, $29

jr_012_433f:
    ld [$d0e4], a
    ld a, $41
    ld hl, $4148
    rst $08

jr_012_4348:
    call $350c
    ld de, $0629
    call Call_012_4383
    jr c, jr_012_4348

    ld d, a
    pop bc
    ld a, b
    ld [$cf88], a
    ld a, c
    ld [$d0e4], a
    ld a, d
    push af
    call $1c07
    call $1c07
    pop af
    ldh a, [$a7]
    bit 0, a
    jr z, jr_012_4377

    call Call_012_43bb
    ld a, [$d003]
    set 2, a
    ld [$d003], a

jr_012_4377:
    call Call_012_4187
    ld a, $41
    ld hl, $4148
    rst $08
    jp Jump_012_440c


Call_012_4383:
    push bc
    push af
    bit 5, a
    jr nz, jr_012_4390

    bit 4, a
    jr nz, jr_012_439f

    and a
    jr jr_012_43b7

jr_012_4390:
    ld a, [$d0e4]
    sub d
    ld [$d0e4], a
    jr nc, jr_012_43af

    xor a
    ld [$d0e4], a
    jr jr_012_43af

jr_012_439f:
    ld a, [$d0e4]
    add d
    ld [$d0e4], a
    cp e
    jr c, jr_012_43af

    ld a, e
    ld [$d0e4], a
    jr jr_012_43af

jr_012_43af:
    ld hl, $cfa9
    ld a, [hl]
    ld [$cf88], a
    scf

jr_012_43b7:
    pop bc
    ld a, b
    pop bc
    ret


Call_012_43bb:
    ld hl, $cf77
    ld a, [hl]
    inc a
    ld [$d474], a
    dec a
    ld b, a
    ld hl, $455b

jr_012_43c8:
    and a
    jr z, jr_012_43d5

jr_012_43cb:
    ld a, [hl+]
    cp $50
    jr nz, jr_012_43cb

    ld a, b
    dec a
    ld b, a
    jr jr_012_43c8

jr_012_43d5:
    ld d, h
    ld e, l
    ld b, $02
    ld c, $08
    ld hl, $c537
    call $0fb6
    ld hl, $c54b
    call $1078
    ret


    push de
    ld hl, $455b
    ld a, [$cf74]
    cp $ff
    jr nz, jr_012_43f8

    ld hl, $4682
    jr jr_012_4405

jr_012_43f8:
    ld d, a
    and a
    jr z, jr_012_4405

jr_012_43fc:
    ld a, [hl+]
    cp $50
    jr nz, jr_012_43fc

    ld a, d
    dec a
    jr jr_012_43f8

jr_012_4405:
    ld d, h
    ld e, l
    pop hl
    call $1078
    ret


Jump_012_440c:
    call Call_012_4187
    call Call_012_4283
    ld hl, $c5e1
    ld de, $4275
    call $1078
    call Call_012_46bf
    pop bc
    ld hl, $cfa9
    ld [hl], b
    ld a, [$d002]
    bit 6, a
    jr nz, jr_012_4437

    ld b, $09
    ld c, $01
    ld hl, $c4f1
    call $0fb6
    jp Jump_012_4157


jr_012_4437:
    ld b, $07
    ld c, $01
    ld hl, $c519
    call $0fb6
    jp Jump_012_4157


Call_012_4444:
    push bc
    push af
    push de
    push hl
    ld hl, $445d

jr_012_444b:
    and a
    jr z, jr_012_4453

    inc hl
    inc hl
    dec a
    jr jr_012_444b

jr_012_4453:
    ld d, h
    ld e, l
    pop hl
    call $1078
    pop de
    pop af
    pop bc
    ret


    or $50
    rst $30
    ld d, b
    ld hl, sp+$50
    ld sp, hl
    ld d, b
    ld a, [$fb50]
    ld d, b
    db $fc
    ld d, b
    db $fd
    ld d, b
    cp $50
    rst $38
    ld d, b
    ld a, a
    ld a, a
    adc h
    xor [hl]
    and c
    xor b
    xor e
    and h
    ld a, a
    adc a
    or c
    xor [hl]
    and l
    xor b
    xor e
    and h
    ld d, b
    add [hl]
    and h
    xor l
    and e
    and h
    or c
    ld d, b
    add b
    and [hl]
    and h
    ld d, b
    add b
    and e
    and e
    or c
    and h
    or d
    or d
    ld d, b
    sbc c
    xor b
    xor a
    ld a, a
    add d
    xor [hl]
    and e
    and h
    ld d, b
    adc [hl]
    adc d
    ld d, b
    adc a
    or c
    xor [hl]
    and l
    xor b
    xor e
    and h
    ld a, a
    add d
    and a
    and b
    xor l
    and [hl]
    and h
    and e
    ld d, b
    add c
    xor [hl]
    cp b
    ld a, a
    xor [hl]
    or c
    ld a, a
    and [hl]
    xor b
    or c
    xor e
    and $50
    add a
    xor [hl]
    or [hl]
    ld a, a
    xor [hl]
    xor e
    and e
    ld a, a
    and b
    or c
    and h
    ld a, a
    cp b
    xor [hl]
    or h
    and $50
    sub [hl]
    and a
    and h
    or c
    and h
    ld a, a
    and e
    xor [hl]
    ld a, a
    cp b
    xor [hl]
    or h
    ld a, a
    xor e
    xor b
    or l
    and h
    and $50
    sbc b
    xor [hl]
    or h
    or c
    ld a, a
    cp c
    xor b
    xor a
    ld a, a
    and d
    xor [hl]
    and e
    and h
    and $50
    ld b, b
    ld [bc], a
    dec bc
    rlca
    inc de
    ld sp, hl
    ld b, h
    ld bc, $02a0
    add c
    xor [hl]
    cp b
    ld d, b
    add [hl]
    xor b
    or c
    xor e
    ld d, b
    ld b, b
    nop
    ld a, [bc]
    ld de, $4013
    dec b
    ld a, [bc]
    rlca
    inc de
    ld b, b
    add hl, bc
    ld a, [bc]
    dec bc
    inc de
    ld b, b
    ld bc, $0c0b
    ld [de], a
    dec de
    ld b, l
    ld bc, $061d
    nop
    ld bc, $2b12
    ld b, l
    ld [de], a
    add sp, $43
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $00
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
    jr jr_012_455f

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_012_456f

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
    rst $38
    or c
    or d
    pop bc
    cp c

jr_012_455f:
    sbc $50
    or c
    or l
    db $d3
    ret c

    cp c
    sbc $50
    or c
    or a
    ret nz

    cp c
    sbc $50
    or d

jr_012_456f:
    cp h
    or [hl]
    call c, $deb9
    ld d, b
    or d
    ld a, [hl-]
    rst $10
    or a
    cp c
    sbc $50
    or d
    call c, $b9c3
    sbc $50
    or h
    set 2, d
    cp c
    sbc $50
    or l
    or l
    or d
    ret nz

    cp c
    sbc $50
    or l
    or l
    cp e
    or [hl]
    call z, $b550
    or [hl]
    call nc, $b9cf
    sbc $50
    or l
    or a
    push bc
    call c, $deb9
    ld d, b
    or [hl]
    ld h, $dc
    cp c
    sbc $50

jr_012_45a9:
    or [hl]
    ld a, [hl+]
    cp h
    rst $08
    cp c
    sbc $50
    or [hl]
    push bc
    ld h, $dc
    cp c
    sbc $50
    daa
    call z, $deb9
    ld d, b
    or a
    ld [c], a
    or e
    call nz, Call_012_50cc
    cp b
    rst $08
    db $d3
    call nz, $deb9
    ld d, b
    jr z, jr_012_45a9

    rst $08
    cp c
    sbc $50
    cp d
    or e
    pop bc
    cp c
    sbc $50
    cp e
    or d
    ret nz

    rst $08
    cp c
    sbc $50
    cp e
    ld h, $b9
    sbc $50
    cp h
    ld h, $b9
    sbc $50
    cp h
    dec l
    or l
    or [hl]
    cp c
    sbc $50
    cp h
    rst $08
    ret z

    cp c
    sbc $50
    pop bc
    ld a, [hl-]
    cp c
    sbc $50
    call nz, $b7b3
    ld [c], a
    or e
    call nz, $c450
    cp b
    cp h
    rst $08
    cp c
    sbc $50
    call nz, $27c1
    cp c
    sbc $50
    call nz, $c4df
    ret c

    cp c
    sbc $50
    call nz, $cfd4
    cp c
    sbc $50
    push bc
    ld h, $bb
    or a
    cp c
    sbc $50
    push bc
    ld h, $c9
    cp c
    sbc $50
    push bc
    rst $10
    cp c
    sbc $50
    add $b2
    ld h, $c0
    cp c
    sbc $50
    set 4, d
    or e
    ld a, [hl+]
    cp c
    sbc $50
    set 3, e
    cp h
    rst $08
    cp c
    sbc $50
    call z, $b2b8
    cp c
    sbc $50
    call z, $b5b8
    or [hl]
    cp c
    sbc $50
    call z, $bcb8
    rst $08
    cp c
    sbc $50
    adc $df
    or [hl]
    or d
    inc [hl]
    or e
    ld d, b
    ret nc

    or h
    cp c
    sbc $50
    ret nc

    call nc, $b927
    sbc $50
    ret nc

    call nc, $b72b
    cp c
    sbc $50
    call nc, $26cf
    ret nz

    cp c
    sbc $50
    call nc, $28cf
    pop bc
    cp c
    sbc $50
    call nc, $c5cf
    cp h
    cp c
    sbc $50
    call c, $d4b6
    rst $08
    cp c
    sbc $50

Call_012_4689:
    ld c, $07
    call $0468
    ld b, $01
    call $530f
    call $31f3
    ld hl, $c4a0
    ld b, $04
    ld c, $14
    call $0fb6
    ld hl, $c4c8
    ld a, $0c
    ld [hl], a
    ld bc, $0013
    add hl, bc
    ld [hl], a
    ld de, $4471
    ld hl, $c4c9
    call $1078
    ld hl, $c4f0
    ld b, $08
    ld c, $12
    call Call_012_4cdc
    ret


Call_012_46bf:
    ld hl, $cfa1
    ld a, [$d002]
    bit 6, a
    jr nz, jr_012_46ce

    ld a, $04
    ld [hl+], a
    jr jr_012_46d1

jr_012_46ce:
    ld a, $06
    ld [hl+], a

jr_012_46d1:
    ld a, $01
    ld [hl+], a
    ld a, [$d002]
    bit 6, a
    jr nz, jr_012_46e7

    call Call_012_4725
    ld a, $04
    jr nc, jr_012_46e4

    ld a, $05

jr_012_46e4:
    ld [hl+], a
    jr jr_012_46fb

jr_012_46e7:
    ld a, [$d479]
    bit 1, a
    jr nz, jr_012_46f8

    call Call_012_4725
    jr c, jr_012_46f8

    ld a, $03
    ld [hl+], a
    jr jr_012_46fb

jr_012_46f8:
    ld a, $04
    ld [hl+], a

jr_012_46fb:
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    set 5, [hl]
    inc hl
    xor a
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $01
    add $40
    add $80
    push af
    ld a, [$d002]
    bit 6, a
    jr z, jr_012_471a

    pop af
    add $02
    push af

jr_012_471a:
    pop af
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Call_012_4725:
    ld a, [$d003]
    bit 0, a
    jr z, jr_012_473a

    bit 1, a
    jr z, jr_012_473a

    bit 2, a
    jr z, jr_012_473a

    bit 3, a
    jr z, jr_012_473a

    scf
    ret


jr_012_473a:
    and a
    ret


Call_012_473c:
    ld hl, $cfa1
    ld a, $04
    ld [hl+], a
    ld a, $0c
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    set 5, [hl]
    inc hl
    xor a
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $01
    add $02
    ld [hl+], a
    ld a, [$d472]
    and a
    jr z, jr_012_4764

    ld a, $02
    jr jr_012_4766

jr_012_4764:
    ld a, $01

jr_012_4766:
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Jump_012_476f:
    call Call_012_4283
    ld hl, $c5e1
    ld de, $44be
    call $1078
    ld hl, $4509
    call $1d35
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    ld hl, $c50e
    ld b, $01
    ld c, $08
    call Call_012_4cdc
    call $31f6
    ld a, [$d473]
    and a
    jr z, jr_012_47ab

    cp $64
    jr z, jr_012_47b2

    ld hl, $c510
    ld [hl], $10
    ld hl, $c538
    ld [hl], $11
    jr jr_012_47b7

jr_012_47ab:
    ld hl, $c510
    ld [hl], $10
    jr jr_012_47b7

jr_012_47b2:
    ld hl, $c538
    ld [hl], $11

jr_012_47b7:
    ld hl, $c523
    call Call_012_47ec
    ld c, $0a
    call $0468
    ld a, [$d473]
    push af

jr_012_47c6:
    call $0a57
    call Call_012_480e
    jr nc, jr_012_47c6

    ld a, $01
    call $1ff8
    pop bc
    jr nz, jr_012_47da

    ld a, b
    ld [$d473], a

jr_012_47da:
    ld a, [$d473]
    call $1c07
    ld hl, $c523
    call Call_012_47ec
    pop af
    ldh [$aa], a
    jp Jump_012_440c


Call_012_47ec:
    push hl
    ld de, $d473
    call Call_012_47ff
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld de, $480d
    call $1078
    ret


Call_012_47ff:
    push hl
    ld a, $7f
    ld [hl+], a
    ld [hl], a
    pop hl
    ld b, $81
    ld c, $03
    call $3198
    ret


    ld d, b

Call_012_480e:
    ldh a, [$a7]
    and $01
    jp nz, Jump_012_48b9

    ldh a, [$a7]
    and $02
    jp nz, Jump_012_48b4

    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_012_4843

    ld a, [hl]
    and $80
    jr nz, jr_012_4838

    ld a, [hl]
    and $20
    jr nz, jr_012_484f

    ld a, [hl]
    and $10
    jr nz, jr_012_485f

    call $045a
    and a
    ret


jr_012_4838:
    ld hl, $d473
    ld a, [hl]
    and a
    jr z, jr_012_4840

    dec a

jr_012_4840:
    ld [hl], a
    jr jr_012_486f

jr_012_4843:
    ld hl, $d473
    ld a, [hl]
    cp $64
    jr nc, jr_012_484c

    inc a

jr_012_484c:
    ld [hl], a
    jr jr_012_486f

jr_012_484f:
    ld a, [$d473]
    cp $5b
    jr c, jr_012_4858

    ld a, $5a

jr_012_4858:
    add $0a
    ld [$d473], a
    jr jr_012_486f

jr_012_485f:
    ld a, [$d473]
    cp $0a
    jr nc, jr_012_4868

    ld a, $0a

jr_012_4868:
    sub $0a
    ld [$d473], a
    jr jr_012_486f

jr_012_486f:
    ld a, [$d473]
    and a
    jr z, jr_012_4887

    cp $64
    jr z, jr_012_4898

    jr z, jr_012_48a7

    ld hl, $c510
    ld [hl], $10
    ld hl, $c538
    ld [hl], $11
    jr jr_012_48a7

jr_012_4887:
    ld hl, $c50e
    ld b, $01
    ld c, $08
    call Call_012_4cdc
    ld hl, $c510
    ld [hl], $10
    jr jr_012_48a7

jr_012_4898:
    ld hl, $c50e
    ld b, $01
    ld c, $08
    call Call_012_4cdc
    ld hl, $c538
    ld [hl], $11

jr_012_48a7:
    ld hl, $c523
    call Call_012_47ec
    call $31f6
    ld a, $01
    and a
    ret


Jump_012_48b4:
    ld a, $00
    and a
    scf
    ret


Jump_012_48b9:
    ld a, [$d003]
    set 1, a
    ld [$d003], a
    scf
    ret


    nop
    jr @+$1a

    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    ld a, [hl]
    inc a
    inc a
    jr @+$1a

    nop

Jump_012_48d3:
    call Call_012_4283
    ld hl, $c5e1
    ld de, $44e2
    call $1078
    call Call_012_4a3a
    jp c, Jump_012_440c

    ld hl, $450e
    call $1d35
    ldh a, [$aa]
    push af
    ld a, $01
    ldh [$aa], a
    ld hl, $c55e
    ld b, $01
    ld c, $08
    call Call_012_4cdc
    ld a, [$d475]
    and $0f
    ld d, $00
    ld hl, $c573
    call Call_012_49ea
    call $31f6
    ld a, [$d475]
    ld b, a
    ld a, [$d476]
    ld c, a
    ld a, [$d477]
    ld d, a
    ld a, [$d478]
    ld e, a
    push de
    push bc
    ld d, $00
    ld b, $00

jr_012_4922:
    push bc
    call $0a57
    ldh a, [$a8]
    and a
    jp z, Jump_012_496e

    bit 0, a
    jp nz, Jump_012_496e

    bit 1, a
    jp nz, Jump_012_496e

    ld a, [$d002]
    and $cf
    res 7, a
    ld [$d002], a
    pop bc
    inc b
    ld a, b
    cp $05
    push bc
    jr c, jr_012_494c

    pop bc
    ld b, $04
    push bc

jr_012_494c:
    pop bc
    push bc
    ld a, b
    cp $04
    jr nz, jr_012_4972

    ld c, $0a
    call $0468
    jr jr_012_4972

    ldh a, [$a7]
    and a
    jr z, jr_012_4965

    pop bc
    ld b, $01
    push bc
    jr jr_012_4972

jr_012_4965:
    ldh a, [$a9]
    and a
    jr z, jr_012_4972

    pop bc
    ld b, $01
    push bc

Jump_012_496e:
    pop bc
    ld b, $00
    push bc

jr_012_4972:
    call Call_012_4ab5
    push af
    cp $f0
    jr z, jr_012_4994

    cp $0f
    jr nz, jr_012_4988

    ld a, [$d002]
    set 7, a
    and $cf
    ld [$d002], a

jr_012_4988:
    ld hl, $c573
    ld b, $00
    ld c, d
    add hl, bc
    ld b, $03
    call Call_012_4c11

jr_012_4994:
    call $31f6
    pop af
    pop bc
    jr nc, jr_012_4922

    jr nz, jr_012_49b1

    pop bc
    ld a, b
    ld [$d475], a
    ld a, c
    ld [$d476], a
    pop bc
    ld a, b
    ld [$d477], a
    ld a, c
    ld [$d478], a
    jr jr_012_49c5

jr_012_49b1:
    push af
    ld a, [$d479]
    set 0, a
    ld [$d479], a
    ld a, [$d003]
    set 3, a
    ld [$d003], a
    pop af
    pop bc
    pop bc

jr_012_49c5:
    push af
    push bc
    push de
    push hl
    ld a, $01
    call $1ff8
    pop hl
    pop de
    pop bc
    pop af
    call $1c07
    ld hl, $c573
    call Call_012_49ea
    ld hl, $c55f
    ld bc, $0108
    call $0fb6
    pop af
    ldh [$aa], a
    jp Jump_012_440c


Call_012_49ea:
    push de
    ld a, [$d475]
    and $0f
    call Call_012_4444
    ld a, [$d476]
    and $f0
    swap a
    inc hl
    call Call_012_4444
    ld a, [$d476]
    and $0f
    inc hl
    call Call_012_4444
    inc hl
    ld de, $4a38
    call $1078
    ld a, [$d477]
    and $f0
    swap a
    inc hl
    call Call_012_4444
    ld a, [$d477]
    and $0f
    inc hl
    call Call_012_4444
    ld a, [$d478]
    and $f0
    swap a
    inc hl
    call Call_012_4444
    ld a, [$d478]
    and $0f
    inc hl
    call Call_012_4444
    pop de
    ret


    db $e3
    ld d, b

Call_012_4a3a:
    ld hl, $4a9c
    call $1d35
    call Call_012_473c
    ld a, $0a
    ld [$cfa1], a
    ld a, $0b
    ld [$cfa2], a
    ld a, $01
    ld [$cfa9], a
    ld hl, $c54a
    ld b, $04
    ld c, $08
    call Call_012_4cdc
    ld hl, $c574
    ld de, $4aa1
    call $1078
    call $1bc9
    push af
    call $2009
    call $1c07
    pop af
    bit 1, a
    jp nz, Jump_012_4a9a

    ld a, [$cfa9]
    cp $01
    jr z, jr_012_4a98

    ld a, [$d003]
    set 3, a
    ld [$d003], a
    ld a, [$d479]
    res 0, a
    ld [$d479], a
    xor a
    ld bc, $0004
    ld hl, $d475
    call $3041
    jr jr_012_4a9a

jr_012_4a98:
    and a
    ret


Jump_012_4a9a:
jr_012_4a9a:
    scf
    ret


    ld b, b
    ld [$0d0a], sp
    inc de
    sub e
    and h
    xor e
    xor e
    ld a, a
    adc l
    xor [hl]
    or [hl]
    ld c, [hl]
    sub e
    and h
    xor e
    xor e
    ld a, a
    adc e
    and b
    or e
    and h
    or c
    ld d, b

Call_012_4ab5:
    ldh a, [$a7]
    and $01
    jp nz, Jump_012_4c0f

    ldh a, [$a7]
    and $02
    jp nz, Jump_012_4c0d

    ld a, d
    and a
    jr z, jr_012_4adf

    cp $01
    jr z, jr_012_4ae7

    cp $02
    jr z, jr_012_4af1

    cp $03
    jr z, jr_012_4af9

    cp $04
    jr z, jr_012_4b03

    cp $05
    jr z, jr_012_4b0b

    cp $06
    jr jr_012_4b15

jr_012_4adf:
    ld hl, $d475
    ld a, [hl]
    and $0f
    jr jr_012_4b1d

jr_012_4ae7:
    ld hl, $d476
    ld a, [hl]
    swap a
    or $f0
    jr jr_012_4b1d

jr_012_4af1:
    ld hl, $d476
    ld a, [hl]
    and $0f
    jr jr_012_4b1d

jr_012_4af9:
    ld hl, $d477
    ld a, [hl]
    swap a
    or $f0
    jr jr_012_4b1d

jr_012_4b03:
    ld hl, $d477
    ld a, [hl]
    and $0f
    jr jr_012_4b1d

jr_012_4b0b:
    ld hl, $d478
    ld a, [hl]
    swap a
    or $f0
    jr jr_012_4b1d

jr_012_4b15:
    ld hl, $d478
    ld a, [hl]
    and $0f
    jr jr_012_4b1d

jr_012_4b1d:
    push hl
    push af
    ld e, $00
    ld hl, $c573
    ld a, d

jr_012_4b25:
    and a
    jr z, jr_012_4b2c

    inc e
    dec a
    jr jr_012_4b25

jr_012_4b2c:
    ld hl, $ffa9
    ld a, [hl]
    and $40
    jr nz, jr_012_4b8d

    ld a, [hl]
    and $80
    jr nz, jr_012_4b55

    ld a, [hl]
    and $20
    jp nz, Jump_012_4bd7

    ld a, [hl]
    and $10
    jr nz, jr_012_4b9d

    ld hl, $c573
    call Call_012_49ea
    ld a, [$d002]
    bit 7, a
    jr nz, jr_012_4b51

jr_012_4b51:
    pop bc
    pop bc
    and a
    ret


jr_012_4b55:
    pop af
    ld b, a
    and $0f
    and a
    ld a, b
    jr nz, jr_012_4b61

    and $f0
    add $0a

jr_012_4b61:
    dec a

jr_012_4b62:
    push de
    push af
    ld hl, $c55e
    ld b, $01
    ld c, $08
    call Call_012_4cdc
    pop af
    pop de
    ld hl, $c573
    ld b, a
    ld a, d
    cp $03
    jr c, jr_012_4b7a

    inc hl

jr_012_4b7a:
    ld a, b
    pop hl
    bit 7, a
    jr z, jr_012_4b85

    call Call_012_4c4d
    jr jr_012_4b88

jr_012_4b85:
    call Call_012_4c5a

jr_012_4b88:
    ld a, $f0
    jp Jump_012_4c00


jr_012_4b8d:
    pop af
    ld b, a
    and $0f
    cp $09
    ld a, b
    jr c, jr_012_4b9a

    and $f0
    add $ff

jr_012_4b9a:
    inc a
    jr jr_012_4b62

jr_012_4b9d:
    push de
    ld hl, $c55e
    ld b, $01
    ld c, $08
    call Call_012_4cdc
    pop de
    ld a, d
    cp $06
    jr nc, jr_012_4baf

    inc d

jr_012_4baf:
    pop af
    pop hl
    ld b, a
    ld a, d
    cp $06
    ld a, b
    jr z, jr_012_4bc4

    bit 7, a
    jr nz, jr_012_4bc4

    inc hl
    ld a, [hl]
    swap a
    and $0f
    jr jr_012_4bc7

jr_012_4bc4:
    ld a, [hl]
    and $0f

jr_012_4bc7:
    ld hl, $c573
    push af
    ld a, d
    cp $03
    pop bc
    ld a, b
    jr c, jr_012_4bd3

    inc hl

jr_012_4bd3:
    ld a, $0f
    jr jr_012_4c00

Jump_012_4bd7:
    push de
    ld hl, $c55e
    ld b, $01
    ld c, $08
    call Call_012_4cdc
    pop de
    ld a, d
    and a
    pop af
    pop hl
    ld b, a
    ld a, d
    and a
    ld a, b
    jr z, jr_012_4bf3

    bit 7, a
    jr z, jr_012_4bf8

    dec d
    dec hl

jr_012_4bf3:
    ld a, [hl]
    and $0f
    jr jr_012_4bc7

jr_012_4bf8:
    dec d
    ld a, [hl]
    swap a
    and $0f
    jr jr_012_4bc7

Jump_012_4c00:
jr_012_4c00:
    push af
    ld hl, $c573
    call Call_012_49ea
    ld a, $01
    and a
    pop bc
    ld a, b
    ret


Jump_012_4c0d:
    xor a
    and a

Jump_012_4c0f:
    scf
    ret


Call_012_4c11:
    ld a, [$d002]
    bit 7, a
    jr z, jr_012_4c20

    ld a, d
    cp $03
    jr c, jr_012_4c1e

    inc hl

jr_012_4c1e:
    ld [hl], $7f

jr_012_4c20:
    ld a, [$d002]
    swap a
    and $03
    inc a
    cp b
    jr nz, jr_012_4c40

    ld a, [$d002]
    bit 7, a
    jr z, jr_012_4c3a

    res 7, a
    ld [$d002], a
    xor a
    jr jr_012_4c40

jr_012_4c3a:
    set 7, a
    ld [$d002], a
    xor a

jr_012_4c40:
    swap a
    ld b, a
    ld a, [$d002]
    and $cf
    or b
    ld [$d002], a
    ret


Call_012_4c4d:
    swap a
    and $f0
    push af
    ld a, [hl]
    and $0f
    ld [hl], a
    pop af
    or [hl]
    ld [hl], a
    ret


Call_012_4c5a:
    push af
    ld a, [hl]
    and $f0
    ld [hl], a
    pop af
    or [hl]
    ld [hl], a
    ret


    ld a, $50
    ld [de], a
    ld a, c
    cp $30
    jr nc, jr_012_4c8c

    and a
    jr z, jr_012_4c8c

    dec c
    push de
    ld h, d
    ld l, e
    ld a, $50
    ld b, $07

jr_012_4c76:
    ld [hl+], a
    dec b
    jr nz, jr_012_4c76

    ld hl, $455b
    ld a, c
    call $3411

jr_012_4c81:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    cp $50
    jr nz, jr_012_4c81

    and a
    pop de
    ret


jr_012_4c8c:
    scf
    ret


    ld hl, $d02a
    ld d, h
    ld e, l
    ld a, $12
    ld hl, $4c63
    rst $08
    ld hl, $c536
    call $1078
    call $31f6
    ret


    push af
    push bc
    push de
    push hl
    ld b, $00
    ld c, $00
    ld d, $00

jr_012_4cad:
    cp $64
    jr c, jr_012_4cb6

    sub $64
    inc b
    jr jr_012_4cad

jr_012_4cb6:
    cp $0a
    jr c, jr_012_4cbf

    sub $0a
    inc c
    jr jr_012_4cb6

jr_012_4cbf:
    cp $01
    jr c, jr_012_4cc7

    dec a
    inc d
    jr jr_012_4cbf

jr_012_4cc7:
    ld a, b
    call Call_012_4444
    inc hl
    ld a, c
    call Call_012_4444
    inc hl
    ld a, d
    call Call_012_4444
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld h, d
    ld l, e

Call_012_4cdc:
    push bc
    push hl
    call Call_012_4cfd
    pop hl
    pop bc
    ld de, $0939
    add hl, de
    inc b
    inc b
    inc c
    inc c
    ld a, $00

jr_012_4ced:
    push bc
    push hl

jr_012_4cef:
    ld [hl+], a
    dec c
    jr nz, jr_012_4cef

    pop hl
    ld de, $0014
    add hl, de
    pop bc
    dec b
    jr nz, jr_012_4ced

    ret


Call_012_4cfd:
    push hl
    ld a, $04
    ld [hl+], a
    inc a
    call Call_012_4d2a
    inc a
    ld [hl], a
    pop hl
    ld de, $0014
    add hl, de

jr_012_4d0c:
    push hl
    ld a, $07
    ld [hl+], a
    ld a, $7f
    call Call_012_4d2a
    ld [hl], $08
    pop hl
    ld de, $0014
    add hl, de
    dec b
    jr nz, jr_012_4d0c

    ld a, $09
    ld [hl+], a
    ld a, $0a
    call Call_012_4d2a
    ld [hl], $0b
    ret


Call_012_4d2a:
    ld d, c

jr_012_4d2b:
    ld [hl+], a
    dec d
    jr nz, jr_012_4d2b

    ret


Call_012_4d30:
    ld hl, $d475
    call Call_012_4d4a
    ld hl, $d477
    call Call_012_4d4a
    ret


Call_012_4d3d:
    ld hl, $d475
    call Call_012_4d94
    ld hl, $d477
    call Call_012_4d94
    ret


Call_012_4d4a:
    inc hl
    ld a, [hl]
    ld b, a
    and $0f
    ld c, a
    srl b
    srl b
    srl b
    srl b
    push bc
    ld c, $0a
    ld a, b
    call $3105
    pop bc
    add c
    ld [hl-], a
    xor a
    ldh [$b4], a
    ldh [$b5], a
    ld a, [hl]
    srl a
    srl a
    srl a
    srl a
    ld c, $0a
    call $3105
    ld b, a
    ld a, [hl+]
    and $0f
    add b
    ldh [$b6], a
    ld a, $64
    ldh [$b7], a
    call $3119
    ldh a, [$b5]
    ld b, a
    ldh a, [$b6]
    ld c, a
    ld e, [hl]
    add e
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld a, c
    ld [hl-], a
    ld [hl], b
    ret


Call_012_4d94:
    xor a
    ldh [$b3], a
    ldh [$b4], a
    ld a, [hl+]
    ldh [$b3], a
    ld a, [hl]
    ldh [$b4], a
    ld a, $64
    ldh [$b7], a
    ld b, $02
    call $3124
    ldh a, [$b7]
    ld c, $0a
    call $3110
    sla b
    sla b
    sla b
    sla b
    or b
    ld [hl-], a
    ldh a, [$b6]
    ld c, $0a
    call $3110
    sla b
    sla b
    sla b
    sla b
    or b
    ld [hl], a
    ret


    call Call_012_4e14
    call Call_012_4e47
    call Call_012_4e64
    call $3200
    call $32f9
    ld hl, $4e0f
    call $1057
    ld hl, $4dfc
    call $1d35
    call $3200
    call $1d81
    call $1c17
    ld a, [$cfa9]
    dec a
    ld [$d472], a
    ld c, $0a
    call $0468
    ret


    ld b, b
    inc b
    ld b, $09
    inc c
    inc b
    ld c, [hl]
    ld bc, $02a1
    add c
    xor [hl]
    cp b
    ld d, b
    add [hl]
    xor b
    or c
    xor e
    ld d, b
    ld d, $a3
    ld c, h
    ld [hl], b
    ld d, b

Call_012_4e14:
    ld a, $10
    ld [$c2a7], a
    ld a, $00
    ld [$c2a9], a
    ld a, $00
    ld [$c2aa], a
    ld c, $08
    call $0468
    call $31f3

Call_012_4e2b:
    call Call_012_4000
    call $0e5f
    ld hl, $c4a0
    ld bc, $0168
    ld a, $00
    call $3041
    ld hl, $cdd9
    ld bc, $0168
    xor a
    call $3041
    ret


Call_012_4e47:
    ld hl, $4e5c
    ld de, $d000
    ld bc, $0008
    ld a, $05
    call $306b
    ld a, $02
    ld hl, $56a4
    rst $08
    ret


    rst $38
    ld a, a
    ret


    ld a, a
    ld h, c
    ld a, l
    nop
    nop

Call_012_4e64:
    ld de, $4e71
    ld hl, $9000
    ld bc, $1201
    call $0f82
    ret


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
    ld hl, $4e93
    add hl, de
    add hl, de
    ld a, [hl+]
    ld e, a
    ld d, [hl]
    ld hl, $9500
    ld bc, $120f
    call $0eba
    ret


    adc e
    ld c, a
    ld l, e
    ld d, c
    sbc e
    ld c, [hl]
    ld a, e
    ld d, b
    rst $38
    rst $38
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    ld bc, $030f

Call_012_4eb7:
    rra
    ld b, $1f
    dec b
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld h, [hl]
    rst $38
    db $db
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [$80], a
    ldh a, [$c0]
    ld hl, sp+$60

Jump_012_4ed9:
    ld hl, sp-$60
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    ccf
    dec bc
    ld a, a
    dec bc
    ld e, a
    rlca
    rst $18
    rlca
    rst $18
    rrca
    sbc a
    inc c
    sbc h
    ld [$089c], sp
    rst $38
    db $db
    rst $38
    jp $ffff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    db $fc
    ret nc

    cp $d0
    ld a, [$fbe0]
    ldh [$fb], a
    ldh a, [$f9]
    jr nc, jr_012_4f61

    db $10
    add hl, sp
    db $10
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    pop bc
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

    ldh [$e0], a
    rst $38
    rst $38
    sbc [hl]
    ld [$089d], sp
    call c, Call_012_7c08
    ld [$003e], sp
    rrca
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop

jr_012_4f61:
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, c
    db $10
    cp c
    db $10
    dec sp
    db $10
    ld a, $10
    ld a, h
    nop
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    add e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $00
    inc c
    nop
    add hl, de
    nop
    ld a, [de]
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    add c
    nop
    nop
    nop
    ld a, [hl]
    nop
    sbc c
    nop
    inc h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_012_4fc7

jr_012_4fc7:
    sbc b
    nop
    ld e, b
    nop
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

jr_012_4fe4:
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

jr_012_4fe9:
    pop bc

jr_012_4fea:
    ret nz

    inc [hl]
    nop
    ld [hl], h
    nop
    ld a, b
    jr nz, jr_012_4fea

    jr nz, jr_012_4fe4

    jr nz, jr_012_4fe9

    ld h, b
    db $f4
    ld h, b
    db $f4
    ld h, b
    inc h
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    ld l, $00
    ld a, [de]
    nop
    dec de
    nop
    dec bc
    nop
    ret


    nop
    add hl, hl
    nop
    add hl, hl
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    pop bc
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

    ldh [$e0], a
    rst $38
    rst $38
    or $60
    push af
    ld h, b
    db $f4
    jr nz, @+$76

    nop
    ld a, $00
    rrca
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, c
    nop
    xor c
    nop
    dec hl
    nop
    ld l, $00
    ld a, h
    nop
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    add e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $00
    inc c
    nop
    add hl, de
    nop
    ld a, [de]
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    add c
    nop
    nop
    nop
    ld a, [hl]
    nop
    sbc c
    nop
    inc h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ret nz

Jump_012_50b2:
    nop
    ld h, b
    nop
    jr nc, jr_012_50b7

Call_012_50b7:
jr_012_50b7:
    sbc b
    nop
    ld e, b
    nop
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ret nz

Call_012_50cc:
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    inc [hl]
    nop
    ld [hl], h
    nop
    ld e, b
    nop
    ret c

    nop
    ret nc

    nop
    sub e
    nop
    sub h
    nop
    sub h
    nop
    inc h
    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    ld l, $00
    ld e, $04
    rra
    inc b
    rrca
    inc b
    rst $08
    ld b, $2f
    ld b, $2f
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    pop bc
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

    ldh [$e0], a
    rst $38
    rst $38
    sub [hl]
    nop
    sub l
    nop
    call nc, Call_012_7400
    nop
    ld a, $00
    rrca
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, a
    ld b, $af
    ld b, $2f
    inc b
    ld l, $00
    ld a, h
    nop
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    add e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $00
    inc c
    nop
    add hl, de
    nop
    ld a, [de]
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    add c
    nop
    nop
    nop
    ld a, [hl]
    nop
    sbc c
    nop
    inc h
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_012_51a7

jr_012_51a7:
    sbc b
    nop
    ld e, b
    nop
    rst $38
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    inc [hl]
    nop
    ld [hl], h
    nop
    ld e, b
    nop
    ret c

    nop
    ret nc

    nop
    sub e
    nop
    sub a
    inc bc
    sub a
    inc bc
    inc h
    nop
    inc a
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
    rst $38
    rst $38
    rst $38
    inc l
    nop
    ld l, $00
    ld a, [de]
    nop
    dec de
    nop
    dec bc
    nop
    ret


    nop
    jp hl


    ret nz

    jp hl


    ret nz

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    pop bc
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

    ldh [$e0], a
    rst $38
    rst $38
    sub a
    ld bc, $0297
    rst $10
    inc bc
    ld [hl], a
    inc bc
    ccf
    ld bc, $000f
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    jp hl


    add b
    jp hl


    ld b, b
    db $eb
    ret nz

    xor $c0
    db $fc
    add b
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    add e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $38
    rst $38
    call $2b29
    call $31f3
    call $0fdb
    call $045a
    ld b, $14
    call $3340
    xor a
    ld [$d142], a
    call Call_012_52a5
    ld [$d265], a
    ld [$d262], a
    call $34f8
    call $30d6
    ld a, $0b
    ld hl, $47fb
    rst $08
    jr c, jr_012_529c

    jr jr_012_5291

jr_012_5289:
    ld a, $0b
    ld hl, $480a
    rst $08
    jr c, jr_012_529c

jr_012_5291:
    call Call_012_52b9
    jr nc, jr_012_5289

    xor a
    ld [$c2dd], a
    jr jr_012_52a1

jr_012_529c:
    ld a, $ff
    ld [$c2dd], a

jr_012_52a1:
    call $2b3c
    ret


Call_012_52a5:
    ld a, [$c2dd]
    cp $01
    jr z, jr_012_52b3

    cp $02
    jr z, jr_012_52b6

    ld a, $3a
    ret


jr_012_52b3:
    ld a, $35
    ret


jr_012_52b6:
    ld a, $55
    ret


Call_012_52b9:
    ld hl, $530a
    call $1d35
    ld a, $0e
    call $2d83
    push bc
    ld a, [$d109]
    ld hl, $de41
    call $38a2
    pop bc
    ld a, c
    and a
    jr nz, jr_012_52e5

    push de
    ld de, $0019
    call $3c23
    pop de
    ld a, $0b
    ld hl, $48ce
    call $31b0
    jr jr_012_5300

jr_012_52e5:
    ld hl, $79ea
    ld a, $03
    rst $08
    jr c, jr_012_5300

    ld a, $00
    call $2d83
    ld a, b
    and a
    jr z, jr_012_5300

    ld c, $05
    ld hl, $71c2
    ld a, $01
    rst $08
    jr jr_012_5305

jr_012_5300:
    call $1c07
    and a
    ret


jr_012_5305:
    call $1c07
    scf
    ret


    ld b, b
    inc c
    nop
    ld de, $7813
    cp $ff
    jr nz, jr_012_5317

    ld a, [$cd98]

jr_012_5317:
    push af
    ld a, $02
    ld hl, $5673
    rst $08
    pop af
    ld l, a
    ld h, $00
    add hl, hl
    ld de, $5330
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $532f
    push de
    jp hl


    ret


    ld l, [hl]
    ld d, e
    cpl
    ld d, h
    ld b, $57

Call_012_5336:
jr_012_5336:
    push bc
    push hl

jr_012_5338:
    ld [hl+], a
    dec c
    jr nz, jr_012_5338

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_012_5336

    ret


Call_012_5346:
    ld hl, $cdd9
    ld bc, $0168
    xor a
    call $3041
    ret


Call_012_5351:
    ld de, $d000
    ld hl, $53e1
    ld bc, $0028
    ld a, $05
    call $306b
    ld de, $d038
    ld hl, $5418
    ld bc, $0008
    ld a, $05
    call $306b
    ret


Call_012_536e:
    call Call_012_5351
    call Call_012_5346
    call Call_012_5384
    ld a, $02
    ld hl, $56b3
    rst $08
    ld a, $02
    ld hl, $56a4
    rst $08
    ret


Call_012_5384:
    ld hl, $cdd9
    ld bc, $0401
    ld a, $01
    call Call_012_5336
    ld bc, $0201
    ld a, $02
    call Call_012_5336
    ld bc, $0601
    ld a, $03
    call Call_012_5336
    ld hl, $cdda
    ld a, $01
    ld bc, $0312
    call Call_012_5336
    ld bc, $0212
    ld a, $02
    call Call_012_5336
    ld bc, $0c12
    ld a, $03
    call Call_012_5336
    ld hl, $cdec
    ld bc, $0401
    ld a, $01
    call Call_012_5336
    ld bc, $0201
    ld a, $02
    call Call_012_5336
    ld bc, $0601
    ld a, $03
    call Call_012_5336
    ld hl, $cec9
    ld bc, $0078
    ld a, $07
    call $3041
    ret


    db $e3
    inc h
    ld a, [$1403]
    ld c, $ff
    ld a, a
    dec c
    ld [hl], a
    dec bc
    ld a, d
    ld h, a
    ld e, c
    push bc
    ld c, b
    rst $38
    ld a, a
    ld d, h
    ld a, a
    dec c
    ld [hl], a
    dec bc
    ld a, d
    rst $38
    ld a, a
    ld d, h
    ld a, a
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    inc d
    ld [hl+], a
    rra
    nop
    nop
    nop
    ld hl, $5418
    ld de, $d038
    ld bc, $0008
    ld a, $05
    call $306b
    ret


    rst $38
    ld a, a
    ld l, b
    ld [hl], d
    and l
    ld b, b
    nop
    nop
    ld hl, $56bd
    ld de, $d030
    ld bc, $0008
    ld a, $05
    call $306b
    ret


    call Call_012_5351
    ld de, $d038
    ld hl, $5478
    ld bc, $0008
    ld a, $05
    call $306b
    call Call_012_5346
    ld hl, $cdd9
    ld bc, $0168
    xor a
    call $3041
    ld hl, $cef1
    ld bc, $0050
    ld a, $07
    call $3041
    ld a, [$d002]
    bit 6, a
    jr z, jr_012_5464

    call Call_012_5480
    jr jr_012_5467

jr_012_5464:
    call Call_012_5496

jr_012_5467:
    ld a, $02
    ld hl, $56b3
    rst $08
    ld a, $02
    ld hl, $56a4
    rst $08
    ld a, $01
    ldh [$e5], a
    ret


    rst $38
    ld a, a
    ld a, [$1403]
    ld c, $00
    nop

Call_012_5480:
    ld hl, $cdd9
    ld bc, $0414
    ld a, $07
    call Call_012_5336
    ld hl, $ce01
    ld a, $04
    ld [hl], a
    ld hl, $ce14
    ld [hl], a
    ret


Call_012_5496:
    ld hl, $cdd9
    ld bc, $0214
    ld a, $07
    call Call_012_5336
    ld hl, $cded
    ld a, $04
    ld [hl], a
    ld hl, $ce00
    ld [hl], a
    ret


    ld a, [$d199]
    cp $15
    jr z, jr_012_54c9

    cp $16
    jr z, jr_012_54ce

    cp $1d
    jr z, jr_012_54d3

    cp $05
    jr z, jr_012_54e1

    cp $1b
    jr z, jr_012_54e6

    cp $0d
    jr z, jr_012_54eb

    jr jr_012_54f0

jr_012_54c9:
    call Call_012_54f2
    scf
    ret


jr_012_54ce:
    call Call_012_5541
    scf
    ret


jr_012_54d3:
    ld a, [$d19a]
    and $07
    cp $03
    jr z, jr_012_54f0

    call Call_012_5590
    scf
    ret


jr_012_54e1:
    call Call_012_55df
    scf
    ret


jr_012_54e6:
    call Call_012_562e
    scf
    ret


jr_012_54eb:
    call Call_012_56c5
    scf
    ret


jr_012_54f0:
    and a
    ret


Call_012_54f2:
    ld a, $05
    ld de, $d000
    ld hl, $5501
    ld bc, $0040
    call $306b
    ret


    sbc [hl]
    ld l, e
    ld [hl], e
    ld c, [hl]
    xor l
    dec [hl]
    rst $20
    inc e
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
    ld [hl], c
    ld a, [hl]
    ld c, $7e
    rst $20
    inc e
    ld e, a
    ld d, a
    sbc a
    ld b, $0e
    ld a, [hl]
    rst $20
    inc e
    dec [hl]
    ld e, $71
    ld a, [hl]
    or b
    dec c
    rst $20
    inc e
    and l
    ld b, b
    ld l, b
    ld [hl], d
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, $01
    nop
    nop

Call_012_5541:
    ld a, $05
    ld de, $d000
    ld hl, $5550
    ld bc, $0040
    call $306b
    ret


    sbc [hl]
    ld l, e
    ld [hl], e
    ld c, [hl]
    xor l
    dec [hl]
    rst $20
    inc e
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
    and l
    ld b, b
    ld l, b
    ld [hl], d
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, $01
    nop
    nop

Call_012_5590:
    ld a, $05
    ld de, $d000
    ld hl, $559f
    ld bc, $0040
    call $306b
    ret


    rst $08
    ld h, c
    ld l, e
    ld c, l
    rst $20
    jr nc, jr_012_55a6

jr_012_55a6:
    nop
    rst $08
    ld h, c
    xor $44
    dec c
    jr nz, jr_012_55ae

jr_012_55ae:
    nop
    or [hl]
    ld a, a
    ld l, d
    ld a, a
    rst $38
    ld a, a
    dec b
    inc h
    rst $08
    ld h, c
    and l
    ld b, h
    ld h, e
    jr z, jr_012_55be

jr_012_55be:
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
    ld sp, hl
    ld a, a
    adc c
    ld a, a
    ld [hl], b
    ld a, l
    dec b
    inc h
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, $01
    nop
    nop

Call_012_55df:
    ld a, $05
    ld de, $d000
    ld hl, $55ee
    ld bc, $0040
    call $306b
    ret


    sbc [hl]
    ld l, e
    ld [hl], e
    ld c, [hl]
    xor l
    dec [hl]
    rst $20
    inc e
    sbc [hl]
    ld l, e
    ld a, a
    ld h, d
    ld e, [hl]
    add hl, de
    rst $20
    inc e
    sbc [hl]
    ld l, e
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
    ld a, a
    ld h, d
    or b
    dec c
    rst $20
    inc e
    rst $38
    ld b, e
    rst $38
    ld b, e
    ld l, $01
    nop
    nop

Call_012_562e:
    ld a, $05
    ld de, $d000
    ld hl, $563d
    ld bc, $0040
    call $306b
    ret


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
    adc b
    ld a, l
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
    sbc [hl]
    ld l, e
    ld [hl], e
    ld c, [hl]
    xor l
    dec [hl]
    rst $20
    inc e
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
    and l
    ld b, b
    ld l, b
    ld [hl], d
    nop
    nop
    rst $38
    ld a, a

Call_012_56c5:
    ld a, $05
    ld de, $d000
    ld hl, $567d
    ld bc, $0040
    call $306b
    ld a, $05
    ld de, $d020
    ld hl, $56fe
    ld bc, $0008
    call $306b
    ld a, $05
    ld de, $d018
    ld hl, $56ad
    ld bc, $0008
    call $306b
    ld a, $05
    ld de, $d030
    ld hl, $56bd
    ld bc, $0008
    call $306b
    ret


    add hl, de
    ld e, a
    ld [hl], h
    ld c, [hl]
    ld c, $7e
    rst $20
    inc e
    ld hl, $5732
    ld de, $d000
    ld bc, $0008
    ld a, $05
    call $306b
    ld a, $02
    ld hl, $56a4
    rst $08
    call Call_012_5346
    ld a, $02
    ld hl, $56b3
    rst $08
    ld hl, $573a
    ld de, $d040
    ld bc, $0008
    ld a, $05
    call $306b
    ret


    rst $38
    ld a, a
    rla
    ld e, $f7
    inc e
    db $e3
    ld d, b
    nop
    nop
    and a
    ld a, h
    ld c, [hl]
    ld a, [hl]
    rst $38
    ld a, a
    ld hl, $5757
    ld de, $d000
    ld bc, $0040
    ld a, $05
    call $306b
    ld a, $02
    ld hl, $56a4
    rst $08
    ret


    rst $38
    rst $38
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
    ld b, h
    inc a
    dec d
    ld d, h
    rra
    nop
    rst $38
    ld a, a
    ld b, h
    inc a
    dec d
    ld d, h
    ld e, $6a
    rst $38
    ld a, a
    ld b, h
    inc a
    dec d
    ld d, h
    db $10
    ld b, d
    rst $38
    ld a, a
    ld b, h
    inc a
    dec d
    ld d, h
    sbc a
    ld sp, $7fff
    ld b, h
    inc a
    dec d
    ld d, h
    rlca
    ld a, l
    rst $38
    ld a, a
    ld b, h
    inc a
    dec d
    ld d, h
    sbc l
    daa
    rst $38
    ld a, a

Call_012_5797:
    ld hl, $cdd9
    ld bc, $1002
    ld a, $04
    call Call_012_5336
    ld a, $03
    ld [$cded], a
    ld [$cef1], a
    ld hl, $cddb
    ld bc, $0812
    ld a, $05
    call Call_012_5336
    ld hl, $ce7b
    ld bc, $0812
    ld a, $06
    call Call_012_5336
    ld hl, $cf19
    ld bc, $0214
    ld a, $04
    call Call_012_5336
    ld a, $03
    ld bc, $0601
    ld hl, $cdf3
    call Call_012_5336
    ld a, $03
    ld bc, $0601
    ld hl, $cdfe
    call Call_012_5336
    ld a, $03
    ld bc, $0601
    ld hl, $ce93
    call Call_012_5336
    ld a, $03
    ld bc, $0601
    ld hl, $ce9e
    call Call_012_5336
    ld a, $02
    ld hl, $cf1b
    ld [hl+], a
    ld a, $07
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $02
    ld [hl], a
    ld hl, $cf2f
    ld a, $03
    ld bc, $0006
    call $3041
    ret


    ld hl, $5826
    ld de, $d010
    ld bc, $0030
    ld a, $05
    call $306b
    ld a, $02
    ld hl, $56a4
    rst $08
    ret


    ld b, h
    inc a
    daa
    ld a, l
    rra
    nop
    rst $38
    ld a, a
    ld b, h
    inc a
    daa
    ld a, l
    rst $28
    ld a, d
    rst $38
    ld a, a
    ld b, h
    inc a
    daa
    ld a, l
    db $10
    ld b, d
    rst $38
    ld a, a
    ld b, h
    inc a
    daa
    ld a, l
    ld sp, hl
    db $10
    rst $38
    ld a, a
    ld b, h
    inc a
    daa
    ld a, l
    jp $ff22


    ld a, a
    ld b, h
    inc a
    daa
    ld a, l
    sbc l
    daa
    rst $38
    ld a, a
    call Call_012_5797
    ret


    xor e
    inc bc
    ld d, a
    inc h
    xor h
    ld c, $13
    ld [hl-], a
    cp [hl]
    jr nc, jr_012_58c0

    ld c, h
    ld b, a
    ld h, b
    db $ed
    ld a, [c]
    xor e
    inc bc
    ld d, l
    ld h, $aa
    ld a, [bc]
    inc de
    ld a, [hl-]
    cp [hl]
    jr z, jr_012_58a8

    inc h
    ld l, [hl]
    ld [hl], c
    rst $18
    or b
    xor b
    nop
    push hl
    ldh [$9a], a
    db $fc
    db $f4
    inc l
    cp $4c
    and e
    ld e, [hl]
    add $3a
    xor e
    ld c, l
    xor b
    nop
    or l
    or b
    sbc $e8
    db $fc
    inc e
    cp d
    ld h, [hl]
    rst $30
    ld c, $ba
    ld e, [hl]
    ld b, e
    cp l
    call $045a
    ld a, [$d0ed]
    push af
    xor a
    ld [$d0ed], a
    call Call_012_5912

jr_012_58a8:
    ld de, $0750
    ld a, $2c
    call $3b2a
    ld hl, $0003
    add hl, bc
    ld [hl], $84
    ld hl, $0002
    add hl, bc
    ld [hl], $1f
    ld hl, $000f
    add hl, bc

jr_012_58c0:
    ld a, $80
    ld [hl], a
    ld a, $a0
    ld [$cf64], a
    ld d, $00

jr_012_58ca:
    ld a, [$cf63]
    bit 7, a
    jr nz, jr_012_58ee

    push bc
    call Call_012_5bae
    inc d
    push de
    ld a, $90
    ld [$c3b5], a
    ld a, $23
    ld hl, $4f7a
    rst $08
    call Call_012_5935
    ld c, $02
    call $0468
    pop de
    pop bc
    jr jr_012_58ca

jr_012_58ee:
    pop af
    ld [$d0ed], a
    call Call_012_58f9
    call Call_012_5bf3
    ret


Call_012_58f9:
    ld hl, $c402
    xor a
    ld c, $04

jr_012_58ff:
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc a
    dec c
    jr nz, jr_012_58ff

    ld hl, $c410
    ld bc, $0090
    xor a
    call $3041
    ret


Call_012_5912:
    ld a, $23
    ld hl, $4f53
    rst $08
    ld de, $5962
    ld hl, $8800
    ld bc, $1204
    call $0eba
    ld de, $59a2
    ld hl, $8840
    ld bc, $1210
    call $0eba
    xor a
    ld [$cf63], a
    ret


Call_012_5935:
    ld hl, $cf64
    ld a, [hl]
    and a
    jr z, jr_012_593e

    dec [hl]
    ret


jr_012_593e:
    ld hl, $cf63
    set 7, [hl]
    ret


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


    nop
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
    jr nc, jr_012_59d4

    ld l, $3e
    dec d
    rra
    jr jr_012_59c9

    ld d, $1d
    add hl, bc
    rrca
    inc c
    rrca
    rst $00
    rst $00
    ld h, h
    inc h
    ld [hl], $12
    di
    pop hl
    rst $08
    db $fd
    db $fc
    ld h, $fa
    ld b, $fe
    ld [bc], a
    cp $0e
    cp d
    ei
    ld e, a
    ld h, a
    ccf
    jr c, @+$35

jr_012_59c9:
    inc a
    ld a, l
    ld e, a
    ld e, a
    ld a, e
    ld l, d
    ld l, [hl]
    inc c
    inc c
    db $fc
    inc d

jr_012_59d4:
    inc e
    db $fc
    ldh a, [$f0]
    ret nz

    ld b, b
    ldh [rNR41], a
    ret c

    cp b
    ret z

    ld hl, sp+$30
    jr nc, jr_012_59e3

jr_012_59e3:
    nop
    inc a
    inc a
    inc hl
    ccf
    db $10
    rra
    ld e, $1d
    add hl, bc
    rrca
    inc c
    rrca
    rst $00
    rst $00
    ld h, b
    ld h, b
    ld [hl], h
    inc d
    cp $e2
    rst $28
    db $dd
    db $fc
    ld h, $fa
    ld b, $fe
    ld [bc], a
    cp $0e
    cp d
    ei
    ld e, a
    ld h, a
    ccf
    jr c, @+$35

    inc a
    ld a, l
    ld e, a
    ld e, a
    ld a, e
    ld l, d
    ld l, [hl]
    inc c
    inc c
    db $fc
    inc d
    inc e
    db $fc
    ldh a, [$f0]
    ret nz

    ld b, b
    ldh [rNR41], a
    ret c

    cp b
    ret z

    ld hl, sp+$30
    jr nc, jr_012_5a53

    jr nc, jr_012_5a53

jr_012_5a25:
    ld a, $15
    rra
    jr jr_012_5a49

    ld d, $1d
    add hl, bc
    rrca
    call z, $b7cf
    rst $30
    ld h, h
    inc h
    ld [hl], $12
    di
    pop hl
    rst $08
    db $fd
    db $fc
    ld h, $fa
    ld b, $fe
    ld [bc], a
    cp $0e
    ld e, d
    ld l, e
    ccf
    daa
    ccf
    jr c, @+$35

jr_012_5a49:
    inc a
    ld a, l
    ld e, a
    ld e, a
    ld a, e
    ld l, d
    ld l, [hl]
    inc c
    inc c
    db $fc

jr_012_5a53:
    inc d
    inc e
    db $fc
    ldh a, [$f0]
    ldh [$60], a
    ret c

    jr c, jr_012_5a25

    ld hl, sp+$30
    jr nc, jr_012_5a61

jr_012_5a61:
    nop
    jr nc, jr_012_5a94

    ld l, $3e
    dec d
    rra
    jr jr_012_5a89

    ld d, $1d
    add hl, bc
    rrca
    call z, $b7cf
    rst $30
    ld h, h
    inc h
    ld [hl], $12
    di
    pop hl
    rst $08
    db $fd
    db $fc
    ld h, $fa
    ld b, $fe
    ld [bc], a
    cp $0e
    ld e, d
    ld l, e
    ccf
    daa
    ccf
    jr c, jr_012_5abc

jr_012_5a89:
    inc a
    ld a, l
    ld e, a
    ld e, a
    ld a, e
    ld l, d
    ld l, [hl]
    inc c
    inc c
    db $fc
    inc d

jr_012_5a94:
    inc e
    db $fc
    ldh a, [$f0]
    ldh [$60], a
    ret c

    jr c, @-$36

    ld hl, sp+$30
    jr nc, jr_012_5aa1

jr_012_5aa1:
    nop
    ld hl, $0006
    add hl, bc
    ld a, [hl]
    push af
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    cp $52
    jp nc, Jump_012_5b30

    ld hl, $0005
    add hl, bc
    inc [hl]
    ld hl, $000f
    add hl, bc
    ld a, [hl]

jr_012_5abc:
    ld d, a
    cp $3a
    jr c, jr_012_5ac6

    jr z, jr_012_5ac6

    sub $03
    ld [hl], a

jr_012_5ac6:
    ld hl, $000e
    add hl, bc
    ld a, [hl]
    inc [hl]
    call Call_012_5b3b
    ld hl, $0006
    add hl, bc
    ld [hl], a
    ld d, a
    ld hl, $0004
    add hl, bc
    add [hl]
    cp $5c
    jr nc, jr_012_5ae2

    cp $44
    jr nc, jr_012_5b0d

jr_012_5ae2:
    pop af
    push af
    cp d
    jr nc, jr_012_5af2

    ld hl, $0004
    add hl, bc
    add [hl]
    cp $50
    jr c, jr_012_5b05

    jr jr_012_5afb

jr_012_5af2:
    ld hl, $0004
    add hl, bc
    add [hl]
    cp $50
    jr nc, jr_012_5b05

jr_012_5afb:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    sub $02
    ld [hl], a
    jr jr_012_5b0d

jr_012_5b05:
    ld hl, $0005
    add hl, bc
    ld a, [hl]
    add $01
    ld [hl], a

jr_012_5b0d:
    pop af
    ld hl, $0004
    add hl, bc
    add [hl]
    cp $50
    jr c, jr_012_5b26

    cp $e6
    jr nc, jr_012_5b26

    ld hl, $0001
    add hl, bc
    ld a, $41
    call $3b3c
    jr jr_012_5b2f

jr_012_5b26:
    ld hl, $0001
    add hl, bc
    ld a, $40
    call $3b3c

jr_012_5b2f:
    ret


Jump_012_5b30:
    pop af
    ld hl, $0001
    add hl, bc
    ld a, $40
    call $3b3c
    ret


Call_012_5b3b:
    add $10
    and $3f
    cp $20
    jr nc, jr_012_5b48

    call Call_012_5b52
    ld a, h
    ret


jr_012_5b48:
    and $1f
    call Call_012_5b52
    ld a, h
    xor $ff
    inc a
    ret


Call_012_5b52:
    ld e, a
    ld a, d
    ld d, $00
    ld hl, $5b6e
    add hl, de
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $0000

jr_012_5b61:
    srl a
    jr nc, jr_012_5b66

    add hl, de

jr_012_5b66:
    sla e
    rl d
    and a
    jr nz, jr_012_5b61

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

Call_012_5bae:
    push hl
    push bc
    push de
    ld a, d
    ld d, $03
    ld e, d
    cp $00
    jr z, jr_012_5bd0

    cp d
    jr z, jr_012_5bd4

    call Call_012_5bed
    cp d
    jr z, jr_012_5bd8

    call Call_012_5bed
    cp d
    jr z, jr_012_5bdc

    call Call_012_5bed
    cp d
    jr c, jr_012_5be9

    jr jr_012_5be5

jr_012_5bd0:
    ld a, $84
    jr jr_012_5bde

jr_012_5bd4:
    ld a, $88
    jr jr_012_5bde

jr_012_5bd8:
    ld a, $8c
    jr jr_012_5bde

jr_012_5bdc:
    ld a, $90

jr_012_5bde:
    ld hl, $0003
    add hl, bc
    ld [hl], a
    jr jr_012_5be9

jr_012_5be5:
    pop de
    ld d, $ff
    push de

jr_012_5be9:
    pop de
    pop bc
    pop hl
    ret


Call_012_5bed:
jr_012_5bed:
    push af
    ld a, d
    add e
    ld d, a
    pop af
    ret


Call_012_5bf3:
    ld a, $0b

jr_012_5bf5:
    ld [$d230], a
    ret


    ld a, [$d0ee]
    bit 6, a
    jr z, jr_012_5c07

    ld a, $01
    ld [$c2dd], a
    jr jr_012_5c0b

jr_012_5c07:
    xor a
    ld [$c2dd], a

jr_012_5c0b:
    ret


    jr nz, jr_012_5bed

    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    jr nz, jr_012_5bf5

    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    rst $18
    nop
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    rst $18
    nop
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    nop
    nop
    db $dd
    nop
    db $dd
    nop
    db $dd
    nop
    nop
    nop
    db $dd
    nop
    db $dd
    nop
    db $dd
    nop
    nop
    nop
    db $dd
    nop
    db $dd
    nop
    nop
    nop
    db $dd
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
    jr nz, jr_012_5c90

    ld b, b
    ld a, a
    rrca
    ld a, b
    rra
    ld [hl], b
    rra
    ld [hl], b
    ld e, $70
    inc e
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $f0
    ld e, $f8
    ld c, $f8
    ld c, $78
    ld c, $38
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    ld c, $38
    ld c, $38

jr_012_5c90:
    ld c, $38
    ld c, $38
    ld c, $38
    ld c, $38
    ld c, $38
    ld c, $38
    ld [hl], b
    inc e
    ld [hl], b
    ld e, $70
    rra
    ld a, b
    rra
    ld a, a
    rrca
    ccf
    ld b, b
    rra
    jr nz, jr_012_5cab

jr_012_5cab:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld c, $38
    ld c, $78
    ld c, $f8
    ld e, $f8
    cp $f0
    db $fc
    ld [bc], a
    ld hl, sp+$04
    nop
    nop
    nop
    nop
    nop
    inc a
    nop
    ld a, [hl]
    nop
    ld h, [hl]
    nop
    nop
    ld h, [hl]
    nop
    ld a, [hl]
    nop
    inc a
    nop

jr_012_5cdc:
    xor a
    ld [$c2d7], a
    call Call_012_5ed0
    ld b, $08
    call $3340
    call $32f9
    ld hl, $cfbc
    res 0, [hl]
    call Call_012_5da4
    ld [$cf76], a
    call Call_012_5e09
    ld hl, $5d14
    call $1d35
    call Call_012_5de4
    call $1c17
    jr c, jr_012_5d13

    call $0fc8
    ld a, [$cf74]
    ld hl, $5d60
    rst $28
    jr jr_012_5cdc

jr_012_5d13:
    ret


    ld b, b
    nop
    nop
    rlca
    db $10
    inc e
    ld e, l
    ld bc, $0080
    ld l, h
    ld e, l
    ld a, c
    rra
    inc h
    ld e, l
    add d
    adc [hl]
    adc l
    sub e
    adc b
    adc l
    sub h
    add h
    ld d, b
    adc l
    add h
    sub [hl]
    ld a, a
    add [hl]
    add b
    adc h
    add h
    ld d, b
    adc [hl]
    adc a
    sub e
    adc b
    adc [hl]
    adc l
    ld d, b
    adc h
    sbc b
    sub d
    sub e
    add h
    sub c
    sbc b
    ld a, a
    add [hl]
    adc b
    add l
    sub e
    ld d, b
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld d, b
    adc h
    adc [hl]
    add c
    adc b
    adc e
    add h
    ld a, a
    sub d
    sub e
    sub h
    add e
    adc b
    sub h
    adc h
    ld d, b
    xor $5e
    ldh [$5e], a
    rst $20
    ld e, [hl]
    push af
    ld e, [hl]
    db $fc
    ld e, [hl]
    sub [hl]
    ld h, h
    ld [bc], a
    ld bc, $ff02
    inc bc
    nop
    ld bc, $ff02
    dec b
    nop
    ld bc, $0302
    inc b
    rst $38
    inc b
    nop
    ld bc, $0402
    rst $38
    dec b
    nop
    ld bc, $0402
    dec b
    rst $38
    ld b, $00
    ld bc, $0302
    inc b
    dec b
    rst $38
    inc b
    nop
    ld bc, $0302
    rst $38
    dec b
    nop
    ld bc, $0302
    dec b
    rst $38
    inc b
    nop
    ld bc, $0502
    rst $38

Call_012_5da4:
    nop
    nop
    nop
    ld a, [$cfcd]
    and a
    jr nz, jr_012_5db0

    ld a, $00
    ret


jr_012_5db0:
    ldh a, [$e6]
    cp $01
    ld a, $01
    ret nz

    ld a, $00
    call $2fcb
    ld a, [$abe5]
    cp $ff
    call $2fe1
    jr nz, jr_012_5dd6

    ld a, [$d84c]
    bit 7, a
    ld a, $01
    jr z, jr_012_5dd1

    jr jr_012_5dd1

jr_012_5dd1:
    jr jr_012_5dd3

jr_012_5dd3:
    ld a, $01
    ret


jr_012_5dd6:
    ld a, [$d84c]
    bit 7, a
    jr z, jr_012_5ddf

    jr jr_012_5ddf

jr_012_5ddf:
    jr jr_012_5de1

jr_012_5de1:
    ld a, $06
    ret


Call_012_5de4:
    call $1e70

jr_012_5de7:
    call Call_012_5e09
    ld a, [$cfa5]
    set 5, a
    ld [$cfa5], a
    call $1f1a
    ld a, [$cf73]
    cp $02
    jr z, jr_012_5e07

    cp $01
    jr z, jr_012_5e02

    jr jr_012_5de7

jr_012_5e02:
    call $2009
    and a
    ret


jr_012_5e07:
    scf
    ret


Call_012_5e09:
    ld a, [$cfcd]
    and a
    ret z

    xor a
    ldh [$d4], a
    call Call_012_5e27
    ld hl, $cfcc
    ld a, [hl]
    push af
    set 4, [hl]
    call Call_012_5e3d
    pop af
    ld [$cfcc], a
    ld a, $01
    ldh [$d4], a
    ret


Call_012_5e27:
    call $06e3
    and $80
    jr nz, jr_012_5e39

    ld hl, $c5b8
    ld b, $02
    ld c, $12
    call $0fe8
    ret


jr_012_5e39:
    call $103e
    ret


Call_012_5e3d:
    ld a, [$cfcd]
    and a
    ret z

    call $06e3
    and $80
    jp nz, Jump_012_5e75

    call $05a7
    call $3376
    ld b, a
    ld de, $c5cd
    call Call_012_5e91
    ld de, $c5e4
    ldh a, [$94]
    ld c, a
    ld a, $24
    ld hl, $4b3e
    rst $08
    ld [hl], $9c
    inc hl
    ld de, $ff96
    ld bc, $8102
    call $3198
    ret


    xor h
    xor b
    xor l
    add sp, $50

Jump_012_5e75:
    ld hl, $c5b9
    ld de, $5e7f
    call $1078
    ret


    sub e
    adc b
    adc h
    add h
    ld a, a
    adc l
    adc [hl]
    sub e
    ld a, a
    sub d
    add h
    sub e
    ld d, b
    ld d, $82
    ld d, c
    ld [hl], c
    ld d, b

Call_012_5e91:
    push de
    ld hl, $5ea8
    ld a, b
    call $3411
    ld d, h
    ld e, l
    pop hl
    call $1078
    ld h, b
    ld l, c
    ld de, $5ecc
    call $1078
    ret


    sub d
    sub h
    adc l
    ld d, b
    adc h
    adc [hl]
    adc l
    ld d, b
    sub e
    sub h
    add h
    sub d
    ld d, b
    sub [hl]
    add h
    add e
    adc l
    add h
    sub d
    ld d, b
    sub e
    add a
    sub h
    sub c
    sub d
    ld d, b
    add l
    sub c
    adc b
    ld d, b
    sub d
    add b
    sub e
    sub h
    sub c
    ld d, b
    add e
    add b
    sbc b
    ld d, b

Call_012_5ed0:
    xor a
    ldh [$de], a
    call $0fc8
    call $0e5f
    call $0e51
    call $1fbf
    ret


    ld a, $01
    ld hl, $5b6b
    rst $08
    ret


    ld a, $01
    ld hl, $5b64
    rst $08
    ret


    ld a, $01
    ld hl, $5d65
    rst $08
    ret


    ld a, $01
    ld hl, $5b54
    rst $08
    ret


    call $31f3
    ld a, $5e
    ld [$c2c0], a
    ld de, $005e
    call Call_012_66c5

Jump_012_5f0a:
    call $31f3
    call Call_012_63a7
    call Call_012_6492
    call $31f3

Jump_012_5f16:
    call Call_012_6071
    ld c, $0c
    call $0468
    ld hl, $c4a4
    ld b, $0a
    ld c, $0a
    call Call_012_4cdc
    ld hl, $c4ce
    ld de, $5fcc
    call $1078
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    xor a
    ld de, $5fe9
    ld hl, $c5b9
    call $1078
    call $3200
    call $32f9
    call $1bc9
    ld hl, $cfa9
    ld b, [hl]
    push bc
    jr jr_012_5f5d

Jump_012_5f55:
    call $1bd3
    ld hl, $cfa9
    ld b, [hl]
    push bc

jr_012_5f5d:
    bit 0, a
    jr nz, jr_012_5f67

    bit 1, a
    jr nz, jr_012_5f84

    jr jr_012_5f97

jr_012_5f67:
    ld hl, $cfa9
    ld a, [hl]
    cp $01
    jp z, Jump_012_6098

    cp $02
    jp z, Jump_012_60b9

    cp $03
    jp z, Jump_012_60c2

    cp $04
    jp z, Jump_012_6100

    ld a, $01
    call $1ff8

jr_012_5f84:
    pop bc
    call $31f3
    call $0fc8
    ld a, $54
    ld [$c2c0], a
    ld de, $0054
    call Call_012_66c5
    ret


jr_012_5f97:
    ld hl, $cfa9
    ld a, [hl]
    dec a
    ld hl, $5fe9
    call $3411
    ld d, h
    ld e, l
    ld hl, $c5a5
    ld b, $04
    ld c, $12
    call $0fb6
    ld hl, $c5b9
    call $1078
    jp Jump_012_5fb7


Jump_012_5fb7:
    call Call_012_6071
    pop bc
    ld hl, $cfa9
    ld [hl], b
    ld b, $0a
    ld c, $01
    ld hl, $c4b9
    call $0fb6
    jp Jump_012_5f55


    jp nc, $bcb2

    sbc e
    db $f4
    and [hl]
    rrca
    db $e3
    ld c, [hl]
    or c
    or d
    cp e
    jp nz, Jump_012_424e

    xor b
    sbc e
    or b
    db $e3
    and [hl]
    ld c, [hl]
    cp [hl]
    ld e, $b2
    ld c, [hl]
    db $d3
    inc [hl]
    reti


    ld d, b
    jp nc, $bcb2

    rra
    jp nz, $dfb8

    ret nz

    ret c

    ld c, [hl]
    adc $2f
    sbc $bc
    jp $b9b5


    reti


    ld a, a
    sbc e
    db $f4
    and [hl]
    rrca
    db $e3
    inc sp
    cp l
    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    ret nz

    or d
    cp [hl]
    sbc $d4
    ld a, a
    inc l
    inc a
    sbc $c9
    jp nc, $bcb2

    inc sp
    ld c, [hl]
    jp nz, $b3b6

    ld a, a
    or c
    or d
    cp e
    jp nz, $c21f

    cp b
    ret c

    rst $08
    cp l
    ld d, b
    or c
    push bc
    ret nz

    dec h
    inc l
    pop hl
    or e
    cp h
    ld [c], a
    call nc, $c87f
    sbc $da
    or d
    ret


    ld c, [hl]
    cp [hl]
    ld e, $b2
    rra
    or [hl]
    or h
    rst $10
    jp c, $bdcf

    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    dec e
    cp [hl]
    jp nz, $b82f

    cp l
    reti


    call nz, Call_012_4eb7
    set 0, d
    sub $b3
    push bc
    ld a, a
    cp d
    call nz, $b71f
    jp nc, $bdcf

    ld d, b
    rst $08
    or h
    dec h
    ld h, $d2
    sbc $7f
    dec e
    db $d3
    inc [hl]
    ret c

    rst $08
    cp l
    ld c, [hl]
    ld d, b

Call_012_6071:
    ld hl, $cfa1
    ld a, $02
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    set 5, [hl]
    inc hl
    xor a
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $01
    add $40
    add $80
    add $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ret


Jump_012_6098:
    ld a, $02
    call $1ff8
    call $1bee
    call $31f6
    call $1d6e
    ld a, $22
    ld hl, $5de0
    rst $08
    call $1d7d
    call Call_012_5351
    call Call_012_6485
    pop bc
    jp Jump_012_5f16


Jump_012_60b9:
    ld a, $02
    call $1ff8
    pop bc
    jp Jump_012_64c4


Jump_012_60c2:
    ld a, $02
    call $1ff8
    ld a, $01
    call $2fcb
    ld hl, $a00b
    ld de, $d47d
    ld bc, $0006
    call $3026
    call $2fe1
    ld a, $05
    ld hl, $50b9
    rst $08
    ld c, $02
    call $0468
    ld c, $01
    call Call_012_402f
    push af
    call $31f3
    pop af
    and a
    jr nz, jr_012_60f9

    ld a, $05
    ld hl, $509a
    rst $08

jr_012_60f9:
    ld c, $05
    call $0468
    jr jr_012_6111

Jump_012_6100:
    ld a, $02
    call $1ff8
    call $31f3
    call Call_012_613b
    call $31f3
    call $0fc8

jr_012_6111:
    pop bc
    call $0e5f
    jp Jump_012_5f0a


Call_012_6118:
    ld hl, $cfa1
    ld a, $01
    ld [hl+], a
    ld a, $0d
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    set 5, [hl]
    inc hl
    xor a
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $01
    add $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ret


Call_012_613b:
Jump_012_613b:
    call Call_012_63a7
    call Call_012_6492
    call Call_012_6373
    ld c, $0a
    call $0468

Jump_012_6149:
    ld hl, $c4c9
    ld b, $06
    ld c, $10
    call Call_012_4cdc
    ld hl, $c4f3
    ld de, $61ef
    call $1078
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    ld a, [$cfa9]
    dec a
    ld hl, $623d
    call $3411
    ld d, h
    ld e, l
    ld hl, $c5a5
    ld b, $04
    ld c, $12
    call $0fb6
    ld hl, $c5b9
    call $1078
    ld a, $41
    ld hl, $4148
    rst $08
    call $32f9
    call $1bc9
    ld hl, $cfa9
    ld b, [hl]
    push bc
    jr jr_012_619d

Jump_012_6195:
    call $1bd3
    ld hl, $cfa9
    ld b, [hl]
    push bc

jr_012_619d:
    bit 0, a
    jr nz, jr_012_61a7

    bit 1, a
    jr nz, jr_012_61ba

    jr jr_012_61bc

jr_012_61a7:
    ld hl, $cfa9
    ld a, [hl]
    cp $01
    jp z, Jump_012_620e

    cp $02
    jp z, Jump_012_6221

    ld a, $01
    call $1ff8

jr_012_61ba:
    pop bc
    ret


jr_012_61bc:
    ld hl, $cfa9
    ld a, [hl]
    dec a
    ld hl, $623d
    call $3411
    ld d, h
    ld e, l
    ld hl, $c5a5
    ld b, $04
    ld c, $12
    call $0fb6
    ld hl, $c5b9
    call $1078
    jr jr_012_61db

jr_012_61db:
    call Call_012_6373
    pop bc
    ld hl, $cfa9
    ld [hl], b
    ld bc, $0601
    ld hl, $c4de
    call $0fb6
    jp Jump_012_6195


    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    rra
    or h
    rst $10
    inc a
    ld c, [hl]
    xor b
    rlca
    add c
    xor e
    ld b, b
    adc h
    xor c
    db $e3
    inc de
    rra
    or d
    jp c, Jump_012_4ed9

    db $d3
    inc [hl]
    reti


    ld d, b

Jump_012_620e:
    ld a, $01
    call $1ff8
    ld a, $5c
    ld hl, $59c8
    rst $08
    call $31f3
    call $045a
    jr jr_012_6239

Jump_012_6221:
    ld a, $01
    call $1ff8
    call Call_012_628a
    jr c, jr_012_6239

    call Call_012_6373
    ld a, $02
    ld [$cfa9], a
    jr jr_012_6235

jr_012_6235:
    pop bc
    jp Jump_012_6149


jr_012_6239:
    pop bc
    jp Jump_012_613b


    or d
    jp nz, Jump_012_7fd3

    cp [hl]
    jp nz, $b82f

    rra
    cp l
    reti


    ld c, [hl]
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    rra
    or h
    rst $10
    dec sp
    rst $08
    cp l
    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    adc l
    xor e
    adc a
    db $e3
    dec e
    cp [hl]
    jp nz, $b82f

    cp l
    reti


    call nz, Call_012_4eb7
    jp nz, $b3b6

    ld b, b
    adc h
    xor c
    db $e3
    inc de
    rra
    adc $2f
    sbc $33
    or a
    rst $08
    cp l
    ld d, b
    rst $08
    or h
    dec h
    ld h, $d2
    sbc $7f
    dec e
    db $d3
    inc [hl]
    ret c

    rst $08
    cp l
    ld d, b
    ld d, b

Call_012_628a:
    ld hl, $c4de
    ld bc, $0601
    ld a, $7f
    call Call_012_66d8
    call $1bee
    call $31f6
    call $1d6e
    ld a, $05
    call $2fcb
    ld a, [$aa4b]
    call $2fe1
    and a
    jr z, jr_012_62df

    ld hl, $c4ac
    ld b, $05
    ld c, $06
    call Call_012_4cdc
    ld hl, $c4c2
    ld de, $634b
    call $1078
    ld a, $41
    ld hl, $4148
    rst $08
    call Call_012_6118
    call $1bd3
    push af
    call $2009
    pop af
    bit 1, a
    jr nz, jr_012_633b

    ld a, [$cfa9]
    cp $02
    jr z, jr_012_62f0

    cp $03
    jr z, jr_012_633b

jr_012_62df:
    ld a, $45
    ld hl, $765d
    rst $08
    call $31f3
    call $1d7d
    call $0e5f
    scf
    ret


jr_012_62f0:
    call $1bee
    ld hl, $6358
    call $1057
    ld hl, $c53a
    ld b, $03
    ld c, $04
    call $0fe8
    ld a, $41
    ld hl, $4148
    rst $08
    ld hl, $6362
    call $1d35
    call $1d81
    bit 1, a
    jr nz, jr_012_6338

    ld a, [$cfa9]
    cp $02
    jr z, jr_012_6338

    ld a, $05
    call $2fcb
    ld hl, $aa4b
    xor a
    ld bc, $0011
    call $3041
    call $2fe1
    ld hl, $635d
    call $1057
    call $0a36

jr_012_6338:
    call $1c07

jr_012_633b:
    call $1d7d
    ld a, $41
    ld hl, $4148
    rst $08
    xor a
    ret


    ld b, b
    nop
    inc c
    ld b, $13
    or d
    jp c, $b5c5

    cp l
    ld c, [hl]
    cp c
    cp l
    ld c, [hl]
    db $d3
    inc [hl]
    reti


    ld d, b
    ld d, $96
    ld d, c
    ld [hl], c
    ld d, b
    ld d, $b9
    ld d, c
    ld [hl], c
    ld d, b
    ld b, b
    rlca
    ld c, $0b
    inc de
    ld l, d
    ld h, e
    ld [bc], a
    ldh [rSC], a
    jp z, Jump_012_50b2

    or d
    or d
    or h
    ld d, b

Call_012_6373:
    ld hl, $cfa1
    ld a, $04
    ld [hl+], a
    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    set 5, [hl]
    inc hl
    xor a
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $01
    add $40
    add $80
    add $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    ret


    call Call_012_6485
    call Call_012_6492
    call Call_012_63aa
    call $32f9
    ret


Call_012_63a7:
    call Call_012_6485

Call_012_63aa:
    ld hl, $c4a0
    ld bc, $0301
    xor a
    call Call_012_66d8
    ld bc, $0101
    ld a, $01
    call Call_012_66d8
    ld bc, $0101
    xor a
    call Call_012_66d8
    ld bc, $0101
    ld a, $01
    call Call_012_66d8
    ld bc, $0401
    ld a, $02
    call Call_012_66d8
    ld bc, $0101
    ld a, $03
    call Call_012_66d8
    ld bc, $0101
    ld a, $7f
    call Call_012_66d8
    ld hl, $c4a1
    ld a, $01
    ld bc, $0312
    call Call_012_66d8
    ld bc, $0112
    ld a, $00
    call Call_012_66d8
    ld bc, $0112
    ld a, $01
    call Call_012_66d8
    ld bc, $0112
    ld a, $02
    call Call_012_66d8
    ld bc, $0b12
    ld a, $7f
    call Call_012_66d8
    ld hl, $c4b3
    ld bc, $0301
    ld a, $00
    call Call_012_66d8
    ld bc, $0101
    ld a, $01
    call Call_012_66d8
    ld bc, $0101
    xor a
    call Call_012_66d8
    ld bc, $0101
    ld a, $01
    call Call_012_66d8
    ld bc, $0401
    ld a, $02
    call Call_012_66d8
    ld bc, $0101
    ld a, $03
    call Call_012_66d8
    ld bc, $0101
    ld a, $7f
    call Call_012_66d8
    ret


    ld bc, $003c
    ld a, $00
    ld hl, $c4a0
    call $3041
    ld bc, $0028
    ld a, $01
    call $3041
    ld bc, $0028
    ld a, $00
    call $3041
    ld bc, $0028
    ld a, $01
    call $3041
    ld bc, $0014
    ld a, $02
    call $3041
    ld bc, $0014
    ld a, $03
    call $3041
    ld bc, $0014
    ld a, $7f
    call $3041
    ret


Call_012_6485:
    ld de, $5c0c
    ld hl, $9000
    ld bc, $120d
    call $0f82
    ret


Call_012_6492:
    call Call_012_536e
    ret


    ld a, [$d4b6]
    ld b, a
    ld a, [$d4b7]
    ld c, a
    ld a, [$d4b8]
    ld d, a
    ld a, [$d4b9]
    ld e, a
    push bc
    push de
    ld a, $45
    ld hl, $7a7f
    rst $08
    call $31f3
    pop de
    pop bc
    ld a, b
    ld [$d4b6], a
    ld a, c
    ld [$d4b7], a
    ld a, d
    ld [$d4b8], a
    ld a, e
    ld [$d4b9], a
    ret


Jump_012_64c4:
    call $31f3
    call Call_012_63a7
    call Call_012_6492
    call Call_012_6680
    call $31f3
    ld c, $14
    call $0468
    ld hl, $c4a2
    ld b, $0a
    ld c, $0e
    call Call_012_4cdc
    ld hl, $c4cc
    ld de, $65c5
    call $1078
    ld hl, $c4f4
    ld de, $65cd
    call $1078
    ld hl, $c51c
    ld de, $65da
    call $1078
    ld hl, $c544
    ld de, $65e6
    call $1078
    ld hl, $c56c
    ld de, $65f2
    call $1078
    ld hl, $c590
    ld b, $04
    ld c, $12
    call $0fe8
    xor a
    ld hl, $65f6
    ld d, h
    ld e, l
    ld hl, $c5b9
    call $1078
    ld a, $01
    ld hl, $65f6
    call $3411
    ld d, h
    ld e, l
    ld hl, $c5e1
    call $1078
    call $3200
    call $32f9
    call $1bc9
    ld hl, $cfa9
    ld b, [hl]
    push bc
    jr jr_012_654d

Jump_012_6545:
    call $1bd3
    ld hl, $cfa9
    ld b, [hl]
    push bc

jr_012_654d:
    bit 0, a
    jr nz, jr_012_6557

    bit 1, a
    jr nz, jr_012_6574

    jr jr_012_657e

jr_012_6557:
    ld hl, $cfa9
    ld a, [hl]
    cp $01
    jp z, Jump_012_66ab

    cp $02
    jp z, Jump_012_66ab

    cp $03
    jp z, Jump_012_66ab

    cp $04
    jp z, Jump_012_66ab

    ld a, $01
    call $1ff8

jr_012_6574:
    pop bc
    call $31f3
    call $0fc8
    jp Jump_012_5f0a


jr_012_657e:
    ld hl, $cfa9
    ld a, [hl]
    dec a
    add a
    push af
    ld hl, $65f6
    call $3411
    ld d, h
    ld e, l
    ld hl, $c5a5
    ld b, $04
    ld c, $12
    call $0fb6
    ld hl, $c5b9
    call $1078
    pop af
    inc a
    ld hl, $65f6
    call $3411
    ld d, h
    ld e, l
    ld hl, $c5e1
    call $1078
    jp Jump_012_65b0


Jump_012_65b0:
    call Call_012_6680
    pop bc
    ld hl, $cfa9
    ld [hl], b
    ld b, $0a
    ld c, $01
    ld hl, $c4b7
    call $0fb6
    jp Jump_012_6545


    inc l
    cp d
    cp h
    ld [c], a
    or e
    or [hl]
    or d
    ld d, b
    ret nz

    or d
    cp [hl]
    sbc $7f
    ld c, d
    jp z, $cf2c

    reti


    call nz, Call_012_50b7
    ret nz

    or d
    cp [hl]
    sbc $7f
    dec e
    or [hl]
    rst $18
    ret nz

    call nz, Call_012_50b7
    ret nz

    or d
    cp [hl]
    sbc $7f
    dec e
    rst $08
    cp c
    ret nz

    call nz, Call_012_50b7
    db $d3
    inc [hl]
    reti


    ld d, b
    jp nc, $bcb2

    ld a, a
    call nc, $957f
    xor [hl]
    db $e3
    adc h
    ld a, a
    dec e
    ret


    cp [hl]
    reti


    ld d, b
    or c
    push bc
    ret nz

    dec h
    or c
    or d
    cp e
    jp nz, $bd33

    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    ld a, a
    ret nz

    or d
    cp [hl]
    sbc $4a
    jp z, $cf2c

    reti


    call nz, Call_012_50b7
    or c
    or d
    jp $d01d


    or h
    reti


    ld a, a
    or c
    or d
    cp e
    jp nz, $bd33

    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    ld a, a
    ret nz

    or d
    cp [hl]
    sbc $33
    ld a, a
    or [hl]
    rst $18
    ret nz

    call nz, Call_012_50b7
    or c
    or d
    jp $d01d


    or h
    reti


    ld a, a
    or c
    or d
    cp e
    jp nz, $bd33

    ld d, b
    and c
    add hl, de
    add c
    and [hl]
    ld a, a
    ret nz

    or d
    cp [hl]
    sbc $33
    ld a, a
    rst $08
    cp c
    ret nz

    call nz, Call_012_50b7
    or c
    or d
    jp $d01d


    or h
    reti


    ld a, a
    or c
    or d
    cp e
    jp nz, $bd33

    ld d, b
    rst $08
    or h
    dec h
    ld h, $d2
    sbc $7f
    dec e
    db $d3
    inc [hl]
    ret c

    rst $08
    cp l
    ld d, b
    ld d, b

Call_012_6680:
    ld hl, $cfa1
    ld a, $02
    ld [hl+], a
    ld a, $03
    ld [hl+], a
    ld a, $05
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl], $00
    set 5, [hl]
    inc hl
    xor a
    ld [hl+], a
    ld a, $20
    ld [hl+], a
    ld a, $01
    add $40
    add $80
    add $02
    ld [hl+], a
    ld a, $01
    ld [hl+], a
    ld [hl+], a
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ret


Jump_012_66ab:
    ld a, $02
    call $1ff8
    call $31f3
    ld b, $08
    call $3340
    ld a, $47
    ld hl, $41ab
    rst $08
    pop bc
    call $0e5f
    jp Jump_012_64c4


Call_012_66c5:
    ld a, $05
    ld [$c2a7], a
    ld a, e
    ld [$c2a9], a
    ld a, d
    ld [$c2aa], a
    ld c, $16
    call $0468
    ret


Call_012_66d8:
jr_012_66d8:
    push bc
    push hl

jr_012_66da:
    ld [hl+], a
    dec c
    jr nz, jr_012_66da

    pop hl
    ld bc, $0014
    add hl, bc
    pop bc
    dec b
    jr nz, jr_012_66d8

    ret


    ld a, $f3
    ld [$c2dd], a
    call Call_012_6721
    jr nc, jr_012_670c

    ld a, $f4
    ld [$c2dd], a
    call Call_012_6721
    jr nc, jr_012_670c

    ld a, $f5
    ld [$c2dd], a
    call Call_012_6721
    jr nc, jr_012_670c

    ld a, $01
    ld [$c2dd], a
    ret


jr_012_670c:
    xor a
    ld [$c2dd], a
    ret


    call Call_012_6721
    jr c, jr_012_671b

    xor a
    ld [$c2dd], a
    ret


jr_012_671b:
    ld a, $01
    ld [$c2dd], a
    ret


Call_012_6721:
    ld a, [$dcd7]
    and a
    ret z

    ld d, a
    ld e, $00
    ld hl, $dcdf
    ld bc, $ddff

jr_012_672f:
    call Call_012_67ba
    ret c

    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    call Call_012_683a
    dec d
    jr nz, jr_012_672f

    ld a, $01
    call $2fcb
    ld a, [$ad10]
    and a
    jr z, jr_012_6766

    ld d, a
    ld hl, $ad26
    ld bc, $afa6

jr_012_6751:
    call Call_012_67ba
    jr nc, jr_012_675a

    call $2fe1
    ret


jr_012_675a:
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    call Call_012_683a
    dec d
    jr nz, jr_012_6751

jr_012_6766:
    call $2fe1
    ld c, $00

jr_012_676b:
    ld a, [$db72]
    and $0f
    cp c
    jr z, jr_012_67af

    ld hl, $6810
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    call $2fcb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_012_67af

    push bc
    push hl
    ld de, $0016
    add hl, de
    ld d, h
    ld e, l
    pop hl
    push de
    ld de, $0296
    add hl, de
    ld b, h
    ld c, l
    pop hl
    ld d, a

jr_012_6798:
    call Call_012_67ba
    jr nc, jr_012_67a2

    pop bc
    call $2fe1
    ret


jr_012_67a2:
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    call Call_012_683a
    dec d
    jr nz, jr_012_6798

    pop bc

jr_012_67af:
    inc c
    ld a, c
    cp $0e
    jr c, jr_012_676b

    call $2fe1
    and a
    ret


Call_012_67ba:
    push bc
    push hl
    push de
    ld d, b
    ld e, c
    ld a, [$c2dd]
    ld b, [hl]
    cp b
    jr nz, jr_012_6806

    ld bc, $0006
    add hl, bc
    ld a, [$d47b]
    cp [hl]
    jr nz, jr_012_6806

    inc hl
    ld a, [$d47c]
    cp [hl]
    jr nz, jr_012_6806

    ld hl, $d47d
    ld a, [de]
    cp [hl]
    jr nz, jr_012_6806

    cp $50
    jr z, jr_012_680b

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_012_6806

    cp $50
    jr z, jr_012_680b

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_012_6806

    cp $50
    jr z, jr_012_680b

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_012_6806

    cp $50
    jr z, jr_012_680b

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr z, jr_012_680b

jr_012_6806:
    pop de
    pop hl
    pop bc
    and a
    ret


jr_012_680b:
    pop de
    pop hl
    pop bc
    scf
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

Call_012_683a:
    push hl
    ld hl, $000b
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ret


    ld a, [$dcd7]
    and a
    ret z

    ld d, a
    ld e, $00
    ld hl, $dcdf
    ld bc, $ddff

jr_012_6851:
    call Call_012_68dc
    ret c

    push bc
    ld bc, $0030
    add hl, bc
    pop bc
    call Call_012_691e
    dec d
    jr nz, jr_012_6851

    ld a, $01
    call $2fcb
    ld a, [$ad10]
    and a
    jr z, jr_012_6888

    ld d, a
    ld hl, $ad26
    ld bc, $afa6

jr_012_6873:
    call Call_012_68dc
    jr nc, jr_012_687c

    call $2fe1
    ret


jr_012_687c:
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    call Call_012_691e
    dec d
    jr nz, jr_012_6873

jr_012_6888:
    call $2fe1
    ld c, $00

jr_012_688d:
    ld a, [$db72]
    and $0f
    cp c
    jr z, jr_012_68d1

    ld hl, $68f4
    ld b, $00
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    call $2fcb
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    and a
    jr z, jr_012_68d1

    push bc
    push hl
    ld de, $0016
    add hl, de
    ld d, h
    ld e, l
    pop hl
    push de
    ld de, $0296
    add hl, de
    ld b, h
    ld c, l
    pop hl
    ld d, a

jr_012_68ba:
    call Call_012_68dc
    jr nc, jr_012_68c4

    pop bc
    call $2fe1
    ret


jr_012_68c4:
    push bc
    ld bc, $0020
    add hl, bc
    pop bc
    call Call_012_691e
    dec d
    jr nz, jr_012_68ba

    pop bc

jr_012_68d1:
    inc c
    ld a, c
    cp $0e
    jr c, jr_012_688d

    call $2fe1
    and a
    ret


Call_012_68dc:
    push bc
    push hl
    push de
    ld d, b
    ld e, c
    ld a, [$c2dd]
    ld b, [hl]
    cp b
    jr nz, jr_012_68ea

    jr jr_012_68ef

jr_012_68ea:
    pop de
    pop hl
    pop bc
    and a
    ret


jr_012_68ef:
    pop de
    pop hl
    pop bc
    scf
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

Call_012_691e:
    push hl
    ld hl, $000b
    add hl, bc
    ld b, h
    ld c, l
    pop hl
    ret


    ld a, [$c2dd]
    ld [$d106], a
    ld hl, $d8f1
    call $2f79
    jr c, jr_012_6948

    ld a, [$c2dd]
    ld [$d106], a
    ld hl, $d892
    call $2f79
    jr c, jr_012_6948

    xor a
    ld [$c2dd], a
    ret


jr_012_6948:
    ld a, $01
    ld [$c2dd], a
    ret


    call $2b29
    ld a, $ff
    ld hl, $d002
    ld bc, $0003
    call $3041
    xor a
    ld [$d018], a
    ld [$d019], a
    ld b, $14
    call $3340
    call $32f9
    call Call_012_6a22
    jr c, jr_012_6985

    jr z, jr_012_69a1

    jr jr_012_697b

jr_012_6974:
    call Call_012_6a25
    jr c, jr_012_6985

    jr z, jr_012_69a1

jr_012_697b:
    call Call_012_6c58
    ld hl, $d019
    res 1, [hl]
    jr jr_012_6974

jr_012_6985:
    ld a, [$d018]
    and a
    jr nz, jr_012_6990

    call Call_012_6ba8
    jr c, jr_012_6974

jr_012_6990:
    call $2b3c
    ld hl, $d002
    ld a, $ff
    ld bc, $0003
    call $3041
    scf
    jr jr_012_69af

jr_012_69a1:
    call Call_012_69c3
    jr c, jr_012_69b0

    call Call_012_69d7
    jr c, jr_012_6974

    call $2b3c
    and a

jr_012_69af:
    ret


jr_012_69b0:
    ld de, $0019
    call $3c23
    ld hl, $69be
    call $1057
    jr jr_012_6974

    ld d, $d7
    ld d, c
    ld [hl], c
    ld d, b

Call_012_69c3:
    ld hl, $d002
    ld a, $ff
    cp [hl]
    jr z, jr_012_69d5

    inc hl
    cp [hl]
    jr z, jr_012_69d5

    inc hl
    cp [hl]
    jr z, jr_012_69d5

    and a
    ret


jr_012_69d5:
    scf
    ret


Call_012_69d7:
    ld a, [$d002]
    ld hl, $de41
    call $38a2
    ld h, d
    ld l, e
    ld de, $d006
    ld bc, $0006
    call $3026
    ld a, [$d003]
    ld hl, $de41
    call $38a2
    ld h, d
    ld l, e
    ld de, $d00c
    ld bc, $0006
    call $3026
    ld a, [$d004]
    ld hl, $de41
    call $38a2
    ld h, d
    ld l, e
    ld de, $d012
    ld bc, $0006
    call $3026
    ld hl, $6a1d
    call $1057
    call $1dcf
    ret


    ld d, $f4
    ld d, c
    ld [hl], c
    ld d, b

Call_012_6a22:
    call $31f3

Call_012_6a25:
    ld a, $14
    ld hl, $404f
    rst $08
    ld a, $14
    ld hl, $4405
    rst $08
    call Call_012_6ad3

jr_012_6a34:
    ld a, $09
    ld [$d141], a
    ld a, $14
    ld hl, $405f
    rst $08
    xor a
    ld [$d141], a
    ld a, $14
    ld hl, $449a
    rst $08
    call Call_012_6ab6
    call $31f6
    call $32f9
    call $045a
    call Call_012_6b1a
    jr z, jr_012_6a66

    push af
    call Call_012_6afb
    jr c, jr_012_6a67

    call Call_012_6b06
    jr c, jr_012_6a67

    pop af

jr_012_6a66:
    ret


jr_012_6a67:
    ld hl, $d019
    set 1, [hl]
    pop af
    ret


    pop af
    ld de, $0019
    call $3c23
    call $3c55
    jr jr_012_6a34

Call_012_6a7a:
    ld hl, $d002
    ld d, $03

jr_012_6a7f:
    ld e, $06
    ld a, [hl+]
    push de
    push hl
    cp $ff
    jr z, jr_012_6ab3

    ld hl, $c314
    inc a
    ld d, a

jr_012_6a8d:
    ld a, [hl]
    and a
    jr z, jr_012_6aa5

    cp d
    jr z, jr_012_6a9a

    jr jr_012_6aa5

    ld a, $03
    jr jr_012_6a9c

jr_012_6a9a:
    ld a, $02

jr_012_6a9c:
    push hl
    ld c, l
    ld b, h
    ld hl, $0002
    add hl, bc
    ld [hl], a
    pop hl

jr_012_6aa5:
    ld bc, $0010
    add hl, bc
    dec e
    jr nz, jr_012_6a8d

    pop hl
    pop de
    dec d
    jr nz, jr_012_6a7f

    jr jr_012_6ab5

jr_012_6ab3:
    pop hl
    pop de

jr_012_6ab5:
    ret


Call_012_6ab6:
    ld hl, $d002
    ld d, $03

jr_012_6abb:
    ld a, [hl+]
    cp $ff
    jr z, jr_012_6ad2

    push de
    push hl
    ld hl, $c4b4
    ld bc, $0028
    call $30fe
    ld [hl], $ec
    pop hl
    pop de
    dec d
    jr nz, jr_012_6abb

jr_012_6ad2:
    ret


Call_012_6ad3:
    ld hl, $dcd7
    ld a, [hl+]
    and a
    ret z

    ld c, a
    xor a
    ldh [$b0], a

jr_012_6add:
    push bc
    push hl
    ld e, $00
    ld a, $23
    ld hl, $683f
    rst $08
    ldh a, [$b0]
    inc a
    ldh [$b0], a
    pop hl
    pop bc
    dec c
    jr nz, jr_012_6add

    call Call_012_6a7a
    ld a, $23
    ld hl, $4f69
    rst $08
    ret


Call_012_6afb:
    ld a, [$d108]
    cp $fd
    jr z, jr_012_6b04

    and a
    ret


jr_012_6b04:
    scf
    ret


Call_012_6b06:
    ld a, [$d109]
    ld bc, $0030
    ld hl, $dd01
    call $30fe
    ld a, [hl+]
    ld b, a
    ld a, [hl]
    or b
    jr nz, jr_012_6b19

    scf

jr_012_6b19:
    ret


Call_012_6b1a:
jr_012_6b1a:
    ld a, $fb
    ld [$cfa8], a
    ld a, $26
    ld [$cfa7], a
    ld a, $02
    ld [$cfa4], a
    call Call_012_6df7
    call $1bc9
    call Call_012_6bc3
    jr c, jr_012_6b1a

    push af
    call Call_012_6b99
    call nc, $1bee
    pop af
    bit 1, a
    jr nz, jr_012_6b6d

    ld a, [$dcd7]
    inc a
    ld b, a
    ld a, [$cfa9]
    ld [$d0d8], a
    cp b
    jr z, jr_012_6b7e

    ld a, [$cfa9]
    dec a
    ld [$d109], a
    ld c, a
    ld b, $00
    ld hl, $dcd8
    add hl, bc
    ld a, [hl]
    ld [$d108], a
    ld de, $0008
    call $3c23
    call $3c55
    ld a, $01
    and a
    ret


jr_012_6b6d:
    ld a, [$cfa9]
    ld [$d0d8], a

jr_012_6b73:
    ld de, $0008
    call $3c23
    call $3c55
    scf
    ret


jr_012_6b7e:
    ld a, $01
    ld [$d018], a
    ld a, [$cfaa]
    cp $02
    jr z, jr_012_6b73

    ld de, $0008
    call $3c23
    call $3c55
    xor a
    ld [$d018], a
    and a
    ret


Call_012_6b99:
    bit 1, a
    jr z, jr_012_6ba6

    ld a, [$d002]
    cp $ff
    jr z, jr_012_6ba6

    scf
    ret


jr_012_6ba6:
    and a
    ret


Call_012_6ba8:
    ld hl, $d004
    ld a, [hl]
    cp $ff
    jr nz, jr_012_6bbe

    dec hl
    ld a, [hl]
    cp $ff
    jr nz, jr_012_6bbe

    dec hl
    ld a, [hl]
    cp $ff
    jr nz, jr_012_6bbe

    and a
    ret


jr_012_6bbe:
    ld a, $ff
    ld [hl], a
    scf
    ret


Call_012_6bc3:
    bit 3, a
    jr z, jr_012_6bd5

    ld a, [$dcd7]
    inc a
    ld [$cfa9], a
    ld a, $01
    ld [$cfaa], a
    jr jr_012_6c29

jr_012_6bd5:
    bit 6, a
    jr z, jr_012_6beb

    ld a, [$cfa9]
    ld [$cfa9], a
    and a
    jr nz, jr_012_6c29

    ld a, [$dcd7]
    inc a
    ld [$cfa9], a
    jr jr_012_6c29

jr_012_6beb:
    bit 7, a
    jr z, jr_012_6c08

    ld a, [$cfa9]
    ld [$cfa9], a
    ld a, [$dcd7]
    inc a
    inc a
    ld b, a
    ld a, [$cfa9]
    cp b
    jr nz, jr_012_6c29

    ld a, $01
    ld [$cfa9], a
    jr jr_012_6c29

jr_012_6c08:
    bit 4, a
    jr nz, jr_012_6c10

    bit 5, a
    jr z, jr_012_6c56

jr_012_6c10:
    ld a, [$cfa9]
    ld b, a
    ld a, [$dcd7]
    inc a
    cp b
    jr nz, jr_012_6c29

    ld a, [$cfaa]
    cp $01
    jr z, jr_012_6c26

    ld a, $01
    jr jr_012_6c29

jr_012_6c26:
    ld [$cfaa], a

jr_012_6c29:
    ld hl, $c4b4
    ld bc, $0d01
    call $0fb6
    call Call_012_6ab6
    ld a, [$dcd7]
    ld hl, $c4ba

jr_012_6c3b:
    ld bc, $0028
    add hl, bc
    dec a
    jr nz, jr_012_6c3b

    ld [hl], $7f
    ld a, [$cfa9]
    ld b, a
    ld a, [$dcd7]
    inc a
    cp b
    jr z, jr_012_6c54

    ld a, $01
    ld [$cfaa], a

jr_012_6c54:
    scf
    ret


jr_012_6c56:
    and a
    ret


Call_012_6c58:
    ld bc, $0212
    ld hl, $c5cd
    call $0fb6
    ld a, $23
    ld hl, $6a4a
    rst $08
    ld hl, $6ca2
    call $1d35
    ld hl, $d019
    bit 1, [hl]
    jr z, jr_012_6c89

    ld hl, $c5af
    ld b, $03
    ld c, $07
    call $0fe8
    ld hl, $c5c5
    ld de, $6da7
    call $1078
    jr jr_012_6c96

jr_012_6c89:
    ld hl, $c55f
    ld b, $07
    ld c, $07
    call $0fe8
    call Call_012_6d68

jr_012_6c96:
    ld a, $01
    ldh [$d4], a
    call $6caa
    call $1c07
    and a
    ret


    ld b, b
    add hl, bc
    dec bc
    ld de, $0013
    nop
    ld bc, $a03e
    ld [$cf91], a
    ld a, [$d019]
    bit 1, a
    jr z, jr_012_6cc2

    ld a, $02
    ld [$cf92], a
    ld a, $0c
    ld [$cf82], a
    jr jr_012_6ccc

jr_012_6cc2:
    ld a, $04
    ld [$cf92], a
    ld a, $08
    ld [$cf82], a

jr_012_6ccc:
    ld a, $0b
    ld [$cf83], a
    ld a, $01
    ld [$cf88], a
    call $1c10
    ld hl, $cfa5
    set 6, [hl]
    call $1bc9
    ld de, $0008
    call $3c23
    ldh a, [$a7]
    bit 0, a
    jr nz, jr_012_6cf4

    bit 1, a
    jr nz, jr_012_6cf3

    jr @-$47

jr_012_6cf3:
    ret


jr_012_6cf4:
    ld a, [$d019]
    bit 1, a
    jr nz, jr_012_6d0e

    ld a, [$cfa9]
    cp $01
    jr z, jr_012_6d17

    cp $02
    jp z, Jump_012_6d56

    cp $03
    jp z, Jump_012_6d60

    jr jr_012_6cf3

jr_012_6d0e:
    ld a, [$cfa9]
    cp $01
    jr z, jr_012_6d56

    jr jr_012_6cf3

jr_012_6d17:
    call Call_012_6db2
    jr z, jr_012_6d4a

    ld hl, $d002
    ld a, $ff
    cp [hl]
    jr z, jr_012_6d39

    inc hl
    cp [hl]
    jr z, jr_012_6d39

    inc hl
    cp [hl]
    jr z, jr_012_6d39

    ld de, $0019
    call $3c4e
    ld hl, $6d51
    call $1057
    ret


jr_012_6d39:
    ld a, [$d109]
    ld [hl], a
    call Call_012_69c3
    ret c

    ld a, [$d019]
    set 0, a
    ld [$d019], a
    ret


jr_012_6d4a:
    ld a, $ff
    ld [hl], a
    call Call_012_6dc2
    ret


    ld d, $1c
    ld d, d
    ld [hl], c
    ld d, b

Jump_012_6d56:
jr_012_6d56:
    ld a, $04
    ld hl, $6e00
    rst $08
    call $3200
    ret


Jump_012_6d60:
    ld a, $04
    ld hl, $6fba
    rst $08
    ret


    ret


Call_012_6d68:
    ld hl, $c59d
    ld de, $6d88
    call $1078
    call Call_012_6db2
    jr c, jr_012_6d7e

    ld hl, $c575
    ld de, $6da0
    jr jr_012_6d84

jr_012_6d7e:
    ld hl, $c575
    ld de, $6d9a

jr_012_6d84:
    call $1078
    ret


    jp nz, $bbd6

    db $dd
    ret nc

    reti


    ld c, [hl]
    jp nz, $b4b6

    reti


    call c, Call_012_4e2b
    db $d3
    inc [hl]
    reti


    ld d, b
    cp e
    sbc $b6
    cp l
    reti


    ld d, b
    cp e
    sbc $b6
    cp h
    push bc
    or d
    ld d, b
    jp nz, $bbd6

    db $dd
    ret nc

    reti


    ld c, [hl]
    db $d3
    inc [hl]
    reti


    ld d, b

Call_012_6db2:
    ld hl, $d002
    ld a, [$d109]
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    inc hl
    cp [hl]
    ret z

    scf
    ret


Call_012_6dc2:
    ld a, [$d002]
    cp $ff
    jr nz, jr_012_6de5

    ld a, [$d003]
    cp $ff
    jr nz, jr_012_6ddd

    ld a, [$d004]
    ld [$d002], a
    ld a, $ff
    ld [$d004], a
    jr jr_012_6de5

jr_012_6ddd:
    ld [$d002], a
    ld a, $ff
    ld [$d003], a

jr_012_6de5:
    ld a, [$d003]
    cp $ff
    ret nz

    ld b, a
    ld a, [$d004]
    ld [$d003], a
    ld a, b
    ld [$d004], a
    ret


Call_012_6df7:
    ld a, [$d019]
    bit 0, a
    ret z

    ld a, [$dcd7]
    inc a
    ld [$cfa9], a
    ld a, $01
    ld [$cfaa], a
    ld a, [$d019]
    res 0, a
    ld [$d019], a
    ret


    call Call_012_6e1f
    ld a, $00
    jr c, jr_012_6e1b

    ld a, $01

jr_012_6e1b:
    ld [$c2dd], a
    ret


Call_012_6e1f:
    ld bc, $0e07
    push bc
    ld hl, $1e1d
    call $1d3c
    pop bc
    ld a, b
    ld [$cf83], a
    add $05
    ld [$cf85], a
    ld a, c
    ld [$cf82], a
    add $04
    ld [$cf84], a
    call $1c00
    call $1d81
    push af
    ld c, $0f
    call $0468
    call Call_012_6e5e
    pop af
    jr c, jr_012_6e57

    ld a, [$cfa9]
    cp $02
    jr z, jr_012_6e57

    and a
    ret


jr_012_6e57:
    ld a, $02
    ld [$cfa9], a
    scf
    ret


Call_012_6e5e:
    ldh a, [$d8]
    push af
    call $1c07
    call $1ad2
    xor a
    ldh [$d8], a
    call $045a
    ld a, $01
    ldh [$d8], a
    call $321c
    pop af
    ldh [$d8], a
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

Call_012_7400:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_012_7c08:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_012_7fd3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
